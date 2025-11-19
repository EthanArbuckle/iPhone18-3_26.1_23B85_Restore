void sub_2962F7100(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSDPCQueue::enqueue(ATCSDPCQueue *this, ATCSDPCQueue::Callback *a2)
{
  v4 = *(this + 7);
  pthread_mutex_lock(v4);
  v5 = pthread_self();
  v7 = *(this + 10);
  v6 = *(this + 11);
  v8 = v6 - v7;
  v4[1].__sig = v5;
  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((v6 - v7) << 6) - 1;
  }

  v11 = *(this + 13);
  v10 = *(this + 14);
  v12 = v10 + v11;
  if (v9 == v10 + v11)
  {
    if (v11 >= 0x200)
    {
      *(this + 13) = v11 - 512;
      v71 = *v7;
      *(this + 10) = v7 + 8;
      std::__split_buffer<qmi::ClientProxy::State::Transaction *>::emplace_back<qmi::ClientProxy::State::Transaction *&>(this + 9, &v71);
LABEL_62:
      v7 = *(this + 10);
      v10 = *(this + 14);
      v12 = *(this + 13) + v10;
      goto LABEL_63;
    }

    v13 = *(this + 12);
    v14 = *(this + 9);
    if (v8 < (v13 - v14))
    {
      v15 = operator new(0x1000uLL);
      if (v13 != v6)
      {
        *v6 = v15;
        *(this + 11) = v6 + 8;
        goto LABEL_62;
      }

      if (v7 != v14)
      {
        v26 = v7;
LABEL_61:
        *(v26 - 1) = v15;
        v71 = v15;
        *(this + 10) = v26;
        std::__split_buffer<qmi::ClientProxy::State::Transaction *>::emplace_back<qmi::ClientProxy::State::Transaction *&>(this + 9, &v71);
        goto LABEL_62;
      }

      if (v6 == v7)
      {
        v49 = 1;
      }

      else
      {
        v49 = (v13 - v7) >> 2;
      }

      if (!(v49 >> 61))
      {
        v50 = v15;
        v51 = operator new(8 * v49);
        v15 = v50;
        v52 = (v49 + 3) >> 2;
        v26 = &v51[8 * v52];
        v53 = v26;
        if (v6 != v7)
        {
          v53 = &v26[v8];
          v54 = v6 - v7 - 8;
          v55 = &v51[8 * v52];
          v56 = v7;
          if (v54 < 0x38)
          {
            goto LABEL_75;
          }

          v57 = &v51[8 * v52];
          v55 = v57;
          v56 = v7;
          if ((v57 - v7) < 0x20)
          {
            goto LABEL_75;
          }

          v58 = (v54 >> 3) + 1;
          v59 = 8 * (v58 & 0x3FFFFFFFFFFFFFFCLL);
          v55 = &v26[v59];
          v56 = &v7[v59];
          v60 = (v7 + 16);
          v61 = v57 + 16;
          v62 = v58 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v63 = *v60;
            *(v61 - 1) = *(v60 - 1);
            *v61 = v63;
            v60 += 2;
            v61 += 2;
            v62 -= 4;
          }

          while (v62);
          if (v58 != (v58 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_75:
            do
            {
              v64 = *v56;
              v56 += 8;
              *v55 = v64;
              v55 += 8;
            }

            while (v55 != v53);
          }
        }

        *(this + 9) = v51;
        *(this + 10) = v26;
        *(this + 11) = v53;
        *(this + 12) = &v51[8 * v49];
        if (v7)
        {
          operator delete(v14);
          v15 = v50;
          v26 = *(this + 10);
        }

        goto LABEL_61;
      }

LABEL_71:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = (v13 - v14) >> 2;
    if (v13 == v14)
    {
      v16 = 1;
    }

    if (v16 >> 61)
    {
      goto LABEL_71;
    }

    v17 = 8 * v16;
    v18 = operator new(8 * v16);
    v19 = operator new(0x1000uLL);
    v20 = v19;
    v21 = &v18[v8];
    v22 = &v18[v17];
    if (v8 != v17)
    {
      goto LABEL_16;
    }

    if (v8 >= 1)
    {
      v21 -= ((v8 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_16:
      *v21 = v19;
      v23 = v21 + 8;
      if (v6 != v7)
      {
        goto LABEL_30;
      }

LABEL_17:
      v24 = v21;
LABEL_18:
      v25 = *(this + 9);
      *(this + 9) = v18;
      *(this + 10) = v24;
      *(this + 11) = v23;
      *(this + 12) = v22;
      if (v25)
      {
        operator delete(v25);
      }

      goto LABEL_62;
    }

    if (v6 == v7)
    {
      v27 = 1;
    }

    else
    {
      v27 = v8 >> 2;
    }

    if (v27 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * v27);
    v22 = &v21[8 * v27];
    operator delete(v18);
    v28 = *(this + 10);
    v6 = *(this + 11);
    v18 = v21;
    *v21 = v20;
    v23 = v21 + 8;
    if (v6 == v28)
    {
      goto LABEL_17;
    }

LABEL_30:
    while (v21 != v18)
    {
      v29 = v21;
LABEL_29:
      v30 = *(v6 - 1);
      v6 -= 8;
      *(v29 - 1) = v30;
      v24 = v29 - 8;
      v21 = v24;
      if (v6 == *(this + 10))
      {
        goto LABEL_18;
      }
    }

    if (v23 < v22)
    {
      v29 = &v18[8 * ((((v22 - v23) >> 3) + 1 + ((((v22 - v23) >> 3) + 1) >> 63)) >> 1)];
      v32 = v23 - v18;
      v31 = v23 == v18;
      v23 += 8 * ((((v22 - v23) >> 3) + 1 + ((((v22 - v23) >> 3) + 1) >> 63)) >> 1);
      if (!v31)
      {
        memmove(v29, v21, v32);
      }

      goto LABEL_29;
    }

    if (v22 == v18)
    {
      v33 = 1;
    }

    else
    {
      v33 = (v22 - v18) >> 2;
    }

    if (v33 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v34 = operator new(8 * v33);
    v35 = v34;
    v36 = (v33 + 3) >> 2;
    v29 = &v34[8 * v36];
    v37 = v23 - v18;
    v31 = v23 == v18;
    v23 = v29;
    if (!v31)
    {
      v23 = &v29[v37];
      v38 = v37 - 8;
      if (v38 >= 0x18 && (v39 = 8 * v36, (&v34[8 * v36] - v21) >= 0x20))
      {
        v43 = (v38 >> 3) + 1;
        v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
        v40 = &v29[v44];
        v41 = &v21[v44];
        v45 = (v21 + 16);
        v46 = &v34[v39 + 16];
        v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v48 = *v45;
          *(v46 - 1) = *(v45 - 1);
          *v46 = v48;
          v45 += 2;
          v46 += 32;
          v47 -= 4;
        }

        while (v47);
        if (v43 == (v43 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_43;
        }
      }

      else
      {
        v40 = &v34[8 * v36];
        v41 = v21;
      }

      do
      {
        v42 = *v41;
        v41 += 8;
        *v40 = v42;
        v40 += 8;
      }

      while (v40 != v23);
    }

LABEL_43:
    v22 = &v34[8 * v33];
    operator delete(v18);
    v18 = v35;
    goto LABEL_29;
  }

LABEL_63:
  *(*&v7[(v12 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v12 & 0x1FF)) = a2;
  *(this + 14) = v10 + 1;
  if (*(this + 64))
  {
    v65 = *(this + 7);
    pthread_self();
    v65[1].__sig = 0;
    return pthread_mutex_unlock(v65);
  }

  else
  {
    *(this + 64) = 1;
    v67 = *(this + 7);
    pthread_self();
    v67[1].__sig = 0;
    pthread_mutex_unlock(v67);
    v69 = (*(*a2 + 24))(a2);
    if (v69 < 0)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSDPCQueue.cpp", 0x29, "timeout", "<=", "std::numeric_limits<int>::max()", v68);
    }

    v70 = operator new(0x20uLL);
    *v70 = &unk_2A1D480D8;
    v70[1] = this;
    v70[2] = ATCSDPCQueue::handleTimer;
    v70[3] = 0;

    return ATCSTimer::set(this, v69, v70);
  }
}

void sub_2962F7670(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);
  v5 = *(v1 + 56);
  pthread_self();
  v5[1].__sig = 0;
  pthread_mutex_unlock(v5);
  _Unwind_Resume(a1);
}

uint64_t std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100](uint64_t a1)
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

uint64_t ATCSTimer::MemberCallback<ATCSDPCQueue>::invoke(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void QMIWakeReason::QMIWakeReason(QMIWakeReason *this)
{
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *this = 0u;
  *(this + 1) = 0u;
}

void *QMIWakeReason::reset(void *this)
{
  this[1] = *this;
  this[3] = 0;
  return this;
}

void QMIWakeReason::set(uint64_t a1, const void *a2, size_t __sz, uint64_t a4)
{
  if (a2 && __sz)
  {
    if ((__sz & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(__sz);
    v9 = v8 + __sz;
    memcpy(v8, a2, __sz);
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v10;
      operator delete(v10);
    }

    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v9;
    *(a1 + 24) = a4;
  }
}

const void **QMIWakeReason::copyWakeData@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *this;
  v3 = this[1];
  v5 = v3 - *this;
  if (v3 != *this)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - *this);
    *a2 = v6;
    v7 = &v6[v5];
    a2[2] = &v6[v5];
    this = memcpy(v6, v4, v5);
    a2[1] = v7;
  }

  return this;
}

uint64_t qmi::Client::State::State(uint64_t a1, __int128 *a2, __int128 *a3, char a4, NSObject **a5)
{
  v5 = 0x7FFFFFFFFFFFFFF7;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v7 + 12;
  if (v7 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 < 0x17)
  {
    v41 = 0;
    HIBYTE(v41) = v7 + 12;
    BYTE5(v40[1]) = 0;
    HIWORD(v40[1]) = 0;
    strcpy(v40, "qmi::Client[");
    v15 = &v40[1] + 4;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v8 | 7) + 1;
    }

    v14 = operator new(v13);
    v40[1] = (v7 + 12);
    v41 = v13 | 0x8000000000000000;
    v40[0] = v14;
    *(v14 + 2) = 1534357093;
    *v14 = *"qmi::Client[";
    v15 = v14 + 12;
  }

  v16 = *a2;
  if (v6 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  memmove(v15, v17, v7);
LABEL_15:
  v15[v7] = 0;
  v18 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) == 0)
  {
    v19 = v40;
    if (SHIBYTE(v41) == 22)
    {
      v20 = 22;
      v21 = 23;
LABEL_21:
      v22 = 2 * v20;
      if (v21 > 2 * v20)
      {
        v22 = v21;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v5 = v23;
      }

      else
      {
        v5 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_30;
    }

LABEL_36:
    *(v18 + v19) = 93;
    v28 = v18 + 1;
    if (SHIBYTE(v41) < 0)
    {
      v40[1] = v28;
    }

    else
    {
      HIBYTE(v41) = v28 & 0x7F;
    }

    v27 = &v28[v19];
    goto LABEL_40;
  }

  v18 = v40[1];
  v21 = v41 & 0x7FFFFFFFFFFFFFFFLL;
  v20 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 != v40[1])
  {
    v19 = v40[0];
    goto LABEL_36;
  }

  if (v21 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v40[0];
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v24 = 0;
LABEL_30:
  v25 = operator new(v5);
  v26 = v25;
  if (v20)
  {
    memmove(v25, v19, v20);
  }

  v26[v20] = 93;
  if (!v24)
  {
    operator delete(v19);
  }

  v40[1] = v21;
  v41 = v5 | 0x8000000000000000;
  v40[0] = v26;
  v27 = &v26[v21];
LABEL_40:
  *v27 = 0;
  v43 = v41;
  *__p = *v40;
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  if (v43 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  v30 = dispatch_queue_create(v29, 0);
  v31 = qmi::asShortString();
  ctu::OsLogContext::OsLogContext(v39, "com.apple.telephony.bb", v31);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v30;
  if (v30)
  {
    dispatch_retain(v30);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 40, v44);
  MEMORY[0x29C258F40](v44);
  ctu::OsLogContext::~OsLogContext(v39);
  if (v30)
  {
    dispatch_release(v30);
  }

  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    operator delete(v40[0]);
    *a1 = &unk_2A1D48158;
    *(a1 + 48) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v41) < 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  *a1 = &unk_2A1D48158;
  *(a1 + 48) = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
LABEL_50:
    v32 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v32;
    goto LABEL_54;
  }

LABEL_53:
  std::string::__init_copy_ctor_external((a1 + 56), *a2, *(a2 + 1));
LABEL_54:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a3, *(a3 + 1));
  }

  else
  {
    v33 = *a3;
    *(a1 + 96) = *(a3 + 2);
    *(a1 + 80) = v33;
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a4;
  *(a1 + 112) = xpc_null_create();
  object = xpc_null_create();
  MEMORY[0x29C258FC0](a1 + 120, &object);
  xpc_release(object);
  object = 0;
  v34 = xpc_null_create();
  v35 = *a5;
  *(a1 + 128) = v34;
  *(a1 + 136) = v35;
  if (v35)
  {
    dispatch_retain(v35);
  }

  *(a1 + 144) = 0;
  *(a1 + 146) = 1;
  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = a1 + 208;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  return a1;
}

void sub_2962F7D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 79) < 0)
  {
    operator delete(*(v19 + 56));
    v21 = *(v19 + 48);
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v19 + 48);
    if (!v21)
    {
LABEL_6:
      ctu::SharedLoggable<qmi::Client::State,ctu::OsLogLogger>::~SharedLoggable((v19 + 8));
      _Unwind_Resume(a1);
    }
  }

  _Block_release(v21);
  goto LABEL_6;
}

