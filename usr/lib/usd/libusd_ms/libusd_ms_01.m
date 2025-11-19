uint64_t tbb::task::spawn_and_wait_for_all(uint64_t a1, uint64_t *a2)
{
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    inited = (v3 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_8;
    }
  }

  v7 = a2[1];
  if ((v6 - 8) != v7)
  {
    v8 = inited;
    tbb::internal::generic_scheduler::local_spawn(inited, *(v6 - 8), v7, v4);
    inited = v8;
  }

  *a2 = 0;
  a2[1] = a2;
LABEL_8:
  v9 = *(*inited + 48);

  return v9();
}

void tbb::task::change_group(tbb::task *this, tbb::task_group_context *a2)
{
  *(this - 7) = a2;
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    inited = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  if (*a2 == 1)
  {
    if ((~*(inited + 74) & 3) != 0)
    {
      tbb::task_group_context::bind_to(a2, inited, v4, v5);
      if (*a2)
      {
        return;
      }

      goto LABEL_8;
    }

    *a2 = 0;
  }

  if (*a2)
  {
    return;
  }

LABEL_8:
  if ((*(a2 + 130) & 2) == 0)
  {
    v7 = *(*(inited + 144) - 56);

    tbb::task_group_context::copy_fp_settings(a2, v7, v4, v5);
  }
}

void tbb::captured_exception::~captured_exception(tbb::captured_exception *this, void *a2)
{
  *this = &unk_2A203AA08;
  tbb::internal::deallocate_via_handler_v3(*(this + 2), a2);
  tbb::internal::deallocate_via_handler_v3(*(this + 3), v3);
  *this = &unk_2A203AA80;

  std::exception::~exception(this);
}

{
  *this = &unk_2A203AA08;
  tbb::internal::deallocate_via_handler_v3(*(this + 2), a2);
  tbb::internal::deallocate_via_handler_v3(*(this + 3), v3);
  *this = &unk_2A203AA80;

  std::exception::~exception(this);
}

{
  *this = &unk_2A203AA08;
  tbb::internal::deallocate_via_handler_v3(*(this + 2), a2);
  tbb::internal::deallocate_via_handler_v3(*(this + 3), v3);
  *this = &unk_2A203AA80;
  std::exception::~exception(this);
  tbb::internal::deallocate_via_handler_v3(v4, v5);
}

char *tbb::captured_exception::set(tbb::captured_exception *this, const char *__s, const char *a3)
{
  if (!__s)
  {
    *(this + 2) = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v6 = strlen(__s);
  v7 = tbb::internal::allocate_via_handler_v3((v6 + 1));
  *(this + 2) = strncpy(v7, __s, v6 + 1);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = strlen(a3);
  v9 = tbb::internal::allocate_via_handler_v3((v8 + 1));
  result = strncpy(v9, a3, v8 + 1);
LABEL_6:
  *(this + 3) = result;
  return result;
}

__n128 tbb::captured_exception::move(__n128 *this)
{
  v2 = tbb::internal::allocate_via_handler_v3(0x20);
  if (v2)
  {
    *v2 = &unk_2A203AA08;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    result = this[1];
    *(v2 + 16) = result;
    *(v2 + 8) = 1;
    this[1].n128_u64[0] = 0;
    this[1].n128_u64[1] = 0;
  }

  return result;
}

uint64_t tbb::captured_exception::destroy(uint64_t this, void *a2)
{
  if (*(this + 8) == 1)
  {
    v2 = this;
    *this = &unk_2A203AA08;
    tbb::internal::deallocate_via_handler_v3(*(this + 16), a2);
    tbb::internal::deallocate_via_handler_v3(*(v2 + 24), v3);
    *v2 = &unk_2A203AA80;
    std::exception::~exception(v2);
    return tbb::internal::deallocate_via_handler_v3(v4, v5);
  }

  return this;
}

_BYTE *tbb::captured_exception::allocate(tbb::captured_exception *this, const char *a2, const char *a3)
{
  result = tbb::internal::allocate_via_handler_v3(0x20);
  if (result)
  {
    *result = &unk_2A203AA08;
    result[8] = 0;
    v6 = result;
    tbb::captured_exception::set(result, this, a2);
    result = v6;
    v6[8] = 1;
  }

  return result;
}

std::exception_ptr *tbb::internal::tbb_exception_ptr::allocate(tbb::internal::tbb_exception_ptr *this)
{
  std::current_exception();
  v1 = tbb::internal::allocate_via_handler_v3(8);
  v2 = v1;
  if (v1)
  {
    std::exception_ptr::exception_ptr(v1, &v4);
  }

  std::exception_ptr::~exception_ptr(&v4);
  return v2;
}

std::exception_ptr *tbb::internal::tbb_exception_ptr::allocate()
{
  std::current_exception();
  v0 = tbb::internal::allocate_via_handler_v3(8);
  v1 = v0;
  if (v0)
  {
    std::exception_ptr::exception_ptr(v0, &v3);
  }

  std::exception_ptr::~exception_ptr(&v3);
  return v1;
}

uint64_t tbb::internal::tbb_exception_ptr::allocate(tbb::internal::tbb_exception_ptr *this, tbb::captured_exception *a2)
{
  v3 = tbb::internal::allocate_via_handler_v3(8);
  v4 = v3;
  if (v3)
  {
    sub_299FF9BFC(v3, this);
  }

  (*(*this + 32))(this);
  return v4;
}

void tbb::task_group_context::~task_group_context(tbb::task_group_context *this, void *a2)
{
  if (*this == 2)
  {
    if (tbb::internal::governor::is_set(*(this + 18)))
    {
      v3 = *(this + 18);
      v4 = *(v3 + 320);
      *(v3 + 328) = 1;
      __dmb(0xBu);
      v5 = *(this + 18);
      if (*(v5 + 368))
      {
        v6 = v5 + 312;
        v7 = ((v5 + 312) & 0xFFFFFFFFFFFFFFFCLL);
        v8 = 1 << (8 * ((v5 + 56) & 3));
        v9 = ~(255 << (8 * ((v5 + 56) & 3)));
LABEL_5:
        v10 = *v7 & v9;
        while (1)
        {
          v11 = v10;
          atomic_compare_exchange_strong(v7, &v11, v10 | v8);
          if (v11 == v10)
          {
            break;
          }

          if (*v7 != v10)
          {
            sched_yield();
            goto LABEL_5;
          }
        }

        v17 = *(this + 2);
        v16 = *(this + 3);
        *(v17 + 8) = v16;
        *v16 = v17;
        *(*(this + 18) + 328) = 0;
LABEL_16:
        __dmb(0xBu);
        *v6 = 0;
        goto LABEL_27;
      }

      v30 = *(this + 2);
      v29 = *(this + 3);
      *(v30 + 8) = v29;
      *v29 = v30;
      __dmb(0xBu);
      *(v5 + 328) = 0;
      if (v4 != tbb::internal::the_context_state_propagation_epoch)
      {
        v6 = *(this + 18) + 312;
        v35 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_33:
        v36 = *v35 & ~(255 << (8 * (v6 & 3)));
        while (1)
        {
          v37 = v36;
          atomic_compare_exchange_strong(v35, &v37, v36 | (1 << (8 * (v6 & 3))));
          if (v37 == v36)
          {
            goto LABEL_16;
          }

          if (*v35 != v36)
          {
            sched_yield();
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
LABEL_9:
      v12 = *this;
      while (1)
      {
        v13 = v12;
        atomic_compare_exchange_strong(this, &v13, 4u);
        if (v13 == v12)
        {
          break;
        }

        if (*this != v12)
        {
          sched_yield();
          goto LABEL_9;
        }
      }

      if (v12 == 3)
      {
        v15 = *(this + 2);
        v14 = *(this + 3);
        *(v15 + 8) = v14;
        *v14 = v15;
      }

      else
      {
        atomic_fetch_add((*(this + 18) + 368), 1uLL);
        v18 = *(this + 18);
        while (1)
        {
          v19 = *(v18 + 328);
          __dmb(0xBu);
          if (!v19)
          {
            break;
          }

          sched_yield();
        }

        v20 = *(this + 18) + 312;
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        LOBYTE(v20) = 8 * (v20 & 3);
        v22 = 1 << v20;
        v23 = ~(255 << v20);
LABEL_21:
        v24 = *v21 & v23;
        while (1)
        {
          v25 = v24;
          atomic_compare_exchange_strong(v21, &v25, v24 | v22);
          if (v25 == v24)
          {
            break;
          }

          if (*v21 != v24)
          {
            sched_yield();
            goto LABEL_21;
          }
        }

        v27 = *(this + 2);
        v26 = *(this + 3);
        *(v27 + 8) = v26;
        *v26 = v27;
        v28 = *(this + 18);
        __dmb(0xBu);
        *(v28 + 312) = 0;
        atomic_fetch_add((*(this + 18) + 368), 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

LABEL_27:
  v31 = *(this + 14);
  if (v31)
  {
    tbb::internal::NFS_Free(v31, a2);
  }

  v32 = *(this + 17);
  if (v32)
  {
    std::exception_ptr::~exception_ptr(v32);
    tbb::internal::deallocate_via_handler_v3(v33, v34);
  }
}

uint64_t tbb::task_group_context::init(uint64_t this, uint64_t a2, uint64_t a3, void *a4)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 160) = 1;
  *(this + 112) = 0;
  *(this + 120) = 0;
  if ((*(this + 130) & 2) != 0)
  {
    v5 = this;
    v6 = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
    *(v5 + 112) = v6;

    return fegetenv(v6);
  }

  return this;
}

void *tbb::task_group_context::register_with(void *result, void *a2)
{
  v3 = result;
  result[2] = a2 + 37;
  v4 = result + 2;
  result[18] = a2;
  a2[41] = 1;
  __dmb(0xBu);
  if (a2[46])
  {
    v5 = result[18] + 312;
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_3:
    v7 = *v6 & ~(255 << (8 * (v5 & 3)));
    while (1)
    {
      v8 = v7;
      atomic_compare_exchange_strong(v6, &v8, v7 | (1 << (8 * (v5 & 3))));
      if (v8 == v7)
      {
        break;
      }

      if (*v6 != v7)
      {
        result = sched_yield();
        goto LABEL_3;
      }
    }

    v9 = a2[38];
    *v9 = v4;
    v3[3] = v9;
    *(v3[18] + 328) = 0;
    a2[38] = v4;
    __dmb(0xBu);
    *v5 = 0;
  }

  else
  {
    v10 = a2[38];
    *v10 = v4;
    result[3] = v10;
    v11 = result[18];
    __dmb(0xBu);
    *(v11 + 328) = 0;
    __dmb(0xBu);
    a2[38] = v4;
  }

  return result;
}

uint64_t tbb::task_group_context::bind_to(uint64_t this, tbb::internal::generic_scheduler *a2, uint64_t a3, void *a4)
{
  v5 = this;
  v6 = *(*(a2 + 7) - 56);
  *(this + 8) = v6;
  if ((*(this + 130) & 2) != 0)
  {
    v7 = v6[19];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v6[19] = v7 | 1;
    if (v6[1])
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  *(this + 112) = 0;
  this = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
  *(v5 + 112) = this;
  *this = *v6[14];
  *(v5 + 128) |= 0x20000uLL;
  v6 = *(v5 + 8);
  v7 = v6[19];
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6[1])
  {
LABEL_4:
    v8 = *(v6[18] + 320);
    __dmb(0xBu);
    *(v5 + 16) = a2 + 296;
    v9 = v5 + 16;
    v10 = *(v5 + 8);
    *(v5 + 120) = *(v10 + 120);
    *(v5 + 160) = *(v10 + 160);
    *(v5 + 144) = a2;
    *(a2 + 41) = 1;
    __dmb(0xBu);
    if (*(a2 + 46))
    {
      v11 = *(v5 + 144) + 312;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_6:
      v13 = *v12 & ~(255 << (8 * (v11 & 3)));
      while (1)
      {
        v14 = v13;
        atomic_compare_exchange_strong(v12, &v14, v13 | (1 << (8 * (v11 & 3))));
        if (v14 == v13)
        {
          break;
        }

        if (*v12 != v13)
        {
          this = sched_yield();
          goto LABEL_6;
        }
      }

      v20 = *(a2 + 38);
      *v20 = v9;
      *(v5 + 24) = v20;
      *(*(v5 + 144) + 328) = 0;
      *(a2 + 38) = v9;
      __dmb(0xBu);
      *v11 = 0;
    }

    else
    {
      v21 = *(a2 + 38);
      *v21 = v9;
      *(v5 + 24) = v21;
      v22 = *(v5 + 144);
      __dmb(0xBu);
      *(v22 + 328) = 0;
      __dmb(0xBu);
      *(a2 + 38) = v9;
    }

    if (v8 != tbb::internal::the_context_state_propagation_epoch)
    {
      v23 = (&tbb::internal::the_context_state_propagation_mutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_22:
      v24 = *v23 & ~(255 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3)));
      while (1)
      {
        v25 = v24;
        atomic_compare_exchange_strong(v23, &v25, v24 | (1 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3))));
        if (v25 == v24)
        {
          break;
        }

        if (*v23 != v24)
        {
          this = sched_yield();
          goto LABEL_22;
        }
      }

      v26 = *(v5 + 8);
      *(v5 + 120) = *(v26 + 120);
      *(v5 + 160) = *(v26 + 160);
      __dmb(0xBu);
      LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
    }

    goto LABEL_30;
  }

LABEL_12:
  *(v5 + 16) = a2 + 296;
  v15 = v5 + 16;
  *(v5 + 144) = a2;
  *(a2 + 41) = 1;
  __dmb(0xBu);
  if (*(a2 + 46))
  {
    v16 = *(v5 + 144) + 312;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_14:
    v18 = *v17 & ~(255 << (8 * (v16 & 3)));
    while (1)
    {
      v19 = v18;
      atomic_compare_exchange_strong(v17, &v19, v18 | (1 << (8 * (v16 & 3))));
      if (v19 == v18)
      {
        break;
      }

      if (*v17 != v18)
      {
        this = sched_yield();
        goto LABEL_14;
      }
    }

    v27 = *(a2 + 38);
    *v27 = v15;
    *(v5 + 24) = v27;
    *(*(v5 + 144) + 328) = 0;
    *(a2 + 38) = v15;
    __dmb(0xBu);
    *v16 = 0;
  }

  else
  {
    v28 = *(a2 + 38);
    *v28 = v15;
    *(v5 + 24) = v28;
    v29 = *(v5 + 144);
    __dmb(0xBu);
    *(v29 + 328) = 0;
    __dmb(0xBu);
    *(a2 + 38) = v15;
  }

  v30 = *(v5 + 8);
  *(v5 + 120) = *(v30 + 120);
  *(v5 + 160) = *(v30 + 160);
LABEL_30:
  *v5 = 2;
  return this;
}

__n128 tbb::task_group_context::copy_fp_settings(tbb::task_group_context *this, const tbb::task_group_context *a2, uint64_t a3, void *a4)
{
  *(this + 14) = 0;
  v6 = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
  *(this + 14) = v6;
  result = **(a2 + 14);
  *v6 = result;
  *(this + 16) |= 0x20000uLL;
  return result;
}

uint64_t tbb::task_group_context::cancel_group_execution(tbb::task_group_context *this)
{
  if (*(this + 15))
  {
    return 0;
  }

  while (1)
  {
    v1 = 0;
    atomic_compare_exchange_strong(this + 15, &v1, 1uLL);
    if (!v1)
    {
      break;
    }

    if (atomic_fetch_add_explicit(this + 15, 0, memory_order_relaxed))
    {
      return 0;
    }
  }

  v5 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v5)
  {
    inited = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v2 = 1;
  sub_299FF9574(*(inited + 120), 120, this, 1);
  return v2;
}

uint64_t sub_299FF9574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (*(a3 + 152))
  {
    v9 = (&tbb::internal::the_context_state_propagation_mutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_3:
    v10 = *v9 & ~(255 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3)));
    while (1)
    {
      v11 = v10;
      atomic_compare_exchange_strong(v9, &v11, v10 | (1 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3))));
      if (v11 == v10)
      {
        break;
      }

      if (*v9 != v10)
      {
        sched_yield();
        goto LABEL_3;
      }
    }

    v32 = *(a3 + a2) == a4;
    if (*(a3 + a2) == a4)
    {
      atomic_fetch_add(&tbb::internal::the_context_state_propagation_epoch, 1uLL);
      v12 = *(a1 + 36);
      __dmb(0xBu);
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v15 = *(a1 + 248 + 8 * i);
          if (v15)
          {
            v16 = ((v15 + 312) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_14:
            v17 = *v16 & ~(255 << (8 * ((v15 + 56) & 3)));
            while (1)
            {
              v18 = v17;
              atomic_compare_exchange_strong(v16, &v18, v17 | (1 << (8 * ((v15 + 56) & 3))));
              if (v18 == v17)
              {
                break;
              }

              if (*v16 != v17)
              {
                sched_yield();
                goto LABEL_14;
              }
            }

            v19 = *(v15 + 304);
            __dmb(0xBu);
            while (v19 != v15 + 296)
            {
              v20 = v19 - 16;
              if (v19 - 16 != a3 && *(v19 - 16 + a2) != a4)
              {
                v22 = v19 - 16;
                while (1)
                {
                  v22 = *(v22 + 8);
                  if (!v22)
                  {
                    break;
                  }

                  if (v22 == a3)
                  {
                    do
                    {
                      *(v20 + a2) = a4;
                      v20 = *(v20 + 8);
                    }

                    while (v20 != a3);
                    break;
                  }
                }
              }

              v19 = *(v19 + 8);
            }

            v14 = tbb::internal::the_context_state_propagation_epoch;
            __dmb(0xBu);
            *(v15 + 320) = v14;
            __dmb(0xBu);
            *(v15 + 312) = 0;
          }
        }
      }

      for (j = *(a1 + 232); j != a1 + 224; j = *(j + 8))
      {
        v25 = ((j + 296) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_34:
        v26 = *v25 & ~(255 << (8 * ((j + 40) & 3)));
        while (1)
        {
          v27 = v26;
          atomic_compare_exchange_strong(v25, &v27, v26 | (1 << (8 * ((j + 40) & 3))));
          if (v27 == v26)
          {
            break;
          }

          if (*v25 != v26)
          {
            sched_yield();
            goto LABEL_34;
          }
        }

        v28 = *(j + 288);
        __dmb(0xBu);
        while (v28 != j + 280)
        {
          v29 = v28 - 16;
          if (v28 - 16 != a3 && *(v28 - 16 + a2) != a4)
          {
            v31 = v28 - 16;
            while (1)
            {
              v31 = *(v31 + 8);
              if (!v31)
              {
                break;
              }

              if (v31 == a3)
              {
                do
                {
                  *(v29 + a2) = a4;
                  v29 = *(v29 + 8);
                }

                while (v29 != a3);
                break;
              }
            }
          }

          v28 = *(v28 + 8);
        }

        v24 = tbb::internal::the_context_state_propagation_epoch;
        __dmb(0xBu);
        *(j + 304) = v24;
        __dmb(0xBu);
        *(j + 296) = 0;
      }
    }

    __dmb(0xBu);
    LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
    return v32;
  }

  return result;
}

void sub_299FF983C(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
  _Unwind_Resume(a1);
}

std::exception_ptr *tbb::task_group_context::reset(tbb::task_group_context *this)
{
  result = *(this + 17);
  if (result)
  {
    std::exception_ptr::~exception_ptr(result);
    result = tbb::internal::deallocate_via_handler_v3(v3, v4);
    *(this + 17) = 0;
  }

  *(this + 15) = 0;
  return result;
}

uint64_t tbb::task_group_context::capture_fp_settings(tbb::task_group_context *this, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 16);
  if ((v5 & 0x20000) != 0)
  {
    v6 = *(this + 14);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *(this + 14) = 0;
    *(this + 16) = v5 | 0x20000;
  }

  v6 = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
  *(this + 14) = v6;
LABEL_5:

  return fegetenv(v6);
}

uint64_t tbb::task_group_context::register_pending_exception(uint64_t this)
{
  if (!*(this + 120))
  {
    __cxa_rethrow();
  }

  return this;
}

uint64_t tbb::task_group_context::set_priority(uint64_t result, int a2)
{
  v2 = result;
  v3 = (a2 - 0x1FFFFFFF) / 0x1FFFFFFF;
  if (*(result + 160) != v3 || (*(result + 152) & 1) != 0)
  {
    *(result + 160) = v3;
    result = pthread_getspecific(tbb::internal::governor::theTLS);
    v4 = (result & 0xFFFFFFFFFFFFFFFELL);
    if ((result & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      if (v4[6])
      {
        result = sub_299FF9574(v4[15], 160, v2, v3);
        if (result)
        {
          if (!*(v4[7] - 12))
          {
            v5 = v4[15];
            v6 = v4[6];

            return tbb::internal::market::update_arena_priority(v5, v6, v3);
          }
        }
      }
    }
  }

  return result;
}

void sub_299FF9B50(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_299FF9BAC(exception, a1);
}

tbb::captured_exception *sub_299FF9BAC(tbb::captured_exception *a1, uint64_t a2)
{
  *a1 = &unk_2A203AA08;
  *(a1 + 8) = 0;
  tbb::captured_exception::set(a1, *(a2 + 16), *(a2 + 24));
  return a1;
}

uint64_t sub_299FF9BFC(uint64_t a1, uint64_t a2)
{
  v8.__vftable = &unk_2A203AA08;
  v9 = 0;
  tbb::captured_exception::set(&v8, *(a2 + 16), *(a2 + 24));
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  *exception = &unk_2A203AA08;
  *(exception + 8) = 0;
  tbb::captured_exception::set(exception, v10, v11);
  std::exception_ptr::__from_native_exception_pointer(exception, v4);
  v8.__vftable = &unk_2A203AA08;
  tbb::internal::deallocate_via_handler_v3(v10, v5);
  tbb::internal::deallocate_via_handler_v3(v11, v6);
  v8.__vftable = &unk_2A203AA80;
  std::exception::~exception(&v8);
  return a1;
}

tbb::internal *tbb::internal::governor::acquire_resources(tbb::internal::governor *this)
{
  v1 = pthread_key_create(&tbb::internal::governor::theTLS, tbb::internal::governor::auto_terminate);
  v2 = v1;
  if (v1)
  {
    if (qword_2A153EC18 != -1)
    {
      sub_29B284398();
    }

    v3 = qword_2A153EC10;
    v1 = os_log_type_enabled(qword_2A153EC10, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      sub_29B2843AC(v2, v3);
    }
  }

  has_speculation = tbb::internal::cpu_has_speculation(v1);
  tbb::internal::governor::is_speculation_enabled = has_speculation;
  tbb::internal::governor::is_rethrow_broken = tbb::internal::gcc_rethrow_exception_broken(has_speculation);
  return v2;
}

uint64_t tbb::internal::governor::auto_terminate(uint64_t this, void *a2)
{
  v2 = this & 0xFFFFFFFFFFFFFFFELL;
  if ((this & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    return this;
  }

  if (*(v2 + 160) != 1)
  {
    return this;
  }

  v3 = *(v2 + 152) - 1;
  *(v2 + 152) = v3;
  if (v3)
  {
    return this;
  }

  v4 = this;
  v5 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (*(v2 + 48))
  {
    if ((v4 | 1) != v5)
    {
      v6 = 1;
LABEL_9:
      pthread_setspecific(tbb::internal::governor::theTLS, (v6 | v2));
    }
  }

  else
  {
    v6 = (*(v2 + 74) & 1) == 0;
    if ((v2 | v6) != v5)
    {
      goto LABEL_9;
    }
  }

  return tbb::internal::generic_scheduler::cleanup_master(v2, 0);
}

uint64_t tbb::internal::governor::release_resources(tbb::internal::governor *this)
{
  tbb::internal::rml::tbb_factory::close(&tbb::internal::governor::theRMLServerFactory);
  v1 = pthread_key_delete(tbb::internal::governor::theTLS);
  if (v1)
  {
    v2 = strerror(v1);
    v1 = tbb::internal::runtime_warning("failed to destroy task scheduler TLS: %s", v3, v2);
  }

  return tbb::internal::dynamic_unlink_all(v1);
}

uint64_t tbb::internal::governor::create_rml_server(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  if ((tbb::internal::governor::UsePrivateRML & 1) == 0)
  {
    server = tbb::internal::rml::tbb_factory::make_server(&tbb::internal::governor::theRMLServerFactory);
    if (server)
    {
      tbb::internal::governor::UsePrivateRML = 1;
      tbb::internal::runtime_warning("rml::tbb_factory::make_server failed with status %x, falling back on private rml", a2, server);
    }
  }

  return tbb::internal::rml::make_private_server(a1, a2, a3, a4);
}

unint64_t tbb::internal::governor::tls_value_of(unint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      result |= 1uLL;
    }

    else
    {
      result |= (*(result + 74) & 1) == 0;
    }
  }

  return result;
}

uint64_t tbb::internal::governor::assume_scheduler(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v1 = 1;
    }

    else
    {
      v1 = ~*(a1 + 74) & 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return pthread_setspecific(tbb::internal::governor::theTLS, (v1 | a1));
}

BOOL tbb::internal::governor::is_set(uint64_t a1)
{
  v2 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (a1)
  {
    if (*(a1 + 48))
    {
      v3 = 1;
    }

    else
    {
      v3 = (*(a1 + 74) & 1) == 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return (v3 | a1) == v2;
}

uint64_t tbb::internal::governor::sign_on(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v2 = 1;
    }

    else
    {
      v2 = (*(a1 + 74) & 1) == 0;
    }
  }

  else
  {
    v2 = 0;
  }

  result = pthread_setspecific(tbb::internal::governor::theTLS, (v2 | a1));
  if (off_2A153EBE0)
  {
    result = off_2A153EBE0(a1 + 376, tbb::internal::governor::stack_op_handler, a1);
    if (result)
    {
      *(a1 + 376) = 0;
    }
  }

  return result;
}

