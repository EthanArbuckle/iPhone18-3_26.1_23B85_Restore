void std::__inplace_merge<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(int *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a7;
    v8 = a5;
    v12 = a1;
    v13 = a1;
    v14 = a1;
    while (a4 > v7 && v8 > v7)
    {
      if (!a4)
      {
        return;
      }

      if ((CRTextRecognition::CRCTLD::CTLDRegion::operator<(a2, v14) & 1) == 0)
      {
        v12 = v14;
        v13 = v14;
        while (--a4)
        {
          v13 += 32;
          v12 += 128;
          v14 = v13;
          if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(a2, v13))
          {
            goto LABEL_10;
          }
        }

        return;
      }

LABEL_10:
      v68 = v8;
      v70 = a3;
      if (a4 >= v8)
      {
        if (a4 == 1)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(v13, a2);
          return;
        }

        v19 = a4 / 2;
        v17 = (v12 + ((a4 / 2) << 7));
        if (a3 == a2)
        {
          v16 = a3;
        }

        else
        {
          v20 = (a3 - a2) >> 7;
          v16 = a2;
          do
          {
            v21 = &v16[32 * (v20 >> 1)];
            v22 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v21, v12 + ((a4 / 2) << 7));
            if (v22)
            {
              v20 += ~(v20 >> 1);
            }

            else
            {
              v20 >>= 1;
            }

            if (v22)
            {
              v16 = (v21 + 128);
            }
          }

          while (v20);
          v19 = a4 / 2;
        }

        v15 = (v16 - a2) >> 7;
        v14 = v12;
      }

      else
      {
        v15 = v8 / 2;
        v16 = (a2 + ((v8 / 2) << 7));
        v17 = a2;
        if (a2 != v14)
        {
          v18 = (a2 - v14) >> 7;
          do
          {
            if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v16, v14 + (v18 >> 1 << 7)))
            {
              v18 >>= 1;
            }

            else
            {
              v14 += (v18 >> 1 << 7) + 128;
              v18 += ~(v18 >> 1);
            }
          }

          while (v18);
          v17 = v14;
        }

        v19 = (v17 - v13) >> 7;
        v12 = v13;
        v14 = v13;
      }

      a3 = v16;
      if (v17 != a2)
      {
        a3 = v17;
        if (v16 != a2)
        {
          a3 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(v17, a2, v16);
        }
      }

      a4 -= v19;
      if (v19 + v15 >= a4 + v68 - v15)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(a3, v16, v70, a4, v68 - v15, a6, a7);
        v16 = v17;
        v8 = v15;
        a4 = v19;
        v7 = a7;
      }

      else
      {
        v23 = v19;
        v7 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::less<void> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(v13, v17, a3, v23, v15, a6, a7);
        v13 = a3;
        v14 = a3;
        v12 = a3;
        a3 = v70;
        v8 = v68 - v15;
      }

      a2 = v16;
      if (!v8)
      {
        return;
      }
    }

    v24 = a6;
    v71[0] = a6;
    v71[1] = &v72;
    v72 = 0;
    if (a4 <= v8)
    {
      if (a2 != v14)
      {
        v45 = a3;
        v46 = 0;
        v47 = a6;
        v48 = v14;
        do
        {
          *v47 = *v48;
          v49 = *(v48 + 8);
          *(v48 + 8) = 0;
          *(v47 + 8) = v49;
          v50 = *(v48 + 32);
          *(v47 + 16) = *(v48 + 16);
          *(v47 + 32) = v50;
          v51 = *(v48 + 48);
          v52 = *(v48 + 64);
          v53 = *(v48 + 80);
          *(v47 + 96) = *(v48 + 96);
          *(v47 + 64) = v52;
          *(v47 + 80) = v53;
          *(v47 + 48) = v51;
          *(v47 + 112) = 0;
          *(v47 + 120) = 0;
          *(v47 + 104) = 0;
          *(v47 + 104) = *(v48 + 104);
          *(v47 + 120) = *(v48 + 120);
          *(v48 + 104) = 0;
          *(v48 + 112) = 0;
          *(v48 + 120) = 0;
          ++v46;
          v48 += 128;
          v47 += 128;
        }

        while (v48 != a2);
        v72 = v46;
        while (a2 != v45)
        {
          if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(a2, v24))
          {
            *v14 = *a2;
            v54 = *(a2 + 8);
            *(a2 + 8) = 0;
            v55 = *(v14 + 8);
            *(v14 + 8) = v54;

            v56 = *(a2 + 32);
            *(v14 + 16) = *(a2 + 16);
            *(v14 + 32) = v56;
            v57 = *(a2 + 48);
            v58 = *(a2 + 64);
            v59 = *(a2 + 80);
            *(v14 + 96) = *(a2 + 96);
            *(v14 + 64) = v58;
            *(v14 + 80) = v59;
            *(v14 + 48) = v57;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v14 + 104));
            *(v14 + 104) = *(a2 + 104);
            *(v14 + 120) = *(a2 + 120);
            *(a2 + 104) = 0;
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            a2 += 128;
          }

          else
          {
            *v14 = *v24;
            v60 = *(v24 + 8);
            *(v24 + 8) = 0;
            v61 = *(v14 + 8);
            *(v14 + 8) = v60;

            v62 = *(v24 + 32);
            *(v14 + 16) = *(v24 + 16);
            *(v14 + 32) = v62;
            v63 = *(v24 + 48);
            v64 = *(v24 + 64);
            v65 = *(v24 + 80);
            *(v14 + 96) = *(v24 + 96);
            *(v14 + 64) = v64;
            *(v14 + 80) = v65;
            *(v14 + 48) = v63;
            std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v14 + 104));
            *(v14 + 104) = *(v24 + 104);
            *(v14 + 120) = *(v24 + 120);
            *(v24 + 104) = 0;
            *(v24 + 112) = 0;
            *(v24 + 120) = 0;
            v24 += 128;
          }

          v14 += 128;
          if (v47 == v24)
          {
            goto LABEL_68;
          }
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *,CRTextRecognition::CRCTLD::CTLDRegion *>(v24, v47, v14);
      }
    }

    else if (a2 != a3)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = a6 + v25;
        v28 = (a2 + v25);
        *v27 = *(a2 + v25);
        v29 = *(a2 + v25 + 8);
        v28[1] = 0;
        *(v27 + 8) = v29;
        v30 = *(a2 + v25 + 32);
        *(v27 + 16) = *(a2 + v25 + 16);
        *(v27 + 32) = v30;
        v31 = *(a2 + v25 + 48);
        v32 = *(a2 + v25 + 64);
        v33 = *(a2 + v25 + 80);
        *(v27 + 96) = *(a2 + v25 + 96);
        *(v27 + 64) = v32;
        *(v27 + 80) = v33;
        *(v27 + 48) = v31;
        *(v27 + 112) = 0;
        *(v27 + 120) = 0;
        *(v27 + 104) = 0;
        *(v27 + 104) = *(a2 + v25 + 104);
        *(v27 + 120) = *(a2 + v25 + 120);
        v28[13] = 0;
        v28[14] = 0;
        v28[15] = 0;
        ++v26;
        v25 += 128;
      }

      while (v28 + 16 != a3);
      v34 = 0;
      v72 = v26;
      v35 = a6 + v25;
      v69 = a6 + v25;
      while (a2 != v14)
      {
        v36 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v35 - 128, a2 - 128);
        v37 = &a3[v34];
        if (v36)
        {
          v38 = a2;
        }

        else
        {
          v38 = v35;
        }

        if (v36)
        {
          a2 -= 128;
        }

        else
        {
          v35 -= 128;
        }

        *(v37 - 32) = *(v38 - 128);
        v39 = *(v38 - 120);
        *(v38 - 120) = 0;
        v40 = *(v37 - 15);
        *(v37 - 15) = v39;

        v41 = *(v38 - 96);
        *(v37 - 7) = *(v38 - 112);
        *(v37 - 6) = v41;
        v42 = *(v38 - 80);
        v43 = *(v38 - 64);
        v44 = *(v38 - 48);
        *(v37 - 8) = *(v38 - 32);
        *(v37 - 4) = v43;
        *(v37 - 3) = v44;
        *(v37 - 5) = v42;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate(&a3[v34 - 6]);
        *(v37 - 6) = *(v38 - 24);
        *(v37 - 1) = *(v38 - 8);
        v24 = a6;
        *(v38 - 24) = 0;
        *(v38 - 16) = 0;
        *(v38 - 8) = 0;
        v34 -= 32;
        if (v35 == a6)
        {
          goto LABEL_68;
        }
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion *>,std::reverse_iterator<CRTextRecognition::CRCTLD::CTLDRegion *>,std::reverse_iterator<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>>(v73, v69, v35, v24, v24, a3, &a3[v34]);
    }

LABEL_68:
    std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](v71);
  }
}

int *std::__stable_partition_impl<std::_ClassicAlgPolicy,void CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>,int)::{lambda(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> const&)#2} &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,long,std::pair<CRTextRecognition::CRCTLD::CTLDRegion *,long>>(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    v10 = (a1 + 128);
    if (!CRTextRecognition::CRCTLD::CTLDRegion::operator<(a1 + 128, *a3))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>((v8 + 128), a2);
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(v8, (v8 + 128));
      return v10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(v8, (v8 + 128));
    a1 = v8 + 128;
    goto LABEL_6;
  }

  if (a4 == 2)
  {
LABEL_6:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> &>(a1, a2);
    return a2;
  }

  v12 = a5;
  if (a6 >= a4)
  {
    v58[0] = a5;
    v58[1] = &v59;
    *a5 = *a1;
    v21 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a5 + 8) = v21;
    v22 = *(a1 + 32);
    *(a5 + 16) = *(a1 + 16);
    *(a5 + 32) = v22;
    v23 = *(a1 + 48);
    v24 = *(a1 + 64);
    v25 = *(a1 + 80);
    *(a5 + 96) = *(a1 + 96);
    *(a5 + 64) = v24;
    *(a5 + 80) = v25;
    *(a5 + 48) = v23;
    *(a5 + 112) = 0;
    *(a5 + 120) = 0;
    *(a5 + 104) = 0;
    *(a5 + 104) = *(a1 + 104);
    *(a5 + 120) = *(a1 + 120);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v59 = 1;
    v26 = a5 + 128;
    v27 = a1 + 128;
    if ((a1 + 128) == a2)
    {
      v41 = a1;
    }

    else
    {
      do
      {
        v28 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v27, *a3);
        v29 = *v27;
        if (v28)
        {
          *v8 = v29;
          v30 = *(v27 + 8);
          *(v27 + 8) = 0;
          v31 = *(v8 + 8);
          *(v8 + 8) = v30;

          v32 = *(v27 + 32);
          *(v8 + 16) = *(v27 + 16);
          *(v8 + 32) = v32;
          v33 = *(v27 + 48);
          v34 = *(v27 + 64);
          v35 = *(v27 + 80);
          *(v8 + 96) = *(v27 + 96);
          *(v8 + 64) = v34;
          *(v8 + 80) = v35;
          *(v8 + 48) = v33;
          std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v8 + 104));
          *(v8 + 104) = *(v27 + 104);
          *(v8 + 120) = *(v27 + 120);
          *(v27 + 104) = 0;
          *(v27 + 112) = 0;
          *(v27 + 120) = 0;
          v8 += 128;
        }

        else
        {
          *v26 = v29;
          v36 = *(v27 + 8);
          *(v27 + 8) = 0;
          *(v26 + 8) = v36;
          v37 = *(v27 + 32);
          *(v26 + 16) = *(v27 + 16);
          *(v26 + 32) = v37;
          v38 = *(v27 + 48);
          v39 = *(v27 + 64);
          v40 = *(v27 + 80);
          *(v26 + 96) = *(v27 + 96);
          *(v26 + 64) = v39;
          *(v26 + 80) = v40;
          *(v26 + 48) = v38;
          *(v26 + 112) = 0;
          *(v26 + 120) = 0;
          *(v26 + 104) = 0;
          *(v26 + 104) = *(v27 + 104);
          *(v26 + 120) = *(v27 + 120);
          *(v27 + 104) = 0;
          *(v27 + 112) = 0;
          *(v27 + 120) = 0;
          ++v59;
          v26 += 128;
        }

        v27 += 128;
      }

      while (v27 != a2);
      v41 = v27 - 128;
    }

    *v8 = *v27;
    v42 = *(v41 + 136);
    *(v41 + 136) = 0;
    v43 = *(v8 + 8);
    *(v8 + 8) = v42;

    v44 = *(v41 + 160);
    *(v8 + 16) = *(v41 + 144);
    *(v8 + 32) = v44;
    v45 = *(v41 + 176);
    v46 = *(v41 + 192);
    v47 = *(v41 + 208);
    *(v8 + 96) = *(v41 + 224);
    *(v8 + 64) = v46;
    *(v8 + 80) = v47;
    *(v8 + 48) = v45;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v8 + 104));
    *(v8 + 104) = *(v41 + 232);
    *(v8 + 120) = *(v41 + 248);
    *(v41 + 232) = 0;
    *(v41 + 240) = 0;
    *(v41 + 248) = 0;
    v10 = (v8 + 128);
    if (v26 > v12)
    {
      v48 = v8 + 128;
      do
      {
        *v48 = *v12;
        v49 = *(v12 + 8);
        *(v12 + 8) = 0;
        v50 = *(v48 + 8);
        *(v48 + 8) = v49;

        v51 = *(v12 + 32);
        *(v48 + 16) = *(v12 + 16);
        *(v48 + 32) = v51;
        v52 = *(v12 + 48);
        v53 = *(v12 + 64);
        v54 = *(v12 + 80);
        *(v48 + 96) = *(v12 + 96);
        *(v48 + 64) = v53;
        *(v48 + 80) = v54;
        *(v48 + 48) = v52;
        std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vdeallocate((v48 + 104));
        *(v48 + 104) = *(v12 + 104);
        *(v48 + 120) = *(v12 + 120);
        *(v12 + 104) = 0;
        *(v12 + 112) = 0;
        *(v12 + 120) = 0;
        v12 += 128;
        v48 += 128;
      }

      while (v12 < v26);
    }

    std::unique_ptr<CRTextRecognition::CRCTLD::CTLDRegion,std::__destruct_n &>::~unique_ptr[abi:ne200100](v58);
  }

  else
  {
    v13 = a4 / 2;
    v14 = *a3;
    v57 = (a1 + ((a4 / 2) << 7));
    v15 = (v57 - 32);
    v56 = a4 / 2;
    if (CRTextRecognition::CRCTLD::CTLDRegion::operator<((v57 - 32), *a3))
    {
LABEL_12:
      v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,void CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>,int)::{lambda(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> const&)#2} &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,long,std::pair<CRTextRecognition::CRCTLD::CTLDRegion *,long>>(v8, v15, a3, v13, v12, a6);
      v14 = *a3;
    }

    else
    {
      v16 = 128 - (v13 << 7);
      while (v16)
      {
        --v13;
        v15 -= 128;
        v16 += 128;
        if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v15, v14))
        {
          goto LABEL_12;
        }
      }
    }

    v17 = v57;
    v18 = a4 - v56;
    if (CRTextRecognition::CRCTLD::CTLDRegion::operator<(v57, v14))
    {
      v10 = a2 + 32;
      v19 = (v57 + 32);
      while (v19 != a2)
      {
        --v18;
        v20 = CRTextRecognition::CRCTLD::CTLDRegion::operator<(v19, v14);
        v17 += 32;
        v19 += 128;
        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v10 = std::__stable_partition_impl<std::_ClassicAlgPolicy,void CRTextRecognition::CRCTLD::order::kwiksort<std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>>(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,std::less<void>,int)::{lambda(std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *> const&)#2} &,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>,long,std::pair<CRTextRecognition::CRCTLD::CTLDRegion *,long>>(v17, a2, a3, v18, v12, a6);
    }

    if (v8 != v57)
    {
      if (v57 == v10)
      {
        return v8;
      }

      else
      {
        return std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CRTextRecognition::CRCTLD::CTLDRegion *>>(v8, v57, v10);
      }
    }
  }

  return v10;
}

void CRTextRecognition::CRCTLD::order::TarjansSCC::~TarjansSCC(CRTextRecognition::CRCTLD::order::TarjansSCC *this)
{
  v5 = (this + 160);
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 136);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 14);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  std::deque<int>::~deque[abi:ne200100](this + 16);
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *(v4 - 3);
        v4 -= 24;
        v6 = v7;
        if (v7)
        {
          operator delete(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<int>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      v5 = *(v4 + 8);
      *(v4 + 8) = 0;
      *(a4 + 8) = v5;
      v6 = *(v4 + 32);
      *(a4 + 16) = *(v4 + 16);
      *(a4 + 32) = v6;
      v7 = *(v4 + 48);
      v8 = *(v4 + 64);
      v9 = *(v4 + 80);
      *(a4 + 96) = *(v4 + 96);
      *(a4 + 64) = v8;
      *(a4 + 80) = v9;
      *(a4 + 48) = v7;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = 0;
      *(a4 + 104) = *(v4 + 104);
      *(a4 + 120) = *(v4 + 120);
      *(v4 + 104) = 0;
      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
      v4 += 128;
      a4 += 128;
    }

    while (v4 != a3);
    v14 = a4;
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = a2;
    do
    {
      v7[0] = (v6 + 104);
      std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](v7);

      v6 += 128;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    v5 = (i - 24);
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<int>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v23 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a1, v7);
  }

  v8 = v2 << 7;
  v20 = 0;
  v21 = v8;
  *(&v22 + 1) = 0;
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v8 + 8) = v9;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  *(v8 + 48) = v11;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 104) = 0;
  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *&v22 = (v2 << 7) + 128;
  v14 = a1[1];
  v15 = (v2 << 7) + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(&v20);
  return v19;
}

void sub_1B41BFC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CGPoint,CGPoint>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion const&,0>(v2 << 7, a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(&v14);
  return v13;
}

void sub_1B41BFEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion const&,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  *(a1 + 104) = 0;
  *(a1 + 32) = v9;
  *(a1 + 16) = v8;
  *(a1 + 96) = v7;
  *(a1 + 80) = v6;
  *(a1 + 64) = v5;
  *(a1 + 48) = v4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 7);
}

