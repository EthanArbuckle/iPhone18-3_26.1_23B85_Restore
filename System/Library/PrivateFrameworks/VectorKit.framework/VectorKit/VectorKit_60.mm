void sub_1B2BC3548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelPart::children(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelAnimator::createFadeAnimation(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, float *a6)
{
  *a6 = a3;
  v9 = (a1 + 24);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((a1 + 24), 0x8E38E38E38E38E39 * ((*(a1 + 32) - *(a1 + 24)) >> 4) + 1);
  *(a2 + 563) = 57 * ((v9[2] - *v9) >> 4) - 1;
  if (*(a5 + 4))
  {
    md::LabelAnimator::createTrack(a1);
  }

  if (*(a5 + 20))
  {
    md::LabelAnimator::createTrack(a1);
  }
}

void std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize(char **a1, unint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = 0x8E38E38E38E38E39 * (v6 >> 4);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
    if (a2 < v7)
    {
      v40 = &v5[144 * a2];
      while (v4 != v40)
      {
        v42 = *(v4 - 18);
        v4 -= 144;
        v41 = v42;
        if (v42 != *(v4 + 2))
        {
          free(v41);
        }
      }

      a1[1] = v40;
    }
  }

  else
  {
    v9 = a1[2];
    if (0x8E38E38E38E38E39 * ((v9 - v4) >> 4) >= v8)
    {
      v43 = &v4[144 * v8];
      v44 = 144 * a2 - 16 * (v6 >> 4);
      v45 = v4 + 68;
      do
      {
        *(v45 - 4) = 0uLL;
        *(v45 + 12) = 0uLL;
        *(v45 + 28) = 0uLL;
        *(v45 + 44) = 0uLL;
        *(v45 + 60) = 0uLL;
        *(v45 - 20) = 0uLL;
        *(v45 - 36) = 0uLL;
        *(v45 - 68) = v45 - 36;
        *(v45 - 60) = v45 - 36;
        *(v45 - 52) = v45 - 36;
        *(v45 - 44) = 1;
        *v45 = 1065353216;
        *(v45 + 4) = 1065353216;
        *(v45 + 20) = 0;
        *(v45 + 36) = 0;
        *(v45 + 28) = 0;
        *(v45 + 22) = 0;
        *(v45 + 52) = 0;
        *(v45 + 60) = 0;
        *(v45 + 17) = 0;
        v45 += 144;
        v44 -= 144;
      }

      while (v44);
      a1[1] = v43;
    }

    else
    {
      if (a2 > 0x1C71C71C71C71C7)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = 0x1C71C71C71C71C72 * ((v9 - v5) >> 4);
      if (v10 <= a2)
      {
        v10 = a2;
      }

      if (0x8E38E38E38E38E39 * ((v9 - v5) >> 4) >= 0xE38E38E38E38E3)
      {
        v11 = 0x1C71C71C71C71C7;
      }

      else
      {
        v11 = v10;
      }

      v12 = mdm::zone_mallocator::instance(a1);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 144 * v11, 0x10200408BCFA3C9uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
      v17 = &v15[v6];
      v18 = 144 * a2 - v4;
      v19 = &v4[v15];
      do
      {
        v20 = (v19 - v5);
        *(v20 + 5) = 0uLL;
        *(v20 + 6) = 0uLL;
        *(v20 + 7) = 0uLL;
        *(v20 + 8) = 0uLL;
        *(v20 + 3) = 0uLL;
        *(v20 + 4) = 0uLL;
        *(v19 - v5 + 32) = 0uLL;
        v21 = v19 - v5 + 32;
        *v20 = v21;
        *(v20 + 1) = v21;
        *(v20 + 2) = v21;
        *(v20 + 3) = 1;
        *(v20 + 17) = 1065353216;
        *(v20 + 21) = 1065353216;
        *(v20 + 12) = 0;
        *(v20 + 13) = 0;
        *(v20 + 11) = 0;
        *(v20 + 56) = 0;
        *(v20 + 15) = 0;
        *(v20 + 16) = 0;
        v18 -= 144;
        v19 += 144;
        *(v20 + 34) = 0;
      }

      while (-v5 != v18);
      *&v22 = &v15[144 * a2];
      *(&v22 + 1) = &v15[144 * v11];
      v46 = v22;
      v24 = *a1;
      v23 = a1[1];
      v25 = &v17[*a1 - v23];
      if (v23 != *a1)
      {
        v26 = *a1;
        v27 = v25;
        do
        {
          v28 = v27 + 32;
          *v27 = v27 + 32;
          *(v27 + 1) = v27 + 32;
          *(v27 + 2) = v27 + 32;
          v29 = *(v26 + 2);
          *(v27 + 3) = *(v26 + 3);
          v30 = *v26;
          if (*v26 == v29)
          {
            *(v27 + 1) = &v28[*(v26 + 1) - v30];
            v36 = *(v26 + 1);
            while (v30 != v36)
            {
              v37 = *v30;
              *(v28 + 2) = *(v30 + 2);
              *v28 = v37;
              v28 += 24;
              v30 = (v30 + 24);
            }
          }

          else
          {
            v31 = *(v26 + 1);
            *v27 = v30;
            *(v27 + 1) = v31;
            *v26 = 0uLL;
            *(v26 + 1) = 0uLL;
          }

          v32 = *(v26 + 56);
          *(v27 + 72) = *(v26 + 72);
          *(v27 + 56) = v32;
          v33 = *(v26 + 88);
          v34 = *(v26 + 104);
          v35 = *(v26 + 120);
          *(v27 + 34) = *(v26 + 34);
          *(v27 + 120) = v35;
          *(v27 + 104) = v34;
          *(v27 + 88) = v33;
          v26 += 144;
          v27 += 144;
        }

        while (v26 != v23);
        do
        {
          v16 = *v24;
          if (*v24 != *(v24 + 2))
          {
            free(v16);
          }

          v24 += 144;
        }

        while (v24 != v23);
      }

      v38 = *a1;
      *a1 = v25;
      *(a1 + 1) = v46;
      if (v38)
      {
        v39 = mdm::zone_mallocator::instance(v16);

        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimation>(v39, v38);
      }
    }
  }
}

__int128 *md::LabelAnimator::resolveParams(void *a1, int a2, unsigned int a3, int a4, int a5)
{
  v5 = 72;
  if (a2 == 1)
  {
    v5 = 4;
  }

  v6 = (&animationParams + 140 * a3 + v5);
  if (*(*a1 + 3696) == 1)
  {
    v11 = +[VKDebugSettings sharedSettings];
    if ([v11 tuneForwardLabelAnimation] == a4 && a5 == objc_msgSend(v11, "labelAnimationTuningElement"))
    {
      v12 = v6[3];
      xmmword_1EB845D90 = v6[2];
      *&dword_1EB845DA0 = v12;
      dword_1EB845DB0 = *(v6 + 16);
      v13 = v6[1];
      debugAnimationParams = *v6;
      *&dword_1EB845D80 = v13;
      +[VKDebugSettings sharedSettings];
      if (a2 == 1)
        v14 = {;
        v15 = [v14 showLabelAnimationParams];
      }

      else
        v14 = {;
        v15 = [v14 hideLabelAnimationParams];
      }

      v16 = v15;

      v17 = atomic_load((a1[1] + 1330));
      if (v17)
      {
        *(v16 + 16) = BYTE4(debugAnimationParams);
        *v16 = *(&debugAnimationParams + 1);
        *(v16 + 8) = dword_1EB845D80;
        *(v16 + 40) = byte_1EB845D84;
        *(v16 + 24) = qword_1EB845D88;
        *(v16 + 32) = xmmword_1EB845D90;
        *(v16 + 64) = BYTE4(xmmword_1EB845D90);
        *(v16 + 48) = *(&xmmword_1EB845D90 + 1);
        *(v16 + 56) = dword_1EB845DA0;
        *(v16 + 88) = byte_1EB845DA4;
        *(v16 + 72) = qword_1EB845DA8;
        *(v16 + 80) = dword_1EB845DB0;
      }

      else
      {
        if (BYTE4(debugAnimationParams))
        {
          if (*(v16 + 16))
          {
            BYTE4(debugAnimationParams) = *(v16 + 16);
          }

          *(&debugAnimationParams + 1) = *v16;
          dword_1EB845D80 = *(v16 + 8);
        }

        if (byte_1EB845D84)
        {
          if (*(v16 + 40))
          {
            byte_1EB845D84 = *(v16 + 40);
          }

          qword_1EB845D88 = *(v16 + 24);
          LODWORD(xmmword_1EB845D90) = *(v16 + 32);
        }

        if (BYTE4(xmmword_1EB845D90))
        {
          if (*(v16 + 64))
          {
            BYTE4(xmmword_1EB845D90) = *(v16 + 64);
          }

          *(&xmmword_1EB845D90 + 1) = *(v16 + 48);
          dword_1EB845DA0 = *(v16 + 56);
        }

        if (byte_1EB845DA4)
        {
          if (*(v16 + 88))
          {
            byte_1EB845DA4 = *(v16 + 88);
          }

          qword_1EB845DA8 = *(v16 + 72);
          dword_1EB845DB0 = *(v16 + 80);
        }
      }

      v6 = &debugAnimationParams;
    }
  }

  return v6;
}

void md::LabelAnimationTrack::addItem(mdm::zone_mallocator *a1, unsigned int a2, char a3, float a4, float a5)
{
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  if (v10 >= v11)
  {
    v14 = (v10 - *a1) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v11 - *a1;
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

    if (v17)
    {
      v18 = mdm::zone_mallocator::instance(a1);
      v19 = pthread_rwlock_rdlock((v18 + 32));
      if (v19)
      {
        geo::read_write_lock::logFailure(v19, "read lock", v20);
      }

      v21 = malloc_type_zone_malloc(*v18, 32 * v17, 0x1080040DADD50E3uLL);
      atomic_fetch_add((v18 + 24), 1u);
      geo::read_write_lock::unlock((v18 + 32));
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[32 * v14];
    v23 = &v21[32 * v17];
    *v22 = a4;
    v22[1] = fmaxf(a5, 0.000001);
    *(v22 + 1) = 0;
    *(v22 + 16) = a3;
    v24 = EaseConstantOne;
    if (a2 <= 0x13)
    {
      v24 = easingFunctions[a2];
    }

    *(v22 + 3) = v24;
    v13 = (v22 + 8);
    v25 = *(a1 + 1) - *a1;
    v26 = v22 - v25;
    v27 = memcpy(v22 - v25, *a1, v25);
    v28 = *a1;
    *a1 = v26;
    *(a1 + 1) = v13;
    *(a1 + 2) = v23;
    if (v28)
    {
      v29 = mdm::zone_mallocator::instance(v27);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimationItem>(v29, v28);
    }
  }

  else
  {
    *v10 = a4;
    *(v10 + 4) = fmaxf(a5, 0.000001);
    *(v10 + 8) = 0;
    *(v10 + 16) = a3;
    v12 = EaseConstantOne;
    if (a2 <= 0x13)
    {
      v12 = easingFunctions[a2];
    }

    *(v10 + 24) = v12;
    v13 = (v10 + 32);
    *(a1 + 1) = v10 + 32;
  }

  *(a1 + 1) = v13;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v5)
    {
      std::vector<md::LabelAnimationItem,geo::allocator_adapter<md::LabelAnimationItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v4);
      a1 = MEMORY[0x1B8C62190](v4, 0x1020C4094DC1443);
      v2 = *(v1 + 2);
    }
  }

  v6 = *v1;
  if (*v1)
  {
    v7 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelAnimationTrack>>(v7, v6);
  }

  return v1;
}

void md::LabelAnimator::runAnimations(md::LabelAnimator *this, __n128 a2)
{
  if ((*(this + 88) & 1) == 0)
  {
    if (*(this + 90) == 1)
    {
      if (a2.n128_f32[0] < 100.0 && *(*(*(this + 1) + 1272) + 52) != 2)
      {
        return;
      }

      *(this + 90) = 0;
    }

    *(this + 5) = *(this + 5) + a2.n128_f32[0];
    v3 = *(this + 7);
    v4 = *(this + 8);
    if (v3 == v4)
    {
      goto LABEL_24;
    }

    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = *(*v3 + 40);
      if ((v7 & 1) == 0)
      {
        v9 = *v6;
        v8 = v6[1];
        if (*v6 == v8)
        {
          v7 = 0;
        }

        else
        {
          v10 = *(this + 5);
          v11 = *(v6 + 8);
          v12 = (v8 - v9) >> 5;
          if (v12 <= v11)
          {
LABEL_14:
            if (*(v6 + 41) == 1)
            {
              a2.n128_f32[0] = fmodf(*(this + 5), *(v8 - 28) + *(v8 - 32));
              LODWORD(v11) = 0;
              a2.n128_f32[0] = v10 - a2.n128_f32[0];
              *(v6 + 9) = a2.n128_u32[0];
              *(v6 + 8) = 0;
            }

            else
            {
              LODWORD(v11) = ((v8 - v9) >> 5) - 1;
              *(v6 + 8) = v11;
              *(v6 + 40) = 1;
              a2.n128_u32[0] = *(v6 + 9);
            }
          }

          else
          {
            a2.n128_u32[0] = *(v6 + 9);
            while ((*(v9 + 32 * v11 + 4) + *(v9 + 32 * v11)) <= (v10 - a2.n128_f32[0]))
            {
              v11 = (v11 + 1);
              if (v12 <= v11)
              {
                goto LABEL_14;
              }
            }

            *(v6 + 8) = v11;
          }

          v13 = v9 + 32 * v11;
          a2.n128_f32[0] = fminf(fmaxf(v10 - (a2.n128_f32[0] + *v13), 0.0), *(v13 + 4)) / *(v13 + 4);
          *(v13 + 12) = a2.n128_u32[0];
          if (!*(v13 + 16))
          {
            a2.n128_f32[0] = 1.0 - a2.n128_f32[0];
          }

          *(v13 + 8) = (*(v13 + 24))(a2);
          v7 = *(*v3 + 40);
        }
      }

      v5 |= v7 ^ 1;
      ++v3;
    }

    while (v3 != v4);
    if ((v5 & 1) == 0)
    {
LABEL_24:
      *(this + 88) = 1;
    }
  }
}

uint64_t md::CrossFadeLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(***(a1 + 576) + 88))(**(a1 + 576)))
  {
    v10 = (*(***(a1 + 576) + 120))(**(a1 + 576), a2, a3, a4, a5);
  }

  else
  {
    v10 = 32;
  }

  *(a1 + 636) = v10;
  if ((*(**(*(a1 + 576) + 8) + 88))(*(*(a1 + 576) + 8)))
  {
    LODWORD(result) = (*(**(*(a1 + 576) + 8) + 120))(*(*(a1 + 576) + 8), a2, a3, a4, a5);
  }

  else
  {
    LODWORD(result) = 32;
  }

  *(a1 + 637) = result;
  if (*(a1 + 636) == 37)
  {
    return 37;
  }

  else
  {
    return result;
  }
}

float md::LabelAnimation::alpha(md::LabelAnimation *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return fmaxf(fminf(*(this + 20) + (*(*v1 + 32 * *(v1 + 32) + 8) * (*(this + 21) - *(this + 20))), 1.0), 0.0);
  }

  else
  {
    return *(this + 21);
  }
}

uint64_t md::Label::updateReserveSpaceCollisionItem(md::Label *this)
{
  *(this + 1335) = 0;
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 43);
  *(this + 43) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 1336) = 0;
  *(this + 1365) = 1;
  v4 = 0;
  if (*(this + 187) != *(this + 186))
  {
    result = *(this + 36);
    if (result)
    {
      result = (*(*result + 512))(result, &v4);
      if (result)
      {
        if (v4 != 1)
        {
          operator new();
        }

        *(this + 1336) = v4;
      }
    }
  }

  return result;
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::Label> const&>(std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

uint64_t md::CompositeLabelPart::resolveForDisplay(uint64_t this)
{
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 96))(v3);
  }

  return this;
}

void md::Label::setupHideAnimation(md::Label *this)
{
  v2 = *(this + 159);
  if (v2 && (*(v2 + 52) & 0xFD) == 1 && ((v3 = *(v2 + 8), v3 == 2) || v3 == 4 && !*(this + 1289)))
  {
    md::LabelValueAnimation::setHideAnimation(this + 1200, 0, 3, 0, 0.4);
    if (*(this + 1157))
    {
      goto LABEL_8;
    }

    v8 = 1;
  }

  else
  {
    if (*(this + 1157))
    {
      md::LabelValueAnimation::setHideAnimation(this + 1200, 1, 1, 0, 0.0);
LABEL_8:
      v4 = this + 1232;
      v5 = 0.0;
      v6 = 1;
      v7 = 0;
      goto LABEL_21;
    }

    v8 = 0;
  }

  v9 = *(this + 136);
  v10 = 0.4;
  if (v9 && *(v9 + 12) != 0.0)
  {
    v10 = *(v9 + 12);
  }

  if ((v8 & 1) == 0)
  {
    md::LabelValueAnimation::setHideAnimation(this + 1200, 0, 3, 0, v10);
  }

  if (v9)
  {
    v11 = *(this + 136);
    v12 = *(v11 + 20);
    v7 = v12 == 0.0;
    if (v12 != 0.0)
    {
      v10 = *(v11 + 20);
    }

    v6 = *(v11 + 25);
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v4 = this + 1232;
  v5 = v10;
LABEL_21:
  md::LabelValueAnimation::setHideAnimation(v4, v6, 1, v7, v5);
  *(this + 301) = (*(this + 153))(*(this + 300));
  *(this + 309) = (*(this + 157))(*(this + 308));
}

void md::Label::setupShowAnimation(md::Label *this)
{
  v11 = 0;
  v2 = *(this + 159);
  if (v2)
  {
    if ((v2[52] & 0xFD) == 1)
    {
      v3 = v2[8];
      if ((v3 - 2) < 3)
      {
        md::LabelValueAnimation::setShowAnimation(this + 1200, 0, 3, 0, 0.4);
        v2 = &v11 + 1;
LABEL_7:
        *v2 = 1;
        LOBYTE(v2) = HIBYTE(v11);
        goto LABEL_9;
      }

      if (v3 == 1)
      {
        md::LabelValueAnimation::setShowAnimation(this + 1200, 0, 3, 0, 0.4);
        HIBYTE(v11) = 1;
        md::LabelValueAnimation::setShowAnimation(this + 1232, 0, 4, 0, 0.5);
        v2 = &v11;
        goto LABEL_7;
      }
    }

    LOBYTE(v2) = 0;
  }

LABEL_9:
  if (*(this + 1157) == 1)
  {
    if ((v2 & 1) == 0)
    {
      md::LabelValueAnimation::setShowAnimation(this + 1200, 1, 1, 0, 0.0);
    }

    if ((v11 & 1) == 0)
    {
      md::LabelValueAnimation::setShowAnimation(this + 1232, 1, 1, 0, 0.0);
    }

    LOBYTE(v11) = 1;
  }

  else if ((v2 & 1) == 0 || (v11 & 1) == 0)
  {
    v4 = *(this + 136);
    v5 = 0.4;
    if (v4 && *(v4 + 8) != 0.0)
    {
      v5 = *(v4 + 8);
    }

    if ((v2 & 1) == 0)
    {
      md::LabelValueAnimation::setShowAnimation(this + 1200, 0, 3, 0, v5);
    }

    if ((v11 & 1) == 0)
    {
      v6 = v5 * 1.25;
      if (v4)
      {
        v7 = *(this + 136);
        v8 = *(v7 + 16);
        v9 = v8 == 0.0;
        if (v8 != 0.0)
        {
          v6 = *(v7 + 16);
        }

        v10 = *(v7 + 24);
      }

      else
      {
        v10 = 0;
        v9 = 1;
      }

      md::LabelValueAnimation::setShowAnimation(this + 1232, v10, 1, v9, v6);
    }
  }

  *(this + 301) = (*(this + 152))(*(this + 300));
  *(this + 309) = (*(this + 156))(*(this + 308));
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A17250;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 224);
  free(*(a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 168);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  ggl::RenderItem::~RenderItem((a1 + 16));
  return a1;
}

void *md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9E08;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void ggl::DaVinciTraffic::BaseMesh::~BaseMesh(ggl::DaVinciTraffic::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficLayer::~DaVinciTrafficLayer(md::DaVinciTrafficLayer *this)
{
  *this = &unk_1F29E9DE8;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E9DE8;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(this);
}

void md::DaVinciTrafficTileData::~DaVinciTrafficTileData(md::DaVinciTrafficTileData *this)
{
  *this = &unk_1F2A1EAF8;
  *(this + 80) = &unk_1F2A1EB38;
  v6 = (this + 808);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 776));
  v2 = *(this + 96);
  *(this + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 95);
  *(this + 95) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 94);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 92);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapTileData::~MapTileData(this);
}

