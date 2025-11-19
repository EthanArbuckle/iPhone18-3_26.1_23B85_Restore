BOOL tbb::internal::hash_map_segment_base::internal_grow_predicate(tbb::internal::hash_map_segment_base *this)
{
  v1 = *(this + 1);
  __dmb(0xBu);
  v2 = *(this + 2);
  return v1 >= v2 && v2 >> 58 == 0;
}

uint64_t tbb::internal::micro_queue::push(uint64_t result, uint64_t a2, unint64_t a3, void *a4, int a5)
{
  v8 = result;
  v9 = a3 & 0xFFFFFFFFFFFFFFF8;
  v10 = (a4[3] - 1) & (a3 >> 3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    result = (*(*a4 + 32))(a4);
    v11 = result;
    *result = 0;
    *(result + 8) = 0;
  }

  v12 = *(v8 + 24);
  __dmb(0xBu);
  if (v12 != v9)
  {
    result = sched_yield();
    v13 = *(v8 + 24);
    __dmb(0xBu);
    while (v13 != v9)
    {
      if (v13)
      {
        atomic_fetch_add((a4[1] + 48), 1uLL);
        tbb::internal::throw_exception_v4(2);
      }

      result = sched_yield();
      v13 = *(v8 + 24);
      __dmb(0xBu);
    }
  }

  if (v11)
  {
    v14 = ((v8 + 32) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_8:
    v15 = *v14 & ~(255 << (8 * ((v8 + 32) & 3)));
    while (1)
    {
      v16 = v15;
      atomic_compare_exchange_strong(v14, &v16, v15 | (1 << (8 * ((v8 + 32) & 3))));
      if (v16 == v15)
      {
        break;
      }

      if (*v14 != v15)
      {
        result = sched_yield();
        goto LABEL_8;
      }
    }

    v17 = *(v8 + 16);
    __dmb(0xBu);
    if (v17)
    {
      *v17 = v11;
    }

    else
    {
      __dmb(0xBu);
      *v8 = v11;
    }

    __dmb(0xBu);
    *(v8 + 16) = v11;
    __dmb(0xBu);
    *(v8 + 32) = 0;
  }

  if (a2)
  {
    v18 = *(v8 + 16);
    __dmb(0xBu);
    if (a5)
    {
      v19 = (*a4 + 64);
    }

    else
    {
      v19 = *a4;
    }

    result = (*v19)(a4, v18, v10, a2);
    *(v18 + 8) |= 1 << v10;
  }

  else
  {
    atomic_fetch_add((a4[1] + 48), 1uLL);
  }

  atomic_fetch_add((v8 + 24), 8uLL);
  return result;
}

void sub_299FEDDB0(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_fetch_add((*(v2 + 8) + 48), 1uLL);
  tbb::internal::micro_queue::make_invalid(v1, v3);
  __cxa_rethrow();
}

uint64_t tbb::internal::micro_queue::make_invalid(uint64_t this, uint64_t a2)
{
  v3 = this;
  qword_2A153EBC0 = &unk_2A14F6180;
  v4 = ((this + 32) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = 1 << (8 * ((this + 32) & 3));
  v6 = ~(255 << (8 * ((this + 32) & 3)));
LABEL_2:
  v7 = *v4 & v6;
  while (1)
  {
    v8 = v7;
    atomic_compare_exchange_strong(v4, &v8, v7 | v5);
    if (v8 == v7)
    {
      break;
    }

    if (*v4 != v7)
    {
      this = sched_yield();
      goto LABEL_2;
    }
  }

  __dmb(0xBu);
  *(v3 + 24) = a2 + 9;
  v9 = *(v3 + 16);
  __dmb(0xBu);
  if (v9)
  {
    *v9 = &unk_2A14F6180;
  }

  else
  {
    __dmb(0xBu);
    *v3 = &unk_2A14F6180;
  }

  __dmb(0xBu);
  *(v3 + 16) = &unk_2A14F6180;
  __dmb(0xBu);
  *(v3 + 32) = 0;
  return this;
}

BOOL tbb::internal::micro_queue::pop(tbb::internal::micro_queue *this, void *a2, unint64_t a3, tbb::internal::concurrent_queue_base_v3 *a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFF8;
  for (i = *(this + 1); ; i = *(this + 1))
  {
    __dmb(0xBu);
    if (i == v8)
    {
      break;
    }

    sched_yield();
  }

  while (1)
  {
    v10 = *(this + 3);
    __dmb(0xBu);
    if (v10 != v8)
    {
      break;
    }

    sched_yield();
  }

  v11 = *this;
  __dmb(0xBu);
  v12 = *(a4 + 3) - 1;
  v13 = v12 & (a3 >> 3);
  if (v13 == v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v17[0] = v8 + 8;
  v17[1] = this;
  v17[2] = v14;
  v17[3] = a4;
  v15 = *(v11 + 8) & (1 << v13);
  if (v15)
  {
    (*(*a4 + 8))(a4, a2);
  }

  else
  {
    atomic_fetch_add((*(a4 + 1) + 48), 0xFFFFFFFFFFFFFFFFLL);
  }

  sub_299FEF5D8(v17);
  return v15 != 0;
}

void *tbb::internal::micro_queue::assign(void *a1, uint64_t *a2, void *a3, int a4)
{
  v4 = a1;
  v5 = a2[1];
  __dmb(0xBu);
  a1[1] = v5;
  v6 = a2[3];
  __dmb(0xBu);
  a1[3] = v6;
  v7 = *a2;
  __dmb(0xBu);
  if (v7)
  {
    v11 = a1[1];
    __dmb(0xBu);
    v12 = a1[3];
    __dmb(0xBu);
    v13 = a1[1];
    __dmb(0xBu);
    v14 = a1[1];
    __dmb(0xBu);
    v15 = v12 - v13;
    v16 = a3[3];
    v17 = (v16 - 1) & (v14 >> 3);
    v18 = v17 + (v15 >> 3);
    if (v18 >= v16)
    {
      v19 = a3[3];
    }

    else
    {
      v19 = v18;
    }

    v20 = (*(*a3 + 32))(a3);
    v21 = *(v7 + 8);
    *v20 = 0;
    v20[1] = v21;
    if (v17 != v19)
    {
      v22 = v11 + v19 - v17;
      do
      {
        if ((v20[1] >> v17))
        {
          v23 = *a3;
          if (a4)
          {
            v24 = (v23 + 56);
          }

          else
          {
            v24 = (v23 + 48);
          }

          (*v24)(a3, v20, v17, v7, v17);
        }

        ++v17;
        ++v11;
      }

      while (v19 != v17);
      v11 = v22;
    }

    __dmb(0xBu);
    *v4 = v20;
    v25 = *v4;
    __dmb(0xBu);
    v26 = a2[2];
    __dmb(0xBu);
    if (v7 != v26)
    {
      v45 = v4;
      v27 = *v7;
      v28 = a2[2];
      __dmb(0xBu);
      if (v27 == v28)
      {
        v29 = v25;
      }

      else
      {
        do
        {
          v38 = a3[3];
          v29 = (*(*a3 + 32))(a3);
          v39 = v27[1];
          *v29 = 0;
          v29[1] = v39;
          if (v38)
          {
            v40 = 0;
            v41 = v11 + v38;
            do
            {
              if ((v29[1] >> v40))
              {
                v42 = *a3;
                if (a4)
                {
                  v43 = (v42 + 56);
                }

                else
                {
                  v43 = (v42 + 48);
                }

                (*v43)(a3, v29, v40, v27, v40);
              }

              ++v40;
              ++v11;
            }

            while (v38 != v40);
            v11 = v41;
          }

          *v25 = v29;
          v27 = *v27;
          v37 = a2[2];
          __dmb(0xBu);
          v25 = v29;
        }

        while (v27 != v37);
      }

      v4 = v45;
      v30 = v45[3];
      __dmb(0xBu);
      v31 = (a3[3] - 1) & (v30 >> 3);
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = a3[3];
      }

      v25 = (*(*a3 + 32))(a3);
      v33 = v27[1];
      *v25 = 0;
      v25[1] = v33;
      if (v32)
      {
        for (i = 0; i != v32; ++i)
        {
          if ((v25[1] >> i))
          {
            v35 = *a3;
            if (a4)
            {
              v36 = (v35 + 56);
            }

            else
            {
              v36 = (v35 + 48);
            }

            (*v36)(a3, v25, i, v27, i);
          }

          ++v11;
        }
      }

      *v29 = v25;
    }

    __dmb(0xBu);
    v4[2] = v25;
  }

  else
  {
    __dmb(0xBu);
    a1[2] = 0;
    __dmb(0xBu);
    *a1 = 0;
  }

  return v4;
}

void sub_299FEE3C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, tbb::internal::micro_queue *a10)
{
  __cxa_begin_catch(a1);
  tbb::internal::micro_queue::make_invalid(a10, v10);
  __cxa_rethrow();
}

void *tbb::internal::micro_queue::make_copy(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v13 = (*(*a2 + 32))(a2);
  v14 = *(a3 + 8);
  *v13 = 0;
  for (v13[1] = v14; a5 != a4; ++*a6)
  {
    if ((v13[1] >> a4))
    {
      v16 = *a2;
      if (a7)
      {
        (*(v16 + 56))(a2, v13, a4, a3, a4);
      }

      else
      {
        (*(v16 + 48))(a2, v13, a4, a3, a4);
      }
    }

    ++a4;
  }

  return v13;
}

tbb::internal::concurrent_queue_base_v3 *tbb::internal::concurrent_queue_base_v3::concurrent_queue_base_v3(tbb::internal::concurrent_queue_base_v3 *this, unint64_t a2, uint64_t a3, void *a4)
{
  *this = &unk_2A203A5A0;
  if (a2 >= 9)
  {
    if (a2 >= 0x11)
    {
      if (a2 >= 0x21)
      {
        if (a2 >= 0x41)
        {
          v6 = 1;
          if (a2 < 0x81)
          {
            v6 = 2;
          }
        }

        else
        {
          v6 = 4;
        }
      }

      else
      {
        v6 = 8;
      }
    }

    else
    {
      v6 = 16;
    }
  }

  else
  {
    v6 = 32;
  }

  v7 = 2;
  if (a2 > 2)
  {
    v7 = a2;
  }

  *(this + 2) = 0xFFFFFFFFFFFFFFFFLL / v7;
  *(this + 3) = v6;
  v8 = tbb::internal::NFS_Allocate(1uLL, 584, 0, a4);
  *(this + 1) = v8;
  bzero(v8, 0x248uLL);
  v9 = *(this + 1);
  *(v9 + 9) = 0;
  *(v9 + 24) = v9 + 24;
  *(v9 + 32) = v9 + 24;
  *(v9 + 16) = 0;
  *(v9 + 40) = 0;
  *(v9 + 137) = 0;
  *(v9 + 152) = v9 + 152;
  *(v9 + 160) = v9 + 152;
  *(v9 + 144) = 0;
  *(v9 + 168) = 0;
  *(this + 4) = a2;
  return this;
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_insert_item(void *a1, uint64_t a2, int a3)
{
  v5 = a1[1];
  v6 = *(v5 + 144);
  __dmb(0xBu);
  add = atomic_fetch_add(v5 + 16, 1uLL);
  v20 = a1[2];
  v8 = *v5;
  __dmb(0xBu);
  if ((add - v8) >= v20)
  {
    v9 = a2;
    v13[0] = 3452816845;
    v13[1] = 3452816845;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v15 = 0;
    __dmb(0xBu);
    v16 = 0;
    tbb::internal::concurrent_monitor::prepare_wait((v5 + 17), v13, add - v20);
    while (1)
    {
      v10 = *v5;
      __dmb(0xBu);
      v20 = a1[2];
      if ((add - v10) < v20)
      {
        tbb::internal::concurrent_monitor::cancel_wait((v5 + 17), v13);
        goto LABEL_12;
      }

      v11 = *(v5 + 144);
      __dmb(0xBu);
      if (v11 != v6)
      {
        tbb::internal::concurrent_monitor::cancel_wait((v5 + 17), v13);
        tbb::internal::throw_exception_v4(18);
      }

      if (v15 == *(v5 + 42))
      {
        break;
      }

      tbb::internal::concurrent_monitor::cancel_wait((v5 + 17), v13);
      tbb::internal::concurrent_monitor::prepare_wait((v5 + 17), v13, add - v20);
    }

      ;
    }

    if (HIBYTE(v17) == 1)
    {
      tbb::internal::throw_exception_v4(18);
    }

LABEL_12:
    a2 = v9;
    if (v18 == 1)
    {
      if (v17 == 1)
      {
          ;
        }
      }

      semaphore_destroy(*MEMORY[0x29EDCA6B0], semaphore);
      a2 = v9;
    }
  }

  tbb::internal::micro_queue::push(&v5[5 * ((3 * add) & 7) + 32], a2, add, a1, a3);
  v13[0] = add;
  __dmb(0xBu);
  return sub_299FEF6E0((v5 + 1), v13);
}

void sub_299FEE85C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    tbb::internal::micro_queue::push(v4 + 40 * ((3 * v3) & 7) + 256, 0, v3, v2, 0);
    __cxa_rethrow();
  }

  __cxa_rethrow();
}

void sub_299FEE8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  sub_299FEE8F0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_299FEE8F0(uint64_t a1)
{
  if (*(a1 + 27) == 1)
  {
    if (*(a1 + 25) == 1)
    {
        ;
      }
    }

    semaphore_destroy(*MEMORY[0x29EDCA6B0], *(a1 + 16));
  }

  return a1;
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_pop(tbb::internal::concurrent_queue_base_v3 *this, void *a2)
{
  v4 = *(this + 1);
  v5 = *(v4 + 576);
  __dmb(0xBu);
  v6 = MEMORY[0x29EDCA6B0];
  do
  {
    add = atomic_fetch_add(v4, 1uLL);
    v8 = *(v4 + 128);
    __dmb(0xBu);
    if ((v8 - add) <= 0)
    {
      v12[0] = 3452816845;
      v12[1] = 3452816845;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v14 = 0;
      __dmb(0xBu);
      v15 = 0;
      tbb::internal::concurrent_monitor::prepare_wait(v4 + 8, v12, add);
      while (1)
      {
        v9 = *(v4 + 128);
        __dmb(0xBu);
        if ((v9 - add) > 0)
        {
          tbb::internal::concurrent_monitor::cancel_wait(v4 + 8, v12);
          goto LABEL_15;
        }

        v10 = *(v4 + 576);
        __dmb(0xBu);
        if (v10 != v5)
        {
          tbb::internal::concurrent_monitor::cancel_wait(v4 + 8, v12);
          tbb::internal::throw_exception_v4(18);
        }

        if (v14 == *(v4 + 40))
        {
          break;
        }

        tbb::internal::concurrent_monitor::cancel_wait(v4 + 8, v12);
        tbb::internal::concurrent_monitor::prepare_wait(v4 + 8, v12, add);
      }

        ;
      }

      if (HIBYTE(v16) == 1)
      {
        tbb::internal::throw_exception_v4(18);
      }

LABEL_15:
      if (v17 == 1)
      {
        if (v16 == 1)
        {
            ;
          }
        }

        semaphore_destroy(*v6, semaphore);
      }
    }
  }

  while (!tbb::internal::micro_queue::pop((v4 + 256 + 40 * ((3 * add) & 7)), a2, add, this));
  v12[0] = add;
  __dmb(0xBu);
  return sub_299FEF6E0(v4 + 136, v12);
}

void sub_299FEEB1C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL);
    __cxa_rethrow();
  }

  __cxa_rethrow();
}

void sub_299FEEB60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  sub_299FEE8F0(va);
  _Unwind_Resume(a1);
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_abort(tbb::internal::concurrent_queue_base_v3 *this)
{
  v1 = *(this + 1);
  atomic_fetch_add((v1 + 576), 1u);
  __dmb(0xBu);
  tbb::internal::concurrent_monitor::abort_all_relaxed(v1 + 8);
  __dmb(0xBu);

  return tbb::internal::concurrent_monitor::abort_all_relaxed(v1 + 136);
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_pop_if_present(tbb::internal::concurrent_queue_base_v3 *this, void *a2)
{
  v4 = *(this + 1);
  do
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    if ((v6 - v5) < 1)
    {
      return 0;
    }

    while (1)
    {
      v7 = v5;
      atomic_compare_exchange_strong(v4, &v7, v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v9 = v4[16];
        __dmb(0xBu);
        v5 = add_explicit;
        if ((v9 - add_explicit) < 1)
        {
          return 0;
        }
      }
    }
  }

  while (!tbb::internal::micro_queue::pop(&v4[5 * ((3 * v5) & 7) + 32], a2, v5, this));
  v11 = v5;
  __dmb(0xBu);
  sub_299FEF6E0((v4 + 17), &v11);
  return 1;
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_push_if_not_full(tbb::internal::concurrent_queue_base_v3 *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = v2[16];
  __dmb(0xBu);
  v4 = *v2;
  __dmb(0xBu);
  if ((v3 - v4) >= *(this + 2))
  {
    return 0;
  }

  while (1)
  {
    v6 = v3;
    atomic_compare_exchange_strong(v2 + 16, &v6, v3 + 1);
    if (v6 == v3)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(v2 + 16, 0, memory_order_relaxed);
    if (add_explicit != v3)
    {
      result = 0;
      v9 = *v2;
      __dmb(0xBu);
      v3 = add_explicit;
      if ((add_explicit - v9) >= *(this + 2))
      {
        return result;
      }
    }
  }

  tbb::internal::micro_queue::push(&v2[5 * ((3 * v3) & 7) + 32], a2, v3, this, 0);
  v10 = v3;
  __dmb(0xBu);
  sub_299FEF6E0((v2 + 1), &v10);
  return 1;
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_insert_if_not_full(void *a1, uint64_t a2, int a3)
{
  v3 = a1[1];
  v4 = v3[16];
  __dmb(0xBu);
  v5 = *v3;
  __dmb(0xBu);
  if ((v4 - v5) >= a1[2])
  {
    return 0;
  }

  while (1)
  {
    v7 = v4;
    atomic_compare_exchange_strong(v3 + 16, &v7, v4 + 1);
    if (v7 == v4)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(v3 + 16, 0, memory_order_relaxed);
    if (add_explicit != v4)
    {
      result = 0;
      v10 = *v3;
      __dmb(0xBu);
      v4 = add_explicit;
      if ((add_explicit - v10) >= a1[2])
      {
        return result;
      }
    }
  }

  tbb::internal::micro_queue::push(&v3[5 * ((3 * v4) & 7) + 32], a2, v4, a1, a3);
  v11 = v4;
  __dmb(0xBu);
  sub_299FEF6E0((v3 + 1), &v11);
  return 1;
}

uint64_t tbb::internal::concurrent_queue_base_v8::internal_push_move_if_not_full(tbb::internal::concurrent_queue_base_v8 *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = v2[16];
  __dmb(0xBu);
  v4 = *v2;
  __dmb(0xBu);
  if ((v3 - v4) >= *(this + 2))
  {
    return 0;
  }

  while (1)
  {
    v5 = v3;
    atomic_compare_exchange_strong(v2 + 16, &v5, v3 + 1);
    if (v5 == v3)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(v2 + 16, 0, memory_order_relaxed);
    if (add_explicit != v3)
    {
      v7 = 0;
      v8 = *v2;
      __dmb(0xBu);
      v3 = add_explicit;
      if ((add_explicit - v8) >= *(this + 2))
      {
        return v7;
      }
    }
  }

  v7 = 1;
  tbb::internal::micro_queue::push(&v2[5 * ((3 * v3) & 7) + 32], a2, v3, this, 1);
  v10 = v3;
  __dmb(0xBu);
  sub_299FEF6E0((v2 + 1), &v10);
  return v7;
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_size(tbb::internal::concurrent_queue_base_v3 *this)
{
  v1 = *(*(this + 1) + 128);
  __dmb(0xBu);
  v2 = **(this + 1);
  __dmb(0xBu);
  v3 = *(*(this + 1) + 48);
  __dmb(0xBu);
  return v1 - (v2 + v3);
}

BOOL tbb::internal::concurrent_queue_base_v3::internal_empty(tbb::internal::concurrent_queue_base_v3 *this)
{
  v1 = *(*(this + 1) + 128);
  __dmb(0xBu);
  v2 = **(this + 1);
  __dmb(0xBu);
  v3 = *(*(this + 1) + 128);
  __dmb(0xBu);
  if (v1 != v3)
  {
    return 0;
  }

  v4 = *(*(this + 1) + 48);
  __dmb(0xBu);
  return v1 - (v2 + v4) < 1;
}

uint64_t tbb::internal::concurrent_queue_base_v3::internal_set_capacity(uint64_t this, unint64_t a2)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a2;
  }

  *(this + 16) = v2;
  return this;
}

void *tbb::internal::concurrent_queue_base_v3::internal_finish_clear(void *this)
{
  v1 = this;
  for (i = 272; i != 592; i += 40)
  {
    v4 = *(v1[1] + i);
    __dmb(0xBu);
    if (v4)
    {
      if (qword_2A153EBC0 != v4)
      {
        this = (*(*v1 + 40))(v1);
      }

      v3 = v1[1];
      __dmb(0xBu);
      *(v3 + i) = 0;
    }
  }

  return this;
}

void *tbb::internal::concurrent_queue_base_v3::internal_assign(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = **(a2 + 8);
  __dmb(0xBu);
  *v6 = v7;
  v8 = *(a1 + 8);
  v9 = *(*(a2 + 8) + 128);
  __dmb(0xBu);
  *(v8 + 128) = v9;
  v10 = *(a1 + 8);
  v11 = *(*(a2 + 8) + 48);
  __dmb(0xBu);
  *(v10 + 48) = v11;
  v12 = *(a1 + 8);
  LODWORD(v11) = *(*(a2 + 8) + 576);
  __dmb(0xBu);
  *(v12 + 576) = v11;
  tbb::internal::micro_queue::assign((*(a1 + 8) + 256), (*(a2 + 8) + 256), a1, a3);
  tbb::internal::micro_queue::assign((*(a1 + 8) + 296), (*(a2 + 8) + 296), a1, a3);
  tbb::internal::micro_queue::assign((*(a1 + 8) + 336), (*(a2 + 8) + 336), a1, a3);
  tbb::internal::micro_queue::assign((*(a1 + 8) + 376), (*(a2 + 8) + 376), a1, a3);
  tbb::internal::micro_queue::assign((*(a1 + 8) + 416), (*(a2 + 8) + 416), a1, a3);
  tbb::internal::micro_queue::assign((*(a1 + 8) + 456), (*(a2 + 8) + 456), a1, a3);
  tbb::internal::micro_queue::assign((*(a1 + 8) + 496), (*(a2 + 8) + 496), a1, a3);
  v13 = (*(a1 + 8) + 536);
  v14 = (*(a2 + 8) + 536);

  return tbb::internal::micro_queue::assign(v13, v14, a1, a3);
}

unint64_t *tbb::internal::concurrent_queue_iterator_base_v3::initialize(unint64_t **this, const tbb::internal::concurrent_queue_base_v3 *a2, unint64_t a3, void *a4)
{
  result = tbb::internal::NFS_Allocate(1uLL, 88, 0, a4);
  *this = result;
  v8 = **(a2 + 1);
  __dmb(0xBu);
  *result = v8;
  result[1] = a2;
  result[2] = a3;
  v9 = *(a2 + 1);
  v10 = v9[32];
  __dmb(0xBu);
  result[3] = v10;
  v11 = v9[37];
  __dmb(0xBu);
  result[4] = v11;
  v12 = v9[42];
  __dmb(0xBu);
  result[5] = v12;
  v13 = v9[47];
  __dmb(0xBu);
  result[6] = v13;
  v14 = v9[52];
  __dmb(0xBu);
  result[7] = v14;
  v15 = v9[57];
  __dmb(0xBu);
  result[8] = v15;
  v16 = v9[62];
  __dmb(0xBu);
  result[9] = v16;
  v17 = v9[67];
  __dmb(0xBu);
  result[10] = v17;
  v18 = *this;
  v19 = **this;
  v20 = *(*((*this)[1] + 8) + 128);
  __dmb(0xBu);
  if (v20 == v19)
  {
LABEL_2:
    this[1] = 0;
    return result;
  }

  v21 = v18[((3 * v19) & 7) + 3];
  v22 = v18[1];
  v23 = (*(v22 + 24) - 1) & (v19 >> 3);
  v24 = v21 + v18[2] + *(v22 + 32) * v23;
  v25 = *(v21 + 8);
  this[1] = v24;
  if (((v25 >> v23) & 1) == 0)
  {
    while (1)
    {
      v31 = *this;
      v32 = **this;
      v33 = (*this)[1];
      if ((-*(v33 + 24) | (v32 >> 3)) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v34 = &v31[(3 * v32) & 7];
        v34[3] = *v34[3];
        v31 = *this;
        v33 = (*this)[1];
      }

      v35 = v32 + 1;
      *v31 = v35;
      v36 = *(*(v33 + 8) + 128);
      __dmb(0xBu);
      if (v36 == v35)
      {
        break;
      }

      v26 = v31[((3 * v35) & 7) + 3];
      v27 = v31[1];
      v28 = (*(v27 + 24) - 1) & (v35 >> 3);
      v29 = v26 + v31[2] + *(v27 + 32) * v28;
      v30 = *(v26 + 8);
      this[1] = v29;
      if ((v30 >> v28))
      {
        return result;
      }
    }

    goto LABEL_2;
  }

  return result;
}

unint64_t **tbb::internal::concurrent_queue_iterator_base_v3::advance(unint64_t **this)
{
  while (1)
  {
    v1 = *this;
    v2 = **this;
    v3 = (*this)[1];
    if ((-*(v3 + 24) | (v2 >> 3)) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v4 = &v1[(3 * v2) & 7];
      v4[3] = *v4[3];
      v1 = *this;
      v3 = (*this)[1];
    }

    v5 = v2 + 1;
    *v1 = v5;
    v6 = *(*(v3 + 8) + 128);
    __dmb(0xBu);
    if (v6 == v5)
    {
      break;
    }

    v7 = v1[((3 * v5) & 7) + 3];
    v8 = v1[1];
    v9 = (*(v8 + 24) - 1) & (v5 >> 3);
    v10 = v7 + v1[2] + *(v8 + 32) * v9;
    v11 = *(v7 + 8);
    this[1] = v10;
    if ((v11 >> v9))
    {
      return this;
    }
  }

  this[1] = 0;
  return this;
}

unint64_t **tbb::internal::concurrent_queue_iterator_base_v3::concurrent_queue_iterator_base_v3(unint64_t **this, const tbb::internal::concurrent_queue_base_v3 *a2, uint64_t a3, void *a4)
{
  tbb::internal::concurrent_queue_iterator_base_v3::initialize(this, a2, 0, a4);
  return this;
}

{
  tbb::internal::concurrent_queue_iterator_base_v3::initialize(this, a2, 0, a4);
  return this;
}

unint64_t **tbb::internal::concurrent_queue_iterator_base_v3::concurrent_queue_iterator_base_v3(unint64_t **this, const tbb::internal::concurrent_queue_base_v3 *a2, unint64_t a3, void *a4)
{
  tbb::internal::concurrent_queue_iterator_base_v3::initialize(this, a2, a3, a4);
  return this;
}

{
  tbb::internal::concurrent_queue_iterator_base_v3::initialize(this, a2, a3, a4);
  return this;
}

uint64_t tbb::internal::concurrent_queue_iterator_base_v3::assign(tbb::internal::concurrent_queue_iterator_base_v3 *this, const tbb::internal::concurrent_queue_iterator_base_v3 *a2, uint64_t a3, void *a4)
{
  result = *this;
  v7 = *a2;
  if (result != *a2)
  {
    if (result)
    {
      result = tbb::internal::NFS_Free(result, a2);
      *this = 0;
      v7 = *a2;
    }

    if (v7)
    {
      result = tbb::internal::NFS_Allocate(1uLL, 88, 0, a4);
      *this = result;
      v8 = *a2;
      v9 = *(*a2 + 16);
      *result = **a2;
      *(result + 16) = v9;
      v10 = *(v8 + 32);
      v11 = *(v8 + 48);
      v12 = *(v8 + 64);
      *(result + 80) = *(v8 + 80);
      *(result + 48) = v11;
      *(result + 64) = v12;
      *(result + 32) = v10;
    }
  }

  *(this + 1) = *(a2 + 1);
  return result;
}

void tbb::internal::concurrent_queue_iterator_base_v3::~concurrent_queue_iterator_base_v3(tbb::internal **this, void *a2)
{
  tbb::internal::NFS_Free(*this, a2);
  *this = 0;
}

{
  tbb::internal::NFS_Free(*this, a2);
  *this = 0;
}

uint64_t *sub_299FEF5D8(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 32;
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_3:
    v5 = *v4 & ~(255 << (8 * (v3 & 3)));
    while (1)
    {
      v6 = v5;
      atomic_compare_exchange_strong(v4, &v6, v5 | (1 << (8 * (v3 & 3))));
      if (v6 == v5)
      {
        break;
      }

      if (*v4 != v5)
      {
        sched_yield();
        goto LABEL_3;
      }
    }

    v7 = *v2;
    v8 = a1[1];
    __dmb(0xBu);
    *v8 = v7;
    if (!v7)
    {
      v9 = a1[1];
      __dmb(0xBu);
      *(v9 + 16) = 0;
    }

    __dmb(0xBu);
    *v3 = 0;
    v10 = *a1;
    v11 = a1[1];
    __dmb(0xBu);
    *(v11 + 8) = v10;
    (*(*a1[3] + 40))(a1[3], v2);
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    __dmb(0xBu);
    *(v13 + 8) = v12;
  }

  return a1;
}

