void boost::signals2::detail::connection_body_base::~connection_body_base(boost::signals2::detail::connection_body_base *this)
{
  *this = &unk_2A1E41C60;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::connected(uint64_t a1)
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

void sub_2974ADA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void boost::checked_delete<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>(void **__p)
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

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>::dispose(uint64_t a1)
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

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E42C80;
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

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(void)>::~function(void (***result)(void, void, void)))(void, void, void)
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

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
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
      if (v9 == (0x800000029769B15BLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029769B15BLL & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker0<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>,void>::invoke(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (!v1)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v3 = _Block_copy(v1);
  v4 = v3;
  if (!v3)
  {
LABEL_10:
    v16 = 1;
LABEL_11:
    v15 = 0;
    v19[0] = 0;
    goto LABEL_21;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (v7)
  {
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
          v19[0] = v15;
          _Block_release(v14);
        }

        else
        {
          v15 = 0;
          v19[0] = 0;
        }

        _Block_release(v12);
      }

      else
      {
        v15 = 0;
        v19[0] = 0;
      }

      _Block_release(v10);
    }

    else
    {
      v15 = 0;
      v19[0] = 0;
    }

    _Block_release(v8);
  }

  else
  {
    v15 = 0;
    v19[0] = 0;
  }

  _Block_release(v6);
  v16 = 0;
LABEL_21:
  v17 = operator new(0x20uLL);
  *v17 = boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable;
  if (v15)
  {
    v18 = _Block_copy(v15);
  }

  else
  {
    v18 = 0;
  }

  v17[1] = v18;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_365;
  block[4] = v17;
  dispatch_async(v2, block);
  if (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable && (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable & 1) == 0 && boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable[0])
  {
    (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable[0])(v19, v19, 2);
  }

  if ((v16 & 1) == 0)
  {
    _Block_release(v4);
  }
}

void sub_2974AE408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::function<void ()(void)>::~function(va);
  if ((v3 & 1) == 0)
  {
    _Block_release(v2);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v7, "call to empty boost::function");
    v7.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&v7);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1);
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
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(void)>>::manage(void **a1, _WORD *a2, unsigned int a3)
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
      if (v8 == (0x800000029769B199 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029769B199 & 0x7FFFFFFFFFFFFFFFLL)))
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

uint64_t boost::function0<void>::move_assign(uint64_t result, uint64_t a2)
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

void sub_2974AE6D4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function0<void>::~function0(void (***result)(void, void, void)))(void, void, void)
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

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E42DD8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E42DD8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v7 = &unk_2A1E42E28;
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

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E42DD8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<coex::Module::State>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E42E28;
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

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<coex::Module::State>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E42E28;
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

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<coex::Module::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E42E28;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(void **a1)
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

void ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS_2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISF_EENSL_IFvRKNS7_10connectionESD_SE_EEENS7_5mutexEEES3_vJSD_SE_EEEDTcl7connectfp_cvNSI_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSY_S10_E_block_invoke(void *a1, const void **a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = (a1[4] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
    v7 = *a2;
    cf = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *a2;
  cf = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v4(v6, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974AEC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
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

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::connected(uint64_t a1)
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

void sub_2974AF708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void boost::checked_delete<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>(void **__p)
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

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>::dispose(uint64_t a1)
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

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E42F28;
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

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>::~function(void (***result)(void, void, void)))(void, void, void)
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

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
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
      if (v9 == (0x800000029769B6BBLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029769B6BBLL & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker2<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::invoke(uint64_t a1, const void **a2, int a3)
{
  v4 = *a2;
  v24 = *a2;
  *a2 = 0;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (!v5)
  {
    v8 = 0;
LABEL_10:
    v19 = 1;
    *&v25 = 0;
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (!v9)
  {
    v19 = 0;
    *&v25 = 0;
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRetain(v4);
    goto LABEL_23;
  }

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
        v18 = v17;
        if (v17)
        {
          *&v25 = _Block_copy(v17);
          _Block_release(v18);
        }

        else
        {
          *&v25 = 0;
        }

        _Block_release(v16);
      }

      else
      {
        *&v25 = 0;
      }

      _Block_release(v14);
    }

    else
    {
      *&v25 = 0;
    }

    _Block_release(v12);
  }

  else
  {
    *&v25 = 0;
  }

  _Block_release(v10);
  v19 = 0;
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  v20 = operator new(8uLL);
  *v20 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v21 = operator new(4uLL);
  *v21 = a3;
  v22 = operator new(0x20uLL);
  v23 = v22;
  *v22 = 0;
  if (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable)
  {
    *v22 = boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable;
    if (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable)
    {
      *(v22 + 8) = v25;
      *(v22 + 3) = v26;
    }

    else
    {
      (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable[0])(&v25, v22 + 8, 0);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN4coex5SubIdEEEES8_SA__block_invoke;
  block[3] = &__block_descriptor_tmp_383;
  block[4] = v23;
  block[5] = v20;
  block[6] = v21;
  dispatch_async(v6, block);
  if (v4)
  {
    CFRelease(v4);
  }

  if (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable && (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable & 1) == 0 && boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable[0])
  {
    (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable[0])(&v25, &v25, 2);
  }

  if ((v19 & 1) == 0)
  {
    _Block_release(v8);
    v4 = v24;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_2974B0098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void (**a12)(void, void, void))
{
  operator delete(v13);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>::~function(&a12);
  if ((v14 & 1) == 0)
  {
    _Block_release(v12);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN4coex5SubIdEEEES8_SA__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(a1 + 40);
  if (v3)
  {
    CFRetain(v3);
  }

  if (!*v2)
  {
    std::runtime_error::runtime_error(&cf, "call to empty boost::function");
    cf.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&cf);
  }

  v4 = **(a1 + 48);
  v5 = *((*v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  cf.__vftable = v3;
  v5(v2 + 1, &cf, v4);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      if ((v7 & 1) == 0)
      {
        v8 = *v7;
        if (v8)
        {
          v9 = *(a1 + 32);
          v8(v6 + 1, v9 + 1, 2);
          v6 = v9;
        }
      }

      *v6 = 0;
    }

    operator delete(v6);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (*v10)
    {
      CFRelease(*v10);
    }

    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    operator delete(v11);
  }
}

void sub_2974B021C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, std::runtime_error a11)
{
  std::runtime_error::~runtime_error(&a11);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B0238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_2974B0254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
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
      if (v8 == (0x800000029769B72CLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029769B72CLL & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker2<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::invoke(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  cf = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B03C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(uint64_t result, uint64_t a2)
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

void sub_2974B0480(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::~function2(void (***result)(void, void, void)))(void, void, void)
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

void **boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~slot(void **a1)
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

uint64_t ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISA_EENSG_IFvRKNS7_10connectionES9_EEENS7_5mutexEEES3_vJS9_EEEDTcl7connectfp_cvNSD_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FST_SV_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
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

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::connected(uint64_t a1)
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

void sub_2974B1038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void boost::checked_delete<boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>>(void **__p)
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

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>>::dispose(uint64_t a1)
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

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E43140;
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

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(coex::SubId)>::~function(void (***result)(void, void, void)))(void, void, void)
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

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
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
      if (v9 == (0x800000029769BAFCLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029769BAFCLL & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>,void,coex::SubId>::invoke(uint64_t a1, int a2)
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
  v19 = operator new(4uLL);
  *v19 = a2;
  v20 = operator new(0x20uLL);
  *v20 = boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable;
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
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN4coex5SubIdEEEES4__block_invoke;
  block[3] = &__block_descriptor_tmp_389;
  block[4] = v20;
  block[5] = v19;
  dispatch_async(v4, block);
  if (boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable && (boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable & 1) == 0 && boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable[0])
  {
    (boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable[0])(v22, v22, 2);
  }

  if ((v18 & 1) == 0)
  {
    _Block_release(v6);
  }
}

void sub_2974B1948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  boost::function<void ()(coex::SubId)>::~function(&a9);
  if ((v10 & 1) == 0)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN4coex5SubIdEEEES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E420B0;
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

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
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
      if (v8 == (0x800000029769BB46 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029769BB46 & 0x7FFFFFFFFFFFFFFFLL)))
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

uint64_t boost::function1<void,coex::SubId>::move_assign(uint64_t result, uint64_t a2)
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

void sub_2974B1C28(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,coex::SubId>::~function1(void (***result)(void, void, void)))(void, void, void)
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

void **boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>::~slot(void **a1)
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

void ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNSt3__13mapIPKcNS9_4listINS9_4pairIyjEENS9_9allocatorISF_EEEENS9_4lessISC_EENSG_INSE_IKSC_SI_EEEEEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSJ_IiEENS6_8functionISQ_EENSU_IFvRKNS7_10connectionESO_SP_EEENS7_5mutexEEES3_vJSO_SP_EEEDTcl7connectfp_cvNS9_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FS17_S19_E_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = (a1[4] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v12, v13, v8[4], v8 + 4);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v7);
  }

  v4(v6, &v12, a3);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v13[0]);
}

uint64_t *std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 == a2 || (v8 = a2[4], v8 > a3))
  {
    v9 = *a2;
    if (*result == a2)
    {
      v11 = a2;
LABEL_16:
      if (v9)
      {
        v17 = v11;
      }

      else
      {
        v17 = a2;
      }

      if (v9)
      {
        v13 = (v11 + 1);
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

      v5 = v17;
      goto LABEL_36;
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (v11[4] < a3)
    {
      goto LABEL_16;
    }

    v18 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
LABEL_36:
      v22 = operator new(0x40uLL);
      v23 = v22;
      v24 = v22 + 5;
      v25 = a4 + 1;
      v22[4] = *a4;
      v22[5] = (v22 + 5);
      v22[6] = (v22 + 5);
      v22[7] = 0;
      v26 = a4[2];
      if (v26 != v25)
      {
        v27 = 1;
        v28 = v22 + 5;
        do
        {
          v29 = operator new(0x20uLL);
          v29[1] = *(v26 + 16);
          *v29 = v28;
          *(v29 + 1) = v24;
          v28[1] = v29;
          v23[5] = v29;
          v23[7] = v27;
          v26 = *(v26 + 8);
          ++v27;
          v28 = v29;
        }

        while (v26 != v25);
      }

      *v23 = 0;
      v23[1] = 0;
      v23[2] = v5;
      *v13 = v23;
      v30 = **v6;
      if (v30)
      {
        *v6 = v30;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v23);
      ++v6[2];
      return result;
    }

    while (1)
    {
      while (1)
      {
        v5 = v18;
        v19 = v18[4];
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8 >= a3)
    {
      return result;
    }

    v13 = (a2 + 1);
    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
        v5 = v13;
        v14 = v13;
      }

      while (v12);
    }

    else
    {
      v14 = a2;
      do
      {
        v20 = v14;
        v14 = v14[2];
      }

      while (*v14 != v20);
    }

    if (v14 == v7)
    {
      goto LABEL_36;
    }

    if (v14[4] > a3)
    {
      goto LABEL_36;
    }

    v21 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
      goto LABEL_36;
    }

    while (1)
    {
      while (1)
      {
        v5 = v21;
        v31 = v21[4];
        if (v31 <= a3)
        {
          break;
        }

        v21 = *v21;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v31 >= a3)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
LABEL_30:
        v13 = v5 + 1;
        goto LABEL_36;
      }
    }
  }

  return result;
}

