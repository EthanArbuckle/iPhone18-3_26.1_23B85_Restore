void sub_2209936B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a26);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a30);
  _Unwind_Resume(a1);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v58 = a2;
  v59 = a1;
  v56 = a4;
  v57 = a3;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = *(a4 + 1);
  v52 = *a4;
  v53 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a4 + 3);
  v54 = *(a4 + 2);
  v55 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 1);
  v48 = *a3;
  v49 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a3 + 3);
  v50 = *(a3 + 2);
  v51 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v10(&v52, &v48);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v15)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v57, &v56);
    v16 = *a5;
    v17 = v57;
    v18 = *(v57 + 1);
    v44 = *v57;
    v45 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    v46 = v20;
    v47 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(a2 + 1);
    v40 = *a2;
    v41 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a2 + 3);
    v42 = *(a2 + 2);
    v43 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v16(&v44, &v40);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v23)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v58, &v57);
      v24 = *a5;
      v25 = v58;
      v26 = *(v58 + 1);
      v36 = *v58;
      v37 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v38 = v28;
      v39 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(a1 + 1);
      v32 = *a1;
      v33 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(a1 + 3);
      v34 = *(a1 + 2);
      v35 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = v24(&v36, &v32);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v31)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v59, &v58);
      }
    }
  }
}

void sub_22099398C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a9);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a13);
  _Unwind_Resume(a1);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v78 = a2;
  v79 = a1;
  v76 = a4;
  v77 = a3;
  v75 = a5;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(a1, a2, a3, a4, a6);
  v11 = *a6;
  v12 = *(a5 + 1);
  v71 = *a5;
  v72 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a5 + 3);
  v73 = *(a5 + 2);
  v74 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a4 + 1);
  v67 = *a4;
  v68 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a4 + 3);
  v69 = *(a4 + 2);
  v70 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v11(&v71, &v67);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v76, &v75);
    v17 = *a6;
    v18 = v76;
    v19 = *(v76 + 1);
    v63 = *v76;
    v64 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    v65 = v21;
    v66 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v77;
    v23 = *(v77 + 1);
    v59 = *v77;
    v60 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v61 = v25;
    v62 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v17(&v63, &v59);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    if (v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v77, &v76);
      v27 = *a6;
      v28 = v77;
      v29 = *(v77 + 1);
      v55 = *v77;
      v56 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      v57 = v31;
      v58 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *(a2 + 1);
      v51 = *a2;
      v52 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = *(a2 + 3);
      v53 = *(a2 + 2);
      v54 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = v27(&v55, &v51);
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v78, &v77);
        v35 = *a6;
        v36 = v78;
        v37 = *(v78 + 1);
        v47 = *v78;
        v48 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        v49 = v39;
        v50 = v38;
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = *(a1 + 1);
        v43 = *a1;
        v44 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = *(a1 + 3);
        v45 = *(a1 + 2);
        v46 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v35(&v47, &v43);
        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        if (v42)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v79, &v78);
        }
      }
    }
  }
}

void sub_220993D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va1);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 4;
  if (a1 + 4 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v5;
    v10 = *a3;
    v11 = v8[5];
    v49 = v8[4];
    v50 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8[7];
    v13 = v8 + 6;
    v51 = v8[6];
    v52 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v8[1];
    v45 = *v8;
    v46 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v8[2];
    v15 = v8[3];
    v47 = v16;
    v48 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v10(&v49, &v45);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (!v17)
    {
      goto LABEL_56;
    }

    v18 = *v9;
    *v9 = 0;
    v9[1] = 0;
    v19 = *v13;
    v43 = v18;
    v44 = v19;
    *v13 = 0;
    v13[1] = 0;
    for (i = v7; ; i -= 32)
    {
      v21 = a1 + i;
      v22 = *(a1 + i);
      *v21 = 0;
      *(v21 + 1) = 0;
      v23 = *(a1 + i + 40);
      *(v21 + 2) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v24 = *(v21 + 1);
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      v25 = *(v21 + 7);
      *(v21 + 3) = v24;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v26 = v43;
      if (!i)
      {
        v33 = a1;
        goto LABEL_48;
      }

      v27 = *a3;
      v41 = v43;
      if (*(&v43 + 1))
      {
        atomic_fetch_add_explicit((*(&v43 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v42 = v44;
      if (*(&v44 + 1))
      {
        atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v28 = a1 + i;
      v29 = *(a1 + i - 24);
      v37 = *(a1 + i - 32);
      v38 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(v28 - 2);
      v30 = *(v28 - 1);
      v39 = v31;
      v40 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = v27(&v41, &v37);
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (*(&v42 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
      }

      if (!*(&v41 + 1))
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v41 + 1));
      if ((v32 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_45:
      ;
    }

    if (v32)
    {
      goto LABEL_45;
    }

LABEL_47:
    v33 = a1 + i;
LABEL_48:
    v43 = 0uLL;
    v34 = *(v33 + 1);
    *v33 = v26;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v35 = v44;
    v44 = 0uLL;
    *(a1 + i + 16) = v35;
    v36 = *(v33 + 3);
    *(v33 + 3) = *(&v35 + 1);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (*(&v44 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
    }

    if (*(&v43 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
    }

LABEL_56:
    v5 = v9 + 4;
    v7 += 32;
    v8 = v9;
  }

  while (v9 + 4 != a2);
}

void sub_220993FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v14 - 120));
  _Unwind_Resume(a1);
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(void *result, void *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (result != a2)
  {
    v4 = result + 4;
    if (result + 4 != a2)
    {
      v6 = (result + 7);
      do
      {
        v7 = v4;
        v8 = *a3;
        v9 = result[5];
        v42 = result[4];
        v43 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = result[7];
        v11 = result + 6;
        v44 = result[6];
        v45 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = result[1];
        v38 = *result;
        v39 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = result[3];
        v40 = result[2];
        v41 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v8(&v42, &v38);
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v14)
        {
          v15 = *v7;
          *v7 = 0;
          v7[1] = 0;
          v16 = *v11;
          v36 = v15;
          v37 = v16;
          *v11 = 0;
          v11[1] = 0;
          v17 = v6;
          do
          {
            v18 = *(v17 - 7);
            *(v17 - 7) = 0;
            *(v17 - 6) = 0;
            v19 = *(v17 - 2);
            *(v17 - 3) = v18;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            v20 = *(v17 - 5);
            *(v17 - 5) = 0;
            *(v17 - 4) = 0;
            v21 = *v17;
            *(v17 - 1) = v20;
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            v22 = *a3;
            v23 = v36;
            v34 = v36;
            if (*(&v36 + 1))
            {
              atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v35 = v37;
            if (*(&v37 + 1))
            {
              atomic_fetch_add_explicit((*(&v37 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v24 = *(v17 - 10);
            v30 = *(v17 - 11);
            v31 = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v25 = *(v17 - 8);
            v32 = *(v17 - 9);
            v33 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v26 = v22(&v34, &v30);
            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            if (*(&v35 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
            }

            if (*(&v34 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
            }

            v17 -= 4;
          }

          while ((v26 & 1) != 0);
          v36 = 0uLL;
          v27 = *(v17 - 2);
          *(v17 - 3) = v23;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          v28 = v37;
          v37 = 0uLL;
          v29 = *v17;
          *(v17 - 1) = v28;
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (*(&v37 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
          }

          if (*(&v36 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
          }
        }

        v4 = v7 + 4;
        v6 += 4;
        result = v7;
      }

      while (v7 + 4 != a2);
    }
  }

  return result;
}

void sub_220994254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v14 - 120));
  _Unwind_Resume(a1);
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,cgm::token_generation_inference::ajax::utils::StreamOpPair *,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair)>(uint64_t a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v102 = a2;
  i = a1;
  v5 = *a1;
  v6 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v57 = v5;
  v58 = v6;
  v100 = v5;
  v101 = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = *a3;
  v98 = v5;
  v8 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v99 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 - 3);
  v94 = *(a2 - 4);
  v95 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 - 1);
  v96 = *(a2 - 2);
  v97 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v7(&v98, &v94);
  if (v97)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v97);
  }

  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v95);
  }

  if (*(&v99 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v99 + 1));
  }

  if (*(&v98 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v98 + 1));
  }

  if (v11)
  {
    do
    {
      v12 = i;
      i += 2;
      v13 = *a3;
      v91 = v57;
      v92 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v93 = v58;
      if (*(&v58 + 1))
      {
        atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(v12 + 5);
      v87 = *(v12 + 4);
      v88 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(v12 + 6);
      v15 = *(v12 + 7);
      v89 = v16;
      v90 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v13(&v91, &v87);
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      if (v88)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      }

      if (*(&v93 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v93 + 1));
      }

      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
      }
    }

    while ((v17 & 1) == 0);
  }

  else
  {
    v18 = i;
    v19 = i + 2;
    for (i = v19; v19 < v102; i = v19)
    {
      v20 = *a3;
      v84 = v57;
      v85 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v86 = v58;
      if (*(&v58 + 1))
      {
        atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v21 = *v19;
      v22 = *(v18 + 5);
      v80 = v21;
      v81 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(v18 + 6);
      v23 = *(v18 + 7);
      v82 = v24;
      v83 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v20(&v84, &v80);
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (*(&v86 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v86 + 1));
      }

      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v85);
      }

      if (v25)
      {
        break;
      }

      v18 = i;
      v19 = i + 2;
    }
  }

  v26 = v102;
  v27 = i;
  if (i < v102)
  {
    do
    {
      v28 = v102;
      v102 -= 2;
      v29 = *a3;
      v77 = v57;
      v78 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = v58;
      if (*(&v58 + 1))
      {
        atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v30 = *(v28 - 3);
      v73 = *(v28 - 4);
      v74 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *(v28 - 2);
      v31 = *(v28 - 1);
      v75 = v32;
      v76 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v29(&v77, &v73);
      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      if (*(&v79 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v79 + 1));
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }
    }

    while ((v33 & 1) != 0);
    v26 = v102;
    v27 = i;
  }

  if (v27 < v26)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&i, &v102);
      do
      {
        v34 = i;
        i += 2;
        v35 = *a3;
        v70 = v57;
        v71 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v72 = v58;
        if (*(&v58 + 1))
        {
          atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v36 = *(v34 + 5);
        v66 = *(v34 + 4);
        v67 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(v34 + 6);
        v37 = *(v34 + 7);
        v68 = v38;
        v69 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = v35(&v70, &v66);
        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (*(&v72 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v72 + 1));
        }

        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }
      }

      while (!v39);
      do
      {
        v40 = v102;
        v102 -= 2;
        v41 = *a3;
        v63 = v57;
        v64 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v65 = v58;
        if (*(&v58 + 1))
        {
          atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v42 = *(v40 - 3);
        v59 = *(v40 - 4);
        v60 = v42;
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = *(v40 - 2);
        v43 = *(v40 - 1);
        v61 = v44;
        v62 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = v41(&v63, &v59);
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (*(&v65 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v65 + 1));
        }

        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }
      }

      while ((v45 & 1) != 0);
      v27 = i;
    }

    while (i < v102);
  }

  v46 = v27 - 2;
  if (v27 - 2 != a1)
  {
    v47 = *v46;
    *v46 = 0;
    *(v27 - 3) = 0;
    v48 = *(a1 + 8);
    *a1 = v47;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    v49 = *(v27 - 1);
    *(v27 - 2) = 0;
    *(v27 - 1) = 0;
    v50 = *(a1 + 24);
    *(a1 + 16) = v49;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }
  }

  v51 = v100;
  v100 = 0uLL;
  v52 = *(v27 - 3);
  *(v27 - 2) = v51;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v53 = v101;
  v101 = 0uLL;
  v54 = *(v27 - 1);
  *(v27 - 1) = v53;
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v55 = i;
  if (*(&v101 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v101 + 1));
  }

  if (*(&v100 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v100 + 1));
  }

  return v55;
}

