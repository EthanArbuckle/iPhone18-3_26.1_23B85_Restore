uint64_t sub_2715356B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27153572C(uint64_t result)
{
  *result = &unk_2881332C0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271535780(uint64_t a1)
{
  *a1 = &unk_2881332C0;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27153585C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881332C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_271535894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2715358A4(std::__shared_weak_count **a1)
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

void sub_2715358E8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v32 = 0;
  v33 = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v5);
  v33 = v7;
  if (!v7 || (v8 = *(a1 + 8), (v32 = v8) == 0))
  {
LABEL_6:
    sub_271535104(&v21, "server cannot receive connection update from network", 52);
    v9 = v21;
    LOBYTE(v10[0]) = 0;
    v19 = 0;
    if (v31 != 1)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v12 = 0;
    if (v24 == 1)
    {
      *v10 = __p;
      v11 = v23;
      v23 = 0;
      __p = 0uLL;
      v12 = 1;
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
LABEL_9:
        v19 = 1;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = v26;
    *v13 = v25;
    v25 = 0uLL;
    v15 = v27;
    *v16 = v28;
    v17 = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    v18 = 1;
    v19 = 1;
    v20 = 0;
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_27152CCAC(&v9, v8, a2, v4);
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v20)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v20)
  {
    return;
  }

LABEL_21:
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

uint64_t sub_271535B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271535BD0(uint64_t result)
{
  *result = &unk_288133330;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void sub_271535C24(uint64_t a1)
{
  *a1 = &unk_288133330;
  if (*(a1 + 16))
  {
    std::__shared_weak_count::__release_weak(*(a1 + 16));
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271535D00(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_288133330;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_271535D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271535D48(std::__shared_weak_count **a1)
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

void sub_271535D8C(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v32 = 0;
  v33 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v33 = v7;
  if (!v7 || (v8 = *(a1 + 8), (v32 = v8) == 0))
  {
LABEL_6:
    sub_271535104(&v21, "server cannot receive context status update from network", 56);
    v9 = v21;
    LOBYTE(v10[0]) = 0;
    v19 = 0;
    if (v31 != 1)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v12 = 0;
    if (v24 == 1)
    {
      *v10 = __p;
      v11 = v23;
      v23 = 0;
      __p = 0uLL;
      v12 = 1;
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
LABEL_9:
        v19 = 1;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v13[0]) = 0;
      v18 = 0;
      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = v26;
    *v13 = v25;
    v25 = 0uLL;
    v15 = v27;
    *v16 = v28;
    v17 = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    v18 = 1;
    v19 = 1;
    v20 = 0;
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_27152E2BC(&v9, v8, a2, a3);
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v20)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v20)
  {
    return;
  }

LABEL_21:
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

uint64_t sub_271535FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_4" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271536074(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v4;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_271127178((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    sub_2711B0ED4(a1 + 64, (a2 + 64));
    *(a1 + 208) = 1;
  }

  v6 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v6;
  v7 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_271536188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715361CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    while (1)
    {
      *(a1 + 16) = v3 - 288;
      v4 = *(v3 - 8);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = *(v3 - 24);
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 = *(v3 - 40);
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      sub_2711B039C(v3 - 280);
      v3 = *(a1 + 16);
      if (v3 == v2)
      {
        goto LABEL_12;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = *(v3 - 24);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::__shared_weak_count::__release_weak(v5);
    goto LABEL_8;
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2715362A8(void *a1)
{
  v2 = a1[35];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[31];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_2711B039C((a1 + 1));
  return a1;
}

uint64_t sub_271536334(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    v2 = (a2 + 24);
    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 == a2)
      {
        *(result + 24) = result;
        v4 = result;
        v5 = a2;
        (*(**v2 + 24))(*v2, result);
        a2 = v5;
        result = v4;
        goto LABEL_8;
      }

      *(result + 24) = v3;
    }

    else
    {
      v2 = (result + 24);
    }

    *v2 = 0;
LABEL_8:
    *(result + 32) = 1;
  }

  *(result + 40) = 0;
  v6 = result + 40;
  *(result + 72) = 0;
  if (*(a2 + 72) != 1)
  {
    goto LABEL_17;
  }

  v7 = (a2 + 64);
  v8 = *(a2 + 64);
  if (v8)
  {
    if (v8 == a2 + 40)
    {
      *(result + 64) = v6;
      v9 = result;
      v10 = a2;
      (*(**v7 + 24))(*v7, v6);
      a2 = v10;
      result = v9;
      goto LABEL_16;
    }

    *(result + 64) = v8;
  }

  else
  {
    v7 = (result + 64);
  }

  *v7 = 0;
LABEL_16:
  *(result + 72) = 1;
LABEL_17:
  *(result + 80) = 0;
  v11 = result + 80;
  *(result + 112) = 0;
  if (*(a2 + 112) != 1)
  {
    goto LABEL_25;
  }

  v12 = (a2 + 104);
  v13 = *(a2 + 104);
  if (v13)
  {
    if (v13 == a2 + 80)
    {
      *(result + 104) = v11;
      v14 = result;
      v15 = a2;
      (*(**v12 + 24))(*v12, v11);
      a2 = v15;
      result = v14;
      goto LABEL_24;
    }

    *(result + 104) = v13;
  }

  else
  {
    v12 = (result + 104);
  }

  *v12 = 0;
LABEL_24:
  *(result + 112) = 1;
LABEL_25:
  *(result + 120) = 0;
  v16 = result + 120;
  *(result + 152) = 0;
  if (*(a2 + 152) != 1)
  {
    return result;
  }

  v17 = (a2 + 144);
  v18 = *(a2 + 144);
  if (v18)
  {
    if (v18 == a2 + 120)
    {
      *(result + 144) = v16;
      v19 = result;
      (*(**v17 + 24))(*v17, v16);
      result = v19;
      goto LABEL_32;
    }

    *(result + 144) = v18;
  }

  else
  {
    v17 = (result + 144);
  }

  *v17 = 0;
LABEL_32:
  *(result + 152) = 1;
  return result;
}

uint64_t sub_271536590(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  std::mutex::lock((v4 + 360));
    ;
  }

  std::mutex::lock((v4 + 168));
  *(v4 + 240) = 0;
  std::thread::detach(*(v4 + 448));
  v5 = *(v4 + 448);
  *(v4 + 448) = 0;
  if (v5)
  {
    std::thread::~thread(v5);
    MEMORY[0x2743BF050]();
  }

  std::condition_variable::notify_all((v4 + 312));
  std::mutex::unlock((v4 + 168));
  std::mutex::unlock((v4 + 360));
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    v7 = MEMORY[0x2743BE900]();
    MEMORY[0x2743BF050](v7, 0x20C4093837F09);
  }

  MEMORY[0x2743BF050](a1, 0x20C40A4A59CD2);
  return 0;
}

void sub_2715366A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 168));
  std::mutex::unlock((v2 + 360));
  sub_2715366FC(va);
  _Unwind_Resume(a1);
}

void sub_2715366C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 360));
  sub_2715366FC(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2715366FC(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x2743BE900]();
      MEMORY[0x2743BF050](v4, 0x20C4093837F09);
    }

    MEMORY[0x2743BF050](v1, 0x20C40A4A59CD2);
    return v2;
  }

  return result;
}

