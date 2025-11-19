void sub_26C74A840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const> *,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v8 = *a3;
  v56 = v7;
  v57 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 - 1);
  v54 = *(a2 - 2);
  v55 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8(&v56, &v54);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  if (v10)
  {
    i = a1;
    do
    {
      v12 = *a3;
      v52 = v7;
      v53 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = i[3];
      v50 = i[2];
      v51 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v12(&v52, &v50);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      i += 2;
    }

    while ((v14 & 1) == 0);
  }

  else
  {
    for (i = a1 + 2; i < v4; i += 2)
    {
      v15 = *a3;
      v48 = v7;
      v49 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = i[1];
      v46 = *i;
      v47 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v15(&v48, &v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      if (v17)
      {
        break;
      }
    }
  }

  if (i < v4)
  {
    do
    {
      v18 = *a3;
      v44 = v7;
      v45 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(v4 - 1);
      v42 = *(v4 - 2);
      v43 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v18(&v44, &v42);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }

      v4 -= 2;
    }

    while ((v20 & 1) != 0);
  }

  while (i < v4)
  {
    v21 = *i;
    *i = *v4;
    *v4 = v21;
    v22 = i[1];
    i[1] = v4[1];
    v4[1] = v22;
    do
    {
      v23 = *a3;
      v40 = v7;
      v41 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = i[3];
      v38 = i[2];
      v39 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v23(&v40, &v38);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }

      i += 2;
    }

    while (!v25);
    do
    {
      v26 = *a3;
      v36 = v7;
      v37 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(v4 - 1);
      v34 = *(v4 - 2);
      v35 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v26(&v36, &v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v35);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v37);
      }

      v4 -= 2;
    }

    while ((v28 & 1) != 0);
  }

  v29 = (i - 2);
  if (i - 2 != a1)
  {
    v30 = *v29;
    *v29 = 0;
    *(i - 1) = 0;
    v31 = a1[1];
    *a1 = v30;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }
  }

  v32 = *(i - 1);
  *(i - 2) = v7;
  *(i - 1) = v6;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  return i;
}

void sub_26C74AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v29 = *(v27 - 104);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(v27 - 88);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const> *,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v8 = *a1;
  v7 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 3];
    v56 = a1[v6 + 2];
    v57 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = v8;
    v55 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v9(&v56, &v54);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v55);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
    }

    v6 += 2;
  }

  while ((v11 & 1) != 0);
  v12 = &a1[v6];
  if (v6 == 2)
  {
    if (v12 < a2)
    {
      for (a2 -= 2; ; a2 -= 2)
      {
        v17 = *a3;
        v18 = a2[1];
        v52 = *a2;
        v53 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v8;
        v51 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = v17(&v52, &v50);
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v51);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v53);
        }

        v20 = v12 >= a2 ? 1 : v19;
        if (v20)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v14 = *(a2 - 2);
      v13 = *(a2 - 1);
      a2 -= 2;
      v15 = *a3;
      v48 = v14;
      v49 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = v8;
      v47 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v15(&v48, &v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }
    }

    while ((v16 & 1) == 0);
  }

  if (v12 >= a2)
  {
    v21 = &a1[v6];
  }

  else
  {
    v21 = &a1[v6];
    v22 = a2;
    do
    {
      v23 = *v21;
      *v21 = *v22;
      *v22 = v23;
      v24 = v21[1];
      v21[1] = v22[1];
      v22[1] = v24;
      do
      {
        v26 = v21[2];
        v25 = v21[3];
        v21 += 2;
        v27 = *a3;
        v44 = v26;
        v45 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v8;
        v43 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v27(&v44, &v42);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v43);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v45);
        }
      }

      while ((v28 & 1) != 0);
      do
      {
        v30 = *(v22 - 2);
        v29 = *(v22 - 1);
        v22 -= 2;
        v31 = *a3;
        v40 = v30;
        v41 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v8;
        v39 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = v31(&v40, &v38);
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v39);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v41);
        }
      }

      while (!v32);
    }

    while (v21 < v22);
  }

  v33 = (v21 - 2);
  if (v21 - 2 != a1)
  {
    v34 = *v33;
    *v33 = 0;
    *(v21 - 1) = 0;
    v35 = a1[1];
    *a1 = v34;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }
  }

  v36 = *(v21 - 1);
  *(v21 - 2) = v8;
  *(v21 - 1) = v7;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  return v21 - 2;
}

void sub_26C74AF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 1);
        v44 = *(a2 - 2);
        v45 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[1];
        v42 = *a1;
        v43 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = v7(&v44, &v42);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v43);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v45);
        }

        if (v10)
        {
          v11 = *a1;
          *a1 = *(v4 - 2);
          *(v4 - 2) = v11;
          v12 = a1[1];
          a1[1] = *(v4 - 1);
          *(v4 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_19:
  v13 = a1 + 4;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,0>(a1, a1 + 2, a1 + 4, a3);
  v14 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v32 = v4;
  while (1)
  {
    v17 = *a3;
    v18 = v14[1];
    v40 = *v14;
    v41 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v13[1];
    v38 = *v13;
    v39 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17(&v40, &v38);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    }

    if (v20)
    {
      v33 = v16;
      v21 = *v14;
      v22 = v14[1];
      v23 = v15;
      *v14 = 0;
      v14[1] = 0;
      while (1)
      {
        v24 = a1 + v23;
        v25 = *(a1 + v23 + 32);
        *(v24 + 4) = 0;
        *(v24 + 5) = 0;
        v26 = *(a1 + v23 + 56);
        *(v24 + 3) = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        if (v23 == -32)
        {
          break;
        }

        v27 = *a3;
        v36 = v21;
        v37 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = *(a1 + v23 + 24);
        v34 = *(a1 + v23 + 16);
        v35 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = v27(&v36, &v34);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v35);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v37);
          if ((v29 & 1) == 0)
          {
            v13 = (a1 + v23 + 32);
            goto LABEL_46;
          }
        }

        else if (!v29)
        {
          goto LABEL_46;
        }

        v13 -= 2;
        v23 -= 16;
      }

      v13 = a1;
LABEL_46:
      v30 = v13[1];
      *v13 = v21;
      v13[1] = v22;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      v16 = v33 + 1;
      v4 = v32;
      if (v33 == 7)
      {
        return v14 + 2 == v32;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 2;
    if (v14 == v4)
    {
      return 1;
    }
  }
}

void sub_26C74B298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *a4;
        v14 = v12[1];
        v23 = *v12;
        v24 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = a1[1];
        v21 = *a1;
        v22 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v13(&v23, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }

        if (v16)
        {
          v17 = *v12;
          *v12 = *a1;
          *a1 = v17;
          v18 = v12[1];
          v12[1] = a1[1];
          a1[1] = v18;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_26C74B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v6 = a1;
  v36 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = (a4 - a1) >> 3;
  v10 = v9 + 1;
  v11 = (a1 + 16 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v13 = *a2;
    v50 = *v11;
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 3);
    v48 = *(v11 + 2);
    v49 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v13(&v50, &v48);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v49);
    }

    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v50 + 1));
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v15)
    {
LABEL_12:
      ++v11;
      v10 = v12;
    }
  }

LABEL_13:
  v16 = *a2;
  v17 = *(v11 + 1);
  v46 = *v11;
  v47 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5[1];
  v44 = *v5;
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v16(&v46, &v44);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  if ((v19 & 1) == 0)
  {
    v20 = v5[1];
    v35 = *v5;
    *v5 = 0;
    v5[1] = 0;
    v21 = v6;
    while (1)
    {
      v22 = v11;
      v23 = *v11;
      *v11 = 0;
      *(v11 + 1) = 0;
      v24 = v5[1];
      *v5 = v23;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      if (v36 < v10)
      {
LABEL_48:
        v34 = v22[1];
        *v22 = v35;
        v22[1] = v20;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v34);
        }

        return;
      }

      v25 = 2 * v10;
      v10 = (2 * v10) | 1;
      v11 = (v6 + 16 * v10);
      v26 = v25 + 2;
      if (v25 + 2 < a3)
      {
        v27 = *a2;
        v28 = *v11;
        v43 = v28;
        if (*(&v28 + 1))
        {
          atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v29 = *(v11 + 3);
        v41 = *(v11 + 2);
        v42 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = v27(&v43, &v41);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v42);
        }

        if (!*(&v43 + 1))
        {
          if (!v30)
          {
            goto LABEL_36;
          }

LABEL_35:
          ++v11;
          v10 = v26;
          goto LABEL_36;
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v43 + 1));
        if (v30)
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      v31 = *a2;
      v32 = *(v11 + 1);
      v39 = *v11;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v35;
      v38 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      v6 = v21;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
      }

      v5 = v22;
      if (v33)
      {
        goto LABEL_48;
      }
    }
  }
}

void sub_26C74B740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (*(v24 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v24 - 88));
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_26C74B8B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(void *a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_12;
    }

    v12 = *a2;
    v13 = v8[3];
    v23 = v8[2];
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v8[4];
    v14 = v8[5];
    v16 = v8 + 4;
    v21 = v15;
    v22 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v12(&v23, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      v9 = v16;
      v6 = v11;
      goto LABEL_12;
    }

    if (v17)
    {
      goto LABEL_11;
    }

LABEL_12:
    v18 = *v9;
    *v9 = 0;
    v9[1] = 0;
    v19 = a1[1];
    *a1 = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_26C74B9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>,std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>),std::shared_ptr<EQKit::OpticalKern::Edge::Segment const>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 16 * (v4 >> 1));
    v10 = *a3;
    v11 = *v9;
    v29 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a2 - 8);
    v13 = (a2 - 16);
    v27 = *(a2 - 16);
    v28 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v10(&v29, &v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v29 + 1));
    }

    if (v14)
    {
      v16 = *(a2 - 16);
      v15 = *(a2 - 8);
      *v13 = 0;
      v13[1] = 0;
      do
      {
        v17 = v9;
        v18 = *v9;
        *v9 = 0;
        v9[1] = 0;
        v19 = v13[1];
        *v13 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 16 * v8);
        v20 = *a3;
        v21 = *v9;
        v26 = v21;
        if (*(&v21 + 1))
        {
          atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v24 = v16;
        v25 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v20(&v26, &v24);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v25);
        }

        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26 + 1));
        }

        v13 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v17[1];
      *v17 = v16;
      v17[1] = v15;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      }
    }
  }
}

void sub_26C74BB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::OpticalKern::Edge::Segment::isDistanceToSmallerThanThreshold()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _compareSegments(const Edge::Segment &, const Edge::Segment &, CGFloat, CGFloat &, Edge::CGPointVector &, Edge::CGPointVectors *)"}];

  return [v0 handleFailureInFunction:v1 file:@"EQKitOpticalKern.mm" lineNumber:315 description:@"both segments needs at least one bucket"];
}

void EQKit::OpticalKern::Spec::Entry::~Entry(EQKit::OpticalKern::Spec::Entry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void sub_26C74BC98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

EQKit::OpticalKern::Spec::Entry *EQKit::OpticalKern::Spec::Entry::Entry(EQKit::OpticalKern::Spec::Entry *this, CGPoint a2, const CGPath *a3)
{
  *this = 1;
  *(this + 8) = a2;
  *(this + 3) = a3;
  *(this + 4) = 0;
  *(this + 20) = -1;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  return this;
}

void sub_26C74BD04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

EQKit::OpticalKern::Spec::Entry *EQKit::OpticalKern::Spec::Entry::Entry(EQKit::OpticalKern::Spec::Entry *this, CGPoint a2, const __CTFont *a3, __int16 a4)
{
  *this = 2;
  *(this + 8) = a2;
  *(this + 3) = 0;
  *(this + 4) = a3;
  *(this + 20) = a4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  return this;
}

void sub_26C74BD6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::OpticalKern::Spec::Entry::Entry(uint64_t this, CGPoint a2, double a3)
{
  *this = 3;
  *(this + 8) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = -1;
  *(this + 48) = a3;
  *(this + 56) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = 3;
  *(this + 8) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = -1;
  *(this + 48) = a3;
  *(this + 56) = 0;
  *(this + 64) = 0;
  return this;
}

EQKit::OpticalKern::Spec::Entry *EQKit::OpticalKern::Spec::Entry::Entry(EQKit::OpticalKern::Spec::Entry *this, const EQKit::OpticalKern::Spec::Entry *a2)
{
  *this = *a2;
  *(this + 8) = *(a2 + 8);
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  *(this + 3) = v4;
  *(this + 4) = v3;
  *(this + 20) = *(a2 + 20);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v4)
  {
    CFRetain(v4);
    v3 = *(this + 4);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  return this;
}

void sub_26C74BE38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::OpticalKern::Spec::Entry::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
    }

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    v7 = *(a2 + 56);
    v6 = *(a2 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 64);
    *(a1 + 56) = v7;
    *(a1 + 64) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      CFRetain(v10);
    }
  }

  return a1;
}

CGPathRef EQKit::OpticalKern::Spec::Entry::copyPath(EQKit::OpticalKern::Spec::Entry *this)
{
  if (*(this + 3))
  {
    v3 = *(this + 3);

    return CFRetain(v3);
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v5 = *(this + 4);
    if (!v5)
    {
      return 0;
    }

    v6 = *(this + 20);
    if (v6 == 0xFFFF)
    {
      return 0;
    }

    else
    {
      memset(&v7, 0, sizeof(v7));
      CGAffineTransformMakeScale(&v7, 1.0, -1.0);
      return CTFontCreatePathForGlyph(v5, v6, &v7);
    }
  }
}

void EQKit::OpticalKern::Spec::appendEntry(EQKit::OpticalKern::Spec *this, CGPoint a2, const CGPath *a3)
{
  EQKit::OpticalKern::Spec::Entry::Entry(v4, a2, a3);
  std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:nn200100](this, v4);
  EQKit::OpticalKern::Spec::Entry::~Entry(v4);
}

void sub_26C74BFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Spec::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:nn200100](uint64_t a1, const EQKit::OpticalKern::Spec::Entry *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<EQKit::OpticalKern::Spec::Entry>::__emplace_back_slow_path<EQKit::OpticalKern::Spec::Entry>(a1, a2);
  }

  else
  {
    EQKit::OpticalKern::Spec::Entry::Entry(*(a1 + 8), a2);
    result = v3 + 72;
    *(a1 + 8) = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void EQKit::OpticalKern::Spec::appendEntry(EQKit::OpticalKern::Spec *this, CGPoint a2, const __CTFont *a3, __int16 a4)
{
  EQKit::OpticalKern::Spec::Entry::Entry(v5, a2, a3, a4);
  std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:nn200100](this, v5);
  EQKit::OpticalKern::Spec::Entry::~Entry(v5);
}

void sub_26C74C07C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Spec::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

void EQKit::OpticalKern::Spec::appendEntry(EQKit::OpticalKern::Spec *this, CGPoint a2, double a3)
{
  v3 = 3;
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v7 = -1;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  std::vector<EQKit::OpticalKern::Spec::Entry>::push_back[abi:nn200100](this, &v3);
  EQKit::OpticalKern::Spec::Entry::~Entry(&v3);
}

void sub_26C74C0E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::OpticalKern::Spec::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EQKit::OpticalKern::Spec::Entry>::__emplace_back_slow_path<EQKit::OpticalKern::Spec::Entry>(uint64_t a1, const EQKit::OpticalKern::Spec::Entry *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  EQKit::OpticalKern::Spec::Entry::Entry((72 * v2), a2);
  v15 = 72 * v2 + 72;
  v7 = *(a1 + 8);
  v8 = (72 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>,EQKit::OpticalKern::Spec::Entry*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(&v13);
  return v12;
}

void sub_26C74C22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<EQKit::OpticalKern::Spec::Entry>,EQKit::OpticalKern::Spec::Entry*>(int a1, EQKit::OpticalKern::Spec::Entry *a2, EQKit::OpticalKern::Spec::Entry *a3, EQKit::OpticalKern::Spec::Entry *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = EQKit::OpticalKern::Spec::Entry::Entry(this, v7);
      v7 = (v7 + 72);
      this = (v8 + 72);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      EQKit::OpticalKern::Spec::Entry::~Entry(v6);
      v6 = (v6 + 72);
    }
  }
}

uint64_t std::__split_buffer<EQKit::OpticalKern::Spec::Entry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    EQKit::OpticalKern::Spec::Entry::~Entry((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *EQKit::Layout::Config::Config(_DWORD *this)
{
  *this = 2;
  return this;
}

{
  *this = 2;
  return this;
}

void sub_26C74C510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _BOOL(NSDictionary *a1, NSString *a2)
{
  v4 = objc_opt_class();
  v5 = EQKitUtilDynamicCast(v4, [(NSDictionary *)a1 objectForKey:a2]);

  return [v5 BOOLValue];
}

void sub_26C74CDF0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_26C74CEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPObjectContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C74D418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_26C74D6C8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_26C74DAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::find<long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<long long,std::pair<long long const,NSMutableArray * {__strong}>>(void *a1, unint64_t *a2)
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

void sub_26C74F4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_26C74F7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPDataManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C74F918(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_26C74FA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C74FF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_26C7501C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_26C750690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24)
{
  _Block_object_dispose((v31 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_26C7514E8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_26C751EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11)
  {
  }

  _Unwind_Resume(a1);
}

void TSP::DataDigestForString(TSP *this@<X0>, uint64_t a2@<X8>)
{
  v11 = this;
  if ([(TSP *)v11 length]== 40)
  {
    v4 = [(TSP *)v11 UTF8String];
    v5 = 0;
    v6 = (v4 + 1);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v7 > 96)
      {
        LOBYTE(v7) = v7 - 32;
      }

      v9 = v7;
      if (v8 > 96)
      {
        LOBYTE(v8) = v8 - 32;
      }

      if (v8 > 64)
      {
        LOBYTE(v8) = v8 + 9;
      }

      v10 = 16 * v7;
      if (v9 > 64)
      {
        v10 -= 112;
      }

      *(a2 + v5++) = v10 & 0xF0 | v8 & 0xF;
      v6 += 2;
    }

    while (v5 != 20);
  }

  else
  {
    [(TSP *)v11 length];
    TSULogErrorInFunction();
  }
}

void sub_26C7522EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_26C752B2C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_26C7534DC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,TSPData * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,TSPData * {__weak}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::find<std::array<unsigned char,20ul>>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2 && result[3] == a2[1] && *(result + 8) == *(a2 + 4))
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long long const,TSPData * {__weak}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,TSP::ObjectIdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,std::equal_to<long long const>,TSP::ObjectIdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,TSPData * {__weak}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_26C754DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,TSPData * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,TSPData * {__weak}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::__emplace_unique_key_args<std::array<unsigned char,20ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,20ul> const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_25;
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
LABEL_25:
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
      goto LABEL_25;
    }

LABEL_24:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || *(v7 + 8) != *(a2 + 4))
  {
    goto LABEL_24;
  }

  return v7;
}

void sub_26C755050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<long long const,TSPData * {__weak}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,TSP::ObjectIdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,std::equal_to<long long const>,TSP::ObjectIdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,TSPData * {__weak}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long const,TSPData * {__weak}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,TSP::ObjectIdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,std::equal_to<long long const>,TSP::ObjectIdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,TSPData * {__weak}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long const,TSPData * {__weak}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,TSP::ObjectIdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,std::equal_to<long long const>,TSP::ObjectIdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,TSPData * {__weak}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 5);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_26C755758(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C755E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C7567D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 48) = *(a2 + 48);
  return result;
}

void sub_26C7568F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C757A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  objc_end_catch();
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C757DF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C758978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C758B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C758DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_26C758F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_26C759270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_26C7595E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSPCGDataProviderSkipForward(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 offset];
  [v3 seekToOffset:v4 + a2];
  v5 = [v3 offset] - v4;

  return v5;
}

void TSPCGDataProviderReleaseInfo(void *a1)
{
  cf = a1;
  [cf close];
  CFRelease(cf);
}

