void sub_2711FCD18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

BOOL VZImageIsCVPixelFormatSupported_0(int a1)
{
  if ((atomic_load_explicit(&qword_28087B2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2C0))
  {
    sub_2711F97D4();
    __cxa_atexit(sub_2711F995C, &qword_28087B3B0, &dword_27111A000);
    __cxa_guard_release(&qword_28087B2C0);
  }

  v2 = qword_28087B3B0;
  if (qword_28087B3B8 == qword_28087B3B0)
  {
LABEL_6:
    v2 = qword_28087B3B8;
  }

  else
  {
    v3 = qword_28087B3B0;
    while (*v3 != a1)
    {
      ++v3;
      v2 += 4;
      if (v3 == qword_28087B3B8)
      {
        goto LABEL_6;
      }
    }
  }

  return v2 != qword_28087B3B8;
}

BOOL VZImageIsCVPixelFormatPartiallySupported_0(int a1)
{
  if ((atomic_load_explicit(&qword_28087B2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2C8))
  {
    sub_2711F9998();
    __cxa_atexit(sub_2711F995C, &qword_28087B3C8, &dword_27111A000);
    __cxa_guard_release(&qword_28087B2C8);
  }

  v2 = qword_28087B3C8;
  if (qword_28087B3D0 == qword_28087B3C8)
  {
LABEL_6:
    v2 = qword_28087B3D0;
  }

  else
  {
    v3 = qword_28087B3C8;
    while (*v3 != a1)
    {
      ++v3;
      v2 += 4;
      if (v3 == qword_28087B3D0)
      {
        goto LABEL_6;
      }
    }
  }

  return v2 != qword_28087B3D0;
}

void sub_2711FCF8C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_15:
      v30 = 0;
      v31 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_9:
  v8 = *(a1 + 55);
  v9 = *(a1 + 56);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = v8;
  v31 = v9;
  if (!v8)
  {
LABEL_16:
    v32 = *"cv3d.viz";
    v33 = 0x800000000000000;
    v34 = 1;
    sub_2711BE814(&v29, &v32, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v26, *a1, *(a1 + 1));
    }

    else
    {
      v26 = *a1;
      v27 = *(a1 + 2);
    }

    v28 = *(a1 + 6);
    operator new();
  }

  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(v8 + 56);
    v13 = *(v8 + 64);
    v14 = *(v8 + 68);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v12 = *(v8 + 56);
    v13 = *(v8 + 64);
    v14 = *(v8 + 68);
  }

  *&v17 = v10;
  *(&v17 + 1) = v11;
  *v18 = *(v8 + 40);
  *&v18[8] = *(v8 + 48);
  *&v18[16] = v12;
  *&v18[24] = v13;
  *&v18[28] = v14;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v19[0] = &unk_2881177F0;
  v19[1] = &unk_2881147D8;
  *__p = v17;
  *v21 = *v18;
  *&v21[14] = *&v18[14];
  LOBYTE(v22) = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_2711FB560(a2, v19);
  sub_2712CAF40(v19);
  v15 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2711FD4EC(_Unwind_Exception *a1)
{
  sub_2711BEA2C((v1 - 136));
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  sub_27112F828(v1 - 112);
  _Unwind_Resume(a1);
}

void sub_2711FD580(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 440);
  v5 = *(a1 + 448);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_15:
      v37 = 0;
      v38 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_9:
  v8 = *(a1 + 440);
  v9 = *(a1 + 448);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = v8;
  v38 = v9;
  if (!v8)
  {
LABEL_16:
    v58 = *"cv3d.viz";
    *&v59 = 0x800000000000000;
    DWORD2(v59) = 1;
    sub_2711BE814(&v36, &v58, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(v44, *a1, *(a1 + 8));
    }

    else
    {
      *v44 = *a1;
      v45 = *(a1 + 16);
    }

    LODWORD(v46) = *(a1 + 24);
    operator new();
  }

  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(v8 + 56);
    v13 = *(v8 + 64);
    v14 = *(v8 + 68);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v12 = *(v8 + 56);
    v13 = *(v8 + 64);
    v14 = *(v8 + 68);
  }

  *&v26 = v10;
  *(&v26 + 1) = v11;
  *v27 = *(v8 + 40);
  *&v27[8] = *(v8 + 48);
  *&v27[16] = v12;
  *&v27[24] = v13;
  *&v27[28] = v14;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v28 = &unk_2881177F0;
  v29 = &unk_2881147D8;
  *__p = v26;
  *v31 = *v27;
  *&v31[14] = *&v27[14];
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v54 = a1;
  v15 = *&v27[22] >> 16;
  v53 = v15;
  if (v15 > 0x26 || ((1 << v15) & 0x61826001BELL) == 0)
  {
    sub_271220E9C();
  }

  *&v58 = &v54;
  sub_27122B498(&v41, v15, &v58, &v29);
  if (v42)
  {
    v17 = *v42;
    v16 = v42[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    if (v17)
    {
      v19 = v42;
      v18 = v43;
      *a2 = &unk_288115A20;
      *(a2 + 8) = v19;
      *(a2 + 16) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(a2 + 120) = 1;
      goto LABEL_61;
    }
  }

  v56 = 0;
  v44[0] = &v55;
  v44[1] = "image does not contain a CVPixelBuffer";
  v45 = &v55;
  v46 = "image does not contain a CVPixelBuffer";
  v47 = "image does not contain a CVPixelBuffer";
  v57 = v44;
  sub_271228A78(&v57);
  if (v56 == -1)
  {
    sub_2711308D4();
  }

  v44[0] = &v57;
  (off_28812EC30[v56])(v39, v44, &v55);
  if (v56 != -1)
  {
    (off_28812EBB8[v56])(v44, &v55);
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_271127178(v44, v39[0], v39[1]);
  }

  else
  {
    *v44 = *v39;
    v45 = v40;
  }

  LOBYTE(v46) = 1;
  LOBYTE(v47) = 0;
  v51 = 0;
  v52 = 1;
  sub_27112D480(0xCu, v44, &v58);
  *a2 = v58;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v68 == 1)
  {
    *(a2 + 40) = 0;
    v20 = v61;
    if (v61 == 1)
    {
      *(a2 + 16) = v59;
      *(a2 + 32) = v60;
      v60 = 0;
      v59 = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v21 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v67 & 1) == 0)
      {
LABEL_43:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v20)
        {
          goto LABEL_50;
        }

