void MockHttpRequest::sendResponse(uint64_t a1, uint64_t *a2)
{
  __lk.__m_ = *(a1 + 440);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock(__lk.__m_);
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
  do
  {
    v5 = *(a1 + 496);
    if (v5)
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v6 != v7)
      {
        goto LABEL_21;
      }
    }

    if (v4.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v8.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v8.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v9.__d_.__rep_)
      {
        v10 = 0;
        goto LABEL_16;
      }

      if (v9.__d_.__rep_ < 1)
      {
        if (v9.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v10 = 0x8000000000000000;
          goto LABEL_16;
        }
      }

      else if (v9.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_14;
      }

      v10 = 1000 * v9.__d_.__rep_;
LABEL_14:
      if (v10 > (v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v11.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
        std::condition_variable::__do_timed_wait((a1 + 448), &__lk, v11);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_16:
      v11.__d_.__rep_ = v10 + v8.__d_.__rep_;
      goto LABEL_17;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v4.__d_.__rep_);
  v5 = *(a1 + 496);
  if (!v5)
  {
    goto LABEL_75;
  }

  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
LABEL_21:
  if (v6 == v7)
  {
LABEL_75:
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::EmptyMockCallArgsException::EmptyMockCallArgsException(exception, *(a1 + 432));
  }

  v12 = *v6;
  *v6 = 0;
  v13 = v6 + 1;
  if (v6 + 1 != v7)
  {
    for (i = 0; ; i = *v6)
    {
      v6 = v13;
      *(v13 - 1) = *v13;
      *v13 = 0;
      if (i)
      {
        dispatch_release(i);
      }

      v13 = v6 + 1;
      if (v6 + 1 == v7)
      {
        break;
      }
    }

    v7 = *(v5 + 16);
  }

  while (v7 != v6)
  {
    v16 = *--v7;
    v15 = v16;
    if (v16)
    {
      dispatch_release(v15);
    }
  }

  *(v5 + 16) = v6;
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  __lk.__m_ = *(a1 + 512);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock(__lk.__m_);
  v17.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
  while (2)
  {
    v18 = *(a1 + 568);
    if (v18)
    {
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      if (v20 != v19)
      {
        goto LABEL_54;
      }
    }

    if (v17.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v21.__d_.__rep_ = v17.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v21.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v22.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v22.__d_.__rep_)
      {
        if (v22.__d_.__rep_ < 1)
        {
          if (v22.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_46;
          }

          v23 = 0x8000000000000000;
        }

        else
        {
          if (v22.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v23 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_47;
          }

LABEL_46:
          v23 = 1000 * v22.__d_.__rep_;
LABEL_47:
          if (v23 > (v21.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v24.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_50;
          }
        }
      }

      else
      {
        v23 = 0;
      }

      v24.__d_.__rep_ = v23 + v21.__d_.__rep_;
LABEL_50:
      std::condition_variable::__do_timed_wait((a1 + 520), &__lk, v24);
      std::chrono::steady_clock::now();
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ < v17.__d_.__rep_)
    {
      continue;
    }

    break;
  }

  v18 = *(a1 + 568);
  if (!v18)
  {
    goto LABEL_76;
  }

  v20 = *(v18 + 8);
  v19 = *(v18 + 16);
LABEL_54:
  if (v20 == v19)
  {
LABEL_76:
    v33 = __cxa_allocate_exception(0x10uLL);
    ctu::EmptyMockCallArgsException::EmptyMockCallArgsException(v33, *(a1 + 504));
  }

  v25 = *v20;
  *v20 = 0;
  v26 = v20 + 1;
  if (v20 + 1 != v19)
  {
    for (j = 0; ; j = *v20)
    {
      v20 = v26;
      *(v26 - 1) = *v26;
      *v26 = 0;
      if (j)
      {
        _Block_release(j);
      }

      v26 = v20 + 1;
      if (v20 + 1 == v19)
      {
        break;
      }
    }

    v19 = *(v18 + 16);
  }

  while (v19 != v20)
  {
    v28 = *--v19;
    std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>,0>(v28);
  }

  *(v18 + 16) = v20;
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (!v12)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Callback queue was never set; can't send response!");
    goto LABEL_79;
  }

  if (!v25)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v34, "Callback functor was never set; can't send response!");
LABEL_79:
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN15MockHttpRequest12sendResponseENSt3__110shared_ptrIN3ctu4Http12HttpResponseEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_25;
  v29 = _Block_copy(v25);
  v31 = *a2;
  v30 = a2[1];
  aBlock = v29;
  v37 = v31;
  v38 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v12, block);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_release(v25);
  dispatch_release(v12);
}

void sub_1A913FF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, char a18)
{
  __cxa_free_exception(v19);
  dispatch_release(v18);
  _Unwind_Resume(a1);
}