{
  md::DaVinciTrafficTileData::~DaVinciTrafficTileData(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficBatch::~DaVinciTrafficBatch(md::DaVinciTrafficBatch *this)
{
  *this = &unk_1F2A17150;
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A17230;
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A17150;
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A17230;
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(this);
}

void ggl::DaVinciTraffic::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileData::~MapTileData(md::MapTileData *this)
{
  *this = &unk_1F2A2F4B8;
  *(this + 80) = &unk_1F2A2F4F8;
  v2 = *(this + 86);
  if (v2)
  {
    v3 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40FDD25D6FLL);
    *(this + 86) = 0;
  }

  v4 = *(this + 83);
  if (v4)
  {
    *(this + 84) = v4;
    operator delete(v4);
  }

  v5 = *(this + 82);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = &unk_1F2A60328;
  v6 = *(this + 4);
  if (v6 != *(this + 6))
  {
    free(v6);
  }
}

{
  md::MapTileData::~MapTileData(this);

  JUMPOUT(0x1B8C62190);
}

void md::TrafficDynamicTileResource::~TrafficDynamicTileResource(md::TrafficDynamicTileResource *this)
{
  v4 = (this + 200);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 160);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 1);
  if (v3 != *(this + 3))
  {
    free(v3);
  }
}

md::TrafficDynamicTileResource *std::__shared_ptr_pointer<md::TrafficDynamicTileResource *,std::shared_ptr<md::TrafficDynamicTileResource>::__shared_ptr_default_delete<md::TrafficDynamicTileResource,md::TrafficDynamicTileResource>,std::allocator<md::TrafficDynamicTileResource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::TrafficDynamicTileResource::~TrafficDynamicTileResource(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t md::CrossFadeLabelPart::pushToRenderModel(uint64_t result, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  v4 = result;
  v5 = *(result + 636);
  v6 = v5 > 0x25;
  v7 = (1 << v5) & 0x20000C0000;
  if (!v6 && v7 != 0)
  {
    result = (*(***(result + 576) + 128))(**(result + 576), a2, a3.n128_f32[0] - (*(result + 632) * a3.n128_f32[0]));
  }

  if (*(v4 + 637) == 37)
  {
    a3.n128_f32[0] = *(v4 + 632) * v3;
    v9 = *(**(*(v4 + 576) + 8) + 128);

    return v9(a3);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<zilch::TrafficDynamicTile *,std::shared_ptr<zilch::TrafficDynamicTile>::__shared_ptr_default_delete<zilch::TrafficDynamicTile,zilch::TrafficDynamicTile>,std::allocator<zilch::TrafficDynamicTile>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MEMORY[0x1B8C618C0]();

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::AnimatedCrossFadeLabelPart::animate(md::AnimatedCrossFadeLabelPart *this, float a2)
{
  v4 = *(this + 158) + (a2 * 2.5);
  *(this + 158) = v4;
  if (v4 >= 1.0)
  {
    *(this + 158) = 1065353216;
    *(this + 737) = 0;
    if (*(this + 738) == 1)
    {
      md::AnimatedCrossFadeLabelPart::emitEndSignpost(this);
    }
  }

  (*(**(*(this + 72) + 8) + 624))(*(*(this + 72) + 8), a2);
  v5.n128_f32[0] = a2;

  md::LabelAnimator::runAnimations((this + 640), v5);
}

uint64_t md::AnimatedCrossFadeLabelPart::isCrossFading(md::AnimatedCrossFadeLabelPart *this)
{
  if (*(this + 737))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 728) ^ 1;
  }

  return v1 & 1;
}

void sub_1B2BC560C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKLabelNavJunction;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2BC5730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKLabelNavRoad;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<double,2,1>>(v2, v1);
  }
}

void md::NavRoadSign::~NavRoadSign(md::NavRoadSign *this)
{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__shared_ptr_pointer<md::NavRoadSign *,std::shared_ptr<md::NavLabel>::__shared_ptr_default_delete<md::NavLabel,md::NavRoadSign>,std::allocator<md::NavRoadSign>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void md::NavLabel::~NavLabel(md::NavLabel *this)
{
  *this = &unk_1F2A3DE30;
  if (*(this + 20))
  {
    v2 = *(this + 22);
    if (v2)
    {
      std::mutex::lock((v2 + 24));
      v3 = *(v2 + 8);
      v4 = *(v2 + 16);
      if (v3 >= v4)
      {
        v7 = (v3 - *v2) >> 4;
        v8 = v7 + 1;
        if ((v7 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v9 = v4 - *v2;
        if (v9 >> 3 > v8)
        {
          v8 = v9 >> 3;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (!(v10 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v11 = 16 * v7;
        v12 = *(this + 10);
        *(16 * v7) = v12;
        if (*(&v12 + 1))
        {
          atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v6 = (v11 + 16);
        v13 = *(v2 + 8) - *v2;
        v14 = v11 - v13;
        memcpy((v11 - v13), *v2, v13);
        v15 = *v2;
        *v2 = v14;
        *(v2 + 8) = v6;
        *(v2 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        v5 = *(this + 21);
        *v3 = *(this + 20);
        v3[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v6 = v3 + 2;
      }

      *(v2 + 8) = v6;
      std::mutex::unlock((v2 + 24));
    }
  }

  if (*(this + 26) == 1)
  {
    v16 = *(this + 1);
    if (v16)
    {
      *(v16 + 285) = 1;
    }
  }

  v17 = *(this + 38);
  *(this + 38) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 25);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(this + 23);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(this + 21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = *(this + 11);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(this + 9);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (*(this + 55) < 0)
  {
    v23 = *(this + 4);
    v24 = mdm::zone_mallocator::instance(v22);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
  }

  v25 = *(this + 2);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2BC5B58(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 24));
  v4 = *(v1 + 304);
  *(v1 + 304) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 200);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 184);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 168);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 88);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 72);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (*(v1 + 55) < 0)
  {
    v10 = *(v1 + 32);
    v11 = mdm::zone_mallocator::instance(v9);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
  }

  v12 = *(v1 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void md::IconLabelPart::~IconLabelPart(md::IconLabelPart *this)
{
  *this = &unk_1F2A5A040;
  v2 = *(this + 100);
  *(this + 100) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 99);
  *(this + 99) = 0;
  if (v3)
  {
    v3 = MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  if (*(this + 679) < 0)
  {
    v4 = *(this + 82);
    v5 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(this + 81);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::NavRoadSignLabelPart::~NavRoadSignLabelPart(md::NavRoadSignLabelPart *this)
{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::LabelIcon::~LabelIcon(md::LabelIcon *this)
{
  *this = &unk_1F2A43D38;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  v6 = *(this + 5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *(this + 1) = &unk_1F2A43EB8;
}

{
  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(void *a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  if (!a1 || (a3 >= 0x17 ? (v7 = 23) : (v7 = a3), v8 = *a1 + 120 * *(a1 + v7 + 16), geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v8, a2) == *(v8 + 12)))
  {
    if (a4)
    {
      *a4 = 0;
    }

    gss::defaultValueForKey<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>();
    return &gss::defaultValueForKey<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::ScenePropertyID)::_defaultValue;
  }

  else
  {
    v9 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 72), a2);
    if (v9 == *(v8 + 84))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 72) + *(v8 + 80) + 8 * v9);
    }
  }
}

void md::RoadSignLabelIcon::~RoadSignLabelIcon(md::RoadSignLabelIcon *this)
{
  *this = &unk_1F2A43DF8;
  *(this + 19) = &unk_1F2A43ED8;

  md::LabelIcon::~LabelIcon(this);
}

{
  *this = &unk_1F2A43DF8;
  *(this + 19) = &unk_1F2A43ED8;

  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::LabelManager::LabelManager(gdc::WorldType,md::LabelManagerCreationParams const&)::$_1,std::allocator<md::LabelManager::LabelManager(gdc::WorldType,md::LabelManagerCreationParams const&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v2 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LabelsAnimationFired", &unk_1B3514CAA, v6, 2u);
  }

  v3 = atomic_load((v1 + 3053));
  if (v3)
  {
    v4 = *(v1 + 136);
    if (v4)
    {
      v5 = *(v4 + 56);
      if (v5)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v5, v1, 9);
      }
    }
  }
}

void std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(uint64_t a1)
{
  *(a1 + 48) = &unk_1F29F1180;

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a1 + 24));
  v2 = *a1;
}

void sub_1B2BC61F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKRoadSignArtwork;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void md::LabelMapTile::deactivateLabels(md::LabelMapTile *this, int a2)
{
  if (*(this + 133) == 1)
  {
    *(this + 133) = 0;
    v4 = *(this + 52);
    v5 = this + 424;
    if (v4 != this + 424)
    {
      do
      {
        v6 = *(v4 + 4);
        if (atomic_fetch_add((v6 + 1384), 0xFFu) == 1)
        {
          if (*(v6 + 1352) == 1)
          {
            *(v6 + 1349) = 1;
            *(v6 + 1312) = 0;
          }

          else
          {
            md::Label::updateStateMachineForStaging(v6, 1, 37);
          }
        }

        v7 = *(v4 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v4 + 2);
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v5);
    }
  }

  if (a2 == 1)
  {

    md::LabelMapTile::broadcastLabelDeactivate(this);
  }
}

uint64_t md::CompositeLabelPart::markInactive(uint64_t this)
{
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 160))(v3);
  }

  return this;
}

void std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPlacement>(v2, v1);
  }
}

void md::CaptionedIconLabelPart::~CaptionedIconLabelPart(md::CaptionedIconLabelPart *this)
{
  md::CaptionedIconLabelPart::~CaptionedIconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A5B868;
  v2 = *(this + 114);
  *(this + 114) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 113);
  *(this + 113) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  v4 = *(this + 112);
  *(this + 112) = 0;
  if (v4)
  {
    MEMORY[0x1B8C62190](v4, 0x1000C40AE2C30F4);
  }

  v5 = *(this + 111);
  *(this + 111) = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x1000C40AE2C30F4);
  }

  std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 800));
  if (*(this + 759) < 0)
  {
    v7 = *(this + 92);
    v8 = mdm::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v8, v7);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

void md::PointIconLabelPart::~PointIconLabelPart(md::PointIconLabelPart *this)
{
  *this = &unk_1F2A596C8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A596C8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::CompositeLabelPart::~CompositeLabelPart(md::CompositeLabelPart *this)
{
  *this = &unk_1F2A5ADF0;
  if (*(this + 628) == 1)
  {
    v2 = *(this + 72);
    v3 = *(this + 73);
    while (v2 != v3)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 576));
  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void md::HorizontalTextLabelPart::~HorizontalTextLabelPart(md::HorizontalTextLabelPart *this)
{
  *this = &unk_1F2A4DA38;
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 1088));
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 976));
  md::TextLabelPart::~TextLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A4DA38;
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 1088));
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 976));

  md::TextLabelPart::~TextLabelPart(this);
}

void std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::HorizontalTextLabelPart::LineInfo>(v2, v1);
  }
}

void md::TextLabelPart::~TextLabelPart(md::TextLabelPart *this)
{
  *this = &unk_1F2A4DDE0;
  v2 = *(this + 119);
  if (v2)
  {
    *(this + 120) = v2;
    operator delete(v2);
  }

  v3 = *(this + 112);
  if (v3)
  {
    *(this + 113) = v3;
    operator delete(v3);
  }

  v4 = *(this + 108);
  *(this + 108) = 0;
  if (v4)
  {
    MEMORY[0x1B8C62190](v4, 0x1000C40AE2C30F4);
  }

  v5 = *(this + 107);
  *(this + 107) = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x1000C40AE2C30F4);
  }

  v6 = *(this + 92);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 77);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 75);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 73);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

{
  md::TextLabelPart::~TextLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::LabelText::~LabelText(md::LabelText *this)
{
  *this = &unk_1F29E5388;
  v2 = this + 128;
  std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 160));
  v5 = v2;
  std::vector<md::TextGlyph,geo::allocator_adapter<md::TextGlyph,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 64));
  v5 = this + 32;
  std::vector<md::TextGlyph,geo::allocator_adapter<md::TextGlyph,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

{
  md::LabelText::~LabelText(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::TextGlyph,geo::allocator_adapter<md::TextGlyph,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 40;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextGlyph>(v6, v4);
  }
}

void std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextQuad>(v2, v1);
  }
}

void md::LabelMapTile::broadcastLabelDeactivate(md::LabelMapTile *this)
{
  if (*(this + 139) == 1)
  {
    *(this + 139) = 0;
    if (*(this + 44) != *(this + 45))
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 44);
      *(this + 136) = 1;
    }

    v2 = std::remove_if[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::LabelMapTileCommand> *>,md::LabelMapTile::removeCommand(md::LabelMapTileCommandType)::$_0>(*(this + 48), *(this + 49), 4u);
    std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::erase(this + 48, v2, *(this + 49));
    v3 = *(this + 18);
    if (v3)
    {
      std::mutex::lock(*(this + 18));
      sig = v3[1].__m_.__sig;
      if (sig)
      {
        (*(*sig + 8))(sig, this);
      }

      std::mutex::unlock(v3);
    }
  }
}

void md::LabelCustomFeatureSupport::removeTile(md::LabelCustomFeatureSupport *this, md::LabelMapTile *a2)
{
  v4 = *(this + 13);
  v3 = *(this + 14);
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        goto LABEL_13;
      }
    }

    if (v4 != v3)
    {
      v5 = v4 + 1;
      if (v4 + 1 != v3)
      {
        do
        {
          if (*v5 != a2)
          {
            *v4++ = *v5;
          }

          ++v5;
        }

        while (v5 != v3);
        v3 = *(this + 14);
      }
    }
  }

  if (v4 != v3)
  {
    *(this + 14) = v4;
  }

LABEL_13:
  v6 = *(this + 9);
  v7 = (this + 80);
  if (v6 != (this + 80))
  {
    do
    {
      v8 = std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::find<geo::QuadTile>((v6 + 13), a2 + 8);
      if (v6 + 14 != v8)
      {
        v9 = v8;
        v11 = *(v8 + 128);
        v10 = *(v8 + 136);
        v12 = (v8 + 128);
        v13 = v11;
        if (v11 != v10)
        {
          while (*v13 != a2)
          {
            if (++v13 == v10)
            {
              goto LABEL_27;
            }
          }

          if (v13 != v10)
          {
            v14 = v13 + 1;
            if (v13 + 1 != v10)
            {
              do
              {
                if (*v14 != a2)
                {
                  *v13++ = *v14;
                }

                ++v14;
              }

              while (v14 != v10);
              v11 = *(v8 + 128);
              v10 = *(v8 + 136);
            }
          }
        }

        if (v13 != v10)
        {
          v10 = v13;
          *(v8 + 136) = v13;
        }

LABEL_27:
        if (v11 == v10)
        {
          md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(v6 + 5, *(v8 + 168), 0);
          sig = *(v9 + 8);
          if (sig)
          {
            do
            {
              v16 = sig;
              sig = sig->__m_.__sig;
            }

            while (sig);
          }

          else
          {
            p_sig = v9;
            do
            {
              v16 = p_sig[2];
              v18 = v16->__m_.__sig == p_sig;
              p_sig = &v16->__m_.__sig;
            }

            while (!v18);
          }

          if (v6[13] == v9)
          {
            v6[13] = v16;
          }

          v6[16] = (v6[16] - 1);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(&v6[14]->__m_.__sig, v9);
          *(v9 + 160) = &unk_1F2A436C8;

          std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v12);
          v20 = mdm::zone_mallocator::instance(v19);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,void *>>(v20, v9);
        }
      }

      v21 = v6[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = v21->__m_.__sig;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v6[2];
          v18 = *v22 == v6;
          v6 = v22;
        }

        while (!v18);
      }

      v6 = v22;
    }

    while (v22 != v7);
  }
}

uint64_t std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::find<geo::QuadTile>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 1);
  v6 = v2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 8);
  do
  {
    v9 = *(v3 + 33);
    if (v9 == v5)
    {
      v10 = *(v3 + 40);
      v11 = v10 < v8;
      if (v10 == v8)
      {
        v11 = *(v3 + 36) < v7;
      }

      v12 = v11;
    }

    else
    {
      v12 = v9 < v5;
    }

    v13 = !v12;
    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v6 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v2 == v6)
  {
    return v2;
  }

  v15 = *(v6 + 33);
  if (v5 != v15)
  {
    if (v5 >= v15)
    {
      return v6;
    }

    return v2;
  }

  v16 = *(v6 + 40);
  v17 = v8 < v16;
  if (v8 == v16)
  {
    v17 = v7 < *(v6 + 36);
  }

  if (v17)
  {
    return v2;
  }

  return v6;
}

void md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(std::mutex **this, NSArray *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a2;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    v8 = (this + 26);
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = v10;
        v12 = *v8;
        if (*v8)
        {
          v13 = (this + 26);
          do
          {
            v14 = *(v12 + 4);
            v15 = v14 >= v10;
            v16 = v14 < v10;
            if (v15)
            {
              v13 = v12;
            }

            v12 = *&v12[8 * v16];
          }

          while (v12);
          if (v13 != v8 && v10 >= v13[4])
          {
            v17 = *(v13 + 15);
            if (a3)
            {
              *(v13 + 15) = --v17;
            }

            v18 = *(v13 + 14) - 1;
            *(v13 + 14) = v18;
            if (v18 == v17)
            {
              v19 = v13[5];
              v19[145] = 0;
              v20 = v19[142];
              v18 = v17;
              if (v20 == 1)
              {
                md::LabelManager::clearPreviouslySelectedLabelMarker(this[1]);
                v18 = *(v13 + 14);
              }
            }

            if (!v18)
            {
              (*(*v13[5] + 88))(v13[5]);
              std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::erase((this + 25), v13);
            }
          }
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }
}

void md::Label::setActive(int32x2_t *this, int a2, md::LabelPool *a3)
{
  if (this[167].u8[5] != a2)
  {
    this[167].i8[5] = a2;
    if ((a2 & 1) == 0)
    {
      md::Label::clearStagingParts(this);
      v4 = this[3];
      if (v4)
      {
        md::LabelDedupingGroup::removeLabel(v4, this);
        this[3] = 0;
      }

      this[106].i8[7] = 0;
      this[59] = vdup_n_s32(0xC2C80000);
      if (this[60].i8[3] == 1)
      {
        *(*&this[57] + 285) = 1;
        this[60].i8[3] = 0;
      }

      v5 = this[58];
      this[57] = 0;
      this[58] = 0;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      this[168].i8[7] = 0;
    }
  }
}

uint64_t md::Label::clearStagingParts(uint64_t this)
{
  if ((*(this + 1339) & 1) == 0)
  {
    v1 = this;
    *(this + 1371) = 0;
    *(this + 1338) = 0;
    *(this + 1373) = 0;
    v2 = *(this + 264);
    *(v1 + 264) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(v1 + 272);
    *(v1 + 272) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = *(v1 + 304);
    *(v1 + 304) = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    if (*(v1 + 288))
    {
      *(v1 + 288) = 0;
      *(v1 + 1335) = 1;
    }
  }

  return this;
}

void md::WorldSpaceLabelPart::~WorldSpaceLabelPart(md::WorldSpaceLabelPart *this)
{
  *this = &unk_1F29E8E38;
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F29E8E38;
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

void RouteAnnotationIconLabelPart::~RouteAnnotationIconLabelPart(RouteAnnotationIconLabelPart *this)
{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void *md::LabelCoreStyleGroup::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, float a6, float a7)
{
  if (a6 >= 0x17)
  {
    v14 = 23;
  }

  else
  {
    v14 = a6;
  }

  if (a5)
  {
    *(a1 + 107) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  v15 = *(a3 + 20 * a4);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 193, v14, 1u, 0);
  v16 = v15 * a7;
  v18 = (v15 * a7) * v17;
  *(a1 + 32) = v18;
  v19 = *(*a2 + 24);
  if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v19, 0x172u, v14))
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v19, 370, v14, 1u, 0);
    v18 = fminf(v16 * v20, *(a1 + 32));
    v19 = *(*a2 + 24);
  }

  *(a1 + 36) = v18;
  v21 = fminf(fmaxf(a6, 0.0), 23.0);
  v22 = *(v19 + 12);
  if (v22 != 2)
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 94, *(v19 + 12), 0, v21);
    *(a1 + 12) = v23;
