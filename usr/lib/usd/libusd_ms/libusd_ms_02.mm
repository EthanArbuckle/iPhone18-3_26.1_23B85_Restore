void sub_29A0034AC(_Unwind_Exception *a1, void *a2)
{
  sub_29A000950((v2 + 16), a2);
  sub_29A000950((v2 + 8), v4);
  _Unwind_Resume(a1);
}

void *sub_29A0034C8(tbb::internal::generic_scheduler *this, void *a2, uint64_t a3)
{
  v6 = *(this + 74);
  v7 = *(this + 14);
  v8 = *(this + 8);
  if (v8)
  {
    *(v8 + 20) = 1;
  }

  if ((v6 & 2) != 0)
  {
    v9 = *(*(this + 6) + 296);
    __dmb(0xBu);
    if (v9)
    {
      v10 = *(this + 6);
      while (1)
      {
        v11 = v9;
        atomic_compare_exchange_strong((v10 + 296), &v11, 0);
        if (v11 == v9)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v10 + 296), 0, memory_order_relaxed) != v9)
        {
          goto LABEL_11;
        }
      }

      v12 = *(this + 6);
      if (v9 > v12[17])
      {
        tbb::internal::market::update_arena_priority(*(this + 15), v12, v9);
      }
    }
  }

LABEL_11:
  v13 = *(*(this + 6) + 144);
  __dmb(0xBu);
  if (*a2 != 1)
  {
    v15 = 0;
    v16 = v6 & 3;
    v17 = (v13 - 1);
    v19 = (v6 & 2) == 0 || a3 != 0;
    v20 = -1;
    do
    {
      if (v16 == 2)
      {
        v23 = *(this + 6);
        v24 = *(v23 + 128);
        LODWORD(v23) = *(v23 + 132);
        __dmb(0xBu);
        if (v24 < v23 >> 12)
        {
          return 0;
        }
      }

      v25 = *(*(this + 6) + 136);
      if (v17 && **(this + 8))
      {
        mailbox_task = tbb::internal::generic_scheduler::get_mailbox_task(this, a3);
        if (a3 && !mailbox_task)
        {
          v27 = *(this + 8);
          if (*v27 && *(v27 + 20))
          {
            *(v27 + 20) = 0;
          }

          goto LABEL_36;
        }

        if (mailbox_task)
        {
          goto LABEL_73;
        }
      }

      if (!v19)
      {
        v28 = *(this + 6) + 152;
        if (*(v28 + 8 * v25))
        {
          mailbox_task = sub_29A004050(v28, v25, (*(this + 5) + 128));
          if (mailbox_task)
          {
            goto LABEL_73;
          }
        }
      }

LABEL_36:
      if (*(this + 42) && (mailbox_task = tbb::internal::generic_scheduler::reload_tasks(this, a3)) != 0 || v7 < &v43 && v17 && (mailbox_task = tbb::internal::generic_scheduler::steal_task(this, a3)) != 0)
      {
LABEL_73:
        v38 = mailbox_task;
        v39 = *(this + 6);
        if (*(this + 11) != *(v39 + 232))
        {
          tbb::internal::observer_list::do_notify_entry_observers((v39 + 224), this + 11, (*(this + 74) & 1) == 0);
        }

        v40 = tbb::internal::the_global_observer_list(mailbox_task);
        if (*(this + 10) != v40[1])
        {
          tbb::internal::observer_list::do_notify_entry_observers(v40, this + 10, (*(this + 74) & 1) == 0);
        }

        result = v38;
        goto LABEL_78;
      }

      if (v20 == -1)
      {
        v20 = 0;
      }

      sched_yield();
      v29 = 2 * v17 + 2;
      if (v20 >= v29)
      {
        sched_yield();
        v21 = *(this + 6);
        if (*(v21 + 280))
        {
          atomic_fetch_add((v21 + 288), 1uLL);
          v30 = *(this + 6);
LABEL_46:
          v31 = *(v30 + 280);
          while (1)
          {
            v32 = v31;
            atomic_compare_exchange_strong((v30 + 280), &v32, 0);
            if (v32 == v31)
            {
              break;
            }

            if (atomic_fetch_add_explicit((v30 + 280), 0, memory_order_relaxed) != v31)
            {
              sched_yield();
              goto LABEL_46;
            }
          }

          v43 = v31;
          if (v31)
          {
            v42 = 0;
            --*(this + 44);
            if ((*(this + 74) & 3) == 2 && (v33 = *(this + 6), v34 = *(v33 + 128), LODWORD(v33) = *(v33 + 132), __dmb(0xBu), v34 >= v33 >> 12))
            {
              v35 = (*(this + 6) + 136);
            }

            else
            {
              v35 = *(this + 12);
            }

            result = tbb::internal::generic_scheduler::reload_tasks(this, &v43, &v42, *v35, a3);
            if (v43)
            {
              v36 = *(this + 42);
              v37 = v42;
              *v42 = v36;
              if (!v36)
              {
                *(this + 43) = v37;
              }

              *(this + 42) = v43;
            }

            if (result)
            {
              goto LABEL_78;
            }
          }

          v21 = *(this + 6);
        }

        if (v15 < 10)
        {
          goto LABEL_21;
        }

        if (v16 == 2)
        {
          if (tbb::internal::arena::is_out_of_work(v21))
          {
            return 0;
          }

          if (*(this + 42))
          {
            --*(this + 44);
          }

LABEL_20:
          v21 = *(this + 6);
LABEL_21:
          ++v15;
          v22 = *(v21 + 144);
          __dmb(0xBu);
          v17 = (v22 - 1);
          v20 = v29;
          goto LABEL_22;
        }

        if (*(v21 + 136) <= *(v21 + 264))
        {
          if (!*(this + 42))
          {
            goto LABEL_21;
          }

          --*(this + 44);
        }

        else
        {
          tbb::internal::arena::is_out_of_work(v21);
          if (!*(this + 42))
          {
            goto LABEL_20;
          }

          --*(this + 44);
          v21 = *(this + 6);
        }

        if (**(this + 12) > *(v21 + 136))
        {
          *(this + 12) = v21 + 136;
        }

        goto LABEL_21;
      }

LABEL_22:
      ++v20;
    }

    while (*a2 != 1);
  }

  result = 0;
  __dmb(0xBu);
LABEL_78:
  v41 = *(this + 8);
  if (v41)
  {
    if (*(v41 + 20))
    {
      *(v41 + 20) = 0;
    }
  }

  return result;
}

uint64_t sub_29A0038C4(tbb::internal::generic_scheduler *this, void *a2, tbb::task *a3, void *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (1)
  {
    v8 = *(v5 - 7);
    v9 = *(v8 + 160);
    if (v9 == **(this + 12) || (*(v5 - 11) & 0x10) != 0)
    {
      goto LABEL_20;
    }

    v10 = *(this + 6);
    if (v9 != v10[17])
    {
      tbb::internal::market::update_arena_priority(*(this + 15), v10, *(v8 + 160));
    }

    if ((*(this + 74) & 3) == 2 && (v11 = *(this + 6), v12 = *(v11 + 128), LODWORD(v11) = *(v11 + 132), __dmb(0xBu), v12 >= v11 >> 12))
    {
      v13 = (*(this + 6) + 136);
    }

    else
    {
      v13 = *(this + 12);
    }

    if (v9 < *v13)
    {
      break;
    }

    v8 = *(v5 - 7);
LABEL_20:
    *(this + 7) = v5;
    *(v5 - 5) = this;
    *(v5 - 12) = 0;
    v16 = *(v8 + 112);
    v17 = a2[2];
    if (*v16 != *v17 || *(v16 + 8) != *(v17 + 8))
    {
      if (!v17)
      {
        v17 = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
        a2[2] = v17;
        v16 = *(v8 + 112);
      }

      *v17 = *v16;
      fesetenv(a2[2]);
    }

    if (*a2 != v8)
    {
      *a2 = v8;
    }

    if (*(*(v5 - 7) + 120))
    {
      v15 = 0;
    }

    else
    {
      v19 = (*(*v5 + 16))(v5);
      v15 = v19;
      if (v19)
      {
        *(v19 - 11) &= 0x6Fu;
        *(v19 - 64) = *(v5 - 8);
      }
    }

    v20 = *(v5 - 12);
    if (v20 <= 2)
    {
      if (!*(v5 - 12))
      {
        v22 = *(v5 - 4);
        (**v5)(v5);
        if (v22)
        {
          v24 = *(v5 - 8);
          if (atomic_fetch_add(v22 - 3, 0xFFFFFFFFFFFFFFFFLL) <= 1)
          {
            __dmb(0xBu);
            if (v24)
            {
              *(v22 - 8) = v24;
            }

            if (*(v22 - 12) == 6)
            {
              tbb::internal::arena::enqueue_task(*(this + 6), v22, 0, this + 32);
            }

            else if (v15)
            {
              tbb::internal::generic_scheduler::local_spawn(this, v22, v22 - 1, v23);
            }

            else
            {
              v15 = v22;
            }
          }
        }

        sub_29A002850(this, v5);
        goto LABEL_4;
      }

      if (v20 == 1)
      {
        *(v5 - 12) = 3;
        *(v5 - 11) &= 0x6Fu;
LABEL_54:
        tbb::internal::generic_scheduler::local_spawn(this, v5, v5 - 1, a4);
      }
    }

    else if (v20 == 3)
    {
      *(v5 - 11) &= 0x6Fu;
    }

    else
    {
      if (v20 == 5)
      {
        *(v5 - 12) = 3;
      }

      else if (v20 != 6)
      {
        goto LABEL_4;
      }

      *(v5 - 11) &= 0x6Fu;
      v21 = *(v5 - 8);
      if (atomic_fetch_add(v5 - 3, 0xFFFFFFFFFFFFFFFFLL) <= 1)
      {
        __dmb(0xBu);
        if (v21)
        {
          *(v5 - 8) = v21;
        }

        if (*(v5 - 12) != 6)
        {
          if (!v15)
          {
            v15 = v5;
            goto LABEL_4;
          }

          goto LABEL_54;
        }

        tbb::internal::arena::enqueue_task(*(this + 6), v5, 0, this + 32);
      }
    }

LABEL_4:
    v5 = v15;
    if (!v15)
    {
      return 1;
    }
  }

  v14 = *(this + 42);
  if (!v14)
  {
    *(this + 43) = v5 - 40;
    *(v5 - 5) = 0;
    v14 = *(this + 42);
  }

  *(v5 - 5) = v14;
  *(this + 42) = v5;
  if (*(*(this + 5) + 8))
  {
    v15 = tbb::internal::generic_scheduler::winnow_task_pool(this, a4);
    if (!v15)
    {
      return 1;
    }

    goto LABEL_4;
  }

  v25 = *(this + 6);
  __dmb(0xBu);
  v26 = *(v25 + 216);
  __dmb(0xBu);
  if (v26 != -1)
  {
    while (1)
    {
      v27 = v26;
      atomic_compare_exchange_strong((v25 + 216), &v27, 0xFFFFFFFFFFFFFFFFLL);
      if (v27 == v26)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit((v25 + 216), 0, memory_order_relaxed);
      if (add_explicit != v26)
      {
        goto LABEL_65;
      }
    }

    add_explicit = v26;
LABEL_65:
    if (!add_explicit)
    {
      if (v26)
      {
        while (1)
        {
          v29 = 0;
          atomic_compare_exchange_strong((v25 + 216), &v29, 0xFFFFFFFFFFFFFFFFLL);
          if (!v29)
          {
            break;
          }

          if (atomic_fetch_add_explicit((v25 + 216), 0, memory_order_relaxed))
          {
            return 1;
          }
        }
      }

      tbb::internal::market::adjust_demand(*(v25 + 304), v25, *(v25 + 208));
    }
  }

  return 1;
}

void *sub_29A003C9C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(*(a1 + 40) + 136);
  v6 = -1;
  v7 = v5;
  do
  {
    while (1)
    {
      *(*(a1 + 40) + 136) = --v7;
      __dmb(0xBu);
      v8 = *(a1 + 40);
      if (v8[2] <= v7)
      {
        goto LABEL_19;
      }

      v9 = v8[1];
      if (v9)
      {
        while (1)
        {
          if (v9 != -1)
          {
            v11 = v8[19];
            while (1)
            {
              v12 = v11;
              atomic_compare_exchange_strong(v8 + 1, &v12, 0xFFFFFFFFFFFFFFFFLL);
              if (v12 == v11)
              {
                break;
              }

              add_explicit = atomic_fetch_add_explicit(v8 + 1, 0, memory_order_relaxed);
              if (add_explicit != v11)
              {
                v11 = add_explicit;
                break;
              }
            }

            v8 = *(a1 + 40);
            if (v8[19] == v11)
            {
              break;
            }
          }

          sched_yield();
          v8 = *(a1 + 40);
          v9 = v8[1];
        }
      }

      v6 = v8[2];
      if (v6 > v7)
      {
        v15 = 0;
        v8[17] = 0;
        v8[2] = 0;
        v8[1] = 0;
        if ((v4 & 1) == 0)
        {
          return v15;
        }

        goto LABEL_42;
      }

      if (v6 == v7)
      {
        v8[17] = 0;
        v8[2] = 0;
        v10 = 1;
        v6 = v7;
        v8[1] = 0;
        goto LABEL_20;
      }

      if (v8[1])
      {
        v10 = 0;
        v14 = v8[19];
        __dmb(0xBu);
        v8[1] = v14;
      }

      else
      {
LABEL_19:
        v10 = 0;
      }

LABEL_20:
      __dmb(0xBu);
      v15 = *(*(*(a1 + 40) + 152) + 8 * v7);
      if (!v15)
      {
        goto LABEL_2;
      }

      if (!a2 || *(v15 - 8) == a2)
      {
        break;
      }

      v4 = 1;
      if (v10)
      {
        goto LABEL_33;
      }
    }

    if (*(v15 - 11) != 32)
    {
      goto LABEL_34;
    }

    v16 = v15[1];
    __dmb(0xBu);
    if (v16 != 1)
    {
      while (1)
      {
        v17 = v16;
        atomic_compare_exchange_strong(v15 + 1, &v17, 2uLL);
        if (v17 == v16)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v15 + 1, 0, memory_order_relaxed) != v16)
        {
          goto LABEL_31;
        }
      }

      v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v16 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        *(a1 + 56) = v18;
        if ((v4 & 1) == 0)
        {
          (*(*v18 + 24))(v18, *(a1 + 72));
          return v18;
        }

        v15 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          goto LABEL_42;
        }

LABEL_36:
        *(*(*(a1 + 40) + 152) + 8 * v7) = 0;
        v19 = *(a1 + 40);
        __dmb(0xBu);
        *(v19 + 136) = v5;
        v20 = *(a1 + 48);
        __dmb(0xBu);
        v21 = *(v20 + 216);
        __dmb(0xBu);
        if (v21 == -1)
        {
          goto LABEL_65;
        }

        while (1)
        {
          v22 = v21;
          atomic_compare_exchange_strong((v20 + 216), &v22, 0xFFFFFFFFFFFFFFFFLL);
          if (v22 == v21)
          {
            break;
          }

          v23 = atomic_fetch_add_explicit((v20 + 216), 0, memory_order_relaxed);
          if (v23 != v21)
          {
            if (v23)
            {
              goto LABEL_65;
            }

            goto LABEL_52;
          }
        }

        if (v21)
        {
          goto LABEL_65;
        }

LABEL_52:
        if (v21)
        {
          while (1)
          {
            v30 = 0;
            atomic_compare_exchange_strong((v20 + 216), &v30, 0xFFFFFFFFFFFFFFFFLL);
            if (!v30)
            {
              break;
            }

            if (atomic_fetch_add_explicit((v20 + 216), 0, memory_order_relaxed))
            {
              goto LABEL_65;
            }
          }
        }

LABEL_64:
        v32 = v15;
        tbb::internal::market::adjust_demand(*(v20 + 304), v20, *(v20 + 208));
        v15 = v32;
        goto LABEL_65;
      }
    }

LABEL_31:
    sub_29A002850(a1, v15);
    if (v4)
    {
      *(*(*(a1 + 40) + 152) + 8 * v7) = 0;
    }

LABEL_2:
    if ((v4 & 1) == 0)
    {
      v5 = v7;
    }
  }

  while (!v10);
LABEL_33:
  v15 = 0;