void sub_2209947C4(_Unwind_Exception *a1)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v1 - 192));
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v1 - 160));
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v1 - 128));
  _Unwind_Resume(a1);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,cgm::token_generation_inference::ajax::utils::StreamOpPair *,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair)>(uint64_t a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v94 = a2;
  v95 = a1;
  v5 = *a1;
  v6 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v93 = v6;
  v92 = v5;
  v7 = *(&v5 + 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v8 = *(&v6 + 1);
  v9 = v5;
  v10 = v6;
  do
  {
    v11 = v95;
    v12 = *(v95 + 4);
    v95 += 2;
    v13 = *a3;
    v14 = *(v11 + 5);
    v88 = v12;
    v89 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(v11 + 6);
    v15 = *(v11 + 7);
    v90 = v16;
    v91 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = v9;
    v85 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v86 = v10;
    v87 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v13(&v88, &v84);
    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v85);
    }

    if (v91)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    }

    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }
  }

  while ((v17 & 1) != 0);
  if (v95 - 2 == a1)
  {
    for (i = v94; v95 < v94; i = v94)
    {
      v25 = *a3;
      v94 = i - 2;
      v26 = *(i - 3);
      v80 = *(i - 4);
      v81 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(i - 2);
      v27 = *(i - 1);
      v82 = v28;
      v83 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v76 = v9;
      v77 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = v10;
      v79 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = v25(&v80, &v76);
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v29)
      {
        break;
      }
    }
  }

  else
  {
    do
    {
      v18 = v94;
      v94 -= 2;
      v19 = *a3;
      v20 = *(v18 - 3);
      v72 = *(v18 - 4);
      v73 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = *(v18 - 2);
      v21 = *(v18 - 1);
      v74 = v22;
      v75 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68 = v9;
      v69 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v70 = v10;
      v71 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = v19(&v72, &v68);
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      }

      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
      }

      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }
    }

    while ((v23 & 1) == 0);
  }

  for (j = v95; v95 < v94; j = v95)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v95, &v94);
    do
    {
      v31 = v95;
      v32 = *(v95 + 4);
      v95 += 2;
      v33 = *a3;
      v34 = *(v31 + 5);
      v64 = v32;
      v65 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = *(v31 + 6);
      v35 = *(v31 + 7);
      v66 = v36;
      v67 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = v9;
      v61 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = v10;
      v63 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v33(&v64, &v60);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }
    }

    while ((v37 & 1) != 0);
    do
    {
      v38 = v94;
      v94 -= 2;
      v39 = *a3;
      v40 = *(v38 - 3);
      v56 = *(v38 - 4);
      v57 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v42 = *(v38 - 2);
      v41 = *(v38 - 1);
      v58 = v42;
      v59 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = v9;
      v53 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = v10;
      v55 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = v39(&v56, &v52);
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }
    }

    while (!v43);
  }

  v44 = j - 2;
  if (j - 2 != a1)
  {
    v45 = *v44;
    *v44 = 0;
    *(j - 3) = 0;
    v46 = *(a1 + 8);
    *a1 = v45;
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    v47 = *(j - 1);
    *(j - 2) = 0;
    *(j - 1) = 0;
    v48 = *(a1 + 24);
    *(a1 + 16) = v47;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }
  }

  v49 = *(j - 3);
  *(j - 4) = v9;
  *(j - 3) = v7;
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v50 = *(j - 1);
  *(j - 2) = v10;
  *(j - 1) = v8;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  return j - 2;
}

void sub_220994C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a34);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a38);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v38 - 136));
  _Unwind_Resume(a1);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v65 = a2;
  v66 = a1;
  v6 = (a2 - a1) >> 5;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 4);
        v65 = a2 - 2;
        v9 = *(a2 - 3);
        v61 = v8;
        v62 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(a2 - 1);
        v63 = *(a2 - 2);
        v64 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = a1[1];
        v57 = *a1;
        v58 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = a1[3];
        v59 = a1[2];
        v60 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = v7(&v61, &v57);
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v66, &v65);
        }

        return 1;
      }

      goto LABEL_27;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_27:
  v14 = (a1 + 8);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,0>(a1, a1 + 2, a1 + 4, a3);
  v15 = (a1 + 12);
  if (a1 + 12 == v4)
  {
    return 1;
  }

  v16 = 0;
  for (i = (a1 + 15); ; i += 4)
  {
    v18 = *a3;
    v19 = *(v15 + 1);
    v53 = *v15;
    v54 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *(v15 + 3);
    v55 = *(v15 + 2);
    v56 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v14 + 1);
    v49 = *v14;
    v50 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(v14 + 3);
    v51 = *(v14 + 2);
    v52 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v18(&v53, &v49);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (v23)
    {
      v24 = *v15;
      v25 = v15[1];
      *v15 = 0;
      *(v15 + 1) = 0;
      v47 = v24;
      v48 = v25;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      for (j = i; ; j -= 4)
      {
        v27 = j - 7;
        v28 = *(j - 7);
        *v27 = 0;
        v27[1] = 0;
        v29 = *(j - 2);
        *(v27 + 2) = v28;
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        v30 = *(j - 5);
        *(j - 5) = 0;
        *(j - 4) = 0;
        v31 = *j;
        *(j - 1) = v30;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        v32 = v47;
        if (v27 == v66)
        {
          break;
        }

        v33 = *a3;
        v45 = v47;
        if (*(&v47 + 1))
        {
          atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v46 = v48;
        if (*(&v48 + 1))
        {
          atomic_fetch_add_explicit((*(&v48 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v34 = *(j - 10);
        v41 = *(j - 11);
        v42 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = *(j - 8);
        v43 = *(j - 9);
        v44 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v33(&v45, &v41);
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (*(&v46 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
        }

        if (*(&v45 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v45 + 1));
          if ((v36 & 1) == 0)
          {
            break;
          }
        }

        else if (!v36)
        {
          break;
        }
      }

      v47 = 0uLL;
      v37 = *(j - 6);
      *(j - 7) = v32;
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v38 = v48;
      v48 = 0uLL;
      v39 = *(j - 4);
      *(j - 5) = v38;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      v4 = v65;
      if (*(&v48 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
      }

      if (*(&v47 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v47 + 1));
      }

      if (++v16 == 8)
      {
        break;
      }
    }

    v14 = v15;
    v15 += 2;
    if (v15 == v4)
    {
      return 1;
    }
  }

  return v15 + 2 == v4;
}

void sub_2209950E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a30);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v30 - 136));
  _Unwind_Resume(a1);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  v33 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v7, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v32 = v6;
    if (v6 == a3)
    {
      v12 = v6;
    }

    else
    {
      v12 = v6;
      do
      {
        v13 = *a4;
        v14 = *(v12 + 1);
        v28 = *v12;
        v29 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(v12 + 2);
        v15 = *(v12 + 3);
        v30 = v16;
        v31 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v33;
        v18 = *(v33 + 1);
        v24 = *v33;
        v25 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        v26 = v20;
        v27 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v13(&v28, &v24);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v21)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *&,cgm::token_generation_inference::ajax::utils::StreamOpPair *&>(&v32, &v33);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v33, a4, v8, v33);
        }

        v12 = v32 + 2;
        v32 = v12;
      }

      while (v12 != a3);
      v7 = v33;
      v8 = (v6 - v33) >> 5;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v7, v6, a4, v8);
        v6 -= 2;
      }

      while (v8-- > 2);
      return v32;
    }

    return v12;
  }

  return a3;
}

void sub_2209952F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a9);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a13);
  _Unwind_Resume(a1);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v49 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 5)
  {
    return;
  }

  v9 = (a4 - a1) >> 4;
  v10 = v9 + 1;
  v11 = (a1 + 32 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 >= a3)
  {
    goto LABEL_21;
  }

  v13 = *a2;
  v14 = v11[1];
  v78 = *v11;
  v79 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v11[3];
  v80 = v11[2];
  v81 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v11[5];
  v74 = v11[4];
  v75 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v11[7];
  v76 = v11[6];
  v77 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v13(&v78, &v74);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  if (!v79)
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  if (v18)
  {
LABEL_20:
    v11 += 4;
    v10 = v12;
  }

LABEL_21:
  v19 = *a2;
  v20 = v11[1];
  v70 = *v11;
  v71 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v11[3];
  v72 = v11[2];
  v73 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v5[1];
  v66 = *v5;
  v67 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v5[3];
  v68 = v5[2];
  v69 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v19(&v70, &v66);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (v24)
  {
    return;
  }

  v25 = *v5;
  v26 = *(v5 + 1);
  *v5 = 0;
  v5[1] = 0;
  v64 = v25;
  v65 = v26;
  v5[2] = 0;
  v5[3] = 0;
  while (1)
  {
    v27 = v11;
    v28 = *v11;
    *v11 = 0;
    v11[1] = 0;
    v29 = v5[1];
    *v5 = v28;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v30 = *(v11 + 1);
    v11[2] = 0;
    v11[3] = 0;
    v31 = v5[3];
    *(v5 + 1) = v30;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v49 < v10)
    {
      break;
    }

    v32 = 2 * v10;
    v10 = (2 * v10) | 1;
    v11 = (a1 + 32 * v10);
    v33 = v32 + 2;
    if (v32 + 2 < a3)
    {
      v34 = *a2;
      v35 = v11[1];
      v60 = *v11;
      v61 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = v11[3];
      v62 = v11[2];
      v63 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v11[5];
      v56 = v11[4];
      v57 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = v11[7];
      v58 = v11[6];
      v59 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = v34(&v60, &v56);
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      if (!v61)
      {
        if (!v39)
        {
          goto LABEL_62;
        }

LABEL_61:
        v11 += 4;
        v10 = v33;
        goto LABEL_62;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      if (v39)
      {
        goto LABEL_61;
      }
    }

LABEL_62:
    v40 = *a2;
    v41 = v11[1];
    v52 = *v11;
    v53 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = v11[3];
    v54 = v11[2];
    v55 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = v64;
    v48 = v64;
    if (*(&v64 + 1))
    {
      atomic_fetch_add_explicit((*(&v64 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v51 = v65;
    if (*(&v65 + 1))
    {
      atomic_fetch_add_explicit((*(&v65 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v43 = v40(&v52, &v50);
    if (*(&v51 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
    }

    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v50 + 1));
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    v5 = v27;
    if (v43)
    {
      v44 = v48;
      goto LABEL_83;
    }
  }

  v44 = v64;
LABEL_83:
  v64 = 0uLL;
  v45 = v27[1];
  *v27 = v44;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v46 = v65;
  v65 = 0uLL;
  v47 = v27[3];
  *(v27 + 1) = v46;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (*(&v65 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v65 + 1));
  }

  if (*(&v64 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v64 + 1));
  }
}

void sub_22099571C(_Unwind_Exception *a1)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v1 - 152));
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v1 - 120));
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v20 = v8;
    v21 = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 32))
    {
      v18 = v9[1];
      *v10 = v20;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v19 = v10[3];
      *(v10 + 1) = v21;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    else
    {
      v11 = *(a2 - 32);
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v14 = v10[3];
      *(v10 + 1) = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v15 = (v10 + 4);
      v16 = *(a2 - 24);
      *(a2 - 32) = v20;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v17 = *(a2 - 8);
      *(a2 - 16) = v21;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1, v15, a3, (v15 - a1) >> 5);
    }
  }
}