uint64_t tbb::internal::governor::stack_op_handler(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      v8 = tbb::internal::governor::theTLS;
      v9 = 0;
LABEL_17:
      pthread_setspecific(v8, v9);
      return 0;
    case 2:
      *(a2 + 376) = 0;
      v3 = a2 & 0xFFFFFFFFFFFFFFFELL;
      if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 0)
      {
        return 0;
      }

      if (*(v3 + 160) != 1)
      {
        return 0;
      }

      v4 = *(v3 + 152) - 1;
      *(v3 + 152) = v4;
      if (v4)
      {
        return 0;
      }

      v6 = pthread_getspecific(tbb::internal::governor::theTLS);
      if (*(v3 + 48))
      {
        if ((a2 | 1) != v6)
        {
          v7 = 1;
LABEL_20:
          pthread_setspecific(tbb::internal::governor::theTLS, (v7 | v3));
        }
      }

      else
      {
        v7 = (*(v3 + 74) & 1) == 0;
        if ((v3 | v7) != v6)
        {
          goto LABEL_20;
        }
      }

      tbb::internal::generic_scheduler::cleanup_master(v3, 0);
      return 0;
    case 1:
      if (a2)
      {
        if (*(a2 + 48))
        {
          v2 = 1;
        }

        else
        {
          v2 = (*(a2 + 74) & 1) == 0;
        }
      }

      else
      {
        v2 = 0;
      }

      v8 = tbb::internal::governor::theTLS;
      v9 = (v2 | a2);
      goto LABEL_17;
  }

  return 0;
}

uint64_t tbb::internal::governor::sign_off(uint64_t a1)
{
  result = pthread_setspecific(tbb::internal::governor::theTLS, 0);
  v3 = *(a1 + 376);
  if (v3)
  {
    v4 = *(a1 + 384);

    return v3(v4);
  }

  return result;
}

uint64_t tbb::internal::governor::one_time_init(uint64_t this)
{
  v1 = tbb::internal::__TBB_InitOnce::InitializationDone;
  __dmb(0xBu);
  if ((v1 & 1) == 0)
  {
    this = tbb::internal::DoOneTimeInitializations(this);
  }

  v2 = dword_2A153EBE8;
  __dmb(0xBu);
  if (v2 != 2)
  {
    while (1)
    {
      v3 = dword_2A153EBE8;
      __dmb(0xBu);
      if (!v3)
      {
        break;
      }

LABEL_9:
      while (1)
      {
        v5 = dword_2A153EBE8;
        __dmb(0xBu);
        if (v5 != 1)
        {
          break;
        }

        this = sched_yield();
      }

      v6 = dword_2A153EBE8;
      __dmb(0xBu);
      if (v6 == 2)
      {
        return this;
      }
    }

    while (1)
    {
      v4 = 0;
      atomic_compare_exchange_strong(&dword_2A153EBE8, &v4, 1u);
      if (!v4)
      {
        break;
      }

      if (dword_2A153EBE8)
      {
        goto LABEL_9;
      }
    }

    this = tbb::internal::dynamic_link("libcilkrts.so", &off_29F2951A8, 1, 0);
    if (this)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    __dmb(0xBu);
    dword_2A153EBE8 = v7;
  }

  return this;
}

uint64_t tbb::internal::governor::init_scheduler_weak(tbb::internal::governor *this)
{
  tbb::internal::governor::one_time_init(this);
  result = tbb::internal::generic_scheduler::create_master(0, v1, v2, v3, v4);
  *(result + 160) = 1;
  return result;
}

uint64_t tbb::internal::governor::init_scheduler(tbb::internal::governor *this, uint64_t a2, char a3)
{
  v5 = this;
  v22 = *MEMORY[0x29EDCA608];
  tbb::internal::governor::one_time_init(this);
  v6 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v6)
  {
    master = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 1) == 0)
    {
      v10 = v6;
      v11 = tbb::internal::governor::DefaultNumberOfThreads;
      if (!tbb::internal::governor::DefaultNumberOfThreads)
      {
        *v21 = 0x1900000006;
        v20 = 0;
        v19 = 4;
        sysctl(v21, 2u, &v20, &v19, 0, 0);
        if (v20 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v20;
        }

        tbb::internal::governor::DefaultNumberOfThreads = v11;
      }

      arena = tbb::internal::market::create_arena(v11, 1, 0, v7, v8);
      tbb::internal::generic_scheduler::attach_arena(master, arena, 0, 1);
      **(master + 40) = master;
      *(*(master + 48) + 320) = *(*(master + 144) - 56);
      pthread_setspecific(tbb::internal::governor::theTLS, (v10 | 1));
    }

    if ((a3 & 1) == 0)
    {
      ++*(master + 152);
    }
  }

  else
  {
    if (v5 == -1)
    {
      v5 = tbb::internal::governor::DefaultNumberOfThreads;
      if (!tbb::internal::governor::DefaultNumberOfThreads)
      {
        *v21 = 0x1900000006;
        v20 = 0;
        v19 = 4;
        sysctl(v21, 2u, &v20, &v19, 0, 0);
        if (v20 <= 1)
        {
          v5 = 1;
        }

        else
        {
          v5 = v20;
        }

        tbb::internal::governor::DefaultNumberOfThreads = v5;
      }
    }

    v13 = tbb::internal::market::create_arena(v5, 1, a2, v7, v8);
    master = tbb::internal::generic_scheduler::create_master(v13, v14, v15, v16, v17);
    *(master + 160) = a3;
  }

  return master;
}

uint64_t tbb::internal::governor::terminate_scheduler(tbb::internal::governor *this, tbb::internal::generic_scheduler *a2)
{
  v2 = *(this + 19) - 1;
  *(this + 19) = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return tbb::internal::generic_scheduler::cleanup_master(this, a2);
  }
}

const char *tbb::internal::governor::print_version_info(tbb::internal::governor *this, uint64_t a2, const char *a3)
{
  if (tbb::internal::governor::UsePrivateRML == 1)
  {
    result = tbb::internal::PrintExtraVersionInfo("RML", "private", a3);
  }

  else
  {
    tbb::internal::PrintExtraVersionInfo("RML", "shared", a3);
    result = tbb::internal::rml::tbb_factory::call_with_server_info(&tbb::internal::governor::theRMLServerFactory, tbb::internal::PrintRMLVersionInfo, "");
  }

  if (off_2A153EBE0)
  {

    return tbb::internal::PrintExtraVersionInfo("CILK", "libcilkrts.so", v4);
  }

  return result;
}

uint64_t tbb::internal::governor::initialize_rml_factory(tbb::internal::governor *this)
{
  result = tbb::internal::rml::tbb_factory::open(&tbb::internal::governor::theRMLServerFactory);
  tbb::internal::governor::UsePrivateRML = result != 0;
  return result;
}

void tbb::internal::numa_topology::initialization_impl(tbb::internal::numa_topology *this)
{
  tbb::internal::governor::one_time_init(this);
  if ((atomic_load_explicit(&qword_2A153EBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EBF0))
  {
    v1 = tbb::internal::governor::DefaultNumberOfThreads;
    if (!tbb::internal::governor::DefaultNumberOfThreads)
    {
      v1 = sub_299FFADEC();
      tbb::internal::governor::DefaultNumberOfThreads = v1;
    }

    dword_2A153EBEC = v1;
    __cxa_guard_release(&qword_2A153EBF0);
  }

  byte_2A153EBF8 = 1;
  qword_2A153EC00 = &dword_2A153EBEC;
}

void tbb::internal::numa_topology::initialize(uint64_t this)
{
  v1 = dword_2A153EC08;
  __dmb(0xBu);
  if (v1 != 2)
  {
    while (1)
    {
      v2 = dword_2A153EC08;
      __dmb(0xBu);
      if (!v2)
      {
        break;
      }

LABEL_7:
      while (1)
      {
        v4 = dword_2A153EC08;
        __dmb(0xBu);
        if (v4 != 1)
        {
          break;
        }

        this = sched_yield();
      }

      v5 = dword_2A153EC08;
      __dmb(0xBu);
      if (v5 == 2)
      {
        return;
      }
    }

    while (1)
    {
      v3 = 0;
      atomic_compare_exchange_strong(&dword_2A153EC08, &v3, 1u);
      if (!v3)
      {
        break;
      }

      if (dword_2A153EC08)
      {
        goto LABEL_7;
      }
    }

    tbb::internal::governor::one_time_init(this);
    if ((atomic_load_explicit(&qword_2A153EBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EBF0))
    {
      v6 = tbb::internal::governor::DefaultNumberOfThreads;
      if (!tbb::internal::governor::DefaultNumberOfThreads)
      {
        v6 = sub_299FFADEC();
        tbb::internal::governor::DefaultNumberOfThreads = v6;
      }

      dword_2A153EBEC = v6;
      __cxa_guard_release(&qword_2A153EBF0);
    }

    byte_2A153EBF8 = 1;
    qword_2A153EC00 = &dword_2A153EBEC;
    __dmb(0xBu);
    dword_2A153EC08 = 2;
  }
}

void tbb::internal::numa_topology::fill(tbb::internal::numa_topology *this, int *a2)
{
  tbb::internal::numa_topology::initialize(this);
  if (byte_2A153EBF8 == 1)
  {
    *this = -1;
  }
}

uint64_t tbb::internal::numa_topology::default_concurrency(tbb::internal::numa_topology *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((this & 0x80000000) != 0)
  {
    result = tbb::internal::governor::DefaultNumberOfThreads;
    if (!tbb::internal::governor::DefaultNumberOfThreads)
    {
      *v5 = 0x1900000006;
      v4 = 0;
      v3 = 4;
      sysctl(v5, 2u, &v4, &v3, 0, 0);
      if (v4 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v4;
      }

      tbb::internal::governor::DefaultNumberOfThreads = result;
    }
  }

  else
  {
    v1 = this;
    tbb::internal::numa_topology::initialize(this);
    return *(qword_2A153EC00 + 4 * v1);
  }

  return result;
}

uint64_t tbb::task_scheduler_init::initialize(uint64_t this, tbb::internal::governor *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 != -2)
  {
    v6 = this;
    if (*this)
    {
      tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x1FF, "!my_scheduler", "task_scheduler_init already initialized", a5);
    }

    if (a2 != -1 && a2 <= 0)
    {
      tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x201, "number_of_threads==automatic || number_of_threads > 0", "number_of_threads for task_scheduler_init must be automatic or positive", a5);
    }

    this = tbb::internal::governor::init_scheduler(a2, 0, 0);
    if ((~*(this + 74) & 3) == 0)
    {
      this |= (*(*(*(this + 144) - 56) + 128) >> 16) & 1;
    }

    *v6 = this;
  }

  return this;
}

{
  v5 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  if (a2 == -2)
  {
    if (v5)
    {

      return tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x212, "!thread_stack_size", "deferred initialization ignores stack size setting", a5);
    }
  }

  else
  {
    v6 = a3;
    v8 = this;
    if (*this)
    {
      tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x1FF, "!my_scheduler", "task_scheduler_init already initialized", a5);
    }

    if (a2 != -1 && a2 <= 0)
    {
      tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x201, "number_of_threads==automatic || number_of_threads > 0", "number_of_threads for task_scheduler_init must be automatic or positive", a5);
    }

    this = tbb::internal::governor::init_scheduler(a2, v5, 0);
    if ((~*(this + 74) & 3) == 0)
    {
      v9 = *(*(this + 144) - 56);
      v10 = *(v9 + 128);
      v11 = (v10 >> 16) & 1;
      v12 = v10 & 0xFFFFFFFFFFFEFFFFLL;
      if ((v6 & 2) == 0)
      {
        v12 = *(v9 + 128);
      }

      v13 = v10 | 0x10000;
      if ((v6 & 1) == 0)
      {
        v13 = v12;
      }

      *(v9 + 128) = v13;
      this |= v11;
    }

    *v8 = this;
  }

  return this;
}

uint64_t tbb::task_scheduler_init::internal_terminate(tbb::task_scheduler_init *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *this;
  *this = 0;
  v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    v7 = a2;
    tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x21D, "s", "task_scheduler_init::terminate without corresponding task_scheduler_init::initialize()", a5);
    a2 = v7;
  }

  if ((~*(v6 + 74) & 3) == 0)
  {
    *(*(*(v6 + 144) - 56) + 128) = *(*(*(v6 + 144) - 56) + 128) & 0xFFFFFFFFFFFEFFFFLL | ((v5 & 1) << 16);
  }

  v8 = *(v6 + 152) - 1;
  *(v6 + 152) = v8;
  if (v8)
  {
    return 0;
  }

  return tbb::internal::generic_scheduler::cleanup_master(v5 & 0xFFFFFFFFFFFFFFFELL, a2);
}

const char *tbb::task_scheduler_init::terminate(const char *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *this;
  *this = 0;
  v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    this = tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x21D, "s", "task_scheduler_init::terminate without corresponding task_scheduler_init::initialize()", a5);
  }

  if ((~*(v6 + 74) & 3) == 0)
  {
    *(*(*(v6 + 144) - 56) + 128) = *(*(*(v6 + 144) - 56) + 128) & 0xFFFFFFFFFFFEFFFFLL | ((v5 & 1) << 16);
  }

  v7 = *(v6 + 152) - 1;
  *(v6 + 152) = v7;
  if (!v7)
  {

    return tbb::internal::generic_scheduler::cleanup_master(v5 & 0xFFFFFFFFFFFFFFFELL, 0);
  }

  return this;
}

uint64_t tbb::task_scheduler_init::internal_blocking_terminate(tbb::task_scheduler_init *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *this;
  *this = 0;
  v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/governor.cpp", 0x21D, "s", "task_scheduler_init::terminate without corresponding task_scheduler_init::initialize()", a5);
  }

  if ((~*(v7 + 74) & 3) == 0)
  {
    *(*(*(v7 + 144) - 56) + 128) = *(*(*(v7 + 144) - 56) + 128) & 0xFFFFFFFFFFFEFFFFLL | ((v6 & 1) << 16);
  }

  v8 = *(v7 + 152) - 1;
  *(v7 + 152) = v8;
  if (v8)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = tbb::internal::generic_scheduler::cleanup_master(v6 & 0xFFFFFFFFFFFFFFFELL, 1);
    if (!a2)
    {
      return result;
    }
  }

  if ((result & 1) == 0)
  {
    v10 = result;
    tbb::internal::throw_exception_v4(19);
    return v10;
  }

  return result;
}

uint64_t tbb::task_scheduler_init::default_num_threads(tbb::task_scheduler_init *this)
{
  v5 = *MEMORY[0x29EDCA608];
  result = tbb::internal::governor::DefaultNumberOfThreads;
  if (!tbb::internal::governor::DefaultNumberOfThreads)
  {
    *v4 = 0x1900000006;
    v3 = 0;
    v2 = 4;
    sysctl(v4, 2u, &v3, &v2, 0, 0);
    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    tbb::internal::governor::DefaultNumberOfThreads = result;
  }

  return result;
}

os_log_t sub_299FFADBC()
{
  result = os_log_create("com.apple.usdlib", "tbbgovernor");
  qword_2A153EC10 = result;
  return result;
}

uint64_t sub_299FFADEC()
{
  v4 = *MEMORY[0x29EDCA608];
  *v3 = 0x1900000006;
  v2 = 0;
  v1 = 4;
  sysctl(v3, 2u, &v2, &v1, 0, 0);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t tbb::internal::market::insert_arena_into_list(uint64_t result, uint64_t *a2)
{
  v2 = result + 72 + 40 * a2[17];
  v3 = a2[17];
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *a2 = v2;
  a2[1] = v4;
  *v4 = a2;
  *(v2 + 8) = a2;
  *(v2 + 16) = v5 + 1;
  if (!v5)
  {
    *(result + 72 + 40 * v3 + 24) = a2;
  }

  return result;
}

uint64_t tbb::internal::market::remove_arena_from_list(uint64_t result, uint64_t *a2)
{
  v2 = (result + 72 + 40 * a2[17]);
  v3 = v2[3];
  if (v3 == a2)
  {
    v4 = v3[1];
    if (v4 == v2 && v2[2] >= 2uLL)
    {
      v4 = v2[1];
    }

    v2[3] = v4;
  }

  --v2[2];
  v5 = *a2;
  v6 = a2[1];
  *v6 = *a2;
  *(v5 + 8) = v6;
  return result;
}

int64x2_t *tbb::internal::market::market(int64x2_t *this, const char *a2, uint64_t a3, void *a4)
{
  this->i64[0] = &unk_2A203AAE8;
  this->i64[1] = 0;
  this[1].i32[2] = a3;
  this[1].i32[3] = a2;
  this[3] = vdupq_n_s64(1uLL);
  this[5].i64[0] = &this[4].i64[1];
  this[5].i64[1] = 0;
  this[4].i64[1] = &this[4].i64[1];
  this[7].i64[1] = this[7].i64;
  this[8].i64[0] = 0;
  this[7].i64[0] = this[7].i64;
  this[10].i64[0] = &this[9].i64[1];
  this[10].i64[1] = 0;
  this[9].i64[1] = &this[9].i64[1];
  this[12].i32[2] = 1;
  this[13].i64[0] = a4;
  this[13].i32[3] = a2;
  this[14].i64[1] = this[14].i64;
  this[15].i64[0] = 0;
  this[14].i64[0] = this[14].i64;
  this[9].i32[1] = a2;
  this[1].i64[0] = tbb::internal::governor::create_rml_server(this, a2, a3, a4);
  return this;
}

{
  this->i64[0] = &unk_2A203AAE8;
  this->i64[1] = 0;
  this[1].i32[2] = a3;
  this[1].i32[3] = a2;
  this[3] = vdupq_n_s64(1uLL);
  this[5].i64[0] = &this[4].i64[1];
  this[5].i64[1] = 0;
  this[4].i64[1] = &this[4].i64[1];
  this[7].i64[1] = this[7].i64;
  this[8].i64[0] = 0;
  this[7].i64[0] = this[7].i64;
  this[10].i64[0] = &this[9].i64[1];
  this[10].i64[1] = 0;
  this[9].i64[1] = &this[9].i64[1];
  this[12].i32[2] = 1;
  this[13].i64[0] = a4;
  this[13].i32[3] = a2;
  this[14].i64[1] = this[14].i64;
  this[15].i64[0] = 0;
  this[14].i64[0] = this[14].i64;
  this[9].i32[1] = a2;
  this[1].i64[0] = tbb::internal::governor::create_rml_server(this, a2, a3, a4);
  return this;
}

int64x2_t *tbb::internal::market::global_market(uint64_t this, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v7 = this;
  v42 = *MEMORY[0x29EDCA608];
  v8 = (&tbb::internal::market::theMarketMutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_2:
  v9 = *v8 & ~(255 << (8 * (&tbb::internal::market::theMarketMutex & 3)));
  while (1)
  {
    v10 = v9;
    atomic_compare_exchange_strong(v8, &v10, v9 | (1 << (8 * (&tbb::internal::market::theMarketMutex & 3))));
    if (v10 == v9)
    {
      break;
    }

    if (*v8 != v9)
    {
      this = sched_yield();
      goto LABEL_2;
    }
  }

  v11 = tbb::internal::market::theMarket;
  if (tbb::internal::market::theMarket)
  {
    ++*(tbb::internal::market::theMarket + 200);
    if (v7)
    {
      v12 = v11[12].i32[3];
      v11[12].i32[3] = v12 + 1;
      __dmb(0xBu);
      LOBYTE(tbb::internal::market::theMarketMutex) = 0;
      if (!v12)
      {
        v13 = v11[1].u32[2];
        v14 = tbb::internal::market::app_parallelism_limit(this);
        if (v14)
        {
          v15 = v14 - 1;
        }

        else
        {
          v33 = tbb::internal::governor::DefaultNumberOfThreads;
          if (!tbb::internal::governor::DefaultNumberOfThreads)
          {
            *v41 = 0x1900000006;
            v40 = 0;
            v39 = 4;
            sysctl(v41, 2u, &v40, &v39, 0, 0);
            v33 = v40;
            if (v40 <= 1)
            {
              v33 = 1;
            }

            tbb::internal::governor::DefaultNumberOfThreads = v33;
          }

          v15 = v33 - 1;
          if (v15 <= a2)
          {
            v15 = a2;
          }
        }

        if (v15 >= v13)
        {
          v34 = v13 - 1;
        }

        else
        {
          v34 = v15;
        }

        tbb::internal::market::set_active_num_workers(v34);
      }
    }

    else
    {
      __dmb(0xBu);
      LOBYTE(tbb::internal::market::theMarketMutex) = 0;
    }

    v35 = tbb::internal::governor::DefaultNumberOfThreads;
    if (!tbb::internal::governor::DefaultNumberOfThreads)
    {
      *v41 = 0x1900000006;
      v40 = 0;
      v39 = 4;
      sysctl(v41, 2u, &v40, &v39, 0, 0);
      v35 = v40;
      if (v40 <= 1)
      {
        v35 = 1;
      }

      tbb::internal::governor::DefaultNumberOfThreads = v35;
    }

    if (v35 - 1 != a2)
    {
      v36 = v11[13].u32[3];
      if (v36 < a2)
      {
        tbb::internal::runtime_warning("The number of workers is currently limited to %u. The request for %u workers is ignored. Further requests for more workers will be silently ignored until the limit changes.\n", a2, v11[13].u32[3], a2);
        do
        {
          v37 = v36;
          atomic_compare_exchange_strong(&v11[13].i32[3], &v37, 0xFFFFFFFF);
        }

        while (v37 != v36 && v11[13].i32[3] == v36);
      }
    }

    if (v11[13].i64[0] < v5)
    {
      tbb::internal::runtime_warning("Thread stack size has been already set to %u. The request for larger stack (%u) cannot be satisfied.\n", a2, v11[13].i64[0], v5);
    }
  }

  else
  {
    if (!v5)
    {
      this = tbb::interface9::global_control::active_value(1, a2, a3, a4, a5);
      v5 = this;
    }

    v16 = tbb::internal::governor::DefaultNumberOfThreads;
    if (!tbb::internal::governor::DefaultNumberOfThreads)
    {
      *v41 = 0x1900000006;
      v40 = 0;
      v39 = 4;
      this = sysctl(v41, 2u, &v40, &v39, 0, 0);
      if (v40 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v40;
      }

      tbb::internal::governor::DefaultNumberOfThreads = v16;
    }

    v17 = tbb::internal::market::app_parallelism_limit(this);
    if (v16 >= 0x81)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = v16 << v18;
    if (v19 <= v17)
    {
      v19 = v17;
    }

    if (v19 <= 0x100)
    {
      v20 = 256;
    }

    else
    {
      v20 = v19;
    }

    v21 = tbb::internal::market::app_parallelism_limit(v17);
    if (v21)
    {
      v22 = v21 - 1;
    }

    else
    {
      v23 = tbb::internal::governor::DefaultNumberOfThreads;
      if (!tbb::internal::governor::DefaultNumberOfThreads)
      {
        *v41 = 0x1900000006;
        v40 = 0;
        v39 = 4;
        v21 = sysctl(v41, 2u, &v40, &v39, 0, 0);
        v23 = v40;
        if (v40 <= 1)
        {
          v23 = 1;
        }

        tbb::internal::governor::DefaultNumberOfThreads = v23;
      }

      v22 = v23 - 1;
      if (v22 <= a2)
      {
        v22 = a2;
      }
    }

    if (v22 >= v20)
    {
      v24 = v20 - 1;
    }

    else
    {
      v24 = v22;
    }

    tbb::internal::__TBB_InitOnce::add_ref(v21);
    v25 = 8 * (v20 - 1);
    v11 = tbb::internal::NFS_Allocate(1uLL, v25 + 256, 0, v26);
    bzero(v11, v25 + 256);
    v11->i64[0] = &unk_2A203AAE8;
    v11->i64[1] = 0;
    v11[1].i32[2] = v20;
    v11[1].i32[3] = v24;
    v11[3] = vdupq_n_s64(1uLL);
    v11[5].i64[0] = &v11[4].i64[1];
    v11[5].i64[1] = 0;
    v11[4].i64[1] = &v11[4].i64[1];
    v11[7].i64[1] = v11[7].i64;
    v11[8].i64[0] = 0;
    v11[7].i64[0] = v11[7].i64;
    v11[10].i64[0] = &v11[9].i64[1];
    v11[10].i64[1] = 0;
    v11[9].i64[1] = &v11[9].i64[1];
    v11[12].i32[2] = 1;
    v11[13].i64[0] = v5;
    v11[13].i32[3] = v24;
    v11[14].i64[1] = v11[14].i64;
    v11[15].i64[0] = 0;
    v11[14].i64[0] = v11[14].i64;
    v11[9].i32[1] = v24;
    rml_server = tbb::internal::governor::create_rml_server(v11, v27, v28, v29);
    v11[1].i64[0] = rml_server;
    if (v7)
    {
      v11[12].i32[3] = 1;
    }

    tbb::internal::market::theMarket = v11;
    if ((tbb::internal::governor::UsePrivateRML & 1) == 0 && (*(*rml_server + 32))(rml_server) < v24)
    {
      v31 = (*(*v11[1].i64[0] + 32))(v11[1].i64[0]);
      tbb::internal::runtime_warning("RML might limit the number of workers to %u while %u is requested.\n", v32, v31, v24);
    }

    __dmb(0xBu);
    LOBYTE(tbb::internal::market::theMarketMutex) = 0;
  }

  return v11;
}

void sub_299FFB4C0(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t tbb::internal::market::set_active_num_workers(uint64_t this)
{
  v1 = this;
  v2 = (&tbb::internal::market::theMarketMutex & 0xFFFFFFFFFFFFFFFCLL);
  v3 = 1 << (8 * (&tbb::internal::market::theMarketMutex & 3));
  v4 = ~(255 << (8 * (&tbb::internal::market::theMarketMutex & 3)));
LABEL_2:
  v5 = *v2 & v4;
  while (1)
  {
    v6 = v5;
    atomic_compare_exchange_strong(v2, &v6, v5 | v3);
    if (v6 == v5)
    {
      break;
    }

    if (*v2 != v5)
    {
      this = sched_yield();
      goto LABEL_2;
    }
  }

  v7 = tbb::internal::market::theMarket;
  if (!tbb::internal::market::theMarket || *(tbb::internal::market::theMarket + 28) == v1)
  {
    goto LABEL_27;
  }

  ++*(tbb::internal::market::theMarket + 200);
  __dmb(0xBu);
  LOBYTE(tbb::internal::market::theMarketMutex) = 0;
  v8 = (v7 + 8);
  tbb::spin_rw_mutex_v3::internal_acquire_writer((v7 + 8));
  if (!*(v7 + 28))
  {
    v21 = *(v7 + 44);
    if (v21 >= 1)
    {
      v22 = *(v7 + 48);
      v23 = *(v7 + 56);
      if (v23 <= v22)
      {
        do
        {
          v25 = v7 + 72 + 40 * v22;
          for (i = *(v25 + 8); i != v25; i = *(i + 8))
          {
            if (*(i + 337) == 1)
            {
              *(i + 337) = 0;
              *(v7 + 44) = --v21;
            }
          }

          v24 = v23 < v22--;
        }

        while (v24);
      }
    }
  }

  __dmb(0xBu);
  *(v7 + 28) = v1;
  *(v7 + 220) = v1;
  v9 = *(v7 + 48);
  if (!v1)
  {
    v10 = *(v7 + 56);
    v11 = v9;
    if (v10 <= v9)
    {
      do
      {
        v28 = v7 + 72 + 40 * v11;
        for (j = *(v28 + 8); j != v28; j = *(j + 8))
        {
          if (*(j + 8 * v11 + 152))
          {
            *(j + 337) = 1;
            ++*(v7 + 44);
          }
        }

        v24 = v10 < v11--;
      }

      while (v24);
    }
  }

  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  if (v13 >= v1)
  {
    v13 = v1;
  }

  if (*(v7 + 44) >= 1)
  {
    v13 = 1;
  }

  *(v7 + 32) = v13;
  *(v7 + 40 * v9 + 108) = v13;
  this = tbb::internal::market::update_allotment(v7, v9);
  v14 = *(v7 + 32);
LABEL_16:
  v15 = *v8;
  v16 = *v8 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v17 = v15;
    atomic_compare_exchange_strong(v8, &v17, v16);
    if (v17 == v15)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v8, 0, memory_order_relaxed) != v15)
    {
      this = sched_yield();
      goto LABEL_16;
    }
  }

  if (v14 != v12)
  {
    this = (*(**(v7 + 16) + 40))(*(v7 + 16), (v14 - v12));
  }

LABEL_22:
  v18 = *v2 & v4;
  while (1)
  {
    v19 = v18;
    atomic_compare_exchange_strong(v2, &v19, v18 | v3);
    if (v19 == v18)
    {
      break;
    }

    if (*v2 != v18)
    {
      this = sched_yield();
      goto LABEL_22;
    }
  }

  v20 = *(v7 + 200) - 1;
  *(v7 + 200) = v20;
  if (v20)
  {
LABEL_27:
    __dmb(0xBu);
    LOBYTE(tbb::internal::market::theMarketMutex) = 0;
  }

  else
  {
    tbb::internal::market::theMarket = 0;
    __dmb(0xBu);
    LOBYTE(tbb::internal::market::theMarketMutex) = 0;
    *(v7 + 216) = 0;
    v27 = *(**(v7 + 16) + 8);

    return v27();
  }

  return this;
}

