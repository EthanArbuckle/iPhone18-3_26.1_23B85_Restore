void LiGroup::removeChild(LiGroup *this@<X0>, int a2@<W1>, PCSharedCount *a3@<X8>)
{
  LODWORD(v3) = a2;
  if (a2 < 0 || *(this + 145) <= a2)
  {
    PCArray_base::badIndex(this);
  }

  v5 = (*(this + 73) + 16 * a2);
  a3->var0 = v5->var0;
  PCSharedCount::PCSharedCount(a3 + 1, v5 + 1);
  LODWORD(v6) = *(this + 145) - 1;
  if (v6 > v3)
  {
    v3 = v3;
    v7 = 16 * v3;
    do
    {
      v8 = *(this + 73) + v7;
      *v8 = *(v8 + 16);
      PCSharedCount::PCSharedCount(&v10, (v8 + 24));
      PCSharedCount::operator=((v8 + 8), &v10);
      ++v3;
      PCSharedCount::~PCSharedCount(&v10);
      v6 = *(this + 145) - 1;
      v7 += 16;
    }

    while (v3 < v6);
  }

  if (*(this + 144) < v6)
  {
    v9 = 2 * v6 + 1;
  }

  else
  {
    v9 = *(this + 144);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 568, v6, v9);
}

void LiGroup::removeChild(LiGroup *this, LiSceneObject *a2)
{
  v3 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(&v4, a2);
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::remove(this + 568, &v3);
  PCSharedCount::~PCSharedCount(&v4);
}

uint64_t PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::remove(uint64_t a1, void *a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (*(*(a1 + 16) + 16 * v5) == *a2)
    {
      LODWORD(v7) = v2 - 1;
      if (v2 - 1 > v5)
      {
        v8 = v5;
        v9 = 16 * v5;
        do
        {
          v10 = *(a1 + 16) + v9;
          *v10 = *(v10 + 16);
          PCSharedCount::PCSharedCount(&v13, (v10 + 24));
          PCSharedCount::operator=((v10 + 8), &v13);
          ++v8;
          PCSharedCount::~PCSharedCount(&v13);
          v7 = *(a1 + 12) - 1;
          v9 += 16;
        }

        while (v8 < v7);
      }

      if (*(a1 + 8) < v7)
      {
        v11 = 2 * v7 + 1;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, v7, v11);
      v6 = (v6 + 1);
      v2 = *(a1 + 12);
    }

    else
    {
      ++v5;
    }
  }

  while (v5 < v2);
  return v6;
}

double LiGroup::viewProjectionTransform@<D0>(LiGroup *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return LiGroup::viewProjectionTransform(this, a2);
}

double LiGroup::viewProjectionTransform(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 600);
  if (v4)
  {
    (*(*v4 + 240))(v15);
    v5 = *(a1 + 600);
    if (!v5)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v5 + 192))(v14);
    v6 = *(a1 + 600);
    if (!v6)
    {
      throw_PCNullPointerException(1);
    }

    v7 = (*(*v6 + 688))(v6);
    if (v7 != 1.0)
    {
      *v15 = v7 * *v15;
      v16 = v7 * v16;
      v17 = v7 * v17;
      v18 = v7 * v18;
    }

    PCMatrix44Tmpl<double>::operator*(v14, v15, v13);
    if (v13 != a2)
    {
      for (i = 0; i != 128; i += 32)
      {
        v10 = (a2 + i);
        v8 = *&v13[i];
        v11 = *&v13[i + 16];
        *v10 = v8;
        v10[1] = v11;
      }
    }
  }

  else
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    *&v8 = 0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
  }

  return *&v8;
}

uint64_t LiGroup::setCamera(uint64_t *a1, const PCSharedCount *a2)
{
  a1[75] = a2->var0;
  PCSharedCount::PCSharedCount(&v4, a2 + 1);
  PCSharedCount::operator=(a1 + 76, &v4);
  PCSharedCount::~PCSharedCount(&v4);
  return (*(*a1 + 208))(a1, 1);
}

PCArray_base *LiGroup::print(uint64_t a1, void *a2, uint64_t a3)
{
  LiImageSource::printIndent(a2, a3);
  v6 = *(a1 + 580);
  v7 = (*(*a1 + 264))(a1);
  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(", 2);
  if (*(a1 + 512))
  {
    v11 = *(a1 + 512);
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", compositeOrder=", 18);
  MEMORY[0x2666E9B50](a2, *(a1 + 528));
  if (*(a1 + 532) || *(a1 + 536))
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B50](v13, *(a1 + 532));
    if (*(a1 + 540) == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "(r)", 3);
    }
  }

  if (*(a1 + 536))
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B50](v14, *(a1 + 536));
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", blendMode=", 12);
  v16 = LiSceneObject::blendMode(a1);
  operator<<(v15, v16);
  if ((*(a1 + 552) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", doesReflect=false", 19);
  }

  if ((*(a1 + 553) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", visibleOutsideReflection=false", 32);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "layerOrder=", 11);
  if (*(a1 + 592))
  {
    v19 = "true";
  }

  else
  {
    v19 = "false";
  }

  if (*(a1 + 592))
  {
    v20 = 4;
  }

  else
  {
    v20 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "is360=", 6);
  if (*(a1 + 593))
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (*(a1 + 593))
  {
    v24 = 4;
  }

  else
  {
    v24 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
  if (*(a1 + 594) == 1)
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "project=", 8);
    if (*(a1 + 594))
    {
      v27 = "true";
    }

    else
    {
      v27 = "false";
    }

    if (*(a1 + 594))
    {
      v28 = 4;
    }

    else
    {
      v28 = 5;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
  }

  if ((*(a1 + 644) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", no lights in", 14);
  }

  if ((*(a1 + 645) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", no lights out", 15);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
  v30 = MEMORY[0x2666E9B50](v29, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " child", 6);
  if (v6 != 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ren", 3);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ")\n", 2);
  (*(*a1 + 120))(a1, a2, a3);
  result = *(a1 + 600);
  if (result)
  {
    result = (*(*result + 752))(result, a2, (a3 + 2));
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (i >= *(a1 + 580))
      {
        PCArray_base::badIndex(result);
      }

      v33 = *(*(a1 + 584) + 16 * i);
      result = (*(*v33 + 112))(v33, a2, (a3 + 1));
    }
  }

  return result;
}

uint64_t LiGroup::LiGroup(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = LiSceneObject::LiSceneObject(a1, a2 + 1, a3);
  v7 = *a2;
  *v6 = *a2;
  *(a1 + *(v7 - 24)) = a2[5];
  *(a1 + 568) = &unk_287263058;
  *(a1 + 576) = 0u;
  *(a1 + 592) = *(a3 + 592);
  *(a1 + 593) = *(a3 + 593);
  *(a1 + 594) = *(a3 + 594);
  *(a1 + 600) = *(a3 + 600);
  PCSharedCount::PCSharedCount((a1 + 608), (a3 + 608));
  v9 = *(a3 + 616);
  *(a1 + 628) = *(a3 + 628);
  *(a1 + 616) = v9;
  *(a1 + 644) = 257;
  v10 = *(a3 + 580);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if (i >= *(a3 + 580))
      {
        PCArray_base::badIndex(v8);
      }

      v8 = *(*(a3 + 584) + 16 * i);
      if (v8)
      {
        if (v8)
        {
          v8 = (*(*a1 + 152))(a1, v8);
        }
      }
    }
  }

  *(a1 + 644) = *(a3 + 644);
  return a1;
}

void sub_25FF9365C(_Unwind_Exception *a1)
{
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(v3);
  LiSceneObject::~LiSceneObject(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t LiSceneObject::LiSceneObject(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  memcpy((a1 + 8), (a3 + 8), 0x189uLL);
  v7 = *(a3 + 416);
  *(a1 + 408) = *(a3 + 408);
  *(a1 + 416) = v7;
  *(a1 + 424) = *(a3 + 424);
  *(a1 + 432) = *(a3 + 432);
  *(a1 + 448) = *(a3 + 448);
  v8 = *(a3 + 464);
  *(a1 + 456) = *(a3 + 456);
  *(a1 + 464) = v8;
  *(a1 + 472) = *(a3 + 472);
  *(a1 + 488) = *(a3 + 488);
  PCSharedCount::PCSharedCount((a1 + 496), (a3 + 496));
  *(a1 + 504) = *(a3 + 504);
  v9 = *(a3 + 512);
  *(a1 + 512) = v9;
  if (v9)
  {
    atomic_fetch_add((v9 - 12), 1u);
  }

  v10 = *(a3 + 520);
  v11 = *(a3 + 536);
  *(a1 + 549) = *(a3 + 549);
  *(a1 + 520) = v10;
  *(a1 + 536) = v11;
  return a1;
}

uint64_t LiGroup::LiGroup(uint64_t a1, uint64_t a2)
{
  *(a1 + 648) = &unk_2872DEA38;
  *(a1 + 656) = 0;
  *(a1 + 664) = 1;
  LiSceneObject::LiSceneObject(a1, &off_287262ED0, a2);
  *a1 = &unk_287262D80;
  *(a1 + 648) = &unk_287262EB0;
  *(a1 + 568) = &unk_287263058;
  *(a1 + 576) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 594) = *(a2 + 594);
  *(a1 + 600) = *(a2 + 600);
  PCSharedCount::PCSharedCount((a1 + 608), (a2 + 608));
  v5 = *(a2 + 616);
  *(a1 + 628) = *(a2 + 628);
  *(a1 + 616) = v5;
  *(a1 + 644) = 257;
  v6 = *(a2 + 580);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (i >= *(a2 + 580))
      {
        PCArray_base::badIndex(v4);
      }

      v4 = *(*(a2 + 584) + 16 * i);
      if (v4)
      {
        if (v4)
        {
          v4 = (*(*a1 + 152))(a1, v4);
        }
      }
    }
  }

  *(a1 + 644) = *(a2 + 644);
  return a1;
}

void sub_25FF93A28(_Unwind_Exception *a1)
{
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(v3);
  LiSceneObject::~LiSceneObject(v1, &off_287262ED0);
  *(v1 + 648) = v2;
  *(v1 + 664) = 0;
  PCWeakCount::~PCWeakCount((v1 + 656));
  _Unwind_Resume(a1);
}

PCArray_base *LiGroup::widenBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = PCMatrix44Tmpl<double>::operator*(a3, (a1 + 8), v13);
  v10 = *(a1 + 580);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if (i >= *(a1 + 580))
      {
        PCArray_base::badIndex(result);
      }

      v12 = *(*(a1 + 584) + 16 * i);
      if (!v12)
      {
        throw_PCNullPointerException(1);
      }

      result = (*(*v12 + 128))(v12, a2, v13, a4, a5);
    }
  }

  return result;
}

double LiGroup::cast@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0u;
  v8 = (a4 + 8);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  PCSharedCount::PCSharedCount((a4 + 72));
  v9 = a2[1];
  v47[0] = *a2;
  v47[1] = v9;
  v47[2] = a2[2];
  v10 = *(a1 + 88);
  v46[4] = *(a1 + 72);
  v46[5] = v10;
  v11 = *(a1 + 120);
  v46[6] = *(a1 + 104);
  v46[7] = v11;
  v12 = *(a1 + 24);
  v46[0] = *(a1 + 8);
  v46[1] = v12;
  v13 = *(a1 + 56);
  v46[2] = *(a1 + 40);
  v46[3] = v13;
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  if (PCMatrix44Tmpl<double>::invert(&v36, v46, 0.0))
  {
    v15 = PCRay3<double>::transform(v47, &v36);
    v27 = a2;
    v16 = *(a1 + 580);
    if (v16 >= 1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (i >= *(a1 + 580))
        {
          PCArray_base::badIndex(v15);
        }

        v18 = *(*(a1 + 584) + 16 * i);
        *&v30 = v18;
        if (v18)
        {
          v19 = (v18 + *(*v18 - 24));
        }

        else
        {
          v19 = 0;
        }

        PCSharedCount::PCSharedCount(&v30 + 1, v19);
        v20 = *(a3 + 20);
        if (*(a3 + 16) <= v20)
        {
          v21 = 2 * (v20 + 1) + 1;
        }

        else
        {
          v21 = *(a3 + 16);
        }

        PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a3 + 8, v20 + 1, v21);
        v22 = *(a3 + 24) + 16 * *(a3 + 20);
        *(v22 - 16) = v30;
        PCSharedCount::PCSharedCount(&v48, &v30 + 1);
        PCSharedCount::operator=((v22 - 8), &v48);
        PCSharedCount::~PCSharedCount(&v48);
        PCSharedCount::~PCSharedCount(&v30 + 1);
        (*(*v18 + 96))(&v30, v18, v47, a3);
        PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::pop(a3 + 8, &v28);
        PCSharedCount::~PCSharedCount(&v29);
        if (v30 == 1 && (*a4 != 1 || *(&v30 + 1) < *v8))
        {
          v23 = v31;
          *a4 = v30;
          *(a4 + 16) = v23;
          v24 = v33;
          *(a4 + 32) = v32;
          *(a4 + 48) = v24;
          *(a4 + 64) = v34;
          PCSharedCount::PCSharedCount(&v48, &v35);
          PCSharedCount::operator=((a4 + 72), &v48);
          PCSharedCount::~PCSharedCount(&v48);
        }

        PCSharedCount::~PCSharedCount(&v35);
      }
    }

    if (*a4)
    {
      v30 = 0uLL;
      *&v31 = 0;
      PCMatrix44Tmpl<double>::transform<double>(v46, (a4 + 40), &v30);
      *(a4 + 16) = v30;
      *(a4 + 32) = v31;
      v25 = *(a4 + 32) - v27[1].f64[0];
      v26 = vsubq_f64(*(a4 + 16), *v27);
      result = sqrt(vaddvq_f64(vmulq_f64(v26, v26)) + v25 * v25);
      *(a4 + 8) = result;
    }
  }

  return result;
}

void PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::pop(uint64_t a1@<X0>, PCSharedCount *a2@<X8>)
{
  v4 = *(a1 + 16) + 16 * *(a1 + 12);
  a2->var0 = *(v4 - 16);
  PCSharedCount::PCSharedCount(a2 + 1, (v4 - 8));
  v5 = *(a1 + 12) - 1;
  if (*(a1 + 8) < v5)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, v5, v6);
}

uint64_t LiGroup::getAttributesPerRenderInstance(LiGroup *this)
{
  return this + 616;
}

{
  return this + 616;
}

__n128 LiGroup::setAttributesPerRenderInstance(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 627) = *(a2 + 11);
  *(a1 + 616) = result;
  return result;
}

void PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287263058;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void LiLightFilter::LiLightFilter(LiLightFilter *this)
{
  *(this + 108) = &unk_2872DEA38;
  *(this + 109) = 0;
  *(this + 880) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872631A8);
  *this = &unk_287263098;
  *(this + 108) = &unk_287263188;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = &unk_2871F25A8;
  *(this + 64) = 0;
  LiMaterialProperties::LiMaterialProperties((this + 72));
  *(this + 69) = 0x3FF0000000000000;
  *(this + 64) = 0x3FF0000000000000;
  *(this + 59) = 0x3FF0000000000000;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = 0x3FF0000000000000;
  *(this + 80) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 37) = _Q1;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 106) = 0x3FF0000000000000;
  *(this + 101) = 0x3FF0000000000000;
  *(this + 96) = 0x3FF0000000000000;
  *(this + 45) = _Q1;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 856) = 0;
}

void sub_25FF941C4(_Unwind_Exception *a1)
{
  v4 = v3;
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v4);
  LiImageFilter::~LiImageFilter(v1, &off_2872631A8);
  *(v1 + 864) = v2;
  *(v1 + 880) = 0;
  PCWeakCount::~PCWeakCount((v1 + 872));
  _Unwind_Resume(a1);
}

uint64_t LiLightFilter::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a2 + 52);
    if (*(a1 + 48) < v4)
    {
      v5 = 2 * v4 + 1;
    }

    else
    {
      v5 = *(a1 + 48);
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a1 + 40, v4, v5);
    if (*(a2 + 52) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        LiLight::operator=(*(a1 + 56) + v6, *(a2 + 56) + v6);
        ++v7;
        v6 += 944;
      }

      while (v7 < *(a2 + 52));
    }

    *(a1 + 64) = *(a2 + 64);
    LiMaterialProperties::operator=(a1 + 72, a2 + 72);
    v8 = 0;
    v9 = a2 + 472;
    v10 = a1 + 472;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v10 + i) = *(v9 + i);
      }

      ++v8;
      v10 += 32;
      v9 += 32;
    }

    while (v8 != 4);
    v12 = 0;
    v13 = a2 + 600;
    v14 = a1 + 600;
    do
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v14 + j) = *(v13 + j);
      }

      ++v12;
      v14 += 32;
      v13 += 32;
    }

    while (v12 != 4);
    v16 = 0;
    v17 = a2 + 728;
    v18 = a1 + 728;
    do
    {
      for (k = 0; k != 32; k += 8)
      {
        *(v18 + k) = *(v17 + k);
      }

      ++v16;
      v18 += 32;
      v17 += 32;
    }

    while (v16 != 4);
    *(a1 + 856) = *(a2 + 856);
  }

  return a1;
}