void *ctu::SharedLoggable<qmi::Client::State,ctu::OsLogLogger>::~SharedLoggable(void *a1)
{
  MEMORY[0x29C258F40](a1 + 4);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t qmi::Client::State::State(uint64_t a1, __int128 *a2, __int128 *a3, char a4, NSObject **a5, uint64_t *a6)
{
  v12 = qmi::asShortString();
  ctu::OsLogContext::OsLogContext(v22, "com.apple.telephony.bb", v12);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v13 = *a5;
  *(a1 + 24) = *a5;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 40, v23);
  MEMORY[0x29C258F40](v23);
  ctu::OsLogContext::~OsLogContext(v22);
  *a1 = &unk_2A1D48158;
  *(a1 + 48) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v14;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    *(a1 + 96) = *(a3 + 2);
    *(a1 + 80) = v15;
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a4;
  *(a1 + 112) = xpc_null_create();
  object = xpc_null_create();
  MEMORY[0x29C258FC0](a1 + 120, &object);
  xpc_release(object);
  object = 0;
  v16 = xpc_null_create();
  v17 = *a5;
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  *(a1 + 144) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = a1 + 208;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  v19 = *a6;
  v18 = a6[1];
  *(a1 + 256) = v18 != 0;
  *(a1 + 146) = 1;
  *(a1 + 264) = v19;
  *(a1 + 272) = v18;
  *a6 = 0;
  a6[1] = 0;
  *(a1 + 280) = 1;
  return a1;
}

void sub_2962F8060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (*(v9 + 79) < 0)
  {
    operator delete(*(v9 + 56));
    v12 = *(v9 + 48);
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = *(v9 + 48);
    if (!v12)
    {
LABEL_6:
      ctu::SharedLoggable<qmi::Client::State,ctu::OsLogLogger>::~SharedLoggable(v10);
      _Unwind_Resume(a1);
    }
  }

  _Block_release(v12);
  goto LABEL_6;
}

void qmi::Client::State::~State(qmi::Client::State *this)
{
  *this = &unk_2A1D48158;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>>>::destroy(*(this + 26));
  v5 = *(this + 24);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 19);
  if (v8)
  {
    v9 = *(this + 20);
    v10 = *(this + 19);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 16);
        if (v11)
        {
          add = atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
          if (add <= 0)
          {
            _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
          }

          else if (add == 1)
          {
            (*(*v11 + 8))(v11);
          }
        }

        v13 = *(v9 - 8);
        if (v13)
        {
          _Block_release(v13);
        }

        v9 -= 24;
      }

      while (v9 != v8);
      v10 = *(this + 19);
    }

    *(this + 20) = v8;
    operator delete(v10);
  }

  v14 = *(this + 17);
  if (v14)
  {
    dispatch_release(v14);
  }

  xpc_release(*(this + 16));
  *(this + 16) = 0;
  MEMORY[0x29C258FD0](this + 120);
  MEMORY[0x29C258FA0](this + 112);
  if ((*(this + 103) & 0x80000000) == 0)
  {
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    operator delete(*(this + 7));
    v15 = *(this + 6);
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  operator delete(*(this + 10));
  if (*(this + 79) < 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v15 = *(this + 6);
  if (v15)
  {
LABEL_34:
    _Block_release(v15);
  }

LABEL_35:
  MEMORY[0x29C258F40](this + 40);
  v16 = *(this + 4);
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *(this + 3);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 2);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

void qmi::Client::State::handleServerError(uint64_t a1, xpc_object_t *a2)
{
  if (*a2 == MEMORY[0x29EDCA9C0])
  {
    ctu::XpcClientHelper::setServer();
    v5 = *a2;
    v7 = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      v5 = xpc_null_create();
      v7 = v5;
    }

    v6 = 0;
    qmi::Client::State::sendServerFailure_sync(a1, &v7, &v6);
    xpc_release(v5);
  }

  else if (*a2 == MEMORY[0x29EDCA9B8])
  {
    v3 = *(*a1 + 64);

    v3();
  }
}

void qmi::Client::State::sendServerFailure_sync(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  if (!*(a1 + 192))
  {
    return;
  }

  v5 = *(a1 + 136);
  v6 = *a2;
  if (!*a2)
  {
    v6 = xpc_null_create();
    v7 = *a3;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  xpc_retain(*a2);
  v7 = *a3;
  if (v7)
  {
LABEL_4:
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

LABEL_5:
  v8 = *(a1 + 264);
  v9 = *(a1 + 272);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 256);
  v11 = *(a1 + 192);
  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = operator new(0x30uLL);
  *v13 = v6;
  v14 = xpc_null_create();
  v13[1] = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  v13[2] = v8;
  v13[3] = v9;
  *(v13 + 32) = v10;
  v13[5] = v12;
  v15 = 0;
  v16 = 0;
  dispatch_async_f(v5, v13, dispatch::async<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](&v15);
  std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](&v16);
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  xpc_release(v14);
}

void qmi::Client::State::handleClientError(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*a3 != MEMORY[0x29EDCA9D0])
  {
    v5 = xpc_null_create();
    v6 = xpc_null_create();
    v7 = *(a1 + 128);
    *(a1 + 128) = v5;
    xpc_release(v7);
    xpc_release(v6);
    v8 = dispatch_group_create();
    v9 = v8;
    *buf = v8;
    if (v8)
    {
      dispatch_retain(v8);
      dispatch_group_enter(v9);
      dispatch_release(v9);
    }

    v10 = *a3;
    v22 = v10;
    if (v10)
    {
      xpc_retain(v10);
    }

    else
    {
      v10 = xpc_null_create();
      v22 = v10;
    }

    qmi::Client::State::sendServerFailure_sync(a1, &v22, buf);
    xpc_release(v10);
    v22 = 0;
    if (MEMORY[0x29C259C10](*(a1 + 112)) != MEMORY[0x29EDCA9F0])
    {
      goto LABEL_27;
    }

    v13 = *(a1 + 16);
    if (!v13 || (v14 = *(a1 + 8), (v15 = std::__shared_weak_count::lock(v13)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = v15;
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v17 = std::__shared_weak_count::lock(v15);
      if (v17)
      {
LABEL_16:
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_weak(v16);
        if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_21:
          v9 = *buf;
          v18 = *(a1 + 24);
          v20[0] = MEMORY[0x29EDCA5F8];
          v20[1] = 1174405120;
          v20[2] = ___ZN3qmi6Client5State17handleClientErrorERKN3xpc10connectionERKNS2_6objectE_block_invoke;
          v20[3] = &__block_descriptor_tmp_5;
          v20[4] = a1;
          v20[5] = v14;
          v21 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          dispatch_group_notify(v9, v18, v20);
          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

LABEL_27:
          if (v9)
          {
            dispatch_group_leave(v9);
            dispatch_release(v9);
          }

          goto LABEL_29;
        }

        (v17->__on_zero_shared)(v17);
        v16 = v17;
LABEL_20:
        std::__shared_weak_count::__release_weak(v16);
        goto LABEL_21;
      }
    }

    else
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v16);
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        goto LABEL_16;
      }
    }

    v14 = 0;
    goto LABEL_20;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v12 = *v12;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&dword_2962DD000, v11, OS_LOG_TYPE_DEFAULT, "#I client '%s' ignoring XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
  }

LABEL_29:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2962F88C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3qmi6Client5State17handleClientErrorERKN3xpc10connectionERKNS2_6objectE_block_invoke(void *a1)
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
        (*(*v3 + 64))(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c24_ZTSNSt3__18weak_ptrIvEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c24_ZTSNSt3__18weak_ptrIvEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void qmi::Client::State::setClientHandle(uint64_t a1, uint64_t *a2)
{
  v8[0] = a1;
  v8[1] = a2;
  if (*(a1 + 280) == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v5 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 272);
    *(a1 + 264) = v5;
    *(a1 + 272) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    *(a1 + 256) = a2[1] != 0;
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS3_15setClientHandleERKNSt3__18weak_ptrIvEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
    block[3] = &__block_descriptor_tmp_42;
    block[4] = a1 + 8;
    block[5] = v8;
    v7 = *(a1 + 24);
    if (*(a1 + 32))
    {
      dispatch_async_and_wait(v7, block);
    }

    else
    {
      dispatch_sync(v7, block);
    }
  }
}

void qmi::Client::State::stop(qmi::Client::State *this)
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
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::stop(void)::$_0>(qmi::Client::State::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::stop(void)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void qmi::Client::State::sendStopMessage_sync(qmi::Client::State *this)
{
  if (*(this + 144) != 1)
  {
    return;
  }

  *(this + 144) = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xdict = v2;
  }

  else
  {
    v3 = xpc_null_create();
    xdict = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_9;
    }
  }

  if (MEMORY[0x29C259C10](v3) != MEMORY[0x29EDCAA00])
  {
    v4 = xpc_null_create();
LABEL_9:
    xdict = v4;
    goto LABEL_10;
  }

  xpc_retain(v3);
LABEL_10:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "status", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  (*(*this + 56))(this, &xdict);
  xpc_release(xdict);
}

void qmi::Client::State::start(qmi::Client::State *this)
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
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::start(void)::$_0>(qmi::Client::State::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::start(void)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::start(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void qmi::Client::State::sendStartMessage_sync(qmi::Client::State *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xdict = v2;
  }

  else
  {
    v3 = xpc_null_create();
    xdict = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C259C10](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  xdict = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "status", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_BOOL_create(*(this + 31) != 0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "low_power", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_BOOL_create(*(this + 6) != 0);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "exit_low_power", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  (*(*this + 56))(this, &xdict);
  xpc_release(xdict);
}

void qmi::Client::State::handleStatus_sync(uint64_t a1, xpc_object_t *a2, int a3)
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return;
    }

    v5 = *(a1 + 176);
    if (!v5)
    {
      return;
    }

    v6 = *(a1 + 136);
    v7 = *(a1 + 264);
    v8 = *(a1 + 272);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
      v5 = *(a1 + 176);
      v9 = *(a1 + 256);
      if (!v5)
      {
        v10 = 0;
        v11 = *a2;
        if (!*a2)
        {
LABEL_7:
          v11 = xpc_null_create();
LABEL_20:
          v20 = operator new(0x28uLL);
          *v20 = v7;
          v20[1] = v8;
          *(v20 + 16) = v9;
          v20[3] = v10;
          v20[4] = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            v20[4] = xpc_null_create();
          }

          dispatch_async_f(v6, v20, dispatch::async<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0>>)::{lambda(void *)#1}::__invoke);
          xpc_release(v11);
          return;
        }

LABEL_19:
        xpc_retain(v11);
        goto LABEL_20;
      }
    }

    else
    {
      v9 = *(a1 + 256);
    }

    v10 = _Block_copy(v5);
    v11 = *a2;
    if (!*a2)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v12 = dispatch_group_create();
  v13 = v12;
  if (v12)
  {
    dispatch_retain(v12);
    dispatch_group_enter(v13);
    dispatch_release(v13);
    if (*(a1 + 184))
    {
      dispatch_retain(v13);
      dispatch_group_enter(v13);
      goto LABEL_12;
    }
  }

  else if (*(a1 + 184))
  {
LABEL_12:
    v14 = *(a1 + 264);
    v15 = *(a1 + 272);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
    }

    v16 = *(a1 + 256);
    v17 = *(a1 + 184);
    if (v17)
    {
      v18 = _Block_copy(v17);
      v19 = *a2;
      if (*a2)
      {
LABEL_16:
        xpc_retain(v19);
LABEL_24:
        v21 = *(a1 + 136);
        v22 = operator new(0x30uLL);
        *v22 = v13;
        v22[1] = v14;
        v22[2] = v15;
        *(v22 + 24) = v16;
        v22[4] = v18;
        v22[5] = v19;
        if (v19)
        {
          xpc_retain(v19);
        }

        else
        {
          v22[5] = xpc_null_create();
        }

        object[0] = 0;
        v37 = 0;
        dispatch_async_f(v21, v22, dispatch::async<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>)::{lambda(void *)#1}::__invoke);
        std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>::~unique_ptr[abi:ne200100](&v37);
        std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>::~unique_ptr[abi:ne200100](object);
        xpc_release(v19);
        goto LABEL_28;
      }
    }

    else
    {
      v18 = 0;
      v19 = *a2;
      if (*a2)
      {
        goto LABEL_16;
      }
    }

    v19 = xpc_null_create();
    goto LABEL_24;
  }

LABEL_28:
  value = xpc_dictionary_get_value(*a2, "error");
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v24 = xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  if (*(a1 + 144) & v24)
  {
    v25 = *(a1 + 16);
    if (!v25 || (v26 = *(a1 + 8), (v27 = std::__shared_weak_count::lock(v25)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v28 = v27;
    p_shared_weak_owners = &v27->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v28);
    }

    object[0] = a1;
    object[1] = v26;
    object[2] = v28;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v30 = *(a1 + 264);
    v31 = *(a1 + 272);
    object[3] = v30;
    object[4] = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(v31 + 2, 1uLL, memory_order_relaxed);
    }

    v36 = *(a1 + 256);
    v32 = v36;
    v33 = *(a1 + 24);
    v34 = operator new(0x30uLL);
    *v34 = a1;
    v34[1] = v26;
    v34[2] = v28;
    v34[3] = v30;
    v34[4] = v31;
    *(v34 + 40) = v32;
    dispatch_group_notify_f(v13, v33, v34, dispatch::detail::group_notify<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2>(dispatch_group_s *,dispatch_queue_s *,qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v13)
  {
    dispatch_group_leave(v13);
    dispatch_release(v13);
  }
}

void sub_2962F942C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2::~$_2(&object);
  std::__shared_weak_count::__release_weak(v11);
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  _Unwind_Resume(a1);
}

void qmi::Client::LocalState::setProxyMessenger(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 328);
  *(a1 + 320) = v3;
  *(a1 + 328) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2::~$_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void qmi::Client::XPCState::handleEnterLowPower_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
    dispatch_release(v5);
    if (*(a1 + 248))
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
      goto LABEL_5;
    }
  }

  else if (*(a1 + 248))
  {
LABEL_5:
    v6 = *(a1 + 264);
    v7 = *(a1 + 272);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 256);
    v9 = *(a1 + 248);
    if (v9)
    {
      v10 = _Block_copy(v9);
      v11 = *a2;
      if (*a2)
      {
LABEL_9:
        xpc_retain(v11);
LABEL_12:
        v12 = *(a1 + 136);
        v13 = operator new(0x30uLL);
        *v13 = v5;
        v13[1] = v6;
        v13[2] = v7;
        *(v13 + 24) = v8;
        v13[4] = v10;
        v13[5] = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          v13[5] = xpc_null_create();
        }

        v25 = 0;
        v26 = 0;
        dispatch_async_f(v12, v13, dispatch::async<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke);
        std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v25);
        std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v26);
        xpc_release(v11);
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
      v11 = *a2;
      if (*a2)
      {
        goto LABEL_9;
      }
    }

    v11 = xpc_null_create();
    goto LABEL_12;
  }