uint64_t sub_299FEF6E0(uint64_t result, void *a2)
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
        if (*a2 >= v10[4])
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

unint64_t tbb::internal::concurrent_vector_base_v3::helper::extend_segment_table(unint64_t this, tbb::internal::concurrent_vector_base_v3 *a2, unint64_t a3, void *a4)
{
  v4 = this;
  if (a2 >= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = a2;
  }

  if (a2)
  {
    v6 = 0;
    v7 = this + 32;
    do
    {
      v8 = v4[3];
      __dmb(0xBu);
      if (v7 != v8)
      {
        break;
      }

      do
      {
        if (*(v7 + 8 * v6))
        {
          break;
        }

        this = sched_yield();
        v9 = v4[3];
        __dmb(0xBu);
      }

      while (v7 == v9);
      ++v6;
    }

    while (((1 << v6) & 0xFFFFFFFFFFFFFFFELL) < v5);
  }

  v10 = v4[3];
  __dmb(0xBu);
  v11 = v4 + 4;
  if (v4 + 4 == v10)
  {
    this = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
    for (i = 0; i != 512; i += 8)
    {
      *(this + i) = 0;
    }

    *this = v4[4];
    *(this + 8) = v4[5];
    *(this + 16) = v4[6];
    while (1)
    {
      v14 = v4 + 4;
      atomic_compare_exchange_strong(v4 + 3, &v14, this);
      if (v14 == v11)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v4 + 3, 0, memory_order_relaxed) != v11)
      {

        return tbb::internal::NFS_Free(this, v12);
      }
    }
  }

  return this;
}

uint64_t tbb::internal::concurrent_vector_base_v3::helper::enable_segment(tbb::internal::concurrent_vector_base_v3::helper *this, unint64_t a2, uint64_t a3)
{
  v6 = *(this + 3);
  __dmb(0xBu);
  v7 = 1 << a2;
  v8 = *(this + 1);
  __dmb(0xBu);
  if (!a2)
  {
    if (!v8)
    {
      do
      {
        v12 = 0;
        atomic_compare_exchange_strong(this + 1, &v12, 1uLL);
      }

      while (v12 && !atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed));
    }

    v13 = *(this + 1);
    __dmb(0xBu);
    v10 = 1 << v13;
    v9 = 2;
    goto LABEL_20;
  }

  if (v8)
  {
    v9 = 1 << a2;
    v10 = 1 << a2;
  }

  else
  {
    do
    {
      sched_yield();
      v11 = *(this + 1);
      __dmb(0xBu);
    }

    while (!v11);
    v10 = v7;
    v9 = v7;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  v14 = *(this + 1);
  __dmb(0xBu);
  if (v14 > a2)
  {
    v15 = *v6;
    __dmb(0xBu);
    if (v15)
    {
      if (v15 > 0x3F)
      {
        goto LABEL_19;
      }
    }

    else
    {
      while (!*v6)
      {
        sched_yield();
      }

      v15 = *v6;
      __dmb(0xBu);
      if (v15 > 0x3F)
      {
        goto LABEL_19;
      }
    }

    tbb::internal::throw_exception_v4(2);
LABEL_19:
    __dmb(0xBu);
    v6[a2] = v15 + (v7 & 0xFFFFFFFFFFFFFFFELL) * a3;
    return v9;
  }

LABEL_20:
  v16 = (*this)(this, v10);
  if (!v16)
  {
    tbb::internal::throw_exception_v4(1);
  }

  __dmb(0xBu);
  v6[a2] = v16;
  return v9;
}

void sub_299FEFAE0(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *(v2 + 8 * v1) = 63;
  _Unwind_Resume(a1);
}

void tbb::internal::concurrent_vector_base_v3::helper::cleanup(tbb::internal::concurrent_vector_base_v3::helper *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    goto LABEL_65;
  }

  v3 = *(this + 2);
  v4 = *(this + 5) - 1;
  v5 = v4 | 1;
  v6 = HIDWORD(v4);
  v7 = v6 != 0;
  if (!v6)
  {
    v6 = v5;
  }

  v8 = (32 * v7) | 0x10;
  if (v6 >= 0x10000)
  {
    v6 >>= 16;
  }

  else
  {
    v8 = 32 * v7;
  }

  if (v6 >= 0x100)
  {
    v8 |= 8uLL;
    v6 >>= 8;
  }

  if (v6 >= 0x10)
  {
    v8 |= 4uLL;
    v6 >>= 4;
  }

  if (v6 >= 4)
  {
    v9 = v8 + 2;
  }

  else
  {
    v9 = v8;
  }

  if (v6 >= 4)
  {
    v6 >>= 2;
  }

  v10 = (v6 >> 1) & 1;
  if (((1 << v3) & 0xFFFFFFFFFFFFFFFELL) < *(this + 4))
  {
    v11 = *this;
    v12 = *(*this + 8 * v3);
    __dmb(0xBu);
    if (!v12)
    {
      while (!*(v11 + 8 * v3))
      {
        sched_yield();
      }
    }

    ++v3;
  }

  v13 = v10 + v9;
  v14 = *(this + 1);
  if (v3 < v14)
  {
    v15 = *this;
    if (*(this + 4))
    {
      v16 = *v15;
      __dmb(0xBu);
      if (!v16)
      {
        while (!*v15)
        {
          sched_yield();
        }
      }
    }

    v17 = *v15;
    if (*v15)
    {
      v18 = v3 == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v3 = 1;
    }

    v14 = *(this + 1);
    v20 = v3 < v14 && v3 <= v13;
    if (v17 <= 0x3F)
    {
      if (v20)
      {
        do
        {
          v25 = v3;
          v26 = *this;
          __dmb(0xBu);
          *(v26 + 8 * v3++) = 63;
          v14 = *(this + 1);
        }

        while (v3 < v14 && v25 < v13);
      }
    }

    else if (v20)
    {
      do
      {
        v21 = v3;
        v22 = *this;
        v23 = v17 + *(this + 6) * ((1 << v3) & 0xFFFFFFFFFFFFFFFELL);
        __dmb(0xBu);
        *(v22 + 8 * v3++) = v23;
        v14 = *(this + 1);
      }

      while (v3 < v14 && v21 < v13);
    }
  }

  if (v3 <= v13)
  {
    do
    {
      v28 = *(*this + 8 * v3);
      __dmb(0xBu);
      if (!v28)
      {
        v29 = *this;
        __dmb(0xBu);
        *(v29 + 8 * v3) = 63;
      }

      ++v3;
    }

    while (v3 <= v13);
    v14 = *(this + 1);
  }

  v30 = *(this + 2);
  if (v30 < v14)
  {
    v30 = 0;
    *(this + 2) = 0;
  }

  v31 = (1 << v30) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(this + 5) - v31;
  v33 = *(this + 4) - v31;
  v2 = 1 << v14;
  if (v30)
  {
    v2 = (1 << v30) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(this + 4) = v33;
  *(this + 5) = v32;
  *(this + 3) = v2;
  while (1)
  {
    v36 = *(*this + 8 * v30);
    if (v36 >= 0x40)
    {
      if (v2 >= v32)
      {
        v2 = v32;
      }

      bzero((v36 + v33 * *(this + 6)), (v2 - v33) * *(this + 6));
      v2 = *(this + 3);
    }

LABEL_65:
    v34 = *(this + 5);
    v32 = v34 - v2;
    if (v34 < v2)
    {
      break;
    }

    *(this + 4) = 0;
    *(this + 5) = v32;
    v35 = *(this + 2);
    if (v35)
    {
      v30 = v35 + 1;
      v2 = 1 << v30;
      *(this + 3) = 1 << v30;
    }

    else
    {
      v30 = *(this + 1);
    }

    v33 = 0;
    *(this + 2) = v30;
  }
}

void tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3(tbb::internal::concurrent_vector_base_v3 *this, void *a2)
{
  v2 = *(this + 3);
  __dmb(0xBu);
  if ((this + 32) != v2)
  {
    __dmb(0xBu);
    *(this + 3) = this + 32;
    tbb::internal::NFS_Free(v2, a2);
  }
}

{
  v2 = *(this + 3);
  __dmb(0xBu);
  if ((this + 32) != v2)
  {
    __dmb(0xBu);
    *(this + 3) = this + 32;
    tbb::internal::NFS_Free(v2, a2);
  }
}

unint64_t tbb::internal::concurrent_vector_base_v3::internal_capacity(tbb::internal::concurrent_vector_base_v3 *this)
{
  v1 = 0;
  v2 = *(this + 3);
  __dmb(0xBu);
  v3 = 64;
  if ((this + 32) == v2)
  {
    v3 = 3;
  }

  while (*(v2 + v1) >= 0x40uLL)
  {
    if (v3 == ++v1)
    {
      LOBYTE(v1) = v3;
      return (1 << v1) & 0xFFFFFFFFFFFFFFFELL;
    }
  }

  return (1 << v1) & 0xFFFFFFFFFFFFFFFELL;
}

atomic_ullong *tbb::internal::concurrent_vector_base_v3::internal_reserve(atomic_ullong *this, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = this;
  if (a2 > a4)
  {
    this = tbb::internal::throw_exception_v4(16);
  }

  v7 = v6[1];
  __dmb(0xBu);
  if (!v7)
  {
    v8 = (a2 - 1) >> 32;
    v9 = v8 != 0;
    if (!v8)
    {
      v8 = (a2 - 1) | 1;
    }

    if (v8 < 0x10000)
    {
      v10 = 32 * v9;
    }

    else
    {
      v8 >>= 16;
      v10 = (32 * v9) | 0x10;
    }

    if (v8 >= 0x100)
    {
      v8 >>= 8;
      v10 |= 8uLL;
    }

    if (v8 >= 0x10)
    {
      v8 >>= 4;
      v10 |= 4uLL;
    }

    v11 = v8 >= 4;
    if (v8 >= 4)
    {
      v8 >>= 2;
    }

    v12 = (v8 >> 1) & 1;
    v13 = v10 + 2;
    if (!v11)
    {
      v13 = v10;
    }

    v14 = v13 + v12 + 1;
    do
    {
      v15 = 0;
      atomic_compare_exchange_strong(v6 + 1, &v15, v14);
    }

    while (v15 && !atomic_fetch_add_explicit(v6 + 1, 0, memory_order_relaxed));
  }

  v16 = 0;
  v17 = v6[3];
  __dmb(0xBu);
  v18 = v6 + 4;
  v19 = 64;
  if (v6 + 4 == v17)
  {
    v19 = 3;
  }

  while (v17[v16] >= 0x40)
  {
    if (v19 == ++v16)
    {
      v16 = v19;
      break;
    }
  }

  while (((1 << v16) & 0xFFFFFFFFFFFFFFFELL) < a2)
  {
    if (v16 >= 3)
    {
      v20 = v6[3];
      __dmb(0xBu);
      if (v18 == v20)
      {
        v21 = v6[3];
        __dmb(0xBu);
        if (v18 == v21)
        {
          this = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
          for (i = 0; i != 64; ++i)
          {
            this[i] = 0;
          }

          *this = v6[4];
          this[1] = v6[5];
          this[2] = v6[6];
          while (1)
          {
            v24 = v6 + 4;
            atomic_compare_exchange_strong(v6 + 3, &v24, this);
            if (v24 == v18)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v6 + 3, 0, memory_order_relaxed) != v18)
            {
              this = tbb::internal::NFS_Free(this, v22);
              break;
            }
          }
        }
      }
    }

    v25 = v6[3];
    __dmb(0xBu);
    if (*(v25 + 8 * v16) <= 0x3FuLL)
    {
      this = tbb::internal::concurrent_vector_base_v3::helper::enable_segment(v6, v16, a3);
    }

    ++v16;
  }

  return this;
}

atomic_ullong *tbb::internal::concurrent_vector_base_v3::internal_copy(atomic_ullong *this, const tbb::internal::concurrent_vector_base_v3 *a2, uint64_t a3, void (*a4)(void *, const void *, unint64_t))
{
  v4 = *(a2 + 2);
  __dmb(0xBu);
  if (v4)
  {
    v8 = this;
    v9 = this[1];
    __dmb(0xBu);
    if (!v9)
    {
      v10 = (v4 - 1) >> 32;
      if (v4 < 0x100000001)
      {
        v10 = (v4 - 1) | 1;
      }

      if (v10 < 0x10000)
      {
        v11 = 32 * (v4 > 0x100000000);
      }

      else
      {
        v10 >>= 16;
        v11 = (32 * (v4 > 0x100000000)) | 0x10;
      }

      if (v10 >= 0x100)
      {
        v10 >>= 8;
        v11 |= 8uLL;
      }

      if (v10 >= 0x10)
      {
        v10 >>= 4;
        v11 |= 4uLL;
      }

      v12 = v10 >= 4;
      if (v10 >= 4)
      {
        v10 >>= 2;
      }

      v13 = (v10 >> 1) & 1;
      if (v12)
      {
        v11 += 2;
      }

      v14 = v11 + v13 + 1;
      do
      {
        v15 = 0;
        atomic_compare_exchange_strong(this + 1, &v15, v14);
      }

      while (v15 && !atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed));
    }

    v16 = 0;
    v17 = 0;
    v18 = a2 + 32;
    v19 = this + 4;
    while (1)
    {
      v25 = *(a2 + 3);
      __dmb(0xBu);
      if (v17 >= 3 && v18 == v25)
      {
        break;
      }

      v26 = *(a2 + 3);
      __dmb(0xBu);
      if (*(v26 + 8 * v17) <= 0x3FuLL)
      {
        break;
      }

      if (v17 >= 3)
      {
        v27 = v8[3];
        __dmb(0xBu);
        if (v19 == v27)
        {
          v28 = v8[3];
          __dmb(0xBu);
          if (v19 == v28)
          {
            v29 = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
            for (i = 0; i != 512; i += 8)
            {
              *(v29 + i) = 0;
            }

            *v29 = v8[4];
            *(v29 + 1) = v8[5];
            *(v29 + 2) = v8[6];
            while (1)
            {
              v32 = v8 + 4;
              atomic_compare_exchange_strong(v8 + 3, &v32, v29);
              if (v32 == v19)
              {
                break;
              }

              if (atomic_fetch_add_explicit(v8 + 3, 0, memory_order_relaxed) != v19)
              {
                tbb::internal::NFS_Free(v29, v30);
                break;
              }
            }
          }
        }
      }

      v20 = tbb::internal::concurrent_vector_base_v3::helper::enable_segment(v8, v17, a3);
      if (v20 >= v4 - v16)
      {
        v21 = v4 - v16;
      }

      else
      {
        v21 = v20;
      }

      __dmb(0xBu);
      v8[2] = v21 + v16;
      v22 = v8[3];
      __dmb(0xBu);
      v23 = *(v22 + 8 * v17);
      v24 = *(a2 + 3);
      __dmb(0xBu);
      this = (a4)(v23, *(v24 + 8 * v17++));
      v16 = (1 << v17) & 0xFFFFFFFFFFFFFFFELL;
      if (v16 >= v4)
      {
        return this;
      }
    }

    __dmb(0xBu);
    v8[2] = v16;
  }

  return this;
}

atomic_ullong *tbb::internal::concurrent_vector_base_v3::internal_assign(atomic_ullong *this, const tbb::internal::concurrent_vector_base_v3 *a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t), void (*a5)(void *, const void *, unint64_t), uint64_t (*a6)(uint64_t, uint64_t, unint64_t))
{
  v8 = this;
  v9 = *(a2 + 2);
  __dmb(0xBu);
  v10 = this[2];
  __dmb(0xBu);
  if (v10 > v9)
  {
    do
    {
      v16 = v8[2];
      __dmb(0xBu);
      v17 = --v16 | 1;
      v18 = HIDWORD(v16);
      v19 = v18 != 0;
      if (!v18)
      {
        v18 = v17;
      }

      if (v18 >= 0x10000)
      {
        v20 = (32 * v19) | 0x10;
      }

      else
      {
        v20 = 32 * v19;
      }

      if (v18 >= 0x10000)
      {
        v18 >>= 16;
      }

      if (v18 >= 0x100)
      {
        v20 |= 8uLL;
        v18 >>= 8;
      }

      if (v18 >= 0x10)
      {
        v20 |= 4uLL;
        v18 >>= 4;
      }

      if (v18 >= 4)
      {
        v20 += 2;
        v18 >>= 2;
      }

      v21 = ((v18 >> 1) & 1) + v20;
      v22 = (1 << v21) & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= v9)
      {
        v23 = v9;
      }

      else
      {
        v23 = (1 << v21) & 0xFFFFFFFFFFFFFFFELL;
      }

      v24 = v8[3];
      __dmb(0xBu);
      if (*(v24 + 8 * v21) <= 0x3FuLL)
      {
        tbb::internal::throw_exception_v4(2);
      }

      v12 = v8[3];
      __dmb(0xBu);
      v13 = *(v12 + 8 * v21) + (v23 - v22) * a3;
      v14 = v8[2];
      __dmb(0xBu);
      this = a4(v13, v14 - v23);
      __dmb(0xBu);
      v8[2] = v23;
      v15 = v8[2];
      __dmb(0xBu);
    }

    while (v15 > v9);
  }

  v25 = v8[2];
  __dmb(0xBu);
  v8[2] = v9;
  v26 = v8[1];
  __dmb(0xBu);
  if (!v26)
  {
    v27 = v9 | 1;
    if (HIDWORD(v9))
    {
      v27 = HIDWORD(v9);
    }

    if (v27 < 0x10000)
    {
      v28 = 32 * (HIDWORD(v9) != 0);
    }

    else
    {
      v27 >>= 16;
      v28 = (32 * (HIDWORD(v9) != 0)) | 0x10;
    }

    if (v27 >= 0x100)
    {
      v27 >>= 8;
      v28 |= 8uLL;
    }

    if (v27 >= 0x10)
    {
      v27 >>= 4;
      v28 |= 4uLL;
    }

    v29 = v27 >= 4;
    if (v27 >= 4)
    {
      v27 >>= 2;
    }

    v30 = (v27 >> 1) & 1;
    v31 = v28 + 2;
    if (!v29)
    {
      v31 = v28;
    }

    v32 = v31 + v30 + 1;
    do
    {
      v33 = 0;
      atomic_compare_exchange_strong(v8 + 1, &v33, v32);
    }

    while (v33 && !atomic_fetch_add_explicit(v8 + 1, 0, memory_order_relaxed));
  }

  if (v9)
  {
    v34 = 0;
    v35 = 0;
    v36 = v8 + 4;
    v37 = 1;
    while (1)
    {
      v38 = *(a2 + 3);
      __dmb(0xBu);
      if (v35 >= 3 && (a2 + 32) == v38 || (v39 = *(a2 + 3), __dmb(0xBu), *(v39 + 8 * v35) <= 0x3FuLL))
      {
        __dmb(0xBu);
        v8[2] = v34;
        return this;
      }

      if (v35 >= 3)
      {
        v40 = v8[3];
        __dmb(0xBu);
        if (v36 == v40)
        {
          v41 = v8[3];
          __dmb(0xBu);
          if (v36 == v41)
          {
            this = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
            for (i = 0; i != 64; ++i)
            {
              this[i] = 0;
            }

            *this = v8[4];
            this[1] = v8[5];
            this[2] = v8[6];
            while (1)
            {
              v44 = v8 + 4;
              atomic_compare_exchange_strong(v8 + 3, &v44, this);
              if (v44 == v36)
              {
                break;
              }

              if (atomic_fetch_add_explicit(v8 + 3, 0, memory_order_relaxed) != v36)
              {
                this = tbb::internal::NFS_Free(this, v42);
                break;
              }
            }
          }
        }
      }

      v45 = v8[3];
      __dmb(0xBu);
      if (*(v45 + 8 * v35))
      {
        v46 = v8[3];
        __dmb(0xBu);
        if (*(v46 + 8 * v35) <= 0x3FuLL)
        {
          this = tbb::internal::throw_exception_v4(2);
        }
      }

      else
      {
        this = tbb::internal::concurrent_vector_base_v3::helper::enable_segment(v8, v35, a3);
      }

      v47 = 2;
      if (v35)
      {
        v47 = v37;
      }

      v48 = v47 >= v9 - v34 ? v9 - v34 : v47;
      if (v25 > v34)
      {
        break;
      }

      v53 = 0;
      if (v48)
      {
        goto LABEL_70;
      }

LABEL_41:
      v37 = 1 << ++v35;
      v34 = (1 << v35) & 0xFFFFFFFFFFFFFFFELL;
      if (v34 >= v9)
      {
        return this;
      }
    }

    if (v25 - v34 >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = v25 - v34;
    }

    v50 = v8[3];
    __dmb(0xBu);
    v51 = *(v50 + 8 * v35);
    v52 = *(a2 + 3);
    __dmb(0xBu);
    this = (a5)(v51, *(v52 + 8 * v35), v49);
    v48 -= v49;
    v53 = v49 * a3;
    if (!v48)
    {
      goto LABEL_41;
    }

LABEL_70:
    v54 = v8[3];
    __dmb(0xBu);
    v55 = *(v54 + 8 * v35);
    v56 = *(a2 + 3);
    __dmb(0xBu);
    this = a6(v55 + v53, *(v56 + 8 * v35) + v53, v48);
    goto LABEL_41;
  }

  return this;
}