void LiLightFilter::LiLightFilter(LiLightFilter *this, const LiLightFilter *a2)
{
  *(this + 108) = &unk_2872DEA38;
  *(this + 109) = 0;
  *(this + 880) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872631A8, a2);
  *this = &unk_287263098;
  *(this + 108) = &unk_287263188;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = &unk_2871F25A8;
  *(this + 64) = 0;
  LiMaterialProperties::LiMaterialProperties((this + 72));
  *(this + 69) = 0x3FF0000000000000;
  *(this + 64) = 0x3FF0000000000000;
  *(this + 59) = 0x3FF0000000000000;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = 0x3FF0000000000000;
  *(this + 80) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 37) = _Q1;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 106) = 0x3FF0000000000000;
  *(this + 101) = 0x3FF0000000000000;
  *(this + 96) = 0x3FF0000000000000;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 45) = _Q1;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  LiLightFilter::operator=(this, a2);
}

void sub_25FF944A0(_Unwind_Exception *a1)
{
  LiMaterialProperties::~LiMaterialProperties((v1 + 72));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v3);
  LiImageFilter::~LiImageFilter(v1, &off_2872631A8);
  *(v1 + 864) = v2;
  *(v1 + 880) = 0;
  PCWeakCount::~PCWeakCount((v1 + 872));
  _Unwind_Resume(a1);
}

void LiLightFilter::~LiLightFilter(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7].var0;
  LiMaterialProperties::~LiMaterialProperties(&this[9]);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&this[5]);
  v5 = a2[1].var0;
  this->var0 = v5;
  *(this + v5[-1].info) = a2[6].var0;
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 2);
}

void LiLightFilter::~LiLightFilter(PCSharedCount *this)
{
  *(v1 + 864) = &unk_2872DEA38;
  *(v1 + 880) = 0;
  PCWeakCount::~PCWeakCount((v1 + 872));
}

{
  *(v1 + 864) = &unk_2872DEA38;
  *(v1 + 880) = 0;
  PCWeakCount::~PCWeakCount((v1 + 872));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiLightFilter::~LiLightFilter(LiLightFilter *this)
{
  *(v1 + 864) = &unk_2872DEA38;
  *(v1 + 880) = 0;
  v2 = (v1 + 872);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiLightFilter::~LiLightFilter((this + *(*this - 24)));
}

double *LiLightFilter::surfaceNormal@<X0>(double *result@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  *a3 = 0.0;
  a3[1] = 0.0;
  a3[2] = 1.0;
  if ((result[107] & 1) == 0)
  {
    v20[0] = 0.0;
    v20[1] = 0.0;
    v21 = xmmword_2603426F0;
    v4 = a2[5];
    v16 = a2[4];
    v17 = v4;
    v5 = a2[7];
    v18 = a2[6];
    v19 = v5;
    v6 = a2[1];
    v12 = *a2;
    v13 = v6;
    v7 = a2[3];
    v14 = a2[2];
    v15 = v7;
    if (fabs(PCMatrix44Tmpl<double>::determinant(&v12)) < 1.0e-16)
    {
      v9 = 0.0;
      v10 = 0.0;
      v11 = xmmword_2603426F0;
      liFindMatrixPlane(&v12, &v9);
      *&v13 = -v9;
      *&v15 = -v10;
      *&v17 = -*&v11;
      *&v19 = -*(&v11 + 1);
    }

    PCMatrix44Tmpl<double>::invert(&v12, &v12, 0.0);
    result = PCMatrix44Tmpl<double>::transform_row<double>(&v12, v20, v20);
    v8 = 1.0;
    if (*&v21 > 0.0)
    {
      v8 = -1.0;
    }

    a3[2] = v8;
  }

  return result;
}

uint64_t LiLightFilter::filteredEdges(LiLightFilter *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 32);

  return v2();
}

uint64_t LiLightFilter::getHelium@<X0>(LiImageSource **this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  if (!*(this + 13))
  {
    return LiAgent::getHelium(a2, this[2], a3);
  }

  if (LiAgent::haveROI(a2) && ((LiAgent::getROI(a2, &v7), (v7.n128_u32[2] & 0x80000000) != 0) || (v7.n128_u32[3] & 0x80000000) != 0 || !(v7.n128_u32[3] * v7.n128_u32[2])))
  {
    return LiAgent::getHelium(a2, this[2], a3);
  }

  else
  {
    return (*(*this + 25))(this, a2);
  }
}

void LiLightFilter::heRender(LiLightFilter *this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  *(a2 + 8) = 2;
  LiAgent::passROI(a2);
  LiAgent::getHelium(a2, *(this + 2), &v95);
  if (v95)
  {
    v6 = **(a2 + 6);
    v93 = 0u;
    v94 = 0u;
    *&v92[40] = 0x3FF0000000000000;
    *v92 = 0x3FF0000000000000;
    v89 = 0x3FF0000000000000;
    v86 = 0x3FF0000000000000;
    v87 = 0u;
    v88 = 0u;
    v90 = 0u;
    v91 = 0u;
    memset(&v92[8], 0, 32);
    v85 = 0x3FF0000000000000;
    v82 = 0x3FF0000000000000;
    v79[5] = 0x3FF0000000000000;
    v79[0] = 0x3FF0000000000000;
    memset(&v79[1], 0, 32);
    v80 = 0u;
    v81 = 0u;
    v83 = 0u;
    v84 = 0u;
    if (*(this + 856) == 1)
    {
      v7 = (*(*v6 + 320))(v6);
      v8 = 0;
      v93 = 0uLL;
      *&v94 = v7;
      *(&v94 + 1) = 0x3FF0000000000000;
      v9 = this + 728;
      do
      {
        v10 = &v79[v8];
        v11 = *&v9[v8 * 8 + 16];
        *v10 = *&v9[v8 * 8];
        v10[1] = v11;
        v8 += 4;
      }

      while (v8 != 16);
      for (i = 0; i != 16; i += 4)
      {
        v13 = (&v86 + i * 8);
        v14 = *&v79[i + 2];
        *v13 = *&v79[i];
        v13[1] = v14;
      }
    }

    else
    {
      (*(*v6 + 344))(v78, v6);
      v93 = v78[0];
      v94 = v78[1];
      (*(*v6 + 24))(v78, v6);
      for (j = 0; j != 128; j += 32)
      {
        v16 = &v79[j / 8];
        v17 = v78[j / 0x10 + 1];
        *v16 = v78[j / 0x10];
        v16[1] = v17;
      }

      (*(*v6 + 240))(v78, v6);
      for (k = 0; k != 8; k += 2)
      {
        v19 = (&v86 + k * 16);
        v20 = v78[k + 1];
        *v19 = v78[k];
        v19[1] = v20;
      }

      if ((*(*v6 + 504))(v6) <= 0.0)
      {
        v21 = vdupq_n_s64(0x40C3880000000000uLL);
        v91 = vsubq_f64(v91, vmulq_f64(*&v92[16], v21));
        *v92 = vsubq_f64(*v92, vmulq_f64(*&v92[32], v21));
      }
    }

    LiAgent::getObjectToFilmTransform(a2, v78);
    LiLightFilter::surfaceNormal(this, v78, v76);
    v22 = PCMatrix44Tmpl<double>::determinant(this + 600);
    PCMatrix44Tmpl<double>::operator*(this + 600, (this + 472), v75);
    PCMatrix44Tmpl<double>::operator*(&v86, v75, v74);
    PCMatrix44Tmpl<double>::transform_normal<double>(v74, v76, &v72, v23, v24);
    v25 = sqrt(vaddvq_f64(vmulq_f64(v72, v72)) + v73 * v73);
    if (fabs(v25) < 0.000000100000001)
    {
      *a3 = v95;
    }

    else
    {
      v72 = vdivq_f64(v72, vdupq_lane_s64(*&v25, 0));
      v73 = v73 / v25;
      LiAgent::getPixelToObjectTransform(a2, v70);
      PCMatrix44Tmpl<double>::operator*(v75, v70, v71);
      PCMatrix44Tmpl<double>::operator*(&v86, v71, v70);
      if (v22 >= 0.0)
      {
        v26 = v77;
      }

      else
      {
        v26 = -v77;
      }

      v69[4] = v75[4];
      v69[5] = v75[5];
      v69[6] = v75[6];
      v69[7] = v75[7];
      v69[0] = v75[0];
      v69[1] = v75[1];
      v69[2] = v75[2];
      v69[3] = v75[3];
      PCMatrix44Tmpl<double>::invert(v69, v69, 0.0);
      LiAgent::getObjectToPixelTransform(a2, &v60);
      PCMatrix44Tmpl<double>::operator*(&v60, v69, v68);
      if (LiAgent::haveROI(a2))
      {
        LiAgent::getROI(a2, &v59);
      }

      else
      {
        v59 = xmmword_26084BD00;
      }

      v27 = *(this + 552);
      v64 = *(this + 536);
      v65 = v27;
      v28 = *(this + 584);
      v66 = *(this + 568);
      v67 = v28;
      v29 = *(this + 488);
      v60 = *(this + 472);
      v61 = v29;
      v30 = *(this + 520);
      v62 = *(this + 504);
      v63 = v30;
      PCMatrix44Tmpl<double>::operator*(&v86, (this + 600), v58);
      v31 = *(a2 + 20);
      LiAgent::getFilmToImageTransform(a2, v56);
      PCMatrix44Tmpl<double>::operator*(v31, v56, v57);
      if (*(this + 13) >= 1)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          LiLight::mapShadows(*(this + 7) + v32, this + 600);
          ++v33;
          v32 += 944;
        }

        while (v33 < *(this + 13));
      }

      PCMatrix44Tmpl<double>::operator*(this + 600, (this + 344), v56);
      if ((this + 344) != v56)
      {
        for (m = 0; m != 8; m += 2)
        {
          v35 = (this + m * 16 + 344);
          v36 = v56[m + 1];
          *v35 = v56[m];
          v35[1] = v36;
        }
      }

      v37 = *(this + 24);
      if (v37 != 1.0)
      {
        v60 = vmulq_n_f64(v60, v37);
        v61 = vmulq_n_f64(v61, v37);
      }

      PCMatrix44Tmpl<double>::operator*(this + 600, &v60, v55);
      LiAgent::getPixelToObjectTransform(a2, &v40);
      PCMatrix44Tmpl<double>::operator*(v55, &v40, v56);
      LiLightFilter::genObjectToScreenBlurMap(**(a2 + 6), (this + 344), v58, v57, v55);
      v38 = (*(*v6 + 576))(v6);
      *&v40 = v95;
      if (v95)
      {
        (*(*v95 + 16))(v95);
      }

      *(&v40 + 1) = this + 72;
      v41 = &v72;
      v42 = &v93;
      v43 = v58;
      v44 = v70;
      v45 = v71;
      v46 = v56;
      v47 = v68;
      v48 = v69;
      v49 = v75;
      v50 = v55;
      v51 = &v39;
      v52 = v26;
      v53 = v38;
      v54 = 0x3FF0000000000000;
      LiLightSet::getHeliumGraph(this + 40, &v40);
      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v40);
      if (v95)
      {
        (*(*v95 + 24))(v95);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_25FF950F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(va);
  v7 = *(v5 - 88);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  _Unwind_Resume(a1);
}

double PCMatrix44Tmpl<double>::transform_normal<double>@<D0>(uint64_t a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D2>, int64x2_t a5@<Q3>)
{
  v5 = 0;
  v8[0] = 0x3FF0000000000000;
  memset(&v8[1], 0, 24);
  v8[4] = 0x3FF0000000000000;
  memset(&v8[5], 0, 24);
  v8[8] = 0x3FF0000000000000;
  do
  {
    v6 = &v8[v5];
    *v6 = *a1;
    v6[2] = *(a1 + 16);
    v5 += 3;
    a1 += 32;
  }

  while (v5 != 9);
  return PCMatrix33Tmpl<double>::transformNormal<double>(v8, a2, a3, a4, a5);
}

void LiLightFilter::genObjectToScreenBlurMap(uint64_t a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  LiSimpleCamera::LiSimpleCamera(v18);
  PCMatrix44Tmpl<double>::operator*(a3, a2, v16);
  v10 = v17;
  LiCamera::copy(v18, a1);
  LiCamera::convertToModel(v18, 1);
  AngleOfView = LiSimpleCamera::getAngleOfView(v18);
  LiSimpleCamera::setAngleOfView(v18, fmax(AngleOfView, 1.0));
  if (v10 > -20.0)
  {
    v14 = 0uLL;
    v15 = -fabs(v10 + -20.0);
    LiSimpleCamera::setTranslation(v18, &v14);
    v17 = fmin(v17, -20.0);
  }

  LiCamera::localToFilmMatrix(v18, v13);
  PCMatrix44Tmpl<double>::operator*(a4, v13, &v14);
  PCMatrix44Tmpl<double>::operator*(&v14, v16, a5);
  LiSimpleCamera::~LiSimpleCamera(v18, v12);
}

double PCMatrix33Tmpl<double>::transformNormal<double>@<D0>(uint64_t a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D2>, int64x2_t a5@<Q3>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v6 = *(a1 + 16);
  v14 = *a1;
  *v15 = v6;
  v7 = *(a1 + 48);
  *&v15[16] = *(a1 + 32);
  v16 = v7;
  v17 = *(a1 + 64);
  PCMatrix33Tmpl<double>::invert(&v14, &v14, 0.0, v7.f64[0], a4, a5);
  v8 = *v15;
  v9 = *&v15[24];
  *a3 = vaddq_f64(vmulq_n_f64(v16, v13), vaddq_f64(vmulq_n_f64(v14, v11), vmulq_n_f64(*&v15[8], v12)));
  result = v11 * v8 + v12 * v9 + v13 * v17;
  a3[1].f64[0] = result;
  return result;
}

uint64_t LiNodeDrawer::LiNodeDrawer(uint64_t a1, uint64_t *a2, const LiPolygon *a3, int a4, char a5, uint64_t a6, double a7)
{
  LiDrawer::LiDrawer(a1);
  *v14 = &unk_287263478;
  v15 = *a2;
  *(a1 + 48) = *a2;
  if (v15)
  {
    (*(*v15 + 16))(v15);
  }

  LiPolygon::LiPolygon((a1 + 56), a3);
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 200) = a7;
  *(a1 + 208) = a4;
  *(a1 + 212) = a5;
  *(a1 + 216) = a6;
  *(a1 + 16) = a6;
  return a1;
}

void LiNodeDrawer::LiNodeDrawer(LiNodeDrawer *this, const LiNodeDrawer *a2)
{
  LiDrawer::LiDrawer(this);
  *v4 = &unk_287263478;
  v5 = *(a2 + 6);
  *(this + 6) = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  LiPolygon::LiPolygon((this + 56), (a2 + 56));
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 192) = *(a2 + 192);
  *(this + 25) = *(a2 + 25);
  *(this + 52) = *(a2 + 52);
  *(this + 212) = *(a2 + 212);
  *(this + 27) = *(a2 + 27);
}

void LiNodeDrawer::~LiNodeDrawer(LiNodeDrawer *this)
{
  *this = &unk_287263478;
  LiPolygon::~LiPolygon((this + 56));
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  LiDrawer::~LiDrawer(this);
}

{
  LiNodeDrawer::~LiNodeDrawer(this);

  JUMPOUT(0x2666E9F00);
}

void LiNodeDrawer::draw(LiNodeDrawer *this, LiBlender *a2)
{
  LiImagePolygon::LiImagePolygon(v9);
  if (*(this + 192) == 1)
  {
    LiImagePolygon::set(v9, this + 56, 1);
    LiBlender::crop(a2, v9, 0);
  }

  v4 = *(this + 52);
  v5 = *(this + 25);
  v6 = *(this + 212);
  v7 = 0;
  PCSharedCount::PCSharedCount(&v8);
  (*(*a2 + 16))(a2, this + 48, v4, 0, v6, &v7, v5);
  PCSharedCount::~PCSharedCount(&v8);
  LiImagePolygon::~LiImagePolygon(v9);
}

void sub_25FF957CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCSharedCount::~PCSharedCount(v3 + 1);
  LiImagePolygon::~LiImagePolygon(va);
  _Unwind_Resume(a1);
}

uint64_t LiNodeDrawer::isPlanar(LiNodeDrawer *this)
{
  v1 = *(this + 27);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 1;
  }
}

void LiNodeDrawer::setPlane(float64x2_t *this, float64x2_t *a2)
{
  v2 = a2[1];
  this[10] = *a2;
  this[11] = v2;
  LiNodeDrawer::projectBoundsToPlane(this);
}

