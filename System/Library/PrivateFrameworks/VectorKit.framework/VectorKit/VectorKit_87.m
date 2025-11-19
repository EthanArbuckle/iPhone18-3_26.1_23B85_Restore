void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,0>(__int16 *a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (v8 >= *a1)
  {
    if (v9 < v8)
    {
      std::swap[abi:nn200100]<md::LabelExternalTextElement>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, v10);
      goto LABEL_10;
    }

    std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::swap[abi:nn200100]<md::LabelExternalTextElement>(a3, a4);
    if (*a3 < *a2)
    {
      std::swap[abi:nn200100]<md::LabelExternalTextElement>(a2, a3);
      if (*a2 < *v7)
      {

        std::swap[abi:nn200100]<md::LabelExternalTextElement>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*>(__int16 *a1, __int16 *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 104);
        v5 = a2 - 52;
        v10 = *(a2 - 104);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1 + 52, v5);
          if (*(v3 + 104) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = v3 + 52;
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, a1 + 52);
          if (*v5 >= *(v3 + 104))
          {
            return 1;
          }

          a1 = v3 + 52;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,0>(a1, a1 + 52, a1 + 104, a2 - 52);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,0>(a1, a1 + 52, a1 + 104, a1 + 156);
        v7 = *(v2 - 104);
        v6 = v2 - 52;
        if (v7 >= *(v3 + 312))
        {
          return 1;
        }

        std::swap[abi:nn200100]<md::LabelExternalTextElement>(v3 + 156, v6);
        if (*(v3 + 312) >= *(v3 + 208))
        {
          return 1;
        }

        std::swap[abi:nn200100]<md::LabelExternalTextElement>(v3 + 104, v3 + 156);
        if (*(v3 + 208) >= *(v3 + 104))
        {
          return 1;
        }

        std::swap[abi:nn200100]<md::LabelExternalTextElement>(v3 + 52, v3 + 104);
        if (*(v3 + 104) >= *v3)
        {
          return 1;
        }

        v8 = v3 + 52;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 52;
      if (*(a2 - 104) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = (a1 + 104);
  v11 = *(a1 + 208);
  v13 = *(a1 + 104);
  if (v13 >= *a1)
  {
    if (v11 >= v13)
    {
      goto LABEL_31;
    }

    std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1 + 52, a1 + 104);
    if (*(v3 + 104) >= *v3)
    {
      goto LABEL_31;
    }

    a1 = v3;
    v14 = v3 + 52;
    goto LABEL_30;
  }

  if (v11 < v13)
  {
LABEL_22:
    v14 = v3 + 104;
LABEL_30:
    std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, v14);
    goto LABEL_31;
  }

  std::swap[abi:nn200100]<md::LabelExternalTextElement>(a1, a1 + 52);
  if (*(v3 + 208) < *(v3 + 104))
  {
    a1 = v3 + 52;
    goto LABEL_22;
  }

LABEL_31:
  v15 = (v3 + 156);
  if (v3 + 156 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v34 = v2;
  while (*v15 >= *v12)
  {
LABEL_57:
    v12 = v15;
    v16 += 104;
    v15 += 104;
    if (v15 == v2)
    {
      return 1;
    }
  }

  v18 = *v15;
  v36 = *(v15 + 1);
  *v46 = *(v15 + 2);
  *&v46[7] = *(v15 + 23);
  v35 = v15[31];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v38 = *(v15 + 4);
  *v45 = *(v15 + 5);
  *&v45[7] = *(v15 + 47);
  v37 = v15[55];
  *(v15 + 3) = 0;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  *(v15 + 6) = 0;
  v40 = *(v15 + 7);
  *&v44[7] = *(v15 + 71);
  *v44 = *(v15 + 8);
  v39 = v15[79];
  *(v15 + 7) = 0;
  *(v15 + 8) = 0;
  v42 = *(v15 + 10);
  *&v43[7] = *(v15 + 95);
  *v43 = *(v15 + 11);
  v41 = v15[103];
  *(v15 + 9) = 0;
  *(v15 + 10) = 0;
  v19 = v16;
  *(v15 + 11) = 0;
  *(v15 + 12) = 0;
  while (1)
  {
    v20 = v19;
    v21 = v3 + v19;
    *(v3 + v19 + 312) = *(v3 + v19 + 208);
    if (*(v3 + v19 + 343) < 0)
    {
      operator delete(*(v21 + 40));
    }

    *(v21 + 20) = *(v21 + 216);
    *(v21 + 42) = *(v21 + 29);
    v21[239] = 0;
    v21[216] = 0;
    v22 = v21 + 344;
    if (v21[367] < 0)
    {
      operator delete(*v22);
    }

    v23 = v3 + v20;
    *v22 = *(v3 + v20 + 240);
    *(v22 + 2) = *(v3 + v20 + 256);
    v23[263] = 0;
    v23[240] = 0;
    if (*(v3 + v20 + 391) < 0)
    {
      operator delete(*(v23 + 46));
    }

    *(v23 + 23) = *(v23 + 264);
    *(v23 + 48) = *(v23 + 35);
    v23[287] = 0;
    v23[264] = 0;
    v24 = (v23 + 392);
    if (v23[415] < 0)
    {
      operator delete(*v24);
    }

    v25 = v3 + v20;
    *v24 = *(v3 + v20 + 288);
    *(v23 + 51) = *(v3 + v20 + 304);
    v25[311] = 0;
    v25[288] = 0;
    if (v20 == -208)
    {
      break;
    }

    v26 = v25[104];
    v19 = v20 - 104;
    if (v26 <= v18)
    {
      v27 = v3 + v20;
      v28 = (v3 + v20 + 216);
      v29 = v3 + v19 + 312;
      v30 = (v3 + v20 + 288);
      v31 = (v27 + 240);
      v32 = (v27 + 264);
      goto LABEL_47;
    }
  }

  v28 = (v25 + 216);
  v30 = (v25 + 288);
  v31 = (v25 + 240);
  v32 = (v25 + 264);
  v29 = v3;
LABEL_47:
  *v29 = v18;
  if (*(v29 + 31) < 0)
  {
    operator delete(*v28);
  }

  *v28 = v36;
  *(v29 + 16) = *v46;
  *(v29 + 23) = *&v46[7];
  *(v29 + 31) = v35;
  if (*(v29 + 55) < 0)
  {
    operator delete(*v31);
  }

  *v31 = v38;
  *(v29 + 40) = *v45;
  *(v29 + 47) = *&v45[7];
  *(v29 + 55) = v37;
  if (*(v29 + 79) < 0)
  {
    operator delete(*v32);
  }

  *v32 = v40;
  *(v29 + 64) = *v44;
  *(v29 + 71) = *&v44[7];
  *(v29 + 79) = v39;
  if (*(v29 + 103) < 0)
  {
    operator delete(*v30);
  }

  *v30 = v42;
  *(v29 + 88) = *v43;
  *(v29 + 95) = *&v43[7];
  *(v29 + 103) = v41;
  if (++v17 != 8)
  {
    v2 = v34;
    goto LABEL_57;
  }

  return v15 + 104 == v34;
}

void md::LabelExternalPointFeature::finalize(md::LabelExternalPointFeature *this)
{
  v3 = *(this + 6);
  v4 = *(this + 7);
  v5 = (this + 48);
  v6 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalFeature::finalize(void)::{lambda(md::LabelExternalTextElement const&,md::LabelExternalTextElement const&)#1} &,md::LabelExternalTextElement*,false>(v3, v4, v7, 1);
  std::vector<md::LabelExternalTextElement>::shrink_to_fit(v5);
  v8 = v5[41];
  v9 = v5[42];
  v10 = 126 - 2 * __clz((v9 - v8) >> 5);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,false>(v8, v9, v11, 1);
  v12 = v5[39];
  v13 = v5[38];
  v14 = v5[40] - v13;
  if (v14 > (v12 - v13))
  {
    if (v12 != v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelExternalIconElement>>(0xCCCCCCCCCCCCCCCDLL * ((v12 - v13) >> 2));
    }

    v15 = 0;
    if (0xCCCCCCCCCCCCCCCDLL * (v14 >> 2))
    {
      v16 = 4 * ((v12 - v13) >> 2);
      v17 = *(this + 45);
      v18 = v16 + v13 - v17;
      if (v13 != v17)
      {
        v19 = v16 + v13 - v17;
        do
        {
          v20 = *v13;
          *(v19 + 16) = *(v13 + 4);
          *v19 = v20;
          v19 += 20;
          v13 += 20;
        }

        while (v13 != v17);
        v13 = *(this + 44);
      }

      *(this + 44) = v18;
      *(this + 45) = v16;
      v15 = v13;
      *(this + 46) = 0;
    }

    if (v15)
    {
      operator delete(v15);
    }
  }

  v21 = *(this + 48);
  v22 = *(this + 47);
  v23 = *(this + 49) - v22;
  if (v23 > (v21 - v22))
  {
    v24 = v5 + 41;
    v25 = (v21 - v22) >> 5;
    v45 = v24;
    if (v21 != v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>>((v21 - v22) >> 5);
    }

    __p = 0;
    v43 = 32 * v25;
    v44 = (32 * v25);
    if (v23 >> 5)
    {
      v26 = *(this + 48);
      v27 = 32 * v25 + v22 - v26;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>,md::LabelFeaturePlacementInfo*>(v22, v26, v27);
      v28 = *(this + 47);
      *(this + 47) = v27;
      v29 = *(this + 49);
      *(this + 24) = v44;
      *&v44 = v28;
      *(&v44 + 1) = v29;
      __p = v28;
      v43 = v28;
    }

    std::__split_buffer<md::LabelFeaturePlacementInfo>::~__split_buffer(&__p);
  }

  v30 = *(this + 51);
  v31 = *(this + 50);
  v32 = *(this + 52) - v31;
  if (v32 > v30 - v31)
  {
    v45 = (this + 400);
    if (v30 != v31)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>>(0xCCCCCCCCCCCCCCCDLL * (v30 - v31));
    }

    __p = 0;
    v43 = v30 - v31;
    v44 = (v30 - v31);
    if (0xCCCCCCCCCCCCCCCDLL * v32)
    {
      std::vector<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>::__swap_out_circular_buffer(this + 50, &__p);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  v33 = *(this + 54);
  v34 = *(this + 53);
  v35 = *(this + 55) - v34;
  if (v35 > (v33 - v34))
  {
    v36 = (v33 - v34) >> 4;
    v45 = (this + 424);
    if (v33 != v34)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>((v33 - v34) >> 4);
    }

    v37 = 16 * v36;
    __p = 0;
    v43 = 16 * v36;
    v44 = (16 * v36);
    if (v35 >> 4)
    {
      v38 = *(this + 54) - v34;
      v39 = v37 - v38;
      memcpy((v37 - v38), v34, v38);
      v40 = *(this + 53);
      *(this + 53) = v39;
      *(this + 54) = v37;
      v41 = *(this + 55);
      *(this + 55) = 0;
      *&v44 = v40;
      *(&v44 + 1) = v41;
      __p = v40;
      v43 = v40;
    }

    std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&__p);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v138 = a1;
LABEL_2:
  v7 = v138;
  while (1)
  {
    v8 = (a2 - v7) >> 5;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3uLL:
          v71 = *(v7 + 58);
          v72 = *(a2 - 6);
          if (v71 < *(v7 + 26))
          {
            if (v72 >= v71)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v7, (v7 + 32));
              if (*(a2 - 6) >= *(v7 + 58))
              {
                return;
              }

              v68 = (v7 + 32);
            }

            else
            {
              v68 = v7;
            }

            v67 = (a2 - 32);
            goto LABEL_224;
          }

          if (v72 >= v71)
          {
            return;
          }

          v69 = (v7 + 32);
          v70 = (a2 - 32);
          goto LABEL_207;
        case 4uLL:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,0>(v7, v7 + 32, v7 + 64, a2 - 32);
          return;
        case 5uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,0>(v7, v7 + 32, v7 + 64, v7 + 96);
          if (*(a2 - 6) >= *(v7 + 122))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v7 + 96), (a2 - 32));
          if (*(v7 + 122) >= *(v7 + 90))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v7 + 64), (v7 + 96));
          if (*(v7 + 90) >= *(v7 + 58))
          {
            return;
          }

          v69 = (v7 + 32);
          v70 = (v7 + 64);
LABEL_207:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v69, v70);
          if (*(v7 + 58) >= *(v7 + 26))
          {
            return;
          }

          v67 = (v7 + 32);
          v68 = v7;
          goto LABEL_224;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        if (*(a2 - 6) >= *(v7 + 26))
        {
          return;
        }

        v67 = (a2 - 32);
        v68 = v138;
LABEL_224:

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v68, v67);
        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v88 = v9 >> 1;
        v89 = v9 >> 1;
        do
        {
          v90 = v89;
          if (v88 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = v7 + 32 * v91;
            if (2 * v90 + 2 < v8)
            {
              v93 = *(v92 + 26);
              v94 = *(v92 + 58);
              v92 += 32 * (v93 < v94);
              if (v93 < v94)
              {
                v91 = 2 * v90 + 2;
              }
            }

            v95 = v7 + 32 * v90;
            v96 = *(v95 + 26);
            if (*(v92 + 26) >= v96)
            {
              v97 = 0;
              v146 = *v95;
              v142 = *(v95 + 16);
              *(v95 + 8) = 0;
              *(v95 + 16) = 0;
              *v95 = 0;
              v98 = *(v95 + 24);
              while (1)
              {
                v99 = v92;
                if (v97)
                {
                  *(v95 + 8) = v97;
                  operator delete(v97);
                  *v95 = 0;
                  *(v95 + 8) = 0;
                  *(v95 + 16) = 0;
                }

                *v95 = *v99;
                *(v95 + 16) = *(v99 + 16);
                *v99 = 0;
                *(v99 + 8) = 0;
                *(v99 + 16) = 0;
                v100 = *(v99 + 24);
                *(v95 + 26) = *(v99 + 26);
                *(v95 + 24) = v100;
                if (v88 < v91)
                {
                  break;
                }

                v92 = v7 + 32 * ((2 * v91) | 1);
                if (2 * v91 + 2 >= v8)
                {
                  v91 = (2 * v91) | 1;
                }

                else
                {
                  v101 = *(v92 + 26);
                  v102 = *(v92 + 58);
                  v92 += 32 * (v101 < v102);
                  v91 = v101 >= v102 ? (2 * v91) | 1 : 2 * v91 + 2;
                }

                if (*(v92 + 26) < v96)
                {
                  break;
                }

                v97 = *v99;
                v95 = v99;
              }

              v103 = *v99;
              if (*v99)
              {
                *(v99 + 8) = v103;
                operator delete(v103);
              }

              *v99 = v146;
              *(v99 + 16) = v142;
              *(v99 + 24) = v98;
              *(v99 + 26) = v96;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        do
        {
          if (v8 >= 2)
          {
            v104 = 0;
            v105 = *v7;
            v147 = *(v7 + 8);
            v106 = *(v7 + 16);
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            *v7 = 0;
            v152 = *(v7 + 24);
            v153 = *(v7 + 26);
            v107 = v7;
            do
            {
              v108 = v107 + 32 * v104;
              v109 = v108 + 32;
              if (2 * v104 + 2 >= v8)
              {
                v104 = (2 * v104) | 1;
              }

              else
              {
                v110 = *(v108 + 58);
                v111 = *(v108 + 90);
                v112 = v108 + 64;
                if (v110 >= v111)
                {
                  v104 = (2 * v104) | 1;
                }

                else
                {
                  v109 = v112;
                  v104 = 2 * v104 + 2;
                }
              }

              v113 = *v107;
              if (*v107)
              {
                *(v107 + 8) = v113;
                operator delete(v113);
                *v107 = 0;
                *(v107 + 8) = 0;
                *(v107 + 16) = 0;
              }

              *v107 = *v109;
              *(v107 + 16) = *(v109 + 16);
              *v109 = 0;
              *(v109 + 8) = 0;
              v115 = (v109 + 24);
              v114 = *(v109 + 24);
              *(v109 + 16) = 0;
              *(v107 + 26) = *(v109 + 26);
              *(v107 + 24) = v114;
              v107 = v109;
            }

            while (v104 <= ((v8 - 2) >> 1));
            v116 = *v109;
            if (v109 == a2 - 32)
            {
              if (v116)
              {
                *(v109 + 8) = v116;
                operator delete(v116);
              }

              *v109 = v105;
              *(v109 + 8) = v147;
              *(v109 + 16) = v106;
              *v115 = v152;
              *(v109 + 26) = v153;
            }

            else
            {
              if (v116)
              {
                *(v109 + 8) = v116;
                operator delete(v116);
                *v109 = 0;
                *(v109 + 8) = 0;
                *(v109 + 16) = 0;
              }

              *v109 = *(a2 - 32);
              *(v109 + 16) = *(a2 - 16);
              *(a2 - 32) = 0;
              *(a2 - 24) = 0;
              *(a2 - 16) = 0;
              v117 = *(a2 - 8);
              *(v109 + 26) = *(a2 - 6);
              *v115 = v117;
              v118 = *(a2 - 32);
              if (v118)
              {
                *(a2 - 24) = v118;
                operator delete(v118);
              }

              *(a2 - 32) = v105;
              *(a2 - 24) = v147;
              *(a2 - 16) = v106;
              *(a2 - 6) = v153;
              *(a2 - 8) = v152;
              v119 = (v109 + 32 - v7) >> 5;
              v120 = v119 < 2;
              v121 = v119 - 2;
              if (!v120)
              {
                v122 = v121 >> 1;
                v123 = v7 + 32 * (v121 >> 1);
                v124 = *(v109 + 26);
                if (*(v123 + 26) < v124)
                {
                  v125 = 0;
                  v148 = *v109;
                  v126 = *(v109 + 16);
                  *(v109 + 8) = 0;
                  *(v109 + 16) = 0;
                  *v109 = 0;
                  v127 = *(v109 + 24);
                  while (1)
                  {
                    v128 = v123;
                    if (v125)
                    {
                      *(v109 + 8) = v125;
                      operator delete(v125);
                      *v109 = 0;
                      *(v109 + 8) = 0;
                      *(v109 + 16) = 0;
                    }

                    *v109 = *v128;
                    *(v109 + 16) = *(v128 + 16);
                    *v128 = 0;
                    *(v128 + 8) = 0;
                    *(v128 + 16) = 0;
                    v129 = *(v128 + 24);
                    *(v109 + 26) = *(v128 + 26);
                    *(v109 + 24) = v129;
                    if (!v122)
                    {
                      break;
                    }

                    v122 = (v122 - 1) >> 1;
                    v123 = v7 + 32 * v122;
                    if (*(v123 + 26) >= v124)
                    {
                      break;
                    }

                    v125 = *v128;
                    v109 = v128;
                  }

                  v130 = *v128;
                  if (*v128)
                  {
                    *(v128 + 8) = v130;
                    operator delete(v130);
                  }

                  *v128 = v148;
                  *(v128 + 16) = v126;
                  *(v128 + 24) = v127;
                  *(v128 + 26) = v124;
                }
              }
            }
          }

          a2 -= 32;
          v120 = v8-- > 2;
        }

        while (v120);
      }

      return;
    }

    v10 = v7 + 32 * (v8 >> 1);
    v11 = *(a2 - 6);
    if (v8 >= 0x81)
    {
      v12 = *(v10 + 26);
      if (v12 >= *(v7 + 26))
      {
        if (v11 < v12)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v7 + 32 * (v8 >> 1)), (a2 - 32));
          if (*(v10 + 26) < *(v7 + 26))
          {
            v13 = v7;
            v14 = (v7 + 32 * (v8 >> 1));
            goto LABEL_26;
          }
        }
      }

      else
      {
        v13 = v7;
        if (v11 < v12)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v7, (v7 + 32 * (v8 >> 1)));
        if (*(a2 - 6) < *(v10 + 26))
        {
          v13 = (v7 + 32 * (v8 >> 1));
LABEL_17:
          v14 = (a2 - 32);
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v13, v14);
        }
      }

      v18 = *(v10 - 6);
      v19 = *(a2 - 38);
      if (v18 >= *(v7 + 58))
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v10 - 32), (a2 - 64));
          if (*(v10 - 6) < *(v7 + 58))
          {
            v20 = (v7 + 32);
            v21 = (v10 - 32);
            goto LABEL_39;
          }
        }
      }

      else
      {
        v20 = (v7 + 32);
        if (v19 < v18)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v20, (v10 - 32));
        if (*(a2 - 38) < *(v10 - 6))
        {
          v20 = (v10 - 32);
LABEL_31:
          v21 = (a2 - 64);
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v20, v21);
        }
      }

      v22 = *(v10 + 58);
      v23 = *(a2 - 70);
      if (v22 >= *(v7 + 90))
      {
        if (v23 < v22)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v10 + 32), (a2 - 96));
          if (*(v10 + 58) < *(v7 + 90))
          {
            v24 = (v7 + 64);
            v25 = (v10 + 32);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v24 = (v7 + 64);
        if (v23 < v22)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v24, (v10 + 32));
        if (*(a2 - 70) < *(v10 + 58))
        {
          v24 = (v10 + 32);
LABEL_44:
          v25 = (a2 - 96);
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v24, v25);
        }
      }

      v26 = *(v10 + 26);
      v27 = *(v10 + 58);
      if (v26 >= *(v10 - 6))
      {
        if (v27 < v26)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v10, (v10 + 32));
          if (*(v10 + 26) < *(v10 - 6))
          {
            v29 = (v10 - 32);
            v28 = (v7 + 32 * (v8 >> 1));
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v27 < v26)
        {
          v28 = (v10 + 32);
          v29 = (v10 - 32);
          goto LABEL_57;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v10 - 32), v10);
        if (*(v10 + 58) < *(v10 + 26))
        {
          v28 = (v10 + 32);
          v29 = (v7 + 32 * (v8 >> 1));
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v29, v28);
        }
      }

      v30 = *v7;
      v31 = *(v7 + 16);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v150 = *(v7 + 24);
      v151 = *(v7 + 26);
      v32 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v32;
        v143 = v30;
        operator delete(v32);
        v30 = v143;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
      }

      *v7 = *v10;
      *(v7 + 16) = *(v10 + 16);
      v33 = *(v10 + 26);
      *(v7 + 24) = *(v10 + 24);
      *(v7 + 26) = v33;
      *v10 = v30;
      *(v10 + 16) = v31;
      *(v10 + 24) = v150;
      *(v10 + 26) = v151;
      v7 = v138;
      goto LABEL_61;
    }

    v15 = *(v7 + 26);
    if (v15 < *(v10 + 26))
    {
      v16 = (v7 + 32 * (v8 >> 1));
      if (v11 >= v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v16, v7);
        if (*(a2 - 6) >= *(v7 + 26))
        {
          goto LABEL_61;
        }

        v16 = v7;
      }

      v17 = (a2 - 32);
      goto LABEL_35;
    }

    if (v11 < v15)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v7, (a2 - 32));
      if (*(v7 + 26) < *(v10 + 26))
      {
        v16 = (v7 + 32 * (v8 >> 1));
        v17 = v7;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v16, v17);
      }
    }