tbb::internal::governor *tbb::internal::market::destroy(tbb::internal::market *this, void *a2)
{
  v2 = tbb::internal::NFS_Free(this, a2);

  return tbb::internal::__TBB_InitOnce::remove_ref(v2);
}

uint64_t tbb::internal::market::release(tbb::internal::market *this, int a2, uint64_t a3)
{
  v6 = (&tbb::internal::market::theMarketMutex & 0xFFFFFFFFFFFFFFFCLL);
  v7 = 1 << (8 * (&tbb::internal::market::theMarketMutex & 3));
  v8 = ~(255 << (8 * (&tbb::internal::market::theMarketMutex & 3)));
LABEL_2:
  v9 = *v6 & v8;
  while (1)
  {
    v10 = v9;
    atomic_compare_exchange_strong(v6, &v10, v9 | v7);
    if (v10 == v9)
    {
      break;
    }

    if (*v6 != v9)
    {
      sched_yield();
      goto LABEL_2;
    }
  }

  if (a3)
  {
    while (*(this + 51) == 1 && *(this + 50) >= 2u)
    {
      __dmb(0xBu);
      LOBYTE(tbb::internal::market::theMarketMutex) = 0;
      while (1)
      {
        v11 = *(this + 51);
        __dmb(0xBu);
        if (v11 != 1)
        {
          break;
        }

        v12 = *(this + 50);
        __dmb(0xBu);
        if (v12 < 2)
        {
          break;
        }

        sched_yield();
      }

LABEL_13:
      v13 = *v6 & v8;
      while (1)
      {
        v14 = v13;
        atomic_compare_exchange_strong(v6, &v14, v13 | v7);
        if (v14 == v13)
        {
          break;
        }

        if (*v6 != v13)
        {
          sched_yield();
          goto LABEL_13;
        }
      }
    }
  }

  if (a2)
  {
    --*(this + 51);
  }

  v15 = *(this + 50) - 1;
  *(this + 50) = v15;
  if (v15)
  {
    a3 = 0;
    __dmb(0xBu);
    LOBYTE(tbb::internal::market::theMarketMutex) = 0;
  }

  else
  {
    tbb::internal::market::theMarket = 0;
    __dmb(0xBu);
    LOBYTE(tbb::internal::market::theMarketMutex) = 0;
    *(this + 216) = a3;
    (*(**(this + 2) + 8))(*(this + 2), 0);
  }

  return a3;
}

void sub_299FFB99C(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t tbb::internal::market::update_workers_request(tbb::internal::market *this)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (*(this + 10) < v2)
  {
    v2 = *(this + 10);
  }

  if (*(this + 11) >= 1)
  {
    v2 = 1;
  }

  *(this + 8) = v2;
  v4 = *(this + 6);
  *(this + 10 * v4 + 27) = v2;
  tbb::internal::market::update_allotment(this, v4);
  return (*(this + 8) - v3);
}

uint64_t tbb::internal::market::update_allotment(uint64_t this, uint64_t a2)
{
  v2 = this + 72;
  v3 = *(this + 56);
  if (v3 <= a2)
  {
    v7 = *(v2 + 40 * a2 + 36);
    while (1)
    {
      v10 = v2 + 40 * a2;
      *(v10 + 36) = v7;
      v11 = *(v10 + 32);
      if (v11)
      {
        v12 = v11 >= v7 ? v7 : *(v10 + 32);
        v13 = *(v10 + 8);
        if (v13 == v10)
        {
          v8 = 0;
        }

        else
        {
          v8 = 0;
          v14 = 0;
          do
          {
            v17 = *(v13 + 212);
            if (v17 >= 1)
            {
              if (*(this + 28))
              {
                v15 = v14 + v17 * v12;
                v16 = v15 / v11;
                v14 = v15 % v11;
                if (v16 >= *(v13 + 208))
                {
                  v16 = *(v13 + 208);
                }
              }

              else
              {
                v16 = *(v13 + 337);
                if (v8 >= v12)
                {
                  v16 = 0;
                }
              }

              *(v13 + 128) = v16;
              v8 += v16;
            }

            v13 = *(v13 + 8);
          }

          while (v13 != v10);
        }

        v7 -= v8;
        if (v7 < 1)
        {
          break;
        }
      }

      v4 = a2 - 1;
      if (a2-- <= v3)
      {
        goto LABEL_3;
      }
    }
  }

  v4 = a2;
LABEL_3:
  while (v4 > v3)
  {
    --v4;
    v5 = v2 + 40 * v4;
    *(v5 + 36) = 0;
    for (i = *(v5 + 8); i != v5; i = *(i + 8))
    {
      *(i + 128) = 0;
    }
  }

  return this;
}

uint64_t tbb::internal::market::disable_mandatory_concurrency_impl(uint64_t result, uint64_t a2)
{
  *(a2 + 337) = 0;
  --*(result + 44);
  return result;
}

uint64_t tbb::internal::market::enable_mandatory_concurrency_impl(uint64_t result, uint64_t a2)
{
  *(a2 + 337) = 1;
  ++*(result + 44);
  return result;
}

uint64_t sub_299FFBB38(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = 0;
    if (*(a1 + 8) == 1)
    {
LABEL_3:
      v3 = *v2;
      v4 = *v2 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v5 = v3;
        atomic_compare_exchange_strong(v2, &v5, v4);
        if (v5 == v3)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v2, 0, memory_order_relaxed) != v3)
        {
          sched_yield();
          goto LABEL_3;
        }
      }
    }

    else
    {
      atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return a1;
}

tbb::internal::arena *tbb::internal::market::create_arena(tbb::internal::market *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = tbb::internal::market::global_market(1, (this - a2), a3, a4, a5);
  arena = tbb::internal::arena::allocate_arena(v7, this, a2, v8);
  v10 = &v7->i64[1];
  tbb::spin_rw_mutex_v3::internal_acquire_writer(&v7->i64[1]);
  v11 = &v7[4].i64[5 * *(arena + 17) + 1];
  v12 = *(arena + 17);
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  *arena = v11;
  *(arena + 1) = v13;
  *v13 = arena;
  *(v11 + 8) = arena;
  *(v11 + 16) = v14 + 1;
  if (!v14)
  {
    v7[6].i64[5 * v12] = arena;
  }

LABEL_3:
  v15 = *v10;
  v16 = *v10 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v17 = v15;
    atomic_compare_exchange_strong(v10, &v17, v16);
    if (v17 == v15)
    {
      return arena;
    }

    if (atomic_fetch_add_explicit(v10, 0, memory_order_relaxed) != v15)
    {
      sched_yield();
      goto LABEL_3;
    }
  }
}

uint64_t tbb::internal::market::detach_arena(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 337) == 1)
  {
    *(a2 + 337) = 0;
    --*(result + 44);
  }

  v2 = (result + 72 + 40 * a2[17]);
  v3 = v2[3];
  if (v3 == a2)
  {
    v4 = v3[1];
    if (v4 == v2 && v2[2] >= 2uLL)
    {
      v4 = v2[1];
    }

    v2[3] = v4;
  }

  --v2[2];
  v5 = *a2;
  v6 = a2[1];
  *v6 = *a2;
  *(v5 + 8) = v6;
  v7 = a2[39];
  if (v7 == *(result + 192))
  {
    *(result + 192) = v7 + 1;
  }

  return result;
}

uint64_t tbb::internal::market::try_destroy_arena(atomic_ullong *this, tbb::internal::arena *a2, uint64_t a3)
{
  v6 = this + 1;
  result = tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 1);
  v9 = this + 9;
  v10 = this + 19;
  do
  {
    v10 = v10[1];
    if (v10 == this + 19)
    {
      v10 = this + 14;
      while (1)
      {
        v10 = v10[1];
        if (v10 == this + 14)
        {
          break;
        }

        if (v10 == a2)
        {
          goto LABEL_12;
        }
      }

      v10 = this + 9;
      while (1)
      {
        v10 = v10[1];
        if (v10 == v9)
        {
          break;
        }

        if (v10 == a2)
        {
          goto LABEL_12;
        }
      }

      if ((*v6 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      v15 = *v6;
      v16 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v17 = v15;
        atomic_compare_exchange_strong(v6, &v17, v16);
        if (v17 == v15)
        {
          return result;
        }

        if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v15)
        {
          result = sched_yield();
          goto LABEL_23;
        }
      }
    }
  }

  while (v10 != a2);
LABEL_12:
  if (v10[39] != a3 || *(a2 + 53) || (v11 = *(a2 + 33), __dmb(0xBu), v11))
  {
    if ((*v6 & 1) == 0)
    {
LABEL_16:
      atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFCLL);
      return result;
    }

LABEL_18:
    v12 = *v6;
    v13 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v14 = v12;
      atomic_compare_exchange_strong(v6, &v14, v13);
      if (v14 == v12)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v12)
      {
        result = sched_yield();
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (*(a2 + 337) == 1)
    {
      *(a2 + 337) = 0;
      --*(this + 11);
    }

    v18 = &v9[5 * *(a2 + 17)];
    v19 = *(v18 + 3);
    if (v19 == a2)
    {
      v20 = *(v19 + 1);
      if (v20 == v18 && *(v18 + 2) >= 2uLL)
      {
        v20 = *(v18 + 1);
      }

      *(v18 + 3) = v20;
    }

    --*(v18 + 2);
    v21 = *a2;
    v22 = *(a2 + 1);
    *v22 = *a2;
    *(v21 + 8) = v22;
    v23 = *(a2 + 39);
    if (v23 == this[24])
    {
      this[24] = v23 + 1;
    }

    if (*v6)
    {
LABEL_41:
      v24 = *v6;
      v25 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v26 = v24;
        atomic_compare_exchange_strong(v6, &v26, v25);
        if (v26 == v24)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v24)
        {
          sched_yield();
          goto LABEL_41;
        }
      }
    }

    else
    {
      atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFCLL);
    }

    return tbb::internal::arena::free_arena(a2, v8);
  }

  return result;
}

uint64_t tbb::internal::market::arena_in_need(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) == a2)
  {
    return 0;
  }

  result = a3;
  while (1)
  {
    v4 = *(result + 8);
    v5 = *(a2 + 8);
    v6 = *(result + 132);
    __dmb(0xBu);
    if (*(result + 128) > v6 >> 12)
    {
      break;
    }

    if (v4 == a2)
    {
      result = v5;
    }

    else
    {
      result = v4;
    }

    if (result == a3)
    {
      return 0;
    }
  }

  atomic_fetch_add((result + 132), 0x1000u);
  return result;
}

uint64_t tbb::internal::market::update_allotment(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = *(a2 + 8);
  if (v5 == a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v10 = *(v5 + 212);
    if (v10 >= 1)
    {
      if (*(a1 + 28))
      {
        v8 = v7 + v10 * v4;
        v9 = v8 / a3;
        v7 = v8 % a3;
        if (v9 >= *(v5 + 208))
        {
          v9 = *(v5 + 208);
        }
      }

      else
      {
        v9 = *(v5 + 337);
        if (v6 >= v4)
        {
          v9 = 0;
        }
      }

      *(v5 + 128) = v9;
      v6 = (v9 + v6);
    }

    v5 = *(v5 + 8);
  }

  while (v5 != a2);
  return v6;
}

BOOL tbb::internal::market::is_arena_in_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    v3 = *(v3 + 8);
    result = v3 != a2;
  }

  while (v3 != a3 && v3 != a2);
  return result;
}

uint64_t tbb::internal::market::arena_in_need(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  __dmb(0xBu);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = (a1 + 8);
  tbb::spin_rw_mutex_v3::internal_acquire_reader((a1 + 8));
  v6 = *(a1 + 48);
  v7 = a1 + 72;
  if (a2)
  {
    v8 = v7 + 40 * v6;
    v9 = v8;
    while (1)
    {
      v9 = *(v9 + 8);
      if (v9 == v8)
      {
        break;
      }

      if (v9 == a2)
      {
        if (*(v8 + 8) == v8)
        {
          break;
        }

        result = a2;
        while (1)
        {
          v11 = *(result + 8);
          v12 = *(v8 + 8);
          v13 = *(result + 132);
          __dmb(0xBu);
          if (*(result + 128) > v13 >> 12)
          {
            break;
          }

          if (v11 == v8)
          {
            result = v12;
          }

          else
          {
            result = v11;
          }

          if (result == a2)
          {
            goto LABEL_13;
          }
        }

        atomic_fetch_add((result + 132), 0x1000u);
        goto LABEL_28;
      }
    }
  }

LABEL_13:
  if (*(a1 + 56) <= v6)
  {
    while (1)
    {
      v15 = v7 + 40 * v6;
      if (*(v15 + 8) != v15)
      {
        break;
      }

LABEL_17:
      if (*(a1 + 56) >= v6--)
      {
        goto LABEL_14;
      }
    }

    v16 = *(v15 + 24);
    result = v16;
    while (1)
    {
      v17 = *(result + 8);
      v18 = *(v15 + 8);
      v19 = *(result + 132);
      __dmb(0xBu);
      if (*(result + 128) > v19 >> 12)
      {
        break;
      }

      if (v17 == v15)
      {
        result = v18;
      }

      else
      {
        result = v17;
      }

      if (result == v16)
      {
        goto LABEL_17;
      }
    }

    atomic_fetch_add((result + 132), 0x1000u);
    __dmb(0xBu);
    *(v15 + 24) = result;
  }

  else
  {
LABEL_14:
    result = 0;
  }

LABEL_28:
  atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFCLL);
  return result;
}

uint64_t tbb::internal::market::enable_mandatory_concurrency(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  result = tbb::spin_rw_mutex_v3::internal_acquire_writer((a1 + 8));
  if (*(a1 + 28))
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (*(a2 + 337))
    {
      v6 = 0;
    }

    else
    {
      *(a2 + 337) = 1;
      v9 = *(a1 + 40);
      v8 = *(a1 + 44);
      *(a1 + 44) = v8 + 1;
      v10 = *(a1 + 32);
      v11 = v9 & (v9 >> 31);
      if (v8 >= 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      *(a1 + 32) = v12;
      v13 = *(a1 + 48);
      *(a1 + 40 * v13 + 108) = v12;
      result = tbb::internal::market::update_allotment(a1, v13);
      v7 = 0;
      v6 = *(a1 + 32) - v10;
    }
  }

LABEL_9:
  v14 = *v4;
  v15 = *v4 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v16 = v14;
    atomic_compare_exchange_strong(v4, &v16, v15);
    if (v16 == v14)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v4, 0, memory_order_relaxed) != v14)
    {
      result = sched_yield();
      goto LABEL_9;
    }
  }

  if (v6)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = *(**(a1 + 16) + 40);

    return v18();
  }

  return result;
}

uint64_t tbb::internal::market::mandatory_concurrency_disable(atomic_ullong *this, tbb::internal::arena *a2)
{
  v4 = this + 1;
  v5 = 1;
  result = tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 1);
  if (*(a2 + 337) == 1 && (result = tbb::internal::arena::has_enqueued_tasks(a2), (result & 1) == 0))
  {
    *(a2 + 337) = 0;
    v9 = *(this + 10);
    v8 = *(this + 11);
    v10 = *(this + 8);
    if (v9 >= *(this + 7))
    {
      v9 = *(this + 7);
    }

    v11 = __OFSUB__(v8, 1);
    v12 = v8 - 1;
    *(this + 11) = v12;
    if ((v12 < 0) ^ v11 | (v12 == 0))
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    *(this + 8) = v13;
    v14 = this[6];
    HIDWORD(this[5 * v14 + 13]) = v13;
    result = tbb::internal::market::update_allotment(this, v14);
    v5 = 0;
    v7 = *(this + 8) - v10;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  v15 = *v4;
  v16 = *v4 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v17 = v15;
    atomic_compare_exchange_strong(v4, &v17, v16);
    if (v17 == v15)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v4, 0, memory_order_relaxed) != v15)
    {
      result = sched_yield();
      goto LABEL_10;
    }
  }

  if (v7)
  {
    v18 = v5;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = *(*this[2] + 40);

    return v19();
  }

  return result;
}

uint64_t tbb::internal::market::adjust_demand(uint64_t result, uint64_t *a2, int a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = a3;
  v5 = result;
  v6 = (result + 8);
  result = tbb::spin_rw_mutex_v3::internal_acquire_writer((result + 8));
  v7 = *(a2 + 53);
  v8 = v7 + v3;
  *(a2 + 53) = v7 + v3;
  if (!((v7 + v3 < 0) ^ __OFADD__(v7, v3) | (v7 + v3 == 0)))
  {
    if (v7 < 0)
    {
      v3 += v7;
    }

LABEL_8:
    v9 = *(v5 + 44);
    *(v5 + 40) += v3;
    if (v9 >= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(v5 + 28);
    }

    v11 = a2[17];
    v12 = v5 + 72;
    v13 = v5 + 72 + 40 * v11;
    v15 = *(v13 + 32);
    v14 = (v13 + 32);
    *v14 = v15 + v3;
    if (v8 <= 0)
    {
      if (a2[17] != 1)
      {
        v16 = a2[17];
        v17 = (v12 + 40 * v16);
        v18 = v17[3];
        if (v18 == a2)
        {
          v19 = v18[1];
          if (v19 == v17 && v17[2] >= 2uLL)
          {
            v19 = v17[1];
          }

          v17[3] = v19;
        }

        --v17[2];
        v20 = *a2;
        v21 = a2[1];
        *v21 = *a2;
        *(v20 + 8) = v21;
        a2[17] = 1;
        v22 = v12 + 40 * a2[17];
        v23 = a2[17];
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        *a2 = v22;
        a2[1] = v24;
        *v24 = a2;
        *(v22 + 8) = a2;
        *(v22 + 16) = v25 + 1;
        if (!v25)
        {
          *(v12 + 40 * v23 + 24) = a2;
        }

        atomic_fetch_add(a2 + 34, 1uLL);
        v26 = *(a2 + 53);
        *(v12 + 40 * v16 + 32) -= v26;
        *(v5 + 144) += v26;
      }

      a2[33] = 1;
    }

    v27 = *(v5 + 48);
    if (v11 == v27)
    {
      if (!*v14)
      {
        v28 = (v5 + 40 * v11 + 108);
        while (v11 > *(v5 + 56))
        {
          --v11;
          v29 = *(v28 - 11);
          v28 -= 10;
          if (v29)
          {
            *(v5 + 48) = v11;
            if (*(v5 + 28))
            {
              v30 = 1;
            }

            else
            {
              v30 = *(v5 + 44) == 0;
            }

            if (v30)
            {
              v31 = *(v5 + 28);
            }

            else
            {
              v31 = 1;
            }

            *v28 = v31;
            goto LABEL_66;
          }
        }

        *(v5 + 48) = vdupq_n_s64(1uLL);
        if (*(v5 + 28))
        {
          v43 = 1;
        }

        else
        {
          v43 = *(v5 + 44) == 0;
        }

        if (v43)
        {
          v44 = *(v5 + 28);
        }

        else
        {
          v44 = 1;
        }

        *(v5 + 148) = v44;
LABEL_66:
        v45 = *(v5 + 64) + 1;
        __dmb(0xBu);
        *(v5 + 64) = v45;
      }

      v11 = *(v5 + 48);
      *(v12 + 40 * v11 + 36) = v10;
    }

    else if (v11 <= v27)
    {
      v37 = *(v5 + 56);
      if (v11 == v37)
      {
        if (!*v14)
        {
          v38 = (v5 + 40 * v11 + 144);
          while (v27 != v11)
          {
            ++v11;
            v39 = *v38;
            v38 += 10;
            if (v39)
            {
              *(v5 + 56) = v11;
              goto LABEL_69;
            }
          }

          *(v5 + 48) = vdupq_n_s64(1uLL);
          if (*(v5 + 28))
          {
            v56 = 1;
          }

          else
          {
            v56 = *(v5 + 44) == 0;
          }

          if (v56)
          {
            v57 = *(v5 + 28);
          }

          else
          {
            v57 = 1;
          }

          *(v5 + 148) = v57;
          v58 = *(v5 + 64) + 1;
          __dmb(0xBu);
          *(v5 + 64) = v58;
          goto LABEL_69;
        }
      }

      else if (v11 < v37)
      {
        *(v5 + 56) = v11;
        v11 = v37;
      }
    }

    else
    {
      *(v5 + 48) = v11;
      if (*(v5 + 28))
      {
        v32 = 1;
      }

      else
      {
        v32 = *(v5 + 44) == 0;
      }

      if (v32)
      {
        v33 = *(v5 + 28);
      }

      else
      {
        v33 = 1;
      }

      v34 = v12 + 40 * v11;
      *(v34 + 36) = v33;
      v35 = *(v5 + 64) + 1;
      __dmb(0xBu);
      *(v5 + 64) = v35;
      v36 = *(a2 + 53);
      if (v10 < v36)
      {
        v36 = v10;
      }

      *(a2 + 32) = v36;
      --v11;
      *(v34 - 4) = v10 - v36;
    }

    tbb::internal::market::update_allotment(v5, v11);
LABEL_69:
    v46 = *(v5 + 32);
    v47 = v46 + v3;
    if (v3 < 1)
    {
      v49 = *(v5 + 40);
      if (v49 >= v10)
      {
        v50 = v10;
      }

      else
      {
        v50 = *(v5 + 40);
      }

      v51 = v50 - v46;
      if (v47 < v49)
      {
        v48 = v51;
      }

      else
      {
        v48 = v3;
      }
    }

    else if (v47 <= v10)
    {
      v48 = v3;
    }

    else
    {
      v48 = v10 - v46;
    }

    *(v5 + 32) = v46 + v48;
    if (*(v5 + 8))
    {
LABEL_84:
      v53 = *v6;
      v54 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v55 = v53;
        atomic_compare_exchange_strong(v6, &v55, v54);
        if (v55 == v53)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v53)
        {
          sched_yield();
          goto LABEL_84;
        }
      }
    }

    else
    {
      atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFCLL);
    }

    v52 = *(**(v5 + 16) + 40);

    return v52();
  }

  *(a2 + 32) = 0;
  if (v7 > 0)
  {
    v3 = -v7;
    goto LABEL_8;
  }

  if (*v6)
  {
LABEL_53:
    v40 = *v6;
    v41 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v42 = v40;
      atomic_compare_exchange_strong(v6, &v42, v41);
      if (v42 == v40)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v40)
      {
        result = sched_yield();
        goto LABEL_53;
      }
    }
  }

  else
  {
    atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFCLL);
  }

  return result;
}

uint64_t tbb::internal::market::update_arena_top_priority(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result + 72;
  v4 = a2[17];
  v5 = (result + 72 + 40 * v4);
  v6 = v5[3];
  if (v6 == a2)
  {
    v7 = v6[1];
    if (v7 == v5 && v5[2] >= 2uLL)
    {
      v7 = v5[1];
    }

    v5[3] = v7;
  }

  --v5[2];
  v8 = *a2;
  v9 = a2[1];
  *v9 = *a2;
  *(v8 + 8) = v9;
  a2[17] = a3;
  v10 = v3 + 40 * a2[17];
  v11 = a2[17];
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  *a2 = v10;
  a2[1] = v12;
  *v12 = a2;
  *(v10 + 8) = a2;
  *(v10 + 16) = v13 + 1;
  if (!v13)
  {
    *(v3 + 40 * v11 + 24) = a2;
  }

  atomic_fetch_add(a2 + 34, 1uLL);
  v14 = *(a2 + 53);
  *(v3 + 40 * v4 + 32) -= v14;
  *(v3 + 40 * a3 + 32) += v14;
  return result;
}