LABEL_16:
  reply = xpc_dictionary_create_reply(*a2);
  if (reply || (reply = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C259C10](reply) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(reply);
      v15 = reply;
    }

    else
    {
      v15 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_null_create();
    reply = 0;
  }

  xpc_release(reply);
  v16 = *(a1 + 16);
  if (!v16 || (v17 = *(a1 + 8), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  p_shared_weak_owners = &v18->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v19);
  }

  v21 = *(a1 + 24);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v22[2] = ___ZN3qmi6Client8XPCState24handleEnterLowPower_syncERKN3xpc4dictE_block_invoke;
  v22[3] = &__block_descriptor_tmp_13;
  v22[4] = a1;
  v22[5] = v17;
  v23 = v19;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  object = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    object = xpc_null_create();
  }

  dispatch_group_notify(v5, v21, v22);
  xpc_release(object);
  object = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  std::__shared_weak_count::__release_weak(v19);
  xpc_release(v15);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }
}

void sub_2962F9824(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2962F9848()
{
  xpc_release(v1);
  if (!v0)
  {
    JUMPOUT(0x2962F983CLL);
  }

  JUMPOUT(0x2962F982CLL);
}

void ___ZN3qmi6Client8XPCState24handleEnterLowPower_syncERKN3xpc4dictE_block_invoke(void *a1)
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
        (*(*v3 + 56))(v3, a1 + 7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

xpc_object_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3qmi6Client5StateEEE56c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3qmi6Client5StateEEE56c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void qmi::Client::LocalState::handleEnterLowPower_sync(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
    dispatch_release(v3);
    if (!*(a1 + 248))
    {
      goto LABEL_22;
    }

    group[0] = v3;
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4 = *(a1 + 272);
    group[1] = *(a1 + 264);
    v18 = v4;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!*(a1 + 248))
    {
      goto LABEL_22;
    }

    group[0] = 0;
    v4 = *(a1 + 272);
    group[1] = *(a1 + 264);
    v18 = v4;
    if (v4)
    {
LABEL_4:
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v19 = *(a1 + 256);
  v5 = *(a1 + 248);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
  }

  v6 = *(a1 + 136);
  v7 = operator new(0x40uLL);
  *v7 = *group;
  *(v7 + 2) = v18;
  group[1] = 0;
  v18 = 0;
  v7[24] = v19;
  *(v7 + 4) = aBlock;
  group[0] = 0;
  aBlock = 0;
  *(v7 + 40) = __p;
  memset(&__p, 0, sizeof(__p));
  v22 = 0;
  v23 = 0;
  dispatch_async_f(v6, v7, dispatch::async<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v22);
  std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v23);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v8 = aBlock;
    if (!aBlock)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v8 = aBlock;
  if (aBlock)
  {
LABEL_17:
    _Block_release(v8);
  }

LABEL_18:
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (group[0])
  {
    dispatch_group_leave(group[0]);
    dispatch_release(group[0]);
  }

LABEL_22:
  v9 = *(a1 + 16);
  if (!v9 || (v10 = *(a1 + 8), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  p_shared_weak_owners = &v11->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
  }

  v14 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3qmi6Client10LocalState24handleEnterLowPower_syncERKN3xpc4dictE_block_invoke;
  block[3] = &__block_descriptor_tmp_14_1;
  block[4] = a1;
  block[5] = v10;
  v16 = v12;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  dispatch_group_notify(v3, v14, block);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v12);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }
}

void sub_2962F9CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v21)
  {
    dispatch_group_leave(v21);
    dispatch_release(v21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3qmi6Client10LocalState24handleEnterLowPower_syncERKN3xpc4dictE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v13 = v4;
  if (!v4)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_15:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }

    return;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C259C10](v6) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v6);
    goto LABEL_12;
  }

  v7 = xpc_null_create();
LABEL_11:
  xdict = v7;
LABEL_12:
  xpc_release(v6);
  v8 = xpc_BOOL_create(1);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "low_power_reply", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  (*(*v3 + 56))(v3, &xdict);
  xpc_release(xdict);
  v4 = v13;
  if (v13)
  {
    goto LABEL_15;
  }
}

void sub_2962F9ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3qmi6Client5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3qmi6Client5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void qmi::Client::State::send(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v4 = a1[2];
    if (!v4)
    {
LABEL_12:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v5 = a1[1];
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v8[1] = xpc_null_create();
  }

  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::send(xpc::dict const&)::$_0>(qmi::Client::State::send(xpc::dict const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::send(xpc::dict const&)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::send(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  xpc_release(v3);
}

uint64_t qmi::Client::State::pickNextTxId_sync(qmi::Client::State *this)
{
  v1 = *(this + 73);
  if (((v1 + 1) & 0xFFFE) != 0)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 1;
  }

  *(this + 73) = v2;
  return v1;
}

void qmi::Client::State::setHandler(void *a1, int a2, const void **a3)
{
  if (*a3)
  {
    v5 = _Block_copy(*a3);
    v6 = a1[2];
    if (!v6)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = 0;
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = a1[1];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[2] = a2;
  *(v10 + 2) = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0>(qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  if (*a3)
  {
    v5 = _Block_copy(*a3);
    v6 = a1[2];
    if (!v6)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = 0;
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = a1[1];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[2] = a2;
  *(v10 + 2) = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0>(qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void qmi::Client::State::setIndHandler(void *a1, __int16 a2, const void **a3)
{
  if (*a3)
  {
    v5 = _Block_copy(*a3);
    v6 = a1[2];
    if (!v6)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = 0;
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = a1[1];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[4] = a2;
  *(v10 + 2) = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0>(qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void qmi::Client::State::setIndShouldWake(qmi::Client::State *this, __int16 a2, char a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = this;
  v10[4] = a2;
  *(v10 + 10) = a3;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0>(qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void qmi::Client::State::sendIndWakeSet_sync(qmi::Client::State *this)
{
  v2 = xpc_array_create(0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C259C10](v2) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = *(this + 28);
  for (i = *(this + 29); v4 != i; ++v4)
  {
    v6 = xpc_int64_create(*v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    xpc_array_append_value(v3, v6);
    xpc_release(v6);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    xdict = v7;
  }

  else
  {
    v8 = xpc_null_create();
    xdict = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_18;
    }
  }

  if (MEMORY[0x29C259C10](v8) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v8);
    goto LABEL_19;
  }

  v9 = xpc_null_create();
LABEL_18:
  xdict = v9;
LABEL_19:
  xpc_release(v8);
  if (v3)
  {
    xpc_retain(v3);
    v10 = v3;
  }

  else
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "set_ind_wake", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  (*(*this + 56))(this, &xdict);
  xpc_release(xdict);
  xpc_release(v3);
}

void sub_2962FA718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *qmi::Client::XPCState::XPCState(uint64_t a1, __int128 *a2, __int128 *a3, char a4, NSObject **a5)
{
  result = qmi::Client::State::State(a1, a2, a3, a4, a5);
  *result = &unk_2A1D482A0;
  result[36] = 0;
  return result;
}

{
  result = qmi::Client::State::State(a1, a2, a3, a4, a5);
  *result = &unk_2A1D482A0;
  result[36] = 0;
  return result;
}

void *qmi::Client::XPCState::XPCState(uint64_t a1, __int128 *a2, __int128 *a3, char a4, NSObject **a5, uint64_t *a6)
{
  result = qmi::Client::State::State(a1, a2, a3, a4, a5, a6);
  *result = &unk_2A1D482A0;
  result[36] = 0;
  return result;
}

{
  result = qmi::Client::State::State(a1, a2, a3, a4, a5, a6);
  *result = &unk_2A1D482A0;
  result[36] = 0;
  return result;
}

void qmi::Client::XPCState::create(__int128 *a1@<X0>, __int128 *a2@<X1>, xpc_object_t *a3@<X2>, char a4@<W3>, NSObject **a5@<X4>, atomic_ullong *a6@<X8>)
{
  *a6 = 0xAAAAAAAAAAAAAAAALL;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x128uLL);
  qmi::Client::State::State(v12, a1, a2, a4, a5);
  *v12 = &unk_2A1D482A0;
  v12[36] = 0;
  *a6 = 0xAAAAAAAAAAAAAAAALL;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Client::XPCState>::shared_ptr[abi:ne200100]<qmi::Client::XPCState,std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState*)#1},0>(a6, v12);
  v13 = *a6;
  v15[0] = a3;
  v15[1] = v13;
  if (*(v13 + 280) == 1)
  {
    dispatch_assert_queue_V2(*(v13 + 136));
    qmi::Client::XPCState::init(xpc::connection const&)::$_0::operator()(v15);
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS2_8XPCState4initERKN3xpc10connectionEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
    block[3] = &__block_descriptor_tmp_54;
    block[4] = v13 + 8;
    block[5] = v15;
    v14 = *(v13 + 24);
    if (*(v13 + 32))
    {
      dispatch_async_and_wait(v14, block);
    }

    else
    {
      dispatch_sync(v14, block);
    }
  }
}

void qmi::Client::XPCState::init(uint64_t a1, xpc_object_t *a2)
{
  v4[0] = a2;
  v4[1] = a1;
  if (*(a1 + 280) == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    qmi::Client::XPCState::init(xpc::connection const&)::$_0::operator()(v4);
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS2_8XPCState4initERKN3xpc10connectionEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
    block[3] = &__block_descriptor_tmp_54;
    block[4] = a1 + 8;
    block[5] = v4;
    v3 = a1 + 24;
    v2 = *(a1 + 24);
    if (*(v3 + 8))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void qmi::Client::XPCState::create(__int128 *a1@<X0>, __int128 *a2@<X1>, xpc_object_t *a3@<X2>, char a4@<W3>, NSObject **a5@<X4>, uint64_t *a6@<X5>, atomic_ullong *a7@<X8>)
{
  *a7 = 0xAAAAAAAAAAAAAAAALL;
  a7[1] = 0xAAAAAAAAAAAAAAAALL;
  v14 = operator new(0x128uLL);
  qmi::Client::State::State(v14, a1, a2, a4, a5, a6);
  *v14 = &unk_2A1D482A0;
  v14[36] = 0;
  *a7 = 0xAAAAAAAAAAAAAAAALL;
  a7[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Client::XPCState>::shared_ptr[abi:ne200100]<qmi::Client::XPCState,std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState*)#1},0>(a7, v14);
  v15 = *a7;
  v17[0] = a3;
  v17[1] = v15;
  if (*(v15 + 280) == 1)
  {
    dispatch_assert_queue_V2(*(v15 + 136));
    qmi::Client::XPCState::init(xpc::connection const&)::$_0::operator()(v17);
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS2_8XPCState4initERKN3xpc10connectionEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
    block[3] = &__block_descriptor_tmp_54;
    block[4] = v15 + 8;
    block[5] = v17;
    v16 = *(v15 + 24);
    if (*(v15 + 32))
    {
      dispatch_async_and_wait(v16, block);
    }

    else
    {
      dispatch_sync(v16, block);
    }
  }
}

void qmi::Client::XPCState::~XPCState(qmi::Client::XPCState *this)
{
  *this = &unk_2A1D482A0;
  std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100](this + 36, 0);

  qmi::Client::State::~State(this);
}

{
  *this = &unk_2A1D482A0;
  std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100](this + 36, 0);

  qmi::Client::State::~State(this);
}

{
  *this = &unk_2A1D482A0;
  std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100](this + 36, 0);
  qmi::Client::State::~State(this);

  operator delete(v2);
}

BOOL qmi::Client::XPCState::handleNewClient(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C259C10](*(a1 + 128));
  v5 = MEMORY[0x29EDCA9F0];
  if (v4 == MEMORY[0x29EDCA9F0])
  {
    return v4 != v5;
  }

  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = *(a1 + 128);
  *(a1 + 128) = v6;
  xpc_release(v7);
  v8 = *a2;
  if (v8)
  {
    xpc_retain(v8);
    v9 = *(a1 + 24);
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = xpc_null_create();
  v9 = *(a1 + 24);
  if (v9)
  {
LABEL_7:
    dispatch_retain(v9);
  }

LABEL_8:
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 8), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  p_shared_weak_owners = &v12->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZNK3ctu15XpcServerHelper12acceptClientIN3qmi6Client5StateEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
  handler[3] = &__block_descriptor_tmp_55;
  handler[4] = v11;
  v20 = v13;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v21 = v8;
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_set_target_queue(v8, v9);
  xpc_connection_resume(v8);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_weak(v13);
  if (v9)
  {
    dispatch_release(v9);
  }

  xpc_release(v8);
  if (*(a1 + 144) == 1)
  {
    qmi::Client::State::sendStartMessage_sync(a1);
  }

  if (*(a1 + 224) != *(a1 + 232))
  {
    qmi::Client::State::sendIndWakeSet_sync(a1);
  }

  v15 = *(a1 + 288);
  if (v15)
  {
    v16 = *(v15 + 8);
    for (i = *(v15 + 16); v16 != i; v16 += 8)
    {
      (*(*a1 + 56))(a1, v16);
    }

    std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100]((a1 + 288), 0);
  }

  return v4 != v5;
}

void sub_2962FAF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v17);
  if (v16)
  {
    dispatch_release(v16);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *--v4;
          xpc_release(v6);
          *v4 = 0;
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    xpc_release(*v2);

    operator delete(v2);
  }
}

BOOL qmi::Client::XPCState::sendNowOrDrop_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C259C10](*(a1 + 128));
  v5 = MEMORY[0x29EDCA9F0];
  if (v4 != MEMORY[0x29EDCA9F0])
  {
    return 0;
  }

  xpc_connection_send_message(*(a1 + 128), *a2);
  return v4 == v5;
}

void qmi::Client::XPCState::sendConnectMessage_sync(qmi::Client::XPCState *this)
{
  v53 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29C259C10](*(this + 16));
  v3 = MEMORY[0x29EDCA9F0];
  if (v2 == MEMORY[0x29EDCA9F0])
  {
    goto LABEL_62;
  }

  if (*(this + 14))
  {
    v4 = *(this + 36);
    if (v4)
    {
      if (MEMORY[0x29C259C10](*v4) == v3)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v7 = operator new(0x20uLL);
      *v7 = 0u;
      v7[1] = 0u;
      *v7 = xpc_null_create();
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *&buf = 0;
      std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100](this + 36, v7);
      std::unique_ptr<qmi::Client::XPCState::ConnectHelper>::reset[abi:ne200100](&buf, 0);
      if (MEMORY[0x29C259C10](**(this + 36)) == v3)
      {
        goto LABEL_62;
      }
    }

    v8 = xpc_connection_create(0, *(this + 3));
    if (v8)
    {
      v9 = *(this + 36);
    }

    else
    {
      v8 = xpc_null_create();
      v9 = *(this + 36);
      if (!v8)
      {
        v11 = xpc_null_create();
        v8 = 0;
        v10 = 1;
        goto LABEL_15;
      }
    }

    xpc_retain(v8);
    v10 = 0;
    v11 = v8;
LABEL_15:
    v12 = *v9;
    *v9 = v11;
    xpc_release(v12);
    object = v8;
    if (v10)
    {
      object = xpc_null_create();
    }

    else
    {
      xpc_retain(v8);
    }

    v13 = (this + 120);
    ctu::XpcServerHelper::setListener();
    xpc_release(object);
    object = 0;
    v14 = *(this + 3);
    if (v14)
    {
      dispatch_retain(*(this + 3));
    }

    v15 = *(this + 2);
    if (!v15 || (v16 = *(this + 1), (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v17;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v18);
    }

    if (MEMORY[0x29C259C10](*v13) == v3)
    {
      v19 = *v13;
      *&buf = MEMORY[0x29EDCA5F8];
      *(&buf + 1) = 1174405120;
      v47 = ___ZN3ctu15XpcServerHelper13startListenerIN3qmi6Client5StateEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
      v48 = &__block_descriptor_tmp_58;
      v49 = this + 120;
      v50 = v16;
      v51 = v18;
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v52 = v19;
      xpc_connection_set_event_handler(v19, &buf);
      xpc_connection_set_target_queue(*v13, v14);
      xpc_connection_resume(*v13);
      if (v51)
      {
        std::__shared_weak_count::__release_weak(v51);
      }
    }

    std::__shared_weak_count::__release_weak(v18);
    if (v14)
    {
      dispatch_release(v14);
    }

    v20 = xpc_dictionary_create(0, 0, 0);
    if (v20 || (v20 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C259C10](v20) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v20);
        v21 = v20;
      }

      else
      {
        v21 = xpc_null_create();
      }
    }

    else
    {
      v21 = xpc_null_create();
      v20 = 0;
    }

    xpc_release(v20);
    v22 = this + 80;
    if (*(this + 103) < 0)
    {
      v22 = *v22;
    }

    v23 = xpc_string_create(v22);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, "connect", v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    v25 = xpc_int64_create(*(this + 104));
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, "svc_type", v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
    v27 = (this + 56);
    v28 = this + 56;
    if (*(this + 79) < 0)
    {
      v28 = *v27;
    }

    v29 = xpc_string_create(v28);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, "name", v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
    v31 = xpc_endpoint_create(v8);
    if (v31 || (v31 = xpc_null_create()) != 0)
    {
      xpc_retain(v31);
      v32 = v31;
    }

    else
    {
      v32 = xpc_null_create();
      v31 = 0;
    }

    xpc_dictionary_set_value(v21, "endpoint", v32);
    v33 = xpc_null_create();
    xpc_release(v32);
    xpc_release(v33);
    xpc_release(v31);
    if (MEMORY[0x29C259C10](*(this + 14)) == v3)
    {
      v35 = *(this + 2);
      if (!v35 || (v36 = *(this + 1), (v37 = std::__shared_weak_count::lock(v35)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v38 = v37;
      p_shared_weak_owners = &v37->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v38);
      }

      v40 = *(this + 14);
      v41 = *(this + 3);
      v43[0] = MEMORY[0x29EDCA5F8];
      v43[1] = 1174405120;
      v43[2] = ___ZN3qmi6Client8XPCState23sendConnectMessage_syncEv_block_invoke;
      v43[3] = &__block_descriptor_tmp_20;
      v43[4] = this;
      v43[5] = v36;
      v44 = v38;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      xpc_connection_send_message_with_reply(v40, v21, v41, v43);
      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      std::__shared_weak_count::__release_weak(v38);
    }

    else
    {
      v34 = *(this + 5);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 79) < 0)
        {
          v27 = *v27;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v27;
        _os_log_error_impl(&dword_2962DD000, v34, OS_LOG_TYPE_ERROR, "[%s] ****** Client connection has been lost!", &buf, 0xCu);
      }
    }

    xpc_release(v21);
    xpc_release(v8);
    goto LABEL_62;
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 56);
    if (*(this + 79) < 0)
    {
      v6 = *v6;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Client reconnect skipped because server is not reachable.", &buf, 0xCu);
  }

