void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_26B809BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t CLSHInfer::CLSHInfer(uint64_t result, int *a2)
{
  *(result + 152) = 0;
  *(result + 144) = a2;
  *(result + 160) = 0;
  *(result + 168) = 16;
  v2 = (a2 - *a2);
  if (*v2 < 9u)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = v2[4];
    if (v3)
    {
      LODWORD(v3) = *(a2 + v3);
    }
  }

  *(result + 8) = v3;
  v4 = (a2 - *a2);
  if (*v4 < 7u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[3];
    if (v5)
    {
      LODWORD(v5) = *(a2 + v5);
    }
  }

  *(result + 12) = v5;
  v6 = (a2 - *a2);
  v7 = *v6;
  v8 = (a2 + v6[2] + *(a2 + v6[2]));
  *(result + 48) = *v8;
  *(result + 136) = v8 + 1;
  if (v7 < 0x19)
  {
    *(result + 120) = 4;
    *(result + 128) = 4;
    if (v7 < 0xB)
    {
      *(result + 56) = 0;
LABEL_39:
      *(result + 64) = 0;
LABEL_40:
      *(result + 72) = 0;
LABEL_41:
      *(result + 80) = 0;
LABEL_42:
      *(result + 88) = 0;
LABEL_43:
      v17 = 0;
      *(result + 96) = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v9 = v6[12];
    if (v6[12])
    {
      v9 += a2 + *(a2 + v9);
    }

    *(result + 120) = v9 + 4;
    if (v7 < 0x1B)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6[13];
      if (v6[13])
      {
        v10 += a2 + *(a2 + v10);
      }
    }

    *(result + 128) = v10 + 4;
  }

  v11 = v6[5];
  if (v6[5])
  {
    v11 = *(a2 + v11);
  }

  *(result + 56) = v11;
  if (v7 < 0xD)
  {
    goto LABEL_39;
  }

  v12 = v6[6];
  if (v6[6])
  {
    v12 = *(a2 + v12);
  }

  *(result + 64) = v12;
  if (v7 < 0xF)
  {
    goto LABEL_40;
  }

  v13 = v6[7];
  if (v6[7])
  {
    v13 = *(a2 + v13);
  }

  *(result + 72) = v13;
  if (v7 < 0x11)
  {
    goto LABEL_41;
  }

  v14 = v6[8];
  if (v6[8])
  {
    v14 = *(a2 + v14);
  }

  *(result + 80) = v14;
  if (v7 < 0x13)
  {
    goto LABEL_42;
  }

  v15 = v6[9];
  if (v6[9])
  {
    v15 = *(a2 + v15);
  }

  *(result + 88) = v15;
  if (v7 < 0x15)
  {
    goto LABEL_43;
  }

  v16 = v6[10];
  if (v6[10])
  {
    v16 = *(a2 + v16);
  }

  *(result + 96) = v16;
  if (v7 < 0x17)
  {
    v17 = 0;
  }

  else
  {
    v17 = v6[11];
    if (v17)
    {
      v17 = *(a2 + v17);
    }
  }

LABEL_44:
  *(result + 104) = v17;
  *result = 0x800000003;
  *(result + 16) = 0;
  *(result + 20) = 0x4E2000000002;
  *(result + 28) = xmmword_26B816E40;
  v18 = *a2;
  v19 = -v18;
  v20 = (a2 - v18);
  v21 = *v20;
  if (v21 < 0x23)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v20[17];
    if (!v22)
    {
      goto LABEL_113;
    }

    v23 = (v22 + a2 + *(v22 + a2));
    v24 = (v23 - *v23);
    if (*v24 >= 5u && (v25 = v24[2]) != 0)
    {
      v26 = *(v23 + v25);
    }

    else
    {
      v26 = 3;
    }

    *result = v26;
    v27 = (a2 - *a2);
    if (*v27 < 0x23u)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27[17];
      if (v28)
      {
        v28 = (v28 + a2 + *(v28 + a2));
      }
    }

    v29 = (v28 - *v28);
    if (*v29 >= 7u && (v30 = v29[3]) != 0)
    {
      v31 = *(v28 + v30);
    }

    else
    {
      v31 = 8;
    }

    *(result + 4) = v31;
    v32 = (a2 - *a2);
    v33 = *v32;
    if (v33 < 0x23)
    {
      v22 = 0;
    }

    else
    {
      v22 = v32[17];
      if (v32[17])
      {
        v22 = (v22 + a2 + *(v22 + a2));
      }
    }

    v34 = (v22 - *v22);
    LODWORD(v22) = *v34 >= 0x17u && (v35 = v34[11]) != 0 && *(v22 + v35) != 0;
    *(result + 16) = v22;
    if (v33 < 0x23)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32[17];
      if (v36)
      {
        v36 = (v36 + a2 + *(v36 + a2));
      }
    }

    v37 = (v36 - *v36);
    if (*v37 >= 9u && (v38 = v37[4]) != 0)
    {
      v39 = *(v36 + v38);
    }

    else
    {
      v39 = 2;
    }

    *(result + 20) = v39;
    v40 = (a2 - *a2);
    if (*v40 < 0x23u)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40[17];
      if (v41)
      {
        v41 = (v41 + a2 + *(v41 + a2));
      }
    }

    v42 = (v41 - *v41);
    if (*v42 >= 0xBu && (v43 = v42[5]) != 0)
    {
      v44 = *(v41 + v43);
    }

    else
    {
      v44 = 20000;
    }

    *(result + 24) = v44;
    v45 = *a2;
    v46 = a2 - v45;
    v21 = *(a2 - v45);
    if (v21 < 0x23)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(v46 + 17);
      if (*(v46 + 17))
      {
        v47 = (v47 + a2 + *(v47 + a2));
      }
    }

    v48 = (v47 - *v47);
    v49 = 10.0;
    if (*v48 >= 0xDu)
    {
      v50 = v48[6];
      if (v50)
      {
        v49 = *(v47 + v50);
      }
    }

    *(result + 28) = v49;
    if (v21 < 0x23)
    {
      v51 = 0;
    }

    else
    {
      v51 = *(v46 + 17);
      if (*(v46 + 17))
      {
        v51 = (v51 + a2 + *(v51 + a2));
      }
    }

    v52 = (v51 - *v51);
    v53 = 10.0;
    if (*v52 >= 0xFu)
    {
      v54 = v52[7];
      if (v54)
      {
        v53 = *(v51 + v54);
      }
    }

    *(result + 32) = v53;
    if (v21 < 0x23)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(v46 + 17);
      if (*(v46 + 17))
      {
        v55 = (v55 + a2 + *(v55 + a2));
      }
    }

    v56 = (v55 - *v55);
    v57 = 1.0;
    if (*v56 >= 0x13u)
    {
      v58 = v56[9];
      if (v58)
      {
        v57 = *(v55 + v58);
      }
    }

    *(result + 36) = v57;
    if (v21 < 0x23)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(v46 + 17);
      if (v59)
      {
        v59 = (v59 + a2 + *(v59 + a2));
      }
    }

    v19 = -v45;
    v60 = (v59 - *v59);
    v61 = 0;
    if (*v60 >= 0x15u)
    {
      v62 = v60[10];
      if (v62)
      {
        v61 = *(v59 + v62);
      }
    }

    *(result + 40) = v61;
  }

  if (v21 < 0x1D)
  {
    goto LABEL_117;
  }

LABEL_113:
  if (!*(a2 + v19 + 28))
  {
LABEL_117:
    *(result + 112) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v63 = (a2 + *(a2 + v19 + 28) + *(a2 + *(a2 + v19 + 28)));
  v64 = (v63 + *(v63 - *v63 + 8));
  *result = *(v64 + *v64);
  v65 = (a2 - *a2);
  if (*v65 < 0x1Du)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65[14];
    if (v66)
    {
      v66 = (v66 + a2 + *(v66 + a2));
    }
  }

  v71 = (v66 - *v66);
  if (*v71 >= 5u && (v72 = v71[2]) != 0)
  {
    v73 = *(v66 + v72);
  }

  else
  {
    v73 = 0;
  }

  *(result + 4) = v73;
  v74 = (a2 - *a2);
  if (*v74 < 0x1Du)
  {
    v75 = 0;
  }

  else
  {
    v75 = v74[14];
    if (v75)
    {
      v75 = (v75 + a2 + *(v75 + a2));
    }
  }

  v76 = (v75 - *v75);
  if (*v76 >= 7u && (v77 = v76[3]) != 0)
  {
    v78 = v75 + v77 + *(v75 + v77);
  }

  else
  {
    v78 = 0;
  }

  *(result + 112) = v78 + 4;
  if (v22)
  {
LABEL_118:
    LODWORD(v5) = v5 + 2;
  }

LABEL_119:
  *(result + 8) = v5;
  v67 = (a2 - *a2);
  v68 = *v67;
  if (v68 >= 0x27)
  {
    if (v67[19])
    {
      v69 = a2 + v67[19] + *(a2 + v67[19]);
      *(result + 152) = &v69[*(v69 + 1) + 4];
    }

    if (v68 >= 0x29)
    {
      if (v67[20])
      {
        v70 = a2 + v67[20] + *(a2 + v67[20]);
        *(result + 160) = &v70[*(v70 + 1) + 4];
      }
    }
  }

  return result;
}

void CLSHInfer::search_lsh_flatbuffer(int *a1@<X0>, const float *a2@<X1>, std::vector<int> *a3@<X8>)
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = (a1[1] * *a1);
  v7 = MEMORY[0x28223BE20]();
  __Y = (&v92 - v10);
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  if (*(v7 + 144))
  {
    bzero(&v92 - v10, 4 * v9);
    v96 = 0;
    v97 = 0;
    v98 = 0;
    std::vector<int>::reserve(a3, a1[6]);
    v12 = *a1;
    v13 = a1[1];
    v93 = a3;
    if (v13 >= 17 && v12 == 1)
    {
      v14 = 0;
      v15 = *(a1 + 14);
      do
      {
        for (i = 0; i != v13; ++i)
        {
          *v99 = -cblas_sdot(a1[2], a2, 1, (v15 + 4 * a1[2] * i), 1);
          *&v99[4] = i;
          *&v99[8] = v14;
          std::vector<std::pair<float,std::pair<int,int>>>::push_back[abi:ne200100](&v96, v99);
        }

        ++v14;
      }

      while (v14 < *a1);
    }

    else
    {
      cblas_sgemv(CblasRowMajor, CblasNoTrans, v12 * v13, a1[2], *(a1 + 9), *(a1 + 14), a1[2], a2, 1, *(a1 + 10), __Y, 1);
      v18 = *a1;
      if (*a1 >= 1)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = a1[1];
          if (v23 >= 1)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*(&__Y[j] + v20 * v23) >= 0.0)
              {
                v22 |= 1 << j;
              }

              else
              {
                v22 &= ~(1 << j);
              }
            }
          }

          v25 = *(a1 + 18);
          v26 = (v25 - *v25);
          if (*v26 >= 0x1Du && (v27 = v26[14]) != 0)
          {
            v28 = (v25 + v27 + *(v25 + v27));
          }

          else
          {
            v28 = 0;
          }

          v29 = (v28 - *v28);
          if (*v29 >= 9u && (v30 = v29[4]) != 0)
          {
            v31 = (v28 + v30 + *(v28 + v30));
          }

          else
          {
            v31 = 0;
          }

          if (v21 >= *v31)
          {
            __assert_rtn("Get", "flatbuffers.h", 257, "i < size()");
          }

          v32 = (&v31[v21 + 1] + v31[v21 + 1]);
          v33 = (v32 + *(v32 - *v32 + 6));
          v34 = *(v33 + *v33);
          if (v34 >= 1)
          {
            v35 = __Y;
            for (k = 0; k != v34; ++k)
            {
              v37 = (v32 - *v32);
              if (*v37 < 5u)
              {
                v38 = 0;
              }

              else
              {
                v38 = v37[2];
                if (v38)
                {
                  v38 = (v38 + v32 + *(v38 + v32));
                }
              }

              if (k >= *v38)
              {
                __assert_rtn("Get", "flatbuffers.h", 257, "i < size()");
              }

              v17.i32[0] = v38[k + 1] ^ v22;
              v39 = vcnt_s8(v17);
              v39.i16[0] = vaddlv_u8(v39);
              *v99 = v39.i32[0];
              *&v99[4] = v19 + k;
              *v94 = *v99;
              *&v94[8] = v21;
              *v95 = v39.i32[0];
              *&v95[4] = *&v94[4];
              std::vector<std::pair<float,std::pair<int,int>>>::push_back[abi:ne200100](&v96, v95);
            }

            v18 = *a1;
            __Y = v35;
          }

          ++v21;
          v20 += 4;
          v19 += 0x100000000;
        }

        while (v21 < v18);
      }
    }

    v40 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v97 - v96) >> 2));
    if (v97 == v96)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    v42 = v93;
    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,false>(v96, v97, v99, v41, 1);
    v43 = v96;
    if (v97 != v96)
    {
      v44 = 0;
      v45 = 0;
      while (1)
      {
        v46 = *(a1 + 18);
        v47 = (v46 - *v46);
        if (*v47 >= 0x1Du && (v48 = v47[14]) != 0)
        {
          v49 = (v46 + v48 + *(v46 + v48));
        }

        else
        {
          v49 = 0;
        }

        v50 = (v49 - *v49);
        if (*v50 >= 9u && (v51 = v50[4]) != 0)
        {
          v52 = (v49 + v51 + *(v49 + v51));
        }

        else
        {
          v52 = 0;
        }

        v53 = &v43[v44];
        v54 = *(v53 + 2);
        if (*v52 <= v54)
        {
          __assert_rtn("Get", "flatbuffers.h", 257, "i < size()");
        }

        v55 = (&v52[v54 + 1] + v52[v54 + 1]);
        v56 = (v55 - *v55);
        v57 = *v56;
        if (v57 >= 7 && v56[3])
        {
          v58 = (v55 + v56[3] + *(v55 + v56[3]));
        }

        else
        {
          v58 = 0;
        }

        v59 = *(v53 + 1);
        if (*v58 <= v59)
        {
LABEL_98:
          __assert_rtn("Get", "flatbuffers.h", 257, "i < size()");
        }

        v60 = v59;
        v61 = (&v58[v59 + 1] + v58[v59 + 1]);
        v62 = (v61 + *(v61 - *v61 + 4));
        v63 = v42->__end_ - v42->__begin_;
        v64 = *(v62 + *v62) + (v63 >> 2);
        v65 = a1[6];
        if (v64 >= v65)
        {
          break;
        }

        if (v57 < 7)
        {
          v66 = 0;
        }

        else
        {
          v66 = v56[3];
          if (v56[3])
          {
            v66 = (v66 + v55 + *(v66 + v55));
          }
        }

        if (*v66 <= v59)
        {
          goto LABEL_98;
        }

        v67 = (&v66[v60 + 1] + v66[v60 + 1]);
        v68 = (v67 - *v67);
        if (*v68 >= 5u && (v69 = v68[2]) != 0)
        {
          v70 = v67 + v69 + *(v67 + v69);
        }

        else
        {
          v70 = 0;
        }

        if (v57 >= 7 && (v71 = v56[3]) != 0)
        {
          v72 = (v55 + v71 + *(v55 + v71));
        }

        else
        {
          v72 = 0;
        }

        if (*v72 <= v59)
        {
          goto LABEL_98;
        }

        v73 = (&v72[v60 + 1] + v72[v60 + 1]);
        v74 = (v73 + *(v73 - *v73 + 4));
        v75 = (v74 + *v74);
        v76 = *v75;
        *v95 = v70 + 4;
        *v94 = &v75[v76 + 1];
        std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,flatbuffers::VectorIterator<int,int>,flatbuffers::VectorIterator<int,int>,std::back_insert_iterator<std::vector<int>>,0>(v95, v94, &v42->__begin_, v99);
        ++v45;
        v43 = v96;
        v44 += 12;
        if (0xAAAAAAAAAAAAAAABLL * ((v97 - v96) >> 2) <= v45)
        {
          goto LABEL_92;
        }
      }

      if (v57 < 7)
      {
        v77 = 0;
      }

      else
      {
        v77 = v56[3];
        if (v56[3])
        {
          v77 = (v77 + v55 + *(v77 + v55));
        }
      }

      if (*v77 <= v59)
      {
        __assert_rtn("Get", "flatbuffers.h", 257, "i < size()");
      }

      v78 = (&v77[v60 + 1] + v77[v60 + 1]);
      v79 = (v78 - *v78);
      if (*v79 >= 5u && (v80 = v79[2]) != 0)
      {
        v81 = v78 + v80 + *(v78 + v80);
      }

      else
      {
        v81 = 0;
      }

      if (v57 >= 7 && (v82 = v56[3]) != 0)
      {
        v83 = (v55 + v82 + *(v55 + v82));
      }

      else
      {
        v83 = 0;
      }

      if (*v83 <= v59)
      {
        __assert_rtn("Get", "flatbuffers.h", 257, "i < size()");
      }

      v84 = (&v83[v60 + 1] + v83[v60 + 1]);
      v85 = (v84 - *v84);
      if (*v85 >= 5u && (v86 = v85[2]) != 0)
      {
        v87 = v84 + v86 + *(v84 + v86);
      }

      else
      {
        v87 = 0;
      }

      *v95 = v81 + 4;
      *v94 = &v87[4 * (v65 - (v63 >> 2)) + 4];
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,flatbuffers::VectorIterator<int,int>,flatbuffers::VectorIterator<int,int>,std::back_insert_iterator<std::vector<int>>,0>(v95, v94, &v42->__begin_, v99);
    }