void sub_2974B2094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(v2);
  std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
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

void std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a1[1]);
    if (a1[7])
    {
      v2 = a1[6];
      v3 = *(a1[5] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[7] = 0;
      if (v2 != a1 + 5)
      {
        do
        {
          v5 = v2[1];
          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 5);
      }
    }

    operator delete(a1);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
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

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::connected(uint64_t a1)
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

void sub_2974B2C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void boost::checked_delete<boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>(void **__p)
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

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>::dispose(uint64_t a1)
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

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E43358;
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

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>::~function(void (***result)(void, void, void)))(void, void, void)
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

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
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
      if (v9 == (0x800000029769C0BALL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029769C0BALL & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker2<ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::invoke(uint64_t a1, void *a2, int a3)
{
  v4 = a2 + 1;
  v5 = a2[1];
  v33 = *a2;
  v34 = v5;
  if (a2[2])
  {
    v5[2] = &v34;
    *a2 = v4;
    *v4 = 0;
    a2[2] = 0;
    v7 = *a1;
    v6 = *(a1 + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v33 = &v34;
  v7 = *a1;
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = _Block_copy(v6);
  v9 = v8;
  if (!v8)
  {
LABEL_12:
    v20 = 1;
LABEL_13:
    v38 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>(dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>)::stored_vtable;
    *&v39 = 0;
    goto LABEL_23;
  }

  v10 = _Block_copy(v8);
  v11 = v10;
  v38 = 0;
  if (!v10)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v12 = _Block_copy(v10);
  v13 = v12;
  if (v12)
  {
    v14 = _Block_copy(v12);
    v15 = v14;
    if (v14)
    {
      v16 = _Block_copy(v14);
      v17 = v16;
      if (v16)
      {
        v18 = _Block_copy(v16);
        v19 = v18;
        if (v18)
        {
          *&v39 = _Block_copy(v18);
          _Block_release(v19);
        }

        else
        {
          *&v39 = 0;
        }

        _Block_release(v17);
      }

      else
      {
        *&v39 = 0;
      }

      _Block_release(v15);
    }

    else
    {
      *&v39 = 0;
    }

    v38 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>(dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>)::stored_vtable;
    _Block_release(v13);
  }

  else
  {
    v38 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>(dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>)::stored_vtable;
    *&v39 = 0;
  }

  _Block_release(v11);
  v20 = 0;
LABEL_23:
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v21 = v33;
  if (v33 != &v34)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v36, v37, v21[4], v21 + 4);
      v28 = v21[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v21[2];
          v30 = *v29 == v21;
          v21 = v29;
        }

        while (!v30);
      }

      v21 = v29;
    }

    while (v29 != &v34);
  }

  v22 = operator new(0x18uLL);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = (v22 + 1);
  v23 = v36;
  if (v36 != v37)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(v22, v22 + 1, v23[4], v23 + 4);
      v31 = v23[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v23[2];
          v30 = *v32 == v23;
          v23 = v32;
        }

        while (!v30);
      }

      v23 = v32;
    }

    while (v32 != v37);
  }

  v24 = operator new(4uLL);
  *v24 = a3;
  v25 = operator new(0x20uLL);
  v26 = v25;
  *v25 = 0;
  v27 = v38;
  if (v38)
  {
    *v25 = v38;
    if (v27)
    {
      *(v25 + 8) = v39;
      *(v25 + 3) = v40;
    }

    else
    {
      (*v27)(&v39, v25 + 8, 0);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvNSt3__13mapIPKcNS3_4listINS3_4pairIyjEENS3_9allocatorIS9_EEEENS3_4lessIS6_EENSA_INS8_IKS6_SC_EEEEEEN4coex5SubIdEEEESI_SK__block_invoke;
  block[3] = &__block_descriptor_tmp_396;
  block[4] = v26;
  block[5] = v22;
  block[6] = v24;
  dispatch_async(v7, block);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v37[0]);
  if (v38)
  {
    if ((v38 & 1) == 0 && *v38)
    {
      (*v38)(&v39, &v39, 2);
    }

    v38 = 0;
  }

  if ((v20 & 1) == 0)
  {
    _Block_release(v9);
  }

  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v34);
}

void sub_2974B36B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void (**a16)(void, void, void))
{
  operator delete(v17);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a14);
  boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>::~function(&a16);
  if ((v18 & 1) == 0)
  {
    _Block_release(v16);
  }

  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a11);
  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvNSt3__13mapIPKcNS3_4listINS3_4pairIyjEENS3_9allocatorIS9_EEEENS3_4lessIS6_EENSA_INS8_IKS6_SC_EEEEEEN4coex5SubIdEEEESI_SK__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v18.__imp_.__imp_ = 0;
  v19 = 0;
  v18.__vftable = &v18.__imp_;
  v6 = *v3;
  v4 = v3 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v18, &v18.__imp_, v5[4], v5 + 4);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }

  if (!*v2)
  {
    std::runtime_error::runtime_error(&v20, "call to empty boost::function");
    v20.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&v20);
  }

  v7 = **(a1 + 48);
  v8 = *((*v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v20 = v18;
  v21 = v19;
  if (v19)
  {
    *(v18.__imp_.__imp_ + 2) = &v20.__imp_;
    v18.__vftable = &v18.__imp_;
    v18.__imp_.__imp_ = 0;
    v19 = 0;
  }

  else
  {
    v20.__vftable = &v20.__imp_;
  }

  v8(v2 + 1, &v20, v7);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v20.__imp_.__imp_);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v18.__imp_.__imp_);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      if ((v13 & 1) == 0)
      {
        v14 = *v13;
        if (v14)
        {
          v15 = *(a1 + 32);
          v14(v12 + 1, v15 + 1, 2);
          v12 = v15;
        }
      }

      *v12 = 0;
    }

    operator delete(v12);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v16[1]);
    operator delete(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    operator delete(v17);
  }
}