LABEL_48:
        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        goto LABEL_50;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v21 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v67 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v22 = v64;
    *(v21 + 16) = v63;
    *v21 = v62;
    v62 = 0uLL;
    *(a2 + 72) = v22;
    *(a2 + 80) = v65;
    *(a2 + 96) = v66;
    v63 = 0;
    v65 = 0uLL;
    v66 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v20)
    {
      goto LABEL_48;
    }
  }

  else
  {
    *(a2 + 120) = 0;
  }

LABEL_50:
  if (v52 == 1)
  {
    if (v51 == 1)
    {
      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }
    }

    if (v46 == 1 && SHIBYTE(v45) < 0)
    {
      operator delete(v44[0]);
    }
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

LABEL_61:
  v41 = &unk_288115A20;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  sub_2712CAF40(&v28);
  v24 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2711FE010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (*(v43 - 209) < 0)
  {
    operator delete(*(v43 - 232));
  }

  sub_2712CAF40(&a16);
  sub_27115475C(&a9);
  sub_27112F828(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_2711FE114(int a1)
{
  if (a1 > 1278226535)
  {
    if (a1 <= 1647589489)
    {
      if (a1 > 1380410944)
      {
        switch(a1)
        {
          case 1380410945:
            return 0x100000020;
          case 1380411457:
            return 0x10000001FLL;
          case 1647392359:
            return 0x100000002;
        }

        return 0;
      }

      if (a1 != 1278226536)
      {
        if (a1 == 1380401729)
        {
          return 0x10000001DLL;
        }

        return 0;
      }
    }

    else
    {
      if (a1 <= 1717856626)
      {
        if (a1 == 1647589490)
        {
          return 0x100000016;
        }

        if (a1 == 1647719521)
        {
          return 0x100000026;
        }

        v1 = 1717855600;
LABEL_22:
        if (a1 != v1)
        {
          return 0;
        }

        return 0x100000004;
      }

      if (a1 == 1717856627)
      {
        return 0x100000004;
      }

      if (a1 != 1751410032 && a1 != 1751411059)
      {
        return 0;
      }
    }

    return 0x100000003;
  }

  if (a1 <= 843264103)
  {
    if (a1 <= 842285638)
    {
      if (a1 == 24)
      {
        return 0x100000015;
      }

      if (a1 == 32)
      {
        return 0x100000025;
      }
    }

    else
    {
      switch(a1)
      {
        case 842285639:
          return 0x100000011;
        case 843264056:
          return 0x100000005;
        case 843264102:
          return 0x100000008;
      }
    }

    return 0;
  }

  if (a1 > 1111970368)
  {
    if (a1 == 1111970369)
    {
      return 0x100000019;
    }

    if (a1 == 1278226488)
    {
      return 0x100000001;
    }

    v1 = 1278226534;
    goto LABEL_22;
  }

  if (a1 == 843264104)
  {
    return 0x100000007;
  }

  if (a1 == 1094862674)
  {
    return 0x100000021;
  }

  return 0;
}

void sub_2711FE3E0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_271135560();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_2711FE700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711FE744(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3[1] > 0)
  {
    v8 = a2;
    v9 = "{";
    v10 = a2;
    v11 = "{";
    v12 = "{";
    v3 = *(a2 + 24);
    if (v3 != -1)
    {
      v13 = &v8;
      (*(&off_28812EC18 + v3))(&v13, a2);
      v5 = *a3;
      sub_2711FE4F8();
    }

LABEL_6:
    sub_2711308D4();
  }

  v8 = a2;
  v9 = "{}";
  v10 = a2;
  v11 = "{}";
  v12 = "{}";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v13 = &v8;
  return (off_28812EC00[v6])(&v13, a2);
}