LABEL_10:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 234, v22, 0, v21);
    *(a1 + 8) = v24 * a7;
LABEL_11:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 329, v22, 0, v21);
    *(a1 + 60) = v25 * a7;
LABEL_12:
    result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 345, v22, 0, v21);
    v28 = v27;
    goto LABEL_13;
  }

  LOBYTE(v63) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 94, 0, &v63, v21);
  v57 = v56;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 94, 1, &v65, v21);
  v22 = *(v19 + 12);
  *(a1 + 12) = v57;
  if (v22 != 2)
  {
    goto LABEL_10;
  }

  LOBYTE(v63) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 234, 0, &v63, v21);
  v59 = v58;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 234, 1, &v65, v21);
  v22 = *(v19 + 12);
  *(a1 + 8) = v59 * a7;
  if (v22 != 2)
  {
    goto LABEL_11;
  }

  LOBYTE(v63) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 329, 0, &v63, v21);
  v61 = v60;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 329, 1, &v65, v21);
  v22 = *(v19 + 12);
  *(a1 + 60) = v61 * a7;
  if (v22 != 2)
  {
    goto LABEL_12;
  }

  LOBYTE(v63) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 345, 0, &v63, v21);
  v28 = v62;
  result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 345, 1, &v65, v21);
LABEL_13:
  *(a1 + 56) = fmaxf(v28, 0.01);
  if (a5)
  {
    *a1 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v19, 91, v14, 1u, 0);
    *(a1 + 101) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 123, v14, 1, 0);
    *(a1 + 1) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 314, v14, 1u, 0);
    *(a1 + 16) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 104, v14, 1, 0);
    v29 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(*(*a2 + 24), 132, v14, 1, 0);
    v30 = v29;
    if (v29 <= -3)
    {
      v30 = -3;
    }

    if (v30 >= 7)
    {
      LOBYTE(v30) = 7;
    }

    if ((v29 - 8) >= 0xF5u)
    {
      LOBYTE(v30) = v29;
    }

    *(a1 + 100) = v30;
    v31 = *(*a2 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v31, 0xD6u, v14))
    {
      LOBYTE(v32) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v31, 214, v14, 1u, 0);
    }

    else
    {
      v33 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v31, 170, v14, 1, 0);
      if (v33 > 0xBu)
      {
        LOBYTE(v32) = 0;
      }

      else
      {
        v32 = 0xFFEu >> (v33 & 0xF);
      }
    }

    *(a1 + 2) = v32 & 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 347, v14, 1u, 0);
    *(a1 + 64) = v34;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 348, v14, 1u, 0);
    *(a1 + 68) = v35;
    v36 = *(*a2 + 24);
    *(a1 + 5) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v36, 393, v14, 0);
    *(a1 + 20) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v36, 235, v14, 1, 0);
    v37 = *(*a2 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v37, 0xEDu, v14))
    {
      v38 = 237;
    }

    else
    {
      v38 = 132;
    }

    v39 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v37, v38, v14, 1, 0);
    v40 = v39;
    if (v39 <= -3)
    {
      v40 = -3;
    }

    if (v40 >= 7)
    {
      LOBYTE(v40) = 7;
    }

    if ((v39 - 8) >= 0xF5u)
    {
      LOBYTE(v40) = v39;
    }

    *(a1 + 120) = v40;
    *(a1 + 121) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 236, v14, 1, 0);
    v41 = *(*a2 + 24);
    v42 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v41, 469, v14, 0);
    if (v42 >= 0x1F)
    {
      v43 = 31;
    }

    else
    {
      v43 = v42;
    }

    *(a1 + 122) = v43;
    *(a1 + 116) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v41, 470, v14, 1, 0);
    *(a1 + 40) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 157, v14, 1, 0);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 158, v14, 1u, 0);
    *(a1 + 44) = v44;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 435, v14, 1u, 0);
    *(a1 + 48) = v45;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 447, v14, 1u, 0);
    *(a1 + 52) = v46;
    *(a1 + 110) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 169, v14, 1, 0);
    *(a1 + 111) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 223, v14, 1, 0);
    *(a1 + 102) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 315, v14, 1, 0);
    v47 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 224, v14, 1, 0);
    *(a1 + 104) = gss::MaskToLabelPosition(v47);
    *(a1 + 106) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 225, v14, 1, 0);
    *(a1 + 108) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 167, v14, 1, 0);
    *(a1 + 109) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 168, v14, 1, 0);
    *(a1 + 3) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 272, v14, 1u, 0);
    *(a1 + 112) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 334, v14, 1, 0);
    *(a1 + 113) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 343, v14, 1, 0);
    *(a1 + 103) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 353, v14, 1, 0);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 355, v14, 1u, 0);
    *(a1 + 72) = v48;
    LOBYTE(v63) = 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 357, v14, 1u, &v63);
    if (!v63)
    {
      v49 = 3.4028e38;
    }

    *(a1 + 76) = v49;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 436, v14, 1u, 0);
    *(a1 + 80) = v50;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 446, v14, 1u, 0);
    *(a1 + 84) = v51;
    LOBYTE(v63) = 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 449, v14, 1u, &v63);
    if (!v63)
    {
      v52 = 0.0;
    }

    *(a1 + 88) = v52;
    LOBYTE(v63) = 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 450, v14, 1u, &v63);
    if (!v63)
    {
      v53 = 180.0;
    }

    *(a1 + 92) = v53;
    *(a1 + 4) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 210, v14, 1, 0);
    v64 = 0;
    v63 = 0;
    md::FontSizeInfo::update(&v63, a2, a3, a4, 0, a6);
    *(a1 + 96) = HIDWORD(v63);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 350, v14, 1u, 0);
    *(a1 + 24) = v54;
    *(a1 + 4) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 210, v14, 1, 0);
    result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v65, *(*a2 + 24), 438, v14, 1u, 0);
    v55 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v65)), vdupq_n_s32(0x3B7F00FFu))));
    *(a1 + 28) = vuzp1_s8(v55, v55).u32[0];
  }

  return result;
}

uint64_t md::LabelDedupingGroup::removeLabel(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        goto LABEL_13;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = a1[2];
      }
    }
  }

  if (v3 != v2)
  {
    a1[2] = v3;
  }

LABEL_13:
  v5 = *(*a1 + 48);

  return v5(a1, a2);
}

void md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(uint64_t a1, uint64_t a2, __int16 a3)
{
  *(a2 + 8) = *(a1 + 104);
  if (*a1)
  {
    v5 = md::LabelStyle::styleQueryForComponent(a1, a3, 0);
    v6 = *v5;
    if (*v5)
    {
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v8, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (v11 == 1)
      {
        md::LabelTextStyleGroup::update(*a2, &v8, *(a1 + 16), *(a1 + 93), 0, *(a1 + 104), *(a1 + 88));
        if (v11)
        {
          (*(*v8 + 56))(v8);
        }
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }
  }
}

void sub_1B2BC7D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *md::LabelStyle::styleQueryForComponent(unsigned __int8 **a1, __int16 a2, __int16 a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LOBYTE(v18) = a2;
  BYTE1(v18) = a3;
  v6 = geo::linear_map<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::equal_to<md::LabelStyle::StyleQueryOptions>,std::allocator<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::vector<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::operator[](a1 + 8, &v18);
  if (!*v6)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v18, (*a1 + 240));
    v7 = v18;
    if (v18 != v19)
    {
      while (*v7 != 65612)
      {
        v7 += 2;
        if (v7 == v19)
        {
          goto LABEL_7;
        }
      }
    }

    if (v7 == v19)
    {
LABEL_7:
      LODWORD(v17[0]) = 65612;
      WORD2(v17[0]) = a2;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::push_back[abi:nn200100](&v18, v17);
    }

    LODWORD(v17[0]) = 65594;
    WORD2(v17[0]) = a3;
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::push_back[abi:nn200100](&v18, v17);
    v8 = *a1;
    v9 = *(*a1 + 2);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v8 + 1);
        if (v12)
        {
          std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v17, &v18);
          gss::FeatureAttributeSet::sort(v17[0], v17[1]);
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v16, v12, v17, (*a1 + 272));
          v13 = v16;
          v16 = 0uLL;
          v14 = *(v6 + 1);
          *v6 = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
            if (*(&v16 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v16 + 1));
            }
          }

          std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v17);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v18);
  }

  return v6;
}

void sub_1B2BC7F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

int *md::FontSizeInfo::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, float a6)
{
  v11 = a6;
  if (a6 >= 0x17)
  {
    v12 = 23;
  }

  else
  {
    v12 = a6;
  }

  v13 = *(*a2 + 24);
  if (a5 && gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(*(*a2 + 24), 0xBFu, v12))
  {
    v14 = fminf(fmaxf(a6, 0.0), 23.0);
    v15 = *(v13 + 12);
    if (v15 != 2)
    {
      v16 = v13;
      v17 = 191;
LABEL_17:
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, v17, v15, 0, v14);
      v24 = v26;
      hasTargetValueForKeyAtZ = 1;
      goto LABEL_19;
    }

    hasTargetValueForKeyAtZ = 1;
    v45 = 1;
    v36 = v14;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 191, 0, &v45, v14);
    v24 = v41;
    v38 = &v44;
    v39 = v13;
    v40 = 191;
LABEL_30:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, v40, 1, v38, v36);
    goto LABEL_19;
  }

  if ((gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 9u, v12) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 0x64u, v12) & 1) == 0)
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13, 9, v12, 1u, 0);
    v24 = v25;
    v13 = *(*a2 + 24);
    if (!gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 0xAu, v12))
    {
      hasTargetValueForKeyAtZ = 0;
      goto LABEL_19;
    }

    v14 = fminf(fmaxf(a6, 0.0), 23.0);
    v15 = *(v13 + 12);
    if (v15 != 2)
    {
      v16 = v13;
      v17 = 9;
      goto LABEL_17;
    }

    hasTargetValueForKeyAtZ = 1;
    v47 = 1;
    v36 = v14;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 9, 0, &v47, v14);
    v24 = v37;
    v38 = &v46;
    v39 = v13;
    v40 = 9;
    goto LABEL_30;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13, 100, v12, 1u, 0);
  v19 = v18;
  v13 = *(*a2 + 24);
  hasTargetValueForKeyAtZ = gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 0x65u, v12);
  if (hasTargetValueForKeyAtZ)
  {
    v21 = fminf(fmaxf(a6, 0.0), 23.0);
    v22 = *(v13 + 12);
    if (v22 == 2)
    {
      v49 = 1;
      v42 = v21;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 100, 0, &v49, v21);
      v19 = v43;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 100, 1, &v48, v42);
    }

    else
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 100, v22, 0, v21);
      v19 = v23;
    }
  }

  v24 = v19 * 1.3;
LABEL_19:
  v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v13, 328, v12, 1, 0);
  *(a1 + 10) = v27 == 1;
  if (v27 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = a4;
  }

  *(a1 + 9) = v28;
  v29 = 20 * v28;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 478, v12, 1u, 0);
  *(a1 + 4) = fminf(v30, *(a3 + v29)) * v24;
  *(a1 + 8) = hasTargetValueForKeyAtZ;
  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 119, v12, 1u, 0);
  v33 = v32;
  if (hasTargetValueForKeyAtZ)
  {
    if (v11 >= 0x16)
    {
      v34 = 22;
    }

    else
    {
      v34 = v11;
    }

    result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 119, v34 + 1, 1u, 0);
    v33 = v33 + ((v35 - v33) * (a6 - v12));
  }

  *a1 = v33;
  return result;
}

void md::LabelTextStyleGroup::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, float a6, float a7)
{
  if (a6 >= 0x17)
  {
    v13 = 23;
  }

  else
  {
    v13 = a6;
  }

  if (a5)
  {
    *(a1 + 52) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 100) = 1099956224;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v46 = 0;
  v47 = 256;
  v48 = 0;
  md::FontSizeInfo::update(&v46, a2, a3, a4, *(a1 + 68), a6);
  *(a1 + 113) = v48;
  *(a1 + 96) = vmul_n_f32(v46, a7);
  if (a5)
  {
    *(a1 + 109) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 111, v13, 1u, 0);
    *(a1 + 110) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 397, v13, 1u, 0);
    *(a1 + 111) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 398, v13, 1u, 0);
    *(a1 + 108) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 110, v13, 1u, 0);
    *(a1 + 112) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 117, v13, 1u, 0);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v49, *(*a2 + 24), 0x72u, v13, 1);
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 72) = v49;
    v14 = HIBYTE(v47);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 109, v13, 1u, 0);
    *(a1 + 104) = (v15 * a7) * *(a3 + 20 * v14 + 4);
  }

  v16 = *(*a2 + 24);
  v17 = fminf(fmaxf(a6, 0.0), 23.0);
  v18 = *(v16 + 12);
  if (v18 == 2)
  {
    v49.__r_.__value_.__s.__data_[0] = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 324, 0, &v49, v17);
    v41 = v40;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 324, 1, &v45, v17);
    v19 = v41;
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*a2 + 24), 324, v18, 0, v17);
  }

  *(a1 + 44) = v19;
  if (a5)
  {
    *(a1 + 64) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v16, 213, v13, 1, 0);
    if (*(a1 + 68) == 1)
    {
      v20 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 287, v13, 1, 0);
      if (v20)
      {
        *(a1 + 64) = v20;
      }
    }

    v21 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a3 + 120), *(*(a3 + 120) + 8));
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v45, *(*a2 + 24), 115, v13, 1u, 0);
    v43 = vdupq_n_s32(0x37800080u);
    *&v49.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45.f32)), v43);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 482, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v45, *v21, &v49, v22);
    v42 = vdupq_n_s32(0x437F0000u);
    v23 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, v42)));
    *(a1 + 8) = vuzp1_s8(v23, v23).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v45, *(*a2 + 24), 116, v13, 1u, 0);
    *&v49.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45.f32)), v43);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 483, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v45, *v21, &v49, v24);
    v25 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, v42)));
    *(a1 + 12) = vuzp1_s8(v25, v25).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v45, *(*a2 + 24), 349, v13, 1u, 0);
    *&v49.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45.f32)), v43);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 484, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v45, *v21, &v49, v26);
    v27 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, v42)));
    *(a1 + 16) = vuzp1_s8(v27, v27).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v45, *(*a2 + 24), 351, v13, 1u, 0);
    *&v49.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45.f32)), v43);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 485, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v45, *v21, &v49, v28);
    v29 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, v42)));
    *(a1 + 20) = vuzp1_s8(v29, v29).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 482, v13, 1u, 0);
    *(a1 + 52) = v30;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 439, v13, 1u, 0);
    *(a1 + 28) = v31;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 350, v13, 1u, 0);
    *(a1 + 32) = v32;
    v33 = *(*a2 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v33, 0x1B8u, v13))
    {
      v34 = 440;
    }

    else
    {
      v34 = 352;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v33, v34, v13, 1u, 0);
    *(a1 + 36) = v35;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 363, v13, 1u, 0);
    *(a1 + 40) = v36;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v49, *(*a2 + 24), 147, v13, 1u, 0);
    v37 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v49.__r_.__value_.__l.__data_)), vdupq_n_s32(0x3B7F00FFu))));
    *(a1 + 24) = vuzp1_s8(v37, v37).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 307, v13, 1u, 0);
    *(a1 + 48) = v38 * a7;
    *(a1 + 56) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(*(*a2 + 24), v13, 1).f32[0] * a7;
    *(a1 + 60) = v39 * a7;
  }
}

void std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>((v1 + 2));
      v4 = gss::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>(gss::zone_mallocator *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a1);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](gss::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    v3 = a2[10];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a2 + 6));
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a2 + 2));
  }

  else if (!a2)
  {
    return;
  }

  v4 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>>(v4, a2);
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>>(mdm::zone_mallocator *a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    *(a1 + 5) = 0;
    v6 = *(a1 + 3);
    *(a1 + 3) = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v10 = v2[2];
        v9 = v2[3];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v6[3];
        v6[2] = v10;
        v6[3] = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v8 = *v6;
        std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(v8);
  }

  for (; v2; v2 = *v2)
  {
    v12 = mdm::zone_mallocator::instance(a1);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v12);
    *v13 = 0;
    v13[1] = 0;
    v14 = v2[2];
    v15 = v2[3];
    v13[2] = v14;
    v13[3] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v14 = v13[2];
    }

    v16 = HIDWORD(v14);
    v17 = 0x9DDFEA08EB382D69 * ((8 * (v14 & 0x1FFFFFFF) + 8) ^ HIDWORD(v14));
    v13[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__node_insert_multi(a1, v13);
  }
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__node_insert_multi(unint64_t prime, void *a2)
{
  v3 = prime;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(prime + 8);
  v7 = (*(prime + 40) + 1);
  v8 = *(prime + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (*&v12 == 1)
    {
      v12 = 2;
    }

    else if ((*&v12 & (*&v12 - 1)) != 0)
    {
      prime = std::__next_prime(*&v12);
      v12 = prime;
      v6 = *(v3 + 8);
    }

    if (*&v12 <= v6)
    {
      if (*&v12 >= v6)
      {
        goto LABEL_40;
      }

      prime = vcvtps_u32_f32(*(v3 + 40) / *(v3 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v20 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v20;
        }
      }

      if (*&v12 <= prime)
      {
        v12 = prime;
      }

      if (*&v12 >= v6)
      {
        v6 = *(v3 + 8);
        goto LABEL_40;
      }

      if (!*&v12)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(v3, 0);
        v6 = 0;
        *(v3 + 8) = 0;
        goto LABEL_40;
      }
    }

    v13 = mdm::zone_mallocator::instance(prime);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v13, *&v12);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(v3, v14);
    v15 = 0;
    *(v3 + 8) = v12;
    do
    {
      *(*v3 + 8 * v15++) = 0;
    }

    while (*&v12 != v15);
    v16 = *(v3 + 24);
    if (v16)
    {
      v17 = v16[1];
      v18 = vcnt_s8(v12);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      *(*v3 + 8 * v17) = v3 + 24;
      for (i = *v16; *v16; i = *v16)
      {
        v22 = i[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v12)
          {
            v22 %= *&v12;
          }
        }

        else
        {
          v22 &= *&v12 - 1;
        }

        if (v22 == v17)
        {
          v16 = i;
        }

        else
        {
          v23 = *v3;
          v24 = i;
          if (*(*v3 + 8 * v22))
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24 && i[2] == v24[2]);
            *v16 = v24;
            *v25 = **(v23 + 8 * v22);
            **(v23 + 8 * v22) = i;
          }

          else
          {
            *(v23 + 8 * v22) = v16;
            v16 = i;
            v17 = v22;
          }
        }
      }
    }

    v6 = v12;
  }

LABEL_40:
  v26 = vcnt_s8(v6);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v5;
    if (v6 <= v5)
    {
      v27 = v5 % v6;
    }
  }

  else
  {
    v27 = (v6 - 1) & v5;
  }

  v28 = *v3;
  v29 = *(*v3 + 8 * v27);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = v29;
      v29 = *v29;
      if (!v29)
      {
        break;
      }

      v32 = v29[1];
      if (v26.u32[0] > 1uLL)
      {
        v33 = v29[1];
        if (v32 >= v6)
        {
          v33 = v32 % v6;
        }
      }

      else
      {
        v33 = v32 & (v6 - 1);
      }

      if (v33 != v27)
      {
        break;
      }

      v34 = v32 == v5 && v29[2] == a2[2];
      v35 = v34 != (v30 & 1);
      v36 = v30 & v35;
      v30 |= v35;
    }

    while (v36 != 1);
  }

  else
  {
    v31 = 0;
  }

  v37 = a2[1];
  if (v26.u32[0] > 1uLL)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }
  }

  else
  {
    v37 &= v6 - 1;
  }

  if (!v31)
  {
    *a2 = *(v3 + 24);
    *(v3 + 24) = a2;
    *(v28 + 8 * v37) = v3 + 24;
    if (!*a2)
    {
      goto LABEL_76;
    }

    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

LABEL_75:
    *(*v3 + 8 * v38) = a2;
    goto LABEL_76;
  }

  *a2 = *v31;
  *v31 = a2;
  if (*a2)
  {
    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

    if (v38 != v37)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
  ++*(v3 + 40);
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(float *a1, unint64_t a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v14);
  *v15 = 0;
  v15[1] = v8;
  v16 = a3[1];
  v15[2] = *a3;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(a1, v22);
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *v15 = *v24;
LABEL_40:
    *v24 = v15;
    goto LABEL_41;
  }

  *v15 = *(a1 + 3);
  *(a1 + 3) = v15;
  *(v23 + 8 * v3) = a1 + 6;
  if (*v15)
  {
    v25 = *(*v15 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
}

uint64_t std::unordered_set<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::unordered_set(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 17) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 24); i; i = *i)
  {
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(a1, i[2], i + 2);
  }

  return a1;
}