LABEL_62:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_2962FB6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v25);
  xpc_release(v24);
  xpc_release(v23);
  _Unwind_Resume(a1);
}

void ___ZN3qmi6Client8XPCState23sendConnectMessage_syncEv_block_invoke(void *a1, xpc_object_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_34;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v28 = v6;
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = v6;
  if (!a1[5])
  {
    goto LABEL_32;
  }

  v8 = *(v5 + 288);
  if (!v8)
  {
    goto LABEL_32;
  }

  Listener = ctu::XpcServerHelper::getListener((v5 + 120));
  if (!xpc_equal(*v8, *Listener))
  {
    goto LABEL_32;
  }

  v10 = xpc_null_create();
  v11 = *(v5 + 288);
  v12 = xpc_null_create();
  v13 = *v11;
  *v11 = v10;
  xpc_release(v13);
  xpc_release(v12);
  if (MEMORY[0x29C259C10](a2) == MEMORY[0x29EDCAA18])
  {
    if (a2 == MEMORY[0x29EDCA9C0])
    {
      v22 = *(v5 + 40);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v23 = (v5 + 56);
      if (*(v5 + 79) < 0)
      {
        v23 = *v23;
      }

      *buf = 136315138;
      v30 = v23;
      v19 = "#E [%s] Client connection invalid.";
      v20 = v22;
    }

    else
    {
      v15 = MEMORY[0x29EDCA9B8];
      v16 = *(v5 + 40);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (a2 == v15)
      {
        if (v17)
        {
          v24 = (v5 + 56);
          if (*(v5 + 79) < 0)
          {
            v24 = *v24;
          }

          *buf = 136315138;
          v30 = v24;
          _os_log_impl(&dword_2962DD000, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] Client connection interrupted; retrying.", buf, 0xCu);
        }

        (*(*v5 + 64))(v5);
        goto LABEL_32;
      }

      if (!v17)
      {
LABEL_32:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        goto LABEL_34;
      }

      v18 = (v5 + 56);
      if (*(v5 + 79) < 0)
      {
        v18 = *v18;
      }

      *buf = 136315138;
      v30 = v18;
      v19 = "#I [%s] Client connection other error.";
      v20 = v16;
    }

    _os_log_impl(&dword_2962DD000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_32;
  }

  v14 = MEMORY[0x29EDCAA00];
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_null_create();
    if (!a2)
    {
      v21 = xpc_null_create();
      a2 = 0;
      goto LABEL_30;
    }
  }

  if (MEMORY[0x29C259C10](a2) == v14)
  {
    xpc_retain(a2);
    v21 = a2;
  }

  else
  {
    v21 = xpc_null_create();
  }

LABEL_30:
  xpc_release(a2);
  if (MEMORY[0x29C259C10](v21) == v14)
  {
    if (xpc_dictionary_get_count(v21))
    {
      v26 = *(v5 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = (v5 + 56);
        if (*(v5 + 79) < 0)
        {
          v27 = *v27;
        }

        *buf = 136315138;
        v30 = v27;
        _os_log_impl(&dword_2962DD000, v26, OS_LOG_TYPE_DEFAULT, "#E [%s] Client connection rejected!", buf, 0xCu);
      }
    }
  }

  xpc_release(v21);
  v7 = v28;
  if (v28)
  {
    goto LABEL_32;
  }

LABEL_34:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_2962FBB98(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::Client::LocalState::LocalState(uint64_t a1, __int128 *a2, __int128 *a3, char a4, NSObject **a5, void *a6)
{
  v8 = qmi::Client::State::State(a1, a2, a3, a4, a5);
  *v8 = &unk_2A1D48328;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  *(v8 + 320) = 0u;
  *(v8 + 336) = 0u;
  v9 = a6[1];
  *(v8 + 352) = *a6;
  *(v8 + 360) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = xpc_null_create();
  return a1;
}

{
  v8 = qmi::Client::State::State(a1, a2, a3, a4, a5);
  *v8 = &unk_2A1D48328;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  *(v8 + 320) = 0u;
  *(v8 + 336) = 0u;
  v9 = a6[1];
  *(v8 + 352) = *a6;
  *(v8 + 360) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = xpc_null_create();
  return a1;
}

uint64_t qmi::Client::LocalState::LocalState(uint64_t a1, __int128 *a2, __int128 *a3, char a4, NSObject **a5, uint64_t *a6, void *a7)
{
  v9 = qmi::Client::State::State(a1, a2, a3, a4, a5, a6);
  *v9 = &unk_2A1D48328;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  v10 = a7[1];
  *(v9 + 352) = *a7;
  *(v9 + 360) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = xpc_null_create();
  return a1;
}

{
  v9 = qmi::Client::State::State(a1, a2, a3, a4, a5, a6);
  *v9 = &unk_2A1D48328;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  v10 = a7[1];
  *(v9 + 352) = *a7;
  *(v9 + 360) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = xpc_null_create();
  return a1;
}

void qmi::Client::LocalState::create(__int128 *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, NSObject **a4@<X3>, uint64_t *a5@<X4>, atomic_ullong *a6@<X8>)
{
  *a6 = 0xAAAAAAAAAAAAAAAALL;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x180uLL);
  v13 = v12;
  v15 = *a5;
  v14 = a5[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::State::State(v12, a1, a2, a3, a4);
  *v13 = &unk_2A1D48328;
  *(v13 + 288) = 0u;
  *(v13 + 304) = 0u;
  *(v13 + 320) = 0u;
  *(v13 + 336) = 0u;
  *(v13 + 352) = v15;
  *(v13 + 360) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(v13 + 368) = 0;
  *(v13 + 376) = xpc_null_create();
  *a6 = 0xAAAAAAAAAAAAAAAALL;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Client::LocalState>::shared_ptr[abi:ne200100]<qmi::Client::LocalState,std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState*)#1},0>(a6, v13);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v16 = *a6;
    v18 = v16;
    if (*(v16 + 280) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = *a6;
    v18 = v16;
    if (*(v16 + 280) == 1)
    {
LABEL_8:
      dispatch_assert_queue_V2(*(v16 + 136));
      qmi::Client::LocalState::init(void)::$_0::operator()(v16);
      return;
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS2_10LocalState4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = v16 + 8;
  block[5] = &v18;
  v17 = *(v16 + 24);
  if (*(v16 + 32))
  {
    dispatch_async_and_wait(v17, block);
  }

  else
  {
    dispatch_sync(v17, block);
  }
}

void sub_2962FBFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962FBFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void qmi::Client::LocalState::init(dispatch_queue_t *this)
{
  v4 = this;
  if (*(this + 280) == 1)
  {
    dispatch_assert_queue_V2(this[17]);

    qmi::Client::LocalState::init(void)::$_0::operator()(this);
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS2_10LocalState4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
    block[3] = &__block_descriptor_tmp_67;
    block[4] = this + 1;
    block[5] = &v4;
    v3 = (this + 3);
    v2 = this[3];
    if (*(v3 + 1))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void qmi::Client::LocalState::create(__int128 *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, NSObject **a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, atomic_ullong *a7@<X8>)
{
  *a7 = 0xAAAAAAAAAAAAAAAALL;
  a7[1] = 0xAAAAAAAAAAAAAAAALL;
  v14 = operator new(0x180uLL);
  v15 = v14;
  v17 = *a6;
  v16 = a6[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::State::State(v14, a1, a2, a3, a4, a5);
  *v15 = &unk_2A1D48328;
  *(v15 + 288) = 0u;
  *(v15 + 304) = 0u;
  *(v15 + 320) = 0u;
  *(v15 + 336) = 0u;
  *(v15 + 352) = v17;
  *(v15 + 360) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(v15 + 368) = 0;
  *(v15 + 376) = xpc_null_create();
  *a7 = 0xAAAAAAAAAAAAAAAALL;
  a7[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Client::LocalState>::shared_ptr[abi:ne200100]<qmi::Client::LocalState,std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState*)#1},0>(a7, v15);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v18 = *a7;
    v20 = v18;
    if (*(v18 + 280) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = *a7;
    v20 = v18;
    if (*(v18 + 280) == 1)
    {
LABEL_8:
      dispatch_assert_queue_V2(*(v18 + 136));
      qmi::Client::LocalState::init(void)::$_0::operator()(v18);
      return;
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS2_10LocalState4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = v18 + 8;
  block[5] = &v20;
  v19 = *(v18 + 24);
  if (*(v18 + 32))
  {
    dispatch_async_and_wait(v19, block);
  }

  else
  {
    dispatch_sync(v19, block);
  }
}

void sub_2962FC2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962FC2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void qmi::Client::LocalState::~LocalState(xpc_object_t *this)
{
  *this = &unk_2A1D48328;
  qmi::Client::State::sendStopMessage_sync(this);
  xpc_release(this[47]);
  v2 = this[46];
  this[46] = 0;
  this[47] = 0;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v2[2];
      v5 = v2[1];
      if (v4 != v3)
      {
        do
        {
          v6 = *--v4;
          xpc_release(v6);
          *v4 = 0;
        }

        while (v4 != v3);
        v5 = v2[1];
      }

      v2[2] = v3;
      operator delete(v5);
    }

    operator delete(v2);
  }

  v7 = this[45];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = this[43];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = this[41];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = this[39];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = this[37];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = this;
  }

  else
  {
    v12 = this;
  }

  qmi::Client::State::~State(v12);
}

{
  qmi::Client::LocalState::~LocalState(this);

  operator delete(v1);
}

uint64_t qmi::Client::LocalState::handleNewClient(qmi::Client::State *this)
{
  if (*(this + 144) == 1)
  {
    qmi::Client::State::sendStartMessage_sync(this);
  }

  if (*(this + 28) != *(this + 29))
  {
    qmi::Client::State::sendIndWakeSet_sync(this);
  }

  v2 = *(this + 46);
  if (v2)
  {
    v3 = v2[1];
    v4 = v2[2];
    if (v3 == v4)
    {
      *(this + 46) = 0;
      if (!v3)
      {
LABEL_16:
        operator delete(v2);
        return 1;
      }

LABEL_12:
      v5 = v2[2];
      v6 = v3;
      if (v5 != v3)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 8;
          xpc_release(v7);
          *v5 = 0;
        }

        while (v5 != v3);
        v6 = v2[1];
      }

      v2[2] = v3;
      operator delete(v6);
      goto LABEL_16;
    }

    do
    {
      (*(*this + 56))(this, v3);
      v3 += 8;
    }

    while (v3 != v4);
    v2 = *(this + 46);
    *(this + 46) = 0;
    if (v2)
    {
      v3 = v2[1];
      if (!v3)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  return 1;
}

uint64_t qmi::Client::LocalState::sendNowOrDrop_sync(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v26 = 0;
  v27 = 0;
  v4 = *(a1 + 360);
  if (!v4 || (v27 = std::__shared_weak_count::lock(v4)) == 0 || (v5 = *(a1 + 352), (v26 = v5) == 0))
  {
    v12 = *(a1 + 40);
    v7 = 0;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v13 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v13 = *v13;
    }

    v14 = MEMORY[0x29C259B40](*a2);
    memset(__dst, 170, sizeof(__dst));
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v15 | 7) + 1;
      }

      v17 = operator new(v18);
      __dst[1] = v16;
      __dst[2] = (v18 | 0x8000000000000000);
      __dst[0] = v17;
    }

    else
    {
      HIBYTE(__dst[2]) = v15;
      v17 = __dst;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    memcpy(v17, v14, v16);
LABEL_24:
    *(v16 + v17) = 0;
    free(v14);
    v19 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v19 = __dst[0];
    }

    *buf = 136315394;
    v29 = v13;
    v30 = 2080;
    v31 = v19;
    _os_log_impl(&dword_2962DD000, v12, OS_LOG_TYPE_DEFAULT, "#E [%s] ****** Client message DROPPED because of invalid local connection. Message: %s", buf, 0x16u);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_28;
  }

  v6 = *(a1 + 328);
  if (!v6 || (LODWORD(v7) = *(v5 + 112), v8 = std::__shared_weak_count::lock(v6), (__dst[1] = v8) == 0))
  {
LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = *(a1 + 320);
  __dst[0] = v10;
  if (v10)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    v11 = *a2;
    object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      object = xpc_null_create();
    }

    v23 = v10[3];
    if (!v23)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v23 + 48))(v23, &object);
    xpc_release(object);
    object = 0;
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_29:
  v20 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_2962FC8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::Client::LocalState::sendConnectMessage_sync(qmi::Client::LocalState *this)
{
  v2 = *(this + 46);
  if (!v2)
  {
    v3 = operator new(0x20uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(this + 46) = v3;
    goto LABEL_5;
  }

  if ((*v2 & 1) == 0)
  {
LABEL_5:
    (*(*this + 16))(this, 1);
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4 || (v4 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C259C10](v4) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v4);
        v5 = v4;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      v4 = 0;
    }

    xpc_release(v4);
    v6 = this + 80;
    if (*(this + 103) < 0)
    {
      v6 = *v6;
    }

    v7 = xpc_string_create(v6);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "connect", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v9 = xpc_int64_create(*(this + 104));
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "svc_type", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = this + 56;
    if (*(this + 79) < 0)
    {
      v11 = *v11;
    }

    v12 = xpc_string_create(v11);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "name", v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    v14 = *(this + 2);
    if (!v14 || (v15 = *(this + 1), (v16 = std::__shared_weak_count::lock(v14)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v17 = v16;
    p_shared_weak_owners = &v16->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v17);
    }

    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v19 = operator new(0x38uLL);
    v19[1] = 0;
    v19[2] = 0;
    *v19 = &unk_2A1D48708;
    v19[3] = &unk_2A1D48758;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v19 + 3;
    v20 = *(this + 39);
    *(this + 38) = v19 + 3;
    *(this + 39) = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(this + 45);
      if (!v21)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v21 = *(this + 45);
      if (!v21)
      {
        goto LABEL_55;
      }
    }

    v22 = std::__shared_weak_count::lock(v21);
    v44 = v22;
    if (v22)
    {
      v23 = *(this + 44);
      if (!v23)
      {
LABEL_52:
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v39 = v22;
          (v22->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v39);
        }

        goto LABEL_55;
      }

      v24 = *(this + 2);
      if (!v24 || (v25 = *(this + 1), (v26 = std::__shared_weak_count::lock(v24)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v27 = v26;
      v43 = v25;
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v27);
      }

      v28 = *(this + 37);
      v42 = *(this + 36);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(this + 38);
      v30 = *(this + 39);
      v41 = v29;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        xpc_retain(v5);
        v31 = v5;
        atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!v30)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v31 = xpc_null_create();
        atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!v30)
        {
LABEL_41:
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = v23[2];
          if (!v32 || (v33 = v23[1], (v34 = std::__shared_weak_count::lock(v32)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v35 = v34;
          v36 = operator new(0x40uLL);
          *v36 = v23;
          v36[1] = v31;
          object = xpc_null_create();
          v36[2] = v43;
          v36[3] = v27;
          v36[4] = v41;
          v36[5] = v30;
          v36[6] = v42;
          v36[7] = v28;
          v37 = v23[3];
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v38 = operator new(0x18uLL);
          *v38 = v36;
          v38[1] = v33;
          v38[2] = v35;
          dispatch_async_f(v37, v38, dispatch::async<void ctu::SharedSynchronizable<BBServerConnection>::execute_wrapped<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}>(qmi::Client::State&&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State>)::{lambda(void *)#1}::__invoke);
          if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
          }

          xpc_release(object);
          if (v30)
          {
            std::__shared_weak_count::__release_weak(v30);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_weak(v28);
          }

          std::__shared_weak_count::__release_weak(v27);
          v22 = v44;
          if (!v44)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }
      }

      atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_41;
    }

LABEL_55:
    std::__shared_weak_count::__release_weak(v17);
    xpc_release(v5);
  }
}