LABEL_61:
    v144 = --a3;
    if (a4)
    {
      v34 = *(v7 + 26);
    }

    else
    {
      v34 = *(v7 + 26);
      if (*(v7 - 6) >= v34)
      {
        v141 = *v7;
        v52 = *(v7 + 16);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        if (v34 >= *(a2 - 6))
        {
          v55 = v7 + 32;
          do
          {
            a1 = v55;
            if (v55 >= a2)
            {
              break;
            }

            v56 = *(v55 + 26);
            v55 += 32;
          }

          while (v34 >= v56);
        }

        else
        {
          v53 = v7;
          do
          {
            a1 = v53 + 32;
            v54 = *(v53 + 58);
            v53 += 32;
          }

          while (v34 >= v54);
        }

        v57 = a2;
        if (a1 < a2)
        {
          v58 = a2;
          do
          {
            v57 = (v58 - 32);
            v59 = *(v58 - 6);
            v58 -= 32;
          }

          while (v34 < v59);
        }

        v60 = *(v7 + 24);
        while (a1 < v57)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, v57);
          do
          {
            v61 = *(a1 + 58);
            a1 += 32;
          }

          while (v34 >= v61);
          do
          {
            v62 = *(v57 - 6);
            v57 -= 2;
          }

          while (v34 < v62);
        }

        v63 = (a1 - 32);
        if (a1 - 32 != v7)
        {
          v64 = *v7;
          if (*v7)
          {
            *(v7 + 8) = v64;
            operator delete(v64);
            *v7 = 0;
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
          }

          *v7 = *(a1 - 32);
          *(v7 + 16) = *(a1 - 16);
          *v63 = 0;
          *(a1 - 24) = 0;
          *(a1 - 16) = 0;
          v65 = *(a1 - 8);
          *(v7 + 26) = *(a1 - 6);
          *(v7 + 24) = v65;
        }

        v66 = *v63;
        if (*v63)
        {
          *(a1 - 24) = v66;
          operator delete(v66);
        }

        a4 = 0;
        *(a1 - 32) = v141;
        *(a1 - 16) = v52;
        *(a1 - 8) = v60;
        *(a1 - 6) = v34;
        goto LABEL_1;
      }
    }

    v140 = *v7;
    v35 = *(v7 + 16);
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 0;
    v36 = v7;
    v37 = *(v7 + 24);
    do
    {
      v38 = v36;
      v36 += 32;
    }

    while (*(v38 + 58) < v34);
    v39 = a2;
    if (v38 == v7)
    {
      v42 = a2;
      while (v36 < v42)
      {
        v40 = (v42 - 32);
        v43 = *(v42 - 6);
        v42 -= 32;
        if (v43 < v34)
        {
          goto LABEL_74;
        }
      }

      v40 = v42;
    }

    else
    {
      do
      {
        v40 = (v39 - 32);
        v41 = *(v39 - 6);
        v39 -= 32;
      }

      while (v41 >= v34);
    }

LABEL_74:
    if (v36 >= v40)
    {
      a1 = v36;
    }

    else
    {
      v44 = v40;
      a1 = v36;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, v44);
        do
        {
          v45 = *(a1 + 58);
          a1 += 32;
        }

        while (v45 < v34);
        do
        {
          v46 = *(v44 - 6);
          v44 -= 2;
        }

        while (v46 >= v34);
      }

      while (a1 < v44);
    }

    v47 = (a1 - 32);
    if (a1 - 32 != v7)
    {
      v48 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v48;
        operator delete(v48);
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
      }

      *v7 = *(a1 - 32);
      *(v7 + 16) = *(a1 - 16);
      *v47 = 0;
      *(a1 - 24) = 0;
      *(a1 - 16) = 0;
      v49 = *(a1 - 8);
      *(v7 + 26) = *(a1 - 6);
      *(v7 + 24) = v49;
    }

    v50 = *v47;
    if (*v47)
    {
      *(a1 - 24) = v50;
      operator delete(v50);
    }

    *(a1 - 32) = v140;
    *(a1 - 16) = v35;
    *(a1 - 8) = v37;
    *(a1 - 6) = v34;
    a3 = v144;
    if (v36 < v40)
    {
      goto LABEL_93;
    }

    v51 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*>(v7, a1 - 32);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*>(a1, a2))
    {
      v138 = a1;
      if (v51)
      {
        goto LABEL_2;
      }

LABEL_93:
      std::__introsort<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,false>(v7, a1 - 32, v144, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = a1 - 32;
    if (v51)
    {
      return;
    }
  }

  v73 = v7 + 32;
  v75 = v7 == a2 || v73 == a2;
  if (a4)
  {
    if (!v75)
    {
      v76 = 0;
      v77 = v7;
      do
      {
        v78 = v73;
        if (*(v77 + 58) < *(v77 + 26))
        {
          v79 = 0;
          v145 = *v73;
          v80 = *(v77 + 48);
          *v73 = 0;
          *(v73 + 8) = 0;
          *(v73 + 16) = 0;
          v81 = *(v77 + 56);
          v82 = v76;
          v83 = *(v77 + 58);
          while (1)
          {
            v84 = v7 + v82;
            if (v79)
            {
              *(v84 + 40) = v79;
              operator delete(v79);
              *(v84 + 48) = 0;
            }

            *(v84 + 32) = *v84;
            *(v84 + 48) = *(v84 + 16);
            *(v84 + 8) = 0;
            *(v84 + 16) = 0;
            *v84 = 0;
            *(v84 + 56) = *(v84 + 24);
            *(v84 + 58) = *(v84 + 26);
            if (!v82)
            {
              v86 = (v7 + 24);
              v85 = v7;
              goto LABEL_147;
            }

            v85 = v7 + v82;
            if (v83 >= *(v7 + v82 - 6))
            {
              break;
            }

            v79 = *v84;
            v82 -= 32;
          }

          v86 = (v85 + 24);
LABEL_147:
          v87 = *v85;
          if (*v85)
          {
            *(v85 + 8) = v87;
            operator delete(v87);
          }

          *v85 = v145;
          *(v85 + 16) = v80;
          *v86 = v81;
          *(v85 + 26) = v83;
        }

        v73 = v78 + 32;
        v76 += 32;
        v77 = v78;
      }

      while (v78 + 32 != a2);
    }
  }

  else if (!v75)
  {
    do
    {
      v131 = v73;
      if (*(v7 + 58) < *(v7 + 26))
      {
        v149 = *v73;
        v132 = *(v7 + 48);
        *v73 = 0;
        *(v73 + 8) = 0;
        *(v73 + 16) = 0;
        v133 = *(v7 + 56);
        v134 = *(v7 + 58);
        while (1)
        {
          *(v7 + 32) = *v7;
          *(v7 + 48) = *(v7 + 16);
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
          *(v7 + 56) = *(v7 + 24);
          *(v7 + 58) = *(v7 + 26);
          if (v134 >= *(v7 - 6))
          {
            break;
          }

          v136 = *v7;
          v7 -= 32;
          v135 = v136;
          if (v136)
          {
            *(v7 + 40) = v135;
            operator delete(v135);
            *(v7 + 48) = 0;
          }
        }

        v137 = *v7;
        if (*v7)
        {
          *(v7 + 8) = v137;
          operator delete(v137);
        }

        *v7 = v149;
        *(v7 + 16) = v132;
        *(v7 + 24) = v133;
        *(v7 + 26) = v134;
      }

      v73 = v131 + 32;
      v7 = v131;
    }

    while (v131 + 32 != a2);
  }
}