LABEL_92:
    if (*a1 >= 2)
    {
      begin = v42->__begin_;
      end = v42->__end_;
      v99[0] = 0;
      std::__sort<std::__less<int,int> &,int *>();
      v90 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v42->__begin_, v42->__end_);
      std::vector<int>::resize(v42, v90 - v42->__begin_);
    }

    if (v96)
    {
      v97 = v96;
      operator delete(v96);
    }
  }

  else
  {
    *v8 = 2;
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_26B80D214(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 128);
  if (v4)
  {
    *(v2 - 120) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<std::pair<float,std::pair<int,int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::pair<int,int>>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
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

void CLSHInfer::search(uint64_t a1, const float *a2, int a3, char *a4, _DWORD *a5)
{
  CLSHInfer::search_lsh_flatbuffer(a1, a2, &__p);
  begin = __p.__begin_;
  if (*a5)
  {
    goto LABEL_20;
  }

  v11 = (__p.__end_ - __p.__begin_) >> 2;
  v12 = *(a1 + 24);
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 144);
  v15 = (v14 - *v14);
  if (*v15 >= 0x1Fu && (v16 = v15[15]) != 0)
  {
    v17 = v14 + v16 + *(v14 + v16);
  }

  else
  {
    v17 = 0;
  }

  memset(&__p, 0, sizeof(__p));
  std::vector<long long>::vector[abi:ne200100](&__p, v13);
  if (v13 >= 1)
  {
    v18 = __p.__begin_;
    v19 = v13;
    v20 = begin;
    do
    {
      v21 = *v20++;
      *v18 = *&v17[8 * v21 + 4];
      v18 += 2;
      --v19;
    }

    while (v19);
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  CLSHInfer::rerank(a1, &__p, v13, a3, *(a1 + 168), a2, a5, &v30);
  v22 = v30;
  v23 = v31 - v30;
  v24 = (v31 - v30) >> 4;
  bzero(a4, 8 * a3);
  if (v24 < 1)
  {
    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = (v23 >> 4) & 0x7FFFFFFF;
    v26 = v25 + 1;
    v27 = &a4[8 * v25 - 8];
    v28 = &v22[16 * v25 - 8];
    do
    {
      v29 = *v28;
      v28 -= 16;
      *v27 = v29;
      v27 -= 8;
      --v26;
    }

    while (v26 > 1);
  }

  v31 = v22;
  operator delete(v22);
LABEL_18:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

LABEL_20:
  if (begin)
  {
    operator delete(begin);
  }
}

void sub_26B80D5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void CLSHInfer::rerank(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v18[5] = a2;
  v18[6] = a6;
  v18[4] = a1;
  v25 = *MEMORY[0x277D85DE8];
  if (a4 >= a3)
  {
    a5 = 1;
  }

  if (a4 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = a4;
  }

  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v13 = std::vector<std::pair<float,long long>>::reserve(a8, a5 * v12);
  v14 = a3 / a5;
  if (a3 % a5 > 0)
  {
    ++v14;
  }

  v19 = v14;
  MEMORY[0x28223BE20](v13);
  bzero(v18 - v15, v16);
  memset(&v24, 0, sizeof(v24));
  pthread_attr_init(&v24);
  pthread_attr_setstacksize(&v24, 0x2800uLL);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a5 >= 1 && a3 > 0)
  {
    v18[1] = a8;
    v18[2] = a7;
    v18[3] = v12;
    v20 = 0;
    operator new();
  }

  if (v12)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,std::__wrap_iter<std::pair<float,long long>*>>(*a8, *a8 + 16 * v12, a8[1], &v20);
  }

  std::vector<std::pair<float,long long>>::resize(a8, v12);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_26B80D9B4(_Unwind_Exception *exception_object)
{
  *(v2 - 248) = v1;
  v4 = *(v2 - 184);
  if (v4)
  {
    *(v2 - 176) = v4;
    operator delete(v4);
  }

  v5 = **(v2 - 248);
  if (v5)
  {
    *(*(v2 - 248) + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void CLSHInfer::search(uint64_t a1, uint64_t *a2, int a3, int a4, char *a5, _DWORD *a6)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 8);
  MEMORY[0x28223BE20](a1);
  v14 = v23 - ((v13 + 15) & 0x7FFFFFFF0);
  bzero(v14, v13);
  bzero(v14, 4 * v12);
  if (a3 < 1)
  {
    goto LABEL_10;
  }

  v15 = 0;
  v16 = a3;
  do
  {
    v18 = *a2++;
    v17 = v18;
    if (CLSHInfer::check_vocab_id_present(a1, v18))
    {
      CLSHInfer::emb_lookup_accumulate(a1, v17, v14);
      ++v15;
    }

    --v16;
  }

  while (v16);
  if (v15)
  {
    v19 = 1.0 / v15;
    cblas_sscal(*(a1 + 12), v19, v14, 1);
    if (*(a1 + 16) == 1)
    {
      v20 = cblas_snrm2(*(a1 + 12), v14, 1);
      cblas_sscal(*(a1 + 12), 1.0 / *(a1 + 28), v14, 1);
      v21 = &v14[4 * *(a1 + 12)];
      *v21 = sqrtf(1.0 - ((v20 * v20) / (*(a1 + 28) * *(a1 + 28))));
      *(v21 + 1) = 0;
    }

    CLSHInfer::search(a1, v14, a4, a5, a6);
  }

  else
  {
LABEL_10:
    *a5 = -1;
    *a6 = 4;
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL CLSHInfer::check_vocab_id_present(CLSHInfer *this, uint64_t a2)
{
  v2 = *(this + 18);
  if (!v2)
  {
    return 1;
  }

  v3 = (v2 - *v2);
  if (*v3 < 0x1Fu)
  {
    return 1;
  }

  v4 = v3[15];
  if (!v4)
  {
    return 1;
  }

  v5 = (v2 + v4 + *(v2 + v4) + 4);
  v6 = *(this + 7);
  v7 = &v5[v6];
  while (v6)
  {
    v8 = v6 >> 1;
    v9 = &v5[v6 >> 1];
    v11 = *v9;
    v10 = v9 + 1;
    v6 += ~(v6 >> 1);
    if (v11 < a2)
    {
      v5 = v10;
    }

    else
    {
      v6 = v8;
    }
  }

  return v5 != v7 && *v5 <= a2;
}

void CLSHInfer::emb_lookup_accumulate(CLSHInfer *this, uint64_t a2, float *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 3);
  MEMORY[0x28223BE20](this);
  v8 = (v12 - ((v7 + 15) & 0x7FFFFFFF0));
  bzero(v8, v7);
  CLSHInfer::emb_lookup(this, a2, v8);
  v9 = *(this + 3);
  if (v9 >= 1)
  {
    do
    {
      v10 = *v8++;
      *a3 = v10 + *a3;
      ++a3;
      --v9;
    }

    while (v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void CLSHInfer::rerank_heap(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, const float *a5@<X4>, _DWORD *a6@<X5>, uint64_t *a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  v32 = *MEMORY[0x277D85DE8];
  v11 = a4;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v12 = std::vector<std::pair<float,long long>>::reserve(a7, a4);
  v13 = a1[2];
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0x7FFFFFFF0);
  bzero(v15, v14);
  while (a2 != a3)
  {
    v16 = *a2;
    CLSHInfer::emb_lookup(a1, *a2, v15);
    if (*v30)
    {
      break;
    }

    v17 = cblas_sdot(a1[2], v29, 1, v15, 1);
    v18 = v17;
    v20 = *a7;
    v19 = a7[1];
    v21 = (v19 - *a7) >> 4;
    if (v21 >= v11)
    {
      v22 = *v20;
      if (*v20 < v17)
      {
        if (v21 >= 2)
        {
          v23 = *(v20 + 8);
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(*a7, &v31, v21);
          if (v19 - 16 == v24)
          {
            *v24 = v22;
            *(v24 + 8) = v23;
          }

          else
          {
            *v24 = *(v19 - 16);
            *(v24 + 8) = *(v19 - 8);
            *(v19 - 16) = v22;
            *(v19 - 8) = v23;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(v20, v24 + 16, &v31, (v24 + 16 - v20) >> 4);
          }
        }

        v25 = *a7;
        v26 = *a7 + 16 * v11;
        *(v26 - 16) = v18;
        *(v26 - 8) = v16;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(v25, a7[1], &v31, (a7[1] - v25) >> 4);
      }
    }

    else
    {
      *&v31 = LODWORD(v17);
      *(&v31 + 1) = v16;
      std::vector<std::pair<float,long long>>::push_back[abi:ne200100](a7, &v31);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(*a7, a7[1], &v31, (a7[1] - *a7) >> 4);
    }

    ++a2;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_26B80DF38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<float,long long>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,long long>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void CLSHInfer::emb_lookup(CLSHInfer *this, uint64_t a2, float *__X)
{
  v5 = *(this + 3);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = *(this + 9);
    do
    {
      v9 = *(*(this + 15) + 8 * v7);
      v10 = *(this + 6) - v8 + 1;
      v11 = (*(this + 10) * (*(this + 8) + a2 + v9) + (*(this + 8) + a2) * v9 * *(this + 11) + *(this + 12)) * *(this + 13) % v10;
      memcpy(&__X[v7], (*(this + 17) + 4 * (((v11 >> 63) & v10) + v11)), 4 * v8);
      v8 = *(this + 9);
      v7 += v8;
      v5 = *(this + 3);
    }

    while (v7 < v5);
  }

  if (*(this + 16))
  {
    v12 = cblas_snrm2(v5, __X, 1);
    cblas_sscal(*(this + 3), 1.0 / *(this + 8), __X, 1);
    v13 = &__X[*(this + 3)];
    *v13 = 0.0;
    v13[1] = sqrtf(1.0 - ((v12 * v12) / (*(this + 8) * *(this + 8))));
  }
}

void std::vector<std::pair<float,long long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,long long>>>(a1, v10);
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

void CLSHInfer::rerank(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, const float *a5@<X4>, _DWORD *a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = a2;
  v25 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v14 = std::vector<std::pair<float,long long>>::reserve(a7, a3 - a2);
  v15 = a1[2];
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0x7FFFFFFF0);
  bzero(v17, v16);
  if (a3 == v11)
  {
LABEL_4:
    v20 = a7[1];
    v21 = *a7 + 16 * a4;
    if (v21 != v20)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(*a7, v21, v20, v18);
    }

    std::vector<std::pair<float,long long>>::resize(a7, a4);
  }

  else
  {
    while (1)
    {
      v19 = *v11;
      CLSHInfer::emb_lookup(a1, *v11, v17);
      if (*a6)
      {
        break;
      }

      *&v24 = COERCE_UNSIGNED_INT(cblas_sdot(a1[2], a5, 1, v17, 1));
      *(&v24 + 1) = v19;
      std::vector<std::pair<float,long long>>::push_back[abi:ne200100](a7, &v24);
      if (++v11 == a3)
      {
        goto LABEL_4;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_26B80E358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<float,long long>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<float,long long>>::__append(a1, a2 - v2);
  }
}

uint64_t CLSHInfer::get_consolidated_params@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 24) = 0u;
  *(a4 + 12) = 0;
  v4 = (a4 + 12);
  *(a4 + 20) = 0;
  *(a4 + 40) = 0;
  *(a4 + 4) = 0x100000008;
  v5 = *(result + 152);
  if (v5)
  {
    v6 = (v5 - *v5);
    v7 = *v6;
    if (v7 < 9)
    {
      *a4 = 100;
      if (v7 < 7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v6[4])
      {
        v8 = *(v5 + v6[4]);
      }

      else
      {
        v8 = 100;
      }

      *a4 = v8;
    }

    v9 = v6[3];
    if (v9)
    {
      v10 = *(v5 + v9);
LABEL_12:
      *v4 = v10;
      goto LABEL_13;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

LABEL_13:
  if (a2)
  {
    v11 = *(a2 + 4);
    if (v11 >= 1)
    {
      *(a4 + 4) = v11;
    }

    if ((*a2 & 0x80000000) == 0)
    {
      *a4 = *a2;
    }

    v12 = *(a2 + 12);
    if ((v12 & 0x80000000) == 0)
    {
      *v4 = v12;
    }

    v13 = *(a2 + 8);
    if ((v13 & 0x80000000) == 0)
    {
      *(a4 + 8) = v13;
    }

    v14 = *(a2 + 44);
    if ((v14 & 0x80000000) == 0)
    {
      *(a4 + 44) = v14;
    }

    v15 = *(a2 + 24);
    if (v15 >= 1)
    {
      v16 = *(a2 + 16);
      if (v16)
      {
        *(a4 + 24) = v15;
        *(a4 + 16) = v16;
      }
    }

    v17 = *(a2 + 40);
    if (v17 >= 1)
    {
      v18 = *(a2 + 32);
      if (v18)
      {
        *(a4 + 40) = v17;
        *(a4 + 32) = v18;
      }
    }
  }

  return result;
}

uint64_t CLSHInfer::retrieve_top_genre_recommendations(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  if (!a5)
  {
    return 7;
  }

  *a5 = 0;
  if (!a2)
  {
    return 7;
  }

  v7 = *(a1 + 152);
  if (!v7)
  {
    return 10;
  }

  v8 = (v7 - *v7);
  if (*v8 < 5u)
  {
    return 10;
  }

  v9 = v8[2];
  if (!v9)
  {
    return 10;
  }

  v10 = (v7 + v9 + *(v7 + v9));
  v11 = (v10 - *v10);
  if (*v11 < 5u || !v11[2])
  {
    return 10;
  }

  v77 = *(a2 + 44);
  v82[0] = 0;
  v82[1] = 0;
  v83 = 0;
  v14 = *(a2 + 32);
  if (!v14)
  {
    goto LABEL_64;
  }

  v15 = *(a2 + 40);
  if (v15 < 1)
  {
    LOBYTE(v14) = 0;
    goto LABEL_64;
  }

  std::string::basic_string[abi:ne200100](v78, *(a2 + 32), v15);
  v92 = 0;
  v90 = 0u;
  memset(v91, 0, sizeof(v91));
  *__p = 0u;
  v89 = 0u;
  v86 = 0u;
  *__src = 0u;
  *v84 = 0u;
  v85 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](v84);
  if ((v79 & 0x80u) == 0)
  {
    v16 = v78;
  }

  else
  {
    v16 = v78[0];
  }

  if ((v79 & 0x80u) == 0)
  {
    v17 = v79;
  }

  else
  {
    v17 = v78[1];
  }

  if (v17)
  {
    v18 = MEMORY[0x277D85DE0];
    while (1)
    {
      v19 = *v16;
      if ((v19 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(*v16, 0x8000uLL))
      {
        goto LABEL_24;
      }

      if (__maskrune(v19, 0x1000uLL))
      {
        goto LABEL_26;
      }

LABEL_27:
      v16 = (v16 + 1);
      if (!--v17)
      {
        goto LABEL_28;
      }
    }

    v20 = *(v18 + 4 * v19 + 60);
    if ((v20 & 0x8000) == 0)
    {
      if ((v20 & 0x1000) == 0 && (v20 & 0x400) == 0)
      {
        goto LABEL_27;
      }

LABEL_26:
      v93[0] = v19;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v93, 1);
      goto LABEL_27;
    }

LABEL_24:
    v93[0] = __tolower(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v93, 1);
    goto LABEL_27;
  }

LABEL_28:
  if ((BYTE8(v90) & 0x10) != 0)
  {
    v23 = v90;
    if (v90 < __src[1])
    {
      *&v90 = __src[1];
      v23 = __src[1];
    }

    v24 = __src[0];
  }

  else
  {
    if ((BYTE8(v90) & 8) == 0)
    {
      v21 = 0;
      HIBYTE(v81) = 0;
      goto LABEL_44;
    }

    v24 = *(&v85 + 1);
    v23 = *(&v86 + 1);
  }

  v21 = v23 - v24;
  if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v81) = v23 - v24;
  if (v21)
  {
    memmove(&__dst, v24, v21);
  }

LABEL_44:
  v25 = MEMORY[0x277D82828];
  *(&__dst + v21) = 0;
  v84[0] = *v25;
  *(v84 + *(v84[0] - 3)) = *(v25 + 24);
  v84[1] = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(__p[1]);
  }

  v84[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v85);
  std::ostream::~ostream();
  MEMORY[0x26D681C10](v91);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82[0]);
  }

  *v82 = __dst;
  v83 = v81;
  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  LOBYTE(v14) = HIBYTE(v83);
  if ((SHIBYTE(v83) & 0x8000000000000000) != 0)
  {
    LODWORD(v27) = v82[1];
    if (v82[1])
    {
      v26 = v82[0];
      goto LABEL_55;
    }
  }

  else if (HIBYTE(v83))
  {
    v26 = v82;
    LODWORD(v27) = SHIBYTE(v83);
LABEL_55:
    v28 = 0;
    if (v26 && (v27 & 0x80000000) == 0)
    {
      if (v27)
      {
        if (v27 >= 0x3E8)
        {
          v27 = 1000;
        }

        else
        {
          v27 = v27;
        }

        v29 = -2128831035;
        do
        {
          v30 = *v26;
          v26 = (v26 + 1);
          v29 = 16777619 * (v29 ^ v30);
          --v27;
        }

        while (v27);
        v28 = v29 & 0x7FFFFFFF;
      }

      else
      {
        v28 = 18652613;
      }
    }

    goto LABEL_65;
  }

LABEL_64:
  v28 = 0;
LABEL_65:
  v31 = *(a1 + 152);
  v32 = (v31 - *v31);
  if (*v32 >= 5u && (v33 = v32[2]) != 0)
  {
    v34 = (v31 + v33 + *(v31 + v33));
  }

  else
  {
    v34 = 0;
  }

  v35 = (v34 - *v34);
  if (*v35 >= 5u && (v36 = v35[2]) != 0)
  {
    v37 = (v34 + v36 + *(v34 + v36));
  }

  else
  {
    v37 = 0;
  }

  v38 = *v37;
  if (!v38)
  {
LABEL_114:
    v14 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = v82[1];
    }

    if (!v14)
    {
      v58 = *v37;
      if (v58)
      {
        v63 = 0;
        v59 = 4 * v58;
        do
        {
          v60 = v37[1];
          v61 = v37 + v60 - *(v37 + v60 + 4);
          if (*(v61 + 2) < 7u || (v62 = *(v61 + 5)) == 0 || !*(v37 + v60 + v62 + 4))
          {
            v63 = (v37 + v60 + 4);
          }

          ++v37;
          v59 -= 4;
        }

        while (v59);
        if (v63)
        {
          goto LABEL_132;
        }
      }
    }

    goto LABEL_139;
  }

  v76 = a3;
  v39 = 0;
  v40 = 4 * v38;
  while (1)
  {
    v41 = v37[v39 / 4 + 1];
    v42 = HIBYTE(v83);
    if (v83 < 0)
    {
      v42 = v82[1];
    }

    v43 = v41 - *(&v37[v39 / 4 + 1] + v41);
    v44 = *(&v37[v39 / 4 + 1] + v43);
    if (v42)
    {
      v45 = v44 >= 7 && *(&v37[v39 / 4 + 2] + v43 + 2) ? *(&v37[v39 / 4 + 1] + v41 + *(&v37[v39 / 4 + 2] + v43 + 2)) : 0;
      v46 = v28 == v45;
    }

    else
    {
      v47 = v44 >= 7 && *(&v37[v39 / 4 + 2] + v43 + 2) ? *(&v37[v39 / 4 + 1] + v41 + *(&v37[v39 / 4 + 2] + v43 + 2)) : 0;
      v46 = v47 == v77;
    }

    v48 = v46;
    if (v44 >= 5)
    {
      v49 = *(&v37[v39 / 4 + 2] + v43);
      if (v49)
      {
        break;
      }
    }

    if (v48)
    {
      v63 = (v37 + v41 + v39 + 4);
      goto LABEL_131;
    }

LABEL_112:
    v39 += 4;
    if (v40 == v39)
    {
      LOBYTE(v14) = HIBYTE(v83);
      a3 = v76;
      goto LABEL_114;
    }
  }

  v50 = v28;
  v51 = &v37[v39 / 4] + v41 + v49 + *(&v37[v39 / 4 + 1] + v41 + v49);
  std::string::basic_string[abi:ne200100](v84, v51 + 8, *(v51 + 1));
  v52 = SBYTE7(v85);
  if ((SBYTE7(v85) & 0x80u) == 0)
  {
    v53 = BYTE7(v85);
  }

  else
  {
    v53 = v84[1];
  }

  v54 = HIBYTE(v83);
  if (v83 < 0)
  {
    v54 = v82[1];
  }

  if (v53 != v54)
  {
    v57 = 0;
    if ((SBYTE7(v85) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if ((SBYTE7(v85) & 0x80u) == 0)
  {
    v55 = v84;
  }

  else
  {
    v55 = v84[0];
  }

  if (v83 >= 0)
  {
    v56 = v82;
  }

  else
  {
    v56 = v82[0];
  }

  v57 = memcmp(v55, v56, v53) == 0;
  if (v52 < 0)
  {
LABEL_110:
    operator delete(v84[0]);
  }

LABEL_111:
  v28 = v50;
  if (!v57 && !v48)
  {
    goto LABEL_112;
  }

  v63 = (v37 + v41 + v39 + 4);
  if (v48)
  {
    v64 = v37 + v41 + v39 + 4;
  }

  else
  {
    v64 = 0;
  }

  if (!v57)
  {
    v63 = v64;
  }

LABEL_131:
  a3 = v76;
LABEL_132:
  v65 = (v63 + *(v63 - *v63 + 8));
  v66 = (v65 + *v65);
  v67 = *v66;
  if (v67)
  {
    v68 = 8 * v67;
    v69 = (v66 + 1);
    v70 = *a5;
    if (v70 <= a4)
    {
      v71 = a4;
    }

    else
    {
      v71 = *a5;
    }

    v72 = v71 - v70;
    v73 = (a3 + 8 * v70);
    v74 = v70 + 1;
    do
    {
      if (!v72)
      {
        break;
      }

      v75 = *v69++;
      *v73++ = v75;
      *a5 = v74;
      --v72;
      ++v74;
      v68 -= 8;
    }

    while (v68);
  }

LABEL_139:
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82[0]);
  }

  return 0;
}

void sub_26B80EC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t fnv_1a_31(char *a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (a2)
    {
      if (a2 >= 0x3E8)
      {
        v3 = 1000;
      }

      else
      {
        v3 = a2;
      }

      v4 = -2128831035;
      do
      {
        v5 = *a1++;
        v4 = 16777619 * (v4 ^ v5);
        --v3;
      }

      while (v3);
      return v4 & 0x7FFFFFFF;
    }

    else
    {
      return 18652613;
    }
  }

  return v2;
}