void sub_271536768(void *a1)
{
  if (a1)
  {
    sub_271536768(*a1);
    sub_271536768(a1[1]);
    v2 = a1[7];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void sub_27153683C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271536A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz6Server4Impl6CreateENS1_15ServerCallbacksENS1_13ServerOptionsENSt3__18optionalINS6_8functionIFvRKNS1_14ConnectionInfoERKNS_3esn5ErrorEEEEEENS7_INS8_IFNS6_10unique_ptrINS1_18IServerSyncControlENS6_14default_deleteISK_EEEERNS1_7IServerEEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271536A98(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "server cannot receive ";
  v8 = v4;
  v9 = "server cannot receive ";
  v10 = "server cannot receive ";
  v11 = &v6;
  sub_2712C3BC8(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288133460[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_11:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v11 = &v6;
  (*(&off_288133418 + v5))(&v11, v4);
LABEL_6:
  v6 = v4;
  v7 = ", server object has been destroyed";
  v8 = v4;
  v9 = ", server object has been destroyed";
  v10 = ", server object has been destroyed";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v6;
  (*(&off_288133478 + v5))(&v11, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_288133448[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288133400[v5])(&v6, v4);
  }

  return result;
}

void sub_271536CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881060A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271536CF8(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 96));

  std::mutex::~mutex((a1 + 32));
}

unsigned __int8 *sub_271536D38(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((sub_271536E2C(a2, v2 + 32) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_271536E2C(v4 + 32, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = *(v4 + 1);
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_271536E2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 == v3)
    {
      v2 = a1[2];
      v3 = a2[2];
      if (v2 == v3)
      {
        v2 = a1[3];
        v3 = a2[3];
        if (v2 == v3)
        {
          v2 = a1[4];
          v3 = a2[4];
          if (v2 == v3)
          {
            v2 = a1[5];
            v3 = a2[5];
            if (v2 == v3)
            {
              v2 = a1[6];
              v3 = a2[6];
              if (v2 == v3)
              {
                v2 = a1[7];
                v3 = a2[7];
                if (v2 == v3)
                {
                  v2 = a1[8];
                  v3 = a2[8];
                  if (v2 == v3)
                  {
                    v2 = a1[9];
                    v3 = a2[9];
                    if (v2 == v3)
                    {
                      v2 = a1[10];
                      v3 = a2[10];
                      if (v2 == v3)
                      {
                        v2 = a1[11];
                        v3 = a2[11];
                        if (v2 == v3)
                        {
                          v2 = a1[12];
                          v3 = a2[12];
                          if (v2 == v3)
                          {
                            v2 = a1[13];
                            v3 = a2[13];
                            if (v2 == v3)
                            {
                              v2 = a1[14];
                              v3 = a2[14];
                              if (v2 == v3)
                              {
                                v2 = a1[15];
                                v3 = a2[15];
                                if (v2 == v3)
                                {
                                  return 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_271536F5C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(*v3 + 24);
  if (!v4)
  {
    sub_27112AFFC();
  }

  v5 = v3[1];
  v6 = *(a1 + 16);
  v7 = *(*v4 + 48);

  return v7();
}

uint64_t sub_271536FD0(void *a1)
{
  v3 = a1[1];
  v4 = *(*v3 + 24);
  if (!v4)
  {
    sub_27112AFFC();
  }

  v5 = v3[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(*v4 + 48);

  return v8();
}

void sub_27153704C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881060E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715370A0(uint64_t a1)
{
  sub_271167834(a1 + 104, *(a1 + 112));
  v2 = *(a1 + 96);
  *(a1 + 88) = &unk_28810B138;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((a1 + 24));
}

uint64_t sub_271537148(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *v1;
  v2 = v1[1];
  LOBYTE(v1) = **(a1 + 16);
  v4 = *(v3 + 24);
  v6 = v1;
  if (!v4)
  {
    sub_27112AFFC();
  }

  return (*(*v4 + 48))(v4, v2, &v6);
}

uint64_t sub_2715371C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(*v3 + 24);
  if (!v4)
  {
    sub_27112AFFC();
  }

  v5 = v3[1];
  v6 = *(a1 + 16);
  v7 = *(*v4 + 48);

  return v7();
}

uint64_t sub_27153728C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881334B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2715372CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz11SyncControl12StartPatternEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unsigned __int8 *sub_271537344(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((sub_271536E2C(a2, v2 + 32) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_271536E2C(v4 + 32, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = *(v4 + 1);
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_27153743C(float32x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D3>)
{
  v7 = a1[3].f32[1];
  v82[0] = a1[1].f32[1];
  v82[1] = v7;
  v8 = a1[5].f32[1];
  v9 = a1[7].f32[1];
  v82[2] = v8;
  v82[3] = v9;
  v81 = xmmword_271897910;
  if (v82[0] != 0.0 && fabsf(v82[0]) > *a2 || v7 != 0.0 && fabsf(v7) > *a2 || v8 != 0.0 && fabsf(v8) > *a2)
  {
    goto LABEL_11;
  }

  if (v9 != 1.0)
  {
    v10 = 1.0 - v9;
    if (v9 > 1.0)
    {
      v10 = v9 + -1.0;
    }

    if (v10 > *a2)
    {
LABEL_11:
      LODWORD(v89) = 0;
      v90 = v88;
      v91 = "se3 group matrix must be an affine 3x4 transform:\n";
      v92 = v88;
      v93 = "se3 group matrix must be an affine 3x4 transform:\n";
      v94 = "se3 group matrix must be an affine 3x4 transform:\n";
      v83[0] = &v90;
      sub_2711F7FCC(v83);
      v90 = v88;
      v91 = "expected last row: ";
      v92 = v88;
      v93 = "expected last row: ";
      v94 = "expected last row: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_288133540 + v89))(v83, v88);
      sub_27153D4D8(v85, v88, &v81);
      v90 = v88;
      v91 = "\n";
      v92 = v88;
      v93 = "\n";
      v94 = "\n";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_288133558 + v89))(v83, v88);
      v90 = v88;
      v91 = "  actual last row: ";
      v92 = v88;
      v93 = "  actual last row: ";
      v94 = "  actual last row: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_288133540 + v89))(v83, v88);
      sub_27153D4D8(&v50, v88, v82);
      v90 = v88;
      v91 = "\n";
      v92 = v88;
      v93 = "\n";
      v94 = "\n";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_288133558 + v89))(v83, v88);
      v90 = v88;
      v91 = "   with tolerance: ";
      v92 = v88;
      v93 = "   with tolerance: ";
      v94 = "   with tolerance: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_288133540 + v89))(v83, v88);
      sub_2711CDE78(&v90, v88, a2);
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v90 = v83;
      (off_288133588[v89])(&v86, &v90, v88);
      if (v89 != -1)
      {
        (off_288133528[v89])(&v90, v88);
      }

      if (SHIBYTE(v87) < 0)
      {
        sub_271127178(&v61, v86, *(&v86 + 1));
      }

      else
      {
        v61 = v86;
        v62 = v87;
      }

      v63 = 1;
      LOBYTE(v64) = 0;
      v68 = 0;
      v69 = 1;
      sub_27184B70C(&v61, &v70);
      *a3 = v70;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v80 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_48;
      }

      *(a3 + 40) = 0;
      v43 = v73;
      if (v73 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v72;
        v72 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v44 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v44 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
LABEL_41:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v43)
          {
LABEL_48:
            if (v69 != 1)
            {
              goto LABEL_79;
            }

            if (v68 == 1)
            {
              if (v67 < 0)
              {
                operator delete(v66);
              }

              if (v65 < 0)
              {
                operator delete(v64);
              }
            }

            if (v63 != 1 || (SHIBYTE(v62) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v46 = v61;
LABEL_57:
            operator delete(v46);
LABEL_79:
            if (SHIBYTE(v87) < 0)
            {
              operator delete(v86);
            }

            return;
          }

LABEL_46:
          if (SHIBYTE(v72) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_48;
        }
      }

      v45 = v76;
      *(v44 + 16) = v75;
      *v44 = v74;
      v74 = 0uLL;
      *(a3 + 72) = v45;
      *(a3 + 80) = v77;
      *(a3 + 96) = v78;
      v75 = 0;
      v77 = 0uLL;
      v78 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v43)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  v12 = *a1[4].f32;
  v11 = *a1[6].f32;
  v13 = *a1->f32;
  v14 = *a1[2].f32;
  v15 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
  v16 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v17 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v18 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v19 = vmlsq_f32(vmulq_f32(v15, v16), v17, v18);
  v20 = vextq_s8(v13, v13, 8uLL).u64[0];
  v21 = vmla_f32(vmla_lane_f32(vmul_f32(*a1, *v19.i8), vdup_lane_s32(*v19.i8, 1), *a1, 1), *&vextq_s8(v19, v19, 8uLL), v20).f32[0];
  v22 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v23 = vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL);
  v24 = vmlsq_f32(vmulq_f32(v18, v22), v16, v23);
  v16.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
  v25 = vdup_lane_s32(*v24.i8, 1);
  v26 = vmla_lane_f32(vmul_f32(*v14.i8, *v24.i8), v25, *v14.i8, 1);
  v14.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
  v27 = vmlsq_f32(vmulq_f32(v15, v22), v17, v23);
  v28 = (((v9 * v21) - (v82[0] * vmla_f32(v26, *v14.i8, *v16.f32).f32[0])) - (v8 * vmla_f32(vmla_lane_f32(vmul_f32(*a1, *v27.i8), vdup_lane_s32(*v27.i8, 1), *a1, 1), *&vextq_s8(v27, v27, 8uLL), v20).f32[0])) + (v7 * vmla_f32(vmla_lane_f32(vmul_f32(*a1, *v24.i8), v25, *a1, 1), *v14.i8, v20).f32[0]);
  v60 = v28;
  if (v28 != 1.0)
  {
    v29 = (a2 + 4);
    v30 = v28 >= 1.0 ? v28 + -1.0 : 1.0 - v28;
    if (v30 > *(a2 + 4))
    {
      LODWORD(v89) = 0;
      v90 = v88;
      v91 = "se3 group matrix must have determinant 1\n";
      v92 = v88;
      v93 = "se3 group matrix must have determinant 1\n";
      v94 = "se3 group matrix must have determinant 1\n";
      v83[0] = &v90;
      sub_2711DCE58(v83);
      v90 = v88;
      v91 = "actual determinant: ";
      v92 = v88;
      v93 = "actual determinant: ";
      v94 = "actual determinant: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_2881335A0 + v89))(v83, v88);
      sub_2711CDE78(v85, v88, &v60);
      v90 = v88;
      v91 = "\n";
      v92 = v88;
      v93 = "\n";
      v94 = "\n";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_288133558 + v89))(v83, v88);
      v90 = v88;
      v91 = "    with tolerance: ";
      v92 = v88;
      v93 = "    with tolerance: ";
      v94 = "    with tolerance: ";
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v83[0] = &v90;
      (*(&off_2881335A0 + v89))(v83, v88);
      sub_2711CDE78(&v90, v88, v29);
      if (v89 == -1)
      {
        sub_2711308D4();
      }

      v90 = v83;
      (off_288133588[v89])(&v86, &v90, v88);
      if (v89 != -1)
      {
        (off_288133528[v89])(&v90, v88);
      }

      if (SHIBYTE(v87) < 0)
      {
        sub_271127178(&v51, v86, *(&v86 + 1));
      }

      else
      {
        v51 = v86;
        v52 = v87;
      }

      v53 = 1;
      LOBYTE(v54) = 0;
      v58 = 0;
      v59 = 1;
      sub_27184B70C(&v51, &v70);
      *a3 = v70;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v80 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_70;
      }

      *(a3 + 40) = 0;
      v47 = v73;
      if (v73 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v72;
        v72 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v48 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v48 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v79 & 1) == 0)
        {
LABEL_63:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v47)
          {
LABEL_70:
            if (v59 != 1)
            {
              goto LABEL_79;
            }

            if (v58 == 1)
            {
              if (v57 < 0)
              {
                operator delete(v56);
              }

              if (v55 < 0)
              {
                operator delete(v54);
              }
            }

            if (v53 != 1 || (SHIBYTE(v52) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v46 = v51;
            goto LABEL_57;
          }

LABEL_68:
          if (SHIBYTE(v72) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_70;
        }
      }

      v49 = v76;
      *(v48 + 16) = v75;
      *v48 = v74;
      v74 = 0uLL;
      *(a3 + 72) = v49;
      *(a3 + 80) = v77;
      *(a3 + 96) = v78;
      v75 = 0;
      v77 = 0uLL;
      v78 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v47)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  LODWORD(a4) = a1[1].i32[0];
  v31 = a1[2];
  LODWORD(a5) = a1[3].i32[0];
  v32 = a1[4];
  v13.i32[0] = a1[5].i32[0];
  v33 = vzip1_s32(*a1, v31);
  v34 = vzip2_s32(*a1, v31);
  *v35.f32 = vmla_n_f32(vmla_lane_f32(vmul_n_f32(v33, COERCE_FLOAT(*a1)), v34, *a1, 1), __PAIR64__(LODWORD(a5), LODWORD(a4)), *&a4);
  *&v35.u32[2] = vmla_f32(vmla_lane_f32(vmul_f32(v32, *a1), vdup_lane_s32(*a1, 1), v32, 1), *&a4, *v13.i8);
  *v36.f32 = vmla_n_f32(vmla_lane_f32(vmul_n_f32(v33, v31.f32[0]), v34, v31, 1), __PAIR64__(LODWORD(a5), LODWORD(a4)), *&a5);
  *&v36.u32[2] = vmla_f32(vmla_lane_f32(vmul_f32(v32, v31), vdup_lane_s32(v31, 1), v32, 1), *&a5, *v13.i8);
  *v37.f32 = vmla_n_f32(vmla_lane_f32(vmul_n_f32(v33, v32.f32[0]), v34, v32, 1), __PAIR64__(LODWORD(a5), LODWORD(a4)), *v13.i32);
  v38 = vmla_f32(vmla_lane_f32(vmul_f32(v32, v32), vdup_lane_s32(v32, 1), v32, 1), *v13.i8, *v13.i8);
  *&v37.u32[2] = v38;
  v38.i32[0] = *(a2 + 8);
  v39 = vaddq_f32(v35, xmmword_271897880);
  v40 = vaddq_f32(v36, xmmword_271897890);
  v41 = vaddq_f32(v37, xmmword_2718978A0);
  v39.i32[3] = v40.i32[0];
  v42 = vdupq_lane_s32(v38, 0);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v42, vabsq_f32(v39)), vcgeq_f32(v42, vabsq_f32(vextq_s8(vextq_s8(v40, v40, 0xCuLL), v41, 8uLL)))))) & 1) == 0 || vabsq_f32(vdupq_laneq_s32(v41, 2)).f32[0] > *v38.i32)
  {
    v84 = -1;
    operator new();
  }

  *(a3 + 120) = 1;
}

void sub_2715381E8(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715382F4(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v94[0] = *(a1 + 24);
  v94[1] = v5;
  v6 = *(a1 + 88);
  v7 = *(a1 + 120);
  v94[2] = v6;
  v94[3] = v7;
  v93[0] = xmmword_2718979B0;
  v93[1] = unk_2718979C0;
  if (v94[0] != 0.0 && fabs(v94[0]) > *a2 || v5 != 0.0 && fabs(v5) > *a2 || v6 != 0.0 && fabs(v6) > *a2)
  {
    goto LABEL_11;
  }

  if (v7 != 1.0)
  {
    v8 = 1.0 - v7;
    if (v7 > 1.0)
    {
      v8 = v7 + -1.0;
    }

    if (v8 > *a2)
    {
LABEL_11:
      LODWORD(v106) = 0;
      v100 = &v105;
      v101 = "se3 group matrix must be an affine 3x4 transform:\n";
      v102 = &v105;
      v103 = "se3 group matrix must be an affine 3x4 transform:\n";
      v104 = "se3 group matrix must be an affine 3x4 transform:\n";
      v95[0] = &v100;
      sub_2711F7FCC(v95);
      v100 = &v105;
      v101 = "expected last row: ";
      v102 = &v105;
      v103 = "expected last row: ";
      v104 = "expected last row: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_288133540 + v106))(v95, &v105);
      sub_27153DAE0(v97, &v105, v93);
      v100 = &v105;
      v101 = "\n";
      v102 = &v105;
      v103 = "\n";
      v104 = "\n";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_288133558 + v106))(v95, &v105);
      v100 = &v105;
      v101 = "  actual last row: ";
      v102 = &v105;
      v103 = "  actual last row: ";
      v104 = "  actual last row: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_288133540 + v106))(v95, &v105);
      sub_27153DAE0(&v62, &v105, v94);
      v100 = &v105;
      v101 = "\n";
      v102 = &v105;
      v103 = "\n";
      v104 = "\n";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_288133558 + v106))(v95, &v105);
      v100 = &v105;
      v101 = "   with tolerance: ";
      v102 = &v105;
      v103 = "   with tolerance: ";
      v104 = "   with tolerance: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_288133540 + v106))(v95, &v105);
      sub_2711CC17C(&v100, &v105, a2);
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v100 = v95;
      (off_288133588[v106])(&v98, &v100, &v105);
      if (v106 != -1)
      {
        (off_288133528[v106])(&v100, &v105);
      }

      if (SHIBYTE(v99) < 0)
      {
        sub_271127178(&v73, v98, *(&v98 + 1));
      }

      else
      {
        v73 = v98;
        v74 = v99;
      }

      v75 = 1;
      LOBYTE(v76) = 0;
      v80 = 0;
      v81 = 1;
      sub_27184B70C(&v73, &v82);
      *a3 = v82;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v92 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_48;
      }

      *(a3 + 40) = 0;
      v55 = v85;
      if (v85 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v84;
        v84 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v56 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v56 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
LABEL_41:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v55)
          {
LABEL_48:
            if (v81 != 1)
            {
              goto LABEL_79;
            }

            if (v80 == 1)
            {
              if (v79 < 0)
              {
                operator delete(v78);
              }

              if (v77 < 0)
              {
                operator delete(v76);
              }
            }

            if (v75 != 1 || (SHIBYTE(v74) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v58 = v73;
LABEL_57:
            operator delete(v58);
LABEL_79:
            if (SHIBYTE(v99) < 0)
            {
              operator delete(v98);
            }

            return;
          }

LABEL_46:
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_48;
        }
      }

      v57 = v88;
      *(v56 + 16) = v87;
      *v56 = v86;
      v86 = 0uLL;
      *(a3 + 72) = v57;
      *(a3 + 80) = v89;
      *(a3 + 96) = v90;
      v87 = 0;
      v89 = 0uLL;
      v90 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v55)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  _Q5 = *(a1 + 96);
  v10 = *(a1 + 112);
  _Q7 = *a1;
  _Q16 = *(a1 + 64);
  v13 = *(a1 + 80);
  _Q19 = *(a1 + 32);
  v14 = *(a1 + 48);
  v16 = vextq_s8(_Q19, v14, 8uLL);
  _Q21 = vzip1q_s64(v13, _Q16);
  v18 = vzip1q_s64(v14, _Q19);
  v19 = vextq_s8(_Q16, v13, 8uLL);
  _D23 = vmlsq_f64(vmulq_f64(v16, _Q21), v18, v19).f64[1];
  __asm { FMLA            D25, D23, V7.D[1] }

  v26 = *(a1 + 16);
  v27 = _D25 + v26 * vmlsq_laneq_f64(vmulq_laneq_f64(_Q19, _Q16, 1), _Q16, _Q19, 1).f64[0];
  v28 = vzip1q_s64(v10, _Q5);
  _Q6 = vextq_s8(_Q5, v10, 8uLL);
  v30 = vmlsq_laneq_f64(vmulq_laneq_f64(_Q16, _Q5, 1), _Q5, _Q16, 1).f64[0];
  _Q21.f64[0] = vmlsq_f64(vmulq_f64(v19, v28), _Q21, _Q6).f64[1];
  __asm { FMLA            D16, D21, V19.D[1] }

  v31 = v94[0] * (_Q16.f64[0] + *v14.i64 * v30);
  *v14.i64 = vmlsq_laneq_f64(vmulq_laneq_f64(_Q19, _Q5, 1), _Q5, _Q19, 1).f64[0];
  _Q6.f64[0] = vmlsq_f64(vmulq_f64(v16, v28), v18, _Q6).f64[1];
  __asm { FMLA            D5, D6, V7.D[1] }

  v32 = v7 * v27 - v31 - v6 * (_Q5.f64[0] + v26 * *v14.i64);
  __asm { FMLA            D2, D21, V7.D[1] }

  v34 = v32 + v5 * (_D2 + v26 * v30);
  v72 = v34;
  if (v34 != 1.0)
  {
    v35 = v34 >= 1.0 ? v34 + -1.0 : 1.0 - v34;
    if (v35 > a2[1])
    {
      LODWORD(v106) = 0;
      v100 = &v105;
      v101 = "se3 group matrix must have determinant 1\n";
      v102 = &v105;
      v103 = "se3 group matrix must have determinant 1\n";
      v104 = "se3 group matrix must have determinant 1\n";
      v95[0] = &v100;
      sub_2711DCE58(v95);
      v100 = &v105;
      v101 = "actual determinant: ";
      v102 = &v105;
      v103 = "actual determinant: ";
      v104 = "actual determinant: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_2881335A0 + v106))(v95, &v105);
      sub_2711CC17C(v97, &v105, &v72);
      v100 = &v105;
      v101 = "\n";
      v102 = &v105;
      v103 = "\n";
      v104 = "\n";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_288133558 + v106))(v95, &v105);
      v100 = &v105;
      v101 = "    with tolerance: ";
      v102 = &v105;
      v103 = "    with tolerance: ";
      v104 = "    with tolerance: ";
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v95[0] = &v100;
      (*(&off_2881335A0 + v106))(v95, &v105);
      sub_2711CC17C(&v100, &v105, a2 + 1);
      if (v106 == -1)
      {
        sub_2711308D4();
      }

      v100 = v95;
      (off_288133588[v106])(&v98, &v100, &v105);
      if (v106 != -1)
      {
        (off_288133528[v106])(&v100, &v105);
      }

      if (SHIBYTE(v99) < 0)
      {
        sub_271127178(&v63, v98, *(&v98 + 1));
      }

      else
      {
        v63 = v98;
        v64 = v99;
      }

      v65 = 1;
      LOBYTE(v66) = 0;
      v70 = 0;
      v71 = 1;
      sub_27184B70C(&v63, &v82);
      *a3 = v82;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v92 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_70;
      }

      *(a3 + 40) = 0;
      v59 = v85;
      if (v85 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v84;
        v84 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v60 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v60 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v91 & 1) == 0)
        {
LABEL_63:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v59)
          {
LABEL_70:
            if (v71 != 1)
            {
              goto LABEL_79;
            }

            if (v70 == 1)
            {
              if (v69 < 0)
              {
                operator delete(v68);
              }

              if (v67 < 0)
              {
                operator delete(v66);
              }
            }

            if (v65 != 1 || (SHIBYTE(v64) & 0x80000000) == 0)
            {
              goto LABEL_79;
            }

            v58 = v63;
            goto LABEL_57;
          }

LABEL_68:
          if (SHIBYTE(v84) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_70;
        }
      }

      v61 = v88;
      *(v60 + 16) = v87;
      *v60 = v86;
      v86 = 0uLL;
      *(a3 + 72) = v61;
      *(a3 + 80) = v89;
      *(a3 + 96) = v90;
      v87 = 0;
      v89 = 0uLL;
      v90 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v59)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  v36 = *(a1 + 32);
  v37 = *(a1 + 80);
  _Q5 = *(a1 + 64);
  v39 = vzip1q_s64(*a1, v36);
  v50 = vzip2q_s64(*a1, v36);
  v40.f64[0] = *(a1 + 16);
  v40.f64[1] = *(a1 + 48);
  v41 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, *a1), v50, *a1, 1), v40, v40.f64[0]);
  _Q17 = vmulq_f64(_Q5, *a1);
  _D1 = *(a1 + 8);
  __asm { FMLA            D17, D1, V5.D[1] }

  *_Q17.i64 = *_Q17.i64 + v37 * v40.f64[0];
  v44 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, v36.f64[0]), v50, v36, 1), v40, v40.f64[1]);
  _D1 = *(a1 + 40);
  __asm { FMLA            D0, D1, V5.D[1] }

  v16.f64[0] = _D0 + v37 * v40.f64[1];
  v47 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v39, _Q5.f64[0]), v50, _Q5, 1), v40, v37);
  _D1 = *(a1 + 72);
  __asm { FMLA            D0, D1, V5.D[1] }

  v50.f64[0] = _D0 + v37 * v37;
  v51 = *(a2 + 2);
  v52 = vaddq_f64(v44, xmmword_2718978D0);
  v53 = vdupq_lane_s64(v51, 0);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(v53, vabsq_f64(vaddq_f64(v41, xmmword_2718978C0))), vcgeq_f64(v53, vabsq_f64(vzip1q_s64(_Q17, v52)))), vuzp1q_s32(vcgeq_f64(v53, vabsq_f64(vextq_s8(v52, v16, 8uLL))), vcgeq_f64(v53, vabsq_f64(v47)))))) & 1) == 0)
  {
    goto LABEL_58;
  }

  __asm { FMOV            V1.2D, #-1.0 }

  if (vabsq_f64(vaddq_f64(v50, _Q1)).f64[0] > *&v51)
  {
LABEL_58:
    v96 = -1;
    operator new();
  }

  *(a3 + 120) = 1;
}