void sub_26C759BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, objc_super a12)
{
  a12.super_class = TSPTemporaryDataStorage;
  [(_Unwind_Exception *)&a12 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C75A838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_26C75AE98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C75AF5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C75BC34(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_26C75BCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPDataRepReadChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C75D13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C75D2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C75D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C75D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C75DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UnsafePointer()
{
  if (TSPBundle::once != -1)
  {
    TSPBundle_cold_1();
  }

  v1 = TSPBundle::bundle;

  return v1;
}

uint64_t __TSPBundle_block_invoke()
{
  TSPBundle::bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_26C75E074(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C75E1D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C75E348(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C75E40C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t TSP::ObjectStateIdentifier::ObjectStateIdentifier(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t TSP::ObjectStateIdentifier::ObjectStateIdentifier(uint64_t this, uint64_t a2)
{
  *this = 1;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 1;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

TSP::ObjectStateIdentifier *TSP::ObjectStateIdentifier::ObjectStateIdentifier(TSP::ObjectStateIdentifier *this, NSString *a2)
{
  v3 = a2;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 1;
  *(this + 3) = v3;
  return this;
}

{
  v3 = a2;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 1;
  *(this + 3) = v3;
  return this;
}

void TSP::ObjectStateIdentifier::~ObjectStateIdentifier(id *this)
{
}

{
}

uint64_t TSP::ObjectStateIdentifier::dataState(TSP::ObjectStateIdentifier *this)
{
  if ((*this & 1) == 0)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int64_t TSP::ObjectStateIdentifier::dataState() const"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectStateIdentifier.mm"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:34 description:@"Asked for data state when we have none"];
  }

  return *(this + 1);
}

uint64_t TSP::ObjectStateIdentifier::setDataState(uint64_t this, uint64_t a2)
{
  *this = 1;
  *(this + 16) = 0;
  *(this + 8) = a2;
  return this;
}

id TSP::ObjectStateIdentifier::fileState(TSP::ObjectStateIdentifier *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSP::ObjectStateIdentifier::fileState() const"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectStateIdentifier.mm"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:52 description:@"Asked for file state when we have none"];
  }

  v5 = *(this + 3);

  return v5;
}

void TSP::ObjectStateIdentifier::setFileState(TSP::ObjectStateIdentifier *this, NSString *a2)
{
  *this = 0;
  *(this + 16) = 1;
  objc_storeStrong(this + 3, a2);
}

void sub_26C75EE00(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_26C75F16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_26C75F240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_26C75F764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPAVAssetResourceLoaderDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C7604DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPCryptoComponentWriteChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C760A1C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_26C760F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPCryptoReadChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C761AC0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 256), 8);
  _Block_object_dispose((v5 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_26C76295C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C762B48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C762C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TSKMainThreadRunLoopHash()
{
  objc_opt_class();
  v0 = TSUDynamicCast();

  return [v0 hash];
}

uint64_t TSKMainThreadRunLoopPerform()
{
  objc_opt_class();
  v0 = TSUDynamicCast();

  return [v0 p_flushPendingMainThreadBlocksQueueAcquiringLock:1];
}

void sub_26C766438(void *exc_buf)
{
  if (v1)
  {
    objc_end_catch();
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x26C7663FCLL);
}

void -[TSKAccessController p_blockMainThreadForWrite](TSKAccessController *self, SEL a2)
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_blockMainThreadForWrite]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 648, @"this method should only be invoked on the main thread"}];
  }

  if (self->_secondaryThreadWriting)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_blockMainThreadForWrite]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 649, @"shouldn't be trying to block the main thread for a secondary thread write if there's already one ongoing"}];
  }

  self->_secondaryThreadWriting = 1;
  if ([(TSKAccessController *)self p_hasRead])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAccessController p_blockMainThreadForWrite]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAccessController.m"), 655, @"failed to release read privs"}];
  }

  [(TSKAccessController *)self signalIdentifier:@"kTSKMainThreadBlockedIdentifier"];
  [(TSKAccessController *)self waitOnIdentifier:@"kTSKWriteCompleteIdentifier"];
  self->_secondaryThreadWriting = 0;
  [(TSKAccessController *)self waitOnIdentifier:@"kTSKPostWriteCompleteIdentifier"];
}

void sub_26C76AEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSKModelPathToDescendant(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a1 childEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v21 + 1) + 8 * v8);
      if (v9 == a2)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
        v6 = v5;
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    result = __TSKModelPathToDescendant_block_invoke(v5, a1, v9);
    if (result)
    {
      return result;
    }
  }

LABEL_13:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [a1 childEnumerator];
  result = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = TSKModelPathToDescendant(v15, a2);
        if (v16)
        {
          return [__TSKModelPathToDescendant_block_invoke(v16 a1];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      result = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t __TSKModelPathToDescendant_block_invoke(int a1, void *a2, id a3)
{
  if (!a2 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%p", object_getClassName(a3), a3];
  }

  return [a2 modelPathComponentForChild:a3];
}

uint64_t TSKBundle()
{
  if (TSKBundle_onceToken != -1)
  {
    TSKBundle_cold_1();
  }

  return TSKBundle_sTSKBundle;
}

uint64_t __TSKBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  TSKBundle_sTSKBundle = result;
  return result;
}

void sub_26C78136C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x26C781298);
  }

  _Unwind_Resume(a1);
}

void sub_26C78137C(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_26C78139C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x26C7813A4);
  }

  objc_terminate();
}

uint64_t TSKPositionSearchReferenceComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 searchReferencePoint];
  v6 = v5;
  v8 = v7;
  [a3 searchReferencePoint];
  if (v6 == v9 && v8 == v10)
  {
    v15 = [a2 model];
    if (v15 != [a3 model])
    {
      return 0;
    }

    result = [objc_msgSend(a2 "selection")];
    if (result)
    {
      return result;
    }

    v16 = [a2 annotation];
    if (v16 == [a3 annotation])
    {
      return 0;
    }

    if (![a2 annotation])
    {
      return -1;
    }

    if (![a3 annotation])
    {
      return 1;
    }

    v17 = [objc_msgSend(a2 "annotation")];
    if (v17 < [objc_msgSend(a3 "annotation")])
    {
      return -1;
    }

    v18 = [objc_msgSend(a2 "annotation")];
    return v18 > [objc_msgSend(a3 "annotation")];
  }

  else
  {
    v12 = 1;
    v13 = -1;
    if (v6 >= v9)
    {
      v13 = v6 > v9;
    }

    if (v8 <= v10)
    {
      v12 = v13;
    }

    if (v8 >= v10)
    {
      return v12;
    }

    else
    {
      return -1;
    }
  }
}

void sub_26C788C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C78936C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex p_registerProperty(uint64_t a1, const void *a2)
{
  v4 = sStringToPropertyMap;
  if (!sStringToPropertyMap)
  {
    if (sPropertyToStringMap)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_registerProperty(TSSProperty, NSString *)"}];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 25, @"Two-way dictionaries not set up correctly."}];
    }

    sStringToPropertyMap = CFDictionaryCreateMutable(0, 4624, MEMORY[0x277CBF138], 0);
    sPropertyToStringMap = CFDictionaryCreateMutable(0, 4624, 0, MEMORY[0x277CBF150]);
    v4 = sStringToPropertyMap;
  }

  Count = CFDictionaryGetCount(v4);
  CFDictionaryAddValue(sStringToPropertyMap, a2, a1);
  if (CFDictionaryGetCount(sStringToPropertyMap) != Count + 1)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_registerProperty(TSSProperty, NSString *)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 37, @"Likely collision in string to property dictionary around %@ (%d)", a2, a1}];
  }

  v10 = CFDictionaryGetCount(sPropertyToStringMap);
  CFDictionaryAddValue(sPropertyToStringMap, a1, a2);
  if (CFDictionaryGetCount(sPropertyToStringMap) != v10 + 1)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_registerProperty(TSSProperty, NSString *)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 42, @"Likely collision in property to string dictionary around %@ (%d)", a2, a1}];
  }

  v13 = CFDictionaryGetCount(sStringToPropertyMap);
  result = CFDictionaryGetCount(sPropertyToStringMap);
  if (v13 != result)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_registerProperty(TSSProperty, NSString *)"}];
    result = [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 45, @"Two-way string to property id dictionaries are out of sync."}];
  }

  v17 = sMaxPropertyValue;
  if (sMaxPropertyValue <= a1)
  {
    v17 = a1;
  }

  sMaxPropertyValue = v17;
  return result;
}

BOOL String(void *key, _DWORD *a2)
{
  if (p_buildStringToPropertyMapsIfNeeded_onceToken != -1)
  {
    TSSValidPropertyFromString_cold_1();
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(sStringToPropertyMap, key, &value);
  if (a2)
  {
    *a2 = value;
  }

  return ValueIfPresent != 0;
}

uint64_t String(void *a1)
{
  v5 = 0;
  if (!String(a1, &v5))
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSSProperty TSSPropertyFromString(NSString *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 91, @"Unknown property key string: %@", a1}];
  }

  return v5;
}

{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if (v1 && (v2 = v1, [v1 count] >= 3))
  {
    return [objc_msgSend(v2 objectAtIndexedSubscript:{1), "intValue"}];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 count] < 3)
  {
    return 0;
  }

  return [v2 objectAtIndexedSubscript:0];
}

{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 count] < 3)
  {
    return 0;
  }

  return [v2 objectAtIndexedSubscript:2];
}

{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 count] != 4)
  {
    return 0;
  }

  return [v2 objectAtIndexedSubscript:3];
}

{
  v6[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = a1;
    a1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a1 = 0;
    }
  }

  v2 = [MEMORY[0x277CCAB68] stringWithString:@"$Source Class|Source|Relationship|Target|Target Sheet||Root Sheet|Child Sheet$"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TSSDebugStyleRelationshipDescription_block_invoke;
  v5[3] = &unk_279D47F90;
  v5[4] = v2;
  if (a1)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __TSSDebugStyleRelationshipDescription_block_invoke_2;
    v4[3] = &unk_279D47FE0;
    v4[4] = v5;
    [a1 enumerateObjectsUsingBlock:v4];
  }

  return [v2 tsu_stringByExpandingTableFormatting];
}

BOOL String(int a1, void **a2)
{
  if (p_buildStringToPropertyMapsIfNeeded_onceToken != -1)
  {
    TSSValidPropertyFromString_cold_1();
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(sPropertyToStringMap, a1, &value);
  if (a2)
  {
    *a2 = value;
  }

  return ValueIfPresent != 0;
}

void *String(uint64_t a1)
{
  v5 = 0;
  if (!String(a1, &v5))
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSSStringFromProperty(TSSProperty)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 117, @"Unknown property key integer %u", a1}];
  }

  return v5;
}

BOOL String(_BOOL8 result)
{
  if (result)
  {
    return String(result, 0);
  }

  return result;
}

uint64_t String(int a1)
{
  if ((TSSPropertyGetType_typeLookupInitialized & 1) == 0)
  {
    for (i = 0; i != 701; ++i)
    {
      TSSPropertyGetType_typeLookup[TSSPropertyGetType_typeTable[i]] = BYTE2(TSSPropertyGetType_typeTable[i]);
    }

    TSSPropertyGetType_typeLookupInitialized = 1;
  }

  return TSSPropertyGetType_typeLookup[a1];
}

__CFString *String(unsigned int a1)
{
  if (a1 < 4)
  {
    return off_279D47E20[a1];
  }

  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSSStringFromValueType(TSSValueType)"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSProperties.m"), 171, @"Unexpected entry type."}];
  return 0;
}