void sub_2974B38C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, std::runtime_error a12)
{
  std::runtime_error::~runtime_error(&a12);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void sub_2974B38F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a13);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a10);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
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
      if (v8 == (0x800000029769C167 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029769C167 & 0x7FFFFFFFFFFFFFFFLL)))
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

void boost::detail::function::void_function_obj_invoker2<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::invoke(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (a2[2])
  {
    v4[2] = &v6;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = &v6;
  }

  (*(v2 + 16))(v2, &v5);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v6);
}

uint64_t boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(uint64_t result, uint64_t a2)
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

void sub_2974B3B58(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::~function2(void (***result)(void, void, void)))(void, void, void)
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

void **boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~slot(void **a1)
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

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIKN4coex6Module5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIKN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<coex::Module::State>::execute_wrapped<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>(coex::Module::State::registerEventHandlers(coex::Module*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0,dispatch_queue_s *::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>>)::{lambda(void *)#1}::__invoke(Service ***a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 1);
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v1[1];
  v8 = *MEMORY[0x29EDBF6A0];
  v9 = strlen(*MEMORY[0x29EDBF6A0]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v10;
    v28 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_13;
  }

  HIBYTE(v28) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_13:
    memmove(p_dst, v8, v10);
  }

  *(p_dst + v10) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = 0;
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A1E434E8;
  v13[1] = v2;
  v13[2] = v4;
  v13[3] = v6;
  v31 = v13;
  Service::registerEventHandler(v7, &__dst, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  if (SHIBYTE(v28) < 0)
  {
LABEL_38:
    operator delete(__dst);
  }

LABEL_18:
  v14 = v1[1];
  v15 = *MEMORY[0x29EDBF460];
  v16 = strlen(*MEMORY[0x29EDBF460]);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    p_p = operator new(v19);
    *(&__p + 1) = v17;
    v26 = v19 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_26;
  }

  HIBYTE(v26) = v16;
  p_p = &__p;
  if (v16)
  {
LABEL_26:
    memmove(p_p, v15, v17);
  }

  *(p_p + v17) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = 0;
  v20 = operator new(0x20uLL);
  *v20 = &unk_2A1E43578;
  *(v20 + 1) = v2;
  *(v20 + 2) = v4;
  *(v20 + 3) = v6;
  v29 = v20;
  Service::registerEventHandler(v14, &__p, &__dst);
  if (v29 == &__dst)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  if (SHIBYTE(v26) < 0)
  {
LABEL_40:
    operator delete(__p);
  }

LABEL_31:
  Service::eventsOn(v1[1]);
  std::__shared_weak_count::__release_weak(v6);
  operator delete(v1);
  v21 = a1;
  if (a1)
  {
    v22 = a1[2];
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v21 = a1;
    }

    operator delete(v21);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_2974B40FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  std::__shared_weak_count::__release_weak(v25);
  operator delete(v24);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B4188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(dispatch::group_session,xpc::dict)>::~function(uint64_t a1)
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

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E434E8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E434E8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E434E8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E434E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[1];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[1];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = *v7;
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[2];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2974B4604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_(std::__shared_weak_count **a1)
{
  v17 = *a1;
  v1 = (*a1)->__vftable;
  v2 = BYTE4(v1[2].__get_deleter);
  value = xpc_dictionary_get_value((*a1)->__shared_weak_owners_, *MEMORY[0x29EDBF030]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default(&object, 8);
  xpc_release(object);
  v5 = v4;
  if (v4 == 8)
  {
    v5 = v2;
  }

  BYTE4(v1[2].__get_deleter) = v5;
  if (v2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && v1[1].__on_zero_shared)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7 || (v7 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v7) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v7);
        v8 = v7;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v7 = 0;
    }

    xpc_release(v7);
    on_zero_shared = v1[1].__on_zero_shared;
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
      v10 = object;
    }

    else
    {
      v10 = xpc_null_create();
      object = v10;
    }

    coex::XpcClient::sendMessage(on_zero_shared, 304, &object, 0);
    xpc_release(v10);
    object = 0;
    on_zero_shared_weak = v1->__on_zero_shared_weak;
    if (os_log_type_enabled(on_zero_shared_weak, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, on_zero_shared_weak, OS_LOG_TYPE_DEFAULT, "#I Notified CXM that Baseband is Ready", buf, 2u);
    }

    xpc_release(v8);
  }

  coex::Module::State::evaluateCurrentCoexBootState_sync(v1);
  if (v17)
  {
    xpc_release(v17->__shared_weak_owners_);
    v17->__shared_weak_owners_ = 0;
    shared_owners = v17->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v13 = v17->__shared_owners_;
      if (v13)
      {
        dispatch_release(v13);
      }
    }

    operator delete(v17);
  }

  v14 = a1;
  if (a1)
  {
    v15 = a1[2];
    if (v15)
    {
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v14 = a1;
      }
    }

    operator delete(v14);
  }
}