size_t sub_2711FE8BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EBB8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_2711FE9C0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711FEDC0(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2711FEAC0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EBB8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711FEBB4(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812EBB8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711FED74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711FEDC0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2711FEF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2711FEF70(void *result)
{
  *result = &unk_288114498;
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

void *sub_2711FF004(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115630;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void *sub_2711FF0A0(void *a1, uint64_t *a2)
{
  *a1 = &unk_288114498;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_2711FF46C((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_2711FF1C0(void *a1)
{
  *a1 = &unk_288114498;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711FF294(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2711FF328(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711FF360(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115630;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2711FF40C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2711FF46C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v9);
  v6 = *(v9 + 16);
  *(a1 + 16) = *v9;
  *(a1 + 32) = v6;
  v9 = 0;
  MEMORY[0x2743BF050]();
  v7 = *(a1 + 8);
  if (!v7)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_2711FF5D8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 1;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2711FF720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2711FF734(void *result)
{
  *result = &unk_288114498;
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

void *sub_2711FF7C8(void *result)
{
  *result = &unk_288113ED8;
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

void *sub_2711FF85C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881153F0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void *sub_2711FF8F8(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113ED8;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_2711FFCC4((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_2711FFA18(void *a1)
{
  *a1 = &unk_288113ED8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711FFAEC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2711FFB80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711FFBB8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881153F0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2711FFC64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2711FFCC4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v9);
  v6 = *(v9 + 16);
  *(a1 + 16) = *v9;
  *(a1 + 32) = v6;
  v9 = 0;
  MEMORY[0x2743BF050]();
  v7 = *(a1 + 8);
  if (!v7)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_2711FFE30(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 2;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2711FFF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2711FFF8C(void *result)
{
  *result = &unk_288113ED8;
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

void *sub_271200020(void *result)
{
  *result = &unk_288113858;
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

void *sub_2712000B4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115990;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void *sub_271200150(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113858;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_27120051C((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271200270(void *a1)
{
  *a1 = &unk_288113858;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271200344(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712003D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271200410(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115990;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712004BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27120051C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v9);
  v6 = *(v9 + 16);
  *(a1 + 16) = *v9;
  *(a1 + 32) = v6;
  v9 = 0;
  MEMORY[0x2743BF050]();
  v7 = *(a1 + 8);
  if (!v7)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_271200688(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 3;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2712007D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712007E4(void *result)
{
  *result = &unk_288113858;
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

void *sub_271200878(void *result)
{
  *result = &unk_288113718;
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

void *sub_27120090C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881157E0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void *sub_2712009A8(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113718;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_271200D74((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271200AC8(void *a1)
{
  *a1 = &unk_288113718;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271200B9C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271200C30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271200C68(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881157E0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271200D14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271200D74(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v9);
  v6 = *(v9 + 16);
  *(a1 + 16) = *v9;
  *(a1 + 32) = v6;
  v9 = 0;
  MEMORY[0x2743BF050]();
  v7 = *(a1 + 8);
  if (!v7)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_271200EE0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 4;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271201028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_27120103C(void *result)
{
  *result = &unk_288113718;
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

void *sub_2712010D0(void *result)
{
  *result = &unk_288113618;
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

void *sub_271201164(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881155A0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271201200(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113618;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_2712015CC((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271201320(void *a1)
{
  *a1 = &unk_288113618;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712013F4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271201488(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712014C0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881155A0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27120156C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712015CC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_271201738(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 5;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271201880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_271201894(void *result)
{
  *result = &unk_288113618;
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

void *sub_271201928(void *result)
{
  *result = &unk_2881134D8;
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

void *sub_2712019BC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115900;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271201A58(void *a1, uint64_t *a2)
{
  *a1 = &unk_2881134D8;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_271201E24((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271201B78(void *a1)
{
  *a1 = &unk_2881134D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271201C4C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271201CE0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271201D18(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115900;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271201DC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271201E24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_271201F90(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 7;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2712020D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712020EC(void *result)
{
  *result = &unk_2881134D8;
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

void *sub_271202180(void *result)
{
  *result = &unk_2881133D8;
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

void *sub_271202214(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115750;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_2712022B0(void *a1, uint64_t *a2)
{
  *a1 = &unk_2881133D8;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_27120267C((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_2712023D0(void *a1)
{
  *a1 = &unk_2881133D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712024A4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271202538(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271202570(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115750;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27120261C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27120267C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_2712027E8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 8;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271202930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_271202944(void *result)
{
  *result = &unk_2881133D8;
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

void *sub_2712029D8(void *result)
{
  *result = &unk_288114358;
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

void *sub_271202A6C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115510;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271202B08(void *a1, uint64_t *a2)
{
  *a1 = &unk_288114358;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_271202ED4((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271202C28(void *a1)
{
  *a1 = &unk_288114358;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271202CFC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271202D90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271202DC8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115510;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271202E74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271202ED4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_271203040(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 21;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271203188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_27120319C(void *result)
{
  *result = &unk_288114358;
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

void *sub_271203230(void *result)
{
  *result = &unk_288114258;
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

void *sub_2712032C4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115360;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271203360(void *a1, uint64_t *a2)
{
  *a1 = &unk_288114258;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_27120372C((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271203480(void *a1)
{
  *a1 = &unk_288114258;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271203554(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2712035E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271203620(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115360;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712036CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27120372C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_271203898(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 22;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2712039E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712039F4(void *result)
{
  *result = &unk_288114258;
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

void *sub_271203A88(void *result)
{
  *result = &unk_2881140D8;
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

void *sub_271203B1C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115480;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271203BB8(void *a1, uint64_t *a2)
{
  *a1 = &unk_2881140D8;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_271203F84((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271203CD8(void *a1)
{
  *a1 = &unk_2881140D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271203DAC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271203E40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271203E78(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115480;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271203F24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271203F84(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_2712040F0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 25;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271204238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_27120424C(void *result)
{
  *result = &unk_2881140D8;
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

void *sub_2712042E0(void *result)
{
  *result = &unk_288113D98;
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

void *sub_271204374(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115870;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271204410(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113D98;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_2712047DC((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271204530(void *a1)
{
  *a1 = &unk_288113D98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271204604(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271204698(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712046D0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115870;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27120477C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712047DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_271204948(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 31;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271204A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_271204AA4(void *result)
{
  *result = &unk_288113D98;
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

void *sub_271204B38(void *result)
{
  *result = &unk_288113C98;
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

void *sub_271204BCC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881156C0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271204C68(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113C98;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_271205034((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271204D88(void *a1)
{
  *a1 = &unk_288113C98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271204E5C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271204EF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271204F28(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881156C0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271204FD4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_271205034(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_2712051A0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 32;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2712052E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712052FC(void *result)
{
  *result = &unk_288113C98;
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

void *sub_271205390(void *result)
{
  *result = &unk_288113A98;
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

void *sub_271205424(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115480;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_2712054C0(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113A98;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_27120588C((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_2712055E0(void *a1)
{
  *a1 = &unk_288113A98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712056B4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271205748(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271205780(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288115480;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27120582C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27120588C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_2712059F8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 37;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271205B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_271205B54(void *result)
{
  *result = &unk_288113A98;
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

void *sub_271205BE8(void *result)
{
  *result = &unk_288113998;
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

void *sub_271205C7C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881152D0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void *sub_271205D18(void *a1, uint64_t *a2)
{
  *a1 = &unk_288113998;
  v5 = *a2;
  if (v5)
  {
    operator new();
  }

  v6 = 0;
  *a2 = 0;
  sub_2712060E4((a1 + 1), &v5);
  v3 = v6;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_271205E38(void *a1)
{
  *a1 = &unk_288113998;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271205F0C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271205FA0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271205FD8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881152D0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2881337B0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271206084(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712060E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  (*(*v3 + 64))(&v10);
  v7 = v10[1];
  v6 = v10[2];
  *(a1 + 16) = *v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  v10 = 0;
  MEMORY[0x2743BF050]();
  v8 = *(a1 + 8);
  if (!v8)
  {
    return a1;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_271206250(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 38;
  *(a1 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271206398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712063AC(void *result)
{
  *result = &unk_288113998;
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

void (**sub_271206440(void (**a1)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*a1)
  {
    (*a1)(0, a1, 0, 0, 0);
  }

  return a1;
}

void sub_271206488(void *a1, int a2, uint64_t a3)
{
  v115 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v4 = &unk_288114458;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288114458;
      sub_27120A3E8(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_271208E98(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_2881144D8;
      sub_27120908C(&v110, v94);
      v5 = v110;
      v6 = v111;
      v95 = &unk_2881144D8;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      *&v99 = v113;
      LOBYTE(v100) = 1;
      LOBYTE(v107) = 0;
      v102 = &unk_28810E238;
      if (!v6)
      {
        v103 = v5;
        v104 = 0;
        v105 = v98;
        *&v106 = v99;
        LOBYTE(v107) = 1;
        goto LABEL_192;
      }

      p_shared_owners = &v6->__shared_owners_;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      *&v106 = v99;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v5;
      v104 = v6;
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_6;
        }
      }

      else
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_6:
          LOBYTE(v107) = 1;
          if ((v100 & 1) == 0)
          {
            goto LABEL_196;
          }

          goto LABEL_192;
        }
      }

      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      LOBYTE(v107) = 1;
      if ((v100 & 1) == 0)
      {
LABEL_196:
        v64 = v103;
        v77 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v78 = v64;
            (v77->__on_zero_shared)(v77);
            std::__shared_weak_count::__release_weak(v77);
            v64 = v78;
          }
        }

        goto LABEL_209;
      }

LABEL_192:
      v95 = &unk_2881144D8;
      v76 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v76->__on_zero_shared)(v76);
        std::__shared_weak_count::__release_weak(v76);
      }

      if (v107)
      {
        goto LABEL_196;
      }

      goto LABEL_244;
    case 2:
      v4 = &unk_288113E98;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113E98;
      sub_27120C7B8(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27120B268(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113F18;
      sub_27120B45C(&v110, v94);
      v35 = v110;
      v36 = v111;
      v95 = &unk_288113F18;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      *&v99 = v113;
      LOBYTE(v100) = 1;
      LOBYTE(v107) = 0;
      v102 = &unk_28810DBB8;
      if (!v36)
      {
        v103 = v35;
        v104 = 0;
        v105 = v98;
        *&v106 = v99;
        LOBYTE(v107) = 1;
        goto LABEL_202;
      }

      v37 = &v36->__shared_owners_;
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      *&v106 = v99;
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v35;
      v104 = v36;
      if (atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v37, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_66;
        }
      }

      else
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
        if (atomic_fetch_add(v37, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_66:
          LOBYTE(v107) = 1;
          if ((v100 & 1) == 0)
          {
            goto LABEL_206;
          }

          goto LABEL_202;
        }
      }

      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
      LOBYTE(v107) = 1;
      if ((v100 & 1) == 0)
      {
LABEL_206:
        v64 = v103;
        v80 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v64;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v64 = v81;
          }
        }

        goto LABEL_209;
      }

LABEL_202:
      v95 = &unk_288113F18;
      v79 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v79->__on_zero_shared)(v79);
        std::__shared_weak_count::__release_weak(v79);
      }

      if (v107)
      {
        goto LABEL_206;
      }

      goto LABEL_244;
    case 3:
      v4 = &unk_288113818;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113818;
      sub_27120E20C(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27120CCBC(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113898;
      sub_27120CEB0(&v110, v94);
      v23 = v110;
      v24 = v111;
      v95 = &unk_288113898;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      *&v99 = v113;
      LOBYTE(v100) = 1;
      LOBYTE(v107) = 0;
      v102 = &unk_28810D4F8;
      if (!v24)
      {
        v103 = v23;
        v104 = 0;
        v105 = v98;
        *&v106 = v99;
        LOBYTE(v107) = 1;
        goto LABEL_152;
      }

      v25 = &v24->__shared_owners_;
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      *&v106 = v99;
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v23;
      v104 = v24;
      if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_42;
        }
      }

      else
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
        if (atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_42:
          LOBYTE(v107) = 1;
          if ((v100 & 1) == 0)
          {
            goto LABEL_156;
          }

          goto LABEL_152;
        }
      }

      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      LOBYTE(v107) = 1;
      if ((v100 & 1) == 0)
      {
LABEL_156:
        v64 = v103;
        v65 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v66 = v64;
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
            v64 = v66;
          }
        }

        goto LABEL_209;
      }

LABEL_152:
      v95 = &unk_288113898;
      v63 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
      }

      if (v107)
      {
        goto LABEL_156;
      }

      goto LABEL_244;
    case 4:
      v4 = &unk_2881136D8;
      v94[0].__r_.__value_.__r.__words[0] = &unk_2881136D8;
      sub_27120FC60(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27120E710(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113758;
      sub_27120E904(&v110, v94);
      v32 = v110;
      v33 = v111;
      v95 = &unk_288113758;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      *&v99 = v113;
      LOBYTE(v100) = 1;
      LOBYTE(v107) = 0;
      v102 = &unk_28810D3B8;
      if (!v33)
      {
        v103 = v32;
        v104 = 0;
        v105 = v98;
        *&v106 = v99;
        LOBYTE(v107) = 1;
        goto LABEL_182;
      }

      v34 = &v33->__shared_owners_;
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      *&v106 = v99;
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v32;
      v104 = v33;
      if (atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v34, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_60;
        }
      }

      else
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
        if (atomic_fetch_add(v34, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_60:
          LOBYTE(v107) = 1;
          if ((v100 & 1) == 0)
          {
            goto LABEL_186;
          }

          goto LABEL_182;
        }
      }

      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      LOBYTE(v107) = 1;
      if ((v100 & 1) == 0)
      {
        goto LABEL_186;
      }

LABEL_182:
      v95 = &unk_288113758;
      v73 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
      }

      if ((v107 & 1) == 0)
      {
        goto LABEL_244;
      }

LABEL_186:
      v64 = v103;
      v74 = v104;
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v75 = v64;
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
          v64 = v75;
        }
      }

LABEL_209:
      sub_271545F0C(v64, a1);
      if ((v107 & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_241;
    case 5:
      v4 = &unk_2881135D8;
      v94[0].__r_.__value_.__r.__words[0] = &unk_2881135D8;
      sub_271211738(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_2712101E0(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113658;
      sub_2712103D4(&v110, v94);
      v14 = v110;
      v15 = v111;
      v95 = &unk_288113658;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810D2F8;
      if (!v15)
      {
        v103 = v14;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_122;
      }

      v16 = &v15->__shared_owners_;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v14;
      v104 = v15;
      if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v16, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_24;
        }
      }

      else
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        if (atomic_fetch_add(v16, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_24:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_122;
        }
      }

      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_126:
        v48 = v103;
        v55 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v56 = v48;
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
            v48 = v56;
          }
        }

        goto LABEL_240;
      }

LABEL_122:
      v95 = &unk_288113658;
      v54 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v54->__on_zero_shared)(v54);
        std::__shared_weak_count::__release_weak(v54);
      }

      if (v108)
      {
        goto LABEL_126;
      }

      goto LABEL_244;
    case 7:
      v4 = &unk_288113498;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113498;
      sub_271213224(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_271211CCC(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113518;
      sub_271211EC0(&v110, v94);
      v38 = v110;
      v39 = v111;
      v95 = &unk_288113518;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810D1B8;
      if (!v39)
      {
        v103 = v38;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_213;
      }

      v40 = &v39->__shared_owners_;
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v38;
      v104 = v39;
      if (atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v40, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_72;
        }
      }

      else
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
        if (atomic_fetch_add(v40, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_72:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_217;
          }

          goto LABEL_213;
        }
      }

      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_217:
        v48 = v103;
        v83 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v84 = v48;
            (v83->__on_zero_shared)(v83);
            std::__shared_weak_count::__release_weak(v83);
            v48 = v84;
          }
        }

        goto LABEL_240;
      }

LABEL_213:
      v95 = &unk_288113518;
      v82 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v82->__on_zero_shared)(v82);
        std::__shared_weak_count::__release_weak(v82);
      }

      if (v108)
      {
        goto LABEL_217;
      }

      goto LABEL_244;
    case 8:
      v4 = &unk_288113398;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113398;
      sub_271214D14(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_2712137BC(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113418;
      sub_2712139B0(&v110, v94);
      v26 = v110;
      v27 = v111;
      v95 = &unk_288113418;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810D0F8;
      if (!v27)
      {
        v103 = v26;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_162;
      }

      v28 = &v27->__shared_owners_;
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v26;
      v104 = v27;
      if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v28, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_48;
        }
      }

      else
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
        if (atomic_fetch_add(v28, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_48:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_166;
          }

          goto LABEL_162;
        }
      }

      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_166:
        v48 = v103;
        v68 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v48;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v48 = v69;
          }
        }

        goto LABEL_240;
      }

LABEL_162:
      v95 = &unk_288113418;
      v67 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v67->__on_zero_shared)(v67);
        std::__shared_weak_count::__release_weak(v67);
      }

      if (v108)
      {
        goto LABEL_166;
      }

      goto LABEL_244;
    case 21:
      v4 = &unk_288114318;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288114318;
      sub_271216804(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_2712152AC(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288114398;
      sub_2712154A0(&v110, v94);
      v11 = v110;
      v12 = v111;
      v95 = &unk_288114398;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810E0F8;
      if (!v12)
      {
        v103 = v11;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_112;
      }

      v13 = &v12->__shared_owners_;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v11;
      v104 = v12;
      if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }
      }

      else
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
        if (atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_18:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_116;
          }

          goto LABEL_112;
        }
      }

      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_116:
        v48 = v103;
        v52 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v53 = v48;
            (v52->__on_zero_shared)(v52);
            std::__shared_weak_count::__release_weak(v52);
            v48 = v53;
          }
        }

        goto LABEL_240;
      }

LABEL_112:
      v95 = &unk_288114398;
      v51 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
      }

      if (v108)
      {
        goto LABEL_116;
      }

      goto LABEL_244;
    case 22:
      v4 = &unk_288114218;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288114218;
      sub_2712182F0(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_271216D98(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288114298;
      sub_271216F8C(&v110, v94);
      v17 = v110;
      v18 = v111;
      v95 = &unk_288114298;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810E038;
      if (!v18)
      {
        v103 = v17;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_132;
      }

      v19 = &v18->__shared_owners_;
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v17;
      v104 = v18;
      if (atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v19, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_30;
        }
      }

      else
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        if (atomic_fetch_add(v19, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_30:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_136;
          }

          goto LABEL_132;
        }
      }

      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_136:
        v48 = v103;
        v58 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v59 = v48;
            (v58->__on_zero_shared)(v58);
            std::__shared_weak_count::__release_weak(v58);
            v48 = v59;
          }
        }

        goto LABEL_240;
      }

LABEL_132:
      v95 = &unk_288114298;
      v57 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v57->__on_zero_shared)(v57);
        std::__shared_weak_count::__release_weak(v57);
      }

      if (v108)
      {
        goto LABEL_136;
      }

      goto LABEL_244;
    case 25:
      v4 = &unk_288114098;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288114098;
      sub_271219DE0(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_271218888(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288114118;
      sub_271218A7C(&v110, v94);
      v20 = v110;
      v21 = v111;
      v95 = &unk_288114118;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810DE78;
      if (!v21)
      {
        v103 = v20;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_142;
      }

      v22 = &v21->__shared_owners_;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v20;
      v104 = v21;
      if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v22, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_36;
        }
      }

      else
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        if (atomic_fetch_add(v22, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_36:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_146;
          }

          goto LABEL_142;
        }
      }

      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_146:
        v48 = v103;
        v61 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v62 = v48;
            (v61->__on_zero_shared)(v61);
            std::__shared_weak_count::__release_weak(v61);
            v48 = v62;
          }
        }

        goto LABEL_240;
      }

LABEL_142:
      v95 = &unk_288114118;
      v60 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v60->__on_zero_shared)(v60);
        std::__shared_weak_count::__release_weak(v60);
      }

      if (v108)
      {
        goto LABEL_146;
      }

      goto LABEL_244;
    case 31:
      v4 = &unk_288113D58;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113D58;
      sub_27121B8CC(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27121A374(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113DD8;
      sub_27121A568(&v110, v94);
      v29 = v110;
      v30 = v111;
      v95 = &unk_288113DD8;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810DA78;
      if (!v30)
      {
        v103 = v29;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_172;
      }

      v31 = &v30->__shared_owners_;
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v29;
      v104 = v30;
      if (atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v31, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_54;
        }
      }

      else
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
        if (atomic_fetch_add(v31, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_54:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_176;
          }

          goto LABEL_172;
        }
      }

      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_176:
        v48 = v103;
        v71 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v72 = v48;
            (v71->__on_zero_shared)(v71);
            std::__shared_weak_count::__release_weak(v71);
            v48 = v72;
          }
        }

        goto LABEL_240;
      }

LABEL_172:
      v95 = &unk_288113DD8;
      v70 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v70->__on_zero_shared)(v70);
        std::__shared_weak_count::__release_weak(v70);
      }

      if (v108)
      {
        goto LABEL_176;
      }

      goto LABEL_244;
    case 32:
      v4 = &unk_288113C58;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113C58;
      sub_27121D3BC(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27121BE64(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113CD8;
      sub_27121C058(&v110, v94);
      v44 = v110;
      v45 = v111;
      v95 = &unk_288113CD8;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810D9B8;
      if (!v45)
      {
        v103 = v44;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_233;
      }

      v46 = &v45->__shared_owners_;
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v44;
      v104 = v45;
      if (atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v46, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_84;
        }
      }

      else
      {
        (v45->__on_zero_shared)(v45);
        std::__shared_weak_count::__release_weak(v45);
        if (atomic_fetch_add(v46, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_84:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_237;
          }

          goto LABEL_233;
        }
      }

      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_237:
        v48 = v103;
        v89 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v90 = v48;
            (v89->__on_zero_shared)(v89);
            std::__shared_weak_count::__release_weak(v89);
            v48 = v90;
          }
        }

        goto LABEL_240;
      }

LABEL_233:
      v95 = &unk_288113CD8;
      v88 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v88->__on_zero_shared)(v88);
        std::__shared_weak_count::__release_weak(v88);
      }

      if (v108)
      {
        goto LABEL_237;
      }

      goto LABEL_244;
    case 37:
      v4 = &unk_288113A58;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113A58;
      sub_27121EEAC(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27121D954(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_288113AD8;
      sub_27121DB48(&v110, v94);
      v41 = v110;
      v42 = v111;
      v95 = &unk_288113AD8;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810D6F8;
      if (!v42)
      {
        v103 = v41;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_223;
      }

      v43 = &v42->__shared_owners_;
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v41;
      v104 = v42;
      if (atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v43, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_78;
        }
      }

      else
      {
        (v42->__on_zero_shared)(v42);
        std::__shared_weak_count::__release_weak(v42);
        if (atomic_fetch_add(v43, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_78:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_227;
          }

          goto LABEL_223;
        }
      }

      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
LABEL_227:
        v48 = v103;
        v86 = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v48;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v48 = v87;
          }
        }

        goto LABEL_240;
      }

LABEL_223:
      v95 = &unk_288113AD8;
      v85 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v85->__on_zero_shared)(v85);
        std::__shared_weak_count::__release_weak(v85);
      }

      if (v108)
      {
        goto LABEL_227;
      }

LABEL_244:
      a1[1] = 0;
      a1[2] = 0;
      *a1 = &unk_288115A20;
      goto LABEL_245;
    case 38:
      v4 = &unk_288113958;
      v94[0].__r_.__value_.__r.__words[0] = &unk_288113958;
      sub_271220998(&v94[0].__r_.__value_.__l.__size_, a3);
      if (!sub_27121F440(v94[0].__r_.__value_.__l.__size_, v94[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_244;
      }

      v109 = &unk_2881139D8;
      sub_27121F634(&v110, v94);
      v8 = v110;
      v9 = v111;
      v95 = &unk_2881139D8;
      v96 = v110;
      v97 = v111;
      v110 = 0;
      v111 = 0;
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = 1;
      v108 = 0;
      v102 = &unk_28810D638;
      if (!v9)
      {
        v103 = v8;
        v104 = 0;
        v105 = v98;
        v106 = v99;
        v107 = v100;
        v108 = 1;
        goto LABEL_102;
      }

      v10 = &v9->__shared_owners_;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = v98;
      v106 = v99;
      v107 = v100;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v103 = v8;
      v104 = v9;
      if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_12;
        }
      }

      else
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_12:
          v108 = 1;
          if ((v101 & 1) == 0)
          {
            goto LABEL_106;
          }

          goto LABEL_102;
        }
      }

      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v108 = 1;
      if ((v101 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_102:
      v95 = &unk_2881139D8;
      v47 = v97;
      if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
      }

      if ((v108 & 1) == 0)
      {
        goto LABEL_244;
      }

LABEL_106:
      v48 = v103;
      v49 = v104;
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v50 = v48;
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
          v48 = v50;
        }
      }

LABEL_240:
      sub_271545F0C(v48, a1);
      if (v108)
      {
LABEL_241:
        v91 = v104;
        if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }
      }

LABEL_245:
      v94[0].__r_.__value_.__r.__words[0] = v4;
      v92 = v94[0].__r_.__value_.__r.__words[2];
      if (v94[0].__r_.__value_.__r.__words[2] && !atomic_fetch_add((v94[0].__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v92->__on_zero_shared)(v92);
        std::__shared_weak_count::__release_weak(v92);
      }

      v93 = *MEMORY[0x277D85DE8];
      return;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2712089CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_27121BDD0(&a10);
  _Unwind_Resume(a1);
}

void sub_2712089E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_27121D8C0(&a10);
  _Unwind_Resume(a1);
}

void sub_271208A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_271211C38(&a10);
  _Unwind_Resume(a1);
}

void sub_271208A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271208E1C(&a31);
  sub_27120B1D4(&a10);
  _Unwind_Resume(a1);
}

void sub_271208A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271208E1C(&a31);
  sub_271208D88(&a10);
  _Unwind_Resume(a1);
}

void sub_271208A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271208E1C(&a31);
  sub_27120E67C(&a10);
  _Unwind_Resume(a1);
}

void sub_271208A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_27121A2E0(&a10);
  _Unwind_Resume(a1);
}

void sub_271208A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_271213728(&a10);
  _Unwind_Resume(a1);
}

void sub_271208AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271208E1C(&a31);
  sub_27120CC28(&a10);
  _Unwind_Resume(a1);
}

void sub_271208AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_2712187F4(&a10);
  _Unwind_Resume(a1);
}

void sub_271208AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_271216D04(&a10);
  _Unwind_Resume(a1);
}

void sub_271208B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_2712100D0(&a10);
  _Unwind_Resume(a1);
}

void sub_271208B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_271215218(&a10);
  _Unwind_Resume(a1);
}

void sub_271208B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_271210164(&a31);
  sub_27121F3AC(&a10);
  _Unwind_Resume(a1);
}

void sub_271208B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121BDD0(va);
  _Unwind_Resume(a1);
}

void sub_271208B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121D8C0(va);
  _Unwind_Resume(a1);
}

void sub_271208B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271211C38(va);
  _Unwind_Resume(a1);
}

void sub_271208B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27120B1D4(va);
  _Unwind_Resume(a1);
}

void sub_271208BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27120E67C(va);
  _Unwind_Resume(a1);
}

void sub_271208BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121A2E0(va);
  _Unwind_Resume(a1);
}

void sub_271208BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271213728(va);
  _Unwind_Resume(a1);
}

void sub_271208BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271208D88(va);
  _Unwind_Resume(a1);
}

void sub_271208BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27120CC28(va);
  _Unwind_Resume(a1);
}

void sub_271208C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712187F4(va);
  _Unwind_Resume(a1);
}

void sub_271208C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271216D04(va);
  _Unwind_Resume(a1);
}

void sub_271208C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712100D0(va);
  _Unwind_Resume(a1);
}

void sub_271208C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271215218(va);
  _Unwind_Resume(a1);
}

void sub_271208C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121F3AC(va);
  _Unwind_Resume(a1);
}

void sub_271208C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121BDD0(va);
  _Unwind_Resume(a1);
}

void sub_271208C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121D8C0(va);
  _Unwind_Resume(a1);
}

void sub_271208C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271211C38(va);
  _Unwind_Resume(a1);
}

void sub_271208CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27120B1D4(va);
  _Unwind_Resume(a1);
}

void sub_271208CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27120E67C(va);
  _Unwind_Resume(a1);
}

void sub_271208CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121A2E0(va);
  _Unwind_Resume(a1);
}

void sub_271208CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271208D88(va);
  _Unwind_Resume(a1);
}

void sub_271208CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271213728(va);
  _Unwind_Resume(a1);
}

void sub_271208D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27120CC28(va);
  _Unwind_Resume(a1);
}

void sub_271208D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712187F4(va);
  _Unwind_Resume(a1);
}

void sub_271208D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271216D04(va);
  _Unwind_Resume(a1);
}

void sub_271208D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712100D0(va);
  _Unwind_Resume(a1);
}

void sub_271208D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271215218(va);
  _Unwind_Resume(a1);
}

void sub_271208D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27121F3AC(va);
  _Unwind_Resume(a1);
}

void *sub_271208D88(void *result)
{
  *result = &unk_288114458;
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

uint64_t sub_271208E1C(uint64_t result)
{
  if (*(result + 56) == 1)
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
  }

  return result;
}

BOOL sub_271208E98(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124AD0, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_271208FF8(void *result)
{
  *result = &unk_2881144D8;
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

void sub_27120908C(uint64_t a1, std::string *a2)
{
  size = a2->__r_.__value_.__l.__size_;
  v5 = a2->__r_.__value_.__r.__words[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!size || (v6 = **size, (v7 = __dynamic_cast(size, &unk_288123908, &unk_288124AD0, 0)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27120943C(&v9, a2);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = a2[1];
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    *(a1 + 16) = v9;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = *&a2[1].__r_.__value_.__l.__data_;
    *(a1 + 32) = *(&a2[1].__r_.__value_.__l + 2);
  }
}

void sub_271209290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(&a11);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_2712092D8(void *a1)
{
  *a1 = &unk_2881144D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712093AC(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120943C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2D0))
  {
    sub_271209808();
  }

  if ((atomic_load_explicit(&qword_28087B2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2D8))
  {
    sub_271209C38();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B3F7;
  if (byte_28087B3F7 >= 0)
  {
    v5 = &qword_28087B3E0;
  }

  else
  {
    v4 = unk_28087B3E8;
    v5 = qword_28087B3E0;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B40F;
  v7 = &qword_28087B3F8;
  if (byte_28087B40F < 0)
  {
    v6 = qword_28087B400;
    v7 = qword_28087B3F8;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2712097E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271209808()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Gray8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271209ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271209CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271209CC4()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271209F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
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
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27120A0B0(uint64_t result)
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

void sub_27120A128(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120A1E0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27120A284(void *a1)
{
  *a1 = &unk_288114458;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120A358(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120A3E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27120A748(&v16, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v16.__r_.__value_.__r.__words[0] = v4;
      v16.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v16.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v8 = *(a2 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a2 + 52);
  size = v16.__r_.__value_.__l.__size_;
  if (v16.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v16.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    *a1 = *&v16.__r_.__value_.__l.__data_;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
    if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);

      std::__shared_weak_count::__release_weak(size);
    }
  }

  else
  {
    *a1 = v16.__r_.__value_.__r.__words[0];
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
  }
}

void sub_27120A6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_27120A748(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2D8))
  {
    sub_271209C38();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B3F8, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void sub_27120A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = v9;
  v12 = a1;
  v13 = v9;
  v14 = a1;
  v15 = a1;
  v16 = &v11;
  sub_2711F46D0(&v16);
  v11 = v9;
  v12 = a2;
  v13 = v9;
  v14 = a2;
  v15 = a2;
  if (v10 != -1)
  {
    v16 = &v11;
    (off_28812EC48[v10])(&v16, v9);
    v11 = v9;
    v12 = a3;
    v13 = v9;
    v14 = a3;
    v15 = a3;
    if (v10 != -1)
    {
      v16 = &v11;
      (off_28812EC60[v10])(&v16, v9);
      v11 = v9;
      v12 = a4;
      v13 = v9;
      v14 = a4;
      v15 = a4;
      if (v10 != -1)
      {
        v16 = &v11;
        (off_28812EC48[v10])(&v16, v9);
        v11 = v9;
        v12 = a5;
        v13 = v9;
        v14 = a5;
        v15 = a5;
        if (v10 != -1)
        {
          v16 = &v11;
          (off_28812EC78[v10])(&v16, v9);
          sub_27120AACC();
        }

        sub_2711308D4();
      }

      sub_2711308D4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_27120AD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120ADCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120ADE8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Dynamic]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120B08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
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
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void *sub_27120B1D4(void *result)
{
  *result = &unk_288113E98;
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

BOOL sub_27120B268(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_288124A70, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27120B3C8(void *result)
{
  *result = &unk_288113F18;
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

void sub_27120B45C(uint64_t a1, std::string *a2)
{
  size = a2->__r_.__value_.__l.__size_;
  v5 = a2->__r_.__value_.__r.__words[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!size || (v6 = **size, (v7 = __dynamic_cast(size, &unk_288123908, &unk_288124A70, 0)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27120B80C(&v9, a2);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = a2[1];
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    *(a1 + 16) = v9;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = *&a2[1].__r_.__value_.__l.__data_;
    *(a1 + 32) = *(&a2[1].__r_.__value_.__l + 2);
  }
}

void sub_27120B660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(&a11);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_27120B6A8(void *a1)
{
  *a1 = &unk_288113F18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120B77C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120B80C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2E0))
  {
    sub_27120BBD8();
  }

  if ((atomic_load_explicit(&qword_28087B2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2E8))
  {
    sub_27120C008();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B427;
  if (byte_28087B427 >= 0)
  {
    v5 = &qword_28087B410;
  }

  else
  {
    v4 = unk_28087B418;
    v5 = qword_28087B410;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B43F;
  v7 = &qword_28087B428;
  if (byte_28087B43F < 0)
  {
    v6 = qword_28087B430;
    v7 = qword_28087B428;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27120BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120BBD8()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Gray16u]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120BEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27120C078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120C094()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray16u]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120C338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
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
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27120C480(uint64_t result)
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

void sub_27120C4F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120C5B0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27120C654(void *a1)
{
  *a1 = &unk_288113E98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120C728(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120C7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27120CB1C(&v16, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v16.__r_.__value_.__r.__words[0] = v4;
      v16.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v16.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a2 + 52);
  size = v16.__r_.__value_.__l.__size_;
  if (v16.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v16.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    *a1 = *&v16.__r_.__value_.__l.__data_;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
    if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);

      std::__shared_weak_count::__release_weak(size);
    }
  }

  else
  {
    *a1 = v16.__r_.__value_.__r.__words[0];
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
  }
}

void sub_27120CACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_27120CB1C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2E8))
  {
    sub_27120C008();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B428, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_27120CC28(void *result)
{
  *result = &unk_288113818;
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

BOOL sub_27120CCBC(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_2881249F8, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27120CE1C(void *result)
{
  *result = &unk_288113898;
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

void sub_27120CEB0(uint64_t a1, std::string *a2)
{
  size = a2->__r_.__value_.__l.__size_;
  v5 = a2->__r_.__value_.__r.__words[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!size || (v6 = **size, (v7 = __dynamic_cast(size, &unk_288123908, &unk_2881249F8, 0)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27120D260(&v9, a2);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = a2[1];
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    *(a1 + 16) = v9;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = *&a2[1].__r_.__value_.__l.__data_;
    *(a1 + 32) = *(&a2[1].__r_.__value_.__l + 2);
  }
}

void sub_27120D0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(&a11);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_27120D0FC(void *a1)
{
  *a1 = &unk_288113898;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120D1D0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120D260(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2F0))
  {
    sub_27120D62C();
  }

  if ((atomic_load_explicit(&qword_28087B2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2F8))
  {
    sub_27120DA5C();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B457;
  if (byte_28087B457 >= 0)
  {
    v5 = &qword_28087B440;
  }

  else
  {
    v4 = unk_28087B448;
    v5 = qword_28087B440;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B46F;
  v7 = &qword_28087B458;
  if (byte_28087B46F < 0)
  {
    v6 = qword_28087B460;
    v7 = qword_28087B458;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27120D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120D62C()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Gray16f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120D900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27120DACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120DAE8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120DD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
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
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27120DED4(uint64_t result)
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

void sub_27120DF4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120E004(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27120E0A8(void *a1)
{
  *a1 = &unk_288113818;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120E17C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120E20C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27120E570(&v16, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v16.__r_.__value_.__r.__words[0] = v4;
      v16.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v16.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a2 + 52);
  size = v16.__r_.__value_.__l.__size_;
  if (v16.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v16.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    *a1 = *&v16.__r_.__value_.__l.__data_;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
    if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);

      std::__shared_weak_count::__release_weak(size);
    }
  }

  else
  {
    *a1 = v16.__r_.__value_.__r.__words[0];
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
  }
}

void sub_27120E520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_27120E570(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2F8))
  {
    sub_27120DA5C();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B458, " from an ", &qword_2808780D8, " but the image is of incompatible format ");
}

void *sub_27120E67C(void *result)
{
  *result = &unk_2881136D8;
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

BOOL sub_27120E710(char **a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = **a1, (v4 = __dynamic_cast(a1, &unk_288123908, &unk_2881249E0, 0)) != 0))
  {
    v8 = v4;
    v9 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v5 = 0;
      return v5 != 0;
    }
  }

  v5 = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v5 != 0;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v8 != 0;
}

void *sub_27120E870(void *result)
{
  *result = &unk_288113758;
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

void sub_27120E904(uint64_t a1, std::string *a2)
{
  size = a2->__r_.__value_.__l.__size_;
  v5 = a2->__r_.__value_.__r.__words[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!size || (v6 = **size, (v7 = __dynamic_cast(size, &unk_288123908, &unk_2881249E0, 0)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27120ECB4(&v9, a2);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = a2[1];
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v7;
    *(a1 + 8) = v5;
    *(a1 + 16) = v9;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = *&a2[1].__r_.__value_.__l.__data_;
    *(a1 + 32) = *(&a2[1].__r_.__value_.__l + 2);
  }
}

void sub_27120EB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(&a11);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_27120EB50(void *a1)
{
  *a1 = &unk_288113758;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120EC24(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120ECB4(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B300))
  {
    sub_27120F080();
  }

  if ((atomic_load_explicit(&qword_28087B308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B308))
  {
    sub_27120F4B0();
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = byte_28087B487;
  if (byte_28087B487 >= 0)
  {
    v5 = &qword_28087B470;
  }

  else
  {
    v4 = unk_28087B478;
    v5 = qword_28087B470;
  }

  v24 = v5;
  v25 = v4;
  v26 = " from an ";
  v27 = 9;
  v6 = byte_28087B49F;
  v7 = &qword_28087B488;
  if (byte_28087B49F < 0)
  {
    v6 = qword_28087B490;
    v7 = qword_28087B488;
  }

  v28[0] = v7;
  v28[1] = v6;
  sub_271131230(&v22, &v29, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v11;
    v27 = v12;
    sub_271131230(&v22, v28, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = v17 + 46;
  if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v18 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v18;
  if (v16 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v19, v17);
  strcpy((a1 + v17), " but the other image does not contain a buffer");
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_27120F05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120F080()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Gray32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120F354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27120F520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27120F53C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Gray32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_27184BC8C(&__p, "cv3d::kit::img::", 16, "", 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27120F7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
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
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27120F928(uint64_t result)
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

void sub_27120F9A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120FA58(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27120FAFC(void *a1)
{
  *a1 = &unk_2881136D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27120FBD0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27120FC60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 4)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27120FFC4(&v16, a2);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v16.__r_.__value_.__r.__words[0] = v4;
      v16.__r_.__value_.__l.__size_ = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *&v16.__r_.__value_.__l.__data_ = v4;
    }
  }

  else
  {
    *&v16.__r_.__value_.__l.__data_ = 0uLL;
  }

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (!*(a2 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a2 + 32) << 30) & 0x3FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a2 + 52);
  size = v16.__r_.__value_.__l.__size_;
  if (v16.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v16.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    *a1 = *&v16.__r_.__value_.__l.__data_;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
    if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);

      std::__shared_weak_count::__release_weak(size);
    }
  }

  else
  {
    *a1 = v16.__r_.__value_.__r.__words[0];
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 40) = v14;
  }
}