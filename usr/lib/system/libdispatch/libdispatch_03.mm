uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 + v5), v4, a3);
}

char *_dispatch_unote_create_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return _dispatch_unote_create(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

char *_dispatch_unote_create(uint64_t a1, int a2, uint64_t a3)
{
  if ((~*(a1 + 20) & a3) != 0)
  {
    return 0;
  }

  v4 = a3;
  if (*(a1 + 20) && !a3 && (*(a1 + 10) & 4) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  if ((*(a1 + 12) & 0x100) != 0)
  {
    result = _dispatch_calloc_typed(1uLL, v7, 0xCF14B766uLL);
  }

  else
  {
    result = _dispatch_calloc_typed(1uLL, v7 + 24, 0xA0040A8488062uLL) + 24;
  }

  *result = a1;
  v8 = result[29] & 0xDF | (32 * (*(a1 + 10) & 1));
  result[29] = v8;
  *(result + 6) = a2;
  result[28] = *(a1 + 8);
  *(result + 8) = v4;
  if (*(a1 + 13))
  {
    result[29] = v8 | 1;
  }

  return result;
}

char *_dispatch_unote_create_without_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return _dispatch_unote_create(a1, 0, a3);
  }
}

void _dispatch_unote_dispose(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = *(a1 + 29);
  if ((v4 & 0x40) != 0)
  {
    _Block_release(*(a1 + 48));
    v4 = *(v3 + 29);
  }

  if ((v4 & 2) != 0)
  {
    if (*(v3 + 112) != -1 || *(v3 + 116) != -1)
    {
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Disposing of timer still in its heap";
      __break(1u);
      return;
    }

    v5 = *(v3 + 104);
    if (v5)
    {
      free(v5);
      *(v3 + 104) = 0;
    }

    goto LABEL_14;
  }

  if ((v4 & 1) == 0)
  {
    v3 -= 24;
LABEL_14:

    free(v3);
    return;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  _dispatch_unote_dispose_defer(v3);
}

void _dispatch_unote_register(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 29) & 2) == 0)
  {
    v6 = *(a1 + 16);
  }

  if ((a3 & 0x4600FFFF) == 0x4004000)
  {
    v7 = *(a1 + 8);
    if (MEMORY[0xFFFFFC100])
    {
      _dispatch_unote_register_cold_1();
    }
  }

  *(a1 + 36) = a3;
  if (*(a1 + 28) - 233 > 2)
  {
    if ((*(a1 + 29) & 2) != 0)
    {
      _dispatch_timer_unote_register(a1, a2, a3);
    }

    else if (*(a1 + 29))
    {

      _dispatch_unote_register_direct(a1, a2);
    }

    else
    {

      _dispatch_unote_register_muxed(a1);
    }
  }

  else
  {
    *(a1 + 16) = -3;
  }
}

void _dispatch_timer_unote_register(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 8) & 0xF) - 1 <= 1)
  {
    v4 = *(a1 + 30);
    if (v4)
    {
      v5 = *(a1 + 8);
      if (MEMORY[0xFFFFFC100])
      {
        v7 = a1;
        v8 = a2;
        kdebug_trace();
        a1 = v7;
        a2 = v8;
      }
    }

    else
    {
      *(a1 + 30) = v4 | 2;
      *(a1 + 24) = 3 * ((v4 >> 2) & 3) + 2;
    }
  }

  if ((*(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL) != a2)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = -4;
  }

  if (*(a1 + 104))
  {

    _dispatch_timer_unote_configure(a1);
  }
}

void _dispatch_unote_resume(void *a1)
{
  if ((*(a1 + 29) & 2) != 0)
  {
    _dispatch_timer_unote_resume(a1);
  }

  else
  {
    v1 = a1[2];
    if (*(a1 + 29))
    {
      _dispatch_unote_resume_direct(a1);
    }

    else
    {
      _dispatch_unote_resume_muxed(a1);
    }
  }
}

void _dispatch_timer_unote_resume(uint64_t a1)
{
  v2 = !(*(55 - *(a1 + 8)) >> 55) && *(a1 + 24) != -1 && *(a1 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
  v3 = *(a1 + 16);
  v4 = *(a1 + 30);
  v5 = (v4 >> 2) & 3;
  v6 = v4 & 3;
  v7 = 3 * v5;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 48);
  }

  else
  {
    v8 = &_dispatch_timers_heap;
  }

  v9 = v7 + v6;
  if (v3 & v2)
  {
    if (*(a1 + 24) == v9)
    {
      if (v2)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 1) == 0)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_15;
  }

  _dispatch_timer_unote_disarm(a1, v8);
  if (v2)
  {
LABEL_11:
    if (v3)
    {
LABEL_17:

      _dispatch_timer_unote_arm(a1, v8, v9);
      return;
    }

LABEL_15:
    if (*(7 - *(a1 + 8)) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - *(a1 + 8)), 2u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      return;
    }

    goto LABEL_17;
  }

LABEL_21:
  if (v3)
  {
    v10 = ~*(a1 + 8);

    _os_object_release_internal_n(v10, 2);
  }
}

void _dispatch_unote_unregister(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 28) - 233 > 2)
    {
      if ((*(a1 + 29) & 2) != 0)
      {
        _dispatch_timer_unote_unregister(a1);
      }

      else if (*(a1 + 29))
      {

        _dispatch_unote_unregister_direct(a1, a2);
      }

      else
      {

        _dispatch_unote_unregister_muxed(a1);
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }
}

void _dispatch_timer_unote_unregister(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 48);
  }

  else
  {
    v3 = &_dispatch_timers_heap;
  }

  if ((*(a1 + 16) & 1) != 0 && (_dispatch_timer_unote_disarm(a1, v3), *(7 - *(a1 + 8)) != 0x7FFFFFFF) && atomic_fetch_add_explicit((7 - *(a1 + 8)), 0xFFFFFFFE, memory_order_release) <= 2)
  {
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    if (v4 == -4 || v4 == 0)
    {
      goto LABEL_14;
    }

    add_explicit = atomic_fetch_add_explicit((v4 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_14;
    }

    if ((add_explicit & 0x80000000) == 0)
    {
      *(v4 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v4);
LABEL_14:
      *(a1 + 16) = 0;
      *(a1 + 24) = -1;
      return;
    }
  }

  qword_1EBC5B980 = "API MISUSE: Over-release of an object";
  __break(1u);
}

_BYTE *_dispatch_source_data_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 | a2)
  {
    return 0;
  }

  result = _dispatch_calloc_typed(1uLL, *(a1 + 24), 0xE15B3399uLL);
  *result = a1;
  result[28] = *(a1 + 8);
  result[29] |= 1u;
  return result;
}

char *_dispatch_source_signal_create(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 0x1F)
  {
    return _dispatch_unote_create_with_handle(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void _dispatch_timer_unote_configure(unsigned int *a1)
{
  __swp(a1, a1 + 26);
  v2 = *(a1 + 30);
  if (a1[6] != ((v2 >> 2) & 3))
  {
    v3 = v2 & 0xF3;
    *(a1 + 30) = v3;
    *(a1 + 30) = v3 | (4 * *(a1 + 24));
  }

  v4 = *a1;
  *(a1 + 12) = *(a1 + 2);
  *(a1 + 5) = v4;
  free(a1);
  *(a1 + 9) = 0;
  if (*(a1 + 2))
  {

    _dispatch_timer_unote_resume(a1);
  }
}

double _dispatch_source_timer_create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3 & 0xFFFFFFFD;
  }

  else
  {
    v3 = a3;
  }

  if ((v3 & ~*(a1 + 20)) == 0)
  {
    v4 = a1;
    if ((*(a1 + 11) & 0x10) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (*(a1 + 8) != 236)
      {
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v3 |= 4u;
          }

          else
          {
            if (a2 != 3)
            {
              return result;
            }

            v3 |= 8u;
          }
        }

        else
        {
          if (!a2)
          {
            goto LABEL_21;
          }

          if (a2 != 1)
          {
            return result;
          }
        }

        v4 = &_dispatch_source_type_timer_with_clock;
        goto LABEL_21;
      }

      if (a2)
      {
        return result;
      }
    }

LABEL_21:
    v5 = _dispatch_calloc_typed(1uLL, *(v4 + 6), 0xA22BFC3EuLL);
    *v5 = v4;
    v5[28] = *(v4 + 8);
    v5[29] |= 2u;
    v6 = *(v4 + 11) | v3 | v5[30];
    v5[30] = v6;
    *(v5 + 6) = 3 * ((v6 >> 2) & 3) + (v6 & 3);
    result = NAN;
    *(v5 + 14) = -1;
    *(v5 + 10) = -1;
    *(v5 + 11) = -1;
    *(v5 + 12) = -1;
  }

  return result;
}

void _dispatch_event_loop_drain_timers(uint64_t a1, unsigned int a2)
{
  v56[0] = 0;
  v56[1] = 0;
  v3 = a2;
  v57 = 0;
  do
  {
    if (!a2)
    {
      *(a1 + 6) = 0;
      return;
    }

    v4 = 0;
    do
    {
      v5 = a1 + 32 * v4;
      v8 = *(v5 + 8);
      v7 = (v5 + 8);
      v6 = v8;
      if (v8)
      {
        v9 = v4 / 3uLL;
        while (1)
        {
          v10 = v56[v9];
          if (!v10)
          {
            v58 = 0;
            v59 = 0;
            mach_get_times();
            v57 = v59 + 1000000000 * v58;
            v10 = v56[v9];
          }

          v11 = *(v6 + 80);
          v12 = v10 >= v11;
          v13 = v10 - v11;
          if (!v12)
          {
            goto LABEL_39;
          }

          if ((*(v6 + 30) & 0x40) != 0)
          {
            _dispatch_timer_unote_disarm(v6, a1);
            v22 = *(v6 + 16) & 0xFFFFFFFFFFFFFFFCLL;
            if (v22 != -4 && v22 != 0)
            {
              add_explicit = atomic_fetch_add_explicit((v22 + 96), 0xFFFFFFFF, memory_order_relaxed);
              if (add_explicit <= 0)
              {
                if (add_explicit < 0)
                {
                  _os_object_retain_weak_cold_1();
                }

                *(v22 + 56) = 0xDEAD000000000000;
                _dispatch_object_dealloc(v22);
              }
            }

            _dispatch_event_loop_drain_timers_cold_2((v6 + 16), v6);
            goto LABEL_27;
          }

          if (!*(v6 + 104))
          {
            break;
          }

          _dispatch_timer_unote_configure(v6);
LABEL_27:
          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_39;
          }
        }

        if (*(v6 + 72))
        {
          v21.n128_f64[0] = _dispatch_timer_unote_disarm(v6, a1);
          atomic_fetch_or_explicit((v6 + 72), 1uLL, memory_order_relaxed);
        }

        else
        {
          v14 = *(v6 + 96);
          v15 = v13 / v14;
          if (v15 + 1 < 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v15 + 1;
          }

          else
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v14 > 0x7FFFFFFFFFFFFFFELL)
          {
            *(v6 + 80) = -1;
            *(v6 + 88) = -1;
            v19 = 1;
          }

          else
          {
            v17 = v16 * v14 + v11;
            v18 = *(v6 + 88) + v16 * v14;
            *(v6 + 80) = v17;
            *(v6 + 88) = v18;
            v19 = v17 > 0x7FFFFFFFFFFFFFFELL;
          }

          v20 = 2 * v16;
          if (*(55 - *(v6 + 8)) >> 55)
          {
            _dispatch_event_loop_drain_timers_cold_4();
          }

          else if (*(v6 + 24) != -1 && !v19)
          {
            if (*(7 - *(v6 + 8)) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - *(v6 + 8)), 2u, memory_order_relaxed) <= 0)
            {
              dispatch_set_target_queue_cold_2();
            }

            _dispatch_timer_unote_arm(v6, a1, v4);
            *(v6 + 72) = v20;
            goto LABEL_26;
          }

          v21.n128_f64[0] = _dispatch_timer_unote_disarm(v6, a1);
          atomic_store(v20 | 1, (v6 + 72));
        }

LABEL_26:
        (*(*v6 + 48))(v6, 16, 0, 0, v21);
        goto LABEL_27;
      }

LABEL_39:
      ++v4;
    }

    while (v4 != v3);
    *(a1 + 6) = 0;
    v25 = 0;
    do
    {
      v26 = a1 + 32 * v25;
      v27 = (v26 + 7);
      if ((*(v26 + 7) & 2) == 0)
      {
        goto LABEL_87;
      }

      v28 = *(v26 + 8);
      if (!v28)
      {
        goto LABEL_83;
      }

      v29 = *(v28 + 80);
      v30 = *(*(v26 + 16) + 88);
      v31 = v56[v25 / 3];
      if (!v31)
      {
        v58 = 0;
        v59 = 0;
        mach_get_times();
        v57 = v59 + 1000000000 * v58;
        v31 = v56[v25 / 3];
      }

      v32 = v25 % 3;
      if (v29 <= v31)
      {
        goto LABEL_82;
      }

      v33 = *v26;
      if (*v26 >= 3u)
      {
        v34 = _dispatch_kevent_coalescing_window[v32];
        if (v34 + v29 < v30)
        {
          v35 = v30 - v34;
          v29 = *(*(v26 + 8) + 80);
          v36 = *(v26 + 4);
          v37 = 2;
          do
          {
            if (v37 > 1)
            {
              v39 = __clz((v37 - 2) | 7);
              v40 = (v26 + 24);
              if (30 - v39 != v36)
              {
                v40 = (*(v26 + 24) + 8 * ((8 << (v36 - 2)) - 30 + v39));
              }

              v41 = *v40;
              if (v39 == 29)
              {
                v42 = 0;
              }

              else
              {
                v42 = -8 << (28 - v39);
              }

              v38 = v41 + 8 * (v42 + v37 - 2);
            }

            else
            {
              v38 = v26 + 8 + 8 * v37;
            }

            v43 = *(*v38 + 80);
            if (v43 <= v29)
            {
              v44 = v29;
            }

            else
            {
              v44 = v43;
            }

            v45 = (v37 & 0xFFFFFFFE) + 2;
            if (v45 == v33)
            {
              v46 = ((v37 - 2) >> 1) & 0x7FFFFFFE;
            }

            else
            {
              v46 = v37 & 0xFFFFFFFE;
            }

            v47 = (v46 + 3) >> __clz(__rbit32(-4 - v46));
            v48 = v37 & 1 | (2 * v47);
            if (!v47)
            {
              v48 = -1;
            }

            if (2 * v37 - (v37 & 1) + 2 < v33)
            {
              v48 = 2 * v37 - (v37 & 1) + 2;
            }

            if (v45 == v33)
            {
              v49 = ((v37 - 2) >> 1) & 0x7FFFFFFE;
            }

            else
            {
              v49 = v37 & 0xFFFFFFFE;
            }

            v50 = (v49 + 3) >> __clz(__rbit32(-4 - v49));
            v37 = v37 & 1 | (2 * v50);
            if (!v50)
            {
              v37 = -1;
            }

            if (v43 <= v35)
            {
              v37 = v48;
              v29 = v44;
            }
          }

          while (v37 < v33);
        }
      }

      v51 = v29 - v31 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v29 - v31;
      v52 = v30 - v29 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v30 - v29;
      if (v29 == v31)
      {
LABEL_82:
        *(a1 + 6) |= (1 << v32) | 0x80;
LABEL_83:
        v53 = *v27;
        if (*v27)
        {
          _dispatch_event_loop_timer_delete(a1, v25);
          v53 = *v27;
        }

        v54 = v53 & 0xFC;
        goto LABEL_86;
      }

      if ((v51 - 0x7FFFFFFFFFFFFFFFLL) <= 0x8000000000000001)
      {
        goto LABEL_83;
      }

      _dispatch_event_loop_timer_arm(a1, v25, v51, v52, v56);
      v54 = *v27 & 0xFC | 1;
LABEL_86:
      *v27 = v54;
LABEL_87:
      ++v25;
    }

    while (v25 != v3);
  }

  while (*(a1 + 6));
}

double _dispatch_timer_unote_disarm(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  v6 = a2 + 32 * v4;
  v7 = *v6;
  v8 = *v6 - 2;
  *v6 = v8;
  if (v7 == 2)
  {
    *(v6 + 7) |= 2u;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  else
  {
    v23 = v4;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = v8 + v9;
      if (v8 + v9 > 1)
      {
        v14 = *(v6 + 4);
        v15 = v12 - 2;
        v16 = __clz(v15 | 7);
        v17 = (v6 + 24);
        if (30 - v16 != v14)
        {
          v17 = (*(v6 + 24) + 8 * ((8 << (v14 - 2)) + v16 - 30));
        }

        if (v16 == 29)
        {
          v18 = 0;
        }

        else
        {
          v18 = -8 << (28 - v16);
        }

        v13 = (*v17 + 8 * (v18 + v15));
      }

      else
      {
        v13 = (v6 + 8 + 8 * v12);
      }

      v19 = *v13;
      *v13 = 0;
      if (v19 != a1)
      {
        _dispatch_timer_heap_resift(v6, v19, *(a1 + 112 + 4 * v9));
      }

      v10 = 0;
      v9 = 1;
    }

    while ((v11 & 1) != 0);
    v20 = *(v6 + 4);
    if (v20 == 1)
    {
      v21 = 2;
    }

    else
    {
      v21 = (8 << (v20 - 2)) - v20 + 4;
    }

    LODWORD(v4) = v23;
    v2 = a2;
    if (v8 <= v21)
    {
      _dispatch_timer_heap_shrink(v6);
    }
  }

  result = NAN;
  *(a1 + 112) = -1;
  *(v2 + 6) |= (1 << (v4 % 3)) | 0x80;
  *(a1 + 16) &= ~1uLL;
  return result;
}

uint64_t _dispatch_timer_unote_arm(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  if (*(result + 16))
  {
    _dispatch_timer_heap_resift(a2 + 32 * a3, result, *(result + 112));
    result = _dispatch_timer_heap_resift(a2 + 32 * a3, v5, *(v5 + 116));
  }

  else
  {
    *(result + 24) = a3;
    v6 = a2 + 32 * a3;
    v7 = *v6;
    v8 = *v6 + 2;
    *v6 = v8;
    v9 = *(result + 36);
    v10 = (v9 >> 8) & 0xF;
    v11 = v9 >> 12;
    if (v10 > v11)
    {
      v11 = v10;
    }

    if (v11 > *(v6 + 5))
    {
      *(v6 + 5) = v11;
      *(v6 + 7) |= 2u;
    }

    if (v7)
    {
      if (*(v6 + 4))
      {
        v12 = (8 << (*(v6 + 4) - 1)) - *(v6 + 4) + 3;
      }

      else
      {
        v12 = 2;
      }

      if (v8 > v12)
      {
        _dispatch_timer_heap_grow(a2 + 32 * a3);
      }

      _dispatch_timer_heap_resift(a2 + 32 * a3, v5, v7);
      result = _dispatch_timer_heap_resift(a2 + 32 * a3, v5, v7 + 1);
    }

    else
    {
      *(v6 + 7) |= 2u;
      *(result + 112) = 0x100000000;
      *(v6 + 8) = result;
      *(v6 + 16) = result;
    }

    *(v5 + 16) |= 1uLL;
  }

  *(a2 + 6) |= (1 << (a3 % 3)) | 0x80;
  return result;
}

uint64_t _dispatch_timer_heap_resift(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *result;
  v4 = a3 & 1;
  v5 = *(result + 4);
  v6 = a3 - 2;
  if (a3 < 2)
  {
    v7 = (result + 8 * a3 + 8);
LABEL_22:
    v20 = a3 & 1;
    v21 = 2 * a3 - v20 + 2;
    if (v21 < v3)
    {
      v22 = (result + 24);
      v23 = (8 << (v5 - 2)) - 30;
      v24 = result + 8;
      while (1)
      {
        if (v21 > 1)
        {
          v25 = __clz((v21 - 2) | 7);
          v26 = (result + 24);
          if (30 - v25 != v5)
          {
            v26 = (*v22 + 8 * (v23 + v25));
          }

          v27 = *v26;
          v28 = v25 == 29 ? 0 : -8 << (28 - v25);
          v14 = (v27 + 8 * (v28 + v21 - 2));
        }

        else
        {
          v14 = (v24 + 8 * v21);
        }

        v29 = *v14;
        if (v21 + 2 >= v3)
        {
          v13 = v21;
        }

        else
        {
          if (v21 < 0xFFFFFFFE)
          {
            v31 = __clz(v21 | 7);
            v32 = (result + 24);
            if (30 - v31 != v5)
            {
              v32 = (*v22 + 8 * (v23 + v31));
            }

            v33 = *v32;
            v34 = v31 == 29 ? 0 : -8 << (28 - v31);
            v30 = (v33 + 8 * (v34 + v21));
          }

          else
          {
            v30 = (v24 + 8 * (v21 + 2));
          }

          v13 = v21;
          if (*(v29 + 8 * v4 + 80) > *(*v30 + 8 * v4 + 80))
          {
            v29 = *v30;
            v13 = v21 + 2;
            v14 = v30;
          }
        }

        if (*(a2 + 80 + 8 * v4) <= *(v29 + 8 * v4 + 80))
        {
          break;
        }

        if (a3 <= 1)
        {
          *(result + 7) |= 2u;
        }

        *v7 = v29;
        *(v29 + 4 * v20 + 112) = a3;
        v20 = v13 & 1;
        v21 = 2 * v13 - v20 + 2;
        a3 = v13;
        v7 = v14;
        if (v21 >= v3)
        {
          goto LABEL_50;
        }
      }
    }

    v14 = v7;
    v13 = a3;
    goto LABEL_50;
  }

  v8 = __clz(v6 | 7);
  if (30 - v8 == v5)
  {
    v9 = (result + 24);
  }

  else
  {
    v9 = (*(result + 24) + 8 * (v8 + (8 << (v5 - 2)) - 30));
  }

  v10 = 0;
  if (v8 == 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = -8 << (28 - v8);
  }

  v7 = (*v9 + 8 * (v11 + v6));
  while (1)
  {
    v12 = a3 - 2;
    v13 = a3 & 1 | (2 * ((a3 - 2) >> 2));
    if (a3 - 2 > 3)
    {
      v15 = __clz((v13 - 2) | 7);
      v16 = (result + 24);
      if (30 - v15 != v5)
      {
        v16 = (*(result + 24) + 8 * ((8 << (v5 - 2)) - 30 + v15));
      }

      v17 = *v16;
      v18 = v15 == 29 ? 0 : -8 << (28 - v15);
      v14 = (v17 + 8 * (v18 + v13 - 2));
    }

    else
    {
      v14 = (result + 8 + 8 * v13);
    }

    v19 = *v14;
    if (*(*v14 + 8 * v4 + 80) <= *(a2 + 80 + 8 * v4))
    {
      break;
    }

    *v7 = v19;
    *(v19 + 4 * (a3 & 1) + 112) = a3;
    v10 = 1;
    a3 = a3 & 1 | (2 * (v12 >> 2));
    v7 = v14;
    if (v12 <= 3)
    {
      goto LABEL_50;
    }
  }

  v14 = v7;
  v13 = a3;
  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_50:
  if (v13 <= 1)
  {
    *(result + 7) |= 2u;
  }

  *v14 = a2;
  *(a2 + 4 * (v13 & 1) + 112) = v13;
  return result;
}