double threadParam::work(threadParam *this)
{
  CLSHInfer::rerank(*(this + 4), (**this + 8 * *(this + 2)), (**this + 8 * *(this + 3)), *(this + 4), *(this + 3), this + 10, &v4);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  result = *&v4;
  *(this + 3) = v4;
  *(this + 8) = v5;
  return result;
}

uint64_t query_lsh_flatbuffer(uint64_t *a1, int a2, int a3, char *a4, unsigned int *a5, int a6)
{
  v11 = (a5 + *a5);
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v12 = (v11 + *(v11 - *v11 + 12));
  CLSHInfer::CLSHInfer(v15, (v12 + *v12 + *(v12 + *v12 + 4) + 4));
  DWORD2(v16) = a6;
  v14 = 0;
  CLSHInfer::search(v15, a1, a2, a3, a4, &v14);
  return v14;
}

uint64_t retrieval_flatbuffer(uint64_t *a1, int a2, int a3, char *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    return 7;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  v13 = (a5 + *a5);
  v14 = (v13 - *v13);
  if (*v14 < 5u)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = v14[2];
    if (v15)
    {
      LODWORD(v15) = *(v13 + v15);
    }
  }

  *(a7 + 16) = v15;
  v16 = (v13 - *v13);
  if (*v16 < 7u)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v16[3];
    if (v17)
    {
      LODWORD(v17) = *(v13 + v17);
    }
  }

  *(a7 + 20) = v17;
  v18 = (v13 - *v13);
  if (*v18 < 9u)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[4];
    if (v19)
    {
      LODWORD(v19) = *(v13 + v19);
    }
  }

  *(a7 + 24) = v19;
  v54 = 0u;
  memset(v53, 0, sizeof(v53));
  v20 = (v13 + *(v13 - *v13 + 12));
  CLSHInfer::CLSHInfer(v53, (v20 + *v20 + *(v20 + *v20 + 4) + 4));
  DWORD2(v54) = 8;
  memset(v52, 0, sizeof(v52));
  CLSHInfer::get_consolidated_params(v53, a6, a3, v52);
  v21 = v52[0];
  if (HIDWORD(v52[0]) + LODWORD(v52[0]) > a3)
  {
    return 7;
  }

  v51 = 0;
  if (SLODWORD(v52[0]) >= 1)
  {
    CLSHInfer::search(v53, a1, a2, v52[0], a4, &v51);
    if (v51)
    {
      v21 = 0;
      *(a7 + 8) = v51;
    }

    else
    {
      v21 = v52[0];
    }
  }

  *(a7 + 4) = v21;
  if (SHIDWORD(v52[0]) >= 1)
  {
    *(a7 + 12) = CLSHInfer::retrieve_top_genre_recommendations(v53, v52, &a4[8 * v21], SHIDWORD(v52[0]), a7);
  }

  if (a2 >= 1 && DWORD2(v52[0]) == 1)
  {
    if (v54)
    {
      v23 = *(a7 + 4);
      if (v23 >= 1)
      {
        __Y = 0;
        v49 = 0;
        v50 = 0;
        std::vector<float>::vector[abi:ne200100](&__Y, (a2 << 8));
        v45 = 0;
        v46 = 0;
        v47 = 0;
        std::vector<float>::vector[abi:ne200100](&v45, (v23 << 8));
        v42 = 0;
        v43 = 0;
        v44 = 0;
        std::vector<float>::vector[abi:ne200100](&v42, v23);
        v24 = 0;
        do
        {
          CLSHInfer::emb_lookup(v53, a1[v24], &__Y[HIDWORD(v53[0]) * v24]);
          ++v24;
        }

        while (a2 != v24);
        for (i = 0; i != v23; ++i)
        {
          CLSHInfer::emb_lookup(v53, *&a4[8 * i], v45 + HIDWORD(v53[0]) * i);
        }

        __p = 0x10000000032;
        LODWORD(v39) = 128;
        HIDWORD(v39) = a2;
        *v40 = v23;
        *&v40[4] = 0x400000100;
        v41 = 2;
        reranker::Reranker<float>::forward_fb(&__p, __Y, v45, v42, v54);
        __p = 0;
        v39 = 0;
        *v40 = 0;
        std::vector<std::pair<float,long long>>::vector[abi:ne200100](&__p, v23);
        v26 = v42;
        v27 = __p;
        v28 = __p + 8;
        v29 = v23;
        v30 = a4;
        do
        {
          v31 = *v26++;
          v32 = v31;
          v33 = *v30;
          v30 += 8;
          *(v28 - 2) = v32;
          *v28 = v33;
          v28 += 2;
          --v29;
        }

        while (v29);
        v34 = 126 - 2 * __clz((v39 - v27) >> 4);
        if (v39 == v27)
        {
          v35 = 0;
        }

        else
        {
          v35 = v34;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,false>(v27, v39, &v55, v35, 1);
        v36 = __p;
        v37 = 2;
        do
        {
          *a4 = *&v36[v37];
          a4 += 8;
          v37 += 4;
          --v23;
        }

        while (v23);
        v39 = v36;
        operator delete(v36);
        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (__Y)
        {
          v49 = __Y;
          operator delete(__Y);
        }
      }
    }
  }

  if (*(a7 + 8) && *(a7 + 12))
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

void sub_26B80F28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void reranker::Reranker<float>::forward_fb(uint64_t a1, float *__Y, const float *a3, float *a4, int *a5)
{
  v8 = (a5 + *(a5 - *a5 + 8));
  cblas_saxpy(*(a1 + 12) * *(a1 + 4), 1.0, (&v8[(*a1 - *(a1 + 12)) * *(a1 + 4) + 1] + *v8), 1, __Y, 1);
  v9 = (a5 - *a5);
  v10 = *v9;
  if (v10 < 0x53)
  {
    v13 = 4;
    if (v10 < 0x4F)
    {
      v18 = 0;
      v19 = 4;
      v20 = 4;
      v38 = 4;
      v40 = 4;
      v39 = 4;
      v37 = 4;
      v15 = 4;
      v14 = 4;
      goto LABEL_41;
    }

    v14 = 4;
    v15 = 4;
    v37 = 4;
    v39 = 4;
    v40 = 4;
    goto LABEL_32;
  }

  v11 = v9[41];
  if (v9[41])
  {
    v11 += a5 + *(a5 + v11);
  }

  v40 = v11 + 4;
  if (v10 < 0x59)
  {
    v39 = 4;
    if (v10 >= 0x55)
    {
      goto LABEL_11;
    }

    v14 = 4;
    v15 = 4;
    v37 = 4;
LABEL_32:
    v38 = 4;
    goto LABEL_33;
  }

  v12 = v9[44];
  if (v9[44])
  {
    v12 += a5 + *(a5 + v12);
  }

  v39 = v12 + 4;
LABEL_11:
  v16 = v9[42];
  if (v9[42])
  {
    v16 += a5 + *(a5 + v16);
  }

  v38 = v16 + 4;
  if (v10 < 0x5B)
  {
    v37 = 4;
    if (v10 >= 0x57)
    {
      goto LABEL_19;
    }

    v14 = 4;
    v15 = 4;
LABEL_33:
    v20 = 4;
    goto LABEL_34;
  }

  v17 = v9[45];
  if (v9[45])
  {
    v17 += a5 + *(a5 + v17);
  }

  v37 = v17 + 4;
LABEL_19:
  v21 = v9[43];
  if (v9[43])
  {
    v21 += a5 + *(a5 + v21);
  }

  v20 = v21 + 4;
  if (v10 < 0x5D)
  {
    v14 = 4;
    v15 = 4;
  }

  else
  {
    v22 = v9[46];
    if (v9[46])
    {
      v22 += a5 + *(a5 + v22);
    }

    v15 = v22 + 4;
    if (v10 >= 0x5F)
    {
      v23 = v9[47];
      if (v9[47])
      {
        v23 += a5 + *(a5 + v23);
      }

      v19 = v23 + 4;
      if (v10 < 0x61)
      {
        v24 = 0;
      }

      else
      {
        v24 = v9[48];
        if (v9[48])
        {
          v24 += a5 + *(a5 + v24);
        }
      }

      v14 = v24 + 4;
      goto LABEL_35;
    }

    v14 = 4;
  }

LABEL_34:
  v19 = 4;
LABEL_35:
  v25 = v9[39];
  if (v9[39])
  {
    v25 += a5 + *(a5 + v25);
  }

  v13 = v25 + 4;
  if (v10 >= 0x51 && (v26 = v9[40]) != 0)
  {
    v18 = (a5 + v26 + *(a5 + v26));
  }

  else
  {
    v18 = 0;
  }

LABEL_41:
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<float>::vector[abi:ne200100](&v50, *(a1 + 4) * *(a1 + 16));
  v27 = v50;
  v28 = *(a1 + 12) | (*(a1 + 24) << 32);
  __C = (*(a1 + 4) | (*(a1 + 16) << 32));
  v48 = v28;
  reranker::MultiHeadAttention<float>::forward(&__C, a3, __Y, __Y, v50, v40, v39, v38, v37, v20, v15, v19, v14);
  __C = 0;
  v48 = 0;
  v49 = 0;
  std::vector<float>::vector[abi:ne200100](&__C, *(a1 + 8) * *(a1 + 16));
  v29 = a5 - *a5;
  v30 = (a5 + *(v29 + 5) + *(a5 + *(v29 + 5)));
  v31 = (a5 + *(v29 + 6) + *(a5 + *(v29 + 6)));
  v32 = *(a1 + 16);
  __p = *(a1 + 4);
  LODWORD(v45) = v32;
  reranker::Linear::forward(&__p, v27, __C, v30 + 1, v31 + 1);
  __p = 0;
  v45 = 0;
  v46 = 0;
  std::vector<float>::vector[abi:ne200100](&__p, *(a1 + 8) * *(a1 + 16));
  v33 = *(a1 + 20);
  v42 = *(a1 + 8) | (*(a1 + 16) << 32);
  v43 = v33;
  reranker::EncoderLayer<float>::forward(&v42, __C, __p, a5, 0);
  v34 = *(a1 + 20);
  v42 = *(a1 + 8) | (*(a1 + 16) << 32);
  v43 = v34;
  reranker::EncoderLayer<float>::forward(&v42, __p, __C, a5, 1);
  v35 = *(a1 + 16);
  v42 = *(a1 + 8) | 0x100000000;
  LODWORD(v43) = v35;
  reranker::Linear::forward(&v42, __C, a4, v13, v18 + 1);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (__C)
  {
    v48 = __C;
    operator delete(__C);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_26B80F760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verify_model_from_container_flatbuffer(unsigned int *a1, unint64_t a2)
{
  result = 2;
  if (a1 && a2 >= 0xC)
  {
    v8[0] = a1;
    v8[1] = a2;
    v9 = xmmword_26B816E50;
    v10 = 0;
    v11 = 1;
    if (a2 >= 0x7FFFFFFF)
    {
      verify_model_from_container_flatbuffer_cold_1();
    }

    if (flatbuffers::Verifier::VerifyBufferFromStart<HashML::ModelContainer>(v8, "HMFB", 0))
    {
      v4 = (a1 + *a1);
      v5 = (v4 - *v4);
      if (*v5 < 0xDu || !v5[6])
      {
        return 9;
      }

      v6 = v5[5];
      if (v5[5])
      {
        v6 = *(v4 + v6);
      }

      if (v6 == *(v4 + v5[6] + *(v4 + v5[6])))
      {
        if (v5[2] && *(v4 + v5[2]) == 1 && (v7 = v5[3]) != 0 && *(v4 + v7) > 0)
        {
          return 0;
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return 9;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t verify_and_load_flatbuffer_from_file(const char *a1, unsigned int **a2, off_t *a3)
{
  result = flatbuffer_from_file(a1, a2, a3);
  if (!result)
  {
    v6 = *a2;
    v7 = *a3;

    return verify_model_from_container_flatbuffer(v6, v7);
  }

  return result;
}

uint64_t flatbuffer_from_file(const char *a1, void *a2, off_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  stat(a1, &v13);
  if ((v13.st_mode & 0xF000) == 0xA000)
  {
    bzero(&v14, 0x400uLL);
    v6 = readlink(a1, &v14, 0x3FFuLL);
    if (v6 < 0)
    {
      result = 1;
      goto LABEL_10;
    }

    *(&v14.st_dev + v6) = 0;
    v7 = &v14;
  }

  else
  {
    v7 = a1;
  }

  v8 = open(v7, 0);
  v9 = v8;
  if (v8 < 0 || (memset(&v14, 0, sizeof(v14)), fstat(v8, &v14) < 0))
  {
    result = 5;
  }

  else
  {
    v10 = mmap(0, v14.st_size, 1, 1, v9, 0);
    result = 0;
    *a2 = v10;
    *a3 = v14.st_size;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t query_lsh_flatbuffer_from_file(uint64_t *a1, int a2, int a3, char *a4, const char *a5, int a6)
{
  v17 = 0;
  v18 = 0;
  result = verify_and_load_flatbuffer_from_file(a5, &v18, &v17);
  v19 = result;
  if (!result)
  {
    v12 = v18;
    v13 = (v12 + *v12);
    v16 = 0u;
    memset(v15, 0, sizeof(v15));
    v14 = (v13 + *(v13 - *v13 + 12));
    CLSHInfer::CLSHInfer(v15, (v14 + *v14 + *(v14 + *v14 + 4) + 4));
    DWORD2(v16) = a6;
    CLSHInfer::search(v15, a1, a2, a3, a4, &v19);
    munmap(v12, v17);
    return v19;
  }

  return result;
}

uint64_t retrieval_flatbuffer_from_file(uint64_t *a1, int a2, int a3, char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    return 7;
  }

  v25 = 0;
  v26 = 0;
  v13 = verify_and_load_flatbuffer_from_file(a5, &v26, &v25);
  if (v13)
  {
    v14 = v13;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    if ((v13 & 0xFFFFFFFE) == 8)
    {
      v15 = (v26 + *v26);
      v16 = (v15 - *v15);
      if (*v16 < 5u)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        v17 = v16[2];
        if (v17)
        {
          LODWORD(v17) = *(v15 + v17);
        }
      }

      *(a7 + 16) = v17;
      v19 = (v15 - *v15);
      if (*v19 < 7u)
      {
        LODWORD(v20) = 0;
      }

      else
      {
        v20 = v19[3];
        if (v20)
        {
          LODWORD(v20) = *(v15 + v20);
        }
      }

      *(a7 + 20) = v20;
      v21 = (v15 - *v15);
      if (*v21 >= 9u && (v22 = v21[4]) != 0)
      {
        v23 = *(v15 + v22);
      }

      else
      {
        v23 = 0;
      }

      *(a7 + 24) = v23;
    }
  }

  else
  {
    v18 = v26;
    v14 = retrieval_flatbuffer(a1, a2, a3, a4, v26, a6, a7);
    munmap(v18, v25);
  }

  return v14;
}

uint64_t emb_query_lsh_flatbuffer(const float *a1, int a2, char *a3, unsigned int *a4)
{
  v7 = (a4 + *a4);
  memset(v11, 0, sizeof(v11));
  v8 = (v7 + *(v7 - *v7 + 12));
  CLSHInfer::CLSHInfer(v11, (v8 + *v8 + *(v8 + *v8 + 4) + 4));
  v10 = 0;
  CLSHInfer::search(v11, a1, a2, a3, &v10);
  return v10;
}

uint64_t emb_query_lsh_flatbuffer_from_file(const float *a1, int a2, char *a3, const char *a4)
{
  v12 = 0;
  v13 = 0;
  result = verify_and_load_flatbuffer_from_file(a4, &v13, &v12);
  v14 = result;
  if (!result)
  {
    v8 = v13;
    v9 = (v8 + *v8);
    memset(v11, 0, sizeof(v11));
    v10 = (v9 + *(v9 - *v9 + 12));
    CLSHInfer::CLSHInfer(v11, (v10 + *v10 + *(v10 + *v10 + 4) + 4));
    CLSHInfer::search(v11, a1, a2, a3, &v14);
    munmap(v8, v12);
    return v14;
  }

  return result;
}

uint64_t emb_lookup_flatbuffer(uint64_t *a1, int a2, char *a3, unsigned int *a4, int a5)
{
  LODWORD(v7) = a2;
  v9 = *a4;
  memset(v16, 0, sizeof(v16));
  CLSHInfer::CLSHInfer(v16, (a4 + v9));
  v10 = SHIDWORD(v16[0]);
  if (a5)
  {
    bzero(a3, 4 * SHIDWORD(v16[0]));
    if (v7 >= 1)
    {
      v11 = v7;
      do
      {
        v12 = *a1++;
        CLSHInfer::emb_lookup_accumulate(v16, v12, a3);
        --v11;
      }

      while (v11);
    }

    if (a5 == 2)
    {
      v13 = 1.0 / v7;
      cblas_sscal(v10, v13, a3, 1);
    }
  }

  else if (v7 >= 1)
  {
    v7 = v7;
    do
    {
      v14 = *a1++;
      CLSHInfer::emb_lookup(v16, v14, a3);
      a3 += 4 * v10;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t emb_lookup_flatbuffer_from_file(uint64_t *a1, int a2, char *a3, const char *a4, int a5)
{
  LODWORD(v7) = a2;
  v20 = 0;
  v21 = 0;
  v9 = verify_and_load_flatbuffer_from_file(a4, &v21, &v20);
  if (!v9)
  {
    v10 = v21;
    v11 = (v10 + *v10);
    memset(v19, 0, sizeof(v19));
    v12 = (v11 + *(v11 - *v11 + 12));
    CLSHInfer::CLSHInfer(v19, (v12 + *v12 + *(v12 + *v12 + 4) + 4));
    v13 = SHIDWORD(v19[0]);
    if (a5)
    {
      bzero(a3, 4 * SHIDWORD(v19[0]));
      if (v7 >= 1)
      {
        v14 = v7;
        do
        {
          v15 = *a1++;
          CLSHInfer::emb_lookup_accumulate(v19, v15, a3);
          --v14;
        }

        while (v14);
      }

      if (a5 == 2)
      {
        v16 = 1.0 / v7;
        cblas_sscal(v13, v16, a3, 1);
      }
    }

    else if (v7 >= 1)
    {
      v7 = v7;
      do
      {
        v17 = *a1++;
        CLSHInfer::emb_lookup(v19, v17, a3);
        a3 += 4 * v13;
        --v7;
      }

      while (v7);
    }

    munmap(v10, v20);
  }

  return v9;
}

uint64_t fnv_1a_64(char *a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      result = 0xCBF29CE484222325;
      if (a2)
      {
        if (a2 >= 0x3E8)
        {
          v4 = 1000;
        }

        else
        {
          v4 = a2;
        }

        do
        {
          v5 = *a1++;
          result = 0x100000001B3 * (result ^ v5);
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279D04258, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::pair<int,int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v26 = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>((a2 - 12), v9);
        if (v26 == -1)
        {
          v27 = *v9;
          *v9 = *(a2 - 3);
          *(a2 - 3) = v27;
          v28 = v9[1];
          v9[1] = *(a2 - 2);
          *(a2 - 2) = v28;
          v29 = v9[2];
          v9[2] = *(a2 - 1);
          *(a2 - 1) = v29;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(v9, v9 + 3, v9 + 6, a2 - 3);
      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(v9, v9 + 3, v9 + 6, v9 + 9, a2 - 3);
      return;
    }

LABEL_10:
    if (v12 <= 287)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,std::pair<float,std::pair<int,int>> *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v9[3 * (v13 >> 1)];
    if (v12 < 0x601)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(&v9[3 * v14], v9, a2 - 3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(v9, &v9[3 * v14], a2 - 3);
      v16 = 3 * v14;
      v17 = &v9[3 * v14 - 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(v9 + 3, v17, a2 - 6);
      v18 = &v9[v16 + 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>((a1 + 24), v18, a2 - 9);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(v17, v15, v18);
      v19 = *a1;
      *a1 = *v15;
      *v15 = v19;
      v20 = *(a1 + 4);
      *(a1 + 4) = *(v15 + 1);
      *(v15 + 1) = v20;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a1 - 12, a1) != 0xFF)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,std::pair<int,int>> *,std::__less<void,void> &>(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v22.n128_f32[0] = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,std::pair<int,int>> *,std::__less<void,void> &>(a1, a2);
    v23 = v21;
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(a1, v21);
    v9 = v23 + 3;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(v23 + 3, a2))
    {
      a4 = -v11;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,false>(a1, v23, a3, -v11, a5 & 1, v22);
      v9 = v23 + 3;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(v9, v9 + 3, a2 - 3);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(int *a1, int *a2, int *a3)
{
  v6 = ~std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a2, a1);
  v7 = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a3, a2);
  if (!v6)
  {
    v9 = a1 + 2;
    v10 = *a1;
    if (v7 == -1)
    {
      *a1 = *a3;
      *a3 = v10;
      v14 = a1[1];
      a1[1] = a3[1];
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      v11 = a1[1];
      a1[1] = a2[1];
      a2[1] = v11;
      v9 = a2 + 2;
      v12 = a1[2];
      a1[2] = a2[2];
      a2[2] = v12;
      if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a3, a2) != 0xFF)
      {
        return 1;
      }

      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = a2[1];
      a2[1] = a3[1];
    }

    a3[1] = v14;
    v18 = a3 + 2;
    goto LABEL_11;
  }

  if (v7 != -1)
  {
    return 0;
  }

  v15 = *a2;
  *a2 = *a3;
  *a3 = v15;
  v16 = a2[1];
  a2[1] = a3[1];
  a3[1] = v16;
  v18 = a2 + 2;
  v17 = a2[2];
  a2[2] = a3[2];
  a3[2] = v17;
  if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a2, a1) == 0xFF)
  {
    v19 = *a1;
    *a1 = *a2;
    *a2 = v19;
    v20 = a1[1];
    a1[1] = a2[1];
    a2[1] = v20;
    v9 = a1 + 2;
LABEL_11:
    v21 = *v9;
    *v9 = *v18;
    *v18 = v21;
  }

  return 1;
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(int *a1, int *a2, int *a3, int *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(a1, a2, a3);
  if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a4, a3) == 0xFF)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    v10 = a3[1];
    a3[1] = a4[1];
    a4[1] = v10;
    v11 = a3[2];
    a3[2] = a4[2];
    a4[2] = v11;
    if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a3, a2) == 0xFF)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = a2[1];
      a2[1] = a3[1];
      a3[1] = v13;
      v14 = a2[2];
      a2[2] = a3[2];
      a3[2] = v14;
      if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a2, a1) == 0xFF)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v15 = a1[1];
        a1[1] = a2[1];
        a2[1] = v15;
        v16 = a1[2];
        a1[2] = a2[2];
        a2[2] = v16;
      }
    }
  }

  return result;
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(a1, a2, a3, a4);
  if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a5, a4) == 0xFF)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[1];
    a4[1] = a5[1];
    a5[1] = v12;
    v13 = a4[2];
    a4[2] = a5[2];
    a5[2] = v13;
    if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a4, a3) == 0xFF)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      v15 = a3[1];
      a3[1] = a4[1];
      a4[1] = v15;
      v16 = a3[2];
      a3[2] = a4[2];
      a4[2] = v16;
      if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a3, a2) == 0xFF)
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = a2[1];
        a2[1] = a3[1];
        a3[1] = v18;
        v19 = a2[2];
        a2[2] = a3[2];
        a3[2] = v19;
        if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a2, a1) == 0xFF)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          v20 = a1[1];
          a1[1] = a2[1];
          a2[1] = v20;
          v21 = a1[2];
          a1[2] = a2[2];
          a2[2] = v21;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v17 = v2;
    v18 = v3;
    v5 = result;
    v6 = result + 12;
    if (result + 12 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v6;
        result = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v6, v9);
        if (result == 0xFF)
        {
          v15 = *v8;
          v16 = *(v8 + 8);
          v10 = v7;
          while (1)
          {
            v11 = (v5 + v10);
            v11[3] = *(v5 + v10);
            v12 = *(v5 + v10 + 8);
            v11[4] = *(v5 + v10 + 4);
            v11[5] = v12;
            if (!v10)
            {
              break;
            }

            v10 -= 12;
            result = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v15, v5 + v10);
            if (result != 0xFF)
            {
              v13 = (v5 + v10 + 12);
              goto LABEL_10;
            }
          }

          v13 = v5;