void sub_2974B491C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E43578;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E43578;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E43578;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E43578;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[1];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[1];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = *v7;
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[2];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE0_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2974B4D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE0_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value((*a1)[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v14, &object, *MEMORY[0x29EDBEFC0], v5);
  v6 = (v3 + 112);
  if (*(v3 + 135) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v14;
  *(v3 + 128) = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14) = 0;
  xpc_release(object);
  v7 = *MEMORY[0x29EDBF210];
  v8 = strlen(*MEMORY[0x29EDBF210]);
  v9 = *(v3 + 135);
  if (v9 < 0)
  {
    if (v8 == *(v3 + 120))
    {
      if (v8 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*v6, v7, v8))
      {
        goto LABEL_13;
      }
    }
  }

  else if (v8 == v9 && !memcmp((v3 + 112), v7, v8))
  {
LABEL_13:
    coex::CoexCache::initProperty((v3 + 72));
  }

  coex::Module::State::evaluateCurrentCoexBootState_sync(v3);
  xpc_release(v2[2]);
  v2[2] = 0;
  v10 = v2[1];
  if (v10)
  {
    dispatch_group_leave(v10);
    v11 = v2[1];
    if (v11)
    {
      dispatch_release(v11);
    }
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_2974B5004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ctu::cf::insert<__CFString const*,__CFBoolean const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B513C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFDictionary const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B51D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B51F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,long long>(__CFDictionary *a1, CFTypeRef cf, uint64_t a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B52A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B52C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,long long>(__CFDictionary *a1, CFTypeRef cf, uint64_t a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

BOOL ctu::cf::update<__CFString const*,__CFData const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (!a3)
  {
    v6 = 0;
    if (!cf)
    {
      return v6;
    }

LABEL_9:
    CFRelease(cf);
    return v6;
  }

  CFRetain(a3);
  v6 = cf != 0;
  if (cf)
  {
    CFDictionarySetValue(a1, cf, a3);
  }

  CFRelease(a3);
  if (cf)
  {
    goto LABEL_9;
  }

  return v6;
}

void sub_2974B5448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B546C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,unsigned int>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B5544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,double>(__CFDictionary *a1, CFTypeRef cf, CFAllocatorRef allocator, double a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a4;
  v8 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B55FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B5620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  v7 = *v6;
  if (cf && v7)
  {
    CFDictionarySetValue(theDict, cf, v7);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  CFRelease(v7);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B56D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,__CFArray const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionarySetValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B5798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFArray *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B582C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B5850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFDictionary *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B58E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B5908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,int>(__CFDictionary *a1, CFTypeRef cf, int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B59B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B59DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  v7 = *v6;
  if (cf && v7)
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  CFRelease(v7);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,unsigned int>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B5B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,unsigned short>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,unsigned char>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2974B5D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,void const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974B5DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974B5DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_330()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

void IOKitEventNotifier::start(IOKitEventNotifier *this)
{
  v45 = *MEMORY[0x29EDCA608];
  if (!*(this + 1))
  {
    goto LABEL_59;
  }

  v2 = *(this + 3);
  if (!v2 || !*(this + 4))
  {
    goto LABEL_12;
  }

  v3 = _Block_copy(v2);
  v4 = *(this + 4);
  aBlock = v3;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = ctu::iokit::Controller::setAccessoryCallback();
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((v5 & 1) == 0 && (v6 = *this, os_log_type_enabled(*this, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to setup accessory callback", buf, 2u);
    v7 = *(this + 5);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_12:
    v7 = *(this + 5);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(this + 6))
  {
    v8 = *(this + 1);
    v9 = _Block_copy(v7);
    v10 = *(this + 6);
    v39 = v9;
    v40 = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v11 = ctu::iokit::Controller::setDisplayCallback();
    if (v40)
    {
      dispatch_release(v40);
    }

    if (v39)
    {
      _Block_release(v39);
    }

    if ((v11 & 1) == 0)
    {
      v12 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "Failed to setup display callback", buf, 2u);
      }
    }
  }

LABEL_23:
  v13 = *(this + 7);
  if (!v13 || !*(this + 8))
  {
    goto LABEL_67;
  }

  v14 = *(this + 1);
  v15 = _Block_copy(v13);
  v16 = *(this + 8);
  v37 = v15;
  v38 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = ctu::iokit::Controller::setPowerSourceCallback();
  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if ((v17 & 1) == 0 && (v18 = *this, os_log_type_enabled(*this, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v18, OS_LOG_TYPE_ERROR, "Failed to setup power source", buf, 2u);
    if (*(this + 9))
    {
LABEL_34:
      if (*(this + 10))
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
LABEL_67:
    if (*(this + 9))
    {
      goto LABEL_34;
    }
  }

  if (!*(this + 11) || !*(this + 12))
  {
    goto LABEL_59;
  }

LABEL_37:
  v19 = ctu::iokit::Controller::setupCameraService(*(this + 1));
  v20 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "failed";
    if (v19)
    {
      v21 = "succeeded";
    }

    *buf = 136315138;
    v44 = v21;
    _os_log_impl(&dword_297476000, v20, OS_LOG_TYPE_DEFAULT, "#I Setup camera service is %s", buf, 0xCu);
  }

  if (v19)
  {
    v22 = *(this + 9);
    if (v22 && *(this + 10))
    {
      v23 = *(this + 1);
      v24 = _Block_copy(v22);
      v25 = *(this + 10);
      v35 = v24;
      v36 = v25;
      if (v25)
      {
        dispatch_retain(v25);
      }

      ctu::iokit::Controller::setFaceIDCallback();
      if (v36)
      {
        dispatch_release(v36);
      }

      if (v35)
      {
        _Block_release(v35);
      }
    }

    v26 = *(this + 11);
    if (v26 && *(this + 12))
    {
      v27 = *(this + 1);
      v28 = _Block_copy(v26);
      v29 = *(this + 12);
      v33 = v28;
      v34 = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      ctu::iokit::Controller::setFrontCameraCallback();
      if (v34)
      {
        dispatch_release(v34);
      }

      if (v33)
      {
        _Block_release(v33);
      }
    }

    goto LABEL_59;
  }

  v30 = *this;
  if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
LABEL_59:
    v31 = *MEMORY[0x29EDCA608];
    return;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297476000, v30, OS_LOG_TYPE_ERROR, "Failed to setup camera service callback", buf, 2u);
  v32 = *MEMORY[0x29EDCA608];
}

void sub_2974B61FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IOKitEventNotifier::registerCallbackAccessory(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackVideo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackPowerSource(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackFaceID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 80);
  *(a1 + 80) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackFrontCamera(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 96);
  *(a1 + 96) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

uint64_t IOKitEventNotifier::queryPowerSource(IOKitEventNotifier *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return ctu::iokit::Controller::queryPowerSource(v1);
  }

  else
  {
    return 1;
  }
}

void IOKitEventNotifier::IOKitEventNotifier(IOKitEventNotifier *this, __CFRunLoop *a2)
{
  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(a2, v4);
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 13) = a2;
}

{
  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(a2, v4);
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 13) = a2;
}

void IOKitEventNotifier::shutdown(IOKitEventNotifier *this)
{
  v2 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(this + 13);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(this + 13);
    if (!v3)
    {
      return;
    }
  }

  if (CFRunLoopIsWaiting(v3))
  {
    v4 = dispatch_group_create();
    v5 = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v5);
    }

    v6 = *(this + 13);
    v7 = *MEMORY[0x29EDB8FC0];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN18IOKitEventNotifier8shutdownEv_block_invoke;
    block[3] = &__block_descriptor_tmp_24;
    group = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(group);
    }

    CFRunLoopPerformBlock(v6, v7, block);
    CFRunLoopWakeUp(*(this + 13));
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v5);
    }

    else
    {
      dispatch_group_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void sub_2974B67D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
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
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void IOKitEventNotifier::~IOKitEventNotifier(IOKitEventNotifier *this)
{
  IOKitEventNotifier::shutdown(this);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 2);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  JUMPOUT(0x29C270D60);
}