unint64_t tbb::internal::concurrent_vector_base_v3::internal_push_back(atomic_ullong *this, uint64_t a2, unint64_t *a3, void *a4)
{
  add = atomic_fetch_add(this + 2, 1uLL);
  *a3 = add;
  v6 = add | 1;
  if (HIDWORD(add))
  {
    v6 = HIDWORD(add);
  }

  if (v6 >= 0x10000)
  {
    v7 = (32 * (HIDWORD(add) != 0)) | 0x10;
  }

  else
  {
    v7 = 32 * (HIDWORD(add) != 0);
  }

  if (v6 >= 0x10000)
  {
    v6 >>= 16;
  }

  if (v6 >= 0x100)
  {
    v7 |= 8uLL;
    v6 >>= 8;
  }

  if (v6 >= 0x10)
  {
    v7 |= 4uLL;
    v6 >>= 4;
  }

  if (v6 >= 4)
  {
    v7 += 2;
    v6 >>= 2;
  }

  v8 = (v6 >> 1) & 1;
  v9 = v8 + v7;
  v10 = 1 << (v8 + v7);
  if ((v8 + v7) >= 3)
  {
    v11 = this[3];
    __dmb(0xBu);
    if (this + 4 == v11)
    {
      v12 = this;
      tbb::internal::concurrent_vector_base_v3::helper::extend_segment_table(this, add, a3, a4);
      this = v12;
    }
  }

  v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
  v14 = this[3];
  __dmb(0xBu);
  v15 = *(v14 + 8 * v9);
  __dmb(0xBu);
  if (!v15)
  {
    if (add == v13)
    {
      tbb::internal::concurrent_vector_base_v3::helper::enable_segment(this, v9, a2);
    }

    else
    {
      while (!*(v14 + 8 * v9))
      {
        sched_yield();
      }
    }
  }

  if (*(v14 + 8 * v9) <= 0x3FuLL)
  {
    tbb::internal::throw_exception_v4(2);
  }

  return *(v14 + 8 * v9) + (add - v13) * a2;
}

unint64_t tbb::internal::concurrent_vector_base_v3::internal_grow_to_at_least_with_result(tbb::internal::concurrent_vector_base_v3 *this, unint64_t a2, void *a3, void (*a4)(void *, const void *, unint64_t), const void *a5)
{
  v7 = *(this + 2);
  __dmb(0xBu);
  if (v7 < a2)
  {
    while (1)
    {
      v8 = v7;
      atomic_compare_exchange_strong(this + 2, &v8, a2);
      if (v8 == v7)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(this + 2, 0, memory_order_relaxed);
      if (add_explicit != v7)
      {
        v7 = add_explicit;
        if (add_explicit >= a2)
        {
          goto LABEL_8;
        }
      }
    }

    tbb::internal::concurrent_vector_base_v3::internal_grow(this, v7, a2, a3, a4, a5);
  }

  add_explicit = v7;
LABEL_8:
  v10 = (a2 - 1) >> 32;
  v11 = v10 != 0;
  if (!v10)
  {
    v10 = (a2 - 1) | 1;
  }

  if (v10 >= 0x10000)
  {
    v12 = (32 * v11) | 0x10;
  }

  else
  {
    v12 = 32 * v11;
  }

  if (v10 >= 0x10000)
  {
    v10 >>= 16;
  }

  if (v10 >= 0x100)
  {
    v12 |= 8uLL;
    v10 >>= 8;
  }

  if (v10 >= 0x10)
  {
    v12 |= 4uLL;
    v10 >>= 4;
  }

  if (v10 >= 4)
  {
    v12 += 2;
    v10 >>= 2;
  }

  v13 = ((v10 >> 1) & 1) + v12;
  if (v13 >= 3)
  {
    v14 = *(this + 3);
    __dmb(0xBu);
    if ((this + 32) == v14)
    {
      while (1)
      {
        v15 = *(this + 3);
        __dmb(0xBu);
        if (v14 != v15)
        {
          break;
        }

        sched_yield();
      }
    }
  }

  v16 = 0;
  do
  {
    v17 = *(this + 3);
    __dmb(0xBu);
    if (!*(v17 + 8 * v16))
    {
      do
      {
        sched_yield();
        v18 = *(this + 3);
        __dmb(0xBu);
        v19 = *(v18 + 8 * v16);
        __dmb(0xBu);
      }

      while (!v19);
    }

    v20 = *(this + 3);
    __dmb(0xBu);
    if (*(v20 + 8 * v16) <= 0x3FuLL)
    {
      tbb::internal::throw_exception_v4(2);
    }

    ++v16;
  }

  while (v16 <= v13);
  return add_explicit;
}

void tbb::internal::concurrent_vector_base_v3::internal_grow(tbb::internal::concurrent_vector_base_v3 *this, tbb::internal::concurrent_vector_base_v3 *a2, unint64_t a3, void *a4, void (*a5)(void *, const void *, unint64_t), const void *a6)
{
  v11 = a2 | 1;
  if (a2 >> 32)
  {
    v11 = a2 >> 32;
  }

  if (v11 >= 0x10000)
  {
    v12 = (32 * (a2 >> 32 != 0)) | 0x10;
  }

  else
  {
    v12 = 32 * (a2 >> 32 != 0);
  }

  if (v11 >= 0x10000)
  {
    v11 >>= 16;
  }

  if (v11 >= 0x100)
  {
    v12 |= 8uLL;
    v11 >>= 8;
  }

  if (v11 >= 0x10)
  {
    v12 |= 4uLL;
    v11 >>= 4;
  }

  if (v11 >= 4)
  {
    v12 += 2;
    v11 >>= 2;
  }

  v13 = ((v11 >> 1) & 1) + v12;
  v14 = (a3 - 1) >> 32;
  v15 = v14 != 0;
  if (!v14)
  {
    v14 = (a3 - 1) | 1;
  }

  if (v14 >= 0x10000)
  {
    v16 = (32 * v15) | 0x10;
  }

  else
  {
    v16 = 32 * v15;
  }

  if (v14 >= 0x10000)
  {
    v14 >>= 16;
  }

  if (v14 >= 0x100)
  {
    v16 |= 8uLL;
    v14 >>= 8;
  }

  if (v14 >= 0x10)
  {
    v16 |= 4uLL;
    v14 >>= 4;
  }

  if (v14 >= 4)
  {
    v16 += 2;
    v14 >>= 2;
  }

  v17 = ((v14 >> 1) & 1) + v16;
  v18 = *(this + 1);
  __dmb(0xBu);
  if (!v18)
  {
    do
    {
      v19 = 0;
      atomic_compare_exchange_strong(this + 1, &v19, v17 + 1);
    }

    while (v19 && !atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed));
  }

  if (v17 >= 3)
  {
    v20 = *(this + 3);
    __dmb(0xBu);
    if ((this + 32) == v20)
    {
      v21 = a3;
      tbb::internal::concurrent_vector_base_v3::helper::extend_segment_table(this, a2, a3, a4);
      a3 = v21;
    }
  }

  v22 = *(this + 3);
  __dmb(0xBu);
  v23 = *(this + 1);
  __dmb(0xBu);
  v35 = v22;
  v36 = v23;
  v37 = v13;
  v38 = 0;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  while (v17 > v13 && v17 >= v23)
  {
    v24 = *(this + 3);
    __dmb(0xBu);
    v25 = *(v24 + 8 * v17);
    __dmb(0xBu);
    if (!v25)
    {
      tbb::internal::concurrent_vector_base_v3::helper::enable_segment(this, v17, a4);
    }

    if (*(v24 + 8 * v17) <= 0x3FuLL)
    {
      tbb::internal::throw_exception_v4(2);
    }

    --v17;
    v23 = v36;
  }

  if (v13 <= v17)
  {
    do
    {
      v26 = *(this + 3);
      __dmb(0xBu);
      v27 = *(v26 + 8 * v13);
      __dmb(0xBu);
      if (!v27)
      {
        if (((1 << v13) & 0xFFFFFFFFFFFFFFFELL) >= a2)
        {
          tbb::internal::concurrent_vector_base_v3::helper::enable_segment(this, v13, a4);
        }

        else
        {
          while (!*(v26 + 8 * v13))
          {
            sched_yield();
          }
        }
      }

      if (*(v26 + 8 * v13) <= 0x3FuLL)
      {
        tbb::internal::throw_exception_v4(2);
      }

      ++v13;
    }

    while (v13 <= v17);
    v23 = v36;
  }

  v28 = v37;
  if (v37 < v23)
  {
    v28 = 0;
    v37 = 0;
  }

  v29 = (1 << v28) & 0xFFFFFFFFFFFFFFFELL;
  v30 = v40 - v29;
  v31 = v39 - v29;
  if (v28)
  {
    v32 = (1 << v28) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v32 = 1 << v23;
  }

  v39 = (v39 - v29);
  v40 -= v29;
  v38 = v32;
  v33 = v30 - v32;
  if (v30 <= v32)
  {
    v33 = v30;
  }

  else
  {
    a5((*(v35 + 8 * v28) + v41 * v31), a6, v32 - v31);
    v39 = 0;
    v40 = v33;
    v34 = v23;
    if (v28)
    {
      v34 = v28 + 1;
      v32 = 1 << (v28 + 1);
      v38 = v32;
    }

    v37 = v34;
    if (v32 >= v33)
    {
      v31 = 0;
      v28 = v34;
    }

    else
    {
      do
      {
        a5(*(v35 + 8 * v34), a6, v32);
        v33 -= v32;
        v39 = 0;
        v40 = v33;
        v28 = v23;
        if (v34)
        {
          v28 = v34 + 1;
          v32 = 1 << (v34 + 1);
          v38 = v32;
        }

        v37 = v28;
        v34 = v28;
      }

      while (v32 < v33);
      v31 = 0;
    }
  }

  a5((*(v35 + 8 * v28) + v41 * v31), a6, v33 - v31);
  if (v32 < v33)
  {
    tbb::internal::concurrent_vector_base_v3::helper::cleanup(&v35);
  }
}

void sub_299FF0DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299FF0E34(va);
  _Unwind_Resume(a1);
}

tbb::internal::concurrent_vector_base_v3 *tbb::internal::concurrent_vector_base_v3::internal_grow_by(atomic_ullong *this, unint64_t a2, void *a3, void (*a4)(void *, const void *, unint64_t), const void *a5)
{
  add = atomic_fetch_add(this + 2, a2);
  tbb::internal::concurrent_vector_base_v3::internal_grow(this, add, add + a2, a3, a4, a5);
  return add;
}

tbb::internal::concurrent_vector_base_v3::helper *sub_299FF0E34(tbb::internal::concurrent_vector_base_v3::helper *result)
{
  if (*(result + 3) < *(result + 5))
  {
    v1 = result;
    tbb::internal::concurrent_vector_base_v3::helper::cleanup(result);
    return v1;
  }

  return result;
}

void tbb::internal::concurrent_vector_base_v3::internal_resize(tbb::internal::concurrent_vector_base_v3 *this, unint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(void *, unint64_t), void (*a7)(void *, const void *, unint64_t))
{
  v7 = a3;
  v9 = *(this + 2);
  __dmb(0xBu);
  if (v9 >= a2)
  {
    __dmb(0xBu);
    *(this + 2) = a2;
    v27 = *(this + 3);
    __dmb(0xBu);
    v28 = *(this + 1);
    __dmb(0xBu);
    v29 = a2 | 1;
    if (HIDWORD(a2))
    {
      v29 = HIDWORD(a2);
    }

    if (v29 >= 0x10000)
    {
      v30 = (32 * (HIDWORD(a2) != 0)) | 0x10;
    }

    else
    {
      v30 = 32 * (HIDWORD(a2) != 0);
    }

    if (v29 >= 0x10000)
    {
      v29 >>= 16;
    }

    if (v29 >= 0x100)
    {
      v30 |= 8uLL;
      v29 >>= 8;
    }

    if (v29 >= 0x10)
    {
      v30 |= 4uLL;
      v29 >>= 4;
    }

    if (v29 >= 4)
    {
      v30 += 2;
      v29 >>= 2;
    }

    v40 = v27;
    v41 = v28;
    v31 = ((v29 >> 1) & 1) + v30;
    v42 = v31;
    v46 = a3;
    if (v31 < v28)
    {
      v31 = 0;
      v42 = 0;
    }

    v32 = (1 << v31) & 0xFFFFFFFFFFFFFFFELL;
    v33 = v9 - v32;
    v34 = a2 - v32;
    if (v31)
    {
      v35 = (1 << v31) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v35 = 1 << v28;
    }

    v44 = a2 - v32;
    v45 = v9 - v32;
    v43 = v35;
    v36 = v33 - v35;
    if (v33 <= v35)
    {
      v36 = v9 - v32;
    }

    else
    {
      if (*(v27 + 8 * v31) >= 0x40uLL)
      {
        a6((*(v27 + 8 * v31) + v34 * a3), v35 - v34);
      }

      v44 = 0;
      v45 = v36;
      v37 = v28;
      if (v31)
      {
        v37 = v31 + 1;
        v35 = 1 << (v31 + 1);
        v43 = v35;
      }

      v42 = v37;
      if (v35 >= v36)
      {
        v34 = 0;
        v31 = v37;
      }

      else
      {
        do
        {
          if (*(v27 + 8 * v37) >= 0x40uLL)
          {
            a6(*(v27 + 8 * v37), v35);
          }

          v36 -= v35;
          v44 = 0;
          v45 = v36;
          v31 = v28;
          if (v37)
          {
            v31 = v37 + 1;
            v35 = 1 << (v37 + 1);
            v43 = v35;
          }

          v42 = v31;
          v37 = v31;
        }

        while (v35 < v36);
        v34 = 0;
      }
    }

    if (*(v27 + 8 * v31) >= 0x40uLL)
    {
      a6((*(v27 + 8 * v31) + v34 * v7), v36 - v34);
    }

    if (v35 < v36)
    {
      goto LABEL_76;
    }
  }

  else
  {
    tbb::internal::concurrent_vector_base_v3::internal_reserve(this, a2, a3, a4);
    __dmb(0xBu);
    *(this + 2) = a2;
    v13 = *(this + 3);
    __dmb(0xBu);
    v14 = *(this + 1);
    __dmb(0xBu);
    v15 = v9 | 1;
    if (HIDWORD(v9))
    {
      v15 = HIDWORD(v9);
    }

    if (v15 >= 0x10000)
    {
      v16 = (32 * (HIDWORD(v9) != 0)) | 0x10;
    }

    else
    {
      v16 = 32 * (HIDWORD(v9) != 0);
    }

    if (v15 >= 0x10000)
    {
      v15 >>= 16;
    }

    if (v15 >= 0x100)
    {
      v16 |= 8uLL;
      v15 >>= 8;
    }

    if (v15 >= 0x10)
    {
      v16 |= 4uLL;
      v15 >>= 4;
    }

    if (v15 >= 4)
    {
      v16 += 2;
      v15 >>= 2;
    }

    v40 = v13;
    v41 = v14;
    v17 = ((v15 >> 1) & 1) + v16;
    v42 = v17;
    v46 = v7;
    if (v17 < v14)
    {
      v17 = 0;
      v42 = 0;
    }

    v18 = (1 << v17) & 0xFFFFFFFFFFFFFFFELL;
    v19 = a2 - v18;
    v20 = v9 - v18;
    if (v17)
    {
      v21 = (1 << v17) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v21 = 1 << v14;
    }

    v44 = v9 - v18;
    v45 = v19;
    v43 = v21;
    v22 = v19 - v21;
    if (v19 <= v21)
    {
      v22 = v19;
    }

    else
    {
      v23 = *(v13 + 8 * v17);
      if (v23 <= 0x3F)
      {
        tbb::internal::throw_exception_v4(2);
      }

      a7((v23 + v20 * v7), a5, v21 - v20);
      v39 = v7;
      v44 = 0;
      v45 = v22;
      v24 = v14;
      if (v17)
      {
        v24 = v17 + 1;
        v21 = 2 << v17;
        v43 = 2 << v17;
      }

      v42 = v24;
      if (v21 >= v22)
      {
        v20 = 0;
        v17 = v24;
      }

      else
      {
        do
        {
          v25 = *(v13 + 8 * v24);
          if (v25 <= 0x3F)
          {
            tbb::internal::throw_exception_v4(2);
          }

          a7(v25, a5, v21);
          v22 -= v21;
          v44 = 0;
          v45 = v22;
          v17 = v14;
          if (v24)
          {
            v17 = v24 + 1;
            v21 = 1 << (v24 + 1);
            v43 = v21;
          }

          v42 = v17;
          v24 = v17;
        }

        while (v21 < v22);
        v20 = 0;
      }

      v7 = v39;
    }

    v38 = *(v13 + 8 * v17);
    if (v38 <= 0x3F)
    {
      tbb::internal::throw_exception_v4(2);
    }

    a7((v38 + v20 * v7), a5, v22 - v20);
    if (v21 < v22)
    {
LABEL_76:
      tbb::internal::concurrent_vector_base_v3::helper::cleanup(&v40);
    }
  }
}

void sub_299FF127C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299FF0E34(va);
  _Unwind_Resume(a1);
}

unint64_t sub_299FF12AC(void *a1, void (**a2)(unint64_t, unint64_t))
{
  result = a1[2];
  v5 = a1[1];
  if (result < v5)
  {
    result = 0;
    a1[2] = 0;
  }

  v6 = (1 << result) & 0xFFFFFFFFFFFFFFFELL;
  v7 = a1[5] - v6;
  v8 = a1[4] - v6;
  v9 = 1 << v5;
  if (result)
  {
    v10 = (1 << result) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = v9;
  }

  a1[4] = v8;
  a1[5] = v7;
  a1[3] = v10;
  if (v10 < v7)
  {
    if (*(*a1 + 8 * result) >= 0x40uLL)
    {
      (*a2)(*(*a1 + 8 * result) + v8 * a1[6], v10 - v8);
      v7 = a1[5];
      result = a1[2];
      v10 = a1[3];
    }

    v7 -= v10;
    a1[4] = 0;
    a1[5] = v7;
    if (result)
    {
      v10 = 1 << ++result;
      a1[3] = 1 << result;
    }

    else
    {
      result = a1[1];
    }

    for (a1[2] = result; v10 < v7; a1[2] = result)
    {
      if (*(*a1 + 8 * result) >= 0x40uLL)
      {
        (*a2)(*(*a1 + 8 * result));
        v7 = a1[5];
        result = a1[2];
        v10 = a1[3];
      }

      v7 -= v10;
      a1[4] = 0;
      a1[5] = v7;
      if (result)
      {
        v10 = 1 << ++result;
        a1[3] = 1 << result;
      }

      else
      {
        result = a1[1];
      }
    }

    v8 = 0;
  }

  if (*(*a1 + 8 * result) >= 0x40uLL)
  {
    (*a2)(*(*a1 + 8 * result) + v8 * a1[6], v7 - v8);
    return a1[2];
  }

  return result;
}

unint64_t tbb::internal::concurrent_vector_base_v3::internal_clear(tbb::internal::concurrent_vector_base_v3 *this, void (*a2)(void *, unint64_t))
{
  v4 = *(this + 2);
  __dmb(0xBu);
  *(this + 2) = 0;
  v5 = *(this + 3);
  __dmb(0xBu);
  v6 = *(this + 1);
  __dmb(0xBu);
  v14[0] = v5;
  v14[1] = v6;
  v18 = v4;
  v19 = 0;
  v7 = 1 << v6;
  v15 = 0;
  v16 = 1 << v6;
  v17 = 0;
  if (1 << v6 >= v4)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (*(v5 + 8 * v8) >= 0x40uLL)
      {
        a2(*(v5 + 8 * v8), v7);
      }

      v4 -= v7;
      v17 = 0;
      v18 = v4;
      v9 = v6;
      if (v8)
      {
        v9 = v8 + 1;
        v7 = 1 << (v8 + 1);
        v16 = v7;
      }

      v15 = v9;
      v8 = v9;
    }

    while (v7 < v4);
  }

  if (*(v5 + 8 * v9) >= 0x40uLL)
  {
    a2(*(v5 + 8 * v9), v4);
  }

  v10 = 0;
  v11 = *(this + 3);
  __dmb(0xBu);
  v12 = 64;
  if ((this + 32) == v11)
  {
    v12 = 3;
  }

  while (*(v11 + v10) >= 0x40uLL)
  {
    if (v12 == ++v10)
    {
      v10 = v12;
      break;
    }
  }

  if (v16 < v18)
  {
    tbb::internal::concurrent_vector_base_v3::helper::cleanup(v14);
  }

  if (v9 >= v10)
  {
    return v9 + 1;
  }

  else
  {
    return v10;
  }
}

void sub_299FF1568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299FF0E34(va);
  _Unwind_Resume(a1);
}

unint64_t *tbb::internal::concurrent_vector_base_v3::internal_compact(tbb::internal::concurrent_vector_base_v3 *this, uint64_t a2, char *a3, void (*a4)(void *, unint64_t), void (*a5)(void *, const void *, unint64_t))
{
  v5 = a3;
  v6 = this;
  v7 = 0;
  v8 = *(this + 2);
  __dmb(0xBu);
  v9 = *(this + 3);
  v10 = 64;
  if ((this + 32) == v9)
  {
    v10 = 3;
  }

  __dmb(0xBu);
  while (*(v9 + v7) >= 0x40uLL)
  {
    if (v10 == ++v7)
    {
      v7 = v10;
      break;
    }
  }

  if (v8)
  {
    v11 = (v8 - 1) >> 32;
    if (v8 < 0x100000001)
    {
      v11 = (v8 - 1) | 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = (32 * (v8 > 0x100000000)) | 0x10;
    }

    else
    {
      v12 = 32 * (v8 > 0x100000000);
    }

    if (v11 >= 0x10000)
    {
      v11 >>= 16;
    }

    if (v11 >= 0x100)
    {
      v12 |= 8uLL;
      v11 >>= 8;
    }

    if (v11 >= 0x10)
    {
      v12 |= 4uLL;
      v11 >>= 4;
    }

    if (v11 >= 4)
    {
      v12 += 2;
      v11 >>= 2;
    }

    v13 = v12 + ((v11 >> 1) & 1) + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 1);
  __dmb(0xBu);
  v15 = v13;
  v52 = v14;
  if (v13 >= v14)
  {
    v15 = v14;
    if (v14 < v13)
    {
      v15 = v14;
      while (1)
      {
        v16 = a2 << v15;
        if ((a2 << v15) >= 0x1000 && (v16 >> 19 || ((v16 - 1) & 0x800) != 0))
        {
          break;
        }

        if (v13 == ++v15)
        {
          v15 = v13;
          break;
        }
      }
    }
  }

  if (v13 == v7 && v15 == v52)
  {
    return 0;
  }

  v48 = v13;
  v17 = *(this + 3);
  __dmb(0xBu);
  v50 = a3 + 8;
  for (i = 8; i != 520; i += 8)
  {
    *&a3[i] = 0;
  }

  *a3 = 0;
  if (v15 != v52 && v15)
  {
    v19 = (*this)(this, 1 << v15);
    if (!v19)
    {
      tbb::internal::throw_exception_v4(1);
    }

    v5[1] = v19;
    *v5 = v15;
    if (v8)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1 << v52;
      do
      {
        v23 = v20 + v22;
        v24 = v8 - v20;
        if (v23 >= v8)
        {
          v25 = v24;
        }

        else
        {
          v25 = v22;
        }

        a5((v19 + ((1 << v21) & 0xFFFFFFFFFFFFFFFELL) * a2), v17[v21], v25);
        v20 = 2 << v21;
        v26 = v21 == 0;
        if (v21)
        {
          ++v21;
        }

        else
        {
          v21 = v52;
        }

        if (v26)
        {
          v20 = 1 << v52;
        }

        if (v21 >= v15)
        {
          break;
        }

        v22 = v20;
      }

      while (v20 < v8);
    }

    v27 = 8 * v15;
    v28 = v50;
    v29 = v17;
    do
    {
      v30 = *v29++;
      *v28++ = v30;
      v27 -= 8;
    }

    while (v27);
    do
    {
      v17[v27] = v19 + ((1 << v27) & 0xFFFFFFFFFFFFFFFELL) * a2;
      ++v27;
    }

    while (v15 != v27);
    *v5 = v52;
    __dmb(0xBu);
    v6 = this;
    *(this + 1) = v15;
    if (v8)
    {
      v31 = 0;
      v32 = 0;
      v33 = 1 << v52;
      do
      {
        v34 = v31 + v33;
        v35 = v8 - v31;
        if (v34 >= v8)
        {
          v36 = v35;
        }

        else
        {
          v36 = v33;
        }

        a4(*&v50[8 * v32], v36);
        v31 = 2 << v32;
        v37 = v32 == 0;
        if (v32)
        {
          ++v32;
        }

        else
        {
          v32 = v52;
        }

        if (v37)
        {
          v31 = 1 << v52;
        }

        if (v32 >= v15)
        {
          break;
        }

        v33 = v31;
      }

      while (v31 < v8);
    }
  }

  v38 = v48 - v7;
  if (v48 < v7)
  {
    *v5 = v52;
    v39 = &v17[v48];
    v40 = 8 * v48 + 8;
    v41 = 8 * v7 - 8 * v48;
    v42 = v39;
    do
    {
      v43 = *v42++;
      *(v5 + v40) = v43;
      v40 += 8;
      v41 -= 8;
    }

    while (v41);
    if (v7 != v48)
    {
      do
      {
        *v39++ = 0;
      }

      while (!__CFADD__(v38++, 1));
    }

    if (!v15)
    {
      __dmb(0xBu);
      *(v6 + 1) = 0;
    }
  }

  return v5;
}