LABEL_34:
  if ((v4 & 1) == 0)
  {
    return v15;
  }

  if (!v10)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (v15)
  {
    v24 = v6 + 1;
  }

  else
  {
    v24 = v6;
  }

  if (v24 < v5)
  {
    v25 = *(a1 + 40);
    v25[2] = v24;
    v25[17] = v5;
    v26 = v25[19];
    __dmb(0xBu);
    v25[1] = v26;
    v20 = *(a1 + 48);
    __dmb(0xBu);
    v27 = *(v20 + 216);
    __dmb(0xBu);
    if (v27 != -1)
    {
      while (1)
      {
        v28 = v27;
        atomic_compare_exchange_strong((v20 + 216), &v28, 0xFFFFFFFFFFFFFFFFLL);
        if (v28 == v27)
        {
          break;
        }

        v29 = atomic_fetch_add_explicit((v20 + 216), 0, memory_order_relaxed);
        if (v29 != v27)
        {
          if (v29)
          {
            goto LABEL_65;
          }

          goto LABEL_60;
        }
      }

      if (v27)
      {
        goto LABEL_65;
      }

LABEL_60:
      if (v27)
      {
        while (1)
        {
          v31 = 0;
          atomic_compare_exchange_strong((v20 + 216), &v31, 0xFFFFFFFFFFFFFFFFLL);
          if (!v31)
          {
            break;
          }

          if (atomic_fetch_add_explicit((v20 + 216), 0, memory_order_relaxed))
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }
  }

LABEL_65:
  if (*(a1 + 56) == v15)
  {
    v33 = *(a1 + 72);
    v34 = v15;
    (*(*v15 + 24))(v15, v33);
    return v34;
  }

  return v15;
}

uint64_t sub_29A004050(uint64_t a1, void *a2, unsigned int *a3)
{
  v3 = (*(a1 + 48) - 1) & (*a3 + 1);
  v4 = *(a1 + 8 * a2);
  if (!v4)
  {
    v14 = 0;
    goto LABEL_20;
  }

  v6 = a2;
  v22 = a3;
  v23 = a1 + 24;
  while (((1 << v3) & v4) == 0)
  {
LABEL_3:
    v3 = (*(a1 + 48) - 1) & (v3 + 1);
    v4 = *(a1 + 8 * v6);
    if (!v4)
    {
      v14 = 0;
      goto LABEL_19;
    }
  }

  v7 = (*(v23 + 8 * v6) + (v3 << 7));
  v8 = v7 + 6;
  v9 = ((v7 + 6) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 255 << (8 * ((v7 + 48) & 3));
LABEL_6:
  v11 = *v9 & ~v10;
  while (1)
  {
    v12 = v11;
    atomic_compare_exchange_strong(v9, &v12, v11 | (1 << (8 * ((v7 + 48) & 3))));
    if (v12 == v11)
    {
      break;
    }

    if (*v9 != v11)
    {
      if ((*v9 & v10) != 0)
      {
        goto LABEL_3;
      }

      sched_yield();
      goto LABEL_6;
    }
  }

  v13 = v7[5];
  if (!v13)
  {
    __dmb(0xBu);
    *v8 = 0;
    goto LABEL_3;
  }

  v15 = v7[1];
  v14 = *(*(v15 + ((v7[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7[4] & 0x1FFLL));
  v16 = v13 - 1;
  v17 = v7[4] + 1;
  v7[4] = v17;
  v7[5] = v16;
  if (v17 >= 0x400)
  {
    tbb::internal::deallocate_via_handler_v3(*v15, a2);
    v7[1] += 8;
    v16 = v7[5];
    v7[4] -= 512;
  }

  if (!v16)
  {
    v19 = (a1 + 8 * v6);
LABEL_22:
    v20 = *(a1 + 8 * v6);
    while (1)
    {
      v21 = v20;
      atomic_compare_exchange_strong(v19, &v21, v20 & ~(1 << v3));
      if (v21 == v20)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v19, 0, memory_order_relaxed) != v20)
      {
        sched_yield();
        goto LABEL_22;
      }
    }
  }

  __dmb(0xBu);
  *v8 = 0;
LABEL_19:
  a3 = v22;
LABEL_20:
  *a3 = v3;
  return v14;
}

void sub_29A004214(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_29A004224(uint64_t a1, uint64_t a2, tbb::task *a3)
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

  return sub_29A00428C(inited, a2, a3, v6);
}

uint64_t sub_29A00428C(tbb::internal::generic_scheduler *a1, uint64_t a2, tbb::task *a3, void *a4)
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
  while ((sub_29A004B20(a1, &v28, a3, v17) & 1) != 0)
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

void sub_29A004710(_Unwind_Exception *a1, void *a2)
{
  sub_29A000950((v2 + 16), a2);
  sub_29A000950((v2 + 8), v4);
  _Unwind_Resume(a1);
}

void *sub_29A00472C(tbb::internal::generic_scheduler *this, void *a2, uint64_t a3)
{
  v6 = *(this + 74);
  v7 = *(this + 14);
  v8 = *(this + 8);
  if (v8)
  {
    *(v8 + 20) = 1;
  }

  if ((v6 & 2) != 0)
  {
    v9 = *(*(this + 6) + 296);
    __dmb(0xBu);
    if (v9)
    {
      v10 = *(this + 6);
      while (1)
      {
        v11 = v9;
        atomic_compare_exchange_strong((v10 + 296), &v11, 0);
        if (v11 == v9)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v10 + 296), 0, memory_order_relaxed) != v9)
        {
          goto LABEL_11;
        }
      }

      v12 = *(this + 6);
      if (v9 > v12[17])
      {
        tbb::internal::market::update_arena_priority(*(this + 15), v12, v9);
      }
    }
  }

LABEL_11:
  v13 = *(*(this + 6) + 144);
  __dmb(0xBu);
  if (*a2 != 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = v6 & 3;
    v18 = (v13 - 1);
    v20 = (v6 & 2) == 0 || a3 != 0;
    do
    {
      if (v17 == 2)
      {
        v23 = *(this + 6);
        v24 = *(v23 + 128);
        LODWORD(v23) = *(v23 + 132);
        __dmb(0xBu);
        if (v24 < v23 >> 12)
        {
          return 0;
        }
      }

      v25 = *(*(this + 6) + 136);
      if (v18 && **(this + 8))
      {
        mailbox_task = tbb::internal::generic_scheduler::get_mailbox_task(this, a3);
        if (a3 && !mailbox_task)
        {
          v27 = *(this + 8);
          if (*v27 && *(v27 + 20))
          {
            *(v27 + 20) = 0;
          }

          goto LABEL_35;
        }

        if (mailbox_task)
        {
          goto LABEL_70;
        }
      }

      if (!v20)
      {
        v28 = *(this + 6) + 152;
        if (*(v28 + 8 * v25))
        {
          mailbox_task = sub_29A004050(v28, v25, (*(this + 5) + 128));
          if (mailbox_task)
          {
            goto LABEL_70;
          }
        }
      }

LABEL_35:
      if (*(this + 42) && (mailbox_task = tbb::internal::generic_scheduler::reload_tasks(this, a3)) != 0 || v7 < &v43 && v18 && (mailbox_task = tbb::internal::generic_scheduler::steal_task(this, a3)) != 0)
      {
LABEL_70:
        v38 = mailbox_task;
        v39 = *(this + 6);
        if (*(this + 11) != *(v39 + 232))
        {
          tbb::internal::observer_list::do_notify_entry_observers((v39 + 224), this + 11, (*(this + 74) & 1) == 0);
        }

        v40 = tbb::internal::the_global_observer_list(mailbox_task);
        if (*(this + 10) != v40[1])
        {
          tbb::internal::observer_list::do_notify_entry_observers(v40, this + 10, (*(this + 74) & 1) == 0);
        }

        result = v38;
        goto LABEL_75;
      }

      sched_yield();
      v29 = 2 * v18 + 2;
      if (v15 >= v29)
      {
        sched_yield();
        v21 = *(this + 6);
        if (*(v21 + 280))
        {
          atomic_fetch_add((v21 + 288), 1uLL);
          v30 = *(this + 6);
LABEL_43:
          v31 = *(v30 + 280);
          while (1)
          {
            v32 = v31;
            atomic_compare_exchange_strong((v30 + 280), &v32, 0);
            if (v32 == v31)
            {
              break;
            }

            if (atomic_fetch_add_explicit((v30 + 280), 0, memory_order_relaxed) != v31)
            {
              sched_yield();
              goto LABEL_43;
            }
          }

          v43 = v31;
          if (v31)
          {
            v42 = 0;
            --*(this + 44);
            if ((*(this + 74) & 3) == 2 && (v33 = *(this + 6), v34 = *(v33 + 128), LODWORD(v33) = *(v33 + 132), __dmb(0xBu), v34 >= v33 >> 12))
            {
              v35 = (*(this + 6) + 136);
            }

            else
            {
              v35 = *(this + 12);
            }

            result = tbb::internal::generic_scheduler::reload_tasks(this, &v43, &v42, *v35, a3);
            if (v43)
            {
              v36 = *(this + 42);
              v37 = v42;
              *v42 = v36;
              if (!v36)
              {
                *(this + 43) = v37;
              }

              *(this + 42) = v43;
            }

            if (result)
            {
              goto LABEL_75;
            }
          }

          v21 = *(this + 6);
        }

        if (v16 < 10)
        {
          goto LABEL_20;
        }

        if (v17 == 2)
        {
          if (tbb::internal::arena::is_out_of_work(v21))
          {
            return 0;
          }

          if (*(this + 42))
          {
            --*(this + 44);
          }

LABEL_19:
          v21 = *(this + 6);
LABEL_20:
          ++v16;
          v22 = *(v21 + 144);
          __dmb(0xBu);
          v18 = (v22 - 1);
          v15 = v29;
          goto LABEL_21;
        }

        if (*(v21 + 136) <= *(v21 + 264))
        {
          if (!*(this + 42))
          {
            goto LABEL_20;
          }

          --*(this + 44);
        }

        else
        {
          tbb::internal::arena::is_out_of_work(v21);
          if (!*(this + 42))
          {
            goto LABEL_19;
          }

          --*(this + 44);
          v21 = *(this + 6);
        }

        if (**(this + 12) > *(v21 + 136))
        {
          *(this + 12) = v21 + 136;
        }

        goto LABEL_20;
      }

LABEL_21:
      ++v15;
    }

    while (*a2 != 1);
  }

  result = 0;
  __dmb(0xBu);
LABEL_75:
  v41 = *(this + 8);
  if (v41)
  {
    if (*(v41 + 20))
    {
      *(v41 + 20) = 0;
    }
  }

  return result;
}

uint64_t sub_29A004B20(tbb::internal::generic_scheduler *this, uint64_t a2, tbb::task *a3, void *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (1)
  {
    v8 = *(v5 - 7);
    v9 = v8[20];
    if (v9 == **(this + 12) || (*(v5 - 11) & 0x10) != 0)
    {
      goto LABEL_20;
    }

    v10 = *(this + 6);
    if (v9 != v10[17])
    {
      tbb::internal::market::update_arena_priority(*(this + 15), v10, v8[20]);
    }

    if ((*(this + 74) & 3) == 2 && (v11 = *(this + 6), v12 = *(v11 + 128), LODWORD(v11) = *(v11 + 132), __dmb(0xBu), v12 >= v11 >> 12))
    {
      v13 = (*(this + 6) + 136);
    }

    else
    {
      v13 = *(this + 12);
    }

    if (v9 < *v13)
    {
      break;
    }

    v8 = *(v5 - 7);
LABEL_20:
    *(this + 7) = v5;
    *(v5 - 5) = this;
    *(v5 - 12) = 0;
    v16 = v8[14];
    v17 = *(a2 + 16);
    if (*v16 != *v17 || *(v16 + 8) != *(v17 + 8))
    {
      if (!v17)
      {
        v17 = tbb::internal::NFS_Allocate(1uLL, 16, 0, a4);
        *(a2 + 16) = v17;
        v16 = v8[14];
      }

      *v17 = *v16;
      fesetenv(*(a2 + 16));
      v8 = *(v5 - 7);
    }

    if (v8[15])
    {
      v15 = 0;
    }

    else
    {
      v19 = (*(*v5 + 16))(v5);
      v15 = v19;
      if (v19)
      {
        *(v19 - 11) &= 0x6Fu;
        *(v19 - 64) = *(v5 - 8);
      }
    }

    v20 = *(v5 - 12);
    if (v20 <= 2)
    {
      if (!*(v5 - 12))
      {
        v22 = *(v5 - 4);
        (**v5)(v5);
        if (v22)
        {
          v24 = *(v5 - 8);
          if (atomic_fetch_add(v22 - 3, 0xFFFFFFFFFFFFFFFFLL) <= 1)
          {
            __dmb(0xBu);
            if (v24)
            {
              *(v22 - 8) = v24;
            }

            if (*(v22 - 12) == 6)
            {
              tbb::internal::arena::enqueue_task(*(this + 6), v22, 0, this + 32);
            }

            else if (v15)
            {
              tbb::internal::generic_scheduler::local_spawn(this, v22, v22 - 1, v23);
            }

            else
            {
              v15 = v22;
            }
          }
        }

        sub_29A002850(this, v5);
        goto LABEL_4;
      }

      if (v20 == 1)
      {
        *(v5 - 12) = 3;
        *(v5 - 11) &= 0x6Fu;
LABEL_52:
        tbb::internal::generic_scheduler::local_spawn(this, v5, v5 - 1, a4);
      }
    }

    else if (v20 == 3)
    {
      *(v5 - 11) &= 0x6Fu;
    }

    else
    {
      if (v20 == 5)
      {
        *(v5 - 12) = 3;
      }

      else if (v20 != 6)
      {
        goto LABEL_4;
      }

      *(v5 - 11) &= 0x6Fu;
      v21 = *(v5 - 8);
      if (atomic_fetch_add(v5 - 3, 0xFFFFFFFFFFFFFFFFLL) <= 1)
      {
        __dmb(0xBu);
        if (v21)
        {
          *(v5 - 8) = v21;
        }

        if (*(v5 - 12) != 6)
        {
          if (!v15)
          {
            v15 = v5;
            goto LABEL_4;
          }

          goto LABEL_52;
        }

        tbb::internal::arena::enqueue_task(*(this + 6), v5, 0, this + 32);
      }
    }

LABEL_4:
    v5 = v15;
    if (!v15)
    {
      return 1;
    }
  }

  v14 = *(this + 42);
  if (!v14)
  {
    *(this + 43) = v5 - 40;
    *(v5 - 5) = 0;
    v14 = *(this + 42);
  }

  *(v5 - 5) = v14;
  *(this + 42) = v5;
  if (*(*(this + 5) + 8))
  {
    v15 = tbb::internal::generic_scheduler::winnow_task_pool(this, a4);
    if (!v15)
    {
      return 1;
    }

    goto LABEL_4;
  }

  v25 = *(this + 6);
  __dmb(0xBu);
  v26 = *(v25 + 216);
  __dmb(0xBu);
  if (v26 != -1)
  {
    while (1)
    {
      v27 = v26;
      atomic_compare_exchange_strong((v25 + 216), &v27, 0xFFFFFFFFFFFFFFFFLL);
      if (v27 == v26)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit((v25 + 216), 0, memory_order_relaxed);
      if (add_explicit != v26)
      {
        goto LABEL_63;
      }
    }

    add_explicit = v26;
LABEL_63:
    if (!add_explicit)
    {
      if (v26)
      {
        while (1)
        {
          v29 = 0;
          atomic_compare_exchange_strong((v25 + 216), &v29, 0xFFFFFFFFFFFFFFFFLL);
          if (!v29)
          {
            break;
          }

          if (atomic_fetch_add_explicit((v25 + 216), 0, memory_order_relaxed))
          {
            return 1;
          }
        }
      }

      tbb::internal::market::adjust_demand(*(v25 + 304), v25, *(v25 + 208));
    }
  }

  return 1;
}

uint64_t tbb::internal::the_global_observer_list(tbb::internal *this)
{
  if ((atomic_load_explicit(&qword_2A153EC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC38))
  {
    v2 = operator new(0x80uLL);
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    qword_2A153EC30 = v2;
    __cxa_guard_release(&qword_2A153EC38);
  }

  return qword_2A153EC30;
}

uint64_t tbb::internal::observer_proxy::get_v6_observer(tbb::internal::observer_proxy *this)
{
  if (*(this + 40) == 6)
  {
    return *(this + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t tbb::internal::observer_proxy::observer_proxy(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  __dmb(0xBu);
  *result = 1;
  if (*(*(result + 32) + 16) == 0x8000000000000000)
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  *(result + 40) = v2;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  __dmb(0xBu);
  *result = 1;
  if (*(*(result + 32) + 16) == 0x8000000000000000)
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  *(result + 40) = v2;
  return result;
}

void tbb::internal::observer_list::clear(atomic_ullong *this)
{
  v2 = this + 2;
  v14 = this + 2;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 2);
  v3 = *this;
  if (!*this)
  {
    goto LABEL_17;
  }

  do
  {
    v7 = *(v3 + 32);
    v3 = *(v3 + 16);
    if (v7)
    {
LABEL_9:
      v8 = *(v7 + 8);
      while (1)
      {
        v9 = v8;
        atomic_compare_exchange_strong((v7 + 8), &v9, 0);
        if (v9 == v8)
        {
          break;
        }

        if (atomic_fetch_add_explicit((v7 + 8), 0, memory_order_relaxed) != v8)
        {
          sched_yield();
          goto LABEL_9;
        }
      }

      if (v8)
      {
        v10 = this + 1;
        if (this[1] != v8)
        {
          v10 = (v8[2] + 24);
        }

        v4 = v8[3];
        *v10 = v4;
        v5 = (v4 + 16);
        if (*this == v8)
        {
          v6 = this;
        }

        else
        {
          v6 = v5;
        }

        *v6 = v8[2];
        operator delete(v8);
      }
    }
  }

  while (v3);
  v2 = v14;
  if (v14)
  {
LABEL_17:
    v11 = *v2;
    v12 = *v2 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v13 = v11;
      atomic_compare_exchange_strong(v2, &v13, v12);
      if (v13 == v11)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v2, 0, memory_order_relaxed) != v11)
      {
        sched_yield();
        goto LABEL_17;
      }
    }
  }

  while (*this)
  {
    sched_yield();
  }
}

tbb::internal::observer_proxy **tbb::internal::observer_list::remove(tbb::internal::observer_proxy **this, tbb::internal::observer_proxy *a2)
{
  v2 = this + 1;
  v3 = *(a2 + 3);
  if (this[1] != a2)
  {
    v2 = (*(a2 + 2) + 24);
  }

  *v2 = v3;
  v4 = (v3 + 16);
  if (*this == a2)
  {
    v4 = this;
  }

  *v4 = *(a2 + 2);
  return this;
}

uint64_t tbb::internal::observer_list::insert(atomic_ullong *this, tbb::internal::observer_proxy *a2)
{
  v4 = this + 2;
  result = tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 2);
  v6 = this;
  if (*this)
  {
    v7 = this[1];
    *(a2 + 3) = v7;
    v6 = (v7 + 16);
  }

  *v6 = a2;
  this[1] = a2;
LABEL_4:
  v8 = *v4;
  v9 = *v4 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v10 = v8;
    atomic_compare_exchange_strong(v4, &v10, v9);
    if (v10 == v8)
    {
      return result;
    }

    if (atomic_fetch_add_explicit(v4, 0, memory_order_relaxed) != v8)
    {
      result = sched_yield();
      goto LABEL_4;
    }
  }
}

void tbb::internal::observer_list::remove_ref(atomic_ullong *this, tbb::internal::observer_proxy *a2)
{
  v4 = *a2;
  __dmb(0xBu);
  if (v4 < 2)
  {
LABEL_5:
    v6 = this + 2;
    tbb::spin_rw_mutex_v3::internal_acquire_writer(this + 2);
    if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
    {
      v7 = this + 1;
      v8 = *(a2 + 3);
      if (this[1] != a2)
      {
        v7 = (*(a2 + 2) + 24);
      }

      *v7 = v8;
      v9 = (v8 + 16);
      if (*this == a2)
      {
        v9 = this;
      }

      *v9 = *(a2 + 2);
LABEL_11:
      v10 = *v6;
      v11 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v12 = v10;
        atomic_compare_exchange_strong(v6, &v12, v11);
        if (v12 == v10)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v10)
        {
          sched_yield();
          goto LABEL_11;
        }
      }

      operator delete(a2);
    }

    else
    {
LABEL_15:
      v13 = *v6;
      v14 = *v6 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v15 = v13;
        atomic_compare_exchange_strong(v6, &v15, v14);
        if (v15 == v13)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v6, 0, memory_order_relaxed) != v13)
        {
          sched_yield();
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a2, &v5, v4 - 1);
      if (v5 == v4)
      {
        break;
      }

      if (*a2 != v4)
      {
        v4 = *a2;
        if (*a2 <= 1)
        {
          goto LABEL_5;
        }
      }
    }
  }
}

void tbb::internal::observer_list::do_notify_entry_observers(atomic_ullong *this, atomic_ullong *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = this + 2;
  while (2)
  {
    v13 = v6;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v6);
    v7 = v5;
    while (1)
    {
      if (!v5)
      {
        v5 = *this;
        if (!*this)
        {
          v8 = 0;
          v10 = 0;
          v11 = v6;
          if (!v6)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_5;
      }

      v9 = *(v5 + 16);
      if (!v9)
      {
        break;
      }

      if (v5 == v7 && *(v7 + 32))
      {
        atomic_fetch_add(v7, 0xFFFFFFFF);
        v5 = v9;
        v7 = 0;
      }

      else
      {
        v5 = *(v5 + 16);
      }

LABEL_5:
      v8 = *(v5 + 32);
      if (v8)
      {
        v10 = 1;
        atomic_fetch_add(v5, 1u);
        atomic_fetch_add((v8 + 16), 1uLL);
        v11 = v6;
        if (!v6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    if (v5 != v7)
    {
      atomic_fetch_add(v5, 1u);
      if (v7)
      {
        v13 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFCLL);
        tbb::internal::observer_list::remove_ref(this, v7);
      }
    }

    v8 = 0;
    v10 = 0;
    *a2 = v5;
    v11 = v13;
    if (v13)
    {
LABEL_20:
      atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFCLL);
    }

LABEL_21:
    if (v10)
    {
      if (v7)
      {
        tbb::internal::observer_list::remove_ref(this, v7);
      }

      (**v8)(v8, a3);
      atomic_fetch_add((v8 + 16), 0xFFFFFFFFFFFFFFFFLL);
      continue;
    }

    break;
  }
}

void sub_29A005574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299FFBB38(va);
  _Unwind_Resume(a1);
}