void sub_2715390B8(_Unwind_Exception *a1)
{
  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271539EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_2808777D0);
  sub_27153B07C(&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_271123F00(&a30);
  sub_27112E024(&a66);
  v68 = *v66;
  *v66 = 0;
  if (v68)
  {
    MEMORY[0x2743BF050](v68, 0x1000C4072FAA15ELL);
  }

  _Unwind_Resume(a1);
}

void sub_27153AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_2808777D0);
  sub_27153B07C(&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_271123F00(&a30);
  sub_27112E024(&a66);
  v68 = *v66;
  *v66 = 0;
  if (v68)
  {
    MEMORY[0x2743BF050](v68, 0x1000C4072FAA15ELL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27153AE78()
{
  if ((atomic_load_explicit(&qword_28087BA48, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087BA48))
  {
    return qword_28087BA40;
  }

  sub_27137B0C8(&v3);
  sub_27112B400(__p, "cv3dapi.kit.viz.SE3");
  qword_28087BA40 = sub_271125D80(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_28087BA48);
  return qword_28087BA40;
}

void sub_27153AF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_28087BA48);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_28087BA48);
  _Unwind_Resume(a1);
}

void sub_27153AF74()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "Invalid argument for SE3: ";
  v1[2] = v0;
  v1[3] = "Invalid argument for SE3: ";
  v1[4] = "Invalid argument for SE3: ";
  v2 = v1;
  sub_2711E76D0(&v2);
  sub_2711CE2CC();
}

uint64_t sub_27153B07C(uint64_t a1)
{
  sub_27112F8A0(a1);
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

void sub_27153B100(uint64_t a1, float32x2_t *a2)
{
  v14 = 0uLL;
  v15 = 0;
  sub_27153DC6C(a2, v14.i32);
  v3 = v14;
  v4 = vextq_s8(v3, v3, 8uLL).u64[0];
  LODWORD(v5) = vmla_f32(vmla_lane_f32(vmul_f32(*v3.i8, *v3.i8), vdup_lane_s32(*v14.i8, 1), *v14.i8, 1), v4, v4).u32[0];
  __asm { FMOV            V9.2S, #1.0 }

  v13 = v5;
  if (!_NF)
  {
    __sincosf_stret(sqrtf(v5));
    v5 = v13;
  }

  if (v5 >= 0.0061)
  {
    v12 = a2[7].i32[0];
    v11 = a2[6];
    __sincosf_stret(sqrtf(v5));
  }

  operator new();
}

void sub_27153B49C(uint64_t a1, uint64_t a2)
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  sub_27153DF7C(a2, &v20);
  _V20.D[1] = *(&v20 + 1);
  _D1 = *(&v20 + 1);
  __asm { FMLA            D0, D1, V20.D[1] }

  v10 = _D0 + *&v21 * *&v21;
  __asm { FMOV            V3.2D, #1.0 }

  v19 = v10;
  if (_NF)
  {
    if (v10 < 2.775e-15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __sincos_stret(sqrt(v10));
    v10 = v19;
    if (v19 < 2.775e-15)
    {
LABEL_8:
      v14 = *(a2 + 112);
      v15 = vextq_s8(*(a2 + 96), *(a2 + 96), 8uLL);
      if (v10 < 0.0000002635)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v10 <= 9.0)
  {
    v16 = *(a2 + 112);
    v17 = vextq_s8(*(a2 + 96), *(a2 + 96), 8uLL);
    if (v10 < 0.0000002635)
    {
LABEL_12:
      __asm { FMOV            V16.2D, #-0.5 }

      operator new();
    }
  }

  else
  {
    v12 = *(a2 + 112);
    v13 = vextq_s8(*(a2 + 96), *(a2 + 96), 8uLL);
    if (v10 < 0.0000002635)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  __sincos_stret(sqrt(v10));
  goto LABEL_12;
}

double sub_27153B8AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = *a1;
  v5 = *(*a1 + 136);
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(v4 + 128))
      {
        goto LABEL_23;
      }

      v8 = *(v4 + 16);
      v30 = *v4;
      v31 = v8;
      v9 = *(v4 + 48);
      v32 = *(v4 + 32);
      v33 = v9;
    }

    else
    {
      if (v5 != 5)
      {
        return *a3.i64;
      }

      if (*(v4 + 128) != 1)
      {
        goto LABEL_23;
      }

      v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v4 + 32)), *(v4 + 48));
      v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), *(v4 + 16));
      v31 = v6;
      v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v4 + 96)), *(v4 + 112));
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v4 + 64)), *(v4 + 80));
      v33 = v7;
    }

    memset(v34, 0, 24);
    sub_27153DC6C(&v30, v34);
    v10 = v34[0];
    v11 = vextq_s8(v10, v10, 8uLL).u64[0];
    v12 = vmla_f32(vmla_lane_f32(vmul_f32(*v10.i8, *v10.i8), vdup_lane_s32(*&v34[0], 1), *v10.i8, 1), v11, v11);
    if (*v12.i32 >= 0.0061)
    {
      v16 = sqrtf(*v12.i32);
      v28 = *v12.i32;
      v29 = v34[0];
      v17 = __sincosf_stret(v16);
      *v12.i32 = v28;
      v10 = v29;
      v14 = v17.__sinval / v16;
      __asm { FMOV            V1.2S, #1.0 }

      v13 = vmul_n_f32(vsub_f32(_D1, __PAIR64__(LODWORD(v17.__cosval), v17.__sinval / v16)), 1.0 / v28);
      if (v28 >= 0.00000149)
      {
LABEL_17:
        if (*v12.i32 <= 9.0)
        {
          v15 = (vmuls_lane_f32(0.5, v13, 1) - v13.f32[0]) / v14;
        }

        else
        {
          v15 = (v13.f32[1] + (v14 * -0.5)) / vmuls_lane_f32(*v12.i32, v13, 1);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v13 = vsub_f32(0x3F0000003E2AAAABLL, vmul_n_f32(vadd_f32(vdiv_f32(vdup_lane_s32(v12, 0), 0xC4340000C59D8000), 0x3D2AAAAB3C088889), *v12.i32));
      v14 = 1.0 - (*v12.i32 * v13.f32[0]);
      if (*v12.i32 >= 0.00000149)
      {
        goto LABEL_17;
      }
    }

    v15 = (*v12.i32 * 0.000033069) + ((*v12.i32 * 0.0013889) + 0.083333);
LABEL_22:
    v23 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
    v24 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
    v25 = vsubq_f32(vmulq_f32(v23, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL)), vmulq_f32(v24, vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL)));
    v26.i64[0] = 0xBF000000BF000000;
    v26.i64[1] = 0xBF000000BF000000;
    a3 = vaddq_f32(vaddq_f32(v33, vmulq_f32(v25, v26)), vmulq_n_f32(vsubq_f32(vmulq_f32(v23, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL)), vmulq_f32(v24, vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL))), v15));
    DWORD1(v34[1]) = a3.i32[2];
    *(v34 + 12) = a3.i64[0];
    a3.i64[0] = *&v34[0];
    *a2 = v34[0];
    *(a2 + 16) = *&v34[1];
    return *a3.i64;
  }

  if (v5 == 1)
  {
    if (*(v4 + 128) != 2)
    {
      goto LABEL_23;
    }

    a3 = *v4;
    *a2 = *v4;
    *(a2 + 16) = *(v4 + 16);
  }

  else if (v5 == 2)
  {
    if (*(v4 + 128) == 3)
    {
      *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), *(v4 + 16));
      *a3.f32 = vcvt_f32_f64(*(v4 + 32));
      *(a2 + 16) = a3.i64[0];
      return *a3.i64;
    }

LABEL_23:
    sub_2711308D4();
  }

  return *a3.i64;
}