void LiNodeDrawer::projectBoundsToPlane(float64x2_t *this)
{
  if ((*(*&this->f64[0] + 40))(this))
  {
    if (((*&this[8].f64[0] - *&this[7].f64[1]) & 0x1FFFFFFFE0) != 0)
    {
      v2[0] = 0.0;
      v2[1] = 0.0;
      v2[2] = 1.0;
      LiPolygon::projectToPlane(&this[3].f64[1], this + 10, v2);
    }
  }
}

__n128 LiNodeDrawer::getPlane@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[10];
  v3 = this[11];
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t LiNodeDrawer::getSceneObject(LiNodeDrawer *this)
{
  result = *(this + 27);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void LiNodeDrawer::intersect(LiNodeDrawer *this, LiIntersection *a2)
{
  if (*(a2 + 5) >= 1)
  {
    operator new();
  }
}

void LiNodeDrawer::name(LiNodeDrawer *this@<X0>, LiString *a2@<X8>)
{
  LiString::LiString(a2, "Node");
  v4 = *(this + 27);
  if (v4)
  {
    (*(*v4 + 88))(&v12);
    v5 = v12;
    if (v12)
    {
      v6 = *(v12 - 2);
    }

    else
    {
      v6 = 0;
    }

    v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
    v7[1] = v6 + 1;
    v7[2] = v6 + 2;
    atomic_store(1u, v7);
    atomic_store(0, v7);
    *(v7 + 12) = 40;
    memcpy(v7 + 13, v5, v6);
    *(v7 + v6 + 13) = 0;
    atomic_fetch_add(v7, 1u);
    v8 = v7[1];
    v9 = malloc_type_malloc(v8 + 14, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v9);
    v10 = v9 + 3;
    atomic_store(0, v9);
    v9[1] = v8 + 1;
    v9[2] = v8 + 2;
    memcpy(v9 + 3, v7 + 3, v8);
    *(v10 + v8) = 41;
    *(v10 + v8 + 1) = 0;
    atomic_fetch_add(v9, 1u);
    LiString::append(a2, v9 + 12, v9[1]);
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      free(v9);
    }

    if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      free(v7);
    }

    if (v12 && atomic_fetch_add(v12 - 3, 0xFFFFFFFF) == 1)
    {
      *v12 = 0;
      if (v12)
      {
        v11 = v12 - 12;
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }
  }
}

void sub_25FF95BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  v13 = v12;
  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    free(v11);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  LiString::dec(v10);
  _Unwind_Resume(a1);
}

void LiNodeDrawer::dump(LiNodeDrawer *this, const char **a2)
{
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);
  v6 = MEMORY[0x277D82670];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v4, v5);
  (*(*this + 88))(&v17, this);
  if (v17)
  {
    v7 = v17;
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "\n", 1);
  if (v17 && atomic_fetch_add(v17 - 3, 0xFFFFFFFF) == 1)
  {
    *v17 = 0;
    if (v17)
    {
      v9 = (v17 - 12);
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    v11 = *a2;
    v12 = v11 ? *(v11 - 2) : 0;
    v13 = v12 + 6;
    v14 = malloc_type_malloc(v12 + 19, 0x10000403E1C8BA9uLL);
    v14[1] = v13;
    v14[2] = v12 + 7;
    atomic_store(1u, v14);
    atomic_store(0, v14);
    memcpy(v14 + 3, v11, v12);
    v15 = v14 + v12 + 12;
    *v15 = 1919950880;
    *(v15 + 4) = 8293;
    *(v14 + v13 + 12) = 0;
    v17 = (v14 + 3);
    atomic_fetch_add(v14, 1u);
    (*(*v10 + 96))(v10, &v17);
    if (v17)
    {
      if (atomic_fetch_add(v17 - 3, 0xFFFFFFFF) == 1)
      {
        *v17 = 0;
        if (v17)
        {
          v16 = (v17 - 12);
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }
    }
  }
}

void sub_25FF95E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::VertexProgram::VertexProgram(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiNodeDrawer::getFilterIntersections(LiNodeDrawer *this)
{
  v1 = *(this + 27);
  if (v1)
  {
    return (*(*v1 + 112))();
  }

  else
  {
    return 1;
  }
}

uint64_t LiPlanarGroup::LiPlanarGroup(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = &unk_28725EFF0;
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a1 + 32, 1, 3);
  *(*(a1 + 48) + 8 * *(a1 + 44) - 8) = a3;
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v6;
  LiPlanarGroup::normalize(a1);
  return a1;
}

BOOL LiPlanarGroup::normalize(float64x2_t *this)
{
  result = PCVector4<double>::normalize(this, 0.000000100000001);
  v3 = this[1].f64[1];
  if (v3 < 0.0)
  {
    *this = vnegq_f64(*this);
    v4 = this[1].f64[0];
LABEL_3:
    this[1].f64[0] = -v4;
    this[1].f64[1] = -v3;
    return result;
  }

  if (v3 <= 0.0)
  {
    v4 = this[1].f64[0];
    if (v4 < 0.0)
    {
      *this = vnegq_f64(*this);
      goto LABEL_3;
    }

    if (v4 <= 0.0)
    {
      v5 = this->f64[1];
      if (v5 < 0.0)
      {
        v6 = this->f64[0];
LABEL_11:
        this->f64[0] = -v6;
        this->f64[1] = -v5;
        goto LABEL_3;
      }

      if (v5 <= 0.0)
      {
        v6 = this->f64[0];
        if (this->f64[0] < 0.0)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

uint64_t lexical_compare(double *a1, double *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 > v8)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  return *a1 > *a2;
}

BOOL PCVector4<double>::normalize(float64x2_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = vmulq_f64(v2, v2);
  v5 = vmulq_f64(v3, v3);
  v6 = sqrt(vaddq_f64(vaddq_f64(vaddq_f64(v4, vdupq_laneq_s64(v4, 1)), v5), vdupq_laneq_s64(v5, 1)).f64[0]);
  v7 = v6 >= a2 || v6 <= -a2;
  if (v7)
  {
    v8 = vdupq_lane_s64(*&v6, 0);
    *a1 = vdivq_f64(v2, v8);
    a1[1] = vdivq_f64(v3, v8);
  }

  return v7;
}

void LiPlanarGroupSet::LiPlanarGroupSet(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287263548;
  operator new();
}

void sub_25FF96198(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x1080C402A14C379);
  PCPtrArray<LiPlanarGroup>::~PCPtrArray(v1);
  _Unwind_Resume(a1);
}

uint64_t PCPtrArray<LiPlanarGroup>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_287263598;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiPlanarGroupSet::~LiPlanarGroupSet(LiPlanarGroupSet *this)
{
  PCPtrArray<LiPlanarGroup>::deleteAll(this);
  *this = &unk_287263598;
  v2 = *(this + 2);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(this + 3);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 2) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(this + 2);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(this + 2) = 0;
  }

  *(this + 2) = v3;
  *(this + 3) = 0;
  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

unsigned int *PCPtrArray<LiPlanarGroup>::deleteAll(unsigned int *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[3])
      {
        PCArray_base::badIndex(result);
      }

      v4 = *(*(v1 + 2) + 8 * i);
      if (v4)
      {
        *(v4 + 32) = &unk_28725F040;
        v5 = *(v4 + 40);
        if (v5 < 0)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5 & ~(v5 >> 31);
        }

        if (v6 == v5)
        {
          v7 = *(v4 + 44);
          if ((v7 & 0x80000000) != 0)
          {
            do
            {
              *(*(v4 + 48) + 8 * v7) = 0;
              v8 = __CFADD__(v7++, 1);
            }

            while (!v8);
          }
        }

        else
        {
          if (v6)
          {
            operator new[]();
          }

          v9 = *(v4 + 48);
          if (v9)
          {
            MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
          }

          *(v4 + 48) = 0;
        }

        *(v4 + 40) = v6;
        *(v4 + 44) = 0;
        v10 = *(v4 + 48);
        if (v10)
        {
          MEMORY[0x2666E9ED0](v10, 0x1000C8077774924);
        }

        *(v4 + 48) = 0;
        *(v4 + 40) = 0;
        result = MEMORY[0x2666E9F00](v4, 0x1080C402A14C379);
      }

      if (i >= v1[3])
      {
        PCArray_base::badIndex(result);
      }

      *(*(v1 + 2) + 8 * i) = 0;
    }
  }

  v11 = v1[2];
  if (v11 < 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 & ~(v11 >> 31);
  }

  if (v12 == v11)
  {
    v13 = v1[3];
    if ((v13 & 0x80000000) != 0)
    {
      do
      {
        *(*(v1 + 2) + 8 * v13) = 0;
        v8 = __CFADD__(v13++, 1);
      }

      while (!v8);
    }
  }

  else
  {
    if (v12)
    {
      operator new[]();
    }

    result = *(v1 + 2);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v1 + 2) = 0;
  }

  v1[2] = v12;
  v1[3] = 0;
  return result;
}

void LiPlanarGroupSet::transform(_BOOL8 this, const LiPlaneTransform *a2)
{
  v2 = this;
  v3 = *(this + 12);
  if (v3 >= 1)
  {
    do
    {
      if (v3 > *(v2 + 12))
      {
        PCArray_base::badIndex(this);
      }

      v5 = v3 - 1;
      v6 = *(*(v2 + 16) + 8 * v3 - 8);
      LiPlaneTransform::operator()(a2, v6->f64, v6);
      this = LiPlanarGroup::normalize(v6);
      v3 = v5;
    }

    while ((v5 + 1) > 1);
    LODWORD(v3) = *(v2 + 12);
  }

  if (v3)
  {
    v7 = *(v2 + 16);

    qsort(v7, v3, 8uLL, lexical_compare);
  }
}