CFIndex __p_buildStringToPropertyMapsIfNeeded_block_invoke()
{
  p_registerProperty(0, @"invalidProperty");
  p_registerProperty(1, @"testString");
  p_registerProperty(2, @"testDate");
  p_registerProperty(3, @"testObject");
  p_registerProperty(4, @"testObject2");
  p_registerProperty(5, @"testTSPObject");
  p_registerProperty(6, @"testTSPContainedObject");
  p_registerProperty(7, @"testStyle");
  p_registerProperty(8, @"testBool");
  p_registerProperty(9, @"testInteger");
  p_registerProperty(10, @"testInteger2");
  p_registerProperty(11, @"testEnum");
  p_registerProperty(12, @"testFloat");
  p_registerProperty(13, @"testFloat2");
  p_registerProperty(14, @"testDouble");
  p_registerProperty(15, @"testDouble2");
  p_registerProperty(16, @"fontName");
  p_registerProperty(17, @"fontSize");
  p_registerProperty(18, @"fontColor");
  p_registerProperty(19, @"bold");
  p_registerProperty(20, @"italic");
  p_registerProperty(21, @"capitalization");
  p_registerProperty(22, @"underline");
  p_registerProperty(23, @"underlineWidth");
  p_registerProperty(24, @"underlineColor");
  p_registerProperty(25, @"word_underline");
  p_registerProperty(26, @"strikethru");
  p_registerProperty(27, @"strikethruWidth");
  p_registerProperty(28, @"strikethruColor");
  p_registerProperty(29, @"word_strikethrough");
  p_registerProperty(30, @"hidden");
  p_registerProperty(31, @"outline");
  p_registerProperty(32, @"outlineColor");
  p_registerProperty(33, @"baselineShift");
  p_registerProperty(34, @"kerning");
  p_registerProperty(35, @"tracking");
  p_registerProperty(36, @"superscript");
  p_registerProperty(37, @"textBackground");
  p_registerProperty(38, @"dropCapBackground");
  p_registerProperty(39, @"language");
  p_registerProperty(40, @"textShadow");
  p_registerProperty(41, @"ligatures");
  p_registerProperty(42, @"hotKey");
  p_registerProperty(43, @"coreTextFontFeatures");
  p_registerProperty(44, @"writingDirection");
  p_registerProperty(45, @"emphasisMarks");
  p_registerProperty(46, @"compatibilityFont");
  p_registerProperty(47, @"role");
  p_registerProperty(48, @"allowNativeSmallCaps");
  p_registerProperty(49, @"outlineFilled");
  p_registerProperty(50, @"weight");
  p_registerProperty(51, @"lineBalancing");
  p_registerProperty(52, @"fontSizeDelta");
  p_registerProperty(53, @"coreTextFontAttributes");
  p_registerProperty(54, @"fontDesignTrait");
  p_registerProperty(55, @"fontFamily");
  p_registerProperty(56, @"monospacedDigits");
  p_registerProperty(80, @"firstLineIndent");
  p_registerProperty(81, @"leftIndent");
  p_registerProperty(82, @"rightIndent");
  p_registerProperty(83, @"defaultTabStops");
  p_registerProperty(84, @"tabs");
  p_registerProperty(85, @"lineSpacing");
  p_registerProperty(86, @"alignment");
  p_registerProperty(87, @"spaceBefore");
  p_registerProperty(88, @"spaceAfter");
  p_registerProperty(89, @"keepLinesTogether");
  p_registerProperty(90, @"keepWithNext");
  p_registerProperty(91, @"pageBreakBefore");
  p_registerProperty(92, @"widowControl");
  p_registerProperty(93, @"hyphenate");
  p_registerProperty(94, @"hyphenationMinimumWordLength");
  p_registerProperty(95, @"hyphenationMinimumCharactersBefore");
  p_registerProperty(96, @"hyphenationMinimumCharactersAfter");
  p_registerProperty(97, @"hyphenationZone");
  p_registerProperty(98, @"paragraphFill");
  p_registerProperty(99, @"followingParagraphStyle");
  p_registerProperty(100, @"firstTopicNumber");
  p_registerProperty(101, @"decimalTab");
  p_registerProperty(102, @"paragraphBorderType");
  p_registerProperty(103, @"paragraphStroke");
  p_registerProperty(104, @"paragraphRuleWidth");
  p_registerProperty(105, @"paragraphRuleOffset");
  p_registerProperty(106, @"outlineLevel");
  p_registerProperty(107, @"outlineStyleType");
  p_registerProperty(108, @"listStyle");
  p_registerProperty(109, @"dropCap");
  p_registerProperty(110, @"hangingPunctuation");
  p_registerProperty(111, @"lineStyling");
  p_registerProperty(112, @"followingParagraphStyleIdentifier");
  p_registerProperty(113, @"showInTOC");
  p_registerProperty(114, @"tocStyle");
  p_registerProperty(136, @"TSWPTOCShowPageNumber");
  p_registerProperty(137, @"TSWPTOCPageNumberStyle");
  p_registerProperty(144, @"layoutParagraphStyle");
  p_registerProperty(145, @"layoutMargins");
  p_registerProperty(146, @"padding");
  p_registerProperty(147, @"minimumHorizontalInset");
  p_registerProperty(148, @"columns");
  p_registerProperty(149, @"verticalAlignment");
  p_registerProperty(150, @"followingLayoutStyle");
  p_registerProperty(151, @"layoutContinuous");
  p_registerProperty(152, @"shrinkTextToFit");
  p_registerProperty(153, @"verticalText");
  p_registerProperty(154, @"truncateLastLine");
  p_registerProperty(155, @"maxLineCount");
  p_registerProperty(176, @"listTextIndents");
  p_registerProperty(177, @"listLabelIndents");
  p_registerProperty(178, @"listClassicTextIndents");
  p_registerProperty(179, @"listClassicFontSize");
  p_registerProperty(180, @"listLabelType");
  p_registerProperty(181, @"listLabelGeometries");
  p_registerProperty(182, @"listLabelImages");
  p_registerProperty(183, @"listLabelStrings");
  p_registerProperty(184, @"listLabelNumbers");
  p_registerProperty(185, @"listLabelTieredNumbers");
  p_registerProperty(186, @"listClassicGeometries");
  p_registerProperty(187, @"labelCharacterStyle1");
  p_registerProperty(188, @"labelCharacterStyle2");
  p_registerProperty(189, @"labelCharacterStyle3");
  p_registerProperty(190, @"labelCharacterStyle4");
  p_registerProperty(191, @"labelCharacterStyle5");
  p_registerProperty(192, @"labelCharacterStyle6");
  p_registerProperty(193, @"labelCharacterStyle7");
  p_registerProperty(194, @"labelCharacterStyle8");
  p_registerProperty(195, @"labelCharacterStyle9");
  p_registerProperty(196, @"textPosition");
  p_registerProperty(197, @"labelPosition");
  p_registerProperty(198, @"scale");
  p_registerProperty(199, @"baselineOffset");
  p_registerProperty(200, @"scaleWithText");
  p_registerProperty(201, @"labelAlignment");
  p_registerProperty(202, @"labelType");
  p_registerProperty(203, @"bulletImage");
  p_registerProperty(204, @"textLabel");
  p_registerProperty(205, @"listLevelCharacterStyle");
  p_registerProperty(206, @"listLevelFontSize");
  p_registerProperty(207, @"listLevelLabelColor");
  p_registerProperty(208, @"listLevelBodyFontSize");
  p_registerProperty(209, @"listLevelBodyFont");
  p_registerProperty(210, @"listLevelFontName");
  p_registerProperty(211, @"defaultTextStylePresetIndex");
  p_registerProperty(212, @"defaultParagraphStyle");
  p_registerProperty(512, @"geometry");
  p_registerProperty(513, @"geometryPosition");
  p_registerProperty(514, @"children");
  p_registerProperty(515, @"style");
  p_registerProperty(516, @"fill");
  p_registerProperty(517, @"stroke");
  p_registerProperty(518, @"opacity");
  p_registerProperty(519, @"reflection");
  p_registerProperty(520, @"shadow");
  p_registerProperty(521, @"externalTextWrap");
  p_registerProperty(522, @"headLineEnd");
  p_registerProperty(523, @"tailLineEnd");
  p_registerProperty(524, @"hyperlinkURL");
  p_registerProperty(525, @"aspectRatioLocked");
  p_registerProperty(526, @"pathSource");
  p_registerProperty(527, @"mediaFlags");
  p_registerProperty(528, @"media");
  p_registerProperty(529, @"mask");
  p_registerProperty(530, @"instantAlpha");
  p_registerProperty(531, @"imageAdjustments");
  p_registerProperty(532, @"movieMedia");
  p_registerProperty(533, @"posterImageData");
  p_registerProperty(534, @"startTime");
  p_registerProperty(535, @"endTime");
  p_registerProperty(536, @"posterTime");
  p_registerProperty(537, @"loopOption");
  p_registerProperty(538, @"volume");
  p_registerProperty(539, @"connectedTo");
  p_registerProperty(540, @"connectedFrom");
  p_registerProperty(768, @"TSTAutoResize");
  p_registerProperty(769, @"TSTBandedRows");
  p_registerProperty(770, @"TSTBandedCellFill");
  p_registerProperty(771, @"TSTBodyCellsHorizontalBorderStroke");
  p_registerProperty(772, @"TSTBodyCellsVerticalBorderStroke");
  p_registerProperty(773, @"TSTBodyCellsHorizontalStroke");
  p_registerProperty(774, @"TSTBodyCellsVerticalStroke");
  p_registerProperty(775, @"TSTHeaderColumnSeparatorStroke");
  p_registerProperty(776, @"TSTHeaderColumnHorizontalStroke");
  p_registerProperty(777, @"TSTHeaderColumnVerticalStroke");
  p_registerProperty(778, @"TSTHeaderColumnBorderStroke");
  p_registerProperty(779, @"TSTHeaderRowSeparatorStroke");
  p_registerProperty(780, @"TSTHeaderRowVerticalStroke");
  p_registerProperty(781, @"TSTHeaderRowHorizontalStroke");
  p_registerProperty(782, @"TSTHeaderRowBorderStroke");
  p_registerProperty(783, @"TSTFooterRowSeparatorStroke");
  p_registerProperty(784, @"TSTFooterRowVerticalStroke");
  p_registerProperty(785, @"TSTFooterRowHorizontalStroke");
  p_registerProperty(786, @"TSTFooterRowBorderStroke");
  p_registerProperty(787, @"TSTTableStrokePresetList");
  p_registerProperty(788, @"TSTTableVerticalStrokesVisible");
  p_registerProperty(789, @"TSTTableHorizontalStrokesVisible");
  p_registerProperty(790, @"TSTTableHeaderRowSepVisible");
  p_registerProperty(791, @"TSTTableHeaderRowVerticalsVisible");
  p_registerProperty(792, @"TSTTableHeaderColSepVisible");
  p_registerProperty(793, @"TSTTableHeaderColHorizontalsVisible");
  p_registerProperty(794, @"TSTTableFooterSepVisible");
  p_registerProperty(795, @"TSTTableFooterVerticalsVisible");
  p_registerProperty(796, @"TSTTableBorderStrokesVisible");
  p_registerProperty(797, @"TSTTableMasterFontFamily");
  p_registerProperty(798, @"TSTTableWritingDirection");
  p_registerProperty(799, @"TSTTableBehavesLikeSpreadsheet");
  p_registerProperty(800, @"TSTTableDefaultGeometry");
  p_registerProperty(801, @"TSTTableDefaultInlineGeometry");
  p_registerProperty(802, @"TSTTableDefaultRowCount");
  p_registerProperty(803, @"TSTTableDefaultColumnCount");
  p_registerProperty(804, @"TSTTableDefaultHeaderRowCount");
  p_registerProperty(805, @"TSTTableDefaultHeaderColumnCount");
  p_registerProperty(806, @"TSTTableDefaultFooterRowCount");
  p_registerProperty(896, @"TSTCellTextWrap");
  p_registerProperty(897, @"TSTCellType");
  p_registerProperty(898, @"TSTCellFill");
  p_registerProperty(899, @"TSTCellTopStroke");
  p_registerProperty(900, @"TSTCellBottomStroke");
  p_registerProperty(901, @"TSTCellLeftStroke");
  p_registerProperty(902, @"TSTCellRightStroke");
  p_registerProperty(903, @"TSTCellVerticalAlignment");
  p_registerProperty(904, @"TSTCellPadding");
  p_registerProperty(1024, @"TSCHChartInfoBorderOpacityProperty");
  p_registerProperty(1025, @"TSCHChartSeriesTrendlineEquationParagraphStyleIndexProperty");
  p_registerProperty(1026, @"TSCHChartSeriesLabelParagraphStyleIndexProperty");
  p_registerProperty(1027, @"TSCHChartInfoCombineLayersProperty");
  p_registerProperty(1028, @"TSCHChartAxisMajorGridlineOpacityProperty");
  p_registerProperty(1029, @"TSCHChartSeriesShowSymbolProperty");
  p_registerProperty(1030, @"TSCHChartInfoShowLegendProperty");
  p_registerProperty(1031, @"TSCHChartSeriesErrorBarSettingProperty");
  p_registerProperty(1032, @"TSCHChartAxisShowLabelsProperty");
  p_registerProperty(1033, @"TSCHChartInfoInterBarGapProperty");
  p_registerProperty(1034, @"TSCHChartSeriesErrorBarLineEndProperty");
  p_registerProperty(1035, @"TSCHChartSeriesErrorBarCustomNegativeDataProperty");
  p_registerProperty(1036, @"TSCHChartAxisShowSeriesLabelsProperty");
  p_registerProperty(1037, @"TSCHChartAxis3DLabelPositionProperty");
  p_registerProperty(1038, @"TSCHChartAxisNumberFormatProperty");
  p_registerProperty(1039, @"TSCHChartSeriesTrendLineShowR2ValueProperty");
  p_registerProperty(1040, @"TSCHChartInfoTitleColorProperty");
  p_registerProperty(1041, @"TSCHLegendModelShadowProperty");
  p_registerProperty(1042, @"TSCHChartSeriesTrendlineEquationOpacityProperty");
  p_registerProperty(1043, @"TSCHChartAxisNumberOfMinorGridlinesProperty");
  p_registerProperty(1044, @"TSCHChartSeriesShowSeriesLabelsProperty");
  p_registerProperty(1045, @"TSCHChartAxisMajorGridlineShadowProperty");
  p_registerProperty(1046, @"TSCHChartSeriesTrendLineShowEquationProperty");
  p_registerProperty(1047, @"TSCHChartAxisShowMinorTickmarksProperty");
  p_registerProperty(1048, @"TSCHChartAxisPlotToEdgesProperty");
  p_registerProperty(1049, @"TSCHChartSeriesNumberFormatProperty");
  p_registerProperty(1050, @"TSCHChartSeriesStrokeProperty");
  p_registerProperty(1051, @"TSCHChartSeriesErrorBarCustomPositiveDataScatterXProperty");
  p_registerProperty(1052, @"TSCHChartAxisHorizontalSpacingProperty");
  p_registerProperty(1053, @"TSCHChartAxisTitleProperty");
  p_registerProperty(1054, @"TSCHChartInfoDEPRECATEDTrendlineRSquaredParagraphStyleIndexProperty");
  p_registerProperty(1055, @"TSCHChartAxisUserMaxProperty");
  p_registerProperty(1056, @"TSCHChartSeriesTrendLineShadowProperty");
  p_registerProperty(1057, @"TSCHChartInfoDataSetNameParagraphStyleIndexProperty");
  p_registerProperty(1058, @"TSCHChartInfoMultiDataControlTypeProperty");
  p_registerProperty(1059, @"TSCHChartInfoDEPRECATEDMasterFontFamilyProperty");
  p_registerProperty(1060, @"TSCHChartInfoSkipHiddenDataProperty");
  p_registerProperty(1061, @"TSCHChartAxisTickmarkLocationProperty");
  p_registerProperty(1062, @"TSCHChartSeriesYAxisOrdinalProperty");
  p_registerProperty(1063, @"TSCHChartSeriesSymbolFillUseSeriesFillProperty");
  p_registerProperty(1064, @"TSCHChartSeriesPercentNumberFormatProperty");
  p_registerProperty(1065, @"TSCHChartSeriesErrorBarPercentValueProperty");
  p_registerProperty(1066, @"TSCHChartAxis3DGridlineOpacityProperty");
  p_registerProperty(1067, @"TSCHChartInfo3DScaleProperty");
  p_registerProperty(1068, @"TSCHChartInfo3DInterSetDepthGapProperty");
  p_registerProperty(1069, @"TSCHChartSeriesTrendLinePeriodProperty");
  p_registerProperty(1070, @"TSCHChartInfo3DLightingPackageProperty");
  p_registerProperty(1071, @"TSCHChartSeriesValueLabelPositionProperty");
  p_registerProperty(1072, @"TSCHChartSeriesErrorBarCustomNegativeDataScatterXProperty");
  p_registerProperty(1073, @"TSCHChartInfoDEPRECATEDMasterFontNamedSizeProperty");
  p_registerProperty(1074, @"TSCHChartSeriesSymbolTypeProperty");
  p_registerProperty(1075, @"TSCHChartSeriesSizeDimensionProperty");
  p_registerProperty(1076, @"TSCHChartSeriesWedgeExplosionProperty");
  p_registerProperty(1077, @"TSCHChartInfoBackgroundStrokeProperty");
  p_registerProperty(1078, @"TSCHLegendModelLabelParagraphStyleIndexProperty");
  p_registerProperty(1079, @"TSCHChartSeriesTrendLineTypeProperty");
  p_registerProperty(1080, @"TSCHChartSeriesShowErrorBarScatterXProperty");
  p_registerProperty(1081, @"TSCHChartSeriesTrendLineRSquaredOffsetYProperty");
  p_registerProperty(1082, @"TSCHChartInfoDEPRECATEDTrendlineEquationParagraphStyleIndexProperty");
  p_registerProperty(1083, @"TSCHChartAxisNumberFormatTypeProperty");
  p_registerProperty(1084, @"TSCHChartInfoDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1085, @"TSCHChartSeriesTrendlineRSquaredParagraphStyleIndexProperty");
  p_registerProperty(1086, @"TSCHChartSeriesShowTrendLineProperty");
  p_registerProperty(1087, @"TSCHChartAxisShowMajorGridlinesProperty");
  p_registerProperty(1088, @"TSCHChartInfo3DBarShapeProperty");
  p_registerProperty(1089, @"TSCHChartSeriesTrendLineShowLabelProperty");
  p_registerProperty(1090, @"TSCHChartAxisUserMinProperty");
  p_registerProperty(1091, @"TSCHChartSeriesErrorBarPercentValueScatterXProperty");
  p_registerProperty(1092, @"TSCHChartAxisShowMinimumLabelProperty");
  p_registerProperty(1093, @"TSCHChartInfoDEPRECATEDAGAINMasterFontNamedSizeProperty");
  p_registerProperty(1094, @"TSCHChartInfoDEPRECATEDTrendlineEquationShadowProperty");
  p_registerProperty(1095, @"TSCHChartSeriesDEPRECATED3DFillProperty");
  p_registerProperty(1096, @"TSCHChartSeriesTrendlineRSquaredOpacityProperty");
  p_registerProperty(1097, @"TSCHChartInfoDEPRECATED3DShadowProperty");
  p_registerProperty(1098, @"TSCHChartSeriesSymbolFillProperty");
  p_registerProperty(1099, @"TSCHChartInfoDEPRECATEDTrendlineEquationOpacityProperty");
  p_registerProperty(1100, @"TSCHChartInfoTitleProperty");
  p_registerProperty(1101, @"TSCHChartInfoTitleParagraphStyleIndexProperty");
  p_registerProperty(1102, @"TSCHChartSeriesFillProperty");
  p_registerProperty(1103, @"TSCHChartAxisNumberOfMajorGridlinesProperty");
  p_registerProperty(1104, @"TSCHChartInfo3DRotationProperty");
  p_registerProperty(1105, @"TSCHChartInfoBorderStrokeProperty");
  p_registerProperty(1106, @"TSCHChartAxisScaleProperty");
  p_registerProperty(1107, @"TSCHChartSeriesErrorBarTypeProperty");
  p_registerProperty(1108, @"TSCHChartSeriesLineTypeProperty");
  p_registerProperty(1109, @"TSCHChartSeriesShadowProperty");
  p_registerProperty(1110, @"TSCHChartInfoDEPRECATED3DBarShapeProperty");
  p_registerProperty(1111, @"TSCHChartSeriesErrorBarFixedValueProperty");
  p_registerProperty(1112, @"TSCHChartInfo3DChartOpacityProperty");
  p_registerProperty(1113, @"TSCHChartSeriesShowErrorBarProperty");
  p_registerProperty(1114, @"TSCHChartSeriesLabelExplosionProperty");
  p_registerProperty(1115, @"TSCHChartSeriesShowNegativeDataProperty");
  p_registerProperty(1116, @"TSCHChartAxisLabelParagraphStyleIndexProperty");
  p_registerProperty(1117, @"TSCHChartAxisMajorGridlineStrokeProperty");
  p_registerProperty(1118, @"TSCHChartInfoBackgroundFillProperty");
  p_registerProperty(1119, @"TSCHChartInfoBorderShadowProperty");
  p_registerProperty(1120, @"TSCHChartInfo3DBevelEdgesProperty");
  p_registerProperty(1121, @"TSCHChartInfoShowBorderProperty");
  p_registerProperty(1122, @"TSCHChartSeriesErrorBarShadowProperty");
  p_registerProperty(1123, @"TSCHLegendModelStrokeProperty");
  p_registerProperty(1124, @"TSCHChartSeriesOpacityProperty");
  p_registerProperty(1125, @"TSCHChartSeriesTrendLineOrderProperty");
  p_registerProperty(1126, @"TSCHChartSeriesTrendLineStrokeProperty");
  p_registerProperty(1127, @"TSCHChartAxis3DGridlineStrokeProperty");
  p_registerProperty(1128, @"TSCHChartAxisShowTitleProperty");
  p_registerProperty(1129, @"TSCHChartInfoShowTitleProperty");
  p_registerProperty(1130, @"TSCHChartSeriesValueLabelsAxisProperty");
  p_registerProperty(1131, @"TSCHChartAxisLabelsOrientationProperty");
  p_registerProperty(1132, @"TSCHChartAxisMinorGridlineShadowProperty");
  p_registerProperty(1133, @"TSCHChartAxisMinorGridlineStrokeProperty");
  p_registerProperty(1134, @"TSCHChartAxisShowMinorGridlinesProperty");
  p_registerProperty(1135, @"TSCHChartInfoPieStartAngleProperty");
  p_registerProperty(1136, @"TSCHChartAxisShowLastLabelProperty");
  p_registerProperty(1137, @"TSCHChartSeriesNumberFormatTypeProperty");
  p_registerProperty(1138, @"TSCHChartSeriesTrendLineLabelStringProperty");
  p_registerProperty(1139, @"TSCHChartSeriesErrorBarTypeScatterXProperty");
  p_registerProperty(1140, @"TSCHChartSeriesShowLineProperty");
  p_registerProperty(1141, @"TSCHChartSeriesErrorBarSettingScatterXProperty");
  p_registerProperty(1142, @"TSCHChartSeriesErrorBarStrokeScatterXProperty");
  p_registerProperty(1143, @"TSCHChartSeriesShowValueLabelsProperty");
  p_registerProperty(1144, @"TSCHChartAxisShowAxisProperty");
  p_registerProperty(1145, @"TSCHChartInfoDEPRECATEDTrendlineRSquaredOpacityProperty");
  p_registerProperty(1146, @"TSCHChartInfoDataSetNameLocationProperty");
  p_registerProperty(1147, @"TSCHChartSeriesTrendLineEquationOffsetYProperty");
  p_registerProperty(1148, @"TSCHChartSeriesSymbolSizeProperty");
  p_registerProperty(1149, @"TSCHChartAxisShowMajorTickmarksProperty");
  p_registerProperty(1150, @"TSCHChartSeriesErrorBarLineEndScatterXProperty");
  p_registerProperty(1151, @"TSCHChartSeriesSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1152, @"TSCHChartSeriesOutsideLabelParagraphStyleIndexProperty");
  p_registerProperty(1153, @"TSCHChartAxisMinorGridlineOpacityProperty");
  p_registerProperty(1154, @"TSCHChartSeriesTrendLineRSquaredOffsetXProperty");
  p_registerProperty(1155, @"TSCHChartInfoDEPRECATED3DBevelEdgesProperty");
  p_registerProperty(1156, @"TSCHChartSeriesAdjustmentScaleProperty");
  p_registerProperty(1157, @"TSCHChartInfo3DViewportProperty");
  p_registerProperty(1158, @"TSCHChartSeriesTrendLineEquationOffsetXProperty");
  p_registerProperty(1159, @"TSCHChartInfoGridBackgroundOpacityProperty");
  p_registerProperty(1160, @"TSCHChartInfoInterSetGapProperty");
  p_registerProperty(1161, @"TSCHChartSeriesSeriesTypeProperty");
  p_registerProperty(1162, @"TSCHChartSeriesDEPRECATEDSeriesLabelsOnProperty");
  p_registerProperty(1163, @"TSCHChartSeriesErrorBarFixedValueScatterXProperty");
  p_registerProperty(1164, @"TSCHChartSeriesErrorBarStrokeProperty");
  p_registerProperty(1165, @"TSCHChartInfoDEPRECATEDTrendlineRSquaredShadowProperty");
  p_registerProperty(1166, @"TSCHLegendModelOpacityProperty");
  p_registerProperty(1167, @"TSCHChartSeriesErrorBarStdDevValueProperty");
  p_registerProperty(1168, @"TSCHChartInfoGridBackgroundFillProperty");
  p_registerProperty(1169, @"TSCHChartSeriesErrorBarCustomPositiveDataProperty");
  p_registerProperty(1170, @"TSCHChartSeriesErrorBarStdDevValueScatterXProperty");
  p_registerProperty(1171, @"TSCHLegendModelFillProperty");
  p_registerProperty(1172, @"TSCHChartSeriesSymbolStrokeProperty");
  p_registerProperty(1173, @"TSCHChartAxisTitleParagraphStyleIndexProperty");
  p_registerProperty(1174, @"TSCHChartAxisVerticalSpacingProperty");
  p_registerProperty(1175, @"TSCHChartAxisNumberOfDecadesProperty");
  p_registerProperty(1176, @"TSCHChartInfoAreaDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1177, @"TSCHChartInfoBarDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1178, @"TSCHChartInfoColumnDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1179, @"TSCHChartInfoDefaultDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1180, @"TSCHChartInfoLineDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1181, @"TSCHChartInfoPieDEPRECATED3DLightingPackageProperty");
  p_registerProperty(1182, @"TSCHChartInfoDefaultDEPRECATEDAGAINMasterFontNamedSizeProperty");
  p_registerProperty(1183, @"TSCHChartInfoDefaultDEPRECATED3DBarShapeProperty");
  p_registerProperty(1184, @"TSCHChartInfoBarDEPRECATED3DBevelEdgesProperty");
  p_registerProperty(1185, @"TSCHChartInfoColumnDEPRECATED3DBevelEdgesProperty");
  p_registerProperty(1186, @"TSCHChartInfoDefaultDEPRECATED3DBevelEdgesProperty");
  p_registerProperty(1187, @"TSCHChartInfoPieDEPRECATED3DBevelEdgesProperty");
  p_registerProperty(1188, @"TSCHChartInfoAreaDEPRECATED3DShadowProperty");
  p_registerProperty(1189, @"TSCHChartInfoBarDEPRECATED3DShadowProperty");
  p_registerProperty(1190, @"TSCHChartInfoColumnDEPRECATED3DShadowProperty");
  p_registerProperty(1191, @"TSCHChartInfoLineDEPRECATED3DShadowProperty");
  p_registerProperty(1192, @"TSCHChartInfoPieDEPRECATED3DShadowProperty");
  p_registerProperty(1193, @"TSCHChartInfoDefaultDEPRECATEDMasterFontFamilyProperty");
  p_registerProperty(1194, @"TSCHChartInfoDefaultDEPRECATEDMasterFontNamedSizeProperty");
  p_registerProperty(1195, @"TSCHChartInfoDefaultDEPRECATEDTrendlineEquationOpacityProperty");
  p_registerProperty(1196, @"TSCHChartInfoDefaultDEPRECATEDTrendlineEquationParagraphStyleIndexProperty");
  p_registerProperty(1197, @"TSCHChartInfoDefaultDEPRECATEDTrendlineEquationShadowProperty");
  p_registerProperty(1198, @"TSCHChartInfoDefaultDEPRECATEDTrendlineRSquaredOpacityProperty");
  p_registerProperty(1199, @"TSCHChartInfoDefaultDEPRECATEDTrendlineRSquaredParagraphStyleIndexProperty");
  p_registerProperty(1200, @"TSCHChartInfoDefaultDEPRECATEDTrendlineRSquaredShadowProperty");
  p_registerProperty(1201, @"TSCHChartSeriesAreaDEPRECATED3DFillProperty");
  p_registerProperty(1202, @"TSCHChartSeriesBarDEPRECATED3DFillProperty");
  p_registerProperty(1203, @"TSCHChartSeriesColumnDEPRECATED3DFillProperty");
  p_registerProperty(1204, @"TSCHChartSeriesDefaultDEPRECATED3DFillProperty");
  p_registerProperty(1205, @"TSCHChartSeriesLineDEPRECATED3DFillProperty");
  p_registerProperty(1206, @"TSCHChartSeriesPieDEPRECATED3DFillProperty");
  p_registerProperty(1207, @"TSCHChartSeriesPieDEPRECATEDSeriesLabelsOnProperty");
  p_registerProperty(1208, @"TSCHChartAxisDefault3DLabelPositionProperty");
  p_registerProperty(1209, @"TSCHChartAxisDefaultNumberFormatProperty");
  p_registerProperty(1210, @"TSCHChartAxisDefaultNumberFormatTypeProperty");
  p_registerProperty(1211, @"TSCHChartAxisValueNumberOfDecadesProperty");
  p_registerProperty(1212, @"TSCHChartAxisValueNumberOfMajorGridlinesProperty");
  p_registerProperty(1213, @"TSCHChartAxisValueNumberOfMinorGridlinesProperty");
  p_registerProperty(1214, @"TSCHChartAxisCategoryPlotToEdgesProperty");
  p_registerProperty(1215, @"TSCHChartAxisValueScaleProperty");
  p_registerProperty(1216, @"TSCHChartAxisCategoryShowLabelsProperty");
  p_registerProperty(1217, @"TSCHChartAxisDefaultShowLabelsProperty");
  p_registerProperty(1218, @"TSCHChartAxisValueShowLabelsProperty");
  p_registerProperty(1219, @"TSCHChartAxisCategoryShowSeriesLabelsProperty");
  p_registerProperty(1220, @"TSCHChartAxisMultiDataShowSeriesLabelsProperty");
  p_registerProperty(1221, @"TSCHChartAxisCategoryShowTitleProperty");
  p_registerProperty(1222, @"TSCHChartAxisValueShowTitleProperty");
  p_registerProperty(1223, @"TSCHChartAxisCategoryTitleProperty");
  p_registerProperty(1224, @"TSCHChartAxisValueTitleProperty");
  p_registerProperty(1225, @"TSCHChartAxisDefaultUserMaxProperty");
  p_registerProperty(1226, @"TSCHChartAxisDefaultUserMinProperty");
  p_registerProperty(1227, @"TSCHChartAxisCategory3DGridlineOpacityProperty");
  p_registerProperty(1228, @"TSCHChartAxisValue3DGridlineOpacityProperty");
  p_registerProperty(1229, @"TSCHChartAxisCategory3DGridlineStrokeProperty");
  p_registerProperty(1230, @"TSCHChartAxisValue3DGridlineStrokeProperty");
  p_registerProperty(1231, @"TSCHChartAxisCategoryHorizontalSpacingProperty");
  p_registerProperty(1232, @"TSCHChartAxisCategoryLabelParagraphStyleIndexProperty");
  p_registerProperty(1233, @"TSCHChartAxisDefaultLabelParagraphStyleIndexProperty");
  p_registerProperty(1234, @"TSCHChartAxisValueLabelParagraphStyleIndexProperty");
  p_registerProperty(1235, @"TSCHChartAxisCategoryLabelsOrientationProperty");
  p_registerProperty(1236, @"TSCHChartAxisDefaultLabelsOrientationProperty");
  p_registerProperty(1237, @"TSCHChartAxisValueLabelsOrientationProperty");
  p_registerProperty(1238, @"TSCHChartAxisCategoryMajorGridlineOpacityProperty");
  p_registerProperty(1239, @"TSCHChartAxisValueMajorGridlineOpacityProperty");
  p_registerProperty(1240, @"TSCHChartAxisCategoryMajorGridlineShadowProperty");
  p_registerProperty(1241, @"TSCHChartAxisValueMajorGridlineShadowProperty");
  p_registerProperty(1242, @"TSCHChartAxisCategoryMajorGridlineStrokeProperty");
  p_registerProperty(1243, @"TSCHChartAxisValueMajorGridlineStrokeProperty");
  p_registerProperty(1244, @"TSCHChartAxisCategoryMinorGridlineOpacityProperty");
  p_registerProperty(1245, @"TSCHChartAxisValueMinorGridlineOpacityProperty");
  p_registerProperty(1246, @"TSCHChartAxisCategoryMinorGridlineShadowProperty");
  p_registerProperty(1247, @"TSCHChartAxisValueMinorGridlineShadowProperty");
  p_registerProperty(1248, @"TSCHChartAxisCategoryMinorGridlineStrokeProperty");
  p_registerProperty(1249, @"TSCHChartAxisValueMinorGridlineStrokeProperty");
  p_registerProperty(1250, @"TSCHChartAxisCategoryShowAxisProperty");
  p_registerProperty(1251, @"TSCHChartAxisValueShowAxisProperty");
  p_registerProperty(1252, @"TSCHChartAxisCategoryShowLastLabelProperty");
  p_registerProperty(1253, @"TSCHChartAxisCategoryShowMajorGridlinesProperty");
  p_registerProperty(1254, @"TSCHChartAxisValueShowMajorGridlinesProperty");
  p_registerProperty(1255, @"TSCHChartAxisCategoryShowMajorTickmarksProperty");
  p_registerProperty(1256, @"TSCHChartAxisValueShowMajorTickmarksProperty");
  p_registerProperty(1257, @"TSCHChartAxisValueShowMinimumLabelProperty");
  p_registerProperty(1258, @"TSCHChartAxisCategoryShowMinorGridlinesProperty");
  p_registerProperty(1259, @"TSCHChartAxisValueShowMinorGridlinesProperty");
  p_registerProperty(1260, @"TSCHChartAxisCategoryShowMinorTickmarksProperty");
  p_registerProperty(1261, @"TSCHChartAxisValueShowMinorTickmarksProperty");
  p_registerProperty(1262, @"TSCHChartAxisCategoryTickmarkLocationProperty");
  p_registerProperty(1263, @"TSCHChartAxisValueTickmarkLocationProperty");
  p_registerProperty(1264, @"TSCHChartAxisCategoryTitleParagraphStyleIndexProperty");
  p_registerProperty(1265, @"TSCHChartAxisDefaultTitleParagraphStyleIndexProperty");
  p_registerProperty(1266, @"TSCHChartAxisValueTitleParagraphStyleIndexProperty");
  p_registerProperty(1267, @"TSCHChartAxisCategoryVerticalSpacingProperty");
  p_registerProperty(1268, @"TSCHChartInfoDefault3DBarShapeProperty");
  p_registerProperty(1269, @"TSCHChartInfoDefault3DBevelEdgesProperty");
  p_registerProperty(1270, @"TSCHChartInfoDefault3DInterSetDepthGapProperty");
  p_registerProperty(1271, @"TSCHChartInfoDefault3DRotationProperty");
  p_registerProperty(1272, @"TSCHChartInfoArea3DScaleProperty");
  p_registerProperty(1273, @"TSCHChartInfoBar3DScaleProperty");
  p_registerProperty(1274, @"TSCHChartInfoColumn3DScaleProperty");
  p_registerProperty(1275, @"TSCHChartInfoDefault3DScaleProperty");
  p_registerProperty(1276, @"TSCHChartInfoLine3DScaleProperty");
  p_registerProperty(1277, @"TSCHChartInfoPie3DScaleProperty");
  p_registerProperty(1278, @"TSCHChartInfoDefault3DViewportProperty");
  p_registerProperty(1279, @"TSCHChartInfoDefaultPieStartAngleProperty");
  p_registerProperty(1280, @"TSCHChartInfoDefaultShowLegendProperty");
  p_registerProperty(1281, @"TSCHChartInfoDefaultShowTitleProperty");
  p_registerProperty(1282, @"TSCHChartInfoDefaultSkipHiddenDataProperty");
  p_registerProperty(1283, @"TSCHChartInfoDefaultTitleProperty");
  p_registerProperty(1284, @"TSCHChartInfoDefaultDataSetNameLocationProperty");
  p_registerProperty(1285, @"TSCHChartInfoDefaultMultiDataControlTypeProperty");
  p_registerProperty(1286, @"TSCHChartInfoDefault3DChartOpacityProperty");
  p_registerProperty(1287, @"TSCHChartInfoArea3DLightingPackageProperty");
  p_registerProperty(1288, @"TSCHChartInfoBar3DLightingPackageProperty");
  p_registerProperty(1289, @"TSCHChartInfoColumn3DLightingPackageProperty");
  p_registerProperty(1290, @"TSCHChartInfoDefault3DLightingPackageProperty");
  p_registerProperty(1291, @"TSCHChartInfoLine3DLightingPackageProperty");
  p_registerProperty(1292, @"TSCHChartInfoPie3DLightingPackageProperty");
  p_registerProperty(1293, @"TSCHChartInfoDefaultBackgroundFillProperty");
  p_registerProperty(1294, @"TSCHChartInfoDefaultBackgroundStrokeProperty");
  p_registerProperty(1295, @"TSCHChartInfoDefaultBorderOpacityProperty");
  p_registerProperty(1296, @"TSCHChartInfoDefaultBorderShadowProperty");
  p_registerProperty(1297, @"TSCHChartInfoDefaultBorderStrokeProperty");
  p_registerProperty(1298, @"TSCHChartInfoDefaultCombineLayersProperty");
  p_registerProperty(1299, @"TSCHChartInfoDefaultGridBackgroundFillProperty");
  p_registerProperty(1300, @"TSCHChartInfoDefaultGridBackgroundOpacityProperty");
  p_registerProperty(1301, @"TSCHChartInfoDefaultInterBarGapProperty");
  p_registerProperty(1302, @"TSCHChartInfoDefaultInterSetGapProperty");
  p_registerProperty(1303, @"TSCHChartInfoDefaultShowBorderProperty");
  p_registerProperty(1304, @"TSCHChartInfoDefaultTitleColorProperty");
  p_registerProperty(1305, @"TSCHChartInfoDefaultTitleParagraphStyleIndexProperty");
  p_registerProperty(1306, @"TSCHChartInfoDefaultDataSetNameParagraphStyleIndexProperty");
  p_registerProperty(1307, @"TSCHChartSeriesBubbleAdjustmentScaleProperty");
  p_registerProperty(1308, @"TSCHChartSeriesDefaultErrorBarCustomNegativeDataProperty");
  p_registerProperty(1309, @"TSCHChartSeriesDefaultErrorBarCustomNegativeDataScatterXProperty");
  p_registerProperty(1310, @"TSCHChartSeriesDefaultErrorBarCustomPositiveDataProperty");
  p_registerProperty(1311, @"TSCHChartSeriesDefaultErrorBarCustomPositiveDataScatterXProperty");
  p_registerProperty(1312, @"TSCHChartSeriesDefaultErrorBarFixedValueProperty");
  p_registerProperty(1313, @"TSCHChartSeriesDefaultErrorBarFixedValueScatterXProperty");
  p_registerProperty(1314, @"TSCHChartSeriesDefaultErrorBarPercentValueProperty");
  p_registerProperty(1315, @"TSCHChartSeriesDefaultErrorBarPercentValueScatterXProperty");
  p_registerProperty(1316, @"TSCHChartSeriesDefaultErrorBarSettingProperty");
  p_registerProperty(1317, @"TSCHChartSeriesDefaultErrorBarSettingScatterXProperty");
  p_registerProperty(1318, @"TSCHChartSeriesDefaultErrorBarStdDevValueProperty");
  p_registerProperty(1319, @"TSCHChartSeriesDefaultErrorBarStdDevValueScatterXProperty");
  p_registerProperty(1320, @"TSCHChartSeriesDefaultErrorBarTypeProperty");
  p_registerProperty(1321, @"TSCHChartSeriesDefaultErrorBarTypeScatterXProperty");
  p_registerProperty(1322, @"TSCHChartSeriesPieLabelExplosionProperty");
  p_registerProperty(1323, @"TSCHChartSeriesBubbleLineTypeProperty");
  p_registerProperty(1324, @"TSCHChartSeriesLineLineTypeProperty");
  p_registerProperty(1325, @"TSCHChartSeriesMixedLineLineTypeProperty");
  p_registerProperty(1326, @"TSCHChartSeriesScatterLineTypeProperty");
  p_registerProperty(1327, @"TSCHChartSeriesDefaultNumberFormatProperty");
  p_registerProperty(1328, @"TSCHChartSeriesPieNumberFormatProperty");
  p_registerProperty(1329, @"TSCHChartSeriesDefaultNumberFormatTypeProperty");
  p_registerProperty(1330, @"TSCHChartSeriesPieNumberFormatTypeProperty");
  p_registerProperty(1331, @"TSCHChartSeriesStackedPercentNumberFormatProperty");
  p_registerProperty(1332, @"TSCHChartSeriesDefaultSeriesTypeProperty");
  p_registerProperty(1333, @"TSCHChartSeriesDefaultShowErrorBarProperty");
  p_registerProperty(1334, @"TSCHChartSeriesDefaultShowErrorBarScatterXProperty");
  p_registerProperty(1335, @"TSCHChartSeriesScatterShowLineProperty");
  p_registerProperty(1336, @"TSCHChartSeriesBubbleShowNegativeDataProperty");
  p_registerProperty(1337, @"TSCHChartSeriesPieShowSeriesLabelsProperty");
  p_registerProperty(1338, @"TSCHChartSeriesAreaShowSymbolProperty");
  p_registerProperty(1339, @"TSCHChartSeriesLineShowSymbolProperty");
  p_registerProperty(1340, @"TSCHChartSeriesMixedAreaShowSymbolProperty");
  p_registerProperty(1341, @"TSCHChartSeriesMixedLineShowSymbolProperty");
  p_registerProperty(1342, @"TSCHChartSeriesScatterShowSymbolProperty");
  p_registerProperty(1343, @"TSCHChartSeriesDefaultShowTrendLineProperty");
  p_registerProperty(1344, @"TSCHChartSeriesAreaShowValueLabelsProperty");
  p_registerProperty(1345, @"TSCHChartSeriesBarShowValueLabelsProperty");
  p_registerProperty(1346, @"TSCHChartSeriesBubbleShowValueLabelsProperty");
  p_registerProperty(1347, @"TSCHChartSeriesDefaultShowValueLabelsProperty");
  p_registerProperty(1348, @"TSCHChartSeriesLineShowValueLabelsProperty");
  p_registerProperty(1349, @"TSCHChartSeriesMixedShowValueLabelsProperty");
  p_registerProperty(1350, @"TSCHChartSeriesPieShowValueLabelsProperty");
  p_registerProperty(1351, @"TSCHChartSeriesScatterShowValueLabelsProperty");
  p_registerProperty(1352, @"TSCHChartSeriesBubbleSizeDimensionProperty");
  p_registerProperty(1353, @"TSCHChartSeriesAreaSymbolTypeProperty");
  p_registerProperty(1354, @"TSCHChartSeriesLineSymbolTypeProperty");
  p_registerProperty(1355, @"TSCHChartSeriesMixedAreaSymbolTypeProperty");
  p_registerProperty(1356, @"TSCHChartSeriesMixedLineSymbolTypeProperty");
  p_registerProperty(1357, @"TSCHChartSeriesScatterSymbolTypeProperty");
  p_registerProperty(1358, @"TSCHChartSeriesDefaultTrendLineEquationOffsetXProperty");
  p_registerProperty(1359, @"TSCHChartSeriesDefaultTrendLineEquationOffsetYProperty");
  p_registerProperty(1360, @"TSCHChartSeriesDefaultTrendLineLabelStringProperty");
  p_registerProperty(1361, @"TSCHChartSeriesDefaultTrendLineOrderProperty");
  p_registerProperty(1362, @"TSCHChartSeriesDefaultTrendLinePeriodProperty");
  p_registerProperty(1363, @"TSCHChartSeriesDefaultTrendLineRSquaredOffsetXProperty");
  p_registerProperty(1364, @"TSCHChartSeriesDefaultTrendLineRSquaredOffsetYProperty");
  p_registerProperty(1365, @"TSCHChartSeriesDefaultTrendLineShowEquationProperty");
  p_registerProperty(1366, @"TSCHChartSeriesDefaultTrendLineShowLabelProperty");
  p_registerProperty(1367, @"TSCHChartSeriesDefaultTrendLineShowR2ValueProperty");
  p_registerProperty(1368, @"TSCHChartSeriesDefaultTrendLineTypeProperty");
  p_registerProperty(1369, @"TSCHChartSeriesPieWedgeExplosionProperty");
  p_registerProperty(1370, @"TSCHChartSeriesDefaultYAxisOrdinalProperty");
  p_registerProperty(1371, @"TSCHChartSeriesBubbleShowSeriesLabelsProperty");
  p_registerProperty(1372, @"TSCHChartSeriesBubbleValueLabelsAxisProperty");
  p_registerProperty(1373, @"TSCHChartSeriesScatterShowSeriesLabelsProperty");
  p_registerProperty(1374, @"TSCHChartSeriesScatterValueLabelsAxisProperty");
  p_registerProperty(1375, @"TSCHChartSeriesDefaultErrorBarLineEndProperty");
  p_registerProperty(1376, @"TSCHChartSeriesDefaultErrorBarLineEndScatterXProperty");
  p_registerProperty(1377, @"TSCHChartSeriesDefaultErrorBarShadowProperty");
  p_registerProperty(1378, @"TSCHChartSeriesDefaultErrorBarStrokeProperty");
  p_registerProperty(1379, @"TSCHChartSeriesDefaultErrorBarStrokeScatterXProperty");
  p_registerProperty(1380, @"TSCHChartSeries3DAreaFillProperty");
  p_registerProperty(1381, @"TSCHChartSeries3DBarFillProperty");
  p_registerProperty(1382, @"TSCHChartSeries3DColumnFillProperty");
  p_registerProperty(1383, @"TSCHChartSeries3DLineFillProperty");
  p_registerProperty(1384, @"TSCHChartSeries3DPieFillProperty");
  p_registerProperty(1385, @"TSCHChartSeriesAreaFillProperty");
  p_registerProperty(1386, @"TSCHChartSeriesBarFillProperty");
  p_registerProperty(1387, @"TSCHChartSeriesColumnFillProperty");
  p_registerProperty(1388, @"TSCHChartSeriesDefaultFillProperty");
  p_registerProperty(1389, @"TSCHChartSeriesMixedAreaFillProperty");
  p_registerProperty(1390, @"TSCHChartSeriesMixedColumnFillProperty");
  p_registerProperty(1391, @"TSCHChartSeriesPieFillProperty");
  p_registerProperty(1392, @"TSCHChartSeriesAreaLabelParagraphStyleIndexProperty");
  p_registerProperty(1393, @"TSCHChartSeriesBarLabelParagraphStyleIndexProperty");
  p_registerProperty(1394, @"TSCHChartSeriesDefaultLabelParagraphStyleIndexProperty");
  p_registerProperty(1395, @"TSCHChartSeriesLineLabelParagraphStyleIndexProperty");
  p_registerProperty(1396, @"TSCHChartSeriesMixedLabelParagraphStyleIndexProperty");
  p_registerProperty(1397, @"TSCHChartSeriesPieLabelParagraphStyleIndexProperty");
  p_registerProperty(1398, @"TSCHChartSeriesDefaultOpacityProperty");
  p_registerProperty(1399, @"TSCHChartSeriesAreaOutsideLabelParagraphStyleIndexProperty");
  p_registerProperty(1400, @"TSCHChartSeriesBarOutsideLabelParagraphStyleIndexProperty");
  p_registerProperty(1401, @"TSCHChartSeriesDefaultOutsideLabelParagraphStyleIndexProperty");
  p_registerProperty(1402, @"TSCHChartSeriesMixedOutsideLabelParagraphStyleIndexProperty");
  p_registerProperty(1403, @"TSCHChartSeriesPieOutsideLabelParagraphStyleIndexProperty");
  p_registerProperty(1404, @"TSCHChartSeries3DAreaShadowProperty");
  p_registerProperty(1405, @"TSCHChartSeries3DBarShadowProperty");
  p_registerProperty(1406, @"TSCHChartSeries3DColumnShadowProperty");
  p_registerProperty(1407, @"TSCHChartSeries3DLineShadowProperty");
  p_registerProperty(1408, @"TSCHChartSeries3DPieShadowProperty");
  p_registerProperty(1409, @"TSCHChartSeriesAreaShadowProperty");
  p_registerProperty(1410, @"TSCHChartSeriesBarShadowProperty");
  p_registerProperty(1411, @"TSCHChartSeriesBubbleShadowProperty");
  p_registerProperty(1412, @"TSCHChartSeriesDefaultShadowProperty");
  p_registerProperty(1413, @"TSCHChartSeriesLineShadowProperty");
  p_registerProperty(1414, @"TSCHChartSeriesMixedAreaShadowProperty");
  p_registerProperty(1415, @"TSCHChartSeriesMixedColumnShadowProperty");
  p_registerProperty(1416, @"TSCHChartSeriesMixedLineShadowProperty");
  p_registerProperty(1417, @"TSCHChartSeriesPieShadowProperty");
  p_registerProperty(1418, @"TSCHChartSeriesScatterShadowProperty");
  p_registerProperty(1419, @"TSCHChartSeriesAreaStrokeProperty");
  p_registerProperty(1420, @"TSCHChartSeriesBarStrokeProperty");
  p_registerProperty(1421, @"TSCHChartSeriesBubbleStrokeProperty");
  p_registerProperty(1422, @"TSCHChartSeriesLineStrokeProperty");
  p_registerProperty(1423, @"TSCHChartSeriesMixedAreaStrokeProperty");
  p_registerProperty(1424, @"TSCHChartSeriesMixedColumnStrokeProperty");
  p_registerProperty(1425, @"TSCHChartSeriesMixedLineStrokeProperty");
  p_registerProperty(1426, @"TSCHChartSeriesPieStrokeProperty");
  p_registerProperty(1427, @"TSCHChartSeriesScatterStrokeProperty");
  p_registerProperty(1428, @"TSCHChartSeriesAreaSymbolFillProperty");
  p_registerProperty(1429, @"TSCHChartSeriesBubbleSymbolFillProperty");
  p_registerProperty(1430, @"TSCHChartSeriesLineSymbolFillProperty");
  p_registerProperty(1431, @"TSCHChartSeriesMixedAreaSymbolFillProperty");
  p_registerProperty(1432, @"TSCHChartSeriesMixedLineSymbolFillProperty");
  p_registerProperty(1433, @"TSCHChartSeriesScatterSymbolFillProperty");
  p_registerProperty(1434, @"TSCHChartSeriesAreaSymbolFillUseSeriesFillProperty");
  p_registerProperty(1435, @"TSCHChartSeriesLineSymbolFillUseSeriesFillProperty");
  p_registerProperty(1436, @"TSCHChartSeriesMixedAreaSymbolFillUseSeriesFillProperty");
  p_registerProperty(1437, @"TSCHChartSeriesMixedLineSymbolFillUseSeriesFillProperty");
  p_registerProperty(1438, @"TSCHChartSeriesAreaSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1439, @"TSCHChartSeriesBubbleSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1440, @"TSCHChartSeriesLineSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1441, @"TSCHChartSeriesMixedAreaSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1442, @"TSCHChartSeriesMixedLineSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1443, @"TSCHChartSeriesScatterSymbolFillUseSeriesStrokeProperty");
  p_registerProperty(1444, @"TSCHChartSeriesAreaSymbolSizeProperty");
  p_registerProperty(1445, @"TSCHChartSeriesLineSymbolSizeProperty");
  p_registerProperty(1446, @"TSCHChartSeriesMixedAreaSymbolSizeProperty");
  p_registerProperty(1447, @"TSCHChartSeriesMixedLineSymbolSizeProperty");
  p_registerProperty(1448, @"TSCHChartSeriesScatterSymbolSizeProperty");
  p_registerProperty(1449, @"TSCHChartSeriesAreaSymbolStrokeProperty");
  p_registerProperty(1450, @"TSCHChartSeriesBubbleSymbolStrokeProperty");
  p_registerProperty(1451, @"TSCHChartSeriesLineSymbolStrokeProperty");
  p_registerProperty(1452, @"TSCHChartSeriesMixedAreaSymbolStrokeProperty");
  p_registerProperty(1453, @"TSCHChartSeriesMixedLineSymbolStrokeProperty");
  p_registerProperty(1454, @"TSCHChartSeriesScatterSymbolStrokeProperty");
  p_registerProperty(1455, @"TSCHChartSeriesDefaultTrendlineEquationOpacityProperty");
  p_registerProperty(1456, @"TSCHChartSeriesDefaultTrendlineEquationParagraphStyleIndexProperty");
  p_registerProperty(1457, @"TSCHChartSeriesDefaultTrendlineRSquaredOpacityProperty");
  p_registerProperty(1458, @"TSCHChartSeriesDefaultTrendlineRSquaredParagraphStyleIndexProperty");
  p_registerProperty(1459, @"TSCHChartSeriesDefaultTrendLineShadowProperty");
  p_registerProperty(1460, @"TSCHChartSeriesDefaultTrendLineStrokeProperty");
  p_registerProperty(1461, @"TSCHChartSeriesAreaValueLabelPositionProperty");
  p_registerProperty(1462, @"TSCHChartSeriesBarValueLabelPositionProperty");
  p_registerProperty(1463, @"TSCHChartSeriesBubbleValueLabelPositionProperty");
  p_registerProperty(1464, @"TSCHChartSeriesDefaultValueLabelPositionProperty");
  p_registerProperty(1465, @"TSCHChartSeriesLineValueLabelPositionProperty");
  p_registerProperty(1466, @"TSCHChartSeriesMixedAreaValueLabelPositionProperty");
  p_registerProperty(1467, @"TSCHChartSeriesMixedColumnValueLabelPositionProperty");
  p_registerProperty(1468, @"TSCHChartSeriesMixedLineValueLabelPositionProperty");
  p_registerProperty(1469, @"TSCHChartSeriesScatterValueLabelPositionProperty");
  p_registerProperty(1470, @"TSCHChartSeriesStackedAreaValueLabelPositionProperty");
  p_registerProperty(1471, @"TSCHChartSeriesStackedBarValueLabelPositionProperty");
  p_registerProperty(1472, @"TSCHLegendModelDefaultFillProperty");
  p_registerProperty(1473, @"TSCHLegendModelDefaultLabelParagraphStyleIndexProperty");
  p_registerProperty(1474, @"TSCHLegendModelDefaultOpacityProperty");
  p_registerProperty(1475, @"TSCHLegendModelDefaultShadowProperty");
  p_registerProperty(1476, @"TSCHLegendModelDefaultStrokeProperty");
  p_registerProperty(4096, @"TKSlideTransitionProperty");
  p_registerProperty(4097, @"TKSlideTitlePlaceholderVisibilityProperty");
  p_registerProperty(4098, @"TKSlideBodyPlaceholderVisibilityProperty");
  p_registerProperty(4099, @"TKSlideImagePlaceholderVisibilityProperty");
  p_registerProperty(4100, @"TKSlideSlideNumberPlaceholderVisibilityProperty");
  p_registerProperty(4101, @"text(Propagation)");
  p_registerProperty(4102, @"firstParagraphStyle(Propagation)");
  p_registerProperty(4103, @"firstListStyle(Propagation)");
  p_registerProperty(4104, @"TKMasterSlideBodyParagraphStyles");
  p_registerProperty(4105, @"TKMasterSlideBodyListStyles");
  p_registerProperty(4106, @"TKSlideContentsProperty");
  p_registerProperty(4107, @"TKSlidePlaceholdersForTagsProperty");
  p_registerProperty(4608, @"TRWorkspaceCanvasScaleProperty");
  p_registerProperty(4609, @"TRWorkspaceContentScaleProperty");
  p_registerProperty(4610, @"TRWorkspacePaginagedProperty");
  p_registerProperty(4611, @"TRWorkspacePageGutterProperty");
  p_registerProperty(4612, @"TRWorkspacePageOrientationProperty");
  p_registerProperty(4613, @"TRWorkspaceTopMarginProperty");
  p_registerProperty(4614, @"TRWorkspaceLeftMarginProperty");
  p_registerProperty(4615, @"TRWorkspaceRightMarginProperty");
  p_registerProperty(4616, @"TRWorkspaceBottomMarginProperty");
  p_registerProperty(4617, @"TRWorkspacePageNumberOrientationProperty");
  p_registerProperty(4618, @"TRWorkspaceUsePrinterMarginsProperty");
  p_registerProperty(4619, @"TRWorkspaceStartPageNumberProperty");
  p_registerProperty(4620, @"TRWorkspaceUseStartPageNumberProperty");
  p_registerProperty(4621, @"TRFitToSinglePage");
  p_registerProperty(4622, @"stageStroke");

  return p_registerProperty(4623, @"thumbnailStroke");
}

__CFString *p_infoStringFromPropertyValue(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return @"float";
      }

      return &stru_287D36338;
    }

    return @"double";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"int";
      }

      return &stru_287D36338;
    }

    return TSUObjectReferenceDescription();
  }
}