void sub_1B2BC9304(_Unwind_Exception *a1)
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(*(v1 + 3));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *__destroy_helper_block_ea8_32c147_ZTSNSt3__113unordered_setINS_10shared_ptrIN2md9LabelTileEEENS_4hashIS4_EENS_8equal_toIS4_EEN3geo17allocator_adapterIS4_N3mdm15zone_mallocatorEEEEE(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 56));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((a1 + 32));
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *>>(mdm::zone_mallocator *a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    *(a1 + 5) = 0;
    v6 = *(a1 + 3);
    *(a1 + 3) = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v10 = v2[2];
        v9 = v2[3];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v6[3];
        v6[2] = v10;
        v6[3] = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v8 = *v6;
        std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(v8);
  }

  for (; v2; v2 = *v2)
  {
    v12 = mdm::zone_mallocator::instance(a1);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v12);
    *v13 = 0;
    v13[1] = 0;
    v14 = v2[2];
    v15 = v2[3];
    v13[2] = v14;
    v13[3] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v14 = v13[2];
    }

    v16 = HIDWORD(v14);
    v17 = 0x9DDFEA08EB382D69 * ((8 * (v14 & 0x1FFFFFFF) + 8) ^ HIDWORD(v14));
    v13[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__node_insert_multi(a1, v13);
  }
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__node_insert_multi(unint64_t prime, void *a2)
{
  v3 = prime;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(prime + 8);
  v7 = (*(prime + 40) + 1);
  v8 = *(prime + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (*&v12 == 1)
    {
      v12 = 2;
    }

    else if ((*&v12 & (*&v12 - 1)) != 0)
    {
      prime = std::__next_prime(*&v12);
      v12 = prime;
      v6 = *(v3 + 8);
    }

    if (*&v12 <= v6)
    {
      if (*&v12 >= v6)
      {
        goto LABEL_40;
      }

      prime = vcvtps_u32_f32(*(v3 + 40) / *(v3 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v20 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v20;
        }
      }

      if (*&v12 <= prime)
      {
        v12 = prime;
      }

      if (*&v12 >= v6)
      {
        v6 = *(v3 + 8);
        goto LABEL_40;
      }

      if (!*&v12)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> **,0>(v3, 0);
        v6 = 0;
        *(v3 + 8) = 0;
        goto LABEL_40;
      }
    }

    v13 = mdm::zone_mallocator::instance(prime);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v13, *&v12);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> **,0>(v3, v14);
    v15 = 0;
    *(v3 + 8) = v12;
    do
    {
      *(*v3 + 8 * v15++) = 0;
    }

    while (*&v12 != v15);
    v16 = *(v3 + 24);
    if (v16)
    {
      v17 = v16[1];
      v18 = vcnt_s8(v12);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      *(*v3 + 8 * v17) = v3 + 24;
      for (i = *v16; *v16; i = *v16)
      {
        v22 = i[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v12)
          {
            v22 %= *&v12;
          }
        }

        else
        {
          v22 &= *&v12 - 1;
        }

        if (v22 == v17)
        {
          v16 = i;
        }

        else
        {
          v23 = *v3;
          v24 = i;
          if (*(*v3 + 8 * v22))
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24 && i[2] == v24[2]);
            *v16 = v24;
            *v25 = **(v23 + 8 * v22);
            **(v23 + 8 * v22) = i;
          }

          else
          {
            *(v23 + 8 * v22) = v16;
            v16 = i;
            v17 = v22;
          }
        }
      }
    }

    v6 = v12;
  }

LABEL_40:
  v26 = vcnt_s8(v6);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v5;
    if (v6 <= v5)
    {
      v27 = v5 % v6;
    }
  }

  else
  {
    v27 = (v6 - 1) & v5;
  }

  v28 = *v3;
  v29 = *(*v3 + 8 * v27);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = v29;
      v29 = *v29;
      if (!v29)
      {
        break;
      }

      v32 = v29[1];
      if (v26.u32[0] > 1uLL)
      {
        v33 = v29[1];
        if (v32 >= v6)
        {
          v33 = v32 % v6;
        }
      }

      else
      {
        v33 = v32 & (v6 - 1);
      }

      if (v33 != v27)
      {
        break;
      }

      v34 = v32 == v5 && v29[2] == a2[2];
      v35 = v34 != (v30 & 1);
      v36 = v30 & v35;
      v30 |= v35;
    }

    while (v36 != 1);
  }

  else
  {
    v31 = 0;
  }

  v37 = a2[1];
  if (v26.u32[0] > 1uLL)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }
  }

  else
  {
    v37 &= v6 - 1;
  }

  if (!v31)
  {
    *a2 = *(v3 + 24);
    *(v3 + 24) = a2;
    *(v28 + 8 * v37) = v3 + 24;
    if (!*a2)
    {
      goto LABEL_76;
    }

    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

LABEL_75:
    *(*v3 + 8 * v38) = a2;
    goto LABEL_76;
  }

  *a2 = *v31;
  *v31 = a2;
  if (*a2)
  {
    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

    if (v38 != v37)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
  ++*(v3 + 40);
}

mdm::zone_mallocator *md::LabelCustomFeatureSupport::mapTileWasActivated(mdm::zone_mallocator *this, md::LabelMapTile *a2)
{
  v3 = this;
  v4 = *(this + 13);
  v5 = *(this + 14);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = *(this + 15);
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      v26[4] = this + 128;
      if (v12)
      {
        v13 = mdm::zone_mallocator::instance(this);
        v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelMapTile *>(v13, v12);
      }

      else
      {
        v14 = 0;
      }

      v16 = &v14[8 * v12];
      v15 = &v14[8 * v9];
      *v15 = a2;
      v8 = v15 + 8;
      v17 = *(v3 + 13);
      v18 = *(v3 + 14) - v17;
      v19 = &v15[-v18];
      memcpy(&v15[-v18], v17, v18);
      v20 = *(v3 + 13);
      *(v3 + 13) = v19;
      *(v3 + 14) = v8;
      v21 = *(v3 + 15);
      *(v3 + 15) = v16;
      v26[2] = v20;
      v26[3] = v21;
      v26[0] = v20;
      v26[1] = v20;
      this = std::__split_buffer<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator> &>::~__split_buffer(v26);
    }

    else
    {
      *v5 = a2;
      v8 = v5 + 1;
    }

    *(v3 + 14) = v8;
    if (*(v3 + 12))
    {
      v22 = *(v3 + 9);
      if (v22 != (v3 + 80))
      {
        do
        {
          md::LabelCustomFeatureProvider::addTile((v22 + 5), a2);
          v23 = v22[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v22[2];
              v25 = *v24 == v22;
              v22 = v24;
            }

            while (!v25);
          }

          v22 = v24;
        }

        while (v24 != (v3 + 80));
      }

      md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(v3, *(a2 + 10), *(a2 + 11));
    }
  }

  return this;
}

mdm::zone_mallocator *md::LabelCustomFeatureProvider::addTile(md::LabelCustomFeatureProvider *this, md::LabelMapTile *a2)
{
  v29 = a2;
  v5 = this + 72;
  v4 = *(this + 9);
  if (v4)
  {
    v6 = *(a2 + 9);
    v8 = *(a2 + 3);
    v7 = *(a2 + 4);
    while (1)
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[33];
        if (v6 == v9)
        {
          break;
        }

        if (v6 < v9)
        {
          goto LABEL_12;
        }

        if (v9 >= v6)
        {
          return std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v5 + 128), &v29);
        }

LABEL_15:
        v12 = (v5 + 8);
        v4 = *(v5 + 1);
        if (!v4)
        {
          goto LABEL_18;
        }
      }

      v10 = *(v5 + 10);
      if (v7 != v10)
      {
        if (v7 < v10)
        {
          goto LABEL_12;
        }

        if (v10 >= v7)
        {
          return std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v5 + 128), &v29);
        }

        goto LABEL_15;
      }

      v11 = *(v5 + 9);
      if (v8 >= v11)
      {
        if (v11 >= v8)
        {
          return std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v5 + 128), &v29);
        }

        goto LABEL_15;
      }

LABEL_12:
      v4 = *v5;
      v12 = v5;
      if (!*v5)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = (this + 72);
LABEL_18:
  v13 = mdm::zone_mallocator::instance(this);
  v14 = pthread_rwlock_rdlock((v13 + 32));
  if (v14)
  {
    geo::read_write_lock::logFailure(v14, "read lock", v15);
  }

  v16 = malloc_type_zone_malloc(*v13, 0xC0uLL, 0x10A0040520E554CuLL);
  atomic_fetch_add((v13 + 24), 1u);
  geo::read_write_lock::unlock((v13 + 32));
  v16[56] = 0;
  *(v16 + 36) = *(a2 + 12);
  *(v16 + 16) = *(a2 + 4);
  *(v16 + 6) = *(a2 + 3);
  v16[56] = *(a2 + 32);
  v17 = v29;
  *(v16 + 16) = 0;
  v30 = v17;
  *(v16 + 17) = 0;
  *(v16 + 18) = 0;
  *(v16 + 20) = &unk_1F2A436C8;
  *(v16 + 21) = 0;
  v16[184] = 0;
  v18 = *(MEMORY[0x1E69A1688] + 16);
  v19 = *(v17 + 3);
  _Q2 = *(v17 + 4);
  _D4 = *(MEMORY[0x1E69A1688] + 24);
  __asm { FMLS            D4, D4, V2.D[1] }

  *(v16 + 8) = *&vmulq_f64(v18, v19);
  *(v16 + 9) = _D4;
  *(v16 + 5) = vmulq_f64(vsubq_f64(_Q2, v19), v18);
  *(v16 + 12) = *(v17 + 6);
  *(v16 + 13) = *(v17 + 7);
  *(v16 + 14) = *(v17 + 8);
  *(v16 + 15) = *(v17 + 9);
  std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v16 + 128), &v30);
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = v5;
  *v12 = v16;
  v27 = **(this + 8);
  if (v27)
  {
    *(this + 8) = v27;
    v16 = *v12;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 9), v16);
  ++*(this + 11);
  return result;
}

void sub_1B2BC9CC0(_Unwind_Exception *a1)
{
  *(v2 + 160) = v3;

  std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  v6 = mdm::zone_mallocator::instance(v5);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,void *>>(v6, v2);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelMapTile *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelMapTile *>(v5, v4);
  }

  return a1;
}

void md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelCustomFeatureSupport *this, md::LabelMapTile *a2, std::__shared_weak_count *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = std::__shared_weak_count::lock(a3);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
}

void sub_1B2BC9F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelMapTile>>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *a1;
    v10 = *(*a1 + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *&v2 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == a2)
            {
              v14 = v11[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }
              }

              else
              {
                v14 &= v12;
              }

              v15 = *(v9 + 8 * v14);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v11);
              if (v16 == a1 + 3)
              {
                goto LABEL_36;
              }

              v17 = v16[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v17 >= *&v2)
                {
                  v17 %= *&v2;
                }
              }

              else
              {
                v17 &= v12;
              }

              if (v17 != v14)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v18 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v18 >= *&v2)
                  {
                    v18 %= *&v2;
                  }
                }

                else
                {
                  v18 &= v12;
                }

                if (v18 != v14)
                {
LABEL_37:
                  *(v9 + 8 * v14) = 0;
                }
              }

              v19 = *v11;
              if (*v11)
              {
                v20 = *(v19 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v20 >= *&v2)
                  {
                    v20 %= *&v2;
                  }
                }

                else
                {
                  v20 &= v12;
                }

                if (v20 != v14)
                {
                  *(*a1 + 8 * v20) = v16;
                  v19 = *v11;
                }
              }

              *v16 = v19;
              *v11 = 0;
              --a1[5];
              std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v11);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}

void *std::__copy_impl::operator()[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::shared_ptr<md::LabelMapTile>*>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = v5[2];
      v6 = v5[3];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v5 = *v5;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v7 = *--v3;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          std::vector<md::LabelAnimationItem,geo::allocator_adapter<md::LabelAnimationItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);
          a1 = MEMORY[0x1B8C62190](v6, 0x1020C4094DC1443);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v8 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelAnimationTrack>>(v8, v4);
  }
}

void md::AnimatedCrossFadeLabelPart::~AnimatedCrossFadeLabelPart(md::AnimatedCrossFadeLabelPart *this)
{
  *this = &unk_1F2A0D4C0;
  md::AnimatedCrossFadeLabelPart::emitEndSignpost(this);
  v2 = (this + 696);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 664);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

{
  md::AnimatedCrossFadeLabelPart::~AnimatedCrossFadeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void std::vector<md::LabelAnimationItem,geo::allocator_adapter<md::LabelAnimationItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimationItem>(v2, v1);
  }
}

char *non-virtual thunk tomd::MapNavLabeler::setRouteLabelBoundingRects(uint64_t a1, __int128 **a2)
{
  result = (a1 + 728);
  if (result != a2)
  {
    result = std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::LabelBoundingRect*,md::LabelBoundingRect*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  *(a1 + 792) = 1;
  return result;
}

void md::AnimatedCrossFadeLabelPart::emitEndSignpost(md::AnimatedCrossFadeLabelPart *this)
{
  if (*(this + 738) == 1)
  {
    v8 = v1;
    v9 = v2;
    *(this + 738) = 0;
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v4 = GEOGetVectorKitPerformanceLog_log;
    v5 = v4;
    v6 = *(this + 736);
    if (v6)
    {
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LabelsPickAnimation", &unk_1B3514CAA, v7, 2u);
      }
    }
  }
}

char *std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::LabelBoundingRect*,md::LabelBoundingRect*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *(result + 2);
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 4) >= a4)
  {
    v16 = *(result + 1);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v9) >> 4) >= a4)
    {
      while (v6 != a3)
      {
        v21 = *v6;
        v9[2] = *(v6 + 2);
        *v9 = v21;
        *(v9 + 6) = *(v6 + 6);
        *(v9 + 7) = *(v6 + 7);
        *(v9 + 8) = *(v6 + 8);
        *(v9 + 9) = *(v6 + 9);
        *(v9 + 40) = *(v6 + 40);
        v6 += 3;
        v9 += 6;
      }

      *(result + 1) = v9;
    }

    else
    {
      v17 = a2 + v16 - v9;
      if (v16 != v9)
      {
        do
        {
          v18 = *v6;
          v9[2] = *(v6 + 2);
          *v9 = v18;
          *(v9 + 6) = *(v6 + 6);
          *(v9 + 7) = *(v6 + 7);
          *(v9 + 8) = *(v6 + 8);
          *(v9 + 9) = *(v6 + 9);
          *(v9 + 40) = *(v6 + 40);
          v6 += 3;
          v9 += 6;
        }

        while (v6 != v17);
        v16 = *(result + 1);
      }

      v19 = v16;
      if (v17 != a3)
      {
        v19 = v16;
        do
        {
          *v19 = *v17;
          *(v19 + 8) = *(v17 + 8);
          v20 = *(v17 + 24);
          v19[40] = *(v17 + 40);
          *(v19 + 24) = v20;
          v17 += 48;
          v19 += 48;
        }

        while (v17 != a3);
      }

      *(result + 1) = v19;
    }
  }

  else
  {
    if (v9)
    {
      *(result + 1) = v9;
      v10 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBoundingRect>(v10, v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 > 0x555555555555555)
    {
      goto LABEL_26;
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= a4)
    {
      v12 = a4;
    }

    v13 = v11 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v12;
    if (v13 > 0x555555555555555)
    {
LABEL_26:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBoundingRect>(v14, v13);
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[48 * v13];
    while (v6 != a3)
    {
      *result = *v6;
      *(result + 8) = *(v6 + 8);
      v15 = *(v6 + 24);
      result[40] = *(v6 + 40);
      *(result + 24) = v15;
      v6 += 3;
      result += 48;
    }

    v7[1] = result;
  }

  return result;
}

void std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v6 = *(v3 - 18);
        v3 -= 18;
        a1 = v6;
        if (v6 != v3[2])
        {
          free(a1);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimation>(v7, v4);
  }
}

void md::NullLabelPart::~NullLabelPart(void **this)
{
  *this = &unk_1F2A5B190;
  v2 = this + 9;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(v2);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A5B190;
  v1 = this + 9;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(v1);
}

void std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__assign_multi<std::__tree_const_iterator<gm::Box<double,2>,std::__tree_node<gm::Box<double,2>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v9[4] = v13[4];
      v9[5] = v13[5];
      v9[6] = v13[6];
      v9[7] = v13[7];
      v14 = *v8;
      v15 = (a1 + 8);
      v16 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v15 = v14;
            if (!md::MultiRectSetCompare::operator()((v9 + 4), (v14 + 4)))
            {
              break;
            }

            v14 = *v15;
            v16 = v15;
            if (!*v15)
            {
              goto LABEL_16;
            }
          }

          v14 = v15[1];
        }

        while (v14);
        v16 = v15 + 1;
      }

LABEL_16:
      std::__tree<unsigned short>::__insert_node_at(a1, v15, v16, v9);
      if (v11)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v11);
      }

      else
      {
        v10 = 0;
      }

      v17 = v13[1];
      if (v17)
      {
        do
        {
          a2 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v18 = *a2 == v13;
          v13 = a2;
        }

        while (!v18);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>::operator=[abi:nn200100](uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 8;
  if (v6 != v5 && !md::RouteRangeAnnotationRequest::operator<(a2, v5[4]))
  {
    if (!md::RouteRangeAnnotationRequest::operator<((v5 + 4), *a2))
    {
      goto LABEL_29;
    }

    v10 = (v5 + 1);
    v9 = v5[1];
    if (v9)
    {
      v11 = v5[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = v5;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      if (!md::RouteRangeAnnotationRequest::operator<(a2, v12[4]))
      {
LABEL_25:
        v10 = std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__find_equal<md::RouteRangeAnnotationRequest>(v4, &v21, a2);
        goto LABEL_26;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v21 = v12;
      v10 = v12;
    }

    else
    {
      v21 = v5;
    }

    goto LABEL_26;
  }

  v7 = v5;
  if (*v4 != v5)
  {
    v8 = *v5;
    if (*v5)
    {
      do
      {
        v7 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = v5;
      do
      {
        v7 = v13[2];
        v14 = *v7 == v13;
        v13 = v7;
      }

      while (v14);
    }

    if (!md::RouteRangeAnnotationRequest::operator<((v7 + 4), *a2))
    {
      goto LABEL_25;
    }
  }

  v10 = v5;
  if (!*v5)
  {
    goto LABEL_28;
  }

  v21 = v7;
  v10 = (v7 + 1);
LABEL_26:
  v5 = *v10;
  if (*v10)
  {
    goto LABEL_29;
  }

  v5 = v21;
LABEL_28:
  std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__construct_node<md::RouteRangeAnnotationRequest const&>(&v20, v4, a2);
  v16 = v20;
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v4, v5, v10, v20);
  v5 = v16;
LABEL_29:
  *(a1 + 8) = v5;
  v17 = v5[1];
  if (v17)
  {
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = v5[2];
      v14 = *v18 == v5;
      v5 = v18;
    }

    while (!v14);
  }

  *(a1 + 8) = v18;
  return a1;
}

id GEOGetVectorKitLabelNavEtaLabelerLog(void)
{
  if (GEOGetVectorKitLabelNavEtaLabelerLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelNavEtaLabelerLog(void)::onceToken, &__block_literal_global_6345);
  }

  v1 = GEOGetVectorKitLabelNavEtaLabelerLog(void)::log;

  return v1;
}

uint64_t md::RouteRangeAnnotationRequest::to_string(md::RouteRangeAnnotationRequest *this, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v36);
  v4 = [*(a2 + 8) etaDescription];
  v5 = [v4 etaText];
  if (v5)
  {
    v6 = [*(a2 + 8) etaDescription];
    v7 = [v6 etaText];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  }

  else
  {
    v8 = &stru_1F2A61C40;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v36, "{ route:", 8);
  v9 = *a2;
  v10 = *a2;
  v11 = MEMORY[0x1B8C61C40](&v36, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", route.end:(", 13);
  v12 = *a2;
  [v12 endRouteCoordinate];
  v13 = GEOPolylineCoordinateAsFullString();
  v14 = [v13 UTF8String];
  v15 = strlen(v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v14, v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "), annotation.start:(", 21);
  [*(a2 + 8) start];
  v16 = GEOPolylineCoordinateAsFullString();
  v17 = [v16 UTF8String];
  v18 = strlen(v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "), annotation.end:(", 19);
  [*(a2 + 8) end];
  v19 = GEOPolylineCoordinateAsFullString();
  v20 = [v19 UTF8String];
  v21 = strlen(v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v20, v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "), annotation.type:", 19);
  v22 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  if (v22 > 6)
  {
    v23 = @"VKRouteEtaUnknown";
  }

  else
  {
    v23 = *(&off_1E7B32EE0 + v22);
  }

  v24 = [(__CFString *)v23 UTF8String];
  v25 = strlen(v24);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v24, v25);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", annotation.text:", 19);
  v26 = [(__CFString *)v8 UTF8String];
  v27 = strlen(v26);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v26, v27);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", sections:", 12);
  v28 = *(a2 + 16);
  if (v28 == (a2 + 24))
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      v30 = v28[1];
      v31 = v28;
      if (v30)
      {
        do
        {
          v32 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v32 = v31[2];
          v33 = *v32 == v31;
          v31 = v32;
        }

        while (!v33);
      }

      v29 += (v28[6] - v28[5]) >> 4;
      v28 = v32;
    }

    while (v32 != (a2 + 24));
  }

  v34 = MEMORY[0x1B8C61CB0](v11, v29);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, " }", 2);

  std::ostringstream::str[abi:nn200100](this, &v36);
  v36 = *MEMORY[0x1E69E54E8];
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v40);
}