uint64_t *std::vector<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 1) = *(v2 + 1);
      v2 += 5;
      v5 += 5;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::LabelFeaturePlacementInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelExternalIconElement>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v9 = *(a1 + 12);
  v10 = *(a1 + 26);
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = a2 + 24;
  v6 = *(a2 + 26);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 26) = v6;
  v7 = *a2;
  if (*a2)
  {
    *(a2 + 1) = v7;
    v8 = v3;
    operator delete(v7);
    v3 = v8;
  }

  *a2 = v3;
  *(a2 + 2) = v4;
  *v5 = v9;
  *(v5 + 2) = v10;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 26);
  v9 = *(a3 + 26);
  if (v8 >= *(a1 + 26))
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a2, a3);
      if (*(a2 + 26) < *(v7 + 26))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, a2);
    if (*(a3 + 26) < *(a2 + 26))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 26) < *(a3 + 26))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a3, a4);
    if (*(a3 + 26) < *(a2 + 26))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a2, a3);
      if (*(a2 + 26) < *(v7 + 26))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 58);
        v9 = *(a2 - 6);
        if (v8 < *(a1 + 26))
        {
          if (v9 >= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, (a1 + 32));
            if (*(a2 - 6) >= *(v3 + 58))
            {
              return 1;
            }

            a1 = v3 + 32;
          }

          v5 = (a2 - 32);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 32);
        v7 = (a2 - 32);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,0>(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelExternalPointFeature::finalize(void)::{lambda(md::LabelFeaturePlacementInfo const&,md::LabelFeaturePlacementInfo const&)#1} &,md::LabelFeaturePlacementInfo*,0>(a1, a1 + 32, a1 + 64, a1 + 96);
        if (*(a2 - 6) >= *(v3 + 122))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v3 + 96), (a2 - 32));
        if (*(v3 + 122) >= *(v3 + 90))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((v3 + 64), (v3 + 96));
        if (*(v3 + 90) >= *(v3 + 58))
        {
          return 1;
        }

        v6 = (v3 + 32);
        v7 = (v3 + 64);
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(v6, v7);
    if (*(v3 + 58) < *(v3 + 26))
    {
      v5 = (v3 + 32);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 6) < *(a1 + 26))
    {
      v5 = (a2 - 32);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 64;
  v11 = *(a1 + 58);
  v12 = *(a1 + 90);
  if (v11 < *(a1 + 26))
  {
    if (v12 >= v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, (a1 + 32));
      if (*(v3 + 90) >= *(v3 + 58))
      {
        goto LABEL_36;
      }

      a1 = v3 + 32;
    }

    v13 = (v3 + 64);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>((a1 + 32), (a1 + 64));
    if (*(v3 + 58) < *(v3 + 26))
    {
      v13 = (v3 + 32);
      a1 = v3;
LABEL_35:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::LabelFeaturePlacementInfo *&,md::LabelFeaturePlacementInfo *&>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 96;
  if (v3 + 96 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 26);
    if (v17 < *(v10 + 26))
    {
      v18 = 0;
      v28 = *v14;
      v19 = *(v14 + 16);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v20 = v15;
      v21 = *(v14 + 24);
      while (1)
      {
        v22 = v3 + v20;
        if (v18)
        {
          *(v22 + 104) = v18;
          operator delete(v18);
          *(v22 + 112) = 0;
        }

        *(v22 + 96) = *(v22 + 64);
        *(v22 + 112) = *(v22 + 80);
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
        *(v22 + 80) = 0;
        *(v22 + 120) = *(v22 + 88);
        *(v22 + 122) = *(v22 + 90);
        if (v20 == -64)
        {
          v24 = (v3 + 24);
          v25 = v3;
          goto LABEL_47;
        }

        v23 = v3 + v20;
        if (v17 >= *(v3 + v20 + 58))
        {
          break;
        }

        v18 = *(v22 + 64);
        v20 -= 32;
      }

      v24 = (v23 + 88);
      v25 = v23 + 64;
LABEL_47:
      v26 = *v25;
      if (*v25)
      {
        *(v25 + 8) = v26;
        operator delete(v26);
      }

      *v25 = v28;
      *(v25 + 16) = v19;
      *v24 = v21;
      *(v25 + 26) = v17;
      if (++v16 == 8)
      {
        return v14 + 32 == a2;
      }
    }

    v10 = v14;
    v15 += 32;
    v14 += 32;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void md::LabelExternalPointFeature::~LabelExternalPointFeature(md::LabelExternalPointFeature *this)
{
  md::LabelExternalPointFeature::~LabelExternalPointFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A54270;
  v7 = (this + 424);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  v7 = (this + 376);
  std::vector<md::LabelFeaturePlacementInfo>::__destroy_vector::operator()[abi:nn200100](&v7);
  v3 = *(this + 44);
  if (v3)
  {
    *(this + 45) = v3;
    operator delete(v3);
  }

  *(this + 41) = &unk_1F2A542C0;

  v4 = *(this + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  md::LabelExternalFeature::~LabelExternalFeature(this);
}

void std::__shared_ptr_emplace<md::LabelExternalPointFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A54238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelTransitRoute::generateTransitNodeFeatures(uint64_t a1)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 160);
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(a1 + 160));
  *(a1 + 152) = v2;
  v3 = (a1 + 152);
  *(a1 + 176) = 0;
  *v2 = 0;
  v4 = *(a1 + 32);
  v76 = [v4 stations];

  __p = 0;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v75 = a1;
  if (v5 == v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = *v5;
    *&v82 = 0;
    v11 = *(v10 + 16);
    v12 = v11;
    if (v11 && [v11 hasStationIndex])
    {
      v13 = [v76 objectAtIndexedSubscript:{objc_msgSend(v12, "stationIndex")}];
      if ([v13 hasMuid])
      {
        v14 = [v13 muid];
        *&v82 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v9)
      {
LABEL_8:
        if (v14)
        {
          std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v3, v14, &v82);
LABEL_10:
          v9 = 0;
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v14 = 0;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    if ((*(v10 + 109) | 2) == 6)
    {
      if (v8)
      {
        std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v3, v8, &__p);
        v7 = 0;
        v8 = 0;
        __p = 0;
      }

LABEL_16:
      v9 = 1;
      goto LABEL_17;
    }

    if (!v14)
    {
      goto LABEL_10;
    }

    v9 = 0;
    __p = v14;
    v7 = v14;
    v8 = v14;
LABEL_17:

    ++v5;
  }

  while (v5 != v6);
  if (v7)
  {
    std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v3, v7, &__p);
  }

LABEL_23:

  v15 = *(v75 + 11);
  v16 = *(v75 + 12);
  if (v15 == v16)
  {
    goto LABEL_58;
  }

  v17 = 0xFFFFFFFFLL;
  v18 = -1;
  v19 = -1;
  while (2)
  {
    v20 = v16;
    v21 = v15;
    v22 = *v15;
    v23 = *(*v15 + 56);
    v24 = *(v75 + 7);
    v25 = *(v24 + 8 * v23);
    if (v25)
    {
      v26 = v25 + 8;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v26 + 8);
    md::LabelExternalPointFeature::incident(v27);
    v28 = [objc_claimAutoreleasedReturnValue() type];
    ++v19;

    if (v28 != 6)
    {
      v23 = v17;
LABEL_32:
      v29 = v21;
      goto LABEL_33;
    }

    v29 = v21;
    v16 = v20;
    if (v23 == v17)
    {
      v18 = v19;
      v23 = v17;
      goto LABEL_34;
    }

    *(v22 + 69) = 1;
    if (v17 == -1)
    {
      v18 = v19;
      goto LABEL_34;
    }

    v30 = *(v24 + 8 * v23);
    if (v30)
    {
      v31 = v30 + 8;
    }

    else
    {
      v31 = 0;
    }

    if (*(v31 + 70) != 1)
    {
      goto LABEL_57;
    }

    v32 = *(v75 + 11);
    if (v17 == v23 - 1)
    {
      v33 = *(v32 + 8 * v18);
      goto LABEL_50;
    }

    v34 = 0;
    v33 = *(v32 + 8 * v18);
    v35 = v33 + 8;
    if (!v33)
    {
      v35 = 0;
    }

    v36 = v35 + 32;
    v37 = *(v75 + 26);
    v38 = 1;
    do
    {
      v39 = vabdd_f64(*(v22 + 40 + 8 * v34), *(v36 + 8 * v34));
      if ((v38 & 1) == 0)
      {
        break;
      }

      v38 = 0;
      v34 = 1;
    }

    while (v39 < v37);
    if (v39 >= v37)
    {
LABEL_57:
      v18 = v19;
      goto LABEL_32;
    }

LABEL_50:
    if (v33)
    {
      v40 = v33 + 8;
    }

    else
    {
      v40 = 0;
    }

    *(v40 + 90) = 1;
    *(v40 + 92) = v17;
    *(v40 + 96) = v23;
    if (*v21)
    {
      v41 = *v21 + 8;
    }

    else
    {
      v41 = 0;
    }

    *(v41 + 90) = 1;
    *(v41 + 92) = v17;
    *(v41 + 96) = v23;
    v29 = v21;
    v18 = v19;
LABEL_33:
    v16 = v20;
LABEL_34:
    v15 = v29 + 1;
    v17 = v23;
    if (v15 != v16)
    {
      continue;
    }

    break;
  }

  v15 = *(v75 + 11);
  v16 = *(v75 + 12);
LABEL_58:
  if (v15 == v16)
  {
    goto LABEL_117;
  }

  v42 = v16;
  v43 = v15;
  while (2)
  {
    v44 = v43;
    v45 = *v43;
    if ((*(*v43 + 110) & 1) != 0 || *(v45 + 99) != 1)
    {
      goto LABEL_115;
    }

    v46 = *(v45 + 64);
    LODWORD(v84) = v46 + 1;
    LODWORD(v86[0]) = v46 - 1;
    LOWORD(v85) = 0;
    __p = 0;
    v80 = 0;
    v81 = 0;
    if (md::LabelTransitRoute::findStopHeadingRange(v75, (v45 + 40), &v84, 1, &v85))
    {
      std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::emplace_back<md::LabelAngleRange&>(&__p, &v85);
    }

    if (md::LabelTransitRoute::findStopHeadingRange(v75, (v45 + 40), v86, -1, &v85))
    {
      std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::emplace_back<md::LabelAngleRange&>(&__p, &v85);
    }

    if (md::LabelTransitRoute::findRouteHeadingRange(v75, (v45 + 40), v84, 1, &v85))
    {
      std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::emplace_back<md::LabelAngleRange&>(&__p, &v85);
    }

    if (md::LabelTransitRoute::findRouteHeadingRange(v75, (v45 + 40), v86[0], -1, &v85))
    {
      std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::emplace_back<md::LabelAngleRange&>(&__p, &v85);
    }

    v47 = __p;
    v48 = v80;
    v49 = (v80 - __p) >> 1;
    v50 = 126 - 2 * __clz(v49);
    if (v80 == __p)
    {
      v51 = 0;
    }

    else
    {
      v51 = v50;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,false>(__p, v80, v51, 1);
    if (v48 == v47)
    {
      goto LABEL_114;
    }

    v52 = 0;
    while (2)
    {
      v53 = v52 + 1;
      if (v52 + 1 == v49)
      {
        v54 = 0;
      }

      else
      {
        v54 = v52 + 1;
      }

      if (v52 != v54)
      {
        v55 = &v47[2 * v52];
        v56 = &v47[2 * v54];
        v57 = *v55;
        v58 = *v56;
        v59 = (*v56 - *v55);
        v60 = v56[1] - *v55;
        if (v59 > v60)
        {
          v61 = v60;
          if ((v55[1] - *v55) > v60)
          {
            v61 = v55[1] - *v55;
          }

          v55[1] = v61 + v57;
          *v55 = v58;
          goto LABEL_87;
        }

        if (v59 <= (v55[1] - *v55))
        {
          v62 = v60;
          if ((v55[1] - *v55) > v60)
          {
            v62 = v55[1] - *v55;
          }

          v55[1] = v62 + v57;
LABEL_87:
          v47 = __p;
          v48 = __p + 2 * v54;
          if (v48 + 2 != v80)
          {
            v63 = ((v80 - (__p + 2 * v54)) & 0xFFFFFFFFFFFFFFFELL) - 2;
            memmove(__p + 2 * v54, v48 + 2, v63);
            v48 += v63;
          }

          v80 = v48;
          v53 = v52;
        }
      }

      v49 = (v48 - v47) >> 1;
      v52 = v53;
      if (v53 < v49)
      {
        continue;
      }

      break;
    }

    if (v47 != v48)
    {
      v82 = 0uLL;
      *&v83 = 0;
      if (v48 - v47 == 2)
      {
        populatePlacementsInArc(v47[1], &v82, ((v47[1] - *v47) * -1.4118) + 360.0);
      }

      else
      {
        v67 = (v48 - v47) >> 1;
        v68 = v47 + 1;
        v69 = 1;
        while (v67)
        {
          if (--v67)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *v68;
          v68 += 2;
          ++v69;
          populatePlacementsInArc(v71, &v82, (v47[2 * v70] - v71) * 1.4118);
        }
      }

      if (v82 != *(&v82 + 1))
      {
        v78 = -32;
        *&v77 = &v78;
        std::__introsort<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,false>(v82, *(&v82 + 1), &v77, 126 - 2 * __clz((*(&v82 + 1) - v82) >> 3), 1);
        if (*(&v82 + 1) == v82)
        {
          LOBYTE(v64) = 0;
        }

        else
        {
          v64 = 0;
          v65 = (*(&v82 + 1) - v82) >> 3;
          if (v65 >= 4)
          {
            v65 = 4;
          }

          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = (v82 + 4);
          while (!v64 || *v66 >= 35.0)
          {
            *(v45 + 71 + v64++) = *(v66 - 4);
            v66 += 2;
            if (v65 == v64)
            {
              LOBYTE(v64) = v65;
              break;
            }
          }
        }

        *(v45 + 70) = v64;
      }

      std::vector<LabelPlacementRegion,geo::allocator_adapter<LabelPlacementRegion,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v82);
    }

LABEL_114:
    std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
LABEL_115:
    v43 = v44 + 1;
    if (v44 + 1 != v42)
    {
      continue;
    }

    break;
  }

  v15 = *(v75 + 11);
  v16 = *(v75 + 12);
LABEL_117:
  v73 = v16;
  if (v15 != v16)
  {
    v74 = 0;
    v72 = v15;
    do
    {
      ++v74;
      if (*(*v72 + 99) == 1)
      {
        _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      ++v72;
    }

    while (v72 != v73);
  }

  md::LabelTransitRoute::updateTransitNodesRouteState(v75);
}

void sub_1B2E044AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a40);
  }

  _Unwind_Resume(a1);
}

void md::LabelTransitRoute::updateTransitNodesRouteState(md::LabelTransitRoute *this)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (v2 && *(this + 11) != *(this + 12))
  {
    v35[2] = 0;
    v34 = v35;
    v35[0] = 0;
    v3 = [v2 inspectedSegmentIndex];
    v4 = v3;
    if (*(this + 30) != v3)
    {
      *(this + 30) = v3;
      v5 = *(this + 7);
      for (i = *(this + 8); v5 != i; ++v5)
      {
        v7 = *v5;
        v8 = *(*v5 + 32);
        v9 = v8 < v4;
        v10 = v8 == v4;
        if (v9)
        {
          v10 = 2;
        }

        if (*(v7 + 76) != v10)
        {
          *(v7 + 76) = v10;
          if (*(v7 + 48) >= 1)
          {
            v11 = 0;
            do
            {
              v33 = v11 + *(v7 + 44);
              std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v34, v33, &v33);
              ++v11;
            }

            while (v11 < *(v7 + 48));
          }
        }
      }
    }

    v12 = [*(this + 1) inspectedStepIndex];
    v13 = v12;
    v14 = *(this + 31);
    if (v14 != v12)
    {
      v15 = 0;
      if (*(this + 32) == -1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(this + 32);
      }

      if (v14 <= v12)
      {
        v15 = ((*(this + 12) - *(this + 11)) >> 3) - 1;
      }

      *(this + 31) = v12;
      if (v16 != v15)
      {
        v17 = 2 * (v15 >= v16);
        if (v15 < v16)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

        v19 = 8 * v16;
        v20 = v16;
        do
        {
          if (v20 != *(this + 36))
          {
            v21 = *(*(this + 11) + v19);
            if (v15 < v16 == *(v21 + 60) < v13)
            {
              break;
            }

            *(this + 32) = v20;
            if (*(v21 + 108) != v17)
            {
              *(v21 + 108) = v17;
              v33 = v20;
              std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v34, v20, &v33);
            }
          }

          v20 += v18;
          v19 += 8 * v18;
        }

        while (v15 != v20);
      }
    }

    v22 = [*(this + 1) puckSnappedStopID];
    if (v22 != *(this + 17))
    {
      v23 = *(this + 36);
      if (v23 != -1)
      {
        v24 = *(*(this + 11) + 8 * v23);
        *(v24 + 108) = 2 * (*(v24 + 60) < v13);
        *(*(v24 + 80) + 360) = *(*(v24 + 80) + 352);
        v33 = v23;
        std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v34, v23, &v33);
        *(this + 36) = -1;
      }

      *(this + 17) = v22;
      if (v22)
      {
        v25 = *(this + 11);
        v26 = *(this + 12);
        if (v25 != v26)
        {
          v27 = 0;
          while ([*(*v25 + 8) muid] != v22)
          {
            ++v27;
            v25 += 8;
            if (v25 == v26)
            {
              goto LABEL_41;
            }
          }

          *(this + 36) = v27;
          if (*v25)
          {
            v28 = *v25 + 8;
          }

          else
          {
            v28 = 0;
          }

          *(v28 + 100) = 1;
        }
      }

LABEL_41:
      *(this + 17) = v22;
    }

    v29 = v34;
    if (v34 != v35)
    {
      do
      {
        md::LabelTransitRoute::refreshNodePositionState(this, *(*(this + 11) + 8 * *(v29 + 28)) + 8);
        v30 = *(v29 + 8);
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = *(v29 + 16);
            v32 = *v31 == v29;
            v29 = v31;
          }

          while (!v32);
        }

        v29 = v31;
      }

      while (v31 != v35);
    }

    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(v35[0]);
  }
}

void md::LabelTransitRoute::refreshNodePositionState(mdm::zone_mallocator *a1, uint64_t a2)
{
  v155 = *MEMORY[0x1E69E9840];
  v144 = 0uLL;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v4 = *(a2 + 101);
  if (v4 != 1)
  {
    if (v4 != 3)
    {
      if (v4 != 2)
      {
        v154 = &v149;
        v20 = mdm::zone_mallocator::instance(a1);
        v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v20, 1);
        *v21 = 0x200010010;
        v22 = (v21 + 1);
        v23 = v21 - (v147 - v146);
        memcpy(v23, v146, v147 - v146);
        v24 = v146;
        v25 = v148;
        v146 = v23;
        v147 = v22;
        v148 = v22;
LABEL_63:
        v152 = v24;
        v153 = v25;
        v150 = v24;
        v151 = v24;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
        goto LABEL_64;
      }

      v5 = [*(a2 + 8) hasStyleAttributes];
      if (v5)
      {
        v6 = objc_alloc(MEMORY[0x1E69A1DB0]);
        v7 = [*(a2 + 8) styleAttributes];
        v8 = [v6 initWithGEOStyleAttributes:v7];

        v9 = [v8 featureStyleAttributesPtr];
        goto LABEL_9;
      }

      v34 = (v147 - v146) >> 3;
      if ((v34 + 1) >> 61)
      {
        goto LABEL_156;
      }

      v35 = (v148 - v146) >> 2;
      if (v35 <= v34 + 1)
      {
        v35 = v34 + 1;
      }

      if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v35;
      }

      v154 = &v149;
      if (v36)
      {
        v37 = mdm::zone_mallocator::instance(v5);
        v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v37, v36);
      }

      else
      {
        v38 = 0;
      }

      v47 = &v38[8 * v36];
      v46 = &v38[8 * v34];
      *v46 = 0x30000002ALL;
      v41 = v46 + 8;
      v48 = &v46[-(v147 - v146)];
      memcpy(v48, v146, v147 - v146);
      v49 = v146;
      v50 = v148;
      v146 = v48;
      v148 = v47;
      v152 = v49;
      v153 = v50;
      v150 = v49;
      v151 = v49;
      v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
      v147 = v41;
      if (v41 < v47)
      {
        goto LABEL_52;
      }

      v26 = (v41 - v146) >> 3;
      if ((v26 + 1) >> 61)
      {
        goto LABEL_156;
      }

      v51 = (v148 - v146) >> 2;
      if (v51 <= v26 + 1)
      {
        v51 = v26 + 1;
      }

      if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v51;
      }

      v154 = &v149;
      if (v28)
      {
        goto LABEL_60;
      }