void sub_299FF1930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(unint64_t, unint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(unint64_t, unint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  __cxa_begin_catch(a1);
  v27 = *v24;
  a18 = a14;
  a19 = v27;
  a20 = 0;
  a21 = 0;
  a22 = 0;
  a23 = v26 + v25;
  a24 = a13;
  a17 = a11;
  sub_299FF12AC(&a18, &a17);
  __cxa_rethrow();
}

void sub_299FF1970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_299FF0E34(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void *tbb::internal::concurrent_vector_base_v3::internal_swap(void *this, tbb::internal::concurrent_vector_base_v3 *a2)
{
  v2 = this[2];
  __dmb(0xBu);
  v3 = *(a2 + 2);
  if (v2 | v3)
  {
    v4 = this[3];
    v5 = *(a2 + 3);
    v6 = this[4];
    v7 = a2 + 32;
    this[4] = *(a2 + 4);
    *(a2 + 4) = v6;
    v8 = this[5];
    this[5] = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = this[6];
    this[6] = *(a2 + 6);
    *(a2 + 6) = v9;
    v10 = this[1];
    this[1] = *(a2 + 1);
    *(a2 + 1) = v10;
    v11 = this[3];
    this[3] = *(a2 + 3);
    *(a2 + 3) = v11;
    if (this + 4 == v4)
    {
      *(a2 + 3) = v7;
      if (v7 != v5)
      {
        goto LABEL_4;
      }
    }

    else if (v7 != v5)
    {
LABEL_4:
      this[2] = v3;
      __dmb(0xBu);
      *(a2 + 2) = v2;
      return this;
    }

    this[3] = this + 4;
    goto LABEL_4;
  }

  return this;
}

uint64_t tbb::internal::dynamic_link(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

const char *tbb::internal::initialize_handler_pointers(tbb::internal *this)
{
  if (tbb::internal::dynamic_link("libtbbmalloc.dylib", &off_29F295168, 4, 0))
  {
    v2 = "scalable_malloc";
  }

  else
  {
    off_2A1B6C3C8 = MEMORY[0x29EDCA938];
    off_2A1B6C3D0[0] = MEMORY[0x29EDCA940];
    off_2A1B6C3D8 = sub_299FF1B04;
    off_2A1B6C3E0 = sub_299FF1B44;
    v2 = "malloc";
  }

  return tbb::internal::PrintExtraVersionInfo("ALLOCATOR", v2, v1);
}

void *sub_299FF1B04(uint64_t a1, uint64_t a2)
{
  result = malloc(a2 + a1);
  if (result)
  {
    *(((result + a2) & -a2) - 8) = result;
    return ((result + a2) & -a2);
  }

  return result;
}

void sub_299FF1B44(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 - 8));
  }
}

void tbb::internal::initialize_cache_aligned_allocator(tbb::internal *this)
{
  v1 = dword_2A153EBC8;
  __dmb(0xBu);
  if (v1 != 2)
  {
    while (1)
    {
      v2 = dword_2A153EBC8;
      __dmb(0xBu);
      if (!v2)
      {
        break;
      }

LABEL_7:
      while (1)
      {
        v4 = dword_2A153EBC8;
        __dmb(0xBu);
        if (v4 != 1)
        {
          break;
        }

        sched_yield();
      }

      v5 = dword_2A153EBC8;
      __dmb(0xBu);
      if (v5 == 2)
      {
        return;
      }
    }

    while (1)
    {
      v3 = 0;
      atomic_compare_exchange_strong(&dword_2A153EBC8, &v3, 1u);
      if (!v3)
      {
        break;
      }

      if (dword_2A153EBC8)
      {
        goto LABEL_7;
      }
    }

    if (tbb::internal::dynamic_link("libtbbmalloc.dylib", &off_29F295168, 4, 0))
    {
      v7 = "scalable_malloc";
    }

    else
    {
      off_2A1B6C3C8 = MEMORY[0x29EDCA938];
      off_2A1B6C3D0[0] = MEMORY[0x29EDCA940];
      off_2A1B6C3D8 = sub_299FF1B04;
      off_2A1B6C3E0 = sub_299FF1B44;
      v7 = "malloc";
    }

    tbb::internal::PrintExtraVersionInfo("ALLOCATOR", v7, v6);
    __dmb(0xBu);
    dword_2A153EBC8 = 2;
  }
}

uint64_t tbb::internal::NFS_Allocate(unint64_t this, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a2 * this;
  if (a2 * this < this || v4 >= 0xFFFFFFFFFFFFFF80)
  {
    tbb::internal::throw_exception_v4(1);
  }

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  result = off_2A1B6C3D8(v5, 128);
  if (!result)
  {
    tbb::internal::throw_exception_v4(1);
    return 0;
  }

  return result;
}

uint64_t tbb::internal::allocate_via_handler_v3(tbb::internal *this)
{
  result = (off_2A1B6C3D0[0])(this);
  if (!result)
  {
    tbb::internal::throw_exception_v4(1);
    return 0;
  }

  return result;
}

uint64_t tbb::internal::deallocate_via_handler_v3(uint64_t this, void *a2)
{
  if (this)
  {
    return off_2A1B6C3C8();
  }

  return this;
}

BOOL tbb::internal::is_malloc_used_v3(tbb::internal *this)
{
  v1 = off_2A1B6C3D0[0];
  if (off_2A1B6C3D0[0] == sub_299FF1DBC)
  {
    tbb::internal::initialize_cache_aligned_allocator(this);
    v2 = (off_2A1B6C3D0[0])(1);
    off_2A1B6C3C8(v2);
    v1 = off_2A1B6C3D0[0];
  }

  return v1 == MEMORY[0x29EDCA940];
}

uint64_t sub_299FF1DBC(tbb::internal *a1)
{
  tbb::internal::initialize_cache_aligned_allocator(a1);
  v2 = off_2A1B6C3D0[0];

  return (v2)(a1);
}

uint64_t sub_299FF1DFC(tbb::internal *a1)
{
  tbb::internal::initialize_cache_aligned_allocator(a1);
  v2 = off_2A1B6C3C8;

  return v2(a1);
}

uint64_t sub_299FF1E3C(tbb::internal *a1, uint64_t a2)
{
  tbb::internal::initialize_cache_aligned_allocator(a1);
  v4 = off_2A1B6C3D8;

  return v4(a1, a2);
}

uint64_t sub_299FF1E84(tbb::internal *a1)
{
  tbb::internal::initialize_cache_aligned_allocator(a1);
  v2 = off_2A1B6C3E0;

  return v2(a1);
}

tbb::internal *tbb::internal::input_buffer::grow(tbb::internal::input_buffer *this, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 2);
  v6 = 2 * v5;
  if (!v5)
  {
    v6 = 4;
  }

  do
  {
    v7 = v6;
    v6 *= 2;
  }

  while (v7 < a2);
  v9 = tbb::internal::NFS_Allocate(v7, 24, 0, a4);
  result = *this;
  if (v7)
  {
    v11 = (v9 + 41);
    v12 = v7;
    do
    {
      *(v11 - 24) = 0;
      *v11 = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
  }

  if (v5)
  {
    v13 = *(this + 3);
    v14 = v5 - 1;
    do
    {
      v15 = result + 24 * (v13 & v14);
      v16 = *v15;
      v17 = v9 + 24 * (v13 & (v7 - 1));
      *(v17 + 16) = *(v15 + 2);
      *v17 = v16;
      ++v13;
      --v5;
    }

    while (v5);
    *this = v9;
    *(this + 2) = v7;
  }

  else
  {
    *this = v9;
    *(this + 2) = v7;
    if (!result)
    {
      return result;
    }
  }

  return tbb::internal::NFS_Free(result, v8);
}

tbb::internal::stage_task *tbb::internal::stage_task::execute(tbb::internal::stage_task *this)
{
  v1 = this;
  v2 = *(this + 48);
  v3 = *(this + 5);
  if (v2 == 1)
  {
    if (*(v3 + 24))
    {
      v14 = (**v3)(v3, *(v1 + 1));
      *(v1 + 1) = v14;
      v15 = *(*(v1 + 5) + 24);
      if (!v14)
      {
        v16 = *(v1 + 4);
        if (v15 & 0x40) == 0 || (*(v16 + 48))
        {
          v1 = 0;
          *(v16 + 48) = 1;
          return v1;
        }
      }

      if ((v15 & 0x11111111) == 1)
      {
        *(v1 + 2) = atomic_fetch_add((*(v1 + 4) + 40), 1uLL);
        *(v1 + 24) = 1;
      }

      else if ((v15 & 0xEu) >= 6)
      {
        v17 = *(v1 + 4);
        if (*(v17 + 49) == 1)
        {
          atomic_fetch_add((v17 + 40), 1uLL);
        }
      }

      if (!*(*(v1 + 5) + 8))
      {
        *(v1 + 1) = 0;
        *(v1 + 2) = 0;
        *(v1 + 12) = 0;
        v30 = *(v1 + 4);
LABEL_50:
        *(v1 + 5) = *(v30 + 8);
        *(v1 + 48) = 1;
LABEL_51:
        *(v1 - 12) = 3;
        return v1;
      }

      if (atomic_fetch_add((*(v1 + 4) + 32), 0xFFFFFFFFFFFFFFFFLL) != 1)
      {
        v18 = *(v1 - 4);
        v35 = 0;
        v36 = v18;
        v19 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v35, 0x38uLL);
        v20 = *(v1 + 4);
        *(v19 - 11) = 1;
        *v19 = &unk_2A203A6C0;
        *(v19 + 32) = v20;
        *(v19 + 40) = *(v20 + 8);
        *(v19 + 48) = 1;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        (***(v19 - 40))();
      }
    }

    else
    {
      v4 = *(v1 + 4);
      if (*(v4 + 48))
      {
        return 0;
      }

      if ((*(v3 + 24) & 0xEu) >= 6 && *(v4 + 49) == 1)
      {
        atomic_fetch_add((v4 + 40), 1uLL);
        v4 = *(v1 + 4);
      }

      if (atomic_fetch_add((v4 + 32), 0xFFFFFFFFFFFFFFFFLL) != 1)
      {
        v5 = *(v1 - 4);
        v35 = 0;
        v36 = v5;
        v6 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v35, 0x38uLL);
        v7 = *(v1 + 4);
        *(v6 - 11) = 1;
        *v6 = &unk_2A203A6C0;
        *(v6 + 32) = v7;
        *(v6 + 40) = *(v7 + 8);
        *(v6 + 48) = 1;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        (***(v6 - 40))();
      }

      v8 = (***(v1 + 5))(*(v1 + 5), *(v1 + 1));
      *(v1 + 1) = v8;
      if (!v8)
      {
        v10 = *(v1 + 5);
        v11 = *(v10 + 24);
        if ((v11 & 0x40) == 0)
        {
LABEL_13:
          v12 = *(v1 + 4);
          *(v12 + 48) = 1;
          if ((v11 & 0xEu) >= 6 && *(v12 + 49) == 1)
          {
            v1 = 0;
            atomic_fetch_add((v12 + 40), 0xFFFFFFFFFFFFFFFFLL);
            return v1;
          }

          return 0;
        }

        if (pthread_getspecific(*(*(v10 + 16) + 56)))
        {
          v11 = *(*(v1 + 5) + 24);
          goto LABEL_13;
        }
      }
    }

    *(v1 + 48) = 0;
  }

  else
  {
    *(v1 + 1) = (**v3)(v3, *(v1 + 1));
    v13 = *(v1 + 5);
    if (*(v13 + 24))
    {
      sub_299FF24D4(*(v13 + 16), *(v1 + 2), v1);
    }
  }

  v21 = *(*(v1 + 5) + 8);
  *(v1 + 5) = v21;
  if (!v21)
  {
    add = atomic_fetch_add((*(v1 + 4) + 32), 1uLL);
    v30 = *(v1 + 4);
    v31 = *(v30 + 8);
    if ((*(v31 + 24) & 0x20) != 0)
    {
      if (!add)
      {
        MEMORY[0x29C2C53C0](**(*(v31 + 16) + 8));
        return 0;
      }

      return 0;
    }

    if (add - 1 < 0xFFFFFFFFFFFFFFFELL || (*(v30 + 48) & 1) != 0)
    {
      return 0;
    }

    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
    *(v1 + 12) = 0;
    goto LABEL_50;
  }

  if ((*(v21 + 24) & 1) == 0 || !sub_299FF26CC(*(v21 + 16), (v1 + 8), 0, v9))
  {
    goto LABEL_51;
  }

  v22 = *(v1 + 5);
  if ((*(v22 + 24) & 0x20) != 0)
  {
    while (1)
    {
      v22 = *(v22 + 8);
      if (!v22)
      {
        break;
      }

      v23 = *(v22 + 24);
      if ((v23 & 0x20) == 0)
      {
        *(v1 + 5) = v22;
        v24 = *(v22 + 16);
        v25 = v24 + 4;
        v26 = ((v24 + 4) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_39:
        v27 = *v26 & ~(255 << (8 * ((v24 + 32) & 3)));
        while (1)
        {
          v28 = v27;
          atomic_compare_exchange_strong(v26, &v28, v27 | (1 << (8 * ((v24 + 32) & 3))));
          if (v28 == v27)
          {
            break;
          }

          if (*v26 != v27)
          {
            sched_yield();
            goto LABEL_39;
          }
        }

        v33 = *v24 + 24 * ((v24[2] - 1) & v24[3]);
        if (*(v33 + 17) != 1)
        {
          __dmb(0xBu);
          *v25 = 0;
          break;
        }

        v34 = *v33;
        *(v1 + 3) = *(v33 + 16);
        *(v1 + 8) = v34;
        *(v33 + 17) = 0;
        if ((v23 & 1) == 0)
        {
          ++v24[3];
        }

        __dmb(0xBu);
        *v25 = 0;
        goto LABEL_51;
      }
    }
  }

  *(v1 + 5) = 0;
  return 0;
}

uint64_t sub_299FF24D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0uLL;
  v25 = 0;
  v6 = (result + 32);
  v7 = ((result + 32) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = 1 << (8 * ((result + 32) & 3));
  v9 = ~(255 << (8 * ((result + 32) & 3)));
LABEL_2:
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
      result = sched_yield();
      goto LABEL_2;
    }
  }

  v12 = *(v5 + 24);
  if (*(v5 + 48) != 1 || (v13 = v12 == a2, v12 = a2, v13))
  {
    v14 = *v5;
    v15 = v12 + 1;
    *(v5 + 24) = v15;
    v16 = (v14 + 24 * ((*(v5 + 16) - 1) & v15));
    v24 = *v16;
    v25 = *(v16 + 16);
    v17 = *(v16 + 17);
    v21 = *(v16 + 18);
    v22 = *(v16 + 11);
    *(v16 + 17) = 0;
    __dmb(0xBu);
    *(v5 + 32) = 0;
    if (v17)
    {
      v18 = *(a3 - 32);
      v23[0] = 0;
      v23[1] = v18;
      v19 = tbb::internal::allocate_additional_child_of_proxy::allocate(v23, 0x38uLL);
      *(v19 - 11) = 1;
      v20 = *(a3 + 32);
      *(v19 + 24) = v25;
      *(v19 + 8) = v24;
      *(v19 + 25) = v17;
      *(v19 + 30) = v22;
      *(v19 + 26) = v21;
      *v19 = &unk_2A203A6C0;
      *(v19 + 32) = v20;
      *(v19 + 48) = 0;
      return (***(v19 - 40))();
    }
  }

  else
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

uint64_t sub_299FF26CC(uint64_t a1, __int128 *a2, int a3, void *a4)
{
  *(a2 + 17) = 1;
  v7 = (a1 + 32);
  v8 = ((a1 + 32) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = 1 << (8 * ((a1 + 32) & 3));
  v10 = ~(255 << (8 * ((a1 + 32) & 3)));
LABEL_2:
  v11 = *v8 & v10;
  while (1)
  {
    v12 = v11;
    atomic_compare_exchange_strong(v8, &v12, v11 | v9);
    if (v12 == v11)
    {
      break;
    }

    if (*v8 != v11)
    {
      sched_yield();
      goto LABEL_2;
    }
  }

  v13 = *a1;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v15 - 1;
  v17 = *(*a1 + 24 * ((v15 - 1) & v14) + 17);
  if (*(a1 + 48) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v18 = *(a2 + 1);
      v19 = v18 - v14;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = *(a1 + 40);
      *(a1 + 40) = v18 + 1;
      *(a2 + 1) = v18;
      *(a2 + 16) = 1;
      v19 = v18 - v14;
      if (v19)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v18 = *(a1 + 40);
    *(a1 + 40) = v18 + 1;
    v19 = v18 - v14;
    if (v19)
    {
      goto LABEL_16;
    }
  }

  if ((*(a1 + 49) & 1) == 0 && !a3)
  {
    result = 0;
    goto LABEL_34;
  }

LABEL_16:
  if (v19 < v15)
  {
    v21 = v15;
    goto LABEL_30;
  }

  v22 = v19 + 1;
  v23 = 2 * v15;
  if (!v15)
  {
    v23 = 4;
  }

  do
  {
    v21 = v23;
    v23 *= 2;
  }

  while (v21 < v22);
  v13 = tbb::internal::NFS_Allocate(v21, 24, 0, a4);
  v25 = *a1;
  if (v21)
  {
    v26 = (v13 + 41);
    v27 = v21;
    do
    {
      *(v26 - 24) = 0;
      *v26 = 0;
      v26 += 48;
      v27 -= 2;
    }

    while (v27);
  }

  if (v15)
  {
    v28 = *(a1 + 24);
    do
    {
      v29 = v25 + 24 * (v28 & v16);
      v30 = *v29;
      v31 = v13 + 24 * (v28 & (v21 - 1));
      *(v31 + 16) = *(v29 + 2);
      *v31 = v30;
      ++v28;
      --v15;
    }

    while (v15);
    *a1 = v13;
    *(a1 + 16) = v21;
  }

  else
  {
    *a1 = v13;
    *(a1 + 16) = v21;
    if (!v25)
    {
      goto LABEL_30;
    }
  }

  tbb::internal::NFS_Free(v25, v24);
  v13 = *a1;
  v21 = *(a1 + 16);
LABEL_30:
  v32 = *a2;
  v33 = v13 + 24 * ((v21 - 1) & v18);
  *(v33 + 16) = *(a2 + 2);
  *v33 = v32;
  if ((v17 & 1) == 0 && *(a1 + 49) == 1)
  {
    MEMORY[0x29C2C53C0](**(a1 + 8));
  }

  result = 1;
LABEL_34:
  __dmb(0xBu);
  *v7 = 0;
  return result;
}

void sub_299FF2900(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t tbb::pipeline::clear_filters(uint64_t this)
{
  for (i = *(this + 8); i; i = *(i + 8))
  {
    if ((*(i + 24) & 0xC) != 0)
    {
      v2 = *(i + 16);
      if (v2)
      {
        v3 = v2[2];
        if (v3)
        {
          v4 = 0;
          v5 = v2[3];
          do
          {
            v6 = *v2 + 24 * ((v3 - 1) & v5);
            if (*(v6 + 17) == 1)
            {
              this = (*(*i + 24))(i, *v6);
              *(v6 + 17) = 0;
              v3 = v2[2];
            }

            ++v4;
            ++v5;
          }

          while (v4 < v3);
        }
      }
    }
  }

  return this;
}

uint64_t tbb::pipeline::pipeline(uint64_t this)
{
  *(this + 48) = 0;
  *this = &unk_2A203A648;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  __dmb(0xBu);
  *(this + 40) = 0;
  __dmb(0xBu);
  *(this + 32) = 0;
  return this;
}

{
  *(this + 48) = 0;
  *this = &unk_2A203A648;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  __dmb(0xBu);
  *(this + 40) = 0;
  __dmb(0xBu);
  *(this + 32) = 0;
  return this;
}

void tbb::pipeline::~pipeline(tbb::pipeline *this, void *a2)
{
  *this = &unk_2A203A648;
  v3 = (this + 8);
  v2 = *(this + 1);
  while (v2)
  {
    v4 = v2;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = sub_299FF384C(v5, a2);
      operator delete(v6);
      *(v4 + 16) = 0;
    }

    v2 = *(v4 + 8);
    *(v4 + 8) = -1;
    v7 = *(v4 + 24) & 0xE;
    if ((*(v4 + 24) & 0xE) != 0)
    {
      *(v4 + 32) = -1;
      *(v4 + 40) = 0;
      if (v7 >= 6)
      {
        *(v4 + 48) = 0;
      }
    }
  }

  *v3 = 0;
  v3[1] = 0;
}

{
  *this = &unk_2A203A648;
  v3 = (this + 8);
  v2 = *(this + 1);
  while (v2)
  {
    v4 = v2;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = sub_299FF384C(v5, a2);
      operator delete(v6);
      *(v4 + 16) = 0;
    }

    v2 = *(v4 + 8);
    *(v4 + 8) = -1;
    v7 = *(v4 + 24) & 0xE;
    if ((*(v4 + 24) & 0xE) != 0)
    {
      *(v4 + 32) = -1;
      *(v4 + 40) = 0;
      if (v7 >= 6)
      {
        *(v4 + 48) = 0;
      }
    }
  }

  *v3 = 0;
  v3[1] = 0;
}

{
  *this = &unk_2A203A648;
  v3 = *(this + 1);
  while (v3)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = sub_299FF384C(v5, a2);
      operator delete(v6);
      *(v4 + 16) = 0;
    }

    v3 = *(v4 + 8);
    *(v4 + 8) = -1;
    v7 = *(v4 + 24) & 0xE;
    if ((*(v4 + 24) & 0xE) != 0)
    {
      *(v4 + 32) = -1;
      *(v4 + 40) = 0;
      if (v7 >= 6)
      {
        *(v4 + 48) = 0;
      }
    }
  }

  operator delete(this);
}

void tbb::pipeline::clear(tbb::pipeline *this, void *a2)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  while (v2)
  {
    v4 = v2;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = sub_299FF384C(v5, a2);
      operator delete(v6);
      *(v4 + 16) = 0;
    }

    v2 = *(v4 + 8);
    *(v4 + 8) = -1;
    v7 = *(v4 + 24) & 0xE;
    if ((*(v4 + 24) & 0xE) != 0)
    {
      *(v4 + 32) = -1;
      *(v4 + 40) = 0;
      if (v7 >= 6)
      {
        *(v4 + 48) = 0;
      }
    }
  }

  *v3 = 0;
  v3[1] = 0;
}

uint64_t tbb::pipeline::add_filter(uint64_t this, tbb::filter *a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 0xE) == 0)
  {
    v9 = *(this + 16);
    if (!v9)
    {
      v9 = (this + 8);
      *(this + 16) = this + 8;
    }

    *v9 = a2;
    *(this + 16) = a2 + 8;
    *(a2 + 1) = 0;
    goto LABEL_13;
  }

  v5 = *(this + 8);
  v4 = *(this + 16);
  *(a2 + 4) = v4;
  *(a2 + 5) = this;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = this;
  }

  *(v6 + 8) = a2;
  *(a2 + 1) = 0;
  *(this + 16) = a2;
  if ((v3 & 0xEu) <= 5)
  {
LABEL_13:
    if ((v3 & 1) == 0)
    {
      return this;
    }

    v7 = operator new(0x48uLL);
    this = sub_299FF2E2C(v7, (v3 & 0x11111111) == 1, 0, v10);
    goto LABEL_18;
  }

  if (v3)
  {
    if ((v3 & 0x20) != 0)
    {
      *(this + 49) = 1;
    }

    v7 = operator new(0x48uLL);
    this = sub_299FF2E2C(v7, (v3 & 0x11111111) == 1, (v3 & 0x20) != 0, v11);
LABEL_18:
    *(a2 + 2) = v7;
    return this;
  }

  if (v4)
  {
    if ((*(v4 + 24) & 0x20) == 0)
    {
      return this;
    }

    v7 = operator new(0x48uLL);
    this = sub_299FF2E2C(v7, 0, 0, v8);
    goto LABEL_18;
  }

  if ((v3 & 0x40) != 0)
  {
    v12 = operator new(0x48uLL);
    sub_299FF2E2C(v12, 0, 0, v13);
    *(a2 + 2) = v12;
    this = pthread_key_create(v12 + 7, 0);
    if (this)
    {
      tbb::internal::handle_perror(this, "TLS not allocated for filter", v14);
    }

    *(v12 + 64) = 1;
  }

  return this;
}

uint64_t sub_299FF2E2C(uint64_t a1, char a2, char a3, void *a4)
{
  *(a1 + 40) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 48) = a2;
  *(a1 + 49) = a3;
  *(a1 + 64) = 0;
  v6 = tbb::internal::NFS_Allocate(4uLL, 24, 0, a4);
  v7 = *a1;
  v6[17] = 0;
  v6[41] = 0;
  v6[65] = 0;
  v6[89] = 0;
  *a1 = v6;
  *(a1 + 16) = 4;
  if (v7)
  {
    tbb::internal::NFS_Free(v7, v5);
  }

  if (*(a1 + 49) == 1)
  {
    v8 = operator new(4uLL);
    *v8 = 0;
    semaphore_create(*MEMORY[0x29EDCA6B0], v8, 0, 0);
    *(a1 + 8) = v8;
  }

  return a1;
}