__CFString *p_summaryFromPropertyValue(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {

    return [a2 performSelector:sel_tssPropertySummary];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {

      return [a2 description];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return @"NSNull";
      }

      else
      {
        return &stru_287D36338;
      }
    }
  }
}

void sub_26C78E950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C78EB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *String()
{
  result = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  if (result)
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void *p_TSSPropertyStoreAllocateWithCapacity(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    if (a1)
    {
      v4 = malloc_type_calloc(a1, 0x10uLL, 0x10820400B94AB5FuLL);
      v3[1] = v4;
      if (!v4)
      {
        free(v3);
        return 0;
      }
    }

    else
    {
      v2[1] = 0;
    }
  }

  return v3;
}

void *i_TSSPropertyStoreCreateWithFirstPropertyAndArgumentList(uint64_t a1, double *a2)
{
  v2 = a1;
  v19 = a2;
  v20 = a2;
  v3 = 0;
  if (a1)
  {
    do
    {
      v5 = String(a1);
      if (v5 - 2 < 2 || v5 <= 1)
      {
        ++v20;
      }

      ++v3;
      v4 = v20++;
      LODWORD(a1) = *v4;
    }

    while (*v4);
  }

  v6 = v3;
  v7 = p_TSSPropertyStoreAllocateWithCapacity(v3);
  v8 = v7;
  if (v7)
  {
    *v7 = v6;
    if (v6)
    {
      v9 = v7[1];
      while (1)
      {
        while (1)
        {
          v10 = v2;
          if (!v2)
          {
            v11 = v19++;
            v10 = *v11;
            if (!v10)
            {
              if ((p_TSSPropertyStoreSort(v8) & 1) == 0)
              {
                String(v8);
                return 0;
              }

              return v8;
            }
          }

          v12 = String(v10);
          v2 = 0;
          if (v12 <= 1)
          {
            break;
          }

          if (v12 == 2)
          {
            v16 = v19++;
            v17 = *v16;
            String(v9, v10, v17);
LABEL_22:
            v2 = 0;
            v9 += 16;
          }

          else if (v12 == 3)
          {
            v14 = v19++;
            String(v9, v10, *v14);
            goto LABEL_22;
          }
        }

        if (!v12)
        {
          v15 = v19++;
          String(v9, v10, *v15);
          goto LABEL_22;
        }

        if (v12 == 1)
        {
          v13 = v19++;
          String(v9, v10, *v13);
          goto LABEL_22;
        }
      }
    }
  }

  return v8;
}