double IOKitEventNotifier::create@<D0>(IOKitEventNotifier *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x88uLL);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = &unk_2A1E43628;
  ctu::OsLogLogger::OsLogLogger((v5 + 3), "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(this, v6);
  result = 0.0;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 3) = 0u;
  v5[16] = this;
  *a2 = v5 + 3;
  a2[1] = v5;
  return result;
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitAccessoryParameter)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayLink)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPowerSource)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitFaceIDState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitFrontCameraState)>::~callback(uint64_t a1)
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

void std::__shared_ptr_emplace<IOKitEventNotifier>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E43628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sys::getCurrentBootSessionUUID(_BYTE *a1@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  *&v16[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__s = v3;
  *v16 = v3;
  v12 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", __s, &v12, 0, 0) && v12 == 37)
  {
    v4 = strlen(__s);
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

      v8 = operator new(v7);
      *(a1 + 1) = v5;
      *(a1 + 2) = v7 | 0x8000000000000000;
      *a1 = v8;
      a1 = v8;
    }

    else
    {
      a1[23] = v4;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    memcpy(a1, __s, v5);
LABEL_16:
    a1 += v5;
    goto LABEL_17;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
    v6 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_19:
    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315138;
    v14 = v11;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to get boot session uuid, error: %s", buf, 0xCu);
    goto LABEL_10;
  }

  v6 = qword_2A18CB080;
  if (os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

LABEL_10:
  a1[23] = 0;
LABEL_17:
  *a1 = 0;
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t sys::updateBootSessionUUID(sys *this)
{
  memset(&v19, 170, sizeof(v19));
  sys::getCurrentBootSessionUUID(&v19);
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(&v21);
    v2 = *&v21.__r_.__value_.__l.__data_;
    *&v21.__r_.__value_.__l.__data_ = 0uLL;
    v3 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    size = v21.__r_.__value_.__l.__size_;
    if (v21.__r_.__value_.__l.__size_ && !atomic_fetch_add((v21.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v1 = off_2A18CAFB8;
  }

  v17 = v1;
  v18 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBE8F8];
  v6 = strlen(*MEMORY[0x29EDBE8F8]);
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
    v16 = v9 | 0x8000000000000000;
    __dst[0] = v8;
LABEL_20:
    memmove(v8, v5, v7);
    *(v7 + v8) = 0;
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  HIBYTE(v16) = v6;
  v8 = __dst;
  if (v6)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    __p = v19;
    goto LABEL_22;
  }

LABEL_21:
  std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
LABEL_22:
  os_unfair_lock_lock(v1 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v20;
  }

  if (v16 >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  v11 = ctu::cf::plist_adapter::set<std::string>(v1, &v21, v10);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      os_unfair_lock_unlock(v1 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v1 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_35:
    v12 = v18;
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(__dst[0]);
  v12 = v18;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v11;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2974B71B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

BOOL sys::isBootSessionChanged(sys *this)
{
  memset(v28, 170, sizeof(v28));
  sys::getCurrentBootSessionUUID(v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v2 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v3 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A18CAFB8;
  }

  v23 = v1;
  v24 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBE8F8];
  v6 = strlen(*MEMORY[0x29EDBE8F8]);
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
    __p[1] = v7;
    v22 = v9 | 0x8000000000000000;
    __p[0] = v8;
    goto LABEL_19;
  }

  HIBYTE(v22) = v6;
  v8 = __p;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  os_unfair_lock_lock((v1 + 40));
  if (v22 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v29, v10);
  v11 = (**v1)(v1, v29);
  if (v11)
  {
    ctu::cf::assign();
    CFRelease(v11);
  }

  MEMORY[0x29C270E70](&v29);
  os_unfair_lock_unlock((v1 + 40));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = SHIBYTE(v28[2]);
  if (SHIBYTE(v28[2]) >= 0)
  {
    v14 = HIBYTE(v28[2]);
  }

  else
  {
    v14 = v28[1];
  }

  v15 = HIBYTE(v27);
  v16 = SHIBYTE(v27);
  if (v27 < 0)
  {
    v15 = v26;
  }

  if (v14 == v15)
  {
    if (SHIBYTE(v28[2]) >= 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v28[0];
    }

    if (v27 >= 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25;
    }

    v19 = memcmp(v17, v18, v14) != 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 1;
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  operator delete(v25);
LABEL_46:
  if (v13 < 0)
  {
    operator delete(v28[0]);
  }

  return v19;
}

void sub_2974B7554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sys::isHardwareModelChanged(sys *this)
{
  v35 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A18CAFB8;
  }

  __p = v1;
  v30 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBEA50];
  v6 = strlen(*MEMORY[0x29EDBEA50]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v35);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = v35;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, v12);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x29EDBF8A8];
  v14 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v30 = v15;
    v31 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v31) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_38:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x29EDBE988];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v36, v19);
  ctu::cf::map_adapter::getString();
  v20 = MEMORY[0x29C270E70](&v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  config::hw::product(v20);
  v21 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = HIBYTE(v31);
  v24 = SHIBYTE(v31);
  if (v31 < 0)
  {
    v23 = v30;
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v31 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    v17 = memcmp(v25, v26, v22) != 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v17 = 1;
  if (SHIBYTE(v31) < 0)
  {
LABEL_56:
    operator delete(__p);
    v21 = BYTE7(__dst[1]);
  }

LABEL_57:
  if ((v21 & 0x80) == 0)
  {
    MEMORY[0x29C270ED0](v32);
    v27 = cf;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_61;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x29C270ED0](v32);
  v27 = cf;
  if (cf)
  {
LABEL_61:
    CFRelease(v27);
  }

  return v17;
}

void sub_2974B79B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C270ED0](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C270ED0](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

BOOL sys::isFWVersionChanged(const void **a1)
{
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__dst);
    v3 = __dst[0];
    __dst[0] = 0uLL;
    v4 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18CAFB8;
  }

  __p = v2;
  v29 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBEA50];
  v7 = strlen(*MEMORY[0x29EDBEA50]);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *(&__dst[0] + 1) = v8;
    *&__dst[1] = v10 | 0x8000000000000000;
    *&__dst[0] = v9;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_19:
    memmove(v9, v6, v8);
  }

  *(v9 + v8) = 0;
  os_unfair_lock_lock(v2 + 10);
  Preferences::getPreference<__CFDictionary const*>(v2, __dst, &cf);
  os_unfair_lock_unlock(v2 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v13 = cf;
  v32 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v31[0] = 0xAAAAAAAAAAAAAAAALL;
  v31[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v31, v13);
  memset(__dst, 170, 24);
  v14 = *MEMORY[0x29EDBF8A8];
  v15 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    p_p = operator new(v19);
    v29 = v16;
    v30 = v19 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v30) = v15;
  p_p = &__p;
  if (v15)
  {
LABEL_38:
    memmove(p_p, v14, v16);
  }

  v20 = *MEMORY[0x29EDBEC00];
  *(&v16->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v35, v20);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C270E70](&v35);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  v21 = SBYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = *(a1 + 23);
  v24 = v23;
  if (v23 < 0)
  {
    v23 = a1[1];
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v24 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    v18 = memcmp(v25, v26, v22) != 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v18 = 1;
    if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  operator delete(*&__dst[0]);
LABEL_57:
  MEMORY[0x29C270ED0](v31);
  if (v32)
  {
    CFRelease(v32);
  }

  return v18;
}