void sub_27153BBA0(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 136);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (*(v3 + 128))
      {
        goto LABEL_24;
      }

      v12 = vcvtq_f64_f32(*(v3 + 8));
      v44 = vcvtq_f64_f32(*v3);
      v45 = v12;
      v13 = vcvtq_f64_f32(*(v3 + 24));
      v46 = vcvtq_f64_f32(*(v3 + 16));
      v47 = v13;
      v14 = vcvtq_f64_f32(*(v3 + 40));
      v48 = vcvtq_f64_f32(*(v3 + 32));
      v49 = v14;
      v15 = vcvtq_f64_f32(*(v3 + 56));
      v50 = vcvtq_f64_f32(*(v3 + 48));
      v51 = v15;
    }

    else
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(v3 + 128) != 1)
      {
        goto LABEL_24;
      }

      v7 = *(v3 + 80);
      v48 = *(v3 + 64);
      v49 = v7;
      v8 = *(v3 + 112);
      v50 = *(v3 + 96);
      v51 = v8;
      v9 = *(v3 + 16);
      v44 = *v3;
      v45 = v9;
      v10 = *(v3 + 48);
      v46 = *(v3 + 32);
      v47 = v10;
    }

    memset(v52, 0, sizeof(v52));
    sub_27153DF7C(&v44, v52);
    v16.f64[0] = *&v52[1];
    _Q18 = v52[0];
    v18 = vextq_s8(_Q18, _Q18, 8uLL);
    _D1 = *(&v52[0] + 1);
    __asm { FMLA            D0, D1, V18.D[1] }

    v25 = _D0 + v16.f64[0] * v16.f64[0];
    if (v25 >= 0.0000002635)
    {
      v28 = sqrt(v25);
      v42 = v18;
      v43 = *&v52[1];
      v40 = _D0 + *&v52[1] * *&v52[1];
      v41 = v52[0];
      v29 = __sincos_stret(v28);
      v25 = v40;
      _Q18 = v41;
      v18 = v42;
      v16.f64[0] = v43;
      v27.f64[0] = v29.__sinval / v28;
      v30.f64[0] = v29.__sinval / v28;
      v30.f64[1] = v29.__cosval;
      __asm { FMOV            V1.2D, #1.0 }

      v26 = vmulq_n_f64(vsubq_f64(_Q1, v30), 1.0 / v40);
      if (v40 >= 2.775e-15)
      {
LABEL_16:
        if (v25 <= 9.0)
        {
          v27.f64[0] = (vmuld_lane_f64(0.5, v26, 1) - v26.f64[0]) / v27.f64[0];
        }

        else
        {
          v27.f64[0] = (v26.f64[1] + v27.f64[0] * -0.5) / vmuld_lane_f64(v25, v26, 1);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v27 = vmulq_n_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v25, 0), xmmword_2718978E0), xmmword_2718978F0), v25);
      v26 = vsubq_f64(xmmword_271897900, v27);
      v27.f64[0] = 1.0 - v25 * v26.f64[0];
      if (v25 >= 2.775e-15)
      {
        goto LABEL_16;
      }
    }

    v27.f64[0] = v25 * 0.0000330687831 + v25 * 0.00138888889 + 0.0833333333;
LABEL_21:
    v26.f64[0] = v51.f64[0];
    v32.f64[0] = v18.f64[0];
    v32.f64[1] = v16.f64[0];
    v33 = vextq_s8(v50, v26, 8uLL);
    v34 = vsubq_f64(vmulq_laneq_f64(_Q18, v50, 1), vmulq_f64(v18, v50));
    __asm { FMOV            V6.2D, #-0.5 }

    v36 = vaddq_f64(v26, vmulq_f64(v34, _Q6));
    v26.f64[1] = v50.f64[0];
    v16.f64[1] = _Q18.f64[0];
    v37 = vsubq_f64(vmulq_f64(v32, v26), vmulq_f64(v16, v33));
    v38 = vextq_s8(v37, v34, 8uLL);
    v34.f64[1] = v37.f64[0];
    *(&v52[1] + 8) = vaddq_f64(vaddq_f64(v50, vmulq_f64(v37, _Q6)), vmulq_n_f64(vsubq_f64(vmulq_f64(v32, v34), vmulq_f64(v16, v38)), v27.f64[0]));
    *(&v52[2] + 1) = *&vaddq_f64(v36, vmulq_f64(v27, vsubq_f64(vmulq_laneq_f64(_Q18, v37, 1), vmulq_f64(v18, v37))));
    v39 = v52[1];
    *a2 = v52[0];
    a2[1] = v39;
    v6 = v52[2];
    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (*(v3 + 128) == 2)
    {
      v11 = vcvtq_f64_f32(*(v3 + 8));
      *a2 = vcvtq_f64_f32(*v3);
      a2[1] = v11;
      v6 = vcvtq_f64_f32(*(v3 + 16));
      goto LABEL_22;
    }

LABEL_24:
    sub_2711308D4();
  }

  if (v4 != 2)
  {
    return;
  }

  if (*(v3 + 128) != 3)
  {
    goto LABEL_24;
  }

  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  v6 = *(v3 + 32);
LABEL_22:
  a2[2] = v6;
}

void sub_27153BE9C(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D3>)
{
  v7 = *a1;
  v8 = *(*a1 + 136);
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      if (!*(v7 + 128))
      {
        v30 = *(v7 + 16);
        *a2 = *v7;
        *(a2 + 16) = v30;
        v31 = *(v7 + 48);
        *(a2 + 32) = *(v7 + 32);
        *(a2 + 48) = v31;
        return;
      }

      goto LABEL_22;
    }

    if (v8 == 5)
    {
      if (*(v7 + 128) != 1)
      {
        goto LABEL_22;
      }

      v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v7 + 32)), *(v7 + 48));
      *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*v7), *(v7 + 16));
      *(a2 + 16) = v20;
      v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v7 + 96)), *(v7 + 112));
      *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v7 + 64)), *(v7 + 80));
      *(a2 + 48) = v21;
    }
  }

  else
  {
    if (v8 == 1)
    {
      if (*(v7 + 128) == 2)
      {
        v5.i32[0] = *(v7 + 8);
        v4.i64[0] = *v7;
        v22 = v4;
        v22.i32[2] = v5.i32[0];
        LODWORD(v23) = HIDWORD(*v7);
        v6.i64[0] = *(v7 + 12);
        v6.i32[2] = *(v7 + 20);
        v24 = vmla_f32(vmla_lane_f32(vmul_f32(*v4.i8, *v4.i8), vdup_lane_s32(*v7, 1), *v7, 1), v5, v5);
        if (*v24.i32 >= 0.0061)
        {
          v51 = sqrtf(*v24.i32);
          v52 = a2;
          v78 = v6;
          v74 = *(v7 + 8);
          v76 = v22;
          v70 = *v24.i32;
          v72 = v4.i32[0];
          v53 = __sincosf_stret(v51);
          v4.i32[0] = v72;
          v5.i32[0] = v74;
          v22 = v76;
          v6 = v78;
          a2 = v52;
          v28.f32[0] = v53.__sinval / v51;
          v29 = (1.0 / v70) * (1.0 - v53.__cosval);
          v25.f32[0] = (1.0 / v70) * (1.0 - (v53.__sinval / v51));
          v28.i32[1] = LODWORD(v53.__cosval);
        }

        else
        {
          v25 = vsub_f32(0x3F0000003E2AAAABLL, vmul_n_f32(vadd_f32(vdiv_f32(vdup_lane_s32(v24, 0), 0xC4340000C59D8000), 0x3D2AAAAB3C088889), *v24.i32));
          v26 = vmul_n_f32(v25, *v24.i32);
          __asm { FMOV            V2.2S, #1.0 }

          v28 = vsub_f32(_D2, v26);
          v29 = v25.f32[1];
        }

        v54 = (*v4.i32 * (*v4.i32 * v29)) + v28.f32[1];
        v55 = (v5.f32[0] * (v5.f32[0] * v29)) + v28.f32[1];
        v56 = v23 * (*v4.i32 * v29);
        v57 = v5.f32[0] * (*v4.i32 * v29);
        v58 = v5.f32[0] * (v23 * v29);
        v59 = *v4.i32 * v28.f32[0];
        v60 = v23 * v28.f32[0];
        v28.f32[0] = v5.f32[0] * v28.f32[0];
        v61 = v56 - v28.f32[0];
        v62 = v57 + v60;
        v28.f32[0] = v56 + v28.f32[0];
        v63 = v58 - v59;
        v64 = v57 - v60;
        v65 = v58 + v59;
        v66 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
        v67 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
        v68 = vsubq_f32(vmulq_f32(v66, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL)), vmulq_f32(v67, vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
        *a2 = v54;
        *(a2 + 4) = v28.i32[0];
        *(a2 + 8) = v64;
        *(a2 + 12) = 0;
        *(a2 + 16) = v61;
        *(a2 + 20) = (v23 * (v23 * v29)) + v28.f32[1];
        *(a2 + 24) = v65;
        *(a2 + 28) = 0;
        *(a2 + 32) = v62;
        *(a2 + 36) = v63;
        *(a2 + 40) = v55;
        v50 = vaddq_f32(vaddq_f32(v6, vmulq_n_f32(v68, v29)), vmulq_n_f32(vsubq_f32(vmulq_f32(v66, vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL)), vmulq_f32(v67, vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL))), v25.f32[0]));
        goto LABEL_21;
      }

LABEL_22:
      sub_2711308D4();
    }

    if (v8 == 2)
    {
      if (*(v7 + 128) == 3)
      {
        *v3.i32 = *v7;
        v9 = vcvt_f32_f64(*(v7 + 8));
        v10 = v3;
        *(v10.i64 + 4) = v9;
        *v6.f32 = vcvt_f32_f64(*(v7 + 24));
        v11 = *(v7 + 40);
        v6.f32[2] = v11;
        *&a3 = *v3.i32 * *v3.i32;
        v12 = vmla_lane_f32(vmla_f32(*&a3, v9, v9), vdup_lane_s32(v9, 1), v9, 1);
        if (*v12.i32 >= 0.0061)
        {
          v32 = sqrtf(*v12.i32);
          v33 = a2;
          v77 = v9;
          v73 = v10;
          v75 = v6;
          v69 = v12;
          v71 = *v7;
          v34 = __sincosf_stret(v32);
          *v3.i32 = v71;
          v10 = v73;
          v6 = v75;
          v9 = v77;
          a2 = v33;
          v12.i32[1] = v69.i32[1];
          v19.f32[0] = v34.__sinval / v32;
          *v12.i32 = (1.0 / *v69.i32) * (1.0 - v34.__cosval);
          v13.f32[0] = (1.0 / *v69.i32) * (1.0 - (v34.__sinval / v32));
          v19.i32[1] = LODWORD(v34.__cosval);
        }

        else
        {
          v13 = vsub_f32(0x3F0000003E2AAAABLL, vmul_n_f32(vadd_f32(vdiv_f32(vdup_lane_s32(v12, 0), 0xC4340000C59D8000), 0x3D2AAAAB3C088889), *v12.i32));
          __asm { FMOV            V1.2S, #1.0 }

          v19 = vsub_f32(_D1, vmul_n_f32(v13, *v12.i32));
          v12.i32[0] = v13.i32[1];
        }

        v35 = vmul_f32(*&vdupq_lane_s32(v12, 0), v9);
        v36 = ((*v12.i32 * *v3.i32) * *v3.i32) + v19.f32[1];
        v37 = (*v12.i32 * *v3.i32) * v9.f32[0];
        v38 = vmuls_lane_f32(*v12.i32 * *v3.i32, v9, 1);
        *&v39 = *v3.i32 * v19.f32[0];
        v40 = vmul_f32(v19, v9).f32[0];
        v41 = vmuls_lane_f32(v19.f32[0], v9, 1);
        v42 = v37 - v41;
        v43 = v38 + v40;
        v44 = v37 + v41;
        v45 = v38 - v40;
        v46 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
        v47 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
        v48 = vsubq_f32(vmulq_f32(v46, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL)), vmulq_f32(v47, vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
        *a2 = v36;
        *(a2 + 4) = v44;
        *(a2 + 8) = v45;
        *(a2 + 12) = 0;
        *(a2 + 16) = v42;
        *(a2 + 20) = vmul_f32(v35, v9).f32[0] + v19.f32[1];
        *(a2 + 28) = 0;
        v49 = vmul_lane_f32(v35, v9, 1);
        v35.i32[0] = vsub_f32(v49, __PAIR64__(v19.u32[1], v39)).u32[0];
        v35.i32[1] = vadd_f32(v49, v19).i32[1];
        *(a2 + 32) = v43;
        *(a2 + 24) = v49.f32[0] + *&v39;
        *(a2 + 36) = v35;
        v50 = vaddq_f32(vaddq_f32(v6, vmulq_n_f32(v48, *v12.i32)), vmulq_n_f32(vsubq_f32(vmulq_f32(v46, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL)), vmulq_f32(v47, vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL))), v13.f32[0]));
LABEL_21:
        *(a2 + 44) = 0;
        *(a2 + 56) = v50.i32[2];
        *(a2 + 48) = v50.i64[0];
        *(a2 + 60) = 1065353216;
        return;
      }

      goto LABEL_22;
    }
  }
}