uint64_t LiPlanarGroupSet::mergeFrom(uint64_t result, uint64_t a2)
{
  v43 = 0;
  v44 = 0;
  v42 = &unk_287263548;
  v2 = *(result + 12);
  v38 = *(a2 + 12);
  if (v2)
  {
    if (v2 <= 0)
    {
      PCArray_base::badIndex(result);
    }

    v3 = **(result + 16);
  }

  else
  {
    v3 = 0;
  }

  v36 = result;
  if (v38)
  {
    if (*(a2 + 12) <= 0)
    {
      PCArray_base::badIndex(result);
    }

    v4 = **(a2 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v39 = 0;
  v6 = 0;
  if (!v3)
  {
    goto LABEL_18;
  }

  do
  {
    if (!v4)
    {
      v8 = v6 + 1;
      if (v8 < v2)
      {
        if (v6 < -1 || *(v36 + 12) <= v8)
        {
          PCArray_base::badIndex(result);
        }

        v40 = *(*(v36 + 16) + 8 * v8);
        v41 = 0;
        goto LABEL_39;
      }

      v41 = 0;
LABEL_38:
      v40 = 0;
      goto LABEL_39;
    }

    result = lexical_compare(v3, v4);
    if (result <= 0)
    {
      v8 = v6 + 1;
      v41 = v4;
      if (v8 < v2)
      {
        if (v6 < -1 || *(v36 + 12) <= v8)
        {
          PCArray_base::badIndex(result);
        }

        v40 = *(*(v36 + 16) + 8 * v8);
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v7 = v39 + 1;
    v40 = v3;
    if (v7 >= v38)
    {
      goto LABEL_31;
    }

    if (v39 < -1 || *(a2 + 12) <= v7)
    {
      PCArray_base::badIndex(result);
    }

LABEL_24:
    v3 = v4;
    v39 = v7;
    v41 = *(*(a2 + 16) + 8 * v7);
    v8 = v6;
LABEL_39:
    v9 = v5;
    if (v5 <= SHIDWORD(v43))
    {
      v10 = HIDWORD(v43);
    }

    else
    {
      v10 = v5;
    }

    v11 = (v5 << 32) - 0x100000000;
    v12 = HIDWORD(v43) - v5--;
    do
    {
      if (v10 == v9)
      {
        v5 = v10;
LABEL_59:
        if (v43 <= SHIDWORD(v43))
        {
          v16 = 2 * (HIDWORD(v43) + 1) + 1;
        }

        else
        {
          v16 = v43;
        }

        result = PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(&v42, HIDWORD(v43) + 1, v16);
        v4 = v41;
        *(v44 + 8 * SHIDWORD(v43) - 8) = v3;
        goto LABEL_63;
      }

      v13 = v9;
      v14 = v12;
      if (v9 < 0 || v9 >= SHIDWORD(v43))
      {
        PCArray_base::badIndex(result);
      }

      ++v9;
      v11 += 0x100000000;
      ++v5;
      --v12;
    }

    while (*(*(v44 + 8 * v13) + 24) < v3[3] + -1.0e-10);
    if (SHIDWORD(v43) <= v5)
    {
      goto LABEL_59;
    }

    while (1)
    {
      if (v13 < 0 || SHIDWORD(v43) <= v5)
      {
        PCArray_base::badIndex(result);
      }

      v15 = *(v44 + 8 * (v11 >> 32));
      if (vabdd_f64(*v3, *v15) < 1.0e-10 && vabdd_f64(v3[1], v15[1]) < 1.0e-10 && vabdd_f64(v3[2], v15[2]) < 1.0e-10 && vabdd_f64(v3[3], v15[3]) < 1.0e-10)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_59;
      }
    }

    v4 = v41;
    if (v13 < 0 || SHIDWORD(v43) <= v5)
    {
      PCArray_base::badIndex(result);
    }

    PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::append((v15 + 4), (v3 + 4));
    *(v3 + 4) = &unk_28725F040;
    v17 = *(v3 + 10);
    if (v17 < 0)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 & ~(v17 >> 31);
    }

    if (v18 == v17)
    {
      v19 = *(v3 + 11);
      if ((v19 & 0x80000000) != 0)
      {
        do
        {
          *(*(v3 + 6) + 8 * v19) = 0;
          v20 = __CFADD__(v19++, 1);
        }

        while (!v20);
      }
    }

    else
    {
      if (v18)
      {
        operator new[]();
      }

      v21 = *(v3 + 6);
      if (v21)
      {
        MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
      }

      v3[6] = 0.0;
    }

    *(v3 + 10) = v18;
    *(v3 + 11) = 0;
    v22 = *(v3 + 6);
    if (v22)
    {
      MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
    }

    v3[6] = 0.0;
    *(v3 + 10) = 0;
    result = MEMORY[0x2666E9F00](v3, 0x1080C402A14C379);
LABEL_63:
    v6 = v8;
    v3 = v40;
  }

  while (v40);
LABEL_18:
  if (v4)
  {
    v7 = v39 + 1;
    if (v7 < v38)
    {
      if (v39 < -1 || *(a2 + 12) <= v7)
      {
        PCArray_base::badIndex(result);
      }

      v40 = 0;
      goto LABEL_24;
    }

    v40 = 0;
LABEL_31:
    v3 = v4;
    v39 = v7;
    v8 = v6;
    v41 = 0;
    goto LABEL_39;
  }

  v23 = v36;
  v24 = *(v36 + 8);
  if (v24 < 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24 & ~(v24 >> 31);
  }

  if (v25 == v24)
  {
    v26 = *(v36 + 12);
    v27 = a2;
    if ((v26 & 0x80000000) != 0)
    {
      do
      {
        *(*(v36 + 16) + 8 * v26) = 0;
        v20 = __CFADD__(v26++, 1);
      }

      while (!v20);
    }

    v28 = *(v36 + 16);
  }

  else
  {
    v27 = a2;
    if (v25)
    {
      operator new[]();
    }

    v28 = 0;
    result = *(v36 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    v23 = v36;
    *(v36 + 16) = 0;
  }

  *(v23 + 8) = v25;
  *(v23 + 12) = 0;
  if (v28)
  {
    result = MEMORY[0x2666E9ED0](v28, 0x1000C8077774924);
  }

  *(v36 + 8) = v43;
  *(v36 + 16) = v44;
  v43 = 0;
  v44 = 0;
  v29 = *(v27 + 8);
  if (v29 < 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29 & ~(v29 >> 31);
  }

  if (v30 == v29)
  {
    v31 = *(v27 + 12);
    if ((v31 & 0x80000000) != 0)
    {
      do
      {
        *(*(v27 + 16) + 8 * v31) = 0;
        v20 = __CFADD__(v31++, 1);
      }

      while (!v20);
    }

    v32 = *(v27 + 16);
  }

  else
  {
    if (v30)
    {
      operator new[]();
    }

    v32 = 0;
    result = *(v27 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v27 + 16) = 0;
  }

  *(v27 + 8) = v30;
  *(v27 + 12) = 0;
  if (v32)
  {
    result = MEMORY[0x2666E9ED0](v32, 0x1000C8077774924);
  }

  *(v27 + 16) = 0;
  *(v27 + 8) = 0;
  v42 = &unk_287263598;
  if (v43 < 0)
  {
    v33 = 1;
  }

  else
  {
    v33 = v43 & ~(v43 >> 31);
  }

  if (v33 == v43)
  {
    v34 = SHIDWORD(v43);
    if (v43 < 0)
    {
      do
      {
        *(v44 + 8 * v34) = 0;
        v20 = __CFADD__(v34++, 1);
      }

      while (!v20);
    }

    v35 = v44;
  }

  else
  {
    if (v33)
    {
      operator new[]();
    }

    v35 = 0;
    result = v44;
    if (v44)
    {
      result = MEMORY[0x2666E9ED0](v44, 0x1000C8077774924);
    }

    v44 = 0;
  }

  v43 = v33;
  if (v35)
  {
    return MEMORY[0x2666E9ED0](v35, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF96D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PCPtrArray<LiPlanarGroup>::~PCPtrArray(va);
  _Unwind_Resume(a1);
}

unsigned int *LiPlanarGroupSet::gatherDrawers(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[3];
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    while (1)
    {
      if (v7 >= v6[3])
      {
        PCArray_base::badIndex(result);
      }

      v8 = *(*(v6 + 2) + 8 * v7);
      v9 = *(v8 + 44);
      v10 = *(v8 + 16);
      v15[0] = *v8;
      v15[1] = v10;
      result = PCPlaneType(v15);
      v11 = a3;
      if (!result)
      {
        goto LABEL_8;
      }

      if (result != 1)
      {
        break;
      }

LABEL_18:
      if (v3 == ++v7)
      {
        return result;
      }
    }

    v11 = a2;
LABEL_8:
    if (v9)
    {
      if (v9 != 1)
      {
        operator new();
      }

      if (*(v8 + 44) <= 0)
      {
        PCArray_base::badIndex(result);
      }

      v12 = **(v8 + 48);
      v13 = *(v11 + 12);
      if (*(v11 + 8) <= v13)
      {
        v14 = 2 * (v13 + 1) + 1;
      }

      else
      {
        v14 = *(v11 + 8);
      }

      result = PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(v11, v13 + 1, v14);
      *(*(v11 + 16) + 8 * *(v11 + 12) - 8) = v12;
    }

    goto LABEL_18;
  }

  return result;
}

void LiPlanarGroupHerd::~LiPlanarGroupHerd(LiPlanarGroupHerd *this)
{
  if (*(this + 5) >= 1)
  {
    v2 = *(this + 4);
    v3 = (*(this + 5) & 0x7FFFFFFFLL) - 1;
    do
    {
      v4 = *(this + 1);
      v5 = (v2 + v3) >> 9;
      v6 = (v2 + v3) & 0x1FF;
      v7 = *(*(v4 + 8 * v5) + 8 * v6);
      if (v7)
      {
        LiPlanarGroupSet::~LiPlanarGroupSet(v7);
        MEMORY[0x2666E9F00]();
        v2 = *(this + 4);
        v4 = *(this + 1);
        v5 = (v3 + v2) >> 9;
        v6 = (v3 + v2) & 0x1FF;
      }

      *(*(v4 + 8 * v5) + 8 * v6) = 0;
      v8 = v3-- + 1;
    }

    while (v8 > 1);
  }

  std::deque<unsigned long>::~deque[abi:ne200100](this);
}

void *std::deque<LiPlanarGroupSet *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<LiPlanarGroupSet *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t LiPlanarGroupHerd::condense(int64x2_t *this)
{
  v1 = this[2].u64[1];
  if (!v1)
  {
    return 0;
  }

  if (v1 != 1)
  {
    do
    {
      v3 = this[2].u64[0];
      v12 = *(*(this->i64[1] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
      this[2].i64[0] = v3 + 1;
      this[2].i64[1] = v1 - 1;
      std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::__maybe_remove_front_spare[abi:ne200100](this, 1);
      v4 = *(*(this->i64[1] + ((this[2].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (this[2].i64[0] & 0x1FF));
      this[2] = vaddq_s64(this[2], xmmword_260342880);
      std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::__maybe_remove_front_spare[abi:ne200100](this, 1);
      LiPlanarGroupSet::mergeFrom(v12, v4);
      std::deque<LiPlanarGroupSet *>::push_front(this, &v12);
      LiPlanarGroupSet::~LiPlanarGroupSet(v4);
      MEMORY[0x2666E9F00]();
      v1 = this[2].u64[1];
    }

    while (v1 > 1);
  }

  v5 = this->i64[1];
  v6 = this[1].i64[0];
  v7 = (*(v5 + ((this[2].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)))[this[2].i64[0] & 0x1FF];
  this[2].i64[1] = 0;
  v8 = (v6 - v5) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v5);
      v9 = this[1].i64[0];
      v5 = (this->i64[1] + 8);
      this->i64[1] = v5;
      v8 = (v9 - v5) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v10 = 256;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v10 = 512;
LABEL_11:
    this[2].i64[0] = v10;
  }

  return v7;
}

const void **std::deque<LiPlanarGroupSet *>::push_front(const void **result, void *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<LiPlanarGroupSet *>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 9)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

void PCPtrArray<LiPlanarGroup>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_287263598;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void *std::deque<LiPlanarGroupSet *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(a1, &v10);
}

void sub_25FF975C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::deque<LiPlanarGroupSet *>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<PCStreamElement **>::emplace_front<PCStreamElement **>(a1, v11);
}

void sub_25FF9780C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void LiShard::build(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double *a8, double a9, double a10, double a11, uint64_t a12)
{
  v21 = a12;
  v22 = a5[1] - *a5;
  std::vector<PCVector3<double>>::resize((a1 + 16), (v22 >> 2));
  std::vector<unsigned int>::resize((a1 + 40), (v22 >> 2));
  std::vector<unsigned int>::resize((a1 + 64), (v22 >> 2));
  std::vector<TXParagraphStyle *>::resize((a1 + 88), (v22 >> 2));
  v23 = *(a1 + 96) - *(a1 + 88);
  if ((v23 >> 3) >= 1)
  {
    v24 = 0;
    v25 = (v23 >> 3) & 0x7FFFFFFF;
    do
    {
      *(*(a1 + 88) + 8 * v24++) = 0;
    }

    while (v25 != v24);
  }

  if ((v22 >> 2) < 1)
  {
    v33 = -1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0xFFFFFFFF00000000;
    do
    {
      v29 = *(*a5 + 4 * v27);
      if (v29 == -1)
      {
        v30 = a6;
      }

      else if (v29 == -2)
      {
        v29 = -1;
        v30 = a7;
      }

      else
      {
        v30 = **a2 + 32 * v29;
      }

      v31 = *(a1 + 16) + v26;
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      *(*(a1 + 40) + 4 * v27) = v29;
      *(*(a1 + 64) + 4 * v27++) = 0;
      v28 += 0x100000000;
      v26 += 24;
    }

    while (((v22 >> 2) & 0x7FFFFFFF) != v27);
    v33 = v28 >> 32;
  }

  v34 = *(*a5 + 4 * v33);
  if (v34 == -2)
  {
    v63 = a10;
    v35 = a10;
  }

  else if (v34 == -1)
  {
    v63 = a9;
    v35 = a9;
  }

  else
  {
    v36 = **a2 + 32 * v34;
    v37.f64[0] = *v36 - *a3;
    v38 = *(a4 + 8);
    v39 = vmulq_f64(vsubq_f64(*(v36 + 8), *(a3 + 8)), v38);
    v40 = vmulq_f64(v38, v38);
    v37.f64[1] = *a4;
    v41 = vaddq_f64(vaddq_f64(vmulq_n_f64(v37, *a4), vzip1q_s64(v39, v40)), vzip2q_s64(v39, v40));
    *&v41.f64[0] = *&vdivq_f64(v41, vdupq_laneq_s64(v41, 1));
    if (vabdd_f64(v41.f64[0], a9) >= vabdd_f64(v41.f64[0], a10))
    {
      v35 = a10;
    }

    else
    {
      v35 = a9;
    }

    v63 = v35;
  }

  if (v35 != a9)
  {
    a10 = a9;
  }

  v62 = a10;
  v43 = *a8;
  v42 = a8[1];
  if (v42 < *a8)
  {
    *(*(a1 + 64) + 4 * v33) = 2;
    *(*(a1 + 88) + 8 * v33) = v21;
    return;
  }

  if (v35 >= v43 - a11 && v35 <= v43 + a11)
  {
    v48 = *(a1 + 64);
    v49 = *(a1 + 88);
LABEL_37:
    *(v48 + 4 * v33) = 1;
    *(v49 + 8 * v33) = v21;
    goto LABEL_38;
  }

  v48 = *(a1 + 64);
  v49 = *(a1 + 88);
  if (v35 >= v42 - a11 && v35 <= v42 + a11)
  {
    goto LABEL_37;
  }

  *(v48 + 4 * v33) = 2;
  *(v49 + 8 * v33) = v21;
  v46 = LiInterval<double>::closest(a8, &v63);
  v47 = v46 * *(a4 + 16) + *(a3 + 16);
  v60 = vaddq_f64(vmulq_n_f64(*a4, v46), *a3);
  v61 = v47;
  std::vector<PCVector3<double>>::push_back[abi:ne200100]((a1 + 16), &v60);
  LODWORD(v60.f64[0]) = -1;
  LiChannelT<int>::append((a1 + 40), &v60);
  LODWORD(v60.f64[0]) = 1;
  LiChannelT<int>::append((a1 + 64), &v60);
  LiChannelT<LiDrawer *>::append(a1 + 88, &a12);
  v43 = *a8;
  v42 = a8[1];
LABEL_38:
  if (v42 < v43 || ((v52 = v43 - a11, v53 = v43 + a11, a10 >= v52) ? (v54 = a10 > v53) : (v54 = 1), v54 && ((v55 = v42 - a11, v56 = v42 + a11, a10 >= v55) ? (v57 = a10 > v56) : (v57 = 1), v57)))
  {
    v50 = LiInterval<double>::closest(a8, &v62);
    v51 = v50 * *(a4 + 16) + *(a3 + 16);
    v60 = vaddq_f64(vmulq_n_f64(*a4, v50), *a3);
    v61 = v51;
    std::vector<PCVector3<double>>::push_back[abi:ne200100]((a1 + 16), &v60);
    LODWORD(v60.f64[0]) = -1;
    LiChannelT<int>::append((a1 + 40), &v60);
    LODWORD(v60.f64[0]) = 2;
    LiChannelT<int>::append((a1 + 64), &v60);
    LiChannelT<LiDrawer *>::append(a1 + 88, &a12);
  }
}

double LiInterval<double>::closest(double *a1, double *a2)
{
  result = *a1;
  v3 = a1[1];
  if (v3 < *a1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v5, "empty interval");
    PCException::PCException(exception, &v5);
  }

  if (*a2 <= v3)
  {
    v3 = *a2;
  }

  if (*a2 >= result)
  {
    return v3;
  }

  return result;
}

uint64_t LiChannelT<LiDrawer *>::append(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 8;
}

void LiPlaneSplit::LiPlaneSplit(LiPlaneSplit *this)
{
  *(this + 7) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 24) = 0;
  *(this + 11) = 0x3FF0000000000000;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 41) = &unk_28725EFF0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = &unk_28725EFF0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = &unk_28725EFF0;
}

void LiPlaneSplit::compute(LiPlaneSplit *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(v59, "_pivot");
    PCException::PCException(exception, v59);
    *exception = &unk_2872DE188;
  }

  if (!*(this + 2))
  {
    v44 = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(v59, "_target");
    PCException::PCException(v44, v59);
    *v44 = &unk_2872DE188;
  }

  if (((*(*v2 + 40))(v2) & 1) == 0)
  {
    v45 = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(v59, "no pivot plane");
    PCException::PCException(v45, v59);
    *v45 = &unk_2872DE188;
  }

  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v70 = 0;
  v71 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v3 = (*(**(this + 1) + 32))(*(this + 1));
  v4 = (*(**(this + 2) + 32))(*(this + 2));
  (*(**(this + 1) + 48))(&v63);
  (*(**(this + 2) + 48))(&v60);
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  v5 = vaddvq_f64(vmulq_f64(v63, v63)) + v64 * v64;
  if (fabs(v5) >= 1.0e-24)
  {
    *(&v59[1] + 8) = v63;
    *(&v59[2] + 1) = v64;
    v59[0] = vdivq_f64(vmulq_n_f64(v63, -v65), vdupq_lane_s64(*&v5, 0));
    *&v59[1] = -(v65 * v64) / v5;
  }

  v6 = vaddvq_f64(vmulq_f64(v60, v60)) + v61 * v61;
  if (fabs(v6) >= 1.0e-24)
  {
    *(&v58[1] + 8) = v60;
    *(&v58[2] + 1) = v61;
    v58[0] = vdivq_f64(vmulq_n_f64(v60, -v62), vdupq_lane_s64(*&v6, 0));
    *&v58[1] = -(v62 * v61) / v6;
  }

  *(this + 32) = 0;
  if (PCPlane<double>::operator==(v58, v59))
  {
    goto LABEL_9;
  }

  *(this + 32) = liPolygonPlaneSplit(v4 + 88, &v63, &v75, &v72, &v69, &v66, 0, this + 28, 0.1);
  v7 = *(this + 7);
  if (*(this + 25) == 1)
  {
    v8 = v7 + 1;
    if (v7 + 1) <= 6 && ((0x65u >> v8))
    {
      v7 = dword_26084BDD8[v8];
    }

    *(this + 7) = v7;
  }

  if (v7 == 3)
  {
    if (!planeIntersection<double>(v58, &v58[1] + 8, v59, &v59[1] + 8, this + 5, this + 4))
    {
      *(this + 32) = 0;
LABEL_9:
      *(this + 7) = 2;
      goto LABEL_57;
    }

    v57 = 0uLL;
    v10 = *(v3 + 88);
    v9 = v3 + 88;
    if (((v10[1] - *v10) >> 5) < 1)
    {
      *(this + 32) = liClipLineToPolygon(this + 5, (v4 + 88), &v57.f64[1], v57.f64) - 1 < 3;
      if (v57.f64[1] <= v57.f64[0])
      {
        v23 = v57.f64[1];
      }

      else
      {
        v23 = v57.f64[0];
      }

      if (v57.f64[1] >= v57.f64[0])
      {
        v24 = v57.f64[1];
      }

      else
      {
        v24 = v57.f64[0];
      }
    }

    else
    {
      v55 = 0uLL;
      v56 = 0.0;
      v53 = 0uLL;
      v54 = 0.0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      __p = 0;
      v48 = 0;
      v49 = 0;
      v46 = 0;
      v11 = liPolygonPlaneSplit(v9, &v60, &v55, &v53, &v50, &__p, 0, &v46, 0.1);
      *(this + 32) = v11;
      if (v11)
      {
        *&v12.f64[0] = v55;
        v13 = (this + 56);
        *&v14.f64[0] = v53;
        v15.f64[0] = v54;
        v16 = *(this + 40);
        v17 = *(this + 4);
        v14.f64[1] = *(&v55 + 1);
        v12.f64[1] = *(&v53 + 1);
        v18 = vsubq_f64(v14, v16);
        v19 = vsubq_f64(v12, v16);
        v15.f64[1] = v56;
        v20 = vld1q_dup_f64(v13);
        v21 = vmulq_f64(v19, v17);
        v22 = vdivq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v18, v17), vextq_s8(v21, v21, 8uLL)), vmulq_n_f64(vsubq_f64(v15, v20), *(this + 10))), vdupq_lane_s64(COERCE__INT64(vaddvq_f64(vmulq_f64(v17, v17)) + *(this + 10) * *(this + 10)), 0));
        v57 = v22;
        if (v22.f64[1] <= v22.f64[0])
        {
          v23 = v22.f64[1];
        }

        else
        {
          v23 = v22.f64[0];
        }

        if (v22.f64[1] >= v22.f64[0])
        {
          v24 = v22.f64[1];
        }

        else
        {
          v24 = v22.f64[0];
        }
      }

      else
      {
        v24 = 0.0;
        v23 = 1.0;
      }

      if (__p)
      {
        v48 = __p;
        operator delete(__p);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }
    }

    v25.f64[0] = v75;
    v26 = (this + 56);
    v27.f64[0] = v72;
    v28.f64[0] = v74;
    v29 = *(this + 40);
    v30 = *(this + 4);
    v27.f64[1] = v76;
    v31 = vsubq_f64(v27, v29);
    v25.f64[1] = v73;
    v32 = vsubq_f64(v25, v29);
    v28.f64[1] = v77;
    v33 = vld1q_dup_f64(v26);
    v34 = vmulq_f64(v32, v30);
    v35 = vdivq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v31, v30), vextq_s8(v34, v34, 8uLL)), vmulq_n_f64(vsubq_f64(v28, v33), *(this + 10))), vdupq_lane_s64(COERCE__INT64(vaddvq_f64(vmulq_f64(v30, v30)) + *(this + 10) * *(this + 10)), 0));
    v57 = v35;
    if (v35.f64[1] <= v35.f64[0])
    {
      v36 = v35.f64[1];
    }

    else
    {
      v36 = v35.f64[0];
    }

    if (v35.f64[1] >= v35.f64[0])
    {
      v35.f64[0] = v35.f64[1];
    }

    if (v24 >= v23)
    {
      if (v35.f64[0] >= v36)
      {
        if (v23 < v36)
        {
          v23 = v36;
        }

        if (v24 > v35.f64[0])
        {
          v24 = v35.f64[0];
        }
      }

      else
      {
        v24 = v35.f64[0];
        v23 = v36;
      }
    }

    *(this + 11) = v23;
    *(this + 12) = v24;
    if (v24 < v23 || v24 - v23 < 0.100000001)
    {
      *(this + 32) = 0;
      *(this + 88) = xmmword_2603426F0;
    }

    v37 = 0;
    v38 = 1;
    do
    {
      v39 = v38;
      if (v38)
      {
        v40 = &v66;
      }

      else
      {
        v40 = &v69;
      }

      v41 = (this + 112 * v37 + 104);
      v42 = *(this + 1);
      *v41 = *(this + 2);
      v41[1] = 0;
      LiShard::build(v41, (v4 + 88), this + 40, this + 64, v40, &v75, &v72, this + 11, v57.f64[1], v57.f64[0], 0.100000001, v42);
      v38 = 0;
      v37 = 1;
    }

    while ((v39 & 1) != 0);
  }