void tbb::internal::observer_list::do_notify_exit_observers(atomic_ullong *this, atomic_ullong *a2, uint64_t a3)
{
  v6 = 0;
  v7 = this + 2;
  while (1)
  {
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v7);
    v8 = v6;
    do
    {
      if (v6)
      {
        if (v6 == a2)
        {
          if (!v6[4])
          {
            atomic_fetch_add(v7, 0xFFFFFFFFFFFFFFFCLL);
            tbb::internal::observer_list::remove_ref(this, v6);
            v11 = 0;
            v10 = 0;
            goto LABEL_21;
          }

          v11 = 0;
          v10 = 0;
          atomic_fetch_add(v6, 0xFFFFFFFF);
          v6 = 0;
          v12 = v7;
          if (!v7)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (v6 == v8 && v8[4])
        {
          atomic_fetch_add(v8, 0xFFFFFFFF);
          v8 = 0;
        }

        v9 = v6 + 2;
      }

      else
      {
        v9 = this;
      }

      v6 = *v9;
      v10 = *(*v9 + 32);
    }

    while (!v10);
    if (v6 != a2)
    {
      atomic_fetch_add(v6, 1u);
    }

    v11 = 1;
    atomic_fetch_add(v10 + 2, 1uLL);
    v12 = v7;
    if (v7)
    {
LABEL_20:
      atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFCLL);
    }

LABEL_21:
    if (!v11)
    {
      break;
    }

    if (v8)
    {
      tbb::internal::observer_list::remove_ref(this, v8);
    }

    (*(*v10 + 8))(v10, a3);
    atomic_fetch_add(v10 + 2, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void tbb::internal::task_scheduler_observer_v3::observe(tbb::internal::task_scheduler_observer_v3 *this, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_13:
    v11 = *(this + 1);
    while (1)
    {
      v12 = v11;
      atomic_compare_exchange_strong(this + 1, &v12, 0);
      if (v12 == v11)
      {
        break;
      }

      if (atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed) != v11)
      {
        sched_yield();
        goto LABEL_13;
      }
    }

    if (v11)
    {
      v13 = v11[1];
      v14 = v13 + 2;
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v13 + 2);
      v11[4] = 0;
      if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
      {
        v15 = v13 + 1;
        v16 = v11[3];
        if (v13[1] != v11)
        {
          v15 = (v11[2] + 24);
        }

        *v15 = v16;
        v17 = (v16 + 16);
        if (*v13 == v11)
        {
          v17 = v13;
        }

        *v17 = v11[2];
        operator delete(v11);
      }

LABEL_24:
      v18 = *v14;
      v19 = *v14 & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v20 = v18;
        atomic_compare_exchange_strong(v14, &v20, v19);
        if (v20 == v18)
        {
          break;
        }

        if (atomic_fetch_add_explicit(v14, 0, memory_order_relaxed) != v18)
        {
          sched_yield();
          goto LABEL_24;
        }
      }

      while (1)
      {
        v21 = *(this + 2);
        __dmb(0xBu);
        if (!v21)
        {
          break;
        }

        sched_yield();
      }
    }

    return;
  }

  if (*(this + 1))
  {
    return;
  }

  v3 = operator new(0x30uLL);
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = this;
  __dmb(0xBu);
  *v3 = 1;
  if (*(v3[4] + 16) == 0x8000000000000000)
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 40) = v4;
  *(this + 1) = v3;
  __dmb(0xBu);
  *(this + 2) = 0;
  v5 = *(this + 1);
  if (*(v5 + 40) == 6)
  {
    v6 = *(v5 + 32);
    if (v6)
    {
      if (*(v6 + 24))
      {
        inited = pthread_getspecific(tbb::internal::governor::theTLS) & 0xFFFFFFFFFFFFFFFELL;
        v8 = *(this + 1);
        v9 = *(v8[4] + 24);
        if (v9 == 1)
        {
          if (inited)
          {
            v10 = *(inited + 48);
            if (v10)
            {
              goto LABEL_53;
            }
          }

          inited = tbb::internal::governor::init_scheduler(0xFFFFFFFFLL, 0, 1);
          v9 = (inited + 48);
          goto LABEL_52;
        }

        v10 = *v9;
        if (!*v9)
        {
          if ((*(v9 + 32) & 1) == 0)
          {
            tbb::interface7::internal::task_arena_base::internal_initialize(v9);
            *(v9 + 32) = 1;
LABEL_52:
            v10 = *v9;
            v8 = *(this + 1);
            goto LABEL_53;
          }

          v10 = 0;
        }

LABEL_53:
        v35 = v10 + 28;
        v8[1] = v10 + 28;
        v36 = v10 + 30;
        tbb::spin_rw_mutex_v3::internal_acquire_writer(v10 + 30);
        if (v10[28])
        {
          v37 = v10[29];
          v8[3] = v37;
          v35 = (v37 + 16);
        }

        *v35 = v8;
        v10[29] = v8;
LABEL_56:
        v38 = *v36;
        v39 = *v36 & 0xFFFFFFFFFFFFFFFCLL;
        while (1)
        {
          v40 = v38;
          atomic_compare_exchange_strong(v36, &v40, v39);
          if (v40 == v38)
          {
            break;
          }

          if (atomic_fetch_add_explicit(v36, 0, memory_order_relaxed) != v38)
          {
            sched_yield();
            goto LABEL_56;
          }
        }

        if (inited)
        {
          v32 = *(*(this + 1) + 8);
          if ((*(inited + 48) + 224) == v32)
          {
            v33 = (inited + 88);
            if (*(inited + 88) != v32[1])
            {
              v34 = *(inited + 74);
              goto LABEL_45;
            }
          }
        }

        return;
      }
    }
  }

  v22 = tbb::internal::__TBB_InitOnce::InitializationDone;
  __dmb(0xBu);
  if ((v22 & 1) == 0)
  {
    tbb::internal::DoOneTimeInitializations(v3);
  }

  if ((atomic_load_explicit(&qword_2A153EC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC38))
  {
    v41 = operator new(0x80uLL);
    v41[6] = 0u;
    v41[7] = 0u;
    v41[4] = 0u;
    v41[5] = 0u;
    v41[2] = 0u;
    v41[3] = 0u;
    *v41 = 0u;
    v41[1] = 0u;
    qword_2A153EC30 = v41;
    __cxa_guard_release(&qword_2A153EC38);
  }

  v23 = qword_2A153EC30;
  v24 = *(this + 1);
  *(v24 + 8) = qword_2A153EC30;
  v25 = v23 + 2;
  tbb::spin_rw_mutex_v3::internal_acquire_writer(v23 + 2);
  v26 = v23;
  if (*v23)
  {
    v27 = v23[1];
    *(v24 + 24) = v27;
    v26 = (v27 + 16);
  }

  *v26 = v24;
  v23[1] = v24;
LABEL_37:
  v28 = *v25;
  v29 = *v25 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v30 = v28;
    atomic_compare_exchange_strong(v25, &v30, v29);
    if (v30 == v28)
    {
      break;
    }

    if (atomic_fetch_add_explicit(v25, 0, memory_order_relaxed) != v28)
    {
      sched_yield();
      goto LABEL_37;
    }
  }

  v31 = pthread_getspecific(tbb::internal::governor::theTLS) & 0xFFFFFFFFFFFFFFFELL;
  if (v31)
  {
    if ((atomic_load_explicit(&qword_2A153EC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC38))
    {
      v42 = operator new(0x80uLL);
      v42[6] = 0u;
      v42[7] = 0u;
      v42[4] = 0u;
      v42[5] = 0u;
      v42[2] = 0u;
      v42[3] = 0u;
      *v42 = 0u;
      v42[1] = 0u;
      qword_2A153EC30 = v42;
      __cxa_guard_release(&qword_2A153EC38);
    }

    v32 = qword_2A153EC30;
    v33 = (v31 + 80);
    if (*(v31 + 80) != *(qword_2A153EC30 + 8))
    {
      v34 = *(v31 + 74);
LABEL_45:

      tbb::internal::observer_list::do_notify_entry_observers(v32, v33, (v34 & 1) == 0);
    }
  }
}

tbb::internal *tbb::internal::__TBB_InitOnce::add_ref(tbb::internal::__TBB_InitOnce *this)
{
  if (atomic_fetch_add(&tbb::internal::__TBB_InitOnce::count, 1u))
  {
    if (qword_2A153EC48 != -1)
    {
      sub_29B284424();
    }

    v2 = qword_2A153EC40;
    if (os_log_type_enabled(qword_2A153EC40, OS_LOG_TYPE_ERROR))
    {
      sub_29B284438(v2);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {

    return tbb::internal::governor::acquire_resources(this);
  }
}

tbb::internal::governor *tbb::internal::__TBB_InitOnce::remove_ref(tbb::internal::governor *this)
{
  if (atomic_fetch_add(&tbb::internal::__TBB_InitOnce::count, 0xFFFFFFFF) == 1)
  {
    return tbb::internal::governor::release_resources(this);
  }

  return this;
}

tbb::internal *tbb::internal::DoOneTimeInitializations(tbb::internal *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = (&tbb::internal::__TBB_InitOnce::InitializationLock & 0xFFFFFFFFFFFFFFFCLL);
LABEL_2:
  v2 = *v1 & ~(255 << (8 * (&tbb::internal::__TBB_InitOnce::InitializationLock & 3)));
  while (1)
  {
    v3 = v2;
    atomic_compare_exchange_strong(v1, &v3, v2 | (1 << (8 * (&tbb::internal::__TBB_InitOnce::InitializationLock & 3))));
    if (v3 == v2)
    {
      break;
    }

    if (*v1 != v2)
    {
      this = sched_yield();
      goto LABEL_2;
    }
  }

  if (tbb::internal::__TBB_InitOnce::InitializationDone)
  {
    v4 = 0;
  }

  else
  {
    v4 = tbb::internal::__TBB_InitOnce::add_ref(this);
    v5 = getenv("TBB_VERSION");
    if (v5)
    {
      v6 = v5;
      v5 = strspn(v5, " ");
      v7 = &v5[v6];
      if (v5[v6] == 49)
      {
        v8 = v7 + 1;
        v5 = strspn(v7 + 1, " ");
        if (!v5[v8])
        {
          v5 = tbb::internal::PrintVersion(v5);
        }
      }
    }

    tbb::internal::initialize_cache_aligned_allocator(v5);
    tbb::internal::governor::initialize_rml_factory(v9);
    v10 = tbb::internal::Scheduler_OneTimeInitialization(0);
    if (!tbb::internal::governor::DefaultNumberOfThreads)
    {
      *v18 = 0x1900000006;
      v17 = 0;
      v16 = 4;
      v10 = sysctl(v18, 2u, &v17, &v16, 0, 0);
      v13 = v17;
      if (v17 <= 1)
      {
        v13 = 1;
      }

      tbb::internal::governor::DefaultNumberOfThreads = v13;
    }

    if (!tbb::internal::governor::DefaultPageSize)
    {
      v10 = tbb::internal::DefaultSystemPageSize(v10);
      tbb::internal::governor::DefaultPageSize = v10;
    }

    tbb::internal::governor::print_version_info(v10, v11, v12);
    tbb::internal::PrintExtraVersionInfo("Tools support", "disabled", v14);
    tbb::internal::__TBB_InitOnce::InitializationDone = 1;
  }

  __dmb(0xBu);
  tbb::internal::__TBB_InitOnce::InitializationLock = 0;
  return v4;
}

void *tbb::internal::itt_store_pointer_with_release_v3(void *this, void *a2, void *a3)
{
  __dmb(0xBu);
  *this = a2;
  return this;
}

uint64_t tbb::internal::itt_load_pointer_with_acquire_v3(tbb::internal *this, const void *a2)
{
  result = *this;
  __dmb(0xBu);
  return result;
}

uint64_t tbb::internal::market::app_parallelism_limit(tbb::internal::market *this)
{
  if ((atomic_load_explicit(&qword_2A153EC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC58))
  {
    v4 = operator new(0x80uLL);
    v4[2] = 0;
    *(v4 + 24) = 0;
    *v4 = &unk_2A203AFE0;
    qword_2A153EC50 = v4;
    __cxa_guard_release(&qword_2A153EC58);
  }

  v1 = qword_2A153EC50;
  v2 = *(qword_2A153EC50 + 16);
  __dmb(0xBu);
  if (v2)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A005F28()
{
  if ((atomic_load_explicit(&qword_2A153EC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC58))
  {
    v1 = operator new(0x80uLL);
    v1[2] = 0;
    *(v1 + 24) = 0;
    *v1 = &unk_2A203AFE0;
    qword_2A153EC50 = v1;
    __cxa_guard_release(&qword_2A153EC58);
  }

  return qword_2A153EC50;
}

uint64_t tbb::interface9::global_control::internal_create(tbb::interface9::global_control *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 4) >= 2)
  {
    tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/tbb_main.cpp", 0x226, "my_param < global_control::parameter_max", 0, a5);
  }

  v6 = *(sub_29A00610C() + 8 * *(this + 4));
  v7 = ((v6 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_4:
  v8 = *v7 & ~(255 << (8 * ((v6 + 24) & 3)));
  while (1)
  {
    v9 = v8;
    atomic_compare_exchange_strong(v7, &v9, v8 | (1 << (8 * ((v6 + 24) & 3))));
    if (v9 == v8)
    {
      break;
    }

    if (*v7 != v8)
    {
      sched_yield();
      goto LABEL_4;
    }
  }

  v10 = *(v6 + 16);
  __dmb(0xBu);
  if (!v10 || (result = (*(*v6 + 16))(v6, *this, *(v6 + 8)), result))
  {
    *(v6 + 8) = *this;
    result = (*(*v6 + 8))(v6);
  }

  v12 = *(v6 + 16);
  __dmb(0xBu);
  *(this + 1) = v12;
  __dmb(0xBu);
  *(v6 + 16) = this;
  __dmb(0xBu);
  *(v6 + 24) = 0;
  return result;
}

void sub_29A006100(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_29A00610C()
{
  if ((atomic_load_explicit(&qword_2A153EC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC68))
  {
    v1 = operator new(0x10uLL);
    *v1 = sub_29A005F28();
    v1[1] = sub_29A006664();
    qword_2A153EC60 = v1;
    __cxa_guard_release(&qword_2A153EC68);
  }

  return qword_2A153EC60;
}

uint64_t tbb::interface9::global_control::internal_destroy(tbb::interface9::global_control *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 4) >= 2)
  {
    tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/tbb_main.cpp", 0x238, "my_param < global_control::parameter_max", 0, a5);
  }

  result = sub_29A00610C();
  v7 = *(result + 8 * *(this + 4));
  v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_4:
  v9 = *v8 & ~(255 << (8 * ((v7 + 24) & 3)));
  while (1)
  {
    v10 = v9;
    atomic_compare_exchange_strong(v8, &v10, v9 | (1 << (8 * ((v7 + 24) & 3))));
    if (v10 == v9)
    {
      break;
    }

    if (*v8 != v9)
    {
      result = sched_yield();
      goto LABEL_4;
    }
  }

  v11 = v7[1];
  v12 = v7[2];
  __dmb(0xBu);
  v13 = v7[2];
  __dmb(0xBu);
  if (v12 != this)
  {
    goto LABEL_11;
  }

  if (v13[1])
  {
    v14 = v7[2];
    __dmb(0xBu);
    v13 = *(v14 + 8);
LABEL_11:
    v15 = *v13;
    goto LABEL_12;
  }

  v15 = -1;
LABEL_12:
  v16 = v7[2];
  __dmb(0xBu);
  if (v16)
  {
    v17 = 0;
    do
    {
      v19 = v17;
      v17 = v16;
      if (v16 == this)
      {
        v18 = *(this + 1);
        if (v19)
        {
          v19[1] = v18;
        }

        else
        {
          __dmb(0xBu);
          v7[2] = v18;
        }
      }

      else
      {
        result = (*(*v7 + 16))(v7, *v16, v15);
        if (result)
        {
          v15 = *v17;
        }
      }

      v16 = v17[1];
    }

    while (v16);
  }

  v20 = v7[2];
  __dmb(0xBu);
  if (v20)
  {
    if (v15 == v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  result = (**v7)(v7);
  v15 = result;
  if (result != v11)
  {
LABEL_25:
    v7[1] = v15;
    result = (*(*v7 + 8))(v7);
  }

LABEL_26:
  __dmb(0xBu);
  *(v7 + 24) = 0;
  return result;
}

void sub_29A006398(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t tbb::interface9::global_control::active_value(tbb::interface9::global_control *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = this;
  if (this >= 2)
  {
    tbb::assertion_failure("/Library/Caches/com.apple.xbs/Sources/USDLib/oneTBB-2020.3/./src/tbb/tbb_main.cpp", 0x25E, "param < global_control::parameter_max", 0, a5);
  }

  v6 = *(**(sub_29A00610C() + 8 * v5) + 24);

  return v6();
}

os_log_t sub_29A006424()
{
  result = os_log_create("com.apple.usdlib", "tbbmain");
  qword_2A153EC40 = result;
  return result;
}

uint64_t sub_29A006454()
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

  return v0;
}

uint64_t sub_29A006510(uint64_t a1)
{
  v2 = *(a1 + 16);
  __dmb(0xBu);
  if (v2)
  {
    v3 = (&tbb::internal::market::theMarketMutex & 0xFFFFFFFFFFFFFFFCLL);
LABEL_3:
    v4 = *v3 & ~(255 << (8 * (&tbb::internal::market::theMarketMutex & 3)));
    while (1)
    {
      v5 = v4;
      atomic_compare_exchange_strong(v3, &v5, v4 | (1 << (8 * (&tbb::internal::market::theMarketMutex & 3))));
      if (v5 == v4)
      {
        break;
      }

      if (*v3 != v4)
      {
        sched_yield();
        goto LABEL_3;
      }
    }

    if (tbb::internal::market::theMarket)
    {
      v6 = *(tbb::internal::market::theMarket + 24);
      __dmb(0xBu);
      LOBYTE(tbb::internal::market::theMarketMutex) = 0;
      if (v6)
      {
        if ((v6 + 1) < *(a1 + 8))
        {
          return v6 + 1;
        }

        else
        {
          return *(a1 + 8);
        }
      }
    }

    else
    {
      __dmb(0xBu);
      LOBYTE(tbb::internal::market::theMarketMutex) = 0;
    }

    return *(a1 + 8);
  }

  v8 = **a1;

  return v8();
}

uint64_t sub_29A00662C(uint64_t a1)
{
  v1 = *(a1 + 16);
  __dmb(0xBu);
  if (v1)
  {
    return *(a1 + 8);
  }

  else
  {
    return (**a1)(a1);
  }
}

uint64_t sub_29A006664()
{
  if ((atomic_load_explicit(&qword_2A153EC78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EC78))
  {
    v1 = operator new(0x80uLL);
    v1[2] = 0;
    *(v1 + 24) = 0;
    *v1 = &unk_2A203B068;
    qword_2A153EC70 = v1;
    __cxa_guard_release(&qword_2A153EC78);
  }

  return qword_2A153EC70;
}

atomic_ullong *tbb::internal::concurrent_vector_base::internal_grow_to_at_least(atomic_ullong *this, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v7 = *this;
  __dmb(0xBu);
  if (v7 < a2)
  {
    while (1)
    {
      v8 = v7;
      atomic_compare_exchange_strong(this, &v8, a2);
      if (v8 == v7)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(this, 0, memory_order_relaxed);
      if (add_explicit != v7)
      {
        v7 = add_explicit;
        if (add_explicit >= a2)
        {
          return this;
        }
      }
    }

    return tbb::internal::concurrent_vector_base::internal_grow(this, v7, a2, a3, a4);
  }

  return this;
}

uint64_t tbb::internal::concurrent_vector_base::internal_grow(tbb::internal::concurrent_vector_base *this, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v9 = (this + 16);
  do
  {
    v16 = a2 | 8;
    if (HIDWORD(a2))
    {
      v16 = HIDWORD(a2);
    }

    if (v16 >= 0x10000)
    {
      v17 = (32 * (HIDWORD(a2) != 0)) | 0x10;
    }

    else
    {
      v17 = 32 * (HIDWORD(a2) != 0);
    }

    if (v16 >= 0x10000)
    {
      v16 >>= 16;
    }

    if (v16 >= 0x100)
    {
      v17 |= 8uLL;
      v16 >>= 8;
    }

    if (v16 >= 0x10)
    {
      v17 |= 4uLL;
      v16 >>= 4;
    }

    if (v16 >= 4)
    {
      v17 += 2;
      v16 >>= 2;
    }

    v18 = v17 + ((v16 >> 1) & 1);
    v19 = v18 - 3;
    v20 = 8 << (v18 - 3);
    if (v18 == 3)
    {
      v21 = 16;
    }

    else
    {
      v21 = v20;
    }

    if (v19 >= 2)
    {
      v22 = *(this + 1);
      __dmb(0xBu);
      if (v9 == v22)
      {
        v24 = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
        *v24 = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *(v24 + 48) = 0u;
        *(v24 + 64) = 0u;
        *(v24 + 80) = 0u;
        *(v24 + 96) = 0u;
        *(v24 + 112) = 0u;
        *(v24 + 128) = 0u;
        *(v24 + 144) = 0u;
        *(v24 + 160) = 0u;
        *(v24 + 176) = 0u;
        *(v24 + 192) = 0u;
        *(v24 + 208) = 0u;
        *(v24 + 224) = 0u;
        *(v24 + 240) = 0u;
        *(v24 + 256) = 0u;
        *(v24 + 272) = 0u;
        *(v24 + 288) = 0u;
        *(v24 + 304) = 0u;
        *(v24 + 320) = 0u;
        *(v24 + 336) = 0u;
        *(v24 + 352) = 0u;
        *(v24 + 368) = 0u;
        *(v24 + 384) = 0u;
        *(v24 + 400) = 0u;
        *(v24 + 416) = 0u;
        *(v24 + 432) = 0u;
        *(v24 + 448) = 0u;
        *(v24 + 464) = 0u;
        *(v24 + 480) = 0u;
        *(v24 + 496) = 0u;
        while (!*v9 || !*(this + 3))
        {
          sched_yield();
        }

        *v24 = *v9;
        *(v24 + 8) = *(this + 3);
        while (1)
        {
          v25 = v22;
          atomic_compare_exchange_strong(this + 1, &v25, v24);
          if (v25 == v22)
          {
            break;
          }

          if (atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed) != v22)
          {
            tbb::internal::NFS_Free(v24, v23);
            break;
          }
        }
      }
    }

    v10 = (v20 & 0xFFFFFFF0);
    v11 = *(this + 1);
    __dmb(0xBu);
    v12 = *(v11 + 8 * v19);
    if (!v12)
    {
      if (a2 == (v20 & 0xFFFFFFF0))
      {
        v12 = tbb::internal::NFS_Allocate(v21, a4, 0, a4);
        *(v11 + 8 * v19) = v12;
      }

      else
      {
        while (!*(v11 + 8 * v19))
        {
          sched_yield();
        }

        v12 = *(v11 + 8 * v19);
      }
    }

    v13 = a2 - v10;
    if (v21 >= a3 - v10)
    {
      v14 = a3 - v10;
    }

    else
    {
      v14 = v21;
    }

    result = a5(v12 + v13 * a4, v14 - v13);
    a2 = v14 + v10;
  }

  while (a2 < a3);
  return result;
}

uint64_t tbb::internal::concurrent_vector_base::helper::extend_segment(tbb::internal::concurrent_vector_base::helper *this, tbb::internal::concurrent_vector_base *a2, uint64_t a3, void *a4)
{
  result = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
  v7 = result;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 336) = 0u;
  *(result + 352) = 0u;
  *(result + 368) = 0u;
  *(result + 384) = 0u;
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = 0u;
  *(result + 464) = 0u;
  v8 = this + 16;
  *(result + 480) = 0u;
  *(result + 496) = 0u;
  while (!*v8 || !*(this + 3))
  {
    result = sched_yield();
  }

  *v7 = *v8;
  *(v7 + 1) = *(this + 3);
  while (1)
  {
    v9 = this + 16;
    atomic_compare_exchange_strong(this + 1, &v9, v7);
    if (v9 == v8)
    {
      break;
    }

    if (atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed) != v8)
    {

      return tbb::internal::NFS_Free(v7, v6);
    }
  }

  return result;
}

uint64_t tbb::internal::concurrent_vector_base::internal_capacity(tbb::internal::concurrent_vector_base *this)
{
  v1 = 0;
  v2 = *(this + 1);
  __dmb(0xBu);
  v3 = (this + 16) == v2;
  v4 = 64;
  if (v3)
  {
    v4 = 2;
  }

  while (1)
  {
    v5 = *(this + 1);
    __dmb(0xBu);
    if (!*(v5 + 8 * v1))
    {
      break;
    }

    if (v4 == ++v1)
    {
      LOBYTE(v1) = v4;
      return ((8 << v1) & 0xFFFFFFF0);
    }
  }

  return ((8 << v1) & 0xFFFFFFF0);
}

uint64_t tbb::internal::concurrent_vector_base::internal_reserve(uint64_t this, unint64_t a2, uint64_t a3, void *a4)
{
  if (a2 > a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_299FF7E84(exception, "argument to concurrent_vector::reserve exceeds concurrent_vector::max_size()");
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  v6 = this;
  v7 = 0;
  v8 = *(this + 8);
  __dmb(0xBu);
  v9 = (this + 16);
  v10 = this + 16 == v8;
  v11 = 64;
  if (v10)
  {
    v11 = 2;
  }

  while (1)
  {
    v12 = *(this + 8);
    __dmb(0xBu);
    if (!*(v12 + 8 * v7))
    {
      break;
    }

    if (v11 == ++v7)
    {
      v7 = v11;
      break;
    }
  }

  for (i = 8 << v7; ((8 << v7) & 0xFFFFFFF0) < a2; i = 8 << v7)
  {
    if (v7 >= 2)
    {
      v16 = *(v6 + 8);
      __dmb(0xBu);
      if (v9 == v16)
      {
        v18 = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
        *v18 = 0u;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
        *(v18 + 48) = 0u;
        *(v18 + 64) = 0u;
        *(v18 + 80) = 0u;
        *(v18 + 96) = 0u;
        *(v18 + 112) = 0u;
        *(v18 + 128) = 0u;
        *(v18 + 144) = 0u;
        *(v18 + 160) = 0u;
        *(v18 + 176) = 0u;
        *(v18 + 192) = 0u;
        *(v18 + 208) = 0u;
        *(v18 + 224) = 0u;
        *(v18 + 240) = 0u;
        *(v18 + 256) = 0u;
        *(v18 + 272) = 0u;
        *(v18 + 288) = 0u;
        *(v18 + 304) = 0u;
        *(v18 + 320) = 0u;
        *(v18 + 336) = 0u;
        *(v18 + 352) = 0u;
        *(v18 + 368) = 0u;
        *(v18 + 384) = 0u;
        *(v18 + 400) = 0u;
        *(v18 + 416) = 0u;
        *(v18 + 432) = 0u;
        *(v18 + 448) = 0u;
        *(v18 + 464) = 0u;
        *(v18 + 480) = 0u;
        *(v18 + 496) = 0u;
        while (!*v9 || !*(v6 + 24))
        {
          sched_yield();
        }

        *v18 = *v9;
        *(v18 + 8) = *(v6 + 24);
        while (1)
        {
          v19 = v16;
          atomic_compare_exchange_strong((v6 + 8), &v19, v18);
          if (v19 == v16)
          {
            break;
          }

          if (atomic_fetch_add_explicit((v6 + 8), 0, memory_order_relaxed) != v16)
          {
            tbb::internal::NFS_Free(v18, v17);
            break;
          }
        }
      }
    }

    if (v7)
    {
      v14 = i;
    }

    else
    {
      v14 = 16;
    }

    this = tbb::internal::NFS_Allocate(v14, a3, 0, a4);
    v15 = *(v6 + 8);
    __dmb(0xBu);
    *(v15 + 8 * v7++) = this;
  }

  return this;
}

unint64_t *tbb::internal::concurrent_vector_base::internal_copy(unint64_t *this, const tbb::internal::concurrent_vector_base *a2, uint64_t a3, void (*a4)(void *, const void *, unint64_t))
{
  v4 = *a2;
  __dmb(0xBu);
  *this = v4;
  v5 = this + 2;
  __dmb(0xBu);
  this[1] = (this + 2);
  if (v4)
  {
    v8 = this;
    v9 = 0;
    v10 = 0;
    v11 = 8;
    do
    {
      if (v10 >= 2)
      {
        v19 = v8[1];
        __dmb(0xBu);
        if (v5 == v19)
        {
          v21 = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
          *v21 = 0u;
          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
          *(v21 + 48) = 0u;
          *(v21 + 64) = 0u;
          *(v21 + 80) = 0u;
          *(v21 + 96) = 0u;
          *(v21 + 112) = 0u;
          *(v21 + 128) = 0u;
          *(v21 + 144) = 0u;
          *(v21 + 160) = 0u;
          *(v21 + 176) = 0u;
          *(v21 + 192) = 0u;
          *(v21 + 208) = 0u;
          *(v21 + 224) = 0u;
          *(v21 + 240) = 0u;
          *(v21 + 256) = 0u;
          *(v21 + 272) = 0u;
          *(v21 + 288) = 0u;
          *(v21 + 304) = 0u;
          *(v21 + 320) = 0u;
          *(v21 + 336) = 0u;
          *(v21 + 352) = 0u;
          *(v21 + 368) = 0u;
          *(v21 + 384) = 0u;
          *(v21 + 400) = 0u;
          *(v21 + 416) = 0u;
          *(v21 + 432) = 0u;
          *(v21 + 448) = 0u;
          *(v21 + 464) = 0u;
          *(v21 + 480) = 0u;
          *(v21 + 496) = 0u;
          while (!*v5 || !v8[3])
          {
            sched_yield();
          }

          *v21 = *v5;
          *(v21 + 8) = v8[3];
          while (1)
          {
            v22 = v19;
            atomic_compare_exchange_strong(v8 + 1, &v22, v21);
            if (v22 == v19)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v8 + 1, 0, memory_order_relaxed) != v19)
            {
              tbb::internal::NFS_Free(v21, v20);
              break;
            }
          }
        }
      }

      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 16;
      }

      v13 = tbb::internal::NFS_Allocate(v12, a3, 0, a4);
      v14 = v8[1];
      __dmb(0xBu);
      *(v14 + 8 * v10) = v13;
      if (v12 >= v4 - v9)
      {
        v15 = v4 - v9;
      }

      else
      {
        v15 = v12;
      }

      v16 = v8[1];
      __dmb(0xBu);
      v17 = *(v16 + 8 * v10);
      v18 = *(a2 + 1);
      __dmb(0xBu);
      this = (a4)(v17, *(v18 + 8 * v10++), v15);
      v11 = 8 << v10;
      v9 = ((8 << v10) & 0xFFFFFFF0);
    }

    while (v4 > v9);
  }

  return this;
}

uint64_t tbb::internal::concurrent_vector_base::internal_assign(uint64_t this, const tbb::internal::concurrent_vector_base *a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t), void (*a5)(void *, const void *, unint64_t), uint64_t (*a6)(uint64_t, uint64_t, unint64_t))
{
  v7 = this;
  v8 = *a2;
  __dmb(0xBu);
  v9 = *this;
  __dmb(0xBu);
  if (v9 > v8)
  {
    do
    {
      v11 = *v7;
      __dmb(0xBu);
      v12 = --v11 | 8;
      v13 = HIDWORD(v11);
      v14 = v13 != 0;
      if (!v13)
      {
        v13 = v12;
      }

      if (v13 >= 0x10000)
      {
        v15 = (32 * v14) | 0x10;
      }

      else
      {
        v15 = 32 * v14;
      }

      if (v13 >= 0x10000)
      {
        v13 >>= 16;
      }

      if (v13 >= 0x100)
      {
        v15 |= 8uLL;
        v13 >>= 8;
      }

      if (v13 >= 0x10)
      {
        v15 |= 4uLL;
        v13 >>= 4;
      }

      if (v13 >= 4)
      {
        v15 += 2;
        v13 >>= 2;
      }

      v16 = v15 + ((v13 >> 1) & 1) - 3;
      v17 = ((8 << v16) & 0xFFFFFFF0);
      v18 = v7[1];
      __dmb(0xBu);
      v19 = *(v18 + 8 * v16);
      if (v17 <= v8)
      {
        v20 = v8;
      }

      else
      {
        v20 = v17;
      }

      v21 = v19 + (v20 - v17) * a3;
      v22 = *v7;
      __dmb(0xBu);
      this = a4(v21, v22 - v20);
      __dmb(0xBu);
      *v7 = v20;
      v23 = *v7;
      __dmb(0xBu);
    }

    while (v23 > v8);
  }

  v24 = *v7;
  __dmb(0xBu);
  *v7 = v8;
  if (v8)
  {
    v25 = 0;
    v26 = 0;
    v27 = v7 + 2;
    v28 = 8;
    while (1)
    {
      if (v26 >= 2)
      {
        v29 = v7[1];
        __dmb(0xBu);
        if (v27 == v29)
        {
          this = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
          v31 = this;
          *this = 0u;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 64) = 0u;
          *(this + 80) = 0u;
          *(this + 96) = 0u;
          *(this + 112) = 0u;
          *(this + 128) = 0u;
          *(this + 144) = 0u;
          *(this + 160) = 0u;
          *(this + 176) = 0u;
          *(this + 192) = 0u;
          *(this + 208) = 0u;
          *(this + 224) = 0u;
          *(this + 240) = 0u;
          *(this + 256) = 0u;
          *(this + 272) = 0u;
          *(this + 288) = 0u;
          *(this + 304) = 0u;
          *(this + 320) = 0u;
          *(this + 336) = 0u;
          *(this + 352) = 0u;
          *(this + 368) = 0u;
          *(this + 384) = 0u;
          *(this + 400) = 0u;
          *(this + 416) = 0u;
          *(this + 432) = 0u;
          *(this + 448) = 0u;
          *(this + 464) = 0u;
          *(this + 480) = 0u;
          *(this + 496) = 0u;
          while (!*v27 || !v7[3])
          {
            this = sched_yield();
          }

          *v31 = *v27;
          *(v31 + 1) = v7[3];
          while (1)
          {
            v32 = v29;
            atomic_compare_exchange_strong(v7 + 1, &v32, v31);
            if (v32 == v29)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v7 + 1, 0, memory_order_relaxed) != v29)
            {
              this = tbb::internal::NFS_Free(v31, v30);
              break;
            }
          }
        }
      }

      if (v26)
      {
        v33 = v28;
      }

      else
      {
        v33 = 16;
      }

      v34 = v7[1];
      __dmb(0xBu);
      if (!*(v34 + 8 * v26))
      {
        this = tbb::internal::NFS_Allocate(v33, a3, 0, a4);
        v35 = v7[1];
        __dmb(0xBu);
        *(v35 + 8 * v26) = this;
      }

      if (v33 >= v8 - v25)
      {
        v33 = v8 - v25;
      }

      if (v24 > v25)
      {
        break;
      }

      v40 = 0;
      if (v33)
      {
        goto LABEL_46;
      }

LABEL_21:
      v28 = 8 << ++v26;
      v25 = ((8 << v26) & 0xFFFFFFF0);
      if (v8 <= v25)
      {
        return this;
      }
    }

    if (v24 - v25 >= v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = v24 - v25;
    }

    v37 = v7[1];
    __dmb(0xBu);
    v38 = *(v37 + 8 * v26);
    v39 = *(a2 + 1);
    __dmb(0xBu);
    this = (a5)(v38, *(v39 + 8 * v26), v36);
    v33 -= v36;
    v40 = v36 * a3;
    if (!v33)
    {
      goto LABEL_21;
    }

LABEL_46:
    v41 = v7[1];
    __dmb(0xBu);
    v42 = *(v41 + 8 * v26);
    v43 = *(a2 + 1);
    __dmb(0xBu);
    this = a6(v42 + v40, *(v43 + 8 * v26) + v40, v33);
    goto LABEL_21;
  }

  return this;
}