float64x2_t sub_27153C318@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, float64x2_t result@<Q0>, float64x2_t a4@<Q5>)
{
  v5 = *a1;
  v6 = *(*a1 + 136);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      if (!*(v5 + 128))
      {
        v31 = vcvtq_f64_f32(*(v5 + 8));
        *a2 = vcvtq_f64_f32(*v5);
        *(a2 + 16) = v31;
        v32 = vcvtq_f64_f32(*(v5 + 24));
        *(a2 + 32) = vcvtq_f64_f32(*(v5 + 16));
        *(a2 + 48) = v32;
        v33 = vcvtq_f64_f32(*(v5 + 40));
        *(a2 + 64) = vcvtq_f64_f32(*(v5 + 32));
        *(a2 + 80) = v33;
        result = vcvtq_f64_f32(*(v5 + 48));
        v34 = vcvtq_f64_f32(*(v5 + 56));
        *(a2 + 96) = result;
        *(a2 + 112) = v34;
        return result;
      }

      goto LABEL_22;
    }

    if (v6 == 5)
    {
      if (*(v5 + 128) != 1)
      {
        goto LABEL_22;
      }

      v22 = *(v5 + 80);
      *(a2 + 64) = *(v5 + 64);
      *(a2 + 80) = v22;
      v23 = *(v5 + 112);
      *(a2 + 96) = *(v5 + 96);
      *(a2 + 112) = v23;
      v24 = *(v5 + 16);
      *a2 = *v5;
      *(a2 + 16) = v24;
      result = *(v5 + 32);
      v25 = *(v5 + 48);
      *(a2 + 32) = result;
      *(a2 + 48) = v25;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (*(v5 + 128) == 2)
      {
        _Q26 = vcvtq_f64_f32(*v5);
        v7.f64[0] = *(v5 + 8);
        v9 = vextq_s8(_Q26, _Q26, 8uLL);
        v10 = vcvtq_f64_f32(*(v5 + 12));
        v4.f64[0] = *(v5 + 20);
        v11 = vextq_s8(v10, v10, 8uLL);
        _D1 = _Q26.f64[1];
        __asm { FMLA            D0, D1, V26.D[1] }

        v28 = _D0 + v7.f64[0] * v7.f64[0];
        if (v28 >= 0.0000002635)
        {
          v51 = sqrt(v28);
          v52 = a2;
          v85 = _Q26;
          v87 = *(v5 + 8);
          v81 = v4;
          v83 = v9;
          v77 = v11;
          v79 = v10;
          v75 = _D0 + v7.f64[0] * v7.f64[0];
          v53 = __sincos_stret(v51);
          cosval = v53.__cosval;
          v11 = v77;
          v10 = v79;
          v4 = v81;
          v9 = v83;
          _Q26 = v85;
          v7.f64[0] = v87;
          a2 = v52;
          v29 = v53.__sinval / v51;
          v54.f64[0] = v53.__sinval / v51;
          v54.f64[1] = v53.__cosval;
          __asm { FMOV            V3.2D, #1.0 }

          v19 = vmulq_n_f64(vsubq_f64(_Q3, v54), 1.0 / v75);
        }

        else
        {
          v19 = vsubq_f64(xmmword_271897900, vmulq_n_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v28, 0), xmmword_2718978E0), xmmword_2718978F0), v28));
          v29 = 1.0 - v28 * v19.f64[0];
          cosval = 1.0 - vmuld_lane_f64(v28, v19, 1);
        }

        a4.f64[0] = v19.f64[1];
        v56 = vmuld_lane_f64(_Q26.f64[0], v19, 1);
        v57 = vmuld_lane_f64(v19.f64[1], _Q26, 1);
        v42 = v56 * _Q26.f64[0] + cosval;
        v43 = vmuld_lane_f64(v57, _Q26, 1) + cosval;
        v44 = vmuld_lane_f64(v7.f64[0], v19, 1) * v7.f64[0] + cosval;
        v45 = vmuld_lane_f64(v56, _Q26, 1);
        v46 = v56 * v7.f64[0];
        v47 = v57 * v7.f64[0];
        v48 = v29 * _Q26.f64[0];
        v49 = vmuld_lane_f64(v29, _Q26, 1);
        v50 = v29 * v7.f64[0];
        goto LABEL_21;
      }

LABEL_22:
      sub_2711308D4();
    }

    if (v6 == 2)
    {
      if (*(v5 + 128) == 3)
      {
        v7.f64[0] = *(v5 + 16);
        _Q26 = *v5;
        v9 = vextq_s8(_Q26, _Q26, 8uLL);
        v4.f64[0] = *(v5 + 40);
        v10 = *(v5 + 24);
        v11 = vextq_s8(v10, v10, 8uLL);
        _D9 = *(v5 + 8);
        __asm { FMLA            D0, D9, V26.D[1] }

        v18 = _D0 + v7.f64[0] * v7.f64[0];
        if (v18 >= 0.0000002635)
        {
          v35 = sqrt(v18);
          v36 = a2;
          v84 = *v5;
          v86 = *(v5 + 16);
          v80 = v4;
          v82 = v9;
          v76 = v11;
          v78 = *(v5 + 24);
          v74 = _D0 + v7.f64[0] * v7.f64[0];
          v37 = __sincos_stret(v35);
          v21 = v37.__cosval;
          v11 = v76;
          v10 = v78;
          v4 = v80;
          v9 = v82;
          _Q26 = v84;
          v7.f64[0] = v86;
          a2 = v36;
          v20 = v37.__sinval / v35;
          v38.f64[0] = v37.__sinval / v35;
          v38.f64[1] = v37.__cosval;
          __asm { FMOV            V3.2D, #1.0 }

          v19 = vmulq_n_f64(vsubq_f64(_Q3, v38), 1.0 / v74);
        }

        else
        {
          v19 = vsubq_f64(xmmword_271897900, vmulq_n_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v18, 0), xmmword_2718978E0), xmmword_2718978F0), v18));
          v20 = 1.0 - v18 * v19.f64[0];
          v21 = 1.0 - vmuld_lane_f64(v18, v19, 1);
        }

        a4.f64[0] = v19.f64[1];
        v40 = vmuld_lane_f64(_Q26.f64[0], v19, 1);
        v41 = vmuld_lane_f64(_D9, v19, 1);
        v42 = _Q26.f64[0] * v40 + v21;
        v43 = _D9 * v41 + v21;
        v44 = v7.f64[0] * vmuld_lane_f64(v7.f64[0], v19, 1) + v21;
        v45 = _D9 * v40;
        v46 = v7.f64[0] * v40;
        v47 = v7.f64[0] * v41;
        v48 = _Q26.f64[0] * v20;
        v49 = _D9 * v20;
        v50 = v7.f64[0] * v20;
LABEL_21:
        v58 = v45 - v50;
        v59 = v46 + v49;
        v60 = v45 + v50;
        v61 = v47 - v48;
        v62 = v46 - v49;
        v63.f64[0] = v9.f64[0];
        v63.f64[1] = v7.f64[0];
        v64.f64[0] = v4.f64[0];
        v64.f64[1] = v10.f64[0];
        v65 = v47 + v48;
        v66.f64[0] = v10.f64[0];
        v66.f64[1] = v11.f64[0];
        v7.f64[1] = _Q26.f64[0];
        v67.f64[0] = v11.f64[0];
        v67.f64[1] = v4.f64[0];
        v68 = vsubq_f64(vmulq_f64(v63, v64), vmulq_f64(v7, v67));
        v69 = vsubq_f64(vmulq_f64(_Q26, v11), vmulq_f64(v9, v10));
        v70 = vaddq_f64(v66, vmulq_n_f64(v68, a4.f64[0]));
        v71 = vaddq_f64(v4, vmulq_f64(v69, a4));
        v72 = vextq_s8(v68, v69, 8uLL);
        v69.f64[1] = v68.f64[0];
        v73 = vmulq_f64(vsubq_f64(vmulq_laneq_f64(_Q26, v68, 1), vmulq_f64(v9, v68)), v19);
        *a2 = v42;
        *(a2 + 8) = v60;
        *(a2 + 16) = v62;
        result = vaddq_f64(v70, vmulq_n_f64(vsubq_f64(vmulq_f64(v63, v69), vmulq_f64(v7, v72)), v19.f64[0]));
        *(a2 + 24) = 0;
        *(a2 + 32) = v58;
        *(a2 + 40) = v43;
        *(a2 + 48) = v65;
        *(a2 + 56) = 0;
        *(a2 + 64) = v59;
        *(a2 + 72) = v61;
        *(a2 + 80) = v44;
        *(a2 + 88) = 0;
        *(a2 + 112) = *&vaddq_f64(v71, v73);
        *(a2 + 96) = result;
        *(a2 + 120) = 0x3FF0000000000000;
        return result;
      }

      goto LABEL_22;
    }
  }

  return result;
}

BOOL sub_27153C728(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  v5 = v3 != 5 && v3 != 2;
  v6 = *a2;
  v7 = *(*a2 + 136);
  v9 = v7 == 5 || v7 == 2;
  if (v5 == v9 || ((v3 & 0xFE) == 4) == ((v7 & 0xFE) != 4))
  {
    return 0;
  }

  result = 0;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (*(v2 + 128) || *(v6 + 128))
      {
        goto LABEL_77;
      }

      if (*v2 != *v6 || *(v2 + 4) != *(v6 + 4) || *(v2 + 8) != *(v6 + 8) || *(v2 + 12) != *(v6 + 12) || *(v2 + 16) != *(v6 + 16) || *(v2 + 20) != *(v6 + 20) || *(v2 + 24) != *(v6 + 24) || *(v2 + 28) != *(v6 + 28) || *(v2 + 32) != *(v6 + 32) || *(v2 + 36) != *(v6 + 36) || *(v2 + 40) != *(v6 + 40) || *(v2 + 44) != *(v6 + 44) || *(v2 + 48) != *(v6 + 48) || *(v2 + 52) != *(v6 + 52) || *(v2 + 56) != *(v6 + 56) || *(v2 + 60) != *(v6 + 60))
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 5)
      {
        return result;
      }

      if (*(v2 + 128) != 1 || *(v6 + 128) != 1)
      {
        goto LABEL_77;
      }

      if (*v2 != *v6 || *(v2 + 8) != *(v6 + 8) || *(v2 + 16) != *(v6 + 16) || *(v2 + 24) != *(v6 + 24) || *(v2 + 32) != *(v6 + 32) || *(v2 + 40) != *(v6 + 40) || *(v2 + 48) != *(v6 + 48) || *(v2 + 56) != *(v6 + 56) || *(v2 + 64) != *(v6 + 64) || *(v2 + 72) != *(v6 + 72) || *(v2 + 80) != *(v6 + 80) || *(v2 + 88) != *(v6 + 88) || *(v2 + 96) != *(v6 + 96) || *(v2 + 104) != *(v6 + 104) || *(v2 + 112) != *(v6 + 112) || *(v2 + 120) != *(v6 + 120))
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      if (*(v2 + 128) == 3 && *(v6 + 128) == 3)
      {
        return *v2 == *v6 && *(v2 + 8) == *(v6 + 8) && *(v2 + 16) == *(v6 + 16) && *(v2 + 24) == *(v6 + 24) && *(v2 + 32) == *(v6 + 32) && *(v2 + 40) == *(v6 + 40);
      }

LABEL_77:
      sub_2711308D4();
    }

    if (*(v2 + 128) != 2 || *(v6 + 128) != 2)
    {
      goto LABEL_77;
    }

    if (*v2 != *v6 || *(v2 + 4) != *(v6 + 4) || *(v2 + 8) != *(v6 + 8) || *(v2 + 12) != *(v6 + 12) || *(v2 + 16) != *(v6 + 16) || *(v2 + 20) != *(v6 + 20))
    {
      return 0;
    }
  }

  return 1;
}

void sub_27153CAEC(void *a1, uint64_t a2)
{
  sub_271120E64(a1, "{", 1);
  v3 = *(*a2 + 136);
  v4 = 0;
  operator new();
}

void sub_27153CFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_27153D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27153D06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 73) < 0)
  {
    operator delete(*(v5 - 96));
    sub_271130878(va);
    _Unwind_Resume(a1);
  }

  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27153D0B8()
{
  if ((atomic_load_explicit(&qword_28087BA38, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087BA38))
    {
      operator new();
    }
  }

  operator new();
}

BOOL sub_27153D1BC(uint64_t a1, uint64_t a2)
{
  result = sub_27153C728(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 31);
    if (v8 >= 0)
    {
      v9 = *(a1 + 31);
    }

    else
    {
      v9 = *(a1 + 16);
    }

    v10 = *(a2 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 16);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = (a2 + 8);
    v13 = v8 >= 0 ? (a1 + 8) : *(a1 + 8);
    v14 = *v12;
    v15 = (v11 >= 0 ? a2 + 8 : *v12);
    if (memcmp(v13, v15, v9))
    {
      return 0;
    }
  }

  v16 = *(a2 + 64);
  v17 = *(a1 + 64);
  result = v17 == v16;
  if (v17 != v16 || !*(a1 + 64))
  {
    return result;
  }

  v18 = *(a1 + 63);
  if (v18 >= 0)
  {
    v19 = *(a1 + 63);
  }

  else
  {
    v19 = *(a1 + 48);
  }

  v20 = *(a2 + 63);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 48);
  }

  if (v19 != v20)
  {
    return 0;
  }

  v22 = (a2 + 40);
  if (v18 >= 0)
  {
    v23 = (a1 + 40);
  }

  else
  {
    v23 = *(a1 + 40);
  }

  v24 = *v22;
  if (v21 >= 0)
  {
    v25 = (a2 + 40);
  }

  else
  {
    v25 = *v22;
  }

  return memcmp(v23, v25, v19) == 0;
}

void sub_27153D2F4(void *a1, uint64_t *a2)
{
  sub_271120E64(a1, "Transform3{src: ", 16);
  if (*(a2 + 32) == 1)
  {
    v19 = 34;
    v4 = sub_271120E64(a1, &v19, 1);
    v5 = *(a2 + 31);
    if (v5 >= 0)
    {
      v6 = (a2 + 1);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 31);
    }

    else
    {
      v7 = a2[2];
    }

    v8 = sub_271120E64(v4, v6, v7);
    v20 = 34;
    v9 = &v20;
    v10 = 1;
  }

  else
  {
    v9 = "world";
    v8 = a1;
    v10 = 5;
  }

  sub_271120E64(v8, v9, v10);
  sub_271120E64(a1, ", dst: ", 7);
  if (*(a2 + 64) == 1)
  {
    v21 = 34;
    v11 = sub_271120E64(a1, &v21, 1);
    v12 = *(a2 + 63);
    if (v12 >= 0)
    {
      v13 = (a2 + 5);
    }

    else
    {
      v13 = a2[5];
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 63);
    }

    else
    {
      v14 = a2[6];
    }

    v15 = sub_271120E64(v11, v13, v14);
    v22 = 34;
    v16 = &v22;
    v17 = 1;
  }

  else
  {
    v16 = "world";
    v15 = a1;
    v17 = 5;
  }

  sub_271120E64(v15, v16, v17);
  sub_271120E64(a1, ", transform:", 12);
  v18 = *a2;
  operator new();
}

uint64_t sub_27153D4D8(uint64_t a1, uint64_t a2, float *a3)
{
  v11 = a2;
  v12 = "{";
  v13 = a2;
  v14 = "{";
  v15 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v3))(&v16);
  sub_2711CDE78(&v11, a2, a3);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v6))(&v16, a2);
  sub_2711CDE78(&v11, a2, a3 + 1);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v7))(&v16, a2);
  sub_2711CDE78(&v11, a2, a3 + 2);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v8))(&v16, a2);
  sub_2711CDE78(&v11, a2, a3 + 3);
  v11 = a2;
  v12 = "}";
  v13 = a2;
  v14 = "}";
  v15 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_7:
    sub_2711308D4();
  }

  v16 = &v11;
  return (*(&off_288133558 + v9))(&v16, a2);
}