tbb::internal::arena *tbb::internal::market::process(uint64_t a1, uint64_t a2)
{
  v3 = (a2 - 8);
  for (i = tbb::internal::market::arena_in_need(a1, *(a2 + 40)); i; i = tbb::internal::market::arena_in_need(a1, 0))
  {
    tbb::internal::arena::process(i, v3);
  }

  sched_yield();
  while (1)
  {
    result = tbb::internal::market::arena_in_need(a1, 0);
    if (!result)
    {
      break;
    }

    tbb::internal::arena::process(result, v3);
  }

  return result;
}

uint64_t tbb::internal::market::cleanup(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 8);
  v3 = pthread_getspecific(tbb::internal::governor::theTLS) & 0xFFFFFFFFFFFFFFFELL;
  if (v2 == v3)
  {

    return tbb::internal::generic_scheduler::cleanup_worker(v2, 1);
  }

  else
  {
    tbb::internal::governor::assume_scheduler(v2);
    tbb::internal::generic_scheduler::cleanup_worker(v2, (v3 != 0));

    return tbb::internal::governor::assume_scheduler(v3);
  }
}

tbb::internal::governor *tbb::internal::market::acknowledge_close_connection(tbb::internal::market *this, void *a2)
{
  v2 = tbb::internal::NFS_Free(this, a2);

  return tbb::internal::__TBB_InitOnce::remove_ref(v2);
}

uint64_t tbb::internal::market::create_one_job(atomic_uint *this)
{
  add = atomic_fetch_add(this + 9, 1u);
  worker = tbb::internal::generic_scheduler::create_worker(this, (add + 1), 1);
  *&this[2 * add + 62] = worker;
  if (worker)
  {
    return worker + 8;
  }

  else
  {
    return 0;
  }
}

BOOL tbb::internal::market::lower_arena_priority(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  tbb::spin_rw_mutex_v3::internal_acquire_writer((a1 + 8));
  v9 = a2[34];
  if (v9 == a4)
  {
    v10 = a2[17];
    v11 = a1 + 72;
    v12 = (a1 + 72 + 40 * v10);
    v13 = v12[3];
    if (v13 == a2)
    {
      v14 = v13[1];
      if (v14 == v12 && v12[2] >= 2uLL)
      {
        v14 = v12[1];
      }

      v12[3] = v14;
    }

    --v12[2];
    v15 = *a2;
    v16 = a2[1];
    *v16 = *a2;
    *(v15 + 8) = v16;
    a2[17] = a3;
    v17 = v11 + 40 * a2[17];
    v18 = a2[17];
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a2 = v17;
    a2[1] = v19;
    *v19 = a2;
    *(v17 + 8) = a2;
    *(v17 + 16) = v20 + 1;
    if (!v20)
    {
      *(v11 + 40 * v18 + 24) = a2;
    }

    atomic_fetch_add(a2 + 34, 1uLL);
    v21 = *(a2 + 53);
    *(v11 + 40 * v10 + 32) -= v21;
    *(v11 + 40 * a3 + 32) += v21;
    if (v21 >= 1)
    {
      v22 = *(a1 + 56);
      if (v22 > a3)
      {
        *(a1 + 56) = a3;
        v22 = a3;
      }

      if (v10 == *(a1 + 48) && !*(v11 + 40 * v10 + 32))
      {
        v23 = v10 - 1;
        if (v22 < v10 - 1)
        {
          v23 = v22;
        }

        v24 = (a1 + 40 * v10 + 64);
        while (--v10 > v22)
        {
          v25 = *v24;
          v24 -= 10;
          if (v25)
          {
            goto LABEL_21;
          }
        }

        v10 = v23;
LABEL_21:
        *(a1 + 48) = v10;
        if (*(a1 + 28))
        {
          v26 = 1;
        }

        else
        {
          v26 = *(a1 + 44) == 0;
        }

        if (v26)
        {
          v27 = *(a1 + 28);
        }

        else
        {
          v27 = 1;
        }

        *(v11 + 40 * v10 + 36) = v27;
        v28 = *(a1 + 64) + 1;
        __dmb(0xBu);
        *(a1 + 64) = v28;
      }

      tbb::internal::market::update_allotment(a1, v10);
    }
  }

LABEL_29:
  v29 = *v8;
  v30 = *v8 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v31 = v29;
    atomic_compare_exchange_strong(v8, &v31, v30);
    if (v31 == v29)
    {
      return v9 == a4;
    }

    if (atomic_fetch_add_explicit(v8, 0, memory_order_relaxed) != v29)
    {
      sched_yield();
      goto LABEL_29;
    }
  }
}

uint64_t tbb::internal::market::update_arena_priority(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a1 + 8);
  tbb::spin_rw_mutex_v3::internal_acquire_writer((a1 + 8));
  if (a2[17] != a3)
  {
    if (a2[17] > a3)
    {
      v7 = 0;
      if (a2[33] > a3)
      {
        a2[33] = a3;
      }

      goto LABEL_35;
    }

    if (*(a2 + 53) < 1)
    {
      v7 = 0;
      goto LABEL_35;
    }

    v8 = a2[17];
    if (v8 <= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = a2[17];
    }

    v10 = a1 + 72;
    v11 = a2[17];
    v12 = (a1 + 72 + 40 * v11);
    v13 = v12[3];
    if (v13 == a2)
    {
      v14 = v13[1];
      if (v14 == v12 && v12[2] >= 2uLL)
      {
        v14 = v12[1];
      }

      v12[3] = v14;
    }

    --v12[2];
    v15 = *a2;
    v16 = a2[1];
    *v16 = *a2;
    *(v15 + 8) = v16;
    a2[17] = a3;
    v17 = v10 + 40 * a2[17];
    v18 = a2[17];
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a2 = v17;
    a2[1] = v19;
    *v19 = a2;
    *(v17 + 8) = a2;
    *(v17 + 16) = v20 + 1;
    if (!v20)
    {
      *(v10 + 40 * v18 + 24) = a2;
    }

    atomic_fetch_add(a2 + 34, 1uLL);
    v21 = *(a2 + 53);
    *(v10 + 40 * v11 + 32) -= v21;
    *(v10 + 40 * a3 + 32) += v21;
    v22 = *(a1 + 48);
    if (v22 >= a3)
    {
      if (v22 == a3)
      {
LABEL_28:
        v25 = *(a1 + 64) + 1;
        __dmb(0xBu);
        *(a1 + 64) = v25;
LABEL_29:
        if (v8 == *(a1 + 56))
        {
          v26 = *(a1 + 48);
          v27 = v26 <= v8;
          v28 = v26 - v8;
          if (!v27)
          {
            v29 = (a1 + 40 * v8 + 104);
            v30 = v8 + 1;
            do
            {
              v31 = *v29;
              v29 += 10;
              if (v31)
              {
                break;
              }

              *(a1 + 56) = v30++;
              --v28;
            }

            while (v28);
          }
        }

        tbb::internal::market::update_allotment(a1, v9);
        v7 = 1;
        goto LABEL_35;
      }

      if (v8 != v22 || *(v10 + 40 * v8 + 32))
      {
        goto LABEL_29;
      }

      v36 = (a1 + 40 * v8 + 64);
      a3 = v8;
      do
      {
        --a3;
        v37 = *v36;
        v36 -= 10;
        v8 = a3;
        v9 = a3;
      }

      while (!v37);
    }

    *(a1 + 48) = a3;
    if (*(a1 + 28))
    {
      v23 = 1;
    }

    else
    {
      v23 = *(a1 + 44) == 0;
    }

    if (v23)
    {
      v24 = *(a1 + 28);
    }

    else
    {
      v24 = 1;
    }

    *(v10 + 40 * a3 + 36) = v24;
    goto LABEL_28;
  }

  v7 = 0;
LABEL_35:
  v32 = *v6;
  v33 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v34 = v32;
    atomic_compare_exchange_strong(v6, &v34, v33);
    if (v34 == v32)
    {
      return v7;
    }

    if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v32)
    {
      sched_yield();
      goto LABEL_35;
    }
  }
}

void *tbb::internal::construct_binding_observer(tbb::internal::numa_topology *a1, int a2, tbb::internal *a3)
{
  if (a2 < 0 || tbb::internal::numa_topology::nodes_count(a1) < 2)
  {
    return 0;
  }

  v6 = operator new(0x30uLL);
  v6[2] = 0;
  v6[3] = a1;
  *v6 = &unk_2A203ABE0;
  v6[1] = 0;
  *(v6 + 8) = a2;
  v6[5] = tbb::internal::construct_binding_handler(a3);
  if (!v6[1])
  {
    v6[2] = 0x8000000000000000;
  }

  tbb::internal::task_scheduler_observer_v3::observe(v6, 1);
  return v6;
}

void sub_299FFCF7C(_Unwind_Exception *a1)
{
  v3 = sub_299FFF930(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void tbb::internal::destroy_binding_observer(tbb::internal::task_scheduler_observer_v3 *a1)
{
  tbb::internal::task_scheduler_observer_v3::observe(a1, 0);
  if (a1)
  {
    v2 = *(*a1 + 24);

    v2(a1);
  }
}

uint64_t tbb::internal::generic_scheduler::attach_arena(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(result + 32) = a3;
  *(result + 40) = a2 + (a3 << 8) + 384;
  *(result + 48) = a2;
  v4 = a2 - ((a3 + 1) << 7);
  *(result + 64) = v4;
  *(result + 72) = a3 + 1;
  if (a4)
  {
    if (a2 && *(v4 + 20))
    {
      *(v4 + 20) = 0;
    }

    v5 = (a2 + 272);
    *(result + 96) = a2 + 136;
    *(result + 104) = a2 + 272;
  }

  else
  {
    *(*(result + 144) - 56) = *(a2 + 320);
    v5 = *(result + 104);
  }

  *(result + 352) = *v5;
  return result;
}

uint64_t tbb::internal::arena::occupy_free_slot_in_range(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4 <= a3)
  {
    return -1;
  }

  v4 = *(a2 + 32);
  if (v4 < a3 || v4 >= a4)
  {
    v6 = *(a2 + 128);
    *(a2 + 128) = *(a2 + 132) - 1640531535 * v6;
    v4 = (v6 >> 16) % (a4 - a3) + a3;
  }

  if (v4 < a4)
  {
    v7 = v4;
    while (1)
    {
      v8 = (a1 + 384 + (v7 << 8));
      if (!*v8)
      {
        break;
      }

LABEL_10:
      if (++v7 == a4)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v9 = 0;
      atomic_compare_exchange_strong(v8, &v9, a2);
      if (!v9)
      {
        return v7;
      }

      if (atomic_fetch_add_explicit(v8, 0, memory_order_relaxed))
      {
        goto LABEL_10;
      }
    }
  }

LABEL_15:
  if (v4 <= a3)
  {
    return -1;
  }

  while (1)
  {
    v11 = (a1 + 384 + (a3 << 8));
    if (!*v11)
    {
      break;
    }

LABEL_18:
    ++a3;
    v7 = -1;
    if (a3 == v4)
    {
      return v7;
    }
  }

  while (1)
  {
    v12 = 0;
    atomic_compare_exchange_strong(v11, &v12, a2);
    if (!v12)
    {
      return a3;
    }

    if (atomic_fetch_add_explicit(v11, 0, memory_order_relaxed))
    {
      goto LABEL_18;
    }
  }
}

atomic_ullong *tbb::internal::arena::process(tbb::internal::arena *this, tbb::internal::observer_proxy **a2)
{
  v3 = *(this + 83);
  v4 = *(this + 82);
  if (v3 < v4)
  {
    v6 = a2[4];
    if (v6 < v3 || v6 >= v4)
    {
      v8 = *(a2 + 32);
      *(a2 + 32) = *(a2 + 33) - 1640531535 * v8;
      v6 = (v3 + (v8 >> 16) % (v4 - v3));
    }

    if (v6 >= v4)
    {
LABEL_15:
      if (v6 <= v3)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v12 = (this + 256 * v3 + 384);
        if (!*v12)
        {
          break;
        }

LABEL_17:
        v3 = (v3 + 1);
        if (v3 == v6)
        {
          goto LABEL_48;
        }
      }

      while (1)
      {
        v13 = 0;
        atomic_compare_exchange_strong(v12, &v13, a2);
        if (!v13)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v12, 0, memory_order_relaxed))
        {
          goto LABEL_17;
        }
      }

      v9 = v3;
    }

    else
    {
      v9 = v6;
      while (1)
      {
        v10 = (this + 256 * v9 + 384);
        if (!*v10)
        {
          break;
        }

LABEL_10:
        v9 = (v9 + 1);
        if (v9 == v4)
        {
          goto LABEL_15;
        }
      }

      while (1)
      {
        v11 = 0;
        atomic_compare_exchange_strong(v10, &v11, a2);
        if (!v11)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v10, 0, memory_order_relaxed))
        {
          goto LABEL_10;
        }
      }
    }

    if (v9 != -1)
    {
      v14 = v9 + 1;
LABEL_25:
      v15 = *(this + 36);
      __dmb(0xBu);
      if (v15 < v14)
      {
        while (1)
        {
          v16 = v15;
          atomic_compare_exchange_strong(this + 36, &v16, v14);
          if (v16 == v15)
          {
            break;
          }

          if (*(this + 36) != v15)
          {
            goto LABEL_25;
          }
        }
      }

      *(a2[18] - 7) = *(this + 40);
      v18 = (a2 + 11);
      v17 = a2[11];
      v19 = (this + 256 * v9 + 384);
      a2[4] = v9;
      a2[5] = v19;
      a2[6] = this;
      a2[8] = (this - 128 * (v9 + 1));
      *(a2 + 36) = v9 + 1;
      a2[44] = *a2[13];
      v20 = v19;
      if (v17 != *(this + 29))
      {
        tbb::internal::observer_list::do_notify_entry_observers(this + 28, a2 + 11, 1);
        v20 = a2[5];
      }

      if (*(v20 + 1))
      {
        (*(*a2 + 6))(a2, a2[18], 0);
      }

      while (1)
      {
        v21 = *(this + 33);
        __dmb(0xBu);
        if (*(this + 32) < v21 >> 12)
        {
          break;
        }

        v22 = (*(*a2 + 7))(a2, a2[18] - 24, 0);
        if (v22)
        {
          v23 = a2[18];
          a2[7] = v23;
          (*(*a2 + 6))(a2, v23, v22);
        }
      }

      if (*v18)
      {
        tbb::internal::observer_list::do_notify_exit_observers(this + 28, *v18, 1);
      }

      a2[11] = 0;
      if (a2[42])
      {
        atomic_fetch_add(this + 36, 1uLL);
        do
        {
          v25 = *(this + 35);
          *a2[43] = v25;
          v26 = a2[42];
          while (1)
          {
            v27 = v25;
            atomic_compare_exchange_strong(this + 35, &v27, v26);
            if (v27 == v25)
            {
              break;
            }

            add_explicit = atomic_fetch_add_explicit(this + 35, 0, memory_order_relaxed);
            if (add_explicit != v25)
            {
              goto LABEL_41;
            }
          }

          add_explicit = v25;
LABEL_41:
          ;
        }

        while (v25 != add_explicit);
        a2[42] = 0;
      }

      __dmb(0xBu);
      *v19 = 0;
      a2[5] = 0;
      a2[8] = 0;
    }
  }

LABEL_48:
  result = *(this + 38);
  v29 = *(this + 39);
  if (atomic_fetch_add(this + 33, 0xFFFFF000) == 4096)
  {

    return tbb::internal::market::try_destroy_arena(result, this, v29);
  }

  return result;
}

uint64_t tbb::internal::arena::orphan_offloaded_tasks(uint64_t result, uint64_t a2)
{
  atomic_fetch_add((result + 288), 1uLL);
  do
  {
    v3 = *(result + 280);
    **(a2 + 344) = v3;
    v4 = *(a2 + 336);
    while (1)
    {
      v5 = v3;
      atomic_compare_exchange_strong((result + 280), &v5, v4);
      if (v5 == v3)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit((result + 280), 0, memory_order_relaxed);
      if (add_explicit != v3)
      {
        goto LABEL_3;
      }
    }

    add_explicit = v3;
LABEL_3:
    ;
  }

  while (v3 != add_explicit);
  *(a2 + 336) = 0;
  return result;
}

tbb::internal::arena *tbb::internal::arena::arena(tbb::internal::arena *this, tbb::internal::market *a2, unsigned int a3, int a4)
{
  *(this + 152) = 0u;
  *(this + 50) = 0;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 345) = 0;
  *(this + 45) = this + 360;
  *(this + 46) = this + 360;
  *(this + 44) = 0;
  *(this + 94) = 0;
  *(this + 38) = a2;
  __dmb(0xBu);
  *(this + 36) = 1;
  if (a3 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a3;
  }

  *(this + 82) = v5;
  *(this + 83) = a4;
  *(this + 52) = a3 - a4;
  __dmb(0xBu);
  *(this + 33) = 1;
  *(this + 17) = 1;
  *(this + 33) = *(this + 17);
  *(this + 39) = *(a2 + 24);
  *(this + 31) = this;
  v6 = *(this + 82);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0;
LABEL_7:
      v8 = (this + 256 * v7 + 512);
      do
      {
        *v8 = v7;
        (this - 16 * (v7 + 1))[1] = this - 128 * (v7 + 1);
        v8 += 64;
        ++v7;
      }

      while (v6 != v7);
      goto LABEL_9;
    }

    v7 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    if ((v6 - 1) >> 16)
    {
      goto LABEL_7;
    }

    v10 = 0;
    v7 = v6 & 0x1FFFE;
    v11 = (this + 768);
    do
    {
      v12 = v10 + 1;
      *(v11 - 64) = v10;
      v13 = v10 + 2;
      v14 = this + ((~v10 << 7) | 0xFFFFFFFFFF800080);
      *(v14 + 1) = v14;
      (this - 16 * (v13 & 0xFFFE))[1] = this - 128 * (v13 & 0xFFFE);
      *v11 = v12;
      v11 += 128;
      v10 = v13;
    }

    while (v7 != v13);
    if (v7 != v6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_299FFD644(this + 152, v6);
  *(this + 168) = 0;
  return this;
}

void sub_299FFD628(_Unwind_Exception *a1)
{
  tbb::internal::concurrent_monitor::~concurrent_monitor((v1 + 344));
  sub_299FFFD20(v2, v4);
  _Unwind_Resume(a1);
}

void *sub_299FFD644(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x3F)
  {
    v3 = 2;
    if (a2 >= 3)
    {
      v4 = a2 - 1;
      if (a2 >= 0x11)
      {
        v4 >>= 4;
      }

      if (v4 >= 4)
      {
        v5 = (4 * (a2 > 0x10)) | 2;
      }

      else
      {
        v5 = 4 * (a2 > 0x10);
      }

      if (v4 >= 4)
      {
        v4 >>= 2;
      }

      v3 = 2 << (v5 & 0xFE | ((v4 & 2) != 0));
    }
  }

  else
  {
    v3 = 64;
  }

  *(a1 + 48) = v3;
  v6 = v3;
  v7 = v3 << 7;
  v8 = ((v3 & 0x7FFFFFFF) << 7) | 0x10;
  v9 = operator new[](v8);
  *v9 = 128;
  v9[1] = v6;
  v10 = v9 + 2;
  do
  {
    *(v10 + 48) = 0;
    *(v10 + 1) = 0uLL;
    *(v10 + 2) = 0uLL;
    *v10 = 0uLL;
    v10 += 16;
    v7 -= 128;
  }

  while (v7);
  *(a1 + 24) = v9 + 2;
  v11 = operator new[](v8);
  *v11 = 128;
  v11[1] = v6;
  v12 = v6 << 7;
  v13 = v11 + 2;
  v14 = v6 << 7;
  do
  {
    *(v13 + 48) = 0;
    *(v13 + 1) = 0uLL;
    *(v13 + 2) = 0uLL;
    *v13 = 0uLL;
    v13 += 16;
    v14 -= 128;
  }

  while (v14);
  *(a1 + 32) = v11 + 2;
  result = operator new[](v8);
  *result = 128;
  result[1] = v6;
  v16 = result + 2;
  do
  {
    *(v16 + 48) = 0;
    *(v16 + 1) = 0uLL;
    *(v16 + 2) = 0uLL;
    *v16 = 0uLL;
    v16 += 16;
    v12 -= 128;
  }

  while (v12);
  *(a1 + 40) = result + 2;
  return result;
}

tbb::internal::arena *tbb::internal::arena::allocate_arena(tbb::internal::arena *this, tbb::internal::market *a2, int a3, void *a4)
{
  v5 = a2;
  if (a2 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a2;
  }

  v8 = 384 * v7 + 384;
  v9 = tbb::internal::NFS_Allocate(1uLL, v8, 0, a4);
  bzero(v9, v8);

  return tbb::internal::arena::arena(&v9[128 * v7], this, v5, a3);
}

uint64_t tbb::internal::arena::free_arena(tbb::internal::arena *this, void *a2)
{
  if (*(this + 82))
  {
    v3 = 0;
    do
    {
      v4 = this + 256 * v3 + 384;
      v5 = *(v4 + 19);
      if (v5)
      {
        tbb::internal::NFS_Free(v5, a2);
        *(v4 + 18) = 0;
        *(v4 + 19) = 0;
      }

      v6 = (this - 128 * ++v3);
      for (i = *v6; *v6; i = *v6)
      {
        *v6 = *(i + 16);
        tbb::internal::NFS_Free((i - 64), a2);
      }
    }

    while (v3 < *(this + 82));
  }

  tbb::internal::market::release(*(this + 38), 0, 0);
  tbb::task_group_context::~task_group_context(*(this + 40));
  tbb::internal::NFS_Free(*(this + 40), v8);
  if (*(this + 28))
  {
    tbb::internal::observer_list::clear(this + 28);
  }

  v9 = (this - 128 * *(this + 164));
  tbb::internal::concurrent_monitor::~concurrent_monitor((this + 344));
  sub_299FFFD20(this + 19, v10);

  return tbb::internal::NFS_Free(v9, v11);
}

BOOL tbb::internal::arena::has_enqueued_tasks(tbb::internal::arena *this)
{
  if (*(this + 19))
  {
    return 1;
  }

  if (*(this + 20))
  {
    return 1;
  }

  return *(this + 21) != 0;
}

uint64_t *tbb::internal::arena::restore_priority_if_need(uint64_t *this)
{
  v1 = this;
  if (this[19] || this[20] || this[21])
  {
    this = sub_299FFDA14(this);
    if (v1[19] && (v1[33] > 0 || v1[17] < 0))
    {
      this = tbb::internal::market::update_arena_priority(v1[38], v1, 0);
    }

    if (v1[20] && (v1[33] > 1 || v1[17] <= 0))
    {
      this = tbb::internal::market::update_arena_priority(v1[38], v1, 1);
    }

    if (v1[21] && (v1[33] > 2 || v1[17] <= 1))
    {
      v2 = v1[38];

      return tbb::internal::market::update_arena_priority(v2, v1, 2);
    }
  }

  return this;
}

uint64_t sub_299FFDA14(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 304) + 28);
  __dmb(0xBu);
  if (!v2)
  {
    v3 = *(result + 337);
    __dmb(0xBu);
    if ((v3 & 1) == 0)
    {
      result = tbb::internal::market::enable_mandatory_concurrency(*(result + 304), result);
    }
  }

  if (*(v1 + 208) || *(v1 + 332) != 1)
  {
    __dmb(0xBu);
    v7 = *(v1 + 216);
    __dmb(0xBu);
    if (v7 == -1)
    {
      return result;
    }

    while (1)
    {
      v8 = v7;
      atomic_compare_exchange_strong((v1 + 216), &v8, 0xFFFFFFFFFFFFFFFFLL);
      if (v8 == v7)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit((v1 + 216), 0, memory_order_relaxed);
      if (add_explicit != v7)
      {
        if (add_explicit)
        {
          return result;
        }

        goto LABEL_13;
      }
    }

    if (v7)
    {
      return result;
    }

LABEL_13:
    if (v7)
    {
      while (1)
      {
        v10 = 0;
        atomic_compare_exchange_strong((v1 + 216), &v10, 0xFFFFFFFFFFFFFFFFLL);
        if (!v10)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v1 + 216), 0, memory_order_relaxed))
        {
          return result;
        }
      }
    }

    v4 = *(v1 + 304);
    v6 = *(v1 + 208);
    v5 = v1;
  }

  else
  {
    *(v1 + 336) = 1;
    __dmb(0xBu);
    *(v1 + 216) = -1;
    *(v1 + 208) = 1;
    v4 = *(v1 + 304);
    v5 = v1;
    v6 = 1;
  }

  return tbb::internal::market::adjust_demand(v4, v5, v6);
}

uint64_t tbb::internal::arena::is_out_of_work(tbb::internal::arena *this)
{
  v1 = *(this + 27);
  __dmb(0xBu);
  if (!v1)
  {
    return 1;
  }

  if (v1 != -1)
  {
    return 0;
  }

  v40 = &v40;
  while (1)
  {
    v2 = -1;
    atomic_compare_exchange_strong(this + 27, &v2, &v40);
    if (v2 == -1)
    {
      break;
    }

    if (atomic_fetch_add_explicit(this + 27, 0, memory_order_relaxed) != -1)
    {
      return 0;
    }
  }

  v4 = *(this + 36);
  __dmb(0xBu);
  v5 = *(this + 34);
  __dmb(0xBu);
  v6 = *(this + 17);
  v7 = 0;
  if (v4)
  {
    v8 = (this + 392);
    while (!*v8 || v8[1] >= v8[16])
    {
      v9 = *(this + 27);
      __dmb(0xBu);
      if (v9 != v40)
      {
        return 0;
      }

      ++v7;
      v8 += 32;
      if (v4 == v7)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7 != v4)
  {
    v21 = *(this + 27);
    __dmb(0xBu);
    if (v21 == v40)
    {
      goto LABEL_57;
    }

    return 0;
  }

LABEL_15:
  v10 = *(this + 35);
  v11 = *(this + 36);
  __dmb(0xBu);
  v12 = (&tbb::internal::the_context_state_propagation_mutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_16:
  v13 = *v12 & ~(255 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3)));
  while (1)
  {
    v14 = v13;
    atomic_compare_exchange_strong(v12, &v14, v13 | (1 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3))));
    if (v14 == v13)
    {
      break;
    }

    if (*v12 != v13)
    {
      v15 = this;
      sched_yield();
      this = v15;
      goto LABEL_16;
    }
  }

  v16 = v10 != 0;
  v17 = *(this + 48);
  if (v17 && *(v17 + 48) == this)
  {
    v18 = (*(v17 + 74) & 3) == 2;
    if ((*(v17 + 360) & 1) == 0)
    {
      if (!*(v17 + 336))
      {
        goto LABEL_23;
      }

      if (*(v17 + 352) >= **(v17 + 104))
      {
        v16 = 1;
        goto LABEL_23;
      }
    }

    v20 = 0;
    __dmb(0xBu);
    LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
LABEL_43:
    v16 = 1;
    goto LABEL_44;
  }

  v18 = 0;