void ___ZN15MockHttpRequest12sendResponseENSt3__110shared_ptrIN3ctu4Http12HttpResponseEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[5];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1A9140088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MockHttpRequest::registerCallbackQueue(MockHttpRequest *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *(this + 55);
  std::mutex::lock(v4);
  if (!*(this + 62))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,dispatch::queue>>::reset[abi:ne200100](this + 62, v5);
  }

  std::condition_variable::notify_one((this + 448));
  v6 = *(this + 62);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = v8 - v10;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[v11];
    *v16 = object;
    if (v10 != v8)
    {
      v17 = v15;
      v18 = v10;
      do
      {
        *v17++ = *v18;
        *v18++ = 0;
      }

      while (v18 != v8);
      do
      {
        if (*v10)
        {
          dispatch_release(*v10);
        }

        ++v10;
      }

      while (v10 != v8);
      v10 = v6[1];
    }

    v9 = v16 + 1;
    v6[1] = v15;
    v6[2] = v16 + 1;
    v6[3] = &v15[v14];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = object;
    v9 = v8 + 1;
  }

  v6[2] = v9;
  v19 = v6[8];
  while (v19 != v6[9])
  {
    v20 = *v19;
    v21 = v19[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = (*(*v20 + 32))(v20, v6[2] - 8);
    if (v22)
    {
      v23 = v6[9];
      if (v19 + 2 == v23)
      {
        v27 = v19;
      }

      else
      {
        v24 = v19;
        do
        {
          v25 = *(v24 + 1);
          v24[2] = 0;
          v24[3] = 0;
          v26 = v24[1];
          *v24 = v25;
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          v27 = v24 + 2;
          v28 = v24 + 4;
          v24 += 2;
        }

        while (v28 != v23);
        v23 = v6[9];
      }

      while (v23 != v27)
      {
        v29 = *(v23 - 1);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v23 -= 2;
      }

      v6[9] = v27;
      if (!v21)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 += 2;
      if (!v21)
      {
        goto LABEL_46;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
LABEL_46:
    if (v22)
    {
      break;
    }
  }

  v30 = v6[7];
  if (v30)
  {
    (*(*v30 + 48))(v30, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void sub_1A9140358(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void MockHttpRequest::registerCompletionCodeblock(uint64_t a1, void *a2)
{
  v4 = *(a1 + 512);
  std::mutex::lock(v4);
  if (!*(a1 + 568))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>>::reset[abi:ne200100]((a1 + 568), v5);
  }

  std::condition_variable::notify_one((a1 + 520));
  v6 = *(a1 + 568);
  ++*v6;
  v7 = v6[2];
  v8 = v6[3];
  if (v7 >= v8)
  {
    v10 = v6[1];
    v11 = (v7 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    v17 = &v15[8 * v14];
    std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(std::shared_ptr<ctu::Http::HttpResponse>),0>(v16, a2);
    v9 = v16 + 8;
    v18 = v6[1];
    v19 = v6[2];
    v20 = &v16[v18 - v19];
    if (v19 != v18)
    {
      v21 = v6[1];
      v22 = v20;
      do
      {
        *v22++ = *v21;
        *v21++ = 0;
      }

      while (v21 != v19);
      do
      {
        v23 = *v18++;
        std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>,0>(v23);
      }

      while (v18 != v19);
      v18 = v6[1];
    }

    v6[1] = v20;
    v6[2] = v9;
    v6[3] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v9 = std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(std::shared_ptr<ctu::Http::HttpResponse>),0>(v7, a2) + 1;
  }

  v6[2] = v9;
  v24 = v6[8];
  while (v24 != v6[9])
  {
    v25 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = (*(*v25 + 32))(v25, v6[2] - 8);
    if (v27)
    {
      v28 = v6[9];
      if (v24 + 2 == v28)
      {
        v32 = v24;
      }

      else
      {
        v29 = v24;
        do
        {
          v30 = *(v29 + 1);
          v29[2] = 0;
          v29[3] = 0;
          v31 = v29[1];
          *v29 = v30;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = v29 + 2;
          v33 = v29 + 4;
          v29 += 2;
        }

        while (v33 != v28);
        v28 = v6[9];
      }

      while (v28 != v32)
      {
        v34 = *(v28 - 1);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v28 -= 2;
      }

      v6[9] = v32;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 += 2;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_42:
    if (v27)
    {
      break;
    }
  }

  v35 = v6[7];
  if (v35)
  {
    (*(*v35 + 48))(v35, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::registerDataReceiveCodeblock(uint64_t a1, void *a2)
{
  v4 = *(a1 + 584);
  std::mutex::lock(v4);
  if (!*(a1 + 640))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(int,int)>>>::reset[abi:ne200100]((a1 + 640), v5);
  }

  std::condition_variable::notify_one((a1 + 592));
  v6 = *(a1 + 640);
  ++*v6;
  v7 = v6[2];
  v8 = v6[3];
  if (v7 >= v8)
  {
    v10 = v6[1];
    v11 = (v7 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    v17 = &v15[8 * v14];
    std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(int,int)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(int,int),0>(v16, a2);
    v9 = v16 + 8;
    v18 = v6[1];
    v19 = v6[2];
    v20 = &v16[v18 - v19];
    if (v19 != v18)
    {
      v21 = v6[1];
      v22 = v20;
      do
      {
        *v22++ = *v21;
        *v21++ = 0;
      }

      while (v21 != v19);
      do
      {
        v23 = *v18++;
        std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(int,int)>>,0>(v23);
      }

      while (v18 != v19);
      v18 = v6[1];
    }

    v6[1] = v20;
    v6[2] = v9;
    v6[3] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v9 = std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(int,int)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(int,int),0>(v7, a2) + 1;
  }

  v6[2] = v9;
  v24 = v6[8];
  while (v24 != v6[9])
  {
    v25 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = (*(*v25 + 32))(v25, v6[2] - 8);
    if (v27)
    {
      v28 = v6[9];
      if (v24 + 2 == v28)
      {
        v32 = v24;
      }

      else
      {
        v29 = v24;
        do
        {
          v30 = *(v29 + 1);
          v29[2] = 0;
          v29[3] = 0;
          v31 = v29[1];
          *v29 = v30;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = v29 + 2;
          v33 = v29 + 4;
          v29 += 2;
        }

        while (v33 != v28);
        v28 = v6[9];
      }

      while (v28 != v32)
      {
        v34 = *(v28 - 1);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v28 -= 2;
      }

      v6[9] = v32;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 += 2;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_42:
    if (v27)
    {
      break;
    }
  }

  v35 = v6[7];
  if (v35)
  {
    (*(*v35 + 48))(v35, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::registerDataSendCodeblock(uint64_t a1, void *a2)
{
  v4 = *(a1 + 656);
  std::mutex::lock(v4);
  if (!*(a1 + 712))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(int,int,int)>>>::reset[abi:ne200100]((a1 + 712), v5);
  }

  std::condition_variable::notify_one((a1 + 664));
  v6 = *(a1 + 712);
  ++*v6;
  v7 = v6[2];
  v8 = v6[3];
  if (v7 >= v8)
  {
    v10 = v6[1];
    v11 = (v7 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    v17 = &v15[8 * v14];
    std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(int,int,int)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(int,int,int),0>(v16, a2);
    v9 = v16 + 8;
    v18 = v6[1];
    v19 = v6[2];
    v20 = &v16[v18 - v19];
    if (v19 != v18)
    {
      v21 = v6[1];
      v22 = v20;
      do
      {
        *v22++ = *v21;
        *v21++ = 0;
      }

      while (v21 != v19);
      do
      {
        v23 = *v18++;
        std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(int,int,int)>>,0>(v23);
      }

      while (v18 != v19);
      v18 = v6[1];
    }

    v6[1] = v20;
    v6[2] = v9;
    v6[3] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v9 = std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(int,int,int)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(int,int,int),0>(v7, a2) + 1;
  }

  v6[2] = v9;
  v24 = v6[8];
  while (v24 != v6[9])
  {
    v25 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = (*(*v25 + 32))(v25, v6[2] - 8);
    if (v27)
    {
      v28 = v6[9];
      if (v24 + 2 == v28)
      {
        v32 = v24;
      }

      else
      {
        v29 = v24;
        do
        {
          v30 = *(v29 + 1);
          v29[2] = 0;
          v29[3] = 0;
          v31 = v29[1];
          *v29 = v30;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = v29 + 2;
          v33 = v29 + 4;
          v29 += 2;
        }

        while (v33 != v28);
        v28 = v6[9];
      }

      while (v28 != v32)
      {
        v34 = *(v28 - 1);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v28 -= 2;
      }

      v6[9] = v32;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 += 2;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_42:
    if (v27)
    {
      break;
    }
  }

  v35 = v6[7];
  if (v35)
  {
    (*(*v35 + 48))(v35, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::start(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 80);
  std::mutex::lock(v4);
  if (!*(a1 + 136))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100]((a1 + 136), v5);
  }

  std::condition_variable::notify_one((a1 + 88));
  v6 = *(a1 + 136);
  ++*v6;
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7)
  {
    v10 = *(v6 + 8);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v39 = v6 + 8;
    if (v14)
    {
      v16 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v14);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    v18 = v16 + v11;
    v35 = v16;
    v36 = v18;
    v19 = &v16[v15];
    v37 = v18;
    v38 = v19;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *a2, *(a2 + 1));
      v18 = v36;
      v21 = v37;
      v19 = v38;
    }

    else
    {
      v20 = *a2;
      v18->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v18->__r_.__value_.__l.__data_ = v20;
      v21 = v18;
    }

    v17 = v21 + 1;
    v22 = *(v6 + 8);
    v23 = *(v6 + 16) - v22;
    v24 = v18 - v23;
    memcpy(v18 - v23, v22, v23);
    v25 = *(v6 + 8);
    *(v6 + 8) = v24;
    *(v6 + 16) = v17;
    v26 = *(v6 + 24);
    *(v6 + 24) = v19;
    v37 = v25;
    v38 = v26;
    v35 = v25;
    v36 = v25;
    std::__split_buffer<std::tuple<std::string>>::~__split_buffer(&v35);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(v6 + 16), *a2, *(a2 + 1));
    }

    else
    {
      v9 = *a2;
      *(v8 + 16) = *(a2 + 2);
      *v8 = v9;
    }

    v17 = (v8 + 24);
    *(v6 + 16) = v8 + 24;
  }

  *(v6 + 16) = v17;
  v27 = *(v6 + 64);
  while (v27 != *(v6 + 72))
  {
    v28 = *v27;
    v29 = *(v27 + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = (*(*v28 + 32))(v28, *(v6 + 16) - 24);
    if (v30)
    {
      v31 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *>((v27 + 16), *(v6 + 72), v27);
      for (i = *(v6 + 72); i != v31; i -= 16)
      {
        v33 = *(i - 8);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }
      }

      *(v6 + 72) = v31;
      if (!v29)
      {
        goto LABEL_34;
      }

LABEL_33:
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      goto LABEL_34;
    }

    v27 += 16;
    if (v29)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v30)
    {
      break;
    }
  }

  v34 = *(v6 + 56);
  if (v34)
  {
    (*(*v34 + 48))(v34, *(v6 + 16) - 24);
  }

  std::mutex::unlock(v4);
}

void sub_1A9140F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::string>>::~__split_buffer(va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void MockHttpRequest::terminate(MockHttpRequest *this)
{
  v2 = *(this + 19);
  std::mutex::lock(v2);
  if (!*(this + 26))
  {
    v3 = operator new(0x58uLL);
    v3[10] = 0;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void>>::reset[abi:ne200100](this + 26, v3);
  }

  std::condition_variable::notify_one((this + 160));
  ctu::IMockMethodHandler<void>::call<>(*(this + 26));

  std::mutex::unlock(v2);
}

void MockHttpRequest::setRequestBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 728);
  std::mutex::lock(v4);
  if (!*(a1 + 784))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::vector<unsigned char>>>::reset[abi:ne200100]((a1 + 784), v5);
  }

  std::condition_variable::notify_one((a1 + 736));
  v6 = *(a1 + 784);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v38 = v6 + 1;
    if (v14)
    {
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(24 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[24 * v11];
    v34 = v15;
    v35 = v16;
    v36 = v16;
    v37 = &v15[24 * v14];
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    *v16 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v9 = v36 + 24;
    v17 = v6[1];
    v18 = v6[2] - v17;
    v19 = v35 - v18;
    memcpy(v35 - v18, v17, v18);
    v20 = v6[1];
    v6[1] = v19;
    v6[2] = v9;
    v21 = v6[3];
    v6[3] = v37;
    v36 = v20;
    v37 = v21;
    v34 = v20;
    v35 = v20;
    std::__split_buffer<std::tuple<std::vector<unsigned char>>>::~__split_buffer(&v34);
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v9 = v8 + 3;
    v6[2] = v9;
  }

  v6[2] = v9;
  v22 = v6[8];
  while (v22 != v6[9])
  {
    v23 = *v22;
    v24 = v22[1];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = (*(*v23 + 32))(v23, v6[2] - 24);
    if (v25)
    {
      v26 = v6[9];
      if (v22 + 2 == v26)
      {
        v30 = v22;
      }

      else
      {
        v27 = v22;
        do
        {
          v28 = *(v27 + 1);
          v27[2] = 0;
          v27[3] = 0;
          v29 = v27[1];
          *v27 = v28;
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          v30 = v27 + 2;
          v31 = v27 + 4;
          v27 += 2;
        }

        while (v31 != v26);
        v26 = v6[9];
      }

      while (v26 != v30)
      {
        v32 = *(v26 - 1);
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        v26 -= 2;
      }

      v6[9] = v30;
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 += 2;
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_36:
    if (v25)
    {
      break;
    }
  }

  v33 = v6[7];
  if (v33)
  {
    (*(*v33 + 48))(v33, v6[2] - 24);
  }

  std::mutex::unlock(v4);
}

void sub_1A91412EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::vector<unsigned char>>>::~__split_buffer(va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void MockHttpRequest::setProxyServer(uint64_t a1, __int128 *a2, int a3)
{
  v6 = *(a1 + 800);
  std::mutex::lock(v6);
  if (!*(a1 + 856))
  {
    v7 = operator new(0x58uLL);
    v7[10] = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string,unsigned int>>::reset[abi:ne200100]((a1 + 856), v7);
  }

  std::condition_variable::notify_one((a1 + 808));
  v8 = *(a1 + 856);
  ++*v8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v10 >= v9)
  {
    v12 = *(v8 + 8);
    v13 = v10 - v12;
    v14 = v13 >> 5;
    v15 = (v13 >> 5) + 1;
    if (v15 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    v43 = v8 + 8;
    if (v17)
    {
      if (v17 >> 59)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = operator new(32 * v17);
    }

    else
    {
      v18 = 0;
    }

    v20 = &v18[32 * v14];
    v39 = v18;
    v40 = v20;
    v21 = &v18[32 * v17];
    v41 = v20;
    v42 = v21;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18[32 * v14], *a2, *(a2 + 1));
      v22 = v40;
      v23 = v41;
      v21 = v42;
      v12 = *(v8 + 8);
      v13 = *(v8 + 16) - v12;
      v14 = v13 >> 5;
    }

    else
    {
      *v20 = *a2;
      *(v20 + 2) = *(a2 + 2);
      v22 = &v18[32 * v14];
      v23 = v22;
    }

    *(v20 + 6) = a3;
    v19 = v23 + 32;
    v24 = &v22[-32 * v14];
    memcpy(v24, v12, v13);
    v25 = *(v8 + 8);
    *(v8 + 8) = v24;
    *(v8 + 16) = v19;
    v26 = *(v8 + 24);
    *(v8 + 24) = v21;
    v41 = v25;
    v42 = v26;
    v39 = v25;
    v40 = v25;
    std::__split_buffer<std::tuple<std::string,unsigned int>>::~__split_buffer(&v39);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(v8 + 16), *a2, *(a2 + 1));
    }

    else
    {
      v11 = *a2;
      *(v10 + 16) = *(a2 + 2);
      *v10 = v11;
    }

    *(v10 + 24) = a3;
    v19 = (v10 + 32);
    *(v8 + 16) = v10 + 32;
  }

  *(v8 + 16) = v19;
  v27 = *(v8 + 64);
  while (v27 != *(v8 + 72))
  {
    v28 = *v27;
    v29 = v27[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = (*(*v28 + 32))(v28, *(v8 + 16) - 32);
    if (v30)
    {
      v31 = *(v8 + 72);
      if (v27 + 2 == v31)
      {
        v35 = v27;
      }

      else
      {
        v32 = v27;
        do
        {
          v33 = *(v32 + 1);
          v32[2] = 0;
          v32[3] = 0;
          v34 = v32[1];
          *v32 = v33;
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          v35 = v32 + 2;
          v36 = v32 + 4;
          v32 += 2;
        }

        while (v36 != v31);
        v31 = *(v8 + 72);
      }

      while (v31 != v35)
      {
        v37 = *(v31 - 1);
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        v31 -= 2;
      }

      *(v8 + 72) = v35;
      if (!v29)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v27 += 2;
      if (!v29)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
LABEL_42:
    if (v30)
    {
      break;
    }
  }

  v38 = *(v8 + 56);
  if (v38)
  {
    (*(*v38 + 48))(v38, *(v8 + 16) - 32);
  }

  std::mutex::unlock(v6);
}

void sub_1A9141638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::string,unsigned int>>::~__split_buffer(va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void MockHttpRequest::setClientCert(MockHttpRequest *this, const __CFDictionary *a2)
{
  v4 = *(this + 109);
  std::mutex::lock(v4);
  if (!*(this + 116))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFDictionary const>>>::reset[abi:ne200100](this + 116, v5);
  }

  std::condition_variable::notify_one((this + 880));
  v6 = *(this + 116);
  ++*v6;
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7)
  {
    v10 = *(v6 + 8);
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v28 = v6 + 8;
    if (v14)
    {
      v14 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v14);
    }

    else
    {
      v15 = 0;
    }

    v24 = v14;
    v25 = (v14 + 8 * v11);
    v27 = v14 + 8 * v15;
    std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>,ctu::cf::_Retain<__CFDictionary const>,void,0>(v25, a2);
    v26 = v25 + 1;
    std::vector<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>::__swap_out_circular_buffer(v6 + 8, &v24);
    v9 = *(v6 + 16);
    std::__split_buffer<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>::~__split_buffer(&v24);
  }

  else
  {
    std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>,ctu::cf::_Retain<__CFDictionary const>,void,0>(*(v6 + 16), a2);
    v9 = v8 + 8;
    *(v6 + 16) = v8 + 8;
  }

  *(v6 + 16) = v9;
  v16 = *(v6 + 64);
  while (v16 != *(v6 + 72))
  {
    v17 = *v16;
    v18 = *(v16 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = (*(*v17 + 32))(v17, *(v6 + 16) - 8);
    if (v19)
    {
      v20 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *>((v16 + 16), *(v6 + 72), v16);
      for (i = *(v6 + 72); i != v20; i -= 16)
      {
        v22 = *(i - 8);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      *(v6 + 72) = v20;
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_27:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_28;
    }

    v16 += 16;
    if (v18)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (v19)
    {
      break;
    }
  }

  v23 = *(v6 + 56);
  if (v23)
  {
    (*(*v23 + 48))(v23, *(v6 + 16) - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setServerPinnedCerts(MockHttpRequest *this, const __CFArray *a2)
{
  v4 = *(this + 118);
  std::mutex::lock(v4);
  if (!*(this + 125))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFArray const>>>::reset[abi:ne200100](this + 125, v5);
  }

  std::condition_variable::notify_one((this + 952));
  v6 = *(this + 125);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    v17 = &v15[8 * v14];
    std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFArray const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFArray const>>,ctu::cf::_Retain<__CFArray const>,void,0>(v16, a2);
    v9 = v16 + 8;
    v18 = v6[1];
    v19 = v6[2];
    v20 = &v16[v18 - v19];
    if (v19 != v18)
    {
      v21 = v6[1];
      v22 = v20;
      do
      {
        *v22 = 0;
        *v22++ = *v21;
        *v21++ = 0;
      }

      while (v21 != v19);
      do
      {
        v18 = ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(v18) + 1;
      }

      while (v18 != v19);
      v18 = v6[1];
    }

    v6[1] = v20;
    v6[2] = v9;
    v6[3] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFArray const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFArray const>>,ctu::cf::_Retain<__CFArray const>,void,0>(v6[2], a2);
    v9 = (v8 + 8);
    v6[2] = v8 + 8;
  }

  v6[2] = v9;
  v23 = v6[8];
  while (v23 != v6[9])
  {
    v24 = *v23;
    v25 = v23[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = (*(*v24 + 32))(v24, v6[2] - 8);
    if (v26)
    {
      v27 = v6[9];
      if (v23 + 2 == v27)
      {
        v31 = v23;
      }

      else
      {
        v28 = v23;
        do
        {
          v29 = *(v28 + 1);
          v28[2] = 0;
          v28[3] = 0;
          v30 = v28[1];
          *v28 = v29;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          v31 = v28 + 2;
          v32 = v28 + 4;
          v28 += 2;
        }

        while (v32 != v27);
        v27 = v6[9];
      }

      while (v27 != v31)
      {
        v33 = *(v27 - 1);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        v27 -= 2;
      }

      v6[9] = v31;
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v23 += 2;
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_42:
    if (v26)
    {
      break;
    }
  }

  v34 = v6[7];
  if (v34)
  {
    (*(*v34 + 48))(v34, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setTimeout(MockHttpRequest *this, double a2)
{
  v4 = *(this + 28);
  std::mutex::lock(v4);
  if (!*(this + 35))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,double>>::reset[abi:ne200100](this + 35, v5);
  }

  std::condition_variable::notify_one((this + 232));
  v6 = *(this + 35);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = operator new(8 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v12];
    *v17 = a2;
    v9 = v17 + 1;
    memcpy(v16, v10, v11);
    v6[1] = v16;
    v6[2] = v9;
    v6[3] = &v16[8 * v15];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = a2;
    v9 = v8 + 1;
  }

  v6[2] = v9;
  v18 = v6[8];
  while (v18 != v6[9])
  {
    v19 = *v18;
    v20 = v18[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = (*(*v19 + 32))(v19, v6[2] - 8);
    if (v21)
    {
      v22 = v6[9];
      if (v18 + 2 == v22)
      {
        v26 = v18;
      }

      else
      {
        v23 = v18;
        do
        {
          v24 = *(v23 + 1);
          v23[2] = 0;
          v23[3] = 0;
          v25 = v23[1];
          *v23 = v24;
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          v26 = v23 + 2;
          v27 = v23 + 4;
          v23 += 2;
        }

        while (v27 != v22);
        v22 = v6[9];
      }

      while (v22 != v26)
      {
        v28 = *(v22 - 1);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        v22 -= 2;
      }

      v6[9] = v26;
      if (!v20)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 += 2;
      if (!v20)
      {
        goto LABEL_37;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_37:
    if (v21)
    {
      break;
    }
  }

  v29 = v6[7];
  if (v29)
  {
    (*(*v29 + 48))(v29, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setStreamProperty(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v6 = *(a1 + 296);
  std::mutex::lock(v6);
  if (!*(a1 + 352))
  {
    v7 = operator new(0x58uLL);
    v7[10] = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,__CFString const*,ctu::cf::CFSharedRef<void const>>>::reset[abi:ne200100]((a1 + 352), v7);
  }

  std::condition_variable::notify_one((a1 + 304));
  v8 = *(a1 + 352);
  ++*v8;
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9)
  {
    v12 = v8[1];
    v13 = (v10 - v12) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = *a3;
    v16 = v9 - v12;
    if (v16 >> 3 > v14)
    {
      v14 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v14;
    }

    if (v17)
    {
      if (v17 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = operator new(16 * v17);
    }

    else
    {
      v18 = 0;
    }

    v20 = &v18[16 * v17];
    v19 = &v18[16 * v13];
    *v19 = a2;
    v11 = v19 + 16;
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::SharedRef(v19 + 1, v15);
    v21 = v8[1];
    v22 = v8[2];
    v23 = &v19[v21 - v22];
    if (v22 != v21)
    {
      v24 = v8[1];
      v25 = &v19[v21 - v22];
      do
      {
        *v25 = *v24;
        v25[1] = 0;
        v25[1] = v24[1];
        v24[1] = 0;
        v24 += 2;
        v25 += 2;
      }

      while (v24 != v22);
      do
      {
        ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(v21 + 1);
        v21 += 2;
      }

      while (v21 != v22);
      v21 = v8[1];
    }

    v8[1] = v23;
    v8[2] = v11;
    v8[3] = v20;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v10 = a2;
    v11 = v10 + 2;
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::SharedRef(v10 + 1, *a3);
  }

  v8[2] = v11;
  v26 = v8[8];
  while (v26 != v8[9])
  {
    v27 = *v26;
    v28 = v26[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = (*(*v27 + 32))(v27, v8[2] - 16);
    if (v29)
    {
      v30 = v8[9];
      if (v26 + 2 == v30)
      {
        v34 = v26;
      }

      else
      {
        v31 = v26;
        do
        {
          v32 = *(v31 + 1);
          v31[2] = 0;
          v31[3] = 0;
          v33 = v31[1];
          *v31 = v32;
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          v34 = v31 + 2;
          v35 = v31 + 4;
          v31 += 2;
        }

        while (v35 != v30);
        v30 = v8[9];
      }

      while (v30 != v34)
      {
        v36 = *(v30 - 1);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        v30 -= 2;
      }

      v8[9] = v34;
      if (!v28)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 += 2;
      if (!v28)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
LABEL_42:
    if (v29)
    {
      break;
    }
  }

  v37 = v8[7];
  if (v37)
  {
    (*(*v37 + 48))(v37, v8[2] - 16);
  }

  std::mutex::unlock(v6);
}

void MockHttpRequest::setProxySettings(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 368);
  std::mutex::lock(v4);
  if (!*(a1 + 424))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFDictionary const>>>::reset[abi:ne200100]((a1 + 424), v5);
  }

  std::condition_variable::notify_one((a1 + 376));
  v6 = *(a1 + 424);
  ++*v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v7 >= v8)
  {
    v10 = *(v6 + 8);
    v11 = (v7 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v28 = v6 + 8;
    if (v14)
    {
      v14 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v14);
    }

    else
    {
      v15 = 0;
    }

    v24 = v14;
    v25 = (v14 + 8 * v11);
    v27 = v14 + 8 * v15;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(v25, a2);
    v26 = v25 + 1;
    std::vector<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>::__swap_out_circular_buffer(v6 + 8, &v24);
    v9 = *(v6 + 16);
    std::__split_buffer<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>::~__split_buffer(&v24);
  }

  else
  {
    v9 = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(v7, a2) + 1;
  }

  *(v6 + 16) = v9;
  v16 = *(v6 + 64);
  while (v16 != *(v6 + 72))
  {
    v17 = *v16;
    v18 = *(v16 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = (*(*v17 + 32))(v17, *(v6 + 16) - 8);
    if (v19)
    {
      v20 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *>((v16 + 16), *(v6 + 72), v16);
      for (i = *(v6 + 72); i != v20; i -= 16)
      {
        v22 = *(i - 8);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      *(v6 + 72) = v20;
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_27:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_28;
    }

    v16 += 16;
    if (v18)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (v19)
    {
      break;
    }
  }

  v23 = *(v6 + 56);
  if (v23)
  {
    (*(*v23 + 48))(v23, *(v6 + 16) - 8);
  }

  std::mutex::unlock(v4);
}

uint64_t MockHttpRequest::getHeader(uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 2192, a2);
  if (a1 + 2200 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception);
    __cxa_throw(exception, off_1E786B410, MEMORY[0x1E69E5268]);
  }

  return v3 + 56;
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "Header does not exist");
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

char *MockHttpRequest::getRequestBody(MockHttpRequest *this)
{
  v1 = this + 2216;
  if (*(this + 277) == *(this + 278))
  {
    v3 = *(this + 91);
    std::mutex::lock(v3);
    v4 = *(this + 98);
    if (!v4 || (v5 = *(v4 + 8), v5 == *(v4 + 16)))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::EmptyMockCallArgsException::EmptyMockCallArgsException(exception, *(this + 90));
    }

    v18 = *v5;
    v6 = *(v5 + 2);
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = 0;
    v7 = *(v4 + 8);
    v8 = *(v4 + 16);
    if (v7 + 24 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7)
        {
          *(v7 + 8) = v9;
          operator delete(v9);
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        v10 = v7 + 24;
        *v7 = *(v7 + 24);
        *(v7 + 16) = *(v7 + 40);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        v11 = v7 + 48;
        v7 += 24;
      }

      while (v11 != v8);
      v8 = *(v4 + 16);
      v7 = v10;
    }

    if (v8 != v7)
    {
      v12 = v8;
      do
      {
        v14 = *(v12 - 24);
        v12 -= 24;
        v13 = v14;
        if (v14)
        {
          *(v8 - 16) = v13;
          operator delete(v13);
        }

        v8 = v12;
      }

      while (v12 != v7);
    }

    *(v4 + 16) = v7;
    std::mutex::unlock(v3);
    v15 = *v1;
    if (*v1)
    {
      *(this + 278) = v15;
      operator delete(v15);
      *v1 = 0;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0;
    }

    *v1 = v18;
    *(this + 279) = v6;
  }

  return v1;
}

void MockHttpRequest::setMaxAllowedRedirects(MockHttpRequest *this, int a2)
{
  v4 = *(this + 127);
  std::mutex::lock(v4);
  if (!*(this + 134))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,int>>::reset[abi:ne200100](this + 134, v5);
  }

  std::condition_variable::notify_one((this + 1024));
  v6 = *(this + 134);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 2;
    v13 = v12 + 1;
    if ((v12 + 1) >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 >> 62)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = operator new(4 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[4 * v12];
    *v17 = a2;
    v9 = v17 + 4;
    memcpy(v16, v10, v11);
    v6[1] = v16;
    v6[2] = v9;
    v6[3] = &v16[4 * v15];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = a2;
    v9 = v8 + 4;
  }

  v6[2] = v9;
  v18 = v6[8];
  while (v18 != v6[9])
  {
    v19 = *v18;
    v20 = v18[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = (*(*v19 + 32))(v19, v6[2] - 4);
    if (v21)
    {
      v22 = v6[9];
      if (v18 + 2 == v22)
      {
        v26 = v18;
      }

      else
      {
        v23 = v18;
        do
        {
          v24 = *(v23 + 1);
          v23[2] = 0;
          v23[3] = 0;
          v25 = v23[1];
          *v23 = v24;
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          v26 = v23 + 2;
          v27 = v23 + 4;
          v23 += 2;
        }

        while (v27 != v22);
        v22 = v6[9];
      }

      while (v22 != v26)
      {
        v28 = *(v22 - 1);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        v22 -= 2;
      }

      v6[9] = v26;
      if (!v20)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 += 2;
      if (!v20)
      {
        goto LABEL_37;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_37:
    if (v21)
    {
      break;
    }
  }

  v29 = v6[7];
  if (v29)
  {
    (*(*v29 + 48))(v29, v6[2] - 4);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setRedirection(MockHttpRequest *this, char a2)
{
  v4 = *(this + 136);
  std::mutex::lock(v4);
  if (!*(this + 143))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 143, v5);
  }

  std::condition_variable::notify_one((this + 1096));
  ctu::IMockMethodHandler<void,BOOL>::call<BOOL &>(*(this + 143), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setSharedConfiguration(MockHttpRequest *this, char a2)
{
  v4 = *(this + 145);
  std::mutex::lock(v4);
  if (!*(this + 152))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 152, v5);
  }

  std::condition_variable::notify_one((this + 1168));
  ctu::IMockMethodHandler<void,BOOL>::call<BOOL &>(*(this + 152), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setBackgroundConfiguration(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 1232);
  std::mutex::lock(v4);
  if (!*(a1 + 1288))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100]((a1 + 1288), v5);
  }

  std::condition_variable::notify_one((a1 + 1240));
  ctu::IMockMethodHandler<void,std::string>::call<std::string const&>(*(a1 + 1288), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setBackgroundConfigurationWithUniqueIdentifier(MockHttpRequest *this)
{
  v2 = *(this + 163);
  std::mutex::lock(v2);
  if (!*(this + 170))
  {
    v3 = operator new(0x58uLL);
    v3[10] = 0;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void>>::reset[abi:ne200100](this + 170, v3);
  }

  std::condition_variable::notify_one((this + 1312));
  ctu::IMockMethodHandler<void>::call<>(*(this + 170));

  std::mutex::unlock(v2);
}

void MockHttpRequest::setValidateCertsCallback(uint64_t a1, void *a2)
{
  v4 = *(a1 + 1376);
  std::mutex::lock(v4);
  if (!*(a1 + 1432))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<BOOL({block_pointer})(__SecTrust *)>>>::reset[abi:ne200100]((a1 + 1432), v5);
  }

  std::condition_variable::notify_one((a1 + 1384));
  v6 = *(a1 + 1432);
  ++*v6;
  v7 = v6[2];
  v8 = v6[3];
  if (v7 >= v8)
  {
    v10 = v6[1];
    v11 = (v7 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    v17 = &v15[8 * v14];
    std::__tuple_leaf<0ul,dispatch::block<BOOL({block_pointer})(__SecTrust *)>,false>::__tuple_leaf[abi:ne200100]<BOOL({block_pointer}&)(__SecTrust *),0>(v16, a2);
    v9 = v16 + 8;
    v18 = v6[1];
    v19 = v6[2];
    v20 = &v16[v18 - v19];
    if (v19 != v18)
    {
      v21 = v6[1];
      v22 = v20;
      do
      {
        *v22++ = *v21;
        *v21++ = 0;
      }

      while (v21 != v19);
      do
      {
        v23 = *v18++;
        std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<BOOL({block_pointer})(__SecTrust *)>>,0>(v23);
      }

      while (v18 != v19);
      v18 = v6[1];
    }

    v6[1] = v20;
    v6[2] = v9;
    v6[3] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v9 = std::__tuple_leaf<0ul,dispatch::block<BOOL({block_pointer})(__SecTrust *)>,false>::__tuple_leaf[abi:ne200100]<BOOL({block_pointer}&)(__SecTrust *),0>(v7, a2) + 1;
  }

  v6[2] = v9;
  v24 = v6[8];
  while (v24 != v6[9])
  {
    v25 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = (*(*v25 + 32))(v25, v6[2] - 8);
    if (v27)
    {
      v28 = v6[9];
      if (v24 + 2 == v28)
      {
        v32 = v24;
      }

      else
      {
        v29 = v24;
        do
        {
          v30 = *(v29 + 1);
          v29[2] = 0;
          v29[3] = 0;
          v31 = v29[1];
          *v29 = v30;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = v29 + 2;
          v33 = v29 + 4;
          v29 += 2;
        }

        while (v33 != v28);
        v28 = v6[9];
      }

      while (v28 != v32)
      {
        v34 = *(v28 - 1);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v28 -= 2;
      }

      v6[9] = v32;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 += 2;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_42:
    if (v27)
    {
      break;
    }
  }

  v35 = v6[7];
  if (v35)
  {
    (*(*v35 + 48))(v35, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setTLSPolicyName(MockHttpRequest *this, const __CFString *a2)
{
  v4 = *(this + 181);
  std::mutex::lock(v4);
  if (!*(this + 188))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,__CFString const*>>::reset[abi:ne200100](this + 188, v5);
  }

  std::condition_variable::notify_one((this + 1456));
  v6 = *(this + 188);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = operator new(8 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v12];
    *v17 = a2;
    v9 = v17 + 8;
    memcpy(v16, v10, v11);
    v6[1] = v16;
    v6[2] = v9;
    v6[3] = &v16[8 * v15];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = a2;
    v9 = v8 + 8;
  }

  v6[2] = v9;
  v18 = v6[8];
  while (v18 != v6[9])
  {
    v19 = *v18;
    v20 = v18[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = (*(*v19 + 32))(v19, v6[2] - 8);
    if (v21)
    {
      v22 = v6[9];
      if (v18 + 2 == v22)
      {
        v26 = v18;
      }

      else
      {
        v23 = v18;
        do
        {
          v24 = *(v23 + 1);
          v23[2] = 0;
          v23[3] = 0;
          v25 = v23[1];
          *v23 = v24;
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          v26 = v23 + 2;
          v27 = v23 + 4;
          v23 += 2;
        }

        while (v27 != v22);
        v22 = v6[9];
      }

      while (v22 != v26)
      {
        v28 = *(v22 - 1);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        v22 -= 2;
      }

      v6[9] = v26;
      if (!v20)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 += 2;
      if (!v20)
      {
        goto LABEL_37;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_37:
    if (v21)
    {
      break;
    }
  }

  v29 = v6[7];
  if (v29)
  {
    (*(*v29 + 48))(v29, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setConnectionCacheCellPurgeTimeout(MockHttpRequest *this, int a2)
{
  v4 = *(this + 190);
  std::mutex::lock(v4);
  if (!*(this + 197))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,unsigned int>>::reset[abi:ne200100](this + 197, v5);
  }

  std::condition_variable::notify_one((this + 1528));
  ctu::IMockMethodHandler<void,unsigned int>::call<unsigned int &>(*(this + 197), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setWaitForConnectivityTimeout(MockHttpRequest *this, int a2)
{
  v4 = *(this + 199);
  std::mutex::lock(v4);
  if (!*(this + 206))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,unsigned int>>::reset[abi:ne200100](this + 206, v5);
  }

  std::condition_variable::notify_one((this + 1600));
  ctu::IMockMethodHandler<void,unsigned int>::call<unsigned int &>(*(this + 206), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setAllowUltraConstrained(MockHttpRequest *this, char a2)
{
  v4 = *(this + 208);
  std::mutex::lock(v4);
  if (!*(this + 215))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 215, v5);
  }

  std::condition_variable::notify_one((this + 1672));
  ctu::IMockMethodHandler<void,BOOL>::call<BOOL &>(*(this + 215), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setServiceType(MockHttpRequest *this, const __CFString *a2)
{
  v4 = *(this + 217);
  std::mutex::lock(v4);
  if (!*(this + 224))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFString const>>>::reset[abi:ne200100](this + 224, v5);
  }

  std::condition_variable::notify_one((this + 1744));
  v6 = *(this + 224);
  ++*v6;
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    v17 = &v15[8 * v14];
    std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFString const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFString const>>,ctu::cf::_Retain<__CFString const>,void,0>(v16, a2);
    v9 = v16 + 8;
    v18 = v6[1];
    v19 = v6[2];
    v20 = &v16[v18 - v19];
    if (v19 != v18)
    {
      v21 = v6[1];
      v22 = v20;
      do
      {
        *v22 = 0;
        *v22++ = *v21;
        *v21++ = 0;
      }

      while (v21 != v19);
      do
      {
        v18 = ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v18) + 1;
      }

      while (v18 != v19);
      v18 = v6[1];
    }

    v6[1] = v20;
    v6[2] = v9;
    v6[3] = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFString const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFString const>>,ctu::cf::_Retain<__CFString const>,void,0>(v6[2], a2);
    v9 = (v8 + 8);
    v6[2] = v8 + 8;
  }

  v6[2] = v9;
  v23 = v6[8];
  while (v23 != v6[9])
  {
    v24 = *v23;
    v25 = v23[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = (*(*v24 + 32))(v24, v6[2] - 8);
    if (v26)
    {
      v27 = v6[9];
      if (v23 + 2 == v27)
      {
        v31 = v23;
      }

      else
      {
        v28 = v23;
        do
        {
          v29 = *(v28 + 1);
          v28[2] = 0;
          v28[3] = 0;
          v30 = v28[1];
          *v28 = v29;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          v31 = v28 + 2;
          v32 = v28 + 4;
          v28 += 2;
        }

        while (v32 != v27);
        v27 = v6[9];
      }

      while (v27 != v31)
      {
        v33 = *(v27 - 1);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        v27 -= 2;
      }

      v6[9] = v31;
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v23 += 2;
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_42:
    if (v26)
    {
      break;
    }
  }

  v34 = v6[7];
  if (v34)
  {
    (*(*v34 + 48))(v34, v6[2] - 8);
  }

  std::mutex::unlock(v4);
}

void MockHttpRequest::setSourceIdentifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 1808);
  std::mutex::lock(v4);
  if (!*(a1 + 1864))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100]((a1 + 1864), v5);
  }

  std::condition_variable::notify_one((a1 + 1816));
  ctu::IMockMethodHandler<void,std::string>::call<std::string const&>(*(a1 + 1864), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setOnDemand(MockHttpRequest *this, char a2)
{
  v4 = *(this + 235);
  std::mutex::lock(v4);
  if (!*(this + 242))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 242, v5);
  }

  std::condition_variable::notify_one((this + 1888));
  ctu::IMockMethodHandler<void,BOOL>::call<BOOL &>(*(this + 242), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setAllowCellularAccess(MockHttpRequest *this, char a2)
{
  v4 = *(this + 244);
  std::mutex::lock(v4);
  if (!*(this + 251))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 251, v5);
  }

  std::condition_variable::notify_one((this + 1960));
  ctu::IMockMethodHandler<void,BOOL>::call<BOOL &>(*(this + 251), a2);

  std::mutex::unlock(v4);
}

void MockHttpRequest::setSourceApplicationBundleIdentifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 2024);
  std::mutex::lock(v4);
  if (!*(a1 + 2080))
  {
    v5 = operator new(0x58uLL);
    v5[10] = 0;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100]((a1 + 2080), v5);
  }

  std::condition_variable::notify_one((a1 + 2032));
  ctu::IMockMethodHandler<void,std::string>::call<std::string const&>(*(a1 + 2080), a2);

  std::mutex::unlock(v4);
}

uint64_t MockHttpRequest::getTLSNegotiatedCipherSuite(MockHttpRequest *this)
{
  v2 = *(this + 262);
  std::mutex::lock(v2);
  if (!*(this + 269))
  {
    v3 = operator new(0x60uLL);
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    std::unique_ptr<ctu::MockMethodHandler<unsigned short>>::reset[abi:ne200100](this + 269, v3);
  }

  std::condition_variable::notify_one((this + 2104));
  v4 = ctu::IMockMethodHandler<unsigned short>::call<>(*(this + 269));
  std::mutex::unlock(v2);
  return v4;
}

void MockHttpRequest::~MockHttpRequest(MockHttpRequest *this)
{
  MockHttpRequest::~MockHttpRequest(this);

  operator delete(v1);
}

{
  *this = &unk_1F1CB97E8;
  v2 = *(this + 277);
  if (v2)
  {
    *(this + 278) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2192, *(this + 275));
  if (*(this + 2191) < 0)
  {
    operator delete(*(this + 271));
  }

  std::unique_ptr<ctu::MockMethodHandler<unsigned short>>::reset[abi:ne200100](this + 269, 0);
  std::condition_variable::~condition_variable((this + 2104));
  std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100](this + 260, 0);
  std::condition_variable::~condition_variable((this + 2032));
  std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 251, 0);
  std::condition_variable::~condition_variable((this + 1960));
  std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 242, 0);
  std::condition_variable::~condition_variable((this + 1888));
  std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100](this + 233, 0);
  std::condition_variable::~condition_variable((this + 1816));
  std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFString const>>>::reset[abi:ne200100](this + 224, 0);
  std::condition_variable::~condition_variable((this + 1744));
  std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 215, 0);
  std::condition_variable::~condition_variable((this + 1672));
  std::unique_ptr<ctu::MockMethodHandler<void,unsigned int>>::reset[abi:ne200100](this + 206, 0);
  std::condition_variable::~condition_variable((this + 1600));
  std::unique_ptr<ctu::MockMethodHandler<void,unsigned int>>::reset[abi:ne200100](this + 197, 0);
  std::condition_variable::~condition_variable((this + 1528));
  std::unique_ptr<ctu::MockMethodHandler<void,__CFString const*>>::reset[abi:ne200100](this + 188, 0);
  std::condition_variable::~condition_variable((this + 1456));
  std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<BOOL({block_pointer})(__SecTrust *)>>>::reset[abi:ne200100](this + 179, 0);
  std::condition_variable::~condition_variable((this + 1384));
  std::unique_ptr<ctu::MockMethodHandler<void>>::reset[abi:ne200100](this + 170, 0);
  std::condition_variable::~condition_variable((this + 1312));
  std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100](this + 161, 0);
  std::condition_variable::~condition_variable((this + 1240));
  std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 152, 0);
  std::condition_variable::~condition_variable((this + 1168));
  std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](this + 143, 0);
  std::condition_variable::~condition_variable((this + 1096));
  std::unique_ptr<ctu::MockMethodHandler<void,int>>::reset[abi:ne200100](this + 134, 0);
  std::condition_variable::~condition_variable((this + 1024));
  std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFArray const>>>::reset[abi:ne200100](this + 125, 0);
  std::condition_variable::~condition_variable((this + 952));
  std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFDictionary const>>>::reset[abi:ne200100](this + 116, 0);
  std::condition_variable::~condition_variable((this + 880));
  std::unique_ptr<ctu::MockMethodHandler<void,std::string,unsigned int>>::reset[abi:ne200100](this + 107, 0);
  std::condition_variable::~condition_variable((this + 808));
  std::unique_ptr<ctu::MockMethodHandler<void,std::vector<unsigned char>>>::reset[abi:ne200100](this + 98, 0);
  std::condition_variable::~condition_variable((this + 736));
  std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(int,int,int)>>>::reset[abi:ne200100](this + 89, 0);
  std::condition_variable::~condition_variable((this + 664));
  std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(int,int)>>>::reset[abi:ne200100](this + 80, 0);
  std::condition_variable::~condition_variable((this + 592));
  std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>>::reset[abi:ne200100](this + 71, 0);
  std::condition_variable::~condition_variable((this + 520));
  std::unique_ptr<ctu::MockMethodHandler<void,dispatch::queue>>::reset[abi:ne200100](this + 62, 0);
  std::condition_variable::~condition_variable((this + 448));
  std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFDictionary const>>>::reset[abi:ne200100](this + 53, 0);
  std::condition_variable::~condition_variable((this + 376));
  std::unique_ptr<ctu::MockMethodHandler<void,__CFString const*,ctu::cf::CFSharedRef<void const>>>::reset[abi:ne200100](this + 44, 0);
  std::condition_variable::~condition_variable((this + 304));
  std::unique_ptr<ctu::MockMethodHandler<void,double>>::reset[abi:ne200100](this + 35, 0);
  std::condition_variable::~condition_variable((this + 232));
  std::unique_ptr<ctu::MockMethodHandler<void>>::reset[abi:ne200100](this + 26, 0);
  std::condition_variable::~condition_variable((this + 160));
  std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100](this + 17, 0);
  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex((this + 8));
}

void std::unique_ptr<ctu::MockMethodHandler<void,std::string>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,BOOL>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v2[2] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFString const>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v9 = ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v9 - 1);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,unsigned int>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v2[2] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,__CFString const*>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v2[2] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<BOOL({block_pointer})(__SecTrust *)>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 8);
          v9 -= 8;
          std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<BOOL({block_pointer})(__SecTrust *)>>,0>(v11);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<BOOL({block_pointer})(__SecTrust *)>>,0>(const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v2[2] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,int>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v2[2] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFArray const>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v9 = ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(v9 - 1);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,ctu::cf::CFSharedRef<__CFDictionary const>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v9 = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v9 - 1);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,std::string,unsigned int>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 9);
          v9 -= 4;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,std::vector<unsigned char>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        v11 = v2[2];
        do
        {
          v13 = *(v11 - 24);
          v11 -= 24;
          v12 = v13;
          if (v13)
          {
            *(v9 - 16) = v12;
            operator delete(v12);
          }

          v9 = v11;
        }

        while (v11 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(int,int,int)>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 8);
          v9 -= 8;
          std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(int,int,int)>>,0>(v11);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(int,int,int)>>,0>(const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(int,int)>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 8);
          v9 -= 8;
          std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(int,int)>>,0>(v11);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(int,int)>>,0>(const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 8);
          v9 -= 8;
          std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>,0>(v11);
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>>,0>(const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,dispatch::queue>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 8);
          v9 -= 8;
          v11 = v12;
          if (v12)
          {
            dispatch_release(v11);
          }
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,__CFString const*,ctu::cf::CFSharedRef<void const>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = v9 - 16;
          ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef((v9 - 8));
          v9 = v11;
        }

        while (v11 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<ctu::MockMethodHandler<void,double>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v2[2] = v8;
      operator delete(v8);
    }

    operator delete(v2);
  }
}

void std::__shared_ptr_pointer<MockHttpRequest *,std::shared_ptr<MockHttpRequest>::__shared_ptr_default_delete<MockHttpRequest,MockHttpRequest>,std::allocator<MockHttpRequest>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<MockHttpRequest *,std::shared_ptr<MockHttpRequest>::__shared_ptr_default_delete<MockHttpRequest,MockHttpRequest>,std::allocator<MockHttpRequest>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 256))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MockHttpRequest *,std::shared_ptr<MockHttpRequest>::__shared_ptr_default_delete<MockHttpRequest,MockHttpRequest>,std::allocator<MockHttpRequest>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(std::shared_ptr<ctu::Http::HttpResponse>)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(std::shared_ptr<ctu::Http::HttpResponse>),0>(void *a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return a1;
}

void *std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(int,int)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(int,int),0>(void *a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return a1;
}

void *std::__tuple_leaf<0ul,dispatch::block<void({block_pointer})(int,int,int)>,false>::__tuple_leaf[abi:ne200100]<void({block_pointer}&)(int,int,int),0>(void *a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return a1;
}

uint64_t std::__split_buffer<std::tuple<std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      ++v5;
      a3 += 16;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t ctu::IMockMethodHandler<void>::call<>(void *a1)
{
  ++*a1;
  v3 = a1[2];
  v2 = a1[3];
  if (v3 >= v2)
  {
    v5 = a1[1];
    v6 = v3 - v5;
    v7 = v3 - v5 + 1;
    if (v7 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v2 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = operator new(v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = &v10[v9];
    v4 = &v10[v6 + 1];
    memcpy(v10, v5, v6);
    a1[1] = v10;
    a1[2] = v4;
    a1[3] = v11;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    v4 = v3 + 1;
  }

  a1[2] = v4;
  v12 = a1[8];
  while (v12 != a1[9])
  {
    v13 = *v12;
    v14 = v12[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = (*(*v13 + 32))(v13, a1[2] - 1);
    if (v15)
    {
      v16 = a1[9];
      if (v12 + 2 == v16)
      {
        v20 = v12;
      }

      else
      {
        v17 = v12;
        do
        {
          v18 = *(v17 + 1);
          v17[2] = 0;
          v17[3] = 0;
          v19 = v17[1];
          *v17 = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v20 = v17 + 2;
          v21 = v17 + 4;
          v17 += 2;
        }

        while (v21 != v16);
        v16 = a1[9];
      }

      while (v16 != v20)
      {
        v22 = *(v16 - 1);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v16 -= 2;
      }

      a1[9] = v20;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 += 2;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_34:
    if (v15)
    {
      break;
    }
  }

  result = a1[7];
  if (result)
  {
    v24 = a1[2] - 1;
    v25 = *(*result + 48);

    return v25();
  }

  return result;
}

void sub_1A9145494(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::tuple<std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::tuple<std::string,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>,ctu::cf::_Retain<__CFDictionary const>,void,0>(void *result, CFTypeRef cf)
{
  *result = cf;
  if (cf)
  {
    return CFRetain(cf);
  }

  return result;
}

const void **std::vector<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::tuple<ctu::cf::CFSharedRef<__CFDictionary const>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFArray const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFArray const>>,ctu::cf::_Retain<__CFArray const>,void,0>(void *result, CFTypeRef cf)
{
  *result = cf;
  if (cf)
  {
    return CFRetain(cf);
  }

  return result;
}

void *ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t ctu::IMockMethodHandler<void,BOOL>::call<BOOL &>(void *a1, char a2)
{
  ++*a1;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    a1[1] = v12;
    a1[2] = v6;
    a1[3] = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[2] = v6;
  v13 = a1[8];
  while (v13 != a1[9])
  {
    v14 = *v13;
    v15 = v13[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*(*v14 + 32))(v14, a1[2] - 1);
    if (v16)
    {
      v17 = a1[9];
      if (v13 + 2 == v17)
      {
        v21 = v13;
      }

      else
      {
        v18 = v13;
        do
        {
          v19 = *(v18 + 1);
          v18[2] = 0;
          v18[3] = 0;
          v20 = v18[1];
          *v18 = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v21 = v18 + 2;
          v22 = v18 + 4;
          v18 += 2;
        }

        while (v22 != v17);
        v17 = a1[9];
      }

      while (v17 != v21)
      {
        v23 = *(v17 - 1);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v17 -= 2;
      }

      a1[9] = v21;
      if (!v15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 += 2;
      if (!v15)
      {
        goto LABEL_34;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
LABEL_34:
    if (v16)
    {
      break;
    }
  }

  result = a1[7];
  if (result)
  {
    v25 = a1[2] - 1;
    v26 = *(*result + 48);

    return v26();
  }

  return result;
}

void sub_1A914590C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::IMockMethodHandler<void,std::string>::call<std::string const&>(uint64_t a1, __int128 *a2)
{
  ++*a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 >= v4)
  {
    v7 = *(a1 + 8);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v36 = a1 + 8;
    if (v11)
    {
      v13 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v11);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v15 = v13 + v8;
    v32 = v13;
    v33 = v15;
    v16 = &v13[v12];
    v34 = v15;
    v35 = v16;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v15, *a2, *(a2 + 1));
      v15 = v33;
      v18 = v34;
      v16 = v35;
    }

    else
    {
      v17 = *a2;
      v15->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v15->__r_.__value_.__l.__data_ = v17;
      v18 = v15;
    }

    v14 = v18 + 1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16) - v19;
    v21 = v15 - v20;
    memcpy(v15 - v20, v19, v20);
    v22 = *(a1 + 8);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    v23 = *(a1 + 24);
    *(a1 + 24) = v16;
    v34 = v22;
    v35 = v23;
    v32 = v22;
    v33 = v22;
    std::__split_buffer<std::tuple<std::string>>::~__split_buffer(&v32);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 16), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v14 = (v5 + 24);
    *(a1 + 16) = v5 + 24;
  }

  *(a1 + 16) = v14;
  v24 = *(a1 + 64);
  while (v24 != *(a1 + 72))
  {
    v25 = *v24;
    v26 = *(v24 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = (*(*v25 + 32))(v25, *(a1 + 16) - 24);
    if (v27)
    {
      v28 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *,std::shared_ptr<ctu::MockMethodExpectationBase<void,std::string>> *>((v24 + 16), *(a1 + 72), v24);
      for (i = *(a1 + 72); i != v28; i -= 16)
      {
        v30 = *(i - 8);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }
      }

      *(a1 + 72) = v28;
      if (!v26)
      {
        goto LABEL_32;
      }

LABEL_31:
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      goto LABEL_32;
    }

    v24 += 16;
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v27)
    {
      break;
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result, *(a1 + 16) - 24);
  }

  return result;
}

void sub_1A9145B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<0ul,dispatch::block<BOOL({block_pointer})(__SecTrust *)>,false>::__tuple_leaf[abi:ne200100]<BOOL({block_pointer}&)(__SecTrust *),0>(void *a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return a1;
}

uint64_t ctu::IMockMethodHandler<void,unsigned int>::call<unsigned int &>(void *a1, int a2)
{
  ++*a1;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 62)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(4 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[4 * v9];
    *v14 = a2;
    v6 = v14 + 4;
    memcpy(v13, v7, v8);
    a1[1] = v13;
    a1[2] = v6;
    a1[3] = &v13[4 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  a1[2] = v6;
  v15 = a1[8];
  while (v15 != a1[9])
  {
    v16 = *v15;
    v17 = v15[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = (*(*v16 + 32))(v16, a1[2] - 4);
    if (v18)
    {
      v19 = a1[9];
      if (v15 + 2 == v19)
      {
        v23 = v15;
      }

      else
      {
        v20 = v15;
        do
        {
          v21 = *(v20 + 1);
          v20[2] = 0;
          v20[3] = 0;
          v22 = v20[1];
          *v20 = v21;
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v23 = v20 + 2;
          v24 = v20 + 4;
          v20 += 2;
        }

        while (v24 != v19);
        v19 = a1[9];
      }

      while (v19 != v23)
      {
        v25 = *(v19 - 1);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        v19 -= 2;
      }

      a1[9] = v23;
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 += 2;
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
LABEL_35:
    if (v18)
    {
      break;
    }
  }

  result = a1[7];
  if (result)
  {
    v27 = a1[2] - 4;
    v28 = *(*result + 48);

    return v28();
  }

  return result;
}

void sub_1A9145E2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocator_traits<std::allocator<std::tuple<ctu::cf::CFSharedRef<__CFString const>>>>::construct[abi:ne200100]<std::tuple<ctu::cf::CFSharedRef<__CFString const>>,ctu::cf::_Retain<__CFString const>,void,0>(void *result, CFTypeRef cf)
{
  *result = cf;
  if (cf)
  {
    return CFRetain(cf);
  }

  return result;
}

const char *ctu::rest::asString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "?";
  }

  else
  {
    return off_1E786BBE8[a1 - 1];
  }
}

void ctu::rest::createReply(xpc_object_t *this@<X0>, _anonymous_namespace_ *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = xpc_null_create();
  v5 = MEMORY[0x1AC581B70](*this);
  v6 = MEMORY[0x1E69E9E80];
  if (v5 == MEMORY[0x1E69E9E80])
  {
    reply = xpc_dictionary_create_reply(*this);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (MEMORY[0x1AC581B70](reply) == v6)
      {
        xpc_retain(reply);
        v8 = reply;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      reply = 0;
    }

    v9 = xpc_null_create();
    v10 = *a2;
    *a2 = v8;
    xpc_release(v10);
    xpc_release(v9);
    xpc_release(reply);
    if (MEMORY[0x1AC581B70](*a2) == v6)
    {
    }
  }
}

void ctu::rest::createReplyWithValue(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, _anonymous_namespace_ *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createReply(a1, a3);
  if (MEMORY[0x1AC581B70](*a3) == MEMORY[0x1E69E9E80])
  {
    ctu::rest::updateReplyValue(a3, a2);
  }
}

void ctu::rest::createPingMessage(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    *a1 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v4) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  *a1 = v5;
LABEL_9:
  xpc_release(v4);
  v7 = xpc_string_create("ping");
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = a1;
  v6[1] = "o";
  xpc::dict::object_proxy::operator=(v6, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
}

void ctu::rest::createAutoReplyValue(xpc_object_t *this@<X0>, void *a2@<X8>)
{
  object = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createReply(this, &object);
  if (MEMORY[0x1AC581B70](object) == MEMORY[0x1E69E9E80] && (remote_connection = xpc_dictionary_get_remote_connection(*this)) != 0)
  {
    v6 = operator new(0x30uLL);
    v6->__shared_owners_ = 0;
    v6->__shared_weak_owners_ = 0;
    v6->__vftable = &unk_1F1CB4EB8;
    v6[1].__vftable = xpc_null_create();
    v6[1].__shared_owners_ = remote_connection;
    xpc_retain(remote_connection);
    v6[1].__shared_weak_owners_ = object;
    object = xpc_null_create();
    *a2 = v6 + 1;
    a2[1] = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  xpc_release(object);
}

void ctu::rest::RestXpcConnector::create(xpc_object_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E68])
  {
    v4 = operator new(0x50uLL);
    object = *a1;
    *a1 = xpc_null_create();
    ctu::rest::RestXpcConnector::RestXpcConnector(v4, &object);
    std::shared_ptr<ctu::rest::RestXpcConnector>::shared_ptr[abi:ne200100]<ctu::rest::RestXpcConnector,0>(a2, v4);
    xpc_release(object);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t ctu::rest::RestXpcConnector::RestXpcConnector(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1CB6170;
  *(a1 + 24) = *a2;
  *a2 = xpc_null_create();
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 72) = xpc_null_create();
  return a1;
}

void ctu::rest::RestXpcConnector::~RestXpcConnector(xpc_object_t *this)
{
  ctu::XpcClientHelper::~XpcClientHelper(this + 9);
  v2 = this[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  xpc_release(this[3]);
  this[3] = 0;
  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  ctu::rest::RestXpcConnector::~RestXpcConnector(this);

  operator delete(v1);
}

void ctu::rest::RestXpcConnector::disconnect(ctu::rest::RestXpcConnector *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  ctu::XpcClientHelper::setServer(this + 9);
}

void ctu::rest::RestXpcConnector::flush(_xpc_connection_s **this, const group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v5 = xpc_string_create("");
  v11 = v5;
  if (!v5)
  {
    v5 = xpc_null_create();
    v11 = v5;
  }

  v6 = xpc_string_create("");
  v10 = v6;
  if (!v6)
  {
    v6 = xpc_null_create();
    v10 = v6;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZNK3ctu4rest16RestXpcConnector5flushERKN8dispatch5groupE_block_invoke;
  v8[3] = &__block_descriptor_tmp_26;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  ctu::rest::RestXpcConnector::send_with_reply(this, "ping", &v11, &v10, global_queue, v8);
  xpc_release(v6);
  xpc_release(v5);
  ctu::XpcClientHelper::flush(this + 9, a2);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }
}

void sub_1A9146660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void ctu::rest::RestXpcConnector::send_with_reply(uint64_t a1, char *string, void **a3, void **a4, NSObject *a5, void *a6)
{
  message = 0xAAAAAAAAAAAAAAAALL;
  v11 = xpc_string_create(string);
  v15 = v11;
  if (!v11)
  {
    v11 = xpc_null_create();
    v15 = v11;
  }

  v12 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v12 = *v12;
  }

  v13 = xpc_string_create(v12);
  v14 = v13;
  if (!v13)
  {
    v13 = xpc_null_create();
    v14 = v13;
  }

  ctu::rest::createRestMessage(&v15, &v14, a3, a4, &message);
  xpc_release(v13);
  xpc_release(v11);
  xpc_connection_send_message_with_reply(*(a1 + 72), message, a5, a6);
  xpc_release(message);
}

void ctu::rest::RestXpcConnector::send(uint64_t a1, char *string, void **a3, void **a4)
{
  message = 0xAAAAAAAAAAAAAAAALL;
  v7 = xpc_string_create(string);
  v11 = v7;
  if (!v7)
  {
    v7 = xpc_null_create();
    v11 = v7;
  }

  v8 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v8 = *v8;
  }

  v9 = xpc_string_create(v8);
  v10 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v10 = v9;
  }

  ctu::rest::createRestMessage(&v11, &v10, a3, a4, &message);
  xpc_release(v9);
  xpc_release(v7);
  xpc_connection_send_message(*(a1 + 72), message);
  xpc_release(message);
}

void ctu::rest::RestXpcConnector::send_with_reply(uint64_t a1, char *a2, void **a3, void **a4, uint64_t *a5, NSObject **a6, uint64_t a7)
{
  v14 = operator new(0x20uLL);
  v15 = std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v14, a7);
  v16 = *a6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1174405120;
  v19[2] = ___ZNK3ctu4rest16RestXpcConnector15send_with_replyEPKcRKN3xpc6objectES7_NSt3__18weak_ptrIKvEERKN8dispatch5queueEONS8_8functionIFvS5_EEE_block_invoke;
  v19[3] = &__block_descriptor_tmp_14_0;
  v18 = *a5;
  v17 = a5[1];
  v19[4] = v15;
  v19[5] = v18;
  v20 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::rest::RestXpcConnector::send_with_reply(a1, a2, a3, a4, v16, v19);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }
}

void sub_1A91469F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ctu4rest16RestXpcConnector15send_with_replyEPKcRKN3xpc6objectES7_NSt3__18weak_ptrIKvEERKN8dispatch5queueEONS8_8functionIFvS5_EEE_block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = a1[4];
        object = a2;
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          object = xpc_null_create();
        }

        v9 = *(v8 + 24);
        if (!v9)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v9 + 48))(v9, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v3)
  {
    v10 = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v3);
    operator delete(v10);
  }
}