void sub_27153D668(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288133528[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_27153D82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27153D884(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
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

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_27153DAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27153DAE0(uint64_t a1, uint64_t a2, double *a3)
{
  v11 = a2;
  v12 = "{";
  v13 = a2;
  v14 = "{";
  v15 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v3))(&v16);
  sub_2711CC17C(&v11, a2, a3);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v6))(&v16, a2);
  sub_2711CC17C(&v11, a2, a3 + 1);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v7))(&v16, a2);
  sub_2711CC17C(&v11, a2, a3 + 2);
  v11 = a2;
  v12 = ",";
  v13 = a2;
  v14 = ",";
  v15 = ",";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  (*(&off_288133558 + v8))(&v16, a2);
  sub_2711CC17C(&v11, a2, a3 + 3);
  v11 = a2;
  v12 = "}";
  v13 = a2;
  v14 = "}";
  v15 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_7:
    sub_2711308D4();
  }

  v16 = &v11;
  return (*(&off_288133558 + v9))(&v16, a2);
}

void sub_27153DC6C(float32x2_t *a1, float *a2)
{
  v4 = (a1[3].f32[0] - a1[4].f32[1]) * 0.5;
  *a2 = v4;
  v5 = (a1[4].f32[0] - a1[1].f32[0]) * 0.5;
  a2[1] = v5;
  v6 = (a1->f32[1] - a1[2].f32[0]) * 0.5;
  a2[2] = v6;
  v7 = a1->f32[0];
  v8 = a1[2].f32[1];
  v9 = a1[5].f32[0];
  v10 = -1.0;
  v11 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
  v12 = ((v4 * v4) + (v5 * v5)) + (v6 * v6);
  if (v11 >= -1.0 || (v11 + 1.0) <= -0.00001)
  {
    v15 = (v11 + -1.0) < 0.00001 && v11 > 1.0;
    if (v11 > 0.99 || v15)
    {
      v16 = (v12 * ((v12 * (((v12 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
    }

    else
    {
      if (v11 <= -0.99)
      {
        v10 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
        goto LABEL_19;
      }

      v16 = acosf(v11) / sqrtf(v12);
    }

    *a2 = v4 * v16;
    a2[1] = v5 * v16;
    a2[2] = v6 * v16;
    return;
  }

LABEL_19:
  v17 = asinf(sqrtf(v12));
  v18 = ((3.1416 - v17) * (3.1416 - v17)) / (1.0 - v10);
  v19 = (v7 - v10) * v18;
  v20 = (v8 - v10) * v18;
  v21 = (v9 - v10) * v18;
  if (v19 <= v20)
  {
    v26 = v18 * 0.5;
    if (v20 <= v21)
    {
      v33 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v33 = -v33;
      }

      a2[2] = v33;
      v34.i32[0] = a1[1].i32[0];
      v34.i32[1] = a1[3].i32[0];
      *a2 = vmul_n_f32(vmul_n_f32(vadd_f32(a1[4], v34), v26), 1.0 / v33);
    }

    else
    {
      v27 = sqrtf(v20);
      if (v5 < 0.0)
      {
        v27 = -v27;
      }

      a2[1] = v27;
      v28 = 1.0 / v27;
      v29 = a1[4].f32[1] + a1[3].f32[0];
      *a2 = v28 * (v26 * (a1[2].f32[0] + a1->f32[1]));
      a2[2] = v28 * (v26 * v29);
    }
  }

  else
  {
    v22 = v18 * 0.5;
    v23 = v22 * (a1[4].f32[0] + a1[1].f32[0]);
    if (v19 <= v21)
    {
      v30 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v30 = -v30;
      }

      a2[2] = v30;
      v31 = 1.0 / v30;
      v32 = v31 * (v22 * (a1[4].f32[1] + a1[3].f32[0]));
      *a2 = v31 * v23;
      a2[1] = v32;
    }

    else
    {
      v24 = sqrtf(v19);
      if (v4 < 0.0)
      {
        v24 = -v24;
      }

      *a2 = v24;
      v25 = 1.0 / v24;
      a2[1] = v25 * (v22 * (a1[2].f32[0] + a1->f32[1]));
      a2[2] = v25 * v23;
    }
  }
}

void sub_27153DF7C(float64x2_t *a1, double *a2)
{
  v4 = (a1[3].f64[0] - a1[4].f64[1]) * 0.5;
  *a2 = v4;
  v5 = (a1[4].f64[0] - a1[1].f64[0]) * 0.5;
  a2[1] = v5;
  v6 = (a1->f64[1] - a1[2].f64[0]) * 0.5;
  a2[2] = v6;
  v7 = a1->f64[0];
  v8 = a1[2].f64[1];
  v9 = a1[5].f64[0];
  v10 = -1.0;
  v11 = (a1->f64[0] + v8 + v9 + -1.0) * 0.5;
  v12 = v4 * v4 + v5 * v5 + v6 * v6;
  if (v11 >= -1.0 || v11 + 1.0 <= -0.00001)
  {
    v22 = v11 > 1.0;
    if (v11 + -1.0 >= 0.00001)
    {
      v22 = 0;
    }

    if (v11 <= 0.99 && !v22)
    {
      if (v11 <= -0.99)
      {
        v10 = (a1->f64[0] + v8 + v9 + -1.0) * 0.5;
        goto LABEL_3;
      }

      v24 = acos(v11) / sqrt(v12);
      *a2 = v4 * v24;
      a2[1] = v5 * v24;
    }

    else
    {
      v24 = v12 * (v12 * (v12 * 5.0 / 112.0 + 0.075) + 0.166666667) + 1.0;
      *a2 = v4 * v24;
      a2[1] = v5 * v24;
    }

    a2[2] = v6 * v24;
    return;
  }

LABEL_3:
  v13 = asin(sqrt(v12));
  v14 = (3.14159265 - v13) * (3.14159265 - v13) / (1.0 - v10);
  v15 = (v7 - v10) * v14;
  v16 = (v8 - v10) * v14;
  v17 = (v9 - v10) * v14;
  if (v15 <= v16)
  {
    v25 = v14 * 0.5;
    if (v16 <= v17)
    {
      v32 = sqrt(v17);
      if (v6 < 0.0)
      {
        v32 = -v32;
      }

      a2[2] = v32;
      v33.f64[0] = a1[1].f64[0];
      v33.f64[1] = a1[3].f64[0];
      *a2 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(a1[4], v33), v25), 1.0 / v32);
    }

    else
    {
      v26 = sqrt(v16);
      if (v5 < 0.0)
      {
        v26 = -v26;
      }

      a2[1] = v26;
      v27 = 1.0 / v26;
      v28 = a1[4].f64[1] + a1[3].f64[0];
      *a2 = v27 * (v25 * (a1[2].f64[0] + a1->f64[1]));
      a2[2] = v27 * (v25 * v28);
    }
  }

  else
  {
    v18 = v14 * 0.5;
    v19 = v18 * (a1[4].f64[0] + a1[1].f64[0]);
    if (v15 <= v17)
    {
      v29 = sqrt(v17);
      if (v6 < 0.0)
      {
        v29 = -v29;
      }

      a2[2] = v29;
      v30 = 1.0 / v29;
      v31 = v30 * (v18 * (a1[4].f64[1] + a1[3].f64[0]));
      *a2 = v30 * v19;
      a2[1] = v31;
    }

    else
    {
      v20 = sqrt(v15);
      if (v4 < 0.0)
      {
        v20 = -v20;
      }

      *a2 = v20;
      v21 = 1.0 / v20;
      a2[1] = v21 * (v18 * (a1[2].f64[0] + a1->f64[1]));
      a2[2] = v21 * v19;
    }
  }
}

float sub_27153E294(uint64_t a1, uint64_t *a2)
{
  *a1 = *(*a2 + 136);
  LODWORD(v2) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0;
  v3 = *a2;
  v4 = *(*a2 + 136);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (!*(v3 + 32))
      {
        LODWORD(v2) = *v3;
        v19 = *(v3 + 1);
        v20 = *(v3 + 4);
        v21 = *(v3 + 5);
        v22 = *(v3 + 8);
        v23 = *(v3 + 9);
        v24 = *(v3 + 12);
        v25 = *(v3 + 13);
        v26 = *(v3 + 2);
        v27 = *(v3 + 6);
        v28 = *(v3 + 10);
        v29 = *(v3 + 14);
        *(a1 + 8) = *v3;
        *(a1 + 12) = v20;
        *(a1 + 16) = v22;
        *(a1 + 20) = v24;
        *(a1 + 24) = v19;
        *(a1 + 28) = v21;
        *(a1 + 32) = v23;
        *(a1 + 36) = v25;
        *(a1 + 40) = v26;
        *(a1 + 44) = v27;
        *(a1 + 48) = v28;
        *(a1 + 52) = v29;
        return *&v2;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return *&v2;
      }

      if (*(v3 + 32) == 1)
      {
        *&v2 = *v3;
        v7 = *(v3 + 1);
        v8 = *(v3 + 4);
        v9 = *(v3 + 5);
        v10 = *(v3 + 8);
        v11 = *(v3 + 9);
        v12 = *(v3 + 12);
        v13 = *(v3 + 13);
        v14 = *(v3 + 2);
        v15 = *(v3 + 6);
        v16 = *(v3 + 10);
        v17 = *(v3 + 14);
        *(a1 + 8) = *v3;
        *(a1 + 16) = v8;
        *(a1 + 104) = 1;
        *(a1 + 24) = v10;
        *(a1 + 32) = v12;
        *(a1 + 40) = v7;
        *(a1 + 48) = v9;
        *(a1 + 56) = v11;
        *(a1 + 64) = v13;
        *(a1 + 72) = v14;
        *(a1 + 80) = v15;
        *(a1 + 88) = v16;
        *(a1 + 96) = v17;
        return *&v2;
      }
    }

LABEL_15:
    sub_2711308D4();
  }

  if (v4 == 1)
  {
    if (*(v3 + 32) == 2)
    {
      *(a1 + 104) = 2;
      v2 = *v3;
      v18 = *(v3 + 2);
      *(a1 + 8) = *v3;
      *(a1 + 24) = v18;
      return *&v2;
    }

    goto LABEL_15;
  }

  if (v4 != 2)
  {
    return *&v2;
  }

  if (*(v3 + 32) != 3)
  {
    goto LABEL_15;
  }

  *(a1 + 104) = 3;
  v2 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 8) = *v3;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return *&v2;
}

uint64_t *sub_27153E3E4(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_28087BA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA50))
  {
    sub_27153E698();
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_2714A56E0(a1, &__p);
  v4 = qword_28087BA60;
  if (!qword_28087BA60)
  {
    goto LABEL_41;
  }

  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v26 >= 0)
  {
    v6 = HIBYTE(v26);
  }

  else
  {
    v6 = v25;
  }

  v7 = &qword_28087BA60;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_28087BA60)
  {
    goto LABEL_41;
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

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v20 = std::string::append(&v22, ", expected [Algebra|Affine][F|D]", 0x20uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 56);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_27153E620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a27 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void sub_27153E698()
{
  v0 = 84148737;
  qword_28087BA68 = 0;
  qword_28087BA60 = 0;
  qword_28087BA58 = &qword_28087BA60;
  v1 = 0;
  sub_27148C43C();
}

void sub_27153E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_27151CE44(qword_28087BA60);
    _Unwind_Resume(a1);
  }

  sub_27151CE44(qword_28087BA60);
  _Unwind_Resume(a1);
}

void sub_27153E954(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 112);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      if (!v2)
      {
        v7 = *(a1 + 16);
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v10 = *(a1 + 36);
        v11 = *(a1 + 52);
        v12 = *(a1 + 24);
        v13 = *(a1 + 40);
        v14 = *(a1 + 56);
        __asm { FMOV            V0.4S, #1.0 }

        LODWORD(_Q0) = *(a1 + 28);
        DWORD1(_Q0) = *(a1 + 44);
        DWORD2(_Q0) = *(a1 + 60);
        operator new();
      }
    }

    else if (v2 == 1)
    {
      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v30 = *(a1 + 48);
      v31 = *(a1 + 56);
      v32 = *(a1 + 80);
      v33 = *(a1 + 88);
      v34 = *(a1 + 64);
      v35 = *(a1 + 96);
      v36 = *(a1 + 72);
      __asm { FMOV            V0.2D, #1.0 }

      *&_Q0 = *(a1 + 104);
      operator new();
    }
  }

  else if (v1 == 1)
  {
    if (v2 == 2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
      v5 = *(a1 + 28);
      v6 = *(a1 + 36);
      operator new();
    }
  }

  else if (v2 == 3)
  {
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    operator new();
  }

  sub_2711308D4();
}

void sub_27153ED28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 88) == 1 && *(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  MEMORY[0x2743BF050](v32, v31);
  _Unwind_Resume(a1);
}