uint64_t String(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 >> 4 >= 0x121)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 53, @"Property ID <%d> out of range.", a2}];
  }

  result = String(a2);
  if (result != 1)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)"}];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
    v12 = String(a2);
    v13 = String(v12);
    v14 = String(a2);
    result = [v9 handleFailureInFunction:v10 file:v11 lineNumber:54 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v13, v14, String(1u)}];
  }

  if (a3 == 0x80000000)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)"}];
    result = [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 55, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 1;
  *a1 = a3;
  return result;
}

uint64_t String(uint64_t a1, uint64_t a2, float a3)
{
  if (a2 >> 4 >= 0x121)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 64, @"Property ID <%d> out of range.", a2}];
  }

  result = String(a2);
  if (result != 2)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)"}];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
    v12 = String(a2);
    v13 = String(v12);
    v14 = String(a2);
    result = [v9 handleFailureInFunction:v10 file:v11 lineNumber:65 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v13, v14, String(2u)}];
  }

  if (a3 == INFINITY)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)"}];
    result = [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 66, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 2;
  *a1 = a3;
  return result;
}

uint64_t String(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 >> 4 >= 0x121)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 94, @"Property ID <%d> out of range.", a2}];
  }

  result = String(a2);
  if (result != 3)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)"}];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
    v12 = String(a2);
    v13 = String(v12);
    v14 = String(a2);
    result = [v9 handleFailureInFunction:v10 file:v11 lineNumber:95 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v13, v14, String(3u)}];
  }

  if (a3 == INFINITY)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)"}];
    result = [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 96, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 3;
  *a1 = a3;
  return result;
}

{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v20 = v3;
  v12 = *(a1 + 10);
  if (v12 != *(a2 + 10))
  {
    return 0;
  }

  if (*(a1 + 10) <= 1u)
  {
    if (*(a1 + 10))
    {
      v13 = String(a1);
      if (v13 != String(a2))
      {
        return 0;
      }
    }

    else
    {
      v18 = *a1;
      if (v18 != *a2 && ([v18 isEqual:?] & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v12 == 2)
  {
    *&v19 = String(a1, a3);
    if (*&v19 == String(a2, v19))
    {
      return 1;
    }
  }

  else if (v12 == 3)
  {
    v15 = String(a1);
    if (v15 == String(a2))
    {
      return 1;
    }
  }

  else
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSSPropertyEntryEqual(const TSSPropertyEntry *, const TSSPropertyEntry *)"}];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 239, @"Unexpected entry type"}];
  }

  return 0;
}

id String(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 >> 4 >= 0x121)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 108, @"Property ID <%d> out of range.", a2}];
  }

  if (String(a2))
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
    v10 = String(a2);
    v11 = String(v10);
    v12 = String(a2);
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:109 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v11, v12, String(0)}];
  }

  v13 = a3;
  if (!a3)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)"}];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 110, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
    v13 = 0;
  }

  *(a1 + 8) = a2;
  *(a1 + 10) = 0;
  *a1 = v13;

  return v13;
}

{
  if (!TSSPropertyEntryInit_nullValue)
  {
    TSSPropertyEntryInit_nullValue = [MEMORY[0x277CBEB68] null];
  }

  v5 = String(a2);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (a3)
      {
        [a3 floatValue];
        v25 = v24;
      }

      else
      {
        v25 = INFINITY;
      }

      if (a2 >> 4 >= 0x121)
      {
        v46 = [MEMORY[0x277D6C290] currentHandler];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)"}];
        [v46 handleFailureInFunction:v47 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 64, @"Property ID <%d> out of range.", a2}];
      }

      result = String(a2);
      if (result != 2)
      {
        v48 = [MEMORY[0x277D6C290] currentHandler];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)"}];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
        v51 = String(a2);
        v52 = String(v51);
        v53 = String(a2);
        result = [v48 handleFailureInFunction:v49 file:v50 lineNumber:65 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v52, v53, String(2u)}];
      }

      if (v25 == INFINITY)
      {
        v54 = [MEMORY[0x277D6C290] currentHandler];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithFloat(TSSPropertyEntry *, TSSProperty, float)"}];
        result = [v54 handleFailureInFunction:v55 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 66, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
      }

      *(a1 + 8) = a2;
      *(a1 + 10) = 2;
      *a1 = v25;
    }

    else
    {
      if (v5 != 3)
      {
LABEL_12:
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInit(TSSPropertyEntry *, TSSProperty, NSObject *)"}];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"];

        return [v9 handleFailureInFunction:v10 file:v11 lineNumber:49 description:@"Unexpected entry type"];
      }

      if (a3)
      {
        [a3 doubleValue];
        v8 = v7;
      }

      else
      {
        v8 = INFINITY;
      }

      if (a2 >> 4 >= 0x121)
      {
        v36 = [MEMORY[0x277D6C290] currentHandler];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)"}];
        [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 94, @"Property ID <%d> out of range.", a2}];
      }

      result = String(a2);
      if (result != 3)
      {
        v38 = [MEMORY[0x277D6C290] currentHandler];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)"}];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
        v41 = String(a2);
        v42 = String(v41);
        v43 = String(a2);
        result = [v38 handleFailureInFunction:v39 file:v40 lineNumber:95 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v42, v43, String(3u)}];
      }

      if (v8 == INFINITY)
      {
        v44 = [MEMORY[0x277D6C290] currentHandler];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithDouble(TSSPropertyEntry *, TSSProperty, double)"}];
        result = [v44 handleFailureInFunction:v45 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 96, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
      }

      *(a1 + 8) = a2;
      *(a1 + 10) = 3;
      *a1 = v8;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (a3)
        {
          v6 = [a3 intValue];
        }

        else
        {
          v6 = 0x80000000;
        }

        if (a2 >> 4 >= 0x121)
        {
          v26 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)"}];
          [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 53, @"Property ID <%d> out of range.", a2}];
        }

        result = String(a2);
        if (result != 1)
        {
          v28 = [MEMORY[0x277D6C290] currentHandler];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)"}];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
          v31 = String(a2);
          v32 = String(v31);
          v33 = String(a2);
          result = [v28 handleFailureInFunction:v29 file:v30 lineNumber:54 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v32, v33, String(1u)}];
        }

        if (v6 == 0x80000000)
        {
          v34 = [MEMORY[0x277D6C290] currentHandler];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithInt(TSSPropertyEntry *, TSSProperty, int)"}];
          result = [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 55, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
        }

        *(a1 + 8) = a2;
        *(a1 + 10) = 1;
        *a1 = v6;
        return result;
      }

      goto LABEL_12;
    }

    if (a2 >> 4 >= 0x121)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)"}];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 108, @"Property ID <%d> out of range.", a2}];
    }

    if (String(a2))
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)"}];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"];
      v18 = String(a2);
      v19 = String(v18);
      v20 = String(a2);
      [v15 handleFailureInFunction:v16 file:v17 lineNumber:109 description:{@"Unexpected property type of '%@' for property '%@'. Expected '%@'.", v19, v20, String(0)}];
    }

    v21 = a3;
    if (!a3)
    {
      v22 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyEntryInitWithRetainedObject(TSSPropertyEntry *, TSSProperty, id)"}];
      [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.h"), 110, @"Illegal to set undefined value for property %d %@", a2, String(a2)}];
      v21 = 0;
    }

    *(a1 + 8) = a2;
    *(a1 + 10) = 0;
    *a1 = v21;

    return v21;
  }

  return result;
}

uint64_t p_TSSPropertyStoreSort(uint64_t a1)
{
  if (*a1 < 2uLL)
  {
    return 1;
  }

  v1 = mergesort(*(a1 + 8), *a1, 0x10uLL, p_TSSPropertyEntryCompare);
  if (!v1)
  {
    return 1;
  }

  NSLog(@"p_TSSPropertyStoreSort mergesort failed with error %d", v1);
  return 0;
}

void String(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 1) + 16 * v3;
        if (!*(v5 + 10))
        {
        }

        v3 = ++v4;
      }

      while (v2 > v4);
    }

    free(*(a1 + 1));

    free(a1);
  }
}

unint64_t *String(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = p_TSSPropertyStoreAllocateWithCapacity(*a1);
  v3 = v2;
  if (v2)
  {
    if (*a1)
    {
      memcpy(v2[1], *(a1 + 8), 16 * *a1);
      v4 = *a1;
      *v3 = *a1;
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        do
        {
          v7 = v3[1] + 16 * v5;
          if (!*(v7 + 10))
          {
            v8 = *v7;
            v4 = *v3;
          }

          v5 = v6;
        }

        while (v4 > v6++);
      }
    }
  }

  return v3;
}

void String(size_t *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreSetIntValueForProperty(TSSPropertyStoreRef, TSSProperty, int)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 285, @"nil map reference"}];
  }

  v8 = p_TSSPropertyStoreSearch(a1, a2);
  if (v8)
  {

    String(v8, a2, a3);
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    String(v9, a2, a3);
    p_TSSPropertyStoreAddNewEntries(a1, v9, 1);
  }
}

size_t *p_TSSPropertyStoreSearch(size_t *result, unsigned __int16 a2)
{
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      v4[0] = 0;
      v4[1] = a2;
      return bsearch(v4, v3, *result, 0x10uLL, p_TSSPropertyEntryCompare);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void p_TSSPropertyStoreAddNewEntries(uint64_t *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = malloc_type_calloc(*a1 + a3, 0x10uLL, 0x10820400B94AB5FuLL);
        if (v6)
        {
          v7 = v6;
          v8 = *a1;
          if (*a1)
          {
            v9 = a1[1];
            if (v9)
            {
              memcpy(v6, v9, 16 * v8);
              v8 = *a1;
            }
          }

          memcpy(&v7[16 * v8], a2, 16 * a3);
          if (mergesort(v7, *a1 + a3, 0x10uLL, p_TSSPropertyEntryCompare))
          {

            free(v7);
          }

          else
          {
            free(a1[1]);
            *a1 += a3;
            a1[1] = v7;
          }
        }
      }
    }
  }
}

void String(size_t *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreSetFloatValueForProperty(TSSPropertyStoreRef, TSSProperty, float)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 301, @"nil map reference"}];
  }

  v8 = p_TSSPropertyStoreSearch(a1, a2);
  if (v8)
  {

    String(v8, a2, a3);
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    String(v9, a2, a3);
    p_TSSPropertyStoreAddNewEntries(a1, v9, 1);
  }
}

void String(size_t *a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreSetDoubleValueForProperty(TSSPropertyStoreRef, TSSProperty, double)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 317, @"nil map reference"}];
  }

  v8 = p_TSSPropertyStoreSearch(a1, a2);
  if (v8)
  {
    v9 = v8;
    if (!*(v8 + 10))
    {
    }

    String(v9, a2, a3);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    String(v10, a2, a3);
    p_TSSPropertyStoreAddNewEntries(a1, v10, 1);
  }
}

{
  if (!a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreSetCGFloatValueForProperty(TSSPropertyStoreRef, TSSProperty, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 334, @"nil map reference"}];
  }

  v8 = p_TSSPropertyStoreSearch(a1, a2);
  v12[0] = 0;
  v12[1] = 0;
  if (v8)
  {
    v9 = v8;
    if (!*(v8 + 10))
    {
    }
  }

  else
  {
    v9 = v12;
  }

  v10 = String(a2);
  if (v10 == 3)
  {
    String(v9, a2, a3);
  }

  else if (v10 == 2)
  {
    v11 = a3;
    String(v9, a2, v11);
  }

  if (v9 == v12)
  {
    p_TSSPropertyStoreAddNewEntries(a1, v12, 1);
  }
}

void String(size_t *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreSetObjectForProperty(TSSPropertyStoreRef, TSSProperty, id)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 360, @"nil map reference"}];
  }

  v8 = p_TSSPropertyStoreSearch(a1, a2);
  if (v8)
  {
    v9 = v8;
    if (!*(v8 + 10))
    {
    }

    String(v9, a2, a3);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    String(v10, a2, a3);
    p_TSSPropertyStoreAddNewEntries(a1, v10, 1);
  }
}

{
  if (!a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreSetBoxedObjectForProperty(TSSPropertyStoreRef, TSSProperty, id)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 377, @"nil map reference"}];
  }

  v8 = p_TSSPropertyStoreSearch(a1, a2);
  if (v8)
  {
    v9 = v8;
    if (!*(v8 + 10))
    {
    }

    String(v9, a2, a3);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    String(v10, a2, a3);
    p_TSSPropertyStoreAddNewEntries(a1, v10, 1);
  }
}

void String(uint64_t *a1, int64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*a1)
    {
      if (v3 >= 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2[1];
        v8 = a1[1];
        v9 = v7;
        do
        {
          v10 = a1[1] + 16 * *a1;
          if (v8 >= v10)
          {
LABEL_10:
            if (!v6)
            {
              v6 = malloc_type_calloc(v3 - ((v9 - v7) >> 4), 0x10uLL, 0x10820400B94AB5FuLL);
              v5 = v6;
            }

            *v5 = *v9;
            if (!*(v5 + 10))
            {
              v13 = *v5;
            }

            v9 += 16;
            v5 += 2;
          }

          else
          {
            v11 = *(v9 + 8);
            while (1)
            {
              v12 = *(v8 + 8);
              if (v12 == v11)
              {
                break;
              }

              if (v12 < v11)
              {
                v8 += 16;
                if (v8 < v10)
                {
                  continue;
                }
              }

              goto LABEL_10;
            }

            if (!*(v9 + 10))
            {
              v14 = *v9;
            }

            if (!*(v8 + 10))
            {
            }

            v15 = *v9;
            v9 += 16;
            *v8 = v15;
            v8 += 16;
          }

          v3 = *a2;
          v7 = a2[1];
        }

        while (v9 < v7 + 16 * *a2);
        if (v6)
        {
          p_TSSPropertyStoreAddNewEntries(a1, v6, (v5 - v6) >> 4);

          free(v6);
        }
      }
    }

    else
    {
      v16 = malloc_type_calloc(v3, 0x10uLL, 0x10820400B94AB5FuLL);
      a1[1] = v16;
      if (v16)
      {
        v18 = *a2;
        v17 = a2[1];
        *a1 = *a2;
        memcpy(v16, v17, 16 * v18);
        v19 = *a1;
        if (*a1)
        {
          v20 = 0;
          v21 = 1;
          do
          {
            v22 = a1[1] + 16 * v20;
            if (!*(v22 + 10))
            {
              v23 = *v22;
              v19 = *a1;
            }

            v20 = v21;
          }

          while (v19 > v21++);
        }
      }
    }
  }
}