void sub_2209958A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va);
  _Unwind_Resume(a1);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(void *a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_20;
    }

    v12 = *a2;
    v13 = v8[5];
    v29 = v8[4];
    v30 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v8[7];
    v31 = v8[6];
    v32 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v8[9];
    v16 = v8 + 8;
    v25 = v8[8];
    v26 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v8[10];
    v17 = v8[11];
    v27 = v18;
    v28 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v12(&v29, &v25);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      v9 = v16;
      v6 = v11;
      goto LABEL_20;
    }

    if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    v20 = *v9;
    *v9 = 0;
    v9[1] = 0;
    v21 = a1[1];
    *a1 = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v22 = *(v9 + 1);
    v9[2] = 0;
    v9[3] = 0;
    v23 = a1[3];
    *(a1 + 1) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_220995A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a9);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a13);
  _Unwind_Resume(a1);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(cgm::token_generation_inference::ajax::utils::StreamOpPair,cgm::token_generation_inference::ajax::utils::StreamOpPair),cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 32 * (v4 >> 1));
    v9 = *a3;
    v10 = v8[1];
    v44 = *v8;
    v45 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v8[3];
    v46 = v8[2];
    v47 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a2 - 24);
    v13 = (a2 - 32);
    v40 = *(a2 - 32);
    v41 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 - 8);
    v15 = (a2 - 16);
    v42 = *(a2 - 16);
    v43 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v9(&v44, &v40);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v16)
    {
      v17 = *v13;
      *v13 = 0;
      v13[1] = 0;
      v18 = *v15;
      v38 = v17;
      v39 = v18;
      *v15 = 0;
      *(v15 + 1) = 0;
      while (1)
      {
        v19 = v8;
        v20 = *v8;
        *v8 = 0;
        v8[1] = 0;
        v21 = v13[1];
        *v13 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v22 = *(v8 + 1);
        v8[2] = 0;
        v8[3] = 0;
        v23 = v13[3];
        *(v13 + 1) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 32 * v7);
        v24 = *a3;
        v25 = v8[1];
        v34 = *v8;
        v35 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v8[3];
        v36 = v8[2];
        v37 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v31 = v38;
        v32 = v38;
        if (*(&v38 + 1))
        {
          atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v33 = v39;
        if (*(&v39 + 1))
        {
          atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v24(&v34, &v32);
        if (*(&v33 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
        }

        if (*(&v32 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        v13 = v19;
        if ((v27 & 1) == 0)
        {
          v28 = v31;
          goto LABEL_44;
        }
      }

      v28 = v38;
LABEL_44:
      v29 = v19[1];
      *v19 = v28;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      v30 = v19[3];
      *(v19 + 1) = v39;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }
  }
}

void sub_220995C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(va);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v15 - 112));
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<E5RT::ExecutionStreamOperation>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::unique_ptr<E5RT::ExecutionStreamOperation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<E5RT::ExecutionStreamOperation>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<E5RT::ExecutionStreamOperation>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__emplace_back_slow_path<std::unique_ptr<E5RT::ExecutionStreamOperation>,std::unique_ptr<E5RT::ExecutionStream>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 32 * v3;
  std::construct_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,std::unique_ptr<E5RT::ExecutionStreamOperation>,std::unique_ptr<E5RT::ExecutionStream>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>((32 * v3), a2, a3);
  v17 = (32 * v3 + 32);
  v9 = a1[1];
  v10 = (32 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(&v15);
  return v14;
}

void sub_220995F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::construct_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,std::unique_ptr<E5RT::ExecutionStreamOperation>,std::unique_ptr<E5RT::ExecutionStream>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, a2);
  std::shared_ptr<E5RT::ExecutionStream>::shared_ptr[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(v5 + 2, a3);
  return a1;
}

void sub_220995F68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator() const(char const*,std::unique_ptr<unsigned char []> &)::{lambda(unsigned char *,unsigned long)#1},std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator() const(char const*,std::unique_ptr<unsigned char []> &)::{lambda(unsigned char *,unsigned long)#1}>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28344D660;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator() const(char const*,std::unique_ptr<unsigned char []> &)::{lambda(unsigned char *,unsigned long)#1},std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator() const(char const*,std::unique_ptr<unsigned char []> &)::{lambda(unsigned char *,unsigned long)#1}>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, void **a2, size_t *a3)
{
  v4 = *a3;
  result = memcpy(*a2, **(a1 + 8), *a3);
  **(a1 + 8) += v4;
  return result;
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator() const(char const*,std::unique_ptr<unsigned char []> &)::{lambda(unsigned char *,unsigned long)#1},std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry(unsigned long,std::unique_ptr<TGIE5KVCacheEntry> const&,std::vector<int> const&,std::vector<std::vector<signed char>> const&)::$_0::operator() const(char const*,std::unique_ptr<unsigned char []> &)::{lambda(unsigned char *,unsigned long)#1}>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__emplace_back_slow_path<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::~__split_buffer(&v15);
  return v14;
}

void sub_220996244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator() const(char const*)::{lambda(unsigned char *,unsigned long)#1},std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator() const(char const*)::{lambda(unsigned char *,unsigned long)#1}>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28344D6F0;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator() const(char const*)::{lambda(unsigned char *,unsigned long)#1},std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator() const(char const*)::{lambda(unsigned char *,unsigned long)#1}>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, const void **a2, size_t *a3)
{
  v4 = *a3;
  result = memcpy(**(a1 + 8), *a2, *a3);
  **(a1 + 8) += v4;
  return result;
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator() const(char const*)::{lambda(unsigned char *,unsigned long)#1},std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::createKVCacheEntry(std::pair<unsigned long,unsigned long> const&)::$_0::operator() const(char const*)::{lambda(unsigned char *,unsigned long)#1}>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::erase(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v10 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = *a1 + a2;
      v8 = -*a1;
      v9 = *a1 + a3;
      do
      {
        *(v7 + v8) = *(v9 + v8);
        std::vector<signed char>::__move_assign(v7 + v8 + 8, (v9 + v8 + 8));
        v7 += 32;
        v9 += 32;
      }

      while (v9 + v8 != v5);
      v5 = a1[1];
      v10 = v7 - v6;
    }

    while (v5 != v10)
    {
      v11 = *(v5 - 24);
      if (v11)
      {
        *(v5 - 16) = v11;
        operator delete(v11);
      }

      v5 -= 32;
    }

    a1[1] = v10;
  }

  return a2;
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>>(a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = *(a1 + 8);
    v12 = 32 * v8 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>,cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::~__split_buffer(&v15);
  }
}

void sub_220996574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2209965E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

__n128 std::vector<signed char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::__split_buffer<unsigned long>::emplace_back<unsigned long const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_220996A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_220996B0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::unique_ptr<ImageEmbeddingsProvider>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x223D8FE50);
  }

  return result;
}

BOOL std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_0,std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_0>,BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(*a3 + 32))(a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_step");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v4, __p);
  v6 = v5;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a2 + 23);
  v9 = a2[1];
  if (v8 < 0)
  {
    a2 = *a2;
  }

  if (v8 < 0)
  {
    v8 = v9;
  }

  v10 = a2 + v8;
  if (v8 >= 10)
  {
    v11 = a2;
    do
    {
      v12 = memchr(v11, 112, v8 - 9);
      if (!v12)
      {
        break;
      }

      if (*v12 == 0x6F5F74706D6F7270 && *(v12 + 4) == 29808)
      {
        return v12 != v10 && v12 - a2 != -1;
      }

      v11 = v12 + 1;
      v8 = v10 - v11;
    }

    while (v10 - v11 > 9);
  }

  v12 = v10;
  return v12 != v10 && v12 - a2 != -1;
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_0,std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_0>,BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_1,std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_1>,BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*a3 + 32))(a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_step");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4 != 0;
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_1,std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_1>,BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_2,std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_2>,BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::operator()(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = a2[1];
  }

  v4 = &v3[v2];
  if (v2 >= 17)
  {
    v5 = v3;
    do
    {
      v6 = memchr(v5, 103, v2 - 16);
      if (!v6)
      {
        break;
      }

      if (*v6 == 0x655F726568746167 && *(v6 + 1) == 0x676E69646465626DLL && v6[16] == 115)
      {
        return v6 != v4 && v6 - v3 != -1;
      }

      v5 = v6 + 1;
      v2 = v4 - v5;
    }

    while (v4 - v5 > 16);
  }

  v6 = v4;
  return v6 != v4 && v6 - v3 != -1;
}

uint64_t std::__function::__func<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_2,std::allocator<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(TGIE5ModelConfiguration const&)::$_2>,BOOL ()(std::string const&,E5RT::ProgramFunction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2209974C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string const*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string const*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *v9 = 0;
      v9[1] = 0;
      v8[1] = *(v9 + 1);
      v9[2] = 0;
      v9[3] = 0;
      v9 += 4;
      v8 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *,cgm::token_generation_inference::ajax::utils::StreamOpPair *,cgm::token_generation_inference::ajax::utils::StreamOpPair *>(&v11, a2, v7, v6);
}

uint64_t std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__swap_out_circular_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair *,cgm::token_generation_inference::ajax::utils::StreamOpPair *,cgm::token_generation_inference::ajax::utils::StreamOpPair *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = a3;
    v9 = a4;
    do
    {
      v10 = *(v8 - 2);
      v8 -= 4;
      *v8 = 0;
      v8[1] = 0;
      v11 = *(v4 - 24);
      *(v9 - 32) = v10;
      v9 -= 32;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v12 = *(v7 - 1);
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      v13 = *(v4 - 8);
      *(v4 - 16) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v4 = v9;
      v7 = v8;
    }

    while (v8 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair const*,cgm::token_generation_inference::ajax::utils::StreamOpPair const*,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v11 = v5[2];
      v10 = v5[3];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = a4[3];
      a4[2] = v11;
      a4[3] = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void TGIE5KVCacheEntry::~TGIE5KVCacheEntry(TGIE5KVCacheEntry *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x223D8FE30](v2, 0x1000C8077774924);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    MEMORY[0x223D8FE30](v3, 0x1000C8077774924);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule::PromptExtendModule(void *this, cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *a2, cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  return this;
}

cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::EnumeratedShapeAJAXE5MLModel(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this, TGIE5ModelConfiguration *a2)
{
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_28344D900;
  *(this + 12) = 4;
  *(this + 7) = 0;
  *(this + 9) = 0;
  v3 = this + 72;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::loadPromptExtendModules(this, a2);
  v4 = *(this + 9);
  *(this + 15) = *(*(this + 8) + 48);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 1);
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 2);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (v6);
  }

  v7 = *(v5 + 4);
  *(this + 7) = v7;
  std::vector<int>::reserve(this + 4, v7);
  return this;
}

void sub_220997F88(_Unwind_Exception *a1)
{
  v4 = *(v1 + 96);
  if (v4)
  {
    *(v1 + 104) = v4;
    operator delete(v4);
  }

  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::destroy(v2, *(v1 + 72));
  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(v1);
  _Unwind_Resume(a1);
}

E5RT::ProgramLibrary *cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::loadPromptExtendModules(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this, TGIE5ModelConfiguration *a2)
{
  if (*(&a2->var1.var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&var1, a2->var1.var0.var0.var1.var0, a2->var1.var0.var0.var1.var1);
  }

  else
  {
    var1 = a2->var1;
  }

  E5RT::ProgramLibrary::OpenLibrary();
  if (SHIBYTE(var1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(var1.__r_.__value_.__l.__data_);
  }

  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(v31);
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = &v29;
  v25 = &v26;
  v26 = 0;
  v5 = *(ExportedFunctions + 16);
  if (v5)
  {
    do
    {
      TGIE5ModelConfiguration::mutableWeightsSymbolToPath(a2, (v5 + 16), &var1);
      if (cgm::token_generation_inference::ajax::utils::isPromptFunctionName(v5 + 2))
      {
        operator new();
      }

      if (cgm::token_generation_inference::ajax::utils::isExtendFunctionName(v5 + 2))
      {
        operator new();
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&var1);
      v5 = *v5;
    }

    while (v5);
    if (v30 != v27)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Number of prompt functions doesn't match number of extend functions");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v6 = v25;
  if (v25 != &v26)
  {
    do
    {
      var1.__r_.__value_.__r.__words[0] = (v6 + 4);
      v7 = std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v28, v6 + 4)[5];
      if (!v7)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v21, v6[4]);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Prompt function for state length: ", &v21, &v22);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" doesn't exist", &v22, &var1);
        std::runtime_error::runtime_error(v19, &var1);
        v19->__vftable = &unk_28344D360;
      }

      cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getKVCache(v6[5], &var1);
      cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::setUp(v7, &var1);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (var1.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](var1.__r_.__value_.__l.__size_);
      }

      v8 = v6[5];
      var1.__r_.__value_.__r.__words[0] = v7;
      var1.__r_.__value_.__l.__size_ = v8;
      std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>(this + 64, v6 + 4);
      size = var1.__r_.__value_.__l.__size_;
      var1.__r_.__value_.__l.__size_ = 0;
      if (size)
      {
        v10 = size[2];
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v11 = *size;
        *size = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        MEMORY[0x223D8FE50](size, 0x1020C4016EE4530);
      }

      v12 = var1.__r_.__value_.__r.__words[0];
      var1.__r_.__value_.__r.__words[0] = 0;
      if (v12)
      {
        v13 = v12[2];
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v14 = *v12;
        *v12 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        MEMORY[0x223D8FE50](v12, 0x1020C4016EE4530);
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != &v26);
  }

  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(&v25, v26);
  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(&v28, v29);
  result = v31;
  v31 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_220998424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, char a33, void *a34)
{
  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(&a30, a31);
  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(&a33, a34);
  v36 = *(v34 - 96);
  *(v34 - 96) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchExtendModule(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule **a1, cgm::token_generation_inference::ajax::AJAXExtendE5MLModule **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 + 9 == a2)
  {
    return 0;
  }

  v2 = a2[6];
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Found null extend module from the map");
    std::runtime_error::runtime_error(exception, &v12);
    exception->__vftable = &unk_28344D360;
  }

  if (v2 == a1[15])
  {
    return 0;
  }

  v4 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    MaxStateLength = cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getMaxStateLength(a1[15]);
    v6 = cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getMaxStateLength(v2);
    cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchExtendModule(buf, MaxStateLength, v6, v4);
  }

  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::resetInputs(v2, 0);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getKVCache(v2, &v12);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getKVCache(a1[15], &v9);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::overwrite(&v12, &v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
  }

  a1[15] = v2;
  return 1;
}