void sub_2962FCE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  std::__shared_weak_count::__release_weak(v6);
  xpc_release(v5);
  _Unwind_Resume(a1);
}

uint64_t qmi::Client::Client(uint64_t a1, __int128 *a2, char a3, NSObject **a4, __int128 *a5, void *a6)
{
  *(a1 + 16) = 0u;
  *a1 = 0u;
  if (MEMORY[0x29C259C10](*a6) == MEMORY[0x29EDCA9F0])
  {
    v12 = *a6;
    object = v12;
    if (!v12)
    {
LABEL_6:
      object = xpc_null_create();
      goto LABEL_7;
    }

    xpc_retain(v12);
  }

  else
  {
    object = xpc_connection_create_mach_service("com.apple.commcenter.atcs.xpc", 0, 2uLL);
    if (!object)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  qmi::Client::XPCState::create(a2, a5, &object, a3, a4, &v18);
  v13 = v18;
  v18 = 0uLL;
  v14 = *(a1 + 24);
  *(a1 + 16) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  xpc_release(object);
  return a1;
}

void sub_2962FD094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v11);
  v13 = *(v10 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::Client::Client(uint64_t a1, __int128 *a2, char a3, NSObject **a4, __int128 *a5, uint64_t *a6, void *a7)
{
  *(a1 + 16) = 0u;
  *a1 = 0u;
  if (MEMORY[0x29C259C10](*a7) == MEMORY[0x29EDCA9F0])
  {
    v14 = *a7;
    object = v14;
    if (!v14)
    {
LABEL_6:
      object = xpc_null_create();
      goto LABEL_7;
    }

    xpc_retain(v14);
  }

  else
  {
    object = xpc_connection_create_mach_service("com.apple.commcenter.atcs.xpc", 0, 2uLL);
    if (!object)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  qmi::Client::XPCState::create(a2, a5, &object, a3, a4, a6, &v20);
  v15 = v20;
  v20 = 0uLL;
  v16 = *(a1 + 24);
  *(a1 + 16) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(object);
  return a1;
}

void sub_2962FD260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v11);
  v13 = *(v10 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::Client::Client(uint64_t a1, __int128 *a2, char a3, NSObject **a4, __int128 *a5, uint64_t *a6)
{
  *(a1 + 16) = 0u;
  *a1 = 0u;
  v7 = a6[1];
  v13 = *a6;
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::LocalState::create(a2, a5, a3, a4, &v13, &v15);
  v8 = v15;
  v15 = 0uLL;
  v9 = *(a1 + 24);
  *(a1 + 16) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v15 + 1);
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v14;
  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  return a1;
}

void sub_2962FD408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v10);
  v12 = *(v9 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::Client::Client(uint64_t a1, __int128 *a2, char a3, NSObject **a4, __int128 *a5, uint64_t *a6, uint64_t *a7)
{
  *(a1 + 16) = 0u;
  *a1 = 0u;
  v8 = a7[1];
  v14 = *a7;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::LocalState::create(a2, a5, a3, a4, a6, &v14, &v16);
  v9 = v16;
  v16 = 0uLL;
  v10 = *(a1 + 24);
  *(a1 + 16) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return a1;
}

void sub_2962FD5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v10);
  v12 = *(v9 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(a1);
}

_OWORD *qmi::Client::Client(_OWORD *result, uint64_t a2)
{
  *result = 0u;
  result[1] = 0u;
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = std::__shared_weak_count::lock(*(a2 + 8));
    result = v3;
    *(v3 + 3) = v4;
    if (v4)
    {
      *(v3 + 2) = *a2;
    }
  }

  return result;
}

{
  *result = 0u;
  result[1] = 0u;
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = std::__shared_weak_count::lock(*(a2 + 8));
    result = v3;
    *(v3 + 3) = v4;
    if (v4)
    {
      *(v3 + 2) = *a2;
    }
  }

  return result;
}

void qmi::Client::~Client(qmi::Client *this)
{
  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t qmi::Client::operator std::weak_ptr<qmi::Client::State>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void qmi::Client::create(dispatch_object_t object@<X2>, xpc_object_t a2@<X4>, __int128 *a3@<X0>, char a4@<W1>, __int128 *a5@<X3>, uint64_t a6@<X8>)
{
  v13 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  v12 = a2;
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_null_create();
    v12 = a2;
  }

  qmi::Client::Client(a6, a3, a4, &v13, a5, &v12);
  xpc_release(a2);
  if (object)
  {

    dispatch_release(object);
  }
}

void sub_2962FD864(_Unwind_Exception *a1)
{
  xpc_release(v2);
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void qmi::Client::create(__int128 *a1@<X0>, char a2@<W1>, NSObject **a3@<X2>, __int128 *a4@<X3>, xpc_object_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v14 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *a5;
  v13 = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    v12 = xpc_null_create();
    v13 = v12;
  }

  qmi::Client::Client(a6, a1, a2, &v14, a4, &v13);
  xpc_release(v12);
  if (v11)
  {

    dispatch_release(v11);
  }
}

void sub_2962FD964(_Unwind_Exception *a1)
{
  xpc_release(v2);
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void qmi::Client::createWithQueue(__int128 *a1@<X0>, char a2@<W1>, NSObject **a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v16 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *v15 = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  v12 = xpc_null_create();
  if (MEMORY[0x29C259C10]() == MEMORY[0x29EDCA9F0])
  {
    v14 = v12;
    if (v12)
    {
      xpc_retain(v12);
      mach_service = v12;
      goto LABEL_9;
    }
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.commcenter.atcs.xpc", 0, 2uLL);
    v14 = mach_service;
    if (mach_service)
    {
      goto LABEL_9;
    }
  }

  mach_service = xpc_null_create();
  v14 = mach_service;
LABEL_9:
  qmi::Client::Client(a6, a1, a2, &v16, a4, v15, &v14);
  xpc_release(mach_service);
  xpc_release(v12);
  if (v15[1])
  {
    std::__shared_weak_count::__release_weak(v15[1]);
  }

  if (v11)
  {

    dispatch_release(v11);
  }
}

void sub_2962FDAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(v14);
  xpc_release(v13);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  dispatch_release(v12);
  _Unwind_Resume(a1);
}

void qmi::Client::createWithQueue(__int128 *a1@<X0>, char a2@<W1>, NSObject **a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, xpc_object_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v17 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *v16 = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  v14 = *a6;
  v15 = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v14;
  }

  qmi::Client::Client(a7, a1, a2, &v17, a4, v16, &v15);
  xpc_release(v14);
  if (v16[1])
  {
    std::__shared_weak_count::__release_weak(v16[1]);
  }

  if (v13)
  {

    dispatch_release(v13);
  }
}

void sub_2962FDC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(v13);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  dispatch_release(v12);
  _Unwind_Resume(a1);
}

void qmi::Client::createWithQueueLocal(__int128 *a1@<X0>, char a2@<W1>, NSObject **a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *v21 = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  v14 = *a6;
  {
    v17 = *(a6 + 8);
    v19 = v16;
    v20 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
  }

  qmi::Client::Client(a7, a1, a2, &object, a4, v21, &v19);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v21[1])
  {
    std::__shared_weak_count::__release_weak(v21[1]);
  }

  v18 = object;
  if (object)
  {

    dispatch_release(v18);
  }
}

void sub_2962FDE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  dispatch_release(v12);
  _Unwind_Resume(a1);
}

void qmi::Client::set(qmi::Client *this, const char *a2, int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    xdict = v6;
  }

  else
  {
    v7 = xpc_null_create();
    xdict = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C259C10](v7) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  xdict = v8;
LABEL_9:
  xpc_release(v7);
  v9 = xpc_int64_create(a3);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v10 = xdict;
  xpc_dictionary_set_value(xdict, a2, v9);
  v11 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v11);
  qmi::Client::State::send(*(this + 2), &xdict);
  xpc_release(v10);
}

void qmi::Client::set(qmi::Client *this, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    xdict = v6;
  }

  else
  {
    v7 = xpc_null_create();
    xdict = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C259C10](v7) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  xdict = v8;
LABEL_9:
  xpc_release(v7);
  v9 = xpc_int64_create(a3);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v10 = xdict;
  xpc_dictionary_set_value(xdict, a2, v9);
  v11 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v11);
  qmi::Client::State::send(*(this + 2), &xdict);
  xpc_release(v10);
}