BOOL sub_27153ED84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v31[3] = v2;
  v31[4] = v3;
  v6 = *(a1 + 112);
  v7 = *(a2 + 112);
  if (v6 != -1 && v7 == v6)
  {
    v31[0] = &v30;
    if (((off_2881335D0[v6])(v31, a1 + 16, a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7 != v6)
  {
    return 0;
  }

  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  if (v10 == v11 && *(a1 + 144))
  {
    v12 = *(a1 + 143);
    if (v12 >= 0)
    {
      v13 = *(a1 + 143);
    }

    else
    {
      v13 = *(a1 + 128);
    }

    v14 = *(a2 + 143);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 128);
    }

    if (v13 != v14)
    {
      return 0;
    }

    v16 = (a2 + 120);
    v17 = v12 >= 0 ? (a1 + 120) : *(a1 + 120);
    v18 = *v16;
    v19 = (v15 >= 0 ? a2 + 120 : *v16);
    if (memcmp(v17, v19, v13))
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  v20 = *(a2 + 176);
  v21 = *(a1 + 176);
  result = v21 == v20;
  if (v21 != v20 || !*(a1 + 176))
  {
    return result;
  }

  v22 = *(a1 + 175);
  if (v22 >= 0)
  {
    v23 = *(a1 + 175);
  }

  else
  {
    v23 = *(a1 + 160);
  }

  v24 = *(a2 + 175);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 160);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = (a2 + 152);
  if (v22 >= 0)
  {
    v27 = (a1 + 152);
  }

  else
  {
    v27 = *(a1 + 152);
  }

  v28 = *v26;
  if (v25 >= 0)
  {
    v29 = (a2 + 152);
  }

  else
  {
    v29 = *v26;
  }

  return memcmp(v27, v29, v23) == 0;
}

BOOL sub_27153EF2C(uint64_t a1, float *a2, float *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      v6 = a2[2];
      v7 = a3[2];
      result = v6 == v7;
      if (v6 == v7)
      {
        result = a2[3] == a3[3];
      }
    }
  }

  if (result)
  {
    v8 = a2[4];
    v9 = a3[4];
    result = v8 == v9;
    if (v8 == v9)
    {
      v10 = a2[5];
      v11 = a3[5];
      result = v10 == v11;
      if (v10 == v11)
      {
        v12 = a2[6];
        v13 = a3[6];
        result = v12 == v13;
        if (v12 == v13)
        {
          result = a2[7] == a3[7];
        }
      }
    }

    if (result)
    {
      v14 = a2[8];
      v15 = a3[8];
      result = v14 == v15;
      if (v14 == v15)
      {
        v16 = a2[9];
        v17 = a3[9];
        result = v16 == v17;
        if (v16 == v17)
        {
          v18 = a2[10];
          v19 = a3[10];
          result = v18 == v19;
          if (v18 == v19)
          {
            return a2[11] == a3[11];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_27153F01C(uint64_t a1, double *a2, double *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      v6 = a2[2];
      v7 = a3[2];
      result = v6 == v7;
      if (v6 == v7)
      {
        result = a2[3] == a3[3];
      }
    }
  }

  if (result)
  {
    v8 = a2[4];
    v9 = a3[4];
    result = v8 == v9;
    if (v8 == v9)
    {
      v10 = a2[5];
      v11 = a3[5];
      result = v10 == v11;
      if (v10 == v11)
      {
        v12 = a2[6];
        v13 = a3[6];
        result = v12 == v13;
        if (v12 == v13)
        {
          result = a2[7] == a3[7];
        }
      }
    }

    if (result)
    {
      v14 = a2[8];
      v15 = a3[8];
      result = v14 == v15;
      if (v14 == v15)
      {
        v16 = a2[9];
        v17 = a3[9];
        result = v16 == v17;
        if (v16 == v17)
        {
          v18 = a2[10];
          v19 = a3[10];
          result = v18 == v19;
          if (v18 == v19)
          {
            return a2[11] == a3[11];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_27153F10C(uint64_t a1, float *a2, float *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      result = a2[2] == a3[2];
    }
  }

  if (result)
  {
    v6 = a2[3];
    v7 = a3[3];
    result = v6 == v7;
    if (v6 == v7)
    {
      v8 = a2[4];
      v9 = a3[4];
      result = v8 == v9;
      if (v8 == v9)
      {
        return a2[5] == a3[5];
      }
    }
  }

  return result;
}

BOOL sub_27153F184(uint64_t a1, double *a2, double *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      result = a2[2] == a3[2];
    }
  }

  if (result)
  {
    v6 = a2[3];
    v7 = a3[3];
    result = v6 == v7;
    if (v6 == v7)
    {
      v8 = a2[4];
      v9 = a3[4];
      result = v8 == v9;
      if (v8 == v9)
      {
        return a2[5] == a3[5];
      }
    }
  }

  return result;
}

uint64_t sub_27153F450(uint64_t a1, uint64_t a2, double *a3)
{
  v10 = a2;
  v11 = "{";
  v12 = a2;
  v13 = "{";
  v14 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_288133620 + v3))(&v15);
  sub_2711CC17C(&v10, a2, a3);
  v10 = a2;
  v11 = ",";
  v12 = a2;
  v13 = ",";
  v14 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_288133620 + v6))(&v15, a2);
  sub_2711CC17C(&v10, a2, a3 + 1);
  v10 = a2;
  v11 = ",";
  v12 = a2;
  v13 = ",";
  v14 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_288133620 + v7))(&v15, a2);
  sub_2711CC17C(&v10, a2, a3 + 2);
  v10 = a2;
  v11 = "}";
  v12 = a2;
  v13 = "}";
  v14 = "}";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
LABEL_6:
    sub_2711308D4();
  }

  v15 = &v10;
  return (*(&off_288133620 + v8))(&v15, a2);
}

void sub_27153F9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743BF050](v21, v22);
  _Unwind_Resume(a1);
}

void *sub_27153FACC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
    {
      operator delete(*(v1 + 384));
    }

    v3 = sub_271359728(v1);
    MEMORY[0x2743BF050](v3, 0x10B2C40FBB7FC15);
    return v2;
  }

  return result;
}

BOOL sub_27153FB34(float ***a1, float ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  if (v4 - v5 != (*a2)[1] - v6)
  {
    return 0;
  }

  if (v5 != v4)
  {
    while (*v5 == *v6 && v5[1] == v6[1] && v5[2] == v6[2])
    {
      v5 += 3;
      v6 += 3;
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v8 = v2[4];
  v7 = v2[5];
  v9 = v3[4];
  if (v7 - v8 != v3[5] - v9)
  {
    return 0;
  }

  if (v8 != v7)
  {
    while (*v8 == *v9 && v8[1] == v9[1] && v8[2] == v9[2])
    {
      v8 += 3;
      v9 += 3;
      if (v8 == v7)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v11 = v2[9];
  v10 = v2[10];
  v12 = v3[9];
  if (v10 - v11 != v3[10] - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    while (*v11 == *v12 && v11[1] == v12[1] && v11[2] == v12[2])
    {
      v11 += 3;
      v12 += 3;
      if (v11 == v10)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(v2 + 26) != *(v3 + 26))
  {
    return 0;
  }

  v14 = v2[14];
  v13 = v2[15];
  v15 = v3[14];
  if (v13 - v14 != v3[15] - v15)
  {
    return 0;
  }

  if (v14 != v13)
  {
    while (*v14 == *v15 && *(v14 + 1) == *(v15 + 1) && *(v14 + 2) == *(v15 + 2))
    {
      v14 += 3;
      v15 += 12;
      if (v14 == v13)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

LABEL_27:
  v17 = v2[18];
  v16 = v2[19];
  v18 = v3[18];
  if (v16 - v17 != v3[19] - v18)
  {
    return 0;
  }

  if (v17 != v16)
  {
    while (*v17 == *v18 && *(v17 + 1) == *(v18 + 1))
    {
      v17 += 2;
      v18 += 8;
      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  v21 = v2[22];
  v20 = v2[23];
  v22 = v3[22];
  if (v20 - v21 != v3[23] - v22)
  {
    return 0;
  }

  if (v21 != v20)
  {
    while (*v21 == *v22 && v21[1] == v22[1])
    {
      v21 += 2;
      v22 += 2;
      if (v21 == v20)
      {
        goto LABEL_40;
      }
    }

    return 0;
  }

LABEL_40:
  v52 = *a2;
  v53 = *a1;
  v25 = v2 + 26;
  v23 = v2[26];
  v24 = v25[1];
  v27 = v3 + 26;
  v26 = v3[26];
  if (v24 - v23 != v27[1] - v26)
  {
    return 0;
  }

  if (v23 != v24)
  {
    while (*v23 == *v26 && *(v23 + 1) == *(v26 + 1) && *(v23 + 2) == *(v26 + 2))
    {
      v23 += 3;
      v26 += 3;
      if (v23 == v24)
      {
        goto LABEL_46;
      }
    }

    return 0;
  }

LABEL_46:
  v28 = *a1;
  v29 = v53[30];
  v30 = v53[31] - v29;
  v31 = v52[30];
  if (v30 != v52[31] - v31)
  {
    return 0;
  }

  if (memcmp(v29, v31, v30))
  {
    return 0;
  }

  if (*(v53 + 68) != *(v52 + 68))
  {
    return 0;
  }

  v32 = v53[35];
  v33 = v53[36] - v32;
  v34 = v52[35];
  if (v33 != v52[36] - v34)
  {
    return 0;
  }

  if (memcmp(v32, v34, v33))
  {
    return 0;
  }

  if (*(v53 + 78) != *(v52 + 78))
  {
    return 0;
  }

  v36 = v53[40];
  v35 = v53[41];
  v37 = v52[40];
  if (v35 - v36 != v52[41] - v37)
  {
    return 0;
  }

  if (v36 != v35)
  {
    while (*v36 == *v37)
    {
      ++v36;
      ++v37;
      if (v36 == v35)
      {
        goto LABEL_56;
      }
    }

    return 0;
  }

LABEL_56:
  if (*(v53 + 88) != *(v52 + 88))
  {
    return 0;
  }

  v38 = *(v53 + 380);
  v39 = *(v52 + 380);
  if (v38 == v39 && v38 != 0)
  {
    if (*(v53 + 89) != *(v52 + 89) || *(v53 + 90) != *(v52 + 90) || *(v53 + 91) != *(v52 + 91) || *(v53 + 92) != *(v52 + 92) || *(v53 + 93) != *(v52 + 93) || *(v53 + 94) != *(v52 + 94))
    {
      return 0;
    }

    goto LABEL_63;
  }

  if (v38 != v39)
  {
    return 0;
  }

LABEL_63:
  v41 = *(v52 + 408);
  v42 = *(v53 + 408);
  result = v42 == v41;
  if (v42 == v41 && *(v53 + 408))
  {
    v44 = *(v53 + 407);
    if (v44 >= 0)
    {
      v45 = *(v53 + 407);
    }

    else
    {
      v45 = v53[49];
    }

    v46 = *(v52 + 407);
    v47 = v52[49];
    if (v46 >= 0)
    {
      v47 = *(v52 + 407);
    }

    if (v45 != v47)
    {
      return 0;
    }

    v48 = (v52 + 48);
    if (v44 >= 0)
    {
      v49 = (v53 + 48);
    }

    else
    {
      v49 = v53[48];
    }

    v50 = *v48;
    if (v46 >= 0)
    {
      v51 = v52 + 48;
    }

    else
    {
      v51 = *v48;
    }

    return memcmp(v49, v51, v45) == 0;
  }

  return result;
}

void sub_27153FFF8(void *a1, uint64_t *a2)
{
  sub_271120E64(a1, "{", 1);
  v3 = *a2;
  v4 = 0;
  operator new();
}

void sub_271540344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271540360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x2743BF050](v4, 0x10B2C40EED050F3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_27154038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715403A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715403B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a12);
    _Unwind_Resume(a1);
  }

  sub_271137AE8(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_271540400(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133638[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_271540490(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133668[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_271540520(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133648[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2715405A4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288133658[v4])(&v8, a1 + 3);
  }

  return a1;
}

int **sub_271540628(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288133678[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288133688[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_271540754(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288133698[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_2881336A8[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

uint64_t **sub_271540890(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133668[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

uint64_t **sub_27154093C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133638[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_271540A28(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_271540AB0(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133658[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_271540B90(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_271540C18(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288133648[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

void sub_271540CAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271540CE4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
    {
      operator delete(*(v1 + 384));
    }

    sub_271359728(v1);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271540D58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271540DB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(v2 + 16);
    v9 = v3;
    v10 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(v2 + 16);
    v9 = *a2;
    v10 = 0;
  }

  result = sub_2714C13B8(v5, &v9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v7;
  }

  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v8;
    }
  }

  return result;
}

void sub_271540EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271540EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 16);
  std::mutex::lock((v3 + 32));
  v4 = sub_2714C0C90(v3, a2);
  std::mutex::unlock((v3 + 32));
  return v4;
}

uint64_t sub_271540F50@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_271540F6C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_271540F88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_271540FA4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::__shared_weak_count *sub_271540FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 16);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 8);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_271541010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 16);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 8);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_271541068(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 152));
  if (v3)
  {
    std::mutex::lock((a1 + 88));
    if ((*(a2 + 48) & 1) == 0)
    {
      v5 = *(a1 + 160);
      *(a2 + 48) = *(a1 + 176);
      *(a2 + 32) = v5;
    }

    std::mutex::unlock((a1 + 88));
  }

  return a2;
}

std::__shared_weak_count *sub_2715410C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 192);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 184);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void sub_271541114(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 16);
  std::mutex::lock((v3 + 32));
  v4 = *(v3 + 96);
  for (i = *(v3 + 104); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((v3 + 32));
}

void sub_2715411C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 192);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v16 = v5;
    if (v5)
    {
      v6 = *(a1 + 184);
      v15 = v6;
      if (v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        v12 = (*(**a2 + 16))();
        v13 = (*(*v6 + 16))(v6);
        sub_27154139C(&v14, v12, v13);
        std::logic_error::logic_error(exception, &v14);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v5->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 192);
  *(a1 + 184) = v9;
  *(a1 + 192) = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_27154135C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27154139C(std::string *a1, uint64_t *a2, uint64_t *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v8[0] = "Can't reconfigure VisualLogger with config '";
  v8[1] = 44;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[2] = v4;
  v8[3] = v3;
  v8[4] = "', it already has an active configuration '";
  v8[5] = 43;
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = a3[1];
  }

  v8[6] = v6;
  v8[7] = v5;
  v8[8] = "'";
  v8[9] = 1;
  sub_271131230(v8, &v9, 0, 0, a1);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_271541468(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 192);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = *(a1 + 184);
    v7 = *a2;
    if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v7 == v6)
      {
        goto LABEL_5;
      }

LABEL_10:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 252, "config == active_config_.lock()", 0x1FuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1)
        {
          goto LABEL_17;
        }

        v9 = qword_28087C408;
        v10 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v9 = qword_28087C408;
        v10 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_21;
        }
      }

      do
      {
        v12 = *v9;
        v11 = *(v9 + 8);
        v9 += 16;
        v12(v11, "config == active_config_.lock()", 31, "", 0);
      }

      while (v9 != v10);
      if (byte_28087C430)
      {
LABEL_17:
        qword_28087C420(*algn_28087C428, "config == active_config_.lock()", 31, "", 0);
        v8 = *(a1 + 192);
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        if (!v8)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_21:
      abort();
    }

    v13 = v5;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v13);
    if (v7 != v6)
    {
      goto LABEL_10;
    }
  }

  else if (*a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (!v8)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_weak(v8);
}

void sub_271541AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_2714C169C(&a9);
  if (!v16)
  {
    sub_27112F828(v15);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271541B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  sub_27112F828(v18);
  _Unwind_Resume(a1);
}

void sub_271541B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  sub_27112F828(&v15[2]);
  shared_weak_owners = v15[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  sub_271347F18(&a9);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_271541BFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v1 = *(a1 + 8);
LABEL_10:
      v7 = *(v1 + 24);

      sub_2715021D0(v7);
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "p_", 2, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_13:
  abort();
}

uint64_t sub_271541D3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 32);

  return v8();
}

uint64_t sub_271541EA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_11;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_23;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "p_", 2, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_11:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v2 = *(a1 + 8);
      v3 = *a2;
      v4 = a2[1];
      v17 = v4;
      if (v4)
      {
        goto LABEL_3;
      }

LABEL_12:
      v18 = 0;
      v6 = *(*(v2 + 40) + 16);
      v19 = v3;
      v20 = 0;
      goto LABEL_13;
    }

LABEL_23:
    abort();
  }

  v3 = *a2;
  v4 = a2[1];
  v17 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(v2 + 40);
  v18 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = *(v5 + 16);
  v19 = v3;
  v20 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_13:
  result = sub_2714C13B8(v6, &v19);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v14;
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = result;
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    result = v15;
  }

  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = result;
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      return v16;
    }
  }

  return result;
}