void sub_1A9146AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (v10)
  {
    v13 = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v10);
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c25_ZTSNSt3__18weak_ptrIKvEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c25_ZTSNSt3__18weak_ptrIKvEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ctu::rest::RestXpcConnector::get(uint64_t a1, void **a2, void **a3, uint64_t *a4, NSObject **a5, uint64_t a6)
{
  v6 = a4[1];
  v7[0] = *a4;
  v7[1] = v6;
  *a4 = 0;
  a4[1] = 0;
  ctu::rest::RestXpcConnector::send_with_reply(a1, "get", a2, a3, v7, a5, a6);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1A9146C10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::rest::RestXpcConnector::get(uint64_t a1, void **a2, uint64_t *a3, NSObject **a4, uint64_t a5)
{
  v10 = xpc_null_create();
  v11 = a3[1];
  v12[0] = *a3;
  v12[1] = v11;
  v13 = v10;
  *a3 = 0;
  a3[1] = 0;
  ctu::rest::RestXpcConnector::send_with_reply(a1, "get", a2, &v13, v12, a4, a5);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v10);
}

void sub_1A9146CCC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

void ctu::rest::RestXpcConnector::handleMessage(uint64_t a1, void *a2)
{
  if (((*(**(a1 + 56) + 16))(*(a1 + 56)) & 1) == 0)
  {
    v4 = *(a1 + 64);
    v6 = *(a1 + 56);
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = ctu::rest::RestConnector::visitIfNotifyMessage<std::shared_ptr<ctu::rest::RestConnectorDelegateBase>>(a2, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if ((v5 & 1) == 0 && (ctu::rest::RestXpcConnector::visitIfGetMessage<ctu::rest::RestXpcConnector*>(a2, a1) & 1) == 0)
    {
      ctu::rest::RestXpcConnector::handlePingOperation(a1, a2);
    }
  }
}

void sub_1A9146DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::rest::RestXpcConnector::visitIfGetMessage<ctu::rest::RestXpcConnector*>(void *a1, uint64_t a2)
{
  v11 = a1;
  v12 = "o";
  xpc::dict::object_proxy::operator xpc::object(&v11, object);
  v5 = ctu::rest::asOperation(object, v4);
  xpc_release(object[0]);
  if (v5 != 2)
  {
    return 0;
  }

  v11 = a1;
  v12 = "r";
  xpc::dict::object_proxy::operator xpc::object(&v11, &v10);
  object[0] = a1;
  object[1] = "v";
  xpc::dict::object_proxy::operator xpc::object(object, &v9);
  Message = ctu::rest::RestXpcConnector::handleGetMessage(a2, a1, &v10, &v9);
  xpc_release(v9);
  xpc_release(v10);
  return Message;
}

void sub_1A9146E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

BOOL ctu::rest::RestXpcConnector::handlePingOperation(xpc_connection_t *this, const xpc::dict *a2)
{
  message[0] = a2;
  message[1] = "o";
  xpc::dict::object_proxy::operator xpc::object(message, &object);
  v5 = ctu::rest::asOperation(&object, v4);
  xpc_release(object);
  if (v5 != 6)
  {
    return 0;
  }

  message[0] = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createReply(a2, message);
  v6 = MEMORY[0x1AC581B70](message[0]);
  v7 = v6 == MEMORY[0x1E69E9E80];
  if (v6 == MEMORY[0x1E69E9E80])
  {
    xpc_connection_send_message(this[9], message[0]);
  }

  xpc_release(message[0]);
  return v7;
}

uint64_t ctu::rest::RestXpcConnector::handleGetMessage(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  v7 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v13 = 0;
  v11 = &unk_1F1CB5500;
  v12 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v13 = &v11;
  v8 = (*(*v6 + 24))(v6, a3, a4, &v11);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v11);
  xpc_release(v7);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1A91470D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *ctu::rest::RestDispatchConnector::create@<X0>(uint64_t *a1@<X8>)
{
  v3 = operator new(0x58uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_1F1CB6018;
  v3[3] = &unk_1F1CB6090;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v3[10] = 0;

  return std::shared_ptr<ctu::rest::RestDispatchConnector>::shared_ptr[abi:ne200100]<ctu::rest::RestDispatchConnector,0>(a1, v3);
}

double ctu::rest::RestDispatchConnector::RestDispatchConnector(ctu::rest::RestDispatchConnector *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F1CB6018;
  *(this + 3) = &unk_1F1CB6090;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F1CB6018;
  *(this + 3) = &unk_1F1CB6090;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

void ctu::rest::RestDispatchConnector::~RestDispatchConnector(void **this)
{
  ctu::rest::RestDispatchConnector::disconnect(this);
  v2 = this[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[8];
  this[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[7];
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  ctu::rest::RestDispatchConnector::~RestDispatchConnector(this);

  operator delete(v1);
}

uint64_t ctu::rest::RestDispatchConnector::disconnect(ctu::rest::RestDispatchConnector *this)
{
  result = *(this + 9);
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  v3 = *(this + 8);
  if (v3)
  {
    object = xpc_null_create();
    (*(*v3 + 32))(v3, this + 24, &object);
    xpc_release(object);
    object = 0;
    result = *(this + 8);
    *(this + 8) = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void non-virtual thunk toctu::rest::RestDispatchConnector::~RestDispatchConnector(void **this)
{
  ctu::rest::RestDispatchConnector::~RestDispatchConnector(this - 3);
}

{
  ctu::rest::RestDispatchConnector::~RestDispatchConnector(this - 3);

  operator delete(v1);
}

void ctu::rest::RestDispatchConnector::flush(ctu::rest::RestDispatchConnector *this, const group *a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v5 = global_queue;
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v6 = xpc_string_create("");
  v10 = v6;
  if (!v6)
  {
    v6 = xpc_null_create();
    v10 = v6;
  }

  v7 = xpc_string_create("");
  v9 = v7;
  if (!v7)
  {
    v7 = xpc_null_create();
    v9 = v7;
  }

  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

  v12[0] = &unk_1F1CB99E8;
  v12[1] = gr_name;
  v12[3] = v12;
  ctu::rest::RestDispatchConnector::send_with_reply(this, "ping", &v10, &v9, &v11, v12);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v12);
  xpc_release(v7);
  xpc_release(v6);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A91475A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

dispatch_object_t *ctu::rest::RestDispatchConnector::flush(dispatch::group const&)const::$_0::~$_0(dispatch_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

uint64_t ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)const::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

uint64_t ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)const::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void ctu::rest::RestDispatchConnector::get(uint64_t a1, void **a2, std::__shared_weak_count **a3, NSObject **a4, uint64_t a5)
{
  v10 = xpc_null_create();
  v11 = a3[1];
  v12[0] = *a3;
  v12[1] = v11;
  v13 = v10;
  *a3 = 0;
  a3[1] = 0;
  ctu::rest::RestDispatchConnector::send_with_reply(a1, "get", a2, &v13, v12, a4, a5);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v10);
}

void sub_1A91477BC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)const::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void **ctu::rest::XpcConnectorServer::XpcConnectorServer(void **this)
{
  v2 = xpc_null_create();
  v4 = v2;
  ctu::XpcServerHelper::XpcServerHelper(this, &v4);
  xpc_release(v2);
  return this;
}

void std::__shared_ptr_emplace<ctu::rest::createAutoReplyValue(xpc::dict const&)::AutoReplyHelper,std::allocator<ctu::rest::createAutoReplyValue(xpc::dict const&)::AutoReplyHelper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::rest::createAutoReplyValue(xpc::dict const&)::AutoReplyHelper,std::allocator<ctu::rest::createAutoReplyValue(xpc::dict const&)::AutoReplyHelper>>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if (v3 && MEMORY[0x1AC581B70](*(a1 + 24)) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (MEMORY[0x1AC581B70](*v2) != MEMORY[0x1E69E9ED0])
  {
    ctu::rest::updateReplyValue(a1 + 40, v2);
  }

  xpc_connection_send_message(*(a1 + 32), *(a1 + 40));
  xpc_release(v3);
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  xpc_release(*(a1 + 24));
  *v2 = 0;
}

void std::__shared_ptr_emplace<ctu::rest::createAutoReplyWithAction(std::function<void ()(xpc::object)> &&)::AutoReplier,std::allocator<std::function<void ()(xpc::object)> &&>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *std::shared_ptr<ctu::rest::RestXpcConnector>::shared_ptr[abi:ne200100]<ctu::rest::RestXpcConnector,0>(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F1CB4B70;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  std::shared_ptr<ctu::rest::RestXpcConnector>::__enable_weak_this[abi:ne200100]<ctu::rest::RestXpcConnector,ctu::rest::RestXpcConnector,0>(a1, v5, a2);
  return a1;
}

void sub_1A9147ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    ctu::rest::RestXpcConnector::~RestXpcConnector(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<ctu::rest::RestXpcConnector>::__enable_weak_this[abi:ne200100]<ctu::rest::RestXpcConnector,ctu::rest::RestXpcConnector,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<ctu::rest::RestXpcConnector *,std::shared_ptr<ctu::rest::RestXpcConnector>::__shared_ptr_default_delete<ctu::rest::RestXpcConnector,ctu::rest::RestXpcConnector>,std::allocator<ctu::rest::RestXpcConnector>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::rest::RestXpcConnector *,std::shared_ptr<ctu::rest::RestXpcConnector>::__shared_ptr_default_delete<ctu::rest::RestXpcConnector,ctu::rest::RestXpcConnector>,std::allocator<ctu::rest::RestXpcConnector>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ctu::rest::RestXpcConnector::~RestXpcConnector(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::rest::RestXpcConnector *,std::shared_ptr<ctu::rest::RestXpcConnector>::__shared_ptr_default_delete<ctu::rest::RestXpcConnector,ctu::rest::RestXpcConnector>,std::allocator<ctu::rest::RestXpcConnector>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F1CB5500;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::~__func(xpc_object_t *a1)
{
  *a1 = &unk_1F1CB5500;
  xpc_release(a1[1]);

  operator delete(a1);
}

void *std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F1CB5500;
  v2[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v2[1] = xpc_null_create();
  }

  return v2;
}

xpc_object_t std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F1CB5500;
  a2[1] = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  a2[1] = result;
  return result;
}

void std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::destroy_deallocate(xpc_object_t *a1)
{
  std::__function::__alloc_func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v5 = *a2;
  *a2 = xpc_null_create();
  message = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createReplyWithValue((a1 + 8), &v5, &message);
  if (MEMORY[0x1AC581B70](message) == MEMORY[0x1E69E9E80])
  {
    remote_connection = xpc_dictionary_get_remote_connection(*(a1 + 8));
    if (remote_connection)
    {
      xpc_connection_send_message(remote_connection, message);
    }
  }

  xpc_release(message);
  xpc_release(v3);
}

void sub_1A9147E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0,std::allocator<ctu::rest::RestXpcConnector::handleGetMessage(xpc::dict const&,xpc::object const&,xpc::object const&)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::shared_ptr<ctu::rest::RestDispatchConnector>::shared_ptr[abi:ne200100]<ctu::rest::RestDispatchConnector,0>(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F1CB4B38;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  std::shared_ptr<ctu::rest::RestXpcConnector>::__enable_weak_this[abi:ne200100]<ctu::rest::RestXpcConnector,ctu::rest::RestXpcConnector,0>(a1, v5, a2);
  return a1;
}

void sub_1A9147F70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    ctu::rest::RestDispatchConnector::~RestDispatchConnector(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<ctu::rest::RestDispatchConnector *,std::shared_ptr<ctu::rest::RestDispatchConnector>::__shared_ptr_default_delete<ctu::rest::RestDispatchConnector,ctu::rest::RestDispatchConnector>,std::allocator<ctu::rest::RestDispatchConnector>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::rest::RestDispatchConnector *,std::shared_ptr<ctu::rest::RestDispatchConnector>::__shared_ptr_default_delete<ctu::rest::RestDispatchConnector,ctu::rest::RestDispatchConnector>,std::allocator<ctu::rest::RestDispatchConnector>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ctu::rest::RestDispatchConnector::~RestDispatchConnector(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::rest::RestDispatchConnector *,std::shared_ptr<ctu::rest::RestDispatchConnector>::__shared_ptr_default_delete<ctu::rest::RestDispatchConnector,ctu::rest::RestDispatchConnector>,std::allocator<ctu::rest::RestDispatchConnector>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB99E8;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::~__func(void *__p)
{
  *__p = &unk_1F1CB99E8;
  v2 = __p[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete(__p);
}

void *std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F1CB99E8;
  v2[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_group_enter(v4);
    }
  }

  return v2;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F1CB99E8;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v4 = a2[1];
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::destroy_deallocate(NSObject **a1)
{
  std::__function::__alloc_func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  *a2 = xpc_null_create();
  xpc_release(v2);
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0,std::allocator<ctu::rest::RestDispatchConnector::flush(dispatch::group const&)::$_0>,void ()(xpc::object)>::destroy[abi:ne200100](NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *a1;
    if (*a1)
    {

      dispatch_release(v3);
    }
  }
}

void dispatch::async<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_1>(dispatch_queue_s *,std::unique_ptr<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_1,std::default_delete<std::unique_ptr>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  object = MEMORY[0x1E69E9E20];
  xpc_retain(MEMORY[0x1E69E9E20]);
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &object);
  xpc_release(object);
  v3 = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1);
  operator delete(v3);
}

void sub_1A9148360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::default_delete<std::function<void ()(xpc::object)> &>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F1CB9A68;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB9A68;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 2);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 1));

  operator delete(a1);
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1CB9A68;
  v4 = *(a1 + 8);
  a2[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a2[1] = xpc_null_create();
  }

  v5 = *(a1 + 16);
  a2[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((a2 + 3), a1 + 24);
}

void sub_1A91484D0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc::dict::~dict(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB9AE8;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB9AE8;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F1CB9AE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((a2 + 3), a1 + 24);
}

void sub_1A9148698(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::send_with_reply(char const*,xpc::object const&,xpc::object const&,std::weak_ptr<void const>,dispatch::queue const&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &&>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F1CB9B68;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB9B68;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 2);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 1));

  operator delete(a1);
}