void tbb::pipeline::remove_filter(tbb::filter **this, tbb::filter *a2)
{
  v3 = *(a2 + 1);
  if (this[1] == a2)
  {
    v4 = this;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  v4[1] = v3;
  v6 = this[2];
  v5 = (this + 2);
  v7 = (v3 + 32);
  if (v6 == a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  *v8 = *(a2 + 4);
  v9 = *(a2 + 2);
  if (v9)
  {
    v10 = sub_299FF384C(v9, a2);
    operator delete(v10);
    *(a2 + 2) = 0;
  }

  *(a2 + 4) = -1;
  *(a2 + 1) = -1;
  if ((*(a2 + 24) & 0xEu) >= 6)
  {
    *(a2 + 6) = 0;
  }

  *(a2 + 5) = 0;
}

uint64_t tbb::pipeline::run(uint64_t this, uint64_t a2, tbb::task_group_context *a3)
{
  if (*(this + 8))
  {
    v3 = this;
    v18 = this;
    *(this + 48) = 0;
    __dmb(0xBu);
    *(this + 32) = a2;
    if (*(this + 49) == 1)
    {
      v4 = *(this + 8);
      if ((*(v4 + 24) & 0x20) != 0)
      {
        v5 = a3;
        MEMORY[0x29C2C53C0](**(*(v4 + 16) + 8));
        a3 = v5;
      }
    }

    v17 = a3;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v17, 0x18uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A203A748;
    *(v6 + 8) = v3;
    *(v6 + 16) = 0;
    v7 = *(v3 + 8);
    if ((*(v7 + 24) & 0xEu) >= 6)
    {
      for (i = *(v7 + 8); i; i = *(i + 8))
      {
        if ((*(*(i + 32) + 24) & 0x20) != 0 && (*(i + 24) & 0x20) == 0)
        {
          *(v6 + 16) = 1;
          *(v7 + 48) = i;
          v7 = i;
        }
      }
    }

    *(v3 + 24) = v6;
    (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
    if (*(v3 + 49) == 1)
    {
      for (j = *(*(v3 + 8) + 8); j; j = *(j + 8))
      {
        if ((*(j + 24) & 0x20) != 0)
        {
          MEMORY[0x29C2C53C0](**(*(j + 16) + 8));
        }
      }
    }

    v10 = v18;
    this = tbb::task_group_context::is_group_execution_cancelled(*(*(v18 + 24) - 56));
    if (this)
    {
      for (k = *(v10 + 8); k; k = *(k + 8))
      {
        if ((*(k + 24) & 0xC) != 0)
        {
          v12 = *(k + 16);
          if (v12)
          {
            v13 = v12[2];
            if (v13)
            {
              v14 = 0;
              v15 = v12[3];
              do
              {
                v16 = *v12 + 24 * ((v13 - 1) & v15);
                if (*(v16 + 17) == 1)
                {
                  this = (*(*k + 24))(k, *v16);
                  *(v16 + 17) = 0;
                  v13 = v12[2];
                }

                ++v14;
                ++v15;
              }

              while (v14 < v13);
            }
          }
        }
      }
    }

    *(v10 + 24) = 0;
  }

  return this;
}

void sub_299FF31C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299FF3BDC(va);
  _Unwind_Resume(a1);
}

void tbb::pipeline::run(tbb::pipeline *this, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  if (v4)
  {
    v7 = (*(v4 + 24) & 0x80) >> 7;
    v8[0] = 1;
    v9 = ((v7 & 1) << 16) | 3;
    v10 = 55;
    tbb::task_group_context::init(v8, a2, a3, a4);
    tbb::pipeline::run(this, a2, v8);
    tbb::task_group_context::~task_group_context(v8);
  }
}

void sub_299FF3290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

BOOL tbb::filter::has_more_work(tbb::filter *this)
{
  v1 = *(*(this + 5) + 40);
  __dmb(0xBu);
  return v1 != *(*(this + 2) + 24);
}

void tbb::filter::~filter(tbb::filter *this, void *a2)
{
  *this = &unk_2A203A668;
  v2 = *(this + 24) & 0xE;
  if ((*(this + 24) & 0xE) != 0)
  {
    v3 = *(this + 1);
    if (v3 != -1)
    {
      v5 = *(this + 4);
      v4 = *(this + 5);
      if (*(v4 + 8) == this)
      {
        v5 = *(this + 5);
      }

      *(v5 + 8) = v3;
      v7 = *(v4 + 16);
      v6 = (v4 + 16);
      v8 = (v3 + 32);
      if (v7 == this)
      {
        v8 = v6;
      }

      *v8 = *(this + 4);
      if (*(this + 2))
      {
        v9 = this;
        v10 = sub_299FF384C(*(this + 2), a2);
        operator delete(v10);
        this = v9;
        *(v9 + 2) = 0;
        v2 = *(v9 + 24) & 0xE;
      }

      *(this + 4) = -1;
      *(this + 1) = -1;
      if (v2 >= 6)
      {
        *(this + 6) = 0;
      }

      *(this + 5) = 0;
    }
  }
}

uint64_t tbb::filter::set_end_of_input(uint64_t this)
{
  if ((*(this + 24) & 1) == 0)
  {
    return pthread_setspecific(*(*(this + 16) + 56), 1);
  }

  *(*(this + 40) + 48) = 1;
  return this;
}

uint64_t tbb::thread_bound_filter::internal_process_item(tbb::thread_bound_filter *this, int a2)
{
  v32 = 0uLL;
  LOWORD(v33) = 0;
  v4 = *(this + 5);
  if (*(v4 + 48) == 1)
  {
    v5 = *(v4 + 40);
    __dmb(0xBu);
    if (v5 == *(*(this + 2) + 24))
    {
      return 2;
    }
  }

  if (*(this + 4))
  {
    while (1)
    {
      v6 = *(this + 2);
      v7 = ((v6 + 32) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_5:
      v8 = *v7 & ~(255 << (8 * ((v6 + 32) & 3)));
      while (1)
      {
        v9 = v8;
        atomic_compare_exchange_strong(v7, &v9, v8 | (1 << (8 * ((v6 + 32) & 3))));
        if (v9 == v8)
        {
          break;
        }

        if (*v7 != v8)
        {
          sched_yield();
          goto LABEL_5;
        }
      }

      v10 = *(*v6 + 24 * ((*(v6 + 16) - 1) & *(v6 + 24)) + 17);
      __dmb(0xBu);
      *(v6 + 32) = 0;
      if (v10)
      {
        break;
      }

      if (!a2)
      {
        return 1;
      }

      v11 = *(*(this + 2) + 8);
        ;
      }

      v12 = *(this + 5);
      if (*(v12 + 48) == 1)
      {
        v13 = *(v12 + 40);
        __dmb(0xBu);
        if (v13 == *(*(this + 2) + 24))
        {
          return 2;
        }
      }
    }

    v16 = *(this + 2);
    v17 = ((v16 + 32) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_19:
    v18 = *v17 & ~(255 << (8 * ((v16 + 32) & 3)));
    while (1)
    {
      v19 = v18;
      atomic_compare_exchange_strong(v17, &v19, v18 | (1 << (8 * ((v16 + 32) & 3))));
      if (v19 == v18)
      {
        break;
      }

      if (*v17 != v18)
      {
        sched_yield();
        goto LABEL_19;
      }
    }

    v20 = *(v16 + 24);
    v21 = *v16 + 24 * ((*(v16 + 16) - 1) & v20);
    if (*(v21 + 17) == 1)
    {
      v22 = *v21;
      v33 = *(v21 + 16);
      v32 = v22;
      *(v21 + 17) = 0;
      *(v16 + 24) = v20 + 1;
    }

    __dmb(0xBu);
    *(v16 + 32) = 0;
    *&v32 = (**this)(this, v32);
    v24 = *(this + 1);
    if (v24)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  v14 = *(this + 5);
  if (*(v14 + 48))
  {
    return 2;
  }

  v25 = *(v14 + 32);
  __dmb(0xBu);
  if (!v25)
  {
    if (!a2)
    {
      return 1;
    }

    do
    {
      v26 = *(*(this + 2) + 8);
        ;
      }

      v27 = *(*(this + 5) + 32);
      __dmb(0xBu);
    }

    while (!v27);
  }

  *&v32 = (**this)(this, v32);
  v28 = *(this + 5);
  if (!v32)
  {
    *(v28 + 48) = 1;
    return 2;
  }

  atomic_fetch_add((v28 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if ((*(this + 24) & 0x11) == 1)
  {
    v29 = *(*(this + 5) + 40);
    __dmb(0xBu);
    *(&v32 + 1) = v29;
    LOBYTE(v33) = 1;
  }

  atomic_fetch_add((*(this + 5) + 40), 1uLL);
  v24 = *(this + 1);
  if (v24)
  {
LABEL_26:
    sub_299FF26CC(*(v24 + 16), &v32, 1, v23);
    return 0;
  }

LABEL_36:
  result = 0;
  add = atomic_fetch_add((*(this + 5) + 32), 1uLL);
  v31 = *(*(this + 5) + 8);
  if ((*(v31 + 24) & 0x20) != 0 && !add)
  {
    MEMORY[0x29C2C53C0](**(*(v31 + 16) + 8));
    return 0;
  }

  return result;
}

void *sub_299FF3724(void *a1)
{
  v1 = a1;
  *a1 = &unk_2A203A6C0;
  v2 = a1[5];
  if (v2 && v1[1] && (v2[24] & 0xC) != 0)
  {
    v3 = v1;
    (*(*v2 + 24))(v2);
    v1 = v3;
    v3[1] = 0;
  }

  return v1;
}

void sub_299FF37B4(void *a1)
{
  *a1 = &unk_2A203A6C0;
  v1 = a1[5];
  if (v1 && a1[1] && (v1[24] & 0xC) != 0)
  {
    v2 = a1;
    (*(*v1 + 24))(a1[5]);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t sub_299FF384C(uint64_t a1, void *a2)
{
  tbb::internal::NFS_Free(*a1, a2);
  v3 = *(a1 + 8);
  if (v3)
  {
    semaphore_destroy(*MEMORY[0x29EDCA6B0], *v3);
    operator delete(v3);
  }

  if (*(a1 + 64) == 1)
  {
    v4 = pthread_key_delete(*(a1 + 56));
    if (v4)
    {
      tbb::internal::handle_perror(v4, "Failed to destroy filter TLS", v5);
    }
  }

  return a1;
}

tbb::internal::allocate_child_proxy *sub_299FF38CC(tbb::internal::allocate_child_proxy *this)
{
  v1 = this;
  v2 = *(this + 1);
  if ((*(v2 + 48) & 1) == 0 && (*(*(v2 + 8) + 24) & 0x20) == 0)
  {
    v3 = *(v2 + 32);
    __dmb(0xBu);
    if (v3)
    {
      *(this - 12) = 3;
      *(this - 3) = 1;
      v4 = tbb::internal::allocate_child_proxy::allocate(this, 0x38uLL);
      v5 = *(v1 + 1);
      *(v4 - 11) = 1;
      *(v4 + 32) = v5;
      *(v4 + 40) = *(v5 + 8);
      *(v4 + 48) = 1;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = &unk_2A203A6C0;
      *(v4 + 24) = 0;
      return v4;
    }
  }

  v6 = *(this + 1);
  if (*(this + 16) != 1)
  {
    if ((*(v6 + 48) & 1) == 0)
    {
      *(this - 12) = 3;
      return v1;
    }

    return 0;
  }

  v7 = *(v6 + 8);
  v8 = *(v7 + 48);
  if (!v8)
  {
    return 0;
  }

  v23 = *(v7 + 48);
  while (1)
  {
    if (*(*(v1 + 1) + 48) == 1)
    {
      v9 = *(*(v8 + 40) + 40);
      __dmb(0xBu);
      if (v9 == *(*(v8 + 16) + 24))
      {
        v8 = *(v23 + 48);
        v23 = v8;
        goto LABEL_9;
      }
    }

    v24 = 0;
    v25 = 0;
    v10 = 0;
    v27 = 0uLL;
    LOWORD(v28) = 0;
    v26 = &v25;
    while (1)
    {
      v13 = *(v8 + 16);
      v14 = *(v8 + 24);
      v15 = v13 + 4;
      v16 = ((v13 + 4) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_17:
      v17 = *v16 & ~(255 << (8 * ((v13 + 32) & 3)));
      while (1)
      {
        v18 = v17;
        atomic_compare_exchange_strong(v16, &v18, v17 | (1 << (8 * ((v13 + 32) & 3))));
        if (v18 == v17)
        {
          break;
        }

        if (*v16 != v17)
        {
          sched_yield();
          goto LABEL_17;
        }
      }

      v19 = v13[3];
      v20 = *v13 + 24 * ((v13[2] - 1) & v19);
      if (*(v20 + 17) != 1)
      {
        break;
      }

      v27 = *v20;
      v28 = *(v20 + 16);
      *(v20 + 17) = 0;
      if ((v14 & 1) == 0)
      {
        v13[3] = v19 + 1;
      }

      __dmb(0xBu);
      *v15 = 0;
      v11 = tbb::internal::allocate_child_proxy::allocate(v1, 0x38uLL);
      v12 = *(v1 + 1);
      *(v11 - 11) = 1;
      *(v11 + 24) = v28;
      *(v11 + 32) = v12;
      *(v11 + 8) = v27;
      *v11 = &unk_2A203A6C0;
      *(v11 + 40) = v8;
      *(v11 + 48) = 0;
      if (v10)
      {
        *(v11 - 8) = 0;
        *v26 = v11;
        v26 = (v11 - 8);
      }

      else
      {
        v24 = v11;
      }

      ++v10;
      v27 = 0uLL;
      LOWORD(v28) = 0;
    }

    __dmb(0xBu);
    *v15 = 0;
    if (v10)
    {
      break;
    }

    v8 = *(v8 + 48);
    if (!v8)
    {
      if (*(*(v1 + 1) + 48) != 1)
      {
        v21 = v1;
        goto LABEL_37;
      }

      sched_yield();
      v8 = v23;
    }

LABEL_9:
    if (!v8)
    {
      return 0;
    }
  }

  *(v1 - 3) = v10;
  if (v10 != 1 && v25)
  {
    (***(v25 - 40))(*(v25 - 40), v25, v26);
  }

  v21 = v24;
LABEL_37:
  *(v1 - 12) = 3;
  return v21;
}

uint64_t *sub_299FF3BDC(uint64_t *a1)
{
  if (tbb::task_group_context::is_group_execution_cancelled(*(*(*a1 + 24) - 56)))
  {
    tbb::pipeline::clear_filters(*a1);
  }

  *(*a1 + 24) = 0;
  return a1;
}

atomic_ullong **tbb::queuing_mutex::scoped_lock::acquire(atomic_ullong **result, atomic_ullong *a2)
{
  v3 = result;
  result[1] = 0;
  result[2] = 0;
  *result = a2;
LABEL_2:
  v4 = *a2;
  while (1)
  {
    v5 = v4;
    atomic_compare_exchange_strong(a2, &v5, v3);
    if (v5 == v4)
    {
      break;
    }

    if (atomic_fetch_add_explicit(a2, 0, memory_order_relaxed) != v4)
    {
      result = sched_yield();
      goto LABEL_2;
    }
  }

  if (v4)
  {
      ;
    }
  }

  __dmb(0xBu);
  return result;
}

BOOL tbb::queuing_mutex::scoped_lock::try_acquire(atomic_ullong **a1, atomic_ullong *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  while (1)
  {
    v2 = 0;
    atomic_compare_exchange_strong(a2, &v2, a1);
    v3 = v2 == 0;
    v4 = v2 == 0;
    if (v3)
    {
      break;
    }

    if (atomic_fetch_add_explicit(a2, 0, memory_order_relaxed))
    {
      return v4;
    }
  }

  __dmb(0xBu);
  *a1 = a2;
  return v4;
}

uint64_t tbb::queuing_mutex::scoped_lock::release(uint64_t this)
{
  v1 = this;
  i = *(this + 8);
  if (i)
  {
LABEL_2:
    __dmb(0xBu);
    *(i + 16) = 1;
    goto LABEL_3;
  }

  v3 = *this;
  while (1)
  {
    v4 = this;
    atomic_compare_exchange_strong(v3, &v4, 0);
    if (v4 == this)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(v3, 0, memory_order_relaxed);
    if (add_explicit != this)
    {
      goto LABEL_9;
    }
  }

  add_explicit = this;
LABEL_9:
  if (add_explicit != this)
  {
    for (i = *(this + 8); !i; i = v1[1])
    {
      this = sched_yield();
    }

    goto LABEL_2;
  }

LABEL_3:
  *v1 = 0;
  v1[2] = 0;
  return this;
}

unint64_t tbb::queuing_rw_mutex::scoped_lock::acquire(unint64_t result, atomic_ullong *a2, int a3)
{
  v5 = result;
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 25) = 0;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  __dmb(0xBu);
  *(result + 24) = v6;
  v7 = result + 24;
  *(result + 26) = 0;
LABEL_5:
  v8 = *a2;
  while (1)
  {
    v9 = v8;
    atomic_compare_exchange_strong(a2, &v9, v5);
    if (v9 == v8)
    {
      break;
    }

    if (atomic_fetch_add_explicit(a2, 0, memory_order_relaxed) != v8)
    {
      result = sched_yield();
      goto LABEL_5;
    }
  }

  if (a3)
  {
    if (v8)
    {
      __dmb(0xBu);
      *((v8 & 0xFFFFFFFFFFFFFFFELL) + 16) = v5;
      while (*(v5 + 25) != 1)
      {
        result = sched_yield();
      }
    }

    goto LABEL_39;
  }

  if (v8)
  {
    if (v8)
    {
      *(v5 + 8) = v8 & 0xFFFFFFFFFFFFFFFELL;
      __dmb(0xBu);
      *((v8 & 0xFFFFFFFFFFFFFFFELL) + 16) = v5;
    }

    else
    {
      v10 = ((v8 + 24) & 0xFFFFFFFFFFFFFFFCLL);
      v11 = 255 << (8 * ((v8 + 24) & 3));
LABEL_17:
      v12 = *v10 & ~v11;
      v13 = v12 | (2 << (8 * ((v8 + 24) & 3)));
      v14 = v12 | (4 << (8 * ((v8 + 24) & 3)));
      while (1)
      {
        v15 = v13;
        atomic_compare_exchange_strong(v10, &v15, v14);
        if (v15 == v13)
        {
          break;
        }

        if (*v10 != v13)
        {
          if (((*v10 ^ v13) & v11) == 0)
          {
            result = sched_yield();
            goto LABEL_17;
          }

          v13 = *v10;
          break;
        }
      }

      *(v5 + 8) = v8;
      __dmb(0xBu);
      *(v8 + 16) = v5;
      if ((v13 >> (8 * ((v8 + 24) & 3))) == 8)
      {
        goto LABEL_28;
      }
    }

    while (*(v5 + 25) != 1)
    {
      result = sched_yield();
    }
  }

LABEL_28:
  v16 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  v17 = 8 * (v7 & 3);
  v18 = 255 << v17;
LABEL_29:
  v19 = *v16 & ~v18;
  v20 = v19 | (2 << v17);
  v21 = v19 | (8 << v17);
  while (1)
  {
    v22 = v20;
    atomic_compare_exchange_strong(v16, &v22, v21);
    if (v22 == v20)
    {
      break;
    }

    if (*v16 != v20)
    {
      if (((*v16 ^ v20) & v18) == 0)
      {
        result = sched_yield();
        goto LABEL_29;
      }

      v20 = *v16;
      break;
    }
  }

  if ((v20 >> v17) != 2)
  {
      ;
    }

    __dmb(0xBu);
    *(v5 + 24) = 8;
    v23 = *(v5 + 16);
    __dmb(0xBu);
    *(v23 + 25) = 1;
  }

LABEL_39:
  __dmb(0xBu);
  return result;
}

uint64_t tbb::queuing_rw_mutex::scoped_lock::try_acquire(unint64_t a1, atomic_ullong *a2, int a3)
{
  if (*a2)
  {
    return 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 25) = 0;
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 8;
  }

  __dmb(0xBu);
  *(a1 + 24) = v3;
  *(a1 + 26) = 0;
  while (1)
  {
    v4 = 0;
    atomic_compare_exchange_strong(a2, &v4, a1);
    if (!v4)
    {
      break;
    }

    if (atomic_fetch_add_explicit(a2, 0, memory_order_relaxed))
    {
      return 0;
    }
  }

  __dmb(0xBu);
  *a1 = a2;
  return 1;
}

uint64_t tbb::queuing_rw_mutex::scoped_lock::release(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  __dmb(0xBu);
  if (v2 != 1)
  {
    add = atomic_fetch_add((this + 8), 1uLL);
    if (add)
    {
      while (2)
      {
        v8 = (add + 26);
        v9 = ((add + 26) & 0xFFFFFFFFFFFFFFFCLL);
        v10 = 255 << (8 * ((add + 26) & 3));
        while (2)
        {
          v11 = *v9 & ~v10;
          do
          {
            v12 = v11;
            atomic_compare_exchange_strong(v9, &v12, v11 | (1 << (8 * ((add + 26) & 3))));
            if (v12 == v11)
            {
              *(v1 + 8) = add;
              v20 = ((v1 + 26) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_30:
              v21 = *v20 & ~(255 << (8 * ((v1 + 26) & 3)));
              while (1)
              {
                v22 = v21;
                atomic_compare_exchange_strong(v20, &v22, v21 | (1 << (8 * ((v1 + 26) & 3))));
                if (v22 == v21)
                {
                  break;
                }

                if (*v20 != v21)
                {
                  this = sched_yield();
                  goto LABEL_30;
                }
              }

              __dmb(0xBu);
              *(add + 16) = 0;
              if (!*(v1 + 16))
              {
                v23 = *v1;
                while (1)
                {
                  v24 = v1;
                  atomic_compare_exchange_strong(v23, &v24, add);
                  if (v24 == v1)
                  {
                    break;
                  }

                  add_explicit = atomic_fetch_add_explicit(v23, 0, memory_order_relaxed);
                  if (add_explicit != v1)
                  {
                    goto LABEL_65;
                  }
                }

                add_explicit = v1;
LABEL_65:
                if (add_explicit != v1)
                {
                  while (!*(v1 + 16))
                  {
                    this = sched_yield();
                  }
                }
              }

              v36 = *(v1 + 16);
              __dmb(0xBu);
              if (v36)
              {
LABEL_70:
                v37 = *(v36 + 8);
                while (1)
                {
                  v38 = v37;
                  atomic_compare_exchange_strong((v36 + 8), &v38, add);
                  if (v38 == v37)
                  {
                    break;
                  }

                  if (atomic_fetch_add_explicit((v36 + 8), 0, memory_order_relaxed) != v37)
                  {
                    this = sched_yield();
                    goto LABEL_70;
                  }
                }

                v39 = *(v1 + 16);
                __dmb(0xBu);
                *(add + 16) = v39;
              }

              else
              {
                LOBYTE(v37) = 0;
              }

              __dmb(0xBu);
              *v8 = 0;
              v16 = (v1 + 26);
              if ((v37 & 1) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_77;
            }
          }

          while (*v9 == v11);
          if ((*v9 & v10) == 0)
          {
            this = sched_yield();
            continue;
          }

          break;
        }

        v13 = add | 1;
        while (1)
        {
          v14 = add | 1;
          atomic_compare_exchange_strong((v1 + 8), &v14, add);
          if (v14 == v13)
          {
            break;
          }

          v15 = atomic_fetch_add_explicit((v1 + 8), 0, memory_order_relaxed);
          if (v15 != v13)
          {
            if ((v15 & 1) == 0)
            {
              while (*(v1 + 8) == v13)
              {
                this = sched_yield();
              }

              __dmb(0xBu);
              *v8 = 0;
            }

            break;
          }
        }

        add = atomic_fetch_add((v1 + 8), 1uLL);
        if (add)
        {
          continue;
        }

        break;
      }
    }

    v16 = (v1 + 26);
    v17 = ((v1 + 26) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_25:
    v18 = *v17 & ~(255 << (8 * ((v1 + 26) & 3)));
    while (1)
    {
      v19 = v18;
      atomic_compare_exchange_strong(v17, &v19, v18 | (1 << (8 * ((v1 + 26) & 3))));
      if (v19 == v18)
      {
        break;
      }

      if (*v17 != v18)
      {
        this = sched_yield();
        goto LABEL_25;
      }
    }

    v26 = *(v1 + 16);
    __dmb(0xBu);
    if (v26)
    {
LABEL_84:
      *(v26 + 25) = 2;
LABEL_85:
      v40 = *(v26 + 8);
      while (1)
      {
        v41 = v40;
        atomic_compare_exchange_strong((v26 + 8), &v41, 0);
        if (v41 == v40)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v26 + 8), 0, memory_order_relaxed) != v40)
        {
          this = sched_yield();
          goto LABEL_85;
        }
      }

      __dmb(0xBu);
      *(v26 + 25) = 1;
      v16 = (v1 + 26);
      if (v40)
      {
LABEL_77:
        while (*v16)
        {
          this = sched_yield();
        }

        goto LABEL_92;
      }
    }

    else
    {
      v27 = *v1;
      while (1)
      {
        v28 = v1;
        atomic_compare_exchange_strong(v27, &v28, 0);
        if (v28 == v1)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v27, 0, memory_order_relaxed) != v1)
        {
            ;
          }

          v26 = *(v1 + 16);
          goto LABEL_84;
        }
      }
    }

LABEL_90:
    __dmb(0xBu);
    *v16 = 0;
    goto LABEL_92;
  }

  v3 = *(this + 16);
  __dmb(0xBu);
  if (v3)
  {
    goto LABEL_49;
  }

  v4 = *this;
  while (1)
  {
    v5 = this;
    atomic_compare_exchange_strong(v4, &v5, 0);
    if (v5 == this)
    {
      break;
    }

    v6 = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
    if (v6 != this)
    {
      goto LABEL_45;
    }
  }

  v6 = this;
LABEL_45:
  if (v6 != this)
  {
    if (!*(this + 16))
    {
      do
      {
        this = sched_yield();
      }

      while (!*(v1 + 16));
    }

    v3 = *(v1 + 16);
    __dmb(0xBu);
LABEL_49:
    *(v3 + 25) = 2;
    v29 = *(v3 + 24);
    __dmb(0xBu);
    if (v29 == 32)
    {
      v30 = (v1 + 26);
      v31 = ((v1 + 26) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_51:
      v32 = *v31 & ~(255 << (8 * ((v1 + 26) & 3)));
      while (1)
      {
        v33 = v32;
        atomic_compare_exchange_strong(v31, &v33, v32 | (1 << (8 * ((v1 + 26) & 3))));
        if (v33 == v32)
        {
          break;
        }

        if (*v31 != v32)
        {
          this = sched_yield();
          goto LABEL_51;
        }
      }

LABEL_56:
      v34 = *(v3 + 8);
      while (1)
      {
        v35 = v34;
        atomic_compare_exchange_strong((v3 + 8), &v35, 0);
        if (v35 == v34)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v3 + 8), 0, memory_order_relaxed) != v34)
        {
          this = sched_yield();
          goto LABEL_56;
        }
      }

      __dmb(0xBu);
      *(v3 + 24) = 64;
      __dmb(0xBu);
      *(v3 + 25) = 1;
      if (v34)
      {
        while (*v30)
        {
          this = sched_yield();
        }
      }

      else
      {
        __dmb(0xBu);
        *v30 = 0;
      }
    }

    else
    {
      *(v3 + 8) = 0;
      __dmb(0xBu);
      *(v3 + 25) = 1;
    }
  }