uint64_t String(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

unint64_t *String(unint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = 0;
      result = 0;
      v4 = 0;
      v5 = v1[1];
      do
      {
        v6 = (v5 + 16 * v3);
        v7 = v4;
        result = (result + (v4 | (*(v6 + 4) << 16)));
        if (*(v6 + 10) == 1)
        {
          result = (result + *v6 + v4);
        }

        ++v4;
        v3 = (v7 + 1);
      }

      while (v2 > v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t *String(unint64_t *result, uint64_t a2)
{
  if (result)
  {
    v2 = *result;
    if (*result)
    {
      v3 = 0;
      v4 = result[1];
      v5 = 1;
      do
      {
        *(a2 + 4 * v3) = *(v4 + 16 * v3 + 8);
        v3 = v5;
      }

      while (v2 > v5++);
    }
  }

  return result;
}

uint64_t String(size_t *a1, unsigned __int16 a2)
{
  v2 = p_TSSPropertyStoreSearch(a1, a2);
  if (!v2)
  {
    return 0x80000000;
  }

  return String(v2);
}

float String(size_t *a1, unsigned __int16 a2)
{
  v2 = p_TSSPropertyStoreSearch(a1, a2);
  if (!v2)
  {
    return INFINITY;
  }

  return String(v2, v3);
}

double String(size_t *a1, unsigned __int16 a2)
{
  v2 = p_TSSPropertyStoreSearch(a1, a2);
  if (!v2)
  {
    return INFINITY;
  }

  return String(v2);
}

{
  v2 = p_TSSPropertyStoreSearch(a1, a2);
  if (!v2)
  {
    return INFINITY;
  }

  v4 = *(v2 + 10);
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      return String(v2, v3);
    }

    return INFINITY;
  }

  return String(v2);
}

uint64_t *String(size_t *a1, unsigned __int16 a2)
{
  result = p_TSSPropertyStoreSearch(a1, a2);
  if (result)
  {

    return String(result);
  }

  return result;
}

unsigned int *String(size_t *a1, unsigned __int16 a2)
{
  result = p_TSSPropertyStoreSearch(a1, a2);
  if (result)
  {

    return String(result, v3);
  }

  return result;
}

BOOL String(unint64_t *a1, unint64_t *a2, double a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v6 = *a1;
    if (*a1 == *a2)
    {
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = String(a1[1] + v7, a2[1] + v7, a3);
          v6 = *a1;
          if (!v9)
          {
            break;
          }

          v7 += 16;
        }
      }

      else
      {
        i = 0;
      }

      return i == v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t String(id *a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 10);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"double  %3d (%@) = %g", v2, String(*(a1 + 4)), *a1, v11, v12, v13];
      }

      goto LABEL_8;
    }

    return [MEMORY[0x277CCACA8] stringWithFormat:@"float   %3d (%@) = %f", v2, String(*(a1 + 4)), *a1, v11, v12, v13];
  }

  else
  {
    if (*(a1 + 10))
    {
      if (v3 == 1)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"int     %3d (%@) = %d", v2, String(*(a1 + 4)), *a1, v11, v12, v13];
      }

LABEL_8:
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSSPropertyEntryDescription(TSSPropertyEntry *)"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 651, @"Invalid property type value"}];
      return 0;
    }

    v7 = MEMORY[0x277CCACA8];
    v8 = String(*(a1 + 4));
    v9 = *a1;
    v10 = objc_opt_class();
    return [v7 stringWithFormat:@"%@  %3d (%@) = %p (%@) '%@'", @"Object", v2, v8, v9, NSStringFromClass(v10), objc_msgSend(*a1, "description")];
  }
}

uint64_t String(uint64_t *a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = 0;
      v5 = 0;
      v6 = &stru_287D36338;
      do
      {
        [v2 appendFormat:@"%@%@", v6, String((a1[1] + v4))];
        ++v5;
        v3 = *a1;
        v4 += 16;
        v6 = @"\n";
      }

      while (v5 < *a1);
    }
  }

  else
  {
    v3 = 0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"TSSPropertyStoreDescription(%p) %lu entries {\n%@\n}", a1, v3, objc_msgSend(MEMORY[0x277CCACA8], "tsu_stringByIndentingString:", v2)];
}

{
  if (!a1)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 131, @"invalid nil value for '%s'", "entry"}];
  }

  if (*(a1 + 10) - 1 >= 3)
  {
    if (*(a1 + 10))
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 146, @"Unexpected entry type", v11}];
    }

    else
    {
      result = *a1;
      if (*a1)
      {
        return result;
      }
    }
  }

  else
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 143, @"Asked for object value of a %@-valued property.", String(*(a1 + 10))}];
  }

  v9 = [MEMORY[0x277D6C290] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetObjectValue(const TSSPropertyEntry *)"];
  [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 150, @"Undefined value in entry for property %d %@", *(a1 + 4), String(*(a1 + 4))}];
  return 0;
}

void *String(void *a1, void *a2, char a3)
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  [v6 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"TSSPropertyStoreRef %p", a1)}];
  [v7 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"TSSPropertyStoreRef %p", a2)}];
  [v8 addObject:@" "];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = [objc_msgSend(v6 "lastObject")];
  v9 = p_TSSPropertyStoreBuildPropertySet(a1);
  v10 = [(TSSPropertySet *)v9 propertySetByAddingPropertiesFromSet:p_TSSPropertyStoreBuildPropertySet(a2)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __TSSPropertyStoreDiffDescription_block_invoke;
  v18[3] = &unk_279D47F38;
  v18[8] = a1;
  v18[9] = a2;
  v19 = a3;
  v18[4] = v8;
  v18[5] = v6;
  v18[6] = v7;
  v18[7] = &v20;
  [v10 enumeratePropertiesUsingBlock:v18];
  v11 = [MEMORY[0x277CCAB68] string];
  v12 = 0;
  v13 = &stru_287D36338;
  while (v12 < [v8 count])
  {
    for (i = [v6 objectAtIndexedSubscript:v12]; ; i = objc_msgSend(i, "stringByAppendingString:", @"         "))
    {
      v15 = [i length];
      if (v15 >= v21[3])
      {
        break;
      }
    }

    v16 = [i length];
    if (v16 > v21[3])
    {
      i = [i substringToIndex:?];
    }

    [v11 appendFormat:@"%@%@ %@   %@", v13, objc_msgSend(v8, "objectAtIndexedSubscript:", v12), i, objc_msgSend(v7, "objectAtIndexedSubscript:", v12)];
    ++v12;
    v13 = @"\n";
  }

  _Block_object_dispose(&v20, 8);
  return v11;
}

void sub_26C790B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

TSSMutablePropertySet *p_TSSPropertyStoreBuildPropertySet(void *a1)
{
  v2 = objc_alloc_init(TSSMutablePropertySet);
  if (a1 && *a1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      [(TSSMutablePropertySet *)v2 addProperty:*(a1[1] + 16 * v3 + 8)];
      v3 = v4;
    }

    while (*a1 > v4++);
  }

  return v2;
}

unint64_t __TSSPropertyStoreDiffDescription_block_invoke(uint64_t a1, unsigned __int16 a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = p_TSSPropertyStoreSearch(*(a1 + 64), a2);
  v7 = p_TSSPropertyStoreSearch(*(a1 + 72), a2);
  v9 = v7;
  v10 = @" ";
  if (v6)
  {
    if (v7)
    {
      if (String(v6, v7, v8))
      {
        v11 = @" ";
      }

      else
      {
        v11 = @"!";
      }
    }

    else
    {
      v11 = @"+";
    }

    [v4 addObjectsFromArray:{objc_msgSend(String(v6), "componentsSeparatedByString:", @"\n"}];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = *(*(*(a1 + 56) + 8) + 24);
          if (v17 <= [v16 length])
          {
            v19 = [v16 length];
            v18 = *(*(a1 + 56) + 8);
          }

          else
          {
            v18 = *(*(a1 + 56) + 8);
            v19 = *(v18 + 24);
          }

          *(v18 + 24) = v19;
        }

        v13 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v10 = v11;
    if (v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = @"-";
    if (v7)
    {
LABEL_20:
      [v5 addObjectsFromArray:{objc_msgSend(String(v9), "componentsSeparatedByString:", @"\n"}];
      v10 = v11;
    }
  }

  v20 = [v4 count];
  if (v20 < [v5 count])
  {
    do
    {
      [v4 addObject:&stru_287D36338];
      v21 = [v4 count];
    }

    while (v21 < [v5 count]);
  }

  v22 = [v5 count];
  if (v22 < [v4 count])
  {
    do
    {
      [v5 addObject:&stru_287D36338];
      v23 = [v5 count];
    }

    while (v23 < [v4 count]);
  }

  result = [v4 count];
  if (result)
  {
    for (j = 0; j < result; ++j)
    {
      if ((*(a1 + 80) & 1) != 0 || ([(__CFString *)v10 isEqualToString:@" "]& 1) == 0)
      {
        [*(a1 + 32) addObject:v10];
        [*(a1 + 40) addObject:{objc_msgSend(v4, "objectAtIndexedSubscript:", j)}];
        [*(a1 + 48) addObject:{objc_msgSend(v5, "objectAtIndexedSubscript:", j)}];
      }

      result = [v4 count];
    }
  }

  return result;
}

uint64_t String(void *a1, void *a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(TSSMutablePropertySet);
  v5 = objc_alloc_init(TSSMutablePropertySet);
  v6 = objc_alloc_init(TSSMutablePropertySet);
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v8 = p_TSSPropertyStoreBuildPropertySet(a1);
  v9 = [(TSSPropertySet *)v8 propertySetByAddingPropertiesFromSet:p_TSSPropertyStoreBuildPropertySet(a2)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __TSSPropertyStoreDiffPropertyNames_block_invoke;
  v11[3] = &unk_279D47F60;
  v11[7] = a1;
  v11[8] = a2;
  v11[4] = v4;
  v11[5] = v5;
  v11[6] = v6;
  [v9 enumeratePropertiesUsingBlock:v11];
  return v7;
}

{
  if (![a1 stylesheet])
  {
    return 1;
  }

  v4 = [a1 stylesheet];
  if (v4 == [a2 stylesheet])
  {
    return 1;
  }

  result = [objc_msgSend(a1 "stylesheet")];
  if (result)
  {
    v6 = [objc_msgSend(a1 "stylesheet")];
    return v6 == [a2 stylesheet];
  }

  return result;
}

uint64_t __TSSPropertyStoreDiffPropertyNames_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = p_TSSPropertyStoreSearch(*(a1 + 56), a2);
  result = p_TSSPropertyStoreSearch(*(a1 + 64), a2);
  if (v4)
  {
    if (result)
    {
      v6 = p_TSSPropertyStoreSearch(*(a1 + 56), a2);
      v7 = p_TSSPropertyStoreSearch(*(a1 + 64), a2);
      result = String(v6, v7, v8);
      if (result)
      {
        return result;
      }

      v9 = 32;
    }

    else
    {
      v9 = 40;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v9 = 48;
  }

  v10 = *(a1 + v9);

  return [v10 addProperty:a2];
}

void String(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a1;
    do
    {
      if (v10)
      {
        v11 = 0;
        v12 = *(a2 + 4 * v8);
        v13 = 1;
        while (1)
        {
          v14 = v3 + 16 * v11;
          if (v12 == *(v14 + 8))
          {
            break;
          }

          v11 = v13;
          if (v10 <= v13++)
          {
            goto LABEL_15;
          }
        }

        if (!*(v14 + 10))
        {
        }

        if (--v10 > v11)
        {
          *v14 = *(v3 + 16 * v10);
        }
      }

LABEL_15:
      v8 = ++v9;
    }

    while (v9 < a3);
    if (v10 != *a1)
    {
      v16 = a1[1];
      if (v10)
      {
        v17 = malloc_type_realloc(v16, 16 * v10, 0x10820400B94AB5FuLL);
        if (!v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        free(v16);
        v17 = 0;
      }

      a1[1] = v17;
LABEL_23:
      *a1 = v10;

      p_TSSPropertyStoreSort(a1);
    }
  }
}

void String(unint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = &v2[16 * v4];
      if (!*(v6 + 10))
      {
      }

      v4 = v5;
    }

    while (v3 > v5++);
    v2 = a1[1];
  }

  free(v2);
  *a1 = 0;
  a1[1] = 0;
}

void String(unint64_t *a1, uint64_t *a2, double a3)
{
  v4 = *a1;
  if (*a2 >= 1)
  {
    v6 = a2[1];
    v7 = v6 + 16 * *a2;
    v8 = a1[1];
    do
    {
      v9 = *a1;
      v10 = a1[1] + 16 * *a1;
      while (v8 >= v10)
      {
LABEL_9:
        v6 += 16;
        if (v6 >= v7)
        {
          goto LABEL_17;
        }
      }

      v11 = *(v6 + 8);
      while (1)
      {
        v12 = *(v8 + 8);
        if (v12 == v11)
        {
          break;
        }

        if (v12 < v11)
        {
          v8 += 16;
          if (v8 < v10)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      if (String(v8, v6, a3))
      {
        if (!*(v8 + 10))
        {
        }

        *(v8 + 8) = 0;
        --v4;
      }

      v8 += 16;
      v6 += 16;
      v7 = a2[1] + 16 * *a2;
    }

    while (v6 < v7);
    v9 = *a1;
LABEL_17:
    if (v4 < v9)
    {
      v13 = a1[1];
      if (v9 < 1)
      {
        v15 = a1[1];
      }

      else
      {
        v14 = a1[1];
        v15 = v14;
        do
        {
          if (*(v14 + 8))
          {
            if (v14 != v15)
            {
              *v15 = *v14;
              v9 = *a1;
              v13 = a1[1];
            }

            ++v15;
          }

          v14 += 16;
        }

        while (v14 < v13 + 16 * v9);
      }

      if ((v15 - v13) >> 4 != v4)
      {
        v16 = [MEMORY[0x277D6C290] currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSSPropertyStoreRemovePropertiesFromStore(TSSPropertyStoreRef, TSSPropertyStoreRef)"}];
        [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyStore.m"), 958, @"mismatch in entry count"}];
      }
    }
  }

  if (v4)
  {
    v18 = malloc_type_realloc(a1[1], 16 * v4, 0x10820400B94AB5FuLL);
    if (!v18)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (*a1)
  {
    free(a1[1]);
    v18 = 0;
LABEL_34:
    a1[1] = v18;
  }

LABEL_35:
  *a1 = v4;
}

uint64_t String(void *a1, const char *a2)
{
  return [a1 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
}

{
  return [a1 componentsSeparatedByString:@"-"];
}

uint64_t String(void *a1, uint64_t a2)
{
  v4 = [a1 componentsSeparatedByString:@"-"];
  if (v4 && [v4 count] == 3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", a1, a2];
  }

  else
  {
    return 0;
  }
}

id String(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6C310] setWithSet:a1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        objc_opt_class();
        v7 = TSUDynamicCast();
        if (v7)
        {
          for (i = v7; [i parent]; objc_msgSend(v2, "addObject:", i))
          {
            i = [i parent];
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [v2 copy];
}

{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 propertyMap];
  if (!v2)
  {
    v2 = +[TSSPropertyMap propertyMap];
  }

  v3 = [objc_msgSend(objc_opt_class() "properties")];
  [v3 removeProperties:{objc_msgSend(v2, "allProperties")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TSSFullPropertyMapForStyle_block_invoke;
  v5[3] = &unk_279D47EE8;
  v5[4] = a1;
  v5[5] = v2;
  [v3 enumeratePropertiesUsingBlock:v5];
  return v2;
}

__CFString *String(void *a1)
{
  if (!a1)
  {
    return @"nil";
  }

  v2 = [a1 rootAncestor];
  v3 = [v2 descendantCount] + 1;
  v4 = [objc_msgSend(objc_msgSend(a1 "documentRoot")];
  if (v3 != 2)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu of %lu", v3 - objc_msgSend(a1, "descendantCount"), v3];
  }

  if (v2 == v4)
  {
    if (v2 == a1)
    {
      return @"Theme";
    }

    else
    {
      if ([v4 child] != a1)
      {
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSSDebugStylesheetDescription(TSSStylesheet *)"];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
        v8 = v12;
        v9 = v13;
        v10 = 209;
        goto LABEL_12;
      }

      return @"Document";
    }
  }

  else if (v2 == a1)
  {
    return @"Pasteboard-Root";
  }

  else
  {
    if ([v2 child] != a1)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSSDebugStylesheetDescription(TSSStylesheet *)"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
      v8 = v5;
      v9 = v6;
      v10 = 224;
LABEL_12:
      [v8 handleFailureInFunction:v9 file:v7 lineNumber:v10 description:@"Unexpected."];
      return @"Unexpected";
    }

    return @"Pasteboard-Child";
  }
}

{
  v1 = [a1 stylesheet];

  return String(v1);
}

{
  if ([a1 styleIdentifier])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", objc_msgSend(a1, "styleIdentifier")];
  }

  else
  {
    return &stru_287D36338;
  }
}

{
  if ([a1 name])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", objc_msgSend(a1, "name")];
  }

  else
  {
    return &stru_287D36338;
  }
}

{
  if (!a1)
  {
    return &stru_287D36338;
  }

  if ([a1 styleIdentifier])
  {
    if ([a1 styleIdentifier])
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", objc_msgSend(a1, "styleIdentifier")];
    }

    return &stru_287D36338;
  }

  if ([a1 name] && objc_msgSend(objc_msgSend(a1, "name"), "length"))
  {
    if ([a1 name])
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", objc_msgSend(a1, "name")];
    }

    return &stru_287D36338;
  }

  return TSUObjectReferenceDescription();
}

void *String(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if ([a1 styleIdentifier])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", objc_msgSend(a1, "styleIdentifier")];
  }

  else
  {
    v3 = &stru_287D36338;
  }

  v17[0] = v3;
  if ([a1 name])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", objc_msgSend(a1, "name")];
  }

  else
  {
    v4 = &stru_287D36338;
  }

  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 length])
        {
          if ([v2 length])
          {
            v11 = @" ";
          }

          else
          {
            v11 = &stru_287D36338;
          }

          [v2 appendFormat:@"%@%@", v11, v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  return v2;
}

uint64_t __TSSDebugStyleRelationshipDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  [v8 appendFormat:@"%@|%p|%@|", NSStringFromClass(v9), a2, a3];
  v10 = *(a1 + 32);
  if (a4)
  {
    [v10 appendFormat:@"%p|", a4];
    v11 = [objc_msgSend(a4 "stylesheet")];
    v12 = *(a1 + 32);
    if (v11)
    {
      return [v12 appendFormat:@"%p|%@|%p|%p$", objc_msgSend(a4, "stylesheet"), String(objc_msgSend(a4, "stylesheet")), v11, objc_msgSend(v11, "child")];
    }

    else
    {

      return [v12 appendFormat:@"|None$"];
    }
  }

  else
  {

    return [v10 appendString:@"nil$"];
  }
}

uint64_t __TSSDebugStyleRelationshipDescription_block_invoke_2(uint64_t a1, void *a2)
{
  (*(*(a1 + 32) + 16))();
  if ([a2 parent])
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, @"parent", [a2 parent]);
  }

  v4 = [a2 propertyMap];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __TSSDebugStyleRelationshipDescription_block_invoke_3;
  v7[3] = &unk_279D47FB8;
  v5 = *(a1 + 32);
  v7[4] = a2;
  v7[5] = v5;
  return [v4 enumeratePropertiesAndObjectsUsingBlock:v7];
}

uint64_t __TSSDebugStyleRelationshipDescription_block_invoke_3(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    v6 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v9 = v6 + 32;
      v7 = *(v6 + 32);
      v8 = *(v9 + 8);
      v10 = String(a2);
      v11 = *(v8 + 16);

      return v11(v8, v7, v10, a4);
    }
  }

  return result;
}

void sub_26C7925BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C794744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C7948A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSSFullPropertyMapForStyle_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) boxedValueForProperty:a2];
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 40);

    return [v6 setBoxedObject:v5 forProperty:a2];
  }

  return result;
}

void sub_26C795510(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t String(unsigned int *a1)
{
  if (!a1)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 56, @"invalid nil value for '%s'", "entry"}];
  }

  v4 = *(a1 + 10);
  if ((v4 - 2) < 2)
  {
LABEL_6:
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 68, @"Asked for int value of a %@-valued property.", String(*(a1 + 10))}];
LABEL_10:
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 75, @"Undefined value in entry for property %d %@", *(a1 + 4), String(*(a1 + 4))}];
    return 0x80000000;
  }

  if (v4 != 1)
  {
    if (*(a1 + 10))
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int TSSPropertyEntryGetIntValue(const TSSPropertyEntry *)"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 71, @"Unexpected entry type", v12}];
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  result = *a1;
  if (result == 0x80000000)
  {
    goto LABEL_10;
  }

  return result;
}

float String(uint64_t a1, double a2)
{
  if (!a1)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 81, @"invalid nil value for '%s'", "entry"}];
  }

  v5 = *(a1 + 10);
  if (v5 < 2)
  {
    goto LABEL_6;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 96, @"Unexpected entry type", v13}];
      goto LABEL_10;
    }

LABEL_6:
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 93, @"Asked for float value of a %@-valued property.", String(*(a1 + 10))}];
LABEL_10:
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float TSSPropertyEntryGetFloatValue(const TSSPropertyEntry *)"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 100, @"Undefined value in entry for property %d %@", *(a1 + 8), String(*(a1 + 8))}];
    LODWORD(a2) = 2139095040;
    return *&a2;
  }

  LODWORD(a2) = *a1;
  if (*a1 == INFINITY)
  {
    goto LABEL_10;
  }

  return *&a2;
}

double String(uint64_t a1)
{
  if (!a1)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 106, @"invalid nil value for '%s'", "entry"}];
  }

  v4 = *(a1 + 10);
  if (v4 >= 3)
  {
    if (v4 == 3)
    {
      result = *a1;
      if (*a1 != INFINITY)
      {
        return result;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 121, @"Unexpected entry type", v12}];
    }
  }

  else
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 118, @"Asked for double value of a %@-valued property.", String(*(a1 + 10))}];
  }

  v10 = [MEMORY[0x277D6C290] currentHandler];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSSPropertyEntryGetDoubleValue(const TSSPropertyEntry *)"];
  [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 125, @"Undefined value in entry for property %d %@", *(a1 + 8), String(*(a1 + 8))}];
  return INFINITY;
}