void *std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_1F1CB9B68;
  v3 = *(a1 + 8);
  v2[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v2[1] = xpc_null_create();
  }

  v4 = *(a1 + 16);
  v2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 3), a1 + 24);
  return v2;
}

void sub_1A9148860(_Unwind_Exception *a1)
{
  v4 = v1[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc::dict::~dict(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1CB9B68;
  v4 = *(a1 + 8);
  a2[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a2[1] = xpc_null_create();
  }

  v5 = *(a1 + 16);
  a2[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((a2 + 3), a1 + 24);
}

void sub_1A9148910(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc::dict::~dict(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::rest::RestDispatchConnector::handleMessageWithReply(xpc::dict,dispatch::queue const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A9148B50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1A914919C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  operator delete(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<ctu::Http::HttpResponse>::reset[abi:ne200100]<ctu::Http::HttpResponseConcrete,0>(void *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F1CB4BE0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  v5 = a1[1];
  *a1 = a2;
  a1[1] = v4;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1A9149240(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A91494A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  operator delete(v14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void sub_1A91495EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A91496EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A9149B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A9149CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SessionTaskContext *,std::shared_ptr<SessionTaskContext>::__shared_ptr_default_delete<SessionTaskContext,SessionTaskContext>,std::allocator<SessionTaskContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SessionTaskContext *,std::shared_ptr<SessionTaskContext>::__shared_ptr_default_delete<SessionTaskContext,SessionTaskContext>,std::allocator<SessionTaskContext>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    SessionTaskContext::~SessionTaskContext(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<SessionTaskContext *,std::shared_ptr<SessionTaskContext>::__shared_ptr_default_delete<SessionTaskContext,SessionTaskContext>,std::allocator<SessionTaskContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void SessionTaskContext::~SessionTaskContext(SessionTaskContext *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<ctu::Http::HttpResponseConcrete *,std::shared_ptr<ctu::Http::HttpResponse>::__shared_ptr_default_delete<ctu::Http::HttpResponse,ctu::Http::HttpResponseConcrete>,std::allocator<ctu::Http::HttpResponseConcrete>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::Http::HttpResponseConcrete *,std::shared_ptr<ctu::Http::HttpResponse>::__shared_ptr_default_delete<ctu::Http::HttpResponse,ctu::Http::HttpResponseConcrete>,std::allocator<ctu::Http::HttpResponseConcrete>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::Http::HttpResponseConcrete *,std::shared_ptr<ctu::Http::HttpResponse>::__shared_ptr_default_delete<ctu::Http::HttpResponse,ctu::Http::HttpResponseConcrete>,std::allocator<ctu::Http::HttpResponseConcrete>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL ctu::starts_with(const void *a1, size_t a2, const void *a3, size_t a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a4)
  {
    return memcmp(a1, a3, a4) == 0;
  }

  return 1;
}

BOOL ctu::ends_with(uint64_t a1, size_t a2, const void *a3, size_t a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a4)
  {
    return memcmp((a1 + a2 - a4), a3, a4) == 0;
  }

  return 1;
}

double ctu::partition@<D0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v18 = a3;
  v19 = a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0;
  v8 = ctu::llvm::StringRef::find(v20, a3, a4, 0);
  if (v8 == -1)
  {
    ctu::llvm::StringRef::operator std::string(v20, &v16);
    result = *&v16;
    *a5 = v16;
    *(a5 + 16) = v17;
  }

  else
  {
    v9 = v8;
    if (v8 >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v8;
    }

    v14 = a1;
    v15 = v10;
    ctu::llvm::StringRef::operator std::string(&v14, &v16);
    *a5 = v16;
    *(a5 + 16) = v17;
    ctu::llvm::StringRef::operator std::string(&v18, &v16);
    v11 = v19;
    *(a5 + 24) = v16;
    *(a5 + 40) = v17;
    v12 = (v11 + v9);
    if (v12 >= a2)
    {
      v12 = a2;
    }

    v14 = &v12[a1];
    v15 = (a2 - v12);
    ctu::llvm::StringRef::operator std::string(&v14, &v16);
    result = *&v16;
    *(a5 + 48) = v16;
    *(a5 + 64) = v17;
  }

  return result;
}

uint64_t ctu::split_any@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  v31[0] = a1;
  v31[1] = a2;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  first_not_of = ctu::llvm::StringRef::find_first_not_of(v31, a3, a4, 0);
  result = ctu::llvm::StringRef::find_first_of(v31, a3, a4, first_not_of);
  if ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v12 = result;
    v13 = 0;
    do
    {
      if (v12 == -1)
      {
        v14 = a2;
      }

      else
      {
        v14 = v12;
      }

      v15 = v14 - first_not_of;
      v16 = a1 + first_not_of;
      v17 = a5[2];
      if (v13 >= v17)
      {
        v18 = *a5;
        v19 = v13 - *a5;
        v20 = v19 >> 4;
        v21 = (v19 >> 4) + 1;
        if (v21 >> 60)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v22 = v17 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        v23 = v22 >= 0x7FFFFFFFFFFFFFF0;
        v24 = 0xFFFFFFFFFFFFFFFLL;
        if (!v23)
        {
          v24 = v21;
        }

        if (v24)
        {
          v25 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestResourceConnection>>>(a5, v24);
          v24 = v26;
          v18 = *a5;
          v19 = a5[1] - *a5;
        }

        else
        {
          v25 = 0;
        }

        v27 = &v25[16 * v20];
        v28 = &v25[16 * v24];
        *v27 = v16;
        *(v27 + 1) = v15;
        v13 = v27 + 16;
        v29 = &v27[-16 * (v19 >> 4)];
        memcpy(v29, v18, v19);
        v30 = *a5;
        *a5 = v29;
        a5[1] = v13;
        a5[2] = v28;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v13 = v16;
        *(v13 + 1) = v15;
        v13 += 16;
      }

      a5[1] = v13;
      first_not_of = ctu::llvm::StringRef::find_first_not_of(v31, a3, a4, v12);
      result = ctu::llvm::StringRef::find_first_of(v31, a3, a4, first_not_of);
      v12 = result;
    }

    while ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1A914A264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::split_any_copy@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v26 = a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  first_not_of = ctu::llvm::StringRef::find_first_not_of(&v25, a3, a4, 0);
  result = ctu::llvm::StringRef::find_first_of(&v25, a3, a4, first_not_of);
  if ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = (v10 - first_not_of);
      if (first_not_of >= v26)
      {
        v13 = v26;
      }

      else
      {
        v13 = first_not_of;
      }

      if (v12 >= v26 - v13)
      {
        v12 = (v26 - v13);
      }

      v24[0] = (v25 + v13);
      v24[1] = v12;
      v14 = *(a5 + 16);
      if (v11 >= v14)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a5) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a5) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        v27.__end_cap_.__value_ = a5;
        if (v18)
        {
          v19 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a5, v18);
        }

        else
        {
          v19 = 0;
        }

        v27.__first_ = v19;
        v27.__begin_ = v19 + v15;
        v27.__end_ = v27.__begin_;
        v27.__end_cap_.__value_ = &v19[v18];
        ctu::llvm::StringRef::operator std::string(v24, v27.__begin_);
        v11 = v27.__end_ + 1;
        v20 = *(a5 + 8) - *a5;
        v21 = v27.__begin_ - v20;
        memcpy(v27.__begin_ - v20, *a5, v20);
        v22 = *a5;
        *a5 = v21;
        *(a5 + 8) = v11;
        v23 = *(a5 + 16);
        *(a5 + 16) = v27.__end_cap_.__value_;
        v27.__end_ = v22;
        v27.__end_cap_.__value_ = v23;
        v27.__first_ = v22;
        v27.__begin_ = v22;
        std::__split_buffer<std::string>::~__split_buffer(&v27);
      }

      else
      {
        ctu::llvm::StringRef::operator std::string(v24, v11++);
      }

      *(a5 + 8) = v11;
      first_not_of = ctu::llvm::StringRef::find_first_not_of(&v25, a3, a4, v10);
      result = ctu::llvm::StringRef::find_first_of(&v25, a3, a4, first_not_of);
      v10 = result;
    }

    while ((first_not_of & result) != 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1A914A474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__split_buffer<std::string> *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ctu::py_escape(unsigned __int8 *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = a1[23];
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 1);
  }

  v7 = 2;
  if (!a2)
  {
    v7 = 0;
  }

  std::string::reserve(a3, v6 + v7);
  if (a2)
  {
    std::string::push_back(a3, 34);
  }

  v8 = a1[23];
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v10)
  {
    v11 = MEMORY[0x1E69E9830];
    do
    {
      v12 = *v9;
      if (v12 > 0x21)
      {
        switch(v12)
        {
          case '""':
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 34;
            goto LABEL_32;
          case '\'':
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 39;
            goto LABEL_32;
          case '\\':
            LOBYTE(v13) = 92;
            std::string::push_back(a3, 92);
            goto LABEL_32;
        }
      }

      else
      {
        switch(v12)
        {
          case 9u:
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 116;
            goto LABEL_32;
          case 0xAu:
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 110;
            goto LABEL_32;
          case 0xDu:
            std::string::push_back(a3, 92);
            LOBYTE(v13) = 114;
            goto LABEL_32;
        }
      }

      v13 = v12;
      if ((v13 & 0x80000000) != 0)
      {
        v14 = __maskrune(v12, 0x40000uLL);
      }

      else
      {
        v14 = *(v11 + 4 * v13 + 60) & 0x40000;
      }

      if (!v14)
      {
        std::string::push_back(a3, 92);
        std::string::push_back(a3, 120);
        ctu::hex0(v13, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_33;
      }

LABEL_32:
      std::string::push_back(a3, v13);
LABEL_33:
      ++v9;
      --v10;
    }

    while (v10);
  }

  if (a2)
  {
    std::string::push_back(a3, 34);
  }
}

void sub_1A914A6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void ctu::replace_copy(char *__s@<X1>, uint64_t a2@<X0>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X8>)
{
  v10 = a6;
  memset(a6, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a6, *a2, *(a2 + 8));
  }

  else
  {
    *&a6->__r_.__value_.__l.__data_ = *a2;
    a6->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  size = v10->__r_.__value_.__l.__size_;
  if ((v10->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v10->__r_.__value_.__r.__words[0];
    v12 = size;
  }

  for (; v12; --v12)
  {
    v13 = memchr(__s, v10->__r_.__value_.__s.__data_[0], a3);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &__s[a3];
    }

    v15 = v14 - __s;
    if (v14 != &__s[a3] && v15 < a5)
    {
      v10->__r_.__value_.__s.__data_[0] = *(a4 + v15);
    }

    v10 = (v10 + 1);
  }
}

_BYTE *ctu::replace(_BYTE *result, char *__s, size_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[23];
  if (v5 >= 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if (v5 >= 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  if (v7)
  {
    v11 = &__s[a3];
    do
    {
      result = memchr(__s, *v6, a3);
      if (result)
      {
        v13 = result;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13 - __s;
      if (v13 != v11 && v14 < a5)
      {
        *v6 = *(a4 + v14);
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t std::tuple<std::string,std::string,std::string>::~tuple(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ctu::XpcJetsamAssertion::create_default_global(std::__shared_weak_count_vtbl **a1@<X8>)
{
  v3 = operator new(0x30uLL);
  v3->~__shared_weak_count = 0;
  v3->~__shared_weak_count_0 = 0;
  LODWORD(v3->__on_zero_shared) = 0;
  v3->__on_zero_shared_weak = 0;
  v3[1].~__shared_weak_count = 0;
  v3->__get_deleter = 0;
  *a1 = v3;
  v4 = operator new(0x20uLL);
  v4->__shared_weak_owners_ = 0;
  v4->__shared_owners_ = 0;
  v4->__vftable = &unk_1F1CB4CF8;
  v4[1].__vftable = v3;
  a1[1] = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v3->~__shared_weak_count = v3;
  v3->~__shared_weak_count_0 = v4;

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

uint64_t ctu::XpcJetsamAssertion::XpcJetsamAssertion(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

void ctu::XpcJetsamAssertion::createActivity(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  if (!v5 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v10 = operator new(0x20uLL);
  v11 = *a2;
  v20[0] = *(a2 + 8);
  *(v20 + 7) = *(a2 + 15);
  v12 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v20[0];
  *v10 = v11;
  *(v10 + 1) = v13;
  *(v10 + 15) = *(v20 + 7);
  v10[23] = v12;
  if ((v12 & 0x80000000) == 0 || (v14 = v11) != 0)
  {
    v14 = os_transaction_create();
  }

  *(v10 + 3) = v14;
  v18 = v7;
  v19 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x30uLL);
  v15->__shared_weak_owners_ = 0;
  v15->__vftable = &unk_1F1CB9BE8;
  v15->__shared_owners_ = 0;
  v15[1].__vftable = v10;
  v15[1].__shared_owners_ = v7;
  v15[1].__shared_weak_owners_ = v9;
  *&v17 = v10;
  *(&v17 + 1) = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::XpcJetsamAssertion::addActivity(a1, &v17);
  std::__shared_weak_count::__release_weak(v15);
  *a3 = v10;
  a3[1] = v15;
  v16 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_weak(v9);
}

void sub_1A914AB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  operator delete(v13);
  std::__shared_weak_count::__release_weak(v12);
  _Unwind_Resume(a1);
}

void ctu::XpcJetsamAssertion::addActivity(uint64_t a1, __int128 *a2)
{
  v17 = *a2;
  v3 = *(a2 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(((*(a2 + 8) >> 64) + 16), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 >= v5)
  {
    v7 = *(a1 + 24);
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(16 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v9];
    *v14 = v17;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a1 + 24);
      v8 = *(a1 + 32) - v7;
      v9 = v8 >> 4;
    }

    v15 = &v13[16 * v12];
    v6 = v14 + 16;
    v16 = &v14[-16 * v9];
    memcpy(v16, v7, v8);
    *(a1 + 24) = v16;
    *(a1 + 32) = v6;
    *(a1 + 40) = v15;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v4 = v17;
    *(v4 + 1) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v4 + 16;
  }

  *(a1 + 32) = v6;
  os_unfair_lock_unlock((a1 + 16));
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ctu::XpcJetsamAssertion::tidyUp(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  v3 = *&this[6]._os_unfair_lock_opaque;
  v2 = *&this[8]._os_unfair_lock_opaque;
  if (v3 == v2)
  {
    v7 = *&this[6]._os_unfair_lock_opaque;
  }

  else
  {
    v4 = v3 + 2;
    while (1)
    {
      v5 = *(v4 - 1);
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v6 = v4 == v2;
      v4 += 2;
      if (v6)
      {
        goto LABEL_25;
      }
    }

    v7 = v4 - 2;
    if (v4 - 2 != v2 && v4 != v2)
    {
      do
      {
        v8 = v4[1];
        if (v8 && *(v8 + 8) != -1)
        {
          v9 = *v4;
          *v4 = 0;
          v4[1] = 0;
          v10 = v7[1];
          *v7 = v9;
          v7[1] = v8;
          if (v10)
          {
            std::__shared_weak_count::__release_weak(v10);
          }

          v7 += 2;
        }

        v4 += 2;
      }

      while (v4 != v2);
      v11 = *&this[6]._os_unfair_lock_opaque;
      v2 = *&this[8]._os_unfair_lock_opaque;
    }
  }

  if (v7 != v2)
  {
    while (v2 != v7)
    {
      v12 = *(v2 - 1);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v2 -= 2;
    }

    *&this[8]._os_unfair_lock_opaque = v7;
  }

LABEL_25:

  os_unfair_lock_unlock(this + 4);
}

uint64_t ctu::XpcJetsamAssertion::getAssertionCount(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  v2 = (*&this[8]._os_unfair_lock_opaque - *&this[6]._os_unfair_lock_opaque) >> 4;
  os_unfair_lock_unlock(this + 4);
  return v2;
}

void ctu::XpcJetsamAssertion::dumpState(os_unfair_lock_s *this@<X0>, char *a2@<X8>)
{
  os_unfair_lock_lock(this + 4);
  ctu::XpcJetsamAssertion::dumpState_sync(this, a2);

  os_unfair_lock_unlock(this + 4);
}

void ctu::XpcJetsamAssertion::dumpState_sync(ctu::XpcJetsamAssertion *this@<X0>, char *a2@<X8>)
{
  v2 = a2;
  v3 = *(this + 3);
  v4 = *(this + 4);
  memset(&__p, 0, sizeof(__p));
  if (v3 == v4)
  {
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else
  {
    v5 = v3[1];
    if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
    {
      v7 = v6;
      v8 = *v3;
      if (*v3)
      {
        if (*(v8 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, *v8, *(v8 + 1));
        }

        else
        {
          v9 = *v8;
          v23.__r_.__value_.__r.__words[2] = *(v8 + 2);
          *&v23.__r_.__value_.__l.__data_ = v9;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
        *(&v23.__r_.__value_.__s + 23) = 9;
        strcpy(&v23, "<expired>");
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v10 = 0;
      *(&v23.__r_.__value_.__s + 23) = 9;
      strcpy(&v23, "<expired>");
    }

    __p = v23;
    for (i = v3 + 2; i != v4; i += 2)
    {
      *(&v23.__r_.__value_.__s + 23) = 1;
      LOWORD(v23.__r_.__value_.__l.__data_) = 44;
      std::string::append(&__p, &v23, 1uLL);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v12 = i[1];
      if (v12 && (v13 = std::__shared_weak_count::lock(v12)) != 0)
      {
        v14 = v13;
        v15 = *i;
        if (*i)
        {
          ++v10;
          if (*(v15 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v23, *v15, *(v15 + 1));
          }

          else
          {
            v16 = *v15;
            v23.__r_.__value_.__r.__words[2] = *(v15 + 2);
            *&v23.__r_.__value_.__l.__data_ = v16;
          }
        }

        else
        {
          *(&v23.__r_.__value_.__s + 23) = 9;
          strcpy(&v23, "<expired>");
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        v17 = v23.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v23.__r_.__value_.__s + 23) = 9;
        strcpy(&v23, "<expired>");
        v17 = 0x646572697078653CLL;
        v18 = 9;
      }

      if ((v18 & 0x80u) == 0)
      {
        v19 = &v23;
      }

      else
      {
        v19 = v17;
      }

      if ((v18 & 0x80u) == 0)
      {
        size = v18;
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v19, size);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    v2 = a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    if (v10)
    {
      std::operator+<char>();
      *a2 = v23;
      goto LABEL_38;
    }
  }

  v2[23] = 13;
  strcpy(v2, "No Assertions");
LABEL_38:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A914B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ctu::XpcJetsamAssertion *,std::shared_ptr<ctu::XpcJetsamAssertion>::__shared_ptr_default_delete<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion>,std::allocator<ctu::XpcJetsamAssertion>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::XpcJetsamAssertion *,std::shared_ptr<ctu::XpcJetsamAssertion>::__shared_ptr_default_delete<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion>,std::allocator<ctu::XpcJetsamAssertion>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<ctu::XpcJetsamAssertion>::operator()[abi:ne200100](void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      v3 = __p[4];
      v4 = __p[3];
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5)
          {
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = __p[3];
      }

      __p[4] = v2;
      operator delete(v4);
    }

    v6 = __p[1];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(__p);
  }
}

void ctu::XpcJetsamAssertion::createActivity(std::string)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5 && *a1)
    {
      ctu::XpcJetsamAssertion::tidyUp(*a1);
    }
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    ctu::SharedRef<os_transaction_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_transaction_s>::~SharedRef((a2 + 24));
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete(a2);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__shared_ptr_pointer<ctu::XpcJetsamAssertion::Activity *,ctu::XpcJetsamAssertion::createActivity(std::string)::$_0,std::allocator<ctu::XpcJetsamAssertion::Activity>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{
  this->__vftable = &unk_1F1CB9BE8;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

{
  this->__vftable = &unk_1F1CB9BE8;
  shared_weak_owners = this[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete(v3);
}

void std::__shared_ptr_pointer<ctu::XpcJetsamAssertion::Activity *,ctu::XpcJetsamAssertion::createActivity(std::string)::$_0,std::allocator<ctu::XpcJetsamAssertion::Activity>>::__on_zero_shared(void *a1)
{
  v2 = a1[3];
  v3 = a1[5];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[4];
      if (v5)
      {
        ctu::XpcJetsamAssertion::tidyUp(v5);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    ctu::SharedRef<os_transaction_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_transaction_s>::~SharedRef((v2 + 24));
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = a1[5];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::XpcJetsamAssertion::Activity *,ctu::XpcJetsamAssertion::createActivity(std::string)::$_0,std::allocator<ctu::XpcJetsamAssertion::Activity>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void **ctu::SharedRef<os_transaction_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_transaction_s>::~SharedRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_release(v2);
  }

  return a1;
}

void ctu::ConnectionRestResource::~ConnectionRestResource(ctu::ConnectionRestResource *this)
{
  *this = &unk_1F1CB6AB0;
  boost::container::vector<std::shared_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB6AB0;
  boost::container::vector<std::shared_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB6AB0;
  boost::container::vector<std::shared_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,void>::~vector(this + 1);

  operator delete(this);
}

void ctu::ConnectionRestResource::eraseConnection(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = (v4 + 16 * v3);
  while (v3)
  {
    v6 = v3 >> 1;
    v7 = v4 + 16 * (v3 >> 1);
    v8 = *(v7 + 8);
    v9 = v7 + 16;
    v3 += ~(v3 >> 1);
    if (v8 >= *(a2 + 8))
    {
      v3 = v6;
    }

    else
    {
      v4 = v9;
    }
  }

  if (v4 == v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = (v4 + 16 * (*(a2 + 8) >= *(v4 + 8)));
  }

  if (v4 != v10)
  {
    for (; v10 != v5; v4 += 16)
    {
      v11 = *v10;
      *v10 = 0;
      *(v10 + 1) = 0;
      v12 = *(v4 + 8);
      *v4 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      ++v10;
    }

    v13 = v5 == v4;
    v14 = (v5 - v4) >> 4;
    if (!v13)
    {
      v15 = (v4 + 8);
      v16 = v14;
      do
      {
        if (*v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v15);
        }

        v15 += 2;
        --v16;
      }

      while (v16);
    }

    *(a1 + 16) -= v14;
  }
}

void **ctu::ConnectionRestResource::getAllConnectionsForXpcConnection@<X0>(void **this@<X0>, const xpc::connection *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = this[2];
  if (v4)
  {
    v6 = this[1];
    v7 = 16 * v4;
    do
    {
      this = (*(**v6 + 32))(*v6, *a2);
      if (this)
      {
        v8 = a3[1];
        v9 = a3[2];
        if (v8 >= v9)
        {
          v12 = (v8 - *a3) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v14 = v9 - *a3;
          if (v14 >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          v24[4] = a3;
          if (v15)
          {
            v16 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestResourceConnection>>>(a3, v15);
          }

          else
          {
            v16 = 0;
          }

          v17 = &v16[16 * v12];
          v18 = *v6;
          *v17 = *v6;
          if (*(&v18 + 1))
          {
            atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v19 = &v16[16 * v15];
          v11 = v17 + 16;
          v20 = a3[1] - *a3;
          v21 = &v17[-v20];
          memcpy(&v17[-v20], *a3, v20);
          v22 = *a3;
          *a3 = v21;
          a3[1] = v11;
          v23 = a3[2];
          a3[2] = v19;
          v24[2] = v22;
          v24[3] = v23;
          v24[0] = v22;
          v24[1] = v22;
          this = std::__split_buffer<std::shared_ptr<ctu::RestResourceConnection>>::~__split_buffer(v24);
        }

        else
        {
          v10 = v6[1];
          *v8 = *v6;
          v8[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v8 + 2;
        }

        a3[1] = v11;
      }

      v6 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  return this;
}

uint64_t ctu::ConnectionRestResource::handleMessage(ctu::ConnectionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v6 = *(a3 + 3);
  if (v6 == 1)
  {
    if (**(a3 + 2) == 42)
    {
      (*(*a2 + 16))(&object, a2);
      v9 = ctu::rest::asOperation(&object, v8);
      xpc_release(object);
      if (v9 == 2)
      {
        return (*(*this + 40))(this, a2, a3);
      }

      else
      {
        return 0;
      }
    }

    return 1;
  }

  if (v6)
  {
    return 1;
  }

  return ctu::RestResource::handleMessage(this, a2, a3);
}

uint64_t ctu::ConnectionRestResource::handleRestMessage_GET(ctu::ConnectionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v5 = xpc_array_create(0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v5);
      v6 = v5;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v5 = 0;
  }

  xpc_release(v5);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = 16 * v7;
    do
    {
      v10 = *v8;
      if (*(*v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v13 = xpc_string_create(p_p);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      xpc_array_append_value(v6, v13);
      xpc_release(v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  __p.__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &__p);
  xpc_release(__p.__r_.__value_.__l.__data_);
  xpc_release(v6);
  return 1;
}

void sub_1A914BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  xpc_release(object);
  xpc_release(v14);
  _Unwind_Resume(a1);
}

uint64_t ctu::ConnectionRestResource::handleRestMessage_POP(ctu::ConnectionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  (**a2)(&v5, a2);
  ctu::ConnectionRestResource::eraseConnection(this, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 1;
}

uint64_t ctu::ConnectionRestResource::handleRestMessage_PUSH(ctu::ConnectionRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  (**a2)(&v35, a2);
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = &v5[16 * v4];
  v7 = v36;
  v8 = v5;
  if (v4)
  {
    v8 = *(this + 1);
    v9 = *(this + 2);
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[16 * (v9 >> 1)];
      v12 = *(v11 + 1);
      v13 = v11 + 16;
      v9 += ~(v9 >> 1);
      if (v12 >= v36)
      {
        v9 = v10;
      }

      else
      {
        v8 = v13;
      }
    }

    while (v9);
  }

  if (v8 == v6)
  {
    v14 = v35;
    v37 = v35;
    v38 = v36;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    if (v36 >= *(v8 + 1))
    {
      goto LABEL_45;
    }

    v14 = v35;
    v37 = v35;
    v38 = v36;
    v35 = 0;
    v36 = 0;
    if (*(v8 + 1) <= v7)
    {
      v15 = (v6 - v8) >> 4;
      v5 = v8;
      do
      {
        v16 = v15 >> 1;
        v17 = &v5[16 * (v15 >> 1)];
        v18 = *(v17 + 1);
        v19 = v17 + 16;
        v15 += ~(v15 >> 1);
        if (v18 >= v7)
        {
          v15 = v16;
        }

        else
        {
          v5 = v19;
        }
      }

      while (v15);
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v5 == v8)
  {
    goto LABEL_32;
  }

  v20 = v8 - 16;
  v21 = *(v8 - 1);
  if (v21 < v7)
  {
    v5 = v8;
    goto LABEL_32;
  }

  if (v21 > v7)
  {
    if (v20 != v5)
    {
      v22 = (v20 - v5) >> 4;
      do
      {
        v23 = v22 >> 1;
        v24 = &v5[16 * (v22 >> 1)];
        v25 = *(v24 + 1);
        v26 = v24 + 16;
        v22 += ~(v22 >> 1);
        if (v25 >= v7)
        {
          v22 = v23;
        }

        else
        {
          v5 = v26;
        }
      }

      while (v22);
    }

    if (v5 == v20)
    {
      v5 = v8 - 16;
      goto LABEL_32;
    }

LABEL_29:
    if (*(v5 + 1) <= v7)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (*(this + 3) == v4)
    {
      boost::container::vector<std::shared_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,std::shared_ptr<ctu::RestResourceConnection>*,std::shared_ptr<ctu::RestResourceConnection>>>(&v34, this + 8, v5, &v37);
    }

    else if (v6 == v5)
    {
      *v6 = v14;
      *(v6 + 1) = v7;
      v37 = 0;
      v38 = 0;
      *(this + 2) = v4 + 1;
    }

    else
    {
      v27 = v6 - 16;
      *v6 = *(v6 - 1);
      *(v6 - 1) = 0;
      *(v6 - 2) = 0;
      ++*(this + 2);
      if (v6 - 16 != v5)
      {
        v28 = v6 - 16;
        do
        {
          v29 = *(v28 - 1);
          v28 -= 16;
          *(v27 - 1) = 0;
          *v28 = 0;
          v30 = *(v27 + 1);
          *v27 = v29;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          v27 = v28;
        }

        while (v28 != v5);
      }

      v37 = 0;
      v38 = 0;
      v31 = *(v5 + 1);
      *v5 = v14;
      *(v5 + 1) = v7;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }
  }

LABEL_42:
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v7 = v36;
LABEL_45:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v32 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A914BF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ctu::ConnectionRestResource::pingAllConnections(ctu::ConnectionRestResource *this@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
    dispatch_release(v5);
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::createPingMessage(&object);
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(this + 1);
    v8 = 16 * v6;
    do
    {
      v9 = *v7;
      v13 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v13 = xpc_null_create();
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1174405120;
      v11[2] = ___ZNK3ctu22ConnectionRestResource18pingAllConnectionsEv_block_invoke;
      v11[3] = &__block_descriptor_tmp_27;
      group = v5;
      if (v5)
      {
        dispatch_retain(v5);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      (*(*v9 + 24))(v9, &v13, global_queue, v11);
      xpc_release(v13);
      v13 = 0;
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v7 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  *a2 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  xpc_release(object);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }
}

void sub_1A914C130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, xpc_object_t object, xpc_object_t a16)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  xpc_release(object);
  xpc_release(a16);
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(a1);
}

void *boost::container::vector<std::shared_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::container::vector<std::shared_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::shared_ptr<ctu::RestResourceConnection>>,std::shared_ptr<ctu::RestResourceConnection>*,std::shared_ptr<ctu::RestResourceConnection>>>(void *a1, char *a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = 0x7FFFFFFFFFFFFFFLL;
  v6 = *(a2 + 1) + 1;
  if (0x7FFFFFFFFFFFFFFLL - v4 < v6 - v4)
  {
    goto LABEL_27;
  }

  v7 = v4 >> 61;
  v8 = 8 * v4;
  if (v7 > 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 / 5;
  if (v7)
  {
    v10 = v9;
  }

  if (v10 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v10;
  }

  v11 = v6 <= v5 ? v5 : *(a2 + 1) + 1;
  if (v6 >> 59)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(16 * v11);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 16 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      *v21++ = *v22;
      *v22 = 0;
      v22[1] = 0;
      v22 += 2;
    }

    while (v22 != a3);
  }

  *v21 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  if (v20 != a3)
  {
    v23 = v21 + 1;
    v24 = a3;
    do
    {
      *v23++ = *v24;
      *v24 = 0;
      v24[1] = 0;
      v24 += 2;
    }

    while (v24 != v20);
  }

  if (v19)
  {
    v25 = *(a2 + 1);
    if (v25)
    {
      v26 = (v19 + 8);
      do
      {
        if (*v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v26);
        }

        v26 += 2;
        --v25;
      }

      while (v25);
    }

    operator delete(*a2);
  }

  v27 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v27;
  *(a2 + 2) = v11;
  *a1 = v18 + a3 - v16;
}