LABEL_61:
      v53 = 0;
      goto LABEL_62;
    }

    v154 = &v149;
    v10 = mdm::zone_mallocator::instance(a1);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v10, 1);
    *v11 = 0x10000002ALL;
    memcpy(v11 - (v147 - v146), v146, v147 - v146);
    v12 = v146;
    v13 = v148;
    v146 = v11 - (v147 - v146);
    v148 = v11 + 1;
    v152 = v12;
    v153 = v13;
    v150 = v12;
    v151 = v12;
    v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
    v147 = (v11 + 1);
    v26 = ((v11 + 1) - v146) >> 3;
    if ((v26 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v27 = (v148 - v146) >> 2;
    if (v27 <= v26 + 1)
    {
      v27 = v26 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    v154 = &v149;
    if (!v28)
    {
      goto LABEL_61;
    }

LABEL_60:
    v52 = mdm::zone_mallocator::instance(v14);
    v53 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v52, v28);
LABEL_62:
    v55 = &v53[8 * v28];
    v54 = &v53[8 * v26];
    *v54 = 0x2BC00000025;
    v22 = v54 + 8;
    v56 = &v54[-(v147 - v146)];
    memcpy(v56, v146, v147 - v146);
    v24 = v146;
    v25 = v148;
    v146 = v56;
    v147 = v22;
    v148 = v55;
    goto LABEL_63;
  }

  v15 = [*a2 hasStyleAttributes];
  if (!v15)
  {
    v29 = (v147 - v146) >> 3;
    if ((v29 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v30 = (v148 - v146) >> 2;
    if (v30 <= v29 + 1)
    {
      v30 = v29 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30;
    }

    v154 = &v149;
    if (v31)
    {
      v32 = mdm::zone_mallocator::instance(v15);
      v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v32, v31);
    }

    else
    {
      v33 = 0;
    }

    v40 = &v33[8 * v31];
    v39 = &v33[8 * v29];
    *v39 = 42;
    v41 = v39 + 8;
    v42 = &v39[-(v147 - v146)];
    memcpy(v42, v146, v147 - v146);
    v43 = v146;
    v44 = v148;
    v146 = v42;
    v148 = v40;
    v152 = v43;
    v153 = v44;
    v150 = v43;
    v151 = v43;
    v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
    v147 = v41;
    if (v41 < v40)
    {
LABEL_52:
      *v41 = 0x2BC00000025;
      v22 = v41 + 8;
LABEL_64:
      v147 = v22;
      goto LABEL_65;
    }

    v26 = (v41 - v146) >> 3;
    if ((v26 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v45 = (v148 - v146) >> 2;
    if (v45 <= v26 + 1)
    {
      v45 = v26 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v45;
    }

    v154 = &v149;
    if (!v28)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v16 = objc_alloc(MEMORY[0x1E69A1DB0]);
  v17 = [*a2 styleAttributes];
  v8 = [v16 initWithGEOStyleAttributes:v17];

  v9 = [v8 featureStyleAttributesPtr];
LABEL_9:
  v19 = *v9;
  v18 = v9[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *&v144 = v19;
  *(&v144 + 1) = v18;

  if (!v19)
  {
LABEL_65:
    *&v145 = 0xE100000006;
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::vector[abi:nn200100](&v150, &v145, 1uLL);
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>> &,0>();
  }

  v57 = *(a2 + 48);
  v58 = *(a1 + 7);
  v59 = *(v58 + 8 * v57);
  if (v59)
  {
    v60 = v59 + 8;
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v60 + 8);
  md::LabelExternalPointFeature::incident(v61);
  v62 = [objc_claimAutoreleasedReturnValue() type] == 6;

  if (v62)
  {
    v64 = *(v58 + 8 * v57);
    if (v64)
    {
      v65 = v64 + 8;
    }

    else
    {
      v65 = 0;
    }

    v66 = *(v65 + 8);
    md::LabelExternalPointFeature::incident(v66);
    v67 = [objc_claimAutoreleasedReturnValue() transitSystem];
    MergeTransitSystemStylesWithStyle(v67, &v144);
  }

  v68 = v147;
  if (v147 >= v148)
  {
    v70 = (v147 - v146) >> 3;
    if ((v70 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v71 = (v148 - v146) >> 2;
    if (v71 <= v70 + 1)
    {
      v71 = v70 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v72 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = v71;
    }

    v154 = &v149;
    if (v72)
    {
      v73 = mdm::zone_mallocator::instance(v63);
      v74 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v73, v72);
    }

    else
    {
      v74 = 0;
    }

    v76 = &v74[8 * v72];
    v75 = &v74[8 * v70];
    *v75 = 0x300000005;
    v69 = (v75 + 8);
    v77 = &v75[-(v147 - v146)];
    memcpy(v77, v146, v147 - v146);
    v78 = v146;
    v79 = v148;
    v146 = v77;
    v147 = v69;
    v148 = v76;
    v152 = v78;
    v153 = v79;
    v150 = v78;
    v151 = v78;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v147 = 0x300000005;
    v69 = (v68 + 8);
  }

  v147 = v69;
  if (v69 >= v148)
  {
    v81 = (v69 - v146) >> 3;
    if ((v81 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v82 = (v148 - v146) >> 2;
    if (v82 <= v81 + 1)
    {
      v82 = v81 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v83 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = v82;
    }

    v154 = &v149;
    if (v83)
    {
      v84 = mdm::zone_mallocator::instance(v63);
      v85 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v84, v83);
    }

    else
    {
      v85 = 0;
    }

    v87 = &v85[8 * v83];
    v86 = &v85[8 * v81];
    *v86 = 0x100010007;
    v80 = (v86 + 8);
    v88 = &v86[-(v147 - v146)];
    memcpy(v88, v146, v147 - v146);
    v89 = v146;
    v90 = v148;
    v146 = v88;
    v147 = v80;
    v148 = v87;
    v152 = v89;
    v153 = v90;
    v150 = v89;
    v151 = v89;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v69 = 0x100010007;
    v80 = v69 + 1;
  }

  v147 = v80;
  if (v80 >= v148)
  {
    v92 = (v80 - v146) >> 3;
    if ((v92 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v93 = (v148 - v146) >> 2;
    if (v93 <= v92 + 1)
    {
      v93 = v92 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v94 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v94 = v93;
    }

    v154 = &v149;
    if (v94)
    {
      v95 = mdm::zone_mallocator::instance(v63);
      v96 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v95, v94);
    }

    else
    {
      v96 = 0;
    }

    v98 = &v96[8 * v94];
    v97 = &v96[8 * v92];
    *v97 = 0x100010002;
    v91 = (v97 + 8);
    v99 = &v97[-(v147 - v146)];
    memcpy(v99, v146, v147 - v146);
    v100 = v146;
    v101 = v148;
    v146 = v99;
    v147 = v91;
    v148 = v98;
    v152 = v100;
    v153 = v101;
    v150 = v100;
    v151 = v100;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v80 = 0x100010002;
    v91 = v80 + 1;
  }

  v147 = v91;
  v102 = *(a2 + 60);
  if (v91 >= v148)
  {
    v104 = (v91 - v146) >> 3;
    if ((v104 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v105 = (v148 - v146) >> 2;
    if (v105 <= v104 + 1)
    {
      v105 = v104 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v106 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v106 = v105;
    }

    v154 = &v149;
    if (v106)
    {
      v107 = mdm::zone_mallocator::instance(v63);
      v108 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v107, v106);
    }

    else
    {
      v108 = 0;
    }

    v110 = &v108[8 * v106];
    v109 = &v108[8 * v104];
    *v109 = (v102 << 32) | 0x2C;
    v103 = v109 + 1;
    v111 = v109 - (v147 - v146);
    memcpy(v111, v146, v147 - v146);
    v112 = v146;
    v113 = v148;
    v146 = v111;
    v147 = v103;
    v148 = v110;
    v152 = v112;
    v153 = v113;
    v150 = v112;
    v151 = v112;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v91 = (v102 << 32) | 0x2C;
    v103 = v91 + 1;
  }

  v147 = v103;
  v114 = *(a2 + 100);
  if (v103 >= v148)
  {
    v116 = (v103 - v146) >> 3;
    if ((v116 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v117 = (v148 - v146) >> 2;
    if (v117 <= v116 + 1)
    {
      v117 = v116 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v118 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v118 = v117;
    }

    v154 = &v149;
    if (v118)
    {
      v119 = mdm::zone_mallocator::instance(v63);
      v120 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v119, v118);
    }

    else
    {
      v120 = 0;
    }

    v122 = &v120[8 * v118];
    v121 = &v120[8 * v116];
    *v121 = (v114 << 32) | 0x10009;
    v115 = v121 + 1;
    v123 = v121 - (v147 - v146);
    memcpy(v123, v146, v147 - v146);
    v124 = v146;
    v125 = v148;
    v146 = v123;
    v147 = v115;
    v148 = v122;
    v152 = v124;
    v153 = v125;
    v150 = v124;
    v151 = v124;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v103 = (v114 << 32) | 0x10009;
    v115 = v103 + 1;
  }

  v147 = v115;
  v126 = *(*(a1 + 7) + 8 * *(a2 + 48));
  if (v126)
  {
    v127 = v126 + 8;
  }

  else
  {
    v127 = 0;
  }

  v128 = *(v127 + 68);
  if (v115 < v148)
  {
    *v115 = ((v128 << 32) | 0x10009) + 11;
    v129 = (v115 + 1);
    goto LABEL_149;
  }

  v130 = (v115 - v146) >> 3;
  if ((v130 + 1) >> 61)
  {
LABEL_156:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v131 = (v148 - v146) >> 2;
  if (v131 <= v130 + 1)
  {
    v131 = v130 + 1;
  }

  if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
  {
    v132 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v132 = v131;
  }

  v154 = &v149;
  if (v132)
  {
    v133 = mdm::zone_mallocator::instance(v63);
    v134 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v133, v132);
  }

  else
  {
    v134 = 0;
  }

  v136 = &v134[8 * v132];
  v135 = &v134[8 * v130];
  *v135 = ((v128 << 32) | 0x10009) + 11;
  v129 = v135 + 8;
  v137 = &v135[-(v147 - v146)];
  memcpy(v137, v146, v147 - v146);
  v138 = v146;
  v139 = v148;
  v146 = v137;
  v147 = v129;
  v148 = v136;
  v152 = v138;
  v153 = v139;
  v150 = v138;
  v151 = v138;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
LABEL_149:
  v147 = v129;
  v140 = v144;
  FeatureStyleAttributes::replaceAttributes(v144, v146, (v129 - v146) >> 3);
  v141 = *(a2 + 72);
  v142 = *(&v144 + 1);
  if (*(&v144 + 1))
  {
    atomic_fetch_add_explicit((*(&v144 + 1) + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v143 = *(v141 + 40);
  *(v141 + 32) = v140;
  *(v141 + 40) = v142;
  if (v143)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v143);
  }

  if (v142)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v142);
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v146);
    std::__shared_weak_count::__release_shared[abi:nn200100](v142);
  }

  else
  {
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v146);
  }
}

void sub_1B2E05710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a15);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void md::LabelExternalPointFeature::addPlacementInfo(void *a1, uint64_t a2)
{
  v5 = a1[48];
  v4 = a1[49];
  if (v5 >= v4)
  {
    v8 = a1[47];
    v9 = (v5 - v8) >> 5;
    if ((v9 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v8;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24 = a1 + 47;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>>(v12);
    }

    v13 = 32 * v9;
    v21 = 0;
    v22 = v13;
    v23 = v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(v13, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * (*(a2 + 8) - *a2));
    v14 = *(a2 + 24);
    *(v13 + 26) = *(a2 + 26);
    *(v13 + 24) = v14;
    *&v23 = v23 + 32;
    v15 = a1[47];
    v16 = a1[48];
    v17 = v22 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>,md::LabelFeaturePlacementInfo*>(v15, v16, v17);
    v18 = a1[47];
    a1[47] = v17;
    v19 = a1[49];
    v20 = v23;
    *(a1 + 24) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    std::__split_buffer<md::LabelFeaturePlacementInfo>::~__split_buffer(&v21);
    v7 = v20;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(v5, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * (*(a2 + 8) - *a2));
    v6 = *(a2 + 24);
    *(v5 + 26) = *(a2 + 26);
    *(v5 + 24) = v6;
    v7 = v5 + 32;
    a1[48] = v5 + 32;
  }

  a1[48] = v7;
}

void sub_1B2E05944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<md::LabelFeaturePlacementInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::LabelTransitRoute::addTransferSubtitleToNode(md::LabelTransitRoute::NodeInfo &)::$_1::operator()(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void sub_1B2E05D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void md::LabelTransitRoute::addTransferSubtitleToNode(md::LabelTransitRoute::NodeInfo &)::$_2::operator()(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void sub_1B2E0614C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void sub_1B2E0665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);

  _Unwind_Resume(a1);
}

void CreateTransitLineDataElementGroup(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1B2E06ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);

  _Unwind_Resume(a1);
}

void *md::LabelExternalPointFeature::addDataElement(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[54];
  v4 = result[55];
  if (v3 >= v4)
  {
    v7 = result[53];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
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

    v19[4] = v2 + 53;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = v2[53];
    v15 = v2[54] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    v17 = v2[53];
    v2[53] = v16;
    v2[54] = v6;
    v18 = v2[55];
    v2[55] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v19);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[54] = v6;
  return result;
}

void std::__shared_ptr_emplace<md::LabelExternalDataElement>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalDataElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelExternalDataElementGroup>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
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

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalDataElementGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelTransferGroup>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(a1 + 24))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 24));
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<md::LabelTransferGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A030B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelAnnotationElementGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelAnnotationElement>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::LabelAnnotationElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::vector[abi:nn200100](void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = 8 * a3;
    v7 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    *a1 = v7;
    a1[1] = v7;
    a1[2] = &v7[a3];
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      v6 -= 8;
    }

    while (v6);
    a1[1] = v7;
  }

  return a1;
}

void MergeTransitSystemStylesWithStyle(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v10 = v3;
    v4 = [MEMORY[0x1E69A25E0] attributesForTransitSystem:v3];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v4];
      v6 = [v5 featureStyleAttributesPtr];
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      FeatureStyleAttributes::replaceAttributes(v8, **a2, *(*a2 + 33));
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(a2 + 8);
      *a2 = v8;
      *(a2 + 8) = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    v3 = v10;
  }
}

void sub_1B2E071E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t *result, unsigned int a2, _DWORD *a3)
{
  v4 = result;
  v6 = (result + 1);
  v5 = result[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 28);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = (v7 + 1);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = result + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(result);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned int,void *>>(v9);
    v10[7] = *a3;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v7;
    *v6 = v10;
    v11 = **v4;
    if (v11)
    {
      *v4 = v11;
      v12 = *v6;
    }

    else
    {
      v12 = v10;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    ++v4[3];
  }

  return result;
}