LABEL_92:
  while (*(v1 + 25) == 2)
  {
    this = sched_yield();
  }

  *v1 = 0;
  *(v1 + 25) = 0;
  return this;
}

uint64_t tbb::queuing_rw_mutex::scoped_lock::downgrade_to_reader(tbb::queuing_rw_mutex::scoped_lock *this)
{
  v2 = this + 24;
  v1 = *(this + 24);
  __dmb(0xBu);
  if (v1 == 8)
  {
    return 1;
  }

  __dmb(0xBu);
  *(this + 24) = 2;
  if (*(this + 2))
  {
    goto LABEL_15;
  }

  v4 = *this;
  __dmb(0xBu);
  v5 = *v4;
  __dmb(0xBu);
  if (v5 != this)
  {
    goto LABEL_14;
  }

  v6 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = 255 << (8 * (v2 & 3));
LABEL_5:
  v8 = *v6 & ~v7;
  v9 = v8 | (2 << (8 * (v2 & 3)));
  v10 = v8 | (8 << (8 * (v2 & 3)));
  while (1)
  {
    v11 = v9;
    atomic_compare_exchange_strong(v6, &v11, v10);
    if (v11 == v9)
    {
      break;
    }

    if (*v6 != v9)
    {
      if (((*v6 ^ v9) & v7) == 0)
      {
        sched_yield();
        goto LABEL_5;
      }

      v9 = *v6;
      break;
    }
  }

  if ((v9 >> (8 * (v2 & 3))) != 2)
  {
LABEL_14:
    while (!*(this + 2))
    {
      sched_yield();
    }

LABEL_15:
    v12 = *(this + 2);
    __dmb(0xBu);
    v13 = *(v12 + 24);
    __dmb(0xBu);
    if ((v13 & 6) != 0)
    {
      __dmb(0xBu);
      *(v12 + 25) = 1;
    }

    else
    {
      v14 = *(v12 + 24);
      __dmb(0xBu);
      if (v14 == 32)
      {
        __dmb(0xBu);
        *(v12 + 24) = 64;
      }
    }

    __dmb(0xBu);
    *v2 = 8;
  }

  return 1;
}

BOOL tbb::queuing_rw_mutex::scoped_lock::upgrade_to_writer(tbb::queuing_rw_mutex::scoped_lock *this)
{
  v2 = this + 24;
  v1 = *(this + 24);
  __dmb(0xBu);
  v3 = 1;
  if (v1 == 1)
  {
    return v3;
  }

  __dmb(0xBu);
  *(this + 24) = 16;
  v5 = ((this + 26) & 0xFFFFFFFFFFFFFFFCLL);
  v50 = this + 26;
  v6 = 1 << (8 * ((this + 26) & 3));
  v7 = ~(255 << (8 * ((this + 26) & 3)));
  v8 = this | 1;
LABEL_3:
  v9 = *v5 & v7;
  while (1)
  {
    v10 = v9;
    atomic_compare_exchange_strong(v5, &v10, v9 | v6);
    if (v10 == v9)
    {
      break;
    }

    if (*v5 != v9)
    {
      sched_yield();
      goto LABEL_3;
    }
  }

  v11 = *this;
  v12 = v50;
  do
  {
    v13 = this;
    atomic_compare_exchange_strong(v11, &v13, v8);
    if (v13 == this)
    {
      __dmb(0xBu);
      *v50 = 0;
LABEL_72:
      v41 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
      v42 = 8 * (v2 & 3);
      v43 = 255 << v42;
      v44 = 16 << v42;
      v45 = 32 << v42;
      while (1)
      {
        v46 = *v41 & ~v43;
        v47 = v46 | v44;
        v48 = v46 | v45;
        do
        {
          v49 = v47;
          atomic_compare_exchange_strong(v41, &v49, v48);
          if (v49 == v47)
          {
            goto LABEL_35;
          }
        }

        while (*v41 == v47);
        if (((*v41 ^ v47) & v43) != 0)
        {
          goto LABEL_35;
        }

        sched_yield();
      }
    }
  }

  while (atomic_fetch_add_explicit(v11, 0, memory_order_relaxed) == this);
  while (!*(this + 2))
  {
    sched_yield();
  }

  add = atomic_fetch_add(this + 2, 1uLL);
  v15 = *(add + 24);
  __dmb(0xBu);
  if ((v15 & 6) != 0)
  {
    __dmb(0xBu);
    *(add + 25) = 1;
  }

LABEL_16:
  v16 = *(add + 8);
  while (1)
  {
    v17 = v16;
    atomic_compare_exchange_strong((add + 8), &v17, this);
    if (v17 == v16)
    {
      break;
    }

    if (atomic_fetch_add_explicit((add + 8), 0, memory_order_relaxed) != v16)
    {
      sched_yield();
      goto LABEL_16;
    }
  }

  if (v16)
  {
    while (*v50)
    {
      sched_yield();
    }
  }

  else
  {
    __dmb(0xBu);
    *v50 = 0;
  }

  if ((v15 & 0x1E) == 0)
  {
    *(this + 2) = add;
    goto LABEL_72;
  }

  v18 = add | 1;
  while (1)
  {
    if (*(this + 2) != v18)
    {
      goto LABEL_3;
    }

    v19 = *v2;
    __dmb(0xBu);
    if ((v19 & 0x60) != 0)
    {
      break;
    }

    sched_yield();
  }

  v20 = *(this + 2);
  __dmb(0xBu);
  v21 = v20 == v18;
  v12 = v50;
  if (v21)
  {
    *(this + 2) = add;
  }

LABEL_35:
  while (1)
  {
    v22 = *this;
    do
    {
      v23 = v8;
      atomic_compare_exchange_strong(v22, &v23, this);
    }

    while (v23 != v8 && atomic_fetch_add_explicit(v22, 0, memory_order_relaxed) == v8);
    v24 = atomic_fetch_add(this + 1, 1uLL);
    if (!v24)
    {
      break;
    }

    v25 = ((v24 + 26) & 0xFFFFFFFFFFFFFFFCLL);
    v26 = 255 << (8 * ((v24 + 26) & 3));
LABEL_40:
    v27 = *v25 & ~v26;
    while (1)
    {
      v28 = v27;
      atomic_compare_exchange_strong(v25, &v28, v27 | (1 << (8 * ((v24 + 26) & 3))));
      v29 = v28 == v27;
      if (v28 == v27)
      {
        break;
      }

      if (*v25 != v27)
      {
        if ((*v25 & v26) != 0)
        {
          break;
        }

        sched_yield();
        goto LABEL_40;
      }
    }

    v30 = 255 << (8 * ((v24 + 24) & 3));
    v31 = ((v24 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_48:
    v32 = *v31 & ~v30;
    v33 = v32 | (16 << (8 * ((v24 + 24) & 3)));
    v34 = v32 | (32 << (8 * ((v24 + 24) & 3)));
    while (1)
    {
      v35 = v33;
      atomic_compare_exchange_strong(v31, &v35, v34);
      if (v35 == v33)
      {
        break;
      }

      if (*v31 != v33)
      {
        if (((*v31 ^ v33) & v30) != 0)
        {
          break;
        }

        sched_yield();
        goto LABEL_48;
      }
    }

    if (v29)
    {
      *(this + 1) = v24;
      __dmb(0xBu);
      *(v24 + 26) = 0;
      v12 = v50;
      while (*(this + 1) == v24)
      {
        sched_yield();
      }

LABEL_34:
      if (!*(this + 1))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v36 = v24 | 1;
      v12 = v50;
      do
      {
        v37 = v24 | 1;
        atomic_compare_exchange_strong(this + 1, &v37, v24);
        if (v37 == v36)
        {
          goto LABEL_60;
        }

        add_explicit = atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed);
      }

      while (add_explicit == v36);
      if (add_explicit)
      {
LABEL_60:
        while (*(this + 1) == v24)
        {
          sched_yield();
        }

        goto LABEL_34;
      }

      while (*(this + 1) == v36)
      {
        sched_yield();
      }

      __dmb(0xBu);
      *(v24 + 26) = 0;
    }
  }

  *(this + 1) = 0;
LABEL_65:
  while (*v12)
  {
    sched_yield();
  }

  while (*(this + 25) == 2)
  {
    sched_yield();
  }

  __dmb(0xBu);
  v39 = *(this + 24);
  __dmb(0xBu);
  v3 = v39 != 64;
  __dmb(0xBu);
  *(this + 24) = 1;
  *(this + 25) = 1;
  return v3;
}

void *tbb::interface5::reader_writer_lock::internal_construct(void *this)
{
  __dmb(0xBu);
  *this = 0;
  __dmb(0xBu);
  this[1] = 0;
  __dmb(0xBu);
  this[2] = 0;
  __dmb(0xBu);
  this[4] = 0;
  this[3] = 0;
  return this;
}

uint64_t tbb::interface5::reader_writer_lock::lock(tbb::interface5::reader_writer_lock *this)
{
  v2 = *(this + 3);
  if (tbb::internal::thread_get_id_v3() == v2)
  {

    return tbb::internal::throw_exception_v4(9);
  }

  else
  {
    v4 = tbb::internal::allocate_via_handler_v3(0x18);
    *v4 = 0;
    *(v4 + 8) = 0;
    __dmb(0xBu);
    *(v4 + 16) = 1;

    return tbb::interface5::reader_writer_lock::start_write(this, v4);
  }
}

uint64_t tbb::interface5::reader_writer_lock::scoped_lock::scoped_lock(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  __dmb(0xBu);
  *(this + 16) = 1;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  __dmb(0xBu);
  *(this + 16) = 1;
  return this;
}

uint64_t tbb::interface5::reader_writer_lock::start_write(atomic_ullong *this, tbb::interface5::reader_writer_lock::scoped_lock *a2)
{
  id_v3 = tbb::internal::thread_get_id_v3();
  v6 = *(a2 + 4);
  __dmb(0xBu);
  if (!v6)
  {
    while (1)
    {
      v9 = 0;
      atomic_compare_exchange_strong(this + 2, &v9, a2);
      if (!v9)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 2, 0, memory_order_relaxed))
      {
        if (!a2)
        {
          return 0;
        }

        if (*a2)
        {
          tbb::interface5::reader_writer_lock::end_write(*a2, a2);
        }

        goto LABEL_34;
      }
    }

LABEL_11:
    tbb::interface5::reader_writer_lock::set_next_writer(this, a2);
    v10 = *(a2 + 4);
    __dmb(0xBu);
    if (v10)
    {
      goto LABEL_15;
    }

    i = *(a2 + 1);
    if (!i)
    {
LABEL_21:
      v13 = this[1];
      while (1)
      {
        v14 = v13;
        atomic_compare_exchange_strong(this + 1, &v14, 0);
        if (v14 == v13)
        {
          break;
        }

        if (atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed) != v13)
        {
          sched_yield();
          goto LABEL_21;
        }
      }

      while (1)
      {
        v16 = a2;
        atomic_compare_exchange_strong(this + 2, &v16, 0);
        if (v16 == a2)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(this + 2, 0, memory_order_relaxed);
        if (add_explicit != a2)
        {
          goto LABEL_28;
        }
      }

      add_explicit = a2;
LABEL_28:
      if (add_explicit == a2)
      {
        if (!a2)
        {
          return 0;
        }

LABEL_32:
        if (*a2)
        {
          tbb::interface5::reader_writer_lock::end_write(*a2, a2);
        }

LABEL_34:
        __dmb(0xBu);
        *(a2 + 4) = 3;
        tbb::internal::deallocate_via_handler_v3(a2, i);
        return 0;
      }

      for (i = *(a2 + 1); !i; i = *(a2 + 1))
      {
        sched_yield();
      }
    }

    tbb::interface5::reader_writer_lock::set_next_writer(this, i);
    goto LABEL_32;
  }

LABEL_2:
  v7 = this[2];
  while (1)
  {
    v8 = v7;
    atomic_compare_exchange_strong(this + 2, &v8, a2);
    if (v8 == v7)
    {
      break;
    }

    if (atomic_fetch_add_explicit(this + 2, 0, memory_order_relaxed) != v7)
    {
      sched_yield();
      goto LABEL_2;
    }
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *(v7 + 8) = a2;
LABEL_15:
  while (1)
  {
    v11 = *(a2 + 4);
    __dmb(0xBu);
    if (v11 != 1)
    {
      break;
    }

    sched_yield();
  }

  this[3] = id_v3;
  return 1;
}

uint64_t tbb::interface5::reader_writer_lock::try_lock(tbb::interface5::reader_writer_lock *this)
{
  v2 = *(this + 3);
  if (tbb::internal::thread_get_id_v3() == v2)
  {
    return 0;
  }

  v4 = tbb::internal::allocate_via_handler_v3(0x18);
  *v4 = 0;
  *(v4 + 8) = 0;
  __dmb(0xBu);
  *(v4 + 16) = 1;
  __dmb(0xBu);
  *(v4 + 16) = 0;

  return tbb::interface5::reader_writer_lock::start_write(this, v4);
}

void tbb::interface5::reader_writer_lock::set_next_writer(tbb::interface5::reader_writer_lock *this, tbb::interface5::reader_writer_lock::scoped_lock *a2)
{
  __dmb(0xBu);
  *(this + 1) = a2;
  v4 = *(a2 + 4);
  __dmb(0xBu);
  if (v4)
  {
LABEL_2:
    v5 = *(this + 4);
    __dmb(0xBu);
    while (1)
    {
      v6 = v5;
      atomic_compare_exchange_strong(this + 4, &v6, v5 | 1);
      if (v6 == v5)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 4, 0, memory_order_relaxed) != v5)
      {
        sched_yield();
        goto LABEL_2;
      }
    }

    if ((v5 & 4) != 0)
    {
      while (1)
      {
        v9 = *(this + 4);
        __dmb(0xBu);
        if ((v9 & 2) != 0)
        {
          break;
        }

        sched_yield();
      }
    }

    else
    {
LABEL_7:
      v7 = *(this + 4);
      while (1)
      {
        v8 = v7;
        atomic_compare_exchange_strong(this + 4, &v8, v7 | 2);
        if (v8 == v7)
        {
          break;
        }

        if (atomic_fetch_add_explicit(this + 4, 0, memory_order_relaxed) != v7)
        {
          sched_yield();
          goto LABEL_7;
        }
      }
    }

    v10 = *(this + 4);
    __dmb(0xBu);
    if (v10 >= 8)
    {
      do
      {
        sched_yield();
        v11 = *(this + 4);
        __dmb(0xBu);
      }

      while (v11 > 7);
    }
  }

  else
  {
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong(this + 4, &v12, 3uLL);
      if (!v12)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 4, 0, memory_order_relaxed))
      {
        return;
      }
    }
  }

  __dmb(0xBu);
  *(a2 + 4) = 2;
}

atomic_ullong *tbb::interface5::reader_writer_lock::lock_read(tbb::interface5::reader_writer_lock *this)
{
  v2 = *(this + 3);
  if (tbb::internal::thread_get_id_v3() == v2)
  {

    return tbb::internal::throw_exception_v4(9);
  }

  else
  {
    v4[0] = 0;
    v4[1] = 0;
    __dmb(0xBu);
    v5 = 1;
    result = tbb::interface5::reader_writer_lock::start_read(this, v4);
    if (v4[0])
    {
      atomic_fetch_add((v4[0] + 32), 0xFFFFFFFFFFFFFFF8);
    }

    __dmb(0xBu);
  }

  return result;
}

void sub_299FF4EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    atomic_fetch_add((a10 + 32), 0xFFFFFFFFFFFFFFF8);
  }

  __dmb(0xBu);
  _Unwind_Resume(a1);
}

uint64_t tbb::interface5::reader_writer_lock::scoped_lock_read::scoped_lock_read(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  __dmb(0xBu);
  *(this + 16) = 1;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  __dmb(0xBu);
  *(this + 16) = 1;
  return this;
}

atomic_ullong *tbb::interface5::reader_writer_lock::start_read(atomic_ullong *this, tbb::interface5::reader_writer_lock::scoped_lock_read *a2)
{
  v3 = this;
LABEL_2:
  v4 = *v3;
  while (1)
  {
    v5 = v4;
    atomic_compare_exchange_strong(v3, &v5, a2);
    if (v5 == v4)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v3, 0, memory_order_relaxed) != v4)
    {
      this = sched_yield();
      goto LABEL_2;
    }
  }

  *(a2 + 1) = v4;
  if (!v4)
  {
LABEL_7:
    v6 = v3[4];
    __dmb(0xBu);
    while (1)
    {
      v7 = v6;
      atomic_compare_exchange_strong(v3 + 4, &v7, v6 | 4);
      if (v7 == v6)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v3 + 4, 0, memory_order_relaxed) != v6)
      {
        this = sched_yield();
        goto LABEL_7;
      }
    }

    if ((v6 & 3) == 0)
    {
      atomic_fetch_add(v3 + 4, 4uLL);
      v8 = v3[4];
      __dmb(0xBu);
      if (v8)
      {
        v9 = v3[4];
        __dmb(0xBu);
        if ((v9 & 2) == 0)
        {
LABEL_14:
          v10 = v3[4];
          while (1)
          {
            v11 = v10;
            atomic_compare_exchange_strong(v3 + 4, &v11, v10 | 2);
            if (v11 == v10)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v3 + 4, 0, memory_order_relaxed) != v10)
            {
              this = sched_yield();
              goto LABEL_14;
            }
          }
        }
      }

LABEL_18:
      v12 = *v3;
      while (1)
      {
        v13 = v12;
        atomic_compare_exchange_strong(v3, &v13, 0);
        if (v13 == v12)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v3, 0, memory_order_relaxed) != v12)
        {
          this = sched_yield();
          goto LABEL_18;
        }
      }

      __dmb(0xBu);
      *(v12 + 16) = 2;
    }
  }

  while (1)
  {
    v14 = *(a2 + 4);
    __dmb(0xBu);
    if (v14 != 1)
    {
      break;
    }

    this = sched_yield();
  }

  if (*(a2 + 1))
  {
    atomic_fetch_add(v3 + 4, 8uLL);
    v15 = *(a2 + 1);
    __dmb(0xBu);
    *(v15 + 16) = 2;
  }

  return this;
}

uint64_t tbb::interface5::reader_writer_lock::try_lock_read(tbb::interface5::reader_writer_lock *this)
{
  v2 = *(this + 3);
  if (tbb::internal::thread_get_id_v3() == v2)
  {
    return 0;
  }

  if ((atomic_fetch_add(this + 4, 8uLL) & 3) == 0)
  {
    return 1;
  }

  result = 0;
  atomic_fetch_add(this + 4, 0xFFFFFFFFFFFFFFF8);
  return result;
}

atomic_ullong *tbb::interface5::reader_writer_lock::unblock_readers(atomic_ullong *this)
{
  v1 = this;
  atomic_fetch_add(this + 4, 4uLL);
  v2 = this[4];
  __dmb(0xBu);
  if (v2)
  {
    v3 = this[4];
    __dmb(0xBu);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      v4 = v1[4];
      while (1)
      {
        v5 = v4;
        atomic_compare_exchange_strong(v1 + 4, &v5, v4 | 2);
        if (v5 == v4)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v1 + 4, 0, memory_order_relaxed) != v4)
        {
          this = sched_yield();
          goto LABEL_3;
        }
      }
    }
  }

LABEL_7:
  v6 = *v1;
  while (1)
  {
    v7 = v6;
    atomic_compare_exchange_strong(v1, &v7, 0);
    if (v7 == v6)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v1, 0, memory_order_relaxed) != v6)
    {
      this = sched_yield();
      goto LABEL_7;
    }
  }

  __dmb(0xBu);
  *(v6 + 16) = 2;
  return this;
}

void tbb::interface5::reader_writer_lock::unlock(tbb::interface5::reader_writer_lock *this)
{
  if (*(this + 3))
  {
    v1 = *(this + 1);
    __dmb(0xBu);
    tbb::interface5::reader_writer_lock::end_write(this, v1);
    if (v1)
    {
      if (*v1)
      {
        tbb::interface5::reader_writer_lock::end_write(*v1, v1);
      }

      __dmb(0xBu);
      *(v1 + 4) = 3;
      tbb::internal::deallocate_via_handler_v3(v1, v2);
    }
  }

  else
  {
    atomic_fetch_add(this + 4, 0xFFFFFFFFFFFFFFF8);
  }
}

void tbb::interface5::reader_writer_lock::end_write(tbb::interface5::reader_writer_lock *this, tbb::interface5::reader_writer_lock::scoped_lock *a2)
{
  *(this + 3) = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    __dmb(0xBu);
    *(this + 1) = v3;
    v4 = *(this + 1);
    __dmb(0xBu);
    __dmb(0xBu);
    *(v4 + 16) = 2;
  }

  else
  {
LABEL_4:
    v6 = *(this + 4);
    __dmb(0xBu);
    while (1)
    {
      v7 = v6;
      atomic_compare_exchange_strong(this + 4, &v7, v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7 == v6)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 4, 0, memory_order_relaxed) != v6)
      {
        sched_yield();
        goto LABEL_4;
      }
    }

    if ((v6 & 4) != 0)
    {
      atomic_fetch_add(this + 4, 4uLL);
      v8 = *(this + 4);
      __dmb(0xBu);
      if (v8)
      {
        v9 = *(this + 4);
        __dmb(0xBu);
        if ((v9 & 2) == 0)
        {
LABEL_11:
          v10 = *(this + 4);
          while (1)
          {
            v11 = v10;
            atomic_compare_exchange_strong(this + 4, &v11, v10 | 2);
            if (v11 == v10)
            {
              break;
            }

            if (atomic_fetch_add_explicit(this + 4, 0, memory_order_relaxed) != v10)
            {
              sched_yield();
              goto LABEL_11;
            }
          }
        }
      }

LABEL_15:
      v12 = *this;
      while (1)
      {
        v13 = v12;
        atomic_compare_exchange_strong(this, &v13, 0);
        if (v13 == v12)
        {
          break;
        }

        if (atomic_fetch_add_explicit(this, 0, memory_order_relaxed) != v12)
        {
          sched_yield();
          goto LABEL_15;
        }
      }

      __dmb(0xBu);
      *(v12 + 16) = 2;
    }

LABEL_20:
    v14 = *(this + 1);
    while (1)
    {
      v15 = v14;
      atomic_compare_exchange_strong(this + 1, &v15, 0);
      if (v15 == v14)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed) != v14)
      {
        sched_yield();
        goto LABEL_20;
      }
    }

    while (1)
    {
      v17 = a2;
      atomic_compare_exchange_strong(this + 2, &v17, 0);
      if (v17 == a2)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(this + 2, 0, memory_order_relaxed);
      if (add_explicit != a2)
      {
        goto LABEL_27;
      }
    }

    add_explicit = a2;
LABEL_27:
    if (add_explicit != a2)
    {
      for (i = *(a2 + 1); !i; i = *(a2 + 1))
      {
        sched_yield();
      }

      tbb::interface5::reader_writer_lock::set_next_writer(this, i);
    }
  }
}

uint64_t tbb::interface5::reader_writer_lock::scoped_lock::internal_construct(tbb::interface5::reader_writer_lock::scoped_lock *this, tbb::interface5::reader_writer_lock *a2)
{
  *this = a2;
  *(this + 1) = 0;
  __dmb(0xBu);
  *(this + 4) = 1;
  v3 = *(*this + 24);
  if (tbb::internal::thread_get_id_v3() == v3)
  {

    return tbb::internal::throw_exception_v4(9);
  }

  else
  {
    v5 = *this;

    return tbb::interface5::reader_writer_lock::start_write(v5, this);
  }
}

atomic_ullong *tbb::interface5::reader_writer_lock::scoped_lock_read::internal_construct(tbb::interface5::reader_writer_lock::scoped_lock_read *this, tbb::interface5::reader_writer_lock *a2)
{
  *this = a2;
  *(this + 1) = 0;
  __dmb(0xBu);
  *(this + 4) = 1;
  v3 = *(*this + 24);
  if (tbb::internal::thread_get_id_v3() == v3)
  {

    return tbb::internal::throw_exception_v4(9);
  }

  else
  {
    v5 = *this;

    return tbb::interface5::reader_writer_lock::start_read(v5, this);
  }
}