void sub_220998788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchToNextExtendModule(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule **this)
{
  MaxStateLength = cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getMaxStateLength(this[15]);
  v3 = this + 9;
  for (i = this[9]; i; i = *(i + (MaxStateLength >= *(i + 4))))
  {
    if (MaxStateLength < *(i + 4))
    {
      v3 = i;
    }
  }

  return cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchExtendModule(this, v3);
}

void cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::reset(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this, unint64_t a2)
{
  v3 = *(this + 15);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Found null extend module");
    std::runtime_error::runtime_error(exception, &v12);
    exception->__vftable = &unk_28344D360;
  }

  if (cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getMaxStateLength(v3) <= a2)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Can't reset starting from index more than number of tokens processed");
    std::runtime_error::runtime_error(v11, &v12);
    v11->__vftable = &unk_28344D360;
  }

  v5 = (this + 72);
  for (i = *(this + 9); i; i = *(i + 8 * v9))
  {
    v7 = *(i + 32);
    v8 = v7 > a2;
    v9 = v7 <= a2;
    if (v8)
    {
      v5 = i;
    }
  }

  cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchExtendModule(this, v5);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::resetInputs(*(this + 15), a2);
  *(this + 11) = a2;

  std::vector<int>::resize(this + 4, a2);
}

void sub_2209989D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

uint64_t cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::getLogits(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  v1 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::outputSpan();
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v3 >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_220998ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::getLastForwardLogits@<X0>(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this@<X0>, void *a2@<X8>)
{
  result = cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::getLogits(this);
  *a2 = 1;
  a2[1] = result;
  a2[2] = v4;
  a2[3] = 1;
  a2[4] = v4;
  a2[5] = v4;
  return result;
}

uint64_t cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::loadPrompt(unint64_t *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 - *a2) >> 2;
  v7 = a1[7];
  if (v6 >= v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v20 = a2;
    v21 = exception;
    std::to_string(&v30, (v20[1] - *v20) >> 2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Number of prompt tokens = ", &v30, &v31);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" greater than or equal to maxStateLength = ", &v31, &v32);
    std::to_string(&v29, a1[7]);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v29;
    }

    else
    {
      v22 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v32, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v21, &v33);
    v21->__vftable = &unk_28344D360;
  }

  if (v4 == v5 || a1[11] >= v7)
  {
    (*(*a1 + 8))(a1, 0);
    return 0;
  }

  else
  {
    v8 = a1[9];
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = a1 + 9;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= v6;
      v12 = v10 < v6;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 == a1 + 9)
    {
LABEL_21:
      v26 = __cxa_allocate_exception(0x10uLL);
      v27 = a2;
      v28 = v26;
      std::to_string(&v32, (v27[1] - *v27) >> 2);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Couldn't find a module for the prompt with size: ", &v32, &v33);
      std::runtime_error::runtime_error(v28, &v33);
      v28->__vftable = &unk_28344D360;
    }

    v14 = a1 + 12;
    v13 = a1[12];
    v15 = v9[5];
    a1[13] = v13;
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a1 + 12, v13, v4, a2[1] - 4, (a2[1] - 4 - v4) >> 2);
    cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::forward(v15, v14);
    LODWORD(v33.__r_.__value_.__l.__data_) = *(a2[1] - 1);
    data = v33.__r_.__value_.__l.__data_;
    v17 = v9[6];
    v14[3] = v17;
    cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::forwardToken(v17, data, (v14[1] - *v14) >> 2);
    std::vector<int>::push_back[abi:ne200100](v14, &v33);
    result = (v14[1] - *v14) >> 2;
    *(v14 - 1) = result;
  }

  return result;
}

void sub_220998DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v33)
  {
    __cxa_free_exception(v32);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::forward(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this, int a2)
{
  v9 = a2;
  v3 = *(this + 15);
  if (!v3)
  {
    cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::forward();
  }

  v5 = *(this + 11);
  if (v5 >= cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getMaxStateLength(v3))
  {
    cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchToNextExtendModule(this);
  }

  v6 = *(this + 11);
  v7 = *(this + 7);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::forwardToken(*(this + 15), a2, v6);
  v8 = *(this + 11) + 1;
  *(this + 11) = v8;
  if (v8 >= *(this + 7))
  {
    *(*(this + 12) + 4 * (v6 % v7)) = a2;
  }

  else
  {
    std::vector<int>::push_back[abi:ne200100](this + 12, &v9);
  }
}

unint64_t *cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::forward(unint64_t *this, char **a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != a3[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(v12, "Masked inference not supported");
    std::runtime_error::runtime_error(exception, v12);
    exception->__vftable = &unk_28344D360;
  }

  v6 = this;
  if (this[11])
  {
    v7 = *a2;
    v8 = a2[1];
    while (v7 != v8)
    {
      cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::forward(v6, *v7);
      (*(*v6 + 40))(v12, v6);
      v9 = *(a5 + 24);
      if (!v9)
      {
        goto LABEL_10;
      }

      this = (*(*v9 + 48))(v9, v12);
      v7 += 4;
    }
  }

  else
  {
    cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::loadPrompt(this, a2);
    (*(*v6 + 40))(v12, v6);
    v10 = *(a5 + 24);
    if (!v10)
    {
LABEL_10:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v10 + 48))(v10, v12);
  }

  return this;
}

void sub_2209991D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::clearAllState(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this)
{
  v1 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::clearAllState(v1);
  }
}

void cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::~EnumeratedShapeAJAXE5MLModel(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel *this)
{
  *this = &unk_28344D900;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::destroy(this + 64, *(this + 9));

  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(this);
}

{
  *this = &unk_28344D900;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::destroy(this + 64, *(this + 9));
  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(this);

  JUMPOUT(0x223D8FE50);
}

void cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule::~PromptExtendModule(cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    MEMORY[0x223D8FE50](v2, 0x1020C4016EE4530);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    v6 = v5[2];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *v5;
    *v5 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    MEMORY[0x223D8FE50](v5, 0x1020C4016EE4530);
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    a2[6] = 0;
    if (v4)
    {
      v5 = v4[2];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      MEMORY[0x223D8FE50](v4, 0x1020C4016EE4530);
    }

    v7 = a2[5];
    a2[5] = 0;
    if (v7)
    {
      v8 = v7[2];
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v9 = *v7;
      *v7 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      MEMORY[0x223D8FE50](v7, 0x1020C4016EE4530);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void *std::__tree<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::PromptExtendModule>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel *cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::FlexibleShapeAJAXE5MLModel(cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel *this, const TGIE5ModelConfiguration *a2)
{
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_28344D980;
  *(this + 5) = 0;
  *(this + 6) = &unk_28344DA08;
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  cgm::token_generation_inference::ajax::utils::makeAjaxCompilerOptions(a2->var0, &v44);
  cgm::token_generation_inference::ajax::utils::makeProgramLibrary(&a2->var1, a2[4].var1.var0.var0.var0.var0[8], &v41);
  v4 = v44;
  v44 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(v41);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = v6[5];
  v8 = v6[6];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v45 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v45 = 0;
  }

  v44 = v7;
  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  E5RT::PrecompiledComputeOpCreateOptions::SetExperimentalEnableGPUQuantOps(v40);
  E5RT::PrecompiledComputeOpCreateOptions::SetExperimentalDisableCompileTimeMPSGraphTypeInference(v40);
  E5RT::PrecompiledComputeOpCreateOptions::SetExperimentalEnableMPSGraphParallelEncode(v40);
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(this + 7, &v39);
  v9 = v39;
  v39 = 0;
  if (v9)
  {
    v9 = (*(*v9 + 8))(v9);
  }

  E5RT::ExecutionStream::CreateExecutionStream(&v39, v9);
  std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>(this + 9, &v39);
  v10 = v39;
  v39 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v40;
  v40 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v12 = v41;
  v41 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = E5RT::ExecutionStreamOperation::GetInOutPorts(*(this + 7));
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values_state");
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v13, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v44, v14[5]);
  v15 = E5RT::OperandDescriptor::TensorDescriptor(v44);
  v16 = *(*E5RT::TensorDescriptor::GetTensorShape(v15) + 24);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 11) = v16;
  v17 = E5RT::ExecutionStreamOperation::GetInOutPorts(*(this + 7));
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values_state");
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v17, __p);
  if (!v18)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v44, v18[5]);
  v19 = E5RT::OperandDescriptor::TensorDescriptor(v44);
  v20 = *(*E5RT::TensorDescriptor::GetTensorShape(v19) + 16);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 12) = v20;
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(this + 7));
  std::string::basic_string[abi:ne200100]<0>(__p, "out_logits");
  v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, __p);
  if (!v22)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v44, v22[5]);
  v23 = E5RT::OperandDescriptor::TensorDescriptor(v44);
  v24 = *(*E5RT::TensorDescriptor::GetTensorShape(v23) + 16);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 13) = v24;
  if (a2[4].var1.var0.var0.var0.var0[7] < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(&a2[3].var1.var0.var0.var1 + 2), *&a2[4].var0);
  }

  else
  {
    v25 = *(&a2[3].var1.var0.var0.var1 + 1);
    *(this + 16) = a2[4].var1.var0.var0.var1.var0;
    *(this + 7) = v25;
  }

  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  v26 = E5RT::ExecutionStreamOperation::GetInOutPorts(*(this + 7));
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values_state");
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v26, __p);
  if (!v27)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v44, v27[5]);
  v28 = E5RT::OperandDescriptor::TensorDescriptor(v44);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v28);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 184, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = E5RT::ExecutionStreamOperation::GetInOutPorts(*(this + 7));
  std::string::basic_string[abi:ne200100]<0>(__p, "in_cached_values_state");
  v31 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v30, __p);
  if (!v31)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v44, v31[5]);
  v32 = E5RT::OperandDescriptor::TensorDescriptor(v44);
  TensorStrides = E5RT::TensorDescriptor::GetTensorStrides(v32);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(this + 208, *TensorStrides, TensorStrides[1], (TensorStrides[1] - *TensorStrides) >> 3);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 232) = 0;
  cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::checkIOTypes(this);
  v35 = cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(*(this + 7), v34);
  E5RT::ExecuteOptions::Create(__p, v35);
  v36 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v37 = *(this + 22);
  *(this + 168) = v36;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }

  return this;
}