uint64_t std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__init_with_size[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion*,CRTextRecognition::CRCTLD::CTLDRegion*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B41BFFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  std::allocator_traits<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>::construct[abi:ne200100]<CRTextRecognition::CRCTLD::CTLDRegion,CRTextRecognition::CRCTLD::CTLDRegion&,0>(v2 << 7, a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(&v14);
  return v13;
}

void sub_1B41C00D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<CRTextRecognition::CRCTLD::CTLDObstacle>::__move_assign(uint64_t a1, __n128 *a2)
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

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = v5 >> 2;
  if (__sz <= v5 >> 2)
  {
    if (__sz < v6)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    v7 = __sz - v6;
    value = this->__end_cap_.__value_;
    if (v7 > value - end)
    {
      if (!(__sz >> 62))
      {
        v9 = value - begin;
        v10 = v9 >> 1;
        if (v9 >> 1 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
      }

      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0;
    v13 = &end[v7];
    v14 = *__x;
    v15 = (4 * __sz - v5 - 4) >> 2;
    v16 = vdupq_n_s64(v15);
    v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v18 = end + 2;
    do
    {
      v19 = vdupq_n_s64(v12);
      v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_1B42AF280)));
      if (vuzp1_s16(v20, 2).u8[0])
      {
        *(v18 - 2) = v14;
      }

      if (vuzp1_s16(v20, 2).i8[2])
      {
        *(v18 - 1) = v14;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_1B42AF270)))).i32[1])
      {
        *v18 = v14;
        v18[1] = v14;
      }

      v12 += 4;
      v18 += 4;
    }

    while (v17 != v12);
    this->__end_ = v13;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 1);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
    do
    {
      if (*v4)
      {
        operator delete(*v4);
      }

      v4 += 3;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<std::vector<BOOL>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 24);
    v2 -= 24;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      operator delete(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (v8)
  {
    v10 = v9 - 1;
    if (((v9 - 1) ^ (v8 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = v9 - 1;
  }

  v11 = v10 >> 6;
  if (v9 >= 0x41)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(*a1 + 8 * v12) = 0;
LABEL_9:
  v16 = v6;
  v17 = v7;
  v13 = *a1 + 8 * (v8 >> 6);
  v14 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v13, v15);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

uint64_t std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<float const&,float const&,float const&,float const&>(void *a1, float *a2, float *a3, float *a4, float *a5)
{
  v5 = (a1[1] - *a1) >> 7;
  v6 = v5 + 1;
  if ((v5 + 1) >> 57)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[2] - *a1;
  if (v9 >> 6 > v6)
  {
    v6 = v9 >> 6;
  }

  if (v9 >= 0x7FFFFFFFFFFFFF80)
  {
    v10 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v6;
  }

  v29 = a1;
  if (v10)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>>(a1, v10);
  }

  v11 = v5 << 7;
  v26 = 0;
  v27 = v11;
  *(&v28 + 1) = 0;
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  *v11 = -1;
  *(v11 + 8) = 0;
  *(v11 + 16) = v14;
  *(v11 + 20) = v15;
  *(v11 + 24) = v12;
  *(v11 + 28) = v13;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0;
  *(v11 + 104) = 0;
  v16 = v12;
  v17 = v14;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  v18 = v13;
  *(v11 + 48) = v18;
  *(v11 + 56) = v17;
  *(v11 + 64) = v16;
  *(v11 + 72) = v15;
  *(v11 + 80) = v18;
  *(v11 + 88) = v15;
  *(v11 + 96) = 0;
  v19 = *a1;
  v20 = a1[1];
  v21 = (v5 << 7) + *a1 - v20;
  *&v28 = (v5 << 7) + 128;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRTextRecognition::CRCTLD::CTLDRegion>,CRTextRecognition::CRCTLD::CTLDRegion*>(a1, v19, v20, v21);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  v25 = v28;
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(&v26);
  return v25;
}

void sub_1B41C0788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CRTextRecognition::CRCTLD::CTLDRegion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (v6)
  {
    v8 = v7 - 1;
    if (((v7 - 1) ^ (v6 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v7 - 1;
  }

  v9 = v8 >> 6;
  if (v7 >= 0x41)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(*a1 + 8 * v10) = 0;
LABEL_9:
  v22 = v4;
  v23 = v5;
  v11 = *(a2 + 8);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *a1 + 8 * (v6 >> 6);
  v20 = *a2;
  v21 = v11;
  v18 = v12;
  v19 = v13;
  v16 = v14;
  v17 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v20, &v18, &v16, &v15);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_1B41C0EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  while (1)
  {
    v29 = *(v27 - 9);
    v27 -= 4;
    if (v29 < 0)
    {
      operator delete(*v27);
    }

    if (v27 == &a21)
    {
      if (a14 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

id CRCastAsClass<CRFormField>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B41C3390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  objc_sync_exit(v37);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,unsigned long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 16);
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v123 = *v9;
          v124 = *(v9 + 16);
          if (*v9 >= v124 && (v124 < v123 || *(v9 + 8) >= *(v9 + 24)))
          {
            v201 = *(a2 - 16);
            if (v124 >= v201)
            {
              if (v201 < v124)
              {
                return result;
              }

              v202 = *(v9 + 24);
              v203 = *(a2 - 8);
              if (v202 >= v203)
              {
                return result;
              }
            }

            else
            {
              v202 = *(v9 + 24);
              v203 = *(a2 - 8);
            }

            *(v9 + 16) = v201;
            *(a2 - 16) = v124;
            *(v9 + 24) = v203;
            *(a2 - 8) = v202;
            v204 = *v9;
            v205 = *(v9 + 16);
            if (*v9 >= v205)
            {
              if (v205 < v204)
              {
                return result;
              }

              v206 = *(v9 + 8);
              v207 = *(v9 + 24);
              if (v206 >= v207)
              {
                return result;
              }
            }

            else
            {
              v206 = *(v9 + 8);
              v207 = *(v9 + 24);
            }

            *v9 = v205;
            *(v9 + 16) = v204;
            *(v9 + 8) = v207;
            *(v9 + 24) = v206;
            return result;
          }

          v125 = *(a2 - 16);
          if (v124 >= v125)
          {
            v215 = *(v9 + 24);
            if (v125 < v124 || (v126 = *(a2 - 8), v215 >= v126))
            {
              *v9 = v124;
              *(v9 + 16) = v123;
              v130 = *(v9 + 8);
              *(v9 + 8) = v215;
              *(v9 + 24) = v130;
              v216 = *(a2 - 16);
              if (v123 >= v216)
              {
                if (v216 < v123)
                {
                  return result;
                }

                v217 = *(a2 - 8);
                if (v130 >= v217)
                {
                  return result;
                }
              }

              else
              {
                v217 = *(a2 - 8);
              }

              *(v9 + 16) = v216;
              *(a2 - 16) = v123;
              *(v9 + 24) = v217;
LABEL_223:
              *(a2 - 8) = v130;
              return result;
            }
          }

          else
          {
            v126 = *(a2 - 8);
          }

          *v9 = v125;
          *(a2 - 16) = v123;
          v127 = *(v9 + 8);
          *(v9 + 8) = v126;
          *(a2 - 8) = v127;
          return result;
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,0>(v9, v9 + 16, v9 + 32, a2 - 16);
        case 5:
          result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,0>(v9, v9 + 16, v9 + 32, v9 + 48);
          v132 = *(v9 + 48);
          v133 = *(a2 - 16);
          if (v132 >= v133)
          {
            if (v133 < v132)
            {
              return result;
            }

            v134 = *(v9 + 56);
            v135 = *(a2 - 8);
            if (v134 >= v135)
            {
              return result;
            }
          }

          else
          {
            v134 = *(v9 + 56);
            v135 = *(a2 - 8);
          }

          *(v9 + 48) = v133;
          *(a2 - 16) = v132;
          *(v9 + 56) = v135;
          *(a2 - 8) = v134;
          v136 = *(v9 + 32);
          v137 = *(v9 + 48);
          if (v136 >= v137)
          {
            if (v137 < v136)
            {
              return result;
            }

            v138 = *(v9 + 40);
            v139 = *(v9 + 56);
            if (v138 >= v139)
            {
              return result;
            }
          }

          else
          {
            v138 = *(v9 + 40);
            v139 = *(v9 + 56);
          }

          *(v9 + 32) = v137;
          *(v9 + 48) = v136;
          *(v9 + 40) = v139;
          *(v9 + 56) = v138;
          v140 = *(v9 + 16);
          if (v140 >= v137)
          {
            if (v137 < v140)
            {
              return result;
            }

            v141 = *(v9 + 24);
            if (v141 >= v139)
            {
              return result;
            }
          }

          else
          {
            v141 = *(v9 + 24);
          }

          *(v9 + 16) = v137;
          *(v9 + 32) = v140;
          *(v9 + 24) = v139;
          *(v9 + 40) = v141;
          v142 = *v9;
          if (*v9 >= v137)
          {
            if (v137 < v142)
            {
              return result;
            }

            v143 = *(v9 + 8);
            if (v143 >= v139)
            {
              return result;
            }
          }

          else
          {
            v143 = *(v9 + 8);
          }

          *v9 = v137;
          *(v9 + 16) = v142;
          *(v9 + 8) = v139;
          *(v9 + 24) = v143;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v128 = *v9;
        v129 = *(a2 - 16);
        if (*v9 >= v129)
        {
          if (v129 < v128)
          {
            return result;
          }

          v130 = *(v9 + 8);
          v131 = *(a2 - 8);
          if (v130 >= v131)
          {
            return result;
          }
        }

        else
        {
          v130 = *(v9 + 8);
          v131 = *(a2 - 8);
        }

        *v9 = v129;
        *(a2 - 16) = v128;
        *(v9 + 8) = v131;
        goto LABEL_223;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v159 = (v10 - 2) >> 1;
      v160 = v159;
      do
      {
        v161 = v160;
        if (v159 >= v160)
        {
          v162 = (2 * v160) | 1;
          v163 = v9 + 16 * v162;
          if (2 * v161 + 2 < v10)
          {
            v164 = *(v163 + 16);
            if (v164 < *v163 || *v163 >= v164 && *(v163 + 24) < *(v163 + 8))
            {
              v163 += 16;
              v162 = 2 * v161 + 2;
            }
          }

          v165 = v9 + 16 * v161;
          v166 = *v165;
          v167 = *v163;
          if (*v165 >= *v163)
          {
            v168 = *(v165 + 8);
            v169 = *(v163 + 8);
            if (v167 < v166 || v168 >= v169)
            {
              *v165 = v167;
              *(v165 + 8) = v169;
              if (v159 >= v162)
              {
                while (1)
                {
                  v172 = 2 * v162;
                  v162 = (2 * v162) | 1;
                  v171 = v9 + 16 * v162;
                  v173 = v172 + 2;
                  if (v173 < v10)
                  {
                    v174 = *(v171 + 16);
                    if (v174 < *v171 || *v171 >= v174 && (result = *(v171 + 8), *(v171 + 24) < result))
                    {
                      v171 += 16;
                      v162 = v173;
                    }
                  }

                  v175 = *v171;
                  if (v166 < *v171)
                  {
                    break;
                  }

                  v176 = *(v171 + 8);
                  if (v175 >= v166 && v168 < v176)
                  {
                    break;
                  }

                  *v163 = v175;
                  *(v163 + 8) = v176;
                  v163 = v171;
                  if (v159 < v162)
                  {
                    goto LABEL_275;
                  }
                }
              }

              v171 = v163;
LABEL_275:
              *v171 = v166;
              *(v171 + 8) = v168;
            }
          }
        }

        v160 = v161 - 1;
      }

      while (v161);
      while (1)
      {
        v180 = 0;
        v181 = *v9;
        v182 = *(v9 + 8);
        v183 = v9;
        do
        {
          v184 = v183;
          v185 = v183 + 16 * v180;
          v183 = v185 + 16;
          v186 = 2 * v180;
          v180 = (2 * v180) | 1;
          v187 = v186 + 2;
          if (v187 < v10)
          {
            v188 = *(v185 + 32);
            v189 = *(v185 + 16);
            if (v188 < v189 || v189 >= v188 && *(v185 + 40) < *(v185 + 24))
            {
              v183 = v185 + 32;
              v180 = v187;
            }
          }

          *v184 = *v183;
          *(v184 + 8) = *(v183 + 8);
        }

        while (v180 <= ((v10 - 2) >> 1));
        if (v183 == a2 - 16)
        {
          *v183 = v181;
          *(v183 + 8) = v182;
        }

        else
        {
          *v183 = *(a2 - 16);
          *(v183 + 8) = *(a2 - 8);
          *(a2 - 16) = v181;
          *(a2 - 8) = v182;
          v190 = (v183 - v9 + 16) >> 4;
          v191 = v190 - 2;
          if (v190 >= 2)
          {
            v192 = v191 >> 1;
            v193 = v9 + 16 * (v191 >> 1);
            v194 = *v183;
            v195 = *v193;
            if (*v183 < *v193)
            {
              v178 = *(v183 + 8);
              v179 = *(v193 + 8);
LABEL_305:
              *v183 = v195;
              *(v183 + 8) = v179;
              if (v191 >= 2)
              {
                while (1)
                {
                  v197 = v192 - 1;
                  v192 = (v192 - 1) >> 1;
                  v196 = v9 + 16 * v192;
                  v198 = *v196;
                  if (v194 >= *v196)
                  {
                    if (v198 < v194)
                    {
                      break;
                    }

                    v199 = *(v196 + 8);
                    if (v178 >= v199)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v199 = *(v196 + 8);
                  }

                  *v193 = v198;
                  *(v193 + 8) = v199;
                  v193 = v9 + 16 * v192;
                  if (v197 <= 1)
                  {
                    goto LABEL_312;
                  }
                }
              }

              v196 = v193;
LABEL_312:
              *v196 = v194;
              *(v196 + 8) = v178;
              goto LABEL_314;
            }

            if (v195 >= v194)
            {
              v178 = *(v183 + 8);
              v179 = *(v193 + 8);
              if (v178 < v179)
              {
                goto LABEL_305;
              }
            }
          }
        }

LABEL_314:
        a2 -= 16;
        if (v10-- <= 2)
        {
          return result;
        }
      }
    }

    v11 = v9 + 16 * (v10 >> 1);
    v12 = v11;
    if (v10 >= 0x81)
    {
      v13 = *v9;
      v14 = *v11;
      if (*v9 < *v11 || v14 >= v13 && *(v9 + 8) < *(v11 + 8))
      {
        v15 = *v8;
        if (v14 >= *v8)
        {
          v37 = *(v11 + 8);
          if (v15 < v14 || (v16 = *(a2 - 8), v37 >= v16))
          {
            *v9 = v14;
            *v11 = v13;
            v38 = *(v9 + 8);
            *(v9 + 8) = v37;
            *(v11 + 8) = v38;
            v39 = *v8;
            if (v13 >= *v8)
            {
              if (v39 < v13)
              {
                goto LABEL_59;
              }

              v40 = *(a2 - 8);
              if (v38 >= v40)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v40 = *(a2 - 8);
            }

            *v11 = v39;
            *(a2 - 16) = v13;
            *(v11 + 8) = v40;
            *(a2 - 8) = v38;
            goto LABEL_59;
          }
        }

        else
        {
          v16 = *(a2 - 8);
        }

        *v9 = v15;
        *(a2 - 16) = v13;
        v17 = *(v9 + 8);
        *(v9 + 8) = v16;
        *(a2 - 8) = v17;
        goto LABEL_59;
      }

      v23 = *v8;
      if (v14 >= *v8)
      {
        if (v23 < v14)
        {
          goto LABEL_59;
        }

        v24 = *(v11 + 8);
        v25 = *(a2 - 8);
        if (v24 >= v25)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v24 = *(v11 + 8);
        v25 = *(a2 - 8);
      }

      *v11 = v23;
      *(a2 - 16) = v14;
      *(v11 + 8) = v25;
      *(a2 - 8) = v24;
      v26 = *v9;
      v27 = *v11;
      if (*v9 < *v11)
      {
        v28 = *(v9 + 8);
        v29 = *(v11 + 8);
LABEL_27:
        *v9 = v27;
        *v11 = v26;
        *(v9 + 8) = v29;
        *(v11 + 8) = v28;
        goto LABEL_59;
      }

      if (v27 >= v26)
      {
        v28 = *(v9 + 8);
        v29 = *(v11 + 8);
        if (v28 < v29)
        {
          goto LABEL_27;
        }
      }

LABEL_59:
      v45 = v11 - 16;
      v46 = *(v11 - 16);
      v47 = *(v9 + 16);
      if (v47 < v46 || v46 >= v47 && *(v9 + 24) < *(v11 - 8))
      {
        v48 = *(a2 - 32);
        if (v46 >= v48)
        {
          v58 = *(v11 - 8);
          if (v48 < v46 || (v49 = *(a2 - 24), v58 >= v49))
          {
            *(v9 + 16) = v46;
            *v45 = v47;
            v59 = *(v9 + 24);
            *(v9 + 24) = v58;
            *(v11 - 8) = v59;
            v60 = *(a2 - 32);
            if (v47 >= v60)
            {
              if (v60 < v47)
              {
                goto LABEL_86;
              }

              v61 = *(a2 - 24);
              if (v59 >= v61)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v61 = *(a2 - 24);
            }

            *v45 = v60;
            *(a2 - 32) = v47;
            *(v11 - 8) = v61;
            *(a2 - 24) = v59;
            goto LABEL_86;
          }
        }

        else
        {
          v49 = *(a2 - 24);
        }

        *(v9 + 16) = v48;
        *(a2 - 32) = v47;
        v50 = *(v9 + 24);
        *(v9 + 24) = v49;
        *(a2 - 24) = v50;
        goto LABEL_86;
      }

      v51 = *(a2 - 32);
      if (v46 >= v51)
      {
        if (v51 < v46)
        {
          goto LABEL_86;
        }

        v52 = *(v11 - 8);
        v53 = *(a2 - 24);
        if (v52 >= v53)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v52 = *(v11 - 8);
        v53 = *(a2 - 24);
      }

      *v45 = v51;
      *(a2 - 32) = v46;
      *(v11 - 8) = v53;
      *(a2 - 24) = v52;
      v54 = *(v9 + 16);
      v55 = *v45;
      if (v54 < *v45)
      {
        v56 = *(v9 + 24);
        v57 = *(v11 - 8);
LABEL_69:
        *(v9 + 16) = v55;
        *v45 = v54;
        *(v9 + 24) = v57;
        *(v11 - 8) = v56;
        goto LABEL_86;
      }

      if (v55 >= v54)
      {
        v56 = *(v9 + 24);
        v57 = *(v11 - 8);
        if (v56 < v57)
        {
          goto LABEL_69;
        }
      }

LABEL_86:
      v63 = *(v11 + 16);
      v62 = v11 + 16;
      v64 = v63;
      v65 = *(v9 + 32);
      if (v65 < v63 || v64 >= v65 && *(v9 + 40) < *(v62 + 8))
      {
        v66 = *(a2 - 48);
        if (v64 >= v66)
        {
          v76 = *(v62 + 8);
          if (v66 < v64 || (v67 = *(a2 - 40), v76 >= v67))
          {
            *(v9 + 32) = v64;
            *v62 = v65;
            v77 = *(v9 + 40);
            *(v9 + 40) = v76;
            *(v62 + 8) = v77;
            v78 = *(a2 - 48);
            if (v65 >= v78)
            {
              if (v78 < v65)
              {
                goto LABEL_110;
              }

              v79 = *(a2 - 40);
              if (v77 >= v79)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v79 = *(a2 - 40);
            }

            *v62 = v78;
            *(a2 - 48) = v65;
            *(v62 + 8) = v79;
            *(a2 - 40) = v77;
            goto LABEL_110;
          }
        }

        else
        {
          v67 = *(a2 - 40);
        }

        *(v9 + 32) = v66;
        *(a2 - 48) = v65;
        v68 = *(v9 + 40);
        *(v9 + 40) = v67;
        *(a2 - 40) = v68;
        goto LABEL_110;
      }

      v69 = *(a2 - 48);
      if (v64 >= v69)
      {
        if (v69 < v64)
        {
          goto LABEL_110;
        }

        v70 = *(v62 + 8);
        v71 = *(a2 - 40);
        if (v70 >= v71)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v70 = *(v62 + 8);
        v71 = *(a2 - 40);
      }

      *v62 = v69;
      *(a2 - 48) = v64;
      *(v62 + 8) = v71;
      *(a2 - 40) = v70;
      v72 = *(v9 + 32);
      v73 = *v62;
      if (v72 < *v62)
      {
        v74 = *(v9 + 40);
        v75 = *(v62 + 8);
LABEL_96:
        *(v9 + 32) = v73;
        *v62 = v72;
        *(v9 + 40) = v75;
        *(v62 + 8) = v74;
        goto LABEL_110;
      }

      if (v73 >= v72)
      {
        v74 = *(v9 + 40);
        v75 = *(v62 + 8);
        if (v74 < v75)
        {
          goto LABEL_96;
        }
      }

LABEL_110:
      v80 = *v45;
      v81 = *v12;
      if (*v45 < *v12 || v81 >= v80 && *(v45 + 8) < *(v12 + 8))
      {
        v82 = *v62;
        if (v81 >= *v62)
        {
          v89 = *(v12 + 8);
          if (v82 < v81 || (v83 = *(v62 + 8), v89 >= v83))
          {
            *v45 = v81;
            *v12 = v80;
            v90 = *(v45 + 8);
            *(v45 + 8) = v89;
            *(v12 + 8) = v90;
            if (v80 >= v82)
            {
              if (v82 < v80)
              {
                goto LABEL_135;
              }

              v91 = *(v62 + 8);
              if (v90 >= v91)
              {
                goto LABEL_135;
              }
            }

            else
            {
              v91 = *(v62 + 8);
            }

            *v12 = v82;
            *v62 = v80;
            *(v12 + 8) = v91;
            v80 = v82;
            *(v62 + 8) = v90;
            goto LABEL_135;
          }
        }

        else
        {
          v83 = *(v62 + 8);
        }

        *v45 = v82;
        *v62 = v80;
        v84 = *(v45 + 8);
        *(v45 + 8) = v83;
        *(v62 + 8) = v84;
      }

      else
      {
        v85 = *v62;
        if (v81 < *v62)
        {
          v86 = *(v12 + 8);
          v87 = *(v62 + 8);
LABEL_119:
          *v12 = v85;
          *v62 = v81;
          *(v12 + 8) = v87;
          *(v62 + 8) = v86;
          if (v80 >= v85)
          {
            if (v85 < v80 || (v88 = *(v45 + 8), v88 >= v87))
            {
              v80 = v85;
              goto LABEL_135;
            }
          }

          else
          {
            v88 = *(v45 + 8);
          }

          *v45 = v85;
          *v12 = v80;
          *(v45 + 8) = v87;
          *(v12 + 8) = v88;
LABEL_135:
          v92 = *v9;
          *v9 = v80;
          *v12 = v92;
          v93 = *(v9 + 8);
          *(v9 + 8) = *(v12 + 8);
          *(v12 + 8) = v93;
          goto LABEL_136;
        }

        if (v85 >= v81)
        {
          v86 = *(v12 + 8);
          v87 = *(v62 + 8);
          if (v86 < v87)
          {
            goto LABEL_119;
          }
        }
      }

      v80 = v81;
      goto LABEL_135;
    }

    v18 = *v11;
    v19 = *v9;
    if (*v11 < *v9 || v19 >= v18 && *(v11 + 8) < *(v9 + 8))
    {
      v20 = *v8;
      if (v19 < *v8)
      {
        v21 = *(a2 - 8);
LABEL_20:
        *v12 = v20;
        *(a2 - 16) = v18;
        v22 = *(v12 + 8);
        *(v12 + 8) = v21;
        *(a2 - 8) = v22;
        goto LABEL_136;
      }

      v41 = *(v9 + 8);
      if (v20 >= v19)
      {
        v21 = *(a2 - 8);
        if (v41 < v21)
        {
          goto LABEL_20;
        }
      }

      *v12 = v19;
      *v9 = v18;
      v42 = *(v12 + 8);
      *(v12 + 8) = v41;
      *(v9 + 8) = v42;
      v43 = *v8;
      if (v18 < *v8)
      {
        v44 = *(a2 - 8);
LABEL_44:
        *v9 = v43;
        *(a2 - 16) = v18;
        *(v9 + 8) = v44;
        *(a2 - 8) = v42;
        goto LABEL_136;
      }

      if (v43 >= v18)
      {
        v44 = *(a2 - 8);
        if (v42 < v44)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v30 = *v8;
      if (v19 >= *v8)
      {
        if (v30 < v19)
        {
          goto LABEL_136;
        }

        v31 = *(v9 + 8);
        v32 = *(a2 - 8);
        if (v31 >= v32)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v31 = *(v9 + 8);
        v32 = *(a2 - 8);
      }

      *v9 = v30;
      *(a2 - 16) = v19;
      *(v9 + 8) = v32;
      *(a2 - 8) = v31;
      v33 = *v12;
      v34 = *v9;
      if (*v12 < *v9)
      {
        v35 = *(v12 + 8);
        v36 = *(v9 + 8);
LABEL_34:
        *v12 = v34;
        *v9 = v33;
        *(v12 + 8) = v36;
        *(v9 + 8) = v35;
        goto LABEL_136;
      }

      if (v34 >= v33)
      {
        v35 = *(v12 + 8);
        v36 = *(v9 + 8);
        if (v35 < v36)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_136:
    --a3;
    if (a4)
    {
      v94 = *v9;
LABEL_141:
      v97 = 0;
      v98 = *(v9 + 8);
      while (1)
      {
        v99 = *(v9 + v97 + 16);
        if (v94 >= v99 && (v99 < v94 || v98 >= *(v9 + v97 + 24)))
        {
          break;
        }

        v97 += 16;
      }

      v100 = v9 + v97 + 16;
      if (v97)
      {
        v101 = *v8;
        v102 = a2 - 16;
        if (v94 >= *v8)
        {
          do
          {
            if (v101 >= v94 && v98 < *(v102 + 8))
            {
              break;
            }

            v103 = *(v102 - 16);
            v102 -= 16;
            v101 = v103;
          }

          while (v94 >= v103);
        }
      }

      else
      {
        v102 = a2;
        if (v100 < a2)
        {
          v104 = *v8;
          v102 = a2 - 16;
          if (v94 >= *v8)
          {
            v102 = a2 - 16;
            do
            {
              if (v104 >= v94)
              {
                if (v100 >= v102 || v98 < *(v102 + 8))
                {
                  break;
                }
              }

              else if (v100 >= v102)
              {
                break;
              }

              v105 = *(v102 - 16);
              v102 -= 16;
              v104 = v105;
            }

            while (v94 >= v105);
          }
        }
      }

      if (v100 >= v102)
      {
        v9 = v100;
      }

      else
      {
        v106 = *v102;
        v9 = v100;
        v107 = v102;
        do
        {
          *v9 = v106;
          *v107 = v99;
          v108 = *(v9 + 8);
          *(v9 + 8) = *(v107 + 8);
          *(v107 + 8) = v108;
          do
          {
            do
            {
              v109 = *(v9 + 16);
              v9 += 16;
              v99 = v109;
            }

            while (v94 < v109);
          }

          while (v99 >= v94 && v98 < *(v9 + 8));
          do
          {
            v110 = *(v107 - 16);
            v107 -= 16;
            v106 = v110;
          }

          while (v94 >= v110 && (v106 < v94 || v98 >= *(v107 + 8)));
        }

        while (v9 < v107);
      }

      if (v9 - 16 != v7)
      {
        *v7 = *(v9 - 16);
        *(v7 + 8) = *(v9 - 8);
      }

      *(v9 - 16) = v94;
      *(v9 - 8) = v98;
      if (v100 < v102)
      {
LABEL_178:
        result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,false>(v7, v9 - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v111 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *>(v7, v9 - 16);
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *>(v9, a2);
        if (result)
        {
          a2 = v9 - 16;
          if (v111)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v111)
        {
          goto LABEL_178;
        }
      }
    }

    else
    {
      v94 = *v9;
      v95 = *(v9 - 16);
      if (*v9 < v95)
      {
        goto LABEL_141;
      }

      v96 = *(v9 + 8);
      if (v95 >= v94 && v96 < *(v9 - 8))
      {
        goto LABEL_141;
      }

      v112 = *v8;
      if (*v8 < v94 || v94 >= v112 && *(a2 - 8) < v96)
      {
        do
        {
          v113 = *(v9 + 16);
          v9 += 16;
          v114 = v113;
        }

        while (v113 >= v94 && (v94 < v114 || *(v9 + 8) >= v96));
      }

      else
      {
          ;
        }
      }

      i = a2;
      if (v9 < a2)
      {
        for (i = a2 - 16; v112 < v94 || v94 >= v112 && *(i + 8) < v96; i -= 16)
        {
          v116 = *(i - 16);
          v112 = v116;
        }
      }

      if (v9 < i)
      {
        v117 = *v9;
        v118 = *i;
        do
        {
          *v9 = v118;
          *i = v117;
          v119 = *(v9 + 16);
          v9 += 16;
          v117 = v119;
          v120 = *(v9 - 8);
          *(v9 - 8) = *(i + 8);
          *(i + 8) = v120;
          while (v117 >= v94 && (v94 < v117 || *(v9 + 8) >= v96))
          {
            v121 = *(v9 + 16);
            v9 += 16;
            v117 = v121;
          }

          do
          {
            do
            {
              v122 = *(i - 16);
              i -= 16;
              v118 = v122;
            }

            while (v122 < v94);
          }

          while (v94 >= v118 && *(i + 8) < v96);
        }

        while (v9 < i);
      }

      if (v9 - 16 != v7)
      {
        *v7 = *(v9 - 16);
        *(v7 + 8) = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 16) = v94;
      *(v9 - 8) = v96;
    }
  }

  v144 = v9 + 16;
  v146 = v9 == a2 || v144 == a2;
  if ((a4 & 1) == 0)
  {
    if (v146)
    {
      return result;
    }

    for (j = v9 + 8; ; j += 16)
    {
      v209 = v7;
      v7 = v144;
      v210 = *v209;
      v211 = *(v209 + 16);
      if (*v209 < v211)
      {
        break;
      }

      if (v211 >= v210)
      {
        v214 = *(v209 + 8);
        v212 = *(v209 + 24);
        if (v214 < v212)
        {
          goto LABEL_334;
        }
      }

LABEL_342:
      v144 += 16;
      if (v7 + 16 == a2)
      {
        return result;
      }
    }

    v212 = *(v209 + 24);
LABEL_334:
    for (k = j; ; k -= 16)
    {
      *(k + 8) = v210;
      *(k + 16) = *k;
      v210 = *(k - 24);
      if (v210 >= v211 && (v211 < v210 || *(k - 16) >= v212))
      {
        break;
      }
    }

    *(k - 8) = v211;
    *k = v212;
    goto LABEL_342;
  }

  if (v146)
  {
    return result;
  }

  v147 = 0;
  v148 = v9;
  while (2)
  {
    v149 = v148;
    v148 = v144;
    v150 = *v149;
    v151 = *(v149 + 16);
    if (*v149 >= v151)
    {
      if (v151 < v150)
      {
        goto LABEL_257;
      }

      v153 = *(v149 + 8);
      v152 = *(v149 + 24);
      if (v153 >= v152)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v152 = *(v149 + 24);
      v153 = *(v149 + 8);
    }

    *(v149 + 16) = v150;
    *(v148 + 8) = v153;
    v154 = v9;
    if (v149 == v9)
    {
      goto LABEL_256;
    }

    v155 = v147;
    while (2)
    {
      v156 = *(v9 + v155 - 16);
      if (v156 < v151)
      {
        v157 = *(v9 + v155 - 8);
        goto LABEL_250;
      }

      if (v151 >= v156)
      {
        v154 = v9 + v155;
        v157 = *(v9 + v155 - 8);
        if (v157 >= v152)
        {
          goto LABEL_256;
        }

LABEL_250:
        v149 -= 16;
        v158 = v9 + v155;
        *v158 = v156;
        *(v158 + 8) = v157;
        v155 -= 16;
        if (!v155)
        {
          v154 = v9;
          goto LABEL_256;
        }

        continue;
      }

      break;
    }

    v154 = v149;
LABEL_256:
    *v154 = v151;
    *(v154 + 8) = v152;
LABEL_257:
    v144 = v148 + 16;
    v147 += 16;
    if (v148 + 16 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *a2;
  if (*result < *a2 || v5 >= v4 && *(result + 8) < *(a2 + 8))
  {
    v6 = *a3;
    if (v5 >= *a3)
    {
      v15 = *(a2 + 8);
      if (v6 < v5 || (v7 = *(a3 + 8), v15 >= v7))
      {
        *result = v5;
        *a2 = v4;
        v16 = *(result + 8);
        *(result + 8) = v15;
        *(a2 + 8) = v16;
        v5 = *a3;
        if (v4 >= *a3)
        {
          if (v5 < v4)
          {
            goto LABEL_26;
          }

          v17 = *(a3 + 8);
          if (v16 >= v17)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v17 = *(a3 + 8);
        }

        *a2 = v5;
        *a3 = v4;
        *(a2 + 8) = v17;
        v5 = v4;
        *(a3 + 8) = v16;
        goto LABEL_26;
      }
    }

    else
    {
      v7 = *(a3 + 8);
    }

    *result = v6;
    *a3 = v4;
    v8 = *(result + 8);
    *(result + 8) = v7;
    *(a3 + 8) = v8;
    goto LABEL_5;
  }

  v4 = *a3;
  if (v5 >= *a3)
  {
    if (v4 >= v5)
    {
      v9 = *(a2 + 8);
      v10 = *(a3 + 8);
      if (v9 < v10)
      {
        goto LABEL_10;
      }
    }

LABEL_5:
    v5 = v4;
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
LABEL_10:
  *a2 = v4;
  *a3 = v5;
  *(a2 + 8) = v10;
  *(a3 + 8) = v9;
  v11 = *result;
  v12 = *a2;
  if (*result < *a2)
  {
    v13 = *(result + 8);
    v14 = *(a2 + 8);
LABEL_12:
    *result = v12;
    *a2 = v11;
    *(result + 8) = v14;
    *(a2 + 8) = v13;
    v5 = *a3;
    goto LABEL_26;
  }

  if (v12 >= v11)
  {
    v13 = *(result + 8);
    v14 = *(a2 + 8);
    if (v13 < v14)
    {
      goto LABEL_12;
    }
  }

LABEL_26:
  v18 = *a4;
  if (v5 >= *a4)
  {
    if (v18 < v5)
    {
      return result;
    }

    v19 = *(a3 + 8);
    v20 = *(a4 + 8);
    if (v19 >= v20)
    {
      return result;
    }
  }

  else
  {
    v19 = *(a3 + 8);
    v20 = *(a4 + 8);
  }

  *a3 = v18;
  *a4 = v5;
  *(a3 + 8) = v20;
  *(a4 + 8) = v19;
  v21 = *a2;
  v22 = *a3;
  if (*a2 >= *a3)
  {
    if (v22 < v21)
    {
      return result;
    }

    v23 = *(a2 + 8);
    v24 = *(a3 + 8);
    if (v23 >= v24)
    {
      return result;
    }
  }

  else
  {
    v23 = *(a2 + 8);
    v24 = *(a3 + 8);
  }

  *a2 = v22;
  *a3 = v21;
  *(a2 + 8) = v24;
  *(a3 + 8) = v23;
  v25 = *result;
  v26 = *a2;
  if (*result < *a2)
  {
    v27 = *(result + 8);
    v28 = *(a2 + 8);
LABEL_32:
    *result = v26;
    *a2 = v25;
    *(result + 8) = v28;
    *(a2 + 8) = v27;
    return result;
  }

  if (v26 >= v25)
  {
    v27 = *(result + 8);
    v28 = *(a2 + 8);
    if (v27 < v28)
    {
      goto LABEL_32;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = *a1;
        v23 = *(a1 + 16);
        if (*a1 >= v23 && (v23 < v22 || *(a1 + 8) >= *(a1 + 24)))
        {
          v33 = *(a2 - 16);
          if (v23 >= v33)
          {
            if (v33 < v23)
            {
              return 1;
            }

            v34 = *(a1 + 24);
            v35 = *(a2 - 8);
            if (v34 >= v35)
            {
              return 1;
            }
          }

          else
          {
            v34 = *(a1 + 24);
            v35 = *(a2 - 8);
          }

          *(a1 + 16) = v33;
          *(a2 - 16) = v23;
          *(a1 + 24) = v35;
          *(a2 - 8) = v34;
          v36 = *a1;
          v37 = *(a1 + 16);
          if (*a1 >= v37)
          {
            if (v37 < v36)
            {
              return 1;
            }

            v38 = *(a1 + 8);
            v39 = *(a1 + 24);
            if (v38 >= v39)
            {
              return 1;
            }
          }

          else
          {
            v38 = *(a1 + 8);
            v39 = *(a1 + 24);
          }

          *a1 = v37;
          *(a1 + 16) = v36;
          *(a1 + 8) = v39;
          result = 1;
          *(a1 + 24) = v38;
          return result;
        }

        v24 = *(a2 - 16);
        if (v23 >= v24)
        {
          v44 = *(a1 + 24);
          if (v24 < v23 || (v25 = *(a2 - 8), v44 >= v25))
          {
            *a1 = v23;
            *(a1 + 16) = v22;
            v7 = *(a1 + 8);
            *(a1 + 8) = v44;
            *(a1 + 24) = v7;
            v45 = *(a2 - 16);
            if (v22 >= v45)
            {
              if (v45 < v22)
              {
                return 1;
              }

              v46 = *(a2 - 8);
              if (v7 >= v46)
              {
                return 1;
              }
            }

            else
            {
              v46 = *(a2 - 8);
            }

            *(a1 + 16) = v45;
            *(a2 - 16) = v22;
            *(a1 + 24) = v46;
            goto LABEL_7;
          }
        }

        else
        {
          v25 = *(a2 - 8);
        }

        *a1 = v24;
        *(a2 - 16) = v22;
        v26 = *(a1 + 8);
        *(a1 + 8) = v25;
        *(a2 - 8) = v26;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,0>(a1, a1 + 16, a1 + 32, a2 - 16);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::tuple<float,unsigned long> *,0>(a1, a1 + 16, a1 + 32, a1 + 48);
        v10 = *(a1 + 48);
        v11 = *(a2 - 16);
        if (v10 >= v11)
        {
          if (v11 < v10)
          {
            return 1;
          }

          v12 = *(a1 + 56);
          v13 = *(a2 - 8);
          if (v12 >= v13)
          {
            return 1;
          }
        }

        else
        {
          v12 = *(a1 + 56);
          v13 = *(a2 - 8);
        }

        *(a1 + 48) = v11;
        *(a2 - 16) = v10;
        *(a1 + 56) = v13;
        *(a2 - 8) = v12;
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        if (v14 >= v15)
        {
          if (v15 < v14)
          {
            return 1;
          }

          v16 = *(a1 + 40);
          v17 = *(a1 + 56);
          if (v16 >= v17)
          {
            return 1;
          }
        }

        else
        {
          v16 = *(a1 + 40);
          v17 = *(a1 + 56);
        }

        *(a1 + 32) = v15;
        *(a1 + 48) = v14;
        *(a1 + 40) = v17;
        *(a1 + 56) = v16;
        v18 = *(a1 + 16);
        if (v18 >= v15)
        {
          if (v15 < v18)
          {
            return 1;
          }

          v19 = *(a1 + 24);
          if (v19 >= v17)
          {
            return 1;
          }
        }

        else
        {
          v19 = *(a1 + 24);
        }

        *(a1 + 16) = v15;
        *(a1 + 32) = v18;
        *(a1 + 24) = v17;
        *(a1 + 40) = v19;
        v20 = *a1;
        if (*a1 >= v15)
        {
          if (v15 < v20)
          {
            return 1;
          }

          v21 = *(a1 + 8);
          if (v21 >= v17)
          {
            return 1;
          }
        }

        else
        {
          v21 = *(a1 + 8);
        }

        *a1 = v15;
        *(a1 + 16) = v20;
        *(a1 + 8) = v17;
        result = 1;
        *(a1 + 24) = v21;
        return result;
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
      v5 = *a1;
      v6 = *(a2 - 16);
      if (*a1 < v6)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v6;
        *(a2 - 16) = v5;
        *(a1 + 8) = v8;
LABEL_7:
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
        if (v7 < v8)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v27 = a1 + 32;
  v28 = *a1;
  v29 = *(a1 + 16);
  if (*a1 < v29 || v29 >= v28 && *(a1 + 8) < *(a1 + 24))
  {
    v30 = *v27;
    if (v29 >= *v27)
    {
      v47 = *(a1 + 24);
      if (v30 < v29 || (v31 = *(a1 + 40), v47 >= v31))
      {
        *a1 = v29;
        *(a1 + 16) = v28;
        v48 = *(a1 + 8);
        *(a1 + 8) = v47;
        *(a1 + 24) = v48;
        if (v28 >= v30)
        {
          if (v30 < v28)
          {
            goto LABEL_85;
          }

          v49 = *(a1 + 40);
          if (v48 >= v49)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v49 = *(a1 + 40);
        }

        *(a1 + 16) = v30;
        *(a1 + 32) = v28;
        *(a1 + 24) = v49;
        *(a1 + 40) = v48;
        goto LABEL_85;
      }
    }

    else
    {
      v31 = *(a1 + 40);
    }

    *a1 = v30;
    *(a1 + 32) = v28;
    v32 = *(a1 + 8);
    *(a1 + 8) = v31;
    *(a1 + 40) = v32;
    goto LABEL_85;
  }

  v40 = *v27;
  if (v29 >= *v27)
  {
    if (v40 < v29)
    {
      goto LABEL_85;
    }

    v41 = *(a1 + 24);
    v42 = *(a1 + 40);
    if (v41 >= v42)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v41 = *(a1 + 24);
    v42 = *(a1 + 40);
  }

  *(a1 + 16) = v40;
  *(a1 + 32) = v29;
  *(a1 + 24) = v42;
  *(a1 + 40) = v41;
  if (v28 < v40)
  {
    v43 = *(a1 + 8);
LABEL_42:
    *a1 = v40;
    *(a1 + 16) = v28;
    *(a1 + 8) = v42;
    *(a1 + 24) = v43;
    goto LABEL_85;
  }

  if (v40 >= v28)
  {
    v43 = *(a1 + 8);
    if (v43 < v42)
    {
      goto LABEL_42;
    }
  }

LABEL_85:
  v50 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v51 = 0;
  v52 = 0;
  while (2)
  {
    v53 = *v27;
    v54 = *v50;
    if (*v27 >= *v50)
    {
      if (v54 < v53)
      {
        goto LABEL_101;
      }

      v56 = *(v27 + 8);
      v55 = *(v50 + 8);
      if (v56 >= v55)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v55 = *(v50 + 8);
      v56 = *(v27 + 8);
    }

    *v50 = v53;
    *(v50 + 8) = v56;
    v57 = v51;
    while (1)
    {
      v58 = a1 + v57;
      v59 = *(a1 + v57 + 16);
      if (v59 >= v54)
      {
        break;
      }

      v60 = *(v58 + 24);
LABEL_94:
      v27 -= 16;
      *(v58 + 32) = v59;
      *(a1 + v57 + 40) = v60;
      v57 -= 16;
      if (v57 == -32)
      {
        v27 = a1;
        goto LABEL_100;
      }
    }

    if (v54 >= v59)
    {
      v60 = *(a1 + v57 + 24);
      if (v60 >= v55)
      {
        goto LABEL_100;
      }

      goto LABEL_94;
    }

    v27 = a1 + v57 + 32;
LABEL_100:
    *v27 = v54;
    *(v27 + 8) = v55;
    if (++v52 != 8)
    {
LABEL_101:
      v27 = v50;
      v51 += 16;
      v50 += 16;
      if (v50 == a2)
      {
        return 1;
      }

      continue;
    }

    return v50 + 16 == a2;
  }
}

void sub_1B41C84B0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1B41C8EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B41CBC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  a24 = a10;
  std::vector<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

void ___ZL16isValidLabelTextP8NSString_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"〒$"];
  v1 = _MergedGlobals_18;
  _MergedGlobals_18 = v0;

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789.０１２３４５６７８９０．"];
  v3 = qword_1ED95FFD8;
  qword_1ED95FFD8 = v2;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    v8 = a2 - 3;
    v9 = *(a2 - 3);
    if (v9 < *a1 || *a1 >= v9 && ((v16 = *(a2 - 2), v17 = a1[1], v16 < v17) || v17 >= v16 && *(a2 - 1) < a1[2]))
    {

      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>::swap[abi:ne200100](a1, v8);
    }

    return;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v18 = (a1 + 3);
    if (a1 + 3 == a2)
    {
      return;
    }

    v19 = 0;
    v20 = a1;
    while (1)
    {
      v21 = v20;
      v20 = v18;
      v22 = *v18;
      v23 = *v21;
      if (*v18 >= *v21)
      {
        if (v23 < v22)
        {
          goto LABEL_35;
        }

        v24 = v21[4];
        v25 = v21[1];
        if (v24 >= v25 && (v25 < v24 || v21[5] >= v21[2]))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v24 = v21[4];
        v25 = v21[1];
      }

      v26 = v21[5];
      v21[5] = 0;
      *v20 = v23;
      *(v20 + 1) = v25;
      v27 = v21[2];
      v21[2] = 0;
      v28 = *(v20 + 2);
      *(v20 + 2) = v27;

      if (v21 == a1)
      {
LABEL_32:
        v21 = a1;
        goto LABEL_33;
      }

      v29 = v19;
      while (1)
      {
        v30 = *(a1 + v29 - 24);
        if (v22 >= v30)
        {
          break;
        }

        v31 = *(a1 + v29 - 16);
LABEL_31:
        v21 -= 3;
        v32 = a1 + v29;
        *v32 = v30;
        v33 = *(a1 + v29 - 8);
        *(v32 - 1) = 0;
        v34 = *(a1 + v29 + 16);
        *(v32 + 1) = v31;
        *(v32 + 2) = v33;

        v29 -= 24;
        if (!v29)
        {
          goto LABEL_32;
        }
      }

      if (v30 < v22)
      {
        goto LABEL_33;
      }

      v31 = *(a1 + v29 - 16);
      if (v24 < v31)
      {
        goto LABEL_31;
      }

      if (v31 < v24)
      {
        goto LABEL_33;
      }

      if (v26 < *(a1 + v29 - 8))
      {
        goto LABEL_31;
      }

      v21 = (a1 + v29);
LABEL_33:
      *v21 = v22;
      v35 = v21[2];
      v21[1] = v24;
      v21[2] = v26;

LABEL_35:
      v18 = (v20 + 24);
      v19 += 24;
      if (v20 + 24 == a2)
      {
        return;
      }
    }
  }

  v13 = a3 >> 1;
  v14 = &a1[3 * (a3 >> 1)];
  if (a3 > a5)
  {
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(a1, &a1[3 * (a3 >> 1)], a3 >> 1, a4, a5);
    v15 = a3 - v13;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(v14, a2, v15, a4, a5);

    std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(a1, v14, a2, v13, v15, a4, a5);
    return;
  }

  v36 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(a1, &a1[3 * (a3 >> 1)], a3 >> 1, a4, a6);
  v37 = a3 - v13;
  v38 = a4 + 24 * v13;
  std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(&a1[3 * (a3 >> 1)], a2, v37, v38, v36);
  v64 = a3;
  v39 = a4 + 24 * a3;
  v40 = (a1 + 2);
  v41 = v38;
  v42 = a4;
  while (v41 != v39)
  {
    v43 = *v41;
    v44 = *v42;
    if (*v41 >= *v42)
    {
      if (v44 < v43)
      {
        v48 = *(v42 + 8);
LABEL_49:
        *(v40 - 2) = v44;
        *(v40 - 1) = v48;
        v49 = *(v42 + 16);
        *(v42 + 16) = 0;
        v50 = *v40;
        *v40 = v49;

        v42 += 24;
        goto LABEL_50;
      }

      v45 = *(v41 + 8);
      v48 = *(v42 + 8);
      if (v45 >= v48 && (v48 < v45 || *(v41 + 16) >= *(v42 + 16)))
      {
        goto LABEL_49;
      }
    }

    else
    {
      v45 = *(v41 + 8);
    }

    *(v40 - 2) = v43;
    *(v40 - 1) = v45;
    v46 = *(v41 + 16);
    *(v41 + 16) = 0;
    v47 = *v40;
    *v40 = v46;

    v41 += 24;
LABEL_50:
    v40 += 3;
    if (v42 == v38)
    {
      if (v41 != v39)
      {
        v56 = 0;
        do
        {
          v57 = v41 + v56;
          v58 = &v40[v56 / 8];
          *(v58 - 2) = *(v41 + v56);
          *(v58 - 1) = *(v41 + v56 + 8);
          v59 = *(v41 + v56 + 16);
          *(v41 + v56 + 16) = 0;
          v60 = v40[v56 / 8];
          *v58 = v59;

          v56 += 24;
        }

        while (v57 + 24 != v39);
      }

      goto LABEL_63;
    }
  }

  if (v42 != v38)
  {
    v51 = 0;
    do
    {
      v52 = v42 + v51;
      v53 = &v40[v51 / 8];
      *(v53 - 2) = *(v42 + v51);
      *(v53 - 1) = *(v42 + v51 + 8);
      v54 = *(v42 + v51 + 16);
      *(v42 + v51 + 16) = 0;
      v55 = v40[v51 / 8];
      *v53 = v54;

      v51 += 24;
    }

    while (v52 + 24 != v38);
  }

LABEL_63:
  if (a4)
  {
    v61 = 0;
    v62 = (a4 + 16);
    do
    {
      v63 = *v62;
      v62 += 3;

      ++v61;
    }

    while (v61 < v64);
  }
}

void sub_1B41CC3F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, __n128 result)
{
  if (!a3)
  {
    return result;
  }

  v5 = a4;
  v8 = a1;
  if (a3 == 2)
  {
    v11 = *(a2 - 3);
    v12 = *a1;
    if (v11 < *a1)
    {
      v13 = *(a2 - 2);
LABEL_7:
      *a4 = v11;
      v14 = *(a2 - 1);
      *(a2 - 1) = 0;
      *(a4 + 8) = v13;
      *(a4 + 16) = v14;
      v9 = (a1 + 16);
      result = *a1;
      *(a4 + 24) = *a1;
      v10 = (a4 + 40);
      goto LABEL_37;
    }

    if (v12 >= v11)
    {
      v13 = *(a2 - 2);
      v37 = *(a1 + 8);
      if (v13 < v37 || v37 >= v13 && *(a2 - 1) < *(a1 + 16))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v37 = *(a1 + 8);
    }

    *a4 = v12;
    v38 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a4 + 8) = v37;
    *(a4 + 16) = v38;
    result = *(a2 - 3);
    *(a4 + 24) = result;
    v10 = (a4 + 40);
    v9 = a2 - 1;
    goto LABEL_37;
  }

  if (a3 == 1)
  {
    v9 = (a1 + 16);
    result = *a1;
    *a4 = *a1;
    v10 = (a4 + 16);
LABEL_37:
    v39 = *v9;
    *v9 = 0;
    *v10 = v39;
    return result;
  }

  if (a3 > 8)
  {
    v40 = (a1 + 24 * (a3 >> 1));
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(a1, v40, a3 >> 1, a4, a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(&v8[3 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v5[3 * (a3 >> 1)], a3 - (a3 >> 1));
    v41 = &v8[3 * (a3 >> 1)];
    while (1)
    {
      if (v41 == a2)
      {
        if (v8 != v40)
        {
          v47 = 0;
          do
          {
            v48 = &v5[v47];
            v49 = &v8[v47];
            result = *&v8[v47];
            *v48 = result;
            v50 = *&v8[v47 + 2];
            v49[2] = 0.0;
            v48[1].n128_u64[0] = v50;
            v47 += 3;
          }

          while (v49 + 3 != v40);
        }

        return result;
      }

      result.n128_u64[0] = *v41;
      v42 = *v8;
      if (*v41 >= *v8)
      {
        if (v42 < result.n128_f64[0])
        {
          v45 = *(v8 + 1);
LABEL_46:
          *v5 = v42;
          v46 = *(v8 + 2);
          v8[2] = 0.0;
          *(v5 + 1) = v45;
          *(v5 + 2) = v46;
          v8 += 3;
          goto LABEL_47;
        }

        v43 = v41[1];
        v45 = *(v8 + 1);
        if (v43 >= v45 && (v45 < v43 || v41[2] >= *(v8 + 2)))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v43 = v41[1];
      }

      *v5 = result.n128_f64[0];
      v44 = v41[2];
      v41[2] = 0;
      *(v5 + 1) = v43;
      *(v5 + 2) = v44;
      v41 += 3;
LABEL_47:
      v5 += 3;
      if (v8 == v40)
      {
        if (v41 != a2)
        {
          v51 = 0;
          do
          {
            v52 = &v41[v51];
            v53 = &v5[v51];
            result = *&v41[v51];
            *v53 = result;
            v54 = v41[v51 + 2];
            v52[2] = 0;
            v53[1].n128_u64[0] = v54;
            v51 += 3;
          }

          while (v52 + 3 != a2);
        }

        return result;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  result = *a1;
  *a4 = *a1;
  v15 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a4 + 16) = v15;
  v16 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return result;
  }

  v17 = 0;
  v18 = a4;
  v19 = a4;
  do
  {
    v20 = v16;
    v21 = *v19;
    v19 += 3;
    result.n128_f64[0] = v21;
    v22 = *v16;
    if (*v16 >= v21)
    {
      v33 = *(v8 + 4);
      if (result.n128_f64[0] < v22 || (v23 = *(v18 + 1), v33 >= v23) && (v23 < v33 || *(v8 + 5) >= *(v18 + 2)))
      {
        v18[3] = v22;
        v34 = *(v8 + 5);
        v8[5] = 0.0;
        *(v18 + 4) = v33;
        *(v18 + 5) = v34;
        goto LABEL_32;
      }
    }

    else
    {
      v23 = *(v18 + 1);
    }

    v18[3] = result.n128_f64[0];
    v24 = *(v18 + 2);
    v18[2] = 0.0;
    *(v18 + 4) = v23;
    *(v18 + 5) = v24;
    v25 = v5;
    if (v18 == v5)
    {
      goto LABEL_31;
    }

    v26 = v17;
    while (1)
    {
      v27 = *(v5 + v26 - 24);
      if (*v20 < v27)
      {
        v28 = *(v5 + v26 - 16);
        goto LABEL_22;
      }

      if (v27 < *v20)
      {
        goto LABEL_30;
      }

      v29 = *(v8 + 4);
      v28 = *(v5 + v26 - 16);
      if (v29 >= v28)
      {
        break;
      }

LABEL_22:
      v18 -= 3;
      v30 = v5 + v26;
      *v30 = v27;
      v31 = *(v5 + v26 - 8);
      *(v30 - 1) = 0;
      v32 = *(v5 + v26 + 16);
      *(v30 + 1) = v28;
      *(v30 + 2) = v31;

      v26 -= 24;
      if (!v26)
      {
        v25 = v5;
        goto LABEL_31;
      }
    }

    if (v28 >= v29)
    {
      v25 = (v5 + v26);
      if (*(v8 + 5) >= *(v5 + v26 - 8))
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

LABEL_30:
    v25 = v18;
LABEL_31:
    *v25 = *v20;
    v25[1] = v8[4];
    v35 = *(v8 + 5);
    v8[5] = 0.0;
    v36 = *(v25 + 2);
    *(v25 + 2) = v35;

LABEL_32:
    v16 = v20 + 3;
    v17 += 24;
    v18 = v19;
    v8 = v20;
  }

  while (v20 + 3 != a2);
  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v7 = a5;
  v90 = a7;
  while (a4 > a7 && v7 > a7)
  {
    if (!a4)
    {
      return;
    }

    v11 = 0;
    v12 = *a2;
    v13 = -a4;
    while (1)
    {
      v14 = *(v11 + a1);
      if (v12 < v14)
      {
        break;
      }

      if (v14 >= v12)
      {
        v15 = a2[1];
        v16 = *(v11 + a1 + 8);
        if (v15 < v16 || v16 >= v15 && a2[2] < *(v11 + a1 + 16))
        {
          break;
        }
      }

      v11 += 3;
      if (__CFADD__(v13++, 1))
      {
        return;
      }
    }

    v18 = (v11 + a1);
    if (-v13 >= v7)
    {
      if (v13 == -1)
      {

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>::swap[abi:ne200100]((v11 + a1), a2);
        return;
      }

      v22 = -v13 / 2;
      v20 = a2;
      if (a2 != a3)
      {
        v38 = *(&a1[3 * v22] + v11);
        v39 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
        v40 = &a1[3 * v22] + v11;
        v41 = *(v40 + 1);
        v42 = *(v40 + 2);
        v20 = a2;
        do
        {
          v43 = v39 >> 1;
          v44 = &v20[3 * (v39 >> 1)];
          if (*v44 < v38 || v38 >= *v44 && ((v45 = v44[1], v45 < v41) || v41 >= v45 && v44[2] < v42))
          {
            v20 = v44 + 3;
            v43 = v39 + ~v43;
          }

          v39 = v43;
        }

        while (v43);
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * (v20 - a2);
      v21 = (&a1[3 * v22] + v11);
    }

    else
    {
      v19 = v7 / 2;
      v20 = &a2[3 * (v7 / 2)];
      v21 = a2;
      if ((a2 - a1) != v11)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v11) >> 3);
        v26 = *v20;
        v27 = v20[1];
        v21 = (v11 + a1);
        do
        {
          v28 = v25 >> 1;
          v29 = &v21[3 * (v25 >> 1)];
          if (v26 >= *v29)
          {
            if (*v29 < v26 || (v30 = v29[1], v27 >= v30) && (v30 < v27 || v20[2] >= v29[2]))
            {
              v21 = v29 + 3;
              v28 = v25 + ~v28;
            }
          }

          v25 = v28;
        }

        while (v28);
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - a1 - v11) >> 3);
    }

    v23 = v20;
    if (v21 != a2)
    {
      v23 = v21;
      if (a2 != v20)
      {
        v87 = v19;
        v88 = v22;
        v89 = a3;
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>::swap[abi:ne200100](v21, a2);
        v23 = v21 + 3;
        for (i = a2 + 3; i != v20; i += 3)
        {
          if (v23 == a2)
          {
            a2 = i;
          }

          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>::swap[abi:ne200100](v23, i);
          v23 += 3;
        }

        if (v23 != a2)
        {
          v31 = v23;
          v32 = a2;
          do
          {
            while (1)
            {
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>::swap[abi:ne200100](v31, v32);
              v31 += 3;
              v32 += 3;
              if (v32 == v20)
              {
                break;
              }

              if (v31 == a2)
              {
                a2 = v32;
              }
            }

            v32 = a2;
          }

          while (v31 != a2);
        }

        a3 = v89;
        a7 = v90;
        v22 = v88;
        v18 = (v11 + a1);
        v19 = v87;
      }
    }

    a4 = -(v22 + v13);
    v33 = v7 - v19;
    if (v22 + v19 >= v7 - (v22 + v19) - v13)
    {
      v36 = v22;
      v37 = v19;
      a1 = v18;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(v23, v20, a3, -(v22 + v13), v7 - v19, a6, a7);
      v20 = v21;
      v33 = v37;
      a4 = v36;
      a3 = v23;
    }

    else
    {
      v34 = v21;
      v35 = a3;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}> *>>(v11 + a1, v34, v23, v22, v19, a6, a7);
      a3 = v35;
      a1 = v23;
    }

    v7 = v33;
    a2 = v20;
    a7 = v90;
    if (!v33)
    {
      return;
    }
  }

  if (a4 > v7)
  {
    if (a2 == a3)
    {
      return;
    }

    v46 = 0;
    v47 = 0;
    v48 = a6;
    do
    {
      v49 = a6 + v46 * 8;
      v50 = &a2[v46];
      *v49 = *&a2[v46];
      v51 = a2[v46 + 2];
      v50[2] = 0;
      *(v49 + 16) = v51;
      ++v47;
      v46 += 3;
    }

    while (v50 + 3 != a3);
    v52 = a3;
    v53 = (a6 + v46 * 8);
    while (1)
    {
      if (a2 == a1)
      {
        if (v53 != a6)
        {
          v76 = 0;
          do
          {
            v77 = &v52[v76];
            *(v77 - 3) = v53[v76 - 3];
            *(v77 - 2) = v53[v76 - 2];
            v78 = v53[v76 - 1];
            v53[v76 - 1] = 0;
            v79 = v52[v76 - 1];
            *(v77 - 1) = v78;

            v76 -= 3;
          }

          while (&v53[v76] != a6);
        }

        goto LABEL_106;
      }

      v54 = *(a2 - 3);
      v55 = *(v53 - 3);
      if (v55 >= v54)
      {
        v58 = *(v53 - 2);
        if (v54 < v55 || (v56 = *(a2 - 2), v58 >= v56) && (v56 < v58 || *(v53 - 1) >= *(a2 - 1)))
        {
          v56 = *(v53 - 2);
          v57 = v53;
          v53 -= 3;
          goto LABEL_73;
        }
      }

      else
      {
        v56 = *(a2 - 2);
      }

      v55 = *(a2 - 3);
      v57 = a2;
      a2 -= 3;
LABEL_73:
      *(v52 - 3) = v55;
      v59 = v52 - 3;
      v59[1] = v56;
      v60 = *(v57 - 1);
      *(v57 - 1) = 0;
      v61 = *(v52 - 1);
      v52 -= 3;
      v59[2] = v60;

      if (v53 == a6)
      {
        goto LABEL_106;
      }
    }
  }

  if (a2 == a1)
  {
    return;
  }

  v47 = 0;
  v48 = a6;
  v62 = a6;
  v63 = a1;
  do
  {
    *v62 = *v63;
    v64 = v63[2];
    v63[2] = 0;
    *(v62 + 16) = v64;
    ++v47;
    v63 += 3;
    v62 += 24;
  }

  while (v63 != a2);
  v65 = v62 - 24;
  v66 = a6;
  while (a2 != a3)
  {
    v67 = *a2;
    v68 = *v66;
    if (*a2 >= *v66)
    {
      if (v68 < v67)
      {
        v69 = a3;
        v73 = *(v66 + 8);
LABEL_89:
        *a1 = v68;
        a1[1] = v73;
        v74 = *(v66 + 16);
        *(v66 + 16) = 0;
        v75 = a1[2];
        a1[2] = v74;

        v66 += 24;
        goto LABEL_90;
      }

      v70 = a2[1];
      v73 = *(v66 + 8);
      v69 = a3;
      if (v70 >= v73 && (v73 < v70 || a2[2] >= *(v66 + 16)))
      {
        goto LABEL_89;
      }
    }

    else
    {
      v69 = a3;
      v70 = a2[1];
    }

    *a1 = v67;
    a1[1] = v70;
    v71 = a2[2];
    a2[2] = 0;
    v72 = a1[2];
    a1[2] = v71;

    a2 += 3;
LABEL_90:
    a1 += 3;
    a3 = v69;
    if (v62 == v66)
    {
      goto LABEL_106;
    }
  }

  if (v62 != v66)
  {
    v80 = 0;
    do
    {
      v81 = &a1[v80 / 8];
      v82 = v66 + v80;
      *v81 = *(v66 + v80);
      v81[1] = *(v66 + v80 + 8);
      v83 = *(v66 + v80 + 16);
      *(v66 + v80 + 16) = 0;
      v84 = a1[v80 / 8 + 2];
      v81[2] = v83;

      v80 += 24;
    }

    while (v65 != v82);
  }

LABEL_106:
  if (v48)
  {
    v85 = (a6 + 16);
    do
    {
      v86 = *v85;
      v85 += 3;

      --v47;
    }

    while (v47);
  }
}

void std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>::swap[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  v5 = a1[2];
  a1[2] = 0;
  v6 = a2[2];
  a2[2] = 0;
  v7 = a1[2];
  a1[2] = v6;

  v8 = a2[2];
  a2[2] = v5;
}

uint64_t *std::unique_ptr<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 16);
      do
      {
        v6 = *v5;
        v5 += 3;

        ++v4;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_1B41CD8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void sub_1B41CDC08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B41CDCE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRSignpostLog()
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  return CRSignpostLog_signPostOSLog;
}

os_log_t __CRSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.CoreRecognition", "SignPosts");
  CRSignpostLog_signPostOSLog = result;
  return result;
}

void *std::vector<CGPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B41CE8FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41CEAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B41CF320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a44)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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
}

void sub_1B41D11AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_1B41D1670(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B41D1804(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 8 * *a2);
  v9 = *a3;
  v10 = *(a6 + 8 * *a3);
  if (v8 >= *(a6 + 8 * *result))
  {
    if (v10 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v6;
      v11 = *result;
      if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
      {
        *result = *a2;
        *a2 = v11;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v8)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 8 * *a3) < *(a6 + 8 * v7))
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 8 * *a4) < *(a6 + 8 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v12 = *a2;
    if (*(a6 + 8 * *a3) < *(a6 + 8 * *a2))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(a6 + 8 * *a5) < *(a6 + 8 * *a4))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(a6 + 8 * *a4) < *(a6 + 8 * *a3))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(a6 + 8 * *a3) < *(a6 + 8 * *a2))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 8 * v7);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 8 * v10);
      if (v9 >= *(*a3 + 8 * *a1))
      {
        if (v11 < v9)
        {
          a1[1] = v10;
          *(a2 - 1) = v7;
          v35 = *a1;
          v34 = a1[1];
          if (*(v8 + 8 * v34) < *(v8 + 8 * *a1))
          {
            *a1 = v34;
            a1[1] = v35;
          }
        }

        return 1;
      }

      if (v11 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v48 = *(a2 - 1);
        if (*(v8 + 8 * v48) >= *(v8 + 8 * v6))
        {
          return 1;
        }

        a1[1] = v48;
      }

      else
      {
        *a1 = v10;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 8 * v24);
    v29 = *a1;
    v30 = *(*a3 + 8 * v26);
    if (v28 >= *(*a3 + 8 * *a1))
    {
      if (v30 >= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v31 = a1;
      v32 = a1 + 1;
      v33 = v24;
      if (*(v27 + 8 * v26) >= *(v27 + 8 * v29))
      {
LABEL_42:
        v44 = *(a2 - 1);
        if (*(v27 + 8 * v44) < *(v27 + 8 * v24))
        {
          *v25 = v44;
          *(a2 - 1) = v24;
          v45 = *v25;
          v46 = *v23;
          if (*(v27 + 8 * v45) < *(v27 + 8 * v46))
          {
            a1[1] = v45;
            a1[2] = v46;
            v47 = *a1;
            if (*(v27 + 8 * v45) < *(v27 + 8 * *a1))
            {
              *a1 = v45;
              a1[1] = v47;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v31 = a1;
      v32 = a1 + 2;
      v33 = *a1;
      if (v30 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v31 = a1 + 1;
        v32 = a1 + 2;
        v33 = v29;
        if (*(v27 + 8 * v26) >= *(v27 + 8 * v29))
        {
          goto LABEL_41;
        }
      }
    }

    *v31 = v26;
    *v32 = v29;
    v24 = v33;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 8 * v4) < *(*a3 + 8 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 8 * v14);
  v17 = *a1;
  v18 = *(*a3 + 8 * v12);
  if (v16 >= *(*a3 + 8 * *a1))
  {
    if (v18 >= v16)
    {
      goto LABEL_27;
    }

    a1[1] = v12;
    *v13 = v14;
    v21 = *(v15 + 8 * v12);
    v22 = *(v15 + 8 * v17);
    v19 = a1;
    v20 = a1 + 1;
LABEL_25:
    if (v21 >= v22)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v19 = a1;
  v20 = a1 + 2;
  if (v18 >= v16)
  {
    *a1 = v14;
    a1[1] = v17;
    v21 = *(v15 + 8 * v12);
    v22 = *(v15 + 8 * v17);
    v19 = a1 + 1;
    v20 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v19 = v12;
  *v20 = v17;
LABEL_27:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 24; ; i += 8)
  {
    v39 = *v36;
    v40 = *v13;
    if (*(v15 + 8 * *v36) < *(v15 + 8 * v40))
    {
      v41 = i;
      while (1)
      {
        *(a1 + v41) = v40;
        v42 = v41 - 8;
        if (v41 == 8)
        {
          break;
        }

        v40 = *(a1 + v41 - 16);
        v41 -= 8;
        if (*(v15 + 8 * v39) >= *(v15 + 8 * v40))
        {
          v43 = (a1 + v42);
          goto LABEL_35;
        }
      }

      v43 = a1;
LABEL_35:
      *v43 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v13 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}

void BreakPoint::BreakPoint(BreakPoint *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
}

{
  *(this + 2) = 0;
  *(this + 3) = 0;
}

uint64_t BreakPoint::BreakPoint(uint64_t a1, int a2, int a3, int a4, void *a5, void *a6, double a7)
{
  v13 = a5;
  v14 = a6;
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = a7;
  return a1;
}

{
  v13 = a5;
  v14 = a6;
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = a7;
  return a1;
}

BOOL BreakPoint::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 32) < *(a2 + 32);
  }

  else
  {
    return *a1 < *a2;
  }
}

void Segmenter::Segmenter(Segmenter *this, NSArray *a2, CRImage *a3, NSString *a4, char a5, char a6, char a7, char a8, int a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  v19 = v16;
  *(this + 5) = v19;
  v20 = v17;
  *(this + 6) = v20;
  v21 = v18;
  *(this + 4) = 0u;
  *(this + 7) = v21;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 112) = a5;
  *(this + 113) = a6;
  *(this + 114) = a7;
  *(this + 116) = a8;
  *(this + 30) = a9;
  *(this + 115) = 1;
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = *(this + 3);
  *(this + 3) = v22;

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = *(this + 4);
  *(this + 4) = v24;

  Segmenter::presegmentFeatures(this);
  Segmenter::addSegmentationLayer(this, 0, 0);
}

{
  Segmenter::Segmenter(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1B41D3DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v16 = *(v10 + 88);
  if (v16)
  {
    *(v10 + 96) = v16;
    operator delete(v16);
  }

  v17 = *v14;
  if (*v14)
  {
    *(v10 + 72) = v17;
    operator delete(v17);
  }

  a10 = v10;
  std::vector<std::vector<std::vector<BreakPoint>>>::__destroy_vector::operator()[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

void Segmenter::presegmentFeatures(id *this)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = [this[5] count];
  v3 = *this;
  v4 = this[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 3);
  v6 = v2 - v5;
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      v11 = &v3[24 * v2];
      while (v4 != v11)
      {
        v4 -= 24;
        v84 = v4;
        std::vector<std::vector<BreakPoint>>::__destroy_vector::operator()[abi:ne200100](&v84);
      }

      this[1] = v11;
    }
  }

  else
  {
    v7 = this[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (v2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= v2)
        {
          v9 = v2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(this, v10);
      }

      std::vector<std::vector<std::vector<BreakPoint>>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(v4, v12);
    this[1] = &v4[v12];
  }

  std::vector<double>::resize(this + 8, [this[5] count]);
  std::vector<double>::resize(this + 11, [this[5] count]);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = this[5];
  v13 = [obj countByEnumeratingWithState:&v86 objects:v91 count:16];
  if (v13)
  {
    v14 = 0;
    v78 = *v87;
    do
    {
      v79 = v13;
      v15 = 0;
      do
      {
        if (*v87 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v86 + 1) + 8 * v15);
        [(CRTextFeature *)v16 updateSizeHints];
        v17 = [(CRTextFeature *)v16 subFeatures];
        std::vector<double>::vector[abi:ne200100](&v84, [v17 count]);

        for (i = 0; ; ++i)
        {
          v19 = [(CRTextFeature *)v16 subFeatures];
          v20 = i < [v19 count];

          if (!v20)
          {
            break;
          }

          v21 = [(CRTextFeature *)v16 subFeatures];
          v22 = [v21 objectAtIndexedSubscript:i];

          [v22 bounds];
          *(v84 + i) = v23;
        }

        std::__sort<std::__less<double,double> &,double *>();
        v24 = v85 - v84;
        if (v85 == v84)
        {
          v26 = 0.0;
        }

        else
        {
          v25 = (v84 + 8 * (v24 >> 4));
          v26 = *v25;
          if ((v24 & 8) == 0)
          {
            v26 = (v26 + *(v25 - 1)) * 0.5;
          }
        }

        v27 = [(CRTextFeature *)v16 subFeatures];
        std::vector<double>::vector[abi:ne200100](&v82, [v27 count]);

        for (j = 0; ; ++j)
        {
          v29 = [(CRTextFeature *)v16 subFeatures];
          v30 = j < [v29 count];

          if (!v30)
          {
            break;
          }

          v31 = [(CRTextFeature *)v16 subFeatures];
          v32 = [v31 objectAtIndexedSubscript:j];

          [v32 bounds];
          *(v82 + j) = v33;
        }

        std::__sort<std::__less<double,double> &,double *>();
        v34 = v83 - v82;
        if (v83 == v82)
        {
          v36 = 0.0;
        }

        else
        {
          v35 = (v82 + 8 * (v34 >> 4));
          v36 = *v35;
          if ((v34 & 8) == 0)
          {
            v36 = (v36 + *(v35 - 1)) * 0.5;
          }
        }

        v37 = [(CRTextFeature *)v16 subFeatures];
        v38 = [v37 count] > 1;

        v39 = 0.0;
        if (v38)
        {
          v40 = [(CRTextFeature *)v16 subFeatures];
          std::vector<double>::vector[abi:ne200100](&__p, [v40 count] - 1);

          for (k = 0; ; ++k)
          {
            v42 = [(CRTextFeature *)v16 subFeatures];
            v43 = k + 1 < [v42 count];

            if (!v43)
            {
              break;
            }

            v44 = [(CRTextFeature *)v16 subFeatures];
            v45 = [v44 objectAtIndexedSubscript:k];

            v46 = [(CRTextFeature *)v16 subFeatures];
            v47 = [v46 objectAtIndexedSubscript:k + 1];

            [v47 bounds];
            v49 = v48;
            [v45 bounds];
            v51 = v50;
            [v45 bounds];
            *(__p + k) = v49 - (v51 + v52);
          }

          std::__sort<std::__less<double,double> &,double *>();
          v53 = v81 - __p;
          if (v81 == __p)
          {
            v55 = 0.0;
          }

          else
          {
            v54 = (__p + 8 * (v53 >> 4));
            v55 = *v54;
            if ((v53 & 8) == 0)
            {
              v55 = (v55 + *(v54 - 1)) * 0.5;
            }
          }

          v56 = [this[6] width];
          v57 = [this[6] height];
          v58 = [this[6] width];
          if (__p)
          {
            v81 = __p;
            operator delete(__p);
          }

          v39 = fmax(v55 * v56, v36 * 0.136363636 * v57) / v58;
        }

        if (*(this + 112) == 1)
        {
          v59 = Segmenter::textPiecesAfterGeometricPresegmentationOfTextFeature(this, v16, this[6]);
        }

        else
        {
          if (*(this + 113) == 1)
          {
            v90 = v16;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
          }

          else
          {
            [(CRTextFeature *)v16 wordFeatures];
          }
          v59 = ;
        }

        v60 = v59;
        [this[3] addObject:v59];
        v61 = *this;
        v62 = [v60 count];
        v63 = v61 + 24 * v14;
        v64 = *v63;
        v65 = *(v63 + 8);
        v66 = 0xAAAAAAAAAAAAAAABLL * (&v65[-*v63] >> 3);
        v67 = v62 - v66;
        if (v62 <= v66)
        {
          v72 = v79;
          if (v62 < v66)
          {
            v73 = (v64 + 24 * v62);
            while (v65 != v73)
            {
              v65 -= 24;
              __p = v65;
              std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](&__p);
            }

            *(v63 + 8) = v73;
          }
        }

        else
        {
          v68 = *(v63 + 16);
          if (0xAAAAAAAAAAAAAAABLL * ((v68 - v65) >> 3) < v67)
          {
            if (v62 <= 0xAAAAAAAAAAAAAAALL)
            {
              v69 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v64) >> 3);
              v70 = 2 * v69;
              if (2 * v69 <= v62)
              {
                v70 = v62;
              }

              if (v69 >= 0x555555555555555)
              {
                v71 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v71 = v70;
              }

              std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(v63, v71);
            }

            std::vector<std::vector<std::vector<BreakPoint>>>::__throw_length_error[abi:ne200100]();
          }

          v74 = v75 + 24 * ((v76 + 24 * v67) / 0x18);
          bzero(*(v63 + 8), v74);
          *(v63 + 8) = &v65[v74];
          v72 = v79;
        }

        *(this[8] + v14) = v26;
        *(this[11] + v14) = v39;

        if (v82)
        {
          v83 = v82;
          operator delete(v82);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        ++v14;
        ++v15;
      }

      while (v15 != v72);
      v13 = [obj countByEnumeratingWithState:&v86 objects:v91 count:16];
    }

    while (v13);
  }
}