LABEL_10:
          *v13 = v15;
          v14 = v16;
          v13[1] = HIDWORD(v15);
          v13[2] = v14;
        }

        v6 = v8 + 12;
        v7 += 12;
      }

      while (v8 + 12 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v14 = v2;
    v15 = v3;
    v5 = result;
    v6 = result + 12;
    if (result + 12 != a2)
    {
      v7 = (result - 12);
      do
      {
        v8 = v5;
        v5 = v6;
        result = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v6, v8);
        if (result == 0xFF)
        {
          v12 = *v5;
          v13 = *(v5 + 8);
          v9 = v7;
          do
          {
            v9[6] = v9[3];
            v10 = v9[5];
            v9[7] = v9[4];
            v9[8] = v10;
            result = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v12, v9);
            v9 -= 3;
          }

          while (result == 0xFF);
          v9[6] = v12;
          v11 = v13;
          v9[7] = HIDWORD(v12);
          v9[8] = v11;
        }

        v6 = v5 + 12;
        v7 += 3;
      }

      while (v5 + 12 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,std::pair<int,int>> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = a2;
  v11 = *a1;
  v12 = a1[2];
  if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v11, (a2 - 3)) == 0xFF)
  {
    v5 = a1;
    do
    {
      v5 += 3;
    }

    while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v11, v5) != 0xFF);
  }

  else
  {
    v4 = (a1 + 3);
    do
    {
      v5 = v4;
      if (v4 >= v2)
      {
        break;
      }

      v6 = std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v11, v4);
      v4 = (v5 + 3);
    }

    while (v6 != -1);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 3;
    }

    while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v11, v2) == 0xFF);
  }

  while (v5 < v2)
  {
    v7 = *v5;
    *v5 = *v2;
    *v2 = v7;
    v8 = v5[1];
    v5[1] = v2[1];
    v2[1] = v8;
    v9 = v5[2];
    v5[2] = v2[2];
    v2[2] = v9;
    do
    {
      v5 += 3;
    }

    while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v11, v5) != 0xFF);
    do
    {
      v2 -= 3;
    }

    while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v11, v2) == 0xFF);
  }

  if (v5 - 3 != a1)
  {
    *a1 = *(v5 - 3);
    a1[1] = *(v5 - 2);
    a1[2] = *(v5 - 1);
  }

  *(v5 - 3) = v11;
  *(v5 - 1) = v12;
  return v5;
}

float std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,std::pair<int,int>> *,std::__less<void,void> &>(int *a1, unint64_t a2)
{
  v4 = 0;
  v12 = *a1;
  v13 = a1[2];
  do
  {
    v4 += 3;
  }

  while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&a1[v4], &v12) == 0xFF);
  v5 = &a1[v4];
  if (v4 == 3)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 12;
    }

    while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a2, &v12) != 0xFF);
  }

  else
  {
    do
    {
      a2 -= 12;
    }

    while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a2, &v12) != 0xFF);
  }

  if (v5 >= a2)
  {
    v6 = &a1[v4];
  }

  else
  {
    v6 = &a1[v4];
    v7 = a2;
    do
    {
      v8 = *v6;
      *v6 = *v7;
      *v7 = v8;
      v9 = v6[1];
      v6[1] = v7[1];
      v7[1] = v9;
      v10 = v6[2];
      v6[2] = v7[2];
      v7[2] = v10;
      do
      {
        v6 += 3;
      }

      while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v6, &v12) == 0xFF);
      do
      {
        v7 -= 3;
      }

      while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v7, &v12) != 0xFF);
    }

    while (v6 < v7);
  }

  if (v6 - 3 != a1)
  {
    *a1 = *(v6 - 3);
    a1[1] = *(v6 - 2);
    a1[2] = *(v6 - 1);
  }

  result = *&v12;
  *(v6 - 3) = v12;
  *(v6 - 1) = v13;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(int *a1, int *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>((a2 - 3), a1) == 0xFF)
        {
          v5 = *a1;
          *a1 = *(a2 - 3);
          *(a2 - 3) = v5;
          v6 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_11:
  v8 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,0>(a1, a1 + 3, a1 + 6);
  v9 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v9, v8) == 0xFF)
    {
      v18 = *v9;
      v19 = *(v9 + 8);
      v12 = v10;
      while (1)
      {
        v13 = (a1 + v12);
        v13[9] = *(a1 + v12 + 24);
        v14 = *(a1 + v12 + 32);
        v13[10] = *(a1 + v12 + 28);
        v13[11] = v14;
        if (v12 == -24)
        {
          break;
        }

        v12 -= 12;
        if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(&v18, (v13 + 3)) != 0xFF)
        {
          v15 = (a1 + v12 + 36);
          goto LABEL_19;
        }
      }

      v15 = a1;