void sub_22099A1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 208);
  if (v20)
  {
    *(v18 + 216) = v20;
    operator delete(v20);
  }

  v21 = *(v18 + 184);
  if (v21)
  {
    *(v18 + 192) = v21;
    operator delete(v21);
  }

  v22 = *(v18 + 176);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(v18 + 135) < 0)
  {
    operator delete(*(v18 + 112));
  }

  cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache((v18 + 56));
  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(v18);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::checkIOTypes(cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel *this)
{
  v4 = *(this + 7);
  v2 = *(this + 8);
  v3 = (this + 56);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::operator+<char>();
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v32);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = E5RT::ExecutionStreamOperation::GetInOutPorts(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_keys_state");
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v6, &__p.__r_.__value_.__l.__data_))
  {
    v19 = __cxa_allocate_exception(0x18uLL);
    std::operator+<char>();
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v19, 1, &v32);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values_state");
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v6, &__p.__r_.__value_.__l.__data_))
  {
    v20 = __cxa_allocate_exception(0x18uLL);
    std::operator+<char>();
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v20, 1, &v32);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, &__p.__r_.__value_.__l.__data_))
  {
    v21 = __cxa_allocate_exception(0x18uLL);
    std::operator+<char>();
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v21, 1, &v32);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "in_cached_keys_state");
  v8 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  E5RT::IOPort::GetPortDescriptor(&__p, v8);
  v9 = E5RT::OperandDescriptor::TensorDescriptor(__p.__r_.__value_.__l.__data_);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "in_cached_values_state");
  v10 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  E5RT::IOPort::GetPortDescriptor(&__p, v10);
  v11 = E5RT::OperandDescriptor::TensorDescriptor(__p.__r_.__value_.__l.__data_);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (isV4)
  {
    TensorShape = E5RT::TensorDescriptor::GetTensorShape(v9);
    memset(&v32, 0, sizeof(v32));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v32, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
    v14 = E5RT::TensorDescriptor::GetTensorShape(v11);
    v15 = v32.__r_.__value_.__r.__words[0];
    v16 = v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0];
    if (v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0] != *(v14 + 8) - *v14 || memcmp(v32.__r_.__value_.__l.__data_, *v14, v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0]))
    {
      v22 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Key shape must match the value shape");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v22, 1, &__p);
    }

    if (v16 != 40)
    {
      v23 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "KeyValue cache shape size is not equal to 5");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v23, 1, &__p);
    }

    if (v15[1] != 1)
    {
      v24 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Second dimension of kv cache must be 1");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v24, 1, &__p);
    }

    if (v15[3] != *(this + 11))
    {
      v25 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Fourth dimension of kv cache must be equal to max state length");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v25, 1, &__p);
    }

    if (v15[2] != *(this + 12))
    {
      v26 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Third dimension of kv cache must be equal to number of attention heads");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v26, 1, &__p);
    }

    E5RT::TensorDataType::TensorDataType();
    E5RT::TensorDescriptor::GetTensorDataTypeRef(v9);
    if (E5RT::operator!=())
    {
      v28 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Key data type is not Float 16");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v28, 1, &__p);
    }

    E5RT::TensorDescriptor::GetTensorDataType(&__p, v11);
    v17 = E5RT::operator!=();
    E5RT::TensorDataType::~TensorDataType(&__p);
    if (v17)
    {
      v29 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&__p, "Value data type is not Float 16");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v29, 1, &__p);
    }

    E5RT::TensorDataType::~TensorDataType(&v30);
    if (v32.__r_.__value_.__r.__words[0])
    {
      v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  {
    v27 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v32, "checkIOTypes failed, unexpected model version");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v27, 1, &v32);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_22099AB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      E5RT::TensorDataType::~TensorDataType(&a9);
      if (a17)
      {
        a18 = a17;
        operator delete(a17);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

char *cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::setKVCacheEntry(uint64_t a1, unint64_t a2, uint64_t a3)
{
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "setKVCacheEntry is only supported for V4 model");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, &__p);
  }

  v6 = *(*a3 + 24);
  cgm::token_generation_inference::ajax::AJAXE5MLModelWithModularAttentionSupport::checkKVCacheEntry((a1 + 48), a2, v6, *(a1 + 152), *(a1 + 88));
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_keys_state");
  v7 = cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>();
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values_state");
  v10 = cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>();
  v12 = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = cgm::token_generation_inference::ajax::utils::setKVCacheEntry(v7, v9, v10, v12, (a1 + 184), (a1 + 208), a2, a3);
  *(a1 + 152) += v6;
  return result;
}

void sub_22099AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  goto LABEL_6;
}

BOOL cgm::token_generation_inference::ajax::anonymous namespace::isV4(E5RT::ExecutionStreamOperation **a1)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(v8, "in_causal_mask");
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, v8))
  {
    v3 = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
    std::string::basic_string[abi:ne200100]<0>(__p, "in_position_ids");
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v3, __p) != 0;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return v4;
}

void sub_22099AF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>()
{
  v0 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(v0);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (!v4)
  {
    return 0;
  }

  return result;
}

void cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::createKVCacheEntry(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  {
    v4 = a2[1];
    v5 = *(a1 + 152);
    if (v4 + *a2 <= v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_keys_state");
      cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values_state");
      cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      cgm::token_generation_inference::ajax::utils::createKVCacheEntry();
    }

    v10[0] = *a2;
    v10[1] = 0;
    v10[2] = v4;
    v10[3] = 0;
    v10[5] = 0;
    v10[6] = 7399;
    v10[4] = v5;
    __p.__r_.__value_.__r.__words[0] = v14;
    *&__p.__r_.__value_.__r.__words[1] = xmmword_220AE5410;
    v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v13 = 0;
    v15 = v14;
    __dst.__r_.__value_.__r.__words[0] = 3;
    __dst.__r_.__value_.__l.__size_ = v10;
    __dst.__r_.__value_.__r.__words[2] = 7399;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__p, "Failed to create kv cache entry, invalid range: (%z, %z), tokens processed: %z", 78, &__dst);
    v8[0] = v15;
    v8[1] = *(&__p.__r_.__value_.__l + 2);
    std::string::basic_string<std::string_view,0>(&__dst, v8);
    if (v15 != v14)
    {
      operator delete(v15);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, &__dst);
  }

  v6 = __cxa_allocate_exception(0x18uLL);
  std::string::basic_string[abi:ne200100]<0>(&__p, "createKVCacheEntry is only supported for V4 model");
  cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v6, 0, &__p);
}

void sub_22099B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::forward(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::forward(a1, a2, a3);
  (*(*a1 + 40))(v9, a1);
  v7 = *(a5 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, v9);
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::forward(uint64_t a1, int **a2, uint64_t a3)
{
  if (*(a1 + 232) == 1)
  {
    cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::forward();
  }

  if (!isV4 && *a3 != *(a3 + 8))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v55, "prompt modules are not supported for non-V4 model");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v55);
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = v7 - *a2;
  v10 = *(a1 + 152);
  if ((v10 + (v9 >> 2)) > *(a1 + 88))
  {
    v43 = __cxa_allocate_exception(0x18uLL);
    v44 = *(a1 + 88);
    std::string::basic_string[abi:ne200100]<0>(&v55, "forward");
    cgm::token_generation_inference::ajax::AJAXE5Error::createContextExceededError(v44, &v55, v43);
  }

  v11 = v9 >> 2;
  cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::reshapeForPromptSize(a1, v10, (v9 >> 2), 1);
  v12 = *(a1 + 64);
  v53 = *(a1 + 56);
  v54 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v13 = *(a1 + 152);
  {
    std::string::basic_string[abi:ne200100]<0>(&v55, "in_relative_positions");
    v14 = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
    v16 = v15;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if ((2 * v16) >= 1)
    {
      memset_pattern16(v14, &unk_220AE5280, 2 * v16);
    }

    v17 = *(a1 + 152);
    memset(&v55, 0, sizeof(v55));
    cgm::token_generation_inference::ajax::utils::setRelativePositions(v14, v16, v17, v11, v11, 1, &v55);
    v47.__r_.__value_.__r.__words[0] = &v55;
    std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&v47);
  }

  else
  {
    v18 = v13 + v11;
    {
      std::string::basic_string[abi:ne200100]<0>(&v55, "in_self_attention_logit_biases");
      v47.__r_.__value_.__r.__words[0] = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
      v47.__r_.__value_.__l.__size_ = v19;
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      v20 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(&v47, 0, v18 * v11 * *(a1 + 96));
      v47.__r_.__value_.__r.__words[0] = v20;
      v47.__r_.__value_.__l.__size_ = v21;
      if ((2 * v21) >= 1)
      {
        memset_pattern16(v20, &unk_220AE5280, 2 * v21);
      }

      cgm::token_generation_inference::ajax::utils::fillWithALiBi(&v47, *(a1 + 96), v18, *(a1 + 152), v11);
    }

    else
    {
      if (!isV4)
      {
        v46 = __cxa_allocate_exception(0x18uLL);
        std::string::basic_string[abi:ne200100]<0>(&v55, "Failed to run inference, unexpected model version");
        cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v46, 1, &v55);
      }

      std::string::basic_string[abi:ne200100]<0>(&v55, "in_position_ids");
      v47.__r_.__value_.__r.__words[0] = cgm::token_generation_inference::ajax::utils::inputSpan<int>();
      v47.__r_.__value_.__l.__size_ = v22;
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      v47.__r_.__value_.__r.__words[0] = E5RT::Span<int,18446744073709551615ul>::Slice(&v47, 0, v11);
      v47.__r_.__value_.__l.__size_ = v23;
      std::string::basic_string[abi:ne200100]<0>(&v55, "in_causal_mask");
      v51 = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
      v52 = v24;
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      v25 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(&v51, 0, v18 * v11);
      v27 = v25;
      v28 = v26;
      v51 = v25;
      v52 = v26;
      if (2 * v26 >= 1)
      {
        memset_pattern16(v25, &unk_220AE5280, 2 * v26);
      }

      cgm::token_generation_inference::ajax::utils::setCausalMaskAndPositionIds(v27, v28, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_, a3, *(a1 + 152), a2[1] - *a2);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v55, "in_new_token_ids");
  v29 = cgm::token_generation_inference::ajax::utils::inputSpan<int>();
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v7 != v8)
  {
    v30 = *a2;
    if (v11 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v11;
    }

    do
    {
      v32 = *v30++;
      *v29++ = v32;
      --v31;
    }

    while (v31);
  }

  if (*(a1 + 135) < 0)
  {
    v33 = *(a1 + 120);
    if (!v33)
    {
      goto LABEL_49;
    }

    std::string::__init_copy_ctor_external(&v50, *(a1 + 112), v33);
  }

  else
  {
    if (!*(a1 + 135))
    {
      goto LABEL_49;
    }

    v50 = *(a1 + 112);
  }

  std::to_string(&v47, *(a1 + 136));
  v34 = std::string::insert(&v47, 0, "Inference_", 0xAuLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v55, "_", 1uLL);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v49 = v36->__r_.__value_.__r.__words[2];
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  E5RT::ExecutionStreamOperation::SerializeInferenceFrameData();
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

LABEL_49:
  v38 = *(a1 + 40);
  if (v38)
  {
    v39 = *(a1 + 39);
    if (v39 < 0)
    {
      v39 = *(a1 + 24);
    }

    if (v39)
    {
      v40 = (**v38)(v38);
      v41 = *(a1 + 168);
      if (v40)
      {
        E5RT::ExecuteOptions::SetEnableResourceTelemetry(v41);
        E5RT::ExecuteOptions::SetExecutionIdentifier();
      }

      else
      {
        E5RT::ExecuteOptions::SetEnableResourceTelemetry(v41);
      }
    }
  }

  result = E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 72), *(a1 + 168));
  *(a1 + 152) += v11;
  ++*(a1 + 136);
  return result;
}