unint64_t tbb::internal::concurrent_vector_base::internal_push_back(atomic_ullong *this, uint64_t a2, unint64_t *a3, void *a4)
{
  add = atomic_fetch_add(this, 1uLL);
  *a3 = add;
  v7 = add | 8;
  if (HIDWORD(add))
  {
    v7 = HIDWORD(add);
  }

  if (v7 >= 0x10000)
  {
    v8 = (32 * (HIDWORD(add) != 0)) | 0x10;
  }

  else
  {
    v8 = 32 * (HIDWORD(add) != 0);
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v8 |= 8uLL;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v8 |= 4uLL;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v8 += 2;
    v7 >>= 2;
  }

  v9 = v8 + ((v7 >> 1) & 1) - 3;
  v10 = (8 << v9) & 0xFFFFFFF0;
  if (v9 >= 2)
  {
    v11 = this[1];
    __dmb(0xBu);
    v12 = this + 2;
    if (this + 2 == v11)
    {
      v14 = tbb::internal::NFS_Allocate(0x40uLL, 8, 0, a4);
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 96) = 0u;
      *(v14 + 112) = 0u;
      *(v14 + 128) = 0u;
      *(v14 + 144) = 0u;
      *(v14 + 160) = 0u;
      *(v14 + 176) = 0u;
      *(v14 + 192) = 0u;
      *(v14 + 208) = 0u;
      *(v14 + 224) = 0u;
      *(v14 + 240) = 0u;
      *(v14 + 256) = 0u;
      *(v14 + 272) = 0u;
      *(v14 + 288) = 0u;
      *(v14 + 304) = 0u;
      *(v14 + 320) = 0u;
      *(v14 + 336) = 0u;
      *(v14 + 352) = 0u;
      *(v14 + 368) = 0u;
      *(v14 + 384) = 0u;
      *(v14 + 400) = 0u;
      *(v14 + 416) = 0u;
      *(v14 + 432) = 0u;
      *(v14 + 448) = 0u;
      *(v14 + 464) = 0u;
      *(v14 + 480) = 0u;
      *(v14 + 496) = 0u;
      while (!*v12 || !this[3])
      {
        sched_yield();
      }

      *v14 = *v12;
      *(v14 + 8) = this[3];
      while (1)
      {
        v15 = v11;
        atomic_compare_exchange_strong(this + 1, &v15, v14);
        if (v15 == v11)
        {
          break;
        }

        if (atomic_fetch_add_explicit(this + 1, 0, memory_order_relaxed) != v11)
        {
          tbb::internal::NFS_Free(v14, v13);
          break;
        }
      }
    }
  }

  v16 = this[1];
  __dmb(0xBu);
  v17 = *(v16 + 8 * v9);
  if (!v17)
  {
    if (add == v10)
    {
      if (v9)
      {
        v18 = 8 << v9;
      }

      else
      {
        v18 = 16;
      }

      v17 = tbb::internal::NFS_Allocate(v18, a2, 0, a4);
      *(v16 + 8 * v9) = v17;
    }

    else
    {
      while (!*(v16 + 8 * v9))
      {
        sched_yield();
      }

      v17 = *(v16 + 8 * v9);
    }
  }

  return v17 + (add - v10) * a2;
}

unint64_t tbb::internal::concurrent_vector_base::internal_grow_by(atomic_ullong *this, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  add = atomic_fetch_add(this, a2);
  tbb::internal::concurrent_vector_base::internal_grow(this, add, add + a2, a3, a4);
  return add;
}

tbb::internal *tbb::internal::concurrent_vector_base::internal_clear(tbb::internal *this, void (*a2)(void *, unint64_t), int a3)
{
  v4 = this;
  v5 = *this;
  __dmb(0xBu);
  *this = 0;
  if (v5)
  {
    do
    {
      v7 = (v5 - 1) >> 32;
      if (v5 < 0x100000001)
      {
        v7 = (v5 - 1) | 8;
      }

      if (v7 >= 0x10000)
      {
        v8 = (32 * (v5 > 0x100000000)) | 0x10;
      }

      else
      {
        v8 = 32 * (v5 > 0x100000000);
      }

      if (v7 >= 0x10000)
      {
        v7 >>= 16;
      }

      if (v7 >= 0x100)
      {
        v8 |= 8uLL;
        v7 >>= 8;
      }

      if (v7 >= 0x10)
      {
        v8 |= 4uLL;
        v7 >>= 4;
      }

      if (v7 >= 4)
      {
        v8 += 2;
        v7 >>= 2;
      }

      v9 = v8 + ((v7 >> 1) & 1) - 3;
      v10 = *(v4 + 1);
      __dmb(0xBu);
      v11 = (8 << v9) & 0xFFFFFFF0;
      this = (a2)(*(v10 + 8 * v9), v5 - v11);
      v5 = v11;
    }

    while (v11);
  }

  if (a3)
  {
    v12 = 0;
    v13 = *(v4 + 1);
    __dmb(0xBu);
    v14 = (v4 + 16);
    v15 = (v4 + 16) == v13;
    v16 = 64;
    if (v15)
    {
      v16 = 2;
    }

    while (1)
    {
      v17 = *(v4 + 1);
      __dmb(0xBu);
      if (!*(v17 + 8 * v12))
      {
        break;
      }

      if (v16 == ++v12)
      {
        v12 = v16;
        goto LABEL_23;
      }
    }

    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_23:
    v18 = v12 - 1;
    do
    {
      v19 = *(v4 + 1);
      __dmb(0xBu);
      v20 = *(v19 + 8 * v18);
      *(v19 + 8 * v18) = 0;
      tbb::internal::NFS_Free(v20, a2);
      --v18;
    }

    while (v18 != -1);
LABEL_25:
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    this = *(v4 + 1);
    __dmb(0xBu);
    if (v14 != this)
    {
      __dmb(0xBu);
      *(v4 + 1) = v14;

      return tbb::internal::NFS_Free(this, a2);
    }
  }

  return this;
}

uint64_t tbb::internal::micro_queue::push(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a3 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(a4 + 24);
  v9 = (v8 - 1) & (a3 >> 3);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = operator new(*(a4 + 32) * v8 + 16);
    *v10 = 0;
    v10[1] = 0;
  }

  v11 = v7 + 8;
  while (1)
  {
    v12 = *(a1 + 24);
    __dmb(0xBu);
    if (v12 == v7)
    {
      break;
    }

    sched_yield();
  }

  if (v10)
  {
    v13 = ((a1 + 32) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_9:
    v14 = *v13 & ~(255 << (8 * ((a1 + 32) & 3)));
    while (1)
    {
      v15 = v14;
      atomic_compare_exchange_strong(v13, &v15, v14 | (1 << (8 * ((a1 + 32) & 3))));
      if (v15 == v14)
      {
        break;
      }

      if (*v13 != v14)
      {
        sched_yield();
        goto LABEL_9;
      }
    }

    v16 = *(a1 + 16);
    __dmb(0xBu);
    if (v16)
    {
      *v16 = v10;
    }

    else
    {
      __dmb(0xBu);
      *a1 = v10;
    }

    __dmb(0xBu);
    *(a1 + 16) = v10;
    __dmb(0xBu);
    *(a1 + 32) = 0;
  }

  else
  {
    v10 = *(a1 + 16);
    __dmb(0xBu);
  }

  result = (**a4)(a4, v10, v9, a2);
  v10[1] |= 1 << v9;
  __dmb(0xBu);
  *(a1 + 24) = v11;
  return result;
}

void sub_29A0076FC(_Unwind_Exception *a1)
{
  __dmb(0xBu);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

BOOL tbb::internal::micro_queue::pop(tbb::internal::micro_queue *this, void *a2, unint64_t a3, tbb::internal::concurrent_queue_base *a4)
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
  v15 = *(v11 + 8) & (1 << v13);
  if (v15)
  {
    (*(*a4 + 8))(a4, a2);
  }

  sub_29A007F10(v17);
  return v15 != 0;
}

void sub_29A007804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A007F10(va);
  _Unwind_Resume(a1);
}

tbb::internal::concurrent_queue_base *tbb::internal::concurrent_queue_base::concurrent_queue_base(tbb::internal::concurrent_queue_base *this, unint64_t a2, uint64_t a3, void *a4)
{
  *this = &unk_2A203B0B0;
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
  v8 = tbb::internal::NFS_Allocate(1uLL, 576, 0, a4);
  *(this + 1) = v8;
  bzero(v8, 0x240uLL);
  *(this + 4) = a2;
  return this;
}