void Segmenter::addSegmentationLayer(id *this, int a2, int a3)
{
  if (a2 == 1)
  {
    Segmenter::addSegmentationLayerOfTypeFixed(this, a3);
  }

  else if (!a2)
  {
    Segmenter::addSegmentationLayerOfTypeNone(this);
  }

  if ([this[3] count])
  {
    v5 = 0;
    v22 = xmmword_1B42AF270;
    v21 = xmmword_1B42AF280;
    do
    {
      for (i = 0; ; ++i)
      {
        v7 = [this[3] objectAtIndexedSubscript:{v5, *&v21, *&v22}];
        v8 = [v7 count];

        if (i >= v8)
        {
          break;
        }

        v9 = *(*this + 3 * v5) + 24 * i;
        v10 = *(v9 + 8);
        v11 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v10 - *v9) >> 3));
        if (v10 == *v9)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,false>(*v9, v10, v12, 1);
        v14 = *v9;
        v13 = *(v9 + 8);
        if (*v9 != v13)
        {
          v15 = 0;
          v16 = (v13 - v14 - 40) / 0x28uLL;
          v17 = vdupq_n_s64(v16);
          v18 = v14 + 10;
          do
          {
            v19 = vdupq_n_s64(v15);
            v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, v21)));
            if (vuzp1_s16(v20, *v17.i8).u8[0])
            {
              *(v18 - 20) = v15;
            }

            if (vuzp1_s16(v20, *&v17).i8[2])
            {
              *(v18 - 10) = v15 + 1;
            }

            if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, v22)))).i32[1])
            {
              *v18 = v15 + 2;
              v18[10] = v15 + 3;
            }

            v15 += 4;
            v18 += 40;
          }

          while (((v16 + 4) & 0xFFFFFFFFFFFFFFCLL) != v15);
        }
      }

      ++v5;
    }

    while (v5 < [this[3] count]);
  }

  if (a2)
  {

    Segmenter::calculateSubRegions(this);
  }

  else
  {

    Segmenter::initSubRegionsWithInitialFeatures(this);
  }
}