void qmi::Client::release(qmi::Client *this)
{
  v1 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void qmi::Client::setHandler(uint64_t a1, int a2, void *aBlock)
{
  if (a2 == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Low power handler cannot take an XPC object paramter");
    __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
  }

  v4 = *(a1 + 16);
  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
    v7 = v5;
    qmi::Client::State::setHandler(v4, a2, &v7);
    if (v5)
    {
      _Block_release(v5);
    }
  }

  else
  {
    v7 = 0;
    qmi::Client::State::setHandler(v4, a2, &v7);
  }
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95F0] + 16);
  return result;
}

void qmi::Client::setHandler(uint64_t a1, unsigned int a2, void *aBlock)
{
  if (a2 <= 5)
  {
    if (a2 != 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "This event cannot take a dispatch parameter");
      __cxa_throw(exception, off_29EE31220, MEMORY[0x29EDC9360]);
    }

    v3 = *(a1 + 16);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
      v6 = v4;
      qmi::Client::State::setHandler(v3, 3, &v6);
      if (v4)
      {
        _Block_release(v4);
      }
    }

    else
    {
      v6 = 0;
      qmi::Client::State::setHandler(v3, 3, &v6);
    }
  }
}

void qmi::Client::setHandler(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    if (a2 == 3)
    {
      if (a3)
      {
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = ___ZNK3qmi6Client10setHandlerENS0_5EventEU13block_pointerFvvE_block_invoke_24;
        aBlock[3] = &__block_descriptor_tmp_28;
        aBlock[4] = a3;
        v4 = *(a1 + 16);
        v5 = _Block_copy(aBlock);
        v9 = v5;
        qmi::Client::State::setHandler(v4, 3, &v9);
        if (v5)
        {
          _Block_release(v5);
        }
      }

      else
      {
        v6 = *(a1 + 16);
        v9 = 0;
        qmi::Client::State::setHandler(v6, 3, &v9);
      }
    }

    else if (a3)
    {
      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 1107296256;
      v8[2] = ___ZNK3qmi6Client10setHandlerENS0_5EventEU13block_pointerFvvE_block_invoke;
      v8[3] = &__block_descriptor_tmp_23_0;
      v8[4] = a3;
      qmi::Client::setHandler(a1, a2, v8);
    }

    else
    {
      v3 = *(a1 + 16);
      v9 = 0;
      qmi::Client::State::setHandler(v3, a2, &v9);
    }
  }
}

void qmi::Client::setIndHandler(uint64_t a1, __int16 a2, void *aBlock)
{
  v4 = *(a1 + 16);
  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
    v6 = v5;
    qmi::Client::State::setIndHandler(v4, a2, &v6);
    if (v5)
    {
      _Block_release(v5);
    }
  }

  else
  {
    v6 = 0;
    qmi::Client::State::setIndHandler(v4, a2, &v6);
  }
}

void qmi::Client::pushSendBarrier(qmi::Client *this)
{
  v2 = dispatch_semaphore_create(0);
  v3 = v2;
  v4 = *(*(this + 2) + 24);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZNK3qmi6Client15pushSendBarrierEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_30;
  v5[4] = this;
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  dispatch_sync(v4, v5);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (object)
  {
    dispatch_release(object);
  }

  if (v3)
  {
    dispatch_release(v3);
  }
}

void ___ZNK3qmi6Client15pushSendBarrierEv_block_invoke(uint64_t a1)
{
  v2 = (*(**(*(a1 + 32) + 16) + 40))(*(*(a1 + 32) + 16));
  v3 = *v2;
  if (*v2)
  {
    xpc_retain(*v2);
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (MEMORY[0x29C259C10](v3) == MEMORY[0x29EDCA9F0])
  {
    barrier[0] = MEMORY[0x29EDCA5F8];
    barrier[1] = 1174405120;
    barrier[2] = ___ZNK3qmi6Client15pushSendBarrierEv_block_invoke_2;
    barrier[3] = &__block_descriptor_tmp_29;
    v4 = *(a1 + 40);
    object = v4;
    if (v4)
    {
      dispatch_retain(v4);
    }

    xpc_connection_send_barrier(v3, barrier);
    if (object)
    {
      dispatch_release(object);
    }
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  xpc_release(v3);
}

void sub_2962FE764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v14);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_32c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void __copy_helper_block_e8_40c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<qmi::Client::State::Transaction>,qmi::Client::State::Transaction*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 24)
    {
      v6 = *(v4 - 16);
      if (v6)
      {
        add = atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
        if (add <= 0)
        {
          _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
        }

        else if (add == 1)
        {
          (*(*v6 + 8))(v6);
        }
      }

      v8 = *(v4 - 8);
      if (v8)
      {
        _Block_release(v8);
      }
    }
  }

  return a1;
}