BOOL sys::isOSVersionChanged(sys *this)
{
  v35 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A18CAFB8;
  }

  __p = v1;
  v30 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBEA50];
  v6 = strlen(*MEMORY[0x29EDBEA50]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v35);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = v35;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, v12);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x29EDBF8A8];
  v14 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v30 = v15;
    v31 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v31) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_38:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x29EDBEC08];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v36, v19);
  ctu::cf::map_adapter::getString();
  v20 = MEMORY[0x29C270E70](&v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  config::build::version(v20);
  v21 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = HIBYTE(v31);
  v24 = SHIBYTE(v31);
  if (v31 < 0)
  {
    v23 = v30;
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v31 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    v17 = memcmp(v25, v26, v22) != 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v17 = 1;
  if (SHIBYTE(v31) < 0)
  {
LABEL_56:
    operator delete(__p);
    v21 = BYTE7(__dst[1]);
  }

LABEL_57:
  if ((v21 & 0x80) == 0)
  {
    MEMORY[0x29C270ED0](v32);
    v27 = cf;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_61;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x29C270ED0](v32);
  v27 = cf;
  if (cf)
  {
LABEL_61:
    CFRelease(v27);
  }

  return v17;
}

void sub_2974B82D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C270ED0](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C270ED0](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t sys::getDeviceBootTime(sys *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = 16;
  *v5 = 0x1500000001;
  if (sysctl(v5, 2u, v4, &v3, 0, 0) >= 0)
  {
    result = v4[0];
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void SharedData::create_default_global(atomic_ullong *a1@<X8>)
{
  v3 = operator new(0x60uLL);
  __p = v3;
  strcpy(v3, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  v9 = xmmword_29769C4D0;
  *&v10.st_dev = v4;
  if (!stat(v3, &v10) && remove(v3, v5))
  {
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    unlink(p_p);
  }

  v7 = operator new(0x30uLL);
  MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager.data", *MEMORY[0x29EDB8FB0]);
  v7[3] = 0;
  v7[4] = 0;
  *(v7 + 10) = 0;
  std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(a1, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_2974B853C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E43678;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 24) = a2;
        *(a2 + 32) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 24) = a2;
      *(a2 + 32) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_2974B86A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x29C270EF0](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029769C55BLL)
  {
    if (((v2 & 0x800000029769C55BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029769C55BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029769C55BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x29C270EF0](v1);
    operator delete(v4);
    return v2;
  }

  return result;
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

uint64_t ctu::cf::plist_adapter::set<std::string>(int a1, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, a3);
  v4 = ctu::cf::plist_adapter::set<std::string>();
  MEMORY[0x29C270E70](&v6);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v4;
}

uint64_t ctu::cf::plist_adapter::set<std::string>()
{
  v0 = *MEMORY[0x29EDB8ED8];
  ctu::cf::convert_copy();
  return 0;
}

BOOL Preferences::getPreference<__CFDictionary const*>(uint64_t (***a1)(void, uint64_t), const char *a2, void *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    v8 = v7 == CFDictionaryGetTypeID();
    v9 = v8;
    if (v8)
    {
      *a3 = v6;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C270E70](&v11);
  return v9;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
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
  v8 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v32);
    v9 = *&v32.__r_.__value_.__l.__data_;
    *&v32.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v9;
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

    v8 = off_2A18CAD88;
  }

  v24 = v8;
  v25 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_2974B9028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  operator delete(v21);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a19);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a21);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v22 - 96);
  _Unwind_Resume(a1);
}