void Segmenter::Segmenter(Segmenter *this)
{
  *(this + 115) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
}

{
  *(this + 115) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
}

void Segmenter::~Segmenter(Segmenter *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<std::vector<std::vector<BreakPoint>>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
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
    std::vector<double>::__append(a1, a2 - v2);
  }
}

double Segmenter::medianOfVectorDouble(uint64_t a1, void *a2)
{
  v2 = a2[1] - *a2;
  if (!v2)
  {
    return 0.0;
  }

  v3 = (*a2 + 8 * (v2 >> 4));
  result = *v3;
  if ((v2 & 8) == 0)
  {
    return (result + *(v3 - 1)) * 0.5;
  }

  return result;
}

id Segmenter::textPiecesAfterGeometricPresegmentationOfTextFeature(Segmenter *this, CRTextFeature *a2, CRImage *a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v59 = a3;
  v60 = v4;
  v5 = [(CRTextFeature *)v4 subFeatures];
  v6 = [v5 count];

  if (v6 > 5)
  {
    v7 = *(this + 30);
    v8 = 1.5;
    if (!v7)
    {
      v8 = 1.0;
    }

    v55 = v8;
    v9 = 0.833333333;
    if (v7)
    {
      v9 = 1.0;
    }

    v54 = v9;
    v56 = [MEMORY[0x1E695DF70] array];
    v10 = MEMORY[0x1E695DF70];
    v11 = [(CRTextFeature *)v4 subFeatures];
    v12 = [v11 objectAtIndexedSubscript:0];
    v58 = [v10 arrayWithObject:v12];

    for (i = 0; ; ++i)
    {
      v14 = [(CRTextFeature *)v60 subFeatures];
      v15 = [v14 count];

      if (i + 1 >= v15)
      {
        break;
      }

      v16 = [(CRImage *)v59 width];
      v17 = [(CRTextFeature *)v60 subFeatures];
      v18 = [v17 objectAtIndexedSubscript:i + 1];
      [v18 bounds];
      v20 = v19;
      v21 = [(CRTextFeature *)v60 subFeatures];
      v22 = [v21 objectAtIndexedSubscript:i];
      [v22 bounds];
      v24 = v23;
      v25 = [(CRTextFeature *)v60 subFeatures];
      v26 = [v25 objectAtIndexedSubscript:i];
      [v26 bounds];
      v28 = v27;

      if (i + 1 <= 5)
      {
        v29 = 5;
      }

      else
      {
        v29 = i + 1;
      }

      v30 = [(CRTextFeature *)v60 subFeatures];
      v31 = [v30 count];
      v32 = v29 - 5;
      if (v31 >= i + 6)
      {
        v33 = i + 6;
      }

      else
      {
        v33 = v31;
      }

      v34 = v33 - v29;
      v63.length = v34 + 6;
      v63.location = v32;
      v36 = fmax(Segmenter::medianInterSubfeatureSpacingForFeature(v35, v60, v63), 0.0);
      if (*(this + 116) == 1)
      {
        v37 = [(CRTextFeature *)v60 subFeatures];
        v38 = [v37 objectAtIndexedSubscript:i + 1];
        if (Segmenter::isNarrowChar(this, v38, v59))
        {
          isNarrowChar = 1;
        }

        else
        {
          v44 = [(CRTextFeature *)v60 subFeatures];
          v45 = [v44 objectAtIndexedSubscript:i];
          isNarrowChar = Segmenter::isNarrowChar(this, v45, v59);
        }

        v46 = [(CRImage *)v59 width];
        v65.length = v34 + 6;
        v65.location = v32;
        v41 = Segmenter::medianSubfeatureHeightForFeature(v46, v60, v65);
        if (isNarrowChar)
        {
          v47 = v55;
        }

        else
        {
          v47 = v54;
        }

        v42 = [(CRImage *)v59 height];
        v43 = v36 * (v47 * 3.0) * v46;
      }

      else
      {
        v40 = [(CRImage *)v59 width];
        v64.length = v34 + 6;
        v64.location = v32;
        v41 = Segmenter::medianSubfeatureHeightForFeature(v40, v60, v64);
        v42 = [(CRImage *)v59 height];
        v43 = v36 * 3.0 * v40;
      }

      if ((v20 - (v24 + v28)) * v16 > fmax(v43, v41 * 0.5 * v42))
      {
        v48 = [[CRTextFeature alloc] initWithSubfeatures:v58];
        [v56 addObject:v48];

        v49 = [MEMORY[0x1E695DF70] array];

        v58 = v49;
      }

      v50 = [(CRTextFeature *)v60 subFeatures];
      v51 = [v50 objectAtIndexedSubscript:i + 1];
      [v58 addObject:v51];
    }

    v52 = [[CRTextFeature alloc] initWithSubfeatures:v58];
    [v56 addObject:v52];
  }

  else
  {
    v61[0] = v4;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  }

  return v56;
}