uint64_t std::__split_buffer<qmi::Client::State::Transaction>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    v4 = *(i - 16);
    if (v4)
    {
      add = atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
      if (add <= 0)
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
      }

      else if (add == 1)
      {
        (*(*v4 + 8))(v4);
      }
    }

    v6 = *(i - 8);
    if (v6)
    {
      _Block_release(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void qmi::Client::State::Transaction::~Transaction(qmi::Client::State::Transaction *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    if (add <= 0)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
    }

    else if (add == 1)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v4 = *(this + 2);
  if (v4)
  {
    _Block_release(v4);
  }
}

void *std::vector<xpc::dict>::__emplace_back_slow_path<xpc::dict const&>(xpc_object_t **a1, void *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  if (v7)
  {
    if (v7 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(8 * v7);
    v9 = &v8[8 * v2];
    *v9 = a2;
    if (a2)
    {
LABEL_10:
      xpc_retain(a2);
      v10 = *a1;
      v11 = a1[1];
      v12 = (v9 + *a1 - v11);
      if (v11 == *a1)
      {
        goto LABEL_11;
      }

LABEL_16:
      v16 = v12;
      v17 = v10;
      do
      {
        *v16 = *v17;
        *v17++ = xpc_null_create();
        ++v16;
      }

      while (v17 != v11);
      do
      {
        xpc_release(*v10);
        *v10++ = 0;
      }

      while (v10 != v11);
      v10 = *a1;
      v18 = &v8[8 * v7];
      v14 = v9 + 1;
      *a1 = v12;
      a1[1] = v9 + 1;
      a1[2] = v18;
      if (v10)
      {
        goto LABEL_12;
      }

      return v14;
    }
  }

  else
  {
    v8 = 0;
    v9 = (8 * v2);
    *v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  *v9 = xpc_null_create();
  v10 = *a1;
  v11 = a1[1];
  v12 = (v9 + *a1 - v11);
  if (v11 != *a1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v13 = &v8[8 * v7];
  v14 = v9 + 1;
  *a1 = v12;
  a1[1] = v9 + 1;
  a1[2] = v13;
  if (v10)
  {
LABEL_12:
    operator delete(v10);
  }

  return v14;
}

void std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete(a1);
  }
}

void ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS3_15setClientHandleERKNSt3__18weak_ptrIvEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  v5 = *v2;
  v4 = v2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 272);
  *(v3 + 264) = v5;
  *(v3 + 272) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *(v3 + 256) = *(v1[1] + 8) != 0;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::stop(void)::$_0>(qmi::Client::State::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::stop(void)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  qmi::Client::State::sendStopMessage_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_2962FEDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::start(void)::$_0>(qmi::Client::State::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::start(void)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  if ((*(v3 + 144) & 1) == 0)
  {
    *(v3 + 144) = 1;
    qmi::Client::State::sendStartMessage_sync(v3);
  }

  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  operator delete(v5);
}

void sub_2962FEEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void *std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1 == 0;
      if (*(a1 + 16) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (*(a1 + 16) != 1)
  {
LABEL_8:
    v5 = *(a1 + 32);
    (*(*(a1 + 24) + 16))();
    goto LABEL_9;
  }

LABEL_7:
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v6 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v6 = a1;
    if (!a1)
    {
      return;
    }
  }

  xpc_release(*(v6 + 32));
  *(v6 + 32) = 0;
  v7 = *(v6 + 24);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(v6 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(v6);
}

void sub_2962FF0AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 40));
    *(v1 + 40) = 0;
    v3 = *(v1 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *dispatch::async<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v9 = v3;
    if (v3)
    {
      v8 = *(a1 + 8);
      v4 = v8 == 0;
      if (*(a1 + 24) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (*(a1 + 24) != 1)
  {
LABEL_8:
    v5 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

LABEL_7:
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>::~unique_ptr[abi:ne200100](&v7);
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_2962FF23C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_1>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2>(dispatch_group_s *,dispatch_queue_s *,qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v13 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  if (*(a1 + 8))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(a1 + 24) == 0;
        if (*(a1 + 40) != 1)
        {
LABEL_11:
          if (*(v3 + 144) == 1)
          {
            qmi::Client::State::sendStartMessage_sync(v3);
          }

LABEL_13:
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
            v4 = v13;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v4 = v13;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_16;
        }

LABEL_10:
        if (v7)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
    if (*(a1 + 40) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v11);
    v8 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = a1;
  if (!a1)
  {
    return;
  }

LABEL_18:
  v9 = v8[4];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v8[2];
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(v8);
}

void sub_2962FF450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va2);
  std::unique_ptr<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2,std::default_delete<qmi::Client::State::handleStatus_sync(xpc::dict const&,qmi::ClientStatus)::$_2>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 40));
    *(v1 + 40) = 0;
    v3 = *(v1 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *dispatch::async<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v9 = v3;
    if (v3)
    {
      v8 = a1[1];
      v4 = v8 == 0;
      if (*(a1 + 24) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (*(a1 + 24) != 1)
  {
LABEL_8:
    v5 = *a1;
    (*(a1[4] + 16))();
    goto LABEL_9;
  }

LABEL_7:
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v7);
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_2962FF5E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::XPCState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  if ((*(v2 + 63) & 0x80000000) == 0)
  {
    v3 = *(v2 + 32);
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  operator delete(*(v2 + 40));
  v3 = *(v2 + 32);
  if (v3)
  {
LABEL_6:
    _Block_release(v3);
  }

LABEL_7:
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  return a1;
}

uint64_t *dispatch::async<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v9 = v3;
    if (v3)
    {
      v8 = *(a1 + 8);
      v4 = v8 == 0;
      if (*(a1 + 24) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (*(a1 + 24) != 1)
  {
LABEL_8:
    v5 = *a1;
    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

LABEL_7:
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v7);
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_2962FF784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::LocalState::handleEnterLowPower_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0,std::default_delete<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::send(xpc::dict const&)::$_0>(qmi::Client::State::send(xpc::dict const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::send(xpc::dict const&)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::send(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke(xpc_object_t **a1)
{
  v3 = *a1;
  (*(**v3 + 48))(**a1, v3 + 1);
  xpc_release(v3[1]);
  operator delete(v3);
  v2 = a1[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_2962FF8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, xpc_object_t *a10)
{
  std::unique_ptr<qmi::Client::State::send(xpc::dict const&)::$_0,std::default_delete<qmi::Client::State::send(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<qmi::Client::State::send(xpc::dict const&)::$_0,std::default_delete<qmi::Client::State::send(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS3_4sendERNS2_9SendProxyEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  result = *(v1 + 146);
  if (((result + 1) & 0xFFFE) != 0)
  {
    v3 = result + 1;
  }

  else
  {
    v3 = 1;
  }

  *(v1 + 146) = v3;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFtvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFtvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *std::unique_ptr<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1,std::default_delete<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0>(qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(void *)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v10 = v2[2];
      if (v10)
      {
        v10 = _Block_copy(v10);
      }

      v6 = *(v3 + 184);
      *(v3 + 184) = v10;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else if (v4 == 2)
    {
      v5 = v2[2];
      if (v5)
      {
        v5 = _Block_copy(v5);
      }

      v6 = *(v3 + 176);
      *(v3 + 176) = v5;
      if (v6)
      {
LABEL_7:
        _Block_release(v6);
        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      v7 = v2[2];
      if (v7)
      {
        v7 = _Block_copy(v7);
      }

      v8 = *(v3 + 192);
      *(v3 + 192) = v7;
      if (v8)
      {
        _Block_release(v8);
      }

      if (!*(v3 + 112))
      {
        v9 = MEMORY[0x29EDCA9C0];
        xpc_retain(MEMORY[0x29EDCA9C0]);
        v21 = v9;
        xpc_retain(v9);
        xdict = 0;
        qmi::Client::State::sendServerFailure_sync(v3, &v21, &xdict);
        xpc_release(MEMORY[0x29EDCA9C0]);
        xpc_release(MEMORY[0x29EDCA9C0]);
      }
    }

    goto LABEL_36;
  }

  v11 = v2[2];
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(v3 + 48);
  *(v3 + 48) = v11;
  if (v12)
  {
    _Block_release(v12);
  }

  if (*(v3 + 144) == 1)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = v13;
    if (v13)
    {
      xdict = v13;
    }

    else
    {
      v14 = xpc_null_create();
      xdict = v14;
      if (!v14)
      {
        v15 = xpc_null_create();
        v14 = 0;
        goto LABEL_32;
      }
    }

    if (MEMORY[0x29C259C10](v14) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v14);
LABEL_33:
      xpc_release(v14);
      v16 = xpc_BOOL_create(v2[2] != 0);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      v17 = xdict;
      xpc_dictionary_set_value(xdict, "exit_low_power", v16);
      v18 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v18);
      qmi::Client::State::send(v3, &xdict);
      xpc_release(v17);
      goto LABEL_36;
    }

    v15 = xpc_null_create();
LABEL_32:
    xdict = v15;
    goto LABEL_33;
  }

LABEL_36:
  v19 = v2[2];
  if (v19)
  {
    _Block_release(v19);
  }

  operator delete(v2);
  v20 = *(a1 + 2);
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

uint64_t *std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      dispatch_group_leave(v5);
      v6 = *(v2 + 8);
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    xpc_release(*v2);
    operator delete(v2);
  }

  return a1;
}

uint64_t *dispatch::async<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v9 = v3;
    if (v3)
    {
      v8 = *(a1 + 16);
      v4 = v8 == 0;
      if (*(a1 + 32) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (*(a1 + 32) != 1)
  {
LABEL_8:
    v5 = *a1;
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

LABEL_7:
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](&v7);
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_2962FFE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0,std::default_delete<qmi::Client::State::sendServerFailure_sync(xpc::object,dispatch::group_session const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0>(qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v14 = *a1;
  if (*(*a1 + 2) != 3)
  {
    goto LABEL_9;
  }

  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(v2 + 248);
  *(v2 + 248) = v3;
  if (v4)
  {
    _Block_release(v4);
  }

  if ((*(v2 + 144) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      v10 = xpc_null_create();
      v6 = 0;
      goto LABEL_23;
    }
  }

  if (MEMORY[0x29C259C10](v6) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v6);
    goto LABEL_24;
  }

  v10 = xpc_null_create();
LABEL_23:
  xdict = v10;
LABEL_24:
  xpc_release(v6);
  v11 = xpc_BOOL_create(v1[2] != 0);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "low_power", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  (*(*v2 + 56))(v2, &xdict);
  xpc_release(xdict);
  v1 = v14;
  if (v14)
  {
LABEL_9:
    v7 = v1[2];
    if (v7)
    {
      _Block_release(v7);
    }

    operator delete(v1);
  }

  v8 = a1;
  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = a1;
      }
    }

    operator delete(v8);
  }
}

void sub_296300094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0,std::default_delete<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0,std::default_delete<qmi::Client::State::setHandler(qmi::Client::Event,dispatch::block<void({block_pointer})(dispatch_group_s *)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0>(qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  if (v4)
  {
    v5 = _Block_copy(v4);
    v7 = (v3 + 208);
    v6 = *(v3 + 208);
    v8 = *(v2 + 4);
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = 0;
  v7 = (v3 + 208);
  v6 = *(v3 + 208);
  v8 = *(v2 + 4);
  if (!v6)
  {
LABEL_5:
    v9 = v7;
LABEL_11:
    v11 = operator new(0x30uLL);
    v11[16] = v8;
    *(v11 + 5) = 0;
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = v9;
    *v7 = v11;
    v12 = **(v3 + 200);
    if (v12)
    {
      *(v3 + 200) = v12;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 208), v11);
    ++*(v3 + 216);
    v13 = *(v11 + 5);
    *(v11 + 5) = v5;
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    _Block_release(v13);
    goto LABEL_17;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v9 = v6;
      v10 = *(v6 + 32);
      if (v8 >= v10)
      {
        break;
      }

      v6 = *v9;
      v7 = v9;
      if (!*v9)
      {
        goto LABEL_11;
      }
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = v9[1];
    if (!v6)
    {
      v7 = v9 + 1;
      goto LABEL_11;
    }
  }

  v13 = v9[5];
  v9[5] = v5;
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = v2[2];
  if (v14)
  {
    _Block_release(v14);
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
}

void sub_2963002D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    _Block_release(v10);
  }

  std::unique_ptr<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0,std::default_delete<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0,std::default_delete<qmi::Client::State::setIndHandler(unsigned short,dispatch::block<void({block_pointer})(QMIServiceMsg const&)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0>(qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0,dispatch_queue_s *::default_delete<qmi::Client::State::setIndShouldWake(unsigned short,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(qmi::Client::State ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 28);
  v5 = *(v3 + 29);
  if (v4 == v5)
  {
    v6 = *(v3 + 28);
    if (*(v2 + 10) == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(v3 + 28);
    v7 = v6;
    while (*v7 != *(v2 + 4))
    {
      v7 += 2;
      v6 += 2;
      if (v7 == v5)
      {
        v6 = *(v3 + 29);
        break;
      }
    }

    if (*(v2 + 10) == 1)
    {
LABEL_7:
      if (v5 == v6)
      {
        v8 = *(v3 + 30);
        if (v5 >= v8)
        {
          v11 = v5 - v4;
          v12 = (v5 - v4) >> 1;
          if (v12 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v13 = v8 - v4;
          if (v13 <= v12 + 1)
          {
            v14 = v12 + 1;
          }

          else
          {
            v14 = v13;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            if (v15 < 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v16 = operator new(2 * v15);
          }

          else
          {
            v16 = 0;
          }

          v17 = &v16[2 * v12];
          *v17 = *(v2 + 4);
          v9 = v17 + 2;
          memcpy(v16, v4, v11);
          *(v3 + 28) = v16;
          *(v3 + 29) = v9;
          *(v3 + 30) = &v16[2 * v15];
          if (v4)
          {
            operator delete(v4);
          }
        }

        else
        {
          *v5 = *(v2 + 4);
          v9 = v5 + 2;
        }

LABEL_15:
        *(v3 + 29) = v9;
        qmi::Client::State::sendIndWakeSet_sync(v3);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  if (v5 != v6)
  {
    if (v5 != v6 + 2)
    {
      memmove(v6, v6 + 2, v5 - (v6 + 2));
    }

    v9 = v5 - 2;
    goto LABEL_15;
  }

LABEL_16:
  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_296300534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<qmi::Client::XPCState>::shared_ptr[abi:ne200100]<qmi::Client::XPCState,std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1D48508;
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

void sub_296300670(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState*)#1}::operator() const(qmi::Client::XPCState*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<qmi::Client::XPCState *,std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState *)#1},std::allocator<qmi::Client::XPCState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<qmi::Client::XPCState *,std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState *)#1},std::allocator<qmi::Client::XPCState>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_8XPCStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_8XPCStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_8XPCStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_8XPCStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<qmi::Client::XPCState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::XPCState>(qmi::Client::XPCState*)::{lambda(qmi::Client::XPCState*)#1}::operator() const(qmi::Client::XPCState*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t qmi::Client::XPCState::init(xpc::connection const&)::$_0::operator()(xpc_object_t **a1)
{
  v2 = a1[1];
  result = MEMORY[0x29C259C10](**a1);
  v4 = MEMORY[0x29EDCA9F0];
  if (result != MEMORY[0x29EDCA9F0])
  {
    return result;
  }

  v5 = **a1;
  if (!v5)
  {
    v5 = xpc_null_create();
    v6 = v2[3];
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  xpc_retain(v5);
  v6 = v2[3];
  if (v6)
  {
LABEL_4:
    dispatch_retain(v6);
  }

LABEL_5:
  v7 = v2[2];
  if (!v7 || (v8 = v2[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    object = v5;
    if (v5)
    {
LABEL_9:
      xpc_retain(v5);
      goto LABEL_14;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
    object = v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  object = xpc_null_create();
LABEL_14:
  ctu::XpcClientHelper::setServer_internal();
  xpc_release(object);
  object = 0;
  if (MEMORY[0x29C259C10](v2[14]) == v4)
  {
    v11 = v2[14];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcClientHelper9setServerIN3qmi6Client5StateEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp_53;
    handler[4] = v2 + 14;
    handler[5] = v8;
    v13 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = v11;
    xpc_connection_set_event_handler(v11, handler);
    xpc_connection_set_target_queue(v11, v6);
    xpc_connection_resume(v11);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  std::__shared_weak_count::__release_weak(v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
  return (*(*v2 + 8))(v2);
}

void sub_2963009A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v20);
  if (v19)
  {
    dispatch_release(v19);
  }

  xpc_release(v18);
  _Unwind_Resume(a1);
}

void ___ZN3ctu15XpcClientHelper9setServerIN3qmi6Client5StateEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v13 = v6;
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = a1[5];
  v12[1] = v8;
  if (v8)
  {
    v9 = MEMORY[0x29C259C10](a2);
    v10 = MEMORY[0x29EDCAA00];
    if (v9 != MEMORY[0x29EDCAA00])
    {
      if (v9 == MEMORY[0x29EDCAA18] && *v5 == a1[7])
      {
        v12[0] = a2;
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
          v12[0] = a2;
        }

        qmi::Client::State::handleServerError(v8, v12);
        xpc_release(a2);
      }

      goto LABEL_20;
    }

    if (a2)
    {
      xpc_retain(a2);
    }

    else
    {
      a2 = xpc_null_create();
      if (!a2)
      {
        v11 = xpc_null_create();
        a2 = 0;
        goto LABEL_16;
      }
    }

    if (MEMORY[0x29C259C10](a2) == v10)
    {
      xpc_retain(a2);
      v11 = a2;
    }

    else
    {
      v11 = xpc_null_create();
    }

LABEL_16:
    xpc_release(v11);
    xpc_release(a2);
    v7 = v13;
    if (!v13)
    {
      return;
    }
  }

LABEL_20:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_296300BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c42_ZTSNSt3__18weak_ptrIN3qmi6Client5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c42_ZTSNSt3__18weak_ptrIN3qmi6Client5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ctu15XpcServerHelper13startListenerIN3qmi6Client5StateEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[4];
  v14 = 0;
  v15 = 0;
  v4 = a1[6];
  if (v4)
  {
    v15 = std::__shared_weak_count::lock(v4);
    if (!v15)
    {
      return;
    }

    v6 = a1[5];
    v14 = v6;
    if (v6)
    {
      v7 = MEMORY[0x29C259C10](a2);
      v8 = MEMORY[0x29EDCA9F0];
      if (v7 != MEMORY[0x29EDCA9F0])
      {
        if (v7 == MEMORY[0x29EDCAA18] && *ctu::XpcServerHelper::getListener(v3) == a1[7])
        {
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            a2 = xpc_null_create();
          }

          xpc_release(a2);
        }

        goto LABEL_21;
      }

      if (a2)
      {
        xpc_retain(a2);
        object = a2;
        v9 = a2;
      }

      else
      {
        v9 = xpc_null_create();
        object = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x29C259C10](v9) == v8)
      {
        xpc_retain(v9);
        goto LABEL_17;
      }

      v10 = xpc_null_create();
LABEL_16:
      object = v10;
LABEL_17:
      v11 = (*(*v6 + 24))(v6, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v9);
      if ((v11 & 1) == 0)
      {
        xpc_connection_cancel(a2);
      }
    }
  }

LABEL_21:
  v12 = v15;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

atomic_ullong *std::shared_ptr<qmi::Client::LocalState>::shared_ptr[abi:ne200100]<qmi::Client::LocalState,std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1D485E8;
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

void sub_296300F60(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState*)#1}::operator() const(qmi::Client::LocalState*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<qmi::Client::LocalState *,std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState *)#1},std::allocator<qmi::Client::LocalState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<qmi::Client::LocalState *,std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState *)#1},std::allocator<qmi::Client::LocalState>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_10LocalStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_10LocalStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_10LocalStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3qmi6Client5StateEE15make_shared_ptrINS2_10LocalStateEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<qmi::Client::LocalState> ctu::SharedSynchronizable<qmi::Client::State>::make_shared_ptr<qmi::Client::LocalState>(qmi::Client::LocalState*)::{lambda(qmi::Client::LocalState*)#1}::operator() const(qmi::Client::LocalState*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void qmi::Client::LocalState::init(void)::$_0::operator()(uint64_t a1)
{
  if (TelephonyRadiosGetRadioVendor() == 1)
  {
    v2 = *(a1 + 16);
    if (!v2 || (v3 = *(a1 + 8), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      memset(&v12, 170, sizeof(v12));
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
LABEL_6:
        v12 = *(a1 + 56);
        goto LABEL_11;
      }
    }

    else
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v5);
      memset(&v12, 170, sizeof(v12));
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    std::string::__init_copy_ctor_external(&v12, *(a1 + 56), *(a1 + 64));
LABEL_11:
    v10 = v3;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v12;
    }

    v7 = operator new(0x38uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = &unk_2A1D48638;
    *buf = v10;
    v14 = v5;
    v15 = __p;
    memset(&__p, 0, sizeof(__p));
    v7[6] = 0;
    v8 = operator new(0x30uLL);
    v8->__r_.__value_.__r.__words[0] = &unk_2A1D48688;
    v8->__r_.__value_.__l.__size_ = v10;
    v8->__r_.__value_.__r.__words[2] = v5;
    v8[1] = v15;
    v7[6] = v8;
    v9 = *(a1 + 296);
    *(a1 + 288) = v7 + 3;
    *(a1 + 296) = v7;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      (*(*a1 + 64))(a1);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      std::__shared_weak_count::__release_weak(v5);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2962DD000, v6, OS_LOG_TYPE_FAULT, "Attemping to create a QMI client on a device that does not support it!\n", buf, 2u);
  }
}

void sub_296301358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

uint64_t qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}::~dict(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::function<void ()(xpc::dict)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D48638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_emplace<std::function<void ()(xpc::dict)>>::__on_zero_shared(uint64_t a1)
{
  v1 = a1 + 24;
  result = *(a1 + 48);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::~__func(uint64_t a1)
{
  *a1 = &unk_2A1D48688;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::~__func(void **__p)
{
  *__p = &unk_2A1D48688;
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

std::string *std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x30uLL);
  v3 = result;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  result->__r_.__value_.__r.__words[0] = &unk_2A1D48688;
  result->__r_.__value_.__l.__size_ = v5;
  result->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(result + 1, *(a1 + 24), *(a1 + 32));
    return v3;
  }

  else
  {
    *&result[1].__r_.__value_.__l.__data_ = *(a1 + 24);
    result[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
  }

  return result;
}

void sub_296301660(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::__clone(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2A1D48688;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_296301708(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::destroy(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    v2 = *(a1 + 16);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::destroy_deallocate(void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3qmi6Client10LocalState4initEvENK3$_0clEvEUlN3xpc4dictEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3qmi6Client10LocalState4initEvENK3$_0clEvEUlN3xpc4dictEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3qmi6Client10LocalState4initEvENK3$_0clEvEUlN3xpc4dictEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3qmi6Client10LocalState4initEvENK3$_0clEvEUlN3xpc4dictEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void std::__shared_ptr_emplace<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D48708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_emplace<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>::__on_zero_shared(uint64_t a1)
{
  v1 = a1 + 24;
  result = *(a1 + 48);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::~__func(uint64_t result)
{
  *result = &unk_2A1D48758;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1D48758;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1D48758;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D48758;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(a1 + 16);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v8[2];
      if (!v10 || (v11 = v8[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x20uLL);
      *v14 = v8;
      v14[1] = v9;
      v14[2] = v4;
      v14[3] = v3;
      v15 = v8[3];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1}>(qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1},std::default_delete<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_22:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_12;
        }

LABEL_17:
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v3)
        {
          return;
        }

        goto LABEL_13;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_17;
      }
    }
  }

LABEL_12:
  if (!v3)
  {
    return;
  }

LABEL_13:

  std::__shared_weak_count::__release_weak(v3);
}

uint64_t std::__function::__func<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0,std::allocator<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0>,void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3qmi6Client10LocalState23sendConnectMessage_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3qmi6Client10LocalState23sendConnectMessage_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3qmi6Client10LocalState23sendConnectMessage_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3qmi6Client10LocalState23sendConnectMessage_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1}>(qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1},std::default_delete<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(char ****a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v18 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = *v1;
      object[3] = v5;
      if (!v5)
      {
        goto LABEL_29;
      }

      v6 = **v5;
      if (v7)
      {
        object[1] = v7;
        object[2] = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = v1[2];
        v9 = v1[3];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = v7[41];
        v7[40] = v8;
        v7[41] = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_weak(v9);
        }

        object[0] = xpc_null_create();
        (*(*v5 + 3))(v5, object);
        xpc_release(object[0]);
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }

      v4 = v18;
      if (v18)
      {
LABEL_29:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }
    }
  }

  if (__p)
  {
    v11 = __p[3];
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = __p[1];
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    operator delete(__p);
  }

  v13 = a1;
  if (a1)
  {
    v14 = a1[2];
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v13 = a1;
      }
    }

    operator delete(v13);
  }
}

void sub_296301F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, xpc_object_t object, char a13, uint64_t a14, char a15)
{
  xpc_release(object);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a15);
  std::unique_ptr<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1},std::default_delete<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1},std::default_delete<qmi::Client::LocalState::sendConnectMessage_sync(void)::$_0::operator() const(std::weak_ptr<std::function<void ()(xpc::dict)>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<BBServerConnection>::execute_wrapped<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}>(qmi::Client::State&&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (v3)
  {
    xpc_retain(v3);
    v17 = a1;
    v5 = v2[2];
    v6 = v2[3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = xpc_null_create();
  v17 = a1;
  v5 = v2[2];
  v6 = v2[3];
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v8 = v2[4];
  v7 = v2[5];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = v2[6];
  v10 = v2[7];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v18 = *(v4 + 24);
  v19 = *(v4 + 72);
  v11 = operator new(0x40uLL);
  *v11 = v4;
  v11[1] = v3;
  v12 = xpc_null_create();
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v8;
  v11[5] = v7;
  v11[6] = v9;
  v11[7] = v10;
  dispatch_group_notify_f(v19, v18, v11, dispatch::detail::group_notify<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,qmi::Client::State&&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  xpc_release(v12);
  v13 = v2[7];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v2[5];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v2[3];
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v16 = v17[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(v17);
}

void sub_2963021BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}::~(va2);
  std::unique_ptr<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1},std::default_delete<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,qmi::Client::State&&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v28 = 0;
  v29 = 0;
  v3 = a1[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    v29 = v4;
    if (!v4)
    {
      goto LABEL_26;
    }

    v5 = a1[2];
    v28 = v5;
    if (v5)
    {
      v6 = v4;
      v7 = *(v2 + 48);
      if (v7 == *(v2 + 56))
      {
LABEL_15:
        v12 = xpc_string_create("not accepted");
        if (!v12)
        {
          v12 = xpc_null_create();
        }

        xpc_dictionary_set_value(a1[1], "error", v12);
        v13 = xpc_null_create();
        xpc_release(v12);
        xpc_release(v13);
        v14 = *(v5 + 24);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZZZN19QMIServerConnection18acceptLocalMessageIN3qmi6Client5StateEEEvRKN3xpc4dictENSt3__18weak_ptrIT_EENS9_INS8_8functionIFvS5_EEEEENS9_INSC_IFvSF_EEEEEENKUlvE_clEvENKUlvE_clEv_block_invoke;
        block[3] = &__block_descriptor_tmp_79;
        block[4] = v5;
        v22 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = a1[1];
        object = v15;
        if (v15)
        {
          xpc_retain(v15);
        }

        else
        {
          object = xpc_null_create();
        }

        dispatch_async(v14, block);
        xpc_release(object);
        object = 0;
        v16 = v22;
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      else
      {
        while (1)
        {
          v8 = *v7;
          v9 = a1[7];
          v26 = a1[6];
          v27 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = a1[5];
          v24 = a1[4];
          v25 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = (*(*v8 + 24))(v8, a1 + 1, &v26, &v24);
          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_weak(v27);
          }

          if (v11)
          {
            break;
          }

          v7 += 2;
          if (v7 == *(v2 + 56))
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  v17 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_26:
  v18 = a1[7];
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = a1[5];
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = a1[3];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  xpc_release(a1[1]);

  operator delete(a1);
}

void sub_2963024B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
    v22 = a20;
    if (!a20)
    {
LABEL_3:
      std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v20 - 80);
      std::unique_ptr<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::default_delete<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v22);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v20 - 80);
  std::unique_ptr<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::default_delete<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t ___ZZZN19QMIServerConnection18acceptLocalMessageIN3qmi6Client5StateEEEvRKN3xpc4dictENSt3__18weak_ptrIT_EENS9_INS8_8functionIFvS5_EEEEENS9_INSC_IFvSF_EEEEEENKUlvE_clEvENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_null_create();
  qmi::Client::State::handleClientMessage(v2, v4, (a1 + 48));
  xpc_release(v3);
  v5 = *(**(a1 + 32) + 16);

  return v5();
}

xpc_object_t __copy_helper_block_e8_32c45_ZTSNSt3__110shared_ptrIN3qmi6Client5StateEEE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[6];
  a1[6] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c45_ZTSNSt3__110shared_ptrIN3qmi6Client5StateEEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *std::unique_ptr<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::default_delete<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    xpc_release(*(v1 + 8));
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void *std::unique_ptr<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1},std::default_delete<void QMIServerConnection::acceptLocalMessage<qmi::Client::State>(xpc::dict const&,std::weak_ptr<qmi::Client::State>,std::weak_ptr<std::function<void ()(xpc::dict)>>,std::weak_ptr<std::function<void ()(std::weak_ptr<std::function<void ()(xpc::dict)>>)>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    xpc_release(*(v1 + 8));
    operator delete(v1);
    return v2;
  }

  return result;
}

void *qmi::EurTransport::EurTransport(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1D48818;
  this[3] = 0;
  this[7] = 0;
  this[11] = 0;
  return this;
}

uint64_t qmi::EurTransport::handleServerError(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t qmi::EurTransport::setMessageHandler(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      (*(*v3 + 24))(v3, v6);
    }

    else
    {
      v7 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v7 = 0;
  }

  std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](v6, (a1 + 32));
  result = v7;
  if (v7 == v6)
  {
    result = (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 40))();
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t qmi::EurTransport::setServerErrorHandler(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      (*(*v3 + 24))(v3, v6);
    }

    else
    {
      v7 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v7 = 0;
  }

  std::__function::__value_func<void ()(xpc::object const&)>::swap[abi:ne200100](v6, (a1 + 64));
  result = v7;
  if (v7 == v6)
  {
    result = (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 40))();
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void qmi::EurTransport::setQueue(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {

    dispatch_release(v4);
  }
}

qmi::EurTransportXPC *qmi::EurTransportXPC::EurTransportXPC(qmi::EurTransportXPC *this)
{
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A1D48858;
  *(this + 1) = 0;
  *(this + 12) = xpc_null_create();
  return this;
}

{
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A1D48858;
  *(this + 1) = 0;
  *(this + 12) = xpc_null_create();
  return this;
}

void qmi::EurTransportXPC::init_sync(void *a1, xpc_object_t *a2, dispatch_object_t *a3)
{
  v6 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_retain(v6);
  }

  v7 = a1[3];
  a1[3] = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  v8 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = xpc_null_create();
  v9 = *a3;
  if (v9)
  {
LABEL_9:
    dispatch_retain(v9);
  }

LABEL_10:
  v11 = a1[1];
  v10 = a1[2];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  v12 = (a1 + 12);
  ctu::XpcClientHelper::setServer_internal();
  xpc_release(object);
  object = 0;
  if (MEMORY[0x29C259C10](*v12) == MEMORY[0x29EDCA9F0])
  {
    v13 = *v12;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcClientHelper9setServerIN3qmi12EurTransportEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp_6;
    handler[4] = v12;
    handler[5] = v11;
    v17 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v13;
    xpc_connection_set_event_handler(v13, handler);
    xpc_connection_set_target_queue(v13, v9);
    xpc_connection_resume(v13);
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  xpc_release(v8);
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14 || (v14 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C259C10](v14) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v14);
      v15 = v14;
    }

    else
    {
      v15 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_null_create();
    v14 = 0;
  }

  xpc_release(v14);
  xpc_connection_send_message(*a2, v15);
  xpc_release(v15);
}

void sub_296302DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  xpc_release(v18);
  _Unwind_Resume(a1);
}

double qmi::EurTransportLocal::EurTransportLocal(qmi::EurTransportLocal *this)
{
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A1D48898;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  return result;
}

{
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A1D48898;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  return result;
}

void qmi::EurTransportLocal::init_sync(void *a1, uint64_t a2, dispatch_object_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_retain(v4);
  }

  v5 = a1[3];
  a1[3] = v4;
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C259C10](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 24))(a1, &object);
  xpc_release(object);
  object = 0;
  v8 = operator new(0x38uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A1D48638;
  v9 = v8 + 3;
  v10 = a1[7];
  if (v10)
  {
    if (v10 == a1 + 4)
    {
      v8[6] = v9;
      (*(*v10 + 24))(v10, v9);
      goto LABEL_21;
    }

    v10 = (*(*v10 + 16))(v10);
  }

  v8[6] = v10;
LABEL_21:
  v11 = a1[17];
  a1[16] = v9;
  a1[17] = v8;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = a1[15];
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = a1[15];
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  v13 = std::__shared_weak_count::lock(v12);
  v21 = v13;
  if (v13)
  {
    v14 = v13;
    v15 = a1[14];
    v20 = v15;
    if (v15)
    {
      v16 = a1[17];
      v18 = a1[16];
      v19 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(v15 + 24);
      if (!v17)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v17 + 48))(v17, &v18);
      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_34:
  xpc_release(v7);
}

void sub_2963031F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, xpc_object_t object)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a12);
  xpc_release(v14);
  _Unwind_Resume(a1);
}

void qmi::EurTransportLocal::sendMessageWithReply(uint64_t a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a1 + 24))(a1, &object);
  xpc_release(object);
}

void qmi::EurTransportLocal::setSendToClient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 104);
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void qmi::EurTransportLocal::setProxyMessenger(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 120);
  *(a1 + 112) = v3;
  *(a1 + 120) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void qmi::EurTransportLocal::shutdown(qmi::EurTransportLocal *this)
{
  v1 = *(this + 17);
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_29630366C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(xpc::object const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_296303908(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrIN3qmi12EurTransportEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrIN3qmi12EurTransportEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *BBServerConnection::BBServerConnection(void *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = dispatch_queue_create(v3, 0);
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.bb", "server");
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 5, v7);
  MEMORY[0x29C258F40](v7);
  ctu::OsLogContext::~OsLogContext(v6);
  if (v4)
  {
    dispatch_release(v4);
  }

  *a1 = &unk_2A1D48970;
  return a1;
}

void BBServerConnection::~BBServerConnection(BBServerConnection *this)
{
  MEMORY[0x29C258F40](this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void QMIServerConnection::QMIServerConnection(QMIServerConnection *this)
{
  v7 = 19;
  strcpy(__p, "QMIServerConnection");
  BBServerConnection::BBServerConnection(this, __p);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1D489A0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  v2 = xpc_null_create();
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = v2;
  *(this + 112) = 0;
  v3 = dispatch_group_create();
  v4 = *(this + 9);
  *(this + 9) = v3;
  if (v4)
  {
    dispatch_release(v4);
    v3 = *(this + 9);
  }

  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v5 = *(this + 10);
  *(this + 10) = v3;
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }
}

void sub_296303BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void QMIServerConnection::~QMIServerConnection(xpc_connection_t *this)
{
  *this = &unk_2A1D489A0;
  if (MEMORY[0x29C259C10](this[11]) == MEMORY[0x29EDCA9F0])
  {
    xpc_connection_cancel(this[11]);
    v2 = xpc_null_create();
    v3 = xpc_null_create();
    v4 = this[11];
    this[11] = v2;
    xpc_release(v4);
    xpc_release(v3);
    v5 = this[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEFAULT, "#I XPC Listener: shutdown!", v17, 2u);
    }
  }

  v6 = this[13];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  xpc_release(this[11]);
  this[11] = 0;
  v7 = this[10];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = this[10];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  v9 = this[9];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = this[6];
  if (v10)
  {
    v11 = this[7];
    v12 = this[6];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v11 = (v11 - 16);
      }

      while (v11 != v10);
      v12 = this[6];
    }

    this[7] = v10;
    operator delete(v12);
  }

  MEMORY[0x29C258F40](this + 5);
  v14 = this[4];
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = this[3];
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = this[2];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  QMIServerConnection::~QMIServerConnection(this);

  operator delete(v1);
}