LABEL_23:
  __dmb(0xBu);
  LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
  if (v4 >= 2)
  {
    v22 = 1;
    v23 = 640;
    do
    {
      v24 = *(this + 27);
      __dmb(0xBu);
      if (v24 != v40)
      {
        return 0;
      }

      v25 = *(this + v23);
      if (v25 && *(v25 + 48) == this)
      {
        v18 |= (*(v25 + 74) & 3) == 2;
        if (*(v25 + 360))
        {
          v20 = 0;
          goto LABEL_43;
        }

        if (*(v25 + 336))
        {
          v16 = 1;
          if (*(v25 + 352) < **(v25 + 104))
          {
            goto LABEL_25;
          }
        }
      }

      ++v22;
      v23 += 256;
    }

    while (v22 < v4);
  }

  v19 = *(this + 35);
  __dmb(0xBu);
  if (v19)
  {
LABEL_25:
    v20 = 0;
  }

  else
  {
    v26 = *(this + 36);
    __dmb(0xBu);
    v20 = v11 == v26;
  }

LABEL_44:
  v27 = *(this + 27);
  __dmb(0xBu);
  if (v27 != v40)
  {
    return 0;
  }

  v28 = this + 152;
  v29 = *(this + v6 + 19);
  if ((v20 & (v18 ^ 1 | (v29 == 0))) != 1 || v6 != *(this + 17) || v5 != *(this + 34))
  {
    goto LABEL_57;
  }

  if (v6 > *(this + 33))
  {
    v30 = this;
    v31 = tbb::internal::market::lower_arena_priority(*(this + 38), this, v6 - 1, v5);
    this = v30;
    if (v31 && *&v28[8 * v6])
    {
LABEL_51:
      v32 = v30[37];
      __dmb(0xBu);
      if (v32 < v6)
      {
        while (1)
        {
          v33 = v32;
          atomic_compare_exchange_strong(v30 + 37, &v33, v6);
          if (v33 == v32)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v30 + 37, 0, memory_order_relaxed) != v32)
          {
            goto LABEL_51;
          }
        }
      }
    }

    goto LABEL_57;
  }

  if (v16 || *(this + 35) || v29)
  {
LABEL_57:
    v34 = v40;
    do
    {
      v35 = v34;
      atomic_compare_exchange_strong(this + 27, &v35, 0xFFFFFFFFFFFFFFFFLL);
    }

    while (v35 != v34 && atomic_fetch_add_explicit(this + 27, 0, memory_order_relaxed) == v34);
    return 0;
  }

  v36 = *(this + 52);
  while (1)
  {
    v37 = v27;
    atomic_compare_exchange_strong(this + 27, &v37, 0);
    if (v37 == v27)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(this + 27, 0, memory_order_relaxed);
    if (add_explicit != v27)
    {
      v27 = add_explicit;
      break;
    }
  }

  if (v27 != v40)
  {
    return 0;
  }

  v39 = this;
  tbb::internal::market::adjust_demand(*(this + 38), this, -v36);
  tbb::internal::arena::restore_priority_if_need(v39);
  return 1;
}

uint64_t tbb::internal::arena::enqueue_task(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *(a2 - 12) = 2;
  *(a2 - 11) |= 0x10u;
  if (a3)
  {
    v5 = (a3 - 0x1FFFFFFF) / 0x1FFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  sub_299FFDFE8(a1 + 19, a2, v5, a4);
  if (v5 != a1[17])
  {
    tbb::internal::market::update_arena_priority(a1[38], a1, v5);
  }

  result = sub_299FFDA14(a1);
  if (v5 != a1[17])
  {
    v7 = a1[38];

    return tbb::internal::market::update_arena_priority(v7, a1, v5);
  }

  return result;
}

uint64_t *sub_299FFDFE8(uint64_t *result, uint64_t a2, int a3, unsigned int *a4)
{
  v5 = result;
  v6 = result + 3;
  v7 = a3;
LABEL_2:
  v8 = *a4;
  *a4 = a4[1] - 1640531535 * *a4;
  v9 = (*(v5 + 12) - 1) & HIWORD(v8);
  v10 = v6[v7] + (v9 << 7) + 48;
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = 255 << (8 * (v10 & 3));
LABEL_3:
  v13 = *v11 & ~v12;
  while (1)
  {
    v14 = v13;
    atomic_compare_exchange_strong(v11, &v14, v13 | (1 << (8 * (v10 & 3))));
    if (v14 == v13)
    {
      break;
    }

    if (*v11 != v13)
    {
      if ((*v11 & v12) != 0)
      {
        goto LABEL_2;
      }

      result = sched_yield();
      goto LABEL_3;
    }
  }

  v15 = (v6[v7] + (v9 << 7));
  v16 = v15[2];
  v17 = v15[1];
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v16 - v17) << 6) - 1;
  }

  v19 = v15[5];
  v20 = v19 + v15[4];
  if (v18 == v20)
  {
    result = sub_29A000290((v6[v7] + (v9 << 7)));
    v17 = v15[1];
    v19 = v15[5];
    v20 = v15[4] + v19;
  }

  *(*(v17 + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF)) = a2;
  v15[5] = v19 + 1;
  v21 = &v5[v7];
LABEL_14:
  v22 = v5[v7];
  while (1)
  {
    v23 = v22;
    atomic_compare_exchange_strong(v21, &v23, v22 | (1 << v9));
    if (v23 == v22)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
    {
      result = sched_yield();
      goto LABEL_14;
    }
  }

  __dmb(0xBu);
  *v10 = 0;
  return result;
}

void sub_299FFE17C(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void tbb::internal::generic_scheduler::nested_arena_entry(tbb::internal::generic_scheduler *this, tbb::internal::arena *a2, unint64_t a3)
{
  if (*(this + 42))
  {
    v5 = *(this + 6);
    atomic_fetch_add((v5 + 288), 1uLL);
    do
    {
      v7 = *(v5 + 280);
      **(this + 43) = v7;
      v8 = *(this + 42);
      while (1)
      {
        v9 = v7;
        atomic_compare_exchange_strong((v5 + 280), &v9, v8);
        if (v9 == v7)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit((v5 + 280), 0, memory_order_relaxed);
        if (add_explicit != v7)
        {
          goto LABEL_4;
        }
      }

      add_explicit = v7;
LABEL_4:
      ;
    }

    while (v7 != add_explicit);
  }

  *(this + 42) = 0;
  *(this + 4) = a3;
  *(this + 5) = a2 + 256 * a3 + 384;
  *(this + 6) = a2;
  v10 = a2 - 128 * (a3 + 1);
  *(this + 8) = v10;
  *(this + 36) = a3 + 1;
  if (a2 && v10[20])
  {
    v10[20] = 0;
  }

  *(this + 12) = a2 + 136;
  *(this + 13) = a2 + 272;
  *(this + 44) = *(a2 + 34);
  tbb::internal::governor::assume_scheduler(this);
  v11 = *(this + 6);
  if ((*(this + 74) & 1) != 0 && *(v11 + 332) <= a3)
  {
    tbb::internal::market::adjust_demand(*(v11 + 304), v11, -1);
    v11 = *(this + 6);
  }

  *(this + 11) = 0;
  v12 = (this + 88);
  if (*(v11 + 232))
  {

    tbb::internal::observer_list::do_notify_entry_observers((v11 + 224), v12, 0);
  }
}

uint64_t tbb::internal::generic_scheduler::nested_arena_exit(tbb::internal::generic_scheduler *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    tbb::internal::observer_list::do_notify_exit_observers((*(this + 6) + 224), v2, 0);
  }

  if (*(this + 42))
  {
    v3 = *(this + 6);
    atomic_fetch_add((v3 + 288), 1uLL);
    do
    {
      v5 = *(v3 + 280);
      **(this + 43) = v5;
      v6 = *(this + 42);
      while (1)
      {
        v7 = v5;
        atomic_compare_exchange_strong((v3 + 280), &v7, v6);
        if (v7 == v5)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit((v3 + 280), 0, memory_order_relaxed);
        if (add_explicit != v5)
        {
          goto LABEL_6;
        }
      }

      add_explicit = v5;
LABEL_6:
      ;
    }

    while (v5 != add_explicit);
    *(this + 42) = 0;
  }

  v8 = *(this + 6);
  v9 = *(this + 4);
  if ((*(this + 74) & 1) != 0 && v9 >= *(v8 + 332))
  {
    tbb::internal::market::adjust_demand(*(v8 + 304), v8, 1);
    v8 = *(this + 6);
    v9 = *(this + 4);
  }

  __dmb(0xBu);
  *(v8 + (v9 << 8) + 384) = 0;
  v10 = *(this + 6);
  __dmb(0xBu);

  return tbb::internal::concurrent_monitor::notify_one_relaxed(v10 + 344);
}

void *tbb::internal::generic_scheduler::wait_until_empty(void *this)
{
  v1 = this;
  ++*(this[18] - 24);
  for (i = this[6]; ; i = v1[6])
  {
    v3 = *(i + 216);
    __dmb(0xBu);
    if (!v3)
    {
      break;
    }

    this = (*(*v1 + 48))(v1, v1[18], 0);
  }

  --*(v1[18] - 24);
  return this;
}

void *tbb::interface7::internal::task_arena_base::internal_initialize(tbb::interface7::internal::task_arena_base *this)
{
  tbb::internal::governor::one_time_init(this);
  v4 = *(this + 4);
  if (v4 <= 0)
  {
    if (*(this + 24))
    {
      v5 = *(this + 9);
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }

    v4 = tbb::internal::numa_topology::default_concurrency(v5);
    *(this + 4) = v4;
  }

  arena = tbb::internal::market::create_arena(v4, *(this + 5), 0, v2, v3);
  v9 = tbb::internal::market::global_market(0, 0, 0, v7, v8);
  v11 = tbb::internal::NFS_Allocate(1uLL, 256, 0, v10);
  *v11 = 0;
  *(v11 + 128) = 65539;
  *(v11 + 168) = 55;
  tbb::task_group_context::init(v11, v12, v13, v14);
  *(arena + 40) = v11;
  tbb::task_group_context::capture_fp_settings(v11, v15, v16, v17);
  do
  {
    v18 = 0;
    atomic_compare_exchange_strong(this, &v18, arena);
    if (!v18)
    {
      if (*(this + 24))
      {
        v27 = *(this + 9);
      }

      else
      {
        v27 = -1;
      }

      *(*this + 256) = tbb::internal::construct_binding_observer(this, v27, *(*this + 328));
      v28 = *(arena + 40);
      *(v28 + 128) |= *(this + 3) & 0x10000;
      __dmb(0xBu);
      *(this + 1) = v28;
      goto LABEL_24;
    }
  }

  while (!atomic_fetch_add_explicit(this, 0, memory_order_relaxed));
  tbb::internal::market::release(v9, 1, 0);
  v19 = *(arena + 38);
  v20 = *(arena + 39);
  if (*(arena + 82) != *(arena + 83) && !*(v19 + 28) && (*(arena + 337) & 1) == 0)
  {
    v21 = *(arena + 38);
    v22 = *(arena + 39);
    is_out_of_work = tbb::internal::arena::is_out_of_work(arena);
    v20 = v22;
    v24 = is_out_of_work;
    v19 = v21;
    if ((v24 & 1) == 0)
    {
      v25 = tbb::internal::arena::is_out_of_work(arena);
      v20 = v22;
      v26 = v25;
      v19 = v21;
      if ((v26 & 1) == 0)
      {
        tbb::internal::arena::is_out_of_work(arena);
        v19 = v21;
        v20 = v22;
      }
    }
  }

  if (atomic_fetch_add(arena + 33, 0xFFFFFFFF) == 1)
  {
    tbb::internal::market::try_destroy_arena(v19, arena, v20);
  }

  while (!*(this + 1))
  {
    sched_yield();
  }

LABEL_24:
  result = pthread_getspecific(tbb::internal::governor::theTLS);
  if (!result)
  {

    return tbb::internal::governor::init_scheduler_weak(0);
  }

  return result;
}

uint64_t tbb::interface7::internal::task_arena_base::internal_terminate(uint64_t this)
{
  v1 = *this;
  if (*this)
  {
    v2 = this;
    v3 = *(v1 + 256);
    if (v3)
    {
      tbb::internal::task_scheduler_observer_v3::observe(*(v1 + 256), 0);
      (*(*v3 + 24))(v3);
      v1 = *v2;
      *(*v2 + 256) = 0;
    }

    tbb::internal::market::release(*(v1 + 304), 1, 0);
    v4 = *v2;
    this = *(*v2 + 304);
    v5 = *(*v2 + 312);
    if (*(*v2 + 328) != *(*v2 + 332) && !*(this + 28) && (*(v4 + 337) & 1) == 0)
    {
      v6 = *(*v2 + 304);
      v7 = *v2;
      v8 = *(*v2 + 312);
      is_out_of_work = tbb::internal::arena::is_out_of_work(*v2);
      v5 = v8;
      v4 = v7;
      v10 = is_out_of_work;
      this = v6;
      if ((v10 & 1) == 0)
      {
        v11 = tbb::internal::arena::is_out_of_work(v7);
        v5 = v8;
        v4 = v7;
        v12 = v11;
        this = v6;
        if ((v12 & 1) == 0)
        {
          tbb::internal::arena::is_out_of_work(v7);
          this = v6;
          v5 = v8;
          v4 = v7;
        }
      }
    }

    if (atomic_fetch_add((v4 + 132), 0xFFFFFFFF) == 1)
    {
      this = tbb::internal::market::try_destroy_arena(this, v4, v5);
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }

  return this;
}

int64x2_t *tbb::interface7::internal::task_arena_base::internal_attach(tbb::interface7::internal::task_arena_base *this)
{
  result = pthread_getspecific(tbb::internal::governor::theTLS);
  if ((result & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v5 = *((result & 0xFFFFFFFFFFFFFFFELL) + 48);
    if (v5)
    {
      *this = v5;
      atomic_fetch_add((v5 + 132), 1u);
      v6 = *this;
      v7 = *(*this + 320);
      *(this + 1) = v7;
      *(this + 3) |= *(v7 + 128) & 0x10000;
      LODWORD(v7) = *(v6 + 332);
      *(this + 4) = *(v6 + 208) + v7;
      *(this + 5) = v7;

      return tbb::internal::market::global_market(1, 0, 0, v3, v4);
    }
  }

  return result;
}

uint64_t tbb::interface7::internal::task_arena_base::internal_enqueue(uint64_t **this, tbb::task *a2, uint64_t a3)
{
  v6 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v6)
  {
    inited = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v8 = *this;
  *(a2 - 12) = 2;
  *(a2 - 11) |= 0x10u;
  if (a3)
  {
    v9 = (a3 - 0x1FFFFFFF) / 0x1FFFFFFF;
  }

  else
  {
    v9 = 1;
  }

  sub_299FFDFE8(v8 + 19, a2, v9, (inited + 128));
  if (v9 != v8[17])
  {
    tbb::internal::market::update_arena_priority(v8[38], v8, v9);
  }

  result = sub_299FFDA14(v8);
  if (v9 != v8[17])
  {
    v11 = v8[38];

    return tbb::internal::market::update_arena_priority(v11, v8, v9);
  }

  return result;
}

void tbb::interface7::internal::task_arena_base::internal_execute(uint64_t a1, void (***a2)(void))
{
  v82 = *MEMORY[0x29EDCA608];
  v4 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v4)
  {
    inited = v4 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v8 = (inited + 32);
  v7 = *(inited + 32);
  v9 = *(inited + 48);
  v10 = *a1;
  if (v9 != *a1 && (v7 = sub_299FFF0F8(*a1, inited), v7 == -1))
  {
    v25 = __dynamic_cast(a2, &unk_2A203AB90, &unk_2A203ABB8, 0);
    if (v25)
    {
      v29 = v25;
      v71 = *(a1 + 8);
      v30 = tbb::internal::allocate_root_with_context_proxy::allocate(&v71, 0x10uLL);
      v31 = v29[1];
      *(v30 - 11) = 1;
      *v30 = &unk_2A203AD88;
      v30[1] = *v31;
      tbb::interface7::internal::task_arena_base::internal_enqueue(a1, v30, 0);
    }

    else
    {
      v64[0] = 3452816845;
      v64[1] = 3452816845;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v66 = 0;
      __dmb(0xBu);
      v67 = 0;
      v32 = *(a1 + 24) & 0x10000;
      LODWORD(v71) = 0;
      v79 = v32 | 3;
      v81 = 55;
      tbb::task_group_context::init(&v71, v26, v27, v28);
      tbb::task_group_context::copy_fp_settings(&v71, *(a1 + 8), v33, v34);
      task = tbb::internal::generic_scheduler::allocate_task(inited, 8uLL, 0, &v71);
      *(task - 11) = 1;
      *task = &unk_2A203ACB0;
      *(task - 3) = 2;
      v36 = *a1;
      v56.__ptr_ = &v71;
      v37 = tbb::internal::allocate_root_with_context_proxy::allocate(&v56, 0x20uLL);
      v38 = *a1 + 344;
      *v37 = &unk_2A203ACF8;
      v37[1] = a2;
      v37[2] = v38;
      v37[3] = task;
      *(v37 - 6) = 4354;
      sub_299FFDFE8(v36 + 19, v37, 1, (inited + 128));
      if (v36[17] != 1)
      {
        tbb::internal::market::update_arena_priority(v36[38], v36, 1);
      }

      sub_299FFDA14(v36);
      if (v36[17] != 1)
      {
        tbb::internal::market::update_arena_priority(v36[38], v36, 1);
      }

      while (1)
      {
        tbb::internal::concurrent_monitor::prepare_wait(*a1 + 344, v64, a2);
        v40 = *(task - 3);
        __dmb(0xBu);
        v41 = *a1;
        if (v40 <= 1)
        {
          tbb::internal::concurrent_monitor::cancel_wait((v41 + 43), v64);
LABEL_34:
          v44 = *a1;
          __dmb(0xBu);
          v45 = tbb::internal::concurrent_monitor::notify_one_relaxed((v44 + 43));
          goto LABEL_36;
        }

        v42 = sub_299FFF0F8(v41, inited);
        v43 = *a1;
        if (v42 != -1)
        {
          break;
        }

        if (v66 == *(v43 + 94))
        {
            ;
          }

          if (HIBYTE(v68) == 1)
          {
            tbb::internal::throw_exception_v4(18);
          }
        }

        else
        {
          tbb::internal::concurrent_monitor::cancel_wait((v43 + 43), v64);
        }

        v39 = *(task - 3);
        __dmb(0xBu);
        if (v39 != 2)
        {
          goto LABEL_34;
        }
      }

      tbb::internal::concurrent_monitor::cancel_wait((v43 + 43), v64);
      v46 = *a1;
      v56.__ptr_ = inited;
      v63 = 0;
      v47 = *(inited + 48);
      v48 = *(inited + 64);
      v49 = *(inited + 96);
      v60 = *(inited + 80);
      v61 = v49;
      v58 = v47;
      v59 = v48;
      v57 = *v8;
      *(inited + 74) |= 3u;
      v50 = *(inited + 144);
      *(inited + 56) = v50;
      v62 = *(v50 - 56);
      v51 = v62;
      *(v50 - 56) = v46[40];
      tbb::internal::generic_scheduler::nested_arena_entry(inited, v46, v42);
      (*(*inited + 48))(inited, task, 0);
      *(*(inited + 144) - 56) = v51;
      tbb::internal::generic_scheduler::nested_arena_exit(inited);
      *v8 = v57;
      v52 = v61;
      *(inited + 80) = v60;
      *(inited + 96) = v52;
      v53 = v59;
      *(inited + 48) = v58;
      *(inited + 64) = v53;
      *(inited + 352) = **(&v61 + 1);
      v45 = tbb::internal::governor::assume_scheduler(inited);
LABEL_36:
      v54 = v80;
      if (v80)
      {
        if (tbb::internal::governor::is_rethrow_broken == 1)
        {
          tbb::internal::fix_broken_rethrow(v45);
        }

        std::exception_ptr::exception_ptr(&v56, v54);
        v55.__ptr_ = &v56;
        std::rethrow_exception(v55);
        __break(1u);
      }

      else
      {
        *(task - 12) = 4;
        *(task - 1) = *(inited + 136);
        *(inited + 136) = task;
        tbb::task_group_context::~task_group_context(&v71);
        if (v69 == 1)
        {
          if (v68 == 1)
          {
              ;
            }
          }

          semaphore_destroy(*MEMORY[0x29EDCA6B0], semaphore);
        }
      }
    }
  }

  else
  {
    v56.__ptr_ = 0;
    *&v57 = tbb::internal::NFS_Allocate(1uLL, 16, 0, v5);
    fegetenv(v57);
    v12 = tbb::internal::NFS_Allocate(1uLL, 16, 0, v11);
    *(&v57 + 1) = v12;
    *v12 = *v57;
    v13 = *(*(a1 + 8) + 112);
    if (v13->__fpsr != v12->__fpsr || v13->__fpcr != v12->__fpcr)
    {
      *v12 = *v13;
      fesetenv(v12);
    }

    v15 = *a1;
    v71 = inited;
    *&v74 = 0;
    v78 = v9 == v10;
    if (v9 == v10)
    {
      BYTE10(v74) = *(inited + 74);
      *(&v73 + 1) = *(inited + 56);
      *(inited + 74) = BYTE10(v74) | 3;
      v21 = *(inited + 144);
      *(inited + 56) = v21;
      v20 = *(v21 - 56);
      v77 = v20;
      *(v21 - 56) = v15[40];
    }

    else
    {
      v17 = *(inited + 48);
      v16 = *(inited + 64);
      v18 = *(inited + 96);
      v75 = *(inited + 80);
      v76 = v18;
      v73 = v17;
      v74 = v16;
      v72 = *v8;
      *(inited + 74) |= 3u;
      v19 = *(inited + 144);
      *(inited + 56) = v19;
      v20 = *(v19 - 56);
      v77 = v20;
      *(v19 - 56) = v15[40];
      tbb::internal::generic_scheduler::nested_arena_entry(inited, v15, v7);
    }

    (**a2)(a2);
    *(*(inited + 144) - 56) = v20;
    if (v9 == v10)
    {
      *(inited + 74) = BYTE10(v74);
      *(inited + 56) = *(&v73 + 1);
    }

    else
    {
      tbb::internal::generic_scheduler::nested_arena_exit(inited);
      *v8 = v72;
      v23 = v76;
      *(inited + 80) = v75;
      *(inited + 96) = v23;
      v24 = v74;
      *(inited + 48) = v73;
      *(inited + 64) = v24;
      *(inited + 352) = **(&v76 + 1);
      tbb::internal::governor::assume_scheduler(inited);
    }

    sub_29A000984(&v56, v22);
  }
}

void sub_299FFF058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  sub_29A000984(va, v3);
  _Unwind_Resume(a1);
}

void sub_299FFF0A8(_Unwind_Exception *a1, void *a2)
{
  sub_29A000950((v2 + 16), a2);
  sub_29A000950((v2 + 8), v4);
  _Unwind_Resume(a1);
}

void sub_299FFF0C4(_Unwind_Exception *a1)
{
  *(v2 - 12) = 4;
  *(v2 - 8) = *(v1 + 136);
  *(v1 + 136) = v2;
  tbb::task_group_context::~task_group_context(&v5);
  sub_299FEE8F0(&v4);
  _Unwind_Resume(a1);
}

uint64_t sub_299FFF0F8(unsigned int *a1, unint64_t a2)
{
  v2 = a1[83];
  if (v2)
  {
    v3 = *(a2 + 32);
    if (v3 >= v2)
    {
      v4 = *(a2 + 128);
      *(a2 + 128) = *(a2 + 132) - 1640531535 * v4;
      v3 = HIWORD(v4) % v2;
    }

    v5 = a1 + 96;
    v6 = v3;
    do
    {
      v7 = &v5[64 * v6];
      if (!*v7)
      {
        do
        {
          v8 = 0;
          atomic_compare_exchange_strong(v7, &v8, a2);
          if (!v8)
          {
            goto LABEL_17;
          }
        }

        while (!atomic_fetch_add_explicit(v7, 0, memory_order_relaxed));
      }

      ++v6;
    }

    while (v6 != v2);
    if (!v3)
    {
      goto LABEL_18;
    }

    v6 = 0;
    while (1)
    {
      v9 = &v5[64 * v6];
      if (!*v9)
      {
        break;
      }

LABEL_12:
      if (++v6 == v3)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v10 = 0;
      atomic_compare_exchange_strong(v9, &v10, a2);
      if (!v10)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v9, 0, memory_order_relaxed))
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    if (v6 != -1)
    {
      goto LABEL_41;
    }
  }