void Segmenter::addSegmentationLayerOfTypeNone(id *this)
{
  v64 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = this[3];
  v1 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v1)
  {
    v39 = *v59;
    v40 = 0;
    do
    {
      v41 = 0;
      v38 = v1;
      do
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v58 + 1) + 8 * v41);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v42 = v2;
        v3 = [v42 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v3)
        {
          v4 = 0;
          v44 = *v55;
          do
          {
            v45 = v3;
            for (i = 0; i != v45; ++i)
            {
              if (*v55 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v6 = *(*(&v54 + 1) + 8 * i);
              v7 = *(*this + 3 * v40);
              v8 = [v6 subFeatures];
              v47 = [v8 firstObject];

              [v47 bounds];
              v10 = v9;
              v11 = (v7 + 24 * v4);
              v12 = v47;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = v12;
              v46 = v12;
              v53 = v10;
              std::vector<BreakPoint>::push_back[abi:ne200100](v11, &v49);

              v13 = [v6 subFeatures];
              v48 = [v13 lastObject];

              v14 = [v6 subFeatures];
              v15 = [v14 count];
              [v48 bounds];
              v17 = v16;
              [v48 bounds];
              v19 = v17 + v18;
              v20 = v48;
              v50 = 0;
              v49 = v15;
              v51 = v20;
              v52 = 0;
              v53 = v19;
              std::vector<BreakPoint>::push_back[abi:ne200100](v11, &v49);

              v21 = [v6 subFeatures];
              LOBYTE(v15) = [v21 count] == 0;

              if ((v15 & 1) == 0)
              {
                for (j = 1; ; ++j)
                {
                  v23 = [v6 subFeatures];
                  v24 = [v23 count] - 1 > (j - 1);

                  if (!v24)
                  {
                    break;
                  }

                  v25 = [v6 subFeatures];
                  v26 = [v25 objectAtIndexedSubscript:j - 1];

                  v27 = [v6 subFeatures];
                  v28 = [v27 objectAtIndexedSubscript:j];

                  [v26 bounds];
                  v30 = v29;
                  [v26 bounds];
                  v32 = v31;
                  [v28 bounds];
                  v34 = (v30 + v32 + v33) * 0.5;
                  v35 = v26;
                  v36 = v28;
                  v50 = 0;
                  v49 = j;
                  v51 = v35;
                  v52 = v36;
                  v53 = v34;
                  std::vector<BreakPoint>::push_back[abi:ne200100](v11, &v49);
                }
              }

              ++v4;
            }

            v3 = [v42 countByEnumeratingWithState:&v54 objects:v62 count:16];
          }

          while (v3);
        }

        ++v40;
        ++v41;
      }

      while (v41 != v38);
      v1 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v1);
  }
}