void tbb::internal::concurrent_queue_base::~concurrent_queue_base(tbb::internal::concurrent_queue_base *this, void *a2)
{
  *this = &unk_2A203B0B0;
  v3 = *(*(this + 1) + 272);
  __dmb(0xBu);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(*(this + 1) + 312);
  __dmb(0xBu);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(*(this + 1) + 352);
  __dmb(0xBu);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(*(this + 1) + 392);
  __dmb(0xBu);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(*(this + 1) + 432);
  __dmb(0xBu);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(*(this + 1) + 472);
  __dmb(0xBu);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(*(this + 1) + 512);
  __dmb(0xBu);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(*(this + 1) + 552);
  __dmb(0xBu);
  if (v10)
  {
    operator delete(v10);
  }

  tbb::internal::NFS_Free(*(this + 1), a2);
}

uint64_t tbb::internal::concurrent_queue_base::internal_push(tbb::internal::concurrent_queue_base *this, uint64_t a2)
{
  v4 = *(this + 1);
  add = atomic_fetch_add(v4 + 16, 1uLL);
  if (*(this + 2) != 0x7FFFFFFFFFFFFFFFLL)
  {
    while (1)
    {
      v7 = *v4;
      __dmb(0xBu);
      if ((add - v7) < *(this + 2))
      {
        break;
      }

      sched_yield();
    }
  }

  return tbb::internal::micro_queue::push(&v4[5 * ((3 * add) & 7) + 32], a2, add, this);
}

BOOL tbb::internal::concurrent_queue_base::internal_pop(tbb::internal::concurrent_queue_base *this, void *a2)
{
  v4 = *(this + 1);
  do
  {
    add = atomic_fetch_add(v4, 1uLL);
    result = tbb::internal::micro_queue::pop(&v4[5 * ((3 * add) & 7) + 32], a2, add, this);
  }

  while (!result);
  return result;
}

BOOL tbb::internal::concurrent_queue_base::internal_pop_if_present(tbb::internal::concurrent_queue_base *this, void *a2)
{
  v4 = *(this + 1);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 > v5;
    if (v6 <= v5)
    {
      break;
    }

    while (1)
    {
      v8 = v5;
      atomic_compare_exchange_strong(v4, &v8, v5 + 1);
      if (v8 == v5)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v4, 0, memory_order_relaxed) != v5)
      {
        sched_yield();
        v5 = *v4;
        __dmb(0xBu);
        v9 = v4[16];
        __dmb(0xBu);
        if (v9 <= v5)
        {
          return 0;
        }
      }
    }

    if (tbb::internal::micro_queue::pop(&v4[5 * ((3 * v5) & 7) + 32], a2, v5, this))
    {
      return v7;
    }
  }

  return 0;
}

uint64_t tbb::internal::concurrent_queue_base::internal_push_if_not_full(tbb::internal::concurrent_queue_base *this, uint64_t a2)
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

    if (atomic_fetch_add_explicit(v2 + 16, 0, memory_order_relaxed) != v3)
    {
      v7 = a2;
      sched_yield();
      a2 = v7;
      result = 0;
      v3 = v2[16];
      __dmb(0xBu);
      v9 = *v2;
      __dmb(0xBu);
      if ((v3 - v9) >= *(this + 2))
      {
        return result;
      }
    }
  }

  tbb::internal::micro_queue::push(&v2[5 * ((3 * v3) & 7) + 32], a2, v3, this);
  return 1;
}

uint64_t tbb::internal::concurrent_queue_base::internal_size(tbb::internal::concurrent_queue_base *this)
{
  v1 = *(*(this + 1) + 128);
  __dmb(0xBu);
  v2 = **(this + 1);
  __dmb(0xBu);
  return v1 - v2;
}

uint64_t tbb::internal::concurrent_queue_base::internal_set_capacity(uint64_t this, unint64_t a2)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a2;
  }

  *(this + 16) = v2;
  return this;
}

tbb::internal::concurrent_queue_iterator_base *tbb::internal::concurrent_queue_iterator_base::concurrent_queue_iterator_base(tbb::internal::concurrent_queue_iterator_base *this, const tbb::internal::concurrent_queue_base *a2)
{
  v4 = operator new(0x50uLL);
  v5 = **(a2 + 1);
  __dmb(0xBu);
  *v4 = v5;
  v4[1] = a2;
  v6 = *(a2 + 1);
  v7 = v6[32];
  __dmb(0xBu);
  v4[2] = v7;
  v8 = v6[37];
  __dmb(0xBu);
  v4[3] = v8;
  v9 = v6[42];
  __dmb(0xBu);
  v4[4] = v9;
  v10 = v6[47];
  __dmb(0xBu);
  v4[5] = v10;
  v11 = v6[52];
  __dmb(0xBu);
  v4[6] = v11;
  v12 = v6[57];
  __dmb(0xBu);
  v4[7] = v12;
  v13 = v6[62];
  __dmb(0xBu);
  v4[8] = v13;
  v14 = v6[67];
  __dmb(0xBu);
  v4[9] = v14;
  *this = v4;
  v15 = *v4;
  v16 = *(*(v4[1] + 8) + 128);
  __dmb(0xBu);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v4[((3 * v15) & 7) + 2] + ((*(v4[1] + 24) - 1) & (v15 >> 3)) * *(v4[1] + 32) + 16;
  }

  *(this + 1) = v17;
  return this;
}

void tbb::internal::concurrent_queue_iterator_base::assign(tbb::internal::concurrent_queue_iterator_base *this, const tbb::internal::concurrent_queue_iterator_base *a2)
{
  v4 = *this;
  v5 = *a2;
  if (v4 != *a2)
  {
    if (v4)
    {
      operator delete(v4);
      *this = 0;
      v5 = *a2;
    }

    if (v5)
    {
      v6 = operator new(0x50uLL);
      *v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[4];
      v6[3] = v5[3];
      v6[4] = v9;
      v6[1] = v7;
      v6[2] = v8;
      *this = v6;
    }
  }

  *(this + 1) = *(a2 + 1);
}

unint64_t **tbb::internal::concurrent_queue_iterator_base::advance(unint64_t **this)
{
  v1 = *this;
  v2 = **this;
  v3 = (*this)[1];
  if ((-*(v3 + 24) | (v2 >> 3)) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v4 = &v1[(3 * v2) & 7];
    v4[2] = *v4[2];
    v1 = *this;
    v3 = (*this)[1];
  }

  v5 = v2 + 1;
  *v1 = v5;
  v6 = *(*(v3 + 8) + 128);
  __dmb(0xBu);
  if (v6 == v5)
  {
    this[1] = 0;
  }

  else
  {
    this[1] = (v1[((3 * v5) & 7) + 2] + ((*(v1[1] + 24) - 1) & (v5 >> 3)) * *(v1[1] + 32) + 16);
  }

  return this;
}

void tbb::internal::concurrent_queue_iterator_base::~concurrent_queue_iterator_base(void **this)
{
  if (*this)
  {
    v1 = this;
    operator delete(*this);
    this = v1;
  }

  *this = 0;
}

{
  if (*this)
  {
    v1 = this;
    operator delete(*this);
    this = v1;
  }

  *this = 0;
}

uint64_t *sub_29A007F10(uint64_t *a1)
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
    operator delete(v2);
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

uint64_t tbb::spin_rw_mutex::internal_acquire_writer(atomic_ullong *a1)
{
  while (1)
  {
    v2 = *a1;
    if ((*a1 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if ((v2 & 2) == 0)
      {
LABEL_6:
        v3 = *a1;
        v4 = *a1 | 2;
        while (1)
        {
          v5 = v3;
          atomic_compare_exchange_strong(a1, &v5, v4);
          if (v5 == v3)
          {
            break;
          }

          if (atomic_fetch_add_explicit(a1, 0, memory_order_relaxed) != v3)
          {
            sched_yield();
            goto LABEL_6;
          }
        }
      }

      goto LABEL_3;
    }

    v6 = *a1;
    while (1)
    {
      v7 = v2;
      atomic_compare_exchange_strong(a1, &v7, 1uLL);
      if (v7 == v2)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(a1, 0, memory_order_relaxed);
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

atomic_ullong *tbb::spin_rw_mutex::internal_acquire_reader(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *v1;
    if ((*v1 & 3) == 0)
    {
      v3 = *v1;
      while (1)
      {
        v4 = v2;
        atomic_compare_exchange_strong(v1, &v4, v2 + 4);
        if (v4 == v2)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(v1, 0, memory_order_relaxed);
        if (add_explicit != v2)
        {
          v3 = add_explicit;
          break;
        }
      }

      if (v3 == v2)
      {
        return result;
      }
    }

    result = sched_yield();
  }
}

uint64_t tbb::spin_rw_mutex::internal_upgrade(atomic_ullong *a1)
{
  do
  {
    v2 = *a1;
    v3 = (*a1 & 2) == 0 || (*a1 & 0xFFFFFFFFFFFFFFFCLL) == 4;
    v4 = v3;
    if (!v3)
    {
      atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFCLL);
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          if ((v9 & 2) == 0)
          {
LABEL_23:
            v10 = *a1;
            v11 = *a1 | 2;
            while (1)
            {
              v12 = v10;
              atomic_compare_exchange_strong(a1, &v12, v11);
              if (v12 == v10)
              {
                break;
              }

              if (atomic_fetch_add_explicit(a1, 0, memory_order_relaxed) != v10)
              {
                sched_yield();
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v13 = *a1;
          while (1)
          {
            v14 = v9;
            atomic_compare_exchange_strong(a1, &v14, 1uLL);
            if (v14 == v9)
            {
              break;
            }

            add_explicit = atomic_fetch_add_explicit(a1, 0, memory_order_relaxed);
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

    v5 = *a1;
    while (1)
    {
      v6 = v2;
      atomic_compare_exchange_strong(a1, &v6, v2 | 2);
      if (v6 == v2)
      {
        break;
      }

      v7 = atomic_fetch_add_explicit(a1, 0, memory_order_relaxed);
      if (v7 != v2)
      {
        v5 = v7;
        break;
      }
    }
  }

  while (v5 != v2);
  while ((*a1 & 0xFFFFFFFFFFFFFFFCLL) != 4)
  {
    sched_yield();
  }

  *a1 = 1;
  return v4;
}

BOOL tbb::spin_rw_mutex::internal_try_acquire_writer(atomic_ullong *a1)
{
  v1 = *a1;
  if ((*a1 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 0;
  }

  v2 = *a1;
  while (1)
  {
    v3 = v1;
    atomic_compare_exchange_strong(a1, &v3, 1uLL);
    if (v3 == v1)
    {
      break;
    }

    add_explicit = atomic_fetch_add_explicit(a1, 0, memory_order_relaxed);
    if (add_explicit != v1)
    {
      v2 = add_explicit;
      return v2 == v1;
    }
  }

  return v2 == v1;
}

BOOL tbb::spin_rw_mutex::internal_try_acquire_reader(atomic_ullong *a1)
{
  v1 = *a1;
  v2 = *a1 & 3;
  if (!v2)
  {
    do
    {
      v3 = v1;
      while (1)
      {
        v4 = v1;
        atomic_compare_exchange_strong(a1, &v4, v1 + 4);
        if (v4 == v1)
        {
          break;
        }

        add_explicit = atomic_fetch_add_explicit(a1, 0, memory_order_relaxed);
        if (add_explicit != v1)
        {
          v3 = add_explicit;
          break;
        }
      }
    }

    while (v3 != v1);
  }

  return v2 == 0;
}

uint64_t Alembic::Util::v12::MurmurHash3_x64_128(uint64_t this, unint64_t a2, unint64_t a3, unint64_t *a4, void *a5)
{
  v5 = 0;
  v6 = 0;
  while (2)
  {
    v9 = (this + (a2 & 0xFFFFFFFFFFFFFFF0));
    v10 = 0;
    switch(a2)
    {
      case 0uLL:
        goto LABEL_20;
      case 1uLL:
        goto LABEL_19;
      case 2uLL:
        goto LABEL_18;
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        goto LABEL_16;
      case 5uLL:
        goto LABEL_15;
      case 6uLL:
        goto LABEL_14;
      case 7uLL:
        goto LABEL_13;
      case 8uLL:
        goto LABEL_12;
      case 9uLL:
        goto LABEL_11;
      case 0xAuLL:
        goto LABEL_10;
      case 0xBuLL:
        goto LABEL_9;
      case 0xCuLL:
        goto LABEL_8;
      case 0xDuLL:
        goto LABEL_7;
      case 0xEuLL:
        goto LABEL_6;
      case 0xFuLL:
        v10 = v9[14] << 48;
LABEL_6:
        v10 |= v9[13] << 40;
LABEL_7:
        v10 ^= v9[12] << 32;
LABEL_8:
        v10 ^= v9[11] << 24;
LABEL_9:
        v10 ^= v9[10] << 16;
LABEL_10:
        v10 ^= v9[9] << 8;
LABEL_11:
        v5 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v10 ^ v9[8])) | ((0x4CF5AD432745937FLL * (v10 ^ v9[8])) >> 31));
LABEL_12:
        v10 = v9[7] << 56;
LABEL_13:
        v10 |= v9[6] << 48;
LABEL_14:
        v10 ^= v9[5] << 40;
LABEL_15:
        v10 ^= v9[4] << 32;
LABEL_16:
        v10 ^= v9[3] << 24;
LABEL_17:
        v10 ^= v9[2] << 16;
LABEL_18:
        v10 ^= v9[1] << 8;
LABEL_19:
        v6 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v10 ^ *v9)) | ((0x87C37B91114253D5 * (v10 ^ *v9)) >> 33));
LABEL_20:
        v11 = (v6 ^ a2) + (v5 ^ a2);
        v12 = v11 + (v5 ^ a2);
        v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
        v14 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
        v15 = v14 ^ (v14 >> 33);
        v16 = v15 + (v13 ^ (v13 >> 33));
        *a4 = v16;
        a4[1] = v16 + v15;
        return this;
      default:
        v6 = 0;
        v5 = 0;
        v7 = a2 >> 4;
        v8 = (this + 8);
        do
        {
          v6 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v8 - 1)) | ((0x87C37B91114253D5 * *(v8 - 1)) >> 33))) ^ v6, 37) + v5) + 1390208809;
          v5 = 5 * (v6 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v8) | ((0x4CF5AD432745937FLL * *v8) >> 31))) ^ v5, 33)) + 944331445;
          v8 += 2;
          --v7;
        }

        while (v7);
        continue;
    }
  }
}