void std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(a1[1]);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<unsigned int,void *>>(v3, a1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<unsigned int,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned int,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x1020040B8A0C786uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t md::LabelTransitRoute::findStopHeadingRange(uint64_t a1, float64x2_t *a2, _DWORD *a3, int a4, char *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0xFFFFFFFFLL;
  v17 = 4;
  while (1)
  {
    v18 = (v10 + *a3);
    if (v10 + *a3 < 0)
    {
      break;
    }

    v19 = *(a1 + 240);
    if (v18 >= (*(a1 + 248) - v19) >> 4)
    {
      break;
    }

    v20 = vsubq_f64(*(v19 + 16 * v18), *a2);
    v21 = vaddvq_f64(vmulq_f64(v20, v20));
    if (v21 <= *(a1 + 232))
    {
      if (v15)
      {
        if (v11)
        {
          v33 = *a5;
          v34 = (v13 - *a5);
          v35 = v14 - *a5;
          if (v34 <= v35)
          {
            if (v34 <= (a5[1] - *a5))
            {
              v15 = 0;
              v38 = (a5[1] - *a5);
              if (v38 <= v35)
              {
                LOBYTE(v38) = v14 - *a5;
              }

              a5[1] = v38 + v33;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
            v36 = (a5[1] - *a5);
            if (v36 <= v35)
            {
              LOBYTE(v36) = v14 - *a5;
            }

            a5[1] = v36 + v33;
            *a5 = v13;
          }
        }

        else
        {
          v15 = 0;
          *a5 = v13 | (v14 << 8);
        }

        v11 = 1;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      if (v21 > *(a1 + 224))
      {
        LODWORD(v18) = v16;
        goto LABEL_45;
      }

      if (v21 <= *(a1 + 216))
      {
        v18 = v16;
      }

      else
      {
        v42 = v13;
        v43 = v11;
        v41 = v14;
        v22 = v20.f64[1];
        v23 = v20.f64[0];
        v24 = atan2f(v22, v23) * 0.159154943;
        v25 = vcvts_n_s32_f32(v24 - floorf(v24), 8uLL);
        if (v15)
        {
          v26 = (v12 - v25);
          v27 = v26 <= 0;
          if (v26 <= 0)
          {
            v28 = v12;
          }

          else
          {
            v28 = v25;
          }

          if (v27)
          {
            v29 = v25;
          }

          else
          {
            v29 = v12;
          }

          v14 = v41;
          v13 = v42;
          v30 = (v28 - v42);
          v31 = v29 - v42;
          if (v30 <= v31)
          {
            if (v30 <= (v41 - v42))
            {
              v37 = v31;
              if ((v41 - v42) > v31)
              {
                v37 = (v41 - v42);
              }

              v14 = v37 + v42;
            }

            v15 = 1;
          }

          else
          {
            v32 = (v41 - v42);
            if (v32 <= v31)
            {
              v32 = v31;
            }

            v14 = v32 + v42;
            v15 = 1;
            v13 = v28;
          }
        }

        else
        {
          v15 = 1;
          v14 = v25;
          v13 = v25;
        }

        v12 = v25;
        v18 = v16;
        v11 = v43;
      }
    }

    v10 += a4;
    v16 = v18;
    if (!--v17)
    {
      goto LABEL_45;
    }
  }

  v39 = v10 + *a3;
  LODWORD(v18) = v16;
  if (!(v11 & 1 | ((v15 & 1) == 0)))
  {
    *a5 = v13 | (v14 << 8);
    LOBYTE(v11) = 1;
    LODWORD(v18) = v39;
  }

LABEL_45:
  if (v18 == -1)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    *a3 = v18 + a4;
  }

  return v11 & 1;
}

void std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::emplace_back<md::LabelAngleRange&>(mdm::zone_mallocator *a1, char *a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v7 = &v4[-*a1] >> 1;
    if (v7 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v5 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(a1);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 2 * v10, 0x1000040BDFB0063uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[2 * v7];
    *v15 = *a2;
    v15[1] = a2[1];
    v6 = v15 + 2;
    v17 = *a1;
    v16 = *(a1 + 1);
    v18 = &v15[*a1 - v16];
    if (*a1 != v16)
    {
      v19 = v18;
      do
      {
        *v19 = *v17;
        v19[1] = v17[1];
        v17 += 2;
        v19 += 2;
      }

      while (v17 != v16);
      v17 = *a1;
    }

    *a1 = v18;
    *(a1 + 1) = v6;
    *(a1 + 2) = &v14[2 * v10];
    if (v17)
    {
      v20 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAngleRange>(v20, v17);
    }
  }

  else
  {
    *v4 = *a2;
    v4[1] = a2[1];
    v6 = v4 + 2;
    *(a1 + 1) = v4 + 2;
  }

  *(a1 + 1) = v6;
}

uint64_t md::LabelTransitRoute::findRouteHeadingRange(uint64_t a1, float64x2_t *a2, int a3, int a4, char *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = a4;
  v11 = a3;
  v12 = 10;
  v13 = -a4;
  do
  {
    if (v11 < 0)
    {
      break;
    }

    v14 = *(a1 + 240);
    v15 = v11 + v10;
    if (v13 + v11 + v10 >= ((*(a1 + 248) - v14) >> 4))
    {
      break;
    }

    v16 = vsubq_f64(*(v14 + 16 * v11), *a2);
    v17 = vaddvq_f64(vmulq_f64(v16, v16));
    if (v17 > *(a1 + 184))
    {
      v18 = v16.f64[1];
      v19 = v16.f64[0];
      v20 = atan2f(v18, v19) * 0.159154943;
      v21 = vcvts_n_s32_f32(v20 - floorf(v20), 8uLL);
      if (v8)
      {
        v22 = (v9 - v21);
        v23 = v22 <= 0 ? v9 : v21;
        v24 = v22 <= 0 ? v21 : v9;
        v25 = *a5;
        v26 = (v23 - *a5);
        v27 = v24 - *a5;
        if (v26 <= v27)
        {
          if (v26 <= (a5[1] - *a5))
          {
            v29 = v27;
            if ((a5[1] - *a5) > v27)
            {
              v29 = a5[1] - *a5;
            }

            a5[1] = v29 + v25;
          }
        }

        else
        {
          v28 = (a5[1] - *a5);
          if (v28 <= v27)
          {
            LOBYTE(v28) = v27;
          }

          a5[1] = v28 + v25;
          *a5 = v23;
        }
      }

      else
      {
        *a5 = v21 | (v21 << 8);
      }

      v8 = 1;
      v9 = v21;
      if (v17 > *(a1 + 192))
      {
        break;
      }
    }

    v11 = v15;
    --v12;
  }

  while (v12);
  return v8 & 1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,false>(unint64_t result, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 1;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v76 = *v9;
        if (*v8 < v76)
        {
          v77 = v9[1];
          *v9 = *v8;
          v78 = v76 | (v77 << 8);
          goto LABEL_186;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9[2];
      v83 = *v9;
      v84 = v9[4];
      if (v82 >= v83)
      {
        if (v84 < v82)
        {
          v132 = *(v9 + 2);
          v133 = v9[3];
          *(v9 + 1) = v132;
          *(v9 + 2) = v82 | (v133 << 8);
          if (v83 > v132)
          {
            v134 = v9[1];
            *v9 = v132;
            *(v9 + 1) = v83 | (v134 << 8);
          }

          v84 = v82;
        }
      }

      else
      {
        v85 = v83 | (v9[1] << 8);
        if (v84 < v82)
        {
          *v9 = *(v9 + 2);
          goto LABEL_189;
        }

        *v9 = *(v9 + 1);
        *(v9 + 1) = v85;
        if (v84 < v83)
        {
          *(v9 + 1) = *(v9 + 2);
LABEL_189:
          *(v9 + 2) = v85;
          v84 = v83;
        }
      }

      if (*v8 >= v84)
      {
        return result;
      }

      v141 = v9[5];
      *(v9 + 2) = *v8;
      *v8 = v84 | (v141 << 8);
      v142 = v9[2];
      if (v9[4] >= v142)
      {
        return result;
      }

      v143 = *(v9 + 2);
      v144 = v9[3];
      *(v9 + 1) = v143;
      *(v9 + 2) = v142 | (v144 << 8);
      v145 = *v9;
      if (v145 <= v143)
      {
        return result;
      }

      v146 = v9[1];
      *v9 = v143;
      v131 = v145 | (v146 << 8);
LABEL_194:
      *(v9 + 1) = v131;
      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v86 = v9 + 2;
      v88 = v9 == a2 || v86 == a2;
      if (a4)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v9;
          do
          {
            v91 = v86;
            v92 = v90[2];
            if (v92 < *v90)
            {
              v93 = v90[3];
              v94 = v89;
              while (1)
              {
                *&v9[v94 + 2] = *&v9[v94];
                if (!v94)
                {
                  break;
                }

                v95 = v9[v94 - 2];
                v94 -= 2;
                if (v92 >= v95)
                {
                  v96 = &v9[v94 + 2];
                  goto LABEL_127;
                }
              }

              v96 = v9;
LABEL_127:
              *v96 = v92 | (v93 << 8);
            }

            v86 = v91 + 2;
            v89 += 2;
            v90 = v91;
          }

          while (v91 + 2 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v135 = v86;
          v136 = v7[2];
          if (v136 < *v7)
          {
            v137 = v7[3];
            v138 = v135;
            do
            {
              v139 = v138;
              v140 = *(v138 - 1);
              v138 -= 2;
              *v139 = v140;
            }

            while (v136 < *(v139 - 4));
            *v138 = v136 | (v137 << 8);
          }

          v86 = v135 + 2;
          v7 = v135;
        }

        while (v135 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v97 = (v10 - 2) >> 1;
      v98 = v97;
      do
      {
        v99 = v98;
        if (v97 >= v98)
        {
          v100 = (2 * v98) | 1;
          v101 = &v9[2 * v100];
          if (2 * v99 + 2 >= v10)
          {
            v103 = *v101;
          }

          else
          {
            v102 = *v101;
            v103 = v101[2];
            v104 = v102 >= v103;
            if (v102 > v103)
            {
              v103 = *v101;
            }

            if (!v104)
            {
              v101 += 2;
              v100 = 2 * v99 + 2;
            }
          }

          v105 = &v9[2 * v99];
          v106 = *v105;
          if (v103 >= v106)
          {
            v107 = v105[1];
            do
            {
              v108 = v105;
              v105 = v101;
              *v108 = *v101;
              if (v97 < v100)
              {
                break;
              }

              v109 = (2 * v100) | 1;
              v101 = &v9[2 * v109];
              v100 = 2 * v100 + 2;
              if (v100 >= v10)
              {
                v110 = *v101;
                v100 = v109;
              }

              else
              {
                v110 = *v101;
                result = (v101 + 2);
                v111 = v101[2];
                v112 = v110 >= v111;
                if (v110 <= v111)
                {
                  v110 = v101[2];
                }

                if (v112)
                {
                  v100 = v109;
                }

                else
                {
                  v101 += 2;
                }
              }
            }

            while (v110 >= v106);
            *v105 = v106 | (v107 << 8);
          }
        }

        v98 = v99 - 1;
      }

      while (v99);
      while (2)
      {
        v113 = 0;
        LOWORD(v114) = *v9;
        v115 = v9[1];
        v116 = v9;
        do
        {
          v117 = &v116[2 * v113];
          v118 = v117 + 2;
          v119 = (2 * v113) | 1;
          v113 = 2 * v113 + 2;
          if (v113 >= v10)
          {
            v113 = v119;
          }

          else
          {
            v121 = v117[4];
            v120 = v117 + 4;
            result = *(v120 - 2);
            if (result >= v121)
            {
              v113 = v119;
            }

            else
            {
              v118 = v120;
            }
          }

          *v116 = *v118;
          v116 = v118;
        }

        while (v113 <= ((v10 - 2) >> 1));
        a2 -= 2;
        if (v118 == a2)
        {
LABEL_166:
          *v118 = v114 | (v115 << 8);
        }

        else
        {
          *v118 = *a2;
          *a2 = v114 | (v115 << 8);
          v122 = (v118 - v9 + 2) >> 1;
          v123 = v122 < 2;
          v124 = v122 - 2;
          if (!v123)
          {
            v125 = v124 >> 1;
            v126 = &v9[2 * (v124 >> 1)];
            v114 = *v118;
            if (*v126 < v114)
            {
              v115 = v118[1];
              do
              {
                v127 = v118;
                v118 = v126;
                *v127 = *v126;
                if (!v125)
                {
                  break;
                }

                v125 = (v125 - 1) >> 1;
                v126 = &v9[2 * v125];
              }

              while (*v126 < v114);
              goto LABEL_166;
            }
          }
        }

        v123 = v10-- <= 2;
        if (v123)
        {
          return result;
        }

        continue;
      }
    }

    v11 = &v9[2 * (v10 >> 1)];
    v12 = v11;
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = *v9;
      if (v14 >= v15)
      {
        if (v13 < v14)
        {
          v20 = v11[1];
          *v11 = *v8;
          *v8 = v14 | (v20 << 8);
          v21 = *v9;
          if (*v11 < v21)
          {
            v22 = v9[1];
            *v9 = *v11;
            *v11 = v21 | (v22 << 8);
          }
        }
      }

      else
      {
        v16 = v15 | (v9[1] << 8);
        if (v13 < v14)
        {
          *v9 = *v8;
          goto LABEL_27;
        }

        *v9 = *v11;
        *v11 = v16;
        if (*v8 < v15)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v26 = v11 - 2;
      v27 = *(v11 - 2);
      v28 = v9[2];
      v29 = *(a2 - 4);
      if (v27 >= v28)
      {
        if (v29 < v27)
        {
          v31 = *(v11 - 1);
          *v26 = *(a2 - 2);
          *(a2 - 2) = v27 | (v31 << 8);
          v32 = v9[2];
          if (*v26 < v32)
          {
            v33 = v9[3];
            *(v9 + 1) = *v26;
            *v26 = v32 | (v33 << 8);
          }
        }
      }

      else
      {
        v30 = v28 | (v9[3] << 8);
        if (v29 < v27)
        {
          *(v9 + 1) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v9 + 1) = *v26;
        *v26 = v30;
        if (*(a2 - 4) < v28)
        {
          *v26 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v36 = v11[2];
      v34 = v11 + 2;
      v35 = v36;
      v37 = v9[4];
      v38 = *(a2 - 6);
      if (v36 >= v37)
      {
        if (v38 < v35)
        {
          v40 = v34[1];
          *v34 = *(a2 - 3);
          *(a2 - 3) = v35 | (v40 << 8);
          v41 = v9[4];
          if (*v34 < v41)
          {
            v42 = v9[5];
            *(v9 + 2) = *v34;
            *v34 = v41 | (v42 << 8);
          }
        }
      }

      else
      {
        v39 = v37 | (v9[5] << 8);
        if (v38 < v35)
        {
          *(v9 + 2) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v9 + 2) = *v34;
        *v34 = v39;
        if (*(a2 - 6) < v37)
        {
          *v34 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      v43 = *v12;
      v44 = *v26;
      v45 = *v34;
      if (v43 >= v44)
      {
        if (v45 < v43)
        {
          v47 = *v34;
          v48 = v12[1];
          *v12 = *v34;
          *v34 = v43 | (v48 << 8);
          if (v44 > v47)
          {
            v49 = v26[1];
            *v26 = v47;
            *v12 = v44 | (v49 << 8);
          }
        }
      }

      else
      {
        v46 = v44 | (v26[1] << 8);
        if (v45 < v43)
        {
          *v26 = *v34;
          goto LABEL_57;
        }

        *v26 = *v12;
        *v12 = v46;
        if (v45 < v44)
        {
          *v12 = *v34;
LABEL_57:
          *v34 = v46;
        }
      }

      v50 = *v9;
      *v9 = *v12;
      *v12 = v50;
      goto LABEL_59;
    }

    v17 = *v9;
    v18 = *v12;
    if (v17 >= v18)
    {
      if (v13 < v17)
      {
        v23 = v9[1];
        *v9 = *v8;
        *v8 = v17 | (v23 << 8);
        v24 = *v12;
        if (*v9 < v24)
        {
          v25 = v12[1];
          *v12 = *v9;
          *v9 = v24 | (v25 << 8);
        }
      }

      goto LABEL_59;
    }

    v19 = v18 | (v12[1] << 8);
    if (v13 >= v17)
    {
      *v12 = *v9;
      *v9 = v19;
      if (*v8 >= v18)
      {
        goto LABEL_59;
      }

      *v9 = *v8;
    }

    else
    {
      *v12 = *v8;
    }

    *v8 = v19;
LABEL_59:
    --a3;
    v51 = *v9;
    if ((a4 & 1) != 0 || *(v9 - 2) < v51)
    {
      v52 = v9[1];
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[2];
        v53 += 2;
        v55 = v56;
      }

      while (v56 < v51);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *(v57 - 2);
          v57 -= 2;
        }

        while (v59 >= v51);
      }

      else
      {
        do
        {
          v58 = *(v57 - 2);
          v57 -= 2;
        }

        while (v58 >= v51);
      }

      if (v53 < v57)
      {
        v60 = v53;
        v61 = v57;
        do
        {
          v62 = v60[1];
          *v60 = *v61;
          *v61 = v55 | (v62 << 8);
          do
          {
            v54 = v60;
            v63 = v60[2];
            v60 += 2;
            v55 = v63;
          }

          while (v63 < v51);
          do
          {
            v64 = *(v61 - 2);
            v61 -= 2;
          }

          while (v64 >= v51);
        }

        while (v60 < v61);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51 | (v52 << 8);
      if (v53 < v57)
      {
        goto LABEL_80;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *>(v9, v54);
      v9 = v54 + 2;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *>(v54 + 2, a2);
      if (result)
      {
        a2 = v54;
        if (v65)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v65)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 2;
      }
    }

    else
    {
      if (v51 >= *v8)
      {
        v67 = v9 + 2;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 2;
        }

        while (v51 >= *v9);
      }

      else
      {
        do
        {
          v66 = v9[2];
          v9 += 2;
        }

        while (v51 >= v66);
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *(v68 - 2);
          v68 -= 2;
        }

        while (v51 < v69);
      }

      v70 = v7[1];
      if (v9 < v68)
      {
        v71 = *v9;
        do
        {
          v72 = v9[1];
          *v9 = *v68;
          *v68 = v71 | (v72 << 8);
          do
          {
            v73 = v9[2];
            v9 += 2;
            v71 = v73;
          }

          while (v51 >= v73);
          do
          {
            v74 = *(v68 - 2);
            v68 -= 2;
          }

          while (v51 < v74);
        }

        while (v9 < v68);
      }

      v75 = v9 - 2;
      if (v9 - 2 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v51 | (v70 << 8);
    }
  }

  v79 = v9[2];
  v80 = *v9;
  v81 = *v8;
  if (v79 >= v80)
  {
    if (v81 >= v79)
    {
      return result;
    }

    v128 = v9[3];
    *(v9 + 1) = *v8;
    *v8 = v79 | (v128 << 8);
    v129 = *v9;
    if (v9[2] >= v129)
    {
      return result;
    }

    v130 = v9[1];
    *v9 = *(v9 + 1);
    v131 = v129 | (v130 << 8);
    goto LABEL_194;
  }

  v78 = v80 | (v9[1] << 8);
  if (v81 >= v79)
  {
    *v9 = *(v9 + 1);
    *(v9 + 1) = v78;
    if (*v8 >= v80)
    {
      return result;
    }

    *(v9 + 1) = *v8;
  }

  else
  {
    *v9 = *v8;
  }

LABEL_186:
  *v8 = v78;
  return result;
}

mdm::zone_mallocator *populatePlacementsInArc(mdm::zone_mallocator *result, uint64_t a2, float a3)
{
  v5 = result;
  while (a3 >= 75.0)
  {
    v6 = (a3 * 0.0013889) - floorf(a3 * 0.0013889);
    a3 = a3 * 0.5;
    v7 = (vcvts_n_s32_f32(v6, 8uLL) + v5);
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 >= v8)
    {
      v11 = (v9 - *a2) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v8 - *a2;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = mdm::zone_mallocator::instance(result);
        v16 = pthread_rwlock_rdlock((v15 + 32));
        if (v16)
        {
          geo::read_write_lock::logFailure(v16, "read lock", v17);
        }

        v18 = malloc_type_zone_malloc(*v15, 8 * v14, 0x10000404A09149AuLL);
        atomic_fetch_add((v15 + 24), 1u);
        geo::read_write_lock::unlock((v15 + 32));
      }

      else
      {
        v18 = 0;
      }

      v19 = &v18[8 * v11];
      v20 = &v18[8 * v14];
      *v19 = v7;
      v19[1] = a3;
      v10 = (v19 + 2);
      v21 = *(a2 + 8) - *a2;
      v22 = v19 - v21;
      v23 = memcpy(v19 - v21, *a2, v21);
      v24 = *a2;
      *a2 = v22;
      *(a2 + 8) = v10;
      *(a2 + 16) = v20;
      if (v24)
      {
        v25 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelPlacementRegion>(v25, v24);
      }
    }

    else
    {
      *v9 = v7;
      *(v9 + 4) = a3;
      v10 = (v9 + 8);
    }

    *(a2 + 8) = v10;
    result = populatePlacementsInArc(v5, a2, a3);
    v5 = v7;
  }

  return result;
}

float *std::__introsort<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,false>(float *result, float *a2, char **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 2;
  j = v9;
  while (1)
  {
    v9 = j;
    v12 = (a2 - j) >> 3;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(j, j + 2, a2 - 2, a3);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(j, j + 2, j + 4, (a2 - 2), a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(j, j + 2, j + 4, (j + 6), (a2 - 2), a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v73 = *(a2 - 1);
        v74 = j[1];
        if (vabds_f32(v73, v74) <= 10.0)
        {
          v152 = **a3;
          v153 = (*v10 - v152);
          if (v153 < 0)
          {
            v153 = -v153;
          }

          v154 = (*j - v152);
          if (v154 < 0)
          {
            v154 = -v154;
          }

          if (v153 >= v154)
          {
            return result;
          }
        }

        else if (v73 <= v74)
        {
          return result;
        }

        v155 = *j;
        *j = *v10;
        *v10 = v155;
        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (j == a2)
      {
        return result;
      }

      v94 = (v12 - 2) >> 1;
      v95 = v94;
      while (1)
      {
        v96 = v95;
        if (v94 < v95)
        {
          goto LABEL_239;
        }

        v97 = (2 * v95) | 1;
        v98 = &j[2 * v97];
        if (2 * v96 + 2 < v12)
        {
          v99 = v98[1];
          v100 = v98[3];
          if (vabds_f32(v99, v100) <= 10.0)
          {
            v101 = **a3;
            v102 = (*v98 - v101);
            if (v102 < 0)
            {
              v102 = -v102;
            }

            v103 = (*(v98 + 8) - v101);
            if (v103 < 0)
            {
              v103 = -v103;
            }

            if (v102 < v103)
            {
LABEL_208:
              v98 += 2;
              v97 = 2 * v96 + 2;
            }
          }

          else if (v99 > v100)
          {
            goto LABEL_208;
          }
        }

        v104 = &j[2 * v96];
        v105 = v98[1];
        v106 = v104[1];
        if (vabds_f32(v105, v106) <= 10.0)
        {
          v107 = **a3;
          v108 = (*v98 - v107);
          if (v108 < 0)
          {
            v108 = -v108;
          }

          v109 = (*v104 - v107);
          if (v109 < 0)
          {
            v109 = -v109;
          }

          if (v108 >= v109)
          {
LABEL_217:
            v110 = *v104;
            *v104 = *v98;
            if (v94 < v97)
            {
LABEL_218:
              v111 = v98;
LABEL_238:
              *v111 = v110;
              v111[1] = v106;
              goto LABEL_239;
            }

            while (2)
            {
              v112 = 2 * v97;
              v97 = (2 * v97) | 1;
              v111 = &j[2 * v97];
              v113 = v112 + 2;
              if (v113 < v12)
              {
                v114 = v111[1];
                v115 = v111[3];
                if (vabds_f32(v114, v115) <= 10.0)
                {
                  v116 = **a3;
                  v117 = (*v111 - v116);
                  if (v117 < 0)
                  {
                    v117 = -v117;
                  }

                  result = *(v111 + 8);
                  v118 = (result - v116);
                  if (v118 < 0)
                  {
                    v118 = -v118;
                  }

                  if (v117 >= v118)
                  {
                    goto LABEL_229;
                  }
                }

                else if (v114 <= v115)
                {
                  goto LABEL_229;
                }

                v111 += 2;
                v97 = v113;
              }

LABEL_229:
              v119 = v111[1];
              if (vabds_f32(v119, v106) <= 10.0)
              {
                v120 = **a3;
                v121 = (*v111 - v120);
                if (v121 < 0)
                {
                  v121 = -v121;
                }

                v122 = (v110 - v120);
                if (v122 < 0)
                {
                  v122 = -v122;
                }

                if (v121 < v122)
                {
                  goto LABEL_218;
                }
              }

              else if (v119 > v106)
              {
                goto LABEL_218;
              }

              *v98 = *v111;
              v98 = v111;
              if (v94 < v97)
              {
                goto LABEL_238;
              }

              continue;
            }
          }
        }

        else if (v105 <= v106)
        {
          goto LABEL_217;
        }

LABEL_239:
        v95 = v96 - 1;
        if (!v96)
        {
          while (1)
          {
            v123 = 0;
            v124 = *j;
            v125 = j;
            do
            {
              v126 = v125;
              v127 = &v125[2 * v123];
              v125 = v127 + 2;
              v128 = 2 * v123;
              v123 = (2 * v123) | 1;
              v129 = v128 + 2;
              if (v129 >= v12)
              {
                goto LABEL_251;
              }

              v130 = v127[3];
              v131 = v127[5];
              if (vabds_f32(v130, v131) <= 10.0)
              {
                v132 = **a3;
                v133 = (*(v127 + 8) - v132);
                if (v133 < 0)
                {
                  v133 = -v133;
                }

                result = *(v127 + 16);
                v134 = (result - v132);
                if (v134 < 0)
                {
                  v134 = -v134;
                }

                if (v133 < v134)
                {
LABEL_250:
                  v125 = v127 + 4;
                  v123 = v129;
                }
              }

              else if (v130 > v131)
              {
                goto LABEL_250;
              }

LABEL_251:
              *v126 = *v125;
            }

            while (v123 <= ((v12 - 2) >> 1));
            a2 -= 2;
            if (v125 == a2)
            {
              *v125 = v124;
              goto LABEL_275;
            }

            *v125 = *a2;
            *a2 = v124;
            v135 = (v125 - j + 8) >> 3;
            v136 = v135 - 2;
            if (v135 < 2)
            {
              goto LABEL_275;
            }

            v137 = v136 >> 1;
            v138 = &j[2 * (v136 >> 1)];
            v139 = v138[1];
            v140 = v125[1];
            if (vabds_f32(v139, v140) <= 10.0)
            {
              v141 = **a3;
              v142 = (*v138 - v141);
              if (v142 < 0)
              {
                v142 = -v142;
              }

              v143 = (*v125 - v141);
              if (v143 < 0)
              {
                v143 = -v143;
              }

              if (v142 < v143)
              {
                goto LABEL_263;
              }
            }

            else
            {
              if (v139 <= v140)
              {
                goto LABEL_275;
              }

LABEL_263:
              v144 = *v125;
              *v125 = *v138;
              if (v136 >= 2)
              {
                while (1)
                {
                  v146 = v137 - 1;
                  v137 = (v137 - 1) >> 1;
                  v145 = &j[2 * v137];
                  v147 = v145[1];
                  if (vabds_f32(v147, v140) <= 10.0)
                  {
                    v148 = **a3;
                    v149 = (*v145 - v148);
                    if (v149 < 0)
                    {
                      v149 = -v149;
                    }

                    v150 = (v144 - v148);
                    if (v150 < 0)
                    {
                      v150 = -v150;
                    }

                    if (v149 >= v150)
                    {
                      break;
                    }
                  }

                  else if (v147 <= v140)
                  {
                    break;
                  }

                  *v138 = *v145;
                  v138 = &j[2 * v137];
                  if (v146 <= 1)
                  {
                    goto LABEL_274;
                  }
                }
              }

              v145 = v138;
LABEL_274:
              *v145 = v144;
              v145[1] = v140;
            }

LABEL_275:
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &j[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v9 + 2, v14 - 2, a2 - 4, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6, a3);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v14 - 2, v14, &v9[2 * v13 + 2], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
    }

    --a4;
    if (a5)
    {
      v16 = v9[1];
LABEL_19:
      v18 = v9 + 2;
      v19 = *v9;
      v20 = *a3;
      while (1)
      {
        v21 = v18[1];
        if (vabds_f32(v21, v16) <= 10.0)
        {
          break;
        }

        if (v21 <= v16)
        {
          goto LABEL_29;
        }

LABEL_28:
        v18 += 2;
      }

      v22 = (*v18 - *v20);
      if (v22 < 0)
      {
        v22 = -v22;
      }

      v23 = (LOBYTE(v19) - *v20);
      if (v23 < 0)
      {
        v23 = -v23;
      }

      if (v22 < v23)
      {
        goto LABEL_28;
      }

LABEL_29:
      i = a2 - 2;
      if (v18 - 2 != v9)
      {
        while (1)
        {
          v25 = i[1];
          if (vabds_f32(v25, v16) <= 10.0)
          {
            v26 = (*i - *v20);
            if (v26 < 0)
            {
              v26 = -v26;
            }

            v27 = (LOBYTE(v19) - *v20);
            if (v27 < 0)
            {
              v27 = -v27;
            }

            if (v26 < v27)
            {
              goto LABEL_57;
            }
          }

          else if (v25 > v16)
          {
            goto LABEL_57;
          }

          i -= 2;
        }
      }

      i = a2;
      if (v18 < a2)
      {
        for (i = a2 - 2; ; i -= 2)
        {
          v28 = i[1];
          if (vabds_f32(v28, v16) <= 10.0)
          {
            v30 = (*i - *v20);
            if (v30 < 0)
            {
              v30 = -v30;
            }

            v31 = (LOBYTE(v19) - *v20);
            if (v31 < 0)
            {
              v31 = -v31;
            }

            if (v30 < v31 || v18 >= i)
            {
              break;
            }
          }

          else if (v28 > v16 || v18 >= i)
          {
            break;
          }
        }
      }

LABEL_57:
      j = v18;
      if (v18 >= i)
      {
        goto LABEL_77;
      }

      j = v18;
      v33 = i;
      while (2)
      {
        v34 = *j;
        *j = *v33;
        j += 2;
        *v33 = v34;
        v35 = *a3;
        while (2)
        {
          v36 = j[1];
          if (vabds_f32(v36, v16) > 10.0)
          {
            if (v36 <= v16)
            {
              goto LABEL_74;
            }

            goto LABEL_68;
          }

          v37 = (*j - *v35);
          if (v37 < 0)
          {
            v37 = -v37;
          }

          v38 = (LOBYTE(v19) - *v35);
          if (v38 < 0)
          {
            v38 = -v38;
          }

          if (v37 < v38)
          {
LABEL_68:
            j += 2;
            continue;
          }

          break;
        }

        do
        {
LABEL_74:
          while (1)
          {
            v33 -= 8;
            v41 = *(v33 + 4);
            if (vabds_f32(v41, v16) <= 10.0)
            {
              break;
            }

            if (v41 > v16)
            {
              goto LABEL_76;
            }
          }

          v39 = (*v33 - *v35);
          if (v39 < 0)
          {
            v39 = -v39;
          }

          v40 = (LOBYTE(v19) - *v35);
          if (v40 < 0)
          {
            v40 = -v40;
          }
        }

        while (v39 >= v40);
LABEL_76:
        if (j < v33)
        {
          continue;
        }

        break;
      }

LABEL_77:
      if (j - 2 != v9)
      {
        *v9 = *(j - 1);
      }

      *(j - 2) = v19;
      *(j - 1) = v16;
      if (v18 < i)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,false>(v9, j - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v42 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *>(v9, j - 2, a3);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *>(j, a2, a3);
        if (result)
        {
          a2 = j - 2;
          if (v42)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v42)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v17 = *(v9 - 1);
      v16 = v9[1];
      if (vabds_f32(v17, v16) <= 10.0)
      {
        v43 = **a3;
        v44 = (*(v9 - 8) - v43);
        if (v44 < 0)
        {
          v44 = -v44;
        }

        v45 = (*v9 - v43);
        if (v45 < 0)
        {
          v45 = -v45;
        }

        if (v44 < v45)
        {
          goto LABEL_19;
        }
      }

      else if (v17 > v16)
      {
        goto LABEL_19;
      }

      v46 = *v9;
      v47 = *(a2 - 1);
      if (vabds_f32(v16, v47) <= 10.0)
      {
        v48 = *a3;
        v49 = **a3;
        v50 = (LOBYTE(v46) - v49);
        if (v50 < 0)
        {
          v50 = -v50;
        }

        v51 = (*v10 - v49);
        if (v51 < 0)
        {
          v51 = -v51;
        }

        if (v50 < v51)
        {
          goto LABEL_96;
        }
      }

      else if (v47 < v16)
      {
        v48 = *a3;
LABEL_96:
        for (j = v9 + 2; ; j += 2)
        {
          v52 = j[1];
          if (vabds_f32(v16, v52) <= 10.0)
          {
            v53 = (LOBYTE(v46) - *v48);
            if (v53 < 0)
            {
              v53 = -v53;
            }

            v54 = (*j - *v48);
            if (v54 < 0)
            {
              v54 = -v54;
            }

            if (v53 < v54)
            {
              goto LABEL_116;
            }
          }

          else if (v52 < v16)
          {
            goto LABEL_116;
          }
        }
      }

      for (j = v9 + 2; j < a2; j += 2)
      {
        v55 = j[1];
        if (vabds_f32(v16, v55) <= 10.0)
        {
          v56 = **a3;
          v57 = (LOBYTE(v46) - v56);
          if (v57 < 0)
          {
            v57 = -v57;
          }

          v58 = (*j - v56);
          if (v58 < 0)
          {
            v58 = -v58;
          }

          if (v57 < v58)
          {
            break;
          }
        }

        else if (v55 < v16)
        {
          break;
        }
      }

LABEL_116:
      v59 = a2;
      if (j >= a2)
      {
        goto LABEL_145;
      }

      v60 = a2 - 3;
      while (vabds_f32(v16, v47) > 10.0)
      {
        if (v47 >= v16)
        {
          goto LABEL_127;
        }

LABEL_126:
        v64 = *v60;
        v60 -= 2;
        v47 = v64;
      }

      v61 = **a3;
      v62 = (LOBYTE(v46) - v61);
      if (v62 < 0)
      {
        v62 = -v62;
      }

      v63 = (*(v60 + 4) - v61);
      if (v63 < 0)
      {
        v63 = -v63;
      }

      if (v62 < v63)
      {
        goto LABEL_126;
      }

LABEL_127:
      v59 = v60 + 1;
LABEL_145:
      if (j < v59)
      {
        v65 = *j;
        *j = *v59;
        j += 2;
        *v59 = v65;
        v66 = *a3;
        while (1)
        {
          v67 = j[1];
          if (vabds_f32(v16, v67) <= 10.0)
          {
            v68 = (LOBYTE(v46) - *v66);
            if (v68 < 0)
            {
              v68 = -v68;
            }

            v69 = (*j - *v66);
            if (v69 < 0)
            {
              v69 = -v69;
            }

            if (v68 < v69)
            {
              do
              {
LABEL_143:
                while (1)
                {
                  v59 -= 2;
                  v72 = v59[1];
                  if (vabds_f32(v16, v72) <= 10.0)
                  {
                    break;
                  }

                  if (v72 >= v16)
                  {
                    goto LABEL_145;
                  }
                }

                v70 = (LOBYTE(v46) - *v66);
                if (v70 < 0)
                {
                  v70 = -v70;
                }

                v71 = (*v59 - *v66);
                if (v71 < 0)
                {
                  v71 = -v71;
                }
              }

              while (v70 < v71);
              goto LABEL_145;
            }
          }

          else if (v67 < v16)
          {
            goto LABEL_143;
          }

          j += 2;
        }
      }

      if (j - 2 != v9)
      {
        *v9 = *(j - 1);
      }

      a5 = 0;
      *(j - 2) = v46;
      *(j - 1) = v16;
    }
  }

  v75 = j + 2;
  v77 = j == a2 || v75 == a2;
  if ((a5 & 1) == 0)
  {
    if (v77)
    {
      return result;
    }

    while (1)
    {
      v156 = v9;
      v9 = v75;
      v157 = v156[3];
      v158 = v156[1];
      if (vabds_f32(v157, v158) <= 10.0)
      {
        v159 = **a3;
        v160 = (*v75 - v159);
        if (v160 < 0)
        {
          v160 = -v160;
        }

        v161 = (*v156 - v159);
        if (v161 < 0)
        {
          v161 = -v161;
        }

        if (v160 >= v161)
        {
          goto LABEL_303;
        }
      }

      else if (v157 <= v158)
      {
        goto LABEL_303;
      }

      v162 = *v75;
      do
      {
        while (1)
        {
          v163 = v156;
          *(v156 + 1) = *v156;
          v156 -= 2;
          v164 = *(v163 - 1);
          if (vabds_f32(v157, v164) <= 10.0)
          {
            break;
          }

          if (v164 >= v157)
          {
            goto LABEL_302;
          }
        }

        v165 = **a3;
        v166 = (v162 - v165);
        if (v166 < 0)
        {
          v166 = -v166;
        }

        v167 = (*v156 - v165);
        if (v167 < 0)
        {
          v167 = -v167;
        }
      }

      while (v166 < v167);
LABEL_302:
      *v163 = v162;
      v163[1] = v157;
LABEL_303:
      v75 = v9 + 2;
      if (v9 + 2 == a2)
      {
        return result;
      }
    }
  }

  if (v77)
  {
    return result;
  }

  v78 = 0;
  v79 = j;
  while (2)
  {
    v80 = v79;
    v79 = v75;
    v81 = v80[3];
    v82 = v80[1];
    if (vabds_f32(v81, v82) <= 10.0)
    {
      v83 = **a3;
      v84 = (*v79 - v83);
      if (v84 < 0)
      {
        v84 = -v84;
      }

      v85 = (*v80 - v83);
      if (v85 < 0)
      {
        v85 = -v85;
      }

      if (v84 >= v85)
      {
        goto LABEL_194;
      }
    }

    else if (v81 <= v82)
    {
      goto LABEL_194;
    }

    v86 = *(v80 + 2);
    *(v80 + 1) = *v80;
    v87 = j;
    if (v80 == j)
    {
      goto LABEL_193;
    }

    v88 = v78;
    while (2)
    {
      v89 = (j + v88);
      v90 = *(j + v88 - 4);
      if (vabds_f32(v81, v90) > 10.0)
      {
        if (v90 >= v81)
        {
          v87 = (j + v88);
          goto LABEL_193;
        }

LABEL_190:
        v80 -= 2;
        *v89 = *(v89 - 1);
        v88 -= 8;
        if (!v88)
        {
          v87 = j;
          goto LABEL_193;
        }

        continue;
      }

      break;
    }

    v91 = **a3;
    v92 = (v86 - v91);
    if (v92 < 0)
    {
      v92 = -v92;
    }

    v93 = (*(v89 - 8) - v91);
    if (v93 < 0)
    {
      v93 = -v93;
    }

    if (v92 < v93)
    {
      goto LABEL_190;
    }

    v87 = v80;
LABEL_193:
    *v87 = v86;
    v87[1] = v81;
LABEL_194:
    v75 = v79 + 2;
    v78 += 8;
    if (v79 + 2 != a2)
    {
      continue;
    }

    return result;
  }
}

void std::vector<LabelPlacementRegion,geo::allocator_adapter<LabelPlacementRegion,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelPlacementRegion>(v2, v1);
  }
}

void std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAngleRange>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAngleRange>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelPlacementRegion>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

float *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(float *result, float *a2, float *a3, char **a4)
{
  v4 = a2[1];
  v5 = result[1];
  if (vabds_f32(v4, v5) <= 10.0)
  {
    v7 = **a4;
    v8 = (*a2 - v7);
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v9 = (*result - v7);
    if (v9 < 0)
    {
      v9 = -v9;
    }

    if (v8 >= v9)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = a3[1];
    if (vabds_f32(v10, v4) <= 10.0)
    {
      v19 = **a4;
      v20 = (*a3 - v19);
      if (v20 < 0)
      {
        v20 = -v20;
      }

      v21 = (*a2 - v19);
      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v20 >= v21)
      {
        goto LABEL_13;
      }
    }

    else if (v10 <= v4)
    {
LABEL_13:
      v11 = *result;
      *result = *a2;
      *a2 = v11;
      v12 = a3[1];
      if (vabds_f32(v12, *(&v11 + 1)) <= 10.0)
      {
        v22 = **a4;
        v23 = (*a3 - v22);
        if (v23 < 0)
        {
          v23 = -v23;
        }

        v24 = (v11 - v22);
        if (v24 < 0)
        {
          v24 = -v24;
        }

        if (v23 >= v24)
        {
          return result;
        }
      }

      else if (v12 <= *(&v11 + 1))
      {
        return result;
      }

      *a2 = *a3;
LABEL_36:
      *a3 = v11;
      return result;
    }

    v11 = *result;
    *result = *a3;
    goto LABEL_36;
  }

  if (v4 > v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = a3[1];
  if (vabds_f32(v6, v4) <= 10.0)
  {
    v13 = **a4;
    v14 = (*a3 - v13);
    if (v14 < 0)
    {
      v14 = -v14;
    }

    v15 = (*a2 - v13);
    if (v15 < 0)
    {
      v15 = -v15;
    }

    if (v14 >= v15)
    {
      return result;
    }
  }

  else if (v6 <= v4)
  {
    return result;
  }

  v16 = *a2;
  *a2 = *a3;
  *a3 = v16;
  v17 = a2[1];
  v18 = result[1];
  if (vabds_f32(v17, v18) <= 10.0)
  {
    v25 = **a4;
    v26 = (*a2 - v25);
    if (v26 < 0)
    {
      v26 = -v26;
    }

    v27 = (*result - v25);
    if (v27 < 0)
    {
      v27 = -v27;
    }

    if (v26 < v27)
    {
      goto LABEL_42;
    }
  }

  else if (v17 > v18)
  {
LABEL_42:
    v28 = *result;
    *result = *a2;
    *a2 = v28;
  }

  return result;
}

float *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(float *a1, float *a2, float *a3, uint64_t a4, char **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a2, a3, a5);
  v11 = *(a4 + 4);
  v12 = a3[1];
  if (vabds_f32(v11, v12) <= 10.0)
  {
    v13 = **a5;
    v14 = (*a4 - v13);
    if (v14 < 0)
    {
      v14 = -v14;
    }

    v15 = (*a3 - v13);
    if (v15 < 0)
    {
      v15 = -v15;
    }

    if (v14 >= v15)
    {
      return result;
    }
  }

  else if (v11 <= v12)
  {
    return result;
  }

  v16 = *a3;
  *a3 = *a4;
  *a4 = v16;
  v17 = a3[1];
  v18 = a2[1];
  if (vabds_f32(v17, v18) <= 10.0)
  {
    v19 = **a5;
    v20 = (*a3 - v19);
    if (v20 < 0)
    {
      v20 = -v20;
    }

    v21 = (*a2 - v19);
    if (v21 < 0)
    {
      v21 = -v21;
    }

    if (v20 >= v21)
    {
      return result;
    }
  }

  else if (v17 <= v18)
  {
    return result;
  }

  v22 = *a2;
  *a2 = *a3;
  *a3 = v22;
  v23 = a2[1];
  v24 = a1[1];
  if (vabds_f32(v23, v24) > 10.0)
  {
    if (v23 <= v24)
    {
      return result;
    }

LABEL_25:
    v28 = *a1;
    *a1 = *a2;
    *a2 = v28;
    return result;
  }

  v25 = **a5;
  v26 = (*a2 - v25);
  if (v26 < 0)
  {
    v26 = -v26;
  }

  v27 = (*a1 - v25);
  if (v27 < 0)
  {
    v27 = -v27;
  }

  if (v26 < v27)
  {
    goto LABEL_25;
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, char **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a2, a3, a4, a6);
  v13 = *(a5 + 4);
  v14 = *(a4 + 4);
  if (vabds_f32(v13, v14) <= 10.0)
  {
    v15 = **a6;
    v16 = (*a5 - v15);
    if (v16 < 0)
    {
      v16 = -v16;
    }

    v17 = (*a4 - v15);
    if (v17 < 0)
    {
      v17 = -v17;
    }

    if (v16 >= v17)
    {
      return result;
    }
  }

  else if (v13 <= v14)
  {
    return result;
  }

  v18 = *a4;
  *a4 = *a5;
  *a5 = v18;
  v19 = *(a4 + 4);
  v20 = a3[1];
  if (vabds_f32(v19, v20) <= 10.0)
  {
    v21 = **a6;
    v22 = (*a4 - v21);
    if (v22 < 0)
    {
      v22 = -v22;
    }

    v23 = (*a3 - v21);
    if (v23 < 0)
    {
      v23 = -v23;
    }

    if (v22 >= v23)
    {
      return result;
    }
  }

  else if (v19 <= v20)
  {
    return result;
  }

  v24 = *a3;
  *a3 = *a4;
  *a4 = v24;
  v25 = a3[1];
  v26 = a2[1];
  if (vabds_f32(v25, v26) <= 10.0)
  {
    v27 = **a6;
    v28 = (*a3 - v27);
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v29 = (*a2 - v27);
    if (v29 < 0)
    {
      v29 = -v29;
    }

    if (v28 >= v29)
    {
      return result;
    }
  }

  else if (v25 <= v26)
  {
    return result;
  }

  v30 = *a2;
  *a2 = *a3;
  *a3 = v30;
  v31 = a2[1];
  v32 = a1[1];
  if (vabds_f32(v31, v32) > 10.0)
  {
    if (v31 <= v32)
    {
      return result;
    }

LABEL_33:
    v36 = *a1;
    *a1 = *a2;
    *a2 = v36;
    return result;
  }

  v33 = **a6;
  v34 = (*a2 - v33);
  if (v34 < 0)
  {
    v34 = -v34;
  }

  v35 = (*a1 - v33);
  if (v35 < 0)
  {
    v35 = -v35;
  }

  if (v34 < v35)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *>(float *a1, float *a2, char **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a1 + 4, (a2 - 2), a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a1 + 4, (a1 + 6), (a2 - 2), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = a1[1];
      if (vabds_f32(v7, v8) <= 10.0)
      {
        v25 = **a3;
        v26 = (*(a2 - 8) - v25);
        if (v26 < 0)
        {
          v26 = -v26;
        }

        v27 = (*a1 - v25);
        if (v27 < 0)
        {
          v27 = -v27;
        }

        if (v26 >= v27)
        {
          return 1;
        }
      }

      else if (v7 <= v8)
      {
        return 1;
      }

      v28 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v28;
      return 1;
    }
  }

  v9 = (a1 + 4);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a1 + 4, a3);
  v10 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v10[1];
    v14 = *(v9 + 4);
    if (vabds_f32(v13, v14) <= 10.0)
    {
      break;
    }

    if (v13 > v14)
    {
      goto LABEL_22;
    }

LABEL_34:
    v9 = v10;
    v11 += 8;
    v10 += 2;
    if (v10 == a2)
    {
      return 1;
    }
  }

  v15 = **a3;
  v16 = (*v10 - v15);
  if (v16 < 0)
  {
    v16 = -v16;
  }

  v17 = (*v9 - v15);
  if (v17 < 0)
  {
    v17 = -v17;
  }

  if (v16 >= v17)
  {
    goto LABEL_34;
  }

LABEL_22:
  v18 = *v10;
  *v10 = *v9;
  v19 = v11;
  do
  {
    v20 = a1 + v19;
    v21 = *(a1 + v19 + 12);
    if (vabds_f32(v13, v21) <= 10.0)
    {
      v22 = **a3;
      v23 = (v18 - v22);
      if (v23 < 0)
      {
        v23 = -v23;
      }

      v24 = (v20[8] - v22);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      if (v23 >= v24)
      {
        goto LABEL_33;
      }
    }

    else if (v21 >= v13)
    {
      v9 = a1 + v19 + 16;
      goto LABEL_33;
    }

    v9 -= 8;
    *(v20 + 2) = *(v20 + 1);
    v19 -= 8;
  }

  while (v19 != -16);
  v9 = a1;
LABEL_33:
  *v9 = v18;
  *(v9 + 4) = v13;
  if (++v12 != 8)
  {
    goto LABEL_34;
  }

  return v10 + 2 == a2;
}

unsigned __int8 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,0>(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, _WORD *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (v5 >= v6)
  {
    if (v7 < v5)
    {
      v9 = a2[1];
      *a2 = *a3;
      *a3 = v5 | (v9 << 8);
      v10 = *result;
      v7 = v5;
      if (*a2 < v10)
      {
        v11 = result[1];
        *result = *a2;
        *a2 = v10 | (v11 << 8);
        v7 = *a3;
      }
    }
  }

  else
  {
    v8 = v6 | (result[1] << 8);
    if (v7 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v8;
      v7 = v6;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v7 = *a3;
    if (v7 < v6)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v7)
  {
    v12 = a3[1];
    *a3 = *a4;
    *a4 = v7 | (v12 << 8);
    v13 = *a2;
    if (*a3 < v13)
    {
      v14 = a2[1];
      *a2 = *a3;
      *a3 = v13 | (v14 << 8);
      v15 = *result;
      if (*a2 < v15)
      {
        v16 = result[1];
        *result = *a2;
        *a2 = v15 | (v16 << 8);
      }
    }
  }

  v17 = *a4;
  if (*a5 < v17)
  {
    v18 = a4[1];
    *a4 = *a5;
    *a5 = v17 | (v18 << 8);
    v19 = *a3;
    if (*a4 < v19)
    {
      v20 = a3[1];
      *a3 = *a4;
      *a4 = v19 | (v20 << 8);
      v21 = *a2;
      if (*a3 < v21)
      {
        v22 = a2[1];
        *a2 = *a3;
        *a3 = v21 | (v22 << 8);
        v23 = *result;
        if (*a2 < v23)
        {
          v24 = result[1];
          *result = *a2;
          *a2 = v23 | (v24 << 8);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a2 - a1) >> 1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 < v7)
      {
        v5 = v7 | (a1[1] << 8);
        if (v8 < v6)
        {
          *a1 = *(a2 - 1);
          goto LABEL_31;
        }

        *a1 = *(a1 + 1);
        *(a1 + 1) = v5;
        if (*(a2 - 2) < v7)
        {
          *(a1 + 1) = *(a2 - 1);
          goto LABEL_31;
        }

        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v18 = a1[3];
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v6 | (v18 << 8);
      v19 = *a1;
      if (a1[2] >= v19)
      {
        return 1;
      }

      v20 = a1[1];
      *a1 = *(a1 + 1);
      v21 = v19 | (v20 << 8);
LABEL_53:
      *(a1 + 1) = v21;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 1);
        return 1;
      }

      goto LABEL_13;
    }

    v14 = a1[2];
    v15 = *a1;
    v16 = a1[4];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v25 = *(a1 + 2);
        v26 = a1[3];
        *(a1 + 1) = v25;
        *(a1 + 2) = v14 | (v26 << 8);
        if (v15 > v25)
        {
          v27 = a1[1];
          *a1 = v25;
          *(a1 + 1) = v15 | (v27 << 8);
        }

        v16 = v14;
      }

      goto LABEL_49;
    }

    v17 = v15 | (a1[1] << 8);
    if (v16 >= v14)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v17;
      if (v16 >= v15)
      {
        goto LABEL_49;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v17;
    v16 = v15;
LABEL_49:
    if (*(a2 - 2) >= v16)
    {
      return 1;
    }

    v36 = a1[5];
    *(a1 + 2) = *(a2 - 1);
    *(a2 - 1) = v16 | (v36 << 8);
    v37 = a1[2];
    if (a1[4] >= v37)
    {
      return 1;
    }

    v38 = *(a1 + 2);
    v39 = a1[3];
    *(a1 + 1) = v38;
    *(a1 + 2) = v37 | (v39 << 8);
    v40 = *a1;
    if (v40 <= v38)
    {
      return 1;
    }

    v41 = a1[1];
    *a1 = v38;
    v21 = v40 | (v41 << 8);
    goto LABEL_53;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if (*(a2 - 2) < v3)
    {
      v4 = a1[1];
      *a1 = *(a2 - 1);
      v5 = v3 | (v4 << 8);
LABEL_31:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 4;
  v10 = a1[4];
  v11 = a1[2];
  v12 = *a1;
  if (v11 >= v12)
  {
    if (v10 < v11)
    {
      v22 = *(a1 + 2);
      v23 = a1[3];
      *(a1 + 1) = v22;
      *(a1 + 2) = v11 | (v23 << 8);
      if (v12 > v22)
      {
        v24 = a1[1];
        *a1 = v22;
        *(a1 + 1) = v12 | (v24 << 8);
      }
    }
  }

  else
  {
    v13 = v12 | (a1[1] << 8);
    if (v10 >= v11)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v13;
      if (v10 >= v12)
      {
        goto LABEL_35;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v13;
  }

LABEL_35:
  v28 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    if (v31 < *v9)
    {
      v32 = v28[1];
      v33 = v29;
      while (1)
      {
        *&a1[v33 + 6] = *&a1[v33 + 4];
        if (v33 == -4)
        {
          break;
        }

        v34 = a1[v33 + 2];
        v33 -= 2;
        if (v31 >= v34)
        {
          v35 = &a1[v33 + 6];
          goto LABEL_43;
        }
      }

      v35 = a1;
LABEL_43:
      *v35 = v31 | (v32 << 8);
      if (++v30 == 8)
      {
        return v28 + 2 == a2;
      }
    }

    v9 = v28;
    v29 += 2;
    v28 += 2;
    if (v28 == a2)
    {
      return 1;
    }
  }
}

void *geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A45FC0;
  a1[1] = v3;
  return a1;
}

void geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A45FC0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A45FC0;

  return a1;
}