void Segmenter::addSegmentationLayerOfTypeFixed(id *this, int a2)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(this + 114) == 1)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = this[3];
    v3 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v3)
    {
      v42 = 0;
      v40 = *v62;
      v50 = a2 ^ 1;
      do
      {
        v43 = 0;
        v39 = v3;
        do
        {
          if (*v62 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v61 + 1) + 8 * v43);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v44 = v4;
          v5 = [v44 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v5)
          {
            v6 = 0;
            v46 = *v58;
            do
            {
              v7 = 0;
              v45 = v5;
              do
              {
                if (*v58 != v46)
                {
                  objc_enumerationMutation(v44);
                }

                v47 = v7;
                v48 = v6;
                v8 = *(*(&v57 + 1) + 8 * v7);
                v9 = (*(*this + 3 * v42) + 24 * v6);
                v10 = 1;
                v11 = 2;
                do
                {
                  v49 = v11;
                  for (i = 0; ; ++i)
                  {
                    v13 = [v8 subFeatures];
                    v14 = [v13 count] > i;

                    if (!v14)
                    {
                      break;
                    }

                    v15 = this[7];
                    v16 = [v8 subFeatures];
                    v17 = [v16 objectAtIndexedSubscript:i];
                    v18 = [v17 stringValueCandidates];
                    v19 = [v18 objectAtIndexedSubscript:0];
                    v20 = [v15 isEqualToString:v19];

                    v21 = [v8 subFeatures];
                    v22 = [v21 objectAtIndexedSubscript:i];
                    v23 = [v22 candidateProbs];
                    v24 = [v23 objectAtIndexedSubscript:0];
                    [v24 floatValue];
                    v26 = v25;

                    if (v26 < 0.9)
                    {
                      v27 = 1;
                    }

                    else
                    {
                      v27 = v20;
                    }

                    if ((v27 | v50) == 1)
                    {
                      v28 = [v8 subFeatures];
                      v29 = [v28 objectAtIndexedSubscript:i];

                      [v29 bounds];
                      v31 = v30;
                      v32 = [this[6] width];
                      [v29 bounds];
                      v33 = v31 / (v10 + 1);
                      if (v33 * v32 >= v34 * 0.3 * [this[6] height])
                      {
                        v35 = 0;
                        do
                        {
                          [v29 bounds];
                          v37 = v36 + (v35 + 1) * v33;
                          v38 = v29;
                          v52 = i | 0x100000000;
                          v53 = v10 + 1;
                          v54 = v38;
                          v55 = v38;
                          v56 = v37;
                          std::vector<BreakPoint>::push_back[abi:ne200100](v9, &v52);

                          ++v35;
                        }

                        while (v10 != v35);
                      }
                    }
                  }

                  v11 = v49 + 1;
                  ++v10;
                }

                while (v49 != 4);
                v6 = v48 + 1;
                v7 = v47 + 1;
              }

              while (v47 + 1 != v45);
              v5 = [v44 countByEnumeratingWithState:&v57 objects:v65 count:16];
            }

            while (v5);
          }

          ++v42;
          ++v43;
        }

        while (v43 != v39);
        v3 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v3);
    }
  }
}

void Segmenter::initSubRegionsWithInitialFeatures(Segmenter *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 4);
  v3 = objc_opt_new();
  [v2 addObject:v3];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(this + 5);
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v23 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [v6 subFeatures];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = *v25;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v24 + 1) + 8 * j);
              [v11 bounds];
              v13 = v12;
              v15 = v14;
              v17 = v16;
              v19 = v18;
              v20 = [v11 stringValueCandidates];
              v21 = [v11 candidateProbs];
              Segmenter::addRegionToLayer(this, 0, v20, v21, v6, v13, v15, v17, v19);
            }

            v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v8);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }
}

void Segmenter::calculateSubRegions(id *this)
{
  v2 = [this[4] count];
  v3 = this[4];
  v4 = objc_opt_new();
  [v3 addObject:v4];

  if (this[1] != *this)
  {
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((this[1] - *this) >> 3); ++i)
    {
      v6 = -1.0;
      if (*(this + 114) == 1)
      {
        v7 = *(this[8] + i);
        v6 = v7 + v7;
      }

      v8 = [this[5] objectAtIndex:i];
      v9 = *this;
      v10 = *(*this + 3 * i);
      if (*(*this + 3 * i + 1) == v10)
      {
        goto LABEL_28;
      }

      v11 = 0;
      do
      {
        v12 = (v10 + 24 * v11);
        v14 = *v12;
        v13 = v12[1];
        if (*v12 == v13)
        {
          goto LABEL_27;
        }

        v15 = v12[1];
        do
        {
          v16 = v14;
          v14 += 40;
          if (v14 == v15)
          {
            v23 = v15;
            goto LABEL_25;
          }

          v17 = 1.79769313e308;
          v18 = v14;
          while (*(v16 + 4) == 1 && v18[1] == 1 && v18[2] != *(v16 + 8))
          {
LABEL_21:
            v18 += 10;
            v23 = v13;
            if (v18 == v15)
            {
              goto LABEL_25;
            }
          }

          v19 = Segmenter::imageRegionBetweenBreakpoints(v16, v18, v12);
          if (v21 <= 0.0 || v22 <= 0.0)
          {
            goto LABEL_18;
          }

          if (v21 <= v17)
          {
            Segmenter::addRegionToLayer(this, v2, 0, 0, v8, v19, v20, v21, v22);
LABEL_18:
            if (!v18[2])
            {
              v17 = v6;
            }

            v13 = v12[1];
            v15 = v13;
            goto LABEL_21;
          }

          v13 = v12[1];
          v23 = v13;
LABEL_25:
          v15 = v23;
        }

        while (v14 != v23);
        v9 = *this;
LABEL_27:
        ++v11;
        v10 = v9[3 * i];
      }

      while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v9[3 * i + 1] - v10) >> 3));
LABEL_28:
    }
  }
}

void std::vector<BreakPoint>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<std::vector<std::vector<BreakPoint>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<BreakPoint>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    *(v13 + 8) = *(a2 + 2);
    *v13 = v14;
    v15 = *(a2 + 1);
    a2[2] = 0;
    a2[3] = 0;
    *(v13 + 16) = v15;
    *(v13 + 32) = a2[4];
    v17 = *a1;
    v16 = a1[1];
    v24[0] = a1;
    v24[1] = &v26;
    v24[2] = &v27;
    v18 = 40 * v9 + v17 - v16;
    v26 = v18;
    v27 = v18;
    if (v17 == v16)
    {
      v25 = 1;
    }

    else
    {
      v19 = v17;
      v20 = v13 + v17 - v16;
      do
      {
        v21 = *v19;
        *(v20 + 8) = *(v19 + 2);
        *v20 = v21;
        v22 = *(v19 + 1);
        v19[2] = 0;
        v19[3] = 0;
        *(v20 + 16) = v22;
        *(v20 + 32) = v19[4];
        v19 += 5;
        v20 += 40;
      }

      while (v19 != v16);
      v27 = v20;
      v25 = 1;
      do
      {

        v17 += 5;
      }

      while (v17 != v16);
    }

    v8 = v13 + 40;
    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BreakPoint>,BreakPoint*>>::~__exception_guard_exceptions[abi:ne200100](v24);
    v23 = *a1;
    *a1 = v18;
    a1[1] = v13 + 40;
    a1[2] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v6 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v6;
    v7 = *(a2 + 1);
    a2[2] = 0;
    a2[3] = 0;
    *(v4 + 16) = v7;
    *(v4 + 32) = a2[4];
    v8 = v4 + 40;
  }

  a1[1] = v8;
}

double Segmenter::maxWidthForFeatureIndex(Segmenter *this, uint64_t a2)
{
  result = -1.0;
  if (*(this + 114) == 1)
  {
    return *(*(this + 8) + 8 * a2) + *(*(this + 8) + 8 * a2);
  }

  return result;
}

double Segmenter::imageRegionBetweenBreakpoints(double *a1, int *a2, uint64_t *a3)
{
  v6 = *(a1 + 3);
  if (v6 == *(a1 + 2))
  {
    v8 = a1[4];
  }

  else
  {
    [v6 bounds];
    v8 = v7;
  }

  v9 = *a1;
  v10 = *a2;
  if (v9 <= *a2)
  {
    v11 = 40 * v9;
    v12 = 2.22507386e-308;
    v13 = 1.79769313e308;
    do
    {
      v14 = *a3;
      if (v9 > *a1)
      {
        v15 = v14 + v11;
        v16 = *(v14 + v11 + 16);
        if (v16)
        {
          [v16 bounds];
          v18 = v17;
          [*(v15 + 16) bounds];
          v20 = v19;
          [*(v15 + 16) bounds];
          v13 = fmin(v13, v18);
          v12 = fmax(v12, v20 + v21);
          v10 = *a2;
        }
      }

      v22 = v10;
      if (v9 < v10)
      {
        v23 = v14 + v11;
        v24 = *(v23 + 24);
        if (v24)
        {
          [v24 bounds];
          v26 = v25;
          [*(v23 + 24) bounds];
          v28 = v27;
          [*(v23 + 24) bounds];
          v13 = fmin(v13, v26);
          v12 = fmax(v12, v28 + v29);
          v10 = *a2;
          v22 = *a2;
        }
      }

      ++v9;
      v11 += 40;
    }

    while (v9 <= v22);
  }

  v30 = *(a2 + 2);
  if (*(a2 + 3) != v30)
  {
    [v30 bounds];
    [*(a2 + 2) bounds];
  }

  return v8;
}