void QMIServerConnection::init(void *a1, char **a2, void **a3)
{
  __p[0] = a1;
  __p[1] = 0;
  v24 = 0uLL;
  v5 = *a2;
  v6 = a2[1];
  v26 = &__p[1];
  v27 = 0xAAAAAAAAAAAAAA00;
  v7 = v6 - v5;
  if (v6 != v5)
  {
    if (v7 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v6 - v5);
    __p[1] = v8;
    *&v24 = v8;
    *(&v24 + 1) = v8 + v7;
    do
    {
      v9 = *(v5 + 1);
      *v8 = *v5;
      v8[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v5 += 16;
      v8 += 2;
    }

    while (v5 != v6);
    *&v24 = v8;
  }

  v10 = *a3;
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
    v11 = a1[2];
    if (!v11)
    {
LABEL_25:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    object = xpc_null_create();
    v11 = a1[2];
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v12 = a1[1];
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_25;
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  v16 = v24;
  *v15 = *__p;
  v15[1] = v16;
  v24 = 0uLL;
  __p[1] = 0;
  *(v15 + 4) = object;
  object = xpc_null_create();
  v17 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v15;
  v18[1] = v12;
  v18[2] = v14;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BBServerConnection>::execute_wrapped<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>(QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0,std::default_delete<QMIServerConnection::init(std::vector<std::shared_ptr<qmi::ServerAccepter>> const&,xpc::connection const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  xpc_release(object);
  object = 0;
  v19 = __p[1];
  if (__p[1])
  {
    v20 = v24;
    v21 = __p[1];
    if (v24 != __p[1])
    {
      do
      {
        v22 = *(v20 - 1);
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = __p[1];
    }

    *&v24 = v19;
    operator delete(v21);
  }
}