uint64_t AppleBasebandManagerStartServer(NSObject *a1)
{
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v2 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v3;
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

    v2 = off_2A18CAD88;
  }

  v6 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v2 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v3;
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

    v2 = off_2A18CAD88;
  }

  v6 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v2 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v3;
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

    v2 = off_2A18CAD88;
  }

  v6 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
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

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
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

void sub_2974B9790(_Unwind_Exception *exception_object)
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
  MEMORY[0x29C270D50](this + 32, v9);
  MEMORY[0x29C270D60](v9);
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

void ResetDetection::~ResetDetection(ResetDetection *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  v4 = *(this + 6);
  *(this + 6) = 0;
  v5 = *MEMORY[0x29EDB8FC0];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN14ResetDetectionD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = v4;
  CFRunLoopPerformBlock(v3, v5, block);
  CFRunLoopWakeUp(*(this + 5));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 10));
  v6 = *(this + 7);
  if (v6)
  {
    CFRelease(v6);
  }

  MEMORY[0x29C270D60](this + 32);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN14ResetDetectionD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(v1);
  }
}

void ResetDetection::start(ResetDetection *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_3;
  v1[4] = this;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v1);
}

void ___ZN14ResetDetection5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Started", buf, 2u);
  }

  v3 = operator new(0x10uLL);
  v4 = v1[1];
  if (!v4 || (v5 = *v1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *v3 = v5;
  v3[1] = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v1[6] = v3;
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v1[6];
    v7 = v1[7];
    v9 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  v14 = v1[4];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_297476000, v14, OS_LOG_TYPE_ERROR, "failed registering for reset detect", v16, 2u);
    if (!v1[7])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!v1[7])
  {
    return;
  }

LABEL_11:
  v19 = 1;
  if (TelephonyBasebandGetReset())
  {
    *(v1 + 16) = v19;
  }

  else
  {
    v15 = v1[4];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v18, 2u);
    }
  }
}

void ResetDetection::sResetDetectCallback(ResetDetection *this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v7 = *this;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          v10[0] = MEMORY[0x29EDCA5F8];
          v10[1] = 0x40000000;
          v10[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
          v10[3] = &__block_descriptor_tmp_6;
          v10[4] = v7;
          v11 = a3;
          ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v7, v10);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t ResetDetection::poll(ResetDetection *this, BOOL *a2)
{
  result = *(this + 7);
  if (result)
  {
    v9 = 1;
    result = TelephonyBasebandGetReset();
    if (result)
    {
      *a2 = v9;
    }

    else
    {
      v5 = *(this + 4);
      v6 = result;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      result = v6;
      if (v7)
      {
        *v8 = 0;
        _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v8, 2u);
        return v6;
      }
    }
  }

  return result;
}

void ResetDetection::add(uint64_t *a1, uint64_t a2, char a3, void **a4, uint64_t a5)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke;
  v10[3] = &__block_descriptor_tmp_4_1;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v14 = a3;
    v9 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v14 = a3;
  v9 = *a4;
  if (*a4)
  {
LABEL_5:
    v9 = _Block_copy(v9);
  }

LABEL_6:
  aBlock = v9;
  v13 = a5;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(a1, v10);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 80);
    *buf = 136315394;
    v24 = v4;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Added detection with key '%s', reset=%d", buf, 0x12u);
  }

  v6 = *(v2 + 64);
  v7 = v6;
  if (v6)
  {
    if (v6 == 2)
    {
      goto LABEL_25;
    }

    v7 = 1;
    if (v6 != 1)
    {
      v7 = 2;
    }

    if (!*(a1 + 80))
    {
      v7 = 0;
    }
  }

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 80);
  }

  v9 = v6 | *(a1 + 80);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (v7 == 1)
  {
    v11 = 0;
  }

  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_47;
  }

LABEL_25:
  v12 = *(a1 + 63);
  if (*(a1 + 80))
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v22 = *(a1 + 40);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v21 = v14;
    ResetDetection::addToBlocks_sync(v2, &v22, &v21, (v2 + 72), *(a1 + 72));
    if (v14)
    {
      _Block_release(v14);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v22.__r_.__value_.__r.__words[0];
LABEL_46:
      operator delete(v17);
    }
  }

  else
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v20 = *(a1 + 40);
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = _Block_copy(v15);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    ResetDetection::addToBlocks_sync(v2, &v20, &v19, (v2 + 96), *(a1 + 72));
    if (v16)
    {
      _Block_release(v16);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
      goto LABEL_46;
    }
  }

LABEL_47:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_2974BA1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}