void Segmenter::addRegionToLayer(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v41.origin.x = a6;
  v41.origin.y = a7;
  v41.size.width = a8;
  v41.size.height = a9;
  v20 = NSStringFromRect(v41);
  if (a2)
  {
    v21 = 0;
    while (1)
    {
      v22 = [*(a1 + 32) objectAtIndexedSubscript:v21];
      v23 = [v22 objectForKey:v20];

      if (v23)
      {
        break;
      }

      if (a2 == ++v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v24 = [CRTextFeature alloc];
    v40[0] = v20;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v26 = [(CRTextFeature *)v24 initWithFeatureRect:v20 subFeatureRects:v25];

    if (v19)
    {
      [v19 baselineOrigin];
      v28 = v27;
      v30 = v29;
      [v19 toplineOrigin];
      v32 = v31;
      v34 = v33;
      [v19 baselineAngle];
      LODWORD(v36) = v35;
      [(CRTextFeature *)v26 setBaselineOrigin:v28 toplineOrigin:v30 slope:v32, v34, v36];
      [(CRTextFeature *)v26 updateSizeHints];
    }

    v37 = [(CRTextFeature *)v26 subFeatures];
    v38 = [v37 objectAtIndex:0];

    [v38 setStringValueCandidates:v17];
    [v38 setCandidateProbs:v18];
    v39 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    [v39 setObject:v26 forKey:v20];
  }
}

id Segmenter::textFeaturesForLayer(id *this, uint64_t a2)
{
  v2 = [this[4] objectAtIndexedSubscript:a2];
  v3 = [v2 allValues];

  return v3;
}

double Segmenter::medianCharSpacingForFeatureIndex(Segmenter *this, unint64_t a2)
{
  v2 = *(this + 11);
  if (a2 >= (*(this + 12) - v2) >> 3)
  {
    std::vector<double>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

BOOL Segmenter::isNarrowChar(Segmenter *this, CRTextFeature *a2, CRImage *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(this + 30);
  [(CRTextFeature *)v5 bounds];
  v9 = v8;
  v10 = [(CRImage *)v6 width];
  [(CRTextFeature *)v5 bounds];
  v12 = v11;
  v13 = [(CRImage *)v6 height];
  v14 = 0.4;
  if (v7 != 1)
  {
    v14 = 0.5;
  }

  v15 = v9 * v10 / (v12 * v13) <= v14;

  return v15;
}

double Segmenter::medianInterSubfeatureSpacingForFeature(Segmenter *this, CRTextFeature *a2, _NSRange a3)
{
  length = a3.length;
  location = a3.location;
  v5 = a2;
  if (length)
  {
    std::vector<double>::vector[abi:ne200100](&v27, length);
    v6 = 0;
    v7 = location + length;
    while (1)
    {
      v8 = [(CRTextFeature *)v5 subFeatures];
      v9 = [v8 count];
      v10 = location + 1;
      v11 = v9 >= v7 ? v7 : v9;

      if (v10 >= v11)
      {
        break;
      }

      v12 = [(CRTextFeature *)v5 subFeatures];
      v13 = [v12 objectAtIndexedSubscript:location + 1];
      [v13 bounds];
      v15 = v14;
      v16 = [(CRTextFeature *)v5 subFeatures];
      v17 = [v16 objectAtIndexedSubscript:location];
      [v17 bounds];
      v19 = v18;
      v20 = [(CRTextFeature *)v5 subFeatures];
      v21 = [v20 objectAtIndexedSubscript:location];
      [v21 bounds];
      *&v27[v6] = v15 - (v19 + v22);

      v6 += 8;
      location = v10;
    }

    std::__sort<std::__less<double,double> &,double *>();
    v23 = v28 - v27;
    if (v28 != v27)
    {
      v24 = &v27[8 * (v23 >> 4)];
      v25 = *v24;
      if ((v23 & 8) == 0)
      {
        v25 = (v25 + *(v24 - 1)) * 0.5;
      }

      goto LABEL_13;
    }

    v25 = 0.0;
    if (v28)
    {
LABEL_13:
      v28 = v27;
      operator delete(v27);
    }
  }

  else
  {
    v25 = 0.0;
  }

  return v25;
}

void sub_1B41D68E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Segmenter::medianSubfeatureHeightForFeature(Segmenter *this, CRTextFeature *a2, _NSRange a3)
{
  length = a3.length;
  location = a3.location;
  v5 = a2;
  std::vector<double>::vector[abi:ne200100](&v18, length);
  v6 = 0;
  v7 = location + length;
  while (1)
  {
    v8 = [(CRTextFeature *)v5 subFeatures];
    v9 = [v8 count];
    v10 = v9 >= v7 ? v7 : v9;

    if (location >= v10)
    {
      break;
    }

    v11 = [(CRTextFeature *)v5 subFeatures];
    v12 = [v11 objectAtIndexedSubscript:location];
    [v12 bounds];
    *&v18[v6] = v13;

    ++location;
    v6 += 8;
  }

  std::__sort<std::__less<double,double> &,double *>();
  v14 = v19 - v18;
  if (v19 != v18)
  {
    v15 = &v18[8 * (v14 >> 4)];
    v16 = *v15;
    if ((v14 & 8) == 0)
    {
      v16 = (v16 + *(v15 - 1)) * 0.5;
    }

    goto LABEL_11;
  }

  v16 = 0.0;
  if (v19)
  {
LABEL_11:
    v19 = v18;
    operator delete(v18);
  }

  return v16;
}

void sub_1B41D6A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id Segmenter::textFeatureForRegion(id *this, CGRect a2)
{
  v3 = NSStringFromRect(a2);
  v4 = 0;
  while (v4 < [this[4] count])
  {
    v5 = [this[4] objectAtIndexedSubscript:v4];
    v6 = [v5 objectForKey:v3];

    ++v4;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,false>(double *a1, double *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a1;
  while (1)
  {
    v8 = a2 - v7;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      v92 = *(a2 - 10);
      v91 = a2 - 5;
      v93 = v92 == *v7;
      v94 = v92 < *v7;
      if (v93)
      {
        v94 = v91[4] < *(v7 + 32);
      }

      if (v94)
      {
        v90 = v7;
        v89 = v91;
LABEL_98:

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(v90, v89);
      }

      return;
    }

LABEL_9:
    if (v8 <= 959)
    {
      v95 = (v7 + 40);
      v97 = v7 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v7;
          do
          {
            v100 = v95;
            v101 = *(v99 + 40);
            v102 = *(v99 + 72);
            v103 = v101 < *v99;
            if (v101 == *v99)
            {
              v103 = v102 < *(v99 + 32);
            }

            if (v103)
            {
              v104 = *(v99 + 44);
              v106 = *(v99 + 56);
              v105 = *(v99 + 64);
              v107 = v98;
              *(v99 + 56) = 0;
              *(v99 + 64) = 0;
              while (1)
              {
                v108 = v7 + v107;
                *(v108 + 40) = *(v7 + v107);
                *(v108 + 48) = *(v7 + v107 + 8);
                v109 = *(v7 + v107 + 16);
                *(v108 + 16) = 0;
                v110 = *(v7 + v107 + 56);
                *(v108 + 56) = v109;

                v111 = *(v7 + v107 + 24);
                *(v108 + 24) = 0;
                v112 = *(v7 + v107 + 64);
                *(v108 + 64) = v111;

                *(v108 + 72) = *(v108 + 32);
                if (!v107)
                {
                  break;
                }

                v113 = *(v108 - 40);
                v93 = v101 == v113;
                v114 = v101 < v113;
                if (v93)
                {
                  v114 = v102 < *(v108 - 8);
                }

                v107 -= 40;
                if (!v114)
                {
                  v115 = v7 + v107 + 40;
                  goto LABEL_123;
                }
              }

              v115 = v7;
LABEL_123:
              *v115 = v101;
              *(v115 + 4) = v104;
              v116 = *(v115 + 16);
              *(v115 + 16) = v106;

              v117 = *(v115 + 24);
              *(v115 + 24) = v105;

              *(v115 + 32) = v102;
            }

            v95 = v100 + 5;
            v98 += 40;
            v99 = v100;
          }

          while (v100 + 5 != a2);
        }
      }

      else if (!v97)
      {
        v184 = (v7 + 72);
        do
        {
          v185 = v95;
          v186 = *(v7 + 40);
          v187 = *(v7 + 72);
          v188 = v186 < *v7;
          if (v186 == *v7)
          {
            v188 = v187 < *(v7 + 32);
          }

          if (v188)
          {
            v189 = *(v7 + 44);
            v191 = *(v7 + 56);
            v190 = *(v7 + 64);
            v192 = v184;
            *(v7 + 56) = 0;
            *(v7 + 64) = 0;
            do
            {
              v193 = v192;
              *(v192 - 4) = *(v192 - 9);
              *(v192 - 6) = *(v192 - 16);
              v194 = *(v192 - 7);
              *(v192 - 7) = 0.0;
              v195 = *(v192 - 2);
              *(v192 - 2) = v194;

              v196 = *(v192 - 6);
              *(v192 - 6) = 0.0;
              v197 = *(v192 - 1);
              *(v192 - 1) = v196;

              v198 = *(v192 - 5);
              v192 -= 5;
              *v193 = v198;
              v199 = *(v193 - 28);
              v93 = v186 == v199;
              v200 = v186 < v199;
              if (v93)
              {
                v200 = v187 < *(v193 - 10);
              }
            }

            while (v200);
            *(v192 - 8) = v186;
            *(v192 - 28) = v189;
            v201 = *(v192 - 2);
            *(v192 - 2) = v191;

            v202 = *(v192 - 1);
            *(v192 - 1) = v190;

            *v192 = v187;
          }

          v95 = v185 + 5;
          v184 += 5;
          v7 = v185;
        }

        while (v185 + 5 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v118 = v10 >> 1;
      v119 = v10 >> 1;
      do
      {
        v120 = v119;
        if (v118 >= v119)
        {
          v121 = (2 * v119) | 1;
          v122 = v7 + 40 * v121;
          if (2 * v120 + 2 >= v9)
          {
            v123 = *v122;
          }

          else
          {
            v123 = *(v122 + 40);
            v124 = *(v122 + 32) < *(v122 + 72);
            if (*v122 != v123)
            {
              v124 = *v122 < v123;
            }

            if (v124)
            {
              v122 += 40;
              v121 = 2 * v120 + 2;
            }

            else
            {
              v123 = *v122;
            }
          }

          v125 = v7 + 40 * v120;
          v126 = *v125;
          v127 = *(v125 + 32);
          v93 = v123 == *v125;
          v128 = v123 < *v125;
          if (v93)
          {
            v128 = *(v122 + 32) < v127;
          }

          if (!v128)
          {
            v203 = *(v125 + 16);
            v205 = *(v125 + 4);
            v207 = *(v125 + 24);
            *(v125 + 16) = 0;
            *(v125 + 24) = 0;
            do
            {
              v129 = v125;
              v125 = v122;
              v130 = *v122;
              *(v129 + 8) = *(v125 + 8);
              *v129 = v130;
              v131 = *(v125 + 16);
              *(v125 + 16) = 0;
              v132 = *(v129 + 16);
              *(v129 + 16) = v131;

              v133 = *(v125 + 24);
              *(v125 + 24) = 0;
              v134 = *(v129 + 24);
              *(v129 + 24) = v133;

              *(v129 + 32) = *(v125 + 32);
              if (v118 < v121)
              {
                break;
              }

              v122 = v7 + 40 * ((2 * v121) | 1);
              if (2 * v121 + 2 >= v9)
              {
                v135 = *v122;
                v121 = (2 * v121) | 1;
              }

              else
              {
                v135 = *(v122 + 40);
                v136 = *(v122 + 32) < *(v122 + 72);
                if (*v122 != v135)
                {
                  v136 = *v122 < v135;
                }

                if (v136)
                {
                  v122 += 40;
                  v121 = 2 * v121 + 2;
                }

                else
                {
                  v135 = *v122;
                  v121 = (2 * v121) | 1;
                }
              }

              v137 = *(v122 + 32) < v127;
              v93 = v135 == v126;
              v138 = v135 < v126;
              if (!v93)
              {
                v137 = v138;
              }
            }

            while (!v137);
            *v125 = v126;
            *(v125 + 4) = v205;
            v139 = *(v125 + 16);
            *(v125 + 16) = v203;

            v140 = *(v125 + 24);
            *(v125 + 24) = v207;

            *(v125 + 32) = v127;
          }
        }

        v119 = v120 - 1;
      }

      while (v120);
      v141 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      while (2)
      {
        if (v141 >= 2)
        {
          v142 = 0;
          v212 = *(v7 + 8);
          v210 = *v7;
          v144 = *(v7 + 16);
          v143 = *(v7 + 24);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          v145 = *(v7 + 32);
          v146 = v7;
          do
          {
            v147 = v146 + 40 * v142;
            v148 = (v147 + 40);
            if (2 * v142 + 2 >= v141)
            {
              v142 = (2 * v142) | 1;
            }

            else
            {
              v150 = *(v147 + 80);
              v149 = (v147 + 80);
              v151 = *(v149 - 10);
              v152 = v151 < v150;
              if (v151 == v150)
              {
                v152 = *(v149 - 1) < v149[4];
              }

              if (v152)
              {
                v148 = v149;
                v142 = 2 * v142 + 2;
              }

              else
              {
                v142 = (2 * v142) | 1;
              }
            }

            v153 = *v148;
            *(v146 + 8) = *(v148 + 2);
            *v146 = v153;
            v154 = *(v148 + 2);
            v148[2] = 0.0;
            v155 = *(v146 + 16);
            *(v146 + 16) = v154;

            v156 = *(v148 + 3);
            v148[3] = 0.0;
            v157 = *(v146 + 24);
            *(v146 + 24) = v156;

            *(v146 + 32) = v148[4];
            v146 = v148;
          }

          while (v142 <= ((v141 - 2) >> 1));
          v158 = a2 - 5;
          if (v148 == a2 - 5)
          {
            *(v148 + 2) = v212;
            *v148 = v210;
            v182 = *(v148 + 2);
            *(v148 + 2) = v144;

            v181 = *(v148 + 3);
            *(v148 + 3) = v143;
            goto LABEL_176;
          }

          v159 = *v158;
          *(v148 + 2) = *(a2 - 8);
          *v148 = v159;
          v160 = *(a2 - 3);
          *(a2 - 3) = 0.0;
          v161 = *(v148 + 2);
          *(v148 + 2) = v160;

          v162 = *(a2 - 2);
          *(a2 - 2) = 0.0;
          v163 = *(v148 + 3);
          *(v148 + 3) = v162;

          v148[4] = *(a2 - 1);
          *(a2 - 8) = v212;
          *v158 = v210;
          v164 = *(a2 - 3);
          *(a2 - 3) = v144;

          v165 = *(a2 - 2);
          *(a2 - 2) = v143;

          *(a2 - 1) = v145;
          v166 = v148 - v7 + 40;
          if (v166 >= 41)
          {
            v167 = (-2 - 0x3333333333333333 * (v166 >> 3)) >> 1;
            v168 = v7 + 40 * v167;
            v169 = *v148;
            v145 = v148[4];
            v170 = *v168 < *v148;
            if (*v168 == *v148)
            {
              v170 = *(v168 + 32) < v145;
            }

            if (v170)
            {
              v171 = *(v148 + 4);
              v172 = *(v148 + 2);
              v208 = *(v148 + 3);
              v148[2] = 0.0;
              v148[3] = 0.0;
              do
              {
                v173 = v148;
                v148 = v168;
                v174 = *v168;
                *(v173 + 2) = *(v148 + 2);
                *v173 = v174;
                v175 = *(v148 + 2);
                v148[2] = 0.0;
                v176 = *(v173 + 2);
                *(v173 + 2) = v175;

                v177 = *(v148 + 3);
                v148[3] = 0.0;
                v178 = *(v173 + 3);
                *(v173 + 3) = v177;

                v173[4] = v148[4];
                if (!v167)
                {
                  break;
                }

                v167 = (v167 - 1) >> 1;
                v168 = v7 + 40 * v167;
                v179 = *v168 < v169;
                if (*v168 == v169)
                {
                  v179 = *(v168 + 32) < v145;
                }
              }

              while (v179);
              *v148 = v169;
              *(v148 + 4) = v171;
              v180 = *(v148 + 2);
              *(v148 + 2) = v172;

              v181 = *(v148 + 3);
              *(v148 + 3) = v208;
LABEL_176:

              v148[4] = v145;
            }
          }
        }

        a2 -= 5;
        if (v141-- <= 2)
        {
          return;
        }

        continue;
      }
    }

    v11 = v9 >> 1;
    v12 = v7 + 40 * (v9 >> 1);
    v13 = (a2 - 5);
    if (v8 < 0x1401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(v12, v7, v13);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(v7, v12, v13);
      v14 = v7 + 40 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>((v7 + 40), (v14 - 40), (a2 - 10));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>((v7 + 80), (v14 + 40), (a2 - 15));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>((v14 - 40), v12, v14 + 40);
      v211 = *(v7 + 8);
      v209 = *v7;
      v15 = *(v7 + 16);
      v16 = *(v7 + 24);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v17 = *(v7 + 32);
      v18 = *(v12 + 8);
      *v7 = *v12;
      *(v7 + 8) = v18;
      v19 = *(v12 + 16);
      *(v12 + 16) = 0;
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      v21 = *(v12 + 24);
      *(v12 + 24) = 0;
      v22 = *(v7 + 24);
      *(v7 + 24) = v21;

      *(v7 + 32) = *(v12 + 32);
      *(v12 + 8) = v211;
      *v12 = v209;
      v23 = *(v12 + 16);
      *(v12 + 16) = v15;

      v24 = *(v12 + 24);
      *(v12 + 24) = v16;

      *(v12 + 32) = v17;
    }

    --a3;
    v25 = *v7;
    v206 = a3;
    if (a4)
    {
      v26 = *(v7 + 32);
    }

    else
    {
      v27 = *(v7 - 40);
      v26 = *(v7 + 32);
      v93 = v27 == v25;
      v28 = v27 < v25;
      if (v93)
      {
        v28 = *(v7 - 8) < v26;
      }

      if (!v28)
      {
        v55 = *(v7 + 4);
        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v58 = *(a2 - 10);
        v93 = v25 == v58;
        v59 = v25 < v58;
        if (v93)
        {
          v59 = v26 < *(a2 - 1);
        }

        if (v59)
        {
          a1 = v7;
          do
          {
            v60 = *(a1 + 10);
            a1 += 5;
            v61 = v25 < v60;
            if (v25 == v60)
            {
              v61 = v26 < a1[4];
            }
          }

          while (!v61);
        }

        else
        {
          v62 = (v7 + 40);
          do
          {
            a1 = v62;
            if (v62 >= a2)
            {
              break;
            }

            v63 = *v62;
            v64 = v26 < a1[4];
            v93 = v25 == v63;
            v65 = v25 < v63;
            if (!v93)
            {
              v64 = v65;
            }

            v62 = a1 + 5;
          }

          while (!v64);
        }

        v66 = a2;
        if (a1 < a2)
        {
          v66 = a2;
          do
          {
            v67 = *(v66 - 10);
            v66 -= 5;
            v68 = v25 < v67;
            if (v25 == v67)
            {
              v68 = v26 < v66[4];
            }
          }

          while (v68);
        }

        while (a1 < v66)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, v66);
          do
          {
            v69 = *(a1 + 10);
            a1 += 5;
            v70 = v25 < v69;
            if (v25 == v69)
            {
              v70 = v26 < a1[4];
            }
          }

          while (!v70);
          do
          {
            v71 = *(v66 - 10);
            v66 -= 5;
            v72 = v25 < v71;
            if (v25 == v71)
            {
              v72 = v26 < v66[4];
            }
          }

          while (v72);
        }

        if (a1 - 5 != v7)
        {
          v73 = *(a1 - 5);
          *(v7 + 8) = *(a1 - 8);
          *v7 = v73;
          v74 = *(a1 - 3);
          *(a1 - 3) = 0.0;
          v75 = *(v7 + 16);
          *(v7 + 16) = v74;

          v76 = *(a1 - 2);
          *(a1 - 2) = 0.0;
          v77 = *(v7 + 24);
          *(v7 + 24) = v76;

          *(v7 + 32) = *(a1 - 1);
        }

        *(a1 - 10) = v25;
        *(a1 - 36) = v55;
        v78 = *(a1 - 3);
        *(a1 - 3) = v57;

        v79 = *(a1 - 2);
        *(a1 - 2) = v56;

        a4 = 0;
        *(a1 - 1) = v26;
        goto LABEL_1;
      }
    }

    v29 = 0;
    v30 = *(v7 + 4);
    v32 = *(v7 + 16);
    v31 = *(v7 + 24);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    do
    {
      v33 = *(v7 + v29 + 40);
      v34 = *(v7 + v29 + 72) < v26;
      v93 = v33 == v25;
      v35 = v33 < v25;
      if (!v93)
      {
        v34 = v35;
      }

      v29 += 40;
    }

    while (v34);
    v36 = (v7 + v29);
    v37 = a2;
    if (v29 == 40)
    {
      v37 = a2;
      do
      {
        if (v36 >= v37)
        {
          break;
        }

        v40 = *(v37 - 10);
        v37 -= 5;
        v41 = v40 < v25;
        if (v40 == v25)
        {
          v41 = v37[4] < v26;
        }
      }

      while (!v41);
    }

    else
    {
      do
      {
        v38 = *(v37 - 10);
        v37 -= 5;
        v39 = v38 < v25;
        if (v38 == v25)
        {
          v39 = v37[4] < v26;
        }
      }

      while (!v39);
    }

    a1 = v36;
    if (v36 < v37)
    {
      v42 = v37;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, v42);
        do
        {
          v43 = *(a1 + 10);
          a1 += 5;
          v44 = v43 < v25;
          if (v43 == v25)
          {
            v44 = a1[4] < v26;
          }
        }

        while (v44);
        do
        {
          v45 = *(v42 - 10);
          v42 -= 5;
          v46 = v45 < v25;
          if (v45 == v25)
          {
            v46 = v42[4] < v26;
          }
        }

        while (!v46);
      }

      while (a1 < v42);
    }

    if (a1 - 5 != v7)
    {
      v47 = *(a1 - 5);
      *(v7 + 8) = *(a1 - 8);
      *v7 = v47;
      v48 = *(a1 - 3);
      *(a1 - 3) = 0.0;
      v49 = *(v7 + 16);
      *(v7 + 16) = v48;

      v50 = *(a1 - 2);
      *(a1 - 2) = 0.0;
      v51 = *(v7 + 24);
      *(v7 + 24) = v50;

      *(v7 + 32) = *(a1 - 1);
    }

    *(a1 - 10) = v25;
    *(a1 - 36) = v30;
    v52 = *(a1 - 3);
    *(a1 - 3) = v32;

    v53 = *(a1 - 2);
    *(a1 - 2) = v31;

    *(a1 - 1) = v26;
    a3 = v206;
    if (v36 < v37)
    {
      goto LABEL_50;
    }

    v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *>(v7, a1 - 5);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *>(a1, a2))
    {
      if (!v54)
      {
LABEL_50:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,false>(v7, a1 - 5, v206, a4 & 1);
        a4 = 0;
      }

      goto LABEL_1;
    }

    a2 = a1 - 5;
    if (v54)
    {
      return;
    }
  }

  if (v9 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(v7, (v7 + 40), (a2 - 5));
    return;
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(v7, (v7 + 40), v7 + 80, v7 + 120, (a2 - 5));
      return;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(v7, (v7 + 40), v7 + 80);
  v81 = *(a2 - 10);
  v80 = a2 - 5;
  v82 = *(v7 + 80);
  v83 = v81 < v82;
  if (v81 == v82)
  {
    v83 = v80[4] < *(v7 + 112);
  }

  if (v83)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>((v7 + 80), v80);
    v84 = *(v7 + 80);
    v85 = *(v7 + 40);
    v93 = v84 == v85;
    v86 = v84 < v85;
    if (v93)
    {
      v86 = *(v7 + 112) < *(v7 + 72);
    }

    if (v86)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>((v7 + 40), (v7 + 80));
      v87 = *(v7 + 40);
      v93 = v87 == *v7;
      v88 = v87 < *v7;
      if (v93)
      {
        v88 = *(v7 + 72) < *(v7 + 32);
      }

      if (v88)
      {
        v89 = (v7 + 40);
        v90 = v7;
        goto LABEL_98;
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(uint64_t *a1, uint64_t *a2)
{
  v14 = *a1;
  v15 = *(a1 + 2);
  v4 = a1[2];
  v5 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  v6 = a1[4];
  v7 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v7;
  v8 = a2[2];
  a2[2] = 0;
  v9 = a1[2];
  a1[2] = v8;

  v10 = a2[3];
  a2[3] = 0;
  v11 = a1[3];
  a1[3] = v10;

  a1[4] = a2[4];
  *a2 = v14;
  *(a2 + 2) = v15;
  v12 = a2[2];
  a2[2] = v4;

  v13 = a2[3];
  a2[3] = v5;

  a2[4] = v6;
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(double *a1, double *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *a2;
  v7 = a2[4];
  v8 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v8 = v7 < a1[4];
  }

  v9 = *a3 == v6;
  v10 = *a3 < v6;
  if (v9)
  {
    v10 = *(a3 + 32) < v7;
  }

  if (v8)
  {
    if (v10)
    {
LABEL_11:
      v12 = a3;
LABEL_17:

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, v12);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, a2);
    v11 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v11 = *(a3 + 32) < a2[4];
    }

    if (v11)
    {
      a1 = a2;
      goto LABEL_11;
    }
  }

  else if (v10)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a2, a3);
    v13 = *a2 < *v5;
    if (*a2 == *v5)
    {
      v13 = a2[4] < v5[4];
    }

    if (v13)
    {
      a1 = v5;
      v12 = a2;
      goto LABEL_17;
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(a1, a2, a3);
  v10 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v10 = *(a4 + 32) < *(a3 + 32);
  }

  if (v10)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a3, a4);
    v11 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v11 = *(a3 + 32) < a2[4];
    }

    if (v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a2, a3);
      v12 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v12 = a2[4] < a1[4];
      }

      if (v12)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, a2);
      }
    }
  }

  v13 = *a5 < *a4;
  if (*a5 == *a4)
  {
    v13 = *(a5 + 32) < *(a4 + 32);
  }

  if (v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a4, a5);
    v14 = *a4 < *a3;
    if (*a4 == *a3)
    {
      v14 = *(a4 + 32) < *(a3 + 32);
    }

    if (v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a3, a4);
      v15 = *a3 < *a2;
      if (*a3 == *a2)
      {
        v15 = *(a3 + 32) < a2[4];
      }

      if (v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a2, a3);
        v16 = *a2 < *a1;
        if (*a2 == *a1)
        {
          v16 = a2[4] < a1[4];
        }

        if (v16)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *>(double *a1, double *a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(a1, a1 + 5, (a2 - 5));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(a1, a1 + 5, (a1 + 10));
        v30 = *(a2 - 10);
        v29 = a2 - 5;
        v31 = *(v3 + 20);
        v32 = v30 < v31;
        if (v30 == v31)
        {
          v32 = v29[4] < v3[14];
        }

        if (!v32)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(v3 + 10, v29);
        v33 = *(v3 + 20);
        v34 = *(v3 + 10);
        v6 = v33 == v34;
        v35 = v33 < v34;
        if (v6)
        {
          v35 = v3[14] < v3[9];
        }

        if (!v35)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(v3 + 5, v3 + 10);
        v36 = *(v3 + 10);
        v6 = v36 == *v3;
        v37 = v36 < *v3;
        if (v6)
        {
          v37 = v3[9] < v3[4];
        }

        if (!v37)
        {
          return 1;
        }

        v8 = (v3 + 5);
        a1 = v3;
LABEL_8:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<BreakPoint *&,BreakPoint *&>(a1, v8);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(a1, a1 + 5, (a1 + 10), (a1 + 15), (a2 - 5));
        return 1;
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
      v5 = *(a2 - 10);
      v6 = v5 == *a1;
      v7 = v5 < *a1;
      if (v6)
      {
        v7 = *(a2 - 1) < a1[4];
      }

      if (!v7)
      {
        return 1;
      }

      v8 = (a2 - 5);
      goto LABEL_8;
    }
  }

  v9 = a1 + 10;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,BreakPoint *,0>(a1, a1 + 5, (a1 + 10));
  v10 = v3 + 15;
  if (v3 + 15 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    v14 = v10[4];
    v15 = *v10 < *v9;
    if (*v10 == *v9)
    {
      v15 = v14 < v9[4];
    }

    if (v15)
    {
      v16 = *(v10 + 4);
      v17 = *(v10 + 2);
      v39 = *(v10 + 3);
      v18 = v11;
      v10[2] = 0.0;
      v10[3] = 0.0;
      while (1)
      {
        v19 = (v3 + v18);
        v19[15] = *(v3 + v18 + 80);
        *(v19 + 32) = *(v3 + v18 + 88);
        v20 = *(v3 + v18 + 96);
        v19[12] = 0.0;
        v21 = *(v3 + v18 + 136);
        *(v19 + 17) = v20;

        v22 = *(v3 + v18 + 104);
        v19[13] = 0.0;
        v23 = *(v3 + v18 + 144);
        *(v19 + 18) = v22;

        v19[19] = v19[14];
        if (v18 == -80)
        {
          break;
        }

        v24 = *(v19 + 10);
        v6 = v13 == v24;
        v25 = v13 < v24;
        if (v6)
        {
          v25 = v14 < v19[9];
        }

        v18 -= 40;
        if (!v25)
        {
          v26 = v3 + v18 + 120;
          goto LABEL_26;
        }
      }

      v26 = v3;
LABEL_26:
      *v26 = v13;
      *(v26 + 4) = v16;
      v27 = *(v26 + 16);
      *(v26 + 16) = v17;

      v28 = *(v26 + 24);
      *(v26 + 24) = v39;

      *(v26 + 32) = v14;
      if (++v12 == 8)
      {
        return v10 + 5 == a2;
      }
    }

    v9 = v10;
    v11 += 40;
    v10 += 5;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t CRCharacterNormalizer::normalizedCharacter(uint64_t a1)
{
  if (u_isWhitespace(a1))
  {
    return 95;
  }

  result = 57344;
  if ((a1 - 48) >= 0xA && (a1 - 188) >= 3 && a1 != 8585 && (a1 & 0xFFFFFFF0) != 0x2150)
  {
    if (u_charType(a1) == 20)
    {
      return 57345;
    }

    else if (u_charType(a1) == 21)
    {
      return 57346;
    }

    else if (a1 <= 0x3F && ((1 << a1) & 0x8C00502200000000) != 0)
    {
      return 57347;
    }

    else
    {
      v3 = u_charType(a1);
      result = 57348;
      if (a1 != 63743 && ((1 << v3) & 0x3FF80000) == 0)
      {
        v4 = 1 << u_charType(a1);
        result = a1;
        if ((v4 & 0x3E) != 0)
        {
          LODWORD(result) = MEMORY[0x1B8C75180](a1);
          if ((result - 97) >= 0x1A)
          {
            return 57349;
          }

          else
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

void *CRCharacterNormalizer::CRCharacterNormalizer(void *result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  result[9] = 0;
  result[10] = 0;
  return result;
}

{
  *result = a3;
  result[9] = 0;
  result[10] = 0;
  return result;
}

void CRCharacterNormalizer::~CRCharacterNormalizer(CRCharacterNormalizer *this)
{
  v11 = 0;
  v2 = *(this + 10);
  if (v2 == 2)
  {
    v3 = *this;
    v7 = *(this + 2);
    v8 = *(this + 3);
    if (v7)
    {
      u_isWhitespace(v7);
    }

    v4 = CRCharacterNormalizer::normalizedCharacter(v8);
    v5 = 56;
    v6 = 32;
  }

  else if (v2 == 1)
  {
    v3 = *this;
    v4 = CRCharacterNormalizer::normalizedCharacter(*(this + 2));
    v5 = 48;
    v6 = 24;
  }

  else
  {
    if (v2 < 3)
    {
      return;
    }

    v3 = *this;
    v9 = *(this + 3);
    v10 = *(this + 4);
    if (v9)
    {
      u_isWhitespace(v9);
    }

    v4 = CRCharacterNormalizer::normalizedCharacter(v10);
    v5 = 64;
    v6 = 40;
  }

  (*(v3 + 16))(v3, v4, *(this + v6), *(this + v5), &v11);
}

uint64_t CRCharacterNormalizer::push(CRCharacterNormalizer *this, unsigned int c)
{
  v17 = 0;
  if (HIWORD(c))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if ((*(this + 10) - 1) >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = *(this + 10) - 1;
  }

  result = u_isWhitespace(c);
  if (result)
  {
    v7 = *(this + 10);
    if (v7 < 1)
    {
      goto LABEL_12;
    }

    result = u_isWhitespace(*(this + v5 + 2));
    if (result)
    {
      *(this + v5 + 6) += v4;
      return result;
    }
  }

  v7 = *(this + 10);
LABEL_12:
  if (v7 == 1)
  {
    *(this + 4) = *(this + 6) + *(this + 3);
    *(this + 7) = v4;
    *(this + 3) = c;
    v8 = *this;
    v9 = CRCharacterNormalizer::normalizedCharacter(*(this + 2));
    result = (*(v8 + 16))(v8, v9, *(this + 3), *(this + 6), &v17);
    v7 = *(this + 10);
    goto LABEL_18;
  }

  if (v7)
  {
    if (v7 > 2)
    {
      v10 = *(this + 5);
      *(this + 3) = *(this + 4);
      *(this + 4) = v10;
      v11 = *(this + 8);
      *(this + 6) = *(this + 7);
      *(this + 7) = v11;
      v12 = *(this + 3);
      v13 = *(this + 4);
      *(this + 2) = v12;
      *(this + 3) = v13;
      goto LABEL_20;
    }

LABEL_18:
    if (v7 < 2)
    {
      goto LABEL_25;
    }

    v10 = *(this + 4);
    v11 = *(this + 7);
    v12 = *(this + 2);
    v13 = *(this + 3);
LABEL_20:
    *(this + 5) = v11 + v10;
    *(this + 8) = v4;
    *(this + 4) = c;
    v14 = *this;
    if (v12)
    {
      isWhitespace = u_isWhitespace(v12);
      if (c)
      {
        if (!isWhitespace)
        {
          u_isWhitespace(c);
        }
      }
    }

    v16 = CRCharacterNormalizer::normalizedCharacter(v13);
    result = (*(v14 + 16))(v14, v16, *(this + 4), *(this + 7), &v17);
    v7 = *(this + 10);
    goto LABEL_25;
  }

  *(this + 3) = *(this + 9);
  *(this + 6) = v4;
  *(this + 2) = c;
LABEL_25:
  *(this + 10) = v7 + 1;
  return result;
}

void sub_1B41DA40C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B41DA5F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C73EF0](v2, 0x20C40960023A9);

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<CGPath const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1B41DA7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__7(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1B41DAA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPath const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void sub_1B41DB09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  applesauce::CF::ObjectRef<CGPath *>::~ObjectRef((v9 + 40));

  applesauce::CF::ObjectRef<CGPath *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_ea8_40c41_ZTSN10applesauce2CF9ObjectRefIP6CGPathEE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  if (v3)
  {
    result = CFRetain(*(a2 + 40));
  }

  v2[5] = v3;
  return result;
}

void __destroy_helper_block_ea8_40c41_ZTSN10applesauce2CF9ObjectRefIP6CGPathEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<CGPath *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1B41DB564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B41DB708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41DB9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41DBC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B41DBE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B41DC160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_atomic_property_(void *result, CFTypeRef *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2)
  {
    result = CFRetain(*a2);
  }

  *v2 = v3;
  return result;
}

void __assign_helper_atomic_property_(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1B41DC2F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B41DC4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41DC5E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B41DC834(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B41DCA64(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B41DCB7C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<CGPath const*>::~ObjectRef((v2 - 32));

  _Unwind_Resume(a1);
}

void sub_1B41DCF18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPath const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void sub_1B41DCFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPath const*>::~ObjectRef(va);

  _Unwind_Resume(a1);
}

void sub_1B41DD498(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *__copy_helper_atomic_property__127(void *result, CFTypeRef *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2)
  {
    result = CFRetain(*a2);
  }

  *v2 = v3;
  return result;
}

void __assign_helper_atomic_property__128(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B41DD6BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41DF75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CRDetectorPolygonExtractor::CRDetectorPolygonExtractor(CRDetectorPolygonExtractor *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
}

void CRDetectorPolygonExtractor::CRDetectorPolygonExtractor(CRDetectorPolygonExtractor *this, int a2, int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
}

void CRDetectorPolygonExtractor::~CRDetectorPolygonExtractor(CRDetectorPolygonExtractor *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void sub_1B41E59D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t CRDetectorPolygonExtractor::generatePivotCenters@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(a2 + 8) - 8) - **a2;
  v5 = *(result + 32);
  v6 = fmax(v5, ((v4 + 1) / *(result + 36)));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](a3, v6);
  }

  if (v4 >= v5)
  {
    CRDetectorPolygonExtractor::generateDensePolygonBar();
  }

  *(result + 24) = 0;
  return result;
}

void sub_1B41E5C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a11);
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void CRDetectorPolygonExtractor::smoothPivotCenters(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = (a2[1] - *a2) >> 4;
  v4 = v3 - 2;
  v5 = (*a2 + 40);
  v6 = v3 - 4;
  do
  {
    if (v4 >= 3)
    {
      v7 = *v5;
      v8 = v6;
      v9 = v5;
      v10 = v5;
      do
      {
        v11 = *(v9 - 2) * 12.0 + *(v9 - 4) * -3.0 + v7 * 17.0;
        v12 = v10[2];
        v10 += 2;
        v7 = v12;
        *v9 = (v11 + v12 * 12.0 + v9[4] * -3.0) / 35.0;
        v9 = v10;
        --v8;
      }

      while (v8);
    }

    ++v2;
  }

  while (v2 != 4);
}

void CRDetectorPolygonExtractor::generatePivotBars(uint64_t a1, double **a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 4;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  std::vector<CGPoint>::resize((a1 + 56), v6);
  std::vector<CGPoint>::resize((a1 + 80), v6);
  if (v4 != v5)
  {
    v7 = *a2;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = *(a1 + 80);
    v11 = v6 - 1;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v12 = (v10 + 8);
    v13 = (v9 + 8);
    v14 = v7 + 1;
    v15 = v6;
    do
    {
      v16 = *v14 + -v8 * 0.45;
      *(v13 - 1) = *(v14 - 1);
      *v13 = v16;
      v17 = *v14 + v8 * 0.65;
      *(v12 - 1) = *(v14 - 1);
      *v12 = v17;
      v12 += 2;
      v13 += 2;
      v14 += 2;
      --v15;
    }

    while (v15);
    v18 = 0;
    v19 = (v9 + 8);
    v20 = (v10 + 8);
    v21 = 0.0;
    do
    {
      if (v11 > v18)
      {
        v21 = atan2(-(v7[3] - v7[1]), v7[2] - *v7);
      }

      if (v18)
      {
        if (v11 == v18)
        {
          *(a1 + 48) = v21;
        }
      }

      else
      {
        *(a1 + 44) = v21;
      }

      v22 = __sincosf_stret(v21 * -0.0);
      v23 = v7[1];
      v24 = *(v19 - 1) - *v7;
      v25 = *v19 - v23;
      *(v19 - 1) = *v7 + v24 * v22.__cosval - v25 * v22.__sinval;
      *v19 = v23 + v25 * v22.__cosval + v24 * v22.__sinval;
      v26 = *v7;
      v27 = v7[1];
      v7 += 2;
      v28 = *(v20 - 1) - v26;
      v29 = *v20 - v27;
      ++v18;
      *(v20 - 1) = v26 + v28 * v22.__cosval - v29 * v22.__sinval;
      *v20 = v27 + v29 * v22.__cosval + v28 * v22.__sinval;
      v19 += 2;
      v20 += 2;
    }

    while (v6 != v18);
  }
}

void CRDetectorPolygonExtractor::generateEdgePoints(uint64_t a1, uint64_t a2, double **a3)
{
  v5 = a1;
  v6 = **a2;
  v7 = *a3;
  v8 = **a3 - v6;
  v9 = *(a1 + 44);
  v10 = tanf(v9);
  v11 = *(v5 + 40);
  v12 = v7[1] + v8 * v10;
  v13 = v12 - v11 * 0.45;
  v14 = __sincosf_stret(v9 * -0.0);
  v29[0] = (v6 - v6) * v14.__cosval - (v13 - v12) * v14.__sinval + v6;
  v29[1] = v12 + (v13 - v12) * v14.__cosval + (v6 - v6) * v14.__sinval;
  v15 = v12 + v11 * 0.65 - v12;
  v28[0] = (v6 - v6) * v14.__cosval - v15 * v14.__sinval + v6;
  v28[1] = v12 + v15 * v14.__cosval + (v6 - v6) * v14.__sinval;
  v16 = *(*(a2 + 8) - 8) + v11 * 0.3;
  v17 = a3[1];
  v18 = *(v17 - 2) - v16;
  v19 = *(v5 + 48);
  v20 = *(v17 - 1) + v18 * tanf(v19);
  v21 = v20 - v11 * 0.45;
  v22 = __sincosf_stret(v19 * -0.0);
  *&v27 = v16 + (v16 - v16) * v22.__cosval - (v21 - v20) * v22.__sinval;
  *(&v27 + 1) = v20 + (v21 - v20) * v22.__cosval + (v16 - v16) * v22.__sinval;
  v23 = v20 + v11 * 0.65 - v20;
  *&v26 = v16 + (v16 - v16) * v22.__cosval - v23 * v22.__sinval;
  *(&v26 + 1) = v20 + v23 * v22.__cosval + (v16 - v16) * v22.__sinval;
  v24 = v5 + 56;
  std::vector<CGPoint>::insert((v5 + 56), *(v5 + 56), v29);
  v25 = *(v5 + 80);
  v5 += 80;
  std::vector<CGPoint>::insert(v5, v25, v28);
  std::vector<CGPoint>::push_back[abi:ne200100](v24, &v27);
  std::vector<CGPoint>::push_back[abi:ne200100](v5, &v26);
}

void std::vector<CGPoint>::insert(void *a1, char *__src, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v14);
    }

    v16 = (16 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 3;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, a1[1] - __src);
    v20 = *a1;
    v21 = v16 + a1[1] - __src + 16;
    a1[1] = __src;
    v22 = (__src - v20);
    v23 = v16 - (__src - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 16;
  }

  else
  {
    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 16;
      *v6 = *(v6 - 1);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 16, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || __src > a3;
    v18 = 16;
    if (v17)
    {
      v18 = 0;
    }

    *__src = *&a3[v18];
  }
}