void sub_1B2BCB1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:nn200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:nn200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F29F1180;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void *std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::pair[abi:nn200100](void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](a1 + 2, (a2 + 2));
  a1[6] = &unk_1F29F1180;
  a1[7] = 0;
  v4 = a2[7];
  v5 = a1[7];
  a1[7] = v4;

  return a1;
}

uint64_t std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::LabelMapTile::updateLabels(md::LabelMapTile *this, md::LabelManager *a2, md::LabelPool *a3, int a4, int a5)
{
  v5 = a4;
  v7 = this;
  v543[1] = *MEMORY[0x1E69E9840];
  v528 = a2;
  if (*(this + 552) == a4 && (*(this + 130) & 1) == 0 && (*(this + 132) & 1) == 0 && (*(this + 131) & 1) == 0 && (*(this + 136) & 1) == 0 && !a5)
  {
    return;
  }

  v8 = *(a2 + 53);
  *(this + 552) = a4;
  v541[2] = 0;
  v540 = v541;
  v541[0] = 0;
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::swap(this + 52, &v540);
  v503 = v8;
  if (*(v8 + 424) > 0.0 && *(v8 + 28) == 1)
  {
    *buf = xmmword_1B33B0710;
    *&buf[16] = 0;
    *v535 = 0;
    __asm { FMOV            V2.2D, #0.5 }

    v529 = vmlaq_f64(*(v7 + 3), _Q2, vsubq_f64(*(v7 + 4), *(v7 + 3)));
    v542.__r_.__value_.__r.__words[0] = (*(*v7 + 16))(v7, &v529);
    v542.__r_.__value_.__l.__size_ = v13;
    v542.__r_.__value_.__r.__words[2] = v14;
    LOBYTE(__p[0]) = 0;
    BYTE4(__p[1]) = 0;
    md::LabelLayoutContext::evaluateWorldPoint(v8, &v542, __p, 1, 0, buf, 1.0);
    if ((v535[0] & 1) == 0)
    {
      v15 = *buf & ~(*buf >> 31);
      if (v15 >= v5)
      {
        v15 = v5;
      }

      if (v15 >= 23)
      {
        v5 = 23;
      }

      else
      {
        v5 = v15;
      }
    }
  }

  v16 = (*(**(*(v528 + 21) + 64) + 8))(*(*(v528 + 21) + 64));
  if (v16)
  {
    v17 = v16[16] != v16[17] || v16[30] != v16[31];
    v510 = v17;
  }

  else
  {
    v510 = 0;
  }

  if (*(*(v528 + 29) + 28) == 1)
  {
    v505 = *(v528 + 3423);
  }

  else
  {
    v505 = 0;
  }

  v507 = v16;
  v502 = (*(**(*(v528 + 21) + 32) + 80))(*(*(v528 + 21) + 32));
  v504 = *(v8 + 1232);
  *(v7 + 12) = 0;
  *(v7 + 26) = 0;
  v18 = (v7 + 48);
  v524 = v7 + 64;
  v19 = (v5 + 1);
  v20 = 176;
  v21 = v5;
  v516 = v7;
  v520 = a3;
  v523 = (v7 + 48);
  v514 = v5;
  do
  {
    v22 = *(v7 + v20);
    if (!v22)
    {
      goto LABEL_475;
    }

    v506 = v20;
    v23 = *(v528 + 37);
    v24 = *(v22 + 70);
    v25 = v23[3];
    v512 = *(v7 + v20);
    if (v24 != v25)
    {
      *(v22 + 70) = v25;
      v27 = v24 > v25 || v24 <= v23[4];
      __src = v27;
      memset(&v542, 0, sizeof(v542));
      std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::reserve(&v542, v22[8] + v22[28]);
      v28 = atomic_load((*v23 + 3428));
      v29 = v22[25];
      v30 = v22 + 26;
      if (v29 != v30)
      {
        do
        {
          v31 = v29[5];
          if (v31)
          {
            v32 = std::__shared_weak_count::lock(v31);
            if (v32)
            {
              v33 = v32;
              v34 = v29[4];
              if (v34)
              {
                if (v34[32] != v23[3])
                {
                  size = v542.__r_.__value_.__l.__size_;
                  if (v542.__r_.__value_.__l.__size_ >= v542.__r_.__value_.__r.__words[2])
                  {
                    v37 = 0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]) >> 3);
                    v38 = v37 + 1;
                    if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
LABEL_887:
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    if (0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) > v38)
                    {
                      v38 = 0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                    {
                      v39 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v39 = v38;
                    }

                    *v535 = v543;
                    if (v39)
                    {
                      v40 = mdm::zone_mallocator::instance(v32);
                      v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v40, v39);
                    }

                    else
                    {
                      v41 = 0;
                    }

                    v42 = &v41[24 * v37];
                    v43 = &v41[24 * v39];
                    *(v42 + 1) = 0;
                    *(v42 + 2) = 0;
                    *v42 = v34;
                    v36 = (v42 + 24);
                    v44 = &v42[-(v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0])];
                    memcpy(v44, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]);
                    v45 = v542.__r_.__value_.__r.__words[0];
                    v46 = v542.__r_.__value_.__r.__words[2];
                    v542.__r_.__value_.__r.__words[0] = v44;
                    v542.__r_.__value_.__l.__size_ = v36;
                    v542.__r_.__value_.__r.__words[2] = v43;
                    *&buf[16] = v45;
                    v534 = v46;
                    *buf = v45;
                    *&buf[8] = v45;
                    std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                    a3 = v520;
                  }

                  else
                  {
                    *(v542.__r_.__value_.__l.__size_ + 8) = 0;
                    size[2] = 0;
                    v36 = (size + 3);
                    *size = v34;
                  }

                  v542.__r_.__value_.__l.__size_ = v36;
                }

                (*(*v34 + 544))(v34, v28);
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v33);
            }
          }

          v47 = v29[1];
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = v29[2];
              _ZF = *v48 == v29;
              v29 = v48;
            }

            while (!_ZF);
          }

          v29 = v48;
        }

        while (v48 != v30);
      }

      v49 = v512[5];
      if (v49 != v512 + 6)
      {
        do
        {
          v50 = v49[5];
          if (v50)
          {
            v51 = std::__shared_weak_count::lock(v50);
            if (v51)
            {
              v52 = v51;
              v53 = v49[4];
              if (v53 && *(v53 + 128) != v23[3])
              {
                v54 = v542.__r_.__value_.__l.__size_;
                if (v542.__r_.__value_.__l.__size_ >= v542.__r_.__value_.__r.__words[2])
                {
                  v56 = 0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]) >> 3);
                  v57 = v56 + 1;
                  if (v56 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) > v57)
                  {
                    v57 = 0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v58 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  *v535 = v543;
                  if (v58)
                  {
                    v59 = mdm::zone_mallocator::instance(v51);
                    v60 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v59, v58);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v61 = &v60[24 * v56];
                  v62 = &v60[24 * v58];
                  *(v61 + 1) = 0;
                  *(v61 + 2) = 0;
                  *v61 = v53;
                  v55 = (v61 + 24);
                  v63 = &v61[-(v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0])];
                  memcpy(v63, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]);
                  v64 = v542.__r_.__value_.__r.__words[0];
                  v65 = v542.__r_.__value_.__r.__words[2];
                  v542.__r_.__value_.__r.__words[0] = v63;
                  v542.__r_.__value_.__l.__size_ = v55;
                  v542.__r_.__value_.__r.__words[2] = v62;
                  *&buf[16] = v64;
                  v534 = v65;
                  *buf = v64;
                  *&buf[8] = v64;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v516;
                }

                else
                {
                  *(v542.__r_.__value_.__l.__size_ + 8) = 0;
                  v54[2] = 0;
                  v55 = (v54 + 3);
                  *v54 = v53;
                }

                v542.__r_.__value_.__l.__size_ = v55;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v52);
              a3 = v520;
            }
          }

          v66 = v49[1];
          if (v66)
          {
            do
            {
              v67 = v66;
              v66 = *v66;
            }

            while (v66);
          }

          else
          {
            do
            {
              v67 = v49[2];
              _ZF = *v67 == v49;
              v49 = v67;
            }

            while (!_ZF);
          }

          v49 = v67;
        }

        while (v67 != v512 + 6);
      }

      v68 = v512[17];
      if (v68 != v512 + 18)
      {
        do
        {
          v69 = v68[5];
          if (v69)
          {
            v70 = std::__shared_weak_count::lock(v69);
            if (v70)
            {
              v71 = v70;
              v72 = v68[4];
              if (v72 && *(v72 + 128) != v23[3])
              {
                v73 = v542.__r_.__value_.__l.__size_;
                if (v542.__r_.__value_.__l.__size_ >= v542.__r_.__value_.__r.__words[2])
                {
                  v75 = 0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]) >> 3);
                  v76 = v75 + 1;
                  if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) > v76)
                  {
                    v76 = 0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v77 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v77 = v76;
                  }

                  *v535 = v543;
                  if (v77)
                  {
                    v78 = mdm::zone_mallocator::instance(v70);
                    v79 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v78, v77);
                  }

                  else
                  {
                    v79 = 0;
                  }

                  v80 = &v79[24 * v75];
                  v81 = &v79[24 * v77];
                  *(v80 + 1) = 0;
                  *(v80 + 2) = 0;
                  *v80 = v72;
                  v74 = (v80 + 24);
                  v82 = &v80[-(v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0])];
                  memcpy(v82, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]);
                  v83 = v542.__r_.__value_.__r.__words[0];
                  v84 = v542.__r_.__value_.__r.__words[2];
                  v542.__r_.__value_.__r.__words[0] = v82;
                  v542.__r_.__value_.__l.__size_ = v74;
                  v542.__r_.__value_.__r.__words[2] = v81;
                  *&buf[16] = v83;
                  v534 = v84;
                  *buf = v83;
                  *&buf[8] = v83;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v516;
                }

                else
                {
                  *(v542.__r_.__value_.__l.__size_ + 8) = 0;
                  v73[2] = 0;
                  v74 = (v73 + 3);
                  *v73 = v72;
                }

                v542.__r_.__value_.__l.__size_ = v74;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v71);
              a3 = v520;
            }
          }

          v85 = v68[1];
          if (v85)
          {
            do
            {
              v86 = v85;
              v85 = *v85;
            }

            while (v85);
          }

          else
          {
            do
            {
              v86 = v68[2];
              _ZF = *v86 == v68;
              v68 = v86;
            }

            while (!_ZF);
          }

          v68 = v86;
        }

        while (v86 != v512 + 18);
      }

      v87 = v512[29];
      if (v87 != v512 + 30)
      {
        do
        {
          v88 = v87[5];
          if (v88)
          {
            v89 = std::__shared_weak_count::lock(v88);
            if (v89)
            {
              v90 = v89;
              v91 = v87[4];
              if (v91 && *(v91 + 128) != v23[3])
              {
                v92 = v542.__r_.__value_.__l.__size_;
                if (v542.__r_.__value_.__l.__size_ >= v542.__r_.__value_.__r.__words[2])
                {
                  v94 = 0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]) >> 3);
                  v95 = v94 + 1;
                  if (v94 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) > v95)
                  {
                    v95 = 0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v96 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  *v535 = v543;
                  if (v96)
                  {
                    v97 = mdm::zone_mallocator::instance(v89);
                    v98 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v97, v96);
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v99 = &v98[24 * v94];
                  v100 = &v98[24 * v96];
                  *(v99 + 1) = 0;
                  *(v99 + 2) = 0;
                  *v99 = v91;
                  v93 = (v99 + 24);
                  v101 = &v99[-(v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0])];
                  memcpy(v101, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]);
                  v102 = v542.__r_.__value_.__r.__words[0];
                  v103 = v542.__r_.__value_.__r.__words[2];
                  v542.__r_.__value_.__r.__words[0] = v101;
                  v542.__r_.__value_.__l.__size_ = v93;
                  v542.__r_.__value_.__r.__words[2] = v100;
                  *&buf[16] = v102;
                  v534 = v103;
                  *buf = v102;
                  *&buf[8] = v102;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v516;
                }

                else
                {
                  *(v542.__r_.__value_.__l.__size_ + 8) = 0;
                  v92[2] = 0;
                  v93 = (v92 + 3);
                  *v92 = v91;
                }

                v542.__r_.__value_.__l.__size_ = v93;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v90);
              a3 = v520;
            }
          }

          v104 = v87[1];
          if (v104)
          {
            do
            {
              v105 = v104;
              v104 = *v104;
            }

            while (v104);
          }

          else
          {
            do
            {
              v105 = v87[2];
              _ZF = *v105 == v87;
              v87 = v105;
            }

            while (!_ZF);
          }

          v87 = v105;
        }

        while (v105 != v512 + 30);
      }

      v106 = v512[13];
      if (v106 != v512 + 14)
      {
        do
        {
          v107 = v106[5];
          if (v107)
          {
            v108 = std::__shared_weak_count::lock(v107);
            if (v108)
            {
              v109 = v108;
              v110 = v106[4];
              if (v110 && *(v110 + 128) != v23[3])
              {
                v111 = v542.__r_.__value_.__l.__size_;
                if (v542.__r_.__value_.__l.__size_ >= v542.__r_.__value_.__r.__words[2])
                {
                  v113 = 0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]) >> 3);
                  v114 = v113 + 1;
                  if (v113 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) > v114)
                  {
                    v114 = 0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v115 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v115 = v114;
                  }

                  *v535 = v543;
                  if (v115)
                  {
                    v116 = mdm::zone_mallocator::instance(v108);
                    v117 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v116, v115);
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v118 = &v117[24 * v113];
                  v119 = &v117[24 * v115];
                  *(v118 + 1) = 0;
                  *(v118 + 2) = 0;
                  *v118 = v110;
                  v112 = (v118 + 24);
                  v120 = &v118[-(v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0])];
                  memcpy(v120, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]);
                  v121 = v542.__r_.__value_.__r.__words[0];
                  v122 = v542.__r_.__value_.__r.__words[2];
                  v542.__r_.__value_.__r.__words[0] = v120;
                  v542.__r_.__value_.__l.__size_ = v112;
                  v542.__r_.__value_.__r.__words[2] = v119;
                  *&buf[16] = v121;
                  v534 = v122;
                  *buf = v121;
                  *&buf[8] = v121;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v516;
                }

                else
                {
                  *(v542.__r_.__value_.__l.__size_ + 8) = 0;
                  v111[2] = 0;
                  v112 = (v111 + 3);
                  *v111 = v110;
                }

                v542.__r_.__value_.__l.__size_ = v112;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v109);
              a3 = v520;
            }
          }

          v123 = v106[1];
          if (v123)
          {
            do
            {
              v124 = v123;
              v123 = *v123;
            }

            while (v123);
          }

          else
          {
            do
            {
              v124 = v106[2];
              _ZF = *v124 == v106;
              v106 = v124;
            }

            while (!_ZF);
          }

          v106 = v124;
        }

        while (v124 != v512 + 14);
      }

      v125 = v512[21];
      if (v125 != v512 + 22)
      {
        do
        {
          v126 = v125[5];
          if (v126)
          {
            v127 = std::__shared_weak_count::lock(v126);
            if (v127)
            {
              v128 = v127;
              v129 = v125[4];
              if (v129 && *(v129 + 128) != v23[3])
              {
                v130 = v542.__r_.__value_.__l.__size_;
                if (v542.__r_.__value_.__l.__size_ >= v542.__r_.__value_.__r.__words[2])
                {
                  v132 = 0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]) >> 3);
                  v133 = v132 + 1;
                  if (v132 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) > v133)
                  {
                    v133 = 0x5555555555555556 * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v542.__r_.__value_.__r.__words[2] - v542.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v134 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v134 = v133;
                  }

                  *v535 = v543;
                  if (v134)
                  {
                    v135 = mdm::zone_mallocator::instance(v127);
                    v136 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v135, v134);
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v137 = &v136[24 * v132];
                  v138 = &v136[24 * v134];
                  *(v137 + 1) = 0;
                  *(v137 + 2) = 0;
                  *v137 = v129;
                  v131 = (v137 + 24);
                  v139 = &v137[-(v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0])];
                  memcpy(v139, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_ - v542.__r_.__value_.__r.__words[0]);
                  v140 = v542.__r_.__value_.__r.__words[0];
                  v141 = v542.__r_.__value_.__r.__words[2];
                  v542.__r_.__value_.__r.__words[0] = v139;
                  v542.__r_.__value_.__l.__size_ = v131;
                  v542.__r_.__value_.__r.__words[2] = v138;
                  *&buf[16] = v140;
                  v534 = v141;
                  *buf = v140;
                  *&buf[8] = v140;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v516;
                }

                else
                {
                  *(v542.__r_.__value_.__l.__size_ + 8) = 0;
                  v130[2] = 0;
                  v131 = (v130 + 3);
                  *v130 = v129;
                }

                v542.__r_.__value_.__l.__size_ = v131;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v128);
              a3 = v520;
            }
          }

          v142 = v125[1];
          if (v142)
          {
            do
            {
              v143 = v142;
              v142 = *v142;
            }

            while (v142);
          }

          else
          {
            do
            {
              v143 = v125[2];
              _ZF = *v143 == v125;
              v125 = v143;
            }

            while (!_ZF);
          }

          v125 = v143;
        }

        while (v143 != v512 + 22);
      }

      md::LabelFeatureStyler::styleLabelFeatures(v23, &v542, __src, 0, *(*(*v23 + 152) + 64));
      std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v542);
      v5 = v514;
      v22 = v512;
    }

    v144 = v22[3];
    v146 = *v144;
    v145 = v144[1];
    if (v145)
    {
      atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v515 = v145;
    v147 = v22[25];
    __srca = v22 + 26;
    if (v147 != v22 + 26)
    {
      do
      {
        v148 = v147[5];
        if (v148)
        {
          v149 = std::__shared_weak_count::lock(v148);
          if (v149)
          {
            v150 = v147[4];
            if (v150)
            {
              if (!v510 || (v151 = (*(*v150 + 160))(v147[4]), !std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v507 + 20, v151)))
              {
                if (*(*(*v150 + 568))(v150, 0, 0, 0, 0))
                {
                  md::PointLabelFeature::updatePositions(v150);
                  v152 = (*(*v150 + 160))(v150);
                  if (md::DebugStreamingPOIFeatureID && md::DebugStreamingPOIFeatureID == v152)
                  {
                    if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
                    {
                      dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
                    }

                    v153 = GEOGetVectorKitStreamingPOILog_log;
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
                    {
                      md::HighlightHelper::debugTileToString(&v542, (v7 + 8));
                      v154 = SHIBYTE(v542.__r_.__value_.__r.__words[2]);
                      v155 = v542.__r_.__value_.__r.__words[0];
                      md::HighlightHelper::debugTileToString(__p, (v512 + 36));
                      v156 = &v542;
                      if (v154 < 0)
                      {
                        v156 = v155;
                      }

                      v157 = __p;
                      if (v532.i8[7] < 0)
                      {
                        v157 = __p[0];
                      }

                      v159 = *(v150 + 408);
                      v158 = *(v150 + 416);
                      *buf = 136316418;
                      *&buf[4] = v156;
                      *&buf[12] = 2080;
                      *&buf[14] = v157;
                      *&buf[22] = 2048;
                      v534 = v512;
                      *v535 = 2048;
                      *&v535[2] = v146;
                      v536 = 2048;
                      v537 = v158;
                      v538 = 2048;
                      v539 = v159;
                      _os_log_impl(&dword_1B2754000, v153, OS_LOG_TYPE_DEBUG, "Add MapTileFeature, mapTile=(%s), labelTile=(%s)[%p] geoTile[%p] removeVersion=%llu, updateVersion=%llu", buf, 0x3Eu);
                      v22 = v512;
                      if (v532.i8[7] < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (SHIBYTE(v542.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v542.__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  if (*(v150 + 416) <= *(v150 + 408) && (*(v150 + 687) & v505 & 1) == 0)
                  {
                    if (!v504 || !(*(*v150 + 376))(v150) || !(*(*v150 + 392))(v150) || (v160 = (*(*v150 + 384))(v150), v161 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v504, v160), v161 == (*(*v150 + 408))(v150)))
                    {
                      v162 = *(v150 + 432);
                      if (v162 == (v150 + 440))
                      {
                        v5 = v514;
                        v22 = v512;
                      }

                      else
                      {
                        do
                        {
                          if ((*(v150 + 141) & 1) != 0 || ((v171 = atomic_load((v150 + 693)), v172 = *(v162 + v171 + 30), v172 < 254.0) ? (v173 = v172 < v19) : (v173 = 1), v173 && ((v174 = *(v162 + 34), v174 < 254.0) ? (v175 = v174 <= v21) : (v175 = 0), !v175)))
                          {
                            v164 = v162[5];
                            v163 = v162[6];
                            if (v515)
                            {
                              atomic_fetch_add_explicit(&v515->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            if (v164 == v163)
                            {
                              v169 = 0;
                            }

                            else
                            {
                              v165 = v164 + 8;
                              do
                              {
                                v166 = *(v165 - 8);
                                if (v166)
                                {
                                  v167 = v166 + 8;
                                }

                                else
                                {
                                  v167 = 0;
                                }

                                v168 = *(v167 + 8);
                                v169 = v168 == v146;
                                _ZF = v168 == v146 || v165 == v163;
                                v165 += 8;
                              }

                              while (!_ZF);
                            }

                            if (v515)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v515);
                            }

                            if (v169)
                            {
                              if (*(v7 + 8) == 255)
                              {
                                v179 = (*(*v150 + 112))(v150, v162 + 4);
                                v180 = md::LabelPoint::mercatorPoint(v179);
                                v181 = 0;
                                v182 = 1;
                                while (1)
                                {
                                  v183 = v182;
                                  v184 = *(v180 + 8 * v181);
                                  if (v184 < v523[v181] || v184 > *&v524[8 * v181])
                                  {
                                    break;
                                  }

                                  v182 = 0;
                                  v181 = 1;
                                  if ((v183 & 1) == 0)
                                  {
                                    goto LABEL_243;
                                  }
                                }
                              }

                              else
                              {
LABEL_243:
                                v542.__r_.__value_.__r.__words[0] = v150;
                                v542.__r_.__value_.__l.__size_ = v149;
                                atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
                                md::LabelPool::labelForFeature(buf, a3, v528, &v542, v162 + 8, 1);
                                std::__shared_weak_count::__release_shared[abi:nn200100](v149);
                                v176 = *buf;
                                if (*buf)
                                {
                                  md::LabelMapTile::addLabel(v7, buf);
                                  atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
                                  md::Label::update(v176, v528, v7);
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v149);
                                }

                                if (*&buf[8])
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                                }
                              }
                            }
                          }

                          v177 = v162[1];
                          if (v177)
                          {
                            do
                            {
                              v178 = v177;
                              v177 = *v177;
                            }

                            while (v177);
                          }

                          else
                          {
                            do
                            {
                              v178 = v162[2];
                              _ZF = *v178 == v162;
                              v162 = v178;
                            }

                            while (!_ZF);
                          }

                          v162 = v178;
                        }

                        while (v178 != (v150 + 440));
                        v5 = v514;
                        v22 = v512;
                      }
                    }
                  }
                }

                else
                {
                  ++*(v7 + 25);
                }
              }

LABEL_261:
              std::__shared_weak_count::__release_shared[abi:nn200100](v149);
              goto LABEL_262;
            }
          }
        }

        else
        {
          v149 = 0;
        }

        ++*(v7 + 24);
        if (v149)
        {
          goto LABEL_261;
        }

LABEL_262:
        v185 = v147[1];
        if (v185)
        {
          do
          {
            v186 = v185;
            v185 = *v185;
          }

          while (v185);
        }

        else
        {
          do
          {
            v186 = v147[2];
            _ZF = *v186 == v147;
            v147 = v186;
          }

          while (!_ZF);
        }

        v147 = v186;
      }

      while (v186 != __srca);
    }

    v187 = v22;
    v188 = v22[5];
    v189 = v187 + 6;
    if (v188 != v187 + 6)
    {
      __srcb = 0;
      v18 = v523;
      while (1)
      {
        v190 = v188[5];
        if (!v190)
        {
          v191 = 0;
          goto LABEL_282;
        }

        v191 = std::__shared_weak_count::lock(v190);
        if (!v191)
        {
          goto LABEL_282;
        }

        v192 = v188[4];
        if (!v192)
        {
          v18 = v523;
LABEL_282:
          ++*(v7 + 24);
          if (!v191)
          {
            goto LABEL_297;
          }

          goto LABEL_296;
        }

        if (*(*(*v192 + 568))(v188[4], 0, 0, 0, 0))
        {
          if ((*(v192 + 141) & 1) != 0 || v5 >= *(v192 + 136))
          {
            md::LineLabelFeature::updatePositions(v192, v528, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v192 + 192), v523, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v193 = *&buf[8];
            v194 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              v18 = v523;
              v5 = v514;
            }

            else
            {
              do
              {
                v542.__r_.__value_.__r.__words[0] = v192;
                v542.__r_.__value_.__l.__size_ = v191;
                atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v528, &v542, v194, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v191);
                v195 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v195, v528, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v191);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v194;
              }

              while (v194 != v193);
              v18 = v523;
              v5 = v514;
            }

            goto LABEL_296;
          }

          ++*(v7 + 26);
        }

        else
        {
          ++*(v7 + 25);
        }

        v18 = v523;
LABEL_296:
        std::__shared_weak_count::__release_shared[abi:nn200100](v191);
LABEL_297:
        v196 = v188[1];
        if (v196)
        {
          do
          {
            v197 = v196;
            v196 = *v196;
          }

          while (v196);
        }

        else
        {
          do
          {
            v197 = v188[2];
            _ZF = *v197 == v188;
            v188 = v197;
          }

          while (!_ZF);
        }

        v188 = v197;
        if (v197 == v189)
        {
          goto LABEL_305;
        }
      }
    }

    __srcb = 0;
    v18 = v523;