LABEL_57:
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_25FF98580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, PCString a33)
{
  v35 = v33[20];
  if (v35)
  {
    v33[21] = v35;
    operator delete(v35);
  }

  v36 = v33[23];
  if (v36)
  {
    v33[24] = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

BOOL PCPlane<double>::operator==(double *a1, double *a2)
{
  v2 = a1[3];
  if (v2 == a2[3] && (v3 = a1[4], v3 == a2[4]) && (v4 = a1[5], v4 == a2[5]) && ((v6 = a1[1], v7 = a2[1], *a1 == *a2) ? (v8 = v6 == v7) : (v8 = 0), !v8 || a1[2] != a2[2]))
  {
    return v2 * *a1 + v3 * v6 + v4 * a1[2] == v2 * *a2 + v3 * v7 + v4 * a2[2];
  }

  else
  {
    return 0;
  }
}

uint64_t LiPlaneSplit::store(LiPlaneSplit *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = 0;
  v37 = 0;
  v9 = *this;
  v34 = *(this + 1);
  v35 = &unk_2872635B8;
  v38 = v9;
  v10 = *(this + 7);
  if (v10 <= 1)
  {
    if (v10 == -1)
    {
      v26 = *(this + 85);
      if (*(this + 84) <= v26)
      {
        v27 = 2 * (v26 + 1) + 1;
      }

      else
      {
        v27 = *(this + 84);
      }

      PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 328, v26 + 1, v27);
      v13 = this + 340;
      v14 = 344;
      goto LABEL_32;
    }

    if (v10 == 1)
    {
      v11 = *(this + 91);
      if (*(this + 90) <= v11)
      {
        v12 = 2 * (v11 + 1) + 1;
      }

      else
      {
        v12 = *(this + 90);
      }

      PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 352, v11 + 1, v12);
      v13 = this + 364;
      v14 = 368;
LABEL_32:
      v23 = *(this + 2);
LABEL_33:
      *(*(this + v14) + 8 * *v13 - 8) = v23;
      goto LABEL_34;
    }

LABEL_23:
    PCPrint("File %s, line %d should not have been reached:\n\t", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiPlaneSplit.cpp");
    pcAbortImpl();
  }

  if (v10 == 2)
  {
    v28 = *(this + 97);
    if (*(this + 96) <= v28)
    {
      v29 = 2 * (v28 + 1) + 1;
    }

    else
    {
      v29 = *(this + 96);
    }

    PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 376, v28 + 1, v29);
    v13 = this + 388;
    v14 = 392;
    goto LABEL_32;
  }

  if (v10 != 3)
  {
    goto LABEL_23;
  }

  HIDWORD(v36) = 0;
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(&v35, 1, 3);
  v15 = this + 104;
  v16 = v36;
  v17 = HIDWORD(v36);
  *(v37 + 8 * SHIDWORD(v36) - 8) = this + 104;
  if (v16 <= v17)
  {
    v18 = 2 * (v17 + 1) + 1;
  }

  else
  {
    v18 = v16;
  }

  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(&v35, v17 + 1, v18);
  *(v37 + 8 * SHIDWORD(v36) - 8) = this + 216;
  (*(**(this + 2) + 80))(*(this + 2), &v34);
  v19 = *(this + 25);
  v20 = *&v15[112 * *(this + 25) + 8];
  if (v20)
  {
    v21 = *(this + 85);
    if (*(this + 84) <= v21)
    {
      v22 = 2 * (v21 + 1) + 1;
    }

    else
    {
      v22 = *(this + 84);
    }

    PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 328, v21 + 1, v22);
    *(*(this + 43) + 8 * *(this + 85) - 8) = v20;
    v19 = *(this + 25);
  }

  v23 = *&v15[112 * (v19 ^ 1) + 8];
  if (v23)
  {
    v24 = *(this + 91);
    if (*(this + 90) <= v24)
    {
      v25 = 2 * (v24 + 1) + 1;
    }

    else
    {
      v25 = *(this + 90);
    }

    PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 352, v24 + 1, v25);
    v13 = this + 364;
    v14 = 368;
    goto LABEL_33;
  }

LABEL_34:
  v35 = &unk_287263608;
  if (v36 < 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = v36 & ~(v36 >> 31);
  }

  if (v30 == v36)
  {
    v31 = SHIDWORD(v36);
    if (v36 < 0)
    {
      do
      {
        *(v37 + 8 * v31) = 0;
      }

      while (!__CFADD__(v31++, 1));
    }
  }

  else
  {
    if (v30)
    {
      operator new[]();
    }

    if (v37)
    {
      MEMORY[0x2666E9ED0](v37, 0x1000C8077774924);
    }

    v37 = 0;
  }

  v36 = v30;
  result = v37;
  if (v37)
  {
    return MEMORY[0x2666E9ED0](v37, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF989F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  LiIntersection::~LiIntersection(va);
  _Unwind_Resume(a1);
}

uint64_t LiPlaneSplit::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 336);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(this + 340);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 344) + 8 * v4) = 0;
        v5 = __CFADD__(v4++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    this = *(this + 344);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v1 + 344) = 0;
  }

  *(v1 + 336) = v3;
  *(v1 + 340) = 0;
  v6 = *(v1 + 384);
  if (v6 < 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 & ~(v6 >> 31);
  }

  if (v7 == v6)
  {
    v8 = *(v1 + 388);
    if ((v8 & 0x80000000) != 0)
    {
      do
      {
        *(*(v1 + 392) + 8 * v8) = 0;
        v5 = __CFADD__(v8++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v7)
    {
      operator new[]();
    }

    this = *(v1 + 392);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v1 + 392) = 0;
  }

  *(v1 + 384) = v7;
  *(v1 + 388) = 0;
  v9 = *(v1 + 360);
  if (v9 < 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 & ~(v9 >> 31);
  }

  if (v10 == v9)
  {
    v11 = *(v1 + 364);
    if ((v11 & 0x80000000) != 0)
    {
      do
      {
        *(*(v1 + 368) + 8 * v11) = 0;
        v5 = __CFADD__(v11++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v10)
    {
      operator new[]();
    }

    this = *(v1 + 368);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v1 + 368) = 0;
  }

  *(v1 + 360) = v10;
  *(v1 + 364) = 0;
  return this;
}

uint64_t PCPtrArray<LiShard>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_287263608;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCPtrArray<LiShard>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_287263608;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void LiIntersection::~LiIntersection(LiIntersection *this)
{
  *(this + 1) = &unk_287263608;
  v2 = *(this + 4);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(this + 5);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 3) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(this + 3);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(this + 3) = 0;
  }

  *(this + 4) = v3;
  *(this + 5) = 0;
  v7 = *(this + 3);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
}

uint64_t LiGrid::setGeom(uint64_t this, int a2, int a3)
{
  *(this + 64) = a2;
  *(this + 68) = a3;
  return this;
}

void LiGrid::LiGrid(LiGrid *this)
{
  *(this + 11) = &unk_2872DEA38;
  *(this + 12) = 0;
  *(this + 104) = 1;
  LiImageSource::LiImageSource(this, &off_287263718);
  *this = &unk_287263630;
  *(this + 11) = &unk_2872636F8;
  PCWorkingColorVector::PCWorkingColorVector((this + 16), 0.4, 0.4, 0.4, 0.5);
  PCWorkingColorVector::PCWorkingColorVector((this + 32), 0.6, 0.6, 0.6, 0.5);
  *(this + 3) = xmmword_260343AA0;
  *(this + 8) = 0x64000001F4;
  *(this + 72) = 0;
  *(this + 19) = 1;
}

void sub_25FF98FE0(_Unwind_Exception *a1)
{
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiGrid::~LiGrid(OZChannelBase *this)
{
  this->var0 = &unk_287263630;
  this->var11 = &unk_2872636F8;
  v1 = OZChannelBase::setRangeName(this, &off_287263718);
  *(v1 + 88) = &unk_2872DEA38;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount((v1 + 96));
}

{
  LiGrid::~LiGrid(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiGrid::~LiGrid(LiGrid *this)
{
  LiGrid::~LiGrid((this + *(*this - 24)));
}

{
  LiGrid::~LiGrid((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

void LiGrid::getHelium(LiGrid *this, LiAgent *a2)
{
  v16 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  LiAgent::getInversePixelTransform(a2, 0.00001, &v6);
  for (i = 0; i != 128; i += 32)
  {
    v3 = (&v7 + i);
    v4 = *(&v6 + i + 16);
    *v3 = *(&v6 + i);
    v3[1] = v4;
  }

  v5 = HGObject::operator new(0x1A0uLL);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 20) = 0u;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 23) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 25) = 0u;
  LiHeGridShader::LiHeGridShader(v5);
}

uint64_t LiHeGrid::setInversePixelTransform(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  v7 = (*(*a1 + 96))(a1, 6, v4, v5, 0.0, v6);
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[7];
  v11 = (*(*a1 + 96))(a1, 7, v8, v9, 0.0, v10);
  if (v11)
  {
    v7 = v11;
  }

  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[15];
  LODWORD(result) = (*(*a1 + 96))(a1, 8, v12, v13, 0.0, v14);
  if (result)
  {
    return result;
  }

  else
  {
    return v7;
  }
}

void LiHeGrid::~LiHeGrid(HGNode *this)
{
  LiHeGridShader::~LiHeGridShader(this);

  HGObject::operator delete(v1);
}

BOOL ProShade::isZero(uint64_t a1)
{
  v1 = *(a1 + 16);
  {
    return 0;
  }

  v4 = 0;
  var3 = v2->var3;
  if (var3 > 1)
  {
    if (var3 == 2)
    {
      v21 = 0;
      v22 = 0;
      v20 = &unk_2871F25E0;
      v10 = (*(v2->var0 + 26))(v2, &v20);
      if (SHIDWORD(v21) < 1)
      {
        v4 = 1;
      }

      else
      {
        v11 = 0;
        v4 = 0;
        do
        {
          if (v11 >= SHIDWORD(v21))
          {
            PCArray_base::badIndex(v10);
          }

          if (*(v22 + 4 * v11))
          {
            break;
          }

          v4 = ++v11 >= HIDWORD(v21);
        }

        while (HIDWORD(v21) != v11);
      }

      v20 = &unk_2871F25E0;
      if (v21 < 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v21 & ~(v21 >> 31);
      }

      if (v12 == v21)
      {
        v13 = v22;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v14 = (v22 + 4 * SHIDWORD(v21));
        v15 = 4 * ~HIDWORD(v21) + 4;
        goto LABEL_56;
      }

      if (v12)
      {
        operator new[]();
      }
    }

    else
    {
      if (var3 != 3)
      {
        return v4;
      }

      v21 = 0;
      v22 = 0;
      v20 = &unk_2872642E8;
      v6 = (*(v2->var0 + 27))(v2, &v20);
      if (SHIDWORD(v21) < 1)
      {
        v4 = 1;
      }

      else
      {
        v7 = 0;
        v4 = 0;
        do
        {
          if (v7 >= SHIDWORD(v21))
          {
            PCArray_base::badIndex(v6);
          }

          if (*(v22 + 8 * v7) != 0.0)
          {
            break;
          }

          v4 = ++v7 >= HIDWORD(v21);
        }

        while (HIDWORD(v21) != v7);
      }

      v20 = &unk_2872642E8;
      if (v21 < 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v21 & ~(v21 >> 31);
      }

      if (v12 == v21)
      {
        v13 = v22;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v14 = (v22 + 8 * SHIDWORD(v21));
        v15 = 8 * ~HIDWORD(v21) + 8;
LABEL_56:
        bzero(v14, v15);
        goto LABEL_62;
      }

      if (v12)
      {
        operator new[]();
      }
    }

    v13 = 0;
    if (v22)
    {
      MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
    }

    v22 = 0;
LABEL_62:
    v21 = v12;
    if (v13)
    {
      v18 = v13;
LABEL_69:
      MEMORY[0x2666E9ED0](v18, 0x1000C8077774924);
      return v4;
    }

    return v4;
  }

  if (var3 == 1)
  {
    v21 = 0;
    v22 = 0;
    v20 = &unk_287264320;
    v8 = (*(v2->var0 + 25))(v2, &v20);
    if (SHIDWORD(v21) < 1)
    {
      v4 = 1;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      do
      {
        if (v9 >= SHIDWORD(v21))
        {
          PCArray_base::badIndex(v8);
        }

        if (*(v22 + v9))
        {
          break;
        }

        v4 = ++v9 >= HIDWORD(v21);
      }

      while (HIDWORD(v21) != v9);
    }

    v20 = &unk_287264320;
    if (v21 < 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = v21 & ~(v21 >> 31);
    }

    if (v16 == v21)
    {
      v17 = v22;
      if (v21 < 0)
      {
        bzero((v22 + SHIDWORD(v21)), -HIDWORD(v21));
      }
    }

    else
    {
      if (v16)
      {
        operator new[]();
      }

      v17 = 0;
      if (v22)
      {
        MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
      }

      v22 = 0;
    }

    v21 = v16;
    if (v17)
    {
      v18 = v17;
      goto LABEL_69;
    }
  }

  else if (!var3)
  {
    ProShade::Error<PCIllegalArgumentException>::raise(v2, v3);
  }

  return v4;
}

void sub_25FF99B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<int,PCArray_Traits<int>>::~PCArray(va);
  _Unwind_Resume(a1);
}

uint64_t PCArray<BOOL,PCArray_Traits<BOOL>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287264320;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      bzero((v5 + v4), -v4);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

{
  *a1 = &unk_287264320;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<BOOL,PCArray_Traits<BOOL>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t PCArray<double,PCArray_Traits<double>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2872642E8;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      bzero((v5 + 8 * v4), 8 * ~v4 + 8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

BOOL ProShade::isOne(uint64_t a1)
{
  v1 = *(a1 + 16);
  {
    return 0;
  }

  v4 = 0;
  var3 = v2->var3;
  if (var3 > 1)
  {
    if (var3 == 2)
    {
      v21 = 0;
      v22 = 0;
      v20 = &unk_2871F25E0;
      v10 = (*(v2->var0 + 26))(v2, &v20);
      if (SHIDWORD(v21) < 1)
      {
        v4 = 1;
      }

      else
      {
        v11 = 0;
        v4 = 0;
        do
        {
          if (v11 >= SHIDWORD(v21))
          {
            PCArray_base::badIndex(v10);
          }

          if (*(v22 + 4 * v11) != 1)
          {
            break;
          }

          v4 = ++v11 >= HIDWORD(v21);
        }

        while (HIDWORD(v21) != v11);
      }

      v20 = &unk_2871F25E0;
      if (v21 < 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v21 & ~(v21 >> 31);
      }

      if (v12 == v21)
      {
        v13 = v22;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v14 = (v22 + 4 * SHIDWORD(v21));
        v15 = 4 * ~HIDWORD(v21) + 4;
        goto LABEL_56;
      }

      if (v12)
      {
        operator new[]();
      }
    }

    else
    {
      if (var3 != 3)
      {
        return v4;
      }

      v21 = 0;
      v22 = 0;
      v20 = &unk_2872642E8;
      v6 = (*(v2->var0 + 27))(v2, &v20);
      if (SHIDWORD(v21) < 1)
      {
        v4 = 1;
      }

      else
      {
        v7 = 0;
        v4 = 0;
        do
        {
          if (v7 >= SHIDWORD(v21))
          {
            PCArray_base::badIndex(v6);
          }

          if (*(v22 + 8 * v7) != 1.0)
          {
            break;
          }

          v4 = ++v7 >= HIDWORD(v21);
        }

        while (HIDWORD(v21) != v7);
      }

      v20 = &unk_2872642E8;
      if (v21 < 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v21 & ~(v21 >> 31);
      }

      if (v12 == v21)
      {
        v13 = v22;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v14 = (v22 + 8 * SHIDWORD(v21));
        v15 = 8 * ~HIDWORD(v21) + 8;
LABEL_56:
        bzero(v14, v15);
        goto LABEL_62;
      }

      if (v12)
      {
        operator new[]();
      }
    }

    v13 = 0;
    if (v22)
    {
      MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
    }

    v22 = 0;
LABEL_62:
    v21 = v12;
    if (v13)
    {
      v18 = v13;
LABEL_69:
      MEMORY[0x2666E9ED0](v18, 0x1000C8077774924);
      return v4;
    }

    return v4;
  }

  if (var3 == 1)
  {
    v21 = 0;
    v22 = 0;
    v20 = &unk_287264320;
    v8 = (*(v2->var0 + 25))(v2, &v20);
    if (SHIDWORD(v21) < 1)
    {
      v4 = 1;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      do
      {
        if (v9 >= SHIDWORD(v21))
        {
          PCArray_base::badIndex(v8);
        }

        if ((*(v22 + v9) & 1) == 0)
        {
          break;
        }

        v4 = ++v9 >= HIDWORD(v21);
      }

      while (HIDWORD(v21) != v9);
    }

    v20 = &unk_287264320;
    if (v21 < 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = v21 & ~(v21 >> 31);
    }

    if (v16 == v21)
    {
      v17 = v22;
      if (v21 < 0)
      {
        bzero((v22 + SHIDWORD(v21)), -HIDWORD(v21));
      }
    }

    else
    {
      if (v16)
      {
        operator new[]();
      }

      v17 = 0;
      if (v22)
      {
        MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
      }

      v22 = 0;
    }

    v21 = v16;
    if (v17)
    {
      v18 = v17;
      goto LABEL_69;
    }
  }

  else if (!var3)
  {
    ProShade::Error<PCIllegalArgumentException>::raise(v2, v3);
  }

  return v4;
}

void sub_25FF9A1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<int,PCArray_Traits<int>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void ProShade::UnaryOp<ProShade::Negate>::unary(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      ProShade::UnaryOp<ProShade::Negate>::computeUnary(v2);
    }
  }

  operator new();
}

void sub_25FF9A3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::BinaryOp<ProShade::Add>::binary(const PCSharedCount *a1@<X0>, const PCSharedCount *a2@<X1>, uint64_t a3@<X8>)
{
  v22[15] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  if (var0)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = a2[2].var0;
  if (v8)
  {
    if (v7)
    {
      v10 = v9;
      if (v9)
      {
        ProShade::Value::Value(&v19);
        ProShade::Value::Value(v17);
        ProShade::Value::Value(v15);
        (*(*v7 + 224))(v7, &v19);
        (*(*v10 + 224))(v10, v17);
        ProShade::BinaryOp<ProShade::Add>::computeBinary(&v19, v17, v15);
        ProShade::Const::create(v15, v11);
      }
    }
  }

  v19.var0 = &unk_28725E328;
  v21 = 0;
  PCSharedCount::PCSharedCount(v22);
  v12 = a1[2].var0;
  v17[0].var0 = &unk_28725E328;
  v17[2].var0 = v12;
  PCSharedCount::PCSharedCount(v18, a1 + 3);
  v13 = a2[2].var0;
  v15[0] = &unk_28725E328;
  v15[2] = v13;
  PCSharedCount::PCSharedCount(v16, a2 + 3);
  v14 = ProShade::Add::simplify(v17, v15, &v19);
  v15[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v16);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  if (!v14)
  {
    operator new();
  }

  *a3 = &unk_28725E328;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  PCSharedCount::PCSharedCount((a3 + 24), v22);
  v19.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v22);
}

void sub_25FF9A700(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10B1C403815D87CLL);
  *(v4 - 240) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  _Unwind_Resume(a1);
}