void sub_1B41E6298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double CRDetectorPolygonExtractor::smoothPivotAngles(CRDetectorPolygonExtractor *this)
{
  v3 = *(this + 7);
  v4 = *(this + 8) - v3;
  if (v4 >= 0x21)
  {
    v13 = v1;
    v14 = v2;
    if (v4 == *(this + 11) - *(this + 10) && ((v4 >> 4) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = 1;
      v7 = 40;
      do
      {
        v8 = (v3 + v7);
        v9 = (*(this + 10) + v7);
        v11 = *(v8 - 3);
        v12 = *(v9 - 3);
        ++v6;
        CRDetectorUtils::smoothAngleForPointPairBetweenNeighbors(&v11, *(v8 - 5), *(v8 - 4), *(v9 - 5), *(v9 - 4), *(v8 - 1), *v8, *(v9 - 1), *v9, 0.5);
        *(v8 - 3) = v11;
        result = *&v12;
        *(*(this + 10) + v7 - 24) = v12;
        v3 = *(this + 7);
        v7 += 16;
      }

      while (((*(this + 8) - v3) >> 4) - 1 > v6);
    }
  }

  return result;
}

int32x2_t CRDetectorPolygonExtractor::composePivots(CRDetectorPolygonExtractor *this)
{
  v2 = (*(this + 8) - *(this + 7)) >> 4;
  v3 = v2 - 2;
  std::vector<PixelPosition>::resize(this, 2 * (v2 - 2) + 4);
  v4 = *(this + 7);
  v5 = *this;
  **this = vmovn_s64(vcvtq_s64_f64(*v4));
  if (v2 >= 3)
  {
    v6 = (v5 + 8);
    v7 = &v4->f64[1];
    v8 = v2 - 2;
    do
    {
      v9 = *(v7 - 1);
      v10 = *(v6 - 2);
      if (v9 >= v10)
      {
        v10 = v9;
        v11 = *v7;
      }

      else
      {
        v11 = *(v6 - 1);
      }

      *v6 = v10;
      v6[1] = v11;
      v6 += 2;
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = v4[v2 - 1];
  v13 = *(this + 10);
  *(v5 + 8 * (v2 - 1)) = vuzp1q_s32(vcvtq_s64_f64(v12), vcvtq_s64_f64(v13[v2 - 1]));
  if (v2 >= 3)
  {
    v14 = (v5 + 8 * v2 + 8);
    f64 = v13[v2 - 3].f64;
    do
    {
      v16 = *(v14 - 2);
      if (*f64 <= v16)
      {
        v16 = *f64;
        v17 = f64[1];
      }

      else
      {
        v17 = *(v14 - 1);
      }

      *v14 = v16;
      v14[1] = v17;
      v14 += 2;
      f64 -= 2;
      --v3;
    }

    while (v3);
  }

  result = vmovn_s64(vcvtq_s64_f64(*v13));
  *(v5 + 16 * (v2 - 2) + 24) = result;
  return result;
}