LABEL_305:
    v198 = v512[17];
    if (v198 != v512 + 18)
    {
      do
      {
        v199 = v198[5];
        if (!v199)
        {
          v200 = 0;
          goto LABEL_315;
        }

        v200 = std::__shared_weak_count::lock(v199);
        if (!v200)
        {
          goto LABEL_315;
        }

        v201 = v198[4];
        if (!v201)
        {
          v18 = v523;
LABEL_315:
          ++*(v7 + 24);
          if (!v200)
          {
            goto LABEL_330;
          }

          goto LABEL_329;
        }

        if (*(*(*v201 + 568))(v198[4], 0, 0, 0, 0))
        {
          if ((*(v201 + 141) & 1) != 0 || v5 >= *(v201 + 136))
          {
            md::LineLabelFeature::updatePositions(v201, v528, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v201 + 192), v523, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v202 = *&buf[8];
            v203 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              v18 = v523;
              v5 = v514;
            }

            else
            {
              do
              {
                v542.__r_.__value_.__r.__words[0] = v201;
                v542.__r_.__value_.__l.__size_ = v200;
                atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v528, &v542, v203, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v200);
                v204 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v204, v528, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v200);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v203;
              }

              while (v203 != v202);
              v18 = v523;
              v5 = v514;
            }

            goto LABEL_329;
          }

          ++*(v7 + 26);
        }

        else
        {
          ++*(v7 + 25);
        }

        v18 = v523;
LABEL_329:
        std::__shared_weak_count::__release_shared[abi:nn200100](v200);
LABEL_330:
        v205 = v198[1];
        if (v205)
        {
          do
          {
            v206 = v205;
            v205 = *v205;
          }

          while (v205);
        }

        else
        {
          do
          {
            v206 = v198[2];
            _ZF = *v206 == v198;
            v198 = v206;
          }

          while (!_ZF);
        }

        v198 = v206;
      }

      while (v206 != v512 + 18);
    }

    v207 = v512[29];
    if (v207 != v512 + 30)
    {
      do
      {
        v208 = v207[5];
        if (!v208)
        {
          v209 = 0;
          goto LABEL_346;
        }

        v209 = std::__shared_weak_count::lock(v208);
        if (!v209)
        {
          goto LABEL_346;
        }

        v210 = v207[4];
        if (!v210)
        {
          v18 = v523;
LABEL_346:
          ++*(v7 + 24);
          if (!v209)
          {
            goto LABEL_361;
          }

          goto LABEL_360;
        }

        if (*(*(*v210 + 568))(v207[4], 0, 0, 0, 0))
        {
          if ((*(v210 + 141) & 1) != 0 || v5 >= *(v210 + 136))
          {
            md::LineLabelFeature::updatePositions(v210, v528, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v210 + 192), v523, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v211 = *&buf[8];
            v212 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              v18 = v523;
              v5 = v514;
            }

            else
            {
              do
              {
                v542.__r_.__value_.__r.__words[0] = v210;
                v542.__r_.__value_.__l.__size_ = v209;
                atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v528, &v542, v212, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v209);
                v213 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v213, v528, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v209);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v212;
              }

              while (v212 != v211);
              v18 = v523;
              v5 = v514;
            }

            goto LABEL_360;
          }

          ++*(v7 + 26);
        }

        else
        {
          ++*(v7 + 25);
        }

        v18 = v523;
LABEL_360:
        std::__shared_weak_count::__release_shared[abi:nn200100](v209);
LABEL_361:
        v214 = v207[1];
        if (v214)
        {
          do
          {
            v215 = v214;
            v214 = *v214;
          }

          while (v214);
        }

        else
        {
          do
          {
            v215 = v207[2];
            _ZF = *v215 == v207;
            v207 = v215;
          }

          while (!_ZF);
        }

        v207 = v215;
      }

      while (v215 != v512 + 30);
    }

    v216 = v512[13];
    if (v216 != v512 + 14)
    {
      do
      {
        v217 = v216[5];
        if (!v217)
        {
          v218 = 0;
          goto LABEL_377;
        }

        v218 = std::__shared_weak_count::lock(v217);
        if (!v218)
        {
          goto LABEL_377;
        }

        v219 = v216[4];
        if (!v219)
        {
          v18 = v523;
LABEL_377:
          ++*(v7 + 24);
          if (!v218)
          {
            goto LABEL_392;
          }

          goto LABEL_391;
        }

        if (*(*(*v219 + 568))(v216[4], 0, 0, 0, 0))
        {
          if ((*(v219 + 141) & 1) != 0 || v5 >= *(v219 + 136))
          {
            md::LineLabelFeature::updatePositions(v219, v528, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v219 + 192), v523, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v220 = *&buf[8];
            v221 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              v18 = v523;
              v5 = v514;
            }

            else
            {
              do
              {
                v542.__r_.__value_.__r.__words[0] = v219;
                v542.__r_.__value_.__l.__size_ = v218;
                atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v528, &v542, v221, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v218);
                v222 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v222, v528, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v218);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v221;
              }

              while (v221 != v220);
              v18 = v523;
              v5 = v514;
            }

            goto LABEL_391;
          }

          ++*(v7 + 26);
        }

        else
        {
          ++*(v7 + 25);
        }

        v18 = v523;
LABEL_391:
        std::__shared_weak_count::__release_shared[abi:nn200100](v218);
LABEL_392:
        v223 = v216[1];
        if (v223)
        {
          do
          {
            v224 = v223;
            v223 = *v223;
          }

          while (v223);
        }

        else
        {
          do
          {
            v224 = v216[2];
            _ZF = *v224 == v216;
            v216 = v224;
          }

          while (!_ZF);
        }

        v216 = v224;
      }

      while (v224 != v512 + 14);
    }

    v225 = v512[21];
    v226 = v512 + 22;
    _ZF = v225 == v512 + 22;
    v513 = v512 + 22;
    if (!_ZF)
    {
      while (1)
      {
        v227 = v225[5];
        if (!v227)
        {
          v228 = 0;
          goto LABEL_408;
        }

        v228 = std::__shared_weak_count::lock(v227);
        if (!v228)
        {
          goto LABEL_408;
        }

        v229 = v225[4];
        if (!v229)
        {
          v18 = v523;
LABEL_408:
          ++*(v7 + 24);
          if (!v228)
          {
            goto LABEL_465;
          }

          goto LABEL_464;
        }

        if (!*(*(*v229 + 568))(v225[4], 0, 0, 0, 0))
        {
          ++*(v7 + 25);
          goto LABEL_462;
        }

        if ((v229[141] & 1) != 0 || v5 >= v229[136])
        {
          break;
        }

        ++*(v7 + 26);
LABEL_462:
        v18 = v523;
LABEL_464:
        std::__shared_weak_count::__release_shared[abi:nn200100](v228);
LABEL_465:
        v261 = v225[1];
        if (v261)
        {
          do
          {
            v262 = v261;
            v261 = *v261;
          }

          while (v261);
        }

        else
        {
          do
          {
            v262 = v225[2];
            _ZF = *v262 == v225;
            v225 = v262;
          }

          while (!_ZF);
        }

        v225 = v262;
        if (v262 == v226)
        {
          goto LABEL_471;
        }
      }

      md::LineLabelFeature::updatePositions(v229, v528, v5, v7);
      v230 = atomic_load(v229 + 672);
      if ((v230 & 1) == 0)
      {
LABEL_452:
        md::LineLabelPlacer::placementsForRect(buf, v229 + 24, v523, v5);
        if (__srcb)
        {
          operator delete(__srcb);
        }

        v258 = *&buf[8];
        v259 = *buf;
        __srcb = *buf;
        if (*buf == *&buf[8])
        {
          v18 = v523;
          v226 = v513;
        }

        else
        {
          do
          {
            v542.__r_.__value_.__r.__words[0] = v229;
            v542.__r_.__value_.__l.__size_ = v228;
            atomic_fetch_add_explicit(&v228->__shared_owners_, 1uLL, memory_order_relaxed);
            md::LabelPool::labelForFeature(buf, a3, v528, &v542, v259, 1);
            std::__shared_weak_count::__release_shared[abi:nn200100](v228);
            v260 = *buf;
            if (*buf)
            {
              md::LabelMapTile::addLabel(v7, buf);
              atomic_fetch_add_explicit(&v228->__shared_owners_, 1uLL, memory_order_relaxed);
              md::Label::update(v260, v528, v7);
              std::__shared_weak_count::__release_shared[abi:nn200100](v228);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
            }

            ++v259;
          }

          while (v259 != v258);
          v18 = v523;
          v226 = v513;
        }

        goto LABEL_464;
      }

      memset(buf, 0, sizeof(buf));
      std::mutex::lock((v229 + 608));
      v511 = *(v229 + 680);
      *(v229 + 85) = 0;
      *buf = v511;
      *&buf[16] = *(v229 + 87);
      *(v229 + 43) = 0u;
      atomic_store(0, v229 + 672);
      std::mutex::unlock((v229 + 608));
      v231 = v511;
      if (v511 == *(&v511 + 1))
      {
LABEL_451:
        v542.__r_.__value_.__r.__words[0] = buf;
        std::vector<md::TransitLineLabelFeature::WorkUnit,geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v542);
        v7 = v516;
        a3 = v520;
        v5 = v514;
        goto LABEL_452;
      }

      v232 = (v229 + 576);
      while (1)
      {
        v233 = *v231;
        if (v233 != 2)
        {
          if (v233 == 1)
          {
            md::TransitLineLabelFeature::addTransitLink(v229, *(v231 + 1));
          }

          goto LABEL_450;
        }

        v234 = *(v229 + 63);
        if (v234 != *(v229 + 64))
        {
          break;
        }

LABEL_450:
        v231 += 32;
        if (v231 == *(&v511 + 1))
        {
          goto LABEL_451;
        }
      }

      while (1)
      {
        v235 = (*v234)[1];
        v236 = v235[1];
        if (v236)
        {
          v237 = std::__shared_weak_count::lock(v236);
          v238 = *(v231 + 2);
          if (v237)
          {
            v239 = *v235;
            std::__shared_weak_count::__release_shared[abi:nn200100](v237);
            if (v239 == v238)
            {
              goto LABEL_420;
            }

            goto LABEL_448;
          }
        }

        else
        {
          v238 = *(v231 + 2);
        }

        if (!v238)
        {
LABEL_420:
          v240 = *v232;
          if (*v232)
          {
            v241 = (*v234)[1];
            v242 = (v229 + 576);
            v243 = *v232;
            do
            {
              v244 = v243[4];
              _CF = v244 >= v241;
              v245 = v244 < v241;
              if (_CF)
              {
                v242 = v243;
              }

              v243 = v243[v245];
            }

            while (v243);
            if (v242 != v232 && v241 >= v242[4])
            {
              v246 = v242[1];
              v247 = v242;
              if (v246)
              {
                do
                {
                  v248 = v246;
                  v246 = *v246;
                }

                while (v246);
              }

              else
              {
                do
                {
                  v248 = v247[2];
                  _ZF = *v248 == v247;
                  v247 = v248;
                }

                while (!_ZF);
              }

              if (*(v229 + 71) == v242)
              {
                *(v229 + 71) = v248;
              }

              --*(v229 + 74);
              v249 = std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v240, v242);
              v250 = mdm::zone_mallocator::instance(v249);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,void *>>(v250, v242);
            }
          }

          v251 = *(v229 + 64);
          v252 = v234;
          if (v234 + 1 != v251)
          {
            do
            {
              v253 = v252;
              v254 = *v252;
              if (*v252)
              {
                _ZF = (*v254)-- == 1;
                if (_ZF)
                {
                  std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v254 + 2));
                  v255 = *v252;
                  v257 = mdm::zone_mallocator::instance(v256);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::_fast_shared_ptr_control>(v257, v255);
                  *v253 = 0;
                }
              }

              v252 = (v253 + 1);
              *v253 = v253[1];
              v253[1] = 0;
            }

            while (v253 + 2 != v251);
            v251 = *(v229 + 64);
          }

          while (v251 != v252)
          {
            geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(--v251);
          }

          *(v229 + 64) = v252;
          goto LABEL_449;
        }

LABEL_448:
        ++v234;
        v252 = *(v229 + 64);
LABEL_449:
        if (v234 == v252)
        {
          goto LABEL_450;
        }
      }
    }

LABEL_471:
    if (__srcb)
    {
      operator delete(__srcb);
    }

    v20 = v506;
    if (v515)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v515);
    }