LABEL_18:
  v11 = a1[83];
  v12 = a1[82];
  if (v11 >= v12)
  {
    return -1;
  }

  v13 = *(a2 + 32);
  if (v13 < v11 || v13 >= v12)
  {
    v15 = *(a2 + 128);
    *(a2 + 128) = *(a2 + 132) - 1640531535 * v15;
    v13 = (v15 >> 16) % (v12 - v11) + v11;
  }

  if (v13 >= v12)
  {
LABEL_32:
    if (v13 > v11)
    {
      while (1)
      {
        v19 = &a1[64 * v11 + 96];
        if (!*v19)
        {
          break;
        }

LABEL_34:
        ++v11;
        v6 = -1;
        if (v11 == v13)
        {
          return v6;
        }
      }

      while (1)
      {
        v20 = 0;
        atomic_compare_exchange_strong(v19, &v20, a2);
        if (!v20)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v19, 0, memory_order_relaxed))
        {
          goto LABEL_34;
        }
      }

      v6 = v11;
      goto LABEL_40;
    }

    return -1;
  }

  v6 = v13;
  while (1)
  {
    v16 = &a1[64 * v6 + 96];
    if (!*v16)
    {
      break;
    }

LABEL_27:
    if (++v6 == v12)
    {
      goto LABEL_32;
    }
  }

  while (1)
  {
    v17 = 0;
    atomic_compare_exchange_strong(v16, &v17, a2);
    if (!v17)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v16, 0, memory_order_relaxed))
    {
      goto LABEL_27;
    }
  }

LABEL_40:
  if (v6 != -1)
  {
LABEL_41:
    v21 = v6 + 1;
LABEL_42:
    v22 = a1[36];
    __dmb(0xBu);
    if (v22 < v21)
    {
      while (1)
      {
        v23 = v22;
        atomic_compare_exchange_strong(a1 + 36, &v23, v21);
        if (v23 == v22)
        {
          break;
        }

        if (a1[36] != v22)
        {
          goto LABEL_42;
        }
      }
    }
  }

  return v6;
}

uint64_t *sub_299FFF2E0(uint64_t *a1)
{
  v2 = a1[11];
  v3 = *a1;
  *(*(v3 + 144) - 56) = v2;
  if (*(a1 + 96) == 1)
  {
    *(v3 + 74) = *(a1 + 50);
    *(*a1 + 56) = a1[4];
  }

  else
  {
    tbb::internal::generic_scheduler::nested_arena_exit(v3);
    v4 = *a1;
    v4[2] = *(a1 + 1);
    v5 = *(a1 + 3);
    v6 = *(a1 + 5);
    v7 = *(a1 + 9);
    v4[5] = *(a1 + 7);
    v4[6] = v7;
    v4[3] = v5;
    v4[4] = v6;
    v8 = *a1;
    *(v8 + 352) = *a1[10];
    tbb::internal::governor::assume_scheduler(v8);
  }

  return a1;
}

void sub_299FFF378(std::exception_ptr *a1)
{
  std::exception_ptr::exception_ptr(&v2, a1);
  v1.__ptr_ = &v2;
  std::rethrow_exception(v1);
  __break(1u);
}

__n128 sub_299FFF3B8(uint64_t a1)
{
  v4 = a1 + 8;
  v2 = *(a1 + 8);
  v3 = *(v4 + 8);
  v6 = *v3;
  v5 = v3[1];
  if (v6 != v2->__fpsr || v5 != v2->__fpcr)
  {
    fesetenv(v2);
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = tbb::internal::NFS_Allocate(1uLL, 16, 0, v8);
      *(a1 + 16) = v9;
    }

    v10 = *(a1 + 8);
    result = *v10;
    *v9 = *v10;
  }

  return result;
}

void tbb::interface7::internal::task_arena_base::internal_wait(tbb::internal::generic_scheduler **this)
{
  v2 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v2)
  {
    inited = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v4 = *this;
  if (*(inited + 48) != *this)
  {
    v5 = MEMORY[0x29EDCA6B0];
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(v4 + 27);
          __dmb(0xBu);
          if (v6)
          {
            break;
          }

          v20 = *(*this + 33);
          __dmb(0xBu);
          if (v20 <= 0xFFF && !*(*this + 48))
          {
            return;
          }

          sched_yield();
          v4 = *this;
        }

        v7 = *(*this + 48);
        __dmb(0xBu);
        if (!v7)
        {
          break;
        }

LABEL_12:
        semaphore = 0;
        semaphore_create(*v5, &semaphore, 0, 0);
        v24 = this[1];
        v10 = tbb::internal::allocate_root_with_context_proxy::allocate(&v24, 0x10uLL);
        *(v10 - 11) = 1;
        *v10 = &unk_2A203AD40;
        v10[1] = &semaphore;
        tbb::interface7::internal::task_arena_base::internal_enqueue(this, v10, 0);
          ;
        }

        semaphore_destroy(*v5, semaphore);
LABEL_15:
        v4 = *this;
      }

      v8 = *this;
      while (1)
      {
        v9 = 0;
        atomic_compare_exchange_strong(v8 + 48, &v9, inited);
        if (!v9)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v8 + 48, 0, memory_order_relaxed))
        {
          goto LABEL_12;
        }
      }

      v11 = *this;
      v24 = inited;
      v31 = 0;
      v12 = *(inited + 48);
      v13 = *(inited + 64);
      v14 = *(inited + 80);
      v29 = *(inited + 96);
      v28 = v14;
      v27 = v13;
      v26 = v12;
      v25 = *(inited + 32);
      *(inited + 74) = *(inited + 74) & 0xFC | 2;
      v15 = *(inited + 144);
      *(inited + 56) = v15;
      v30 = *(v15 - 56);
      *(v15 - 56) = *(v11 + 40);
      tbb::internal::generic_scheduler::nested_arena_entry(inited, v11, 0);
      ++*(*(inited + 144) - 24);
      while (1)
      {
        v16 = *(*(inited + 48) + 216);
        __dmb(0xBu);
        if (!v16)
        {
          break;
        }

        (*(*inited + 48))(inited, *(inited + 144), 0);
      }

      --*(*(inited + 144) - 24);
      v17 = v24;
      *(*(v24 + 18) - 56) = v30;
      if (v31 != 1)
      {
        tbb::internal::generic_scheduler::nested_arena_exit(v17);
        *(v17 + 2) = v25;
        v18 = v29;
        *(v17 + 5) = v28;
        *(v17 + 6) = v18;
        v19 = v27;
        *(v17 + 3) = v26;
        *(v17 + 4) = v19;
        *(v17 + 44) = **(&v29 + 1);
        tbb::internal::governor::assume_scheduler(v17);
        goto LABEL_15;
      }

      *(v17 + 74) = BYTE10(v27);
      *(v17 + 7) = *(&v26 + 1);
      v4 = *this;
    }
  }

  if (!*(inited + 32))
  {
    while (1)
    {
      v21 = *(v4 + 33);
      __dmb(0xBu);
      if (v21 < 0x1000)
      {
        break;
      }

      ++*(*(inited + 144) - 24);
      while (1)
      {
        v22 = *(*(inited + 48) + 216);
        __dmb(0xBu);
        if (!v22)
        {
          break;
        }

        (*(*inited + 48))(inited, *(inited + 144), 0);
      }

      --*(*(inited + 144) - 24);
      v4 = *this;
    }
  }
}

uint64_t tbb::interface7::internal::task_arena_base::internal_current_slot(tbb::interface7::internal::task_arena_base *this)
{
  v1 = pthread_getspecific(tbb::internal::governor::theTLS);
  if ((v1 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    return *((v1 & 0xFFFFFFFFFFFFFFFELL) + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t tbb::interface7::internal::isolate_within_arena(uint64_t (***a1)(void), uint64_t (***a2)(void))
{
  v4 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v4)
  {
    inited = v4 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v6 = *(inited + 56);
  v7 = *(v6 - 64);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  *(v6 - 64) = v8;
  result = (**a1)(a1);
  *(v6 - 64) = v7;
  return result;
}

uint64_t tbb::interface7::internal::task_arena_base::internal_max_concurrency(uint64_t *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *a1;
    if (!*a1)
    {
      goto LABEL_7;
    }

    return (*(v1 + 208) + *(v1 + 332));
  }

  v2 = pthread_getspecific(tbb::internal::governor::theTLS) & 0xFFFFFFFFFFFFFFFELL;
  if (v2)
  {
    v1 = *(v2 + 48);
    if (v1)
    {
      return (*(v1 + 208) + *(v1 + 332));
    }
  }

LABEL_7:
  result = tbb::internal::governor::DefaultNumberOfThreads;
  if (!tbb::internal::governor::DefaultNumberOfThreads)
  {
    *v6 = 0x1900000006;
    v5 = 0;
    v4 = 4;
    sysctl(v6, 2u, &v5, &v4, 0, 0);
    if (v5 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v5;
    }

    tbb::internal::governor::DefaultNumberOfThreads = result;
  }

  return result;
}

tbb::internal::task_scheduler_observer_v3 *sub_299FFF930(tbb::internal::task_scheduler_observer_v3 *a1)
{
  *a1 = &unk_2A203AC50;
  if (*(a1 + 1))
  {
    tbb::internal::task_scheduler_observer_v3::observe(a1, 0);
    v2 = *(a1 + 1);
    *a1 = &unk_2A203AC80;
    if (v2)
    {
      tbb::internal::task_scheduler_observer_v3::observe(a1, 0);
    }
  }

  else
  {
    *a1 = &unk_2A203AC80;
  }

  return a1;
}

uint64_t sub_299FFF9DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 32);
  }

  else
  {
    v4 = -1;
  }

  if (v4 >= 0xFFFFFFFE)
  {
    v5 = 4294967294;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 32);

  return tbb::internal::bind_thread_to_node(v2, v5, v6);
}

uint64_t sub_299FFFA48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = pthread_getspecific(tbb::internal::governor::theTLS);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 32);
  }

  else
  {
    v3 = -1;
  }

  if (v3 >= 0xFFFFFFFE)
  {
    v4 = 4294967294;
  }

  else
  {
    v4 = v3;
  }

  return tbb::internal::restore_affinity_mask(v1, v4);
}

tbb::internal::task_scheduler_observer_v3 *sub_299FFFAAC(tbb::internal::task_scheduler_observer_v3 *a1)
{
  *a1 = &unk_2A203ABE0;
  tbb::internal::destroy_binding_handler(*(a1 + 5));

  return sub_299FFF930(a1);
}

void sub_299FFFB08(tbb::internal::task_scheduler_observer_v3 *a1)
{
  *a1 = &unk_2A203ABE0;
  tbb::internal::destroy_binding_handler(*(a1 + 5));
  *a1 = &unk_2A203AC50;
  if (*(a1 + 1))
  {
    tbb::internal::task_scheduler_observer_v3::observe(a1, 0);
    v2 = *(a1 + 1);
    *a1 = &unk_2A203AC80;
    if (v2)
    {
      tbb::internal::task_scheduler_observer_v3::observe(a1, 0);
    }
  }

  operator delete(a1);
}

void sub_299FFFBCC(tbb::internal::task_scheduler_observer_v3 *__p)
{
  *__p = &unk_2A203AC50;
  if (*(__p + 1))
  {
    tbb::internal::task_scheduler_observer_v3::observe(__p, 0);
    v2 = *(__p + 1);
    *__p = &unk_2A203AC80;
    if (v2)
    {
      tbb::internal::task_scheduler_observer_v3::observe(__p, 0);
    }
  }

  operator delete(__p);
}

tbb::internal::task_scheduler_observer_v3 *sub_299FFFC68(tbb::internal::task_scheduler_observer_v3 *result)
{
  *result = &unk_2A203AC80;
  if (*(result + 1))
  {
    v1 = result;
    tbb::internal::task_scheduler_observer_v3::observe(result, 0);
    return v1;
  }

  return result;
}

void sub_299FFFCBC(tbb::internal::task_scheduler_observer_v3 *a1)
{
  *a1 = &unk_2A203AC80;
  if (*(a1 + 1))
  {
    v1 = a1;
    tbb::internal::task_scheduler_observer_v3::observe(a1, 0);
    a1 = v1;
  }

  operator delete(a1);
}

void *sub_299FFFD20(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = (v3 - 16);
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = v5 << 7;
      v7 = (v6 + v3 - 128);
      v8 = -v6;
      do
      {
        v7 = sub_299FFFE00(v7, a2) - 16;
        v8 += 128;
      }

      while (v8);
    }

    operator delete[](v4);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = (v9 - 16);
    v11 = *(v9 - 8);
    if (v11)
    {
      v12 = v11 << 7;
      v13 = -v12;
      v14 = (v12 + v9 - 128);
      do
      {
        v14 = sub_299FFFE00(v14, a2) - 16;
        v13 += 128;
      }

      while (v13);
    }

    operator delete[](v10);
  }

  v15 = a1[5];
  if (v15)
  {
    v16 = (v15 - 16);
    v17 = *(v15 - 8);
    if (v17)
    {
      v18 = v17 << 7;
      v19 = -v18;
      v20 = (v18 + v15 - 128);
      do
      {
        v20 = sub_299FFFE00(v20, a2) - 16;
        v19 += 128;
      }

      while (v19);
    }

    operator delete[](v16);
  }

  return a1;
}

uint64_t *sub_299FFFE00(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  a1[5] = 0;
  v5 = v4 - v3;
  if (v5 >= 3)
  {
    do
    {
      tbb::internal::deallocate_via_handler_v3(*v3, a2);
      v4 = a1[2];
      v3 = (a1[1] + 8);
      a1[1] = v3;
      v5 = v4 - v3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[4] = v6;
  }

  if (v3 != v4)
  {
    do
    {
      tbb::internal::deallocate_via_handler_v3(*v3++, a2);
    }

    while (v3 != v4);
    v8 = a1[1];
    v7 = a1[2];
    if (v7 != v8)
    {
      a1[2] = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    tbb::internal::deallocate_via_handler_v3(*a1, a2);
  }

  return a1;
}

void *sub_299FFFEDC(void *a1)
{
  *a1 = &unk_2A203ACF8;
  v2 = a1[3];
  __dmb(0xBu);
  *(v2 - 24) = 1;
  v3 = a1[2];
  __dmb(0xBu);
  sub_29A00006C(v3, a1);
  return a1;
}

void sub_299FFFF40(void *a1)
{
  *a1 = &unk_2A203ACF8;
  v2 = a1[3];
  __dmb(0xBu);
  *(v2 - 24) = 1;
  v3 = a1[2];
  __dmb(0xBu);
  sub_29A00006C(v3, a1);

  operator delete(a1);
}

uint64_t sub_299FFFFB4(uint64_t a1)
{
  v2 = *(a1 - 40);
  v3 = *(v2 + 144);
  v4 = *(v2 + 74);
  v5 = *(a1 - 56);
  *(a1 - 56) = *(*(v2 + 48) + 320);
  *(v2 + 144) = a1;
  *(v2 + 74) |= 1u;
  (***(a1 + 8))();
  *(a1 - 56) = v5;
  *(v2 + 74) = v4;
  *(v2 + 144) = v3;
  return 0;
}

void sub_29A00005C(_Unwind_Exception *a1)
{
  *(v1 - 56) = v5;
  *(v2 + 74) = v4;
  *(v2 + 144) = v3;
  _Unwind_Resume(a1);
}

uint64_t sub_29A00006C(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v17 = &v17;
    v18 = &v17;
    v16 = 0;
    v4 = (result + 1);
    v5 = ((result + 1) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = 1 << (8 * ((result + 1) & 3));
    v7 = ~(255 << (8 * ((result + 1) & 3)));
LABEL_3:
    v8 = *v5 & v7;
    while (1)
    {
      v9 = v8;
      atomic_compare_exchange_strong(v5, &v9, v8 | v6);
      if (v9 == v8)
      {
        break;
      }

      if (*v5 != v8)
      {
        result = sched_yield();
        goto LABEL_3;
      }
    }

    ++*(v3 + 32);
    v10 = *(v3 + 24);
    if (v10 != (v3 + 16))
    {
      do
      {
        v13 = v10[1];
        if (*(a2 + 8) == v10[4])
        {
          --*(v3 + 8);
          v14 = *v10;
          *v13 = *v10;
          v14[1] = v13;
          __dmb(0xBu);
          *(v10 + 24) = 0;
          ++v16;
          v15 = v18;
          *v10 = &v17;
          v10[1] = v15;
          *v15 = v10;
          v18 = v10;
        }

        v10 = v13;
      }

      while (v13 != (v3 + 16));
    }

    __dmb(0xBu);
    *v4 = 0;
    v11 = v17;
    if (v17 != &v17)
    {
      do
      {
        v12 = *v11;
        result = MEMORY[0x29C2C53C0](*(v11 + 4));
        v11 = v12;
      }

      while (v12 != &v17);
    }
  }

  return result;
}

uint64_t sub_29A0001C4(uint64_t a1)
{
  v2 = pthread_getspecific(tbb::internal::governor::theTLS);
  v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  if (*((v2 & 0xFFFFFFFFFFFFFFFELL) + 74))
  {
    tbb::internal::arena::is_out_of_work(*(v3 + 48));
  }

  else
  {
    *(v3 + 56) = *(v3 + 144);
    (*(*v3 + 48))(v2 & 0xFFFFFFFFFFFFFFFELL);
    *(v3 + 56) = a1;
  }

  MEMORY[0x29C2C53C0](**(a1 + 8));
  return 0;
}

uint64_t *sub_29A000290(uint64_t *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v7 = a1[2];
  v8 = a1[3];
  v9 = v7 - a1[1];
  v10 = v8 - *a1;
  if (v9 < v10)
  {
    if (v8 != v7)
    {
      v41[0] = tbb::internal::allocate_via_handler_v3(0x1000);
      return sub_29A000578(a1, v41);
    }

    v41[0] = tbb::internal::allocate_via_handler_v3(0x1000);
    sub_29A0006F4(a1, v41);
LABEL_4:
    v5 = a1[1];
    v41[0] = *v5;
    a1[1] = (v5 + 1);
    return sub_29A000578(a1, v41);
  }

  v11 = v10 >> 2;
  if (v8 == *a1)
  {
    v11 = 1;
  }

  v43 = a1;
  v12 = 8 * v11;
  v41[0] = tbb::internal::allocate_via_handler_v3((8 * v11));
  v41[1] = (v41[0] + v9);
  *&v42 = v41[0] + v9;
  *(&v42 + 1) = v41[0] + v12;
  v14 = tbb::internal::allocate_via_handler_v3(0x1000);
  v15 = (v41[0] + v9);
  if ((v41[0] + v9) == *(&v42 + 1))
  {
    v13 = v41[1];
    if (v41[1] > v41[0])
    {
      v16 = (((v41[1] - v41[0]) >> 3) + 1 + ((((v41[1] - v41[0]) >> 3) + 1) >> 63)) >> 1;
      v17 = (v41[1] - 8 * v16);
      v18 = v42 - v41[1];
      if (v42 != v41[1])
      {
        memmove(v41[1] - 8 * v16, v41[1], v42 - v41[1]);
      }

      v15 = (v17 + v18);
      v41[1] = v17;
      *&v42 = v17 + v18;
      goto LABEL_29;
    }

    if (v42 == v41[0])
    {
      v19 = 1;
    }

    else
    {
      v19 = (v42 - v41[0]) >> 2;
    }

    v20 = tbb::internal::allocate_via_handler_v3((8 * v19));
    v21 = (v20 + 8 * (v19 >> 2));
    v22 = v41[1];
    v15 = v21;
    v23 = v42 - v41[1];
    if (v42 != v41[1])
    {
      v15 = (v21 + v23);
      v24 = v23 - 8;
      if (v24 < 0x38)
      {
        v25 = (v20 + 8 * (v19 >> 2));
        do
        {
LABEL_26:
          v34 = *v22;
          v22 = (v22 + 8);
          *v25++ = v34;
        }

        while (v25 != v15);
        goto LABEL_27;
      }

      v26 = v20 + 8 * (v19 >> 2);
      v25 = v26;
      if ((v26 - v41[1]) < 0x20)
      {
        goto LABEL_26;
      }

      v27 = (v24 >> 3) + 1;
      v28 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      v25 = &v21[v28];
      v29 = (v41[1] + v28 * 8);
      v30 = (v41[1] + 16);
      v31 = v26 + 16;
      v32 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v33 = *v30;
        *(v31 - 1) = *(v30 - 1);
        *v31 = v33;
        v30 += 2;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      v22 = v29;
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_26;
      }
    }

LABEL_27:
    v35 = v41[0];
    v41[0] = v20;
    v41[1] = (v20 + 8 * (v19 >> 2));
    *&v42 = v15;
    *(&v42 + 1) = v20 + 8 * v19;
    if (v35)
    {
      tbb::internal::deallocate_via_handler_v3(v35, v13);
      v15 = v42;
    }
  }

LABEL_29:
  *v15 = v14;
  *&v42 = v42 + 8;
  for (i = a1[2]; ; sub_29A0006F4(v41, i))
  {
    v37 = a1[1];
    if (i == v37)
    {
      break;
    }

    --i;
  }

  v38 = *v41;
  v39 = v42;
  v41[0] = *a1;
  v41[1] = v37;
  v40 = *(a1 + 1);
  *a1 = v38;
  *(a1 + 1) = v39;
  v42 = v40;
  if (v40 != i)
  {
    *&v42 = v40 + ((i - v40 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  result = v41[0];
  if (v41[0])
  {
    return tbb::internal::deallocate_via_handler_v3(v41[0], v13);
  }

  return result;
}

void sub_29A000548(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A0008D0(va, a2);
  sub_29A00087C(va1, v4);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A000578(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 != result[3])
  {
    goto LABEL_18;
  }

  v5 = result[1];
  v6 = &v5[-*result];
  if (v5 > *result)
  {
    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
    goto LABEL_18;
  }

  v11 = &v4[-*result] >> 2;
  if (v4 == *result)
  {
    v11 = 1;
  }

  v12 = v11 >> 2;
  v13 = v11;
  result = tbb::internal::allocate_via_handler_v3((8 * v11));
  v15 = &result[v12];
  v16 = v3[1];
  v4 = v15;
  v17 = v3[2] - v16;
  if (v17)
  {
    v4 = &v15[v17];
    v18 = v17 - 8;
    if ((v17 - 8) < 0x38)
    {
      v19 = &result[v12];
      do
      {
LABEL_15:
        v28 = *v16++;
        *v19 = v28;
        v19 += 8;
      }

      while (v19 != v4);
      goto LABEL_16;
    }

    v20 = &result[v12];
    v19 = v20;
    if ((v20 - v16) < 0x20)
    {
      goto LABEL_15;
    }

    v21 = (v18 >> 3) + 1;
    v22 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    v19 = &v15[v22 * 8];
    v23 = &v16[v22];
    v24 = (v16 + 2);
    v25 = v20 + 2;
    v26 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v27 = *v24;
      *(v25 - 1) = *(v24 - 1);
      *v25 = v27;
      v24 += 2;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    v16 = v23;
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v29 = *v3;
  *v3 = result;
  v3[1] = v15;
  v3[2] = v4;
  v3[3] = &result[v13];
  if (v29)
  {
    result = tbb::internal::deallocate_via_handler_v3(v29, v14);
    v4 = v3[2];
  }

LABEL_18:
  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t *sub_29A0006F4(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 != *result)
  {
    v5 = result[1];
    goto LABEL_19;
  }

  v6 = result[2];
  v7 = result[3];
  if (v6 < v7)
  {
    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
    goto LABEL_19;
  }

  v9 = (v7 - v4) >> 2;
  if (v7 == v4)
  {
    v9 = 1;
  }

  v10 = (v9 + 3) >> 2;
  v11 = v9;
  result = tbb::internal::allocate_via_handler_v3((8 * v9));
  v5 = &result[v10];
  v13 = v3[1];
  v14 = v5;
  v15 = v3[2] - v13;
  if (v15)
  {
    v14 = v5 + v15;
    v16 = v15 - 8;
    if ((v15 - 8) < 0x38)
    {
      v17 = &result[v10];
      do
      {
LABEL_16:
        v26 = *v13++;
        *v17++ = v26;
      }

      while (v17 != v14);
      goto LABEL_17;
    }

    v18 = &result[v10];
    v17 = v18;
    if ((v18 - v13) < 0x20)
    {
      goto LABEL_16;
    }

    v19 = (v16 >> 3) + 1;
    v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    v17 = &v5[v20];
    v21 = &v13[v20];
    v22 = (v13 + 2);
    v23 = v18 + 2;
    v24 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25 = *v22;
      *(v23 - 1) = *(v22 - 1);
      *v23 = v25;
      v22 += 2;
      v23 += 2;
      v24 -= 4;
    }

    while (v24);
    v13 = v21;
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v27 = *v3;
  *v3 = result;
  v3[1] = v5;
  v3[2] = v14;
  v3[3] = &result[v11];
  if (v27)
  {
    result = tbb::internal::deallocate_via_handler_v3(v27, v12);
    v5 = v3[1];
  }

LABEL_19:
  *(v5 - 1) = *a2;
  v3[1] -= 8;
  return result;
}

uint64_t *sub_29A00087C(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 != v4)
  {
    a1[2] = v3 + ((v4 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = *a1;
  if (*a1)
  {
    tbb::internal::deallocate_via_handler_v3(v5, a2);
  }

  return a1;
}

uint64_t *sub_29A0008D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

tbb::internal **sub_29A000950(tbb::internal **a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::NFS_Free(v3, a2);
  }

  return a1;
}

uint64_t sub_29A000984(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  if (*v3 != *v4 || *(v3 + 1) != v4[1])
  {
    fesetenv(*(a1 + 8));
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    tbb::internal::NFS_Free(v3, a2);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    tbb::internal::NFS_Free(v6, a2);
  }

  return a1;
}

uint64_t tbb::internal::Scheduler_OneTimeInitialization(tbb::internal *this)
{
  v1 = tbb::internal::custom_scheduler<tbb::internal::IntelSchedulerTraits>::allocate_scheduler;
  if (this)
  {
    v1 = tbb::internal::custom_scheduler<tbb::internal::DefaultSchedulerTraits>::allocate_scheduler;
  }

  tbb::internal::AllocateSchedulerPtr = v1;
  *(sub_29A000B70() + 152) = 2;
  result = sub_29A000B70();
  *(result + 160) = 2;
  return result;
}

tbb::internal::generic_scheduler *tbb::internal::custom_scheduler<tbb::internal::DefaultSchedulerTraits>::allocate_scheduler(tbb::internal::market *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = tbb::internal::NFS_Allocate(1uLL, 392, 0, a4);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0;
  result = tbb::internal::generic_scheduler::generic_scheduler(v5, a1);
  *result = &unk_2A203AED0;
  return result;
}

tbb::internal::generic_scheduler *tbb::internal::custom_scheduler<tbb::internal::IntelSchedulerTraits>::allocate_scheduler(tbb::internal::market *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = tbb::internal::NFS_Allocate(1uLL, 392, 0, a4);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0;
  result = tbb::internal::generic_scheduler::generic_scheduler(v5, a1);
  *result = &unk_2A203AF48;
  return result;
}

uint64_t sub_29A000B70()
{
  if ((atomic_load_explicit(&qword_2A153EC28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC28))
  {
    v1 = operator new(0x100uLL);
    *v1 = 0;
    v1[16] = 65539;
    *(v1 + 42) = 55;
    tbb::task_group_context::init(v1, v2, v3, v4);
    qword_2A153EC20 = v1;
    __cxa_guard_release(&qword_2A153EC28);
  }

  return qword_2A153EC20;
}

void sub_29A000BF0(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153EC28);
  _Unwind_Resume(a1);
}

tbb::internal::generic_scheduler *tbb::internal::generic_scheduler::generic_scheduler(tbb::internal::generic_scheduler *this, tbb::internal::market *a2)
{
  *(this + 8) = 0;
  *this = &unk_2A203ADD0;
  *(this + 15) = a2;
  v4 = -1168702475 * ((HIDWORD(this) + this) | 1);
  *(this + 32) = v4 ^ ((HIDWORD(this) + this) >> 1);
  *(this + 33) = v4;
  *(this + 19) = 1;
  *(this + 21) = 1;
  *(this + 312) = 0;
  v5 = sub_29A000B70();
  v7 = *(this + 17);
  if (!v7)
  {
    if (!*(this + 22))
    {
      v11 = v5;
      v12 = tbb::internal::NFS_Allocate(1uLL, 256, 0, v6);
      v5 = v11;
      v7 = v12 + 64;
      *(v12 + 16) = this;
      *(v12 + 56) = 0;
      ++*(this + 21);
      goto LABEL_3;
    }

LABEL_5:
    v7 = *(this + 22);
    while (1)
    {
      v9 = v7;
      atomic_compare_exchange_strong(this + 22, &v9, 0);
      if (v9 == v7)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 22, 0, memory_order_relaxed) != v7)
      {
        v10 = v5;
        sched_yield();
        v5 = v10;
        goto LABEL_5;
      }
    }
  }

  *(this + 17) = *(v7 - 8);
LABEL_3:
  *(v7 - 24) = 0;
  *(v7 - 16) = 0x300000000;
  *(v7 - 40) = this;
  *(v7 - 32) = 0;
  *(v7 - 64) = 0;
  *(v7 - 56) = v5;
  *(this + 18) = v7;
  *(this + 7) = v7;
  *(this + 74) |= 2u;
  *(this + 12) = a2 + 48;
  *(this + 13) = a2 + 64;
  *(this + 40) = tbb::internal::the_context_state_propagation_epoch;
  *(this + 37) = this + 296;
  *(this + 38) = this + 296;
  return this;
}

uint64_t tbb::internal::generic_scheduler::allocate_task(tbb::internal::generic_scheduler *this, unint64_t a2, tbb::task *a3, tbb::task_group_context *a4)
{
  if (a2 > 0xC0)
  {
    v8 = tbb::internal::NFS_Allocate(1uLL, a2 + 64, 0, a4);
    result = v8 + 64;
    *(v8 + 16) = 0;
  }

  else
  {
    result = *(this + 17);
    if (!result)
    {
      if (!*(this + 22))
      {
        v10 = tbb::internal::NFS_Allocate(1uLL, 256, 0, a4);
        result = v10 + 64;
        *(v10 + 16) = this;
        *(v10 + 56) = 0;
        ++*(this + 21);
        goto LABEL_5;
      }

LABEL_7:
      result = *(this + 22);
      while (1)
      {
        v9 = result;
        atomic_compare_exchange_strong(this + 22, &v9, 0);
        if (v9 == result)
        {
          break;
        }

        if (atomic_fetch_add_explicit(this + 22, 0, memory_order_relaxed) != result)
        {
          sched_yield();
          goto LABEL_7;
        }
      }
    }

    *(this + 17) = *(result - 8);
  }

LABEL_5:
  *(result - 24) = 0;
  *(result - 16) = 0x300000000;
  *(result - 40) = this;
  *(result - 32) = a3;
  *(result - 64) = 0;
  *(result - 56) = a4;
  return result;
}

uint64_t tbb::internal::generic_scheduler::cleanup_local_context_list(uint64_t this)
{
  v1 = this;
  v2 = *(this + 320);
  *(this + 328) = 1;
  __dmb(0xBu);
  if (*(this + 368))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 == tbb::internal::the_context_state_propagation_epoch;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = (this + 312);
    v5 = ((this + 312) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = 1 << (8 * ((this + 56) & 3));
    v7 = ~(255 << (8 * ((this + 56) & 3)));
LABEL_6:
    v8 = *v5 & v7;
    while (1)
    {
      v9 = v8;
      atomic_compare_exchange_strong(v5, &v9, v8 | v6);
      if (v9 == v8)
      {
        break;
      }

      if (*v5 != v8)
      {
        this = sched_yield();
        goto LABEL_6;
      }
    }
  }

  v10 = v1[38];
  if (v10 == v1 + 37)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = v10[1];
LABEL_15:
      v13 = *(v10 - 4);
      while (1)
      {
        v14 = v13;
        atomic_compare_exchange_strong(v10 - 4, &v14, 3u);
        if (v14 == v13)
        {
          break;
        }

        if (*(v10 - 4) != v13)
        {
          this = sched_yield();
          goto LABEL_15;
        }
      }

      v11 |= v13 == 4;
      v10 = v12;
    }

    while (v12 != v1 + 37);
  }

  if (v4)
  {
    __dmb(0xBu);
    *v4 = 0;
  }

  __dmb(0xBu);
  v1[41] = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v1[46];
      __dmb(0xBu);
      if (!v15)
      {
        break;
      }

      this = sched_yield();
    }
  }

  return this;
}