LABEL_19:
      *v15 = v18;
      v16 = v19;
      v15[1] = HIDWORD(v18);
      v15[2] = v16;
      if (++v11 == 8)
      {
        return v9 + 12 == a2;
      }
    }

    v8 = v9;
    v10 += 12;
    v9 += 12;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    LODWORD(v2) = -127;
  }

  if (*a1 > *a2)
  {
    LODWORD(v2) = 1;
  }

  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = v2;
  }

  if (!v2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v5 = v3 == v4;
    if (v3 < v4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    if (v5)
    {
      v7 = *(a1 + 8);
      v8 = *(a2 + 8);
      v9 = v7 == v8;
      if (v7 < v8)
      {
        v6 = -1;
      }

      else
      {
        v6 = 1;
      }

      if (v9)
      {
        v6 = 0;
      }
    }

    if (v6)
    {
      return (v6 >> 7) | 1u;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *,std::pair<float,std::pair<int,int>> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
    if (a2 - a1 >= 13)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[12 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(a1, a4, v9, v12);
        v12 -= 12;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v13, a1) == 0xFF)
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          v15 = *(v13 + 1);
          *(v13 + 1) = *(a1 + 1);
          *(a1 + 1) = v15;
          v16 = *(v13 + 2);
          *(v13 + 2) = *(a1 + 2);
          *(a1 + 2) = v16;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(a1, a4, v9, a1);
        }

        v13 += 12;
      }

      while (v13 != a3);
    }

    if (v8 >= 13)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      v18 = a2 - 12;
      do
      {
        v19 = *a1;
        v21 = *(a1 + 1);
        v20 = *(a1 + 2);
        v22 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(a1, a4, v17);
        if (v18 == v22)
        {
          *v22 = v19;
          *(v22 + 1) = v21;
          *(v22 + 2) = v20;
        }

        else
        {
          *v22 = *v18;
          *(v22 + 1) = *(v18 + 1);
          *(v22 + 2) = *(v18 + 2);
          *v18 = v19;
          *(v18 + 1) = v21;
          *(v18 + 2) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(a1, (v22 + 12), a4, 0xAAAAAAAAAAAAAAABLL * ((v22 + 12 - a1) >> 2));
        }

        v18 -= 12;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

float std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 2)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 2)) | 1;
      v12 = (a1 + 12 * v11);
      v13 = 0x5555555555555556 * ((a4 - a1) >> 2) + 2;
      if (v13 < a3 && std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a1 + 12 * v11, (v12 + 3)) == 255)
      {
        v12 += 3;
        v11 = v13;
      }

      if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v12, v7) != 0xFF)
      {
        v18 = *v7;
        v19 = *(v7 + 8);
        do
        {
          v15 = v12;
          *v7 = *v12;
          *(v7 + 4) = v12[1];
          *(v7 + 8) = v12[2];
          if (v9 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (a1 + 12 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3 && std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(a1 + 12 * v16, (v12 + 3)) == 255)
          {
            v12 += 3;
            v16 = v17;
          }

          v7 = v15;
          v11 = v16;
        }

        while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v12, &v18) != 0xFF);
        result = *&v18;
        *v15 = v18;
        v15[2] = v19;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[3 * v5];
    v8 = v7 + 3;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 6;
      if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>((v7 + 3), (v7 + 6)) == 255)
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1[1] = v8[1];
    a1[2] = v8[2];
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,std::pair<int,int>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v13 = v4;
    v14 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 12 * v7);
    v9 = (a2 - 12);
    if (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v8, a2 - 12) == 0xFF)
    {
      *v12 = *v9;
      *&v12[8] = v9[2];
      do
      {
        v11 = v8;
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 12 * v7);
        v9 = v11;
      }

      while (std::operator<=>[abi:ne200100]<float,std::pair<int,int>,float,std::pair<int,int>>(v8, v12) == 0xFF);
      *v11 = *v12;
      result = *&v12[4];
      *(v11 + 1) = *&v12[4];
    }
  }

  return result;
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,flatbuffers::VectorIterator<int,int>,flatbuffers::VectorIterator<int,int>,std::back_insert_iterator<std::vector<int>>,0>(int **a1@<X0>, int **a2@<X1>, const void **a3@<X2>, int **a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 != *a2)
  {
    v8 = a3[1];
    do
    {
      v9 = *v6;
      v10 = a3[2];
      if (v8 >= v10)
      {
        v11 = *a3;
        v12 = v8 - *a3;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v16);
        }

        *(4 * v13) = v9;
        v8 = (4 * v13 + 4);
        memcpy(0, v11, v12);
        v17 = *a3;
        *a3 = 0;
        a3[1] = v8;
        a3[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 4;
      }

      a3[1] = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  *a4 = v6;
  a4[1] = a3;
}

int *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(int *a1, int *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B81198C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,long long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = a2 - 16;
    v7 = *(a2 - 16);
    v8 = *v5;
    if (*v5 == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = -127;
    }

    if (*v5 > v7)
    {
      v9 = 1;
    }

    if (*v5 < v7)
    {
      v9 = -1;
    }

    if (v9 || ((v10 = *(v5 + 8), v11 = *(a2 - 8), v12 = v10 == v11, v10 < v11) ? (LOBYTE(v9) = -1) : (LOBYTE(v9) = 1), !v12))
    {
      if (v9 == 1)
      {
        v13 = *(a2 - 8);
        do
        {
          v14 = v5;
          *v6 = v8;
          *(v6 + 8) = *(v5 + 8);
          if (!v4)
          {
            break;
          }

          v4 = (v4 - 1) >> 1;
          v5 = result + 16 * v4;
          v8 = *v5;
          if (*v5 == v7)
          {
            v15 = 0;
          }

          else
          {
            v15 = -127;
          }

          if (*v5 > v7)
          {
            v15 = 1;
          }

          if (*v5 < v7)
          {
            v15 = -1;
          }

          if (!v15)
          {
            v16 = *(v5 + 8);
            v17 = v16 == v13;
            LOBYTE(v15) = v16 < v13 ? -1 : 1;
            if (v17)
            {
              break;
            }
          }

          v18 = v15;
          v6 = v14;
        }

        while (v18 == 1);
        *v14 = v7;
        *(v14 + 8) = v13;
      }
    }
  }

  return result;
}