void _dispatch_timer_heap_shrink(uint64_t a1)
{
  v2 = *(a1 + 4) - 1;
  *(a1 + 4) = v2;
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = 8 << (v2 - 1);
    v6 = v3[v5 - v2];
    v7 = v2 - 1;
    if (v4 != 1)
    {
      memcpy((v6 + 8 * ((v5 >> 1) - v7)), &v3[v5 - v7], 8 * v7);
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = v6;

  free(v3);
}

char *_dispatch_timer_heap_grow(uint64_t a1)
{
  v2 = *(a1 + 4);
  *(a1 + 4) = v2 + 1;
  v3 = *(a1 + 24);
  v4 = 8 << (v2 - 1);
  if (v2)
  {
    v5 = (8 << (v2 - 1));
  }

  else
  {
    v5 = 8;
  }

  result = _dispatch_calloc_typed(v5, 8uLL, 0x80040B8603338uLL);
  v7 = result;
  if (v2 >= 2)
  {
    result = memcpy(&result[8 * (v4 - (v2 - 1))], (v3 + 8 * ((v4 >> 1) - (v2 - 1))), 8 * (v2 - 1));
LABEL_7:
    *&v7[8 * (v4 - v2)] = v3;
    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 24) = v7;
  return result;
}

uint64_t _dispatch_sync_ipc_handoff_begin(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = 655343;
  v4[2] = a1;
  v5 = -2147483392;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = a3;
  v10 = -1;
  v11 = a1;
  result = _dispatch_kq_immediate_update(a1, v4);
  if ((result & 0xFFFFFFFD) != 0)
  {
    _dispatch_sync_ipc_handoff_begin_cold_1(result);
  }

  return result;
}

uint64_t _dispatch_kq_immediate_update(uint64_t a1, uint64_t a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (v2 && *(v2 + 24) == a1)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    if (*(v2 + 48))
    {
      v5 = 0;
      for (i = (v3 + 16); *(i - 4) != *(a2 + 8) || *(i - 2) != *a2 || *i != *(a2 + 16); i += 9)
      {
        if (v4 == ++v5)
        {
          return _dispatch_kq_drain(a1, a2, 1, 3);
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 < v4)
    {
      v7 = v4 - 1;
      *(v2 + 48) = v7;
      if (v5 != v7)
      {
        v8 = v3 + 72 * v5;
        v9 = v3 + 72 * v7;
        *v8 = *v9;
        v10 = *(v9 + 16);
        v11 = *(v9 + 32);
        v12 = *(v9 + 48);
        *(v8 + 64) = *(v9 + 64);
        *(v8 + 32) = v11;
        *(v8 + 48) = v12;
        *(v8 + 16) = v10;
      }
    }
  }

  return _dispatch_kq_drain(a1, a2, 1, 3);
}

void *_dispatch_sync_ipc_handoff_end(void *a1, unsigned int a2)
{
  v3[0] = a2;
  v3[1] = 524271;
  v3[2] = a1;
  v4 = 0x80000000;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  return _dispatch_kq_deferred_update(a1, v3);
}

void *_dispatch_kq_deferred_update(void *result, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 232);
  if (v3 && *(v3 + 24) == result && (v4 = *(v3 + 50), *(v3 + 50)))
  {
    v5 = *(v3 + 48);
    if (*(v3 + 48))
    {
      v6 = 0;
      v7 = (*(v3 + 40) + 16);
      while (*(v7 - 4) != *(a2 + 8) || *(v7 - 2) != *a2 || *v7 != *(a2 + 16))
      {
        ++v6;
        v7 += 9;
        if (v5 == v6)
        {
          LODWORD(v6) = *(v3 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (result != -4)
    {
      *(StatusReg + 40) = 1;
    }

    if (v6 != v4)
    {
      if (v6 == v5)
      {
        *(v3 + 48) = v5 + 1;
        LODWORD(v6) = v5;
      }

      goto LABEL_20;
    }

    v16 = v3;
    v17 = a2;
    *(v3 + 48) = 1;
    v13 = *(v3 + 32);
    v12 = *(v3 + 40);
    *(v3 + 32) = 0;
    result = _dispatch_kq_drain(result, v12, v5, 3);
    if (!v13)
    {
      goto LABEL_25;
    }

    result = v13;
    v14 = 0;
    do
    {
      v15 = result[1];
      free(result);
      ++v14;
      result = v15;
    }

    while (v15);
    if (v14 < 0x11u)
    {
LABEL_25:
      LODWORD(v6) = 0;
      v3 = v16;
      a2 = v17;
LABEL_20:
      v8 = *(v3 + 40) + 72 * v6;
      *v8 = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      *(v8 + 64) = *(a2 + 64);
      *(v8 + 32) = v10;
      *(v8 + 48) = v11;
      *(v8 + 16) = v9;
      return result;
    }

    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
    qword_1EBC5B9B0 = v14;
    __break(1u);
  }

  else
  {

    return _dispatch_kq_drain(result, a2, 1, 3);
  }

  return result;
}

uint64_t _dispatch_unote_register_muxed(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = v2 >> 8;
  if ((v3 | 0x10) != 0xF8)
  {
    LODWORD(v4) = *(a1 + 24);
  }

  v5 = (&_dispatch_sources + 8 * (v4 & 0x3F));
  v6 = *v5;
  if (!*v5)
  {
LABEL_7:
    v7 = _dispatch_calloc_typed(1uLL, 0x60uLL, 0x10A0040FE590B1CuLL);
    v6 = v7;
    *(v7 + 24) = *(a1 + 24);
    v8 = v7 + 24;
    v9 = *(*a1 + 12) | 5;
    v10 = *(*a1 + 16) | *(a1 + 32);
    v11 = *(*a1 + 14);
    *(v7 + 32) = *(*a1 + 8);
    *(v7 + 34) = v9;
    *(v7 + 48) = v10;
    *(v7 + 56) = v11;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 36) = 0x2000000;
    *(v7 + 40) = v7 | 1;
    v12 = *(*a1 + 40);
    if (v12)
    {
      if ((v12(v7, v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (_dispatch_kq_immediate_update(-4, v8))
    {
LABEL_9:
      free(v6);
      return 0;
    }

    *(v6 + 17) &= 0xFDFEu;
    v18 = *v5;
    *v6 = *v5;
    if (v18)
    {
      v18[1] = v6;
    }

    *v5 = v6;
    v6[1] = v5;
    goto LABEL_18;
  }

  while (v6[3] != v2 || *(v6 + 16) != v3)
  {
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v6 + 12);
  v16 = v14 & ~v15;
  if (v16)
  {
    *(v6 + 12) = v15 | v14;
    v17 = *(*a1 + 40);
    if (v17)
    {
      if ((v17(v6) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (_dispatch_kq_immediate_update(-4, (v6 + 3)))
    {
LABEL_13:
      result = 0;
      *(v6 + 12) &= ~v16;
      return result;
    }
  }

LABEL_18:
  v19 = v6 + 2;
  v20 = v6[2];
  *(a1 - 24) = v20;
  v21 = a1 - 24;
  if (v20)
  {
    *(v20 + 8) = v21;
  }

  *v19 = v21;
  *(a1 - 16) = v19;
  if (*(a1 + 28) == 232)
  {
    *(a1 + 30) = v6[8] != 0;
  }

  *(a1 - 8) = v6;
  *(a1 + 16) = -3;
  return 1;
}

void *_dispatch_unote_resume_muxed(void *a1)
{
  a1[2] |= 1uLL;
  v1 = *(*a1 + 40);
  v2 = *(a1 - 1);
  if (v1)
  {
    return v1(v2);
  }

  else
  {
    return _dispatch_kq_deferred_update(0xFFFFFFFFFFFFFFFCLL, v2 + 24);
  }
}

uint64_t _dispatch_unote_unregister_muxed(uint64_t *a1)
{
  v1 = *(a1 - 1);
  if (v1[16] == -24)
  {
    *(a1 + 30) = 0;
  }

  a1[2] = 0;
  v2 = *(a1 - 3);
  v3 = *(a1 - 2);
  if (v2)
  {
    *(v2 + 8) = v3;
  }

  *v3 = v2;
  *(a1 - 1) = 0;
  v4 = *(v1 + 2);
  if (v4)
  {
    v5 = *(*a1 + 16);
    v6 = *(v1 + 2);
    do
    {
      v7 = v6;
      v5 |= *(v6 + 14);
      v6 = *v6;
    }

    while (v6);
    v8 = *(v1 + 12);
    if ((v8 & ~v5) == 0)
    {
      return 1;
    }

    a1 = v7 + 3;
    *(v1 + 12) = v8 & v5;
  }

  else
  {
    v9 = v1[17];
    v1[17] = v9 | 2;
    if ((v9 & 2) != 0)
    {
LABEL_14:
      v11 = *v1;
      v12 = *(v1 + 1);
      if (*v1)
      {
        *(v11 + 8) = v12;
      }

      *v12 = v11;
      free(v1);
      return 1;
    }
  }

  v10 = *(*a1 + 40);
  if (v10)
  {
    if ((v10(v1) & 1) == 0)
    {
      _dispatch_bug(1282, 0);
    }
  }

  else
  {
    _dispatch_kq_deferred_update(-4, v1 + 12);
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  return 1;
}

void _dispatch_kq_unote_update(uint64_t a1, uint64_t *a2, __int16 a3)
{
  v4 = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 232);
  if (a3)
  {
    if (a1 != -4 && a1 && (atomic_fetch_add_explicit((a1 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_66;
    }

    a2[2] = a1 | 1;
  }

  if (!v8 || *(v8 + 24) != a1)
  {
    goto LABEL_8;
  }

  v21 = *(v8 + 40);
  v22 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v23 = 0;
    v24 = (v21 + 16);
    while (*(v24 - 4) != *(a2 + 28) || *(v24 - 2) != *(a2 + 6) || *v24 != a2)
    {
      ++v23;
      v24 += 9;
      if (v22 == v23)
      {
        LODWORD(v23) = *(v8 + 48);
        goto LABEL_40;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  if (v23 >= v22)
  {
LABEL_40:
    if ((v4 & 5) != 4)
    {
      goto LABEL_8;
    }

LABEL_41:
    if (a1 != -4)
    {
      *(StatusReg + 40) = 1;
    }

    if (v23 != *(v8 + 50))
    {
      if (v23 == v22)
      {
        *(v8 + 48) = v22 + 1;
        LODWORD(v23) = v22;
      }

      goto LABEL_46;
    }

LABEL_66:
    *(v8 + 48) = 1;
    v41 = *(v8 + 32);
    v40 = *(v8 + 40);
    v43 = v8;
    *(v8 + 32) = 0;
    _dispatch_kq_drain(a1, v40);
    if (v41)
    {
      v3 = 0;
      do
      {
        v42 = v41[1];
        free(v41);
        ++v3;
        v41 = v42;
      }

      while (v42);
      if (v3 >= 0x11u)
      {
        goto LABEL_73;
      }
    }

    LODWORD(v23) = 0;
    v8 = v43;
LABEL_46:
    v30 = *(v8 + 40) + 72 * v23;
    v31 = *a2;
    if (*a2)
    {
      v32 = *a2;
    }

    v33 = *(v31 + 12) | v4;
    if ((v33 & 0x201) == 0x200)
    {
      v33 &= 0xFDFEu;
    }

    v34 = *(v31 + 8);
    v35 = *(a2 + 9);
    if ((v35 & 0x4000000) != 0)
    {
      v36 = v35 & 0x8E000000 | 0xFF;
      LOWORD(v35) = v35 >> 12;
    }

    else
    {
      v36 = v35 & 0x8A0000FF;
      v35 = (v35 >> 8) & 0xF;
      if (!v35)
      {
LABEL_55:
        v19 = 0;
        v37 = *(v31 + 16) | *(a2 + 8);
        v38 = *(v31 + 14);
        *v30 = *(a2 + 6);
        *(v30 + 8) = v34;
        *(v30 + 10) = v33;
        *(v30 + 12) = v36;
        *(v30 + 16) = a2;
        *(v30 + 24) = v37;
        *(v30 + 32) = v38;
        *(v30 + 40) = 0u;
        *(v30 + 56) = 0u;
        if ((v4 & 3) != 2)
        {
          return;
        }

        goto LABEL_56;
      }
    }

    v36 |= 256 << (v35 - 1);
    goto LABEL_55;
  }

  v4 |= *(v21 + 72 * v23 + 10) & 4;
  if ((v4 & 5) == 4)
  {
    goto LABEL_41;
  }

  *(v8 + 48) = v22 - 1;
  if (v23 != (v22 - 1))
  {
    v25 = v21 + 72 * v23;
    v26 = v21 + 72 * (v22 - 1);
    *v25 = *v26;
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    v29 = *(v26 + 48);
    *(v25 + 64) = *(v26 + 64);
    *(v25 + 32) = v28;
    *(v25 + 48) = v29;
    *(v25 + 16) = v27;
  }

LABEL_8:
  v9 = *a2;
  if (*a2)
  {
    v10 = *a2;
  }

  v11 = *(v9 + 12) | v4;
  if ((v11 & 0x201) == 0x200)
  {
    v11 &= 0xFDFEu;
  }

  v12 = *(a2 + 6);
  v13 = *(v9 + 8);
  v14 = *(a2 + 9);
  if ((v14 & 0x4000000) != 0)
  {
    v15 = v14 & 0x8E000000 | 0xFF;
    LOWORD(v14) = v14 >> 12;
  }

  else
  {
    v15 = v14 & 0x8A0000FF;
    v14 = (v14 >> 8) & 0xF;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  v15 |= 256 << (v14 - 1);
LABEL_17:
  v16 = *(v9 + 16) | *(a2 + 8);
  v17 = *(v9 + 14);
  v52 = 0u;
  v53 = 0u;
  v44 = v12;
  v45 = v13;
  v46 = v11;
  v47 = v15;
  v48 = a2;
  v49 = v16;
  v50 = 0;
  v51 = v17;
  v18 = _dispatch_kq_drain(a1, &v44);
  v19 = v18;
  if (v4)
  {
    if (!v18)
    {
      return;
    }

    if (a1 != -4)
    {
      if (a1)
      {
        add_explicit = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
LABEL_72:
            qword_1EBC5B980 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_73:
            qword_1EBC5B980 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
            qword_1EBC5B9B0 = v3;
            __break(1u);
            return;
          }

          *(a1 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(a1);
        }
      }
    }

    a2[2] = 0;
    return;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_62;
  }

  if (v18 == 36)
  {
    return;
  }

LABEL_56:
  if (a1 == -4)
  {
    goto LABEL_61;
  }

  if (!a1)
  {
    goto LABEL_61;
  }

  v39 = atomic_fetch_add_explicit((a1 + 96), 0xFFFFFFFF, memory_order_relaxed);
  if (v39 > 0)
  {
    goto LABEL_61;
  }

  if (v39 < 0)
  {
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_72;
  }

  *(a1 + 56) = 0xDEAD000000000000;
  _dispatch_object_dealloc(a1);
LABEL_61:
  a2[2] = 0;
LABEL_62:
  if (v19)
  {
    _dispatch_bug(1123, v19);
  }
}

void _dispatch_unote_dispose_defer(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (*(v1 + 48))
  {
    v4 = 0;
    v5 = (v2 + 16);
    while (*(v5 - 4) != *(a1 + 28) || *(v5 - 2) != *(a1 + 24) || *v5 != a1)
    {
      ++v4;
      v5 += 9;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < v3)
  {
    v6 = *(v2 + 72 * v4 + 10);
    if ((v6 & 2) == 0)
    {
      _dispatch_unote_dispose_defer_cold_1(v6);
    }

    *(a1 + 8) = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
LABEL_13:

    free(a1);
  }
}

void *_dispatch_free_deferred_unotes(void *result)
{
  if (result)
  {
    v1 = 0;
    do
    {
      v2 = result[1];
      free(result);
      ++v1;
      result = v2;
    }

    while (v2);
    if (v1 >= 0x11u)
    {
      _dispatch_free_deferred_unotes_cold_1(v1);
    }
  }

  return result;
}

void *_dispatch_event_loop_poke(void *result, uint64_t a2, int a3)
{
  if (result == -8)
  {
    v19 = 65526;
    memset(v21, 0, sizeof(v21));
    v22 = 0u;
    v18 = 1;
    v20 = -8;
    LODWORD(v21[0]) = 0x1000000;
    return _dispatch_kq_deferred_update(0xFFFFFFFFFFFFFFFCLL, &v18);
  }

  v3 = result;
  if (result == -4 || !result)
  {
    goto LABEL_53;
  }

  if ((a2 & 0x4000000000) == 0)
  {
    result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
    if (!result || (v5 = result[3], v5 != v3))
    {
      if (a2)
      {
        v10 = *(v3[3] + 84);
        if ((v10 & 0x8000000) != 0)
        {
          goto LABEL_58;
        }

        v11 = (v10 >> 8) & 0xF;
        if (v11 <= (BYTE4(a2) & 7u))
        {
          v11 = BYTE4(a2) & 7;
        }

        if (v11 <= 1)
        {
          LOBYTE(v11) = 1;
        }

        v12 = 128 << v11;
        v7 = a2 & 2 | 0x3700000001;
        v6 = v12 | v10 & 0x80000000 | 0xFF;
        if ((a2 & 2) != 0)
        {
          v9 = 401;
        }

        else
        {
          v9 = 273;
        }

        v8 = 5;
      }

      else
      {
        v6 = 0;
        v7 = 1;
        v8 = 7;
        v9 = 1;
      }

      v18 = v3;
      LOWORD(v19) = -17;
      WORD1(v19) = v8;
      HIDWORD(v19) = v6;
      v20 = v3;
      LODWORD(v21[0]) = v9;
      memset(v21 + 4, 0, 20);
      *(&v21[1] + 1) = v3 + 7;
      *&v22 = v7;
      *(&v22 + 1) = a2;
      result = _dispatch_kq_poll(v3, &v18, 1, &v18, 1, 0, 0, 3);
      if (!result)
      {
        if ((a3 & 0x80000000) == 0)
        {
          return _os_object_release_internal(v3, v13);
        }

        if (a3)
        {
          return _os_object_release_internal_n(v3, 2);
        }

        return result;
      }

LABEL_54:
      v16 = DWORD2(v21[0]);
      v17 = WORD1(v19) & 0xBFFF;
      WORD1(v19) &= ~0x4000u;
      DWORD1(v21[0]) = DWORD2(v21[0]);
      *(&v21[0] + 1) = 0;
      if (DWORD1(v21[0]) == 105)
      {
LABEL_60:
        v16 = DWORD2(v22);
        qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_1EBC5B9B0 = *(&v22 + 1);
        __break(1u);
        goto LABEL_61;
      }

      if (v16 == 34)
      {
LABEL_59:
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Broken priority";
        qword_1EBC5B9B0 = SHIDWORD(v19);
        __break(1u);
        goto LABEL_60;
      }

      if (v16 != 2)
      {
LABEL_61:
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_1EBC5B9B0 = v16;
        __break(1u);
        return result;
      }

      v10 = (LODWORD(v21[0]) << 32) | (v17 << 16) | 2;
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
      qword_1EBC5B9B0 = v10;
      __break(1u);
LABEL_58:
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_1EBC5B9B0 = v10;
      __break(1u);
      goto LABEL_59;
    }

    if ((*(result + 53) & 4) == 0)
    {
      if (*(result + 53))
      {
        if ((a3 & 1) == 0 || *(v5 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFE, memory_order_release) > 2)
        {
          return result;
        }

        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
LABEL_41:

        return _dispatch_kevent_workloop_override_self(result, a2, a3);
      }

      if (a3 < 0)
      {
        v14 = *(v5 + 8);
        if (a3)
        {
          if (v14 != 0x7FFFFFFF && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
          {
LABEL_52:
            qword_1EBC5B980 = "API MISUSE: Over-release of an object";
            __break(1u);
LABEL_53:
            qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unsupported wlh configuration";
            qword_1EBC5B9B0 = v3;
            __break(1u);
            goto LABEL_54;
          }
        }

        else if (v14 != 0x7FFFFFFF && atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed) <= 0)
        {
          qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
          __break(1u);
          goto LABEL_31;
        }
      }

      *(result + 53) |= 3u;
      *result = *(v5 + 24);
      result[1] = v5;
      *(result + 4) = BYTE4(a2) & 7;
      return result;
    }

LABEL_31:
    if ((a3 & 0x80000000) == 0)
    {
      if (*(v5 + 8) == 0x7FFFFFFF || atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) > 1)
      {

        return _dispatch_event_loop_leave_deferred(result, a2);
      }

      qword_1EBC5B980 = "API MISUSE: Over-release of an object";
      __break(1u);
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  superclass = _dispatch_mgr_q[2].superclass;

  return superclass();
}

void _dispatch_event_loop_drain(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 232);
  v4 = *(v3 + 24);
  v5 = v4 + 7;
  v6 = a1 & 3;
  while (1)
  {
    if ((*(v3 + 53) & 2) != 0)
    {
      v7 = *v5;
      *(v3 + 53) &= ~2u;
      v8 = *(v3 + 40);
      v9 = *(v3 + 48);
      if (*(v3 + 48))
      {
        v10 = 0;
        v11 = (v8 + 16);
        while (*(v11 - 4) != -17 || *(v11 - 2) != v4 || *v11 != v4)
        {
          ++v10;
          v11 += 9;
          if (v9 == v10)
          {
            LODWORD(v10) = *(v3 + 48);
            goto LABEL_12;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 == v9)
      {
LABEL_12:
        *(v3 + 48) = v9 + 1;
      }

      v12 = *(v4[3] + 84);
      if ((v12 & 0x8000000) != 0)
      {
        goto LABEL_37;
      }

      v13 = (v12 >> 8) & 0xF;
      if (v13 <= (BYTE4(v7) & 7u))
      {
        v13 = BYTE4(v7) & 7;
      }

      v14 = v8 + 72 * v10;
      *v14 = v4;
      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      *(v14 + 8) = 393199;
      *(v14 + 12) = (128 << v15) | v12 & 0x80000000 | 0xFF;
      *(v14 + 16) = v4;
      if ((v7 & 2) != 0)
      {
        v16 = 401;
      }

      else
      {
        v16 = 273;
      }

      *(v14 + 24) = v16;
      *(v14 + 36) = 0;
      *(v14 + 28) = 0;
      *(v14 + 44) = 0;
      *(v14 + 48) = v5;
      *(v14 + 56) = v7 & 2 | 0x3700000001;
      *(v14 + 64) = v7;
    }

    v17 = *(v3 + 48);
    *(v3 + 48) = 0;
    v19 = *(v3 + 32);
    v18 = *(v3 + 40);
    *(v3 + 32) = 0;
    _dispatch_kq_drain(v4, v18, v17, a1);
    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = v19[1];
        free(v19);
        ++v20;
        v19 = v21;
      }

      while (v21);
      if (v20 >= 0x11u)
      {
        break;
      }
    }

    if (v4 != -4)
    {
      if (v4)
      {
        if (*(*v4 + 40) == 18)
        {
          v22 = v4[6];
          if (v22)
          {
            if (*(v22 + 6))
            {
              _dispatch_event_loop_drain_timers(v22, 6u);
            }
          }
        }
      }
    }

    if (v6 != 1 || !*(StatusReg + 40))
    {
      return;
    }
  }

  v12 = v20;
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
  qword_1EBC5B9B0 = v20;
  __break(1u);
LABEL_37:
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
  qword_1EBC5B9B0 = v12;
  __break(1u);
}

uint64_t _dispatch_kq_drain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    v12 = _dispatch_kq_poll(a1, a2, a3, v19, 16, 0, 0, a4);
    if (v12 < 1)
    {
LABEL_16:
      result = 0;
      goto LABEL_17;
    }

    v13 = v12;
    result = 0;
    v14 = v13;
    v15 = v19;
    do
    {
      if ((v15[5] & 0x4000) != 0 && *(v15 + 4))
      {
        _dispatch_kevent_drain(v15);
        result = *(v15 + 8);
      }

      v15 += 36;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = 0x8000;
    MEMORY[0x1EEE9AC00](a1);
    bzero(v17, 0x8000uLL);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *(StatusReg + 40) = 0;
    result = _dispatch_kq_poll(a1, a2, a3, v19, 16, v17, &v18, a4);
    if (result)
    {
      if ((v19[5] & 0x4000) != 0)
      {
        *(StatusReg + 40) = 1;
      }

      if (result >= 1)
      {
        v10 = result;
        v11 = v19;
        do
        {
          _dispatch_kevent_drain(v11);
          v11 += 36;
          --v10;
        }

        while (v10);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void _dispatch_event_loop_merge(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v4 = *(v3 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v11 - v5;
  memcpy(v11 - v5, v7, v8);
  *(v3 + 50) = 14;
  if (v2 >= 1)
  {
    v2 = v2;
    do
    {
      _dispatch_kevent_drain(v6);
      v6 += 72;
      --v2;
    }

    while (v2);
  }

  if (v4 == -4)
  {
    if (*(v3 + 8) && *(v3 + 48))
    {
      _dispatch_event_loop_drain(3);
    }
  }

  else if (*(*v4 + 40) == 18)
  {
    v9 = v4[6];
    if (v9)
    {
      if (*(v9 + 6))
      {
        _dispatch_event_loop_drain_timers(v9, 6u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void _dispatch_kevent_drain(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 65526)
  {
    if (v1 == 65519)
    {
      _dispatch_kevent_workloop_poke_drain(a1);
      return;
    }

    v3 = *(a1 + 10);
    if ((v3 & 0x4000) != 0)
    {
      if (v1 != 65531 || *(a1 + 32) != 3)
      {
        _dispatch_kevent_print_error(a1);
        return;
      }

      *(a1 + 10) = 274;
      *(a1 + 24) = -2080374784;
      *(a1 + 32) = 0;
    }

    else if (v1 == 65528)
    {
      if (*(a1 + 48))
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 24);
      if (v6 && (v6 & 0xFFFFC000) != 0x10004000)
      {
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from mach recv";
        qword_1EBC5B9B0 = v6 | (v3 << 32);
        __break(1u);
        return;
      }

      if (v6)
      {
LABEL_13:
        _dispatch_kevent_mach_msg_drain(a1);
        return;
      }
    }

    else if (v1 == 65529)
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      *(v4 + 6) |= (1 << (*a1 % 3u)) | 0x80;
      *(v4 + 32 * v5 + 7) = *(v4 + 32 * v5 + 7) & 0xFC | 2;
      return;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      _dispatch_kevent_merge_muxed(a1);
    }

    else
    {
      _dispatch_kevent_merge(v7, a1);
    }
  }
}

uint64_t _dispatch_event_loop_leave_immediate(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  v2 = *(v1 + 24);
  *(v1 + 53) &= 0xFCu;
  v6 = v2;
  v7[0] = 524271;
  v7[1] = v2;
  v8 = 33;
  v9 = 0uLL;
  v10 = 0;
  v11 = v2 + 56;
  v12 = 0;
  v13 = a1;
  result = _dispatch_kq_poll(v2, &v6, 1, &v6, 1, 0, 0, 131075);
  if (result)
  {
    v4 = DWORD1(v9);
    v5 = WORD1(v7[0]) & 0xBFFF;
    WORD1(v7[0]) &= ~0x4000u;
    LODWORD(v9) = DWORD1(v9);
    *(&v9 + 4) = 0;
    if (v9 != 105)
    {
      if (v4 != 34)
      {
        if (v4 == 2)
        {
          _dispatch_event_loop_leave_immediate_cold_2(&v8, v5);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v4);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v7 + 1);
    }

    _dispatch_event_loop_leave_immediate_cold_3(&v13);
  }

  return result;
}

uint64_t _dispatch_kq_poll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  context = 0;
  if (_dispatch_kq_poll_pred != -1)
  {
    dispatch_once_f(&_dispatch_kq_poll_pred, &context, _dispatch_kq_init);
    if (context)
    {
      _dispatch_memorypressure_create(*MEMORY[0x1E69E9B50]);
      _voucher_activity_debug_channel_init();
    }
  }

  if (a1)
  {
    v10 = &_dispatch_mgr_q;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      while (1)
      {
        if (a1 == -4)
        {
          v11 = v10;
          v12 = *(v10 + 8);
          a8 |= 0x20u;
          result = kevent_qos();
        }

        else
        {
          v11 = v10;
          if ((a8 & 2) != 0)
          {
            v14 = 1024;
          }

          else
          {
            v14 = 132096;
          }

          a8 |= v14;
          result = kevent_id();
        }

        if (result != -1)
        {
          return result;
        }

        LODWORD(v15) = **(StatusReg + 8);
        if (v15 > 8)
        {
          break;
        }

        v10 = v11;
        if (v15 != 4)
        {
          goto LABEL_19;
        }
      }

      if (v15 != 12)
      {
        break;
      }

      _dispatch_temporary_resource_shortage();
      v10 = v11;
    }

    if (v15 == 9)
    {
      LODWORD(v15) = 9;
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Do not close random Unix descriptors";
      qword_1EBC5B9B0 = 9;
      __break(1u);
    }

LABEL_25:
    v15 = v15;
    goto LABEL_26;
  }

  LODWORD(v15) = 0;
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid wlh";
  qword_1EBC5B9B0 = 0;
  __break(1u);
LABEL_19:
  if (v15 != 2)
  {
    goto LABEL_25;
  }

  if ((~a8 & 0x20002) != 0)
  {
    while (1)
    {
      v15 = 2;
LABEL_26:
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected error from kevent";
      qword_1EBC5B9B0 = v15;
      __break(1u);
    }
  }

  return 0;
}

uint64_t _dispatch_event_loop_leave_deferred(uint64_t result, uint64_t a2)
{
  if ((~a2 & 0x2800000000) == 0)
  {
    v2 = a2 & 0xFFFFFFFC | 3;
    v3 = *(result + 24);
    if ((a2 & 0xFFFFFFFC) == 0)
    {
      v2 = 0;
    }

    v4 = *(result + 40);
    v5 = *(result + 48);
    if (*(result + 48))
    {
      v6 = 0;
      v7 = (v4 + 16);
      while (*(v7 - 4) != -17 || *(v7 - 2) != v3 || *v7 != v2)
      {
        ++v6;
        v7 += 9;
        if (v5 == v6)
        {
          LODWORD(v6) = *(result + 48);
          goto LABEL_13;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (v6 == v5)
    {
LABEL_13:
      *(result + 48) = v5 + 1;
    }

    v8 = v4 + 72 * v6;
    *v8 = v2;
    *(v8 + 8) = 655343;
    *(v8 + 16) = v3;
    *(v8 + 24) = 392;
    *(v8 + 36) = 0;
    *(v8 + 28) = 0;
    *(v8 + 44) = 0;
    *(v8 + 56) = 0x3800000002;
    *(v8 + 64) = a2;
    *(v8 + 48) = v3 + 56;
  }

  *(result + 53) &= 0xFCu;
  v9 = *(result + 24);
  v10 = *(result + 40);
  v11 = *(result + 48);
  if (*(result + 48))
  {
    v12 = 0;
    v13 = (v10 + 16);
    while (*(v13 - 4) != -17 || *(v13 - 2) != v9 || *v13 != v9)
    {
      ++v12;
      v13 += 9;
      if (v11 == v12)
      {
        LODWORD(v12) = *(result + 48);
        goto LABEL_24;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 == v11)
  {
LABEL_24:
    *(result + 48) = v11 + 1;
  }

  if (a2)
  {
    result = *(*(v9 + 24) + 84);
    if ((result & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(result);
    }

    v18 = (result >> 8) & 0xF;
    if (v18 <= (BYTE4(a2) & 7u))
    {
      v18 = BYTE4(a2) & 7;
    }

    if (v18 <= 1)
    {
      LOBYTE(v18) = 1;
    }

    v19 = 128 << v18;
    v15 = a2 & 2 | 0x3700000001;
    v14 = v19 | result & 0x80000000 | 0xFF;
    if ((a2 & 2) != 0)
    {
      v17 = 401;
    }

    else
    {
      v17 = 273;
    }

    v16 = 5;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    v16 = 7;
    v17 = 1;
  }

  v20 = v10 + 72 * v12;
  *v20 = v9;
  *(v20 + 8) = -17;
  *(v20 + 10) = v16;
  *(v20 + 12) = v14;
  *(v20 + 16) = v9;
  *(v20 + 24) = v17;
  *(v20 + 36) = 0;
  *(v20 + 28) = 0;
  *(v20 + 44) = 0;
  *(v20 + 48) = v9 + 56;
  *(v20 + 56) = v15;
  *(v20 + 64) = a2;
  return result;
}

uint64_t _dispatch_event_loop_cancel_waiter(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (1)
  {
    v8 = *(a1 + 100);
    v9[0] = 458735;
    v9[1] = v2;
    v10 = 40;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    result = _dispatch_kq_poll(v2, &v8, 1, &v8, 1, 0, 0, 3);
    if (!result)
    {
      break;
    }

    v4 = *(a1 + 106);
    v5 = DWORD1(v11);
    v6 = BYTE2(v9[0]);
    v7 = WORD1(v9[0]) & 0xBFFF;
    WORD1(v9[0]) &= ~0x4000u;
    LODWORD(v11) = DWORD1(v11);
    *(&v11 + 4) = 0;
    if (v11 != 2)
    {
      if (v5 != 34)
      {
        if (v5 == 105)
        {
          _dispatch_event_loop_cancel_waiter_cold_3(&v8);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v5);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v9 + 1);
    }

    if ((v4 & 0x20) != 0 || (v6 & 2) == 0 || (v10 & 0x28) != 0x28)
    {
      _dispatch_event_loop_cancel_waiter_cold_2(v10, v7);
    }

    MEMORY[0x1BFB10130](*(a1 + 100), 4, 1);
  }

  return result;
}

uint64_t _dispatch_event_loop_wake_owner(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v44 = *MEMORY[0x1E69E9840];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(result + 48);
  if (a2 == -4 || (v8 = *(StatusReg + 232)) == 0 || *(v8 + 24) != a2 || (*(v8 + 53) &= 0xFCu, v7 != a2))
  {
    if ((a4 ^ a3))
    {
      v35 = a2;
      v36 = 524271;
      v37 = a2;
      v38 = 257;
      v39 = 0uLL;
      v40 = 0;
      v9 = 1;
      v41 = a2 + 56;
      v42 = 1;
      v43 = a4;
      if ((a4 & 0x2000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if ((a4 & 0x2000000000) == 0)
      {
LABEL_10:
        if ((a3 & 0x2000000002) == 0x2000000000 && (*(result + 106) & 0x80000000) == 0)
        {
          v11 = *(StatusReg + 24);
          v12 = &v35 + 9 * v9;
          *v12 = v11;
          v12[1] = 458735;
          v12[2] = a2;
          *(v12 + 6) = 40;
          *(v12 + 28) = 0u;
          *(v12 + 44) = 0u;
          *(v12 + 15) = 0;
          v12[8] = a3;
          v9 = (v9 + 1);
        }

        result = _dispatch_kq_poll(a2, &v35, v9, &v35, v9, 0, 0, 3);
        v14 = v7 != -4 && v7 != a2;
        if (result)
        {
          if (v14)
          {
            _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
          }

          v33 = DWORD1(v39);
          v34 = WORD1(v36) & 0xBFFF;
          WORD1(v36) &= ~0x4000u;
          LODWORD(v39) = DWORD1(v39);
          *(&v39 + 4) = 0;
          if (v39 != 105)
          {
            if (v33 != 34)
            {
              if (v33 == 2)
              {
                _dispatch_event_loop_wake_owner_cold_2(&v35, v34);
              }

              _dispatch_sync_ipc_handoff_begin_cold_1(v33);
            }

            _dispatch_event_loop_wake_owner_cold_1(&v35);
          }

          _dispatch_event_loop_cancel_waiter_cold_3(&v35);
        }

        if (v14)
        {
          _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight");
          result = _dispatch_event_loop_cancel_waiter(v5);
        }

        goto LABEL_22;
      }
    }

    v10 = &v35 + 9 * v9;
    *v10 = *(result + 100);
    v10[1] = 655343;
    v10[2] = a2;
    *(v10 + 6) = 136;
    *(v10 + 44) = 0u;
    *(v10 + 28) = 0u;
    *(v10 + 15) = 0;
    v10[8] = a4;
    v10[6] = a2 + 56;
    v9 = (v9 + 1);
    goto LABEL_10;
  }

  v16 = *(v8 + 40);
  v17 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v18 = 0;
    v19 = (v16 + 16);
    while (*(v19 - 4) != -17 || *(v19 - 2) != a2 || *v19 != a2)
    {
      ++v18;
      v19 += 9;
      if (v17 == v18)
      {
        LODWORD(v18) = *(v8 + 48);
        goto LABEL_32;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 == v17)
  {
LABEL_32:
    *(v8 + 48) = v17 + 1;
  }

  if (a4)
  {
    result = *(*(a2 + 24) + 84);
    if ((result & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(result);
    }

    v24 = (result >> 8) & 0xF;
    if (v24 <= (BYTE4(a4) & 7u))
    {
      v24 = BYTE4(a4) & 7;
    }

    if (v24 <= 1)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 128 << v24;
    v23 = a4 & 2 | 0x3700000001;
    v20 = v25 | result & 0x80000000 | 0xFF;
    if ((a4 & 2) != 0)
    {
      v21 = 401;
    }

    else
    {
      v21 = 273;
    }

    v22 = 5;
  }

  else
  {
    v20 = 0;
    v21 = 257;
    v22 = 7;
    v23 = 1;
  }

  v26 = v16 + 72 * v18;
  *v26 = a2;
  *(v26 + 8) = -17;
  *(v26 + 10) = v22;
  *(v26 + 12) = v20;
  *(v26 + 16) = a2;
  *(v26 + 24) = v21;
  *(v26 + 36) = 0;
  *(v26 + 28) = 0;
  *(v26 + 44) = 0;
  *(v26 + 48) = a2 + 56;
  *(v26 + 56) = v23;
  *(v26 + 64) = a4;
  v27 = *(v5 + 100);
  v28 = *(v8 + 40);
  v29 = *(v8 + 48);
  if (*(v8 + 48))
  {
    v30 = 0;
    v31 = (v28 + 16);
    while (*(v31 - 4) != -17 || *(v31 - 2) != a2 || *v31 != v27)
    {
      ++v30;
      v31 += 9;
      if (v29 == v30)
      {
        LODWORD(v30) = *(v8 + 48);
        goto LABEL_53;
      }
    }
  }

  else
  {
    LODWORD(v30) = 0;
  }

  if (v30 == v29)
  {
LABEL_53:
    *(v8 + 48) = v29 + 1;
  }

  v32 = v28 + 72 * v30;
  *v32 = v27;
  *(v32 + 8) = 655343;
  *(v32 + 16) = a2;
  *(v32 + 24) = 136;
  *(v32 + 44) = 0u;
  *(v32 + 28) = 0u;
  *(v32 + 60) = 0;
  *(v32 + 64) = a4;
  *(v32 + 48) = a2 + 56;
LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void _dispatch_event_loop_wait_for_ownership(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(v2 + 56);
  if ((v3 & 0xFFFFFFFD) == 1)
  {
    v4 = *(*(v2 + 24) + 84);
    if ((v4 & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(v4);
    }

    v5 = (v4 >> 8) & 0xF;
    if (v5 <= (BYTE4(v3) & 7u))
    {
      v5 = BYTE4(v3) & 7;
    }

    v23 = v2;
    if (v5 <= 1)
    {
      LOBYTE(v5) = 1;
    }

    LODWORD(v24) = 393199;
    HIDWORD(v24) = (128 << v5) | v4 & 0x80000000 | 0xFF;
    v25 = v2;
    if ((v3 & 2) != 0)
    {
      v6 = 401;
    }

    else
    {
      v6 = 273;
    }

    v26 = v6;
    v28 = 0;
    v27 = 0;
    v29 = 0;
    v30 = v2 + 56;
    v31 = v3 & 2 | 0x3700000001;
    v32 = v3;
    v7 = 1;
  }

  else if ((~v3 & 0x2800000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFC | 3;
    if ((v3 & 0xFFFFFFFC) == 0)
    {
      v8 = 0;
    }

    v23 = v8;
    v24 = 655343;
    v25 = v2;
    v26 = 392;
    v28 = 0;
    v27 = 0;
    v29 = 0;
    v31 = 0x3800000002;
    v32 = v3;
    v7 = 1;
    v30 = v2 + 56;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v10 = *(StatusReg + 32);
    v11 = &v23 + 9 * v7;
    if ((v10 & 0x3FFF00) == 0)
    {
      LODWORD(v10) = 2303;
    }

    *v11 = *(a1 + 100);
    *(v11 + 2) = 655343;
    *(v11 + 3) = v10;
    v11[2] = v2;
    *(v11 + 6) = 4;
    *(v11 + 28) = 0u;
    *(v11 + 44) = 0u;
    *(v11 + 15) = 0;
    v11[8] = v3;
    v12 = _dispatch_kq_poll(v2, &v23, v7 + 1, &v23, v7 + 1, 0, 0, 3);
    v13 = v12;
    if (v12 >= 1)
    {
      v14 = v12;
      v15 = &v23;
      do
      {
        v16 = *(v15 + 6);
        v17 = v15[4];
        v18 = *(v15 + 5) & 0xBFFF;
        *(v15 + 5) = v18;
        *(v15 + 7) = v17;
        v15[4] = 0;
        if (v17 != 4)
        {
          switch(v17)
          {
            case 2:
              _dispatch_event_loop_wait_for_ownership_cold_4(v16, v18);
            case 0x22:
              _dispatch_event_loop_wake_owner_cold_1(v15);
            case 0x69:
              _dispatch_event_loop_cancel_waiter_cold_3(v15);
          }

LABEL_37:
          _dispatch_sync_ipc_handoff_begin_cold_1(v17);
        }

        if ((v16 & 4) == 0)
        {
          goto LABEL_37;
        }

        v15 += 9;
        --v14;
      }

      while (v14);
    }

    if (!v13)
    {
      break;
    }

    v7 = 0;
    v3 = v32;
  }

  v19 = *(a1 + 106);
  if ((v19 & 0x20) != 0)
  {
    _dispatch_event_loop_cancel_waiter(a1);
    v19 = *(a1 + 106) & 0xDF;
    *(a1 + 106) = v19;
  }

  if ((v19 & 0x40) != 0)
  {
    v20 = *(a1 + 48);
    add_explicit = atomic_fetch_add_explicit((v20 + 96), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      if (add_explicit < 0)
      {
        _os_object_retain_weak_cold_1();
      }

      *(v20 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v20);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t _dispatch_event_loop_ensure_ownership(uint64_t a1)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5[0] = 655343;
  v5[1] = a1;
  v6 = 136;
  v8 = 0u;
  v7 = 0u;
  v9 = 0;
  v10 = v4;
  *(&v8 + 4) = a1 + 56;
  result = _dispatch_kq_poll(a1, &v4, 1, &v4, 1, 0, 0, 3);
  if (result)
  {
    v2 = DWORD1(v7);
    v3 = WORD1(v5[0]) & 0xBFFF;
    WORD1(v5[0]) &= ~0x4000u;
    LODWORD(v7) = DWORD1(v7);
    *(&v7 + 4) = 0;
    if (v7 != 105)
    {
      if (v2 != 34)
      {
        if (v2 == 2)
        {
          _dispatch_event_loop_leave_immediate_cold_2(&v6, v3);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v2);
      }

      _dispatch_event_loop_leave_immediate_cold_1(v5 + 1);
    }

    _dispatch_event_loop_leave_immediate_cold_3(&v10);
  }

  return result;
}

uint64_t _dispatch_event_loop_end_ownership(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = *(*(a1 + 24) + 84);
    if ((v8 & 0x8000000) != 0)
    {
      _dispatch_event_loop_leave_deferred_cold_1(v8);
    }

    v9 = (v8 >> 8) & 0xF;
    if (v9 <= (BYTE4(a3) & 7u))
    {
      v9 = BYTE4(a3) & 7;
    }

    if (v9 <= 1)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 128 << v9;
    v11 = a3 & 2 | 0x3700000001;
    LODWORD(a3) = v10 | v8 & 0x80000000 | 0xFF;
    if ((v5 & 2) != 0)
    {
      v12 = 401;
    }

    else
    {
      v12 = 273;
    }

    v13 = 5;
  }

  else
  {
    a3 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = 257;
    v13 = 7;
    v11 = 1;
  }

  v21 = a1;
  v22 = -17;
  v23 = v13;
  v24 = a3;
  v25 = a1;
  v26 = v12;
  v27 = 0uLL;
  v28 = 0;
  v29 = a1 + 56;
  v30 = v11;
  a3 = 1;
  v31 = v5;
LABEL_14:
  if ((a2 & 2) == 0)
  {
    v14 = &v21 + 9 * a3;
    *v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v14[1] = 458735;
    a3 = (a3 + 1);
    v14[2] = a1;
    *(v14 + 6) = 40;
    *(v14 + 28) = 0u;
    *(v14 + 44) = 0u;
    *(v14 + 15) = 0;
    v14[8] = v5;
  }

  result = _dispatch_kq_poll(a1, &v21, a3, &v21, a3, 0, 0, 3);
  if (result)
  {
    v19 = DWORD1(v27);
    v20 = v23 & 0xBFFF;
    v23 &= ~0x4000u;
    LODWORD(v27) = DWORD1(v27);
    *(&v27 + 4) = 0;
    if (v27 != 105)
    {
      if (v19 != 34)
      {
        if (v19 == 2)
        {
          _dispatch_event_loop_wake_owner_cold_2(&v21, v20);
        }

        _dispatch_sync_ipc_handoff_begin_cold_1(v19);
      }

      _dispatch_event_loop_wake_owner_cold_1(&v21);
    }

    _dispatch_event_loop_cancel_waiter_cold_3(&v21);
  }

  v16 = (a2 & 1 | (2 * (a4 & 1))) - (v5 & 1);
  if (v16 >= 1 && *(a1 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 8), (v5 & 1) - (a2 & 1 | (2 * (a4 & 1))), memory_order_release);
    result = (add_explicit - v16);
    if (add_explicit <= v16)
    {
      result = _dispatch_event_loop_end_ownership_cold_6(result, a1);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void _dispatch_event_loop_timer_arm(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2 / 3uLL;
  v10 = *(a5 + 8 * v9);
  if (!v10)
  {
    mach_get_times();
    *(a5 + 16) = 0;
    v10 = *(a5 + 8 * v9);
  }

  v11 = v10 + a3;
  if (_dispatch_timers_force_max_leeway == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  if (_dispatch_timers_force_max_leeway == 1)
  {
    v13 = v11 + a4;
  }

  else
  {
    v13 = v11;
  }

  _dispatch_event_loop_timer_program(a1, a2, v13, v12, 5);
  if (a2 - 6 <= 2 && _dispatch_mach_calendar_pred != -1)
  {
    _dispatch_event_loop_timer_arm_cold_1();
  }
}

void *_dispatch_event_loop_timer_program(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216);
  if (v8 == -4)
  {
    v9 = 0x2000000;
  }

  else
  {
    v9 = (128 << *(a1 + 32 * a2 + 5)) | 0xFF;
  }

  v22 = v5;
  v23 = v6;
  v11 = a2 | 0xFFFFFFFFFFFFFF00;
  v12 = -7;
  v13 = a5 | 0x10;
  v14 = v9;
  v15 = a1;
  v16 = _dispatch_timer_index_to_fflags[a2];
  v17 = 0;
  v18 = a3;
  v19 = 0;
  v21 = 0u;
  v20 = a4;
  return _dispatch_kq_deferred_update(v8, &v11);
}

char *_dispatch_source_proc_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = _dispatch_unote_create_with_handle(a1, a2, a3);
  if ((v3 & 0x4000000) != 0)
  {
    if (result)
    {
      result[29] |= 4u;
    }
  }

  return result;
}

char *_dispatch_source_vm_create(uint64_t a1, uint64_t a2)
{
  result = _dispatch_unote_create_without_handle(&_dispatch_source_type_memorystatus, a2, 2);
  if (result)
  {
    result[29] |= 0x10u;
  }

  return result;
}

BOOL _dispatch_mach_msg_sender_is_kernel(uint64_t a1)
{
  v1 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v1 || v1[1] <= 0x33u)
  {
    _dispatch_mach_msg_sender_is_kernel_cold_1();
  }

  return v1[10] == 0;
}

uint64_t _dispatch_get_mach_host_port()
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    _dispatch_get_mach_host_port_cold_1();
  }

  return _dispatch_mach_host_port;
}

void _dispatch_mach_host_port_init()
{
  port = 0;
  v0 = MEMORY[0x1BFB0FB80]();
  special_port = host_get_special_port(v0, -1, 1, &port);
  if (special_port == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v2 = special_port;
  if (special_port)
  {
    if (special_port != 4)
    {
      _dispatch_bug(2969, special_port);
    }
  }

  else
  {
    v3 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v0);
    if (v3 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    v2 = v3;
    v0 = port;
  }

  if (!v0)
  {
    _dispatch_mach_host_port_init_cold_3(v2);
  }

  _dispatch_mach_host_port = v0;
}

uint64_t _dispatch_mach_notify_merge(uint64_t result, int a2, int a3)
{
  v3 = _dispatch_sources[(result >> 8) & 0x3F];
  if (v3)
  {
    while (*(v3 + 24) != result || *(v3 + 32) != -24)
    {
      v3 = *v3;
      if (!v3)
      {
        return result;
      }
    }

    *(v3 + 56) &= 0xFFFFFFFFFFFFFFF2;
    if ((a3 & 1) != 0 || (result = _dispatch_kevent_mach_notify_resume(v3, a2, 0), (result & 1) == 0))
    {
      *(v3 + 34) |= 2u;
      v6 = 16;
    }

    else
    {
      v6 = 4;
    }

    *(v3 + 64) = 0;
    v7 = *(v3 + 16);
    if (v7)
    {
      do
      {
        v8 = *v7;
        if (*(v3 + 64))
        {
          break;
        }

        v9 = v7[7] & a2;
        *(v7 + 54) = 0;
        if ((a3 & 1) != 0 || v9)
        {
          if (*(7 - v7[4]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - v7[4]), 2u, memory_order_relaxed) <= 0)
          {
            qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
            __break(1u);
            return result;
          }

          v10 = v7 + 3;
          if (a3)
          {
            _dispatch_unote_unregister_muxed(v7 + 3);
          }

          v11 = *v10;
          if (v9)
          {
            v12 = *v10;
            if (*(v11 + 9) == 2)
            {
              atomic_fetch_or_explicit(v7 + 12, v9, memory_order_relaxed);
            }
          }

          result = (*(v11 + 48))(v7 + 3, v6, v9, 0);
        }

        v7 = v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t _dispatch_mach_notify_dead_name(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _dispatch_mach_notify_merge(a2, 1, 1);
  if (mach_port_deallocate(*MEMORY[0x1E69E9A60], v2) == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  return 0;
}

uint64_t _dispatch_mach_notification_set_armed(uint64_t result)
{
  v1 = *(result - 8);
  if (v1)
  {
    *(v1 + 64) = 1;
    for (i = *(v1 + 16); i; i = *i)
    {
      *(i + 54) = 1;
    }
  }

  return result;
}

char *_dispatch_source_mach_send_create(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    a3 = 1;
  }

  if (!a2)
  {
    a2 = 0xFFFFFFFFLL;
  }

  return _dispatch_unote_create_with_handle(a1, a2, a3);
}

uint64_t _dispatch_mach_send_update(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((*(a1 + 34) & 2) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 48);
    v1 = 0;
  }

  return _dispatch_kevent_mach_notify_resume(a1, v2, v1);
}

char *_dispatch_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _dispatch_unote_create_without_handle(a1, a2, a3);
  if (result)
  {
    *(result + 22) = 0x80000000;
    *(result + 7) = 0;
  }

  return result;
}

void _dispatch_mach_notification_event(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected non message event";
  qword_1EBC5B9B0 = v1;
  __break(1u);
}

void _dispatch_mach_notification_merge_msg(void *a1, int a2, mach_msg_header_t *a3)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (a3->msgh_id <= 77 && !_dispatch_mach_msg_sender_is_kernel(a3))
  {
    v11 = 2900;
    goto LABEL_19;
  }

  v6 = libdispatch_internal_protocol_server(a3, v12);
  if (v6 || v13 != -303)
  {
    if (v6)
    {
      if (v13 == -305 || v13 == 0)
      {
        goto LABEL_15;
      }

      _dispatch_bug(2916, v13);
      if (v13 == -305 || !v13)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ((a3->msgh_id & 0xFFFFFFFE) != 0x3B6)
  {
LABEL_18:
    v11 = 2915;
LABEL_19:
    _dispatch_bug(v11, 0);
LABEL_20:
    mach_msg_destroy(a3);
    goto LABEL_15;
  }

  v7 = &byte_1ED3F42F7;
  v8 = byte_1ED3F4236 | 0xFFFFFF80;
  for (i = 6; i != 9; ++i)
  {
    v8 |= 1 << (i % 3u);
    *v7 |= 2u;
    v7 += 32;
  }

  byte_1ED3F4236 = v8;
  _dispatch_mach_host_notify_update();
  v13 = 0;
LABEL_15:
  if ((a2 & 0x10000) != 0)
  {
    free(a3);
  }

  _dispatch_unote_resume(a1);
}

uint64_t _dispatch_mach_recv_direct_merge_evt(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0x200) != 0)
  {
    _dispatch_mach_recv_direct_merge_evt_cold_1();
  }

  return _dispatch_source_merge_evt(a1, a2, a3, a4);
}

void _dispatch_mach_reply_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x200) == 0)
  {
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected event";
    qword_1EBC5B9B0 = a3 | (a2 << 32);
    __break(1u);
  }

  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  __break(1u);
}

uint64_t _dispatch_kevent_workloop_override_self(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 24);
  *(result + 53) &= ~2u;
  add_explicit = *(*(v3 + 24) + 84);
  if ((add_explicit & 0x8000000) != 0)
  {
    goto LABEL_15;
  }

  v6 = (add_explicit >> 8) & 0xF;
  if (v6 <= (BYTE4(a2) & 7u))
  {
    v6 = BYTE4(a2) & 7;
  }

  v10 = v3;
  if (v6 <= 1)
  {
    LOBYTE(v6) = 1;
  }

  v11 = 393199;
  v12 = (128 << v6) | add_explicit & 0x80000000 | 0xFF;
  v13 = v3;
  if ((a2 & 2) != 0)
  {
    v7 = 401;
  }

  else
  {
    v7 = 273;
  }

  v14 = v7;
  v15 = 0uLL;
  v16 = 0;
  v17 = v3 + 56;
  v18 = a2 & 2 | 0x3700000001;
  v19 = a2;
  result = _dispatch_kq_poll(v3, &v10, 1, &v10, 1, 0, 0, 3);
  if (result)
  {
LABEL_16:
    v8 = DWORD1(v15);
    v9 = HIWORD(v11) & 0xBFFF;
    HIWORD(v11) &= ~0x4000u;
    LODWORD(v15) = DWORD1(v15);
    *(&v15 + 4) = 0;
    if (v15 != 105)
    {
      if (v8 != 34)
      {
        if (v8 != 2)
        {
LABEL_22:
          qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_1EBC5B9B0 = v8;
          __break(1u);
          return result;
        }

        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_1EBC5B9B0 = (v14 << 32) | (v9 << 16) | 2;
        __break(1u);
      }

      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Broken priority";
      qword_1EBC5B9B0 = v12;
      __break(1u);
    }

    v8 = v19;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
    qword_1EBC5B9B0 = v19;
    __break(1u);
    goto LABEL_22;
  }

  if ((a3 & 1) != 0 && *(v3 + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      qword_1EBC5B980 = "API MISUSE: Over-release of an object";
      __break(1u);
LABEL_15:
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_1EBC5B9B0 = add_explicit;
      __break(1u);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _dispatch_kevent_workloop_poke_drain(uint64_t result)
{
  v2 = *(result + 24);
  if ((v2 & 0x80000000) != 0)
  {
    return result;
  }

  v3 = result;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 232);
  result = *(result + 16);
  v5 = *(v3 + 10);
  if ((v5 & 0x4000) == 0)
  {
    if (*(v4 + 53))
    {
      return result;
    }

    *(v4 + 53) |= 1u;
    if (*(result + 8) == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }

    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  v1 = *(v3 + 32);
  *(v3 + 28) = v1;
  add_explicit = *(v3 + 64);
  v5 &= ~0x4000uLL;
  *(v3 + 10) = v5;
  *(v3 + 32) = 0;
  if (v1 != 70)
  {
LABEL_33:
    switch(v1)
    {
      case 0x69:
LABEL_39:
        qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_1EBC5B9B0 = add_explicit;
        __break(1u);
        goto LABEL_40;
      case 0x22:
LABEL_38:
        add_explicit = *(v3 + 12);
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Broken priority";
        qword_1EBC5B9B0 = add_explicit;
        __break(1u);
        goto LABEL_39;
      case 2:
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_1EBC5B9B0 = (v5 << 16) | (v2 << 32) | 2;
        __break(1u);
        break;
    }

LABEL_37:
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_1EBC5B9B0 = v1;
    __break(1u);
    goto LABEL_38;
  }

  if ((v2 & 0x100) != 0)
  {
    goto LABEL_37;
  }

  if (!*(v3 + 48))
  {
    goto LABEL_37;
  }

  v2 = *(v3 + 56);
  if (!v2)
  {
    goto LABEL_37;
  }

  if ((add_explicit & 0x2000000000) == 0)
  {
    return result;
  }

  if ((add_explicit & 1) == 0)
  {
    v9 = 0;
    v10 = 1;
    v11 = 7;
    v12 = 1;
    goto LABEL_28;
  }

  if ((add_explicit & 0xFFFFFFFC) != 0)
  {
    v4 = *(*(result + 24) + 84);
    if ((v4 & 0x8000000) != 0)
    {
LABEL_40:
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_1EBC5B9B0 = v4;
      __break(1u);
      return result;
    }

    v13 = (v4 >> 8) & 0xF;
    if (v13 <= (BYTE4(add_explicit) & 7u))
    {
      v13 = BYTE4(add_explicit) & 7;
    }

    if (v13 <= 1)
    {
      LOBYTE(v13) = 1;
    }

    v15 = add_explicit & 2;
    v14 = v15 == 0;
    v10 = v15 | 0x3700000001;
    v9 = (128 << v13) | v4 & 0x80000000 | 0xFF;
    if (v14)
    {
      v12 = 273;
    }

    else
    {
      v12 = 401;
    }

    v11 = 5;
LABEL_28:
    *v3 = result;
    *(v3 + 8) = -17;
    *(v3 + 10) = v11;
    *(v3 + 12) = v9;
    *(v3 + 24) = v12;
    *(v3 + 28) = 0;
    *(v3 + 36) = 0;
    *(v3 + 44) = 0;
    *(v3 + 48) = result + 56;
    *(v3 + 56) = v10;
    return _dispatch_kq_deferred_update();
  }

  *(v4 + 53) |= 1u;
  if (*(result + 8) != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    if (add_explicit <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
LABEL_32:
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_6:
  *v4 = *(result + 24);
  *(v4 + 8) = result;
  v7 = __clz(__rbit32((*(v3 + 12) >> 8) & 0x3FFF));
  if (((*(v3 + 12) >> 8) & 0x3FFF) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 16) = v8;
  return result;
}

void _dispatch_kevent_print_error(uint64_t a1)
{
  v2 = *(a1 + 10);
  if ((v2 & 2) != 0)
  {
    if ((*(a1 + 10) & 0x100) != 0 && *(a1 + 32) == 36)
    {
      return;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
      v3 = 0;
      v2 |= *(v4 + 34);
      goto LABEL_10;
    }

    if (v3 && !*(v3 + 16))
    {
      v2 |= 1u;
LABEL_10:
      *(a1 + 10) = v2;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == 34)
    {
      v12 = *(a1 + 12);
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Invalid kevent priority";
      qword_1EBC5B9B0 = v12;
      __break(1u);
    }

    else
    {
      v6 = _evfiltstr(*(a1 + 8));
      v7 = *(a1 + 16);
      v8 = "enable";
      if ((v2 & 4) == 0)
      {
        v8 = "monitor";
      }

      if (v2)
      {
        v9 = "add";
      }

      else
      {
        v9 = v8;
      }

      if ((v2 & 2) != 0)
      {
        v9 = "delete";
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *a1;

      _dispatch_bug_kevent_client("kevent", v6, v10, v5, v11, v7, v3);
    }
  }
}

void _dispatch_kevent_mach_msg_drain(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 60);
  v8 = *(a1 + 12);
  v9 = *(a1 + 10);
  v10 = *(a1 + 24);
  if (v10 == 268451844)
  {
    if (v4)
    {
      if (!*(a1 + 32))
      {
        v21 = *(a1 + 12);
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: MACH_RCV_LARGE_IDENTITY with no identity";
        __break(1u);
        return;
      }

      if (v4 < 0xFFFFFFBC)
      {
        LOBYTE(v10) = 10;
        v15 = v4 + 68;
        v1 = malloc_type_malloc((v4 + 68), 0xBE57A05CuLL);
        v2 = v20;
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        if (MEMORY[0x1EEE9AC00]())
        {
LABEL_15:
          v24[0] = v1;
          v24[1] = 0;
          v25 = 0;
          v26 = v15;
          v27 = v2;
          v28 = 0;
          v29 = 0x2800000000;
          memset(v23, 0, sizeof(v23));
          v16 = *(a1 + 32);
          v17 = mach_msg2(v24, v10, v23);
          if (!v17)
          {
            if (*v2)
            {
              v18 = v2;
            }

            else
            {
              v18 = 0;
            }

            _dispatch_kevent_mach_msg_recv(v6, v9 | 0x10000, v1, v18, v7, v8);
LABEL_30:
            v19 = *MEMORY[0x1E69E9840];
            return;
          }

          v10 = v17;
          if (v17 == 268451844)
          {
            _dispatch_log("BUG in libdispatch client: _dispatch_kevent_mach_msg_drain: dropped message too large to fit in memory: id = 0x%x, size = %u", v1[5], *(a1 + 48));
            v10 = 0;
          }

          free(v1);
LABEL_28:
          if (v10)
          {
            _dispatch_bug_mach_client("_dispatch_kevent_mach_msg_drain: message reception failed", v10);
          }

          goto LABEL_30;
        }

LABEL_24:
        _dispatch_bug(3366, v1);
        v15 = 0;
        goto LABEL_15;
      }

LABEL_23:
      v21 = v8;
      v22 = v6;
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with overlarge message";
      qword_1EBC5B9B0 = v5;
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    v5 = 268451844;
    v21 = v8;
    v22 = v6;
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message size";
    qword_1EBC5B9B0 = 268451844;
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == 268451848)
  {
    v21 = *(a1 + 12);
    v22 = v6;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Unable to copyout msg, possible port leak";
    qword_1EBC5B9B0 = 268451848;
    __break(1u);
    goto LABEL_21;
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
LABEL_21:
    v21 = v8;
    v22 = v6;
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message";
    qword_1EBC5B9B0 = v10;
    __break(1u);
    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_28;
  }

  if (*(a1 + 64))
  {
    v12 = v4 + v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 16);

  _dispatch_kevent_mach_msg_recv(v14, v9, v11, v12, v7, v8);
}

void *_dispatch_kevent_merge_muxed(uint64_t a1)
{
  v2 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(a1 + 10) & 0x12) != 0)
  {
    *(v2 + 34) |= 2u;
  }

  result = *(v2 + 16);
  if (result)
  {
    do
    {
      v4 = *result;
      _dispatch_kevent_merge(result + 3, a1);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void *_dispatch_kevent_merge(void *result, uint64_t a2)
{
  v3 = result;
  add_explicit = *(*result + 9);
  if (*(7 - result[1]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - result[1]), 2u, memory_order_relaxed) < 1)
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
LABEL_44:
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_45;
  }

  if (add_explicit <= 1)
  {
    if (add_explicit)
    {
      if (*(result + 28) == 248)
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a2 + 24);
      }
    }

    else
    {
      v5 = *(a2 + 32);
    }
  }

  else
  {
    switch(add_explicit)
    {
      case 2:
        v5 = (result[4] & *(a2 + 24));
        if ((*(result + 29) & 4) != 0)
        {
          v6 = result[9];
          v7 = (*(a2 + 32) << 32) | v5;
          v8 = v6;
          do
          {
            atomic_compare_exchange_strong_explicit(result + 9, &v8, v6 | v7, memory_order_relaxed, memory_order_relaxed);
            v11 = v8 == v6;
            v6 = v8;
          }

          while (!v11);
        }

        else if (*(result + 28) == 248)
        {
          v5 = 2;
          result[9] = 2;
        }

        else if (v5)
        {
          atomic_fetch_or_explicit(result + 9, v5, memory_order_relaxed);
        }

        else
        {
          v5 = 0;
        }

        break;
      case 3:
        v5 = *(a2 + 32);
        result[9] = ~v5;
        break;
      case 4:
        v5 = *(a2 + 32);
        if (v5)
        {
          atomic_fetch_add_explicit(result + 9, v5, memory_order_relaxed);
        }

        break;
      default:
LABEL_45:
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Corrupt unote action";
        qword_1EBC5B9B0 = add_explicit;
        __break(1u);
        return result;
    }
  }

  v9 = *(a2 + 10);
  if ((v9 & 0x110) == 0x10)
  {
    _dispatch_unote_unregister(result, 5);
    goto LABEL_39;
  }

  if ((v9 & 2) != 0)
  {
    result = (result[2] & 0xFFFFFFFFFFFFFFFCLL);
    v11 = result == -4 || result == 0;
    if (v11)
    {
      goto LABEL_35;
    }

    add_explicit = atomic_fetch_add_explicit(result + 24, 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit > 0)
    {
      goto LABEL_35;
    }

    if ((add_explicit & 0x80000000) == 0)
    {
      result[7] = 0xDEAD000000000000;
      _dispatch_object_dealloc(result);
LABEL_35:
      v10 = 2;
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if ((*(a2 + 10) & 0x210) != 0)
  {
    v10 = result[2] & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_38:
    v3[2] = v10;
    goto LABEL_39;
  }

  if ((v9 & 0x80) != 0)
  {
    v10 = result[2] & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_38;
  }

LABEL_39:
  v12 = *(*v3 + 48);
  v13 = *(a2 + 10);
  v14 = *(a2 + 12) & 0xFFFFFFLL;

  return v12(v3, v13, v5, v14);
}

const char *_evfiltstr(unsigned int a1)
{
  if (a1 < 0xFFFFFFE8)
  {
    return "EVFILT_missing";
  }

  else
  {
    return off_1E7FB1420[a1 + 24];
  }
}

uint64_t _dispatch_kevent_mach_msg_recv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 4);
  if (v6 >= 0xFFFFFFBC)
  {
    _dispatch_kevent_mach_msg_recv_cold_5(*(a3 + 4));
  }

  if (!*(a3 + 12))
  {
    _dispatch_kevent_mach_msg_recv_cold_4(a3);
  }

  if (*(7 - a1[1]) != 0x7FFFFFFF && atomic_fetch_add_explicit((7 - a1[1]), 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  if ((a2 & 0x110) == 0x10)
  {
    _dispatch_unote_unregister(a1, 5);
  }

  else if ((a2 & 2) != 0)
  {
    v13 = a1[2] & 0xFFFFFFFFFFFFFFFCLL;
    if (v13 != -4)
    {
      if (v13)
      {
        add_explicit = atomic_fetch_add_explicit((v13 + 96), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 0)
        {
          if (add_explicit < 0)
          {
            _os_object_retain_weak_cold_1();
          }

          *(v13 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v13);
        }
      }
    }

    a1[2] = 2;
  }

  else
  {
    _dispatch_kevent_mach_msg_recv_cold_3(a2, a1);
  }

  v15 = *(*a1 + 56);

  return v15(a1, a2, a3, v6 + 68, a4, a5, a6);
}

uint64_t mach_msg2(uint64_t a1, char a2, unsigned int *a3)
{
  if ((a2 & 1) != 0 && (**a1 & 0x80000000) != 0)
  {
    v7 = *(*a1 + 24);
  }

  v3 = *a3;
  v5 = *(a3 + 1);
  v4 = *(a3 + 2);
  return mach_msg2_internal();
}

uint64_t _dispatch_kq_init(_BYTE *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_sema4_create_slow_cold_1();
  }

  if (getenv("LIBDISPATCH_TIMERS_FORCE_MAX_LEEWAY"))
  {
    _dispatch_timers_force_max_leeway = 1;
  }

  *a1 = 1;
  _dispatch_kevent_workqueue_init();
  while (1)
  {
    result = kevent_qos();
    if (result != -1)
    {
      break;
    }

    _dispatch_kq_init_cold_2();
  }

  return result;
}

void _dispatch_memorypressure_create(uintptr_t mask)
{
  v1 = dispatch_source_create(&_dispatch_source_type_memorystatus, 0, mask, &_dispatch_mgr_q);
  dispatch_set_context(v1, v1);
  dispatch_source_set_event_handler_f(v1, _dispatch_memorypressure_handler);
  dispatch_activate(v1);
  if (_dispatch_memorypressure_source)
  {
    dispatch_source_cancel(_dispatch_memorypressure_source);
    dispatch_release(_dispatch_memorypressure_source);
  }

  _dispatch_memorypressure_source = v1;
}

uint64_t _dispatch_memorypressure_handler(NSObject *a1)
{
  data = dispatch_source_get_data(a1);
  if ((data & 0xF0000000) != 0 && dispatch_source_get_mask(_dispatch_memorypressure_source) != *MEMORY[0x1E69E9B58])
  {
    _dispatch_memorypressure_create(*MEMORY[0x1E69E9B58]);
  }

  if (data)
  {
    _dispatch_memory_warn = 0;
    _dispatch_continuation_cache_limit = 112;
    v2 = _firehose_task_buffer;
    if (_firehose_task_buffer)
    {
      if (atomic_fetch_and_explicit((_firehose_task_buffer + 512), 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed))
      {
        firehose_buffer_update_limits(v2);
      }
    }
  }

  if ((data & 2) != 0)
  {
    _dispatch_memory_warn = 1;
    _dispatch_continuation_cache_limit = 16;
    v3 = _firehose_task_buffer;
    if (_firehose_task_buffer)
    {
      if ((atomic_fetch_or_explicit((_firehose_task_buffer + 512), 1uLL, memory_order_relaxed) & 1) == 0)
      {
        firehose_buffer_update_limits(v3);
      }
    }
  }

  return MEMORY[0x1EEE739B0](data);
}

void _dispatch_mach_host_notify_update()
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    _dispatch_get_mach_host_port_cold_1();
  }

  v0 = _dispatch_mach_host_port;
  if (_dispatch_mach_notify_port_pred != -1)
  {
    _dispatch_mach_host_notify_update_cold_2();
  }

  v1 = host_request_notification(v0, 1, _dispatch_mach_notify_port);
  if (v1 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v1)
  {

    _dispatch_bug(3003, v1);
  }
}

void _dispatch_mach_notify_port_init()
{
  v3.reserved[1] = 0;
  *&v3.flags = xmmword_1BB581568;
  v1 = mach_port_construct(*MEMORY[0x1E69E9A60], &v3, &_dispatch_mach_notify_port, &_dispatch_mach_notify_port);
  if (v1)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: mach_port_construct() failed: cannot create receive right";
    qword_1EBC5B9B0 = v1;
    __break(1u);
    goto LABEL_5;
  }

  v0 = _dispatch_unote_create_with_handle(&_dispatch_mach_type_notification, _dispatch_mach_notify_port, 0);
  *(v0 + 1) = ~&_dispatch_mgr_q;
  _dispatch_unote_register(v0, -4, 0x2000000u);
  if ((v2 & 1) == 0)
  {
LABEL_5:
    _dispatch_bug(2952, 0);
  }

  _dispatch_mach_notify_unote = v0;
}

uint64_t _dispatch_kevent_mach_notify_resume(uint64_t a1, int a2, int a3)
{
  if (((a3 | a2) & 0xD) == 0)
  {
    return 1;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = (v3 | (*(a1 + 48) | a2) & 0xD) & (~a3 | 0xFFFFFFF2);
  *(a1 + 56) = v6;
  v7 = v6 & 0xD;
  if ((v3 & 0xD) != 0 || !v7)
  {
    v13 = 0;
    if ((v3 & 0xD) == 0 || v7)
    {
      return v13 == 0;
    }

    previous = 0;
    v14 = mach_port_request_notification(*MEMORY[0x1E69E9A60], v5, 66, 0, 0, 0x12u, &previous);
    v10 = 0;
    if (v14 > 0x11 || ((1 << v14) & 0x28011) == 0)
    {
      if (v14 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(3076, v14);
      v10 = 0;
    }

    goto LABEL_20;
  }

  previous = 0;
  v8 = *MEMORY[0x1E69E9A60];
  if (_dispatch_mach_notify_port_pred != -1)
  {
    _dispatch_mach_host_notify_update_cold_2();
  }

  v9 = mach_port_request_notification(v8, v5, 66, 0, _dispatch_mach_notify_port, 0x15u, &previous);
  v10 = v9;
  if (v9 <= 14)
  {
    if (v9 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (!v9)
    {
      v13 = previous;
      if (!previous)
      {
        return v13 == 0;
      }

      v17 = _dispatch_kevent_mach_notify_resume_cold_3(previous, &previous, &v19);
      v13 = v19;
      if ((v17 & 1) == 0)
      {
        return v13 == 0;
      }

      v10 = 0;
      v16 = 3057;
      goto LABEL_34;
    }
  }

  else if (v9 == 15 || v9 == 17)
  {
    *v4 &= 0xFFFFFFF2uLL;
    goto LABEL_20;
  }

  _dispatch_kevent_mach_notify_resume_cold_5(v9, v4);
LABEL_20:
  if (!previous)
  {
    goto LABEL_21;
  }

  v13 = _dispatch_send_consume_send_once_right(previous);
  if (!v13)
  {
    goto LABEL_21;
  }

  v16 = 3086;
LABEL_34:
  _dispatch_bug(v16, v13);
LABEL_21:
  v13 = v10;
  return v13 == 0;
}

uint64_t voucher_adopt(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 224);
  if (a1 != -3)
  {
    if (v2 == a1)
    {
      return v2;
    }

    *(StatusReg + 224) = a1;
    if (a1)
    {
      v3 = *(a1 + 32);
      if (v2)
      {
LABEL_5:
        v4 = *(v2 + 32);
LABEL_11:
        if (v3 != -1 && v3 != v4)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v3);
        }

        return v2;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    goto LABEL_11;
  }

  if (v2 && atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  return v2;
}

uint64_t voucher_copy()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }
  }

  return result;
}

uint64_t voucher_copy_without_importance()
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (result)
  {
    return _voucher_create_without_importance(result);
  }

  return result;
}

uint64_t voucher_retain(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  return result;
}

uint64_t voucher_release(uint64_t a1)
{
  result = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_relaxed);
  if (result <= 1)
  {
    return _dispatch_mach_msg_dispose_cold_1(result, a1);
  }

  return result;
}

uint64_t _voucher_thread_cleanup(uint64_t a1)
{
  result = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_relaxed);
  if (result <= 1)
  {
    return _dispatch_mach_msg_dispose_cold_1(result, a1);
  }

  return result;
}

void _voucher_dealloc_mach_voucher(mach_port_name_t a1)
{
  v1 = mach_voucher_deallocate(a1);
  if (v1 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v1)
  {

    _dispatch_bug(302, v1);
  }
}

uint64_t _voucher_task_mach_voucher_init()
{
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  result = host_create_mach_voucher(mach_host_port, _voucher_task_mach_voucher_init_task_create_recipe, 0x10u, &voucher);
  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (result)
  {
    _voucher_task_mach_voucher_init_cold_1(result);
  }

  _voucher_default_task_mach_voucher = voucher;
  _voucher_task_mach_voucher = voucher;
  return result;
}

void voucher_replace_default_voucher(kern_return_t a1)
{
  if (_voucher_task_mach_voucher_pred != -1)
  {
    voucher_replace_default_voucher_cold_1();
  }

  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (!v3)
      {
        v3 = v2;
      }

      *recipes = 0x100000003;
      v8 = v3;
      v9 = 0;
      mach_host_port = _dispatch_get_mach_host_port();
      voucher = 0;
      a1 = host_create_mach_voucher(mach_host_port, recipes, 0x10u, &voucher);
      if (a1 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (a1)
      {
        _dispatch_bug(362, a1);
      }

      else if (voucher)
      {
        v5 = _voucher_default_task_mach_voucher;
        goto LABEL_13;
      }
    }
  }

  v5 = _voucher_default_task_mach_voucher;
LABEL_13:
  __swp(a1, &_voucher_task_mach_voucher);
  if (a1)
  {
    v6 = a1 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    _voucher_dealloc_mach_voucher(a1);
  }
}

uint64_t _voucher_get_mach_voucher(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 36);
    if (!result)
    {
      result = *(v1 + 32);
      if (!result)
      {
        if (_voucher_task_mach_voucher_pred != -1)
        {
          voucher_replace_default_voucher_cold_1();
        }

        return _voucher_task_mach_voucher;
      }
    }
  }

  return result;
}

uint64_t _voucher_create_without_importance(uint64_t a1)
{
  v1 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_5;
  }

  if (!*(a1 + 32) || (*(a1 + 72) & 1) == 0)
  {
    if (atomic_fetch_add_explicit((a1 + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }

    goto LABEL_5;
  }

  if (*(a1 + 36))
  {
    v4 = *(a1 + 36);
  }

  else
  {
    v4 = *(a1 + 32);
  }

  *recipes = 0x1FFFFFFFFLL;
  v13 = v4;
  v14 = xmmword_1BB5815A0;
  v15 = 0;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v6 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v6 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v6)
  {
    _dispatch_bug(639, v6);
    goto LABEL_25;
  }

  v7 = voucher;
  if (!voucher)
  {
LABEL_25:
    if (*(v1 + 36))
    {
      v1 = 0;
      goto LABEL_5;
    }

    v7 = 0;
  }

  if (v7 == v4)
  {
    _voucher_dealloc_mach_voucher(v4);
    if (atomic_fetch_add_explicit((v1 + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }
  }

  else
  {
    v8 = _voucher_find_and_retain(v7);
    if (v8 && *(v1 + 36))
    {
      _voucher_dealloc_mach_voucher(v7);
      v1 = v8;
    }

    else
    {
      v9 = _os_object_alloc_realized(OS_voucher, 80);
      v10 = v9;
      *(v9 + 3) = *(v1 + 48);
      *(v9 + 8) = *(v1 + 64);
      v9[8] = v7;
      if (*(v1 + 36))
      {
        v9[9] = v7;
        _voucher_insert(v9);
      }

      else if (v8)
      {
        *(v9 + 5) = v8;
        _voucher_dealloc_mach_voucher(v7);
      }

      v1 = v10;
    }
  }

LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t _voucher_find_and_retain(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _voucher_find_and_retain_cold_1();
  }

  for (i = *(&_voucher_hash + ((a1 >> 8) & 0x3F)); ; i = *(15 - i))
  {
    v5 = ~i;
    if (i == -1)
    {
      break;
    }

    if (*(35 - i) == a1)
    {
      add_explicit = atomic_fetch_add_explicit((11 - i), 1u, memory_order_relaxed);
      if ((add_explicit & 0x80000000) != 0)
      {
        _dispatch_async_redirect_invoke_cold_1();
      }

      if (!add_explicit)
      {
        atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      }

      break;
    }
  }

  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v8 != v7)
  {
    _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
  }

  return v5;
}

uint64_t _voucher_insert(uint64_t result)
{
  v1 = *(result + 36);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v3, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      _voucher_find_and_retain_cold_1();
    }

    if (*(v2 + 24))
    {
      _voucher_insert_cold_2();
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      _voucher_insert_cold_3(v5);
    }

    result = *(v2 + 40);
    if (result)
    {
      _voucher_insert_cold_4(result);
    }

    v6 = &_voucher_hash + ((v1 >> 8) & 0x3F);
    v7 = *v6;
    *(v2 + 16) = *v6;
    if (v7 != -1)
    {
      *(23 - v7) = ~(v2 + 16);
    }

    *v6 = ~v2;
    *(v2 + 24) = ~v6;
    v8 = *(StatusReg + 24) & 0xFFFFFFFC;
    v9 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v9 != v8)
    {

      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v9);
    }
  }

  return result;
}

_DWORD *_voucher_create_with_mach_msgv(unsigned int *a1, unsigned int *a2)
{
  v4 = *a1;
  if ((*a1 & 0x1F0000) != 0)
  {
    v6 = a1[4];
    a1[4] = 0;
    v7 = v4 & 0x201F0000;
    *a1 = v4 & 0xDFE0FFFF;
    if (a2)
    {
LABEL_3:
      v8 = *a2;
      if (*a2 <= 7)
      {
        _voucher_create_with_mach_msgv_cold_1(v8);
      }

      v9 = v8 - 8;
      v10 = a2 + 2;
      if (v8 == 8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      return _voucher_create_with_mach_voucher(v6, v7, v11, v9);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;

  return _voucher_create_with_mach_voucher(v6, v7, v11, v9);
}

_DWORD *_voucher_create_with_mach_voucher(unsigned int a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    v8 = _voucher_find_and_retain(a1);
    if (v8)
    {
      v9 = v8;
      _voucher_dealloc_mach_voucher(a1);
    }

    else
    {
      v9 = _os_object_alloc_realized(OS_voucher, 80);
      v9[8] = a1;
      v9[9] = a1;
      *(v9 + 72) = v9[18] & 0xFE | ((a2 & 0x20000000) != 0);
      _voucher_insert(v9);
    }
  }

  else
  {
    v9 = 0;
  }

  if (a4 >= 0x20 && *a3 == 59821818 && *(a3 + 8))
  {
    if (v9)
    {
      v10 = *(v9 + 6);
      if (v10)
      {
        _voucher_insert_cold_3(v10);
      }

      v11 = *(v9 + 5);
      if (v11)
      {
        _voucher_insert_cold_4(v11);
      }

      v12 = _os_object_alloc_realized(OS_voucher, 80);
      v13 = v12;
      if (v9[8])
      {
        v14 = *(v9 + 5);
        if (!v14)
        {
          v14 = v9;
        }

        if (atomic_fetch_add_explicit(v14 + 3, 1u, memory_order_relaxed) <= 0)
        {
          [OS_voucher retain];
        }

        *(v12 + 5) = v14;
        v12[8] = v14[8];
        *(v12 + 72) = v12[18] & 0xFE | v14[18] & 1;
      }

      voucher_release(v9);
    }

    else
    {
      v13 = _os_object_alloc_realized(OS_voucher, 80);
    }

    *(v13 + 3) = *(a3 + 8);
    *(v13 + 8) = *(a3 + 24);
    return v13;
  }

  return v9;
}

_DWORD *voucher_create_with_mach_msg(unsigned int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x1F0000) != 0)
  {
    v3 = a1[4];
    a1[4] = 0;
    v4 = v1 & 0x201F0000;
    *a1 = v1 & 0xDFE0FFFF;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return _voucher_create_with_mach_voucher(v3, v4, 0, 0);
}

void voucher_decrement_importance_count4CF(uint64_t a1)
{
  if (a1 && *(a1 + 32) && (*(a1 + 72) & 1) != 0)
  {
    v1 = *(a1 + 36) ? *(a1 + 36) : *(a1 + 32);
    *in_content = 1;
    out_contentCnt = 0;
    v2 = mach_voucher_attr_command(v1, 2u, 2u, in_content, 4u, 0, &out_contentCnt);
    if (v2 != 16)
    {
      if (v2 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (v2)
      {
        voucher_decrement_importance_count4CF_cold_2(v2, v2);
      }
    }
  }
}

uint64_t _voucher_xref_dispose(uint64_t result)
{
  v1 = result;
  if (!*(result + 24))
  {
    goto LABEL_11;
  }

  v2 = 0;
  v3 = *(result + 36);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_16:
    _voucher_insert_cold_2();
  }

  result = _voucher_find_and_retain_cold_1();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*(v1 + 12) <= 0)
  {
    v5 = *(v1 + 24);
    if (v5)
    {
      v6 = *(v1 + 16);
      if (v6 != -1)
      {
        *(23 - v6) = v5;
      }

      *~v5 = v6;
      *(v1 + 16) = xmmword_1BB5815B0;
    }
  }

  v7 = *(StatusReg + 24) & 0xFFFFFFFC;
  v8 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v8 != v7)
  {
    result = _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v8);
  }

LABEL_11:
  if (*(v1 + 8) != 0x7FFFFFFF)
  {
    result = atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release);
    if (result <= 1)
    {
      return _voucher_xref_dispose_cold_3(result, v1);
    }
  }

  return result;
}

void _voucher_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    _voucher_insert_cold_2();
  }

  *(a1 + 16) = -1985229329;
  v2 = *(a1 + 36);
  if (v2)
  {
    if (v2 != *(a1 + 32))
    {
      _voucher_dealloc_mach_voucher(v2);
    }

    *(a1 + 36) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    if (!*(a1 + 40))
    {
      _voucher_dealloc_mach_voucher(v3);
    }

    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    add_explicit = atomic_fetch_add_explicit((v4 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v4);
    }

    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

void _voucher_activity_debug_channel_init()
{
  if (_voucher_libtrace_hooks)
  {
    v0 = *(_voucher_libtrace_hooks + 16);
    if (v0)
    {
      special_port = 0;
      v1 = task_get_special_port(*MEMORY[0x1E69E9A60], 10, &special_port);
      if (v1)
      {
        if (v1 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        _voucher_activity_debug_channel_init_cold_2(v1);
      }

      if (special_port)
      {
        f = dispatch_mach_create_f("com.apple.debug-channel", 0, 0, v0);
        *(f[11].isa + 29) &= ~0x20u;
        dispatch_mach_connect(f, special_port, 0, 0);
        _voucher_activity_debug_channel = f;
      }
    }
  }
}

uint64_t _voucher_atfork_prepare()
{
  v0 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v0, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v0)
  {
    return _voucher_find_and_retain_cold_1();
  }

  return result;
}

uint64_t _voucher_atfork_parent()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24) & 0xFFFFFFFC;
  v1 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v1 != v0)
  {
    return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v1);
  }

  return result;
}

__n128 _voucher_atfork_child()
{
  for (i = 0; i != 64; ++i)
  {
    while (1)
    {
      v1 = *(&_voucher_hash + i);
      if (v1 == -1)
      {
        break;
      }

      v2 = ~v1;
      *(v2 + 32) = 0;
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3 != -1)
      {
        *(23 - v3) = v4;
      }

      *~v4 = v3;
      *(v2 + 16) = xmmword_1BB5815B0;
    }
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  xmmword_1ED3F41B0 = result;
  unk_1ED3F41C0 = result;
  xmmword_1ED3F4190 = result;
  unk_1ED3F41A0 = result;
  xmmword_1ED3F4170 = result;
  unk_1ED3F4180 = result;
  xmmword_1ED3F4150 = result;
  unk_1ED3F4160 = result;
  xmmword_1ED3F4130 = result;
  unk_1ED3F4140 = result;
  xmmword_1ED3F4110 = result;
  unk_1ED3F4120 = result;
  xmmword_1ED3F40F0 = result;
  unk_1ED3F4100 = result;
  xmmword_1ED3F40D0 = result;
  unk_1ED3F40E0 = result;
  xmmword_1ED3F40B0 = result;
  unk_1ED3F40C0 = result;
  xmmword_1ED3F4090 = result;
  unk_1ED3F40A0 = result;
  xmmword_1ED3F4070 = result;
  unk_1ED3F4080 = result;
  xmmword_1ED3F4050 = result;
  unk_1ED3F4060 = result;
  xmmword_1ED3F4030 = result;
  unk_1ED3F4040 = result;
  xmmword_1ED3F4010 = result;
  unk_1ED3F4020 = result;
  xmmword_1ED3F3FF0 = result;
  unk_1ED3F4000 = result;
  _voucher_hash = result;
  unk_1ED3F3FE0 = result;
  _voucher_hash_lock = 0;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224) = 0;
  _voucher_task_mach_voucher_pred = 0;
  _voucher_task_mach_voucher = 0;
  _voucher_default_task_mach_voucher = 0;
  _voucher_aid_next = 0;
  _firehose_task_buffer_pred = 0;
  _firehose_task_buffer = 0;
  return result;
}

uint64_t voucher_process_can_use_arbitrary_personas()
{
  if (_voucher_process_can_use_arbitrary_personas_pred != -1)
  {
    voucher_process_can_use_arbitrary_personas_cold_1();
  }

  return _voucher_process_can_use_arbitrary_personas;
}

uint64_t _voucher_process_can_use_arbitrary_personas_init()
{
  if (_voucher_task_mach_voucher_pred != -1)
  {
    voucher_replace_default_voucher_cold_1();
  }

  *out_content = 0;
  out_contentCnt = 4;
  result = mach_voucher_attr_command(_voucher_task_mach_voucher, 3u, 4u, 0, 0, out_content, &out_contentCnt);
  if (result)
  {
    _voucher_process_can_use_arbitrary_personas_init_cold_2(result);
  }

  _voucher_process_can_use_arbitrary_personas = *out_content != 0;
  return result;
}

uint64_t voucher_copy_with_persona_mach_voucher(int a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (a1)
  {
    if (v1)
    {
      v2 = *(v1 + 36);
      if (!v2)
      {
        v2 = *(v1 + 32);
      }
    }

    else
    {
      v2 = 0;
    }

    *recipes = 0x1FFFFFFFFLL;
    v14 = v2;
    v15 = 0x300000000;
    v16 = 10;
    v17 = a1;
    v18 = 0;
    mach_host_port = _dispatch_get_mach_host_port();
    voucher = 0;
    v4 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
    if (v4 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    v5 = v4;
    if (v4)
    {
      _dispatch_bug(944, v4);
      if (v5 == 20)
      {
        v1 = -1;
        goto LABEL_30;
      }

      if (!v2)
      {
        goto LABEL_14;
      }

      v6 = 0;
    }

    else
    {
      v6 = voucher;
      if (voucher == v2)
      {
        if (v2)
        {
          _voucher_dealloc_mach_voucher(v2);
        }

LABEL_14:
        if (atomic_fetch_add_explicit((v1 + 12), 1u, memory_order_relaxed) <= 0)
        {
          [OS_voucher retain];
        }

        goto LABEL_30;
      }
    }

    v7 = _voucher_find_and_retain(v6);
    if (v7)
    {
      if (!v1 || *(v1 + 36))
      {
        _voucher_dealloc_mach_voucher(v6);
        v1 = v7;
        goto LABEL_30;
      }

      v9 = _os_object_alloc_realized(OS_voucher, 80);
    }

    else
    {
      v8 = _os_object_alloc_realized(OS_voucher, 80);
      v9 = v8;
      if (!v1)
      {
        v8[8] = v6;
        goto LABEL_28;
      }
    }

    *(v9 + 3) = *(v1 + 48);
    *(v9 + 8) = *(v1 + 64);
    v9[8] = v6;
    if (!*(v1 + 36))
    {
      if (v7)
      {
        *(v9 + 5) = v7;
        _voucher_dealloc_mach_voucher(v6);
      }

      goto LABEL_29;
    }

LABEL_28:
    v9[9] = v6;
    _voucher_insert(v9);
LABEL_29:
    v1 = v9;
    goto LABEL_30;
  }

  if (v1 && atomic_fetch_add_explicit((v1 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

LABEL_30:
  v10 = *MEMORY[0x1E69E9840];
  return v1;
}

BOOL voucher_copy_with_persona_mach_voucher_and_error(int a1, uint64_t *a2)
{
  v3 = voucher_copy_with_persona_mach_voucher(a1);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return v3 == -1;
}

uint64_t mach_voucher_persona_self(ipc_voucher_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *recipes = xmmword_1BB5815F0;
  v10 = unk_1BB581600;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v3 = host_create_mach_voucher(mach_host_port, recipes, 0x20u, &voucher);
  if (v3 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v4 = v3;
  if (v3)
  {
    _dispatch_bug(1015, v3);
    v5 = 0;
  }

  else
  {
    v5 = voucher;
  }

  *a1 = v5;
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t mach_voucher_persona_for_originator(int a1, int a2, uint64_t a3, ipc_voucher_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *recipes = 0x100000003;
  v11 = a2;
  v12 = xmmword_1BB5815C0;
  v13 = 16;
  v14 = a1;
  v15 = 0;
  v16 = a3;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  result = host_create_mach_voucher(mach_host_port, recipes, 0x30u, &voucher);
  if (result == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  v7 = voucher;
  if (result)
  {
    v7 = 0;
  }

  *a4 = v7;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t voucher_get_current_persona()
{
  *out_content = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v1 = *(StatusReg + 224);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = v2;
      }

      out_contentCnt = 4;
      v5 = mach_voucher_attr_command(v4, 3u, 3u, 0, 0, out_content, &out_contentCnt);
      if (v5 > 0x2E || ((1 << v5) & 0x400000040011) == 0)
      {
        _dispatch_bug(1118, v5);
      }

      else if (!v5)
      {
        return *out_content;
      }
    }
  }

  if ((kpersona_get() & 0x80000000) != 0)
  {
    v7 = **(StatusReg + 8);
    if (v7 != 3 && v7 != 0)
    {
      _dispatch_bug(1141, v7);
    }
  }

  return *out_content;
}

uint64_t voucher_get_current_persona_originator_info(_OWORD *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  result = _voucher_get_current_persona_token(&v5);
  if (result)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v6;
    *a1 = v5;
    a1[1] = v3;
    a1[2] = v7;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _voucher_get_current_persona_token(mach_voucher_attr_content_t out_content)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!v1)
  {
    return 5;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 5;
  }

  v4 = *(v1 + 36);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  out_contentCnt = 96;
  result = mach_voucher_attr_command(v5, 3u, 2u, 0, 0, out_content, &out_contentCnt);
  if (result > 0x2E || ((1 << result) & 0x400000040011) == 0)
  {
    v8 = result;
    _dispatch_bug(1090, result);
    return v8;
  }

  return result;
}

uint64_t voucher_get_current_persona_proximate_info(_OWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  result = _voucher_get_current_persona_token(v5);
  if (result)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v7;
    *a1 = v6;
    a1[1] = v3;
    a1[2] = v8;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOLean_t voucher_mach_msg_set(mach_msg_header_t *msg)
{
  if ((msg->msgh_bits & 0x1F0000) != 0)
  {
    return 0;
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (v3)
  {
    mach_voucher = _voucher_get_mach_voucher(v3);
  }

  else
  {
    if (_voucher_task_mach_voucher_pred != -1)
    {
      voucher_replace_default_voucher_cold_1();
    }

    mach_voucher = _voucher_task_mach_voucher;
  }

  msgh_bits = msg->msgh_bits;
  if (mach_voucher)
  {
    v6 = (msg->msgh_bits & 0x1F0000) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  msg->msgh_voucher_port = mach_voucher;
  msg->msgh_bits = msgh_bits | 0x130000;
  return 1;
}

void voucher_mach_msg_clear(mach_msg_header_t *msg)
{
  msgh_bits = msg->msgh_bits;
  v3 = HIWORD(msg->msgh_bits) & 0x1F;
  msgh_voucher_port = msg->msgh_voucher_port;
  if ((v3 == 17 || v3 == 19) && msgh_voucher_port != 0)
  {
    if (v3 == 17)
    {
      _voucher_dealloc_mach_voucher(msgh_voucher_port);
      msgh_bits = msg->msgh_bits;
    }

    msg->msgh_voucher_port = 0;
    msg->msgh_bits = msgh_bits & 0xFFE0FFFF;
  }
}

voucher_mach_msg_state_t voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
  msgh_bits = msg->msgh_bits;
  if ((msg->msgh_bits & 0x1F0000) == 0)
  {
    return -1;
  }

  msgh_voucher_port = msg->msgh_voucher_port;
  msg->msgh_voucher_port = 0;
  msg->msgh_bits = msgh_bits & 0xDFE0FFFF;
  if (!msgh_voucher_port)
  {
    return -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 984);
  if (v5)
  {
    v8 = *v5;
    v6 = v5 + 2;
    v7 = v8;
    v9 = v8 - 8;
    if (v8 == 8)
    {
      v6 = 0;
    }

    if (v7 <= 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v7 <= 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = _voucher_create_with_mach_voucher(msgh_voucher_port, msgh_bits & 0x201F0000, v11, v10);
  v12 = *(StatusReg + 224);
  if (v12 != v14)
  {
    *(StatusReg + 224) = v14;
    if (v14)
    {
      v15 = *(v14 + 8);
      if (v12)
      {
LABEL_18:
        v16 = *(v12 + 8);
LABEL_21:
        if (v15 != -1 && v15 != v16)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v15);
        }

        return v12;
      }
    }

    else
    {
      v15 = 0;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    v16 = 0;
    goto LABEL_21;
  }

  return v12;
}

void voucher_mach_msg_revert(voucher_mach_msg_state_t state)
{
  if (state == -1)
  {
    return;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 224);
  if (v2 != state)
  {
    *(StatusReg + 224) = state;
    if (state)
    {
      v3 = *(state + 8);
      if (v2)
      {
LABEL_5:
        v4 = v2[8];
LABEL_8:
        if (v3 != -1 && v3 != v4)
        {
          _dispatch_set_priority_and_mach_voucher_slow(0, v3);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_11:
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit(v2 + 3, 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v2);
    }
  }
}

uint64_t voucher_activity_initialize_4libtrace(uint64_t *a1)
{
  if (*a1 <= 2)
  {
    voucher_activity_initialize_4libtrace_cold_2(*a1);
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_libtrace_hooks, &v1, a1, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    voucher_activity_initialize_4libtrace_cold_1();
  }

  result = _dispatch_getenv_BOOL("LIBDISPATCH_NO_FAULTS", 0);
  if ((result & 1) == 0)
  {
    result = getpid();
    if (result != 1)
    {
      result = os_variant_has_internal_diagnostics();
      if (result)
      {
        if ((MEMORY[0xFFFFFC104] & 0x80000000) == 0)
        {
          _dispatch_mode &= ~2u;
        }
      }
    }
  }

  return result;
}

unint64_t voucher_activity_id_allocate(unsigned __int8 a1)
{
  v2 = _voucher_aid_next;
  while (1)
  {
    v3 = v2;
    if (!v2 || ((v2 + 1) & 0xF) == 0)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v2, v2 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v3)
    {
      return v3 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
    }
  }

  _voucher_activity_id_allocate_slow(v2);
  return v3 & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
}

mach_vm_address_t voucher_activity_get_logging_preferences(mach_vm_size_t *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    v2 = *(_firehose_task_buffer + 1676);

    return firehose_buffer_get_logging_prefs(v2, a1);
  }
}

uint64_t voucher_activity_get_metadata_buffer(void *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  v2 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    result = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = 2048;
    return v2 + 2048;
  }

  return result;
}

void *voucher_activity_create_with_data_2(unint64_t *a1, uint64_t a2, unsigned __int8 a3, const void *a4, size_t a5, char a6)
{
  LODWORD(v7) = a5 + 8;
  v8 = (a5 + 8);
  if (a5 >= 0xFFF8 || v8 >= 0x81)
  {
    voucher_activity_create_with_data_2_cold_3(v8);
  }

  v11 = *a1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = *(StatusReg + 224);
  if (a2 == -3)
  {
    v13 = *(StatusReg + 224);
  }

  else
  {
    v13 = a2;
  }

  v87 = v11;
  v14 = v11 >> 16;
  v15 = (v11 >> 16) & 0xFFFFFFEF;
  if (v12)
  {
    v16 = *(v12 + 48);
    if (v16)
    {
      LOWORD(v15) = v15 | 1;
      v17 = *(v12 + 56);
      LODWORD(v7) = a5 + 24;
      if (v17)
      {
        LOWORD(v15) = v14 | 0x11;
      }

      else
      {
        LODWORD(v7) = a5 + 16;
      }

      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_15:
      v18 = *(v13 + 48);
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  v18 = 0;
LABEL_16:
  v93 = v18;
  if (v18)
  {
    v7 = (v7 + 8);
  }

  else
  {
    v7 = v7;
  }

  v95 = v7;
  if (v18)
  {
    v19 = v15 | 0x200;
  }

  else
  {
    v19 = v15;
  }

  v86 = v19;
  v20 = MEMORY[0xFFFFFC104];
  v21 = _os_object_alloc_realized(OS_voucher, 80);
  v22 = v21;
  if (v13 && *(v13 + 32))
  {
    v23 = *(v13 + 40);
    if (!v23)
    {
      v23 = v13;
    }

    if (atomic_fetch_add_explicit((v23 + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }

    *(v21 + 5) = v23;
    v21[8] = *(v23 + 32);
    *(v21 + 72) = v21[18] & 0xFE | *(v23 + 72) & 1;
  }

  v94 = a6 & 1;
  v24 = _voucher_aid_next;
  while (1)
  {
    v25 = v24;
    if (!v24 || ((v24 + 1) & 0xF) == 0)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v24, v24 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v25)
    {
      goto LABEL_32;
    }
  }

  _voucher_activity_id_allocate_slow(v24);
LABEL_32:
  v26 = v25 & 0xFFFFFFFFFFFFFFLL | ((a3 | HIBYTE(v93) | ~v20 & 0x80u) << 56);
  v27 = _voucher_unique_pid;
  v22[6] = v26;
  v22[7] = v27;
  v22[8] = v93;
  v89 = v17;
  v90 = v16;
  v84 = v22;
  v85 = a1;
  v88 = v26;
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  if (_firehose_task_buffer && *(_firehose_task_buffer + 1680) != -1)
  {
    if ((a3 | HIBYTE(v93)) & 0x80 | ~v20 & 0x80 || (MEMORY[0xFFFFFC104] & 0x80) == 0)
    {
      v28 = mach_continuous_time();
    }

    else
    {
      v28 = mach_continuous_approximate_time();
    }

    v29 = v28;
    v30 = 0;
    v31 = (v95 + 24);
    if ((v95 & 7) != 0)
    {
      v32 = (v95 & 0xFFF8) + 32;
    }

    else
    {
      v32 = v95 + 24;
    }

    v83 = v95 << 48;
    v33 = 1;
    while (1)
    {
      v34 = v33;
      v35 = voucher_activity_create_with_data_2_streams[v30];
      v36 = _firehose_task_buffer;
      v37 = (_firehose_task_buffer + (v35 << 7) + 640);
      v38 = *v37;
      if ((v33 & 1) == 0)
      {
        break;
      }

      do
      {
        while (1)
        {
          v39 = HIDWORD(v38);
          if ((BYTE4(v38) - 1) <= 0xFDu)
          {
            v40 = (v36 + (BYTE4(v38) << 12));
            v41 = *v40;
            if (*v40)
            {
              v42 = v29 - v40[1];
              while ((HIWORD(v41) & 0x1FF) == v35)
              {
                v43 = v31 + v41 <= WORD1(v41) && HIWORD(v42) == 0;
                v44 = !v43;
                v45 = v41 + v32;
                v46 = v41 + v32 + 0x100000000;
                v47 = (v41 + v32) >> 16;
                v48 = ((v41 + v32) + 40 > v47) | HIBYTE(v46);
                if (v44 == 1)
                {
                  v46 = v41;
                  v48 = HIBYTE(v41) | 1;
                  v47 = v41 >> 16;
                  v45 = v41;
                }

                v49 = v46 & 0xFFFFFF00000000 | (v48 << 56) | (v47 << 16) | v45;
                v50 = v41;
                atomic_compare_exchange_strong_explicit(v40, &v50, v49, memory_order_relaxed, memory_order_relaxed);
                if (v50 == v41)
                {
                  if (v44)
                  {
                    if ((v46 & 0xFF00000000) == 0)
                    {
                      firehose_buffer_ring_enqueue(v36, BYTE4(v38));
                    }

                    break;
                  }

                  if (!v41)
                  {
                    break;
                  }

                  v79 = *(StatusReg - 8);
                  v78 = (v40 + v41);
                  v78[2] = v42 | v83;
                  goto LABEL_120;
                }

                v41 = v50;
                if (!v50)
                {
                  break;
                }
              }
            }

            LOBYTE(v39) = 0;
          }

          if (!v38)
          {
            break;
          }

          v52 = v38 | 1;
          v53 = v52 | (v39 << 32);
          if (v53 != (v38 & 0xFFFFFFFFFFLL))
          {
            v54 = v38;
            atomic_compare_exchange_strong_explicit(v37, &v54, v53 | v38 & 0xFFFFFF0000000000, memory_order_relaxed, memory_order_relaxed);
            v43 = v54 == v38;
            v38 = v54;
            if (!v43)
            {
              continue;
            }
          }

          _dispatch_firehose_gate_wait(v37, v52);
          v38 = *v37;
        }

        v51 = v38;
        atomic_compare_exchange_strong_explicit(v37, &v51, *(StatusReg + 24) & 0xFFFFFFFCLL | (v39 << 32) | v38 & 0xFFFFFF0000000000, memory_order_relaxed, memory_order_relaxed);
        v43 = v51 == v38;
        v38 = v51;
      }

      while (!v43);
      v97 = v29;
      v98 = v95;
      BYTE4(v98) = v35;
      v76 = 2 * *(v36 + 1697);
      if (((1 << v35) & 0x93) != 0)
      {
        ++v76;
      }

      v77 = v76 | 4;
LABEL_116:
      BYTE6(v98) = v77;
      v78 = firehose_buffer_tracepoint_reserve_slow(v36, &v97, 0);
      if (v78)
      {
LABEL_121:
        if (v90)
        {
          v78[3] = v90;
          v80 = v78 + 4;
        }

        else
        {
          v80 = v78 + 3;
        }

        if (v89)
        {
          *v80++ = v89;
        }

        if (v93)
        {
          *v80++ = v93;
        }

        *v80 = v88;
        memcpy(v80 + 1, a4, a5);
        v81 = _firehose_task_buffer;
        atomic_store(v87 & 0xFFFFFFFF0000FFFFLL | (v86 << 16), v78);
        if ((atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFF000), 0xFFFFFFFF00000000, memory_order_relaxed) & 0x10000FF00000000) == 0x100000100000000)
        {
          firehose_buffer_ring_enqueue(v81, (((v78 & 0xFFFFF000) - v81) >> 12));
        }
      }

LABEL_130:
      v33 = 0;
      v30 = 1u;
      if ((v34 & 1) == 0)
      {
        goto LABEL_131;
      }
    }

    v55 = 1;
    while (1)
    {
      v56 = HIDWORD(v38);
      if ((BYTE4(v38) - 1) <= 0xFDu)
      {
        v57 = (v36 + (BYTE4(v38) << 12));
        v58 = *v57;
        if (*v57)
        {
          v59 = v29 - v57[1];
          while ((HIWORD(v58) & 0x1FF) == v35)
          {
            v61 = v31 + v58 > WORD1(v58) || HIWORD(v59) != 0;
            v62 = v58 + v32;
            v63 = v58 + v32 + 0x100000000;
            v64 = (v58 + v32) >> 16;
            v65 = ((v58 + v32) + 40 > v64) | HIBYTE(v63);
            if (v61)
            {
              v63 = v58;
              v65 = HIBYTE(v58) | 1;
              v64 = v58 >> 16;
              v62 = v58;
            }

            v66 = v63 & 0xFFFFFF00000000 | (v65 << 56) | (v64 << 16) | v62;
            v67 = v58;
            atomic_compare_exchange_strong_explicit(v57, &v67, v66, memory_order_relaxed, memory_order_relaxed);
            if (v67 == v58)
            {
              if (v61)
              {
                if ((v63 & 0xFF00000000) == 0)
                {
                  firehose_buffer_ring_enqueue(v36, BYTE4(v38));
                }

                break;
              }

              if (!v58)
              {
                break;
              }

              v79 = *(StatusReg - 8);
              v78 = (v57 + v58);
              v78[2] = v59 | v83;
LABEL_120:
              v78[1] = v79;
              goto LABEL_121;
            }

            v58 = v67;
            if (!v67)
            {
              break;
            }
          }
        }

        LOBYTE(v56) = 0;
      }

      if (!v94)
      {
        break;
      }

      if (((v55 ^ 1) & (((v38 >> 40) & 0x40) >> 6) & 1) != 0 || (v38 >> 16) >> 24 < 0)
      {
        v71 = (v38 >> 40) & 0x3F;
        if (v71 >= 0x3E)
        {
          LOBYTE(v71) = 62;
        }

        v72 = (((v71 | BYTE5(v38) & 0xC0) + 1) << 40) | (v56 << 32) | v38 & 0xFFFF0000FFFFFFFFLL;
        v70 = v38;
        atomic_compare_exchange_strong_explicit(v37, &v70, v72, memory_order_relaxed, memory_order_relaxed);
        if (v70 == v38)
        {
          goto LABEL_130;
        }

        goto LABEL_104;
      }

      if (v38)
      {
        v68 = 2;
LABEL_108:
        v73 = v68 | v38;
        v74 = v73 | (v56 << 32);
        if (v74 == (v38 & 0xFFFFFFFFFFLL) || (v75 = v38, atomic_compare_exchange_strong_explicit(v37, &v75, v74 | v38 & 0xFFFFFF0000000000, memory_order_relaxed, memory_order_relaxed), v43 = v75 == v38, v38 = v75, v43))
        {
          _dispatch_firehose_gate_wait(v37, v73);
          v55 = 0;
          v38 = *v37;
        }
      }

      else
      {
LABEL_99:
        v69 = *(StatusReg + 24) & 0xFFFFFFFCLL | (v56 << 32) | v38 & 0xFFFFFF0000000000;
        v70 = v38 & 0xFFFFFFFF00000000;
        atomic_compare_exchange_strong_explicit(v37, &v70, v69, memory_order_relaxed, memory_order_relaxed);
        if (v70 == (v38 & 0xFFFFFFFF00000000))
        {
          v97 = v29;
          v98 = v95;
          BYTE4(v98) = v35;
          v77 = ((4 * v94) | (2 * *(v36 + 1697)) | (((1 << v35) & 0x93) != 0)) ^ 4;
          goto LABEL_116;
        }

LABEL_104:
        v38 = v70;
      }
    }

    if (v38)
    {
      v68 = 1;
      goto LABEL_108;
    }

    goto LABEL_99;
  }

LABEL_131:
  result = v84;
  *v85 = v87 & 0xFFFFFFFF0000FFFFLL | (v86 << 16);
  return result;
}

uint64_t voucher_get_activity_id_and_creator(void *a1, void *a2, void *a3)
{
  if (a1 == -3)
  {
    a1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    if (a2)
    {
      *a2 = a1[7];
    }

    if (a3)
    {
      *a3 = a1[8];
    }

    return a1[6];
  }

  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t voucher_get_activity_id(uint64_t a1, void *a2)
{
  if (a1 == -3)
  {
    a1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    if (a2)
    {
      *a2 = *(a1 + 64);
    }

    return *(a1 + 48);
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

void voucher_activity_flush(unsigned int a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    voucher_activity_get_logging_preferences_cold_1();
  }

  v2 = _firehose_task_buffer;
  if (_firehose_task_buffer && *(_firehose_task_buffer + 1680) != -1)
  {
    v3 = a1;
    v4 = _firehose_task_buffer + (a1 << 7);
    v5 = *(v4 + 640);
    if ((~v5 & 0xFF00000000) == 0 || BYTE4(*(v4 + 640)) == 0)
    {

      firehose_buffer_force_connect(v2);
    }

    else
    {
      v7 = (_firehose_task_buffer + (BYTE4(v5) << 12));
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];
        while ((HIWORD(v8) & 0x1FF) == v3)
        {
          v11 = v8 + 25 > WORD1(v8) || v9 < 0xFFFF000000000000;
          v12 = v8 + 0x100000020;
          v13 = (v8 + 0x100000020) >> 16;
          v14 = ((v8 + 32) + 40 > v13) | ((v8 + 0x100000020) >> 56);
          if (v11)
          {
            v12 = v8;
            v14 = HIBYTE(v8) | 1;
            v13 = v8 >> 16;
          }

          v15 = v12 & 0xFFFFFF00000000 | (v14 << 56) | (v13 << 16) | v12;
          v16 = v8;
          atomic_compare_exchange_strong_explicit(v7, &v16, v15, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v8)
          {
            if (v11)
            {
              if ((v12 & 0xFF00000000) == 0)
              {
                firehose_buffer_ring_enqueue(v2, BYTE4(v5));
              }
            }

            else if (v8)
            {
              voucher_activity_flush_cold_2(v8);
            }

            break;
          }

          v8 = v16;
          if (!v16)
          {
            break;
          }
        }
      }

      atomic_compare_exchange_strong_explicit((v4 + 640), &v17, v5 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
    }
  }
}

void voucher_activity_trace_v_2(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, char a7)
{
  LOBYTE(v7) = a7;
  v11 = a3;
  v13 = a1;
  if (_firehose_task_buffer_pred != -1)
  {
LABEL_103:
    v70 = v13;
    v71 = v11;
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
    v11 = v71;
    v13 = v70;
  }

  v14 = _firehose_task_buffer;
  if (!_firehose_task_buffer || *(_firehose_task_buffer + 1680) == -1)
  {
    return;
  }

  __dst = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v16 = *(StatusReg + 224);
  if (v16)
  {
    v17 = *(v16 + 48);
    v18 = *(v16 + 56);
    v19 = v18 == 0;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v19 = 1;
  }

  v20 = a5 + 8;
  if (!v17)
  {
    v20 = a5;
  }

  v21 = !v19;
  if (v19)
  {
    v22 = (v17 != 0) | (a2 >> 16) & 0xFFFFFFEF;
  }

  else
  {
    LOWORD(v22) = (v17 != 0) | WORD1(a2);
  }

  if (v21)
  {
    v23 = v20 + 8;
  }

  else
  {
    v23 = v20;
  }

  if ((a2 & 0x100000) != 0)
  {
    v24 = v18;
  }

  else
  {
    v24 = 0;
  }

  if ((a2 & 0x100000) != 0)
  {
    v25 = v22;
  }

  else
  {
    v25 = (v17 != 0) | WORD1(a2);
  }

  if ((a2 & 0x100000) != 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v20;
  }

  v27 = v25 | 0x100;
  if (a6)
  {
    v28 = v26 + 4;
  }

  else
  {
    v27 = v25;
    v28 = v26;
  }

  if (&v28[a6 + 24] >= 0xFF1)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Log is too large";
    qword_1EBC5B9B0 = &v28[a6 + 24];
    __break(1u);
    return;
  }

  v83 = v27;
  v84 = a2;
  v29 = v7 & 1;
  v30 = v13;
  v31 = (v14 + (v13 << 7) + 640);
  a2 = *v31;
  v7 = (v28 + 24 + a6);
  if ((v28 & 7) != 0)
  {
    v32 = (v28 & 0xFFF8u) + 32;
  }

  else
  {
    v32 = v28 + 24;
  }

  v33 = 1;
LABEL_32:
  v34 = v33 ^ 1;
  while (1)
  {
    v35 = HIDWORD(a2);
    if ((BYTE4(a2) - 1) <= 0xFDu)
    {
      v36 = (v14 + (BYTE4(a2) << 12));
      v37 = *v36;
      if (*v36)
      {
        v85 = v34;
        v38 = v11 - v36[1];
        while (1)
        {
          if ((HIWORD(v37) & 0x1FF) != v30)
          {
            goto LABEL_61;
          }

          v40 = v7 + v37 > WORD1(v37) || HIWORD(v38) != 0;
          v41 = v37 + v32;
          v42 = v37 + v32 - (a6 << 16);
          v43 = v42 >> 16;
          v44 = ((v37 + v32) + 40 > (v37 + v32 - (a6 << 16)) >> 16) | ((v42 + 0x100000000) >> 56);
          if (v40)
          {
            v45 = v37;
          }

          else
          {
            v45 = v42 + 0x100000000;
          }

          if (v40)
          {
            v44 = HIBYTE(v37) | 1;
            v46 = v37 >> 16;
          }

          else
          {
            LOWORD(v46) = v43;
          }

          if (v40)
          {
            v41 = v37;
          }

          v47 = v45 & 0xFFFFFF00000000 | (v44 << 56) | (v46 << 16) | v41;
          v48 = v37;
          atomic_compare_exchange_strong_explicit(v36, &v48, v47, memory_order_relaxed, memory_order_relaxed);
          if (v48 == v37)
          {
            break;
          }

          v37 = v48;
          if (!v48)
          {
            goto LABEL_61;
          }
        }

        if (v40)
        {
          if ((v45 & 0xFF00000000) == 0)
          {
            v81 = v13;
            v77 = v11;
            v79 = v17;
            v75 = v24;
            v72 = StatusReg;
            v73 = v29;
            firehose_buffer_ring_enqueue(v14, BYTE4(a2));
            StatusReg = v72;
            v29 = v73;
            v24 = v75;
            v11 = v77;
            v17 = v79;
            v13 = v81;
          }

LABEL_61:
          LOBYTE(v35) = 0;
        }

        else
        {
          __dst = v36 + v46;
          v35 = v37;
          if (v37)
          {
            v69 = *(StatusReg - 8);
            v61 = (v36 + v35);
            v61[2] = v38 | (v28 << 48);
            v61[1] = v69;
            if (v17)
            {
              goto LABEL_84;
            }

            goto LABEL_100;
          }
        }

        v34 = v85;
        if (!v29)
        {
          break;
        }

        goto LABEL_63;
      }

      LOBYTE(v35) = 0;
    }

    if (!v29)
    {
      break;
    }

LABEL_63:
    if ((v34 & (((a2 >> 40) & 0x40) >> 6) & 1) != 0 || (a2 >> 16) >> 24 < 0)
    {
      v52 = (a2 >> 40) & 0x3F;
      if (v52 >= 0x3E)
      {
        LOBYTE(v52) = 62;
      }

      v53 = (((v52 | BYTE5(a2) & 0xC0) + 1) << 40) | (v35 << 32) | a2 & 0xFFFF0000FFFFFFFFLL;
      v51 = a2;
      atomic_compare_exchange_strong_explicit(v31, &v51, v53, memory_order_relaxed, memory_order_relaxed);
      if (v51 == a2)
      {
        return;
      }

LABEL_71:
      a2 = v51;
    }

    else
    {
      if (!a2)
      {
        goto LABEL_66;
      }

      v49 = 2;
LABEL_75:
      v54 = v49 | a2;
      v55 = v54 | (v35 << 32);
      if (v55 == (a2 & 0xFFFFFFFFFFLL) || (v56 = a2, atomic_compare_exchange_strong_explicit(v31, &v56, v55 | a2 & 0xFFFFFF0000000000, memory_order_relaxed, memory_order_relaxed), v21 = v56 == a2, a2 = v56, v21))
      {
        v82 = v13;
        v78 = v11;
        v80 = v17;
        v76 = v24;
        v57 = StatusReg;
        v74 = v29;
        _dispatch_firehose_gate_wait(v31, v54);
        v29 = v74;
        StatusReg = v57;
        v24 = v76;
        v11 = v78;
        v17 = v80;
        v13 = v82;
        v33 = 0;
        a2 = *v31;
        goto LABEL_32;
      }
    }
  }

  if (a2)
  {
    v49 = 1;
    goto LABEL_75;
  }

LABEL_66:
  v50 = *(StatusReg + 24) & 0xFFFFFFFCLL | (v35 << 32) | a2 & 0xFFFFFF0000000000;
  v51 = a2 & 0xFFFFFFFF00000000;
  atomic_compare_exchange_strong_explicit(v31, &v51, v50, memory_order_relaxed, memory_order_relaxed);
  if (v51 != (a2 & 0xFFFFFFFF00000000))
  {
    goto LABEL_71;
  }

  v58 = v24;
  a2 = v17;
  v87 = v11;
  v88 = v28;
  WORD1(v88) = a6;
  BYTE4(v88) = v13;
  v59 = (2 * *(v14 + 1697)) | (4 * v29);
  if (((1 << v30) & 0x93) != 0)
  {
    ++v59;
  }

  BYTE6(v88) = v59 ^ 4;
  v60 = firehose_buffer_tracepoint_reserve_slow(v14, &v87, &__dst);
  if (!v60)
  {
    return;
  }

  v61 = v60;
  v17 = a2;
  v24 = v58;
  if (a2)
  {
LABEL_84:
    v61[3] = v17;
    v62 = v61 + 4;
    if (v24)
    {
      goto LABEL_85;
    }

    goto LABEL_86;
  }

LABEL_100:
  v62 = v61 + 3;
  if (v24)
  {
LABEL_85:
    *v62++ = v24;
  }

LABEL_86:
  if (a6)
  {
    *v62 = (__dst - (v61 & 0xF000)) | (a6 << 16);
    v62 = (v62 + 4);
  }

  while (a5)
  {
    v63 = *(a4 + 8);
    memcpy(v62, *a4, v63);
    v64 = *(a4 + 8);
    v65 = a5 >= v64;
    a5 -= v64;
    if (!v65)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
LABEL_102:
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      goto LABEL_103;
    }

    v62 = (v62 + v63);
    a4 += 16;
  }

  if (a6)
  {
    a5 = __dst;
    do
    {
      v66 = *(a4 + 8);
      memcpy(a5, *a4, v66);
      a5 += v66;
      __dst = a5;
      v67 = *(a4 + 8);
      v65 = a6 >= v67;
      a6 -= v67;
      if (!v65)
      {
        goto LABEL_102;
      }

      a4 += 16;
    }

    while (a6);
  }

  v68 = _firehose_task_buffer;
  atomic_store(v84 & 0xFFFFFFFF0000FFFFLL | (v83 << 16), v61);
  if ((atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFF000), 0xFFFFFFFF00000000, memory_order_relaxed) & 0x10000FF00000000) == 0x100000100000000)
  {
    firehose_buffer_ring_enqueue(v68, (((v61 & 0xFFFFF000) - v68) >> 12));
  }
}

void voucher_activity_trace(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5[0] = a4;
  v5[1] = a5;
  voucher_activity_trace_v(a1, a2, a3, v5, a5, 0);
}

size_t _voucher_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, "voucher[%p] = { xref = %d, ref = %d", a1, *(a1 + 12), *(a1 + 8));
  v7 = v6;
  if (v6 >= __size)
  {
    v7 = __size;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 40))
  {
    if (__size >= v8)
    {
      v9 = __size - v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = snprintf(&__str[v8], v9, ", base voucher %p", *(a1 + 40));
    v11 = v10;
    if (v9 < v10)
    {
      v11 = v9;
    }

    if (v10 < 0)
    {
      v11 = 0;
    }

    v8 += v11;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    if (__size >= v8)
    {
      v22 = __size - v8;
    }

    else
    {
      v22 = 0;
    }

    if (v12 == *(a1 + 36))
    {
      v23 = " & ipc kvoucher";
    }

    else
    {
      v23 = &unk_1BB5822E3;
    }

    snprintf(&__str[v8], v22, ", kvoucher%s 0x%x [\n", v23, v12);
    v24 = *(a1 + 32);
    v25 = voucher_kvoucher_debug(*MEMORY[0x1E69E9A60]);
    v26 = v25;
    if (__size >= v25)
    {
      v27 = __size - v25;
    }

    else
    {
      v27 = 0;
    }

    v28 = snprintf(&__str[v25], v27, "]");
    v29 = v28;
    if (v27 < v28)
    {
      v29 = v27;
    }

    if (v28 < 0)
    {
      v29 = 0;
    }

    v8 = v29 + v26;
  }

  v13 = *(a1 + 36);
  if (v13 && v13 != *(a1 + 32))
  {
    if (__size >= v8)
    {
      v30 = __size - v8;
    }

    else
    {
      v30 = 0;
    }

    snprintf(&__str[v8], v30, ", ipc kvoucher 0x%x [\n", *(a1 + 36));
    v31 = *(a1 + 36);
    v32 = voucher_kvoucher_debug(*MEMORY[0x1E69E9A60]);
    v33 = v32;
    if (__size >= v32)
    {
      v34 = __size - v32;
    }

    else
    {
      v34 = 0;
    }

    v35 = snprintf(&__str[v32], v34, "]");
    v36 = v35;
    if (v34 < v35)
    {
      v36 = v34;
    }

    if (v35 < 0)
    {
      v36 = 0;
    }

    v8 = v36 + v33;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (__size >= v8)
    {
      v15 = __size - v8;
    }

    else
    {
      v15 = 0;
    }

    v16 = snprintf(&__str[v8], v15, ", activity 0x%llx (pid: 0x%16llx, parent 0x%llx)", v14, *(a1 + 56), *(a1 + 64));
    v17 = v16;
    if (v15 < v16)
    {
      v17 = v15;
    }

    if (v16 < 0)
    {
      v17 = 0;
    }

    v8 += v17;
  }

  if (__size >= v8)
  {
    v18 = __size - v8;
  }

  else
  {
    v18 = 0;
  }

  v19 = snprintf(&__str[v8], v18, " }");
  v20 = v19;
  if (v18 < v19)
  {
    v20 = v18;
  }

  if (v19 < 0)
  {
    v20 = 0;
  }

  return v20 + v8;
}

uint64_t voucher_mach_msg_fill_aux(uint64_t a1, unsigned int a2)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >= 0x28)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      *a1 = xmmword_1BB5815D0;
      v5 = *(v2 + 56);
      *(a1 + 16) = v4;
      *(a1 + 24) = v5;
      return 40;
    }
  }

  return v3;
}

void _voucher_activity_id_allocate_slow(uint64_t a1)
{
  activity_id = 0;
  v2 = mach_generate_activity_id(*MEMORY[0x1E69E9A60], 1, &activity_id);
  if (v2)
  {
    v3 = v2;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Could not generate an activity ID";
    qword_1EBC5B9B0 = v2;
    __break(1u);
  }

  else
  {
    if (16 * (activity_id & 0xFFFFFFFFFFFFFLL))
    {
      v2 = 16 * (activity_id & 0xFFFFFFFFFFFFFLL);
    }

    else
    {
      v2 = 1;
    }

    v3 = &_voucher_aid_next;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, v2 + 1, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
LABEL_6:
    __swp(v2, v3);
  }
}

uint64_t _firehose_task_buffer_init()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v0 = getpid();
  result = proc_pidinfo(v0, 17, 1uLL, &v6, 56);
  if (result != 56)
  {
    if (!result)
    {
      v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unable to get the unique pid (error)";
      qword_1EBC5B9B0 = v5;
      __break(1u);
    }

    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Unable to get the unique pid (size)";
    qword_1EBC5B9B0 = result;
    __break(1u);
  }

  _voucher_unique_pid = v7;
  if (_voucher_libtrace_hooks)
  {
    result = (*(_voucher_libtrace_hooks + 8))(result, v2);
    if (result)
    {
      result = firehose_buffer_create(result, _voucher_unique_pid, _dispatch_memory_warn);
      _firehose_task_buffer = result;
      if (*_voucher_libtrace_hooks >= 4)
      {
        v3 = *(_voucher_libtrace_hooks + 32);
        if (v3)
        {
          result = v3(result + 2048, 2048);
        }
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

mach_vm_address_t firehose_buffer_create(mach_port_name_t a1, uint64_t a2, uint64_t a3)
{
  address = *MEMORY[0x1E69E9AC8];
  if (0x4000 % address)
  {
    firehose_buffer_create_cold_1();
  }

  v6 = MEMORY[0x1E69E9A60];
  v7 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, 0x40000uLL, 0, 1308622851, 0, 0, 0, 3, 7, 2u);
  if (v7)
  {
    if (v7 != 3)
    {
      _dispatch_bug(346, v7);
    }

    v12 = mach_port_deallocate(*v6, a1);
    if (v12 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v12)
    {
      _dispatch_bug(91, v12);
    }

    return 0;
  }

  else
  {
    v8 = address;
    *(address + 1676) = a1;
    *(v8 + 1672) = getpid();
    *(v8 + 1664) = a2;
    name = 0;
    *&options.flags = 0x500000033;
    options.8 = 0uLL;
    v9 = mach_port_construct(*v6, &options, v8, &name);
    if (v9)
    {
      if (v9 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      firehose_buffer_create_cold_3(v9);
    }

    *(v8 + 1688) = name;
    *(v8 + 264) = 20180226;
    *(v8 + 512) = a3;
    for (i = 644; i != 1668; i += 128)
    {
      if (i != 1028)
      {
        *(v8 + i) = -1;
      }
    }

    firehose_buffer_update_limits_unlocked(v8);
    *(v8 + 520) = 31;
    *v8 = 1;
    *(v8 + 2) = 2;
    *(v8 + 4) = 3;
    *(v8 + 6) = 4;
    *(v8 + 464) = 4;
    *(v8 + 320) = 4;
    *(v8 + 256) = 0;
    *(v8 + 258) = 4;
    *(v8 + 260) = 0;
    *(v8 + 262) = 0;
  }

  return v8;
}

uint64_t firehose_buffer_update_limits_unlocked(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = *(result + 512);
  v5 = (result + 644);
  do
  {
    v7 = *v5;
    v5 += 128;
    v6 = v7;
    if (((1 << v3) & 0x93) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = v2 + 1;
    }

    if (((1 << v3) & 0x93) != 0)
    {
      v9 = v1 + 1;
    }

    else
    {
      v9 = v1;
    }

    if (v6 != 255)
    {
      v2 = v8;
      v1 = v9;
    }

    ++v3;
  }

  while (v3 != 8);
  v10 = (2 * (v1 + v2)) | 1;
  if ((v4 & 2) != 0)
  {
    v10 = 3 * v1 + 6 * v2 + 1;
  }

  v11 = v1 + v2 + 3;
  v12 = v1 + 4 * v2;
  if ((v4 & 2) != 0)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v11;
  }

  if ((v4 & 1) == 0)
  {
    v13 = v10;
  }

  v14 = *MEMORY[0x1E69E9AC8];
  if ((*MEMORY[0x1E69E9AC8] & 0xFFFE000) != 0)
  {
    v15 = v14 >> 12;
    v16 = v13 % (v14 >> 12);
    v17 = v15 - v16;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v13 += v18;
  }

  if (v4)
  {
    v19 = 4;
  }

  else
  {
    v19 = 8;
  }

  if (v19 <= v13)
  {
    v19 = v13;
  }

  v20 = v19 - 1;
  v21 = 2 * v1;
  if ((3 * v19) >> 3 > v21)
  {
    v21 = (3 * v19) >> 3;
  }

  v22 = v19 + 1;
  v23 = *(result + 528);
  *(result + 528) = v20;
  *(result + 530) = v21;
  *(result + 532) = v22;
  *(result + 533) = 0;
  *(result + 534) = 0;
  v24 = ((v21 << 16) | (v22 << 32) | v20) - v23;
  if (v24)
  {
    atomic_fetch_add_explicit((result + 448), v24, memory_order_relaxed);
  }

  return result;
}

mach_vm_address_t firehose_buffer_get_logging_prefs(int a1, mach_vm_size_t *a2)
{
  v10 = 0;
  address = 0;
  size = 0;
  if ((a1 + 1) <= 1)
  {
LABEL_16:
    result = 0;
    *a2 = 0;
    return result;
  }

  logging_prefs = firehose_send_get_logging_prefs(a1, &v10, &size);
  if (logging_prefs)
  {
    if (logging_prefs != 268435459)
    {
      if (logging_prefs == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(600, logging_prefs);
    }

    goto LABEL_16;
  }

  v4 = MEMORY[0x1E69E9A60];
  v5 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, 0, 1, v10, 0, 0, 1, 1, 2u);
  if (v5 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v5)
  {
    _dispatch_bug(611, v5);
    address = 0;
    size = 0;
  }

  v6 = mach_port_deallocate(*v4, v10);
  if (v6 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v6)
  {
    _dispatch_bug(617, v6);
  }

  result = address;
  *a2 = size;
  return result;
}

BOOL firehose_buffer_should_send_strings(int *guard)
{
  v1 = guard[420];
  v7 = 0;
  if (v1 == -1)
  {
    return 0;
  }

  if (!v1)
  {
LABEL_10:
    v5 = firehose_client_reconnect(guard, v1, 0);
    if ((v5 - 1) <= 0xFFFFFFFD)
    {
      should_send_strings = firehose_send_should_send_strings(v5, &v7);
      if (!should_send_strings)
      {
        return v7 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        _dispatch_bug(653, should_send_strings);
      }
    }

    return 0;
  }

  v3 = firehose_send_should_send_strings(v1, &v7);
  if (v3)
  {
    if (v3 != 268435459)
    {
      if (v3 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      _dispatch_bug(641, v3);
    }

    goto LABEL_10;
  }

  return v7 != 0;
}

uint64_t firehose_client_reconnect(int *guard, int a2, unsigned int a3)
{
  v6 = 0;
  v53 = *MEMORY[0x1E69E9840];
  *object_handle = 0;
  v7 = guard + 423;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(guard + 423, &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    _dispatch_unfair_lock_lock_slow((guard + 423));
  }

  v9 = guard + 420;
  v10 = guard[a3 + 420];
  if (v10 == a2 && v10 != -1)
  {
    v12 = MEMORY[0x1E69E9A60];
    if (a2)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = v9[v13];
        if (mach_port_destruct(*v12, v16, 0, guard) == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        v17 = mach_port_deallocate(*v12, v16);
        if (v17 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v17)
        {
          _dispatch_bug(91, v17);
        }

        v14 = 0;
        v9[v13] = 0;
        v13 = 1;
      }

      while ((v15 & 1) != 0);
    }

    v46 = guard;
    size = 0x40000;
    memory_entry_64 = mach_make_memory_entry_64(*v12, &size, guard, 4194305, &object_handle[1], 0);
    if (!(size >> 18))
    {
      firehose_client_reconnect_cold_12(size);
    }

    if (memory_entry_64)
    {
      firehose_client_reconnect_cold_3(memory_entry_64);
    }

    if (a2 && (v19 = *(_voucher_libtrace_hooks + 24)) != 0 && ((v20 = v19(&v46, &size), v21 = size, !v20) ? (v22 = v46 == 0) : (v22 = 1), !v22 ? (v23 = size == 0) : (v23 = 1), !v23))
    {
      v35 = mach_make_memory_entry_64(*v12, &size, v46, 4194305, object_handle, 0);
      if (v35)
      {
        firehose_client_reconnect_cold_3(v35);
      }

      v36 = mach_vm_deallocate(*v12, v46, size);
      v45 = v21;
      if (v36)
      {
        _dispatch_bug(209, v36);
      }
    }

    else
    {
      v45 = 0;
    }

    v24 = &v51;
    v25 = 1;
    do
    {
      v26 = v25;
      name = 0;
      *&options.flags = 0x100000017;
      options.8 = 0uLL;
      v27 = mach_port_construct(*v12, &options, guard, &name);
      if (v27)
      {
        if (v27 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        firehose_buffer_create_cold_3(v27);
      }

      v25 = 0;
      *v24 = name;
      v24 = &v52;
    }

    while ((v26 & 1) != 0);
    v10 = *(&v51 + a3);
    v28 = v51;
    v29 = v52;
    v30 = firehose_send_register(guard[419], object_handle[1], 0x40000, v51, v52, guard[422], object_handle[0], v45);
    if (v30)
    {
      if (v30 != 268435459)
      {
        firehose_client_reconnect_cold_10(v30);
      }

      v37 = 0;
      v38 = &v51;
      v39 = 1;
      do
      {
        v40 = v39;
        v41 = *v38;
        if (mach_port_destruct(*v12, *v38, 0, guard) == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        v42 = mach_port_deallocate(*v12, v41);
        if (v42 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v42)
        {
          _dispatch_bug(91, v42);
        }

        v39 = 0;
        v9[v37] = -1;
        v38 = &v52;
        v37 = 1;
      }

      while ((v40 & 1) != 0);
      v43 = mach_port_deallocate(*v12, object_handle[1]);
      if (v43 == -301)
      {
        _dispatch_sema4_create_slow_cold_3();
      }

      if (v43)
      {
        _dispatch_bug(91, v43);
      }

      if (object_handle[0])
      {
        v44 = mach_port_deallocate(*v12, object_handle[0]);
        if (v44 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v44)
        {
          _dispatch_bug(91, v44);
        }
      }

      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      guard[420] = v28;
      guard[421] = v29;
    }
  }

  v31 = *(StatusReg + 24) & 0xFFFFFFFC;
  v32 = atomic_exchange_explicit(v7, 0, memory_order_release);
  if (v32 != v31)
  {
    _dispatch_unfair_lock_unlock_slow(v7, v32);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

void firehose_client_push_reply(uint64_t a1, int a2)
{
  qword_1EBC5B980 = "BUG IN LIBDISPATCH: firehose_push_reply should never be sent to the buffer receive port";
  qword_1EBC5B9B0 = a2;
  __break(1u);
}

uint64_t firehose_client_push_notify_async(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v4 = *v4;
  }

  while (v4 && *(v4 + 8) != "firehose");
  firehose_client_merge_updates(*(v4 + 16), 1, a2, a3, a4 != 0, 0);
  return 0;
}

uint64_t firehose_client_merge_updates(uint64_t result, int a2, unint64_t a3, unint64_t a4, int a5, void *a6)
{
  if (a5)
  {
    v6 = *(result + 1696);
    if (!v6)
    {
      atomic_compare_exchange_strong_explicit((result + 1696), &v6, 1u, memory_order_relaxed, memory_order_relaxed);
    }
  }

  v7 = *(result + 464);
  do
  {
    v8 = v7;
    if (a3 <= v7)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((result + 464), &v7, a3, memory_order_relaxed, memory_order_relaxed);
  }

  while (v7 != v8);
  if (a3 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3 - v8;
  }

  v10 = *(result + 488);
  do
  {
    v11 = v10;
    if (a4 <= v10)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((result + 488), &v10, a4, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v11);
  if (a4 <= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4 - v11;
  }

  if (v9 | v12)
  {
    v13 = *(result + 256);
    v14 = v13;
    atomic_compare_exchange_strong_explicit((result + 256), &v14, ((v9 + WORD1(v13)) << 16) | ((v12 + HIWORD(v13)) << 48) | v13 & 0xFFFF0000FFFFLL, memory_order_relaxed, memory_order_relaxed);
    if (v14 != v13)
    {
      v15 = v14;
      do
      {
        atomic_compare_exchange_strong_explicit((result + 256), &v15, ((v9 + WORD1(v14)) << 16) | ((v12 + HIWORD(v14)) << 48) | v14 & 0xFFFF0000FFFFLL, memory_order_relaxed, memory_order_relaxed);
        v16 = v15 == v14;
        v14 = v15;
      }

      while (!v16);
    }

    v17 = v9 | (v12 << 16);
    add_explicit = atomic_fetch_add_explicit((result + 448), v17, memory_order_release);
    if (a6)
    {
      *a6 = add_explicit + v17;
    }

    if (a2)
    {
      if (v12)
      {
        atomic_fetch_add_explicit((result + 496), 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        atomic_fetch_add_explicit((result + 472), 1uLL, memory_order_relaxed);
      }
    }
  }

  else if (a6)
  {
    *a6 = *(result + 448);
  }

  return result;
}

uint64_t firehose_buffer_update_limits(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 536);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 536), &v2, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    _dispatch_unfair_lock_lock_slow(a1 + 536);
  }

  result = firehose_buffer_update_limits_unlocked(a1);
  v6 = *(StatusReg + 24) & 0xFFFFFFFC;
  v7 = atomic_exchange_explicit(v3, 0, memory_order_release);
  if (v7 != v6)
  {

    return _dispatch_unfair_lock_unlock_slow(v3, v7);
  }

  return result;
}

void firehose_buffer_ring_enqueue(int *guard, unsigned int a2)
{
  v3 = HIBYTE(guard[1024 * a2 + 1]) & 2;
  v4 = 96;
  if ((guard[1024 * a2 + 1] & 0x2000000) == 0)
  {
    v4 = 80;
  }

  v5 = &guard[v4];
  v6 = &guard[16 * v3];
  v7 = *v5;
  for (i = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)); ; *(i + 976) = 0)
  {
LABEL_4:
    while (1)
    {
      v9 = v7;
      v10 = v7 & 0xFFFFFFC0;
      *(i + 976) = v5;
      v11 = v7 & 0x3F;
      v12 = v7 & 0xFFFFFFC0;
      atomic_compare_exchange_strong_explicit(v6 + v11, &v12, v7 & 0xFFC0 | a2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == (v7 & 0xFFC0))
      {
        break;
      }

      *(i + 976) = 0;
      v7 = *v5;
      if (v7 == v9)
      {
        v13 = -1024;
        while (*(v6 + v11) != v10)
        {
          v21 = v9;
          v25 = i;
          v26 = v11;
          v24 = v10;
          v23 = v6;
          v22 = a2;
          v27 = v13;
          if (v13 < 0)
          {
            __yield();
          }

          else
          {
            _pthread_yield_to_enqueuer_4dispatch();
          }

          v7 = *v5;
          v13 = v27 + 1;
          v9 = v21;
          a2 = v22;
          v6 = v23;
          i = v25;
          v11 = v26;
          v10 = v24;
          if (v7 != v21)
          {
            goto LABEL_4;
          }
        }

        v7 = v9;
      }
    }

    atomic_compare_exchange_strong_explicit(v5, &v7, v7 + 1, memory_order_release, memory_order_relaxed);
    if (v7 == v9)
    {
      break;
    }

    *(v6 + v11) = v10;
  }

  *(i + 976) = 0;
  v14 = v3 >> 1;
  v15 = &guard[v3 >> 1];
  v16 = v15[420];
  if (v16 == -1)
  {
    return;
  }

  if (v16)
  {
    v17 = firehose_send_push_async(v15[420], 0, 0);
    if (v17 <= 268435458)
    {
      if (!v17)
      {
        return;
      }

      if (v17 == -301)
      {
        qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
        qword_1EBC5B9B0 = -301;
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v17 != 268435459)
    {
      if (v17 == 268435460)
      {
        return;
      }

LABEL_24:
      _dispatch_bug(476, v17);
    }
  }

  v18 = firehose_client_reconnect(guard, v16, v14);
  if (v18 - 1 <= 0xFFFFFFFD)
  {
    v19 = firehose_send_push_async(v18, 0, 0);
    if ((v19 - 268435459) >= 2 && v19 != 0)
    {
      if (v19 != -301)
      {

        _dispatch_bug(488, v19);
        return;
      }

LABEL_37:
      qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
      qword_1EBC5B9B0 = -301;
      __break(1u);
    }
  }
}

int *firehose_buffer_force_connect(int *result)
{
  if (!result[420])
  {
    return firehose_client_reconnect(result, 0, 0);
  }

  return result;
}

unint64_t firehose_buffer_tracepoint_reserve_slow(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 14);
  firehose_drain_notifications_once(a1);
  v7 = *(a1 + 448);
  v64 = v7;
  while (*(&v64 | (2 * (v6 & 1))))
  {
    v63 = v7;
    --*(&v63 | (2 * (v6 & 1)));
    v8 = v7;
    atomic_compare_exchange_strong_explicit((a1 + 448), &v8, v63, memory_order_acquire, memory_order_acquire);
    v64 = v8;
    v9 = v8 == v7;
    v7 = v8;
    if (v9)
    {
      v10 = v63;
      v11 = (a1 + 536);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (2)
      {
        for (i = *(a1 + 256); ; i = v18)
        {
          v14 = HIDWORD(i);
          if (i == WORD1(i))
          {
            if (HIWORD(i) == WORD2(i))
            {
              v41 = 0;
              v42 = BYTE4(v10);
              v43 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v62 = v11;
              atomic_compare_exchange_strong_explicit(v11, &v41, *(v43 + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
              if (v41)
              {
                _dispatch_unfair_lock_lock_slow(v11);
              }

              v44 = *(a1 + 520);
              v45 = v44 | (-1 << v42);
              if (v45 == -1)
              {
                v47 = 0;
              }

              else
              {
                v46 = __clz(__rbit64(~v45));
                *(a1 + 520) = v44 | (1 << v46);
                v47 = v46;
              }

              v48 = *(v43 + 24) & 0xFFFFFFFC;
              v49 = atomic_exchange_explicit(v62, 0, memory_order_release);
              if (v49 != v48)
              {
                _dispatch_unfair_lock_unlock_slow(v62, v49);
              }

              v25 = v47;
              if (!v47)
              {
                if ((*(a2 + 14) & 4) != 0)
                {
                  v39 = 1;
                  goto LABEL_54;
                }

                v25 = 0;
                v50 = 0x10000;
                if ((v6 & 1) == 0)
                {
                  v50 = 1;
                }

                atomic_fetch_add_explicit((a1 + 448), v50, memory_order_relaxed);
              }

              goto LABEL_38;
            }

            LODWORD(v16) = HIDWORD(i) + 1;
            v15 = i;
          }

          else
          {
            v15 = i + 1;
            v16 = HIDWORD(i);
          }

          v17 = v15 | (v16 << 32) | i & 0xFFFF0000FFFF0000;
          v18 = i;
          atomic_compare_exchange_strong_explicit((a1 + 256), &v18, v17, memory_order_relaxed, memory_order_relaxed);
          if (v18 == i)
          {
            break;
          }
        }

        if (v16 == WORD2(i))
        {
          LOBYTE(v19) = i;
        }

        else
        {
          v19 = HIDWORD(i);
        }

        v20 = a1 + ((v16 != WORD2(i)) << 7);
        v21 = v19 & 0x3F;
        v22 = *(v20 + 2 * v21);
        v23 = v22 & 0x3F;
        if ((v22 & 0x3F) == 0)
        {
          v33 = -1024;
          do
          {
            if (v33 < 0)
            {
              __yield();
            }

            else
            {
              v55 = StatusReg;
              v59 = v11;
              v34 = v10;
              v53 = v14;
              v54 = v20;
              v52 = v16;
              v51 = v21;
              MEMORY[0x1BFB10130](0, 4, (v33 + 1));
              v21 = v51;
              v14 = v53;
              v20 = v54;
              LODWORD(v16) = v52;
              StatusReg = v55;
              v11 = v59;
              v10 = v34;
            }

            v22 = *(v20 + 2 * v21);
            ++v33;
            v23 = v22 & 0x3F;
          }

          while ((v22 & 0x3F) == 0);
        }

        v24 = v16;
        v25 = v23;
        v26 = a1 + (v23 << 12);
        if (v24 == v14 && *(v26 + 6) == 3)
        {
          atomic_fetch_and_explicit((a1 + 456), ~(1 << v23), memory_order_relaxed);
        }

        *v26 = 0x100000000000000;
        *(v20 + 2 * v21) = (v22 & 0xFFC0) + 64;
        if (v23 >= BYTE4(v10))
        {
          v27 = 0;
          atomic_compare_exchange_strong_explicit(v11, &v27, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
          if (v27)
          {
            v56 = StatusReg;
            v60 = v11;
            v35 = v23;
            v36 = v10;
            _dispatch_unfair_lock_lock_slow(v11);
            StatusReg = v56;
            v11 = v60;
            v10 = v36;
            v25 = v35;
          }

          if (*(a1 + 532) <= v25)
          {
            v28 = *(a1 + 520) & ~(1 << v25);
            *(a1 + 520) = v28;
            if (((v28 >> (v25 & 0x3C)) & 0xF) == 0)
            {
              v58 = v11;
              v29 = v10;
              v30 = StatusReg;
              madvise((a1 + ((v25 & 0x3C) << 12)), 0x4000uLL, 5);
              StatusReg = v30;
              v10 = v29;
              v11 = v58;
            }

            v25 = 0;
          }

          v31 = *(StatusReg + 24) & 0xFFFFFFFC;
          v32 = atomic_exchange_explicit(v11, 0, memory_order_release);
          if (v32 != v31)
          {
            v57 = StatusReg;
            v61 = v11;
            v37 = v25;
            v38 = v10;
            _dispatch_unfair_lock_unlock_slow(v11, v32);
            StatusReg = v57;
            v11 = v61;
            v10 = v38;
            v25 = v37;
          }

          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_38;
      }
    }
  }

  v25 = 0;
  v39 = 0;
  if ((*(a2 + 14) & 4) != 0)
  {
LABEL_54:
    firehose_buffer_tracepoint_reserve_slow_cold_1(a2, v39, a1, a3, &v64);
    return v64;
  }

LABEL_38:

  return firehose_buffer_stream_chunk_install(a1, a2, a3, v25);
}

BOOL firehose_drain_notifications_once(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(msg, 0, sizeof(msg));
  v2 = mach_msg(msg, 67109126, 0, 0x7Cu, *(a1 + 1688), 0, 0);
  v3 = v2;
  if (v2)
  {
    if (v2 != 268451843)
    {
      firehose_drain_notifications_once_cold_1(v2);
    }
  }

  else
  {
    v9[1] = "firehose";
    v9[2] = a1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9[0] = *(StatusReg + 184);
    *(StatusReg + 184) = v9;
    v5 = msg[0];
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    if (!firehoseReply_server(msg, v11))
    {
      goto LABEL_12;
    }

    if (v11[0] >= 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

    if (!v6 && (v5 & 0x1F) == 0x12)
    {
      firehose_drain_notifications_once_cold_2(v11);
    }

    if (v6 != -305 && v6)
    {
LABEL_12:
      *&msg[8] = 0;
      mach_msg_destroy(msg);
    }

    *(StatusReg + 184) = v9[0];
  }

  result = v3 == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t firehose_buffer_stream_chunk_install(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v4 = a1;
  v5 = (a1 + (*(a2 + 12) << 7) + 640);
  if (!a4)
  {
    v17 = *v5;
    if ((*v5 & 0x400000000000) != 0)
    {
      v41 = (v17 >> 40) & 0x3F;
      if (v41 >= 0x3E)
      {
        LODWORD(v41) = 62;
      }

      v42 = v17 & 0xFFFF000000000000 | (((v41 + 1) | 0x40u) << 40);
      v43 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v43, v42, memory_order_relaxed, memory_order_relaxed);
      if (v43 != v17)
      {
        v44 = v43;
        do
        {
          v18 = 0;
          v17 = v43;
          v45 = (v43 >> 40) & 0x3F;
          if (v45 >= 0x3E)
          {
            LODWORD(v45) = 62;
          }

          atomic_compare_exchange_strong_explicit(v5, &v44, v43 & 0xFFFF000000000000 | (((v45 + 1) | 0x40u) << 40), memory_order_relaxed, memory_order_relaxed);
          v39 = v44 == v43;
          v43 = v44;
        }

        while (!v39);
        goto LABEL_34;
      }
    }

    else
    {
      v5[1] = mach_continuous_time();
      v17 = *v5;
      v34 = (*v5 >> 40) & 0x3F;
      if (v34 >= 0x3E)
      {
        LODWORD(v34) = 62;
      }

      v35 = *v5 & 0xFFFF000000000000 | (((v34 + 1) | 0x40u) << 40);
      v36 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v36, v35, memory_order_release, memory_order_relaxed);
      if (v36 != v17)
      {
        v37 = v36;
        do
        {
          v18 = 0;
          v17 = v36;
          v38 = (v36 >> 40) & 0x3F;
          if (v38 >= 0x3E)
          {
            LODWORD(v38) = 62;
          }

          atomic_compare_exchange_strong_explicit(v5, &v37, v36 & 0xFFFF000000000000 | (((v38 + 1) | 0x40u) << 40), memory_order_release, memory_order_relaxed);
          v39 = v37 == v36;
          v36 = v37;
        }

        while (!v39);
        goto LABEL_34;
      }
    }

    v18 = 0;
    goto LABEL_34;
  }

  v8 = a4;
  v9 = a1 + (a4 << 12);
  if (*v9)
  {
    bzero((v9 + 16), 0xFF0uLL);
  }

  if (*(a2 + 12) == 3)
  {
    atomic_fetch_or_explicit((v4 + 456), 1 << v8, memory_order_relaxed);
  }

  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  v11 = v8 << 32;
  if ((*v5 & 0x3F0000000000) != 0)
  {
    goto LABEL_18;
  }

  if (*a2 >= 0x1000000000uLL)
  {
    v12 = *a2 - 0x1000000000;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 8) = v12;
  v13 = *(a2 + 8);
  v14 = v13 + 24;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFF8) + 32;
  }

  v15 = v14 + 16;
  v16 = 4096 - *(a2 + 10);
  *(v9 + 32) = (*a2 - v12) | (v13 << 48);
  *(v9 + 24) = v10;
  v49 = *(a2 + 12);
  v47 = 2 * (*(a2 + 14) & 3);
  *v9 = v15;
  *(v9 + 2) = v16;
  *(v9 + 4) = 1;
  *(v9 + 5) = 0;
  *(v9 + 6) = v49;
  *(v9 + 7) = v47;
  if (a3)
  {
    *a3 = v9 + v16;
  }

  v17 = *v5;
  if ((*v5 & 0x3F0000000000) != 0)
  {
LABEL_18:
    v46 = v4;
    atomic_load_explicit(v5, memory_order_acquire);
    v20 = v5[1];
    v5[1] = 0;
    v21 = mach_continuous_time();
    v22 = *a2;
    if (*a2 >= v20)
    {
      v22 = v20;
    }

    v23 = v22 >= 0x1000000000;
    v24 = v22 - 0x1000000000;
    if (!v23)
    {
      v24 = 0;
    }

    *(v9 + 8) = v24;
    v25 = *a2;
    if ((*a2 - v24) >> 48)
    {
      v24 = v25 - 0x1000000000;
      *(v9 + 8) = v25 - 0x1000000000;
    }

    v26 = v20 - v24;
    if ((v20 - v24) >> 48)
    {
      v26 = *a2 - v24;
    }

    *(v9 + 32) = v26 | 0x18000000000000;
    *(v9 + 24) = v10;
    v27 = *(a2 + 8);
    v28 = v27 + 24;
    if ((v27 & 7) != 0)
    {
      v28 = (v27 & 0xFFF8) + 32;
    }

    v29 = v28 + 64;
    v30 = 4096 - *(a2 + 10);
    *(v9 + 80) = (*a2 - v24) | (v27 << 48);
    *(v9 + 72) = v10;
    v50 = *(a2 + 12);
    v48 = 2 * (*(a2 + 14) & 3);
    *v9 = v29;
    *(v9 + 2) = v30;
    *(v9 + 4) = 1;
    *(v9 + 5) = 0;
    *(v9 + 6) = v50;
    *(v9 + 7) = v48;
    if (a3)
    {
      *a3 = v9 + v30;
    }

    v18 = v9 + 64;
    v17 = *v5;
    v31 = (*v5 & 0xFFFF000000000000 | (v8 << 32)) + 0x1000000000000;
    for (i = *v5; ; v31 = (i & 0xFFFF000000000000 | v11) + 0x1000000000000)
    {
      atomic_compare_exchange_strong_explicit(v5, &i, v31, memory_order_release, memory_order_relaxed);
      if (i == v17)
      {
        break;
      }

      v17 = i;
    }

    *(v9 + 40) = v20;
    *(v9 + 48) = v21;
    *(v9 + 56) = (v17 >> 40) & 0x3F;
    atomic_store((*(a2 + 12) << 32) | 7, (v9 + 16));
    v4 = v46;
  }

  else
  {
    v18 = v9 + 16;
    v19 = *v5;
    while (1)
    {
      atomic_compare_exchange_strong_explicit(v5, &v19, (v17 & 0xFFFF000000000000 | v11) + 0x1000000000000, memory_order_release, memory_order_relaxed);
      if (v19 == v17)
      {
        break;
      }

      v17 = v19;
      if ((v19 & 0x3F0000000000) != 0)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_34:
  if ((v17 & 3) != 0)
  {
    _dispatch_gate_broadcast_slow(v5, v17);
  }

  if ((~v17 & 0xFF00000000) == 0)
  {
    firehose_buffer_update_limits(v4);
  }

  if (*(v4 + 1696) == 1)
  {
    v40 = 1;
    atomic_compare_exchange_strong_explicit((v4 + 1696), &v40, 2u, memory_order_relaxed, memory_order_relaxed);
    if (v40 == 1)
    {
      firehose_client_start_quarantine(v4);
    }
  }

  return v18;
}

uint64_t firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(uint64_t guard, uint64_t a2, void *a3)
{
  v6 = *(a2 + 14);
  v7 = v6 & 1;
  v8 = -6;
  do
  {
    v9 = __CFADD__(v8++, 1);
  }

  while (!v9 && firehose_drain_notifications_once(guard));
  v79 = 0;
  if (*(a2 + 13))
  {
    v10 = *(guard + 452);
LABEL_6:
    v11 = (guard + 536);
    v12 = -1 << v10;
    v13 = guard + 1680;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_7:
    while (2)
    {
      for (i = *(guard + 256); ; i = v20)
      {
        v16 = HIDWORD(i);
        if (i == WORD1(i))
        {
          if (HIWORD(i) == WORD2(i))
          {
            v62 = v10;
            v68 = v12;
            v74 = v11;
            v35 = 0;
            v55 = StatusReg;
            atomic_compare_exchange_strong_explicit(v11, &v35, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
            if (v35)
            {
              _dispatch_unfair_lock_lock_slow(v11);
            }

            v36 = *(guard + 520);
            if ((v36 | v68) == 0xFFFFFFFFFFFFFFFFLL)
            {
              v51 = 0;
            }

            else
            {
              v37 = __clz(__rbit64(~(v36 | v68)));
              *(guard + 520) = v36 | (1 << v37);
              v51 = v37;
            }

            v38 = *(v55 + 24) & 0xFFFFFFFC;
            v39 = atomic_exchange_explicit(v74, 0, memory_order_release);
            if (v39 != v38)
            {
              _dispatch_unfair_lock_unlock_slow(v74, v39);
            }

            v27 = v51;
            if (v51)
            {
              return firehose_buffer_stream_chunk_install(guard, a2, a3, v27);
            }

            if ((*(a2 + 14) & 2) != 0)
            {
              __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(guard, v6 & 1, 0);
            }

            else
            {
              firehose_client_send_push_and_wait(guard, v6 & 1, 0);
            }

            StatusReg = v55;
            v12 = v68;
            v11 = v74;
            v10 = v62;
            if (*(v13 + 4 * v7) == -1)
            {
              v27 = 0;
              return firehose_buffer_stream_chunk_install(guard, a2, a3, v27);
            }

            goto LABEL_7;
          }

          LODWORD(v18) = HIDWORD(i) + 1;
          v17 = i;
        }

        else
        {
          v17 = i + 1;
          v18 = HIDWORD(i);
        }

        v19 = v17 | (v18 << 32) | i & 0xFFFF0000FFFF0000;
        v20 = i;
        atomic_compare_exchange_strong_explicit((guard + 256), &v20, v19, memory_order_relaxed, memory_order_relaxed);
        if (v20 == i)
        {
          break;
        }
      }

      if (v18 == WORD2(i))
      {
        LOBYTE(v21) = i;
      }

      else
      {
        v21 = HIDWORD(i);
      }

      v22 = guard + ((v18 != WORD2(i)) << 7);
      v23 = v21 & 0x3F;
      v24 = *(v22 + 2 * v23);
      v25 = v24 & 0x3F;
      if ((v24 & 0x3F) == 0)
      {
        v34 = -1024;
        do
        {
          if (v34 < 0)
          {
            __yield();
          }

          else
          {
            v69 = v12;
            v75 = v11;
            v56 = v34;
            v60 = v13;
            v63 = v10;
            v40 = StatusReg;
            v50 = v16;
            v52 = v22;
            v48 = v18;
            v49 = v23;
            MEMORY[0x1BFB10130](0, 4, (v34 + 1));
            v34 = v56;
            v23 = v49;
            v16 = v50;
            v22 = v52;
            LODWORD(v18) = v48;
            StatusReg = v40;
            v13 = v60;
            v10 = v63;
            v12 = v69;
            v11 = v75;
          }

          v24 = *(v22 + 2 * v23);
          ++v34;
          v25 = v24 & 0x3F;
        }

        while ((v24 & 0x3F) == 0);
      }

      v26 = v18;
      v27 = v25;
      v28 = guard + (v25 << 12);
      if (v26 == v16 && *(v28 + 6) == 3)
      {
        atomic_fetch_and_explicit((guard + 456), ~(1 << v25), memory_order_relaxed);
      }

      *v28 = 0x100000000000000;
      *(v22 + 2 * v23) = (v24 & 0xFFC0) + 64;
      if (v25 >= v10)
      {
        v29 = 0;
        atomic_compare_exchange_strong_explicit(v11, &v29, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v29)
        {
          v70 = v12;
          v76 = v11;
          v53 = v25;
          v57 = StatusReg;
          v64 = v10;
          _dispatch_unfair_lock_lock_slow(v11);
          v27 = v53;
          StatusReg = v57;
          v10 = v64;
          v12 = v70;
          v11 = v76;
        }

        if (*(guard + 532) <= v27)
        {
          v30 = *(guard + 520) & ~(1 << v27);
          *(guard + 520) = v30;
          if (((v30 >> (v27 & 0x3C)) & 0xF) == 0)
          {
            v67 = v12;
            v73 = v11;
            v59 = v13;
            v61 = v10;
            v31 = StatusReg;
            madvise((guard + ((v27 & 0x3C) << 12)), 0x4000uLL, 5);
            StatusReg = v31;
            v13 = v59;
            v10 = v61;
            v12 = v67;
            v11 = v73;
          }

          v27 = 0;
        }

        v32 = *(StatusReg + 24) & 0xFFFFFFFC;
        v33 = atomic_exchange_explicit(v11, 0, memory_order_release);
        if (v33 != v32)
        {
          v71 = v12;
          v77 = v11;
          v54 = v27;
          v58 = StatusReg;
          v65 = v10;
          _dispatch_unfair_lock_unlock_slow(v11, v33);
          v27 = v54;
          StatusReg = v58;
          v10 = v65;
          v12 = v71;
          v11 = v77;
        }

        if (!v27)
        {
          continue;
        }
      }

      return firehose_buffer_stream_chunk_install(guard, a2, a3, v27);
    }
  }

  else
  {
    v79 = *(guard + 448);
    v42 = guard + 1680;
    v43 = (&v81 | (2 * v7));
    v44 = (&v80 | (2 * v7));
    do
    {
      v45 = v79;
      v81 = v79;
      while (*v43)
      {
        v80 = v45;
        --*v44;
        v46 = v45;
        atomic_compare_exchange_strong_explicit((guard + 448), &v46, v80, memory_order_acquire, memory_order_acquire);
        v81 = v46;
        v47 = v46 == v45;
        v45 = v46;
        if (v47)
        {
          v79 = v80;
          v10 = HIDWORD(v80);
          goto LABEL_6;
        }
      }

      v72 = v44;
      v78 = v43;
      v66 = v42;
      if ((*(a2 + 14) & 2) != 0)
      {
        __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(guard, v6 & 1, &v79);
      }

      else
      {
        firehose_client_send_push_and_wait(guard, v6 & 1, &v79);
      }

      result = 0;
      v42 = v66;
      v44 = v72;
      v43 = v78;
    }

    while (*(v66 + 4 * v7) != -1);
  }

  return result;
}

void firehose_client_start_quarantine(uint64_t a1)
{
  if (*_voucher_libtrace_hooks < 5)
  {
    return;
  }

  v1 = *(_voucher_libtrace_hooks + 40);
  if (!v1)
  {
    return;
  }

  v1();
  *(a1 + 1697) = 1;
  v3 = *(a1 + 768);
  if ((~v3 & 0xFF00000000) == 0 || BYTE4(*(a1 + 768)) == 0)
  {
    if (!*(a1 + 1680))
    {
      firehose_client_reconnect(a1, 0, 0);
    }
  }

  else
  {
    v5 = (a1 + (BYTE4(v3) << 12));
    v6 = *v5;
    if ((*v5 & 0x1FF000000000000) == 0x1000000000000)
    {
      v7 = v5[1];
      v8 = *v5;
      while (1)
      {
        v10 = v6 + 25 > WORD1(v6) || v7 < 0xFFFF000000000000;
        v11 = v6 + 0x100000020;
        v12 = (v6 + 0x100000020) >> 16;
        v13 = (v6 + 0x100000020) >> 56;
        if ((v6 + 32) + 40 > v12)
        {
          ++v13;
        }

        if (v10)
        {
          v11 = v6;
          v13 = HIBYTE(v6) | 1;
          v12 = v6 >> 16;
        }

        atomic_compare_exchange_strong_explicit(v5, &v8, v11 & 0xFFFFFF00000000 | (v13 << 56) | (v12 << 16) | v11, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v6)
        {
          break;
        }

        v6 = v8;
        if ((v8 & 0x1FF000000000000) != 0x1000000000000)
        {
          goto LABEL_28;
        }
      }

      if (v10)
      {
        if ((v11 & 0xFF00000000) == 0)
        {
          firehose_buffer_ring_enqueue(a1, BYTE4(v3));
        }
      }

      else if (v6)
      {
        qword_1EBC5B980 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_1EBC5B9B0 = v6;
        __break(1u);
        goto LABEL_87;
      }
    }

LABEL_28:
    atomic_compare_exchange_strong_explicit((a1 + 768), &v14, v3 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
  }

  v3 = *(a1 + 640);
  if ((~v3 & 0xFF00000000) == 0 || !BYTE4(*(a1 + 640)))
  {
    if (!*(a1 + 1680))
    {
      firehose_client_reconnect(a1, 0, 0);
    }

    goto LABEL_59;
  }

  v15 = (a1 + (BYTE4(v3) << 12));
  v6 = *v15;
  if (*v15)
  {
    v16 = (*v15 & 0x1FF000000000000) == 0;
    *v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v17 = v15[1];
    v18 = *v15;
    while (1)
    {
      v20 = v6 + 25 > WORD1(v6) || v17 < 0xFFFF000000000000;
      v21 = v6 + 0x100000020;
      v22 = (v6 + 0x100000020) >> 16;
      v23 = (v6 + 0x100000020) >> 56;
      if ((v6 + 32) + 40 > v22)
      {
        ++v23;
      }

      if (v20)
      {
        v21 = v6;
        v23 = HIBYTE(v6) | 1;
        v22 = v6 >> 16;
      }

      atomic_compare_exchange_strong_explicit(v15, &v18, v21 & 0xFFFFFF00000000 | (v23 << 56) | (v22 << 16) | v21, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v6)
      {
        break;
      }

      if (v18)
      {
        v24 = (v18 & 0x1FF000000000000) == 0;
      }

      else
      {
        v24 = 0;
      }

      v6 = v18;
      if (!v24)
      {
        goto LABEL_58;
      }
    }

    if (v20)
    {
      if ((v21 & 0xFF00000000) == 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v3));
      }

      goto LABEL_58;
    }

LABEL_87:
    if (v6)
    {
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Allocation should always fail";
      qword_1EBC5B9B0 = v6;
      __break(1u);
      goto LABEL_89;
    }
  }

LABEL_58:
  atomic_compare_exchange_strong_explicit((a1 + 640), &v25, v3 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
LABEL_59:
  v3 = *(a1 + 896);
  if ((~v3 & 0xFF00000000) != 0 && BYTE4(*(a1 + 896)))
  {
    v26 = (a1 + (BYTE4(v3) << 12));
    v6 = *v26;
    if ((*v26 & 0x1FF000000000000) != 0x2000000000000)
    {
LABEL_83:
      atomic_compare_exchange_strong_explicit((a1 + 896), &v34, v3 & 0xFFFFFF00FFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
      return;
    }

    v27 = v26[1];
    v28 = *v26;
    while (1)
    {
      v30 = v6 + 25 > WORD1(v6) || v27 < 0xFFFF000000000000;
      v31 = v6 + 0x100000020;
      v32 = (v6 + 0x100000020) >> 16;
      v33 = (v6 + 0x100000020) >> 56;
      if ((v6 + 32) + 40 > v32)
      {
        ++v33;
      }

      if (v30)
      {
        v31 = v6;
        v33 = HIBYTE(v6) | 1;
        v32 = v6 >> 16;
      }

      atomic_compare_exchange_strong_explicit(v26, &v28, v31 & 0xFFFFFF00000000 | (v33 << 56) | (v32 << 16) | v31, memory_order_relaxed, memory_order_relaxed);
      if (v28 == v6)
      {
        break;
      }

      v6 = v28;
      if ((v28 & 0x1FF000000000000) != 0x2000000000000)
      {
        goto LABEL_83;
      }
    }

    if (v30)
    {
      if ((v31 & 0xFF00000000) == 0)
      {
        firehose_buffer_ring_enqueue(a1, BYTE4(v3));
      }

      goto LABEL_83;
    }

LABEL_89:
    if (v6)
    {
      qword_1EBC5B980 = "BUG IN LIBDISPATCH: Allocation should always fail";
      qword_1EBC5B9B0 = v6;
      __break(1u);
      return;
    }

    goto LABEL_83;
  }

  if (!*(a1 + 1680))
  {

    firehose_client_reconnect(a1, 0, 0);
  }
}

void firehose_client_send_push_and_wait(uint64_t guard, unsigned int a2, void *a3)
{
  v3 = *(guard + 4 * a2 + 1680);
  v11 = 0uLL;
  v10 = 0;
  if (v3 == -1)
  {
    return;
  }

  if (v3)
  {
    v7 = firehose_send_push_and_wait(v3, &v11, &v10);
    if (!v7)
    {
LABEL_4:
      if ((v11 & *(&v11 + 1)) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v8 = 480;
        if (a2)
        {
          v8 = 504;
        }

        atomic_fetch_add_explicit((guard + v8), 1uLL, memory_order_relaxed);
        firehose_client_merge_updates(guard, 0, v11, *(&v11 + 1), v10 != 0, a3);
        return;
      }

      goto LABEL_18;
    }

    if (v7 != 268435459)
    {
      if (v7 == -301)
      {
        qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
        qword_1EBC5B9B0 = -301;
        __break(1u);
      }

      _dispatch_bug(680, v7);
    }
  }

  v9 = firehose_client_reconnect(guard, v3, a2);
  if ((v9 - 1) > 0xFFFFFFFD)
  {
    goto LABEL_20;
  }

  v7 = firehose_send_push_and_wait(v9, &v11, &v10);
  switch(v7)
  {
    case 0:
      goto LABEL_4;
    case 268435459:
      goto LABEL_20;
    case -301:
      qword_1EBC5B980 = "MIG_REPLY_MISMATCH";
      qword_1EBC5B9B0 = -301;
      __break(1u);
LABEL_18:
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Memory corruption in the logging buffers";
      __break(1u);
      break;
  }

  _dispatch_bug(692, v7);
LABEL_20:
  if (a3)
  {
    *a3 = *(guard + 448);
  }
}

uint64_t _dispatch_iocntl(uint64_t result, uint64_t a2)
{
  if (result > 2)
  {
    if (result == 3)
    {
      byte_1EBC5B910 = a2 != 0;
    }

    else if (result == 4)
    {
      qword_1EBC5B908 = a2;
    }
  }

  else if (result == 1)
  {
    dispatch_io_defaults = *MEMORY[0x1E69E9AC8] * a2;
  }

  else if (result == 2)
  {
    qword_1EBC5B900 = a2;
  }

  return result;
}

void _dispatch_io_dispose(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && (*(a1 + 120) & 3) == 0)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      *v3 = 0;
      v2 = *(a1 + 112);
    }

    dispatch_resume(*(v2 + 64));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {

    dispatch_release(v6);
  }
}