uint64_t Alembic::Util::v12::isStandardName(unsigned __int8 *a1)
{
  v1 = a1[23];
  if (v1 < 0)
  {
    v2 = *(a1 + 1);
    if (!v2)
    {
      return 0;
    }

    v3 = *a1;
  }

  else
  {
    v2 = a1[23];
    v3 = a1;
    if (!a1[23])
    {
      return 0;
    }
  }

  v4 = *v3;
  if (v4 != 95 && (v4 & 0xFFFFFFDF) - 65 > 0x19)
  {
    return 0;
  }

  v13 = v2 >= 2;
  v6 = v2 - 2;
  if (!v13)
  {
    return 1;
  }

  if (v1 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v8 + 1;
  do
  {
    v11 = *v9++;
    v10 = v11;
    v12 = v11 - 48;
    v13 = (v11 & 0xFFFFFFDF) - 65 >= 0x1A && v12 >= 0xA;
    result = !v13 || v10 == 95;
  }

  while (result == 1 && v6-- != 0);
  return result;
}

std::string *Alembic::Util::v12::makeStandardName(std::string *result, int a2)
{
  if (a2 != 95 && ((a2 & 0xDF) - 65) >= 0x1Au)
  {
    sub_29A008864(&v18);
    sub_29A00911C(v19, "Cannot fix bad name (bad fix character).", 40);
    std::stringbuf::str();
    sub_29A008C60(v17, &__p);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(exception, v17);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  size = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
    if (size)
    {
      v6 = result->__r_.__value_.__r.__words[0];
      v11 = *result->__r_.__value_.__l.__data_;
      if (*result->__r_.__value_.__l.__data_)
      {
        if (v11 == 95 || (v11 & 0xFFFFFFDF) - 65 < 0x1A)
        {
LABEL_14:
          if (size >= 2)
          {
            for (i = 1; i != size; ++i)
            {
              if ((result->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v8 = result;
              }

              else
              {
                v8 = result->__r_.__value_.__r.__words[0];
              }

              v9 = v8->__r_.__value_.__s.__data_[i];
              if ((v9 - 48) >= 0xA && v9 != 95 && (v9 & 0xFFFFFFDF) - 65 >= 0x1A)
              {
                v8->__r_.__value_.__s.__data_[i] = a2;
              }
            }
          }

          return result;
        }

LABEL_13:
        v6->__r_.__value_.__s.__data_[0] = a2;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = result->__r_.__value_.__s.__data_[0];
    if (*(&result->__r_.__value_.__s + 23))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = v3 != 95 && (v3 & 0xFFFFFFDF) - 65 >= 0x1A;
      v6 = result;
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  return std::string::operator=(result, a2);
}

void sub_29A00883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A008864(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_29A008F58((a1 + 3), 24);
  return a1;
}

void sub_29A008AE0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A008B0C(uint64_t a1)
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
  MEMORY[0x29C2C4390](a1 + 128);
  return a1;
}

uint64_t sub_29A008C60(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  *a1 = &unk_2A203B150;
  return a1;
}

void sub_29A008CD0(std::exception *a1)
{
  v1 = sub_29A008F20(a1);

  operator delete(v1);
}

uint64_t sub_29A008CF8(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_29A008D14(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_29A008DA8();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = operator new(v6);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

void sub_29A008DC0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_299FF7E84(exception, a1);
  __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
}

void *sub_29A008E1C(void *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v3 = (a2 + 8);
  v4 = v5;
  if (v3[23] < 0)
  {
    v3 = v4;
  }

  sub_29A008E78(a1 + 1, v3);
  *a1 = &unk_2A203B150;
  return a1;
}

void *sub_29A008E78(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
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

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

std::exception *sub_29A008F20(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  return a1;
}

uint64_t sub_29A008F58(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2C32B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_29A009014(a1);
  return a1;
}

void sub_29A008FEC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29A009014(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_29A00911C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2C1E50](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_29A0092C4(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2C1E60](v13);
  return a1;
}

void sub_29A00925C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2C1E60](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29A00923CLL);
}

uint64_t sub_29A0092C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_29A00944C(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_29A009430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A00944C(void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __b[1] = __len;
    __b[2] = v7 | 0x8000000000000000;
    *__b = v6;
  }

  else
  {
    *(__b + 23) = __len;
    v6 = __b;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memset(v6, __c, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __b;
}

unsigned __int8 *Alembic::Util::v12::SpookyHash::Short(unsigned __int8 *this, unint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = a2 & 0x1F;
  v6 = *a3;
  v7 = *a4;
  if (a2 < 0x10)
  {
    v10 = 0xDEADBEEFDEADBEEFLL;
    v9 = 0xDEADBEEFDEADBEEFLL;
  }

  else
  {
    if (((a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL) != 0)
    {
      v8 = &this[8 * ((a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)];
      v9 = 0xDEADBEEFDEADBEEFLL;
      v10 = 0xDEADBEEFDEADBEEFLL;
      do
      {
        v11 = *(this + 1) + v9;
        v12 = v11 + __ROR8__(*this + v10, 14);
        v13 = v12 ^ v6;
        v14 = v13 + __ROR8__(v11, 12);
        v15 = v14 ^ v7;
        v16 = v15 + __ROR8__(v13, 34);
        v17 = v16 ^ v12;
        v18 = v17 + __ROR8__(v15, 23);
        v19 = v18 ^ v14;
        v20 = v19 + __ROR8__(v17, 10);
        v21 = v20 ^ v16;
        v22 = v21 + __ROR8__(v19, 16);
        v23 = v22 ^ v18;
        v24 = v23 + __ROR8__(v21, 26);
        v25 = v24 ^ v20;
        v26 = v25 + __ROR8__(v23, 27);
        v27 = v26 ^ v22;
        v28 = v27 + __ROR8__(v25, 2);
        v29 = v28 ^ v24;
        v30 = v29 + __ROR8__(v27, 30);
        v31 = v30 ^ v26;
        v32 = v31 + __ROR8__(v29, 59);
        v10 = v32 ^ v28;
        v33 = __ROR8__(v31, 28);
        v6 = v32 + *(this + 2);
        v9 = (v10 + v33) ^ v30;
        v7 = v10 + v33 + *(this + 3);
        this += 32;
      }

      while (this < v8);
    }

    else
    {
      v10 = 0xDEADBEEFDEADBEEFLL;
      v9 = 0xDEADBEEFDEADBEEFLL;
    }

    if (v5 >= 0x10)
    {
      v34 = *this;
      v35 = *(this + 1);
      this += 16;
      v36 = v35 + v9;
      v37 = v36 + __ROR8__(v34 + v10, 14);
      v38 = v37 ^ v6;
      v39 = v38 + __ROR8__(v36, 12);
      v40 = v39 ^ v7;
      v41 = v40 + __ROR8__(v38, 34);
      v42 = v41 ^ v37;
      v43 = v42 + __ROR8__(v40, 23);
      v44 = v43 ^ v39;
      v45 = v44 + __ROR8__(v42, 10);
      v46 = v45 ^ v41;
      v47 = v46 + __ROR8__(v44, 16);
      v48 = v47 ^ v43;
      v49 = v48 + __ROR8__(v46, 26);
      v50 = v49 ^ v45;
      v51 = v50 + __ROR8__(v48, 27);
      v52 = v51 ^ v47;
      v53 = v52 + __ROR8__(v50, 2);
      v54 = v53 ^ v49;
      v55 = v54 + __ROR8__(v52, 30);
      v56 = v55 ^ v51;
      v6 = v56 + __ROR8__(v54, 59);
      v10 = v6 ^ v53;
      v7 = v10 + __ROR8__(v56, 28);
      v9 = v7 ^ v55;
      v5 -= 16;
    }
  }

  v57 = v9 + (a2 << 56);
  switch(v5)
  {
    case 0uLL:
      v10 -= 0x2152411021524111;
      v57 -= 0x2152411021524111;
      break;
    case 1uLL:
      goto LABEL_23;
    case 2uLL:
      goto LABEL_22;
    case 3uLL:
      v10 += this[2] << 16;
LABEL_22:
      v10 += this[1] << 8;
LABEL_23:
      v59 = *this;
      goto LABEL_28;
    case 4uLL:
      goto LABEL_27;
    case 5uLL:
      goto LABEL_26;
    case 6uLL:
      goto LABEL_25;
    case 7uLL:
      v10 += this[6] << 48;
LABEL_25:
      v10 += this[5] << 40;
LABEL_26:
      v10 += this[4] << 32;
LABEL_27:
      v59 = *this;
LABEL_28:
      v10 += v59;
      break;
    case 8uLL:
      goto LABEL_20;
    case 9uLL:
      goto LABEL_14;
    case 0xAuLL:
      goto LABEL_13;
    case 0xBuLL:
      v57 += this[10] << 16;
LABEL_13:
      v57 += this[9] << 8;
LABEL_14:
      v58 = this[8];
      goto LABEL_19;
    case 0xCuLL:
      goto LABEL_18;
    case 0xDuLL:
      goto LABEL_17;
    case 0xEuLL:
      goto LABEL_16;
    case 0xFuLL:
      v57 += this[14] << 48;
LABEL_16:
      v57 += this[13] << 40;
LABEL_17:
      v57 += this[12] << 32;
LABEL_18:
      v58 = *(this + 2);
LABEL_19:
      v57 += v58;
LABEL_20:
      v10 += *this;
      break;
    default:
      break;
  }

  v60 = (v57 ^ v10) + __ROR8__(v10, 49);
  v61 = (v60 ^ v6) + __ROR8__(v60, 12);
  v62 = (v61 ^ v7) + __ROR8__(v61, 38);
  v63 = (v62 ^ __ROR8__(v10, 49)) + __ROR8__(v62, 13);
  v64 = (v63 ^ __ROR8__(v60, 12)) + __ROR8__(v63, 36);
  v65 = (v64 ^ __ROR8__(v61, 38)) + __ROR8__(v64, 55);
  v66 = (v65 ^ __ROR8__(v62, 13)) + __ROR8__(v65, 17);
  v67 = (v66 ^ __ROR8__(v63, 36)) + __ROR8__(v66, 10);
  v68 = (v67 ^ __ROR8__(v64, 55)) + __ROR8__(v67, 32);
  v69 = (v68 ^ __ROR8__(v65, 17)) + __ROR8__(v68, 39);
  v70 = v69 ^ __ROR8__(v66, 10);
  v71 = __ROR8__(v69, 1);
  *a3 = v71;
  *a4 = v70 + v71;
  return this;
}

unsigned __int8 *Alembic::Util::v12::SpookyHash::Hash128(Alembic::Util::v12::SpookyHash *this, unint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v105 = *MEMORY[0x29EDCA608];
  if (a2 > 0xBF)
  {
    v6 = 0xDEADBEEFDEADBEEFLL;
    v7 = *a3;
    v8 = *a4;
    v9 = a2 % 0x60;
    v10 = 96 * (a2 / 0x60);
    v11 = (this + v10);
    if (v10 < 1)
    {
      v20 = *a3;
      v19 = *a4;
      v18 = 0xDEADBEEFDEADBEEFLL;
      v17 = *a3;
      v16 = *a4;
      v15 = 0xDEADBEEFDEADBEEFLL;
      v14 = *a3;
      v13 = *a4;
      v12 = 0xDEADBEEFDEADBEEFLL;
    }

    else
    {
      v12 = 0xDEADBEEFDEADBEEFLL;
      v13 = *a4;
      v14 = *a3;
      v15 = 0xDEADBEEFDEADBEEFLL;
      v16 = *a4;
      v17 = *a3;
      v18 = 0xDEADBEEFDEADBEEFLL;
      v19 = *a4;
      v20 = *a3;
      do
      {
        v21 = *this + v20;
        v22 = (v21 ^ v6) + v19;
        v23 = *(this + 1) + v19;
        v24 = (v23 ^ __ROR8__(v21, 53)) + (v8 ^ v18);
        v25 = *(this + 2) + (v8 ^ v18);
        v26 = (v25 ^ __ROR8__(v23, 32)) + (v22 ^ v17);
        v27 = (v22 ^ v17) + *(this + 3);
        v18 = (v27 ^ __ROR8__(v25, 21)) + (v24 ^ v16);
        v28 = (v24 ^ v16) + *(this + 4);
        v17 = (v28 ^ __ROR8__(v27, 33)) + (v26 ^ v15);
        v29 = (v26 ^ v15) + *(this + 5);
        v16 = (v29 ^ __ROR8__(v28, 47)) + (v18 ^ v14);
        v30 = (v18 ^ v14) + *(this + 6);
        v15 = (v30 ^ __ROR8__(v29, 36)) + (v17 ^ v13);
        v31 = (v17 ^ v13) + *(this + 7);
        v14 = (v31 ^ __ROR8__(v30, 25)) + (v16 ^ v12);
        v32 = (v16 ^ v12) + *(this + 8);
        v13 = (v32 ^ __ROR8__(v31, 7)) + (v15 ^ v7);
        v33 = (v15 ^ v7) + *(this + 9);
        v12 = (v33 ^ __ROR8__(v32, 9)) + (v14 ^ v8);
        v34 = (v14 ^ v8) + *(this + 10);
        v35 = v13 ^ v22;
        v20 = v12 ^ v24;
        v7 = (v34 ^ __ROR8__(v33, 10)) + v35;
        v36 = v35 + *(this + 11);
        v19 = v7 ^ v26;
        v6 = __ROR8__(v36, 18);
        v8 = (v36 ^ __ROR8__(v34, 42)) + (v12 ^ v24);
        this = (this + 96);
      }

      while (this < v11);
    }

    v88 = v7;
    v89 = v8;
    v92 = v9;
    memcpy(&__dst, v11, v9);
    bzero(&__dst + v92, 96 - v92);
    HIBYTE(v104) = v92;
    v37 = v94 + v19 + v6 + v104;
    v38 = __dst + v20 + (v37 ^ (v95 + v18));
    v39 = (v38 ^ (v96 + v17)) + __ROR8__(v94 + v19, 20);
    v40 = (v39 ^ (v97 + v16)) + __ROR8__(v37 ^ (v95 + v18), 49);
    v41 = (v40 ^ (v98 + v15)) + __ROR8__(v38 ^ (v96 + v17), 30);
    v42 = (v41 ^ (v99 + v14)) + __ROR8__(v39 ^ (v97 + v16), 43);
    v43 = (v42 ^ (v100 + v13)) + __ROR8__(v40 ^ (v98 + v15), 26);
    v44 = (v43 ^ (v101 + v12)) + __ROR8__(v41 ^ (v99 + v14), 31);
    v45 = (v44 ^ (v102 + v88)) + __ROR8__(v42 ^ (v100 + v13), 54);
    v46 = (v45 ^ (v103 + v89)) + __ROR8__(v43 ^ (v101 + v12), 51);
    v47 = v46 ^ v37;
    v48 = v47 + __ROR8__(v44 ^ (v102 + v88), 26);
    v49 = v48 ^ v38;
    v50 = v49 + __ROR8__(v45 ^ (v103 + v89), 11);
    v51 = v50 ^ v39;
    v52 = v51 + __ROR8__(v47, 22);
    v53 = v52 ^ v40;
    v54 = v53 + __ROR8__(v49, 10);
    v55 = v54 ^ v41;
    v56 = v55 + __ROR8__(v51, 20);
    v57 = v56 ^ v42;
    v58 = v57 + __ROR8__(v53, 49);
    v59 = v58 ^ v43;
    v60 = v59 + __ROR8__(v55, 30);
    v61 = v60 ^ v44;
    v62 = v61 + __ROR8__(v57, 43);
    v63 = v62 ^ v45;
    v64 = v63 + __ROR8__(v59, 26);
    v65 = v64 ^ v46;
    v66 = v65 + __ROR8__(v61, 31);
    v67 = v66 ^ v48;
    v68 = v67 + __ROR8__(v63, 54);
    v69 = v68 ^ v50;
    v70 = v69 + __ROR8__(v65, 51);
    v71 = v70 ^ v52;
    v72 = v71 + __ROR8__(v67, 26);
    v73 = v72 ^ v54;
    result = (v73 + __ROR8__(v69, 11));
    v74 = result ^ v56;
    v75 = v74 + __ROR8__(v71, 22);
    v76 = v75 ^ v58;
    v77 = v76 + __ROR8__(v73, 10);
    v78 = v77 ^ v60;
    v79 = v78 + __ROR8__(v74, 20);
    v80 = v79 ^ v62;
    v81 = (v80 + __ROR8__(v76, 49)) ^ v64;
    v82 = (v81 + __ROR8__(v78, 30)) ^ v66;
    v83 = (v82 + __ROR8__(v80, 43)) ^ v68;
    v84 = (v83 + __ROR8__(v81, 26)) ^ v70;
    v85 = (v84 + __ROR8__(v82, 31)) ^ v72;
    v86 = (v85 + __ROR8__(v83, 54)) ^ result;
    v87 = (((v86 + __ROR8__(v84, 51)) ^ v75) + __ROR8__(v85, 26)) ^ v77;
    *a3 = __ROR8__(v87, 10);
    *a4 = (v87 + __ROR8__(v86, 11)) ^ v79;
  }

  else
  {

    return Alembic::Util::v12::SpookyHash::Short(this, a2, a3, a4, a5);
  }

  return result;
}

uint64_t Alembic::Util::v12::SpookyHash::Init(uint64_t this, uint64_t a2, uint64_t a3)
{
  *(this + 288) = 0;
  *(this + 296) = 0;
  *(this + 192) = a2;
  *(this + 200) = a3;
  return this;
}

void *Alembic::Util::v12::SpookyHash::Update(Alembic::Util::v12::SpookyHash *this, void *__src, size_t a3)
{
  v3 = __src;
  v4 = *(this + 296);
  v5 = a3 + v4;
  if (a3 + v4 > 0xBF)
  {
    v9 = *(this + 36);
    v11 = *(this + 24);
    v10 = *(this + 25);
    if (v9 >= 0xC0)
    {
      v12 = *(this + 26);
      v13 = *(this + 27);
      v14 = *(this + 28);
      v15 = *(this + 29);
      v16 = *(this + 30);
      v17 = *(this + 31);
      v18 = *(this + 32);
      v19 = *(this + 33);
      v20 = *(this + 34);
      v21 = *(this + 35);
    }

    else
    {
      v12 = 0xDEADBEEFDEADBEEFLL;
      v13 = *(this + 24);
      v14 = *(this + 25);
      v15 = 0xDEADBEEFDEADBEEFLL;
      v16 = v13;
      v17 = v14;
      v18 = 0xDEADBEEFDEADBEEFLL;
      v19 = v13;
      v20 = v14;
      v21 = 0xDEADBEEFDEADBEEFLL;
    }

    *(this + 36) = v9 + a3;
    if (v4)
    {
      v96 = -64 - v4;
      v97 = a3;
      v102 = v16;
      __dst = this;
      v98 = v12;
      v100 = v14;
      memcpy(this + v4, __src, (-64 - v4));
      v22 = *__dst + v11;
      v23 = (v22 ^ v21) + v10;
      v24 = *(__dst + 1) + v10;
      v25 = (v24 ^ __ROR8__(v22, 53)) + (v20 ^ v98);
      v26 = *(__dst + 2) + (v20 ^ v98);
      v27 = (v26 ^ __ROR8__(v24, 32)) + (v23 ^ v13);
      v28 = (v23 ^ v13) + *(__dst + 3);
      v29 = (v28 ^ __ROR8__(v26, 21)) + (v25 ^ v100);
      v30 = (v25 ^ v100) + *(__dst + 4);
      v31 = (v30 ^ __ROR8__(v28, 33)) + (v27 ^ v15);
      v32 = (v27 ^ v15) + *(__dst + 5);
      v33 = (v32 ^ __ROR8__(v30, 47)) + (v29 ^ v102);
      v34 = (v29 ^ v102) + *(__dst + 6);
      v35 = (v34 ^ __ROR8__(v32, 36)) + (v31 ^ v17);
      v36 = (v31 ^ v17) + *(__dst + 7);
      v37 = (v36 ^ __ROR8__(v34, 25)) + (v33 ^ v18);
      v38 = (v33 ^ v18) + *(__dst + 8);
      v39 = (v38 ^ __ROR8__(v36, 7)) + (v35 ^ v19);
      v40 = (v35 ^ v19) + *(__dst + 9);
      v41 = v39 ^ v23;
      v42 = (v40 ^ __ROR8__(v38, 9)) + (v37 ^ v20);
      v43 = (v37 ^ v20) + *(__dst + 10);
      v44 = v42 ^ v25;
      v45 = (v43 ^ __ROR8__(v40, 10)) + v41;
      v46 = v41 + *(__dst + 11);
      v47 = v45 ^ v27;
      v48 = (v46 ^ __ROR8__(v43, 42)) + v44;
      v49 = v44 + *(__dst + 12);
      v50 = v48 ^ v29;
      v51 = (v49 ^ __ROR8__(v46, 18)) + v47;
      v52 = v47 + *(__dst + 13);
      v53 = v51 ^ v31;
      v54 = (v52 ^ __ROR8__(v49, 53)) + v50;
      v55 = v50 + *(__dst + 14);
      v56 = v54 ^ v33;
      v57 = (v55 ^ __ROR8__(v52, 32)) + v53;
      v58 = v53 + *(__dst + 15);
      v59 = v57 ^ v35;
      v12 = (v58 ^ __ROR8__(v55, 21)) + v56;
      v60 = *(__dst + 17);
      v61 = v56 + *(__dst + 16);
      v62 = v12 ^ v37;
      v13 = (v61 ^ __ROR8__(v58, 33)) + v59;
      v63 = v13 ^ v39;
      v14 = ((v59 + v60) ^ __ROR8__(v61, 47)) + v62;
      v64 = v62 + *(__dst + 18);
      v65 = v14 ^ v42;
      v15 = (v64 ^ __ROR8__(v59 + v60, 36)) + v63;
      v66 = v63 + *(__dst + 19);
      this = __dst;
      v67 = v15 ^ v45;
      v16 = (v66 ^ __ROR8__(v64, 25)) + v65;
      v68 = v65 + *(__dst + 20);
      v69 = v16 ^ v48;
      v17 = (v68 ^ __ROR8__(v66, 7)) + v67;
      v70 = v67 + *(__dst + 21);
      v18 = (v70 ^ __ROR8__(v68, 9)) + v69;
      v71 = v69 + *(__dst + 22);
      v72 = v71 ^ __ROR8__(v70, 10);
      v73 = v17 ^ v51;
      v74 = v73 + *(__dst + 23);
      v21 = __ROR8__(v74, 18);
      v11 = v18 ^ v54;
      v19 = v72 + v73;
      v10 = (v72 + v73) ^ v57;
      v20 = (v74 ^ __ROR8__(v71, 42)) + (v18 ^ v54);
      v3 = (v3 + v96);
      a3 = v97 - v96;
    }

    v75 = 3 * (a3 / 0x60);
    v76 = 96 * (a3 / 0x60);
    v77 = a3 % 0x60;
    v78 = &v3[4 * v75];
    if (v76 >= 1)
    {
      do
      {
        v79 = *v3 + v11;
        v80 = (v79 ^ v21) + v10;
        v81 = v3[1] + v10;
        v82 = (v81 ^ __ROR8__(v79, 53)) + (v20 ^ v12);
        v83 = v3[2] + (v20 ^ v12);
        v84 = (v83 ^ __ROR8__(v81, 32)) + (v80 ^ v13);
        v85 = (v80 ^ v13) + v3[3];
        v12 = (v85 ^ __ROR8__(v83, 21)) + (v82 ^ v14);
        v86 = (v82 ^ v14) + v3[4];
        v13 = (v86 ^ __ROR8__(v85, 33)) + (v84 ^ v15);
        v87 = (v84 ^ v15) + v3[5];
        v14 = (v87 ^ __ROR8__(v86, 47)) + (v12 ^ v16);
        v88 = (v12 ^ v16) + v3[6];
        v15 = (v88 ^ __ROR8__(v87, 36)) + (v13 ^ v17);
        v89 = (v13 ^ v17) + v3[7];
        v16 = (v89 ^ __ROR8__(v88, 25)) + (v14 ^ v18);
        v90 = (v14 ^ v18) + v3[8];
        v17 = (v90 ^ __ROR8__(v89, 7)) + (v15 ^ v19);
        v91 = (v15 ^ v19) + v3[9];
        v18 = (v91 ^ __ROR8__(v90, 9)) + (v16 ^ v20);
        v92 = (v16 ^ v20) + v3[10];
        v93 = v17 ^ v80;
        v11 = v18 ^ v82;
        v19 = (v92 ^ __ROR8__(v91, 10)) + v93;
        v94 = v93 + v3[11];
        v10 = v19 ^ v84;
        v21 = __ROR8__(v94, 18);
        v20 = (v94 ^ __ROR8__(v92, 42)) + (v18 ^ v82);
        v3 += 12;
      }

      while (v3 < v78);
    }

    v99 = v12;
    v101 = v14;
    v103 = v16;
    *(this + 296) = v77;
    v95 = this;
    result = memcpy(this, v78, v77);
    *(v95 + 24) = v11;
    *(v95 + 25) = v10;
    *(v95 + 26) = v99;
    *(v95 + 27) = v13;
    *(v95 + 28) = v101;
    *(v95 + 29) = v15;
    *(v95 + 30) = v103;
    *(v95 + 31) = v17;
    *(v95 + 32) = v18;
    *(v95 + 33) = v19;
    *(v95 + 34) = v20;
    *(v95 + 35) = v21;
  }

  else
  {
    v6 = this;
    v7 = a3;
    result = memcpy(this + v4, __src, a3);
    *(v6 + 36) += v7;
    *(v6 + 296) = v5;
  }

  return result;
}

unsigned __int8 *Alembic::Util::v12::SpookyHash::Final(Alembic::Util::v12::SpookyHash *this, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v7 = this;
  v8 = *(this + 36);
  if (v8 > 0xBF)
  {
    v10 = *(this + 296);
    v11 = *(this + 24);
    v12 = *(this + 25);
    v13 = *(this + 29);
    v15 = *(this + 30);
    v14 = *(this + 31);
    v17 = *(this + 32);
    v16 = *(this + 33);
    v19 = *(this + 34);
    v18 = *(this + 35);
    v98 = a2;
    v99 = a3;
    if (v10 < 0x60)
    {
      v94 = *(this + 29);
      v95 = *(this + 28);
      v96 = *(this + 27);
      v97 = *(this + 26);
    }

    else
    {
      v20 = *this + v11;
      v21 = v19 ^ *(this + 26);
      v22 = (v20 ^ v18) + v12;
      v23 = *(this + 1) + v12;
      v24 = v22 ^ *(this + 27);
      v25 = (v23 ^ __ROR8__(v20, 53)) + v21;
      v26 = *(this + 2) + v21;
      v27 = v25 ^ *(this + 28);
      v28 = (v26 ^ __ROR8__(v23, 32)) + v24;
      v29 = v24 + *(this + 3);
      v30 = __ROR8__(v26, 21);
      v31 = v27 + *(this + 4);
      v97 = (v29 ^ v30) + v27;
      v32 = __ROR8__(v29, 33);
      v33 = (v28 ^ v13) + *(this + 5);
      v96 = (v31 ^ v32) + (v28 ^ v13);
      v34 = __ROR8__(v31, 47);
      v35 = (v97 ^ v15) + *(this + 6);
      v95 = (v33 ^ v34) + (v97 ^ v15);
      v36 = __ROR8__(v33, 36);
      v37 = (v96 ^ v14) + *(this + 7);
      v94 = (v35 ^ v36) + (v96 ^ v14);
      v15 = (v37 ^ __ROR8__(v35, 25)) + (v95 ^ v17);
      v38 = (v95 ^ v17) + *(this + 8);
      v14 = (v38 ^ __ROR8__(v37, 7)) + (v94 ^ v16);
      v39 = (v94 ^ v16) + *(this + 9);
      v17 = (v39 ^ __ROR8__(v38, 9)) + (v15 ^ v19);
      v40 = (v15 ^ v19) + *(this + 10);
      v41 = v14 ^ v22;
      v11 = v17 ^ v25;
      v16 = (v40 ^ __ROR8__(v39, 10)) + v41;
      v42 = v41 + *(this + 11);
      v12 = v16 ^ v28;
      v18 = __ROR8__(v42, 18);
      v19 = (v42 ^ __ROR8__(v40, 42)) + (v17 ^ v25);
      v7 = (this + 96);
      LOBYTE(v10) = v10 - 96;
    }

    bzero(v7 + v10, 96 - v10);
    *(v7 + 95) = v10;
    v43 = *(v7 + 1) + v12 + v18 + *(v7 + 11);
    v44 = *v7 + v11 + (v43 ^ (*(v7 + 2) + v97));
    v45 = (v44 ^ (*(v7 + 3) + v96)) + __ROR8__(*(v7 + 1) + v12, 20);
    v46 = (v45 ^ (*(v7 + 4) + v95)) + __ROR8__(v43 ^ (*(v7 + 2) + v97), 49);
    v47 = (v46 ^ (*(v7 + 5) + v94)) + __ROR8__(v44 ^ (*(v7 + 3) + v96), 30);
    v48 = (v47 ^ (*(v7 + 6) + v15)) + __ROR8__(v45 ^ (*(v7 + 4) + v95), 43);
    v49 = (v48 ^ (*(v7 + 7) + v14)) + __ROR8__(v46 ^ (*(v7 + 5) + v94), 26);
    v50 = (v49 ^ (*(v7 + 8) + v17)) + __ROR8__(v47 ^ (*(v7 + 6) + v15), 31);
    v51 = (v50 ^ (*(v7 + 9) + v16)) + __ROR8__(v48 ^ (*(v7 + 7) + v14), 54);
    v52 = (v51 ^ (*(v7 + 10) + v19)) + __ROR8__(v49 ^ (*(v7 + 8) + v17), 51);
    v53 = v52 ^ v43;
    v54 = v53 + __ROR8__(v50 ^ (*(v7 + 9) + v16), 26);
    v55 = v54 ^ v44;
    v56 = v55 + __ROR8__(v51 ^ (*(v7 + 10) + v19), 11);
    v57 = v56 ^ v45;
    v58 = v57 + __ROR8__(v53, 22);
    v59 = v58 ^ v46;
    v60 = v59 + __ROR8__(v55, 10);
    v61 = v60 ^ v47;
    v62 = v61 + __ROR8__(v57, 20);
    v63 = v62 ^ v48;
    v64 = v63 + __ROR8__(v59, 49);
    v65 = v64 ^ v49;
    v66 = v65 + __ROR8__(v61, 30);
    v67 = v66 ^ v50;
    v68 = v67 + __ROR8__(v63, 43);
    v69 = v68 ^ v51;
    v70 = v69 + __ROR8__(v65, 26);
    v71 = v70 ^ v52;
    v72 = v71 + __ROR8__(v67, 31);
    v73 = v72 ^ v54;
    v74 = v73 + __ROR8__(v69, 54);
    v75 = v74 ^ v56;
    v76 = v75 + __ROR8__(v71, 51);
    v77 = v76 ^ v58;
    v78 = v77 + __ROR8__(v73, 26);
    v79 = v78 ^ v60;
    result = (v79 + __ROR8__(v75, 11));
    v80 = result ^ v62;
    v81 = v80 + __ROR8__(v77, 22);
    v82 = v81 ^ v64;
    v83 = v82 + __ROR8__(v79, 10);
    v84 = v83 ^ v66;
    v85 = v84 + __ROR8__(v80, 20);
    v86 = v85 ^ v68;
    v87 = (v86 + __ROR8__(v82, 49)) ^ v70;
    v88 = (v87 + __ROR8__(v84, 30)) ^ v72;
    v89 = (v88 + __ROR8__(v86, 43)) ^ v74;
    v90 = (v89 + __ROR8__(v87, 26)) ^ v76;
    v91 = (v90 + __ROR8__(v88, 31)) ^ v78;
    v92 = (v91 + __ROR8__(v89, 54)) ^ result;
    v93 = (((v92 + __ROR8__(v90, 51)) ^ v81) + __ROR8__(v91, 26)) ^ v83;
    *v98 = __ROR8__(v93, 10);
    *v99 = (v93 + __ROR8__(v92, 11)) ^ v85;
  }

  else
  {
    *a2 = *(this + 24);
    *a3 = *(this + 25);

    return Alembic::Util::v12::SpookyHash::Short(this, v8, a2, a3, a5);
  }

  return result;
}

void Alembic::Util::v12::TokenMap::set(uint64_t **a1, std::string *this, std::string::value_type __c, std::string::value_type a4)
{
  v8 = 0;
  do
  {
    v9 = std::string::find(this, __c, v8);
    v10 = std::string::find(this, a4, v8);
    if (v10 != -1)
    {
      v11 = v10;
      if (v9 == -1)
      {
        v12 = -1;
      }

      else
      {
        v12 = v9 + ~v10;
      }

      std::string::basic_string(&v16, this, v10 + 1, v12, &__p);
      std::string::basic_string(&__p, this, v8, v11 - v8, &p_p);
      p_p = &__p;
      v13 = sub_29A00B4AC(a1, &__p.__r_.__value_.__l.__data_, &unk_29B42EC1A, &p_p);
      v14 = v13;
      if (*(v13 + 79) < 0)
      {
        operator delete(v13[7]);
      }

      *(v14 + 7) = v16;
      *(&v16.__r_.__value_.__s + 23) = 0;
      v16.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }

    v8 = v9 + 1;
  }

  while (v9 != -1);
}

void sub_29A00A668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Util::v12::TokenMap::setUnique(uint64_t **a1, std::string *this, std::string::value_type __c, std::string::value_type a4, char a5)
{
  v10 = 0;
  while (1)
  {
    v11 = std::string::find(this, __c, v10);
    v12 = std::string::find(this, a4, v10);
    if (v12 > v11)
    {
      break;
    }

    v13 = v12;
    if (v12 != -1)
    {
      if (v11 == -1)
      {
        v14 = -1;
      }

      else
      {
        v14 = v11 + ~v12;
      }

      std::string::basic_string(&v30, this, v10, v12 - v10, &v32);
      if (sub_29A00AF58(a1, &v30.__r_.__value_.__l.__data_))
      {
        if ((a5 & 1) == 0)
        {
          sub_29A008864(&v32);
          v17 = sub_29A00911C(&v32.__r_.__value_.__r.__words[2], "TokenMap::setUnique: token: ", 28);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v30;
          }

          else
          {
            v18 = v30.__r_.__value_.__r.__words[0];
          }

          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v30.__r_.__value_.__l.__size_;
          }

          v20 = sub_29A00911C(v17, v18, size);
          sub_29A00911C(v20, " is not unique.", 15);
          std::stringbuf::str();
          sub_29A008C60(v31, &__p);
          if (v29 < 0)
          {
            operator delete(__p);
          }

          exception = __cxa_allocate_exception(0x20uLL);
          v22 = sub_29A008E1C(exception, v31);
          __cxa_throw(v22, &unk_2A203B108, sub_29A008B08);
        }
      }

      else
      {
        std::string::basic_string(&v32, this, v13 + 1, v14, v31);
        v31[0] = &v30;
        v15 = sub_29A00B038(a1, &v30.__r_.__value_.__l.__data_, &unk_29B42EC1A, v31);
        v16 = v15;
        if (*(v15 + 79) < 0)
        {
          operator delete(v15[7]);
        }

        *(v16 + 7) = v32;
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    v10 = v11 + 1;
    if (v11 == -1)
    {
      return;
    }
  }

  if ((a5 & 1) == 0)
  {
    sub_29A008864(&v32);
    v23 = sub_29A00911C(&v32.__r_.__value_.__r.__words[2], "TokenMap::setUnique: malformed string found:", 44);
    LOBYTE(v31[0]) = a4;
    v24 = sub_29A00911C(v23, v31, 1);
    v25 = sub_29A00911C(v24, " before: ", 9);
    LOBYTE(v31[0]) = __c;
    sub_29A00911C(v25, v31, 1);
    std::stringbuf::str();
    sub_29A008C60(v31, &v30);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v26 = __cxa_allocate_exception(0x20uLL);
    v27 = sub_29A008E1C(v26, v31);
    __cxa_throw(v27, &unk_2A203B108, sub_29A008B08);
  }
}

void sub_29A00A94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::exception a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_29A008F20(&a18);
  sub_29A008B0C(&a22);
  _Unwind_Resume(a1);
}

void Alembic::Util::v12::TokenMap::get(Alembic::Util::v12::TokenMap *this, unsigned __int8 a2, std::string::value_type a3, int a4)
{
  *__s = a2;
  sub_29A008E78(&v60, __s);
  __s[0] = a3;
  sub_29A008E78(&v57, __s);
  sub_29A008864(v51);
  v10 = *this;
  v8 = this + 8;
  v9 = v10;
  if (v10 != v8)
  {
    v11 = 1;
    while (1)
    {
      if (*(v9 + 55) < 0)
      {
        sub_29A008D14(&__dst, v9[4], v9[5]);
      }

      else
      {
        __dst = *(v9 + 4);
      }

      if (*(v9 + 79) < 0)
      {
        sub_29A008D14(&v49, v9[7], v9[8]);
      }

      else
      {
        v49 = *(v9 + 7);
      }

      if (a4 && (std::string::find(&__dst, a2, 0) != -1 || std::string::find(&__dst, a3, 0) != -1 || std::string::find(&v49, a2, 0) != -1 || std::string::find(&v49, a3, 0) != -1))
      {
        sub_29A008864(&v47);
        v26 = sub_29A00911C(v48, "TokenMap::get: Token-Value pair ", 32);
        v27 = sub_29A00911C(v26, " contains separator characters: ", 32);
        if ((v62 & 0x80u) == 0)
        {
          v28 = &v60;
        }

        else
        {
          v28 = v60;
        }

        if ((v62 & 0x80u) == 0)
        {
          v29 = v62;
        }

        else
        {
          v29 = v61;
        }

        v30 = sub_29A00911C(v27, v28, v29);
        v31 = sub_29A00911C(v30, " or ", 4);
        if ((v59 & 0x80u) == 0)
        {
          v32 = &v57;
        }

        else
        {
          v32 = v57;
        }

        if ((v59 & 0x80u) == 0)
        {
          v33 = v59;
        }

        else
        {
          v33 = v58;
        }

        v34 = sub_29A00911C(v31, v32, v33);
        v35 = sub_29A00911C(v34, " for ", 5);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        v38 = sub_29A00911C(v35, p_dst, size);
        v39 = sub_29A00911C(v38, " or ", 4);
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v49;
        }

        else
        {
          v40 = v49.__r_.__value_.__r.__words[0];
        }

        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = v49.__r_.__value_.__l.__size_;
        }

        sub_29A00911C(v39, v40, v41);
        std::stringbuf::str();
        sub_29A008C60(v46, &v44);
        if (v45 < 0)
        {
          operator delete(v44);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v43 = sub_29A008E1C(exception, v46);
        __cxa_throw(v43, &unk_2A203B108, sub_29A008B08);
      }

      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      if (v49.__r_.__value_.__l.__size_)
      {
        goto LABEL_18;
      }

LABEL_45:
      operator delete(v49.__r_.__value_.__l.__data_);
LABEL_46:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

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
        do
        {
          v23 = v9[2];
          v24 = *v23 == v9;
          v9 = v23;
        }

        while (!v24);
      }

      v9 = v23;
      if (v23 == v8)
      {
        goto LABEL_54;
      }
    }

    if (!*(&v49.__r_.__value_.__s + 23))
    {
      goto LABEL_46;
    }

LABEL_18:
    if ((v11 & 1) == 0)
    {
      if ((v62 & 0x80u) == 0)
      {
        v12 = &v60;
      }

      else
      {
        v12 = v60;
      }

      if ((v62 & 0x80u) == 0)
      {
        v13 = v62;
      }

      else
      {
        v13 = v61;
      }

      sub_29A00911C(&v52, v12, v13);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__dst;
    }

    else
    {
      v14 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __dst.__r_.__value_.__l.__size_;
    }

    v16 = sub_29A00911C(&v52, v14, v15);
    if ((v59 & 0x80u) == 0)
    {
      v17 = &v57;
    }

    else
    {
      v17 = v57;
    }

    if ((v59 & 0x80u) == 0)
    {
      v18 = v59;
    }

    else
    {
      v18 = v58;
    }

    v19 = sub_29A00911C(v16, v17, v18);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v49;
    }

    else
    {
      v20 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v49.__r_.__value_.__l.__size_;
    }

    sub_29A00911C(v19, v20, v21);
    v11 = 0;
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_54:
  std::stringbuf::str();
  v51[0] = *MEMORY[0x29EDC9528];
  v25 = *(MEMORY[0x29EDC9528] + 72);
  *(v51 + *(v51[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v52 = v25;
  v53 = MEMORY[0x29EDC9570] + 16;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  v53 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v56);
  if (v59 < 0)
  {
    operator delete(v57);
  }

  if (v62 < 0)
  {
    operator delete(v60);
  }
}

void sub_29A00AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::exception a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  sub_29A008F20(&a14);
  sub_29A008B0C(&a18);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  sub_29A008B0C(&a66);
  if (*(v66 - 121) < 0)
  {
    operator delete(*(v66 - 144));
  }

  if (*(v66 - 97) < 0)
  {
    operator delete(*(v66 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A00AF58(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!sub_29A00AFCC(a1, a2, v2 + 4))
      {
        if (!sub_29A00AFCC(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL sub_29A00AFCC(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *sub_29A00B038(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A00B16C(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t sub_29A00B0D0(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_29A00AFCC(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_29A00AFCC(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void *sub_29A00B16C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29A00B204(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_29A00B25C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_29A00B25C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_29A00B3F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A00B454(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A00B454(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

_OWORD *sub_29A00B4AC(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x50uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    *(v7 + 9) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t Alembic::AbcCoreAbstract::v12::GetLibraryVersionShort(Alembic::AbcCoreAbstract::v12 *this)
{
  sub_29A00B6DC(&v6);
  v1 = MEMORY[0x29C2C1ED0](&v6, 1);
  v2 = sub_29A00911C(v1, ".", 1);
  v3 = MEMORY[0x29C2C1ED0](v2, 8);
  v4 = sub_29A00911C(v3, ".", 1);
  MEMORY[0x29C2C1ED0](v4, 3);
  std::stringbuf::str();
  v6 = *MEMORY[0x29EDC9538];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v7 = MEMORY[0x29EDC9570] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v10);
}

void sub_29A00B6C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A00B6DC(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_29A008F58((a1 + 1), 16);
  return a1;
}

void sub_29A00B820(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A00B848(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](a1 + 112);
  return a1;
}

void Alembic::AbcCoreAbstract::v12::GetLibraryVersion(Alembic::AbcCoreAbstract::v12 *this)
{
  Alembic::AbcCoreAbstract::v12::GetLibraryVersionShort(v13, this);
  sub_29A00B6DC(&v8);
  v1 = sub_29A00911C(&v8, "Alembic ", 8);
  if ((v14 & 0x80u) == 0)
  {
    v2 = v13;
  }

  else
  {
    v2 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = v13[1];
  }

  v4 = sub_29A00911C(v1, v2, v3);
  v5 = sub_29A00911C(v4, " (built ", 8);
  v6 = sub_29A00911C(v5, "Oct 10 2025", 11);
  v7 = sub_29A00911C(v6, " ", 1);
  sub_29A00911C(v7, "21:41:55)", 9);
  std::stringbuf::str();
  v8 = *MEMORY[0x29EDC9538];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v12);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_29A00BB34(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

Alembic::AbcCoreAbstract::v12::TimeSampling *Alembic::AbcCoreAbstract::v12::TimeSampling::TimeSampling(Alembic::AbcCoreAbstract::v12::TimeSampling *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  sub_29A00C8EC(a1 + 2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  Alembic::AbcCoreAbstract::v12::TimeSampling::init(a1);
  return a1;
}

void sub_29A00BBBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double Alembic::AbcCoreAbstract::v12::TimeSampling::init(Alembic::AbcCoreAbstract::v12::TimeSampling *this)
{
  v2 = (*(this + 3) - *(this + 2)) >> 3;
  v3 = *this;
  v4 = Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(this);
  if (v3 != v4 && v2 != *this)
  {
    sub_29A008864(v35);
    v19 = sub_29A00911C(v36, "Incorrect number of time samples specified, expected ", 53);
    v20 = MEMORY[0x29C2C1EE0](v19, *this);
    v21 = sub_29A00911C(v20, ", got: ", 7);
    MEMORY[0x29C2C1F00](v21, v2);
    std::stringbuf::str();
    sub_29A008C60(v34, __p);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v23 = sub_29A008E1C(exception, v34);
    __cxa_throw(v23, &unk_2A203B108, sub_29A008B08);
  }

  if (v2 >= 2)
  {
    v6 = *(this + 2);
    result = *v6;
    for (i = 1; i != v2; ++i)
    {
      v8 = v6[i];
      if (result >= v8)
      {
        v11 = i;
        v29 = result;
        v30 = v6[i];
        sub_29A008864(v35);
        v12 = sub_29A00911C(v36, "Sample ", 7);
        v13 = MEMORY[0x29C2C1F00](v12, v11);
        v14 = sub_29A00911C(v13, " value: ", 8);
        v15 = MEMORY[0x29C2C1EB0](v14, v30);
        v16 = sub_29A00911C(v15, " is not greater than the previous sample: ", 42);
        MEMORY[0x29C2C1EB0](v16, v29);
        std::stringbuf::str();
        sub_29A008C60(v34, __p);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = __cxa_allocate_exception(0x20uLL);
        v18 = sub_29A008E1C(v17, v34);
        __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
      }

      result = v8;
    }

    if (*this >= 2u)
    {
      v9 = *this;
      if (v9 < Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v4))
      {
        v10 = *(this + 3);
        result = *(v10 - 8) - **(this + 2);
        if (result > *(this + 1))
        {
          v31 = *(v10 - 8) - **(this + 2);
          sub_29A008864(v35);
          v24 = sub_29A00911C(v36, "Cyclic samples provided are greater than the time per cycle. Expected: ", 71);
          v25 = MEMORY[0x29C2C1EB0](v24, *(this + 1));
          v26 = sub_29A00911C(v25, " Found: ", 8);
          MEMORY[0x29C2C1EB0](v26, v31);
          std::stringbuf::str();
          sub_29A008C60(v34, __p);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }

          v27 = __cxa_allocate_exception(0x20uLL);
          v28 = sub_29A008E1C(v27, v34);
          __cxa_throw(v28, &unk_2A203B108, sub_29A008B08);
        }
      }
    }
  }

  return result;
}

void sub_29A00BE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

Alembic::AbcCoreAbstract::v12::TimeSampling *Alembic::AbcCoreAbstract::v12::TimeSampling::TimeSampling(Alembic::AbcCoreAbstract::v12::TimeSampling *this, double a2, double a3)
{
  v5 = sub_29A00C7AC(this, a2);
  v5[2] = 0.0;
  v5[3] = 0.0;
  v5[4] = 0.0;
  sub_29A00BF50(v5 + 2, 1uLL);
  **(this + 2) = a3;
  Alembic::AbcCoreAbstract::v12::TimeSampling::init(this);
  return this;
}

void sub_29A00BF34(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A00BF50(void *a1, unint64_t a2)
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
    sub_29A00C9F4(a1, a2 - v2);
  }
}

Alembic::AbcCoreAbstract::v12::TimeSampling *Alembic::AbcCoreAbstract::v12::TimeSampling::TimeSampling(Alembic::AbcCoreAbstract::v12::TimeSampling *this)
{
  *this = 1;
  *(this + 1) = 0x3FF0000000000000;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  sub_29A00BF50(this + 2, 1uLL);
  **(this + 2) = 0;
  return this;
}

void sub_29A00BFE0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

Alembic::AbcCoreAbstract::v12::TimeSampling *Alembic::AbcCoreAbstract::v12::TimeSampling::TimeSampling(Alembic::AbcCoreAbstract::v12::TimeSampling *this, const Alembic::AbcCoreAbstract::v12::TimeSampling *a2)
{
  *this = *a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  sub_29A00C8EC(this + 2, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 3);
  return this;
}

{
  *this = *a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  sub_29A00C8EC(this + 2, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 3);
  return this;
}

uint64_t Alembic::AbcCoreAbstract::v12::TimeSampling::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A00CB24((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  return a1;
}

double Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(double **this, uint64_t a2)
{
  v4 = *this;
  if (*this == 1)
  {
    v5 = *this[2];
    v6 = *(this + 1);
    v7 = a2;
    return v5 + v6 * v7;
  }

  v8 = Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(this);
  if (v4 != v8)
  {
    if (*this < 2u || (v11 = *this, v11 >= Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v8)))
    {
      sub_29A008864(v24);
      sub_29A00911C(v25, "should be cyclic", 16);
      std::stringbuf::str();
      sub_29A008C60(v23, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v14 = sub_29A008E1C(exception, v23);
      __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
    }

    v12 = *this;
    v5 = this[2][a2 % v12];
    v6 = *(this + 1);
    v7 = (a2 / v12);
    return v5 + v6 * v7;
  }

  v9 = this[2];
  if (a2 >= (this[3] - v9))
  {
    sub_29A008864(v24);
    v15 = sub_29A00911C(v25, "Out-of-range acyclic index: ", 28);
    v16 = MEMORY[0x29C2C1F30](v15, a2);
    v17 = sub_29A00911C(v16, ", range [0-", 11);
    v18 = MEMORY[0x29C2C1F00](v17, this[3] - this[2] - 1);
    sub_29A00911C(v18, "]", 1);
    std::stringbuf::str();
    sub_29A008C60(v23, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = __cxa_allocate_exception(0x20uLL);
    v20 = sub_29A008E1C(v19, v23);
    __cxa_throw(v20, &unk_2A203B108, sub_29A008B08);
  }

  return v9[a2];
}

void sub_29A00C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcCoreAbstract::v12::TimeSampling::getFloorIndex(double **this, double a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  SampleTime = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(this, 0);
  if (SampleTime >= a2)
  {
    return 0;
  }

  if (Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(this, v3) <= a2)
  {
    return v3;
  }

  v9 = *this;
  v10 = Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v8);
  if (v9 == v10)
  {
    v11 = this[2];
    v12 = this[3] - v11;
    v13 = v12 - 1;
    if (v12 < 3)
    {
      v14 = 0;
LABEL_43:
      v32 = v11[v13];
      v33 = a2 - v32;
      if (v32 >= a2)
      {
        v33 = v32 - a2;
      }

      result = v13;
      if (v33 > 0.00001)
      {
        return v14;
      }
    }

    else
    {
      v14 = 0;
      result = v13 >> 1;
      while (1)
      {
        v16 = v11[result];
        if (v16 == a2)
        {
          break;
        }

        if (v16 <= a2)
        {
          v14 = result;
        }

        else
        {
          v13 = result;
        }

        result = (v13 + v14) / 2;
        if (v14 >= result || result >= v13)
        {
          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    v18 = *this;
    if (*this == 1)
    {
      v34 = *(this + 1);
      v35 = ((a2 - SampleTime) / v34);
      if (v35 >= a3)
      {
        result = v3;
      }

      else
      {
        result = v35 & ~(v35 >> 63);
      }

      v36 = SampleTime + v34 * result;
      if (v36 <= a2 || result == 0)
      {
        goto LABEL_58;
      }

      v38 = a2 - v36;
      if (v36 >= a2)
      {
        v38 = v36 - a2;
      }

      if (v38 <= 0.00001)
      {
LABEL_58:
        if (result < v3)
        {
          v39 = SampleTime + v34 * (result + 1);
          v40 = a2 - v39;
          if (v39 >= a2)
          {
            v40 = v39 - a2;
          }

          if (v40 <= 0.00001)
          {
            ++result;
          }
        }
      }

      else
      {
        --result;
      }
    }

    else
    {
      if (!v18 || v18 >= Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v10))
      {
        sub_29A008864(__y);
        sub_29A00911C(v47, "should be cyclic", 16);
        std::stringbuf::str();
        sub_29A008C60(v45, &__p);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v42 = sub_29A008E1C(exception, v45);
        __cxa_throw(v42, &unk_2A203B108, sub_29A008B08);
      }

      v19 = *this;
      v20 = *(this + 1);
      __y[0] = 0;
      v21 = modf((a2 - SampleTime) / v20, __y);
      if (v21 <= 1.0)
      {
        v22 = 1.0 - v21;
      }

      else
      {
        v22 = v21 + -1.0;
      }

      if (v22 <= 0.00001)
      {
        v23 = *__y + 1.0;
      }

      else
      {
        v23 = *__y;
      }

      v24 = v20 * v23;
      v25 = this[2];
      v26 = 0;
      if (v19)
      {
        while (v25[v26] < a2 - v24)
        {
          if (v19 == ++v26)
          {
            v26 = v19;
            break;
          }
        }
      }

      v27 = v23 * v19;
      v28 = v26 - (v26 == v19);
      v29 = v24 + v25[v28];
      v30 = a2 - v29;
      if (v29 >= a2)
      {
        v30 = v29 - a2;
      }

      v31 = v29 <= a2 || v28 < 1;
      if (!v31 && v30 > 0.00001)
      {
        --v28;
      }

      return v28 + v27;
    }
  }

  return result;
}

void sub_29A00C630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcCoreAbstract::v12::TimeSampling::getCeilIndex(double **this, double a2, uint64_t a3)
{
  if (Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(this, 0) >= a2)
  {
    return 0;
  }

  v6 = a3 - 1;
  if (Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(this, a3 - 1) > a2)
  {
    FloorIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getFloorIndex(this, a2, a3);
    v6 = FloorIndex;
    if (FloorIndex != a3 - 1)
    {
      v9 = a2 - v8;
      if (v8 >= a2)
      {
        v9 = v8 - a2;
      }

      if (v9 > 0.00001)
      {
        v6 = FloorIndex + 1;
        Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(this, FloorIndex + 1);
      }
    }
  }

  return v6;
}

uint64_t Alembic::AbcCoreAbstract::v12::TimeSampling::getNearIndex(double **this, double a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  FloorIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getFloorIndex(this, a2, a3);
  if (FloorIndex != v3 && vabdd_f64(a2, v6) > vabdd_f64(Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(this, FloorIndex + 1), a2))
  {
    ++FloorIndex;
  }

  return FloorIndex;
}

double *sub_29A00C7AC(double *a1, double a2)
{
  *a1 = 1;
  a1[1] = a2;
  if (a2 <= 0.0 || Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicTimePerCycle(a1) <= a2)
  {
    sub_29A008864(&v10);
    v4 = sub_29A00911C(v11, "Time per cycle must be greater than 0 ", 38);
    sub_29A00911C(v4, "and can not be ACYCLIC_TIME_PER_CYCLE.", 38);
    std::stringbuf::str();
    sub_29A008C60(v9, &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_29A008E1C(exception, v9);
    __cxa_throw(v6, &unk_2A203B108, sub_29A008B08);
  }

  return a1;
}

void sub_29A00C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A00C8B8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *sub_29A00C8EC(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A00C94C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A00C968(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_29A00C9A4();
  }

  result = sub_29A00C9BC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *sub_29A00C9BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_29A00C8B8();
  }

  return operator new(8 * a2);
}

void sub_29A00C9F4(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_29A00C9BC(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v9];
    v14 = &v12[8 * v11];
    bzero(v13, 8 * a2);
    memcpy(&v13[-8 * (v7 >> 3)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-8 * (v7 >> 3)];
    *(a1 + 8) = &v13[8 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *sub_29A00CB24(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 3)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A00C968(v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

BOOL Alembic::AbcCoreAbstract::v12::TimeSamplingType::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 <= v3)
  {
    v4 = v3 - v2;
  }

  else
  {
    v4 = v2 - v3;
  }

  return v4 <= 0.000000001;
}

void *Alembic::AbcCoreAbstract::v12::operator<<(void *a1, double *a2)
{
  sub_29A008E78(__p, "");
  if ((*a2 - 2) >= 0xFFFFFFFD)
  {
    v4 = "Acyclic";
  }

  else
  {
    v4 = "Cyclic";
  }

  if (*a2 == 1)
  {
    v5 = "Uniform";
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x29C2C1A60](__p, v5);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_29A00911C(a1, v6, v7);
  sub_29A00911C(v8, " time sampling", 14);
  if (*a2 == 1)
  {
    v9 = " with ";
    v10 = 6;
    v11 = a1;
  }

  else
  {
    if ((*a2 - 2) > 0xFFFFFFFC)
    {
      goto LABEL_18;
    }

    v12 = sub_29A00911C(a1, " with ", 6);
    v13 = MEMORY[0x29C2C1EE0](v12, *a2);
    v11 = sub_29A00911C(v13, " samps/cycle ", 13);
    v9 = "and ";
    v10 = 4;
  }

  v14 = sub_29A00911C(v11, v9, v10);
  v15 = MEMORY[0x29C2C1EB0](v14, a2[1]);
  sub_29A00911C(v15, " chrono_ts/cycle", 16);
LABEL_18:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29A00CDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcCoreAbstract::v12::ArraySample::getKey(Alembic::AbcCoreAbstract::v12::ArraySample *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  v5 = *(this + 3) - v4;
  if (v5)
  {
    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 1;
    do
    {
      v8 = *v4++;
      v7 *= v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v9 = *(this + 12);
  v10 = sub_29A00D14C(this + 2) * v7;
  *(a2 + 16) = 0;
  v12 = (a2 + 16);
  *(a2 + 24) = 0;
  *a2 = v10;
  v13 = *(this + 2);
  *(a2 + 8) = v13;
  *(a2 + 12) = v13;
  if (v13 < 0xC)
  {
    v14 = *this;
    v15 = qword_29B42F810[v13];

    Alembic::Util::v12::MurmurHash3_x64_128(v14, v10, v15, (a2 + 16), v11);
    return;
  }

  v16 = v7 * v9;
  if (v13 == 12)
  {
    __p = 0;
    v41 = 0;
    v42[0] = 0;
    if (!v16)
    {
      v30 = 0;
      v29 = 0;
LABEL_39:
      if (v30 == v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      Alembic::Util::v12::MurmurHash3_x64_128(v31, v30 - v29, 1uLL, v12, v11);
      goto LABEL_48;
    }

    v24 = 0;
    while (1)
    {
      v25 = *this + 24 * v24;
      v26 = *(v25 + 23);
      if (v26 < 0)
      {
        v26 = *(v25 + 8);
        if (v26)
        {
LABEL_32:
          v27 = 0;
          do
          {
            v28 = v25;
            if (*(v25 + 23) < 0)
            {
              v28 = *v25;
            }

            LOBYTE(v39[0]) = *(v28 + v27);
            sub_29A00D178(&__p, v39);
            ++v27;
          }

          while (v26 != v27);
        }
      }

      else if (*(v25 + 23))
      {
        goto LABEL_32;
      }

      LOBYTE(v39[0]) = 0;
      sub_29A00D178(&__p, v39);
      if (++v24 == v16)
      {
        v29 = __p;
        v30 = v41;
        goto LABEL_39;
      }
    }
  }

  if (v13 != 13)
  {
    sub_29A008864(&__p);
    v34 = sub_29A00911C(v42, "Can't calculate key for: ", 25);
    sub_29A00D330(v34, this + 2);
    std::stringbuf::str();
    sub_29A008C60(v39, &v37);
    if (v38 < 0)
    {
      operator delete(v37);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v36 = sub_29A008E1C(exception, v39);
    __cxa_throw(v36, &unk_2A203B108, sub_29A008B08);
  }

  __p = 0;
  v41 = 0;
  v42[0] = 0;
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = *this + 24 * v17;
      v19 = *(v18 + 23);
      if (v19 < 0)
      {
        v19 = *(v18 + 8);
        if (v19)
        {
LABEL_20:
          v20 = 0;
          do
          {
            v21 = v18;
            if (*(v18 + 23) < 0)
            {
              v21 = *v18;
            }

            v39[0] = *(v21 + 4 * v20);
            sub_29A00D250(&__p, v39);
            ++v20;
          }

          while (v19 != v20);
        }
      }

      else if (*(v18 + 23))
      {
        goto LABEL_20;
      }

      v39[0] = 0;
      sub_29A00D250(&__p, v39);
      if (++v17 == v16)
      {
        v22 = __p;
        v23 = v41;
        goto LABEL_44;
      }
    }
  }

  v23 = 0;
  v22 = 0;
LABEL_44:
  v32 = v23 - v22;
  if (v32)
  {
    v33 = v22;
  }

  else
  {
    v33 = 0;
  }

  Alembic::Util::v12::MurmurHash3_x64_128(v33, v32 >> 2, 4uLL, v12, v11);
LABEL_48:
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }
}

void sub_29A00D0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29A00D14C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0xD)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_29B42F870[v1];
  }

  return v2 * *(a1 + 4);
}

void sub_29A00D178(uint64_t a1, _BYTE *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      sub_29A00C9A4();
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

    v12[v8] = *a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_29A00D250(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00E7A8(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[4 * v9];
    v17 = &v14[4 * v13];
    v18 = *a2;
    v19 = &v16[-4 * (v8 >> 2)];
    *v16 = v18;
    v6 = v16 + 4;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *sub_29A00D330(void *a1, unsigned int *a2)
{
  v4 = *a2;
  if (v4 > 0xD)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = off_29F2951F8[v4];
  }

  v6 = strlen(v5);
  sub_29A00911C(a1, v5, v6);
  if (*(a2 + 4) >= 2u)
  {
    v7 = sub_29A00911C(a1, "[", 1);
    v8 = MEMORY[0x29C2C1F00](v7, *(a2 + 4));
    sub_29A00911C(v8, "]", 1);
  }

  return a1;
}

void *Alembic::AbcCoreAbstract::v12::AllocateArraySample@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  switch(*result)
  {
    case 0:
      result = sub_29A00D4B0(*(result + 4), a2, a3);
      break;
    case 1:
      result = sub_29A00D5F8(*(result + 4), a2, a3);
      break;
    case 2:
      result = sub_29A00D73C(*(result + 4), a2, a3);
      break;
    case 3:
      result = sub_29A00D880(*(result + 4), a2, a3);
      break;
    case 4:
      result = sub_29A00D9D0(*(result + 4), a2, a3);
      break;
    case 5:
      result = sub_29A00DB20(*(result + 4), a2, a3);
      break;
    case 6:
      result = sub_29A00DC74(*(result + 4), a2, a3);
      break;
    case 7:
      result = sub_29A00DDC8(*(result + 4), a2, a3);
      break;
    case 8:
      result = sub_29A00DF1C(*(result + 4), a2, a3);
      break;
    case 9:
      result = sub_29A00E070(*(result + 4), a2, a3);
      break;
    case 0xA:
      result = sub_29A00E1C0(*(result + 4), a2, a3);
      break;
    case 0xB:
      result = sub_29A00E314(*(result + 4), a2, a3);
      break;
    case 0xC:
      result = sub_29A00E468(*(result + 4), a2, a3);
      break;
    case 0xD:
      result = sub_29A00E608(*(result + 4), a2, a3);
      break;
    default:
      *a3 = 0;
      a3[1] = 0;
      break;
  }

  return result;
}

void *sub_29A00D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v9 * a1)
  {
    v13 = operator new[](v9 * a1);
    bzero(v13, v12);
    v14 = operator new(0x28uLL);
    *v14 = v13;
    v14[1] = v3 << 32;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = 0;
    sub_29A00E7E0(v14 + 2, v6, v5, v7 >> 3);

    return sub_29A00E85C(a3, v14);
  }

  else
  {
    v16 = operator new(0x28uLL);
    *v16 = 0;
    v16[1] = v3 << 32;
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = 0;
    sub_29A00E7E0(v16 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v16);
  }
}

void *sub_29A00D5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v9 * a1)
  {
    v13 = operator new[](v12);
    v14 = operator new(0x28uLL);
    *v14 = v13;
    v14[1] = (a1 << 32) | 1;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = 0;
    sub_29A00E7E0(v14 + 2, v6, v5, v7 >> 3);

    return sub_29A00EB60(a3, v14);
  }

  else
  {
    v16 = operator new(0x28uLL);
    *v16 = 0;
    v16[1] = (a1 << 32) | 1;
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = 0;
    sub_29A00E7E0(v16 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v16);
  }
}

void *sub_29A00D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v9 * a1)
  {
    v13 = operator new[](v12);
    v14 = operator new(0x28uLL);
    *v14 = v13;
    v14[1] = (a1 << 32) | 2;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = 0;
    sub_29A00E7E0(v14 + 2, v6, v5, v7 >> 3);

    return sub_29A00EC60(a3, v14);
  }

  else
  {
    v16 = operator new(0x28uLL);
    *v16 = 0;
    v16[1] = (a1 << 32) | 2;
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = 0;
    sub_29A00E7E0(v16 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v16);
  }
}

void *sub_29A00D880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 < 0)
    {
      v13 = -1;
    }

    else
    {
      v13 = 2 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 3;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00ED60(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 3;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00D9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 < 0)
    {
      v13 = -1;
    }

    else
    {
      v13 = 2 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 4;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00EE60(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 4;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00DB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 5;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00EF60(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 5;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00DC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 6;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00F060(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 6;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 >> 61)
    {
      v13 = -1;
    }

    else
    {
      v13 = 8 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 7;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00F160(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 7;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 >> 61)
    {
      v13 = -1;
    }

    else
    {
      v13 = 8 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 8;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00F260(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 8;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 < 0)
    {
      v13 = -1;
    }

    else
    {
      v13 = 2 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 9;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00F360(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 9;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00E1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 0xA;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00F460(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 0xA;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00E314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v12)
  {
    if (v12 >> 61)
    {
      v13 = -1;
    }

    else
    {
      v13 = 8 * v12;
    }

    v14 = operator new[](v13);
    v15 = operator new(0x28uLL);
    *v15 = v14;
    v15[1] = (v3 << 32) | 0xB;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    sub_29A00E7E0(v15 + 2, v6, v5, v7 >> 3);

    return sub_29A00F560(a3, v15);
  }

  else
  {
    v17 = operator new(0x28uLL);
    *v17 = 0;
    v17[1] = (v3 << 32) | 0xB;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v17);
  }
}

void *sub_29A00E468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v9 * a1)
  {
    v13 = !is_mul_ok(v12, 0x18uLL);
    if (24 * v12 >= 0xFFFFFFFFFFFFFFF0)
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = -1;
    }

    else
    {
      v14 = 24 * v12 + 16;
    }

    v15 = operator new[](v14);
    *v15 = 24;
    v15[1] = v12;
    v16 = v15 + 2;
    bzero(v15 + 2, 24 * ((24 * v12 - 24) / 0x18) + 24);
    v17 = operator new(0x28uLL);
    *v17 = v16;
    v17[1] = (v3 << 32) | 0xC;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00F660(a3, v17);
  }

  else
  {
    v19 = operator new(0x28uLL);
    *v19 = 0;
    v19[1] = (v3 << 32) | 0xC;
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = 0;
    sub_29A00E7E0(v19 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v19);
  }
}

void *sub_29A00E608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 == *a2)
  {
    v9 = 0;
  }

  else
  {
    if ((v7 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 3;
    }

    v9 = 1;
    v10 = *a2;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  v12 = v9 * a1;
  if (v9 * a1)
  {
    v13 = !is_mul_ok(v12, 0x18uLL);
    if (24 * v12 >= 0xFFFFFFFFFFFFFFF0)
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = -1;
    }

    else
    {
      v14 = 24 * v12 + 16;
    }

    v15 = operator new[](v14);
    *v15 = 24;
    v15[1] = v12;
    v16 = v15 + 2;
    bzero(v15 + 2, 24 * ((24 * v12 - 24) / 0x18) + 24);
    v17 = operator new(0x28uLL);
    *v17 = v16;
    v17[1] = (v3 << 32) | 0xD;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0;
    sub_29A00E7E0(v17 + 2, v6, v5, v7 >> 3);

    return sub_29A00F804(a3, v17);
  }

  else
  {
    v19 = operator new(0x28uLL);
    *v19 = 0;
    v19[1] = (v3 << 32) | 0xD;
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = 0;
    sub_29A00E7E0(v19 + 2, v6, v5, v7 >> 3);

    return sub_29A00EA20(a3, v19);
  }
}

void *sub_29A00E7A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_29A00C8B8();
  }

  return operator new(4 * a2);
}

void *sub_29A00E7E0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A00E840(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A00E85C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203B178;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A00E8BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_29A00E8E8(&a13, v13);
  __cxa_rethrow();
}

void sub_29A00E8E8(int a1, void **__p)
{
  if (__p)
  {
    if (*__p)
    {
      operator delete[](*__p);
    }

    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void sub_29A00E944(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A00E98C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203B1B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_29A00E9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}