void ProShade::BinaryOp<ProShade::Subtract>::binary(const PCSharedCount *a1@<X0>, const PCSharedCount *a2@<X1>, uint64_t a3@<X8>)
{
  v22[15] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  if (var0)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = a2[2].var0;
  if (v8)
  {
    if (v7)
    {
      v10 = v9;
      if (v9)
      {
        ProShade::Value::Value(&v19);
        ProShade::Value::Value(v17);
        ProShade::Value::Value(v15);
        (*(*v7 + 224))(v7, &v19);
        (*(*v10 + 224))(v10, v17);
        ProShade::BinaryOp<ProShade::Subtract>::computeBinary(&v19, v17, v15);
        ProShade::Const::create(v15, v11);
      }
    }
  }

  v19.var0 = &unk_28725E328;
  v21 = 0;
  PCSharedCount::PCSharedCount(v22);
  v12 = a1[2].var0;
  v17[0].var0 = &unk_28725E328;
  v17[2].var0 = v12;
  PCSharedCount::PCSharedCount(v18, a1 + 3);
  v13 = a2[2].var0;
  v15[0] = &unk_28725E328;
  v15[2] = v13;
  PCSharedCount::PCSharedCount(v16, a2 + 3);
  v14 = ProShade::Subtract::simplify(v17, v15, &v19);
  v15[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v16);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  if (!v14)
  {
    operator new();
  }

  *a3 = &unk_28725E328;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  PCSharedCount::PCSharedCount((a3 + 24), v22);
  v19.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v22);
}

void sub_25FF9AA78(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10B1C403815D87CLL);
  *(v4 - 240) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  _Unwind_Resume(a1);
}

void ProShade::BinaryOp<ProShade::Multiply>::binary(const PCSharedCount *a1@<X0>, const PCSharedCount *a2@<X1>, uint64_t a3@<X8>)
{
  v22[15] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  if (var0)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = a2[2].var0;
  if (v8)
  {
    if (v7)
    {
      v10 = v9;
      if (v9)
      {
        ProShade::Value::Value(&v19);
        ProShade::Value::Value(v17);
        ProShade::Value::Value(v15);
        (*(*v7 + 224))(v7, &v19);
        (*(*v10 + 224))(v10, v17);
        ProShade::BinaryOp<ProShade::Multiply>::computeBinary(&v19, v17, v15);
        ProShade::Const::create(v15, v11);
      }
    }
  }

  v19 = &unk_28725E328;
  v21 = 0;
  PCSharedCount::PCSharedCount(v22);
  v12 = a1[2].var0;
  v17[0] = &unk_28725E328;
  v17[2] = v12;
  PCSharedCount::PCSharedCount(v18, a1 + 3);
  v13 = a2[2].var0;
  v15[0] = &unk_28725E328;
  v15[2] = v13;
  PCSharedCount::PCSharedCount(v16, a2 + 3);
  v14 = ProShade::Multiply::simplify(v17, v15, &v19);
  v15[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v16);
  v17[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  if (!v14)
  {
    operator new();
  }

  *a3 = &unk_28725E328;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  PCSharedCount::PCSharedCount((a3 + 24), v22);
  v19 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v22);
}

void sub_25FF9AE24(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10B1C403815D87CLL);
  *(v4 - 240) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  _Unwind_Resume(a1);
}

void ProShade::BinaryOp<ProShade::Divide>::binary(const PCSharedCount *a1@<X0>, const PCSharedCount *a2@<X1>, uint64_t a3@<X8>)
{
  v22[15] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  if (var0)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = a2[2].var0;
  if (v8)
  {
    if (v7)
    {
      v10 = v9;
      if (v9)
      {
        ProShade::Value::Value(&v19);
        ProShade::Value::Value(v17);
        ProShade::Value::Value(v15);
        (*(*v7 + 224))(v7, &v19);
        (*(*v10 + 224))(v10, v17);
        ProShade::BinaryOp<ProShade::Divide>::computeBinary(&v19, v17, v15);
        ProShade::Const::create(v15, v11);
      }
    }
  }

  v19.var0 = &unk_28725E328;
  v21 = 0;
  PCSharedCount::PCSharedCount(v22);
  v12 = a1[2].var0;
  v17[0].var0 = &unk_28725E328;
  v17[2].var0 = v12;
  PCSharedCount::PCSharedCount(v18, a1 + 3);
  v13 = a2[2].var0;
  v15[0] = &unk_28725E328;
  v15[2] = v13;
  PCSharedCount::PCSharedCount(v16, a2 + 3);
  v14 = ProShade::Divide::simplify(v17, v15, &v19);
  v15[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v16);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  if (!v14)
  {
    operator new();
  }

  *a3 = &unk_28725E328;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  PCSharedCount::PCSharedCount((a3 + 24), v22);
  v19.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v22);
}

void sub_25FF9B19C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10B1C403815D87CLL);
  *(v4 - 240) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  _Unwind_Resume(a1);
}

void ProShade::operator==(const PCSharedCount *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (ProShade::VarT<ProShade::Node>::width(a1, a2) == 1)
  {
    operator new();
  }

  var0 = a1[2].var0;
  v8[0] = &unk_28725E328;
  v8[2] = var0;
  PCSharedCount::PCSharedCount(v9, a1 + 3);
  v5 = *(a2 + 16);
  v6[0] = &unk_28725E328;
  v6[2] = v5;
  PCSharedCount::PCSharedCount(&v7, (a2 + 24));
  ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::eval(v8, v6);
}

void sub_25FF9B38C(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Equals>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265090);
  *a1 = &unk_287264FB8;
  *(a1 + 112) = &unk_287265070;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v7 = *(a2 + 7);
  v8 = *(a3 + 7);
  if (v7 != 1)
  {
    if (v8 == 1)
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v9 = v7 == v8;
      v8 = *(a2 + 7);
      if (!v9)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v6);
      }
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = v8;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FF9B4FC(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::operator>(const PCSharedCount *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (ProShade::VarT<ProShade::Node>::width(a1, a2) == 1)
  {
    operator new();
  }

  var0 = a1[2].var0;
  v8[0] = &unk_28725E328;
  v8[2] = var0;
  PCSharedCount::PCSharedCount(v9, a1 + 3);
  v5 = *(a2 + 16);
  v6[0] = &unk_28725E328;
  v6[2] = v5;
  PCSharedCount::PCSharedCount(&v7, (a2 + 24));
  ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::eval(v8, v6);
}

void sub_25FF9B708(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::GreaterThan>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265308);
  *a1 = &unk_287265230;
  *(a1 + 112) = &unk_2872652E8;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v7 = *(a2 + 7);
  v8 = *(a3 + 7);
  if (v7 != 1)
  {
    if (v8 == 1)
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v9 = v7 == v8;
      v8 = *(a2 + 7);
      if (!v9)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v6);
      }
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = v8;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FF9B878(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::operator<=(const PCSharedCount *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (ProShade::VarT<ProShade::Node>::width(a1, a2) == 1)
  {
    operator new();
  }

  var0 = a1[2].var0;
  v8[0] = &unk_28725E328;
  v8[2] = var0;
  PCSharedCount::PCSharedCount(v9, a1 + 3);
  v5 = *(a2 + 16);
  v6[0] = &unk_28725E328;
  v6[2] = v5;
  PCSharedCount::PCSharedCount(&v7, (a2 + 24));
  ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::eval(v8, v6);
}

void sub_25FF9BA84(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::LessThanEquals>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287265580);
  *a1 = &unk_2872654A8;
  *(a1 + 112) = &unk_287265560;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v7 = *(a2 + 7);
  v8 = *(a3 + 7);
  if (v7 != 1)
  {
    if (v8 == 1)
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v9 = v7 == v8;
      v8 = *(a2 + 7);
      if (!v9)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v6);
      }
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = v8;
  ProShade::BinaryOp<ProShade::Multiply>::setFrequency(a1);
  return a1;
}

void sub_25FF9BBF4(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::eval(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::compute(v4, v6);
      }
    }
  }

  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FF9BE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::equal_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::equal_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::equal_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

PCSharedCount *ProShade::VarT<ProShade::Const>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_287263B40;
  PCSharedCount::~PCSharedCount(a1 + 3);
  return a1;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287263C60);
  *a1 = &unk_287263B88;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287263C40;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FF9C2AC(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::equal_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      *Serializer = v11 == v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9C440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::equal_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      *Serializer = v11 == v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9C5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::equal_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v11 = *v10++;
      v12 = v11;
      v13 = *v9++;
      *Serializer = v12 == v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9C700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::VarT<ProShade::Const>::VarT(PCSharedCount *a1, PCShared_base *a2)
{
  a1->var0 = &unk_287263B40;
  a1[2].var0 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(a1 + 3, a2);
  return a1;
}

void ProShade::VarT<ProShade::Const>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_287263B40;
  PCSharedCount::~PCSharedCount(a1 + 3);

  JUMPOUT(0x2666E9F00);
}

void ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(uint64_t a1, const PCString *a2, const PCSharedCount *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  var0 = a2[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  length_high = HIDWORD(var0->length);
  v8 = a3[2].var0;
  if (!v8)
  {
    throw_PCNullPointerException(1);
  }

  if (length_high > v8[7])
  {
    v8 = a2[2].var0;
    if (!v8)
    {
      throw_PCNullPointerException(1);
    }
  }

  v9 = v8[7];
  *(a1 + 28) = v9;
  Width = ProShade::shapeGetWidth(v9, a2);
  v12 = *(a1 + 28);
  if (v12 >= 2)
  {
    v13 = Width;
    v14 = a2[2].var0;
    if (!v14)
    {
      throw_PCNullPointerException(1);
    }

    v15 = HIDWORD(v14->length);
    if (v15 < v12)
    {
      if (v15 != 1)
      {
        ProShade::Error<PCException>::raise<char [27]>("width mismatch (first argument)", v11);
      }

      ProShade::Ctor::makeWidth(v14->length, Width, a2, v22);
      ProShade::VarT<ProShade::Node>::operator=(a2, v22);
      v22[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v23);
    }

    v16 = a3[2].var0;
    if (!v16)
    {
      throw_PCNullPointerException(1);
    }

    v17 = *(v16 + 7);
    if (v17 < *(a1 + 28))
    {
      if (v17 != 1)
      {
        ProShade::Error<PCException>::raise<char [27]>("width mismatch (second argument)", v11);
      }

      ProShade::Ctor::makeWidth(*(v16 + 6), v13, a3, v22);
      ProShade::VarT<ProShade::Node>::operator=(a3, v22);
      v22[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v23);
    }
  }

  v18 = a2[2].var0;
  if (!v18)
  {
    throw_PCNullPointerException(1);
  }

  length = v18->length;
  v20 = a3[2].var0;
  if (!v20)
  {
    throw_PCNullPointerException(1);
  }

  v21 = *(v20 + 6);
  if (length > v21)
  {
    v21 = length;
  }

  *(a1 + 24) = v21;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "equal");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FF9CBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 18, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 5;
  v5[2] = v4 + 6;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 1635086693;
  v6[4] = 108;
  *(v5 + v4 + 17) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FF9CD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "equal");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF9CFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FF9D194(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      return ProShade::eval_type<ProShade::equal_traits,BOOL>(v6, (v4 + 36), a3);
    }
  }

  if (v5 <= 2)
  {
    v8 = *(a2 + 16);

    return ProShade::eval_type<ProShade::equal_traits,int>(v8, (v4 + 36), a3);
  }

LABEL_16:
  v9 = *(a2 + 16);

  return ProShade::eval_type<ProShade::equal_traits,double>(v9, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void *operator+@<X0>(const void **a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 2);
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = *a2;
  if (*a2)
  {
    v7 = 0;
      ;
    }
  }

  v9 = v7;
  v10 = v7 + v6;
  v11 = malloc_type_malloc(v10 + 13, 0x10000403E1C8BA9uLL);
  v11[1] = v10;
  v11[2] = v10 + 1;
  atomic_store(1u, v11);
  atomic_store(0, v11);
  memcpy(v11 + 3, v5, v6);
  result = memcpy(v11 + v6 + 12, a2, v9);
  *(v11 + v10 + 12) = 0;
  *a3 = v11 + 3;
  atomic_fetch_add(v11, 1u);
  return result;
}