void md::LabelTransitRouteLine::generateTransitShieldFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.2S, #-1.0 }

  v8 = *(a1 + 32);
  v9 = v8;
  if (v8)
  {
    [v8 sections];
    v11 = v32[0];
    v10 = v32[1];
    *&v34 = v32;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
    if (v10 != v11)
    {
      v12 = 0;
      v13 = (v10 - v11) >> 3;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v25 = v13;
      do
      {
        [v9 sections];
        v28 = v12;
        v14 = *(v32[0] + v12);
        if (v14)
        {
          v15 = v14 + 8;
        }

        else
        {
          v15 = 0;
        }

        *&v34 = v32;
        std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
        WeakRetained = objc_loadWeakRetained((v15 + 200));
        v29 = [WeakRetained composedRouteSegment];
        if ([v29 type] == 6)
        {
          v30 = v29;
          [WeakRetained composedRouteStep];
          objc_claimAutoreleasedReturnValue();
          v16 = *(a1 + 8);
          v27 = [v16 stepAtIndex:{objc_msgSend(WeakRetained, "finalStepIndex")}];

          v26 = [v30 boardStep];
          v17 = [v27 transitLine];
          if ([v30 rideOptionsCount] >= 2)
          {
            v18 = [v26 transitLine];
            v19 = [v18 muid];
            v20 = [v27 transitLine];
            v21 = v19 == [v20 muid];

            if (v21)
            {
              [v26 transitLine];
              objc_claimAutoreleasedReturnValue();
            }
          }

          _ZNSt3__115allocate_sharedB8nn200100IN2md24LabelExternalRoadFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        ++v12;
      }

      while (v28 + 1 != v25);
    }
  }

  else
  {
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    *&v34 = v32;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
  }
}