void sub_29A000FB4(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t tbb::internal::generic_scheduler::destroy(tbb::internal::generic_scheduler *this)
{
  (*(*this + 24))(this);

  return tbb::internal::NFS_Free(this, v2);
}

uint64_t tbb::internal::generic_scheduler::cleanup_scheduler(tbb::internal::generic_scheduler *this)
{
  tbb::internal::generic_scheduler::cleanup_local_context_list(this);
  v4 = *(this + 17);
  v3 = *(this + 18);
  *(v3 - 12) = 4;
  *(v3 - 8) = v4;
  v5 = 1;
  while (1)
  {
    for (*(this + 17) = v3; v3; v3 = *(this + 17))
    {
      *(this + 17) = *(v3 - 8);
      tbb::internal::NFS_Free((v3 - 64), v2);
      ++v5;
    }

    if (*(this + 22) == -1)
    {
      break;
    }

LABEL_5:
    v3 = *(this + 22);
    while (1)
    {
      v6 = v3;
      atomic_compare_exchange_strong(this + 22, &v6, 0xFFFFFFFFFFFFFFFFLL);
      if (v6 == v3)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 22, 0, memory_order_relaxed) != v3)
      {
        sched_yield();
        goto LABEL_5;
      }
    }
  }

  result = tbb::internal::governor::sign_off(this);
  if (atomic_fetch_add(this + 21, -v5) == v5)
  {
    (*(*this + 24))(this);

    return tbb::internal::NFS_Free(this, v8);
  }

  return result;
}

tbb::internal *tbb::internal::generic_scheduler::free_nonlocal_small_task(tbb::internal::generic_scheduler *this, tbb::task *a2)
{
  result = (a2 - 64);
  v3 = *(a2 - 6);
  while (1)
  {
    v5 = v3[22];
    if (v5 == -1)
    {
      break;
    }

    *(a2 - 1) = v5;
    while (1)
    {
      v6 = v5;
      atomic_compare_exchange_strong(v3 + 22, &v6, a2);
      if (v6 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v3 + 22, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        goto LABEL_3;
      }
    }

    add_explicit = v5;
LABEL_3:
    if (v5 == add_explicit)
    {
      return result;
    }
  }

  result = tbb::internal::NFS_Free(result, a2);
  if (atomic_fetch_add(v3 + 21, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    (*(*v3 + 24))(v3);

    return tbb::internal::NFS_Free(v3, v7);
  }

  return result;
}

void *tbb::internal::generic_scheduler::local_spawn(tbb::internal::generic_scheduler *this, tbb::task *a2, tbb::task **a3, void *a4)
{
  v46 = *MEMORY[0x29EDCA608];
  if ((a2 - 8) == a3)
  {
    v26 = a2;
    v27 = sub_29A001588(this, 1, a3, a4);
    result = sub_29A0017D8(this, v26, v28, v29);
    *(*(*(this + 5) + 152) + 8 * v27) = result;
    v30 = *(this + 5);
    __dmb(0xBu);
    *(v30 + 136) = v27 + 1;
    v31 = *(this + 5);
    if (!*(v31 + 8))
    {
      v32 = *(v31 + 152);
      __dmb(0xBu);
      *(v31 + 8) = v32;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v45;
    memset(v45, 0, 512);
    v39 = v45;
    v9 = 64;
    v40 = vdupq_n_s64(0x40uLL);
    v10 = 64;
    v43 = 0;
    v44 = 0;
    do
    {
      v11 = (a2 - 8);
      v12 = *(a2 - 1);
      result = sub_29A0017D8(this, a2, a3, a4);
      if (!v10)
      {
        v14 = result;
        if (!v7)
        {
          v43 = 1;
          v41[0] = v8;
          v7 = 1;
        }

        v6 += v9;
        v44 = v6;
        v9 *= 2;
        v40.i64[0] = v9;
        v40.i64[1] = v9;
        v15 = tbb::internal::NFS_Allocate(v9, 8, 0, a4);
        result = v14;
        v39 = v15;
        v41[v7++] = v15;
        v43 = v7;
        v8 = v15;
        v10 = v9;
      }

      v40.i64[1] = --v10;
      *&v8[8 * v10] = result;
      a2 = v12;
    }

    while (v11 != a3);
    v16 = v9 + v6 - v10;
    if (v9 + v6 != v10)
    {
      v17 = sub_29A001588(this, (v9 + v6 - v10), a3, a4);
      v18 = (*(*(this + 5) + 152) + 8 * v17);
      result = memcpy(v18, &v39[8 * v10], 8 * (v9 - v10));
      if (v7 >= 2)
      {
        v19 = &v18[8 * (v9 - v10)];
        do
        {
          v9 >>= 1;
          result = memcpy(v19, v40.i64[v7], 8 * v9);
          v19 += 8 * v9;
          --v7;
        }

        while (v7 != 1);
      }

      v20 = *(this + 5);
      __dmb(0xBu);
      *(v20 + 136) = v17 + v16;
      v21 = *(this + 5);
      if (!*(v21 + 8))
      {
        v22 = *(v21 + 152);
        __dmb(0xBu);
        *(v21 + 8) = v22;
      }
    }

    v23 = v43;
    if (v43 >= 2)
    {
      v24 = &v42;
      v25 = 1;
      do
      {
        result = tbb::internal::NFS_Free(*v24, a2);
        ++v25;
        ++v24;
      }

      while (v25 < v23);
    }
  }

  v33 = *(this + 6);
  v34 = *(v33 + 216);
  __dmb(0xBu);
  if (v34 != -1)
  {
    while (1)
    {
      v35 = v34;
      atomic_compare_exchange_strong((v33 + 216), &v35, 0xFFFFFFFFFFFFFFFFLL);
      if (v35 == v34)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit((v33 + 216), 0, memory_order_relaxed);
      if (add_explicit != v34)
      {
        if (add_explicit)
        {
          return result;
        }

        goto LABEL_26;
      }
    }

    if (v34)
    {
      return result;
    }

LABEL_26:
    if (v34)
    {
      while (1)
      {
        v37 = 0;
        atomic_compare_exchange_strong((v33 + 216), &v37, 0xFFFFFFFFFFFFFFFFLL);
        if (!v37)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v33 + 216), 0, memory_order_relaxed))
        {
          return result;
        }
      }
    }

    if (*(v33 + 336) == 1)
    {
      *(v33 + 208) = 0;
      *(v33 + 336) = 0;
    }

    else
    {
      v38 = *(v33 + 337);
      __dmb(0xBu);
      if (v38)
      {
        tbb::internal::market::mandatory_concurrency_disable(*(v33 + 304), v33);
      }

      return tbb::internal::market::adjust_demand(*(v33 + 304), v33, *(v33 + 208));
    }
  }

  return result;
}

void sub_29A001558(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A001960(va, a2);
  _Unwind_Resume(a1);
}

unint64_t sub_29A001588(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 40);
  v5 = v4[17];
  v6 = v4[18];
  if (&a2[v5] <= v6)
  {
    return v5;
  }

  if (v6)
  {
    v8 = v4[1];
    if (v8)
    {
      v9 = a2;
      while (1)
      {
        if (v8 != -1)
        {
          v11 = v4[19];
          while (1)
          {
            v12 = v11;
            atomic_compare_exchange_strong(v4 + 1, &v12, 0xFFFFFFFFFFFFFFFFLL);
            if (v12 == v11)
            {
              break;
            }

            add_explicit = atomic_fetch_add_explicit(v4 + 1, 0, memory_order_relaxed);
            if (add_explicit != v11)
            {
              v11 = add_explicit;
              break;
            }
          }

          v4 = *(a1 + 40);
          v10 = v4[19];
          if (v10 == v11)
          {
            break;
          }
        }

        sched_yield();
        v4 = *(a1 + 40);
        v8 = v4[1];
      }

      a2 = v9;
    }

    else
    {
      v10 = v4[19];
    }

    v16 = v4[2];
    v17 = v5 - v16;
    if (v5 <= v16)
    {
      goto LABEL_27;
    }

    if (v17 > 3)
    {
      v18 = v16 + (v17 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = 0uLL;
      v20 = a2;
      v21 = (v10 + 8 * v16 + 16);
      v22 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = vsubq_s64(v20, vtstq_s64(v21[-1], v21[-1]));
        v19 = vsubq_s64(v19, vtstq_s64(*v21, *v21));
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      a2 = vaddvq_s64(vaddq_s64(v19, v20));
      if (v17 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_27:
        v26 = v4[18];
        v27 = v26 - 16;
        if (a2 > v26 - 16)
        {
          v28 = 2 * v26;
          if (a2 > v28)
          {
            v28 = a2;
          }

          v29 = (8 * v28 + 127) & 0xFFFFFFFFFFFFFF80;
          v4[18] = v29 >> 3;
          v30 = a2;
          v31 = tbb::internal::NFS_Allocate(1uLL, v29, 0, a4);
          a2 = v30;
          v4[19] = v31;
        }

        v32 = v5 - v16;
        if (v5 <= v16)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          v33 = (v10 + 8 * v16);
          do
          {
            if (*v33)
            {
              *(*(*(a1 + 40) + 152) + 8 * v5++) = *v33;
            }

            ++v33;
            --v32;
          }

          while (v32);
        }

        if (a2 > v27)
        {
          tbb::internal::NFS_Free(v10, a2);
        }

        v34 = *(a1 + 40);
        *(v34 + 16) = 0;
        __dmb(0xBu);
        *(v34 + 136) = v5;
        v35 = *(a1 + 40);
        if (*(v35 + 8))
        {
          v36 = *(v35 + 152);
          __dmb(0xBu);
          *(v35 + 8) = v36;
        }

        return v5;
      }
    }

    else
    {
      v18 = v4[2];
    }

    v23 = v5 - v18;
    v24 = (v10 + 8 * v18);
    do
    {
      if (*v24++)
      {
        ++a2;
      }

      --v23;
    }

    while (v23);
    goto LABEL_27;
  }

  v14 = 64;
  if (a2 > 0x40)
  {
    v14 = a2;
  }

  v15 = (8 * v14 + 127) & 0xFFFFFFFFFFFFFF80;
  v4[18] = v15 >> 3;
  v5 = 0;
  v4[19] = tbb::internal::NFS_Allocate(1uLL, v15, 0, a4);
  return v5;
}

void *sub_29A0017D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a2 - 12) = 2;
  v4 = *(a2 - 10);
  v5 = *(*(a1 + 56) - 64);
  *(a2 - 64) = v5;
  if (!v4)
  {
    return a2;
  }

  v6 = a1;
  if (v4 == *(a1 + 72))
  {
    return a2;
  }

  result = *(a1 + 136);
  if (result)
  {
    goto LABEL_5;
  }

  if (v6[22])
  {
LABEL_15:
    result = v6[22];
    while (1)
    {
      v15 = result;
      atomic_compare_exchange_strong(v6 + 22, &v15, 0);
      if (v15 == result)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v6 + 22, 0, memory_order_relaxed) != result)
      {
        v16 = a2;
        v17 = v6;
        sched_yield();
        v6 = v17;
        a2 = v16;
        goto LABEL_15;
      }
    }

LABEL_5:
    v6[17] = *(result - 1);
    goto LABEL_6;
  }

  v18 = v6;
  v19 = a2;
  v20 = tbb::internal::NFS_Allocate(1uLL, 256, 0, a4);
  a2 = v19;
  v21 = v20;
  v6 = v18;
  result = (v20 + 64);
  *(v21 + 16) = v18;
  *(v21 + 56) = 0;
  ++v18[21];
LABEL_6:
  *(result - 5) = v6;
  *(result - 4) = 0;
  *(result - 3) = 0;
  *(result - 2) = 0x200300000000;
  v8 = v6[6] - (v4 << 7);
  result[3] = v8;
  result[1] = a2 | 3;
  *(result - 8) = v5;
  *(result - 7) = 0;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 > 32)
  {
    v14 = a2;
    sub_29A002850(v6, result);
    return v14;
  }

  else
  {
    atomic_fetch_add((v8 + 16), 1u);
    result[2] = 0;
    v10 = (result + 2);
LABEL_8:
    v11 = *(v8 + 8);
    while (1)
    {
      v12 = v11;
      atomic_compare_exchange_strong((v8 + 8), &v12, v10);
      if (v12 == v11)
      {
        break;
      }

      if (atomic_fetch_add_explicit((v8 + 8), 0, memory_order_relaxed) != v11)
      {
        v13 = result;
        sched_yield();
        result = v13;
        goto LABEL_8;
      }
    }

    *v11 = result;
  }

  return result;
}

uint64_t sub_29A001960(uint64_t a1, void *a2)
{
  if (*(a1 + 152) >= 2uLL)
  {
    v3 = (a1 + 32);
    v4 = 1;
    do
    {
      tbb::internal::NFS_Free(*v3, a2);
      ++v4;
      ++v3;
    }

    while (v4 < *(a1 + 152));
  }

  return a1;
}

uint64_t tbb::internal::generic_scheduler::local_spawn_root_and_wait(tbb::internal::generic_scheduler *this, tbb::task *a2, tbb::task **a3, void *a4)
{
  v6 = *(a2 - 7);
  v7 = *(this + 17);
  if (v7)
  {
LABEL_2:
    *(this + 17) = *(v7 - 1);
    goto LABEL_3;
  }

  if (*(this + 22))
  {
LABEL_8:
    v7 = *(this + 22);
    while (1)
    {
      v11 = v7;
      atomic_compare_exchange_strong(this + 22, &v11, 0);
      if (v11 == v7)
      {
        goto LABEL_2;
      }

      if (atomic_fetch_add_explicit(this + 22, 0, memory_order_relaxed) != v7)
      {
        v12 = a3;
        sched_yield();
        a3 = v12;
        goto LABEL_8;
      }
    }
  }

  v14 = a3;
  v15 = tbb::internal::NFS_Allocate(1uLL, 256, 0, a4);
  a3 = v14;
  v7 = (v15 + 64);
  *(v15 + 16) = this;
  *(v15 + 56) = 0;
  ++*(this + 21);
LABEL_3:
  *(v7 - 5) = this;
  *(v7 - 4) = 0;
  *(v7 - 3) = 0;
  *(v7 - 2) = 0x10300000000;
  *(v7 - 8) = 0;
  *(v7 - 7) = v6;
  *v7 = &unk_2A203ACB0;
  *(a2 - 4) = v7;
  if ((a2 - 8) == a3)
  {
    *(v7 - 3) = 2;
  }

  else
  {
    v8 = 2;
    v9 = (a2 - 8);
    do
    {
      v10 = *v9;
      *(v10 - 4) = v7;
      v9 = (v10 - 8);
      ++v8;
    }

    while (v9 != a3);
    *(v7 - 3) = v8;
    tbb::internal::generic_scheduler::local_spawn(this, *(a2 - 1), a3, a4);
  }

  result = (*(*this + 48))(this, v7, a2);
  *(v7 - 12) = 4;
  *(v7 - 1) = *(this + 17);
  *(this + 17) = v7;
  return result;
}

void sub_29A001B2C(_Unwind_Exception *a1)
{
  *(v2 - 12) = 4;
  *(v2 - 8) = *(v1 + 136);
  *(v1 + 136) = v2;
  _Unwind_Resume(a1);
}

void *tbb::internal::generic_scheduler::spawn(tbb::internal::generic_scheduler *this, tbb::task *a2, tbb::task **a3)
{
  v5 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v5)
  {
    inited = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
  }

  return tbb::internal::generic_scheduler::local_spawn(inited, a2, a3, v6);
}

uint64_t tbb::internal::generic_scheduler::spawn_root_and_wait(tbb::internal::generic_scheduler *this, tbb::task *a2, tbb::task **a3)
{
  v5 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v5)
  {
    inited = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
  }

  return tbb::internal::generic_scheduler::local_spawn_root_and_wait(inited, a2, a3, v6);
}

uint64_t tbb::internal::generic_scheduler::enqueue(tbb::internal::generic_scheduler *this, tbb::task *a2, uint64_t a3)
{
  v5 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v5)
  {
    inited = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
  }

  v7 = (inited + 128);
  v8 = *(inited + 48);

  return tbb::internal::arena::enqueue_task(v8, a2, a3, v7);
}

void *tbb::internal::generic_scheduler::get_task_and_activate_task_pool(tbb::internal::generic_scheduler *this, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  if (a3 <= a2)
  {
    v10 = 0;
    LOBYTE(v8) = 0;
    goto LABEL_25;
  }

  v8 = 0;
  v9 = a3;
  do
  {
    --v4;
    v10 = *(*(*(this + 5) + 152) + 8 * v4);
    if (v10)
    {
      if (a4 && *(v10 - 8) != a4)
      {
        v10 = 0;
        v8 = 1;
        continue;
      }

      if (*(v10 - 11) == 32)
      {
        v11 = v10[1];
        __dmb(0xBu);
        if (v11 == 1)
        {
          goto LABEL_15;
        }

        while (1)
        {
          v12 = v11;
          atomic_compare_exchange_strong(v10 + 1, &v12, 2uLL);
          if (v12 == v11)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v10 + 1, 0, memory_order_relaxed) != v11)
          {
            goto LABEL_15;
          }
        }

        v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
LABEL_15:
          sub_29A002850(this, v10);
          v10 = 0;
          if (v8)
          {
            *(*(*(this + 5) + 152) + 8 * v4) = 0;
          }
        }

        else
        {
          *(this + 7) = v13;
          v10 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v8 & 1) == 0)
          {
            (*(*v13 + 24))(v13, *(this + 36));
            v10 = v13;
          }
        }
      }
    }

    v9 -= (v8 & 1) == 0;
    if (v10)
    {
      break;
    }
  }

  while (v4 > v5);
  if (v10)
  {
    if (((v8 ^ 1) & 1) == 0)
    {
      *(*(*(this + 5) + 152) + 8 * v4) = 0;
      if (v4 == v5)
      {
        ++v5;
      }
    }
  }

  v4 = v9;
LABEL_25:
  v14 = *(this + 5);
  if (v5 < v4)
  {
    v14[2] = v5;
    v14[17] = v4;
    v15 = v14[19];
    __dmb(0xBu);
    goto LABEL_28;
  }

  v15 = 0;
  v14[2] = 0;
  v14[17] = 0;
  if (v14[1])
  {
LABEL_28:
    v14[1] = v15;
  }

  if ((v8 & 1) != 0 && *(this + 7) == v10)
  {
    v16 = *(this + 36);
    v17 = v10;
    (*(*v10 + 24))(v10, v16);
    return v17;
  }

  return v10;
}