void *operator+@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 - 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v7 + v5;
  v10 = malloc_type_malloc(v9 + 13, 0x10000403E1C8BA9uLL);
  v10[1] = v9;
  v10[2] = v9 + 1;
  atomic_store(1u, v10);
  atomic_store(0, v10);
  memcpy(v10 + 3, v4, v5);
  result = memcpy(v10 + v5 + 12, v6, v8);
  *(v10 + v9 + 12) = 0;
  *a3 = v10 + 3;
  atomic_fetch_add(v10, 1u);
  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287263C60);
  *a1 = &unk_287263B88;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287263C40;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_25FF9D6B8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::eval(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>::compute(v4, v6);
      }
    }
  }

  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FF9D8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::greaterThan_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::greaterThan_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::greaterThan_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287263ED8);
  *a1 = &unk_287263E00;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287263EB8;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FF9DCE0(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::greaterThan_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      *Serializer = v11 & (v13 ^ 1);
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9DE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::greaterThan_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      *Serializer = v11 > v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9DFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::greaterThan_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v11 = *v10++;
      v12 = v11;
      v13 = *v9++;
      *Serializer = v12 > v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9E134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "greaterThan");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FF9E2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 24, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 11;
  v5[2] = v4 + 12;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *(v6 + 7) = 1851877460;
  *v6 = *"greaterThan";
  *(v5 + v4 + 23) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FF9E400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "greaterThan");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF9E6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FF9E890(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      return ProShade::eval_type<ProShade::greaterThan_traits,BOOL>(v6, (v4 + 36), a3);
    }
  }

  if (v5 <= 2)
  {
    v8 = *(a2 + 16);

    return ProShade::eval_type<ProShade::greaterThan_traits,int>(v8, (v4 + 36), a3);
  }

LABEL_16:
  v9 = *(a2 + 16);

  return ProShade::eval_type<ProShade::greaterThan_traits,double>(v9, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::greaterThan_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287263ED8);
  *a1 = &unk_287263E00;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287263EB8;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_25FF9EC00(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::eval(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>::compute(v4, v6);
      }
    }
  }

  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FF9EE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::lessThanEqual_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::lessThanEqual_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::lessThanEqual_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287264150);
  *a1 = &unk_287264078;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287264130;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FF9F228(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::lessThanEqual_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      *Serializer = v11 ^ 1 | v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9F3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::lessThanEqual_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      *Serializer = v11 <= v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9F51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::lessThanEqual_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "not implemented yet");
    PCString::PCString(&v15, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v16, &v15, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v11 = *v10++;
      v12 = v11;
      v13 = *v9++;
      *Serializer = v12 <= v13;
      Serializer = (Serializer + 1);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FF9F67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "lessThanEqual");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FF9F818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v7, "Func ");
  v2 = v7;
  if (v7)
  {
    v3 = *(v7 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 26, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 13;
  v5[2] = v4 + 14;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  qmemcpy(v5 + v4 + 12, "lessThanEqual", 13);
  *(v5 + v4 + 25) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v7 && atomic_fetch_add(v7 - 3, 0xFFFFFFFF) == 1)
  {
    *v7 = 0;
    if (v7)
    {
      v6 = v7 - 12;
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }
}

void sub_25FF9F944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "lessThanEqual");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF9FC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FF9FDD4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      return ProShade::eval_type<ProShade::lessThanEqual_traits,BOOL>(v6, (v4 + 36), a3);
    }
  }

  if (v5 <= 2)
  {
    v8 = *(a2 + 16);

    return ProShade::eval_type<ProShade::lessThanEqual_traits,int>(v8, (v4 + 36), a3);
  }

LABEL_16:
  v9 = *(a2 + 16);

  return ProShade::eval_type<ProShade::lessThanEqual_traits,double>(v9, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::lessThanEqual_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287264150);
  *a1 = &unk_287264078;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287264130;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_25FFA0144(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void PCArray<double,PCArray_Traits<double>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2872642E8;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      bzero((v5 + 8 * v4), 8 * ~v4 + 8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<double,PCArray_Traits<double>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v15, "PCArray::resize");
    PCException::PCException(exception, &v15);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 < a2)
    {
      bzero((*(a1 + 16) + 8 * v6), 8 * (~v6 + a2) + 8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v7 = *(a1 + 12);
    if (a2 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v9 = *(a1 + 16);
      v10 = v8;
      v11 = 0;
      do
      {
        v12 = *v9++;
        *v11++ = v12;
        --v10;
      }

      while (v10);
    }

    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v7 < a2)
    {
      bzero((8 * v7), 8 * (~v7 + a2) + 8);
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void PCArray<BOOL,PCArray_Traits<BOOL>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287264320;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      bzero((v5 + v4), -v4);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<BOOL,PCArray_Traits<BOOL>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v15, "PCArray::resize");
    PCException::PCException(exception, &v15);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 < a2)
    {
      bzero((*(a1 + 16) + v6), (~v6 + a2) + 1);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v7 = *(a1 + 12);
    if (a2 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v9 = *(a1 + 16);
      v10 = v8;
      v11 = 0;
      do
      {
        v12 = *v9++;
        *v11++ = v12;
        --v10;
      }

      while (v10);
    }

    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v7 < a2)
    {
      bzero(v7, (~v7 + a2) + 1);
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void ProShade::UnaryOp<ProShade::Negate>::computeUnary(_DWORD *a1)
{
  v1 = a1[6];
  if (v1 <= 1)
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = &unk_287264320;
    v13 = &unk_287264320;
    v14 = 0;
    (*(*a1 + 200))(a1, &v16);
    if (SHIDWORD(v17) < 1)
    {
      ProShade::Const::create();
    }

    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("- operator doesn't apply to BOOL", v2);
  }

  if (v1 == 2)
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = &unk_2871F25E0;
    v13 = &unk_2871F25E0;
    v14 = 0;
    v3 = (*(*a1 + 208))(a1, &v16);
    v4 = HIDWORD(v17);
    if (SHIDWORD(v17) >= 1)
    {
      v5 = 0;
      do
      {
        if (v5 >= SHIDWORD(v17))
        {
          PCArray_base::badIndex(v3);
        }

        v6 = *(v18 + 4 * v5);
        if (v14 <= SHIDWORD(v14))
        {
          v7 = 2 * (HIDWORD(v14) + 1) + 1;
        }

        else
        {
          v7 = v14;
        }

        PCArray<int,PCArray_Traits<int>>::resize(&v13, HIDWORD(v14) + 1, v7);
        *(v15 + 4 * SHIDWORD(v14) - 4) = -v6;
        ++v5;
      }

      while (v4 != v5);
    }

    ProShade::Const::create();
  }

  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = &unk_2872642E8;
  v13 = &unk_2872642E8;
  v14 = 0;
  v8 = (*(*a1 + 216))(a1, &v16);
  v9 = HIDWORD(v17);
  if (SHIDWORD(v17) >= 1)
  {
    v10 = 0;
    do
    {
      if (v10 >= SHIDWORD(v17))
      {
        PCArray_base::badIndex(v8);
      }

      v11 = *(v18 + 8 * v10);
      if (v14 <= SHIDWORD(v14))
      {
        v12 = 2 * (HIDWORD(v14) + 1) + 1;
      }

      else
      {
        v12 = v14;
      }

      PCArray<double,PCArray_Traits<double>>::resize(&v13, HIDWORD(v14) + 1, v12);
      *(v15 + 8 * SHIDWORD(v14) - 8) = -v11;
      ++v10;
    }

    while (v9 != v10);
  }

  ProShade::Const::create();
}

void sub_25FFA0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  PCArray<double,PCArray_Traits<double>>::~PCArray(&a9);
  PCArray<double,PCArray_Traits<double>>::~PCArray(&a12);
  _Unwind_Resume(a1);
}

uint64_t ProShade::UnaryOp<ProShade::Negate>::UnaryOp(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_287264438);
  *a1 = &unk_287264360;
  *(a1 + 80) = &unk_287264418;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  *(a1 + 24) = *(a2 + 3);
  v4 = *(a1 + 64);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  v5 = *(v4 + 40);
  if (*(a1 + 44) < v5)
  {
    v5 = *(a1 + 44);
  }

  *(a1 + 40) = v5;
  return a1;
}

void sub_25FFA0F10(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Error<PCIllegalArgumentException>::raise<char [33]>(OZChannelBase *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(a1, a2);
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v4, a1);
  PCException::PCException(exception, &v4);
  *exception = &unk_2872DE188;
}

uint64_t ProShade::UnaryOp<ProShade::Negate>::~UnaryOp(uint64_t a1)
{
  *a1 = &unk_287264360;
  *(a1 + 80) = &unk_287264418;
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264478;
  *(a1 + 80) = off_287264530;
  LiString::dec((a1 + 32));
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  PCWeakCount::~PCWeakCount((a1 + 88));
  return a1;
}

void ProShade::UnaryOp<ProShade::Negate>::~UnaryOp(uint64_t a1)
{
  *a1 = &unk_287264360;
  *(a1 + 80) = &unk_287264418;
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264478;
  *(a1 + 80) = off_287264530;
  LiString::dec((a1 + 32));
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  PCWeakCount::~PCWeakCount((a1 + 88));

  JUMPOUT(0x2666E9F00);
}

void ProShade::UnaryOp<ProShade::Negate>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v6)
  {
    v3 = *(v6 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5 = v3 + 1;
  v4[1] = v5;
  v4[2] = v3 + 2;
  atomic_store(1u, v4);
  atomic_store(0, v4);
  *(v4 + 12) = 45;
  memcpy(v4 + 13, v6, v3);
  *(v4 + v5 + 12) = 0;
  *a2 = v4 + 3;
  atomic_fetch_add(v4, 1u);
  if (v6)
  {
    if (atomic_fetch_add(v6 - 3, 0xFFFFFFFF) == 1)
    {
      *v6 = 0;
      free(v6 - 12);
    }
  }
}

void sub_25FFA1320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::UnaryOp<ProShade::Negate>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "UnaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 45;
  *(v6 + v4 + 1) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFA1438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::UnaryOp<ProShade::Negate>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "-");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

uint64_t ProShade::UnaryOp<ProShade::Negate>::inputs(const PCSharedCount *a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v4);
  v5 = *(a2 + 12);
  if (*(a2 + 8) <= v5)
  {
    v6 = 2 * (v5 + 1) + 1;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v5 + 1, v6);
  v7 = *(a2 + 16) + 32 * *(a2 + 12) - 32;

  return ProShade::VarT<ProShade::Node>::operator=(v7, a1 + 6);
}

void ProShade::UnaryOp<ProShade::Negate>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v6[1] = *MEMORY[0x277D85DE8];
  (**a2)(v5, a2, a1 + 48);
  if (v5[2] != *(a1 + 8))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v5[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v6);
}

void sub_25FFA1638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x2666E9F00](v5, 0x10B1C40515157B5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ***ProShade::UnaryOp<ProShade::Negate>::computeValue(PCArray_base *a1, uint64_t a2, PCString *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  return ProShade::UnaryOp<ProShade::Negate>::computeUnary(v3, a3);
}

void virtual thunk toProShade::UnaryOp<ProShade::Negate>::~UnaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264360;
  v1[10].var0 = &unk_287264418;
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264478;
  v1[10].var0 = off_287264530;
  LiString::dec(&v1[4]);
  v1[10].var0 = &unk_2872DEA38;
  LOBYTE(v1[12].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[11].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264360;
  v1[10].var0 = &unk_287264418;
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264478;
  v1[10].var0 = off_287264530;
  LiString::dec(&v1[4]);
  v1[10].var0 = &unk_2872DEA38;
  LOBYTE(v1[12].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[11].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::UnaryOp<ProShade::Negate>::UnaryOp(uint64_t a1, PCShared_base *a2, int a3)
{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_287264438);
  *a1 = &unk_287264360;
  *(a1 + 80) = &unk_287264418;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 44) = a3;
  v6 = *(a1 + 64);
  if (!v6)
  {
    throw_PCNullPointerException(1);
  }

  v7 = *(v6 + 40);
  if (a3 < v7)
  {
    v7 = a3;
  }

  *(a1 + 40) = v7;
  return a1;
}

void sub_25FFA1A98(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::UnaryOp<ProShade::Negate>::UnaryOp(uint64_t a1)
{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_287264438);
  *a1 = &unk_287264360;
  *(a1 + 80) = &unk_287264418;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  return a1;
}

void sub_25FFA1BD0(_Unwind_Exception *a1)
{
  v5 = v4;
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ***ProShade::UnaryOp<ProShade::Negate>::computeUnary(const PCString *a1, PCString *a2)
{
  if (LODWORD(a1->var0) == 2)
  {
    return ProShade::computeUnaryType<ProShade::Negate,int>(a1, a2);
  }

  if (LODWORD(a1->var0) == 1)
  {
    return ProShade::computeUnaryType<ProShade::Negate,BOOL>(a1, a2);
  }

  return ProShade::computeUnaryType<ProShade::Negate,double>(a1, a2);
}

void ***ProShade::computeUnaryType<ProShade::Negate,BOOL>(const PCString *a1, PCString *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);
  v5 = Size;
  var0_low = LODWORD(a1->var0);
  if (var0_low != 1)
  {
    MEMORY[0x28223BE20](Size);
    v8 = v12 - v7;
    bzero(v12 - v7, v9);
    ProShade::copyData(var0_low, a1 + 2, 1, v8, v5);
  }

  ProShade::Value::set(a2, 1, HIDWORD(a1->var0));
  result = OZChannelBase::getSerializer(a2);
  if (v5 > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("- operator doesn't apply to BOOL", v11);
  }

  return result;
}

void ***ProShade::computeUnaryType<ProShade::Negate,int>(const PCString *a1, PCString *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);
  v5 = Size;
  var0_low = LODWORD(a1->var0);
  if (var0_low != 2)
  {
    MEMORY[0x28223BE20](Size);
    v8 = v14 - v7;
    bzero(v14 - v7, v9);
    ProShade::copyData(var0_low, a1 + 2, 2, v8, v5);
  }

  ProShade::Value::set(a2, 2, HIDWORD(a1->var0));
  result = OZChannelBase::getSerializer(a2);
  if (v5 >= 1)
  {
    v11 = a1 + 2;
    v12 = v5;
    do
    {
      var0 = v11->var0;
      v11 = (v11 + 4);
      *result = -var0;
      result = (result + 4);
      --v12;
    }

    while (v12);
  }

  return result;
}

void ***ProShade::computeUnaryType<ProShade::Negate,double>(const PCString *a1, PCString *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);
  v5 = Size;
  var0_low = LODWORD(a1->var0);
  if (var0_low != 3)
  {
    MEMORY[0x28223BE20](Size);
    v8 = v14 - v7;
    bzero(v14 - v7, v9);
    ProShade::copyData(var0_low, a1 + 2, 3, v8, v5);
  }

  ProShade::Value::set(a2, 3, HIDWORD(a1->var0));
  result = OZChannelBase::getSerializer(a2);
  if (v5 >= 1)
  {
    v11 = &a1[2];
    v12 = v5;
    do
    {
      v13 = *v11++;
      *result++ = -v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

double ProShade::BinaryOp<ProShade::Add>::computeBinary(const PCString *a1, const PCString *a2, uint64_t a3)
{
  if (SLODWORD(a1->var0) > 1)
  {
    if (LODWORD(a1->var0) != 2)
    {
      return ProShade::computeBinaryType<ProShade::Add,double>(a1, a2, a3);
    }

    var0 = a2->var0;
  }

  else
  {
    var0 = a2->var0;
    if (SLODWORD(a2->var0) < 2)
    {
      ProShade::computeBinaryType<ProShade::Add,BOOL>(a1, a2, a3);
      return result;
    }
  }

  if (var0 <= 2)
  {
    ProShade::computeBinaryType<ProShade::Add,int>(a1, a2, a3);
    return result;
  }

  return ProShade::computeBinaryType<ProShade::Add,double>(a1, a2, a3);
}

BOOL ProShade::Add::simplify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (ProShade::isZero(a1))
  {
    v5 = a2;
  }

  else
  {
    result = ProShade::isZero(a2);
    if (!result)
    {
      return result;
    }
  }

  ProShade::VarT<ProShade::Node>::operator=(a3, v5);
  return 1;
}

uint64_t ProShade::BinaryOp<ProShade::Add>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_2872646B0);
  *a1 = &unk_2872645D8;
  *(a1 + 112) = &unk_287264690;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v7 = *(a2 + 7);
  v8 = *(a3 + 7);
  if (v7 != 1)
  {
    if (v8 == 1)
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v9 = v7 == v8;
      v8 = *(a2 + 7);
      if (!v9)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v6);
      }
    }
  }

  v10 = *(a2 + 6);
  if (v10 <= *(a3 + 6))
  {
    v10 = *(a3 + 6);
  }

  *(a1 + 24) = v10;
  *(a1 + 28) = v8;
  ProShade::BinaryOp<ProShade::Add>::setFrequency(a1);
  return a1;
}