float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    a1 += 16 * v3 + 16;
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v5 + 2 < a3)
    {
      v7 = *(a1 + 16);
      if (*a1 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = -127;
      }

      if (*a1 > v7)
      {
        v8 = 1;
      }

      if (*a1 < v7)
      {
        v8 = -1;
      }

      if (v8 || ((v9 = *(a1 + 8), v10 = *(a1 + 24), v11 = v9 == v10, v9 < v10) ? (LOBYTE(v8) = -1) : (LOBYTE(v8) = 1), !v11))
      {
        a1 += 16 * (v8 == 1);
        if (v8 == 1)
        {
          v3 = v6;
        }
      }
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

float std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(uint64_t a1, unint64_t a2, uint64_t a3, float result)
{
  if (a3 != a2)
  {
    v4 = a3;
    do
    {
      v7 = (v4 - a1) >> 4;
      if (v7 < 2)
      {
        break;
      }

      if (v7 == 3)
      {

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(a1, a1 + 16, v4 - 16);
        return result;
      }

      if (v7 == 2)
      {
        result = *(v4 - 16);
        v89 = *a1;
        if (result == *a1)
        {
          v90 = 0;
        }

        else
        {
          v90 = -127;
        }

        if (result > *a1)
        {
          v90 = 1;
        }

        if (result < *a1)
        {
          v90 = -1;
        }

        if (v90 || ((v91 = *(v4 - 8), v92 = *(a1 + 8), v93 = v91 == v92, v91 < v92) ? (LOBYTE(v90) = -1) : (LOBYTE(v90) = 1), !v93))
        {
          if (v90 == 1)
          {
            *a1 = result;
            *(v4 - 16) = v89;
            v94 = *(a1 + 8);
            *(a1 + 8) = *(v4 - 8);
            *(v4 - 8) = v94;
          }
        }

        return result;
      }

      if (v7 <= 7)
      {

        return std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(a1, v4);
      }

      v8 = a1 + 16 * ((v4 - a1) >> 5);
      v9 = (v4 - 16);
      v10 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(a1, v8, v4 - 16);
      result = *a1;
      v11 = *v8;
      if (*a1 == *v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = -127;
      }

      if (*a1 > *v8)
      {
        v12 = 1;
      }

      if (*a1 < *v8)
      {
        v12 = -1;
      }

      if ((v12 || ((v13 = *(a1 + 8), v14 = *(v8 + 8), v15 = v13 == v14, v13 < v14) ? (LOBYTE(v12) = -1) : (LOBYTE(v12) = 1), !v15)) && v12 == 1)
      {
        v16 = v4 - 16;
LABEL_42:
        if (a1 + 16 >= v16)
        {
          v26 = 16;
        }

        else
        {
          v24 = 16;
          while (1)
          {
            v25 = *v8;
            while (1)
            {
              v26 = v24;
              result = *(a1 + v24);
              if (result == v25)
              {
                v27 = 0;
              }

              else
              {
                v27 = -127;
              }

              if (result > v25)
              {
                v27 = 1;
              }

              if (result < v25)
              {
                v27 = -1;
              }

              if (!v27)
              {
                v28 = *(a1 + v26 + 8);
                v29 = *(v8 + 8);
                v30 = v28 == v29;
                LOBYTE(v27) = v28 < v29 ? -1 : 1;
                if (v30)
                {
                  break;
                }
              }

              v31 = v27;
              v24 = v26 + 16;
              if (v31 != 1)
              {
                goto LABEL_60;
              }
            }

            v24 = v26 + 16;
LABEL_60:
            v32 = a1 + v26;
            v33 = v16;
            do
            {
              v34 = *(v33 - 16);
              v33 -= 16;
              v35 = v34;
              v36 = v34 < v25;
              v37 = v34 <= v25;
              if (v34 == v25)
              {
                v38 = 0;
              }

              else
              {
                v38 = -127;
              }

              if (!v37)
              {
                v38 = 1;
              }

              if (v36)
              {
                v38 = -1;
              }

              if (!v38)
              {
                v39 = *(v16 - 8);
                v40 = *(v8 + 8);
                v41 = v39 == v40;
                if (v39 < v40)
                {
                  v42 = -1;
                }

                else
                {
                  v42 = 1;
                }

                if (v41)
                {
                  LOBYTE(v38) = 0;
                }

                else
                {
                  LOBYTE(v38) = v42;
                }
              }

              v16 = v33;
            }

            while (v38 != 1);
            if (v32 >= v33)
            {
              break;
            }

            v43 = a1 + v26;
            *v43 = v35;
            *v33 = result;
            v44 = *(a1 + v26 + 8);
            *(v43 + 8) = *(v33 + 8);
            *(v33 + 8) = v44;
            ++v10;
            if (v32 == v8)
            {
              v8 = v33;
            }

            v16 = v33;
          }
        }

        v45 = a1 + v26;
        if (a1 + v26 != v8)
        {
          result = *v8;
          v46 = *v45;
          if (*v8 == *v45)
          {
            v47 = 0;
          }

          else
          {
            v47 = -127;
          }

          if (*v8 > *v45)
          {
            v47 = 1;
          }

          if (*v8 < *v45)
          {
            v47 = -1;
          }

          if (v47 || ((v48 = *(v8 + 8), v49 = *(v45 + 8), v50 = v48 == v49, v48 < v49) ? (LOBYTE(v47) = -1) : (LOBYTE(v47) = 1), !v50))
          {
            if (v47 == 1)
            {
              *v45 = result;
              *v8 = v46;
              v51 = *(v45 + 8);
              *(v45 + 8) = *(v8 + 8);
              *(v8 + 8) = v51;
              ++v10;
            }
          }
        }

        if (v45 == a2)
        {
          return result;
        }

        if (!v10)
        {
          if (v45 <= a2)
          {
            v67 = v45 + 16;
            if (v45 + 16 == v4)
            {
              return result;
            }

            result = *v45;
            while (1)
            {
              v68 = result;
              result = *v67;
              if (*v67 == v68)
              {
                v69 = 0;
              }

              else
              {
                v69 = -127;
              }

              if (*v67 > v68)
              {
                v69 = 1;
              }

              if (*v67 < v68)
              {
                v69 = -1;
              }

              if (v69 || ((v70 = *(v67 + 8), v71 = *(v67 - 8), v72 = v70 == v71, v70 < v71) ? (LOBYTE(v69) = -1) : (LOBYTE(v69) = 1), !v72))
              {
                if (v69 == 1)
                {
                  break;
                }
              }

              v67 += 16;
              if (v67 == v4)
              {
                return result;
              }
            }
          }

          else
          {
            v62 = v26 - 16;
            if (!v62)
            {
              return result;
            }

            v63 = (a1 + 24);
            result = *a1;
            while (1)
            {
              v64 = result;
              result = *(v63 - 2);
              if (result == v64)
              {
                v65 = 0;
              }

              else
              {
                v65 = -127;
              }

              if (result > v64)
              {
                v65 = 1;
              }

              if (result < v64)
              {
                v65 = -1;
              }

              if (v65 || ((v66 = *(v63 - 2), *v63 < v66) ? (LOBYTE(v65) = -1) : (LOBYTE(v65) = 1), *v63 != v66))
              {
                if (v65 == 1)
                {
                  break;
                }
              }

              v63 += 4;
              v62 -= 16;
              if (!v62)
              {
                return result;
              }
            }
          }
        }

        if (v45 <= a2)
        {
          v52 = v45 + 16;
        }

        else
        {
          v4 = v45;
          v52 = a1;
        }
      }

      else
      {
        v17 = v4 - 16;
        while (1)
        {
          v16 = v17 - 16;
          if (v17 - 16 == a1)
          {
            break;
          }

          if (*v16 == v11)
          {
            v18 = 0;
          }

          else
          {
            v18 = -127;
          }

          if (*v16 > v11)
          {
            v18 = 1;
          }

          if (*v16 < v11)
          {
            v18 = -1;
          }

          if (!v18)
          {
            v19 = *(v17 - 8);
            v20 = *(v8 + 8);
            v21 = v19 == v20;
            if (v19 < v20)
            {
              v22 = -1;
            }

            else
            {
              v22 = 1;
            }

            if (v21)
            {
              LOBYTE(v18) = 0;
            }

            else
            {
              LOBYTE(v18) = v22;
            }
          }

          v17 = v16;
          if (v18 == 1)
          {
            *a1 = *v16;
            *v16 = result;
            v23 = *(a1 + 8);
            *(a1 + 8) = *(v16 + 8);
            *(v16 + 8) = v23;
            if (v10)
            {
              v10 = 2;
            }

            else
            {
              v10 = 1;
            }

            goto LABEL_42;
          }
        }

        v52 = a1 + 16;
        if (result == *v9)
        {
          v53 = 0;
        }

        else
        {
          v53 = -127;
        }

        if (result > *v9)
        {
          v53 = 1;
        }

        if (result < *v9)
        {
          v53 = -1;
        }

        if (!v53 && ((v54 = *(a1 + 8), v55 = *(v4 - 8), v56 = v54 == v55, v54 < v55) ? (LOBYTE(v53) = -1) : (LOBYTE(v53) = 1), v56) || v53 != 1)
        {
          while (v52 != v9)
          {
            v57 = *v52;
            if (result == *v52)
            {
              v58 = 0;
            }

            else
            {
              v58 = -127;
            }

            if (result > *v52)
            {
              v58 = 1;
            }

            if (result < *v52)
            {
              v58 = -1;
            }

            if (v58 || ((v59 = *(a1 + 8), v60 = *(v52 + 8), v61 = v59 == v60, v59 < v60) ? (LOBYTE(v58) = -1) : (LOBYTE(v58) = 1), !v61))
            {
              if (v58 == 1)
              {
                *v52 = *v9;
                *(v4 - 16) = v57;
                v73 = *(v52 + 8);
                *(v52 + 8) = *(v4 - 8);
                *(v4 - 8) = v73;
                v52 += 16;
                goto LABEL_166;
              }
            }

            v52 += 16;
          }

          return result;
        }

LABEL_166:
        if (v52 == v9)
        {
          return result;
        }

        while (1)
        {
          result = *a1;
          while (1)
          {
            v74 = *v52;
            if (result == *v52)
            {
              v75 = 0;
            }

            else
            {
              v75 = -127;
            }

            if (result > *v52)
            {
              v75 = 1;
            }

            if (result < *v52)
            {
              v75 = -1;
            }

            if (v75 || ((v76 = *(a1 + 8), v77 = *(v52 + 8), v78 = v76 == v77, v76 < v77) ? (LOBYTE(v75) = -1) : (LOBYTE(v75) = 1), !v78))
            {
              if (v75 == 1)
              {
                break;
              }
            }

            v52 += 16;
          }

          v79 = v9 - 4;
          do
          {
            v9 = v79;
            v80 = *v79;
            v81 = result < *v79;
            v82 = result <= *v79;
            if (result == *v79)
            {
              v83 = 0;
            }

            else
            {
              v83 = -127;
            }

            if (!v82)
            {
              v83 = 1;
            }

            if (v81)
            {
              v83 = -1;
            }

            if (!v83)
            {
              v84 = *(a1 + 8);
              v85 = *(v9 + 1);
              v86 = v84 == v85;
              LOBYTE(v83) = v84 < v85 ? -1 : 1;
              if (v86)
              {
                break;
              }
            }

            v87 = v83;
            v79 = v9 - 4;
          }

          while (v87 == 1);
          if (v52 >= v9)
          {
            break;
          }

          *v52 = v80;
          *v9 = v74;
          v88 = *(v52 + 8);
          *(v52 + 8) = *(v9 + 1);
          *(v9 + 1) = v88;
          v52 += 16;
        }

        if (v52 > a2)
        {
          return result;
        }
      }

      a1 = v52;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 == *a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -127;
  }

  if (*a2 > *a1)
  {
    v5 = 1;
  }

  if (*a2 < *a1)
  {
    v5 = -1;
  }

  if (v5 || ((v6 = *(a2 + 8), v7 = *(a1 + 8), v8 = v6 == v7, v6 < v7) ? (LOBYTE(v5) = -1) : (LOBYTE(v5) = 1), !v8))
  {
    if (v5 == 1)
    {
      if (*a3 == v3)
      {
        v9 = 0;
      }

      else
      {
        v9 = -127;
      }

      if (*a3 > v3)
      {
        v9 = 1;
      }

      if (*a3 < v3)
      {
        v9 = -1;
      }

      if (v9 || ((v10 = *(a3 + 8), v11 = *(a2 + 8), v12 = v10 == v11, v10 < v11) ? (LOBYTE(v9) = -1) : (LOBYTE(v9) = 1), !v12))
      {
        if (v9 == 1)
        {
          *a1 = *a3;
          *a3 = v4;
          v13 = *(a1 + 8);
          *(a1 + 8) = *(a3 + 8);
LABEL_71:
          *(a3 + 8) = v13;
          return 1;
        }

        v10 = *(a2 + 8);
      }

      *a1 = v3;
      *a2 = v4;
      v13 = *(a1 + 8);
      *(a1 + 8) = v10;
      *(a2 + 8) = v13;
      if (*a3 == v4)
      {
        v26 = 0;
      }

      else
      {
        v26 = -127;
      }

      if (*a3 > v4)
      {
        v26 = 1;
      }

      if (*a3 < v4)
      {
        v26 = -1;
      }

      if (!v26)
      {
        v27 = *(a3 + 8);
        v28 = v27 == v13;
        LOBYTE(v26) = v27 < v13 ? -1 : 1;
        if (v28)
        {
          return 1;
        }
      }

      if (v26 != 1)
      {
        return 1;
      }

      *a2 = *a3;
      *a3 = v4;
      *(a2 + 8) = *(a3 + 8);
      goto LABEL_71;
    }
  }

  if (*a3 == v3)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (*a3 > v3)
  {
    v14 = 1;
  }

  if (*a3 < v3)
  {
    v14 = -1;
  }

  if (!v14)
  {
    v15 = *(a3 + 8);
    v16 = *(a2 + 8);
    v17 = v15 == v16;
    LOBYTE(v14) = v15 < v16 ? -1 : 1;
    if (v17)
    {
      return 0;
    }
  }

  if (v14 != 1)
  {
    return 0;
  }

  *a2 = *a3;
  *a3 = v3;
  v18 = *(a2 + 8);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = v18;
  v19 = *a1;
  if (*a2 == *a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = -127;
  }

  if (*a2 > *a1)
  {
    v20 = 1;
  }

  if (*a2 < *a1)
  {
    v20 = -1;
  }

  if (v20 || ((v21 = *(a2 + 8), v22 = *(a1 + 8), v23 = v21 == v22, v21 < v22) ? (LOBYTE(v20) = -1) : (LOBYTE(v20) = 1), !v23))
  {
    if (v20 == 1)
    {
      *a1 = *a2;
      *a2 = v19;
      v24 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v24;
    }
  }

  return 1;
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(uint64_t a1, uint64_t a2)
{
  while (a1 != a2 - 16)
  {
    v2 = a1;
    a1 += 16;
    if (v2 != a2 && a1 != a2)
    {
      v3 = a1;
      v4 = v2;
      do
      {
        result = *v3;
        if (*v3 == *v4)
        {
          v6 = 0;
        }

        else
        {
          v6 = -127;
        }

        if (*v3 > *v4)
        {
          v6 = 1;
        }

        if (*v3 < *v4)
        {
          v6 = -1;
        }

        if (v6 || ((v7 = *(v3 + 8), v8 = *(v4 + 8), v9 = v7 == v8, v7 < v8) ? (LOBYTE(v6) = -1) : (LOBYTE(v6) = 1), !v9))
        {
          if (v6 == 1)
          {
            v4 = v3;
          }
        }

        v3 += 16;
      }

      while (v3 != a2);
      if (v4 != v2)
      {
        result = *v2;
        *v2 = *v4;
        *v4 = result;
        v10 = *(v2 + 8);
        *(v2 + 8) = *(v4 + 8);
        *(v4 + 8) = v10;
      }
    }
  }

  return result;
}

void std::vector<std::pair<float,long long>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,long long>>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_opaque_pthread_t *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::__copy_impl::operator()[abi:ne200100]<std::pair<float,long long> *,std::pair<float,long long> *,std::back_insert_iterator<std::vector<std::pair<float,long long>>>>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = (v7 - *a4) >> 4;
        if ((v9 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v10 = v8 - *a4;
        v11 = v10 >> 3;
        if (v10 >> 3 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,long long>>>(a4, v12);
        }

        v13 = (16 * v9);
        *v13 = *v5;
        v7 = (16 * v9 + 16);
        v14 = *(a4 + 8) - *a4;
        v15 = 16 * v9 - v14;
        memcpy(v13 - v14, *a4, v14);
        v16 = *a4;
        *a4 = v15;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,std::__wrap_iter<std::pair<float,long long>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v10 = v5 >> 4;
    v11 = __OFSUB__(v5 >> 4, 2);
    v12 = (v5 >> 4) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = a1 + 16 * v13;
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(a1, a4, v10, v14);
        v14 -= 16;
        --v15;
      }

      while (v15);
    }

    v4 = a2;
    if (a2 != a3)
    {
      v16 = a2;
      do
      {
        v17 = *v16;
        if (*v16 == *a1)
        {
          v18 = 0;
        }

        else
        {
          v18 = -127;
        }

        if (*v16 > *a1)
        {
          v18 = 1;
        }

        if (*v16 < *a1)
        {
          v18 = -1;
        }

        if (v18 || ((v19 = *(v16 + 8), v20 = *(a1 + 8), v21 = v19 == v20, v19 < v20) ? (LOBYTE(v18) = -1) : (LOBYTE(v18) = 1), !v21))
        {
          if (v18 == 1)
          {
            *v16 = *a1;
            *a1 = v17;
            v22 = *(v16 + 8);
            *(v16 + 8) = *(a1 + 8);
            *(a1 + 8) = v22;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(a1, a4, v10, a1);
          }
        }

        v16 += 16;
      }

      while (v16 != a3);
      v4 = a3;
    }

    if (v10 >= 2)
    {
      v23 = a2 - 16;
      do
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(a1, a4, v10);
        if (v23 == v26)
        {
          *v26 = v24;
          *(v26 + 8) = v25;
        }

        else
        {
          *v26 = *v23;
          *(v26 + 8) = *(v23 + 8);
          *v23 = v24;
          *(v23 + 8) = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(a1, v26 + 16, a4, (v26 + 16 - a1) >> 4);
        }

        v23 -= 16;
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) | 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 == v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = -127;
        }

        if (*v8 > v10)
        {
          v11 = 1;
        }

        if (*v8 < v10)
        {
          v11 = -1;
        }

        if (v11 || ((v12 = *(v8 + 8), v13 = *(v8 + 24), v14 = v12 == v13, v12 < v13) ? (LOBYTE(v11) = -1) : (LOBYTE(v11) = 1), !v14))
        {
          v8 += 16 * (v11 == 1);
          if (v11 == 1)
          {
            v7 = v9;
          }
        }
      }

      v15 = *v8;
      v16 = *a4;
      if (*v8 == *a4)
      {
        v17 = 0;
      }

      else
      {
        v17 = -127;
      }

      if (*v8 > *a4)
      {
        v17 = 1;
      }

      if (*v8 < *a4)
      {
        v18 = -1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 || ((v19 = *(v8 + 8), v20 = *(a4 + 8), v21 = v19 == v20, v19 < v20) ? (LOBYTE(v18) = -1) : (LOBYTE(v18) = 1), !v21))
      {
        if (v18 == 1)
        {
          return result;
        }

        v19 = *(a4 + 8);
      }

      do
      {
        v22 = a4;
        a4 = v8;
        *v22 = v15;
        *(v22 + 8) = *(v8 + 8);
        if (v5 < v7)
        {
          break;
        }

        v23 = (2 * v7) | 1;
        v8 = result + 16 * v23;
        v7 = 2 * v7 + 2;
        if (v7 >= a3)
        {
          goto LABEL_48;
        }

        v24 = *(v8 + 16);
        if (*v8 == v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = -127;
        }

        if (*v8 > v24)
        {
          v25 = 1;
        }

        if (*v8 < v24)
        {
          v25 = -1;
        }

        if (!v25 && ((v26 = *(v8 + 8), v27 = *(v8 + 24), v28 = v26 == v27, v26 < v27) ? (LOBYTE(v25) = -1) : (LOBYTE(v25) = 1), v28))
        {
LABEL_48:
          v7 = v23;
        }

        else
        {
          v8 += 16 * (v25 == 1);
          if (v25 != 1)
          {
            v7 = v23;
          }
        }

        v15 = *v8;
        if (*v8 == v16)
        {
          v29 = 0;
        }

        else
        {
          v29 = -127;
        }

        if (*v8 > v16)
        {
          v29 = 1;
        }

        if (*v8 < v16)
        {
          v29 = -1;
        }

        if (!v29)
        {
          v30 = *(v8 + 8);
          v31 = v30 == v19;
          if (v30 < v19)
          {
            LOBYTE(v29) = -1;
          }

          else
          {
            LOBYTE(v29) = 1;
          }

          if (v31)
          {
            LOBYTE(v29) = 0;
          }
        }
      }

      while (v29 != 1);
      *a4 = v16;
      *(a4 + 8) = v19;
    }
  }

  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B812A2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<std::pair<float,long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<float,long long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B812AE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<float,long long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,long long>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,false>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 4);
        v26 = *v9;
        if (v25 == *v9)
        {
          v27 = 0;
        }

        else
        {
          v27 = -127;
        }

        if (v25 > *v9)
        {
          v27 = 1;
        }

        if (v25 < *v9)
        {
          v27 = -1;
        }

        if (v27 || ((v28 = *(a2 - 1), v29 = *(v9 + 8), v30 = v28 == v29, v28 < v29) ? (LOBYTE(v27) = -1) : (LOBYTE(v27) = 1), !v30))
        {
          if (v27 == 1)
          {
            *v9 = v25;
            *(a2 - 4) = v26;
            v31 = *(v9 + 8);
            *(v9 + 8) = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(v9, v9 + 16, v9 + 32, (a2 - 4));
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(v9, v9 + 16, v9 + 32, v9 + 48, (a2 - 4));
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,std::pair<float,long long>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(v9 + 16 * (v12 >> 1), v9, (a2 - 4));
      if (a5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(v9, v9 + 16 * (v12 >> 1), (a2 - 4));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(v9 + 16, v14 - 16, (a2 - 8));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(v9 + 32, v9 + 16 + 16 * v13, (a2 - 12));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(v14 - 16, v14, v9 + 16 + 16 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_30;
      }
    }

    v17 = *(v9 - 16);
    if (v17 == *v9)
    {
      v18 = 0;
    }

    else
    {
      v18 = -127;
    }

    if (v17 > *v9)
    {
      v18 = 1;
    }

    if (v17 < *v9)
    {
      v18 = -1;
    }

    if (!v18 && ((v19 = *(v9 - 8), v20 = *(v9 + 8), v21 = v19 == v20, v19 < v20) ? (LOBYTE(v18) = -1) : (LOBYTE(v18) = 1), v21) || v18 != 1)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,long long> *,std::greater<std::pair<float,long long>> &>(v9, a2);
      v9 = result;
      goto LABEL_35;
    }

LABEL_30:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,long long> *,std::greater<std::pair<float,long long>> &>(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_33;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(v9, v22);
    v9 = v22 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(v22 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_33:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,false>(v8, v22, a3, -v11, a5 & 1);
      v9 = v22 + 16;
LABEL_35:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(v9, v9 + 16, (a2 - 4));
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(a1, a2, a3);
  v9 = *a3;
  if (*a4 == *a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = -127;
  }

  if (*a4 > *a3)
  {
    v10 = 1;
  }

  if (*a4 < *a3)
  {
    v10 = -1;
  }

  if (v10 || ((v11 = *(a4 + 8), v12 = *(a3 + 8), v13 = v11 == v12, v11 < v12) ? (LOBYTE(v10) = -1) : (LOBYTE(v10) = 1), !v13))
  {
    if (v10 == 1)
    {
      *a3 = *a4;
      *a4 = v9;
      v14 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v14;
      v15 = *a2;
      if (*a3 == *a2)
      {
        v16 = 0;
      }

      else
      {
        v16 = -127;
      }

      if (*a3 > *a2)
      {
        v16 = 1;
      }

      if (*a3 < *a2)
      {
        v16 = -1;
      }

      if (v16 || ((v17 = *(a3 + 8), v18 = *(a2 + 8), v19 = v17 == v18, v17 < v18) ? (LOBYTE(v16) = -1) : (LOBYTE(v16) = 1), !v19))
      {
        if (v16 == 1)
        {
          *a2 = *a3;
          *a3 = v15;
          v20 = *(a2 + 8);
          *(a2 + 8) = *(a3 + 8);
          *(a3 + 8) = v20;
          v21 = *a1;
          if (*a2 == *a1)
          {
            v22 = 0;
          }

          else
          {
            v22 = -127;
          }

          if (*a2 > *a1)
          {
            v22 = 1;
          }

          if (*a2 < *a1)
          {
            v22 = -1;
          }

          if (v22 || ((v23 = *(a2 + 8), v24 = *(a1 + 8), v25 = v23 == v24, v23 < v24) ? (LOBYTE(v22) = -1) : (LOBYTE(v22) = 1), !v25))
          {
            if (v22 == 1)
            {
              *a1 = *a2;
              *a2 = v21;
              v26 = *(a1 + 8);
              *(a1 + 8) = *(a2 + 8);
              *(a2 + 8) = v26;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(a1, a2, a3, a4);
  v11 = *a4;
  if (*a5 == *a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = -127;
  }

  if (*a5 > *a4)
  {
    v12 = 1;
  }

  if (*a5 < *a4)
  {
    v12 = -1;
  }

  if (v12 || ((v13 = *(a5 + 8), v14 = *(a4 + 8), v15 = v13 == v14, v13 < v14) ? (LOBYTE(v12) = -1) : (LOBYTE(v12) = 1), !v15))
  {
    if (v12 == 1)
    {
      *a4 = *a5;
      *a5 = v11;
      v16 = *(a4 + 8);
      *(a4 + 8) = *(a5 + 8);
      *(a5 + 8) = v16;
      v17 = *a3;
      if (*a4 == *a3)
      {
        v18 = 0;
      }

      else
      {
        v18 = -127;
      }

      if (*a4 > *a3)
      {
        v18 = 1;
      }

      if (*a4 < *a3)
      {
        v18 = -1;
      }

      if (v18 || ((v19 = *(a4 + 8), v20 = *(a3 + 8), v21 = v19 == v20, v19 < v20) ? (LOBYTE(v18) = -1) : (LOBYTE(v18) = 1), !v21))
      {
        if (v18 == 1)
        {
          *a3 = *a4;
          *a4 = v17;
          v22 = *(a3 + 8);
          *(a3 + 8) = *(a4 + 8);
          *(a4 + 8) = v22;
          v23 = *a2;
          if (*a3 == *a2)
          {
            v24 = 0;
          }

          else
          {
            v24 = -127;
          }

          if (*a3 > *a2)
          {
            v24 = 1;
          }

          if (*a3 < *a2)
          {
            v24 = -1;
          }

          if (v24 || ((v25 = *(a3 + 8), v26 = *(a2 + 8), v27 = v25 == v26, v25 < v26) ? (LOBYTE(v24) = -1) : (LOBYTE(v24) = 1), !v27))
          {
            if (v24 == 1)
            {
              *a2 = *a3;
              *a3 = v23;
              v28 = *(a2 + 8);
              *(a2 + 8) = *(a3 + 8);
              *(a3 + 8) = v28;
              v29 = *a1;
              if (*a2 == *a1)
              {
                v30 = 0;
              }

              else
              {
                v30 = -127;
              }

              if (*a2 > *a1)
              {
                v30 = 1;
              }

              if (*a2 < *a1)
              {
                v30 = -1;
              }

              if (v30 || ((v31 = *(a2 + 8), v32 = *(a1 + 8), v33 = v31 == v32, v31 < v32) ? (LOBYTE(v30) = -1) : (LOBYTE(v30) = 1), !v33))
              {
                if (v30 == 1)
                {
                  *a1 = *a2;
                  *a2 = v29;
                  v34 = *(a1 + 8);
                  *(a1 + 8) = *(a2 + 8);
                  *(a2 + 8) = v34;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 16);
        v7 = *v5;
        if (v6 == *v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = -127;
        }

        if (v6 > *v5)
        {
          v8 = 1;
        }

        if (v6 < *v5)
        {
          v8 = -1;
        }

        if (v8 || ((v9 = *(v5 + 24), v10 = *(v5 + 8), v11 = v9 == v10, v9 < v10) ? (LOBYTE(v8) = -1) : (LOBYTE(v8) = 1), !v11))
        {
          if (v8 == 1)
          {
            v12 = *(v5 + 24);
            v13 = v3;
            while (1)
            {
              v14 = v5;
              v15 = result + v13;
              *(v15 + 16) = v7;
              *(v15 + 24) = *(result + v13 + 8);
              if (!v13)
              {
                v14 = result;
                goto LABEL_36;
              }

              v7 = *(v15 - 16);
              if (v6 == v7)
              {
                v16 = 0;
              }

              else
              {
                v16 = -127;
              }

              if (v6 > v7)
              {
                v16 = 1;
              }

              v17 = v6 < v7 ? -1 : v16;
              if (!v17)
              {
                v18 = *(result + v13 - 8);
                v19 = v12 == v18;
                LOBYTE(v17) = v12 < v18 ? -1 : 1;
                if (v19)
                {
                  break;
                }
              }

              v5 = v14 - 16;
              v13 -= 16;
              if (v17 != 1)
              {
                goto LABEL_36;
              }
            }

            v14 = result + v13;
LABEL_36:
            *v14 = v6;
            *(v14 + 8) = v12;
          }
        }

        v2 = v4 + 16;
        v3 += 16;
      }

      while (v4 + 16 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = (result + 8);
      do
      {
        v4 = result;
        result = v2;
        v5 = *(v4 + 16);
        v6 = *v4;
        if (v5 == *v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = -127;
        }

        if (v5 > *v4)
        {
          v7 = 1;
        }

        if (v5 < *v4)
        {
          v7 = -1;
        }

        if (v7 || ((v8 = *(v4 + 24), v9 = *(v4 + 8), v10 = v8 == v9, v8 < v9) ? (LOBYTE(v7) = -1) : (LOBYTE(v7) = 1), !v10))
        {
          if (v7 == 1)
          {
            v11 = *(v4 + 24);
            v12 = v3;
            do
            {
              v13 = v12;
              v12[2] = v6;
              *(v12 + 2) = *v12;
              v6 = *(v12 - 6);
              if (v5 == v6)
              {
                v14 = 0;
              }

              else
              {
                v14 = -127;
              }

              if (v5 > v6)
              {
                v14 = 1;
              }

              if (v5 < v6)
              {
                v14 = -1;
              }

              if (!v14)
              {
                v15 = *(v13 - 2);
                v16 = v11 == v15;
                LOBYTE(v14) = v11 < v15 ? -1 : 1;
                if (v16)
                {
                  break;
                }
              }

              v17 = v14;
              v12 = v13 - 4;
            }

            while (v17 == 1);
            *(v13 - 2) = v5;
            *v13 = v11;
          }
        }

        v2 = result + 16;
        v3 += 4;
      }

      while (result + 16 != a2);
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,long long> *,std::greater<std::pair<float,long long>> &>(uint64_t a1, float *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 4);
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -127;
  }

  if (*a1 > v4)
  {
    v5 = 1;
  }

  if (*a1 < v4)
  {
    v5 = -1;
  }

  if ((v5 || ((v6 = *(a2 - 1), v7 = v3 == v6, v3 < v6) ? (LOBYTE(v5) = -1) : (LOBYTE(v5) = 1), !v7)) && v5 == 1)
  {
    v8 = a1;
    v9 = a1;
    do
    {
      v10 = v9[4];
      v9 += 4;
      v11 = v2 < v10;
      v12 = v2 <= v10;
      if (v2 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = -127;
      }

      if (!v12)
      {
        v13 = 1;
      }

      if (v11)
      {
        v13 = -1;
      }

      if (!v13)
      {
        v14 = *(v8 + 3);
        v15 = v3 == v14;
        if (v3 < v14)
        {
          v16 = -1;
        }

        else
        {
          v16 = 1;
        }

        if (v15)
        {
          LOBYTE(v13) = 0;
        }

        else
        {
          LOBYTE(v13) = v16;
        }
      }

      v8 = v9;
    }

    while (v13 != 1);
  }

  else
  {
    v17 = (a1 + 16);
    do
    {
      v9 = v17;
      if (v17 >= a2)
      {
        break;
      }

      if (v2 == *v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = -127;
      }

      if (v2 > *v9)
      {
        v18 = 1;
      }

      if (v2 < *v9)
      {
        v18 = -1;
      }

      if (!v18)
      {
        v19 = *(v9 + 1);
        v20 = v3 == v19;
        LOBYTE(v18) = v3 < v19 ? -1 : 1;
        if (v20)
        {
          LOBYTE(v18) = 0;
        }
      }

      v21 = v18;
      v17 = v9 + 4;
    }

    while (v21 != 1);
  }

  if (v9 < a2)
  {
    v22 = a2 - 4;
    do
    {
      a2 = v22;
      v23 = v2 < *v22;
      v24 = v2 <= *v22;
      if (v2 == *v22)
      {
        v25 = 0;
      }

      else
      {
        v25 = -127;
      }

      if (!v24)
      {
        v25 = 1;
      }

      if (v23)
      {
        v25 = -1;
      }

      if (!v25)
      {
        v26 = *(a2 + 1);
        v27 = v3 == v26;
        LOBYTE(v25) = v3 < v26 ? -1 : 1;
        if (v27)
        {
          break;
        }
      }

      v28 = v25;
      v22 = a2 - 4;
    }

    while (v28 == 1);
  }

  if (v9 < a2)
  {
    v29 = *v9;
    v30 = *a2;
    do
    {
      *v9 = v30;
      *a2 = v29;
      v31 = *(v9 + 1);
      *(v9 + 1) = *(a2 + 1);
      *(a2 + 1) = v31;
      v32 = v9;
      do
      {
        v33 = v9[4];
        v9 += 4;
        v29 = v33;
        v34 = v2 < v33;
        v35 = v2 <= v33;
        if (v2 == v33)
        {
          v36 = 0;
        }

        else
        {
          v36 = -127;
        }

        if (!v35)
        {
          v36 = 1;
        }

        if (v34)
        {
          v36 = -1;
        }

        if (!v36)
        {
          v37 = *(v32 + 3);
          v38 = v3 == v37;
          if (v3 < v37)
          {
            v39 = -1;
          }

          else
          {
            v39 = 1;
          }

          if (v38)
          {
            LOBYTE(v36) = 0;
          }

          else
          {
            LOBYTE(v36) = v39;
          }
        }

        v32 = v9;
      }

      while (v36 != 1);
      v40 = a2 - 4;
      do
      {
        a2 = v40;
        v30 = *v40;
        v41 = v2 < *v40;
        v42 = v2 <= *v40;
        if (v2 == *v40)
        {
          v43 = 0;
        }

        else
        {
          v43 = -127;
        }

        if (!v42)
        {
          v43 = 1;
        }

        if (v41)
        {
          v43 = -1;
        }

        if (!v43)
        {
          v44 = *(a2 + 1);
          v45 = v3 == v44;
          LOBYTE(v43) = v3 < v44 ? -1 : 1;
          if (v45)
          {
            break;
          }
        }

        v46 = v43;
        v40 = a2 - 4;
      }

      while (v46 == 1);
    }

    while (v9 < a2);
  }

  if (v9 - 4 != a1)
  {
    *a1 = *(v9 - 4);
    *(a1 + 8) = *(v9 - 1);
  }

  *(v9 - 4) = v2;
  *(v9 - 1) = v3;
  return v9;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,long long> *,std::greater<std::pair<float,long long>> &>(uint64_t a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  do
  {
    v5 = v2;
    v6 = a1 + v2;
    v7 = *(a1 + v2 + 16);
    if (v7 == v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = -127;
    }

    if (v7 > v3)
    {
      v8 = 1;
    }

    if (v7 < v3)
    {
      v8 = -1;
    }

    if (!v8)
    {
      v9 = *(v6 + 24);
      v10 = v9 == v4;
      LOBYTE(v8) = v9 < v4 ? -1 : 1;
      if (v10)
      {
        break;
      }
    }

    v11 = v8;
    v2 = v5 + 16;
  }

  while (v11 == 1);
  v12 = a1 + v5 + 16;
  if (v5)
  {
    v13 = a2;
    do
    {
      v14 = *(v13 - 4);
      v13 -= 4;
      v15 = v14 < v3;
      v16 = v14 <= v3;
      if (v14 == v3)
      {
        v17 = 0;
      }

      else
      {
        v17 = -127;
      }

      if (!v16)
      {
        v17 = 1;
      }

      if (v15)
      {
        v17 = -1;
      }

      if (!v17)
      {
        v18 = *(a2 - 1);
        v19 = v18 == v4;
        LOBYTE(v17) = v18 < v4 ? -1 : 1;
        if (v19)
        {
          LOBYTE(v17) = 0;
        }
      }

      a2 = v13;
    }

    while (v17 != 1);
  }

  else
  {
    while (v12 < a2)
    {
      v13 = a2 - 4;
      v20 = *(a2 - 4);
      if (v20 == v3)
      {
        v21 = 0;
      }

      else
      {
        v21 = -127;
      }

      if (v20 > v3)
      {
        v21 = 1;
      }

      if (v20 < v3)
      {
        v21 = -1;
      }

      if (!v21)
      {
        v22 = *(a2 - 1);
        v23 = v22 == v4;
        LOBYTE(v21) = v22 < v4 ? -1 : 1;
        if (v23)
        {
          LOBYTE(v21) = 0;
        }
      }

      a2 -= 4;
      if (v21 == 1)
      {
        goto LABEL_49;
      }
    }

    v13 = a2;
  }

LABEL_49:
  if (v12 >= v13)
  {
    v25 = v12;
  }

  else
  {
    v24 = *v13;
    v25 = v12;
    v26 = v13;
    do
    {
      *v25 = v24;
      *v26 = v7;
      v27 = *(v25 + 8);
      *(v25 + 8) = *(v26 + 1);
      *(v26 + 1) = v27;
      v28 = (v25 + 16);
      do
      {
        v25 = v28;
        v7 = *v28;
        v29 = *v28 < v3;
        v30 = *v28 <= v3;
        if (*v28 == v3)
        {
          v31 = 0;
        }

        else
        {
          v31 = -127;
        }

        if (!v30)
        {
          v31 = 1;
        }

        if (v29)
        {
          v31 = -1;
        }

        if (!v31)
        {
          v32 = *(v25 + 8);
          v33 = v32 == v4;
          LOBYTE(v31) = v32 < v4 ? -1 : 1;
          if (v33)
          {
            break;
          }
        }

        v34 = v31;
        v28 = (v25 + 16);
      }

      while (v34 == 1);
      v35 = v26;
      do
      {
        v36 = *(v35 - 4);
        v35 -= 4;
        v24 = v36;
        v37 = v36 < v3;
        v38 = v36 <= v3;
        if (v36 == v3)
        {
          v39 = 0;
        }

        else
        {
          v39 = -127;
        }

        if (!v38)
        {
          v39 = 1;
        }

        if (v37)
        {
          v39 = -1;
        }

        if (!v39)
        {
          v40 = *(v26 - 1);
          v41 = v40 == v4;
          if (v40 < v4)
          {
            v42 = -1;
          }

          else
          {
            v42 = 1;
          }

          if (v41)
          {
            LOBYTE(v39) = 0;
          }

          else
          {
            LOBYTE(v39) = v42;
          }
        }

        v26 = v35;
      }

      while (v39 != 1);
      v26 = v35;
    }

    while (v25 < v35);
  }

  if (v25 - 16 != a1)
  {
    *a1 = *(v25 - 16);
    *(a1 + 8) = *(v25 - 8);
  }

  *(v25 - 16) = v3;
  *(v25 - 8) = v4;
  return v25 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 16);
        v6 = *a1;
        if (v5 == *a1)
        {
          v7 = 0;
        }

        else
        {
          v7 = -127;
        }

        if (v5 > *a1)
        {
          v7 = 1;
        }

        if (v5 < *a1)
        {
          v7 = -1;
        }

        if (v7 || ((v8 = *(a2 - 8), v9 = *(a1 + 8), v10 = v8 == v9, v8 < v9) ? (LOBYTE(v7) = -1) : (LOBYTE(v7) = 1), !v10))
        {
          if (v7 == 1)
          {
            *a1 = v5;
            *(a2 - 16) = v6;
            v11 = *(a1 + 8);
            *(a1 + 8) = *(a2 - 8);
            *(a2 - 8) = v11;
          }
        }

        return 1;
      }

      goto LABEL_23;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(a1, a1 + 16, a2 - 16);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(a1, a1 + 16, a1 + 32, a2 - 16);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
      return 1;
  }

LABEL_23:
  v12 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>,0>(a1, a1 + 16, a1 + 32);
  v13 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    v17 = *v12;
    if (*v13 == *v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = -127;
    }

    if (*v13 > *v12)
    {
      v18 = 1;
    }

    if (*v13 < *v12)
    {
      v18 = -1;
    }

    if (v18 || ((v19 = *(v13 + 8), v20 = *(v12 + 8), v21 = v19 == v20, v19 < v20) ? (LOBYTE(v18) = -1) : (LOBYTE(v18) = 1), !v21))
    {
      if (v18 == 1)
      {
        v22 = *(v13 + 8);
        v23 = v14;
        while (1)
        {
          v24 = a1 + v23;
          *(v24 + 48) = v17;
          *(v24 + 56) = *(a1 + v23 + 40);
          if (v23 == -32)
          {
            v25 = a1;
            goto LABEL_56;
          }

          v25 = v12;
          v17 = *(v24 + 16);
          if (v16 == v17)
          {
            v26 = 0;
          }

          else
          {
            v26 = -127;
          }

          if (v16 > v17)
          {
            v26 = 1;
          }

          if (v16 < v17)
          {
            v26 = -1;
          }

          if (!v26)
          {
            v27 = *(a1 + v23 + 24);
            v28 = v22 == v27;
            LOBYTE(v26) = v22 < v27 ? -1 : 1;
            if (v28)
            {
              break;
            }
          }

          v12 -= 16;
          v23 -= 16;
          if (v26 != 1)
          {
            goto LABEL_56;
          }
        }

        v25 = a1 + v23 + 32;
LABEL_56:
        *v25 = v16;
        *(v25 + 8) = v22;
        if (++v15 == 8)
        {
          return v13 + 16 == a2;
        }
      }
    }

    v12 = v13;
    v14 += 16;
    v13 += 16;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*,std::pair<float,long long>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 16 * v9;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 == *a1)
        {
          v14 = 0;
        }

        else
        {
          v14 = -127;
        }

        if (*v12 > *a1)
        {
          v14 = 1;
        }

        if (*v12 < *a1)
        {
          v14 = -1;
        }

        if (v14 || ((v15 = *(v12 + 8), v16 = *(a1 + 8), v17 = v15 == v16, v15 < v16) ? (LOBYTE(v14) = -1) : (LOBYTE(v14) = 1), !v17))
        {
          if (v14 == 1)
          {
            *v12 = *a1;
            *a1 = v13;
            v18 = *(v12 + 8);
            *(v12 + 8) = *(a1 + 8);
            *(a1 + 8) = v18;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(a1, a4, v8, a1);
          }
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v19 = a2 - 16;
      do
      {
        v20 = *a1;
        v21 = *(a1 + 8);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(a1, a4, v8);
        if (v19 == v22)
        {
          *v22 = v20;
          *(v22 + 8) = v21;
        }

        else
        {
          *v22 = *v19;
          *(v22 + 8) = *(v19 + 8);
          *v19 = v20;
          *(v19 + 8) = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::__wrap_iter<std::pair<float,long long>*>>(a1, v22 + 16, a4, (v22 + 16 - a1) >> 4);
        }

        v19 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 == v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = -127;
        }

        if (*v8 > v10)
        {
          v11 = 1;
        }

        if (*v8 < v10)
        {
          v11 = -1;
        }

        if (v11 || ((v12 = *(v8 + 8), v13 = *(v8 + 24), v14 = v12 == v13, v12 < v13) ? (LOBYTE(v11) = -1) : (LOBYTE(v11) = 1), !v14))
        {
          if (v11 == 1)
          {
            v8 += 16;
            v7 = v9;
          }
        }
      }

      v15 = *v8;
      v16 = *a4;
      if (*v8 == *a4)
      {
        v17 = 0;
      }

      else
      {
        v17 = -127;
      }

      if (*v8 > *a4)
      {
        v17 = 1;
      }

      if (*v8 < *a4)
      {
        v18 = -1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 || ((v19 = *(v8 + 8), v20 = *(a4 + 8), v21 = v19 == v20, v19 < v20) ? (LOBYTE(v18) = -1) : (LOBYTE(v18) = 1), !v21))
      {
        if (v18 == 1)
        {
          return result;
        }

        v19 = *(a4 + 8);
      }

      do
      {
        v22 = v8;
        *a4 = v15;
        *(a4 + 8) = *(v8 + 8);
        if (v5 < v7)
        {
          break;
        }

        v23 = (2 * v7) | 1;
        v8 = result + 16 * v23;
        v24 = 2 * v7 + 2;
        if (v24 >= a3)
        {
          v7 = (2 * v7) | 1;
        }

        else
        {
          v25 = *(v8 + 16);
          if (*v8 == v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = -127;
          }

          if (*v8 > v25)
          {
            v26 = 1;
          }

          if (*v8 < v25)
          {
            v27 = -1;
          }

          else
          {
            v27 = v26;
          }

          if (v27 || ((v28 = *(v8 + 8), v29 = *(v8 + 24), v7 = v23, v30 = v28 == v29, v28 < v29) ? (LOBYTE(v27) = -1) : (LOBYTE(v27) = 1), !v30))
          {
            if (v27 == 1)
            {
              v8 += 16;
              v7 = v24;
            }

            else
            {
              v7 = v23;
            }
          }
        }

        v15 = *v8;
        if (*v8 == v16)
        {
          v31 = 0;
        }

        else
        {
          v31 = -127;
        }

        if (*v8 > v16)
        {
          v31 = 1;
        }

        if (*v8 < v16)
        {
          v31 = -1;
        }

        if (!v31)
        {
          v32 = *(v8 + 8);
          v33 = v32 == v19;
          if (v32 < v19)
          {
            LOBYTE(v31) = -1;
          }

          else
          {
            LOBYTE(v31) = 1;
          }

          if (v33)
          {
            LOBYTE(v31) = 0;
          }
        }

        a4 = v22;
      }

      while (v31 != 1);
      *v22 = v16;
      *(v22 + 8) = v19;
    }
  }

  return result;
}

float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,long long>> &,std::pair<float,long long>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 16 * v3;
    a1 = v5 + 16;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v6 + 2 < a3)
    {
      v8 = v5 + 32;
      v9 = *(v5 + 32);
      v10 = *(v5 + 16);
      if (v10 == v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = -127;
      }

      if (v10 > v9)
      {
        v11 = 1;
      }

      if (v10 < v9)
      {
        v11 = -1;
      }

      if (v11 || ((v12 = *(v5 + 24), v13 = *(v5 + 40), v14 = v12 == v13, v12 < v13) ? (LOBYTE(v11) = -1) : (LOBYTE(v11) = 1), !v14))
      {
        if (v11 == 1)
        {
          a1 = v8;
          v3 = v7;
        }
      }
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

BOOL flatbuffers::Verifier::VerifyBufferFromStart<HashML::ModelContainer>(flatbuffers::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = flatbuffers::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return HashML::ModelContainer::Verify(v6, this);
}

uint64_t flatbuffers::Verifier::VerifyOffset(flatbuffers::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL HashML::ModelContainer::Verify(HashML::ModelContainer *this, flatbuffers::Verifier *a2)
{
  result = flatbuffers::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_18;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2)
    {
      if (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 9) && v8 - 8 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this + v5[4] - *a2) && (v6 < 0xB || (v10 = v5[5]) == 0 || (result = 0, v11 = *(a2 + 1), v11 >= 9) && v11 - 8 >= this + v10 - *a2)))
      {
LABEL_18:
        result = flatbuffers::Table::VerifyOffset(this, a2, 0xCu);
        if (result)
        {
          v12 = (this - *this);
          if (*v12 < 0xDu || (v13 = v12[6]) == 0 || (result = flatbuffers::Verifier::VerifyVectorOrString(a2, this + v13 + *(this + v13), 1uLL, 0)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_26B81435C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D681C10](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D681BC0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26B814418(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x26D681B80](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x26D681B90](v13);
  return a1;
}

void sub_26B81468C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x26D681B90](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26B81466CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
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

void sub_26B8148C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void reranker::MultiHeadAttention<float>::forward(int *a1, const float *a2, const float *a3, const float *a4, float *a5, const float *a6, const float *a7, const float *a8, float *a9, const float *a10, const float *a11, const float *a12, const float *a13)
{
  v45 = a1[3];
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v44 = *a1;
  std::vector<float>::vector[abi:ne200100](&v73, a1[1] * *a1);
  v20 = v73;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  std::vector<float>::vector[abi:ne200100](&v70, (*a1 * *a1));
  v21 = v70;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<float>::vector[abi:ne200100](&v67, a1[2] * *a1);
  v22 = v67;
  v23 = a1[1];
  v64 = (*a1 | (*a1 << 32));
  LODWORD(v65) = v23;
  reranker::Linear::forward(&v64, a2, v20, a6, a7);
  v24 = a1[2];
  v64 = (*a1 | (*a1 << 32));
  LODWORD(v65) = v24;
  reranker::Linear::forward(&v64, a3, v21, a8, a9);
  v25 = a1[2];
  v64 = (*a1 | (*a1 << 32));
  LODWORD(v65) = v25;
  reranker::Linear::forward(&v64, a4, v22, a10, a11);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<float>::vector[abi:ne200100](&v64, a1[1] * *a1 / a1[3]);
  v26 = v64;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  std::vector<float>::vector[abi:ne200100](&v61, *a1 * *a1 / a1[3]);
  __B = v61;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  std::vector<float>::vector[abi:ne200100](&v58, a1[2] * *a1 / a1[3]);
  v28 = v58;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  std::vector<float>::vector[abi:ne200100](&v55, a1[2] * a1[1]);
  __C = v55;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<float>::vector[abi:ne200100](&v52, *a1 * a1[1] / a1[3]);
  v30 = v52;
  __p = 0;
  v50 = 0;
  v51 = 0;
  std::vector<float>::vector[abi:ne200100](&__p, *a1 * a1[1]);
  v31 = a1[3];
  v32 = a1[1];
  if (v31 >= 1)
  {
    v33 = 0;
    v34 = 1.0 / sqrt(v44 / v45);
    do
    {
      cblas_scopy(v32 * *a1 / v31, &v73[v33], v31, v26, 1);
      cblas_scopy(a1[2] * *a1 / a1[3], &v70[v33], a1[3], __B, 1);
      cblas_scopy(a1[2] * *a1 / a1[3], &v67[v33], a1[3], v28, 1);
      cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasTrans, a1[1], a1[2], *a1 / a1[3], v34, v26, *a1 / a1[3], __B, *a1 / a1[3], 0.0, __C, a1[2]);
      v47 = *(a1 + 1);
      Softmax::forward(&v47, __C);
      cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, a1[1], *a1 / a1[3], a1[2], 1.0, __C, a1[2], v28, *a1 / a1[3], 0.0, v30, *a1 / a1[3]);
      v32 = a1[1];
      v31 = a1[3];
      if (v32 >= 1)
      {
        v35 = 0;
        v36 = *a1;
        v37 = *a1 / v31;
        v38 = __p;
        v39 = v37 * v33;
        do
        {
          if (v37 >= 1)
          {
            v40 = &v30[v36 * v35 / v31];
            v41 = (v36 / v31);
            v42 = v39;
            do
            {
              v43 = *v40++;
              v38[v42++] = v43;
              --v41;
            }

            while (v41);
          }

          ++v35;
          v39 += v36;
        }

        while (v35 != v32);
      }

      ++v33;
    }

    while (v33 < v31);
    v32 = a1[1];
  }

  v47 = *a1 | (*a1 << 32);
  v48 = v32;
  reranker::Linear::forward(&v47, __p, a5, a12, a13);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_26B814E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v37 = *(v35 - 176);
  if (v37)
  {
    *(v35 - 168) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 152);
  if (v38)
  {
    *(v35 - 144) = v38;
    operator delete(v38);
  }

  v39 = *(v35 - 128);
  if (v39)
  {
    *(v35 - 120) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void reranker::Linear::forward(reranker::Linear *this, const float *__A, float *__C, const float *__B, const float *a5)
{
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, *(this + 2), *(this + 1), *this, 1.0, __A, *this, __B, *(this + 1), 0.0, __C, *(this + 1));
  if (*(this + 2) >= 1)
  {
    v8 = 0;
    do
    {
      cblas_saxpy(*(this + 1), 1.0, a5, 1, &__C[*(this + 1) * v8++], 1);
    }

    while (v8 < *(this + 2));
  }
}

void reranker::EncoderLayer<float>::forward(unsigned int *a1, const float *a2, float *a3, int *a4, int a5)
{
  if (a5 != 1)
  {
    if (a5)
    {
      exit(1);
    }

    v7 = (a4 - *a4);
    v8 = *v7;
    if (v8 >= 0xF)
    {
      v9 = v7[7];
      if (v7[7])
      {
        v9 += a4 + *(a4 + v9);
      }

      v10 = v9 + 4;
      if (v8 >= 0x15)
      {
        v11 = v7[10];
        if (v7[10])
        {
          v11 += a4 + *(a4 + v11);
        }

        v12 = v11 + 4;
        goto LABEL_28;
      }

      if (v8 >= 0x11)
      {
        v12 = 4;
LABEL_28:
        v25 = v7[8];
        if (v7[8])
        {
          v25 += a4 + *(a4 + v25);
        }

        v22 = v25 + 4;
        if (v8 >= 0x17)
        {
          v26 = v7[11];
          if (v7[11])
          {
            v26 += a4 + *(a4 + v26);
          }

          v21 = v26 + 4;
LABEL_50:
          v31 = v7[9];
          if (v7[9])
          {
            v31 += a4 + *(a4 + v31);
          }

          v20 = v31 + 4;
          if (v8 >= 0x19)
          {
            v32 = v7[12];
            if (v7[12])
            {
              v32 += a4 + *(a4 + v32);
            }

            v17 = v32 + 4;
            if (v8 >= 0x2B)
            {
              v33 = v7[21];
              if (v7[21])
              {
                v33 += a4 + *(a4 + v33);
              }

              v18 = v33 + 4;
              if (v8 < 0x2D)
              {
                v34 = 0;
              }

              else
              {
                v34 = v7[22];
                if (v7[22])
                {
                  v34 += a4 + *(a4 + v34);
                }
              }

              v19 = v34 + 4;
LABEL_96:
              v45 = v7[13];
              if (v7[13])
              {
                v45 += a4 + *(a4 + v45);
              }

              v78 = v45 + 4;
              if (v8 >= 0x1D)
              {
                v46 = v7[14];
                if (v7[14])
                {
                  v46 += a4 + *(a4 + v46);
                }

                v77 = v46 + 4;
                if (v8 >= 0x1F)
                {
                  v47 = v7[15];
                  if (v7[15])
                  {
                    v47 += a4 + *(a4 + v47);
                  }

                  __B = v47 + 4;
                  if (v8 >= 0x21)
                  {
                    v48 = v7[16];
                    if (v7[16])
                    {
                      v48 += a4 + *(a4 + v48);
                    }

                    v75 = v48 + 4;
                    if (v8 >= 0x23)
                    {
                      v49 = v7[17];
                      if (v7[17])
                      {
                        v49 += a4 + *(a4 + v49);
                      }

                      v81 = v49 + 4;
                      if (v8 >= 0x25)
                      {
                        v50 = v7[18];
                        if (v7[18])
                        {
                          v50 += a4 + *(a4 + v50);
                        }

                        v41 = v50 + 4;
                        if (v8 >= 0x27)
                        {
                          v51 = v7[19];
                          if (v7[19])
                          {
                            v51 += a4 + *(a4 + v51);
                          }

                          v43 = v51 + 4;
                          if (v8 >= 0x29)
                          {
                            v44 = v7[20];
                            if (v44)
                            {
LABEL_118:
                              v80 = v41;
                              v73 = v43;
                              v74 = a4 + v44 + *(a4 + v44);
                              goto LABEL_126;
                            }
                          }

                          goto LABEL_147;
                        }

                        goto LABEL_146;
                      }

                      goto LABEL_145;
                    }

                    goto LABEL_144;
                  }

                  goto LABEL_143;
                }

                goto LABEL_142;
              }

              goto LABEL_119;
            }

            v18 = 4;
            if (v8 >= 0x1B)
            {
              v19 = 4;
              goto LABEL_96;
            }

LABEL_68:
            v19 = 4;
            v78 = 4;
            v77 = 4;
            __B = 4;
            v74 = 0;
            v75 = 4;
            v81 = 4;
            v80 = 4;
            v73 = 4;
            v18 = 4;
            goto LABEL_126;
          }

LABEL_61:
          v74 = 0;
          v17 = 4;
          v18 = 4;
          v19 = 4;
          v78 = 4;
LABEL_120:
          v77 = 4;
LABEL_121:
          __B = 4;
LABEL_122:
          v75 = 4;
LABEL_123:
          v81 = 4;
LABEL_124:
          v80 = 4;
LABEL_125:
          v73 = 4;
          goto LABEL_126;
        }

        if (v8 >= 0x13)
        {
          v21 = 4;
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_34:
      v18 = 4;
      v19 = 4;
      v78 = 4;
      v77 = 4;
      __B = 4;
      v74 = 0;
      v75 = 4;
      v81 = 4;
      v80 = 4;
      v73 = 4;
      v20 = 4;
      v21 = 4;
      v22 = 4;
      v12 = 4;
LABEL_63:
      v17 = 4;
      goto LABEL_126;
    }

LABEL_17:
    v17 = 4;
    v18 = 4;
    v19 = 4;
    v78 = 4;
    v77 = 4;
    __B = 4;
    v74 = 0;
    v75 = 4;
    v81 = 4;
    v80 = 4;
    v73 = 4;
    v20 = 4;
    v21 = 4;
    v22 = 4;
    v12 = 4;
    v10 = 4;
    goto LABEL_126;
  }

  v13 = (a4 - *a4);
  v14 = *v13;
  if (v14 < 0x2F)
  {
    goto LABEL_17;
  }

  v15 = v13[23];
  if (v13[23])
  {
    v15 += a4 + *(a4 + v15);
  }

  v10 = v15 + 4;
  if (v14 < 0x35)
  {
    if (v14 < 0x31)
    {
      goto LABEL_34;
    }

    v12 = 4;
  }

  else
  {
    v16 = v13[26];
    if (v13[26])
    {
      v16 += a4 + *(a4 + v16);
    }

    v12 = v16 + 4;
  }

  v23 = v13[24];
  if (v13[24])
  {
    v23 += a4 + *(a4 + v23);
  }

  v22 = v23 + 4;
  if (v14 < 0x37)
  {
    if (v14 < 0x33)
    {
LABEL_62:
      v18 = 4;
      v19 = 4;
      v78 = 4;
      v77 = 4;
      __B = 4;
      v74 = 0;
      v75 = 4;
      v81 = 4;
      v80 = 4;
      v73 = 4;
      v20 = 4;
      v21 = 4;
      goto LABEL_63;
    }

    v21 = 4;
  }

  else
  {
    v24 = v13[27];
    if (v13[27])
    {
      v24 += a4 + *(a4 + v24);
    }

    v21 = v24 + 4;
  }

  v27 = v13[25];
  if (v13[25])
  {
    v27 += a4 + *(a4 + v27);
  }

  v20 = v27 + 4;
  if (v14 < 0x39)
  {
    goto LABEL_61;
  }

  v28 = v13[28];
  if (v13[28])
  {
    v28 += a4 + *(a4 + v28);
  }

  v17 = v28 + 4;
  if (v14 < 0x4B)
  {
    v18 = 4;
    if (v14 < 0x3B)
    {
      goto LABEL_68;
    }

    v19 = 4;
  }

  else
  {
    v29 = v13[37];
    if (v13[37])
    {
      v29 += a4 + *(a4 + v29);
    }

    v18 = v29 + 4;
    if (v14 < 0x4D)
    {
      v30 = 0;
    }

    else
    {
      v30 = v13[38];
      if (v13[38])
      {
        v30 += a4 + *(a4 + v30);
      }
    }

    v19 = v30 + 4;
  }

  v35 = v13[29];
  if (v13[29])
  {
    v35 += a4 + *(a4 + v35);
  }

  v78 = v35 + 4;
  if (v14 < 0x3D)
  {
LABEL_119:
    v74 = 0;
    goto LABEL_120;
  }

  v36 = v13[30];
  if (v13[30])
  {
    v36 += a4 + *(a4 + v36);
  }

  v77 = v36 + 4;
  if (v14 < 0x3F)
  {
LABEL_142:
    v74 = 0;
    goto LABEL_121;
  }

  v37 = v13[31];
  if (v13[31])
  {
    v37 += a4 + *(a4 + v37);
  }

  __B = v37 + 4;
  if (v14 < 0x41)
  {
LABEL_143:
    v74 = 0;
    goto LABEL_122;
  }

  v38 = v13[32];
  if (v13[32])
  {
    v38 += a4 + *(a4 + v38);
  }

  v75 = v38 + 4;
  if (v14 < 0x43)
  {
LABEL_144:
    v74 = 0;
    goto LABEL_123;
  }

  v39 = v13[33];
  if (v13[33])
  {
    v39 += a4 + *(a4 + v39);
  }

  v81 = v39 + 4;
  if (v14 < 0x45)
  {
LABEL_145:
    v74 = 0;
    goto LABEL_124;
  }

  v40 = v13[34];
  if (v13[34])
  {
    v40 += a4 + *(a4 + v40);
  }

  v41 = v40 + 4;
  if (v14 < 0x47)
  {
LABEL_146:
    v80 = v41;
    v74 = 0;
    goto LABEL_125;
  }

  v42 = v13[35];
  if (v13[35])
  {
    v42 += a4 + *(a4 + v42);
  }

  v43 = v42 + 4;
  if (v14 >= 0x49)
  {
    v44 = v13[36];
    if (v44)
    {
      goto LABEL_118;
    }
  }

LABEL_147:
  v80 = v41;
  v73 = v43;
  v74 = 0;
LABEL_126:
  v87 = 0;
  v88 = 0;
  v89 = 0;
  std::vector<float>::vector[abi:ne200100](&v87, a1[1] * *a1);
  v52 = a1[1];
  v53 = (*a1 | (v52 << 32));
  v54 = v52 | (a1[3] << 32);
  __p = v53;
  v85 = v54;
  reranker::MultiHeadAttention<float>::forward(&__p, a2, a2, a2, v87, v10, v12, v22, v21, v20, v17, v18, v19);
  v56 = *a1;
  v55 = a1[1];
  v57 = (v56 * v55);
  v58 = v87;
  if (v57 >= 1)
  {
    v59 = v87;
    do
    {
      v60 = *a2++;
      *v59 = v60 + *v59;
      ++v59;
      --v57;
    }

    while (v57);
  }

  __p = (v56 | (v55 << 32));
  LayerNorm<float>::forward(&__p, v58, v81, v80);
  __p = 0;
  v85 = 0;
  v86 = 0;
  std::vector<float>::vector[abi:ne200100](&__p, a1[1] * a1[2]);
  v61 = a1[1];
  v82 = *a1 | (a1[2] << 32);
  v83 = v61;
  reranker::Linear::forward(&v82, v87, __p, v78, v77);
  v63 = a1[1];
  v62 = a1[2];
  v64 = __p;
  v65 = (v63 * v62);
  if (v65 >= 1)
  {
    v66 = __p;
    do
    {
      if (*v66 < 0.0)
      {
        *v66 = 0.0;
      }

      ++v66;
      --v65;
    }

    while (v65);
  }

  v82 = v62 | (*a1 << 32);
  v83 = v63;
  reranker::Linear::forward(&v82, v64, a3, __B, v75);
  v68 = *a1;
  v67 = a1[1];
  v69 = (v68 * v67);
  if (v69 >= 1)
  {
    v70 = v87;
    v71 = a3;
    do
    {
      v72 = *v70++;
      *v71 = v72 + *v71;
      ++v71;
      --v69;
    }

    while (v69);
  }

  v82 = v68 | (v67 << 32);
  LayerNorm<float>::forward(&v82, a3, v73, (v74 + 4));
  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_26B815880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void Softmax::forward(Softmax *this, float *a2)
{
  v2 = *this;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = *(this + 1);
    v6 = 4 * v5;
    do
    {
      if (v5 >= 1)
      {
        v7 = 0.0;
        v8 = v5;
        v9 = a2;
        do
        {
          v10 = *v9++;
          v11 = v10;
          if (v7 < v10)
          {
            v7 = v11;
          }

          --v8;
        }

        while (v8);
        v12 = 0;
        v13 = 0.0;
        do
        {
          v14 = expf(a2[v12 / 4] - v7);
          a2[v12 / 4] = v14;
          v13 = v13 + v14;
          v12 += 4;
        }

        while (v6 != v12);
        v15 = 0;
        do
        {
          a2[v15 / 4] = a2[v15 / 4] / v13;
          v15 += 4;
        }

        while (v6 != v15);
      }

      ++v4;
      a2 = (a2 + v6);
    }

    while (v4 != v2);
  }
}

unsigned int *LayerNorm<float>::forward(unsigned int *result, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *result;
    v7 = v6;
    v8 = 4 * v6;
    do
    {
      if (v6 < 1)
      {
        v12 = 0.0;
        v9 = 0.0;
      }

      else
      {
        v9 = 0.0;
        v10 = v6;
        v11 = a2;
        v12 = 0.0;
        do
        {
          v13 = *v11++;
          v9 = v9 + v13;
          v12 = v12 + (v13 * v13);
          --v10;
        }

        while (v10);
      }

      if (v6 >= 1)
      {
        v14 = 0;
        v15 = v9 / v7;
        v16 = sqrt(((v12 / v7) - (v15 * v15)) + 0.00001);
        do
        {
          a2[v14 / 4] = *(a4 + v14) + (((a2[v14 / 4] - v15) / v16) * *(a3 + v14));
          v14 += 4;
        }

        while (v8 != v14);
      }

      ++v5;
      a2 = (a2 + v8);
    }

    while (v5 != v4);
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}