void sub_271542120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271542144(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

LABEL_10:
  v9 = *(*(v3 + 40) + 16);
  std::mutex::lock((v9 + 32));
  v10 = sub_2714C0C90(v9, a2);
  std::mutex::unlock((v9 + 32));
  return v10;
}

uint64_t sub_2715422B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(*(a1 + 8) + 40);
}

uint64_t sub_2715423F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(*(a1 + 8) + 40);
}

void sub_271542534(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "p_", 2, "", 0);
      }

      while (v5 != v6);
      if (byte_28087C430)
      {
        goto LABEL_9;
      }

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(a1 + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_271542680(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "p_", 2, "", 0);
      }

      while (v5 != v6);
      if (byte_28087C430)
      {
        goto LABEL_9;
      }

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(a1 + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2715427CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "p_", 2, "", 0);
      }

      while (v5 != v6);
      if (byte_28087C430)
      {
        goto LABEL_9;
      }

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(a1 + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_271542918(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_7:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "p_", 2, "", 0);
      }

      while (v5 != v6);
      if (byte_28087C430)
      {
        goto LABEL_9;
      }

LABEL_13:
      abort();
    }
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v2 = *(a1 + 8);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

std::__shared_weak_count *sub_271542A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    result = *(v3 + 16);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    v6 += 16;
    v9(v8, "p_", 2, "", 0);
  }

  while (v6 != v7);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v3 = *(a1 + 8);
  result = *(v3 + 16);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 8);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

std::__shared_weak_count *sub_271542BC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    result = *(v3 + 16);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    v6 += 16;
    v9(v8, "p_", 2, "", 0);
  }

  while (v6 != v7);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v3 = *(a1 + 8);
  result = *(v3 + 16);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 8);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t sub_271542D1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 152;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(a1 + 8) + 152;
}

uint64_t sub_271542E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_11;
      }

      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
LABEL_11:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v3 = *(a1 + 8);
      v10 = atomic_load((v3 + 152));
      if ((v10 & 1) == 0)
      {
        return a2;
      }

      goto LABEL_12;
    }

LABEL_16:
    abort();
  }

  v4 = atomic_load((v3 + 152));
  if ((v4 & 1) == 0)
  {
    return a2;
  }

LABEL_12:
  std::mutex::lock((v3 + 88));
  if ((*(a2 + 48) & 1) == 0)
  {
    v11 = *(v3 + 160);
    *(a2 + 48) = *(v3 + 176);
    *(a2 + 32) = v11;
  }

  std::mutex::unlock((v3 + 88));
  return a2;
}

std::__shared_weak_count *sub_271542FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    result = *(v3 + 192);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_28087C408;
    v7 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    v6 += 16;
    v9(v8, "p_", 2, "", 0);
  }

  while (v6 != v7);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v3 = *(a1 + 8);
  result = *(v3 + 192);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 184);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

void sub_271543130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_15;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_15:
    abort();
  }

LABEL_10:
  v9 = *(*(v3 + 40) + 16);
  std::mutex::lock((v9 + 32));
  v10 = *(v9 + 96);
  for (i = *(v9 + 104); v10 != i; v10 += 2)
  {
    (*(**v10 + 16))(*v10, a2);
  }

  std::mutex::unlock((v9 + 32));
}

void sub_2715432DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_16:
    abort();
  }

LABEL_10:
  v10 = a2[1];
  v12 = *a2;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 184))(v3, &v12);
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2715434B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_16:
    abort();
  }

LABEL_10:
  v10 = a2[1];
  v12 = *a2;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 192))(v3, &v12);
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

uint64_t sub_271543694(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 40);

  return v8();
}

void sub_2715437EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v4 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v2 = *(a1 + 8);
        a2 = v4;
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v9 = *(*(v2 + 40) + 16);

  sub_2714C12C4(v9, a2);
}

void sub_271543938(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_59:
    abort();
  }

LABEL_10:
  sub_2714C12C4(*(*(v3 + 40) + 16), &v47);
  v9 = v47;
  v10 = v48;
  if (v47 == v48)
  {
LABEL_21:
    v15 = 1;
    v16 = v47;
    if (!v47)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = **v11;
      v13 = __dynamic_cast(v11, &unk_28811DAE0, &unk_28811D098, -2);
      if (v13)
      {
        break;
      }
    }

LABEL_12:
    v9 += 16;
    if (v9 == v10)
    {
      goto LABEL_21;
    }
  }

  v14 = *(v9 + 1);
  v45 = v13;
  v46 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v13 + 40))(&v34);
  if (v44)
  {
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_12;
  }

  v23 = v34;
  LOBYTE(__p) = 0;
  v33 = 0;
  if (v43 == 1)
  {
    sub_27112F6CC(&__p, &v35);
    v33 = 1;
    *a2 = v23;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v20 = v26;
    if (v26 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v25;
      v25 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v21 = a2 + 48;
      *(a2 + 104) = 0;
      if (v32)
      {
        goto LABEL_40;
      }

LABEL_36:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (v20)
      {
LABEL_41:
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v21 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v22 = v29;
      *(v21 + 16) = v28;
      *v21 = v27;
      v27 = 0uLL;
      *(a2 + 72) = v22;
      *(a2 + 80) = v30;
      *(a2 + 96) = v31;
      v28 = 0;
      v30 = 0uLL;
      v31 = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (v20)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    *a2 = v34;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  if ((v44 & 1) == 0 && v43 == 1)
  {
    if (v42 == 1)
    {
      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = 0;
    v16 = v47;
    if (v47)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = 0;
    v16 = v47;
    if (!v47)
    {
      goto LABEL_30;
    }

LABEL_22:
    v17 = v48;
    v18 = v16;
    if (v48 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = v47;
    }

    v48 = v16;
    operator delete(v18);
  }

LABEL_30:
  if (v15)
  {
    *(a2 + 120) = 1;
  }
}

void sub_271543DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112D66C(v16 + 16);
  sub_27112E024(va);
  sub_27112F828(v17 - 120);
  sub_271347F18((v17 - 104));
  _Unwind_Resume(a1);
}

void sub_271543E28(_Unwind_Exception *a1)
{
  sub_27112F828(v1 - 120);
  sub_271347F18((v1 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_271543E44(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 16);

  return v8();
}

uint64_t sub_271543FAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 24);

  return v8();
}

void *sub_271544114(uint64_t a1, char *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 301, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 24);

  return sub_2715018D8(v11, a2, a3);
}

unint64_t sub_271544264(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 24);

  return sub_271501A54(v11, a2, a3);
}

uint64_t sub_2715443B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/VisualLogger.cpp", 297, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v1 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v3 = qword_28087C408;
      v4 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "p_", 2, "", 0);
    }

    while (v3 != v4);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v7 = *(**(v1 + 24) + 64);

  return v7();
}

uint64_t sub_271544524(uint64_t result)
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

void sub_27154459C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27154462C(uint64_t a1)
{
  sub_2715447F4(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271544684(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271544720(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288133770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271544774(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2715447F4(uint64_t a1)
{
  *a1 = &unk_28810C238;
  v2 = *(a1 + 192);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::mutex::~mutex((a1 + 88));
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t sub_271544900@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 1) <= 0x25)
    {
      v5 = (dword_27189ABD0[a2 - 1] | *&a8_27[4 * (a2 - 1)]);
    }

    operator new();
  }

  if (result == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }

  return result;
}

void sub_271544D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_271544DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271544DC0(int a1, uint64_t a2, double a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_2711308D4();
        }

        goto LABEL_24;
      }

      return *&a3;
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2881152B0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_271581FB4(v11);
      }
    }

    sub_271545004(&v13, &v10);
    v9 = *&v14;
    sub_27157D2FC(&v10);
    return *&v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return *&a3;
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_2715452F8(a2, &v10);
    sub_271545004(&v13, &v10);
    a3 = *&v14;
    v10 = &unk_288115A20;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return *&a3;
    }

    v9 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return *&v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_271545004(&v13, a2);
  return v14;
}

void sub_271544FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271544FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271544FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271545004(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = (result << 32) | 1;
  if (HIDWORD(v18) * result == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_2715452F8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27154547C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, char a5)
{
  v6 = a2;
  v12 = a5;
  *a1 = &unk_288115630;
  *(a1 + 8) = a2;
  sub_271544900(a2, a3, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_271544DC0(v6, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_2715462C4(a1, v14);
    sub_2715466D0(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_271574524(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_271545570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27157D548(va);
  sub_2715455A0(v6);
  _Unwind_Resume(a1);
}

uint64_t sub_2715455A0(uint64_t a1)
{
  *a1 = &unk_288115630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_271545618(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_271545674(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_288115630;
  *(a1 + 8) = 0;
  sub_271544900(0, 1, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_271544DC0(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_2715462C4(a1, v13);
    sub_2715466D0(a1, v12);
    sub_271253768(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27154576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_2715455A0(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_27154579C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115630;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  *(a1 + 48) = v15 | (v16 << 32);
  *(a1 + 56) = (v17 << 32) | 1;
  v18 = *(a2 + 8);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v20 = *(a2 + 8);
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_39:
      v22 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v22 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_28:
  v22 = *v20;
  v21 = v20[1];
  if (!v21 || (atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 48))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (*(a1 + 48))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v22)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v23 += 16;
    }

    while (v23 != v24);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_271545C64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271545F0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (v2 >= 2)
    {
LABEL_21:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  if (v2 != 3)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_14;
  }

  v4 = a2;
  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5)
  {
    v4[1] = 0;
    v4[2] = 0;
    *v4 = &unk_288115A20;
    return;
  }

  v6 = *(a1 + 16);
  a2 = v4;
  if (!v6)
  {
LABEL_14:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v5)
    {
      return;
    }

    goto LABEL_17;
  }

  *v4 = &unk_288115A20;
  v4[1] = v6;
  v4[2] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_17:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v5;
    (v5->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(v9);
  }
}

BOOL sub_27154608C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 1)
  {
    if (v1 >= 2)
    {
LABEL_25:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
LABEL_10:
    v4 = *(a1 + 32);
    v9 = *(a1 + 24);
    v10 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v1 != 3)
  {
    goto LABEL_25;
  }

  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_22;
  }

  v3 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v3 || !*(a1 + 16))
  {
LABEL_22:
    v9 = 0;
    v10 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + 16);
  v10 = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_23:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_12:
  if (v9)
  {
    v6 = *v9;
    v5 = v9[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6 == 0;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return v6 == 0;
}

void sub_2715462C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_2715452F8((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271546678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715466D0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271545004(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271546A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271546A24(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_2715452F8((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_271546DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271546E30@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 1) <= 0x25)
    {
      v5 = (dword_27189ABD0[a2 - 1] | *&a8_27[4 * (a2 - 1)]);
    }

    operator new();
  }

  if (result == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }

  return result;
}

void sub_2715472B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715472D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715472F0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271547560(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_2715478E8(&v12, a2);
      sub_271547560(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
    if (v6)
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271547560(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271547524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271547538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154754C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271547560(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  HIDWORD(v27) = v18;
  LODWORD(v27) = 2;
  *a1 = v11;
  *(a1 + 8) = v27;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 2;
  if (HIDWORD(v18) * result != -1)
  {
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v20 = qword_28087C408;
    v21 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_28087C438 == 1)
  {
    v20 = qword_28087C408;
    v21 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_26:
        v23 = *v20;
        v22 = *(v20 + 8);
        v20 += 16;
        v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v20 != v21);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v25 = qword_28087C420;
  v24 = *algn_28087C428;
  v26 = *MEMORY[0x277D85DE8];

  return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}