LABEL_475:
    v20 += 16;
  }

  while (v20 != 336);
  v527[0] = v7;
  v527[1] = &v528;
  v527[2] = a3;
  v263 = *(v7 + 42);
  if (v263)
  {
    v264 = *(v528 + 3022);
    if ((v264 & 1) != 0 || *(v528 + 3023) == 1)
    {
      v266 = *(v263 + 176);
      v265 = *(v263 + 184);
      while (v266 != v265)
      {
        if ((v264 & 1) != 0 || *(*v266 + 353) == 1)
        {
          md::LabelMapTile::updateLabels(md::LabelManager *,md::LabelPool &,int,BOOL)::$_0::operator()(v527, v266);
        }

        v266 += 2;
      }
    }
  }

  if ((*(**(*(v528 + 21) + 48) + 24))(*(*(v528 + 21) + 48)))
  {
    v267 = (*(**(*(v528 + 21) + 48) + 24))(*(*(v528 + 21) + 48));
    v269 = *v267;
    v268 = *(v267 + 8);
    while (v269 != v268)
    {
      md::LabelMapTile::updateLabels(md::LabelManager *,md::LabelPool &,int,BOOL)::$_0::operator()(v527, v269);
      v269 += 2;
    }
  }

  v270 = v528;
  memset(buf, 0, sizeof(buf));
  v271 = (*(**(*(v528 + 21) + 40) + 16))(*(*(v528 + 21) + 40));
  if (v271)
  {
    v272 = *v271;
    v273 = *(v271 + 8);
    if (*v271 != v273)
    {
      do
      {
        if (*(*(**v272 + 568))(*v272, 0, 0, 0, 0))
        {
          v274 = *v272;
          if (!*(*v272 + 9))
          {
            *(v274 + 9) = atomic_fetch_add((*(v270 + 36) + 680), 1uLL) + 1;
            v274 = *v272;
          }

          md::PointLabelFeature::updatePositions(v274);
          v275 = *(*v272 + 54);
          v276 = *v272 + 440;
          if (v275 != v276)
          {
            do
            {
              v277 = (*(**v272 + 112))(*v272, v275 + 4);
              v278 = md::LabelPoint::mercatorPoint(v277);
              v279 = 0;
              v280 = 1;
              while (1)
              {
                v281 = *(v278 + 8 * v279);
                if (v281 < v18[v279])
                {
                  break;
                }

                v282 = v280;
                if (v281 > *&v524[8 * v279])
                {
                  break;
                }

                v280 = 0;
                v279 = 1;
                if ((v282 & 1) == 0)
                {
                  v283 = v272[1];
                  __p[0] = *v272;
                  __p[1] = v283;
                  if (v283)
                  {
                    atomic_fetch_add_explicit(&v283->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  md::LabelPool::labelForFeature(&v542, v520, v270, __p, v275 + 8, 1);
                  if (v283)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v283);
                  }

                  v284 = v542.__r_.__value_.__r.__words[0];
                  if (v542.__r_.__value_.__r.__words[0])
                  {
                    md::LabelMapTile::addLabel(v516, &v542);
                    v285 = v272[1];
                    if (v285)
                    {
                      atomic_fetch_add_explicit(&v285->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    md::Label::update(v284, v270, v516);
                    if (v285)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v285);
                    }
                  }

                  if (v542.__r_.__value_.__l.__size_)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v542.__r_.__value_.__l.__size_);
                  }

                  break;
                }
              }

              v286 = *(v275 + 1);
              if (v286)
              {
                do
                {
                  v287 = v286;
                  v286 = *v286;
                }

                while (v286);
              }

              else
              {
                do
                {
                  v287 = *(v275 + 2);
                  _ZF = *v287 == v275;
                  v275 = v287;
                }

                while (!_ZF);
              }

              v275 = v287;
            }

            while (v287 != v276);
          }
        }

        else
        {
          ++*(v516 + 25);
        }

        v272 += 2;
      }

      while (v272 != v273);
    }
  }

  v288 = (*(**(*(v270 + 21) + 40) + 24))(*(*(v270 + 21) + 40));
  if (v288)
  {
    v290 = *v288;
    v289 = *(v288 + 8);
    if (*v288 != v289)
    {
      v291 = *buf;
      do
      {
        *&buf[8] = v291;
        if (*(*(**v290 + 568))(*v290, 0, 0, 0, 0))
        {
          v292 = *v290;
          if (!*(*v290 + 72))
          {
            v292[9] = atomic_fetch_add((*(v270 + 36) + 680), 1uLL) + 1;
            v292 = *v290;
          }

          v293 = v292[41];
          v294 = v292 + 42;
          if (v293 != v292 + 42)
          {
            do
            {
              v295 = md::LabelPoint::mercatorPoint((v293[5] + 48));
              v296 = 0;
              v297 = 1;
              while (1)
              {
                v298 = v297;
                v299 = *(v295 + 8 * v296);
                if (v299 < v523[v296] || v299 > *&v524[8 * v296])
                {
                  break;
                }

                v297 = 0;
                v296 = 1;
                if ((v298 & 1) == 0)
                {
                  v300 = *&buf[8];
                  if (*&buf[8] >= *&buf[16])
                  {
                    v301 = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(buf, v293 + 8);
                  }

                  else
                  {
                    **&buf[8] = *(v293 + 8);
                    v301 = v300 + 4;
                  }

                  *&buf[8] = v301;
                  break;
                }
              }

              v302 = v293[1];
              if (v302)
              {
                do
                {
                  v303 = v302;
                  v302 = *v302;
                }

                while (v302);
              }

              else
              {
                do
                {
                  v303 = v293[2];
                  _ZF = *v303 == v293;
                  v293 = v303;
                }

                while (!_ZF);
              }

              v293 = v303;
            }

            while (v303 != v294);
          }

          v291 = *buf;
          v304 = *&buf[8];
          if (*buf != *&buf[8])
          {
            v305 = *buf;
            do
            {
              v306 = v290[1];
              __p[0] = *v290;
              __p[1] = v306;
              if (v306)
              {
                atomic_fetch_add_explicit(&v306->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              md::LabelPool::labelForFeature(&v542, v520, v270, __p, v305, 1);
              if (v306)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v306);
              }

              v307 = v542.__r_.__value_.__r.__words[0];
              if (v542.__r_.__value_.__r.__words[0])
              {
                md::LabelMapTile::addLabel(v516, &v542);
                v308 = v290[1];
                if (v308)
                {
                  atomic_fetch_add_explicit(&v308->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::Label::update(v307, v270, v516);
                if (v308)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v308);
                }
              }

              if (v542.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v542.__r_.__value_.__l.__size_);
              }

              ++v305;
            }

            while (v305 != v304);
          }
        }

        else
        {
          ++*(v516 + 25);
        }

        v290 += 2;
      }

      while (v290 != v289);
    }
  }

  v309 = (*(**(*(v270 + 21) + 40) + 32))(*(*(v270 + 21) + 40));
  v310 = v523;
  if (v309)
  {
    v312 = *v309;
    v311 = *(v309 + 8);
    if (*v309 != v311)
    {
      v313 = *buf;
      do
      {
        *&buf[8] = v313;
        if (*(*(**v312 + 568))(*v312, 0, 0, 0, 0))
        {
          v314 = *v312;
          if (!*(*v312 + 72))
          {
            v314[9] = atomic_fetch_add((*(v270 + 36) + 680), 1uLL) + 1;
            v314 = *v312;
          }

          v315 = v314[33];
          v316 = v314[34];
          while (v315 != v316)
          {
            v317 = md::LabelPoint::mercatorPoint((v315 + 2));
            v318 = 0;
            v319 = 1;
            while (1)
            {
              v320 = *(v317 + 8 * v318);
              if (v320 < *(v310 + 8 * v318))
              {
                break;
              }

              v321 = v319;
              if (v320 > *&v524[8 * v318])
              {
                break;
              }

              v319 = 0;
              v318 = 1;
              if ((v321 & 1) == 0)
              {
                v322 = *&buf[8];
                if (*&buf[8] >= *&buf[16])
                {
                  v323 = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(buf, v315);
                }

                else
                {
                  **&buf[8] = *v315;
                  v323 = v322 + 4;
                }

                *&buf[8] = v323;
                break;
              }
            }

            v315 += 40;
          }

          v313 = *buf;
          v324 = *&buf[8];
          if (*buf != *&buf[8])
          {
            v325 = *buf;
            do
            {
              v326 = v312[1];
              __p[0] = *v312;
              __p[1] = v326;
              if (v326)
              {
                atomic_fetch_add_explicit(&v326->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              md::LabelPool::labelForFeature(&v542, v520, v270, __p, v325, 1);
              if (v326)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v326);
              }

              v327 = v542.__r_.__value_.__r.__words[0];
              if (v542.__r_.__value_.__r.__words[0])
              {
                md::LabelMapTile::addLabel(v516, &v542);
                v328 = v312[1];
                if (v328)
                {
                  atomic_fetch_add_explicit(&v328->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::Label::update(v327, v270, v516);
                if (v328)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v328);
                }
              }

              if (v542.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v542.__r_.__value_.__l.__size_);
              }

              ++v325;
            }

            while (v325 != v324);
          }

          v310 = v523;
        }

        else
        {
          ++*(v516 + 25);
        }

        v312 += 2;
      }

      while (v312 != v311);
    }
  }

  v329 = (*(**(*(v270 + 21) + 40) + 40))(*(*(v270 + 21) + 40));
  if (v329)
  {
    v330 = *v329;
    v331 = *(v329 + 8);
    if (*v329 != v331)
    {
      do
      {
        if (*(*(**v330 + 568))(*v330, 0, 0, 0, 0))
        {
          v332 = *v330;
          if (!*(*v330 + 9))
          {
            *(v332 + 9) = atomic_fetch_add((*(v270 + 36) + 680), 1uLL) + 1;
            v332 = *v330;
          }

          md::PointLabelFeature::updatePositions(v332);
          v333 = *(*v330 + 54);
          v334 = *v330 + 440;
          if (v333 != v334)
          {
            do
            {
              v335 = (*(**v330 + 112))(*v330, v333 + 4);
              v336 = md::LabelPoint::mercatorPoint(v335);
              v337 = 0;
              v338 = 1;
              while (1)
              {
                v339 = *(v336 + 8 * v337);
                if (v339 < *(v310 + 8 * v337))
                {
                  break;
                }

                v340 = v338;
                if (v339 > *&v524[8 * v337])
                {
                  break;
                }

                v338 = 0;
                v337 = 1;
                if ((v340 & 1) == 0)
                {
                  v341 = v330[1];
                  __p[0] = *v330;
                  __p[1] = v341;
                  if (v341)
                  {
                    atomic_fetch_add_explicit(&v341->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  md::LabelPool::labelForFeature(&v542, v520, v270, __p, v333 + 8, 1);
                  if (v341)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v341);
                  }

                  v342 = v542.__r_.__value_.__r.__words[0];
                  if (v542.__r_.__value_.__r.__words[0])
                  {
                    md::LabelMapTile::addLabel(v516, &v542);
                    v343 = v330[1];
                    if (v343)
                    {
                      atomic_fetch_add_explicit(&v343->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    md::Label::update(v342, v270, v516);
                    if (v343)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v343);
                    }
                  }

                  if (v542.__r_.__value_.__l.__size_)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v542.__r_.__value_.__l.__size_);
                  }

                  break;
                }
              }

              v344 = *(v333 + 1);
              if (v344)
              {
                do
                {
                  v345 = v344;
                  v344 = *v344;
                }

                while (v344);
              }

              else
              {
                do
                {
                  v345 = *(v333 + 2);
                  _ZF = *v345 == v333;
                  v333 = v345;
                }

                while (!_ZF);
              }

              v333 = v345;
            }

            while (v345 != v334);
          }
        }

        else
        {
          ++*(v516 + 25);
        }

        v330 += 2;
      }

      while (v330 != v331);
    }
  }

  if (*buf)
  {
    operator delete(*buf);
  }

  v346 = v528;
  v347 = (*(**(*(v528 + 21) + 32) + 208))(*(*(v528 + 21) + 32));
  if (v347)
  {
    v348 = *v347;
    v349 = *(v347 + 8);
    if (*v347 != v349)
    {
      do
      {
        v350 = *v348;
        *buf = 1;
        v351 = (*(*v350 + 112))(v350, buf);
        v352 = md::LabelPoint::mercatorPoint(v351);
        v353 = 0;
        v354 = 1;
        while (1)
        {
          v355 = *(v352 + 8 * v353);
          if (v355 < *(v310 + 8 * v353))
          {
            break;
          }

          v356 = v354;
          if (v355 > *&v524[8 * v353])
          {
            break;
          }

          v354 = 0;
          v353 = 1;
          if ((v356 & 1) == 0)
          {
            v357 = v348[1];
            v542.__r_.__value_.__r.__words[0] = *v348;
            v542.__r_.__value_.__l.__size_ = v357;
            if (v357)
            {
              atomic_fetch_add_explicit(&v357->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            LODWORD(__p[0]) = 1;
            md::LabelPool::labelForFeature(buf, v520, v346, &v542, __p, 1);
            if (v357)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v357);
            }

            v358 = *buf;
            if (*buf)
            {
              md::LabelMapTile::addLabel(v516, buf);
              v359 = v348[1];
              if (v359)
              {
                atomic_fetch_add_explicit(&v359->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              md::Label::update(v358, v346, v516);
              if (v359)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v359);
              }
            }

            if (!*(*(**v348 + 568))(*v348, 0, 0, 0, 0))
            {
              ++*(v516 + 25);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
            }

            break;
          }
        }

        v348 += 2;
      }

      while (v348 != v349);
    }
  }

  v360 = v528;
  v361 = (*(**(*(v528 + 21) + 32) + 200))(*(*(v528 + 21) + 32));
  if (v361)
  {
    v362 = *v361;
    v363 = *(v361 + 8);
    if (*v361 != v363)
    {
      do
      {
        v364 = *v362;
        *buf = 1;
        v365 = (*(*v364 + 112))(v364, buf);
        v366 = md::LabelPoint::mercatorPoint(v365);
        v367 = 0;
        v368 = 1;
        while (1)
        {
          v369 = *(v366 + 8 * v367);
          if (v369 < *(v310 + 8 * v367))
          {
            break;
          }

          v370 = v368;
          if (v369 > *&v524[8 * v367])
          {
            break;
          }

          v368 = 0;
          v367 = 1;
          if ((v370 & 1) == 0)
          {
            v371 = *v362;
            if (!*(*v362 + 72))
            {
              v371[9] = atomic_fetch_add((*(v360 + 36) + 680), 1uLL) + 1;
              v371 = *v362;
            }

            if (*(*(*v371 + 568))(v371, 0, 0, 0, 0))
            {
              v372 = v362[1];
              v542.__r_.__value_.__r.__words[0] = *v362;
              v542.__r_.__value_.__l.__size_ = v372;
              if (v372)
              {
                atomic_fetch_add_explicit(&v372->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              LODWORD(__p[0]) = 1;
              md::LabelPool::labelForFeature(buf, v520, v360, &v542, __p, 1);
              if (v372)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v372);
              }

              v373 = *buf;
              if (*buf)
              {
                md::LabelMapTile::addLabel(v516, buf);
                v374 = v362[1];
                if (v374)
                {
                  atomic_fetch_add_explicit(&v374->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::Label::update(v373, v360, v516);
                if (v374)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v374);
                }
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
              }
            }

            else
            {
              ++*(v516 + 25);
            }

            break;
          }
        }

        v362 += 2;
      }

      while (v362 != v363);
    }
  }

  v375 = v528;
  v376 = (*(**(*(v528 + 21) + 32) + 216))(*(*(v528 + 21) + 32));
  v377 = v516;
  v378 = v520;
  if (v376)
  {
    v380 = *v376;
    v379 = *(v376 + 8);
    if (*v376 != v379)
    {
      v381 = 0;
      do
      {
        v382 = *v380;
        if (*(*(**v380 + 568))(*v380, 0, 0, 0, 0))
        {
          if ((*(v382 + 141) & 1) != 0 || v514 >= *(v382 + 136))
          {
            md::LineLabelFeature::updatePositions(v382, v375, v514, v516);
            md::LineLabelPlacer::placementsForRect(buf, (v382 + 192), v310, v514);
            if (v381)
            {
              operator delete(v381);
            }

            v381 = *buf;
            v383 = *&buf[8];
            for (i = *buf; i != v383; ++i)
            {
              md::LabelPool::labelForFeature(buf, v520, v375, v380, i, 1);
              v385 = *buf;
              if (*buf)
              {
                md::LabelMapTile::addLabel(v516, buf);
                md::Label::update(v385, v375, v516);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
              }
            }

            v378 = v520;
          }

          else
          {
            ++*(v516 + 26);
          }
        }

        else
        {
          ++*(v516 + 25);
        }

        v380 += 2;
      }

      while (v380 != v379);
      if (v381)
      {
        operator delete(v381);
      }
    }
  }

  if (v510)
  {
    v386 = v507[16];
    for (j = v507[17]; v386 != j; v386 += 2)
    {
      v388 = *v386;
      *buf = 1;
      v389 = (*(*v388 + 112))(v388, buf);
      v390 = md::LabelPoint::mercatorPoint(v389);
      v391 = 0;
      v392 = 1;
      while (1)
      {
        v393 = *(v390 + 8 * v391);
        if (v393 < *(v310 + 8 * v391))
        {
          break;
        }

        v394 = v392;
        if (v393 > *&v524[8 * v391])
        {
          break;
        }

        v392 = 0;
        v391 = 1;
        if ((v394 & 1) == 0)
        {
          if (*(*(**v386 + 568))(*v386, 0, 0, 0, 0))
          {
            LODWORD(v542.__r_.__value_.__l.__data_) = 1;
            md::LabelPool::labelForFeature(buf, v378, v528, v386, &v542, 1);
            v395 = *buf;
            if (*buf)
            {
              md::LabelMapTile::addLabel(v516, buf);
              md::Label::update(v395, v528, v516);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
            }
          }

          else
          {
            ++*(v516 + 25);
          }

          break;
        }
      }
    }

    v397 = v507[30];
    v396 = v507[31];
    if (v397 != v396)
    {
      v398 = 0;
      do
      {
        v399 = *v397;
        md::LineLabelFeature::updatePositions(*v397, v528, v514, v516);
        md::LineLabelPlacer::placementsForRect(buf, v399 + 24, v310, v514);
        if (v398)
        {
          operator delete(v398);
        }

        v398 = *buf;
        v400 = *&buf[8];
        for (k = *buf; k != v400; ++k)
        {
          md::LabelPool::labelForFeature(buf, v520, v528, v397, k, 1);
          v402 = *buf;
          if (*buf)
          {
            md::LabelMapTile::addLabel(v516, buf);
            md::Label::update(v402, v528, v516);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
          }
        }

        v397 += 2;
        v378 = v520;
      }

      while (v397 != v396);
      if (v398)
      {
        operator delete(v398);
      }
    }
  }

  v403 = *(v516 + 44);
  for (m = *(v516 + 45); v403 != m; v403 += 2)
  {
    v405 = *v403;
    *buf = 1;
    v406 = (*(*v405 + 112))(v405, buf);
    v407 = md::LabelPoint::mercatorPoint(v406);
    v408 = 0;
    v409 = 1;
    while (1)
    {
      v410 = *(v407 + 8 * v408);
      if (v410 < *(v310 + 8 * v408))
      {
        break;
      }

      v411 = v409;
      if (v410 > *&v524[8 * v408])
      {
        break;
      }

      v409 = 0;
      v408 = 1;
      if ((v411 & 1) == 0)
      {
        if (*(*(**v403 + 568))(*v403, 0, 0, 0, 0))
        {
          v412 = *v403;
          if (((*v403)[141] & 1) != 0 || v514 >= v412[136])
          {
            if (!v504 || !*(v504 + 34) || !(*(*v412 + 376))(v412) || !(*(**v403 + 392))(*v403) || (v413 = (*(**v403 + 384))(*v403), v414 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v504, v413), v414 == (*(**v403 + 408))(*v403)))
            {
              LODWORD(v542.__r_.__value_.__l.__data_) = 1;
              md::LabelPool::labelForCustomFeature(buf, v378, v528, v403, &v542, 1);
              v415 = *buf;
              if (*buf)
              {
                md::LabelMapTile::addLabel(v516, buf);
                md::Label::update(v415, v528, v516);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
              }
            }
          }

          else
          {
            ++*(v516 + 26);
          }
        }

        else
        {
          ++*(v516 + 25);
        }

        break;
      }
    }
  }

  v416 = v540;
  if (*(v516 + 133) == 1 && v540 != v541)
  {
    do
    {
      v418 = v416[4];
      if (atomic_fetch_add((v418 + 1384), 0xFFu) == 1)
      {
        if (*(v418 + 1352) == 1)
        {
          *(v418 + 1349) = 1;
          *(v418 + 1312) = 0;
        }

        else
        {
          md::Label::updateStateMachineForStaging(v418, 1, 37);
        }
      }

      v419 = v416[1];
      if (v419)
      {
        do
        {
          v420 = v419;
          v419 = *v419;
        }

        while (v419);
      }

      else
      {
        do
        {
          v420 = v416[2];
          _ZF = *v420 == v416;
          v416 = v420;
        }

        while (!_ZF);
      }

      v416 = v420;
    }

    while (v420 != v541);
  }

  *(v516 + 133) = 1;
  if (*(v516 + 134) == 1)
  {
    v421 = *(v516 + 57);
    *(v516 + 56) = 0;
    *(v516 + 57) = 0;
    if (v421)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v421);
    }

    if (*(v516 + 28))
    {
      v422 = atomic_load(v528 + 3425);
      if (v422)
      {
        v423 = *(v516 + 28);
        v424 = *(v423 + 272);
        if (v424)
        {
          v425 = std::__shared_weak_count::lock(v424);
          if (v425)
          {
            v426 = *(v423 + 264);
            if (v426)
            {
              LOBYTE(__p[0]) = *(*(v528 + 29) + 17) ^ 1;
              v542.__r_.__value_.__r.__words[0] = v426;
              LOBYTE(v529.f64[0]) = 3;
              std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelTileCollisionInfo *,md::LabelCollidableItem::ItemType,0>();
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v425);
          }
        }
      }
    }
  }

  *(v516 + 134) = 0;
  if (*(v516 + 135) == 1)
  {
    v427 = *(v516 + 59);
    *(v516 + 58) = 0;
    *(v516 + 59) = 0;
    if (v427)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v427);
    }

    v428 = *(v516 + 36);
    if (v428)
    {
      v429 = *(v428 + 272);
      if (v429)
      {
        v430 = std::__shared_weak_count::lock(v429);
        if (v430)
        {
          v431 = *(v428 + 264);
          if (v431)
          {
            LOBYTE(__p[0]) = *(*(v528 + 29) + 17) ^ 1;
            v542.__r_.__value_.__r.__words[0] = v431;
            LOBYTE(v529.f64[0]) = 2;
            std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelTileCollisionInfo *,md::LabelCollidableItem::ItemType,0>();
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v430);
        }
      }
    }

    *(v516 + 135) = 0;
  }

  if (!v507 || (v432 = v528, *(v528 + 201) != 1))
  {
    if (!v502)
    {
      goto LABEL_829;
    }

    v521 = v528;
    if (*(v528 + 201) != 2)
    {
      goto LABEL_829;
    }

    v436 = v502[25];
    if (v436)
    {
      v437 = *(v436 + 24);
      if (*(v516 + 130) != v437)
      {
        *(v516 + 130) = v437;
        v542.__r_.__value_.__r.__words[0] = md::LabelRouteCollisionInfo::tileCollisionInfo(*(v436 + 96), *(v516 + 9), v523);
        if (v542.__r_.__value_.__r.__words[0])
        {
          LOBYTE(__p[0]) = *(*(v521 + 29) + 17) ^ 1;
          std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelRouteTileCollisionInfo *&,0>();
        }

        v501 = *(v516 + 61);
        *(v516 + 60) = 0;
        *(v516 + 61) = 0;
        if (v501)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v501);
        }
      }

      v438 = v502[26];
      v525 = v502[27];
      if (v438 == v525)
      {
        goto LABEL_832;
      }
    }

    else
    {
      v438 = v502[26];
      v525 = v502[27];
      if (v438 == v525)
      {
        goto LABEL_829;
      }
    }

    v439 = 0;
    v440 = (v516 + 536);
    do
    {
      v441 = *v440;
      v442 = (v516 + 536);
      v443 = *v440;
      if (!*v440)
      {
LABEL_797:
        operator new();
      }

      do
      {
        v444 = *(v443 + 28);
        _CF = v444 >= v439;
        v445 = v444 < v439;
        if (_CF)
        {
          v442 = v443;
        }

        v443 = v443[v445];
      }

      while (v443);
      v446 = (v516 + 536);
      if (v442 == v440 || (v446 = (v516 + 536), *(v442 + 28) > v439) || (v446 = v442, *(v442 + 8) != *(*v438 + 24)))
      {
        v447 = *v438;
        if (!v441)
        {
          goto LABEL_797;
        }

        while (1)
        {
          while (1)
          {
            v448 = v441;
            v449 = *(v441 + 28);
            if (v449 <= v439)
            {
              break;
            }

            v441 = *v448;
            if (!*v448)
            {
              goto LABEL_797;
            }
          }

          if (v449 >= v439)
          {
            break;
          }

          v441 = *(v448 + 8);
          if (!v441)
          {
            goto LABEL_797;
          }
        }

        *(v448 + 32) = *(*v438 + 24);
        v542.__r_.__value_.__r.__words[0] = md::LabelRouteCollisionInfo::tileCollisionInfo(*(v447 + 96), *(v377 + 9), v523);
        if (v542.__r_.__value_.__r.__words[0])
        {
          LOBYTE(__p[0]) = *(*(v521 + 29) + 17) ^ 1;
          std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelRouteTileCollisionInfo *&,0>();
        }

        v377 = v516;
        if (v446 != v440)
        {
          v450 = v446[1];
          v451 = v446;
          if (v450)
          {
            do
            {
              v452 = v450;
              v450 = *v450;
            }

            while (v450);
          }

          else
          {
            do
            {
              v452 = v451[2];
              _ZF = *v452 == v451;
              v451 = v452;
            }

            while (!_ZF);
          }

          if (*(v516 + 66) == v446)
          {
            *(v516 + 66) = v452;
          }

          --*(v516 + 68);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(v516 + 67), v446);
          operator delete(v446);
          v453 = *(v516 + 63);
          if (v453)
          {
            v454 = v516 + 504;
            v455 = *(v516 + 63);
            do
            {
              v456 = v455[32];
              _CF = v456 >= v439;
              v457 = v456 < v439;
              if (_CF)
              {
                v454 = v455;
              }

              v455 = *&v455[8 * v457];
            }

            while (v455);
            if (v454 != v516 + 504 && v454[32] <= v439)
            {
              v458 = *(v454 + 1);
              v459 = v454;
              if (v458)
              {
                do
                {
                  v460 = v458;
                  v458 = *v458;
                }

                while (v458);
              }

              else
              {
                do
                {
                  v460 = *(v459 + 2);
                  _ZF = *v460 == v459;
                  v459 = v460;
                }

                while (!_ZF);
              }

              if (*(v516 + 62) == v454)
              {
                *(v516 + 62) = v460;
              }

              --*(v516 + 64);
              std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v453, v454);
              v461 = *(v454 + 6);
              if (v461)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v461);
              }

              operator delete(v454);
            }
          }
        }
      }

      ++v439;
      ++v438;
    }

    while (v438 != v525);
    goto LABEL_832;
  }

  v433 = v507[41];
  if (!v433)
  {
LABEL_829:
    *(v516 + 130) = 0;
    v462 = *(v516 + 61);
    *(v516 + 60) = 0;
    *(v516 + 61) = 0;
    if (v462)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v462);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v516 + 67));
    *(v516 + 66) = v516 + 536;
    *(v516 + 536) = 0u;
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v516 + 63));
    *(v516 + 63) = 0;
    *(v516 + 64) = 0;
    *(v516 + 62) = v516 + 504;
    goto LABEL_832;
  }

  v434 = *(v433 + 48);
  if (*(v516 + 130) != v434)
  {
    *(v516 + 130) = v434;
    v435 = *(v433 + 304);
    if (v435)
    {
      v542.__r_.__value_.__r.__words[0] = md::LabelRouteCollisionInfo::tileCollisionInfo(v435, *(v516 + 9), v523);
      if (v542.__r_.__value_.__r.__words[0])
      {
        LOBYTE(__p[0]) = *(*(v432 + 29) + 17) ^ 1;
        std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelRouteTileCollisionInfo *&,0>();
      }
    }

    v500 = *(v516 + 61);
    *(v516 + 60) = 0;
    *(v516 + 61) = 0;
    if (v500)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v500);
    }
  }