void tbb::interface5::reader_writer_lock::scoped_lock::internal_destroy(tbb::interface5::reader_writer_lock **this)
{
  v2 = *this;
  if (v2)
  {
    tbb::interface5::reader_writer_lock::end_write(v2, this);
  }

  __dmb(0xBu);
  *(this + 4) = 3;
}

_DWORD *tbb::interface5::reader_writer_lock::scoped_lock_read::internal_destroy(_DWORD *this)
{
  if (*this)
  {
    atomic_fetch_add((*this + 32), 0xFFFFFFFFFFFFFFF8);
  }

  __dmb(0xBu);
  this[4] = 3;
  return this;
}

uint64_t tbb::spin_rw_mutex_v3::internal_acquire_writer(atomic_ullong *this)
{
  while (1)
  {
    v2 = *this;
    if ((*this & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if ((v2 & 2) == 0)
      {
LABEL_6:
        v3 = *this;
        v4 = *this | 2;
        while (1)
        {
          v5 = v3;
          atomic_compare_exchange_strong(this, &v5, v4);
          if (v5 == v3)
          {
            break;
          }

          if (atomic_fetch_add_explicit(this, 0, memory_order_relaxed) != v3)
          {
            sched_yield();
            goto LABEL_6;
          }
        }
      }

      goto LABEL_3;
    }

    v6 = *this;
    while (1)
    {
      v7 = v2;
      atomic_compare_exchange_strong(this, &v7, 1uLL);
      if (v7 == v2)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(this, 0, memory_order_relaxed);
      if (add_explicit != v2)
      {
        v6 = add_explicit;
        break;
      }
    }

    if (v6 == v2)
    {
      return 0;
    }

LABEL_3:
    sched_yield();
  }
}

atomic_ullong *tbb::spin_rw_mutex_v3::internal_release_writer(atomic_ullong *this)
{
  v1 = this;
LABEL_2:
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v4 = v2;
    atomic_compare_exchange_strong(v1, &v4, v3);
    if (v4 == v2)
    {
      return this;
    }

    if (atomic_fetch_add_explicit(v1, 0, memory_order_relaxed) != v2)
    {
      this = sched_yield();
      goto LABEL_2;
    }
  }
}

atomic_ullong *tbb::spin_rw_mutex_v3::internal_acquire_reader(atomic_ullong *this)
{
  v1 = this;
  while (1)
  {
    if ((*v1 & 3) != 0)
    {
      goto LABEL_2;
    }

    if ((atomic_fetch_add(v1, 4uLL) & 1) == 0)
    {
      return this;
    }

    atomic_fetch_add(v1, 0xFFFFFFFFFFFFFFFCLL);
LABEL_2:
    this = sched_yield();
  }
}

uint64_t tbb::spin_rw_mutex_v3::internal_upgrade(atomic_ullong *this)
{
  v2 = *this;
  do
  {
    v3 = (v2 & 2) == 0 || (v2 & 0xFFFFFFFFFFFFFFFCLL) == 4;
    v4 = v3;
    if (!v3)
    {
      atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFCLL);
      while (1)
      {
        v9 = *this;
        if ((*this & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          if ((v9 & 2) == 0)
          {
LABEL_23:
            v10 = *this;
            v11 = *this | 2;
            while (1)
            {
              v12 = v10;
              atomic_compare_exchange_strong(this, &v12, v11);
              if (v12 == v10)
              {
                break;
              }

              if (atomic_fetch_add_explicit(this, 0, memory_order_relaxed) != v10)
              {
                sched_yield();
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v13 = *this;
          while (1)
          {
            v14 = v9;
            atomic_compare_exchange_strong(this, &v14, 1uLL);
            if (v14 == v9)
            {
              break;
            }

            add_explicit = atomic_fetch_add_explicit(this, 0, memory_order_relaxed);
            if (add_explicit != v9)
            {
              v13 = add_explicit;
              break;
            }
          }

          if (v13 == v9)
          {
            return v4;
          }
        }

        sched_yield();
      }
    }

    v5 = v2;
    while (1)
    {
      v6 = v2;
      atomic_compare_exchange_strong(this, &v6, v2 | 3);
      if (v6 == v2)
      {
        break;
      }

      v7 = atomic_fetch_add_explicit(this, 0, memory_order_relaxed);
      if (v7 != v2)
      {
        v5 = v7;
        break;
      }
    }

    v3 = v5 == v2;
    v2 = v5;
  }

  while (!v3);
  while ((*this & 0xFFFFFFFFFFFFFFFCLL) != 4)
  {
    sched_yield();
  }

  atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFALL);
  return v4;
}

BOOL tbb::spin_rw_mutex_v3::internal_try_acquire_writer(atomic_ullong *this)
{
  v1 = *this;
  if ((*this & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 0;
  }

  v2 = *this;
  while (1)
  {
    v3 = v1;
    atomic_compare_exchange_strong(this, &v3, 1uLL);
    if (v3 == v1)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(this, 0, memory_order_relaxed);
    if (add_explicit != v1)
    {
      v2 = add_explicit;
      return v2 == v1;
    }
  }

  return v2 == v1;
}

uint64_t tbb::spin_rw_mutex_v3::internal_try_acquire_reader(atomic_ullong *this)
{
  if ((*this & 3) != 0)
  {
    return 0;
  }

  if ((atomic_fetch_add(this, 4uLL) & 1) == 0)
  {
    return 1;
  }

  result = 0;
  atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFCLL);
  return result;
}

void *tbb::spin_mutex::scoped_lock::internal_acquire(void *result, uint64_t a2)
{
  v3 = result;
  v4 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v5 = 1 << (8 * (a2 & 3));
  v6 = ~(255 << (8 * (a2 & 3)));
LABEL_2:
  v7 = *v4 & v6;
  while (1)
  {
    v8 = v7;
    atomic_compare_exchange_strong(v4, &v8, v7 | v5);
    if (v8 == v7)
    {
      break;
    }

    if (*v4 != v7)
    {
      result = sched_yield();
      goto LABEL_2;
    }
  }

  *v3 = a2;
  return result;
}

_BYTE **tbb::spin_mutex::scoped_lock::internal_release(_BYTE **this)
{
  v1 = *this;
  __dmb(0xBu);
  *v1 = 0;
  *this = 0;
  return this;
}

BOOL tbb::spin_mutex::scoped_lock::internal_try_acquire(void *a1, uint64_t a2)
{
  v4 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v5 = 255 << (8 * (a2 & 3));
  v6 = 1 << (8 * (a2 & 3));
LABEL_2:
  v7 = *v4 & ~v5;
  while (1)
  {
    v8 = v7;
    atomic_compare_exchange_strong(v4, &v8, v7 | v6);
    result = v8 == v7;
    if (v8 == v7)
    {
      break;
    }

    if (*v4 != v7)
    {
      if ((*v4 & v5) != 0)
      {
        return result;
      }

      sched_yield();
      goto LABEL_2;
    }
  }

  *a1 = a2;
  return result;
}

tbb::internal *tbb::mutex::scoped_lock::internal_acquire(tbb::mutex::scoped_lock *this, pthread_mutex_t *a2)
{
  result = pthread_mutex_lock(a2);
  if (result)
  {
    tbb::internal::handle_perror(result, "mutex::scoped_lock: pthread_mutex_lock failed", v5);
  }

  *this = a2;
  return result;
}

uint64_t tbb::mutex::scoped_lock::internal_release(pthread_mutex_t **this)
{
  result = pthread_mutex_unlock(*this);
  *this = 0;
  return result;
}

BOOL tbb::mutex::scoped_lock::internal_try_acquire(tbb::mutex::scoped_lock *this, pthread_mutex_t *a2)
{
  v4 = pthread_mutex_trylock(a2);
  if (!v4)
  {
    *this = a2;
  }

  return v4 == 0;
}

tbb::internal *tbb::mutex::internal_construct(pthread_mutex_t *this)
{
  result = pthread_mutex_init(this, 0);
  if (result)
  {

    tbb::internal::handle_perror(result, "mutex: pthread_mutex_init failed", v2);
  }

  return result;
}

tbb::internal *tbb::recursive_mutex::scoped_lock::internal_acquire(void *a1, pthread_mutex_t *a2)
{
  result = pthread_mutex_lock(a2);
  if (result)
  {
    tbb::internal::handle_perror(result, "recursive_mutex::scoped_lock: pthread_mutex_lock failed", v5);
  }

  *a1 = a2;
  return result;
}

uint64_t tbb::recursive_mutex::scoped_lock::internal_release(pthread_mutex_t **this)
{
  result = pthread_mutex_unlock(*this);
  *this = 0;
  return result;
}

BOOL tbb::recursive_mutex::scoped_lock::internal_try_acquire(void *a1, pthread_mutex_t *a2)
{
  v4 = pthread_mutex_trylock(a2);
  if (!v4)
  {
    *a1 = a2;
  }

  return v4 == 0;
}

uint64_t tbb::recursive_mutex::internal_construct(pthread_mutex_t *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = pthread_mutexattr_init(&v7);
  if (v2)
  {
    tbb::internal::handle_perror(v2, "recursive_mutex: pthread_mutexattr_init failed", v3);
  }

  pthread_mutexattr_settype(&v7, 2);
  v4 = pthread_mutex_init(this, &v7);
  if (v4)
  {
    tbb::internal::handle_perror(v4, "recursive_mutex: pthread_mutex_init failed", v5);
  }

  return pthread_mutexattr_destroy(&v7);
}

tbb::internal *tbb::internal::tbb_thread_v3::join(pthread_t *this, uint64_t a2, const char *a3)
{
  if (!*this)
  {
    tbb::internal::handle_perror(0x16, "tbb_thread::join", a3);
  }

  if (pthread_self() == *this)
  {
    tbb::internal::handle_perror(0xB, "tbb_thread::join", v4);
  }

  result = pthread_join(*this, 0);
  if (result)
  {
    tbb::internal::handle_perror(result, "pthread_join", v6);
  }

  *this = 0;
  return result;
}

tbb::internal *tbb::internal::tbb_thread_v3::detach(_opaque_pthread_t **this, uint64_t a2, const char *a3)
{
  v4 = *this;
  if (!v4)
  {
    tbb::internal::handle_perror(0x16, "tbb_thread::detach", a3);
  }

  result = pthread_detach(v4);
  if (result)
  {
    tbb::internal::handle_perror(result, "pthread_detach", v6);
  }

  *this = 0;
  return result;
}

tbb::internal *tbb::internal::tbb_thread_v3::internal_start(tbb::internal::tbb_thread_v3 *this, void *(__cdecl *a2)(void *), void *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v6 = pthread_attr_init(&v19);
  if (v6)
  {
    tbb::internal::handle_perror(v6, "pthread_attr_init", v8);
  }

  active = tbb::interface9::global_control::active_value(1, v7, v8, v9, v10);
  v12 = pthread_attr_setstacksize(&v19, active);
  if (v12)
  {
    tbb::internal::handle_perror(v12, "pthread_attr_setstacksize", v13);
  }

  v14 = pthread_create(&v18, &v19, a2, a3);
  if (v14)
  {
    tbb::internal::handle_perror(v14, "pthread_create", v15);
  }

  result = pthread_attr_destroy(&v19);
  if (result)
  {
    tbb::internal::handle_perror(result, "pthread_attr_destroy", v17);
  }

  *this = v18;
  return result;
}

uint64_t tbb::internal::tbb_thread_v3::hardware_concurrency(tbb::internal::tbb_thread_v3 *this)
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

void sub_299FF5E40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

_opaque_pthread_t *tbb::internal::move_v3(_opaque_pthread_t **this, _opaque_pthread_t **a2, tbb::internal::tbb_thread_v3 *a3)
{
  result = *this;
  if (result)
  {
    result = pthread_detach(result);
    if (result)
    {
      tbb::internal::handle_perror(result, "pthread_detach", v6);
    }

    *this = 0;
  }

  *this = *a2;
  *a2 = 0;
  return result;
}

uint64_t tbb::internal::thread_sleep_v3(uint64_t *a1)
{
  v1 = *a1 * 0.000001;
  v3.tv_sec = v1;
  v3.tv_nsec = ((v1 - v1) * 1000000000.0);
  return nanosleep(&v3, 0);
}

uint64_t tbb::internal::concurrent_monitor::thread_context::init(tbb::internal::concurrent_monitor::thread_context *this)
{
  *(this + 4) = 0;
  v1 = this + 16;
  result = semaphore_create(*MEMORY[0x29EDCA6B0], this + 4, 0, 0);
  v1[11] = 1;
  return result;
}

void tbb::internal::concurrent_monitor::~concurrent_monitor(tbb::internal::concurrent_monitor *this)
{
  __dmb(0xBu);
  tbb::internal::concurrent_monitor::abort_all_relaxed(this);
}

{
  __dmb(0xBu);
  tbb::internal::concurrent_monitor::abort_all_relaxed(this);
}

uint64_t tbb::internal::concurrent_monitor::prepare_wait(uint64_t this, tbb::internal::concurrent_monitor::thread_context *a2, uint64_t a3)
{
  v5 = this;
  if (*(a2 + 27))
  {
    if (*(a2 + 25) == 1)
    {
      *(a2 + 25) = 0;
      do
      {
        this = MEMORY[0x29C2C53D0](*(a2 + 4));
      }

      while (this == 14);
    }
  }

  else
  {
    this = tbb::internal::concurrent_monitor::thread_context::init(a2);
  }

  *(a2 + 4) = a3;
  __dmb(0xBu);
  *(a2 + 24) = 1;
  v6 = ((v5 + 1) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_8:
  v7 = *v6 & ~(255 << (8 * ((v5 + 1) & 3)));
  while (1)
  {
    v8 = v7;
    atomic_compare_exchange_strong(v6, &v8, v7 | (1 << (8 * ((v5 + 1) & 3))));
    if (v8 == v7)
    {
      break;
    }

    if (*v6 != v7)
    {
      this = sched_yield();
      goto LABEL_8;
    }
  }

  *(a2 + 5) = *(v5 + 32);
  ++*(v5 + 8);
  v9 = *(v5 + 24);
  *a2 = v5 + 16;
  *(a2 + 1) = v9;
  *v9 = a2;
  *(v5 + 24) = a2;
  __dmb(0xBu);
  *(v5 + 1) = 0;
  __dmb(0xBu);
  return this;
}

uint64_t tbb::internal::concurrent_monitor::cancel_wait(uint64_t this, tbb::internal::concurrent_monitor::thread_context *a2)
{
  *(a2 + 25) = 1;
  v2 = *(a2 + 24);
  __dmb(0xBu);
  if (v2)
  {
    v4 = this;
    v5 = (this + 1);
    v6 = ((this + 1) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = 1 << (8 * ((this + 1) & 3));
    v8 = ~(255 << (8 * ((this + 1) & 3)));
LABEL_3:
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
        this = sched_yield();
        goto LABEL_3;
      }
    }

    v11 = *(a2 + 24);
    __dmb(0xBu);
    if (v11)
    {
      --*(v4 + 8);
      v12 = *a2;
      v13 = *(a2 + 1);
      *v13 = *a2;
      *(v12 + 8) = v13;
      __dmb(0xBu);
      *(a2 + 24) = 0;
      *(a2 + 25) = 0;
    }

    __dmb(0xBu);
    *v5 = 0;
  }

  return this;
}

uint64_t tbb::internal::concurrent_monitor::notify_one_relaxed(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    v2 = (this + 1);
    v3 = ((this + 1) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = 1 << (8 * ((this + 1) & 3));
    v5 = ~(255 << (8 * ((this + 1) & 3)));
LABEL_3:
    v6 = *v3 & v5;
    while (1)
    {
      v7 = v6;
      atomic_compare_exchange_strong(v3, &v7, v6 | v4);
      if (v7 == v6)
      {
        break;
      }

      if (*v3 != v6)
      {
        this = sched_yield();
        goto LABEL_3;
      }
    }

    v8 = *(v1 + 16);
    ++*(v1 + 32);
    if (v8 != (v1 + 16))
    {
      --*(v1 + 8);
      v9 = *v8;
      v10 = v8[1];
      *v10 = *v8;
      *(v9 + 8) = v10;
      __dmb(0xBu);
      *(v8 + 24) = 0;
      __dmb(0xBu);
      *(v1 + 1) = 0;

      JUMPOUT(0x29C2C53C0);
    }

    __dmb(0xBu);
    *v2 = 0;
  }

  return this;
}

uint64_t tbb::internal::concurrent_monitor::notify_all_relaxed(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    *&v13 = &v13;
    *(&v13 + 1) = &v13;
    v2 = (this + 1);
    v3 = ((this + 1) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = 1 << (8 * ((this + 1) & 3));
    v5 = ~(255 << (8 * ((this + 1) & 3)));
LABEL_3:
    v6 = *v3 & v5;
    while (1)
    {
      v7 = v6;
      atomic_compare_exchange_strong(v3, &v7, v6 | v4);
      if (v7 == v6)
      {
        break;
      }

      if (*v3 != v6)
      {
        this = sched_yield();
        goto LABEL_3;
      }
    }

    ++*(v1 + 32);
    if (*(v1 + 8))
    {
      v9 = *(v1 + 16);
      v8 = v1 + 16;
      v13 = v9;
      *(v9 + 8) = &v13;
      **(v8 + 8) = &v13;
      *v8 = v8;
      *(v8 + 8) = v8;
      *(v8 - 8) = 0;
    }

    for (i = v13; i != &v13; i = *i)
    {
      __dmb(0xBu);
      *(i + 24) = 0;
    }

    __dmb(0xBu);
    *v2 = 0;
    v11 = v13;
    if (v13 != &v13)
    {
      do
      {
        v12 = *v11;
        this = MEMORY[0x29C2C53C0](*(v11 + 4));
        v11 = v12;
      }

      while (v12 != &v13);
    }
  }

  return this;
}

uint64_t tbb::internal::concurrent_monitor::abort_all_relaxed(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    *&v13 = &v13;
    *(&v13 + 1) = &v13;
    v2 = (this + 1);
    v3 = ((this + 1) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = 1 << (8 * ((this + 1) & 3));
    v5 = ~(255 << (8 * ((this + 1) & 3)));
LABEL_3:
    v6 = *v3 & v5;
    while (1)
    {
      v7 = v6;
      atomic_compare_exchange_strong(v3, &v7, v6 | v4);
      if (v7 == v6)
      {
        break;
      }

      if (*v3 != v6)
      {
        this = sched_yield();
        goto LABEL_3;
      }
    }

    ++*(v1 + 32);
    if (*(v1 + 8))
    {
      v9 = *(v1 + 16);
      v8 = v1 + 16;
      v13 = v9;
      *(v9 + 8) = &v13;
      **(v8 + 8) = &v13;
      *v8 = v8;
      *(v8 + 8) = v8;
      *(v8 - 8) = 0;
    }

    for (i = v13; i != &v13; i = *i)
    {
      __dmb(0xBu);
      *(i + 24) = 0;
    }

    __dmb(0xBu);
    *v2 = 0;
    v11 = v13;
    if (v13 != &v13)
    {
      do
      {
        v12 = *v11;
        *(v11 + 26) = 1;
        this = MEMORY[0x29C2C53C0](*(v11 + 4));
        v11 = v12;
      }

      while (v12 != &v13);
    }
  }

  return this;
}

uint64_t rml::internal::thread_monitor::join(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    v3 = *MEMORY[0x29EDCA610];
    v4 = strerror(result);
    fprintf(v3, "thread_monitor %s in %s\n", v4, "pthread_join");
    exit(1);
  }

  return result;
}

uint64_t rml::internal::thread_monitor::detach_thread(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_detach(this);
  if (result)
  {
    v3 = *MEMORY[0x29EDCA610];
    v4 = strerror(result);
    fprintf(v3, "thread_monitor %s in %s\n", v4, "pthread_detach");
    exit(1);
  }

  return result;
}

uint64_t tbb::internal::rml::private_worker::run(tbb::internal::rml::private_worker *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 6);
  __dmb(0xBu);
  if (v3)
  {
    tbb::internal::rml::private_server::wake_some(v2, 0);
  }

  v38 = (*(**(this + 2) + 24))(*(this + 2));
  v4 = *this;
  __dmb(0xBu);
  if (v4 != 3)
  {
    v8 = this + 40;
    v9 = ((this + 40) & 0xFFFFFFFFFFFFFFFCLL);
    v10 = 8 * ((this + 40) & 3);
    v11 = 255 << v10;
    v12 = ~(255 << v10);
    do
    {
      v14 = *(*(this + 1) + 32);
      __dmb(0xBu);
      if (v14 < 0)
      {
        if (*(this + 41) == 1)
        {
          *(this + 41) = 0;
            ;
          }
        }

        v15 = *(this + 4);
        __dmb(0xBu);
        v39 = v15;
        __dmb(0xBu);
        *(this + 40) = 1;
        __dmb(0xBu);
        LODWORD(v15) = *this;
        __dmb(0xBu);
        if (v15 != 3)
        {
          v16 = *(this + 1);
          v17 = ((v16 + 56) & 0xFFFFFFFFFFFFFFFCLL);
          v18 = 255 << (8 * ((v16 + 56) & 3));
          v19 = ~v18;
LABEL_17:
          v20 = *v17 & v19;
          while (1)
          {
            v21 = v20;
            atomic_compare_exchange_strong(v17, &v21, v20 | (1 << (8 * ((v16 + 56) & 3))));
            if (v21 == v20)
            {
              break;
            }

            if (*v17 != v20)
            {
              if ((*v17 & v18) != 0)
              {
                goto LABEL_25;
              }

              v37 = v18;
              sched_yield();
              v18 = v37;
              goto LABEL_17;
            }
          }

          if ((atomic_fetch_add((v16 + 32), 1u) & 0x80000000) != 0)
          {
            v27 = *(v16 + 48);
            __dmb(0xBu);
            *(this + 7) = v27;
            __dmb(0xBu);
            *(v16 + 48) = this;
            __dmb(0xBu);
            *(v16 + 56) = 0;
            v28 = v39;
            __dmb(0xBu);
            v29 = *(this + 4);
            __dmb(0xBu);
            if (v28 == v29)
            {
                ;
              }
            }

            else
            {
              while (2)
              {
                v30 = *v8;
                v31 = v30 << v10;
LABEL_38:
                v32 = *v9 & v12;
                v33 = v32 | v31;
                while (1)
                {
                  v34 = v32 | v31;
                  atomic_compare_exchange_strong(v9, &v34, v32);
                  if (v34 == v33)
                  {
                    break;
                  }

                  if (*v9 != v33)
                  {
                    if (((*v9 ^ v33) & v11) == 0)
                    {
                      sched_yield();
                      goto LABEL_38;
                    }

                    v33 = *v9;
                    break;
                  }
                }

                if (v30 != (v33 >> v10))
                {
                  sched_yield();
                  continue;
                }

                break;
              }

              *(this + 41) = (v30 & 1) == 0;
            }

            v35 = *(this + 1);
            v36 = *(v35 + 6);
            __dmb(0xBu);
            if (v36)
            {
              tbb::internal::rml::private_server::wake_some(v35, 0);
            }

            goto LABEL_10;
          }

          atomic_fetch_add((v16 + 32), 0xFFFFFFFF);
          __dmb(0xBu);
          *(v16 + 56) = 0;
        }

LABEL_25:
        while (2)
        {
          v22 = *v8;
          v23 = v22 << v10;
LABEL_26:
          v24 = *v9 & v12;
          v25 = v24 | v23;
          while (1)
          {
            v26 = v24 | v23;
            atomic_compare_exchange_strong(v9, &v26, v24);
            if (v26 == v25)
            {
              break;
            }

            if (*v9 != v25)
            {
              if (((*v9 ^ v25) & v11) == 0)
              {
                sched_yield();
                goto LABEL_26;
              }

              v25 = *v9;
              break;
            }
          }

          if (v22 != (v25 >> v10))
          {
            sched_yield();
            continue;
          }

          break;
        }

        *(this + 41) = (v22 & 1) == 0;
      }

      else
      {
        (*(**(this + 2) + 56))(*(this + 2), v38);
      }

LABEL_10:
      v13 = *this;
      __dmb(0xBu);
    }

    while (v13 != 3);
  }

  result = (*(**(this + 2) + 48))(*(this + 2), v38);
  atomic_fetch_add((*(this + 1) + 32), 1u);
  v6 = *(this + 1);
  if (atomic_fetch_add(v6 + 9, 0xFFFFFFFF) == 1)
  {
    (*(**(v6 + 1) + 32))(*(v6 + 1));
    (*(*v6 + 48))(v6);

    return tbb::internal::NFS_Free(v6, v7);
  }

  return result;
}

uint64_t tbb::internal::rml::private_worker::release_handle(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  if (a2)
  {
    result = pthread_join(this, 0);
    if (result)
    {
      v3 = *MEMORY[0x29EDCA610];
      v4 = strerror(result);
      v5 = "pthread_join";
      goto LABEL_7;
    }
  }

  else
  {
    result = pthread_detach(this);
    if (result)
    {
      v3 = *MEMORY[0x29EDCA610];
      v4 = strerror(result);
      v5 = "pthread_detach";
LABEL_7:
      fprintf(v3, "thread_monitor %s in %s\n", v4, v5);
      exit(1);
    }
  }

  return result;
}