void sub_1B2E0AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, void *a49, uint64_t a50)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a48);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::LabelExternalRoadFeature>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t md::LabelExternalRoadFeature::addSectionInfo(void *a1, uint64_t a2)
{
  v5 = a1[27];
  v4 = a1[28];
  if (v5 >= v4)
  {
    v9 = a1[26];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 5);
    if (v10 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 5);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x155555555555555)
    {
      v13 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v32 = a1 + 29;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(a1);
      v15 = pthread_rwlock_rdlock((v14 + 32));
      if (v15)
      {
        geo::read_write_lock::logFailure(v15, "read lock", v16);
      }

      v17 = malloc_type_zone_malloc(*v14, 96 * v13, 0x10A004018E2EA89uLL);
      atomic_fetch_add((v14 + 24), 1u);
      geo::read_write_lock::unlock((v14 + 32));
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[96 * v10];
    v29 = v17;
    v30 = v18;
    *&v31 = v18;
    *(&v31 + 1) = &v17[96 * v13];
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](v18, a2);
    std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::vector[abi:nn200100](v18 + 32, a2 + 32);
    v19 = *(a2 + 80);
    *(v18 + 64) = *(a2 + 64);
    *(v18 + 80) = v19;
    *&v31 = v31 + 96;
    v20 = a1[26];
    v21 = a1[27];
    v22 = v30 + v20 - v21;
    if (v20 != v21)
    {
      v23 = a1[26];
      v24 = v30 + v20 - v21;
      do
      {
        *v24 = 0;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = *(v23 + 24);
        *v24 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v23 = 0;
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
        *(v24 + 32) = 0;
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
        *(v24 + 56) = *(v23 + 56);
        *(v24 + 32) = *(v23 + 32);
        *(v24 + 48) = *(v23 + 48);
        *(v23 + 32) = 0;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        v25 = *(v23 + 80);
        *(v24 + 64) = *(v23 + 64);
        *(v24 + 80) = v25;
        v23 += 96;
        v24 += 96;
      }

      while (v23 != v21);
      do
      {
        std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v20 + 32));
        std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v20);
        v20 += 96;
      }

      while (v20 != v21);
    }

    v26 = a1[26];
    a1[26] = v22;
    v27 = a1[28];
    v28 = v31;
    *(a1 + 27) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    result = std::__split_buffer<md::LabelExternalRoadFeature::SectionInfo,geo::allocator_adapter<md::LabelExternalRoadFeature::SectionInfo,mdm::zone_mallocator> &>::~__split_buffer(&v29);
    v8 = v28;
  }

  else
  {
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](a1[27], a2);
    result = std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::vector[abi:nn200100](v5 + 32, a2 + 32);
    v7 = *(a2 + 80);
    *(v5 + 64) = *(a2 + 64);
    *(v5 + 80) = v7;
    v8 = v5 + 96;
    a1[27] = v5 + 96;
  }

  a1[27] = v8;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(v5, v4);
  }

  return a1;
}