uint64_t String(unsigned int *a1, double a2)
{
  if (!a1)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetBoxedObjectValue(const TSSPropertyEntry *)"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 156, @"invalid nil value for '%s'", "entry"}];
  }

  v5 = *(a1 + 10);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      LODWORD(a2) = *a1;
      result = [MEMORY[0x277CCABB0] numberWithFloat:a2];
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v5 == 3)
    {
      result = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!*(a1 + 10))
    {
      result = *a1;
      if (*a1)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v5 == 1)
    {
      result = [MEMORY[0x277CCABB0] numberWithInt:*a1];
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  v7 = [MEMORY[0x277D6C290] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetBoxedObjectValue(const TSSPropertyEntry *)"];
  [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 176, @"Unexpected entry type"}];
LABEL_16:
  v9 = [MEMORY[0x277D6C290] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id TSSPropertyEntryGetBoxedObjectValue(const TSSPropertyEntry *)"];
  [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSPropertyEntry_Internal.m"), 180, @"Undefined value in entry for property %d %@", *(a1 + 4), String(*(a1 + 4))}];
  return 0;
}

void sub_26C7992F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t String()
{
  v0 = TSUProtocolCast();
  v1 = TSUProtocolCast();
  v2 = v1;
  if (v0)
  {
    v1 = v0;
    return [v1 isThemeEquivalent:v2];
  }

  if (v1)
  {
    v2 = 0;
    return [v1 isThemeEquivalent:v2];
  }

  return 0;
}

{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 1;
  if (_styleValidationQueue_onceToken != -1)
  {
    TSSShouldValidateStyles_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __TSSShouldValidateStyles_block_invoke;
  block[3] = &unk_279D48250;
  block[4] = &v3;
  dispatch_sync(_styleValidationQueue_queue, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_26C79C470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C79C9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _styleValidationQueue()
{
  if (_styleValidationQueue_onceToken != -1)
  {
    _styleValidationQueue_cold_1();
  }

  return _styleValidationQueue_queue;
}

dispatch_queue_t ___styleValidationQueue_block_invoke()
{
  result = dispatch_queue_create("TSSValidation", 0);
  _styleValidationQueue_queue = result;
  return result;
}

double __TSSShouldValidateStyles_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = String == 0;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = CFAbsoluteTimeGetCurrent() - *&String;
    result = *&String;
    if (v1 > *&String)
    {
      result = *&String + *&String;
      *&String = *&String + *&String;
    }
  }

  return result;
}

void String()
{
  if (_styleValidationQueue_onceToken != -1)
  {
    _styleValidationQueue_cold_1();
  }

  v1 = _styleValidationQueue_queue;

  dispatch_sync(v1, &__block_literal_global_4);
}

{
  if (_styleValidationQueue_onceToken != -1)
  {
    _styleValidationQueue_cold_1();
  }

  v1 = _styleValidationQueue_queue;

  dispatch_sync(v1, &__block_literal_global_6);
}

void __TSSEnableStyleValidation_block_invoke()
{
  if (!--String)
  {
    CFAbsoluteTimeGetCurrent();
    String = 0;
  }
}

void __TSSSuppressStyleValidation_block_invoke()
{
  if (!String++)
  {
    String = CFAbsoluteTimeGetCurrent();
    String = 0x4000000000000000;
  }
}

void sub_26C79F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C7A0560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_26C7A97A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C7AF780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSDImageMaxAllowedDataLength()
{
  if ([+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")])
  {
    return 0x2000000;
  }

  else
  {
    return 0x4000000;
  }
}

id TSDResampledImageFromProvider(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  [a1 naturalSize];
  v15 = v14;
  v17 = v16;
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (v18)
  {
    v19 = v15 <= a6;
  }

  else
  {
    v19 = 0;
  }

  if (v19 && a2 == 0 && v17 <= a7)
  {
    v29 = v18;
    if ((a5 & 4) == 0 || ([v18 isOpaque] & 1) == 0)
    {
      v30 = [v29 imageData];
      v31 = [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")] ? 0x2000000 : 0x4000000;
      if (![v30 isLengthLikelyToBeGreaterThan:v31])
      {
        return 0;
      }
    }
  }

  v22 = [a3 stringByDeletingPathExtension];
  if (!v22 || (v23 = v22, ![(__CFString *)v22 length]))
  {
    v23 = @"image";
  }

  v24 = [(__CFString *)v23 stringByAppendingString:@"-small"];
  v25 = [[TSDImageResamplingOperation alloc] initWithImageProvider:a1 desiredSize:a6, a7];
  [(TSDImageResamplingOperation *)v25 setDisplayName:v24];
  [(TSDImageResamplingOperation *)v25 setObjectContext:a4];
  [(TSDImageResamplingOperation *)v25 setMaskingPath:a2];
  v26 = [(TSDImageResamplingOperation *)v25 performResampleOperationWithResampleOptions:a5 bitmapContextOptions:9];
  v27 = v26;

  return v26;
}

id TSDResampleImageData(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = a1;
  if (!a1)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSPData *TSDResampleImageData(TSPData *, CGSize, CGPathRef, TSDImageResampleOptions)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 143, @"invalid nil value for '%s'", "sourceImageData"}];
  }

  if (a4 <= 0.0 || a5 <= 0.0)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSPData *TSDResampleImageData(TSPData *, CGSize, CGPathRef, TSDImageResampleOptions)"}];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 144, @"bogus size to resample"}];
  }

  if ([+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")])
  {
    v14 = 0x2000000;
  }

  else
  {
    v14 = 0x4000000;
  }

  if ([v9 isLengthLikelyToBeGreaterThan:v14])
  {
    return 0;
  }

  v16 = 0;
  if (v9 && a4 > 0.0 && a5 > 0.0)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v18 = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    v19 = [v18 isError];
    if ((a3 & 2) != 0)
    {
      if (v19)
      {
LABEL_20:
        v21 = v9;

        v16 = v9;
        goto LABEL_21;
      }
    }

    else
    {
      objc_opt_class();
      v20 = TSUDynamicCast();
      if (!v20 || ([v20 isValid] & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v9 = TSDResampledImageFromProvider(v18, a2, [v9 filename], objc_msgSend(v9, "context"), a3, a4, a5);
    goto LABEL_20;
  }

LABEL_21:

  return v16;
}

id TSDPossiblyResampledImageDataFromNSData(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  if (!a1)
  {
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSPData *TSDPossiblyResampledImageDataFromNSData(NSData *, CGSize, TSPObjectContext *, NSString *, TSDImageResampleOptions)"}];
    [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 185, @"invalid nil value for '%s'", "imageNSData"}];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v27 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSPData *TSDPossiblyResampledImageDataFromNSData(NSData *, CGSize, TSPObjectContext *, NSString *, TSDImageResampleOptions)"}];
    [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 186, @"invalid nil value for '%s'", "context"}];
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (a5 <= 0.0 || a6 <= 0.0)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSPData *TSDPossiblyResampledImageDataFromNSData(NSData *, CGSize, TSPObjectContext *, NSString *, TSDImageResampleOptions)"}];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 187, @"bogus size to resample"}];
  }

  v14 = [a1 length];
  v15 = [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  v16 = 0x4000000;
  if (v15)
  {
    v16 = 0x2000000;
  }

  if (v14 > v16)
  {
    return 0;
  }

  v18 = 0;
  if (a5 > 0.0 && a1 && a2 && a6 > 0.0)
  {
    v19 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v20 = [TSPData readOnlyDataFromNSData:a1 filename:a3 context:0];
    v21 = [(TSDImageProvider *)[TSDBitmapImageProvider alloc] initWithImageData:v20];
    v22 = v21;
    if (!v21 || ![(TSDBitmapImageProvider *)v21 isValid]|| (v23 = TSDResampledImageFromProvider(v22, 0, a3, a2, a4, a5, a6)) == 0 || (v18 = v23, v23 == v20))
    {
      v18 = [TSPData dataFromNSData:a1 filename:a3 context:a2];
    }

    v24 = v18;
  }

  return v18;
}

void _TSDBitmapContextClearContextInfo(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = [objc_msgSend(a1 objectAtIndex:{0), "pointerValue"}];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __TSDClearCGContextInfo_block_invoke;
      v4[3] = &__block_descriptor_40_e33_v16__0__TSUPointerKeyDictionary_8l;
      v4[4] = v3;
      TSDAccessCGContextInfoDictionaryWithBlock(1, 0, v4);
    }
  }
}

uint64_t TSDClearCGContextInfo(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __TSDClearCGContextInfo_block_invoke;
  v2[3] = &__block_descriptor_40_e33_v16__0__TSUPointerKeyDictionary_8l;
  v2[4] = a1;
  return TSDAccessCGContextInfoDictionaryWithBlock(1, 0, v2);
}

CGContext *TSDBitmapContextCreate(char a1, double a2)
{
  v3 = TSDCeilSize(a2);
  v5 = v4;
  if (a1)
  {
    if ((a1 & 0x20) != 0)
    {
      v10 = TSUP3ColorSpace();
    }

    else
    {
      v10 = TSUDeviceRGBColorSpace();
    }

    v8 = v10;
    if ((a1 & 4) != 0)
    {
      v12 = 4102;
    }

    else
    {
      v12 = 8198;
    }

    v13 = 5;
    if ((a1 & 4) == 0)
    {
      v13 = 8;
    }

    if ((a1 & 0x10) != 0)
    {
      v14 = 8193;
    }

    else
    {
      v14 = 8194;
    }

    if ((a1 & 2) != 0)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if ((a1 & 2) != 0)
    {
      v11 = 8;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v8 = 0;
      v9 = 7;
    }

    else
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGContextRef TSDBitmapContextCreate(CGSize, TSDBitmapContextOptions)"}];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 304, @"Must include a color or alpha channel."}];
      v8 = 0;
      v9 = 8194;
    }

    v11 = 8;
  }

  AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
  releaseInfo = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = CGBitmapContextCreateWithData(0, v3, v5, v11, AlignedBytesPerRow, v8, v9, _TSDBitmapContextClearContextInfo, releaseInfo);
  [releaseInfo addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", v17)}];
  TSDSetCGContextInfo(v17, 0, 0, 0, 0, 1.0);
  if ((a1 & 8) != 0)
  {
    CGContextTranslateCTM(v17, 0.0, v5);
    CGContextScaleCTM(v17, 1.0, -1.0);
  }

  return v17;
}

void TSDSetCGContextInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v13 = v12;
  if (v12)
  {
    [v12 CGPointValue];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
  }

  TSDSetCGContextInfoWithTileOffset(a1, a2, a3, a4, v13 != 0, a5, a6, v15, v17);
}

void *TSUCompositeImageWithColor(void *result, void *a2, CGBlendMode a3, CGFloat a4)
{
  if (result)
  {
    v7 = result;
    [result scale];
    v9 = v8;
    [v7 size];
    v12 = TSDMultiplySizeScalar(v10, v11, v9);
    v13 = TSDBitmapContextCreate(3, v12);
    v14 = TSDRectWithSize();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v7 CGImage];
    v24.origin.x = v14;
    v24.origin.y = v16;
    v24.size.width = v18;
    v24.size.height = v20;
    CGContextDrawImage(v13, v24, v21);
    CGContextSetFillColorWithColor(v13, [a2 CGColor]);
    CGContextSetAlpha(v13, a4);
    CGContextSetBlendMode(v13, a3);
    v25.origin.x = v14;
    v25.origin.y = v16;
    v25.size.width = v18;
    v25.size.height = v20;
    CGContextFillRect(v13, v25);
    Image = CGBitmapContextCreateImage(v13);
    v23 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image scale:0 orientation:v9];
    CGImageRelease(Image);
    CGContextRelease(v13);
    return v23;
  }

  return result;
}

double TSDComputeBoxTransformAndSizeForPDFPageIgnoringAngle(CGPDFPage *a1, uint64_t a2, CGFloat *a3, int a4)
{
  if (!a1)
  {
    v29 = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSDComputeBoxTransformAndSizeForPDFPageIgnoringAngle(CGPDFPageRef, CGAffineTransform *, CGSize *, BOOL)"}];
    [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 485, @"invalid nil value for '%s'", "page"}];
    return *MEMORY[0x277CBF3A0];
  }

  BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v36 = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
  v12 = v36.origin.x;
  v13 = v36.origin.y;
  v14 = v36.size.width;
  v15 = v36.size.height;
  v45 = CGPDFPageGetBoxRect(a1, kCGPDFArtBox);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v46 = CGRectIntersection(v37, v45);
  v38.origin.x = v12;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  v39 = CGRectIntersection(v38, v46);
  v16 = v39.origin.x;
  v17 = v39.origin.y;
  v18 = v39.size.width;
  v19 = v39.size.height;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = v16;
  v40.origin.y = v17;
  v40.size.width = v18;
  v40.size.height = v19;
  MinY = CGRectGetMinY(v40);
  v41.origin.x = v16;
  v41.origin.y = v17;
  v41.size.width = v18;
  v41.size.height = v19;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v16;
  v42.origin.y = v17;
  v42.size.width = v18;
  v42.size.height = v19;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.x = v16;
  v43.origin.y = v17;
  v43.size.width = v18;
  v43.size.height = v19;
  v22 = CGRectGetWidth(v43);
  v44.origin.x = v16;
  v44.origin.y = v17;
  v44.size.width = v18;
  v44.size.height = v19;
  v23 = CGRectGetHeight(v44);
  RotationAngle = CGPDFPageGetRotationAngle(a1);
  if (a4)
  {
    v25 = 0;
  }

  else
  {
    v25 = RotationAngle;
  }

  if (v25 != 90)
  {
    v26 = 0.0;
    if (v25 == 180)
    {
      v27 = xmmword_26CA65110;
      v28 = MaxY;
    }

    else
    {
      if (v25 == 270)
      {
        v27 = xmmword_26CA65130;
        v28 = -MinX;
        v26 = -1.0;
        MaxX = MaxY;
        goto LABEL_12;
      }

      MaxX = -MinX;
      v27 = xmmword_26CA65140;
      v28 = -MinY;
    }

    v31 = v22;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v27 = xmmword_26CA65120;
  v28 = MaxX;
  MaxX = -MinY;
  v26 = 1.0;
LABEL_12:
  v31 = v23;
  v23 = v22;
  if (a2)
  {
LABEL_16:
    *a2 = v27;
    *(a2 + 16) = v26;
    *(a2 + 24) = v27;
    *(a2 + 32) = MaxX;
    *(a2 + 40) = v28;
  }

LABEL_17:
  if (a3)
  {
    *a3 = v31;
    a3[1] = v23;
  }

  return v16;
}

__n128 TSDComputeDrawTransformForPDFPage@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>)
{
  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeTranslation(&v36, a3 * -0.5, a4 * -0.5);
  v16 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v16;
  *&t1.tx = a1[2];
  t2 = v36;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v17 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v17;
  a1[2] = *&v35.tx;
  v18 = a5;
  v17.n128_f64[0] = a6;
  v19 = a7;
  v20 = a8;
  tx = CGRectGetMinX(*(&v17 - 8));
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  Width = CGRectGetWidth(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  Height = CGRectGetHeight(v39);
  CGAffineTransformMakeScale(&v35, Width / a3, Height / a4);
  v36 = v35;
  v24 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v24;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v25 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v25;
  a1[2] = *&v35.tx;
  CGAffineTransformMakeTranslation(&v35, Width * 0.5, Height * 0.5);
  v36 = v35;
  v26 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v26;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v27 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v27;
  a1[2] = *&v35.tx;
  CGAffineTransformMakeTranslation(&v35, tx, MinY);
  v36 = v35;
  v28 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v28;
  *&t1.tx = a1[2];
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v29 = *&v35.c;
  *a1 = *&v35.a;
  a1[1] = v29;
  a1[2] = *&v35.tx;
  v30 = a1[1];
  *a2 = *a1;
  a2[1] = v30;
  result = a1[2];
  a2[2] = result;
  return result;
}

uint64_t TSDSetCGContextInfoForShadowContext(uint64_t a1, double a2)
{
  TSDSetCGContextInfo(a1, 0, 0, 0, 0, 1.0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TSDSetCGContextInfoForShadowContext_block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__TSUPointerKeyDictionary_8l;
  v5[4] = a1;
  *&v5[5] = a2;
  return TSDAccessCGContextInfoDictionaryWithBlock(1, 1, v5);
}

uint64_t __TSDSetCGContextInfoForShadowContext_block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  [a2 objectForKey:*(a1 + 32)];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDSetCGContextInfoForShadowContext(CGContextRef, CGFloat)_block_invoke"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 626, @"invalid nil value for '%s'", "dict"}];
  }

  v7 = *(a1 + 40);
  *&v7 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return [v4 setValue:v8 forKey:@"TSDCGContextInfoDictionaryKeyShadowedLayoutAngle"];
}

uint64_t TSDCGContextUpdateLayoutAngle(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextUpdateLayoutAngle_block_invoke;
  v3[3] = &__block_descriptor_48_e33_v16__0__TSUPointerKeyDictionary_8l;
  v3[4] = a1;
  *&v3[5] = a2;
  return TSDAccessCGContextInfoDictionaryWithBlock(1, 1, v3);
}

uint64_t __TSDCGContextUpdateLayoutAngle_block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  [a2 objectForKey:*(a1 + 32)];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDCGContextUpdateLayoutAngle(CGContextRef, CGFloat)_block_invoke"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 635, @"invalid nil value for '%s'", "dict"}];
  }

  v7 = *(a1 + 40);
  *&v7 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return [v4 setValue:v8 forKey:@"TSDCGContextInfoDictionaryKeyLayoutAngle"];
}

uint64_t TSDCGContextSetIsReflection(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextSetIsReflection_block_invoke;
  v3[3] = &__block_descriptor_41_e33_v16__0__TSUPointerKeyDictionary_8l;
  v3[4] = a1;
  v4 = a2;
  return TSDAccessCGContextInfoDictionaryWithBlock(1, 1, v3);
}

uint64_t __TSDCGContextSetIsReflection_block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  [a2 objectForKey:*(a1 + 32)];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDCGContextSetIsReflection(CGContextRef, BOOL)_block_invoke"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDUtility.m"), 644, @"invalid nil value for '%s'", "dict"}];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];

  return [v4 setValue:v7 forKey:@"TSDCGContextInfoDictionaryKeyIsReflection"];
}

uint64_t TSDCGContextSetBitmapQualityInfo(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextSetBitmapQualityInfo_block_invoke;
  v3[3] = &unk_279D48698;
  v3[4] = a2;
  v3[5] = a1;
  return TSDAccessCGContextInfoDictionaryWithBlock(1, 1, v3);
}

uint64_t __TSDCGContextSetBitmapQualityInfo_block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  [a2 objectForKey:*(a1 + 40)];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  }

  [v4 setValue:*(a1 + 32) forKey:@"TSDCGContextInfoDictionaryKeyBitmapQualityInfo"];
  v5 = *(a1 + 40);

  return [a2 setObject:v4 forKey:v5];
}

void TSDSetCGContextInfoWithTileOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7, double a8, double a9)
{
  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  v19 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  *&v22 = a7;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  if (a5)
  {
    v24 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a8, a9}];
  }

  else
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v25 = [v18 initWithObjectsAndKeys:{v19, @"TSDCGContextInfoDictionaryKeyIsPrintContext", v20, @"TSDCGContextInfoDictionaryKeyIsPDFContext", v21, @"TSDCGContextInfoDictionaryKeyIsCALayerContext", v23, @"TSDCGContextInfoDictionaryKeyAssociatedScreenScale", v24, @"TSDCGContextInfoDictionaryKeyTileOffset", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", a6), @"TSDCGContextInfoDictionaryKeyHasBackgroundsSuppressed", 0}];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __TSDSetCGContextInfoWithTileOffset_block_invoke;
  v26[3] = &unk_279D48698;
  v26[4] = v25;
  v26[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(1, 1, v26);
}

uint64_t __TSDSetCGContextInfoWithTileOffset_block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  [a2 objectForKey:*(a1 + 40)];
  v4 = TSUDynamicCast();
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = v4;
    [v4 addEntriesFromDictionary:v5];
    v5 = v6;
  }

  v7 = *(a1 + 40);

  return [a2 setObject:v5 forKey:v7];
}

__CFString *NSStringFromCGLineCap(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"invalid CGLineCap";
  }

  else
  {
    return off_279D48700[a1];
  }
}

__CFString *NSStringFromCGLineJoin(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"invalid CGLineJoin";
  }

  else
  {
    return off_279D48718[a1];
  }
}