uint64_t tbb::internal::rml::private_worker::start_shutdown(uint64_t this)
{
  v1 = this;
LABEL_2:
  v2 = *this;
  __dmb(0xBu);
  while (1)
  {
    v3 = v2;
    atomic_compare_exchange_strong(this, &v3, 3u);
    if (v3 == v2)
    {
      break;
    }

    if (*this != v2)
    {
      goto LABEL_2;
    }
  }

  if ((v2 - 1) > 1)
  {
    if (!v2)
    {
      v13 = *(this + 8);
      if (atomic_fetch_add(v13 + 9, 0xFFFFFFFF) == 1)
      {
        (*(**(v13 + 1) + 32))(*(v13 + 1));
        (*(*v13 + 48))(v13);

        return tbb::internal::NFS_Free(v13, v14);
      }
    }
  }

  else
  {
    v4 = *(this + 32);
    __dmb(0xBu);
    __dmb(0xBu);
    *(this + 32) = v4 + 1;
    v5 = ((this + 40) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = 8 * ((this + 40) & 3);
    v7 = 255 << v6;
    while (2)
    {
      v8 = *(v1 + 40);
      v9 = v8 << v6;
LABEL_9:
      v10 = *v5 & ~v7;
      v11 = v10 | v9;
      while (1)
      {
        v12 = v10 | v9;
        atomic_compare_exchange_strong(v5, &v12, v10);
        if (v12 == v11)
        {
          break;
        }

        if (*v5 != v11)
        {
          if (((*v5 ^ v11) & v7) == 0)
          {
            this = sched_yield();
            goto LABEL_9;
          }

          v11 = *v5;
          break;
        }
      }

      if (v8 != (v11 >> v6))
      {
        this = sched_yield();
        continue;
      }

      break;
    }

    if (v8)
    {
      this = MEMORY[0x29C2C53C0](*(v1 + 44));
    }

    if (v2 == 2)
    {
      v15 = *(v1 + 48);
      does_client_join_workers = tbb::internal::governor::does_client_join_workers(*(v1 + 16));

      return tbb::internal::rml::private_worker::release_handle(v15, does_client_join_workers);
    }
  }

  return this;
}

uint64_t tbb::internal::rml::private_server::private_server(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A203A790;
  *(a1 + 8) = a2;
  *(a1 + 16) = (*(*a2 + 8))(a2);
  *(a1 + 24) = (*(*a2 + 16))(a2);
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  v4 = *(a1 + 16) + 1;
  __dmb(0xBu);
  *(a1 + 36) = v4;
  __dmb(0xBu);
  *(a1 + 32) = 0;
  __dmb(0xBu);
  *(a1 + 48) = 0;
  *(a1 + 40) = tbb::internal::NFS_Allocate(*(a1 + 16), 128, 0, v5);
  if (*(a1 + 16))
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x29EDCA6B0];
    do
    {
      v9 = *(a1 + 40) + v6;
      *(v9 + 8) = a1;
      *(v9 + 16) = a2;
      *(v9 + 24) = v7;
      *(v9 + 41) = 0;
      *(v9 + 44) = 0;
      semaphore_create(*v8, (v9 + 44), 0, 0);
      __dmb(0xBu);
      *(v9 + 32) = 0;
      __dmb(0xBu);
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      __dmb(0xBu);
      *v9 = 0;
      v10 = *(a1 + 48);
      __dmb(0xBu);
      *(v9 + 56) = v10;
      __dmb(0xBu);
      *(a1 + 48) = v9;
      ++v7;
      v6 += 128;
    }

    while (v7 < *(a1 + 16));
  }

  return a1;
}

void tbb::internal::rml::private_server::~private_server(tbb::internal::rml::private_server *this, void *a2)
{
  *this = &unk_2A203A790;
  v3 = (*(this + 4) << 7) - 84;
  v4 = MEMORY[0x29EDCA6B0];
  while (1)
  {
    v5 = v3 - 128;
    if (v3 == -84)
    {
      break;
    }

    semaphore_destroy(*v4, *(*(this + 5) + v3));
    v3 = v5;
  }

  tbb::internal::NFS_Free(*(this + 5), a2);
}

{
  *this = &unk_2A203A790;
  v3 = (*(this + 4) << 7) - 84;
  v4 = MEMORY[0x29EDCA6B0];
  while (1)
  {
    v5 = v3 - 128;
    if (v3 == -84)
    {
      break;
    }

    semaphore_destroy(*v4, *(*(this + 5) + v3));
    v3 = v5;
  }

  tbb::internal::NFS_Free(*(this + 5), a2);
}

{
  *this = &unk_2A203A790;
  v3 = (*(this + 4) << 7) - 84;
  v4 = MEMORY[0x29EDCA6B0];
  while (1)
  {
    v5 = v3 - 128;
    if (v3 == -84)
    {
      break;
    }

    semaphore_destroy(*v4, *(*(this + 5) + v3));
    v3 = v5;
  }

  tbb::internal::NFS_Free(*(this + 5), a2);

  operator delete(this);
}

pthread_t tbb::internal::rml::private_server::wake_some(pthread_t this, signed int a2)
{
  v3 = this;
  v23[1] = *MEMORY[0x29EDCA608];
  v22 = 0;
  v23[0] = 0;
  v4 = &this->__opaque[40];
  v5 = (&this->__opaque[40] & 0xFFFFFFFFFFFFFFFCLL);
  v6 = 1 << (8 * ((this + 56) & 3));
  v7 = ~(255 << (8 * ((this + 56) & 3)));
LABEL_2:
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
      goto LABEL_2;
    }
  }

  v10 = *(v3 + 48);
  __dmb(0xBu);
  if (!v10)
  {
    v15 = &v22;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v11 = *(v3 + 32);
  __dmb(0xBu);
  if (a2 <= 0)
  {
    if (v11 < 1)
    {
      v15 = &v22;
      goto LABEL_26;
    }

    while (1)
    {
      v19 = v11;
      atomic_compare_exchange_strong((v3 + 32), &v19, v11 - 1);
      if (v19 == v11)
      {
        break;
      }

      if (*(v3 + 32) != v11)
      {
        v11 = *(v3 + 32);
        __dmb(0xBu);
        v15 = &v22;
        if (v11 <= 0)
        {
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    if (v11 + a2 < 1)
    {
      v15 = &v22;
      goto LABEL_25;
    }

    --a2;
  }

  v12 = *(v3 + 48);
  __dmb(0xBu);
  v22 = v12;
  v13 = *(v12 + 56);
  __dmb(0xBu);
  *(v3 + 48) = v13;
  v14 = *(v3 + 48);
  __dmb(0xBu);
  v15 = &v22;
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v23;
  v16 = *(v3 + 32);
  __dmb(0xBu);
  if (a2 <= 0)
  {
    if (v16 < 1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v21 = v16;
      atomic_compare_exchange_strong((v3 + 32), &v21, v16 - 1);
      if (v21 == v16)
      {
        goto LABEL_14;
      }

      if (*(v3 + 32) != v16)
      {
        v16 = *(v3 + 32);
        __dmb(0xBu);
        if (v16 <= 0)
        {
          goto LABEL_26;
        }
      }
    }
  }

  if (v16 + a2 >= 1)
  {
    --a2;
LABEL_14:
    v17 = *(v3 + 48);
    __dmb(0xBu);
    v23[0] = v17;
    v18 = *(v17 + 56);
    __dmb(0xBu);
    *(v3 + 48) = v18;
    __dmb(0xBu);
LABEL_15:
    ++v15;
    if (!a2)
    {
      goto LABEL_26;
    }
  }

LABEL_25:
  atomic_fetch_add((v3 + 32), a2);
LABEL_26:
  __dmb(0xBu);
  *v4 = 0;
  while (v15 > &v22)
  {
    v20 = *--v15;
    *(v20 + 56) = 0;
    this = sub_299FF7170(v20);
  }

  return this;
}

pthread_t sub_299FF7170(pthread_t result)
{
  v1 = result;
  sig = result->__sig;
  __dmb(0xBu);
  if (sig)
  {
LABEL_4:
    v4 = *&result->__opaque[16];
    __dmb(0xBu);
    __dmb(0xBu);
    *&result->__opaque[16] = v4 + 1;
    v5 = (&result->__opaque[24] & 0xFFFFFFFFFFFFFFFCLL);
    v6 = 8 * ((result + 40) & 3);
    v7 = 255 << v6;
    while (2)
    {
      v8 = v1->__opaque[24];
      v9 = v8 << v6;
LABEL_6:
      v10 = *v5 & ~v7;
      v11 = v10 | v9;
      while (1)
      {
        v12 = v10 | v9;
        atomic_compare_exchange_strong(v5, &v12, v10);
        if (v12 == v11)
        {
          break;
        }

        if (*v5 != v11)
        {
          if (((*v5 ^ v11) & v7) == 0)
          {
            result = sched_yield();
            goto LABEL_6;
          }

          v11 = *v5;
          break;
        }
      }

      if (v8 != (v11 >> v6))
      {
        result = sched_yield();
        continue;
      }

      break;
    }

    if (v8)
    {

      JUMPOUT(0x29C2C53C0);
    }
  }

  else
  {
    while (1)
    {
      v3 = 0;
      atomic_compare_exchange_strong(result, &v3, 1u);
      if (!v3)
      {
        break;
      }

      if (LODWORD(result->__sig))
      {
        goto LABEL_4;
      }
    }

    result = sub_299FF74F8(tbb::internal::rml::private_worker::thread_routine, result, result->__cleanup_stack[1].__routine);
    *&v1->__opaque[32] = result;
    while (1)
    {
      v13 = 1;
      atomic_compare_exchange_strong(v1, &v13, 2u);
      if (v13 == 1)
      {
        break;
      }

      if (LODWORD(v1->__sig) != 1)
      {
        v14 = *&v1->__opaque[32];
        does_client_join_workers = tbb::internal::governor::does_client_join_workers(*v1->__opaque);

        return tbb::internal::rml::private_worker::release_handle(v14, does_client_join_workers);
      }
    }
  }

  return result;
}

pthread_t tbb::internal::rml::private_server::adjust_job_count_estimate(pthread_t this, signed int a2)
{
  if (a2 < 0)
  {
    atomic_fetch_add(&this->__opaque[16], a2);
  }

  else if (a2)
  {
    return tbb::internal::rml::private_server::wake_some(this, a2);
  }

  return this;
}

uint64_t tbb::internal::rml::make_private_server(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = tbb::internal::NFS_Allocate(1uLL, 64, 0, a4);

  return tbb::internal::rml::private_server::private_server(v5, a1);
}

uint64_t sub_299FF736C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      result = tbb::internal::rml::private_worker::start_shutdown(*(v1 + 5) + v2);
      ++v3;
      v2 += 128;
    }

    while (v3 < v1[4]);
  }

  if (atomic_fetch_add(v1 + 9, 0xFFFFFFFF) == 1)
  {
    (*(**(v1 + 1) + 32))(*(v1 + 1));
    (*(*v1 + 48))(v1);

    return tbb::internal::NFS_Free(v1, v4);
  }

  return result;
}

uint64_t sub_299FF7450()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = tbb::internal::governor::DefaultNumberOfThreads;
  if (!tbb::internal::governor::DefaultNumberOfThreads)
  {
    *v4 = 0x1900000006;
    v3 = 0;
    v2 = 4;
    sysctl(v4, 2u, &v3, &v2, 0, 0);
    v0 = v3;
    if (v3 <= 1)
    {
      v0 = 1;
    }

    tbb::internal::governor::DefaultNumberOfThreads = v0;
  }

  return (v0 - 1);
}

pthread_t sub_299FF74F8(void *(__cdecl *a1)(void *), void *a2, size_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = pthread_attr_init(&v15);
  if (v6)
  {
    v11 = *MEMORY[0x29EDCA610];
    v12 = strerror(v6);
    v13 = "pthread_attr_init";
    goto LABEL_11;
  }

  if (a3)
  {
    v7 = pthread_attr_setstacksize(&v15, a3);
    if (v7)
    {
      v11 = *MEMORY[0x29EDCA610];
      v12 = strerror(v7);
      v13 = "pthread_attr_setstack_size";
LABEL_11:
      fprintf(v11, "thread_monitor %s in %s\n", v12, v13);
      exit(1);
    }
  }

  v14 = 0;
  v8 = pthread_create(&v14, &v15, a1, a2);
  if (v8)
  {
    v11 = *MEMORY[0x29EDCA610];
    v12 = strerror(v8);
    v13 = "pthread_create";
    goto LABEL_11;
  }

  v9 = pthread_attr_destroy(&v15);
  if (v9)
  {
    v11 = *MEMORY[0x29EDCA610];
    v12 = strerror(v9);
    v13 = "pthread_attr_destroy";
    goto LABEL_11;
  }

  return v14;
}

uint64_t tbb::internal::rml::tbb_factory::open(tbb::internal::rml::tbb_factory *this)
{
  v5[8] = *MEMORY[0x29EDCA608];
  v4 = 0;
  v5[0] = "__RML_open_factory";
  v5[1] = &v4;
  v5[2] = "__TBB_make_rml_server";
  v5[3] = this + 24;
  v5[4] = "__RML_close_factory";
  v5[5] = this + 8;
  v5[6] = "__TBB_call_with_my_server_info";
  v5[7] = this + 32;
  if (tbb::internal::dynamic_link("libirml.dylib", v5, 4, this + 2))
  {
    v3 = 0;
    return v4(this, &v3, 2);
  }

  else
  {
    *(this + 2) = 0;
    return 2;
  }
}

unint64_t tbb::internal::rml::tbb_factory::close(unint64_t this)
{
  if (*(this + 16))
  {
    v1 = this;
    (*(this + 8))();
    this = *(v1 + 16);
    if (this >= 2)
    {
      this = tbb::internal::dynamic_unlink(this, v2);
      *(v1 + 16) = 0;
    }
  }

  return this;
}

void *tbb::set_assertion_handler(tbb *this, void (*a2)(const char *, int, const char *, const char *))
{
  v2 = off_2A153EBD0;
  off_2A153EBD0 = this;
  return v2;
}

const char *tbb::assertion_failure(const char *this, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v6 = off_2A153EBD0;
  if (off_2A153EBD0)
  {

    return v6(this, a2, a3, a4);
  }

  else if ((byte_2A153EBD8 & 1) == 0)
  {
    sub_29B284328(a3, a2, this, a4);
  }

  return this;
}

uint64_t tbb::internal::runtime_warning(tbb::internal *this, const char *a2, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  vsnprintf(__str, 0x3FFuLL, this, va);
  return fprintf(*MEMORY[0x29EDCA610], "TBB Warning: %s\n", __str);
}

void tbb::internal::handle_perror(tbb::internal *this, const char *a2, const char *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = strerror(this);
  snprintf(__str, 0x100uLL, "%s: %s", a2, v4);
  __str[255] = 0;
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, __str);
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void tbb::internal::throw_bad_last_alloc_exception_v4(tbb::internal *this)
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v2 = sub_299FF7DAC(exception);
}

uint64_t tbb::internal::throw_exception_v4(uint64_t result)
{
  if (!(!v2 & v1))
  {
    switch(result)
    {
      case 1:
        exception = __cxa_allocate_exception(8uLL);
        v4 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v4, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
      case 2:
        v9 = __cxa_allocate_exception(8uLL);
        v9->__vftable = 0;
        v10 = sub_299FF7DAC(v9);
      case 3:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7DE4(v5, "Step must be positive");
        goto LABEL_13;
      case 4:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E18(v5, "Index out of requested size range");
        goto LABEL_22;
      case 5:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E4C(v5, "Index out of allocated segment slots");
        goto LABEL_20;
      case 6:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E4C(v5, "Index is not allocated");
LABEL_20:
        v6 = off_29F294A10;
        v7 = MEMORY[0x29EDC9338];
        goto LABEL_29;
      case 7:
        v12 = __cxa_allocate_exception(8uLL);
        *v12 = &unk_2A203A970;
      case 8:
        v8 = __cxa_allocate_exception(8uLL);
        *v8 = &unk_2A203A948;
      case 9:
        v13 = __cxa_allocate_exception(8uLL);
        *v13 = &unk_2A203A8F8;
      case 10:
        v5 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v5, "Resource deadlock would occur");
        goto LABEL_28;
      case 11:
        v5 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v5, "Operation not permitted");
        goto LABEL_28;
      case 12:
        v5 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v5, "Wait on condition variable failed");
        goto LABEL_28;
      case 13:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E18(v5, "Invalid hash load factor");
        goto LABEL_22;
      case 14:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E18(v5, "[backward compatibility] Invalid number of buckets");
        goto LABEL_22;
      case 15:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7DE4(v5, "swap() is invalid on non-equal allocators");
LABEL_13:
        v6 = off_29F294A30;
        v7 = MEMORY[0x29EDC9360];
        goto LABEL_29;
      case 16:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E84(v5, "reservation size exceeds permitted max size");
        v6 = off_29F294A20;
        v7 = MEMORY[0x29EDC9348];
        goto LABEL_29;
      case 17:
        v5 = __cxa_allocate_exception(0x10uLL);
        sub_299FF7E18(v5, "invalid key");
LABEL_22:
        v6 = off_29F294A28;
        v7 = MEMORY[0x29EDC9350];
        goto LABEL_29;
      case 18:
        v11 = __cxa_allocate_exception(8uLL);
        *v11 = &unk_2A203A920;
      case 19:
        v5 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v5, "Blocking terminate failed");
        goto LABEL_28;
      case 20:
        v5 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v5, "Illegal tagged_msg cast");
LABEL_28:
        v6 = MEMORY[0x29EDC9470];
        v7 = MEMORY[0x29EDC9358];
LABEL_29:
        __cxa_throw(v5, v6, v7);
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

std::bad_alloc *sub_299FF7DAC(std::bad_alloc *a1)
{
  result = std::bad_alloc::bad_alloc(a1);
  result->__vftable = &unk_2A203A8D0;
  return result;
}

std::logic_error *sub_299FF7DE4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95F0] + 16);
  return result;
}

std::logic_error *sub_299FF7E18(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

std::runtime_error *sub_299FF7E4C(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95C0] + 16);
  return result;
}

std::logic_error *sub_299FF7E84(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

const char *tbb::internal::PrintExtraVersionInfo(const char *this, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v6 = *MEMORY[0x29EDCA608];
  if (byte_2A153EBD9 == 1)
  {
    v4 = this;
    bzero(__str, 0x400uLL);
    vsnprintf(__str, 0x3FFuLL, a2, va);
    return fprintf(*MEMORY[0x29EDCA610], "TBB: %s\t%s\n", v4, __str);
  }

  return this;
}

void sub_299FF7FC0(std::bad_alloc *a1)
{
  std::bad_alloc::~bad_alloc(a1);

  operator delete(v1);
}

void sub_299FF7FE8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete(v1);
}

uint64_t tbb::internal::allocate_root_proxy::allocate(tbb::internal::allocate_root_proxy *this)
{
  v2 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v2)
  {
    inited = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v4 = *(*(inited + 7) - 56);

  return tbb::internal::generic_scheduler::allocate_task(inited, this, 0, v4);
}

unint64_t tbb::internal::allocate_root_proxy::free(tbb::internal::allocate_root_proxy *this, tbb::task *a2)
{
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    result = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = tbb::internal::governor::init_scheduler_weak(0);
  }

  *(this - 12) = 4;
  if (*(this - 6) == result)
  {
    *(this - 1) = *(result + 136);
    *(result + 136) = this;
  }

  else
  {

    return tbb::internal::NFS_Free((this - 64), v4);
  }

  return result;
}

uint64_t tbb::internal::allocate_root_with_context_proxy::allocate(tbb::task_group_context **this, unint64_t a2)
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

  result = tbb::internal::generic_scheduler::allocate_task(inited, a2, 0, *this);
  v9 = *this;
  if (**this == 1)
  {
    if ((~*(inited + 74) & 3) != 0)
    {
      v12 = result;
      tbb::task_group_context::bind_to(*this, inited, v7, v8);
      result = v12;
      v9 = *this;
      if (**this)
      {
        return result;
      }

      goto LABEL_8;
    }

    *v9 = 0;
  }

  if (*v9)
  {
    return result;
  }

LABEL_8:
  if ((*(v9 + 130) & 2) == 0)
  {
    v10 = *(*(inited + 144) - 56);
    v11 = result;
    tbb::task_group_context::copy_fp_settings(v9, v10, v7, v8);
    return v11;
  }

  return result;
}

unint64_t tbb::internal::allocate_root_with_context_proxy::free(tbb::internal::allocate_root_with_context_proxy *this, tbb::task *a2)
{
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    result = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = tbb::internal::governor::init_scheduler_weak(0);
  }

  *(a2 - 12) = 4;
  if (*(a2 - 6) == result)
  {
    *(a2 - 1) = *(result + 136);
    *(result + 136) = a2;
  }

  else
  {

    return tbb::internal::NFS_Free((a2 - 64), v4);
  }

  return result;
}

uint64_t tbb::internal::allocate_continuation_proxy::allocate(tbb::internal::allocate_continuation_proxy *this, unint64_t a2)
{
  v4 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v4)
  {
    inited = (v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v6 = *(this - 4);
  *(this - 4) = 0;
  v7 = *(this - 7);

  return tbb::internal::generic_scheduler::allocate_task(inited, a2, v6, v7);
}

unint64_t tbb::internal::allocate_continuation_proxy::free(tbb::internal::allocate_continuation_proxy *this, tbb::task *a2)
{
  *(this - 4) = *(a2 - 4);
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    result = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = tbb::internal::governor::init_scheduler_weak(0);
  }

  *(a2 - 12) = 4;
  if (*(a2 - 6) == result)
  {
    *(a2 - 1) = *(result + 136);
    *(result + 136) = a2;
  }

  else
  {

    return tbb::internal::NFS_Free((a2 - 64), v4);
  }

  return result;
}

uint64_t tbb::internal::allocate_child_proxy::allocate(tbb::internal::allocate_child_proxy *this, unint64_t a2)
{
  v4 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v4)
  {
    inited = (v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v6 = *(this - 7);

  return tbb::internal::generic_scheduler::allocate_task(inited, a2, this, v6);
}

unint64_t tbb::internal::allocate_child_proxy::free(tbb::internal::allocate_child_proxy *this, tbb::task *a2)
{
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    result = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = tbb::internal::governor::init_scheduler_weak(0);
  }

  *(a2 - 12) = 4;
  if (*(a2 - 6) == result)
  {
    *(a2 - 1) = *(result + 136);
    *(result + 136) = a2;
  }

  else
  {

    return tbb::internal::NFS_Free((a2 - 64), v4);
  }

  return result;
}

uint64_t tbb::internal::allocate_additional_child_of_proxy::allocate(tbb::internal::allocate_additional_child_of_proxy *this, unint64_t a2)
{
  atomic_fetch_add((*(this + 1) - 24), 1uLL);
  v4 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v4)
  {
    inited = (v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  v6 = *(this + 1);
  v7 = *(v6 - 7);

  return tbb::internal::generic_scheduler::allocate_task(inited, a2, v6, v7);
}

unint64_t tbb::internal::allocate_additional_child_of_proxy::free(tbb::internal::allocate_additional_child_of_proxy *this, tbb::task *a2)
{
  atomic_fetch_add((*(this + 1) - 24), 0xFFFFFFFFFFFFFFFFLL);
  v3 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v3)
  {
    result = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = tbb::internal::governor::init_scheduler_weak(0);
  }

  *(a2 - 12) = 4;
  if (*(a2 - 6) == result)
  {
    *(a2 - 1) = *(result + 136);
    *(result + 136) = a2;
  }

  else
  {

    return tbb::internal::NFS_Free((a2 - 64), v4);
  }

  return result;
}

uint64_t tbb::internal::get_initial_auto_partitioner_divisor(tbb::internal *this)
{
  v1 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v1)
  {
    inited = v1 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
  }

  return 4 * *(*(inited + 48) + 328);
}

void tbb::internal::affinity_partitioner_base_v3::resize(tbb::internal **this, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = pthread_getspecific(tbb::internal::governor::theTLS);
    if (v6)
    {
      inited = v6 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
    }

    v8 = (*(*(inited + 48) + 328) * v5);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != this[1])
  {
    if (*this)
    {
      tbb::internal::NFS_Free(*this, a2);
      *this = 0;
      this[1] = 0;
    }

    if (v8)
    {
      v9 = tbb::internal::NFS_Allocate(v8, 2, 0, a4);
      *this = v9;
      bzero(v9, 2 * v8);
      this[1] = v8;
    }
  }
}

uint64_t tbb::task::self(tbb::task *this)
{
  v1 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v1)
  {
    inited = v1 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    inited = tbb::internal::governor::init_scheduler_weak(0);
  }

  return *(inited + 56);
}

tbb::internal *tbb::interface5::internal::task_base::destroy(tbb::interface5::internal::task_base *this, tbb::task *a2)
{
  v3 = *(this - 4);
  (**this)(this, a2);
  if (v3)
  {
    atomic_fetch_add((v3 - 24), 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = pthread_getspecific(tbb::internal::governor::theTLS);
  if (v4)
  {
    result = (v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    result = tbb::internal::governor::init_scheduler_weak(0);
  }

  *(this - 12) = 4;
  v7 = *(this - 6);
  if (v7 == result)
  {
    *(this - 1) = *(result + 17);
    *(result + 17) = this;
  }

  else if (!v7 || v7 >= 0x1000)
  {
    if (v7)
    {

      return tbb::internal::generic_scheduler::free_nonlocal_small_task(result, this);
    }

    else
    {

      return tbb::internal::NFS_Free((this - 64), v5);
    }
  }

  return result;
}