uint64_t std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a1, (v4 - *a2) >> 3);
    v5 = *(a1 + 8);
    do
    {
      v6 = *v3++;
      *v5++ = v6;
    }

    while (v3 != v4);
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v5 >> 2) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = mdm::zone_mallocator::instance(a1);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v6, v5 >> 2);
    *a1 = v7;
    *(a1 + 8) = v7;
    v8 = &v7[v5];
    *(a1 + 16) = &v7[v5];
    memmove(v7, v4, v5);
    *(a1 + 8) = v8;
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelExternalRoadFeature::SectionInfo,geo::allocator_adapter<md::LabelExternalRoadFeature::SectionInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    v4 = (i - 96);
    *(a1 + 2) = i - 96;
    std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((i - 64));
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalRoadFeature::SectionInfo>(v6, v5);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalRoadFeature::SectionInfo>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::LabelExternalRoadFeature::~LabelExternalRoadFeature(md::LabelExternalRoadFeature *this)
{
  md::LabelExternalRoadFeature::~LabelExternalRoadFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A46148;
  if (*(this + 295) < 0)
  {
    v2 = *(this + 34);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(this + 263) < 0)
  {
    v4 = *(this + 30);
    v5 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(this + 26);
  if (v6)
  {
    v7 = *(this + 27);
    v8 = *(this + 26);
    if (v7 != v6)
    {
      do
      {
        v9 = (v7 - 96);
        std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v7 - 64));
        std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v9);
        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(this + 26);
    }

    *(this + 27) = v6;
    v10 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalRoadFeature::SectionInfo>(v10, v8);
  }

  v11 = (this + 184);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v11);

  md::LabelExternalFeature::~LabelExternalFeature(this);
}

void std::__shared_ptr_emplace<md::LabelExternalRoadFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 8);
      if (v4 != -1)
      {
        result = (off_1F2A030E0[v4])(&v5, v3 - 40);
      }

      *(v3 - 8) = -1;
      v3 -= 48;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F2A030E0[v3])(&v6, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  return (off_1F2A031D0[v4])(&v5, result, a2);
}

uint64_t std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__construct_at_end<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>*,std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>*>(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  v3 = result;
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = a2;
    v6 = *(result + 8);
    do
    {
      *v6 = *v5;
      result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v6 + 8), (v5 + 8));
      v5 += 48;
      v6 += 48;
    }

    while (v5 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A03158[v3])(&v5);
    *(a1 + 32) = v3;
  }

  return a1;
}

void sub_1B2E0C33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 32);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&a12, v12);
  }

  *(v12 + 32) = -1;
  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm14EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm13EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  result = MEMORY[0x1B8C62DA0](*(a2 + 3));
  *(v2 + 24) = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm14ELm14EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 14)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 14;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm13ELm13EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 13)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 13;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12ELm12EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 12)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 12;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11ELm11EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 11)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 11;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10ELm10EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 10)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 10;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9ELm9EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 9)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 9;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8ELm8EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 8)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 8;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7ELm7EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 7)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 7;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6ELm6EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 6)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 6;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 5)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 5;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 4;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 != -1)
  {
    if (v5 == 3)
    {
      result = *a3;
      v7 = *(a3 + 16);
      *a2 = *a3;
      a2[1] = v7;
      return result;
    }

    (off_1F2A030E0[v5])(&v9, v4);
  }

  *(v4 + 32) = -1;
  result = *a3;
  v8 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v8;
  *(v4 + 32) = 3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_i32[0];
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    (off_1F2A030E0[v5])(&v11, v4);
LABEL_7:
    *(v4 + 32) = -1;
    v10 = *a3;
    *(v4 + 16) = *(a3 + 2);
    *v4 = v10;
    *(v4 + 24) = MEMORY[0x1B8C62DA0](*(a3 + 3));
    *(v4 + 32) = 0;
    return;
  }

  v7 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v7;
  v8 = MEMORY[0x1B8C62DA0](*(a3 + 3));
  v9 = *(a2 + 24);
  *(a2 + 24) = v8;
}

void sub_1B2E0D240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2E0D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A03248[v3])(&v5);
    *(a1 + 32) = v3;
  }

  return a1;
}

void sub_1B2E0D584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 32);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&a12, v12);
  }

  *(v12 + 32) = -1;
  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](uint64_t *a1, _BYTE *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 4);
    v7 = v6 + 1;
    if (v6 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>>(v9);
    }

    *(48 * v6) = *a2;
    v5 = 48 * v6 + 48;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](48 * v6 + 8, (a2 + 8));
    v11 = *a1;
    v10 = a1[1];
    v12 = 48 * v6 - &v10[-*a1];
    if (v10 != *a1)
    {
      v13 = 48 * v6 - 16 * (&v10[-*a1] >> 4) + 8;
      v14 = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 48;
        *(v13 - 8) = v16;
        v13 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v13, (v14 + 8)) + 48;
        v14 = v15;
      }

      while (v15 != v10);
      do
      {
        v17 = *(v11 + 10);
        if (v17 != -1)
        {
          (off_1F2A030E0[v17])(&v19, v11 + 8);
        }

        *(v11 + 10) = -1;
        v11 += 48;
      }

      while (v11 != v10);
    }

    v18 = *a1;
    *a1 = v12;
    *(a1 + 1) = 48 * v6 + 48;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 48);
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100]((v4 + 8), (a2 + 8));
  }

  a1[1] = v5;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  v4 = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  v2[1].n128_u64[1] = v4;
  return result;
}

void sub_1B2E0D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0EB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v22 - 81, v21 + 8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v22 - 81, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void *a28, id a29)
{
  a28 = &unk_1F2A44148;

  a23 = &a25;
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&a23);
  a25 = &a18;
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A44148;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A44148;

  return a1;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A2FF00;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A2FF20;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v4 & 0x3F);
      *(v5 + 24) = &unk_1F2A44148;

      v11 = v5;
      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&v11);
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A2FF00;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(a1);
}

void sub_1B2E11444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E11ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

double geo::Mercator3<double>::toGeocentric<double>(double *a1, double *a2)
{
  v4 = *a1 * 6.28318531;
  v5 = exp(a1[1] * 6.28318531 + -3.14159265);
  v6 = atan(v5) * 2.0 + -1.57079633;
  v7 = fmod(v4, 6.28318531);
  v8 = fmod(v7 + 6.28318531, 6.28318531) + -3.14159265;
  v9 = a1[2];
  v10 = __sincos_stret(v6);
  v11 = 6378137.0 / sqrt(v10.__sinval * v10.__sinval * -0.00669437999 + 1.0);
  v12 = (v11 + v9) * v10.__cosval;
  v13 = __sincos_stret(v8);
  *a2 = v12 * v13.__cosval;
  a2[1] = v12 * v13.__sinval;
  result = (v9 + v11 * 0.99330562) * v10.__sinval;
  a2[2] = result;
  return result;
}

void md::FlyoverMetaTileData::~FlyoverMetaTileData(md::FlyoverMetaTileData *this)
{
  md::FlyoverMetaTileData::~FlyoverMetaTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A032D0;
  *(this + 80) = &unk_1F2A03310;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

void md::SingleGEOResourceDataRequester::createDebugNode(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (*(*v4 + 24))(v4, *(a1 + 24));
    if (v6)
    {
      v7 = v5;
      std::string::basic_string[abi:nn200100]<0>(&v31, "Download Range");
      gdc::DebugTreeValue::DebugTreeValue(&v32, v7);
      gdc::DebugTreeValue::DebugTreeValue(&v34, HIDWORD(v7));
      memset(v30, 0, sizeof(v30));
      std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v30, &v32, &v35, 2uLL);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Download Range");
  gdc::DebugTreeValue::DebugTreeValue(v27, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 32) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_34;
    }

    gdc::DebugTreeValue::DebugTreeValue(v24, *(a1 + 28));
    gdc::DebugTreeNode::addProperty(a2, &v32, v24);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v25;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    gdc::DebugTreeValue::DebugTreeValue(v21, "None");
    gdc::DebugTreeNode::addProperty(a2, &v32, v21);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v22;
  }

  operator delete(v8);
LABEL_15:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 40) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
    if (*(a1 + 40))
    {
      gdc::DebugTreeValue::DebugTreeValue(v18, *(a1 + 36));
      gdc::DebugTreeNode::addProperty(a2, &v32, v18);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v9 = v19;
      goto LABEL_23;
    }

LABEL_34:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
  gdc::DebugTreeValue::DebugTreeValue(v15, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v15);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v9 = v16;
LABEL_23:
  operator delete(v9);
LABEL_24:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "gdc::ResourceType");
  v10 = *(a1 + 24);
  if (v10 > 0x35)
  {
    v11 = "<Invalid>";
  }

  else
  {
    v11 = off_1E7B3C1A8[v10];
  }

  gdc::DebugTreeValue::DebugTreeValue(v12, v11);
  gdc::DebugTreeNode::addProperty(a2, &v32, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }
}

void sub_1B2E12618(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    if (*(v2 + v5 + 119) < 0)
    {
      operator delete(*(v2 + v5 + 96));
    }

    v5 -= 64;
    if (v5 == -128)
    {
      if (*(v3 - 193) < 0)
      {
        operator delete(*(v3 - 216));
      }

      *(v3 - 184) = v1 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      *(v3 - 184) = v1 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      if (*(v1 + 47) < 0)
      {
        operator delete(*(v1 + 24));
      }

      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      _Unwind_Resume(a1);
    }
  }
}

void std::function<BOOL ()(geo::QuadTile const&)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    md::SingleGEOResourceDataRequester::~SingleGEOResourceDataRequester(v3);
  }
}

void md::SingleGEOResourceDataRequester::~SingleGEOResourceDataRequester(md::SingleGEOResourceDataRequester *this)
{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

uint64_t md::MultiRectRegion::contains(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(a2 + 8 * v2);
    if (v4 < *&a1[v2 + 3] || v4 >= *&a1[v2 + 5])
    {
      return 0;
    }

    v5 = v3;
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 == v6)
  {
    return 0;
  }

  do
  {
    v9 = 0;
    for (i = 1; ; i = 0)
    {
      v11 = *(a2 + 8 * v9);
      if (v11 < *&v7[v9 + 4] || v11 >= *&v7[v9 + 6])
      {
        break;
      }

      v12 = i;
      v9 = 1;
      if ((v12 & 1) == 0)
      {
        return v9;
      }
    }

    v13 = v7[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v7[2];
        v15 = *v14 == v7;
        v7 = v14;
      }

      while (!v15);
    }

    v9 = 0;
    v7 = v14;
  }

  while (v14 != v6);
  return v9;
}

void ggl::LandmarkFlat::LandmarkPipelineSetup::~LandmarkPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **updateFeatureFlag(int a1, void *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v6 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Updating FeatureFlag:%d - %d", buf, 0xEu);
  }

  v8 = 0;
  *buf = &v8;
  result = std::__hash_table<std::__hash_value_type<md::FeatureFlag,BOOL>,std::__unordered_map_hasher<md::FeatureFlag,std::__hash_value_type<md::FeatureFlag,BOOL>,std::hash<md::FeatureFlag>,std::equal_to<md::FeatureFlag>,true>,std::__unordered_map_equal<md::FeatureFlag,std::__hash_value_type<md::FeatureFlag,BOOL>,std::equal_to<md::FeatureFlag>,std::hash<md::FeatureFlag>,true>,std::allocator<std::__hash_value_type<md::FeatureFlag,BOOL>>>::__emplace_unique_key_args<md::FeatureFlag,std::piecewise_construct_t const&,std::tuple<md::FeatureFlag&&>,std::tuple<>>(a2, 0);
  *(result + 17) = a3;
  return result;
}

uint64_t **___ZN2md19FeatureFlagProviderC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  **(v4 + 40) = 1;
  return updateFeatureFlag(0, *(v4 + 56), a4);
}

uint64_t **___ZN2md19FeatureFlagProviderC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  **(v4 + 40) = 1;
  return updateFeatureFlag(1, *(v4 + 56), a4);
}

uint64_t **___ZN2md19FeatureFlagProviderC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  **(v4 + 40) = 1;
  return updateFeatureFlag(2, *(v4 + 56), a4);
}

void std::__shared_ptr_emplace<std::unordered_map<md::FeatureFlag,BOOL>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<std::unordered_map<md::FeatureFlag,BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A033B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FeatureFlagProvider::~FeatureFlagProvider(md::FeatureFlagProvider *this)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v2 = (this + 16);
  while (v3 != v4)
  {
    v5 = *v3;
    MapsFeature_RemoveBlockListener();

    ++v3;
  }

  v6 = *(this + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v9 = v2;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v9);
  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1B2E12C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  v6 = v2[8];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v2[6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](va);
  v8 = v2[1];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Unwind_Resume(a1);
}

void md::LabelAnimator::setupAnimations(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*a3 + 184))(a3);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((a1 + 24), 0x8E38E38E38E38E39 * ((*(a1 + 32) - *(a1 + 24)) >> 4) + 1);
  a3[563] = 57 * ((*(a1 + 32) - *(a1 + 24)) >> 4) - 1;
  md::LabelAnimator::createLoopingTrack(a1);
}

uint64_t md::LabelAnimator::setupBalloonAnimation(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v4 = a2 != 1;
  if (a2 == 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (a2 == 1)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v9 = result;
    v10 = *(v6 + 16);
    result = (*(*v7 + 232))(v7);
    if (result == 7)
    {
      (*(*v7 + 200))(v14, v7);
      v13 = *v14[0];
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
      (*(*v7 + 200))(v14, v7);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
      (*(*v7 + 200))(v14, v7);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
      (*(*v7 + 200))(v14, v7);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
      LODWORD(v14[0]) = 0;
      if (v10)
      {
        md::LabelAnimator::resolveParams(v9, v4, 0xAu, 0, 0);
        md::LabelAnimator::createMorphAnimation(v9, v10, v13, v4, v11);
      }

      md::LabelAnimator::resolveParams(v9, a2, 0xBu, 0, 3);
      md::LabelAnimator::createMorphAnimation(v9, v13, 0, a2, v12);
    }
  }

  return result;
}

void md::LabelAnimator::setupIconMorphAnimation(md::LabelAnimator *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a2 & 1) != 0 && (a4)
  {
    (*(*a3 + 200))(&v14, a3);
    if (v14 == *(&v14 + 1))
    {
      (*(*a5 + 200))(v19, a5);
      v10 = v19[0];
      v11 = v19[1];
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v19);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
      if (v10 == v11)
      {
        v12 = md::LabelAnimator::resolveParams(a1, 0, 4u, 0, 0);
        v15 = v12[1];
        v16 = v12[2];
        v17 = v12[3];
        if ((a6 & 0x100000000) != 0)
        {
          v13 = *v12;
          v14 = *v12;
          LODWORD(v15) = a6;
          LODWORD(v16) = a6;
          LODWORD(v17) = a6;
          v18 = a6;
        }

        else
        {
          v18 = *(v12 + 16);
          v13 = *v12;
          v14 = *v12;
        }

        md::LabelAnimator::createMorphAnimation(a1, a3, a5, 0, v13);
      }
    }

    else
    {
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
    }
  }
}

md::LabelAnimator *md::LabelAnimator::setupMKBalloonPickAnimations(md::LabelAnimator *this, int a2, const md::LabelPartContent *a3, const md::LabelPartContent *a4)
{
  if (a2)
  {
    if (*(a3 + 2))
    {
LABEL_5:
      md::LabelAnimator::createTrack(this);
    }
  }

  else if (*(a4 + 2))
  {
    goto LABEL_5;
  }

  return this;
}

void md::LabelAnimator::setupTextMorphAnimation(md::LabelAnimator *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!(a2 | a3))
  {
    return;
  }

  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = a3 != 0;
  (*(*a2 + 200))(&v28, a2);
  v13 = v28;
  v14 = v29;
  if (v28 == v29 && v12)
  {
LABEL_11:
    (*(*a3 + 200))(&v23, a3);
    v17 = v23;
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v23);
    if (a2)
    {
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v28);
      if (v17 == *(&v17 + 1))
      {
        goto LABEL_13;
      }
    }

    else if (v17 == *(&v17 + 1))
    {
      v21 = md::LabelAnimator::resolveParams(a1, 1, 1u, 0, 1);
      v24 = v21[1];
      v25 = v21[2];
      v26 = v21[3];
      if ((a6 & 0x100000000) != 0)
      {
        v22 = *v21;
        v23 = *v21;
        LODWORD(v24) = a6;
        LODWORD(v25) = a6;
        LODWORD(v26) = a6;
        v27 = a6;
      }

      else
      {
        v27 = *(v21 + 16);
        v22 = *v21;
        v23 = *v21;
      }

      md::LabelAnimator::createMorphAnimation(a1, a3, 0, 1, v22);
    }

    return;
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v28);
  if (v13 == v14)
  {
    if (!a3)
    {
      v16 = 1;
      goto LABEL_19;
    }

LABEL_13:
    if (a5 == 1)
    {
      v18 = 5;
    }

    else
    {
      v18 = 4;
    }

    if (a4 == 1)
    {
      v16 = v18;
    }

    else
    {
      v16 = 3;
    }

LABEL_19:
    v19 = md::LabelAnimator::resolveParams(a1, 0, v16, 0, 1);
    v24 = v19[1];
    v25 = v19[2];
    v26 = v19[3];
    if ((a6 & 0x100000000) != 0)
    {
      v20 = *v19;
      v23 = *v19;
      LODWORD(v24) = a6;
      LODWORD(v25) = a6;
      LODWORD(v26) = a6;
      v27 = a6;
    }

    else
    {
      v27 = *(v19 + 16);
      v20 = *v19;
      v23 = *v19;
    }

    md::LabelAnimator::createMorphAnimation(a1, a2, a3, 0, v20);
  }
}