void *tbb::internal::generic_scheduler::winnow_task_pool(tbb::internal::generic_scheduler *this, uint64_t a2)
{
  *(this + 360) = 1;
  v4 = *(this + 5);
  v5 = v4[1];
  if (v5)
  {
    if (v5 == -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v6 = v4[19];
      while (1)
      {
        v7 = v6;
        atomic_compare_exchange_strong(v4 + 1, &v7, 0xFFFFFFFFFFFFFFFFLL);
        if (v7 == v6)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(v4 + 1, 0, memory_order_relaxed);
        if (add_explicit != v6)
        {
          v6 = add_explicit;
          break;
        }
      }

      v4 = *(this + 5);
      if (v4[19] == v6)
      {
        break;
      }

      do
      {
LABEL_8:
        sched_yield();
        v4 = *(this + 5);
      }

      while (v4[1] == -1);
    }
  }

  v9 = v4[17];
  v10 = v4[2];
  if (v10 >= v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v13 = *(*(this + 5) + 152);
      v14 = *(v13 + 8 * v10);
      if (v14)
      {
        if (*(v14 - 11) == 32 || *(*(v14 - 56) + 160) >= **(this + 12))
        {
          v12 = (v13 + 8 * v11++);
        }

        else
        {
          *(v14 - 40) = *(this + 42);
          v12 = (this + 336);
        }

        *v12 = v14;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  result = tbb::internal::generic_scheduler::get_task_and_activate_task_pool(this, 0, v11, a2);
  *(this + 360) = 0;
  return result;
}

void *tbb::internal::generic_scheduler::reload_tasks(tbb::internal::generic_scheduler *this, tbb::task **a2, tbb::task ***a3, void *a4, uint64_t a5)
{
  v48 = *MEMORY[0x29EDCA608];
  v10 = *(this + 5);
  v11 = *(v10 + 8);
  if (v11)
  {
    while (1)
    {
      if (v11 != -1)
      {
        v12 = *(v10 + 152);
        while (1)
        {
          v13 = v12;
          atomic_compare_exchange_strong((v10 + 8), &v13, 0xFFFFFFFFFFFFFFFFLL);
          if (v13 == v12)
          {
            break;
          }

          add_explicit = atomic_fetch_add_explicit((v10 + 8), 0, memory_order_relaxed);
          if (add_explicit != v12)
          {
            v12 = add_explicit;
            break;
          }
        }

        if (*(*(this + 5) + 152) == v12)
        {
          break;
        }
      }

      sched_yield();
      v10 = *(this + 5);
      v11 = *(v10 + 8);
    }
  }

  memset(v47, 0, 512);
  v41 = v47;
  v15 = 64;
  v42 = vdupq_n_s64(0x40uLL);
  v45 = 0;
  v46 = 0;
  v16 = *a2;
  if (*a2)
  {
    v40 = a3;
    v17 = 0;
    v18 = 0;
    v15 = 64;
    v19 = 64;
    v20 = a2;
    do
    {
      while (*(*(v16 - 7) + 160) < a4)
      {
        v20 = (v16 - 40);
        v16 = *(v16 - 5);
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      if (!v19)
      {
        if (!v18)
        {
          v45 = 1;
          v43[0] = v41;
          v18 = 1;
        }

        v17 += v15;
        v46 = v17;
        v15 *= 2;
        v42.i64[0] = v15;
        v42.i64[1] = v15;
        v41 = tbb::internal::NFS_Allocate(v15, 8, 0, a4);
        v43[v18++] = v41;
        v45 = v18;
        v19 = v15;
      }

      v42.i64[1] = --v19;
      *&v41[8 * v19] = v16;
      v21 = *(v16 - 5);
      *(v16 - 5) = this;
      *v20 = v21;
      v16 = v21;
    }

    while (v21);
LABEL_19:
    if (v20 != a2)
    {
      *v20 = 0;
      *v40 = v20;
      goto LABEL_23;
    }
  }

  else
  {
    v18 = 0;
    v19 = 64;
  }

  *a2 = 0;
LABEL_23:
  v22 = v15 + v46 - v19;
  if (v15 + v46 == v19)
  {
    v23 = *(this + 5);
    v24 = 0;
    if (*(v23 + 8))
    {
      v25 = *(v23 + 152);
      __dmb(0xBu);
      *(v23 + 8) = v25;
    }
  }

  else
  {
    v26 = sub_29A001588(this, (v15 + v46 - v19), a3, a4);
    v27 = (*(*(this + 5) + 152) + 8 * v26);
    memcpy(v27, &v41[8 * v19], 8 * (v15 - v19));
    if (v18 >= 2)
    {
      v28 = &v27[8 * (v15 - v19)];
      do
      {
        v15 >>= 1;
        memcpy(v28, v42.i64[v18], 8 * v15);
        v28 += 8 * v15;
        --v18;
      }

      while (v18 != 1);
    }

    task_and_activate_task_pool = tbb::internal::generic_scheduler::get_task_and_activate_task_pool(this, *(*(this + 5) + 16), v26 + v22, a5);
    v24 = task_and_activate_task_pool;
    if (v22 != 1 || !task_and_activate_task_pool)
    {
      v30 = *(this + 6);
      v31 = *(v30 + 216);
      __dmb(0xBu);
      if (v31 != -1)
      {
        while (1)
        {
          v32 = v31;
          atomic_compare_exchange_strong((v30 + 216), &v32, 0xFFFFFFFFFFFFFFFFLL);
          if (v32 == v31)
          {
            break;
          }

          v33 = atomic_fetch_add_explicit((v30 + 216), 0, memory_order_relaxed);
          if (v33 != v31)
          {
            if (v33)
            {
              goto LABEL_47;
            }

            goto LABEL_38;
          }
        }

        if (v31)
        {
          goto LABEL_47;
        }

LABEL_38:
        if (v31)
        {
          while (1)
          {
            v34 = 0;
            atomic_compare_exchange_strong((v30 + 216), &v34, 0xFFFFFFFFFFFFFFFFLL);
            if (!v34)
            {
              break;
            }

            if (atomic_fetch_add_explicit((v30 + 216), 0, memory_order_relaxed))
            {
              goto LABEL_47;
            }
          }
        }

        if (*(v30 + 336) == 1)
        {
          *(v30 + 208) = 0;
          *(v30 + 336) = 0;
        }

        else
        {
          v35 = *(v30 + 337);
          __dmb(0xBu);
          if (v35)
          {
            tbb::internal::market::mandatory_concurrency_disable(*(v30 + 304), v30);
          }

          tbb::internal::market::adjust_demand(*(v30 + 304), v30, *(v30 + 208));
        }
      }
    }
  }

LABEL_47:
  v36 = v45;
  if (v45 >= 2)
  {
    v37 = &v44;
    v38 = 1;
    do
    {
      tbb::internal::NFS_Free(*v37, a2);
      ++v38;
      ++v37;
    }

    while (v38 < v36);
  }

  return v24;
}

void sub_29A0023A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A001960(va, a2);
  _Unwind_Resume(a1);
}

void sub_29A0023BC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void *tbb::internal::generic_scheduler::reload_tasks(tbb::internal::generic_scheduler *this, uint64_t a2)
{
  v2 = **(this + 13);
  if (*(this + 44) == v2)
  {
    return 0;
  }

  if ((*(this + 74) & 3) == 2 && (v5 = *(this + 6), v6 = *(v5 + 128), LODWORD(v5) = *(v5 + 132), __dmb(0xBu), v6 >= v5 >> 12))
  {
    v7 = (*(this + 6) + 136);
  }

  else
  {
    v7 = *(this + 12);
  }

  v8 = *v7;
  result = tbb::internal::generic_scheduler::reload_tasks(this, this + 42, this + 43, *v7, a2);
  v9 = *(this + 42);
  if (v9)
  {
    v10 = *(this + 6);
    if (*(v10 + 264) >= v8 || !*(v10 + 212))
    {
      v11 = result;
      tbb::internal::market::update_arena_priority(*(this + 15), v10, *(*(v9 - 56) + 160));
      result = v11;
      v12 = *(this + 6);
      __dmb(0xBu);
      v13 = *(v12 + 216);
      __dmb(0xBu);
      if (v13 != -1)
      {
        while (1)
        {
          v14 = v13;
          atomic_compare_exchange_strong((v12 + 216), &v14, 0xFFFFFFFFFFFFFFFFLL);
          if (v14 == v13)
          {
            break;
          }

          add_explicit = atomic_fetch_add_explicit((v12 + 216), 0, memory_order_relaxed);
          if (add_explicit != v13)
          {
            if (add_explicit)
            {
              goto LABEL_21;
            }

            goto LABEL_16;
          }
        }

        if (v13)
        {
          goto LABEL_21;
        }

LABEL_16:
        if (v13)
        {
          while (1)
          {
            v16 = 0;
            atomic_compare_exchange_strong((v12 + 216), &v16, 0xFFFFFFFFFFFFFFFFLL);
            if (!v16)
            {
              break;
            }

            if (atomic_fetch_add_explicit((v12 + 216), 0, memory_order_relaxed))
            {
              goto LABEL_21;
            }
          }
        }

        tbb::internal::market::adjust_demand(*(v12 + 304), v12, *(v12 + 208));
        result = v11;
      }
    }
  }

LABEL_21:
  *(this + 44) = v2;
  return result;
}

void *tbb::internal::generic_scheduler::steal_task(tbb::internal::generic_scheduler *this, uint64_t a2)
{
  v2 = *(this + 32);
  v3 = HIWORD(v2);
  *(this + 32) = *(this + 33) - 1640531535 * v2;
  v4 = *(*(this + 6) + 144);
  __dmb(0xBu);
  v5 = *(this + 6) + ((v3 % (v4 - 1)) << 8) + ((*(this + 4) <= (v3 % (v4 - 1))) << 8);
  if (!*(v5 + 392))
  {
    return 0;
  }

  result = tbb::internal::generic_scheduler::steal_task_from(this, (v5 + 384), a2);
  if (!result)
  {
    return result;
  }

  v8 = *(result - 11);
  if (v8 != 32)
  {
    goto LABEL_10;
  }

  v9 = result[1];
  __dmb(0xBu);
  if (v9 == 1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v10 = v9;
    atomic_compare_exchange_strong(result + 1, &v10, 2uLL);
    if (v10 == v9)
    {
      break;
    }

    if (atomic_fetch_add_explicit(result + 1, 0, memory_order_relaxed) != v9)
    {
      goto LABEL_12;
    }
  }

  v11 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v9 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
LABEL_12:
    sub_29A002850(this, result);
    return 0;
  }

  LOBYTE(v8) = *(v11 - 11);
  result = v11;
LABEL_10:
  *(result - 11) = v8 | 0x80;
  if ((v8 & 0xF) != 0)
  {
    *(this + 7) = result;
    *(result - 5) = this;
    v12 = *(this + 36);
    v13 = result;
    (*(*result + 24))(result, v12);
    return v13;
  }

  return result;
}

uint64_t tbb::internal::generic_scheduler::steal_task_from(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  while (1)
  {
    v7 = a2[1];
    if (v7 != -1)
    {
      if (!v7)
      {
        return 0;
      }

      while (1)
      {
        v8 = v7;
        atomic_compare_exchange_strong(a2 + 1, &v8, 0xFFFFFFFFFFFFFFFFLL);
        if (v8 == v7)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(a2 + 1, 0, memory_order_relaxed);
        if (add_explicit != v7)
        {
          goto LABEL_3;
        }
      }

      add_explicit = v7;
LABEL_3:
      if (v7 == add_explicit)
      {
        break;
      }
    }

    sched_yield();
  }

  v9 = a2[2];
  a2[2] = v9 + 1;
  __dmb(0xBu);
  if (v9 + 1 <= a2[17])
  {
    v11 = 0;
    v12 = v9;
    do
    {
      __dmb(0xBu);
      result = *(v7 + 8 * v9);
      if (result)
      {
        if ((!a3 || *(result - 64) == a3) && (*(result - 11) != 32 || (~*(result + 8) & 3) != 0 || (*(*(result + 24) + 20) & 1) == 0))
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_26;
          }

          *(v7 + 8 * v9) = 0;
          a2[2] = v12;
          __dmb(0xBu);
          a2[1] = v7;
          goto LABEL_29;
        }

        v11 = 1;
      }

      else if ((v11 & 1) == 0)
      {
        v12 = v9 + 1;
      }

      v13 = v9 + 2;
      a2[2] = v9 + 2;
      __dmb(0xBu);
      ++v9;
    }

    while (v13 <= a2[17]);
    result = 0;
    a2[2] = v12;
    __dmb(0xBu);
    a2[1] = v7;
    if ((v11 & 1) == 0)
    {
      return result;
    }

LABEL_29:
    v14 = *(a1 + 48);
    __dmb(0xBu);
    v15 = *(v14 + 216);
    __dmb(0xBu);
    if (v15 != -1)
    {
      while (1)
      {
        v16 = v15;
        atomic_compare_exchange_strong((v14 + 216), &v16, 0xFFFFFFFFFFFFFFFFLL);
        if (v16 == v15)
        {
          break;
        }

        v17 = atomic_fetch_add_explicit((v14 + 216), 0, memory_order_relaxed);
        if (v17 != v15)
        {
          goto LABEL_34;
        }
      }

      v17 = v15;
LABEL_34:
      if (!v17)
      {
        v18 = result;
        if (v15)
        {
          while (1)
          {
            v19 = 0;
            atomic_compare_exchange_strong((v14 + 216), &v19, 0xFFFFFFFFFFFFFFFFLL);
            if (!v19)
            {
              break;
            }

            if (atomic_fetch_add_explicit((v14 + 216), 0, memory_order_relaxed))
            {
              return result;
            }
          }
        }

        tbb::internal::market::adjust_demand(*(v14 + 304), v14, *(v14 + 208));
        return v18;
      }
    }
  }

  else
  {
    result = 0;
    a2[2] = v9;
LABEL_26:
    __dmb(0xBu);
    a2[1] = v7;
  }

  return result;
}

atomic_ullong *sub_29A002850(atomic_ullong *result, void *a2)
{
  *(a2 - 12) = 4;
  v2 = *(a2 - 6);
  if (v2 == result)
  {
    *(a2 - 1) = result[17];
    result[17] = a2;
    return result;
  }

  if (!v2 || v2 >= 0x1000)
  {
    result = a2 - 8;
    if (!v2)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v4 = v2[22];
      if (v4 == -1)
      {
        break;
      }

      *(a2 - 1) = v4;
      while (1)
      {
        v5 = v4;
        atomic_compare_exchange_strong(v2 + 22, &v5, a2);
        if (v5 == v4)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(v2 + 22, 0, memory_order_relaxed);
        if (add_explicit != v4)
        {
          goto LABEL_7;
        }
      }

      add_explicit = v4;
LABEL_7:
      if (v4 == add_explicit)
      {
        return result;
      }
    }

    result = tbb::internal::NFS_Free(result, a2);
    if (atomic_fetch_add(v2 + 21, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      (*(*v2 + 24))(v2);
      result = v2;
LABEL_17:

      return tbb::internal::NFS_Free(result, a2);
    }
  }

  return result;
}

unint64_t tbb::internal::generic_scheduler::get_mailbox_task(tbb::internal::generic_scheduler *this, uint64_t a2)
{
  v3 = *(this + 8);
  for (i = *v3; *v3; i = *v3)
  {
    if (a2)
    {
      v7 = v3;
      if (*(i - 8) != a2)
      {
        while (1)
        {
          v8 = i;
          i = i[2];
          if (!i)
          {
            return 0;
          }

          if (*(i - 8) == a2)
          {
            v7 = v8 + 2;
            break;
          }
        }
      }
    }

    else
    {
      v7 = v3;
    }

    __dmb(0xBu);
    v10 = i + 2;
    v9 = i[2];
    if (v9)
    {
LABEL_12:
      *v7 = v9;
    }

    else
    {
      *v7 = 0;
      while (1)
      {
        v13 = i + 2;
        atomic_compare_exchange_strong((v3 + 8), &v13, v7);
        if (v13 == v10)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v3 + 8), 0, memory_order_relaxed) != v10)
        {
          v9 = *v10;
          if (!*v10)
          {
            v14 = i;
            do
            {
              sched_yield();
              v9 = *v10;
            }

            while (!*v10);
            i = v14;
          }

          goto LABEL_12;
        }
      }
    }

    atomic_fetch_add((v3 + 16), 0xFFFFFFFF);
    v11 = i[1];
    __dmb(0xBu);
    if (v11 != 2)
    {
      while (1)
      {
        v12 = v11;
        atomic_compare_exchange_strong(i + 1, &v12, 1uLL);
        if (v12 == v11)
        {
          break;
        }

        if (atomic_fetch_add_explicit(i + 1, 0, memory_order_relaxed) != v11)
        {
          goto LABEL_4;
        }
      }

      result = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v11 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        *(result - 11) |= 0x80u;
        return result;
      }
    }

LABEL_4:
    sub_29A002850(this, i);
    v3 = *(this + 8);
  }

  return 0;
}

uint64_t tbb::internal::generic_scheduler::create_worker(tbb::internal::generic_scheduler *this, tbb::internal::market *a2, uint64_t a3)
{
  v3 = a3;
  SchedulerPtr = tbb::internal::AllocateSchedulerPtr(this, a3);
  *(SchedulerPtr + 32) = a2;
  *(*(SchedulerPtr + 144) - 24) = 2;
  *(SchedulerPtr + 74) &= ~1u;
  if (v3)
  {
    *(SchedulerPtr + 112) = &v8[-(*(*(SchedulerPtr + 120) + 208) >> 1)];
  }

  v6 = SchedulerPtr;
  tbb::internal::governor::sign_on(SchedulerPtr);
  return v6;
}

uint64_t tbb::internal::generic_scheduler::create_master(tbb::internal::generic_scheduler *this, tbb::internal::arena *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = tbb::internal::market::global_market(0, 0, 0, a4, a5);
  SchedulerPtr = tbb::internal::AllocateSchedulerPtr(v6, 1);
  v8 = *(SchedulerPtr + 144);
  *(SchedulerPtr + 74) |= 1u;
  *(v8 - 24) = 1;
  v10 = tbb::internal::NFS_Allocate(1uLL, 256, 0, v9);
  *v10 = 0;
  *(v10 + 128) = 65539;
  *(v10 + 168) = 55;
  tbb::task_group_context::init(v10, v11, v12, v13);
  *(v8 - 56) = v10;
  tbb::task_group_context::capture_fp_settings(*(*(SchedulerPtr + 144) - 56), v14, v15, v16);
  *(SchedulerPtr + 112) = &v26[-(*(*(SchedulerPtr + 120) + 208) >> 1)];
  v17 = (&tbb::internal::the_context_state_propagation_mutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_2:
  v18 = *v17 & ~(255 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3)));
  while (1)
  {
    v19 = v18;
    atomic_compare_exchange_strong(v17, &v19, v18 | (1 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3))));
    if (v19 == v18)
    {
      break;
    }

    if (*v17 != v18)
    {
      sched_yield();
      goto LABEL_2;
    }
  }

  v20 = *(SchedulerPtr + 120);
  *(SchedulerPtr + 16) = v20 + 224;
  v21 = *(v20 + 232);
  v22 = *(v20 + 240);
  *(SchedulerPtr + 24) = v21;
  *v21 = SchedulerPtr + 16;
  *(v20 + 232) = SchedulerPtr + 16;
  *(v20 + 240) = v22 + 1;
  __dmb(0xBu);
  LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
  if (this)
  {
    tbb::internal::generic_scheduler::attach_arena(SchedulerPtr, this, 0, 1);
    **(SchedulerPtr + 40) = SchedulerPtr;
    *(this + 40) = *(*(SchedulerPtr + 144) - 56);
  }

  v23 = tbb::internal::governor::sign_on(SchedulerPtr);
  v24 = tbb::internal::the_global_observer_list(v23);
  if (*(SchedulerPtr + 80) != v24[1])
  {
    tbb::internal::observer_list::do_notify_entry_observers(v24, (SchedulerPtr + 80), 0);
  }

  return SchedulerPtr;
}

uint64_t tbb::internal::generic_scheduler::cleanup_worker(atomic_ullong **this, void *a2)
{
  if (a2)
  {
    v3 = tbb::internal::the_global_observer_list(this);
    v4 = this[10];
    if (v4)
    {
      tbb::internal::observer_list::do_notify_exit_observers(v3, v4, 1);
    }
  }

  return tbb::internal::generic_scheduler::cleanup_scheduler(this);
}

uint64_t tbb::internal::generic_scheduler::cleanup_master(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 48);
  v5 = *(this + 120);
  if (v4)
  {
    v6 = *(this + 40);
    v7 = *(v6 + 8);
    if (v7)
    {
      while (1)
      {
        if (v7 != -1)
        {
          v10 = *(v6 + 152);
          while (1)
          {
            v11 = v10;
            atomic_compare_exchange_strong((v6 + 8), &v11, 0xFFFFFFFFFFFFFFFFLL);
            if (v11 == v10)
            {
              break;
            }

            add_explicit = atomic_fetch_add_explicit((v6 + 8), 0, memory_order_relaxed);
            if (add_explicit != v10)
            {
              v10 = add_explicit;
              break;
            }
          }

          v8 = *(v3 + 5);
          v9 = v8[19];
          if (v9 == v10)
          {
            break;
          }
        }

        this = sched_yield();
        v6 = *(v3 + 5);
        v7 = *(v6 + 8);
      }

      if (v8[1] && v8[2] < v8[17])
      {
        __dmb(0xBu);
        v8[1] = v9;
        *(*(v3 + 18) - 24) = 2;
        this = (*(*v3 + 48))(v3);
      }

      else
      {
        v8[1] = 0;
      }
    }

    v16 = *(v3 + 11);
    if (v16)
    {
      tbb::internal::observer_list::do_notify_exit_observers((v4 + 224), v16, 0);
    }

    v17 = tbb::internal::the_global_observer_list(this);
    v18 = *(v3 + 10);
    if (v18)
    {
      tbb::internal::observer_list::do_notify_exit_observers(v17, v18, 0);
    }

    v19 = *(v3 + 5);
    __dmb(0xBu);
    *v19 = 0;
  }

  else
  {
    v13 = tbb::internal::the_global_observer_list(this);
    v14 = *(v3 + 10);
    if (v14)
    {
      tbb::internal::observer_list::do_notify_exit_observers(v13, v14, 0);
    }

    tbb::task_group_context::~task_group_context(*(*(v3 + 18) - 56));
    tbb::internal::NFS_Free(*(*(v3 + 18) - 56), v15);
  }

  v20 = (&tbb::internal::the_context_state_propagation_mutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_24:
  v21 = *v20 & ~(255 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3)));
  while (1)
  {
    v22 = v21;
    atomic_compare_exchange_strong(v20, &v22, v21 | (1 << (8 * (&tbb::internal::the_context_state_propagation_mutex & 3))));
    if (v22 == v21)
    {
      break;
    }

    if (*v20 != v21)
    {
      sched_yield();
      goto LABEL_24;
    }
  }

  --*(*(v3 + 15) + 240);
  v23 = *(v3 + 2);
  v24 = *(v3 + 3);
  *v24 = v23;
  *(v23 + 8) = v24;
  __dmb(0xBu);
  LOBYTE(tbb::internal::the_context_state_propagation_mutex) = 0;
  *(v3 + 5) = 0;
  tbb::internal::generic_scheduler::cleanup_scheduler(v3);
  if (v4)
  {
    v25 = *(v4 + 304);
    v26 = *(v4 + 312);
    if (*(v4 + 328) != *(v4 + 332) && !*(v25 + 28) && (*(v4 + 337) & 1) == 0)
    {
      v27 = *(v4 + 304);
      v28 = *(v4 + 312);
      is_out_of_work = tbb::internal::arena::is_out_of_work(v4);
      v26 = v28;
      v30 = is_out_of_work;
      v25 = v27;
      if ((v30 & 1) == 0)
      {
        v31 = tbb::internal::arena::is_out_of_work(v4);
        v26 = v28;
        v32 = v31;
        v25 = v27;
        if ((v32 & 1) == 0)
        {
          tbb::internal::arena::is_out_of_work(v4);
          v25 = v27;
          v26 = v28;
        }
      }
    }

    if (atomic_fetch_add((v4 + 132), 0xFFFFFFFF) == 1)
    {
      tbb::internal::market::try_destroy_arena(v25, v4, v26);
    }
  }

  return tbb::internal::market::release(v5, v4 != 0, a2);
}

uint64_t sub_29A002FC0(uint64_t a1, uint64_t a2, tbb::task *a3)
{
  v5 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v5)
  {
    inited = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
  }

  return sub_29A003028(inited, a2, a3, v6);
}

uint64_t sub_29A003028(tbb::internal::generic_scheduler *a1, uint64_t a2, tbb::task *a3, void *a4)
{
  v28 = 0;
  v29 = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
  fegetenv(v29);
  v30 = tbb::internal::NFS_Allocate(1uLL, 16, 0, v7);
  *v30 = *v29;
  v8 = *(a1 + 7);
  v9 = *(a1 + 74);
  v10 = *(a1 + 18);
  v11 = v10 == a2;
  v12 = (v8 == v10) & (v9 >> 1);
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 74) = v13 | v9 & 0xFD;
  v14 = *(a1 + 12);
  v15 = *(a1 + 13);
  if ((v12 & 1) == 0)
  {
    v16 = (*(a1 + 6) + 272);
    *(a1 + 12) = *(a2 - 56) + 160;
    *(a1 + 13) = v16;
    if (v16 != v15)
    {
      *(a1 + 44) = *v16 - 1;
    }
  }

  v17 = *(v8 - 64);
  if (a3 && v17)
  {
    *(a3 - 8) = v17;
  }

  v18 = v9 & v11;
  v19 = (a2 - 24);
  while ((sub_29A0038C4(a1, &v28, a3, v17) & 1) != 0)
  {
    if (*v19 == 1)
    {
      __dmb(0xBu);
LABEL_19:
      *(a1 + 7) = v8;
      *(a1 + 74) = v9;
      *(a1 + 12) = v14;
      if (*(a1 + 13) != v15)
      {
        *(a1 + 44) = *v15 - 1;
      }

      *(a1 + 13) = v15;
      v21 = *(a2 - 56);
      if ((*(v21 + 130) & 4) == 0)
      {
        if (*v19 != 1)
        {
          return sub_29A000984(&v28, v20);
        }

        *v19 = 0;
      }

      if (*(v21 + 120))
      {
        v22 = *(v21 + 136);
        if ((~*(a1 + 74) & 3) == 0 && v21 == *(*(a1 + 18) - 56))
        {
          *(v21 + 120) = 0;
          *(v21 + 152) &= ~1uLL;
        }

        if (v22)
        {
          v23 = v29;
          if (v30->__fpsr != v29->__fpsr || v30->__fpcr != v29->__fpcr)
          {
            fesetenv(v29);
            v23 = v30;
            if (!v30)
            {
              v23 = tbb::internal::NFS_Allocate(1uLL, 16, 0, v25);
              v30 = v23;
            }

            *v23 = *v29;
          }

          if (tbb::internal::governor::is_rethrow_broken == 1)
          {
            tbb::internal::fix_broken_rethrow(v23);
          }

          std::exception_ptr::exception_ptr(&v31, v22);
          v26.__ptr_ = &v31;
          std::rethrow_exception(v26);
          __break(1u);
LABEL_39:
          *(a1 + 7) = v8;
          *(a1 + 74) = v9;
          *(a1 + 12) = v14;
          if (*(a1 + 13) != v15)
          {
            *(a1 + 44) = *v15 - 1;
          }

          *(a1 + 13) = v15;
          return sub_29A000984(&v28, v20);
        }
      }

      return sub_29A000984(&v28, v20);
    }

    if (*(*(a1 + 5) + 8))
    {
      a3 = sub_29A003C9C(a1, v17);
      if (a3)
      {
        continue;
      }
    }

    if (v18)
    {
      goto LABEL_39;
    }

    a3 = (*(*a1 + 56))(a1, a2 - 24, v17);
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  return sub_29A000984(&v28, v20);
}