double TSDCGContextGetShadowedLayoutAngle(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextGetShadowedLayoutAngle_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B91C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double __TSDCGContextGetShadowedLayoutAngle_block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyShadowedLayoutAngle", "floatValue"}];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDCGContextIsShadowContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextIsShadowContext_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B92D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextIsShadowContext_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyShadowedLayoutAngle"}];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t TSDCGContextGetIsReflection(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextGetIsReflection_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B93E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextGetIsReflection_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyIsReflection", "BOOLValue"}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDCGContextGetBitmapQualityInfo(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__11;
  v8 = __Block_byref_object_dispose__11;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextGetBitmapQualityInfo_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B9514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextGetBitmapQualityInfo_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyBitmapQualityInfo"}];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

double TSDCGContextGetLayoutAngle(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextGetLayoutAngle_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B9640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double __TSDCGContextGetLayoutAngle_block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyLayoutAngle", "floatValue"}];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDCGContextIsPrintContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextIsPrintContext_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B9750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextIsPrintContext_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyIsPrintContext", "BOOLValue"}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDCGContextHasBackgroundsSuppressed(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextHasBackgroundsSuppressed_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B985C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextHasBackgroundsSuppressed_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyHasBackgroundsSuppressed", "BOOLValue"}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDCGContextIsPDFContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextIsPDFContext_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B9968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextIsPDFContext_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyIsPDFContext", "BOOLValue"}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDCGContextIsCALayerContext(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextIsCALayerContext_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B9A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextIsCALayerContext_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyIsCALayerContext", "BOOLValue"}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double TSDCGContextAssociatedScreenScale(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __TSDCGContextAssociatedScreenScale_block_invoke;
  v4[3] = &unk_279D486E0;
  v4[4] = &v5;
  v4[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v4);
  v1 = v6[3];
  if (v1 == 0.0)
  {
    TSUScreenScale();
    v1 = v2;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_26C7B9B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double __TSDCGContextAssociatedScreenScale_block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyAssociatedScreenScale", "floatValue"}];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL TSDCGContextHasTileOffset(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = *MEMORY[0x277CBF348];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__11;
  v14 = __Block_byref_object_dispose__11;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __TSDCGContextHasTileOffset_block_invoke;
  v9[3] = &unk_279D486E0;
  v9[4] = &v10;
  v9[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v9);
  v3 = v11;
  if (a2)
  {
    v4 = v11[5];
    if (v4)
    {
      [v4 CGPointValue];
      *a2 = v5;
      *(a2 + 8) = v6;
      v3 = v11;
    }
  }

  v7 = v3[5] != 0;
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_26C7B9D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextHasTileOffset_block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  [objc_msgSend(a2 objectForKey:{*(a1 + 40)), "objectForKey:", @"TSDCGContextInfoDictionaryKeyTileOffset"}];
  result = TSUDynamicCast();
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t TSDCGContextPrefersRasterRendering(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __TSDCGContextPrefersRasterRendering_block_invoke;
  v3[3] = &unk_279D486E0;
  v3[4] = &v4;
  v3[5] = a1;
  TSDAccessCGContextInfoDictionaryWithBlock(0, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_26C7B9E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TSDCGContextPrefersRasterRendering_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{*(a1 + 40)), "objectForKeyedSubscript:", @"TSDCGContextInfoDictionaryKeyPrefersRasterRendering", "BOOLValue"}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TSDAccessCGContextInfoDictionaryWithBlock(uint64_t result, int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    if (TSDAccessCGContextInfoDictionaryWithBlock_onceToken != -1)
    {
      TSDAccessCGContextInfoDictionaryWithBlock_cold_1();
    }

    if (v5)
    {
      pthread_rwlock_wrlock(&TSDAccessCGContextInfoDictionaryWithBlock_rwlock);
      v6 = TSDAccessCGContextInfoDictionaryWithBlock_sTSDCGContextInfoMap;
      if (!TSDAccessCGContextInfoDictionaryWithBlock_sTSDCGContextInfoMap && a2)
      {
        v6 = objc_alloc_init(MEMORY[0x277D6C348]);
        TSDAccessCGContextInfoDictionaryWithBlock_sTSDCGContextInfoMap = v6;
      }
    }

    else
    {
      pthread_rwlock_rdlock(&TSDAccessCGContextInfoDictionaryWithBlock_rwlock);
      v6 = TSDAccessCGContextInfoDictionaryWithBlock_sTSDCGContextInfoMap;
    }

    if (v6)
    {
      (*(a3 + 16))(a3);
    }

    return pthread_rwlock_unlock(&TSDAccessCGContextInfoDictionaryWithBlock_rwlock);
  }

  return result;
}

CGFloat TSDTransformConvertingRectToRectAtPercent@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, double a9)
{
  v14 = TSDSubtractPoints(a5, a6, a2);
  v15 = a7 / a3;
  v16 = a8 / a4;
  v18 = TSDMultiplyPointScalar(v14, v17, a9);
  v20 = v19;
  v21 = TSDMixSizes(1.0, 1.0, v15, v16, a9);
  v23 = v22;
  v24 = MEMORY[0x277CBF2C0];
  v25 = *MEMORY[0x277CBF2C0];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v26;
  v27 = *(v24 + 32);
  *(a1 + 32) = v27;
  *&v32.a = v25;
  *&v32.c = v26;
  *&v32.tx = v27;
  CGAffineTransformTranslate(a1, &v32, v18, v20);
  v28 = *(a1 + 16);
  *&v31.a = *a1;
  *&v31.c = v28;
  *&v31.tx = *(a1 + 32);
  CGAffineTransformScale(&v32, &v31, v21, v23);
  v29 = *&v32.c;
  *a1 = *&v32.a;
  *(a1 + 16) = v29;
  result = v32.tx;
  *(a1 + 32) = *&v32.tx;
  return result;
}

CGPath *TSDCreatePathFromTransformedRect(const CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGPathAddRect(Mutable, a1, v12);
  return Mutable;
}

float64x2_t TSDTransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

CGAffineTransform *TSDAffineTransformShear@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  t1.a = 1.0;
  t1.b = a3;
  t1.c = a4;
  __asm { FMOV            V0.2D, #1.0 }

  *&t1.d = _Q0;
  t1.ty = 1.0;
  v9 = a1[1];
  *&v11.a = *a1;
  *&v11.c = v9;
  *&v11.tx = a1[2];
  return CGAffineTransformConcat(a2, &t1, &v11);
}

long double TSDTransformAngle(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2) * 57.2957795;
}

CGAffineTransform *TSDTransformNormalizeScale@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = 1.0 / sqrt(*(a1 + 8) * *(a1 + 8) + *a1 * *a1);
  v3 = 1.0 / sqrt(*(a1 + 24) * *(a1 + 24) + *(a1 + 16) * *(a1 + 16));
  v4 = *(a1 + 16);
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = *(a1 + 32);
  return CGAffineTransformScale(a2, &v6, v2, v3);
}

BOOL TSDIsTransformAxisAlignedWithObjectSize(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL TSDIsTransformAxisAlignedWithThreshold(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

BOOL TSDIsTransformAxisAligned(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *TSDAffineTransformForFlips@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = MEMORY[0x277CBF2C0];
  v14 = *MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v15;
  v16 = *(v13 + 32);
  *(a3 + 32) = v16;
  if (result)
  {
    v31 = v15;
    v32 = v14;
    v17 = a4;
    v18 = a5;
    v30 = v16;
    v19 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MaxX = CGRectGetMaxX(v35);
    *&v34.a = v32;
    *&v34.c = v31;
    *&v34.tx = v30;
    CGAffineTransformTranslate(a3, &v34, MinX + MaxX, 0.0);
    v22 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v22;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, -1.0, 1.0);
    v23 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v23;
    *(a3 + 32) = *&v34.tx;
  }

  if (a2)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    MaxY = CGRectGetMaxY(v37);
    v26 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v26;
    *&v33.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v34, &v33, 0.0, MinY + MaxY);
    v27 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v27;
    *(a3 + 32) = *&v34.tx;
    v28 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v28;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, 1.0, -1.0);
    v29 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v34.tx;
  }

  return result;
}

CGAffineTransform *TSDTransformFromTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *TSDTransformInTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v7 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v7;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&t1, &v9);
  return CGAffineTransformConcat(a3, &v11, &t1);
}

CGAffineTransform *TSDTransformConvertForNewOrigin@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *TSDTransformMakeFree@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v18 = TSDDistance(a3, a4, a5, a6);
  v38 = a7;
  v19 = TSDDistance(a7, a8, a9, a10);
  if (v18 < 0.0001 || v19 < 0.0001)
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    sx = v19 / v18;
    v20 = TSDSubtractPoints(a3, a4, a5);
    v22 = TSDAngleFromDelta(v20, v21);
    v23 = TSDSubtractPoints(a7, a8, a9);
    v25 = TSDAngleFromDelta(v23, v24);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v22);
    v26 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v26;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v27 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v27;
    *(a2 + 32) = *&v41.tx;
    v28 = 1.0;
    if (!a1)
    {
      v28 = sx;
    }

    CGAffineTransformMakeScale(&t2, sx, v28);
    v29 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v29;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v30 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v30;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeRotation(&t2, v25);
    v31 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v31;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v32 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v32;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, v38, a8);
    v33 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v33;
    *&t1.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v41, &t1, &t2);
    v35 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v35;
    *(a2 + 32) = *&v41.tx;
  }

  return result;
}

double TSD_CGAffineTransformDecompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CGFloat TSD_CGAffineTransformCompose@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

void TSDTransformMixAffineTransforms(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  TSD_CGAffineTransformDecompose(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  TSD_CGAffineTransformDecompose(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_26CA65230[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  TSD_CGAffineTransformCompose(&v18, a3);
}

double TSDOffsetForEdgeOfFrame(int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return CGRectGetMinY(*&a2);
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return CGRectGetMaxY(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidY(*&a2);
  }

  else
  {
    if (!a1)
    {
      return CGRectGetMinX(*&a2);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CGRectGetMaxX(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidX(*&a2);
  }
}

double TSDRectWithPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double TSDRectWithSizeAlignedToRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.size.height = a4;
  v17.size.width = a3;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  width = v18.size.width;
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  if (!CGRectIsNull(v18))
  {
    switch(a1)
    {
      case 3:
        v21.origin.x = a5;
        v21.origin.y = a6;
        v21.size.width = a7;
        v21.size.height = a8;
        x = CGRectGetMaxX(v21) - width;
        break;
      case 2:
        v20.origin.x = a5;
        v20.origin.y = a6;
        v20.size.width = a7;
        v20.size.height = a8;
        x = CGRectGetMidX(v20) + width * -0.5;
        break;
      case 1:
        v19.origin.x = a5;
        v19.origin.y = a6;
        v19.size.width = a7;
        v19.size.height = a8;
        x = CGRectGetMinX(v19);
        break;
    }

    switch(a2)
    {
      case 3:
        v24.origin.x = a5;
        v24.origin.y = a6;
        v24.size.width = a7;
        v24.size.height = a8;
        CGRectGetMaxY(v24);
        break;
      case 2:
        v23.origin.x = a5;
        v23.origin.y = a6;
        v23.size.width = a7;
        v23.size.height = a8;
        CGRectGetMidY(v23);
        break;
      case 1:
        v22.origin.x = a5;
        v22.origin.y = a6;
        v22.size.width = a7;
        v22.size.height = a8;
        CGRectGetMinY(v22);
        break;
    }
  }

  return x;
}

BOOL TSDNearlyEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (vabdd_f64(a1, a5) < 0.01 && vabdd_f64(a2, a6) < 0.01)
  {
    v9 = vabdd_f64(a3, a7) < 0.01;
    return vabdd_f64(a4, a8) < 0.01 && v9;
  }

  return result;
}

BOOL TSDNearlyContainsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL TSDRectsOverlapVertically(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxX(v24);
  if (MinX <= v16)
  {
    return MaxX >= v16;
  }

  else
  {
    return v18 >= MinX;
  }
}

BOOL TSDRectsOverlapHorizontally(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxY(v24);
  if (MinY <= v16)
  {
    return MaxY >= v16;
  }

  else
  {
    return v18 >= MinY;
  }
}

uint64_t TSDLineIntersectsRect(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a4;
  v13 = a3;
  while (1)
  {
    v16 = p_ComputeOutcode(a1, a2, a5, a6, a7, a8);
    v17 = p_ComputeOutcode(v13, v12, a5, a6, a7, a8);
    result = 1;
    if (!v16 || !v17)
    {
      break;
    }

    if ((v17 & v16) != 0)
    {
      return 0;
    }

    v19 = (v13 + a1) * 0.5;
    v20 = (v12 + a2) * 0.5;
    v21 = TSDLineIntersectsRect(1, a1, a2, v19, v20, a5, a6, a7, a8);
    a1 = v19;
    a2 = v20;
    v13 = a3;
    v12 = a4;
    if (v21)
    {
      return 1;
    }
  }

  return result;
}

uint64_t p_ComputeOutcode(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

double TSDSizeWithMaxArea(double result, double a2, double a3, double a4)
{
  if (result * a2 <= a3 * a4)
  {
    return a3;
  }

  return result;
}

double TSDUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x277CBF3A0];
  }

  return a5;
}

double TSDHorizontalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmax(MinX, CGRectGetMinX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmin(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmin(MaxY, CGRectGetMaxY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmax(MinY, CGRectGetMinY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

double TSDVerticalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmax(MinX, CGRectGetMinX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmax(MinY, CGRectGetMinY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmin(MaxY, CGRectGetMaxY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

BOOL TSDIntersectsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double TSDMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double TSDMultiplyRectBySize(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double TSDOrthogonalDistance(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a2 - a4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v4 + v5;
}

void TSDDistanceToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

void TSDDistanceToRectFromRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  if (MaxX >= CGRectGetMinX(v31))
  {
    v38.origin.x = a1;
    v38.origin.y = a2;
    v38.size.width = a3;
    v38.size.height = a4;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    v26 = CGRectGetMaxX(v39);
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    MaxY = CGRectGetMaxY(v40);
    v29 = a6;
    v41.origin.x = a5;
    v41.origin.y = a6;
    v41.size.width = a7;
    v41.size.height = a8;
    MinY = CGRectGetMinY(v41);
    if (MinX <= v26)
    {
      if (MaxY >= MinY)
      {
        v61.origin.x = a1;
        v61.origin.y = a2;
        v61.size.width = a3;
        v61.size.height = a4;
        v25 = CGRectGetMinY(v61);
        v62.origin.x = a5;
        v62.origin.y = a6;
        v62.size.width = a7;
        v62.size.height = a8;
        if (v25 <= CGRectGetMaxY(v62))
        {
          return;
        }

        v63.origin.x = a1;
        v63.origin.y = a2;
        v63.size.width = a3;
        v63.size.height = a4;
        CGRectGetMinY(v63);
        v20 = a5;
        v21 = a6;
        v22 = a7;
        v23 = a8;
      }

      else
      {
        v52.origin.x = a5;
        v52.origin.y = a6;
        v52.size.width = a7;
        v52.size.height = a8;
        CGRectGetMinY(v52);
        v20 = a1;
        v21 = a2;
        v22 = a3;
        v23 = a4;
      }

      CGRectGetMaxY(*&v20);
    }

    else if (MaxY >= MinY)
    {
      v53.origin.x = a1;
      v53.origin.y = a2;
      v53.size.width = a3;
      v53.size.height = a4;
      v27 = CGRectGetMinY(v53);
      v54.origin.x = a5;
      v54.origin.y = a6;
      v54.size.width = a7;
      v54.size.height = a8;
      v24 = CGRectGetMaxY(v54);
      v55.origin.x = a1;
      v55.origin.y = a2;
      v55.size.width = a3;
      v55.size.height = a4;
      CGRectGetMinX(v55);
      if (v27 > v24)
      {
        v56.origin.x = a1;
        v56.origin.y = a2;
        v56.size.width = a3;
        v56.size.height = a4;
        CGRectGetMinY(v56);
        v57.origin.x = a5;
        v57.origin.y = v29;
        v57.size.width = a7;
        v57.size.height = a8;
        CGRectGetMaxX(v57);
      }

      v58.origin.x = a5;
      v58.origin.y = v29;
      v58.size.width = a7;
      v58.size.height = a8;
      CGRectGetMaxY(v58);
    }

    else
    {
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      v42.size.height = a4;
      CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      CGRectGetMaxY(v43);
      v44.origin.x = a5;
      v44.origin.y = a6;
      v44.size.width = a7;
      v44.size.height = a8;
      CGRectGetMaxX(v44);
      v45.origin.x = a5;
      v45.origin.y = a6;
      v45.size.width = a7;
      v45.size.height = a8;
      CGRectGetMinY(v45);
    }
  }

  else
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    v16 = CGRectGetMaxY(v32);
    v33.origin.x = a5;
    v33.origin.y = a6;
    v33.size.width = a7;
    v33.size.height = a8;
    if (v16 >= CGRectGetMinY(v33))
    {
      v46.origin.x = a1;
      v46.origin.y = a2;
      v46.size.width = a3;
      v46.size.height = a4;
      v19 = CGRectGetMinY(v46);
      v47.origin.x = a5;
      v47.origin.y = a6;
      v47.size.width = a7;
      v47.size.height = a8;
      if (v19 <= CGRectGetMaxY(v47))
      {
        v59.origin.x = a5;
        v59.origin.y = a6;
        v59.size.width = a7;
        v59.size.height = a8;
        CGRectGetMinX(v59);
        v60.origin.x = a1;
        v60.origin.y = a2;
        v60.size.width = a3;
        v60.size.height = a4;
        CGRectGetMaxX(v60);
      }

      else
      {
        v48.origin.x = a1;
        v48.origin.y = a2;
        v48.size.width = a3;
        v48.size.height = a4;
        CGRectGetMaxX(v48);
        v49.origin.x = a1;
        v49.origin.y = a2;
        v49.size.width = a3;
        v49.size.height = a4;
        CGRectGetMinY(v49);
        v50.origin.x = a5;
        v50.origin.y = a6;
        v50.size.width = a7;
        v50.size.height = a8;
        CGRectGetMinX(v50);
        v51.origin.x = a5;
        v51.origin.y = a6;
        v51.size.width = a7;
        v51.size.height = a8;
        CGRectGetMaxY(v51);
      }
    }

    else
    {
      v34.origin.x = a1;
      v34.origin.y = a2;
      v34.size.width = a3;
      v34.size.height = a4;
      CGRectGetMaxX(v34);
      v35.origin.x = a1;
      v35.origin.y = a2;
      v35.size.width = a3;
      v35.size.height = a4;
      CGRectGetMaxY(v35);
      v36.origin.x = a5;
      v36.origin.y = a6;
      v36.size.width = a7;
      v36.size.height = a8;
      CGRectGetMinX(v36);
      v37.origin.x = a5;
      v37.origin.y = a6;
      v37.size.width = a7;
      v37.size.height = a8;
      CGRectGetMinY(v37);
    }
  }
}

double TSDCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double TSDRectGetMaxPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double TSDGrowRectToPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (CGRectIsNull(*&a1))
  {
    return a5;
  }

  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MinX = a5;
  if (CGRectGetMinX(v14) < a5)
  {
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    MinX = CGRectGetMinX(v15);
  }

  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  if (CGRectGetMaxX(v16) > a5)
  {
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    CGRectGetMaxX(v17);
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  if (CGRectGetMinY(v18) < a6)
  {
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetMinY(v19);
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (CGRectGetMaxY(v20) > a6)
  {
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    CGRectGetMaxY(v21);
  }

  return MinX;
}

double TSDFlipRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectGetMidY(*&a1);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMidY(v14);
  return a1;
}

double TSDCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL TSDRectIsFinite(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

void TSDRectDivide(CGRect *a1, CGRect *a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  memset(v8, 0, sizeof(v8));
  if (!a1)
  {
    a1 = v8;
  }

  if (!a2)
  {
    a2 = v8;
  }

  CGRectDivide(*&a4, a1, a2, a8, a3);
}

uint64_t TSDGetCanvasSpaceCorners(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 16);
  v47 = *a1;
  v48 = v18;
  v49 = *(a1 + 32);
  TSDTransformedCornersOfRect(&v47, &v50, &v52, &v53, v54, a6, a7, a8, a9);
  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = a6;
  v56.origin.y = a7;
  v56.size.width = a8;
  v56.size.height = a9;
  MidY = CGRectGetMidY(v56);
  v21 = 0;
  v22 = 0;
  v23 = MidY * *(a1 + 16) + *a1 * MidX;
  v24 = 1000000.0;
  v25 = MidY * *(a1 + 24) + *(a1 + 8) * MidX;
  v26 = *(a1 + 32) + v23;
  v27 = *(a1 + 40) + v25;
  v28 = &v51;
  do
  {
    v29 = atan2(*v28 - v27, *(v28 - 1) - v26);
    v30 = fmod(v29 * 57.2957795, 360.0);
    if (v30 < 0.0)
    {
      v30 = v30 + 360.0;
    }

    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    v31 = fabs(360.0 - v30 + -135.0);
    if (v31 < v24)
    {
      v21 = v22;
      v24 = v31;
    }

    ++v22;
    v28 += 2;
  }

  while (v22 != 4);
  *a2 = *(&v50 + v21);
  v32 = (v21 + 2) & 3;
  if (v21 + 2 <= 0)
  {
    v32 = -(-(v21 + 2) & 3);
  }

  *a4 = *(&v50 + v32);
  v33 = *(a1 + 16);
  v47 = *a1;
  v48 = v33;
  v49 = *(a1 + 32);
  v34 = TSDIsTransformFlipped(v47.f64);
  v35 = v21 + 3;
  if (v34)
  {
    v36 = v21 + 1;
  }

  else
  {
    v36 = v21 + 3;
  }

  v37 = v36 & 3;
  if (!v34)
  {
    v35 = v21 + 1;
  }

  v39 = -v36;
  v38 = v39 < 0;
  v40 = v39 & 3;
  if (v38)
  {
    v41 = v37;
  }

  else
  {
    v41 = -v40;
  }

  *a5 = *(&v50 + v41);
  v42 = v35 & 3;
  v43 = -v35;
  v38 = v43 < 0;
  v44 = v43 & 3;
  if (v38)
  {
    v45 = v42;
  }

  else
  {
    v45 = -v44;
  }

  *a3 = *(&v50 + v45);
  return v21;
}

void TSDMixAnglesInDegrees(long double a1, long double a2, double a3)
{
  v5 = fmod(a1, 360.0);
  if (v5 < 0.0)
  {
    v5 = v5 + 360.0;
  }

  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = fmod(a2, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, v6) > 180.0)
  {
    if (v6 <= v7)
    {
      v7 = v7 + -360.0;
    }

    else
    {
      v7 = v7 + 360.0;
    }
  }

  fmod(v7 * a3 + v6 * (1.0 - a3), 360.0);
}