LABEL_832:
  v463 = v528;
  v464 = *(v377 + 8);
  v465 = (*(**(*(v528 + 21) + 32) + 80))(*(*(v528 + 21) + 32));
  if (v464 == 255 && v465 && (v466 = *(v465 + 200)) != 0 && *(v503 + 1208) != *(v503 + 1216))
  {
    v467 = *(v377 + 9);
    v522 = *(v503 + 1197);
    v468 = *(v466 + 24);
    v469 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v470 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    if (v467 >= 0xF)
    {
      v467 = 15;
    }

    *__p = v469;
    v532 = v470;
    v471 = *(v377 + 52);
    v472 = (v377 + 424);
    if (v471 != (v377 + 424))
    {
      v508 = v467;
      v509 = v468;
      v473 = 0;
      v474 = 0;
      do
      {
        v475 = v471[4];
        if (v475[1367] == 1 && (v475[1369] != v522 || v475[1368] != v509 || v475[1370] < v508))
        {
          v476 = v473;
          v477 = v474 >> 3;
          if (((v474 >> 3) + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v474 >> 3 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>((v474 >> 3) + 1);
          }

          *(8 * v477) = v475;
          v526 = 8 * v477 + 8;
          memcpy(0, 0, v474);
          v472 = (v377 + 424);
          v478 = (*(**(v471[4] + 8) + 112))(*(v471[4] + 8), v471[4] + 48);
          v479 = md::LabelPoint::mercatorPoint(v478);
          v480 = v476 >> 4;
          if (((v476 >> 4) + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v476 >> 4 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v476 >> 4) + 1);
          }

          *(16 * v480) = *v479;
          if (v476)
          {
            v481 = 0;
            v482 = 0;
            do
            {
              v483 = *v481++;
              *v482++ = v483;
            }

            while (v481 != v476);
          }

          v473 = 16 * v480 + 16;
          v474 = v526;
          v484 = 0;
          v485 = 16 * v480;
          v486 = __p;
          v487 = 1;
          do
          {
            v488 = v487;
            *v486 = fmin(*(v485 + 8 * v484), *v486);
            *&v532.i64[v484] = fmax(*&v532.i64[v484], *(v485 + 8 * v484));
            v486 = &__p[1];
            v484 = 1;
            v487 = 0;
          }

          while ((v488 & 1) != 0);
        }

        v489 = v471[1];
        if (v489)
        {
          do
          {
            v490 = v489;
            v489 = *v489;
          }

          while (v489);
        }

        else
        {
          do
          {
            v490 = v471[2];
            _ZF = *v490 == v471;
            v471 = v490;
          }

          while (!_ZF);
        }

        v471 = v490;
      }

      while (v490 != v472);
      if (v474)
      {
        v491 = 0;
        v492 = 0;
        v493 = __p;
        do
        {
          v494 = *&v532.i64[v492];
          v495 = *v493;
          if (v491)
          {
            break;
          }

          v491 = 1;
          v493 = &__p[1];
          v492 = 1;
        }

        while (v494 >= v495);
        v529 = 0uLL;
        v530 = 0;
        if (((v474 >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v377 = v516;
    }
  }

  else
  {
    v496 = *(v377 + 52);
    if (v496 != (v377 + 424))
    {
      do
      {
        v497 = v496[4];
        if (*(v497 + 1367) == 1)
        {
          *(v497 + 1368) = 0;
          *(v497 + 1370) = 0;
          if ((*(**(v497 + 8) + 536))(*(v497 + 8), 0xFFFFFFFFLL))
          {
            md::LabelFeatureStyler::restyleFeature(*(v463 + 37), *(v496[4] + 8));
          }
        }

        v498 = v496[1];
        if (v498)
        {
          do
          {
            v499 = v498;
            v498 = *v498;
          }

          while (v498);
        }

        else
        {
          do
          {
            v499 = v496[2];
            _ZF = *v499 == v496;
            v496 = v499;
          }

          while (!_ZF);
        }

        v496 = v499;
      }

      while (v499 != (v377 + 424));
    }
  }

  *(v377 + 65) = 0;
  *(v377 + 132) = 0;
  *(v377 + 136) = 0;
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(v541[0]);
}

void sub_1B2BCF658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(*(v42 - 176));
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<double,2,1>>(v5, v4);
  }

  return a1;
}

void md::LineLabelFeature::updatePositions(md::LineLabelFeature *this, md::LabelManager *a2, int a3, md::LabelMapTile *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(this + 10))
  {
    v9 = this + 192;
    v8 = *(this + 24);
    v10 = atomic_load(v8 + 155);
    if (v10)
    {
      md::LabelLineStore::consumeWorkUnits(v8);
    }

    v11 = *(a2 + 53);
    (*(*this + 480))(this, 0);
    if (*(v11 + 424) > 0.0 && a4 && (*(v11 + 28) & 1) != 0)
    {
      for (i = 0; i != 40; i += 10)
      {
        v13 = &v50[i];
        *v13 = xmmword_1B33B0710;
        *(v13 + 2) = 0;
        *(v13 + 16) = 0;
      }

      v14 = *(*v9 + 32);
      v16 = *(*v9 + 40);
      v17 = *(*v9 + 48);
      v43 = *(*v9 + 24);
      v15 = v43;
      v44 = v14;
      v47 = (*(*a4 + 16))(a4, &v43, xmmword_1B33B0710);
      v48 = v18;
      v49 = v19;
      v45.i8[0] = 0;
      v46 = 0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v47, &v45, 1, 0, v50, 1.0);
      v43 = v15;
      v44 = v17;
      v47 = (*(*a4 + 16))(a4, &v43);
      v48 = v20;
      v49 = v21;
      v45.i8[0] = 0;
      v46 = 0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v47, &v45, 1, 0, v51, 1.0);
      v43 = v16;
      v44 = v17;
      v47 = (*(*a4 + 16))(a4, &v43);
      v48 = v22;
      v49 = v23;
      v45.i8[0] = 0;
      v46 = 0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v47, &v45, 1, 0, v52, 1.0);
      v43 = v16;
      v44 = v14;
      v47 = (*(*a4 + 16))(a4, &v43);
      v48 = v24;
      v49 = v25;
      v45.i8[0] = 0;
      v46 = 0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v47, &v45, 1, 0, v53, 1.0);
      v26 = *v50;
      v47 = COERCE_DOUBLE(__PAIR64__(v51[0], v50[0]));
      v48 = __PAIR64__(v53[0], v52[0]);
      v27 = &v47;
      v28 = 4;
      v29 = *v50;
      do
      {
        v30 = *(&v47 + v28);
        v31 = v30 < v29;
        v29 = fminf(v30, v29);
        if (v31)
        {
          v27 = (&v47 + v28);
        }

        v28 += 4;
      }

      while (v28 != 16);
      v32 = *v27;
      v47 = COERCE_DOUBLE(__PAIR64__(v51[0], v50[0]));
      v33 = 4;
      v34 = &v47;
      v48 = __PAIR64__(v53[0], v52[0]);
      do
      {
        v35 = *(&v47 + v33);
        v31 = v26 < v35;
        v26 = fmaxf(v26, v35);
        if (v31)
        {
          v34 = (&v47 + v33);
        }

        v33 += 4;
      }

      while (v33 != 16);
      v36 = *v34;
      v37 = v32;
      v38 = *(this + 136);
      if (v32 <= v38)
      {
        v37 = *(this + 136);
      }

      if (v37 >= a3)
      {
        v39 = a3;
      }

      else
      {
        v39 = v37;
      }

      v40 = v36;
      if (v36 <= v38)
      {
        v40 = *(this + 136);
      }

      if (v40 < a3)
      {
        LOBYTE(a3) = v40;
      }

      while (v39 <= a3)
      {
        v41 = md::LineLabelFeature::roadMetricsForZ(this, v39, v11);
        if (v41)
        {
          md::LineLabelPlacer::updatePlacements(v9, v39, v41, a2, *(this + 433));
          *(this + 433) = 0;
        }

        ++v39;
      }
    }

    else
    {
      v42 = md::LineLabelFeature::roadMetricsForZ(this, a3, v11);
      if (v42)
      {
        md::LineLabelPlacer::updatePlacements(v9, a3, v42, a2, *(this + 433));
        *(this + 433) = 0;
      }
    }
  }
}

uint64_t **md::LineLabelFeature::roadMetricsForZ(md::LineLabelFeature *this, int a2, const LabelLayoutContext *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 568))(this, 0, 0, 0, 0);
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = *(this + 41);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = this + 328;
  do
  {
    v10 = v8[32];
    _CF = v10 >= a2;
    v12 = v10 < a2;
    if (_CF)
    {
      v9 = v8;
    }

    v8 = *&v8[8 * v12];
  }

  while (v8);
  if (v9 == (this + 328) || v9[32] > a2)
  {
LABEL_10:
    v13 = *(a3 + 11);
    md::LabelStyle::setZoom(*v6, a2);
    v14 = *(v7 + 33);
    if (!v14)
    {
      v15 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(v7);
      v14 = *v15;
      *(v7 + 33) = *v15;
    }

    v60 = *(v7 + 16);
    v16 = ldexp(1.0, a2);
    if ((*(*this + 480))(this, 0))
    {
      v17 = (*(*this + 480))(this, 0);
      v18 = *(v17 + 23);
      if ((v18 & 0x8000000000000000) != 0)
      {
        v18 = *(v17 + 8);
      }

      v19 = vcvtd_n_f64_u64(v18, 1uLL);
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    v22 = 0.00130208333 / v16;
    __asm { FMOV            V1.2D, #3.0 }

    _Q1.f64[0] = v20;
    v27 = vdivq_f64(_Q1, vdupq_lane_s64(v60, 0));
    v28 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 45) - *(this + 44)) >> 4);
    if (*(this + 45) == *(this + 44))
    {
      v29 = 0.0;
    }

    else
    {
      v29 = *(v14 + 36) * (v28 - 1);
    }

    v30 = v22 * (v29 + (v28 * 15.0));
    v31 = *(v14 + 44);
    __asm { FMOV            V0.2D, #0.5 }

    v62 = v27;
    v33 = vmulq_f64(v27, _Q0);
    v68 = v33;
    v65 = v30;
    v69 = v30;
    v70 = v22 * 15.0;
    v57 = v22 * 15.0;
    v58 = v22;
    v34 = 1;
    v35 = &v68;
    do
    {
      v36 = v68.f64[v34];
      _NF = v33.f64[0] < v36;
      v33.f64[0] = fmax(v33.f64[0], v36);
      if (_NF)
      {
        v35 = (&v68 + v34 * 8);
      }

      ++v34;
    }

    while (v34 != 4);
    v63 = v35->f64[0];
    if ((*(*this + 672))(this))
    {
      v38 = *(v14 + 24);
      if (v38 <= 0.0)
      {
        v38 = 300.0;
      }

      *v37.i32 = fmaxf(((*(a3 + 267) + *(a3 + 266)) * 0.375) / v13, 10.0);
      v39 = v58 * fminf(fmaxf(v38, 10.0), *v37.i32);
      __asm { FMOV            V2.2S, #10.0 }

      v41 = vminnm_f32(vmaxnm_f32(*(v14 + 28), _D2), vdup_lane_s32(v37, 0));
      v59 = vmulq_n_f64(vcvtq_f64_f32(v41), v58);
      v42 = v41.i32[1];
    }

    else
    {
      __asm { FMOV            V1.2D, #1.0 }

      v57 = 1.0;
      v59 = _Q1;
      v42 = 0;
      v39 = 1.0;
    }

    v61 = 1.5 / *&v60;
    v44 = *(v14 + 8);
    v45 = (*(v14 + 56) << 40) | (*(v14 + 16) << 48) | (*(v14 + 20) << 56);
    if ((*(*this + 344))(this))
    {
      v46 = v45 | *(v14 + 60);
      if (*(a3 + 14))
      {
LABEL_32:
        v46 |= *(v14 + 59) << 8;
      }
    }

    else
    {
      if ((*(v14 + 56) & 1) == 0)
      {
        v47 = 0;
        goto LABEL_38;
      }

      v46 = v45 | *(v14 + 60);
      if (*(a3 + 14) == 1)
      {
        goto LABEL_32;
      }
    }

    v45 = v46 & 0xFFFFFF000000FFFFLL | (*(v14 + 58) << 16);
    v47 = *(v14 + 57) << 24;
LABEL_38:
    v48 = (*(*this + 664))(this);
    v49 = 0x100000000;
    if (!v48)
    {
      v49 = 0;
    }

    v50 = v45 | v47 | v49;
    if (*(this + 144))
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFF00) + 1;
    }

    else
    {
      v51 = v50;
    }

    v52.f64[0] = v63;
    v53.f64[0] = v65;
    v52.f64[1] = v61;
    v53.f64[1] = v57;
    if (*(*(this + 24) + 159) == 1)
    {
      v54 = v62.f64[0] * 40075017.0;
      v39 = v39 * 40075017.0;
      v55 = vdupq_n_s64(0x41831BF848000000uLL);
      v59 = vmulq_f64(v59, v55);
      v52 = vmulq_f64(v52, v55);
      v53 = vmulq_f64(v53, v55);
    }

    else
    {
      v54 = v62.f64[0];
    }

    v64 = v52;
    v66 = v53;
    v67 = a2;
    *&v68.f64[0] = &v67;
    v56 = std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(this + 40, a2, &v68);
    *(v56 + 5) = v39;
    *(v56 + 3) = v59;
    *(v56 + 8) = v54;
    v56[9] = *&v62.f64[1];
    *(v56 + 5) = v66;
    *(v56 + 6) = v64;
    *(v56 + 28) = v42;
    *(v56 + 29) = v31;
    *(v56 + 30) = v44;
    *(v56 + 124) = v51;
  }

  v67 = a2;
  *&v68.f64[0] = &v67;
  return std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(this + 40, a2, &v68) + 5;
}