void sub_25FFA20F4(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Add,BOOL>(const PCString *a1, const PCString *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);
  v8 = ProShade::shapeGetSize(HIDWORD(a2->var0), v7);
  v10 = v8;
  var0_low = LODWORD(a1->var0);
  if (var0_low != 1)
  {
    MEMORY[0x28223BE20](v8);
    v13 = &v24 - v12;
    bzero(&v24 - v12, v14);
    v8 = ProShade::copyData(var0_low, a1 + 2, 1, v13, Size);
  }

  v15 = LODWORD(a2->var0);
  if (v15 != 1)
  {
    MEMORY[0x28223BE20](v8);
    v17 = &v24 - v16;
    bzero(&v24 - v16, v18);
    ProShade::copyData(v15, a2 + 2, 1, v17, v10);
  }

  var0_high = HIDWORD(a1->var0);
  if (var0_high != HIDWORD(a2->var0))
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 1, var0_high);
  result = ProShade::shapeIsVector(HIDWORD(a1->var0));
  v22 = HIDWORD(a1->var0) == 1 || result;
  if (v22 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v26, "not implemented yet");
    PCString::PCString(&v25, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v26, &v25, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("+ operator doesn't apply to BOOL", v21);
  }

  return result;
}

void sub_25FFA23A0(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Add,int>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 2)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v28 - v13;
    bzero(&v28 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 2, v12, Size);
  }

  v15 = *a2;
  if (v15 == 2)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v28 - v17;
    bzero(&v28 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 2, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 2, v19);
  result = ProShade::shapeIsVector(a1[1]);
  v21 = a1[1] == 1 || result;
  if (v21 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v30, "not implemented yet");
    PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v30, &v29, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v22 = (a3 + 16);
    v23 = Size;
    do
    {
      v25 = *v12;
      v12 += 4;
      v24 = v25;
      v26 = *v16;
      v16 += 4;
      *v22++ = v26 + v24;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_25FFA262C(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

double ProShade::computeBinaryType<ProShade::Add,double>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 3)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v29 - v13;
    bzero(&v29 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 3, v12, Size);
  }

  v15 = *a2;
  if (v15 == 3)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v29 - v17;
    bzero(&v29 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 3, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 3, v19);
  IsVector = ProShade::shapeIsVector(a1[1]);
  v22 = a1[1] == 1 || IsVector;
  if (v22 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v31, "not implemented yet");
    PCString::PCString(&v30, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v31, &v30, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v23 = (a3 + 16);
    v24 = Size;
    do
    {
      v25 = *v12;
      v12 += 8;
      v26 = v25;
      v27 = *v16;
      v16 += 8;
      result = v26 + v27;
      *v23++ = result;
      --v24;
    }

    while (v24);
  }

  return result;
}

void sub_25FFA28B8(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Add>::setFrequency(uint64_t result)
{
  v1 = *(result + 64);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(v1 + 40);
  v3 = *(result + 96);
  if (!v3)
  {
    throw_PCNullPointerException(1);
  }

  v4 = *(v3 + 40);
  if (v2 > v4)
  {
    v4 = v2;
  }

  if (*(result + 44) < v4)
  {
    v4 = *(result + 44);
  }

  *(result + 40) = v4;
  return result;
}

uint64_t ProShade::BinaryOp<ProShade::Add>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_2872645D8;
  *(a1 + 112) = &unk_287264690;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_2872646F0;
  *(a1 + 112) = off_2872647A8;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::Add>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_2872645D8;
  *(a1 + 112) = &unk_287264690;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_2872646F0;
  *(a1 + 112) = off_2872647A8;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::Add>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 14, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 1;
  v10[2] = v9 + 2;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 43;
  *(v11 + v9 + 1) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFA2F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::Add>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 43;
  *(v6 + v4 + 1) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFA318C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::Add>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "+");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

uint64_t ProShade::BinaryOp<ProShade::Add>::inputs(const PCSharedCount *a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v4);
  v5 = *(a2 + 12);
  if (*(a2 + 8) <= v5)
  {
    v6 = 2 * (v5 + 1) + 1;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v5 + 1, v6);
  ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + 32 * *(a2 + 12) - 32, a1 + 6);
  v7 = *(a2 + 12);
  if (*(a2 + 8) <= v7)
  {
    v8 = 2 * (v7 + 1) + 1;
  }

  else
  {
    v8 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v7 + 1, v8);
  v9 = *(a2 + 16) + 32 * *(a2 + 12) - 32;

  return ProShade::VarT<ProShade::Node>::operator=(v9, a1 + 10);
}

void ProShade::BinaryOp<ProShade::Add>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFA3444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Add>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::BinaryOp<ProShade::Add>::computeBinary(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::Add>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_2872645D8;
  v1[14].var0 = &unk_287264690;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872646F0;
  v1[14].var0 = off_2872647A8;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_2872645D8;
  v1[14].var0 = &unk_287264690;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872646F0;
  v1[14].var0 = off_2872647A8;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::Add>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_2872646B0);
  *a1 = &unk_2872645D8;
  *(a1 + 112) = &unk_287264690;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v9 = *(a2 + 7);
  v10 = *(a3 + 7);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v11 = v9 == v10;
      v10 = *(a2 + 7);
      if (!v11)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v8);
      }
    }
  }

  v12 = *(a2 + 6);
  if (v12 <= *(a3 + 6))
  {
    v12 = *(a3 + 6);
  }

  *(a1 + 24) = v12;
  *(a1 + 28) = v10;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Add>::setFrequency(a1);
  return a1;
}

void sub_25FFA3984(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Add>::BinaryOp(uint64_t a1)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_2872646B0);
  *a1 = &unk_2872645D8;
  *(a1 + 112) = &unk_287264690;
  *(a1 + 48) = &unk_28725E328;
  *(a1 + 64) = 0;
  PCSharedCount::PCSharedCount((a1 + 72));
  *(a1 + 80) = &unk_28725E328;
  *(a1 + 96) = 0;
  PCSharedCount::PCSharedCount((a1 + 104));
  return a1;
}

void sub_25FFA3B18(_Unwind_Exception *a1)
{
  v7 = v4;
  *v6 = v7;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Add>::copyFrom(ProShade::Node *a1, const PCSharedCount *a2)
{
  ProShade::VarT<ProShade::Node>::operator=(a1 + 48, a2 + 6);
  ProShade::VarT<ProShade::Node>::operator=(a1 + 80, a2 + 10);

  return ProShade::Node::copyFrom(a1, a2);
}

double ProShade::BinaryOp<ProShade::Subtract>::computeBinary(const PCString *a1, const PCString *a2, uint64_t a3)
{
  if (SLODWORD(a1->var0) > 1)
  {
    if (LODWORD(a1->var0) != 2)
    {
      return ProShade::computeBinaryType<ProShade::Subtract,double>(a1, a2, a3);
    }

    var0 = a2->var0;
  }

  else
  {
    var0 = a2->var0;
    if (SLODWORD(a2->var0) < 2)
    {
      ProShade::computeBinaryType<ProShade::Subtract,BOOL>(a1, a2, a3);
      return result;
    }
  }

  if (var0 <= 2)
  {
    ProShade::computeBinaryType<ProShade::Subtract,int>(a1, a2, a3);
    return result;
  }

  return ProShade::computeBinaryType<ProShade::Subtract,double>(a1, a2, a3);
}

BOOL ProShade::Subtract::simplify(const PCSharedCount *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (ProShade::isZero(a1))
  {
    ProShade::UnaryOp<ProShade::Negate>::unary(a2);
  }

  result = ProShade::isZero(a2);
  if (result)
  {
    ProShade::VarT<ProShade::Node>::operator=(a3, a1);
    return 1;
  }

  return result;
}

uint64_t ProShade::BinaryOp<ProShade::Subtract>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264928);
  *a1 = &unk_287264850;
  *(a1 + 112) = &unk_287264908;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v7 = *(a2 + 7);
  v8 = *(a3 + 7);
  if (v7 != 1)
  {
    if (v8 == 1)
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v9 = v7 == v8;
      v8 = *(a2 + 7);
      if (!v9)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v6);
      }
    }
  }

  v10 = *(a2 + 6);
  if (v10 <= *(a3 + 6))
  {
    v10 = *(a3 + 6);
  }

  *(a1 + 24) = v10;
  *(a1 + 28) = v8;
  ProShade::BinaryOp<ProShade::Add>::setFrequency(a1);
  return a1;
}

void sub_25FFA3E24(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Subtract,BOOL>(const PCString *a1, const PCString *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);
  v8 = ProShade::shapeGetSize(HIDWORD(a2->var0), v7);
  v10 = v8;
  var0_low = LODWORD(a1->var0);
  if (var0_low != 1)
  {
    MEMORY[0x28223BE20](v8);
    v13 = &v24 - v12;
    bzero(&v24 - v12, v14);
    v8 = ProShade::copyData(var0_low, a1 + 2, 1, v13, Size);
  }

  v15 = LODWORD(a2->var0);
  if (v15 != 1)
  {
    MEMORY[0x28223BE20](v8);
    v17 = &v24 - v16;
    bzero(&v24 - v16, v18);
    ProShade::copyData(v15, a2 + 2, 1, v17, v10);
  }

  var0_high = HIDWORD(a1->var0);
  if (var0_high != HIDWORD(a2->var0))
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 1, var0_high);
  result = ProShade::shapeIsVector(HIDWORD(a1->var0));
  v22 = HIDWORD(a1->var0) == 1 || result;
  if (v22 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v26, "not implemented yet");
    PCString::PCString(&v25, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v26, &v25, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("- operator doesn't apply to BOOL", v21);
  }

  return result;
}

void sub_25FFA40D0(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

BOOL ProShade::computeBinaryType<ProShade::Subtract,int>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 2)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v28 - v13;
    bzero(&v28 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 2, v12, Size);
  }

  v15 = *a2;
  if (v15 == 2)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v28 - v17;
    bzero(&v28 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 2, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 2, v19);
  result = ProShade::shapeIsVector(a1[1]);
  v21 = a1[1] == 1 || result;
  if (v21 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v30, "not implemented yet");
    PCString::PCString(&v29, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v30, &v29, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v22 = (a3 + 16);
    v23 = Size;
    do
    {
      v25 = *v12;
      v12 += 4;
      v24 = v25;
      v26 = *v16;
      v16 += 4;
      *v22++ = v24 - v26;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_25FFA435C(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

double ProShade::computeBinaryType<ProShade::Subtract,double>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  Size = ProShade::shapeGetSize(a1[1], a2);
  v8 = ProShade::shapeGetSize(a2[1], v7);
  v10 = v8;
  v11 = *a1;
  if (v11 == 3)
  {
    v12 = (a1 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v12 = &v29 - v13;
    bzero(&v29 - v13, v14);
    v8 = ProShade::copyData(v11, a1 + 2, 3, v12, Size);
  }

  v15 = *a2;
  if (v15 == 3)
  {
    v16 = (a2 + 4);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v16 = &v29 - v17;
    bzero(&v29 - v17, v18);
    ProShade::copyData(v15, a2 + 2, 3, v16, v10);
  }

  v19 = a1[1];
  if (v19 != a2[1])
  {
    ProShade::Error<PCException>::raise<char [27]>("mismatched operator inputs", v9);
  }

  ProShade::Value::set(a3, 3, v19);
  IsVector = ProShade::shapeIsVector(a1[1]);
  v22 = a1[1] == 1 || IsVector;
  if (v22 != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v31, "not implemented yet");
    PCString::PCString(&v30, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSOp.cpp");
    PCException::PCException(exception, &v31, &v30, 426);
    *exception = &unk_2871F6178;
  }

  if (Size >= 1)
  {
    v23 = (a3 + 16);
    v24 = Size;
    do
    {
      v25 = *v12;
      v12 += 8;
      v26 = v25;
      v27 = *v16;
      v16 += 8;
      result = v26 - v27;
      *v23++ = result;
      --v24;
    }

    while (v24);
  }

  return result;
}

void sub_25FFA45E8(_Unwind_Exception *a1)
{
  PCString::~PCString((v3 - 88));
  PCString::~PCString((v3 - 80));
  if (v2)
  {
    __cxa_free_exception(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::BinaryOp<ProShade::Subtract>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264850;
  *(a1 + 112) = &unk_287264908;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264968;
  *(a1 + 112) = off_287264A20;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));
  return a1;
}

void ProShade::BinaryOp<ProShade::Subtract>::~BinaryOp(uint64_t a1)
{
  *a1 = &unk_287264850;
  *(a1 + 112) = &unk_287264908;
  *(a1 + 80) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 104));
  *(a1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((a1 + 72));
  *a1 = off_287264968;
  *(a1 + 112) = off_287264A20;
  LiString::dec((a1 + 32));
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 128) = 0;
  PCWeakCount::~PCWeakCount((a1 + 120));

  JUMPOUT(0x2666E9F00);
}

void ProShade::BinaryOp<ProShade::Subtract>::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(a1 + 48);
  if (v25)
  {
    v4 = *(v25 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 12) = 40;
  memcpy(v5 + 13, v25, v4);
  *(v5 + v4 + 13) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v22 = a2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  memcpy(v7 + 3, v5 + 3, v6);
  *(v8 + v6) = 32;
  *(v8 + v6 + 1) = 0;
  atomic_fetch_add(v7, 1u);
  v23 = v7;
  v9 = v7[1];
  v10 = malloc_type_malloc(v9 + 14, 0x10000403E1C8BA9uLL);
  v10[1] = v9 + 1;
  v10[2] = v9 + 2;
  atomic_store(1u, v10);
  v11 = v10 + 3;
  atomic_store(0, v10);
  memcpy(v10 + 3, v7 + 3, v9);
  *(v11 + v9) = 45;
  *(v11 + v9 + 1) = 0;
  atomic_fetch_add(v10, 1u);
  v12 = v10[1];
  v13 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v13);
  v14 = v13 + 3;
  atomic_store(0, v13);
  v13[1] = v12 + 1;
  v13[2] = v12 + 2;
  memcpy(v13 + 3, v10 + 3, v12);
  v14[v12] = 32;
  v14[v12 + 1] = 0;
  atomic_fetch_add(v13, 1u);
  ProShade::VarT<ProShade::Node>::repr(a1 + 80);
  v15 = v13[1];
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v14, v15);
  memcpy(v18 + v15 + 12, v24, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v22 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    free(v24 - 12);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    free(v23);
  }

  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    free(v5);
  }

  if (v25)
  {
    if (atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      free(v25 - 12);
    }
  }
}

void sub_25FFA4C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    free(a12);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::BinaryOp<ProShade::Subtract>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "BinaryOp ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 14, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 1;
  v5[2] = v4 + 2;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 45;
  *(v6 + v4 + 1) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFA4E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::BinaryOp<ProShade::Subtract>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "-");
  ProShade::VarT<ProShade::Node>::hash(a1 + 48, &v5);
  PCHashWriteStream::writeValue(this, &v5);
  ProShade::VarT<ProShade::Node>::hash(a1 + 80, &v5);
  return PCHashWriteStream::writeValue(this, &v5);
}

void ProShade::BinaryOp<ProShade::Subtract>::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  (**a2)(v8, a2, a1 + 48);
  (**a2)(v6, a2, a1 + 80);
  if (v8[2] != *(a1 + 8) || v6[2] != *(a1 + 12))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v6[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v7);
  v8[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9);
}

void sub_25FFA5044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C403815D87CLL);
  PCSharedCount::~PCSharedCount(va);
  v9 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  _Unwind_Resume(a1);
}

double ProShade::BinaryOp<ProShade::Subtract>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = (*(a2 + 16) + 144);
  v6 = *(a2 + 16);

  return ProShade::BinaryOp<ProShade::Subtract>::computeBinary(v6, v5, a3);
}

void virtual thunk toProShade::BinaryOp<ProShade::Subtract>::~BinaryOp(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264850;
  v1[14].var0 = &unk_287264908;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264968;
  v1[14].var0 = off_287264A20;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[15].var0);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->var0 = &unk_287264850;
  v1[14].var0 = &unk_287264908;
  v1[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 13);
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287264968;
  v1[14].var0 = off_287264A20;
  LiString::dec(&v1[4]);
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::BinaryOp<ProShade::Subtract>::BinaryOp(uint64_t a1, PCShared_base *a2, PCShared_base *a3, int a4)
{
  *(a1 + 112) = &unk_2872DEA38;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  ProShade::Node::Node(a1, &off_287264928);
  *a1 = &unk_287264850;
  *(a1 + 112) = &unk_287264908;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  ProShade::VarT<ProShade::Node>::VarT((a1 + 80), a3);
  v9 = *(a2 + 7);
  v10 = *(a3 + 7);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v11 = v9 == v10;
      v10 = *(a2 + 7);
      if (!v11)
      {
        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("vector size mismatch", v8);
      }
    }
  }

  v12 = *(a2 + 6);
  if (v12 <= *(a3 + 6))
  {
    v12 = *(a3 + 6);
  }

  *(a1 + 24) = v12;
  *(a1 + 28) = v10;
  *(a1 + 44) = a4;
  ProShade::BinaryOp<ProShade::Add>::setFrequency(a1);
  return a1;
}