void sub_22099B918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
    if ((v29 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_22099B9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  JUMPOUT(0x22099B9F0);
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::reshapeForPromptSize(E5RT::ExecutionStream **this, uint64_t a2, std::__shared_weak_count *a3, int a4)
{
  v79[1] = *MEMORY[0x277D85DE8];
  E5RT::ExecutionStream::ResetStream(this[9]);
  v8 = this + 7;
  v9 = this[7];
  memset(v64, 0, sizeof(v64));
  v65 = 1065353216;
  for (i = *(E5RT::ExecutionStreamOperation::GetInputPorts(v9) + 16); i; i = *i)
  {
    E5RT::IOPort::GetMemoryObject(&buf, i[5]);
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, i[2], i[3]);
    }

    else
    {
      v68 = *(i + 1);
      v69.__r_.__value_.__r.__words[0] = i[4];
    }

    *&v69.__r_.__value_.__r.__words[1] = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>>(v64, &v68);
    if (v69.__r_.__value_.__r.__words[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69.__r_.__value_.__r.__words[2]);
    }

    if (v69.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v68);
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
    }

    p_buf = 0;
    v77 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }
  }

  for (j = *(E5RT::ExecutionStreamOperation::GetInOutPorts(v9) + 16); j; j = *j)
  {
    E5RT::IOPort::GetMemoryObject(&buf, j[5]);
    if (*(j + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, j[2], j[3]);
    }

    else
    {
      v68 = *(j + 1);
      v69.__r_.__value_.__r.__words[0] = j[4];
    }

    *&v69.__r_.__value_.__r.__words[1] = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>>(v64, &v68);
    if (v69.__r_.__value_.__r.__words[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69.__r_.__value_.__r.__words[2]);
    }

    if (v69.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v68);
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
    }

    v70 = 0;
    v71 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }
  }

  for (k = *(E5RT::ExecutionStreamOperation::GetOutputPorts(v9) + 16); k; k = *k)
  {
    E5RT::IOPort::GetMemoryObject(&buf, k[5]);
    if (*(k + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, k[2], k[3]);
    }

    else
    {
      v68 = *(k + 1);
      v69.__r_.__value_.__r.__words[0] = k[4];
    }

    *&v69.__r_.__value_.__r.__words[1] = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>>(v64, &v68);
    if (v69.__r_.__value_.__r.__words[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69.__r_.__value_.__r.__words[2]);
    }

    if (v69.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v68);
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
    }

    v66 = 0;
    v67 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }
  }

  *&v69.__r_.__value_.__l.__data_ = 0u;
  v68 = 0u;
  LODWORD(v69.__r_.__value_.__r.__words[2]) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&buf, "in_cached_keys_state");
  v13 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  E5RT::IOPort::GetPortDescriptor(&p_buf, v13);
  v14 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "in_cached_values_state");
  v15 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  E5RT::IOPort::GetPortDescriptor(&p_buf, v15);
  v17 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "in_cached_keys_state");
  v18 = p_buf;
  p_buf = 0;
  v75 = v18;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &buf.__r_.__value_.__l.__data_);
  v20 = v75;
  v75 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v21 = p_buf;
  p_buf = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "in_cached_values_state");
  v22 = p_buf;
  p_buf = 0;
  v75 = v22;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &buf.__r_.__value_.__l.__data_);
  v23 = v75;
  v75 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v24 = p_buf;
  p_buf = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "in_new_token_ids");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  E5RT::IOPort::GetPortDescriptor(&p_buf, InputPortRef);
  v26 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v70 = 1;
  v71 = a3;
  std::unordered_map<unsigned long,unsigned long>::unordered_map(&buf, &v70, 1);
  std::string::basic_string[abi:ne200100]<0>(&p_buf, "in_new_token_ids");
  v27 = v66;
  v66 = 0;
  v79[0] = v27;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &p_buf);
  v28 = v79[0];
  v79[0] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(p_buf);
  }

  v29 = v66;
  v66 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::~__hash_table(&buf);
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "in_relative_positions");
    v30 = E5RT::ExecutionStreamOperation::GetInputPortRef();
    E5RT::IOPort::GetPortDescriptor(&p_buf, v30);
    v31 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v70 = 2;
    v71 = a3;
    v72 = 3;
    v73 = a3 + a2;
    std::unordered_map<unsigned long,unsigned long>::unordered_map(&buf, &v70, 2);
    std::string::basic_string[abi:ne200100]<0>(&p_buf, "in_relative_positions");
    v32 = v66;
    v66 = 0;
    v79[0] = v32;
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &p_buf);
  }

  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "in_self_attention_logit_biases");
    v33 = E5RT::ExecutionStreamOperation::GetInputPortRef();
    E5RT::IOPort::GetPortDescriptor(&p_buf, v33);
    v34 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v70 = 2;
    v71 = a3;
    v72 = 3;
    v73 = a3 + a2;
    std::unordered_map<unsigned long,unsigned long>::unordered_map(&buf, &v70, 2);
    std::string::basic_string[abi:ne200100]<0>(&p_buf, "in_self_attention_logit_biases");
    v35 = v66;
    v66 = 0;
    v79[0] = v35;
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &p_buf);
  }

  else
  {
    {
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&buf, "reshapeForPromptSize failed, unexpected model version");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &buf);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "in_causal_mask");
    v36 = E5RT::ExecutionStreamOperation::GetInputPortRef();
    E5RT::IOPort::GetPortDescriptor(&p_buf, v36);
    v37 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v70 = 2;
    v71 = a3;
    v72 = 3;
    v73 = a3 + a2;
    std::unordered_map<unsigned long,unsigned long>::unordered_map(&buf, &v70, 2);
    std::string::basic_string[abi:ne200100]<0>(&p_buf, "in_causal_mask");
    v38 = v66;
    v66 = 0;
    v79[0] = v38;
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &p_buf);
    v39 = v79[0];
    v79[0] = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(p_buf);
    }

    v40 = v66;
    v66 = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::~__hash_table(&buf);
    std::string::basic_string[abi:ne200100]<0>(v41, "in_position_ids");
    v42 = E5RT::ExecutionStreamOperation::GetInputPortRef();
    E5RT::IOPort::GetPortDescriptor(&p_buf, v42);
    v43 = E5RT::OperandDescriptor::TensorDescriptor(p_buf);
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v70 = 1;
    v71 = a3;
    std::unordered_map<unsigned long,unsigned long>::unordered_map(&buf, &v70, 1);
    std::string::basic_string[abi:ne200100]<0>(&p_buf, "in_position_ids");
    v44 = v66;
    v66 = 0;
    v79[0] = v44;
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(&v68, &p_buf);
  }

  v45 = v79[0];
  v79[0] = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(p_buf);
  }

  v46 = v66;
  v66 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::~__hash_table(&buf);
  E5RT::ExecutionStreamOperation::ReshapeOperation();
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*v8);
  std::string::basic_string[abi:ne200100]<0>(&buf, "out_logits");
  v48 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, &buf.__r_.__value_.__l.__data_);
  if (!v48)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v50 = v48[5];
  v49 = v48[6];
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_137;
    }
  }

  else if (!a4)
  {
    goto LABEL_137;
  }

  if (E5RT::IOPort::IsDynamic(v50))
  {
    E5RT::TensorDataType::TensorDataType();
    p_buf = 1;
    v77 = a3;
    v78 = this[13];
    memset(&buf, 0, sizeof(buf));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&buf, &p_buf, v79, 3uLL);
    E5RT::TensorDescriptor::CreateTensorDesc();
    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v62 = v50;
    v63 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = v66;
    if (v66)
    {
      operator new();
    }

    v61 = 0;
    v66 = 0;
    E5RT_Private::SetMaxPortDescriptor();
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    if (this[20] < a3)
    {
      v58[1] = v50;
      v59 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT_Private::GetMaxPortDescriptor();
      E5RT::OperandDescriptor::TensorDescriptor(buf.__r_.__value_.__l.__data_);
      if (buf.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
      }

      v51 = v59;
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      v52 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = a3;
        _os_log_impl(&dword_220940000, v52, OS_LOG_TYPE_DEFAULT, "Allocating a new logits buffer for numTokens: %zu", &buf, 0xCu);
      }

      E5RT::TensorDescriptor::AllocateMemory();
      std::string::basic_string[abi:ne200100]<0>(&buf, "out_logits");
      p_buf = &buf;
      v53 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64, &buf.__r_.__value_.__l.__data_);
      std::shared_ptr<E5RT::MemoryObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(v53 + 5, v58);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v54 = v58[0];
      v58[0] = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      this[20] = a3;
    }

    v55 = v66;
    v66 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    E5RT::TensorDataType::~TensorDataType(&v70);
  }

LABEL_137:
  cgm::token_generation_inference::ajax::utils::bindBuffersToPorts(*v8, v64);
  this[18] = a3;
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&v68);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v64);
}

void sub_22099C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  v33 = a23;
  a23 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  E5RT::TensorDataType::~TensorDataType(&a31);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&a25);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

void sub_22099CA60()
{
  if (!*(v0 - 112))
  {
    JUMPOUT(0x22099CA50);
  }

  JUMPOUT(0x22099CA4CLL);
}

BOOL cgm::token_generation_inference::ajax::anonymous namespace::isV3(E5RT::ExecutionStreamOperation **a1)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_22099CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL cgm::token_generation_inference::ajax::anonymous namespace::isV2(E5RT::ExecutionStreamOperation **a1)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_self_attention_logit_biases");
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_22099CB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t E5RT::Span<int,18446744073709551615ul>::Slice(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || ((v3 = a1[1], v3 > a2) ? (v4 = a3 + a2 > v3) : (v4 = 1), v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEm_cold_1();
  }

  return *a1 + 4 * a2;
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::reset(uint64_t this, unint64_t a2)
{
  v2 = this;
  if (*(this + 152) < a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *(v2 + 88);
    std::string::basic_string[abi:ne200100]<0>(v5, "reset");
    cgm::token_generation_inference::ajax::AJAXE5Error::createContextExceededError(v4, v5, exception);
  }

  *(this + 152) = a2;
  return this;
}

void sub_22099CC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::getLastForwardLogits@<X0>(cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  v10[0] = _ZN3cgm26token_generation_inference4ajax5utils10outputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
  v10[1] = v4;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  result = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(v10, 0, *(this + 13) * *(this + 18));
  *a2 = *(this + 18);
  a2[1] = result;
  a2[2] = v6;
  a2[3] = 1;
  v7 = *(this + 13);
  a2[4] = v7;
  a2[5] = v7;
  return result;
}

void sub_22099CD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::anonymous namespace::copyTensorDescriptor(cgm::token_generation_inference::ajax::_anonymous_namespace_ *this, const E5RT::TensorDescriptor *a2)
{
  E5RT::TensorDescriptor::GetTensorShape(this);
  E5RT::TensorDescriptor::GetTensorDataType(v3, this);
  E5RT::TensorDescriptor::CreateTensorDesc();
  E5RT::TensorDataType::~TensorDataType(v3);
}

uint64_t std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void cgm::token_generation_inference::ajax::anonymous namespace::copyTensorDescriptor(E5RT::TensorDescriptor *a1, uint64_t a2)
{
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(a1);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *TensorShape, TensorShape[1], (TensorShape[1] - *TensorShape) >> 3);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = __p;
    do
    {
      v6[v5[2]] = v5[3];
      v5 = *v5;
    }

    while (v5);
  }

  E5RT::TensorDescriptor::GetTensorDataType(v7, a1);
  E5RT::TensorDescriptor::CreateTensorDesc();
  E5RT::TensorDataType::~TensorDataType(v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_22099CF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  E5RT::TensorDataType::~TensorDataType(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::moveToDynamicState(cgm::token_generation_inference::ajax::utils **this)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220940000, v2, OS_LOG_TYPE_DEFAULT, "GPU/CPU model moving to dynamic state.", v5, 2u);
  }

  (*(*this + 1))(this, 0);
  E5RT::ExecutionStream::ResetStream(this[9]);
  result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(this[7], v3);
  this[20] = 0;
  *(this + 232) = 1;
  return result;
}

uint64_t cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::moveToFullyLoadedState(cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel *this)
{
  cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::reshapeForPromptSize(this, 0, *(this + 11), 0);
  result = cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(*(this + 7), v2);
  *(this + 232) = 0;
  return result;
}

void cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::clearAllState(E5RT::ExecutionStreamOperation **this)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  v3 = os_signpost_id_generate(v2);

  v5 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_220940000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "TGI_GPU_Clear_State", "", v9, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN3cgm26token_generation_inference4ajax26FlexibleShapeAJAXE5MLModel13clearAllStateEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v3;
  v7 = _Block_copy(aBlock);
  (*(*this + 1))(this, 0);
  v8 = this[7];
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  cgm::token_generation_inference::ajax::utils::zeroAllMemoryObjects(v8, v9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v9);
  v7[2](v7);
}

void ___ZN3cgm26token_generation_inference4ajax26FlexibleShapeAJAXE5MLModel13clearAllStateEv_block_invoke(cgm::token_generation_inference::common::logging::CGMTGILogger *a1)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  v3 = v2;
  v4 = *(a1 + 4);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_220940000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TGI_GPU_Clear_State", "", v5, 2u);
  }
}

void cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::purgeSteps(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_keys_state");
    v4 = cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>();
    v6 = v5;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values_state");
    v7 = cgm::token_generation_inference::ajax::utils::inoutSpan<unsigned char>();
    v9 = v8;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v16 = 0;
    v17 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
    std::__sort<std::__less<int,int> &,int *>();
    v10 = *(a1 + 152);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = *a2;
      do
      {
        if (v13 == v16 || v12 != *v13)
        {
          cgm::token_generation_inference::ajax::utils::moveKVCacheEntry(v4, v6, v7, v9, (a1 + 184), (a1 + 208), v11++, v12);
          v10 = *(a1 + 152);
        }

        else
        {
          v13 += 4;
        }

        ++v12;
      }

      while (v12 < v10);
    }

    v14 = __p;
    *(a1 + 152) = v10 - ((v16 - __p) >> 2);
    if (v14)
    {
      v16 = v14;
      operator delete(v14);
    }
  }
}

void sub_22099D3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::~FlexibleShapeAJAXE5MLModel(cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel *this)
{
  cgm::token_generation_inference::ajax::FlexibleShapeAJAXE5MLModel::~FlexibleShapeAJAXE5MLModel(this);

  JUMPOUT(0x223D8FE50);
}

{
  *this = &unk_28344D980;
  *(this + 6) = &unk_28344DA08;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(this);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22099D694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return this;
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22099D7E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::__construct_node_hash<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22099DC00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::unique_ptr<E5RT::OperandDescriptor const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  this[1].__r_.__value_.__r.__words[0] = v5;
  return this;
}

uint64_t std::unordered_map<unsigned long,unsigned long>::unordered_map(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,unsigned long> const&>(a1, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,unsigned long> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__shared_ptr_pointer<E5RT::TensorDescriptor  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<E5RT::TensorDescriptor  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::TensorDescriptor  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ImageEmbeddingsProvider::projectEncodedImage(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    ImageEmbeddingsProvider::projectEncodedImage();
  }

  v4 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  v5 = os_signpost_id_generate(v4);

  v7 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_signpost_emit_with_name_impl(&dword_220940000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AFM_Project_Encoded_Image", "", &buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN23ImageEmbeddingsProvider19projectEncodedImageE13_EncodedImage_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v5;
  v9 = _Block_copy(aBlock);
  std::string::basic_string[abi:ne200100]<0>(&buf, "image_features");
  v10 = cgm::token_generation_inference::ajax::utils::inputSpan<unsigned char>();
  v12 = v11;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  memcpy(v10, *(a2 + 16), v12);
  if ((*(a1 + 47) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 47))
    {
      goto LABEL_25;
    }

LABEL_11:
    std::to_string(&v21, *(a1 + 64));
    v13 = std::string::insert(&v21, 0, "image_projection_", 0x11uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&buf, "_", 1uLL);
    v16 = v15->__r_.__value_.__r.__words[0];
    size = v15->__r_.__value_.__l.__size_;
    v22[0] = v15->__r_.__value_.__r.__words[2];
    *(v22 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
    v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v20 = *(a1 + 24);
    }

    if (v18 < 0)
    {
      std::string::__init_copy_ctor_external(&v19, v16, size);
    }

    else
    {
      v19.__r_.__value_.__r.__words[0] = v16;
      v19.__r_.__value_.__l.__size_ = size;
      LODWORD(v19.__r_.__value_.__r.__words[2]) = v22[0];
      *(&v19.__r_.__value_.__r.__words[2] + 3) = *(v22 + 3);
      *(&v19.__r_.__value_.__s + 23) = v18;
    }

    E5RT::ExecutionStreamOperation::SerializeInferenceFrameData();
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v16);
    goto LABEL_25;
  }

  if (*(a1 + 32))
  {
    goto LABEL_11;
  }

LABEL_25:
  E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 16));
  ++*(a1 + 64);
  v9[2](v9);
}

void sub_22099E368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  v35[2](v35);

  _Unwind_Resume(a1);
}

void ___ZN23ImageEmbeddingsProvider19projectEncodedImageE13_EncodedImage_block_invoke(cgm::token_generation_inference::common::logging::CGMTGILogger *a1)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  v3 = v2;
  v4 = *(a1 + 4);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_220940000, v3, OS_SIGNPOST_INTERVAL_END, v4, "AFM_Project_Encoded_Image", "", v5, 2u);
  }
}

uint64_t cgm::token_generation_inference::ajax::utils::inputSpan<unsigned char>()
{
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(InputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (!v4)
  {
    return 0;
  }

  return result;
}

void ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (!*(v4 + 16))
  {
    v11 = *(a2 + 16) + *(a2 + 8) / *a2 * *(a1 + 60);
LABEL_27:
    *(*(*(a1 + 32) + 8) + 24) = v11;
    return;
  }

  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = (v5 / *a2);
  if (v5 % *a2)
  {
    ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke_cold_1();
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    if (v12 != v6)
    {
      v33 = v12;
      v34 = 0;
      v36 = 0;
      v37 = 231;
      v35 = v6;
      *__p = v40;
      *&__p[8] = xmmword_220AE5410;
      *&__p[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v39 = 0;
      __src = v40;
      v30 = 2;
      v31 = &v33;
      v32 = 231;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__p, "Projection op expected {} embeddings per image but found {}.", 60, &v30);
      v17 = *&__p[16];
      if (*&__p[16] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (*&__p[16] >= 0x17uLL)
      {
        operator new();
      }

      v29 = __p[16];
      if (*&__p[16])
      {
        memmove(&v28, __src, *&__p[16]);
      }

      *(&v28 + v17) = 0;
      v25 = __src;
      if (__src != v40)
      {
        operator delete(__src);
      }

      v24 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v25);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke_cold_2();
      }

      goto LABEL_52;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "image_features");
    InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
    E5RT::IOPort::GetPortDescriptor(&v33, InputPortRef);
    v14 = E5RT::OperandDescriptor::TensorDescriptor(v33);
    Size = E5RT::TensorDescriptor::GetSize(v14);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (Size != v5)
    {
      v33 = Size;
      v34 = 0;
      v36 = 0;
      v37 = 231;
      v35 = v5;
      *__p = v40;
      *&__p[8] = xmmword_220AE5410;
      *&__p[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v39 = 0;
      __src = v40;
      v30 = 2;
      v31 = &v33;
      v32 = 231;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__p, "Projection op expected {} bytes per encoded image but found {}.", 63, &v30);
      v26 = *&__p[16];
      if (*&__p[16] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (*&__p[16] >= 0x17uLL)
      {
        operator new();
      }

      v29 = __p[16];
      if (*&__p[16])
      {
        memmove(&v28, __src, *&__p[16]);
      }

      *(&v28 + v26) = 0;
      v27 = __src;
      if (__src != v40)
      {
        operator delete(__src);
      }

      v24 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v27);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke_cold_2();
      }

      goto LABEL_52;
    }

    goto LABEL_16;
  }

  if (v8 == v7)
  {
LABEL_16:
    if (*(a2 + 24) == 1)
    {
      v16 = *(a1 + 60);
    }

    else
    {
      if (*(v4 + 56) != *(a1 + 56))
      {
        v18 = *(a2 + 16);
        *__p = *a2;
        *&__p[16] = v18;
        ImageEmbeddingsProvider::projectEncodedImage(v4, __p);
        *(v4 + 56) = *(a1 + 56);
      }

      v19 = *(a1 + 60);
      v20 = *v4;
      std::string::basic_string[abi:ne200100]<0>(__p, "image_embeddings");
      v22 = cgm::token_generation_inference::ajax::utils::outputSpan<unsigned char>();
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_27;
  }

  v33 = v7;
  v34 = 0;
  v36 = 0;
  v37 = 231;
  v35 = v8;
  *__p = v40;
  *&__p[8] = xmmword_220AE5410;
  *&__p[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v39 = 0;
  __src = v40;
  v30 = 2;
  v31 = &v33;
  v32 = 231;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__p, "Received pre-projected embeddings with size {}  but expected size {}", 68, &v30);
  v10 = *&__p[16];
  if (*&__p[16] > 0x7FFFFFFFFFFFFFF7uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (*&__p[16] >= 0x17uLL)
  {
    operator new();
  }

  v29 = __p[16];
  if (*&__p[16])
  {
    memmove(&v28, __src, *&__p[16]);
  }

  *(&v28 + v10) = 0;
  v23 = __src;
  if (__src != v40)
  {
    operator delete(__src);
  }

  v24 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke_cold_2();
  }

LABEL_52:

  if (v29 < 0)
  {
    operator delete(v28);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_22099EA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::inputEmbeddingsPerImageCount(_anonymous_namespace_ *this, const E5RT::ExecutionStreamOperation *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "image_features");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  E5RT::IOPort::GetPortDescriptor(&v8, InputPortRef);
  v3 = E5RT::OperandDescriptor::TensorDescriptor(v8);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  return *(*TensorShape + 8);
}

void sub_22099EB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

E5RT::ExecutionStream *cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::EspressoE5MLModule(E5RT::ExecutionStream *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  E5RT::ExecutionStream::CreateExecutionStream(a1);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 72))
  {
    v4 = E5RT::PrecompiledComputeOpCreateOptions::SetMutableMILWeightPaths();
    for (i = *(a2 + 64); i; i = *i)
    {
      v6 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v4);
      v4 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        v7 = i + 2;
        if (*(i + 39) < 0)
        {
          v7 = *v7;
        }

        v8 = i + 5;
        if (*(i + 63) < 0)
        {
          v8 = *v8;
        }

        LODWORD(v12.__r_.__value_.__l.__data_) = 136315394;
        *(v12.__r_.__value_.__r.__words + 4) = v7;
        WORD2(v12.__r_.__value_.__r.__words[1]) = 2080;
        *(&v12.__r_.__value_.__r.__words[1] + 6) = v8;
        _os_log_debug_impl(&dword_220940000, v6, OS_LOG_TYPE_DEBUG, "Loading operation with mutable weights symbol %s from weight file %s", &v12, 0x16u);
      }
    }
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1 + 1, &v12);
  v9 = v12.__r_.__value_.__r.__words[0];
  v12.__r_.__value_.__r.__words[0] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v11)
  {
    (*(*v11 + 8))();
  }

  return a1;
}

void sub_22099EDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = v18[2];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *v18;
  *v18 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(exception_object);
}

double cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::getMemoryBoundToInputPort@<D0>(_OWORD *a1@<X8>)
{
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  E5RT::IOPort::GetMemoryObject(&v4, InputPortRef);
  result = *&v4;
  *a1 = v4;
  return result;
}

double cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::getMemoryBoundToOutputPort@<D0>(_OWORD *a1@<X8>)
{
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetMemoryObject(&v4, OutputPortRef);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan()
{
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(InputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);

  return E5RT::BufferObject::GetDataSpan(v2);
}

uint64_t cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inoutSpan()
{
  v0 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(v0);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);

  return E5RT::BufferObject::GetDataSpan(v2);
}

uint64_t cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::outputSpan()
{
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(OutputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);

  return E5RT::BufferObject::GetDataSpan(v2);
}

void cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(E5RT::ExecutionStreamOperation **this)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[1]);
  v3 = E5RT::ExecutionStreamOperation::GetInOutPorts(this[1]);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[1]);
  std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(void)::$_0>(*(InputPorts + 16), 0);
  std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(void)::$_0>(*(v3 + 16), 0);
  v5 = *(OutputPorts + 16);

  std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(void)::$_0>(v5, 0);
}

void std::for_each[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>,cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(void)::$_0>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v10 = v2;
    v11 = v3;
    v5 = a1;
    do
    {
      E5RT::IOPort::GetMemoryObject(&v8, v5[5]);
      v7 = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (!v7)
      {
        cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindNewMemoryToPort(v5[5], v6);
      }

      v5 = *v5;
    }

    while (v5 != a2);
  }
}

void cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::unbindPorts(E5RT::ExecutionStreamOperation **this)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[1]);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this[1]);
  for (i = *(InputPorts + 16); i; i = *i)
  {
    cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::unbindPort(i[5], v3);
  }

  for (j = *(OutputPorts + 16); j; j = *j)
  {
    cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::unbindPort(j[5], v3);
  }
}

uint64_t cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::getTensorDescriptorForPort(cgm::token_generation_inference::espresso_inference::EspressoE5MLModule *this, const E5RT::IOPort *a2)
{
  E5RT::IOPort::GetPortDescriptor(&v7, this);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v6, "Found a null pointer to a port descriptor.");
    std::runtime_error::runtime_error(exception, &v6);
    exception->__vftable = &unk_28344D360;
  }

  if (!E5RT::OperandDescriptor::TryAsTensorDescriptor(v7))
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v6, "All ports should be buffers.");
    std::runtime_error::runtime_error(v5, &v6);
    v5->__vftable = &unk_28344D360;
  }

  v2 = E5RT::OperandDescriptor::TensorDescriptor(v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v2;
}

void sub_22099F250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (a17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindNewMemoryToPort(cgm::token_generation_inference::espresso_inference::EspressoE5MLModule *this, E5RT::IOPort *a2)
{
  TensorDescriptorForPort = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::getTensorDescriptorForPort(this, a2);
  E5RT::TensorDescriptor::GetSize(TensorDescriptorForPort);
  E5RT::BufferObject::AllocMemory();
  if (v4)
  {
    operator new();
  }

  E5RT::IOPort::BindMemoryObject();
  return 0;
}

void sub_22099F380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindPreAllocatedMemoryToPort(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::IOPort::BindMemoryObject();
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_22099F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_22099F474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::modelIsMilFormat(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v12, ".mil");
  if (!std::__fs::filesystem::path::__extension(this).__size_)
  {
    v3 = 0;
    goto LABEL_22;
  }

  std::__fs::filesystem::path::extension[abi:ne200100](this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12[1];
  }

  size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  if (v4 == size)
  {
    if ((v13 & 0x80u) == 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = v12[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v11;
    }

    else
    {
      v8 = v11.__r_.__value_.__r.__words[0];
    }

    v3 = memcmp(v7, v8, v4) == 0;
    if (v6 < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_19:
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_22:
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v3;
}

void sub_22099F5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::modelIsE5Format(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v12, ".e5");
  if (!std::__fs::filesystem::path::__extension(this).__size_)
  {
    v3 = 0;
    goto LABEL_22;
  }

  std::__fs::filesystem::path::extension[abi:ne200100](this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12[1];
  }

  size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  if (v4 == size)
  {
    if ((v13 & 0x80u) == 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = v12[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v11;
    }

    else
    {
      v8 = v11.__r_.__value_.__r.__words[0];
    }

    v3 = memcmp(v7, v8, v4) == 0;
    if (v6 < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_19:
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_22:
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v3;
}

void sub_22099F6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(exception_object);
}

cgm::token_generation_inference::ajax::AJAXE5Error *cgm::token_generation_inference::ajax::e5RunnerErrorCodeFromRuntimeError(cgm::token_generation_inference::ajax *this, const std::runtime_error *a2)
{
  if (result)
  {
    v3 = cgm::token_generation_inference::ajax::AJAXE5Error::getErrorCode(result) - 1;
    if (v3 > 5)
    {
      return 0;
    }

    else
    {
      return qword_220AE84C8[v3];
    }
  }

  return result;
}

void sub_22099FA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_atomic_property_(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = a2[3];
  return result;
}

void sub_2209A00B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  MEMORY[0x223D8FE50](v21, v20);
  _Unwind_Resume(a1);
}

void sub_2209A024C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = +[E5RunnerImageTokenizerObjC log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [E5RunnerImageTokenizerObjC tokenizeImageDataWithCallback:v25 outputBlock:?];
    }

    v27 = MEMORY[0x277CCA9B8];
    v29 = cgm::token_generation_inference::ajax::e5RunnerErrorCodeFromRuntimeError(v25, v28);
    a20 = *MEMORY[0x277CCA450];
    v30 = MEMORY[0x277CCACA8];
    (*(*v25 + 16))(v25);
    v31 = [v30 stringWithFormat:@"Failed to compute image tokens: %s."];
    a21 = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a21 forKeys:&a20 count:1];
    v33 = [v27 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:v29 userInfo:v32];

    (v22)[2](v22, 0, v33);
    __cxa_end_catch();
    JUMPOUT(0x2209A0208);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_2209A05DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      v2[7] = v3;
      operator delete(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x223D8FE50);
  }

  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2209A1140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void (**a16)(void, void, void), uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(v22 + 16), OS_LOG_TYPE_ERROR))
    {
      [E5RunnerObjC runTokens:v27 tokenMasks:? computeLogitsTokenCount:? outputBlock:?];
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = cgm::token_generation_inference::ajax::e5RunnerErrorCodeFromRuntimeError(v27, v28);
    a18 = *MEMORY[0x277CCA450];
    v31 = MEMORY[0x277CCACA8];
    (*(*v27 + 16))(v27);
    v32 = [v31 stringWithFormat:@"Failed to run inference: %s."];
    a19 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a19 forKeys:&a18 count:1];
    v34 = [v29 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:v30 userInfo:v33];

    (a16)[2](a16, 0, v34);
    __cxa_end_catch();
    JUMPOUT(0x2209A10D0);
  }

  _Unwind_Resume(a1);
}

void sub_2209A14C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<TGIE5KVCacheEntry>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      MEMORY[0x223D8FE30](v3, 0x1000C8077774924);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      MEMORY[0x223D8FE30](v4, 0x1000C8077774924);
    }

    MEMORY[0x223D8FE50](v2, 0x1010C402BD90E94);
  }

  return a1;
}

void sub_2209A2100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = [*(v31 + 3744) log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      +[E5RunnerObjC compiledModelWithConfiguration:bundleCachePath:error:];
    }

    if (v30)
    {
      v37 = MEMORY[0x277CCA9B8];
      v38 = cgm::token_generation_inference::ajax::e5RunnerErrorCodeFromRuntimeError(v34, v36);
      a20 = *MEMORY[0x277CCA450];
      v39 = MEMORY[0x277CCACA8];
      (*(*v34 + 16))(v34);
      v40 = [v39 stringWithFormat:@"Failed to compile model: %s."];
      a21 = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a21 forKeys:&a20 count:1];
      *v30 = [v37 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:v38 userInfo:v41];
    }

    __cxa_end_catch();
    JUMPOUT(0x2209A20ACLL);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::compilerOptionsForModelType(cgm::token_generation_inference::ajax::utils *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Can't compile unknown model type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    cgm::token_generation_inference::ajax::utils::makeANEAjaxCompilerOptions(1, a2);
  }

  else if (a1 == 2)
  {

    cgm::token_generation_inference::ajax::utils::makeGPUAjaxCompilerOptions(2, a2);
  }

  else
  {

    cgm::token_generation_inference::ajax::utils::makeCPUAjaxCompilerOptions(a1, a2);
  }
}

void sub_2209A2788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = [*(v27 + 3744) log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [E5RunnerObjC doesModelRequireCompilationWithConfiguration:v26 bundleCachePath:v30];
    }

    __cxa_end_catch();
    JUMPOUT(0x2209A2740);
  }

  _Unwind_Resume(a1);
}

void sub_2209A2958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TGIE5ModelConfiguration::~TGIE5ModelConfiguration(TGIE5ModelConfiguration *this)
{
  if (this[4].var1.var0.var0.var0.var0[7] < 0)
  {
    operator delete(*(&this[3].var1.var0.var0.var1 + 2));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&this[2].var1.var0.var0.var1.var1);
  v2 = (this + 56);
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 1;
  std::vector<TGIE5AdapterConfiguration>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(&this->var1.var0.var0.var1 + 23) < 0)
  {
    operator delete(this->var1.var0.var0.var1.var0);
  }
}

void std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TGIE5Function>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TGIE5Function>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 8) == 1 && *(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      v4 = v3 - 8;
      if (*(v3 - 41) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 8;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void std::vector<TGIE5AdapterConfiguration>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TGIE5AdapterConfiguration>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TGIE5AdapterConfiguration>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v4 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 9;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<signed char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void ___ZN12_GLOBAL__N_118tokenMasksToVectorEP7NSArrayIP16TGITokenMaskObjCE_block_invoke(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = *(*(a1 + 32) + 8);
      v7 = *a2++;
      v8 = v7;
      std::vector<signed char>::push_back[abi:ne200100](v6 + 48, &v8);
      --v3;
    }

    while (v3);
  }
}

uint64_t cgm::token_generation_inference::common::IdleDurationTelemetrySampler<std::chrono::steady_clock>::shouldEmitTelemetryForNextEvent(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if ((v2.__d_.__rep_ - *(a1 + 24)) / 1000000.0 >= *(a1 + 8))
    {
      *(a1 + 24) = v2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = 1;
    *(a1 + 16) = 1;
    *(a1 + 24) = std::chrono::steady_clock::now();
  }

  return v3;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2209A3274(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2209A3374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v13 + 47) < 0)
  {
    operator delete(*(v13 + 24));
  }

  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  a12 = &a9;
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_2209A3BA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2209A3FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = *(v23 + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(TGIE5BaseModelObjC *)v27 load:v28];
    }

    if (v22)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = cgm::token_generation_inference::ajax::e5RunnerErrorCodeFromRuntimeError(v27, v29);
      a15 = *MEMORY[0x277CCA450];
      v32 = MEMORY[0x277CCACA8];
      (*(*v27 + 16))(v27);
      v33 = [v32 stringWithFormat:@"Failed to load model: %s."];
      a16 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a16 forKeys:&a15 count:1];
      *v22 = [v30 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:v31 userInfo:v34];
    }

    __cxa_end_catch();
    JUMPOUT(0x2209A3FC8);
  }

  _Unwind_Resume(a1);
}

void sub_2209A4290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_atomic_property__0(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __assign_helper_atomic_property_(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::default_delete<cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x223D8FE50);
  }
}

void std::__shared_ptr_pointer<cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2209A4700(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2209A4830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *a1, std::string::value_type **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

__CFString *TGIE5ModelTypeObjcToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown model type: %ld", a1];
  }

  else
  {
    v2 = off_27844FC38[a1];
  }

  return v2;
}

void sub_2209A51E8(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, void *__pa, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, TGIE5AdapterConfiguration *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a34);
  a34 = &a31;
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](&a34);
  a34 = &a52;
  std::vector<TGIE5AdapterConfiguration>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TGIE5AdapterConfiguration>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TGIE5AdapterConfiguration>::__emplace_back_slow_path<TGIE5AdapterConfiguration>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t TGIIsEqualAllowingNil(objc_object *a1, objc_object *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    if (!v3 || v4)
    {
      v6 = [v3 isEqual:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t std::vector<TGIE5AdapterConfiguration>::__emplace_back_slow_path<TGIE5AdapterConfiguration>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TGIE5AdapterConfiguration>>(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *&v19 = 72 * v2 + 72;
  v11 = a1[1];
  v12 = 72 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<TGIE5AdapterConfiguration>::~__split_buffer(&v17);
  return v16;
}