void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 360);
  v9 = *(a3 + 360);
  if (v8 >= *(a1 + 360))
  {
    if (v9 < v8)
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
      if (*(a2 + 360) < *(v7 + 360))
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
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v10);
      goto LABEL_10;
    }

    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, a2);
    if (*(a3 + 360) < *(a2 + 360))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 360) < *(a3 + 360))
  {
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a3, a4);
    if (*(a3 + 360) < *(a2 + 360))
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
      if (*(a2 + 360) < *(v7 + 360))
      {

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0x51B3BEA3677D46CFLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 736);
        v9 = *(a2 - 16);
        if (v8 < *(a1 + 360))
        {
          if (v9 >= v8)
          {
            std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, (a1 + 376));
            if (*(a2 - 16) >= *(v3 + 736))
            {
              return 1;
            }

            a1 = v3 + 376;
          }

          v5 = (a2 - 376);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 376);
        v7 = (a2 - 376);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752, a2 - 376);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752, a1 + 1128);
        if (*(a2 - 16) >= *(v3 + 1488))
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((v3 + 1128), (a2 - 376));
        if (*(v3 + 1488) >= *(v3 + 1112))
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((v3 + 752), (v3 + 1128));
        if (*(v3 + 1112) >= *(v3 + 736))
        {
          return 1;
        }

        v6 = (v3 + 376);
        v7 = (v3 + 752);
        break;
      default:
        goto LABEL_16;
    }

    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v6, v7);
    if (*(v3 + 736) < *(v3 + 360))
    {
      v5 = (v3 + 376);
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
    if (*(a2 - 16) < *(a1 + 360))
    {
      v5 = (a2 - 376);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 752;
  v11 = *(a1 + 736);
  v12 = *(a1 + 1112);
  if (v11 < *(a1 + 360))
  {
    if (v12 >= v11)
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, (a1 + 376));
      if (*(v3 + 1112) >= *(v3 + 736))
      {
        goto LABEL_36;
      }

      a1 = v3 + 376;
    }

    v13 = (v3 + 752);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 376), (a1 + 752));
    if (*(v3 + 736) < *(v3 + 360))
    {
      v13 = (v3 + 376);
      a1 = v3;
LABEL_35:
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 1128;
  if (v3 + 1128 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v14 + 360) < *(v10 + 360))
    {
      v21 = *v14;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v22, v14 + 8);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v23, v14 + 72);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v24, v14 + 136);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v25, v14 + 248);
      v26 = *(v14 + 360);
      v27 = *(v14 + 368);
      v17 = v15;
      while (1)
      {
        v18 = v3 + v17;
        *(v3 + v17 + 1128) = *(v3 + v17 + 752);
        cnmatrix::CNMatrixBase<double>::operator=(v3 + v17 + 1136, v3 + v17 + 760);
        cnmatrix::CNMatrixBase<double>::operator=(v18 + 1200, v18 + 824);
        cnmatrix::CNMatrixBase<double>::operator=(v18 + 1264, v18 + 888);
        cnmatrix::CNMatrixBase<double>::operator=(v18 + 1376, v18 + 1000);
        *(v18 + 1488) = *(v18 + 1112);
        *(v18 + 1496) = *(v18 + 1120);
        if (v17 == -752)
        {
          break;
        }

        v17 -= 376;
        if (v26 >= *(v18 + 736))
        {
          v19 = (v3 + v17 + 1128);
          goto LABEL_44;
        }
      }

      v19 = v3;
LABEL_44:
      *v19 = v21;
      cnmatrix::CNMatrixBase<double>::operator=(v18 + 760, v22);
      cnmatrix::CNMatrixBase<double>::operator=(v18 + 824, v23);
      cnmatrix::CNMatrixBase<double>::operator=(v18 + 888, v24);
      cnmatrix::CNMatrixBase<double>::operator=(v18 + 1000, v25);
      *(v18 + 1112) = v26;
      *(v18 + 1120) = v27;
      if (++v16 == 8)
      {
        return v14 + 376 == a2;
      }
    }

    v10 = v14;
    v15 += 376;
    v14 += 376;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(char *a1, char *a2)
{
  v5 = *a1;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v6, (a1 + 8));
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v7, (a1 + 72));
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v8, (a1 + 136));
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v9, (a1 + 248));
  v10 = *(a1 + 45);
  v11 = *(a1 + 92);
  *a1 = *a2;
  cnmatrix::CNMatrixBase<double>::operator=((a1 + 8), (a2 + 8));
  cnmatrix::CNMatrixBase<double>::operator=((a1 + 72), (a2 + 72));
  cnmatrix::CNMatrixBase<double>::operator=((a1 + 136), (a2 + 136));
  cnmatrix::CNMatrixBase<double>::operator=((a1 + 248), (a2 + 248));
  v4 = *(a2 + 45);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 45) = v4;
  *a2 = v5;
  cnmatrix::CNMatrixBase<double>::operator=((a2 + 8), v6);
  cnmatrix::CNMatrixBase<double>::operator=((a2 + 72), v7);
  cnmatrix::CNMatrixBase<double>::operator=((a2 + 136), v8);
  cnmatrix::CNMatrixBase<double>::operator=((a2 + 248), v9);
  *(a2 + 45) = v10;
  *(a2 + 92) = v11;
}

void *boost::circular_buffer<double,std::allocator<double>>::push_back_impl<double &&>(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[4];
  if (v4 == (v3 - *result) >> 3)
  {
    if (v3 != v2)
    {
      v5 = result[3];
      *v5 = *a2;
      v6 = v5 + 1;
      if (v6 != v3)
      {
        v2 = v6;
      }

      result[2] = v2;
      result[3] = v2;
    }
  }

  else
  {
    v7 = result[3];
    *v7 = *a2;
    v8 = v7 + 1;
    if (v8 != v3)
    {
      v2 = v8;
    }

    result[3] = v2;
    result[4] = v4 + 1;
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>(a1, v6);
  }

  v13 = 0;
  v14 = 376 * v2;
  std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(a1, 376 * v2, a2);
  v15 = (376 * v2 + 376);
  v7 = *(a1 + 8);
  v8 = 376 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(&v13);
  return v12;
}

void sub_2613FA6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2;
    v125 = (a2 - 376);
    k = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = k;
          v9 = v7 - k;
          v10 = 0x51B3BEA3677D46CFLL * ((v7 - k) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, v125);
              case 4:
                result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752);
                v49 = *(v7 - 8);
                v50 = *(a1 + 1120);
                if (v49 >= v50)
                {
                  if (v49 > v50)
                  {
                    return result;
                  }

                  result = *(a2 - 16);
                  if (result >= *(a1 + 1112))
                  {
                    return result;
                  }
                }

                std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 752), v125);
                v51 = *(a1 + 1120);
                v52 = *(a1 + 744);
                if (v51 >= v52)
                {
                  if (v51 > v52)
                  {
                    return result;
                  }

                  result = *(a1 + 1112);
                  if (result >= *(a1 + 736))
                  {
                    return result;
                  }
                }

                std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 376), (a1 + 752));
                v53 = *(a1 + 744);
                v54 = *(a1 + 368);
                if (v53 >= v54)
                {
                  if (v53 > v54)
                  {
                    return result;
                  }

                  result = *(a1 + 736);
                  if (result >= *(a1 + 360))
                  {
                    return result;
                  }
                }

                v55 = (a1 + 376);
                v56 = a1;
LABEL_107:
                std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v56, v55);
                return result;
              case 5:
                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752, a1 + 1128, v125);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            v7 = a2;
            if (v10 == 2)
            {
              v57 = *(a2 - 8);
              v58 = *(a1 + 368);
              if (v57 >= v58)
              {
                if (v57 > v58)
                {
                  return result;
                }

                result = *(a2 - 16);
                if (result >= *(a1 + 360))
                {
                  return result;
                }
              }

              v56 = a1;
              v55 = (a2 - 376);
              goto LABEL_107;
            }
          }

          if (v9 <= 9023)
          {
            if (a4)
            {
              if (a1 != v7)
              {
                v59 = (a1 + 376);
                if (a1 + 376 != a2)
                {
                  v60 = 0;
                  v61 = a1;
                  do
                  {
                    v62 = v61;
                    v61 = v59;
                    v63 = *(v62 + 186);
                    v64 = *(v62 + 92);
                    if (v63 < v64 || v63 <= v64 && (result = *(v62 + 92), result < *(v62 + 45)))
                    {
                      v134 = *v61;
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (v62 + 384));
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, (v62 + 448));
                      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (v62 + 512));
                      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, (v62 + 624));
                      v139 = *(v62 + 92);
                      v140 = *(v62 + 186);
                      for (i = v60; ; i -= 376)
                      {
                        v66 = a1 + i;
                        *(a1 + i + 376) = *(a1 + i);
                        cnmatrix::CNMatrixBase<double>::operator=(a1 + i + 384, a1 + i + 8);
                        cnmatrix::CNMatrixBase<double>::operator=(v66 + 448, v66 + 72);
                        cnmatrix::CNMatrixBase<double>::operator=(v66 + 512, v66 + 136);
                        cnmatrix::CNMatrixBase<double>::operator=(v66 + 624, v66 + 248);
                        *(v66 + 736) = *(v66 + 360);
                        *(v66 + 744) = *(v66 + 368);
                        if (!i)
                        {
                          v68 = a1;
                          goto LABEL_125;
                        }

                        v67 = *(v66 - 8);
                        if (v140 >= v67 && (v140 > v67 || v139 >= *(a1 + i - 16)))
                        {
                          break;
                        }
                      }

                      v68 = (a1 + i);
LABEL_125:
                      *v68 = v134;
                      cnmatrix::CNMatrixBase<double>::operator=(v66 + 8, v135);
                      cnmatrix::CNMatrixBase<double>::operator=(v66 + 72, v136);
                      cnmatrix::CNMatrixBase<double>::operator=(v66 + 136, v137);
                      *&result = cnmatrix::CNMatrixBase<double>::operator=(v66 + 248, v138).n128_u64[0];
                      v69 = v140;
                      *(v66 + 360) = v139;
                      *(v66 + 368) = v69;
                    }

                    v59 = v61 + 376;
                    v60 += 376;
                  }

                  while (v61 + 376 != a2);
                }
              }
            }

            else if (a1 != v7)
            {
              v116 = a1 + 376;
              if (a1 + 376 != a2)
              {
                v117 = a1 + 736;
                do
                {
                  v118 = a1;
                  a1 = v116;
                  v119 = *(v118 + 744);
                  v120 = *(v118 + 368);
                  if (v119 < v120 || v119 <= v120 && (result = *(v118 + 736), result < *(v118 + 360)))
                  {
                    v134 = *a1;
                    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, v118 + 384);
                    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, v118 + 448);
                    cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, v118 + 512);
                    cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, v118 + 624);
                    v139 = *(v118 + 736);
                    v140 = *(v118 + 744);
                    for (j = v117; ; j -= 376)
                    {
                      *(j - 360) = *(j - 736);
                      cnmatrix::CNMatrixBase<double>::operator=(j - 352, j - 728);
                      cnmatrix::CNMatrixBase<double>::operator=(j - 288, j - 664);
                      cnmatrix::CNMatrixBase<double>::operator=(j - 224, j - 600);
                      cnmatrix::CNMatrixBase<double>::operator=(j - 112, j - 488);
                      *(j + 8) = *(j - 368);
                      *j = *(j - 376);
                      v122 = *(j - 744);
                      if (v140 >= v122 && (v140 > v122 || v139 >= *(j - 752)))
                      {
                        break;
                      }
                    }

                    *(j - 736) = v134;
                    cnmatrix::CNMatrixBase<double>::operator=(j - 728, v135);
                    cnmatrix::CNMatrixBase<double>::operator=(j - 664, v136);
                    cnmatrix::CNMatrixBase<double>::operator=(j - 600, v137);
                    *&result = cnmatrix::CNMatrixBase<double>::operator=(j - 488, v138).n128_u64[0];
                    v123 = v140;
                    *(j - 376) = v139;
                    *(j - 368) = v123;
                  }

                  v116 = a1 + 376;
                  v117 += 376;
                }

                while (a1 + 376 != a2);
              }
            }

            return result;
          }

          if (!a3)
          {
            if (a1 != v7)
            {
              v70 = v11 >> 1;
              v71 = v11 >> 1;
              do
              {
                v72 = v71;
                if (v70 >= v71)
                {
                  v73 = (2 * v71) | 1;
                  v74 = a1 + 376 * v73;
                  if (2 * v71 + 2 < v10)
                  {
                    v75 = *(v74 + 368);
                    v76 = *(v74 + 744);
                    if (v75 < v76 || v75 <= v76 && *(v74 + 360) < *(v74 + 736))
                    {
                      v74 += 376;
                      v73 = 2 * v71 + 2;
                    }
                  }

                  v77 = a1 + 376 * v71;
                  v78 = *(v74 + 368);
                  v79 = *(v77 + 368);
                  if (v78 >= v79 && (v78 > v79 || *(v74 + 360) >= *(v77 + 360)))
                  {
                    v134 = *v77;
                    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, v77 + 8);
                    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, v77 + 72);
                    cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, v77 + 136);
                    cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, v77 + 248);
                    v80 = *(v77 + 360);
                    v140 = *(v77 + 368);
                    v139 = v80;
                    while (1)
                    {
                      v81 = v74;
                      *v77 = *v74;
                      cnmatrix::CNMatrixBase<double>::operator=(v77 + 8, v74 + 8);
                      cnmatrix::CNMatrixBase<double>::operator=(v77 + 72, v74 + 72);
                      cnmatrix::CNMatrixBase<double>::operator=(v77 + 136, v74 + 136);
                      cnmatrix::CNMatrixBase<double>::operator=(v77 + 248, v74 + 248);
                      v82 = *(v74 + 368);
                      *(v77 + 360) = *(v74 + 360);
                      *(v77 + 368) = v82;
                      if (v70 < v73)
                      {
                        break;
                      }

                      v83 = 2 * v73;
                      v73 = (2 * v73) | 1;
                      v74 = a1 + 376 * v73;
                      v84 = v83 + 2;
                      if (v84 < v10)
                      {
                        v85 = *(v74 + 368);
                        v86 = *(v74 + 744);
                        if (v85 < v86 || v85 <= v86 && *(v74 + 360) < *(v74 + 736))
                        {
                          v74 += 376;
                          v73 = v84;
                        }
                      }

                      v87 = *(v74 + 368);
                      if (v87 < v140)
                      {
                        break;
                      }

                      v77 = v81;
                      if (v87 <= v140)
                      {
                        v77 = v81;
                        if (*(v74 + 360) < v139)
                        {
                          break;
                        }
                      }
                    }

                    *v81 = v134;
                    cnmatrix::CNMatrixBase<double>::operator=(v81 + 8, v135);
                    cnmatrix::CNMatrixBase<double>::operator=(v81 + 72, v136);
                    cnmatrix::CNMatrixBase<double>::operator=(v81 + 136, v137);
                    cnmatrix::CNMatrixBase<double>::operator=(v81 + 248, v138);
                    v88 = v140;
                    *(v81 + 360) = v139;
                    *(v81 + 368) = v88;
                  }
                }

                v71 = v72 - 1;
              }

              while (v72);
              v89 = 0x51B3BEA3677D46CFLL * (v9 >> 3);
              do
              {
                v90 = a2;
                v127 = *a1;
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v128, a1 + 8);
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v129, a1 + 72);
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v130, a1 + 136);
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v131, a1 + 248);
                v91 = 0;
                v92 = *(a1 + 360);
                v133 = *(a1 + 368);
                v132 = v92;
                v93 = a1;
                do
                {
                  v94 = v93;
                  v95 = v93 + 376 * v91;
                  v93 = v95 + 376;
                  v96 = 2 * v91;
                  v91 = (2 * v91) | 1;
                  v97 = v96 + 2;
                  if (v97 < v89)
                  {
                    v98 = *(v95 + 744);
                    v99 = *(v95 + 1120);
                    if (v98 < v99 || v98 <= v99 && *(v95 + 736) < *(v95 + 1112))
                    {
                      v93 = v95 + 752;
                      v91 = v97;
                    }
                  }

                  *v94 = *v93;
                  cnmatrix::CNMatrixBase<double>::operator=(v94 + 8, v93 + 8);
                  cnmatrix::CNMatrixBase<double>::operator=(v94 + 72, v93 + 72);
                  cnmatrix::CNMatrixBase<double>::operator=(v94 + 136, v93 + 136);
                  cnmatrix::CNMatrixBase<double>::operator=(v94 + 248, v93 + 248);
                  v100 = *(v93 + 368);
                  *(v94 + 360) = *(v93 + 360);
                  *(v94 + 368) = v100;
                }

                while (v91 <= ((v89 - 2) >> 1));
                v101 = (v93 + 360);
                a2 -= 376;
                if (v93 == v90 - 376)
                {
                  *v93 = v127;
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 8, v128);
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 72, v129);
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 136, v130);
                  *&result = cnmatrix::CNMatrixBase<double>::operator=(v93 + 248, v131).n128_u64[0];
                  v114 = v133;
                  *v101 = v132;
                  *(v93 + 368) = v114;
                }

                else
                {
                  *v93 = *(v90 - 376);
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 8, v90 - 368);
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 72, v90 - 304);
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 136, v90 - 240);
                  cnmatrix::CNMatrixBase<double>::operator=(v93 + 248, v90 - 128);
                  v102 = *(v90 - 16);
                  *(v93 + 368) = *(v90 - 8);
                  v124 = (v93 + 360);
                  *v101 = v102;
                  *(v90 - 376) = v127;
                  cnmatrix::CNMatrixBase<double>::operator=(v90 - 368, v128);
                  cnmatrix::CNMatrixBase<double>::operator=(v90 - 304, v129);
                  cnmatrix::CNMatrixBase<double>::operator=(v90 - 240, v130);
                  *&result = cnmatrix::CNMatrixBase<double>::operator=(v90 - 128, v131).n128_u64[0];
                  v103 = v133;
                  *(v90 - 16) = v132;
                  *(v90 - 8) = v103;
                  v104 = v93 - a1 + 376;
                  if (v104 >= 377)
                  {
                    v105 = (0x51B3BEA3677D46CFLL * (v104 >> 3) - 2) >> 1;
                    v106 = a1 + 376 * v105;
                    v107 = *(v106 + 368);
                    v108 = *(v93 + 368);
                    if (v107 < v108 || v107 <= v108 && (result = *(v106 + 360), result < *v124))
                    {
                      v134 = *v93;
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, v93 + 8);
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, v93 + 72);
                      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, v93 + 136);
                      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, v93 + 248);
                      v109 = *v124;
                      v140 = *(v93 + 368);
                      v139 = v109;
                      while (1)
                      {
                        v110 = v106;
                        *v93 = *v106;
                        cnmatrix::CNMatrixBase<double>::operator=(v93 + 8, v106 + 8);
                        cnmatrix::CNMatrixBase<double>::operator=(v93 + 72, v106 + 72);
                        cnmatrix::CNMatrixBase<double>::operator=(v93 + 136, v106 + 136);
                        cnmatrix::CNMatrixBase<double>::operator=(v93 + 248, v106 + 248);
                        v111 = *(v106 + 368);
                        *(v93 + 360) = *(v106 + 360);
                        *(v93 + 368) = v111;
                        if (!v105)
                        {
                          break;
                        }

                        v105 = (v105 - 1) >> 1;
                        v106 = a1 + 376 * v105;
                        v112 = *(v106 + 368);
                        v93 = v110;
                        if (v112 >= v140)
                        {
                          if (v112 > v140)
                          {
                            break;
                          }

                          v93 = v110;
                          if (*(v106 + 360) >= v139)
                          {
                            break;
                          }
                        }
                      }

                      *v110 = v134;
                      cnmatrix::CNMatrixBase<double>::operator=(v110 + 8, v135);
                      cnmatrix::CNMatrixBase<double>::operator=(v110 + 72, v136);
                      cnmatrix::CNMatrixBase<double>::operator=(v110 + 136, v137);
                      *&result = cnmatrix::CNMatrixBase<double>::operator=(v110 + 248, v138).n128_u64[0];
                      v113 = v140;
                      *(v110 + 360) = v139;
                      *(v110 + 368) = v113;
                    }
                  }
                }
              }

              while (v89-- > 2);
            }

            return result;
          }

          v12 = v10 >> 1;
          v13 = (a1 + 376 * (v10 >> 1));
          if (v9 < 0xBC01)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(v13, a1, v125);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, v13, v125);
            v14 = 376 * v12;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1 + 376, v14 + a1 - 376, a2 - 752);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1 + 752, a1 + 376 + v14, a2 - 1128);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(v14 + a1 - 376, v13, a1 + 376 + v14);
            std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v13);
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = *(a1 - 8);
          v16 = *(a1 + 368);
          if (v15 < v16 || v15 <= v16 && *(a1 - 16) < *(a1 + 360))
          {
            break;
          }

          v134 = *a1;
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, a1 + 8);
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, a1 + 72);
          cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, a1 + 136);
          cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, a1 + 248);
          v36 = *(a1 + 360);
          v140 = *(a1 + 368);
          v139 = v36;
          v37 = *(v7 - 8);
          if (v140 < v37 || v140 <= v37 && v139 < *(v7 - 16))
          {
            v38 = *(a1 + 744);
            if (v140 >= v38)
            {
              v40 = a1 + 736;
              do
              {
                if (v140 <= v38 && v139 < *v40)
                {
                  break;
                }

                v38 = *(v40 + 384);
                v40 += 376;
              }

              while (v140 >= v38);
              k = v40 - 360;
            }

            else
            {
              k = a1 + 376;
            }
          }

          else
          {
            for (k = a1 + 376; k < v7; k += 376)
            {
              v39 = *(k + 368);
              if (v140 < v39 || v140 <= v39 && v139 < *(k + 360))
              {
                break;
              }
            }
          }

          v41 = v7;
          if (k < v7)
          {
            for (m = a2 - 384; v140 < v37 || v140 <= v37 && v139 < *(m + 368); m -= 376)
            {
              v37 = *m;
            }

            v41 = m + 8;
          }

          while (k < v41)
          {
            std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(k, v41);
            v43 = *(k + 744);
            if (v140 >= v43)
            {
              v44 = k + 736;
              do
              {
                if (v140 <= v43 && v139 < *v44)
                {
                  break;
                }

                v43 = *(v44 + 384);
                v44 += 376;
              }

              while (v140 >= v43);
              k = v44 - 360;
            }

            else
            {
              k += 376;
            }

            do
            {
              do
              {
                v41 -= 376;
                v45 = *(v41 + 368);
              }

              while (v140 < v45);
            }

            while (v140 <= v45 && v139 < *(v41 + 360));
          }

          v46 = (k - 376);
          if (k - 376 != a1)
          {
            *a1 = *v46;
            cnmatrix::CNMatrixBase<double>::operator=(a1 + 8, k - 368);
            cnmatrix::CNMatrixBase<double>::operator=(a1 + 72, k - 304);
            cnmatrix::CNMatrixBase<double>::operator=(a1 + 136, k - 240);
            cnmatrix::CNMatrixBase<double>::operator=(a1 + 248, k - 128);
            v47 = *(k - 8);
            *(a1 + 360) = *(k - 16);
            *(a1 + 368) = v47;
          }

          *v46 = v134;
          cnmatrix::CNMatrixBase<double>::operator=(k - 368, v135);
          cnmatrix::CNMatrixBase<double>::operator=(k - 304, v136);
          cnmatrix::CNMatrixBase<double>::operator=(k - 240, v137);
          *&result = cnmatrix::CNMatrixBase<double>::operator=(k - 128, v138).n128_u64[0];
          a4 = 0;
          v48 = v140;
          *(k - 16) = v139;
          *(k - 8) = v48;
          v7 = a2;
        }

        v134 = *a1;
        cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, a1 + 8);
        cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v136, a1 + 72);
        cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, a1 + 136);
        cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v138, a1 + 248);
        v17 = 0;
        v18 = *(a1 + 360);
        v140 = *(a1 + 368);
        v139 = v18;
        while (1)
        {
          v19 = *(a1 + v17 + 744);
          if (v19 >= v140 && (v19 > v140 || *(a1 + v17 + 736) >= v139))
          {
            break;
          }

          v17 += 376;
        }

        v20 = a1 + v17 + 376;
        if (v17)
        {
          v21 = (a2 - 376);
          v22 = *(a2 - 8);
          v23 = a2 - 384;
          if (v22 >= v140)
          {
            do
            {
              if (v22 <= v140 && *(v23 + 368) < v139)
              {
                break;
              }

              v22 = *v23;
              v23 -= 376;
            }

            while (v22 >= v140);
LABEL_28:
            v21 = (v23 + 8);
          }
        }

        else
        {
          v21 = a2;
          if (v20 < a2)
          {
            v21 = (a2 - 376);
            v24 = *(a2 - 8);
            if (v24 >= v140)
            {
              v23 = a2 - 384;
              v21 = (a2 - 376);
              while (1)
              {
                v34 = v23 + 8;
                if (v24 <= v140)
                {
                  if (*(v23 + 368) < v139 || v20 >= v34)
                  {
                    break;
                  }
                }

                else if (v20 >= v34)
                {
                  goto LABEL_28;
                }

                v21 -= 376;
                v24 = *v23;
                v23 -= 376;
                if (v24 < v140)
                {
                  goto LABEL_28;
                }
              }
            }
          }
        }

        k = v20;
        if (v20 < v21)
        {
          v25 = v21;
          do
          {
            std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(k, v25);
            do
            {
              do
              {
                k += 376;
                v26 = *(k + 368);
              }

              while (v26 < v140);
            }

            while (v26 <= v140 && *(k + 360) < v139);
            v27 = *(v25 - 2);
            if (v27 >= v140)
            {
              v28 = v25 - 384;
              do
              {
                if (v27 <= v140 && *(v28 + 46) < v139)
                {
                  break;
                }

                v27 = *v28;
                v28 -= 376;
              }

              while (v27 >= v140);
              v25 = v28 + 8;
            }

            else
            {
              v25 -= 376;
            }
          }

          while (k < v25);
        }

        v29 = (k - 376);
        if (k - 376 != a1)
        {
          *a1 = *v29;
          cnmatrix::CNMatrixBase<double>::operator=(a1 + 8, k - 368);
          cnmatrix::CNMatrixBase<double>::operator=(a1 + 72, k - 304);
          cnmatrix::CNMatrixBase<double>::operator=(a1 + 136, k - 240);
          cnmatrix::CNMatrixBase<double>::operator=(a1 + 248, k - 128);
          v30 = *(k - 8);
          *(a1 + 360) = *(k - 16);
          *(a1 + 368) = v30;
        }

        *v29 = v134;
        cnmatrix::CNMatrixBase<double>::operator=(k - 368, v135);
        cnmatrix::CNMatrixBase<double>::operator=(k - 304, v136);
        cnmatrix::CNMatrixBase<double>::operator=(k - 240, v137);
        cnmatrix::CNMatrixBase<double>::operator=(k - 128, v138);
        v31 = v140;
        *(k - 16) = v139;
        *(k - 8) = v31;
        v7 = a2;
        if (v20 >= v21)
        {
          break;
        }

LABEL_50:
        std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(a1, k - 376, a3, a4 & 1);
        a4 = 0;
      }

      v32 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, k - 376);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(k, a2))
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_50;
      }
    }

    a2 = k - 376;
    if (!v32)
    {
      continue;
    }

    return result;
  }
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 368);
  v7 = *(a1 + 368);
  if (v6 < v7 || v6 <= v7 && (result = *(a2 + 360), result < *(a1 + 360)))
  {
    v8 = *(a3 + 368);
    if (v8 >= v6 && (v8 > v6 || *(a3 + 360) >= *(a2 + 360)))
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, a2);
      v14 = *(a3 + 368);
      v15 = *(a2 + 368);
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          return result;
        }

        result = *(a3 + 360);
        if (result >= *(a2 + 360))
        {
          return result;
        }
      }

      a1 = a2;
    }

    v13 = a3;
    goto LABEL_14;
  }

  v10 = *(a3 + 368);
  if (v10 < v6 || v10 <= v6 && (result = *(a3 + 360), result < *(a2 + 360)))
  {
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
    v11 = *(a2 + 368);
    v12 = *(v5 + 368);
    if (v11 < v12 || v11 <= v12 && (result = *(a2 + 360), result < *(v5 + 360)))
    {
      a1 = v5;
      v13 = a2;
LABEL_14:

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v13);
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a2, a3);
  v11 = *(a4 + 368);
  v12 = *(a3 + 368);
  if (v11 < v12 || v11 <= v12 && (result = *(a4 + 360), result < *(a3 + 360)))
  {
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a3, a4);
    v13 = *(a3 + 368);
    v14 = *(a2 + 368);
    if (v13 < v14 || v13 <= v14 && (result = *(a3 + 360), result < *(a2 + 360)))
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
      v15 = *(a2 + 368);
      v16 = *(a1 + 368);
      if (v15 < v16 || v15 <= v16 && (result = *(a2 + 360), result < *(a1 + 360)))
      {
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, a2);
      }
    }
  }

  v17 = *(a5 + 368);
  v18 = *(a4 + 368);
  if (v17 < v18 || v17 <= v18 && (result = *(a5 + 360), result < *(a4 + 360)))
  {
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a4, a5);
    v19 = *(a4 + 368);
    v20 = *(a3 + 368);
    if (v19 < v20 || v19 <= v20 && (result = *(a4 + 360), result < *(a3 + 360)))
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a3, a4);
      v21 = *(a3 + 368);
      v22 = *(a2 + 368);
      if (v21 < v22 || v21 <= v22 && (result = *(a3 + 360), result < *(a2 + 360)))
      {
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
        v23 = *(a2 + 368);
        v24 = *(a1 + 368);
        if (v23 < v24 || v23 <= v24 && (result = *(a2 + 360), result < *(a1 + 360)))
        {

          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x51B3BEA3677D46CFLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 8);
        v6 = *(a1 + 368);
        if (v5 >= v6 && (v5 > v6 || *(a2 - 16) >= *(a1 + 360)))
        {
          return 1;
        }

        v7 = (a2 - 376);
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a2 - 376);
      return 1;
    case 4:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752);
      v17 = *(a2 - 8);
      v18 = *(a1 + 1120);
      if (v17 >= v18 && (v17 > v18 || *(a2 - 16) >= *(a1 + 1112)))
      {
        return 1;
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 752), (a2 - 376));
      v19 = *(a1 + 1120);
      v20 = *(a1 + 744);
      if (v19 >= v20 && (v19 > v20 || *(a1 + 1112) >= *(a1 + 736)))
      {
        return 1;
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>((a1 + 376), (a1 + 752));
      v21 = *(a1 + 744);
      v22 = *(a1 + 368);
      if (v21 >= v22 && (v21 > v22 || *(a1 + 736) >= *(a1 + 360)))
      {
        return 1;
      }

      v7 = (a1 + 376);
LABEL_32:
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v7);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752, a1 + 1128, a2 - 376);
      return 1;
  }

LABEL_11:
  v8 = a1 + 752;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, a1 + 376, a1 + 752);
  v9 = a1 + 1128;
  if (a1 + 1128 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 368);
    v13 = *(v8 + 368);
    if (v12 < v13 || v12 <= v13 && *(v9 + 360) < *(v8 + 360))
    {
      v24 = *v9;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v25, v9 + 8);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v26, v9 + 72);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v27, v9 + 136);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v28, v9 + 248);
      v29 = *(v9 + 360);
      v30 = *(v9 + 368);
      for (i = v10; ; i -= 376)
      {
        v15 = a1 + i;
        *(a1 + i + 1128) = *(a1 + i + 752);
        cnmatrix::CNMatrixBase<double>::operator=(a1 + i + 1136, a1 + i + 760);
        cnmatrix::CNMatrixBase<double>::operator=(v15 + 1200, v15 + 824);
        cnmatrix::CNMatrixBase<double>::operator=(v15 + 1264, v15 + 888);
        cnmatrix::CNMatrixBase<double>::operator=(v15 + 1376, v15 + 1000);
        *(v15 + 1488) = *(v15 + 1112);
        *(v15 + 1496) = *(v15 + 1120);
        if (i == -752)
        {
          break;
        }

        v16 = *(v15 + 744);
        if (v30 >= v16)
        {
          if (v30 > v16)
          {
            v8 = a1 + i + 752;
            goto LABEL_25;
          }

          if (v29 >= *(a1 + i + 736))
          {
            goto LABEL_25;
          }
        }

        v8 -= 376;
      }

      v8 = a1;
LABEL_25:
      *v8 = v24;
      cnmatrix::CNMatrixBase<double>::operator=(v15 + 760, v25);
      cnmatrix::CNMatrixBase<double>::operator=(v15 + 824, v26);
      cnmatrix::CNMatrixBase<double>::operator=(v15 + 888, v27);
      cnmatrix::CNMatrixBase<double>::operator=(v15 + 1000, v28);
      *(v15 + 1112) = v29;
      *(v15 + 1120) = v30;
      if (++v11 == 8)
      {
        return v9 + 376 == a2;
      }
    }

    v8 = v9;
    v10 += 376;
    v9 += 376;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = &unk_2873C4140;
      *(v4 - 192) = &unk_2873C4140;
      *(v2 + v3 - 304) = &unk_2873C4140;
      *(v2 + v3 - 368) = &unk_2873C4140;
      *(v2 + v3 - 432) = &unk_2873C4140;
      v3 -= 432;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__construct_one_at_end[abi:ne200100]<cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,double &,RoseSyntheticApertureFiltering::BatchSolutionType const&,cnmatrix::CNMatrix<3u,1u,double>&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int *a7, uint64_t a8)
{
  v13 = *(a1 + 8);
  v14 = *a6;
  v15 = *a7;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v17, a8);
  result = RoseSyntheticApertureFiltering::InternalFilterState::InternalFilterState(v13, a2, a3, a4, a5, v15, v17, v14);
  *(a1 + 8) = v13 + 432;
  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,double &,RoseSyntheticApertureFiltering::BatchSolutionType const&,cnmatrix::CNMatrix<3u,1u,double>&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int *a7, uint64_t a8)
{
  v8 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x97B425ED097B42)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 4) > v9)
  {
    v9 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v15 = 0x97B425ED097B42;
  }

  else
  {
    v15 = v9;
  }

  v27 = a1;
  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>>(a1, v15);
  }

  v24 = 0;
  v25 = 432 * v8;
  v26 = 432 * v8;
  v16 = *a6;
  v17 = *a7;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v28, a8);
  RoseSyntheticApertureFiltering::InternalFilterState::InternalFilterState(432 * v8, a2, a3, a4, a5, v17, v28, v16);
  *&v26 = 432 * v8 + 432;
  v18 = *(a1 + 8);
  v19 = 432 * v8 + *a1 - v18;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,RoseSyntheticApertureFiltering::InternalFilterState*>(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalFilterState>::~__split_buffer(&v24);
  return v23;
}

void sub_2613FC128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalFilterState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t RoseSyntheticApertureFiltering::InternalFilterState::InternalFilterState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double a8)
{
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a1, a2);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v15 + 64, a3);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a1 + 128, a4);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a1 + 240, a5);
  *(a1 + 352) = a8;
  *(a1 + 360) = a6;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a1 + 368, a7);
  return a1;
}

void sub_2613FC1E0(_Unwind_Exception *a1)
{
  *v4 = &unk_2873C4140;
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *v1 = &unk_2873C4140;
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x97B425ED097B43)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,RoseSyntheticApertureFiltering::InternalFilterState*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v7, v8);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v7 + 64, v8 + 64);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v7 + 128, v8 + 128);
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v7 + 240, v8 + 240);
      v9 = *(v8 + 352);
      *(v7 + 360) = *(v8 + 360);
      *(v7 + 352) = v9;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v7 + 368, v8 + 368);
      v8 += 432;
      v7 = v14 + 432;
      v14 += 432;
    }

    while (v8 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,RoseSyntheticApertureFiltering::InternalFilterState*,RoseSyntheticApertureFiltering::InternalFilterState*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,RoseSyntheticApertureFiltering::InternalFilterState*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,RoseSyntheticApertureFiltering::InternalFilterState*,RoseSyntheticApertureFiltering::InternalFilterState*>(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      a2[46] = &unk_2873C4140;
      a2[30] = &unk_2873C4140;
      a2[16] = &unk_2873C4140;
      a2[8] = &unk_2873C4140;
      *a2 = &unk_2873C4140;
      a2 += 54;
      v3 += 54;
    }

    while (a2 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,RoseSyntheticApertureFiltering::InternalFilterState*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,std::reverse_iterator<RoseSyntheticApertureFiltering::InternalFilterState*>,std::reverse_iterator<RoseSyntheticApertureFiltering::InternalFilterState*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalFilterState>,std::reverse_iterator<RoseSyntheticApertureFiltering::InternalFilterState*>,std::reverse_iterator<RoseSyntheticApertureFiltering::InternalFilterState*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *(v6 - 64) = &unk_2873C4140;
      *(v6 - 192) = &unk_2873C4140;
      *(a3 + v5 - 304) = &unk_2873C4140;
      *(a3 + v5 - 368) = &unk_2873C4140;
      *(a3 + v5 - 432) = &unk_2873C4140;
      v5 -= 432;
    }

    while (a3 + v5 != a5);
  }
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalFilterState>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalFilterState>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalFilterState>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = &unk_2873C4140;
      *(v4 - 192) = &unk_2873C4140;
      *(v2 + v3 - 304) = &unk_2873C4140;
      *(v2 + v3 - 368) = &unk_2873C4140;
      *(v2 + v3 - 432) = &unk_2873C4140;
      v3 -= 432;
    }

    while (v2 + v3 != a2);
    *(result + 16) = v2 + v3;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>,RoseSyntheticApertureFiltering::InternalExpectedAoAMeas*>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas,RoseSyntheticApertureFiltering::InternalExpectedAoAMeas const&>(a1, (a4 + v8), v9);
      v9 += 12;
      v8 += 192;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 104;
      do
      {
        *(v6 + 13) = &unk_2873C4140;
        *(v6 + 2) = &unk_2873C4140;
        v6 += 12;
        v10 += 192;
      }

      while (v6 != a3);
    }
  }
}

void sub_2613FC850(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>,RoseSyntheticApertureFiltering::InternalExpectedAoAMeas*>(v1 + v2);
  }

  _Unwind_Resume(exception_object);
}

double std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas,RoseSyntheticApertureFiltering::InternalExpectedAoAMeas const&>(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  *a2 = *a3;
  cnmatrix::CNMatrix<2u,3u,double>::CNMatrix((a2 + 1), (a3 + 1));
  *&result = cnmatrix::CNMatrix<3u,2u,double>::CNMatrix(a2 + 104, a3 + 104).n128_u64[0];
  return result;
}

__n128 cnmatrix::CNMatrix<2u,3u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000002;
  *(a1 + 24) = 0x300000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C42D0;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 cnmatrix::CNMatrix<3u,2u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x200000003;
  *(a1 + 24) = 0x200000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C4318;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 3)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 2u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 176;
    do
    {
      *(v3 - 88) = &unk_2873C4140;
      *(v3 - 176) = &unk_2873C4140;
      v3 -= 192;
      v4 -= 192;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

float64x2_t cnmatrix::Multiply<double>(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    cnmatrix::Multiply<double>();
  }

  cnmatrix::FastResize<double>(a2, *(a1 + 8), *(a1 + 12));
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * (v6 - 2));
    v13 = (v11 + 8 * (v6 - 2));
    v14 = (v6 - 1) >> 1;
    do
    {
      v15 = *v10++;
      *v11++ = vmulq_n_f64(v15, a3);
      --v14;
    }

    while (v14);
    result = vmulq_n_f64(*v12, a3);
    *v13 = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = *v7++;
      result.f64[0] = v9 * a3;
      *v8++ = v9 * a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__emplace_back_slow_path<double const&,cnmatrix::CNMatrix<1u,3u,double> const&,cnmatrix::CNMatrix<3u,1u,double> &>(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v8 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>>(a1, v8);
  }

  v15 = 0;
  v16 = 136 * v4;
  v17 = 136 * v4;
  RoseSyntheticApertureFiltering::InternalExpectedRangeMeas::InternalExpectedRangeMeas((136 * v4), a3, a4, *a2);
  *&v17 = 136 * v4 + 136;
  v9 = *(a1 + 8);
  v10 = 136 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::~__split_buffer(&v15);
  return v14;
}

void sub_2613FCEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double *RoseSyntheticApertureFiltering::InternalExpectedRangeMeas::InternalExpectedRangeMeas(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = a4;
  v6 = (a1 + 9);
  cnmatrix::CNMatrix<1u,3u,double>::CNMatrix((a1 + 1), a2);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v6, a3);
  return a1;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__emplace_back_slow_path<double const&,double const&,cnmatrix::CNMatrix<2u,3u,double> const&,cnmatrix::CNMatrix<3u,2u,double> &>(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v6 = v5 + 1;
  if (v5 + 1 > 0x155555555555555)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v9 = 0x155555555555555;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>>(a1, v9);
  }

  v16 = 0;
  v17 = 192 * v5;
  v18 = 192 * v5;
  RoseSyntheticApertureFiltering::InternalExpectedAoAMeas::InternalExpectedAoAMeas((192 * v5), a4, a5, *a2, *a3);
  *&v18 = 192 * v5 + 192;
  v10 = *(a1 + 8);
  v11 = 192 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>,RoseSyntheticApertureFiltering::InternalExpectedAoAMeas*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::~__split_buffer(&v16);
  return v15;
}

void sub_2613FD100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double *RoseSyntheticApertureFiltering::InternalExpectedAoAMeas::InternalExpectedAoAMeas(double *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *a1 = a4;
  a1[1] = a5;
  cnmatrix::CNMatrix<2u,3u,double>::CNMatrix((a1 + 2), a2);
  cnmatrix::CNMatrix<3u,2u,double>::CNMatrix((a1 + 13), a3);
  return a1;
}

void std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      v7 = v4 - 56;
      v8 = v4 - 56;
      do
      {
        v9 = *v8;
        v8 -= 56;
        (*v9)(v7);
        v6 -= 56;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>,cnmatrix::CNMatrix<2u,1u,double>*>(uint64_t a1, uint64_t a2, void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = cnmatrix::CNMatrix<2u,1u,double>::CNMatrix(a4 + v7, v8);
      v8 += 56;
      v7 += 56;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 7;
        (*v12)(v6, v9);
        v10 += 7;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_2613FD348(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>,cnmatrix::CNMatrix<2u,1u,double>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 cnmatrix::CNMatrix<2u,1u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C4478;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__split_buffer<cnmatrix::CNMatrix<2u,1u,double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<2u,1u,double> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  cnmatrix::CNMatrix<2u,1u,double>::CNMatrix(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>,cnmatrix::CNMatrix<2u,1u,double>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<cnmatrix::CNMatrix<2u,1u,double>>::~__split_buffer(&v13);
  return v12;
}

void sub_2613FD694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cnmatrix::CNMatrix<2u,1u,double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void cnmatrix::CNMatrix<225u,1u,double>::TransposeDataFootprint(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(a1, v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t cnmatrix::CNMatrix<2u,2u,double>::CNMatrix(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000002;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2873C4508;
  if (a2 > 2)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 3)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t cnmatrix::CNMatrix<1u,2u,double>::CNMatrix(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000001;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2873C4550;
  if (a2 > 1)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 3)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

double cnmatrix::Eig<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 == a2)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a5)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a6)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a7)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a1 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a4)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a5)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a6)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a7)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a2 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::Eig<double>();
  }

  if (a3 == a5)
  {
    cnmatrix::Eig<double>();
  }

  if (a3 == a6)
  {
    cnmatrix::Eig<double>();
  }

  if (a3 == a7)
  {
    cnmatrix::Eig<double>();
  }

  if (a3 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a3 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a4 == a5)
  {
    cnmatrix::Eig<double>();
  }

  if (a4 == a6)
  {
    cnmatrix::Eig<double>();
  }

  if (a4 == a7)
  {
    cnmatrix::Eig<double>();
  }

  if (a4 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a4 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a5 == a6)
  {
    cnmatrix::Eig<double>();
  }

  if (a5 == a7)
  {
    cnmatrix::Eig<double>();
  }

  if (a5 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a5 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a6 == a7)
  {
    cnmatrix::Eig<double>();
  }

  if (a6 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a6 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a7 == a8)
  {
    cnmatrix::Eig<double>();
  }

  if (a7 == a9)
  {
    cnmatrix::Eig<double>();
  }

  if (a8 == a9)
  {
    cnmatrix::Eig<double>();
  }

  v16 = *(a1 + 8);
  if (v16 != *(a1 + 12))
  {
    cnmatrix::Eig<double>();
  }

  v17 = *(a7 + 24);
  if (*(a7 + 28) * v17 < v16)
  {
    cnmatrix::Eig<double>();
  }

  v18 = *(a8 + 24);
  if (*(a8 + 28) * v18 < v16)
  {
    cnmatrix::Eig<double>();
  }

  v44 = *(a9 + 28) * *(a9 + 24);
  if (v44 < 3 * v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a2 + 24) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a2 + 28) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a3 + 24) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a3 + 28) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a4 + 24) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a4 + 28) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a5 + 24) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a5 + 28) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a6 + 24) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (*(a6 + 28) < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (v17 < v16)
  {
    cnmatrix::Eig<double>();
  }

  if (v18 < v16)
  {
    cnmatrix::Eig<double>();
  }

  cnmatrix::CNMatrixBase<double>::operator=(a2, a1);
  cnmatrix::FastResize<double>(a3, v16, v16);
  cnmatrix::CNMatrixBase<double>::WriteValue(a3, 0.0);
  cnmatrix::FastResize<double>(a4, v16, v16);
  cnmatrix::CNMatrixBase<double>::WriteValue(a4, 0.0);
  cnmatrix::FastResize<double>(a5, v16, v16);
  cnmatrix::CNMatrixBase<double>::WriteValue(a5, 0.0);
  cnmatrix::FastResize<double>(a6, v16, v16);
  cnmatrix::CNMatrixBase<double>::WriteValue(a6, 0.0);
  v19 = *(a3 + 32);
  v20 = *(a4 + 32);
  v21 = *(a7 + 32);
  v22 = *(a8 + 32);
  v23 = *(a9 + 32);
  v24 = *(a2 + 32);
  v25 = *(a2 + 8);
  v26 = *(a5 + 32);
  v27 = *(a5 + 8);
  qmemcpy(v45, "NVNB", sizeof(v45));
  v28 = dgeevx_NEWLAPACK();
  if (v44 < **(a9 + 32) && cnprint::CNPrinter::GetLogLevel(v28) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  cnmatrix::FastResize<double>(a9, *(a9 + 24), *(a9 + 28));
  cnmatrix::FastResize<double>(a8, v16, 2);
  cnmatrix::FastResize<double>(a7, v16, 1);
  if (v16)
  {
    v30 = 0;
    v31 = *(a4 + 32);
    v32 = *(a5 + 32);
    v33 = *(a6 + 32);
    do
    {
      result = *(v31 + 8 * v30);
      if (result != 0.0)
      {
        v34 = v30 * v16;
        v35 = v16 + v30;
        v36 = v16;
        do
        {
          v37 = *(v32 + 8 * v35);
          *(v33 + 8 * v34) = v37;
          *(v33 + 8 * v35) = -v37;
          result = *(v32 + 8 * v34);
          *(v32 + 8 * v35) = result;
          ++v34;
          ++v35;
          --v36;
        }

        while (v36);
        ++v30;
      }

      ++v30;
    }

    while (v30 < v16);
    v38 = v16 - 1;
    if (v16 != 1)
    {
      v39 = *(a3 + 32);
      v40 = *(a4 + 32);
      v41 = (v40 + 8);
      v42 = (v39 + 8);
      v43 = v16 + 1;
      do
      {
        *(v39 + 8 * v43) = *v42;
        result = *v41;
        *(v40 + 8 * v43) = *v41;
        *v42++ = 0;
        *v41++ = 0.0;
        v43 += v16 + 1;
        --v38;
      }

      while (v38);
    }
  }

  return result;
}

void cnmatrix::CNMatrix<168u,1u,double>::TransposeDataFootprint(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(a1, v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalAoAMeas const&>(uint64_t a1, _OWORD *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x13B13B13B13B13BLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v6 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>>(a1, v6);
  }

  v13 = 0;
  v14 = 208 * v2;
  std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas,RoseSyntheticApertureFiltering::InternalAoAMeas const&>(a1, (208 * v2), a2);
  v15 = (208 * v2 + 208);
  v7 = *(a1 + 8);
  v8 = 208 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>,RoseSyntheticApertureFiltering::InternalAoAMeas*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalAoAMeas>::~__split_buffer(&v13);
  return v12;
}

void sub_2613FE168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalAoAMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas,RoseSyntheticApertureFiltering::InternalAoAMeas const&>(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v5 = a3[1];
  *a2 = *a3;
  a2[1] = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix((a2 + 2), (a3 + 2));
  *&result = cnmatrix::CNMatrix<3u,3u,double>::CNMatrix((a2 + 6), (a3 + 6)).n128_u64[0];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>,RoseSyntheticApertureFiltering::InternalAoAMeas*>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas,RoseSyntheticApertureFiltering::InternalAoAMeas const&>(a1, (a4 + v8), v9);
      v9 += 13;
      v8 += 208;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 6;
      do
      {
        *(v6 + 12) = &unk_2873C4140;
        *(v6 + 4) = &unk_2873C4140;
        v6 += 13;
        v10 += 13;
      }

      while (v6 != a3);
    }
  }
}

void sub_2613FE30C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>,RoseSyntheticApertureFiltering::InternalAoAMeas*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalAoAMeas>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 176;
    do
    {
      *(v3 - 112) = &unk_2873C4140;
      *(v3 - 176) = &unk_2873C4140;
      v3 -= 208;
      v4 -= 208;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

double *RoseSyntheticApertureFiltering::measModelRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0x100000003;
  v13 = &unk_2873C40E8;
  v14 = xmmword_261415AA0;
  v16 = &v17;
  cnmatrix::Subtract<double>(a1, a2, &v13);
  v30 = 0x100000003;
  v28 = &unk_2873C40E8;
  v29 = xmmword_261415AA0;
  v31 = &v32;
  v25 = 0x100000134;
  v23 = &unk_2873C41B8;
  v24 = xmmword_261415AD0;
  v26 = &v27;
  v20 = 0x100000003;
  v18 = &unk_2873C40E8;
  v19 = xmmword_261415AA0;
  v21 = &v22;
  cnmatrix::Norm<double>(&v13, &v28, &v23, &v18, "2");
  v7 = v6;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 0) = v6;
  if (v7 == 0.0)
  {
    *cnmatrix::CNMatrixBase<double>::operator()(a4, 0, 0) = 0;
    *cnmatrix::CNMatrixBase<double>::operator()(a4, 0, 1) = 0;
    result = cnmatrix::CNMatrixBase<double>::operator()(a4, 0, 2);
    *result = 0.0;
  }

  else
  {
    v8 = cnmatrix::CNMatrixBase<double>::operator()(&v13, 0);
    v9 = 1.0 / v7;
    *cnmatrix::CNMatrixBase<double>::operator()(a4, 0, 0) = 1.0 / v7 * v8;
    v10 = cnmatrix::CNMatrixBase<double>::operator()(&v13, 1u);
    *cnmatrix::CNMatrixBase<double>::operator()(a4, 0, 1) = v9 * v10;
    v11 = cnmatrix::CNMatrixBase<double>::operator()(&v13, 2u);
    result = cnmatrix::CNMatrixBase<double>::operator()(a4, 0, 2);
    *result = v9 * v11;
  }

  return result;
}

void RoseSyntheticApertureFiltering::measModelAoA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0x100000003;
  v25 = &unk_2873C40E8;
  v26 = xmmword_261415AA0;
  v28 = &v29;
  cnmatrix::Subtract<double>(a1, a2, &v25);
  v22 = 0x100000003;
  v20 = &unk_2873C40E8;
  v21 = xmmword_261415AA0;
  v23 = &v24;
  cnmatrix::Multiply<double>(a3, &v25, &v20);
  v42 = 0x100000003;
  v40 = &unk_2873C40E8;
  v41 = xmmword_261415AA0;
  v43 = &v44;
  v37 = 0x100000134;
  v36 = xmmword_261415AD0;
  v35 = &unk_2873C41B8;
  v38 = v39;
  v32 = 0x100000003;
  v31 = xmmword_261415AA0;
  v30 = &unk_2873C40E8;
  v33 = &v34;
  cnmatrix::Norm<double>(&v20, &v40, &v35, &v30, "2");
  v9 = v8;
  v10 = cnmatrix::CNMatrixBase<double>::operator()(&v20, 0);
  v11 = cnmatrix::CNMatrixBase<double>::operator()(&v20, 1u);
  v12 = cnmatrix::CNMatrixBase<double>::operator()(&v20, 2u);
  if (v9 != 0.0)
  {
    v13 = v12;
    v14 = cnmatrix::CNMatrixBase<double>::operator()(a4, 0);
    *v14 = atan2(v13, v11);
    v15 = cnmatrix::CNMatrixBase<double>::operator()(a4, 1u);
    *v15 = asin(v10 / v9);
    v16 = v13 * v13 + v11 * v11;
    v17 = 1.0 / (v9 * v9);
    *cnmatrix::CNMatrixBase<double>::operator()(a5, 0, 0) = 0;
    v18 = sqrt(v16);
    *cnmatrix::CNMatrixBase<double>::operator()(a5, 1, 0) = v17 * v18;
    v19 = cnmatrix::CNMatrixBase<double>::operator()(a5, 0, 1);
    if (v16 == 0.0)
    {
      *v19 = 0.0;
      *cnmatrix::CNMatrixBase<double>::operator()(a5, 0, 2) = 0;
      *cnmatrix::CNMatrixBase<double>::operator()(a5, 1, 1) = 0;
      *cnmatrix::CNMatrixBase<double>::operator()(a5, 1, 2) = 0;
    }

    else
    {
      *v19 = -v13 / v16;
      *cnmatrix::CNMatrixBase<double>::operator()(a5, 0, 2) = v11 / v16;
      *cnmatrix::CNMatrixBase<double>::operator()(a5, 1, 1) = v17 * (-(v10 * v11) / v18);
      *cnmatrix::CNMatrixBase<double>::operator()(a5, 1, 2) = v17 * (-(v10 * v13) / v18);
    }
  }

  v37 = 0x300000002;
  v36 = xmmword_261415DF0;
  v35 = &unk_2873C42D0;
  v38 = v39;
  cnmatrix::Multiply<double>(a5, a3, &v35);
  cnmatrix::CNMatrixBase<double>::operator=(a5, &v35);
}

void RoseSyntheticApertureFiltering::measModelRangeAlt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0x300000001;
  v13 = &unk_2873C4288;
  v14 = xmmword_261415DE0;
  v16 = &v17;
  RoseSyntheticApertureFiltering::measModelRange(a3, a4, a5, &v13);
  v10 = 0x300000001;
  v8 = &unk_2873C4288;
  v9 = xmmword_261415DE0;
  v11 = &v12;
  cnmatrix::Multiply<double>(&v13, a2, &v8);
  cnmatrix::CNMatrixBase<double>::operator=(a6, &v8);
}

void RoseSyntheticApertureFiltering::measModelAoAAlt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = 0x300000002;
  v14 = &unk_2873C42D0;
  v15 = xmmword_261415DF0;
  v17 = &v18;
  RoseSyntheticApertureFiltering::measModelAoA(a3, a4, a5, a6, &v14);
  v11 = 0x300000002;
  v9 = &unk_2873C42D0;
  v10 = xmmword_261415DF0;
  v12 = &v13;
  cnmatrix::Multiply<double>(&v14, a2, &v9);
  cnmatrix::CNMatrixBase<double>::operator=(a7, &v9);
}

double *RoseSyntheticApertureFiltering::rhoThPhi2pos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = cnmatrix::CNMatrixBase<double>::operator()(a1, 0);
  v7 = cnmatrix::CNMatrixBase<double>::operator()(a1, 1u);
  v8 = cnmatrix::CNMatrixBase<double>::operator()(a1, 2u);
  v9 = __sincos_stret(v8);
  v10 = __sincos_stret(v7);
  v11 = v6 * v9.__cosval;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 0) = v10.__sinval * (v6 * v9.__cosval);
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 1u) = v6 * v9.__sinval;
  v12 = v10.__cosval * (v6 * v9.__cosval);
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 2u) = v12;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 0, 0) = v10.__sinval * v9.__cosval;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 1, 0) = v9.__sinval;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 2, 0) = v10.__cosval * v9.__cosval;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 0, 1) = v12;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 1, 1) = 0;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 2, 1) = v10.__sinval * -(v6 * v9.__cosval);
  v13 = -(v6 * v9.__sinval);
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 0, 2) = v10.__sinval * v13;
  *cnmatrix::CNMatrixBase<double>::operator()(a3, 1, 2) = v11;
  result = cnmatrix::CNMatrixBase<double>::operator()(a3, 2, 2);
  *result = v10.__cosval * v13;
  return result;
}

void RoseSyntheticApertureFiltering::pos2rangeThPhi(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = cnmatrix::CNMatrixBase<double>::operator()(a1, 0);
  v5 = cnmatrix::CNMatrixBase<double>::operator()(a1, 1u);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(a1, 2u);
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_2873C40E8;
  *(a2 + 8) = xmmword_261415AA0;
  *(a2 + 32) = a2 + 40;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 0) = sqrt(v5 * v5 + v4 * v4 + v6 * v6);
  if (*cnmatrix::CNMatrixBase<double>::operator()(a2, 0) <= 0.0)
  {
    *cnmatrix::CNMatrixBase<double>::operator()(a2, 1u) = 0;
    *cnmatrix::CNMatrixBase<double>::operator()(a2, 2u) = 0;
  }

  else
  {
    v7 = cnmatrix::CNMatrixBase<double>::operator()(a2, 1u);
    *v7 = atan2(v4, v6);
    v8 = *cnmatrix::CNMatrixBase<double>::operator()(a2, 0);
    v9 = cnmatrix::CNMatrixBase<double>::operator()(a2, 2u);
    *v9 = asin(v5 / v8);
  }
}

long double RoseSyntheticApertureFiltering::rangeAzEl2pos@<D0>(double a1@<D0>, long double a2@<D1>, long double a3@<D2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0x100000003;
  *a4 = &unk_2873C40E8;
  *(a4 + 8) = xmmword_261415AA0;
  *(a4 + 32) = a4 + 40;
  v9 = cnmatrix::CNMatrixBase<double>::operator()(a4, 0);
  *v9 = sin(a2) * a1;
  v10 = cnmatrix::CNMatrixBase<double>::operator()(a4, 1u);
  v11 = cos(a2) * a1;
  *v10 = v11 * cos(a3);
  v12 = cnmatrix::CNMatrixBase<double>::operator()(a4, 2u);
  result = v11 * sin(a3);
  *v12 = result;
  return result;
}

double RoseSyntheticApertureFiltering::quatn2rot@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_2873C4240;
  *(a2 + 8) = xmmword_261415D50;
  *(a2 + 32) = a2 + 40;
  cnmatrix::FastResize<double>(a2, 3, 3);
  cnmatrix::CNMatrixBase<double>::WriteValue(a2, 0.0);
  v4 = cnmatrix::CNMatrixBase<double>::operator()(a1, 0);
  v5 = cnmatrix::CNMatrixBase<double>::operator()(a1, 1u);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(a1, 2u);
  v7 = cnmatrix::CNMatrixBase<double>::operator()(a1, 3u);
  v14 = v5 * v5;
  v15 = v4 * v4;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 0, 0) = v4 * v4 - v5 * v5 - v6 * v6 + v7 * v7;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 1, 0) = v4 * v5 + v6 * v7 + v4 * v5 + v6 * v7;
  v8 = v4 * v6;
  v9 = v5 * v7;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 2, 0) = v4 * v6 - v5 * v7 + v4 * v6 - v5 * v7;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 0, 1) = v4 * v5 - v6 * v7 + v4 * v5 - v6 * v7;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 1, 1) = v5 * v5 - v4 * v4 - v6 * v6 + v7 * v7;
  v10 = v4 * v7;
  v11 = v5 * v6;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 2, 1) = v11 + v10 + v11 + v10;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 0, 2) = v8 + v9 + v8 + v9;
  *cnmatrix::CNMatrixBase<double>::operator()(a2, 1, 2) = v11 - v10 + v11 - v10;
  v12 = cnmatrix::CNMatrixBase<double>::operator()(a2, 2, 2);
  result = -v15 - v14 + v6 * v6 + v7 * v7;
  *v12 = result;
  return result;
}

double RoseSyntheticApertureFiltering::range2deweight(RoseSyntheticApertureFiltering *this, double a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    return v2;
  }

  v2 = 5.0;
  if (a2 >= 10.0)
  {
    return v2;
  }

  else
  {
    return (a2 + -1.0) * 0.444444444 + 1.0;
  }
}

void sub_261400618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_261400744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x2667015A0](v10, 0x1080C4011C7A211);

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<RoseSyntheticApertureFiltering::PRRoseRangeFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 176) = &unk_2873C4140;
    *(v2 + 112) = &unk_2873C4140;
    *(v2 + 48) = &unk_2873C4140;

    JUMPOUT(0x2667015A0);
  }

  return result;
}

void sub_261400BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_261400C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x2667015A0](v10, 0x1080C4011C7A211);

  _Unwind_Resume(a1);
}

void sub_2614010B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

void sub_26140288C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2614037E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 56));

  _Unwind_Resume(a1);
}

void sub_261404138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  v34 = *(v32 - 80);
  if (v34)
  {
    *(v32 - 72) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_261404370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *std::unique_ptr<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter>::reset[abi:ne200100](RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter **a1, RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::~PRRoseSyntheticApertureBatchFilter(result);

    JUMPOUT(0x2667015A0);
  }

  return result;
}

void sub_2614068D0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2614069C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PRItemLocalizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::~PRRoseSyntheticApertureBatchFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *(this + 108) = &unk_2873C4140;
  *(this + 98) = &unk_2873C4140;
  v5 = (this + 720);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 696);
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 672);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v5);
  boost::circular_buffer<double,std::allocator<double>>::destroy(this + 632);
  *(this + 65) = &unk_2873C4140;
  *(this + 57) = &unk_2873C4140;

  *(this + 39) = &unk_2873C4140;
  *(this + 30) = &unk_2873C4140;
  *(this + 21) = &unk_2873C4140;
  v5 = (this + 144);
  std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

BTFinding::PRRSSIFilter *BTFinding::PRRSSIFilter::PRRSSIFilter(BTFinding::PRRSSIFilter *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 8) = 2;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 28) = -128;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 34) = -128;
  *(this + 18) = 0;
  *(this + 38) = 1;
  *(this + 40) = -128;
  *(this + 21) = 0;
  *(this + 44) = 2;
  *(this + 6) = a2;
  *(this + 7) = a2 - 4;
  v3 = os_log_create("com.apple.proximity", "BTRSSIFilter");
  *this = v3;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 6);
    v5 = *(this + 7);
    v8[0] = 67109376;
    v8[1] = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "Received Tx Power: %d dB, calculated Tx power adjustment: %d dB", v8, 0xEu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t BTFinding::PRRSSIFilter::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 2;
  *(this + 112) = -128;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = -128;
  *(this + 144) = 0;
  *(this + 152) = 1;
  *(this + 160) = -128;
  *(this + 168) = 0;
  *(this + 176) = 2;
  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 96) = *(this + 88);
  return this;
}

void BTFinding::PRRSSIFilter::addRSSImeasurement(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  LODWORD(v39) = *a2 - *(a1 + 28);
  v5 = *(a2 + 8);
  *(&v39 + 1) = v5;
  v40 = *(a2 + 16);
  v6 = *a1;
  v7 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if ((v39 & 0x80000000) == 0)
  {
    if (v7)
    {
      *buf = 67109376;
      *v42 = v39;
      *&v42[4] = 2048;
      *&v42[6] = v5;
      v8 = "An invalid RSSI measurement with a value of %d dB has been received and ignored at time = %5.3f s";
      v9 = v6;
      v10 = 18;
LABEL_59:
      _os_log_impl(&dword_2613DF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  if (v7)
  {
    *buf = 67109376;
    *v42 = v39;
    *&v42[4] = 2048;
    *&v42[6] = v5;
    _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Processing measurement with an adjusted value of %d dB has at time = %5.3f s", buf, 0x12u);
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v12 != v11)
  {
    while (v5 - *(v12 + 8) <= 0.5)
    {
      v12 += 24;
      if (v12 == v11)
      {
        goto LABEL_18;
      }
    }

    if (v12 != v11)
    {
      v13 = (v12 + 24);
      if ((v12 + 24) != v11)
      {
        do
        {
          if (v5 - *(v13 + 1) <= 0.5)
          {
            v14 = *v13;
            *(v12 + 16) = *(v13 + 4);
            *v12 = v14;
            v12 += 24;
          }

          v13 = (v13 + 24);
        }

        while (v13 != v11);
        v11 = *(a1 + 48);
      }
    }
  }

  if (v12 != v11)
  {
    *(a1 + 48) = v12;
  }

LABEL_18:
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  if (v16 != v15)
  {
    while (v5 - *(v16 + 8) <= 0.5)
    {
      v16 += 24;
      if (v16 == v15)
      {
        goto LABEL_30;
      }
    }

    if (v16 != v15)
    {
      v17 = (v16 + 24);
      if ((v16 + 24) != v15)
      {
        do
        {
          if (v5 - *(v17 + 1) <= 0.5)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 4);
            *v16 = v18;
            v16 += 24;
          }

          v17 = (v17 + 24);
        }

        while (v17 != v15);
        v15 = *(a1 + 72);
      }
    }
  }

  if (v16 != v15)
  {
    *(a1 + 72) = v16;
  }

LABEL_30:
  v20 = *(a1 + 88);
  v19 = *(a1 + 96);
  if (v20 != v19)
  {
    while (v5 - *(v20 + 8) <= 0.5)
    {
      v20 += 24;
      if (v20 == v19)
      {
        goto LABEL_42;
      }
    }

    if (v20 != v19)
    {
      v21 = (v20 + 24);
      if ((v20 + 24) != v19)
      {
        do
        {
          if (v5 - *(v21 + 1) <= 0.5)
          {
            v22 = *v21;
            *(v20 + 16) = *(v21 + 4);
            *v20 = v22;
            v20 += 24;
          }

          v21 = (v21 + 24);
        }

        while (v21 != v19);
        v19 = *(a1 + 96);
      }
    }
  }

  if (v20 != v19)
  {
    *(a1 + 96) = v20;
  }

LABEL_42:
  switch(v40)
  {
    case 2:
      v23 = a1 + 88;
      if (v5 > *(a1 + 168))
      {
        v24 = 160;
        v23 = a1 + 88;
        goto LABEL_51;
      }

      goto LABEL_52;
    case 1:
      v23 = a1 + 64;
      if (v5 > *(a1 + 144))
      {
        v24 = 136;
        v23 = a1 + 64;
        goto LABEL_51;
      }

LABEL_52:
      std::vector<BTFinding::RSSIMeasurement>::push_back[abi:ne200100](v23, &v39);
      break;
    case 0:
      v23 = a1 + 40;
      if (v5 > *(a1 + 120))
      {
        v24 = 112;
        v23 = a1 + 40;
LABEL_51:
        v25 = a1 + v24;
        *v25 = v39;
        *(v25 + 16) = v40;
        goto LABEL_52;
      }

      goto LABEL_52;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    *(a1 + 16) = v5;
    v26 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2613DF000, v26, OS_LOG_TYPE_DEFAULT, "RSSI filter is initialized", buf, 2u);
    }
  }

  if (v5 - *(a1 + 16) < 0.5)
  {
    v27 = *a1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v42 = v5;
      v8 = "Not returning any solution yet at time = %5.3f s";
      v9 = v27;
      v10 = 12;
      goto LABEL_59;
    }

LABEL_60:
    v28 = 0;
    *a3 = 0;
    goto LABEL_61;
  }

  v30 = BTFinding::PRRSSIFilter::calculateAverageForChannel(a1, (a1 + 40));
  v31 = BTFinding::PRRSSIFilter::calculateAverageForChannel(a1, (a1 + 64));
  v32 = BTFinding::PRRSSIFilter::calculateAverageForChannel(a1, (a1 + 88));
  v33 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *v42 = v30;
    *&v42[8] = 2048;
    *&v42[10] = v31;
    v43 = 2048;
    v44 = v32;
    v45 = 2048;
    v46 = v5;
    _os_log_impl(&dword_2613DF000, v33, OS_LOG_TYPE_DEFAULT, "Averages calculated for channel 37, 38, and 39 are: %4.1f, %4.1f, and %4.1f dB at time = %5.3f s", buf, 0x2Au);
    v33 = *a1;
  }

  if (v30 >= v31)
  {
    v34 = v30;
  }

  else
  {
    v34 = v31;
  }

  if (v34 >= v32)
  {
    v35 = v34;
  }

  else
  {
    v35 = v32;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v42 = v35;
    *&v42[8] = 2048;
    *&v42[10] = v5;
    _os_log_impl(&dword_2613DF000, v33, OS_LOG_TYPE_DEFAULT, "Max among channel is %4.1f dB at time = %5.3f s", buf, 0x16u);
  }

  v36 = 0.0;
  if (v35 > -100.0)
  {
    v36 = 1.0;
    if (v35 < -40.0)
    {
      v36 = (v35 + 100.0) / 60.0;
    }
  }

  v37 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v42 = v36;
    *&v42[8] = 2048;
    *&v42[10] = v5;
    _os_log_impl(&dword_2613DF000, v37, OS_LOG_TYPE_DEFAULT, "Continuous proximity level %3.2f at time = %5.3f s", buf, 0x16u);
  }

  BTFinding::PRRSSIFilter::updateProximityLevelWithHysteresis(a1, v35);
  v38 = *(a1 + 32);
  *(a1 + 48) = *(a1 + 40);
  *(a1 + 72) = *(a1 + 64);
  *(a1 + 96) = *(a1 + 88);
  *(a1 + 16) = v5;
  *a3 = v35;
  *(a3 + 8) = v5;
  *(a3 + 16) = v38;
  v28 = 1;
  *(a3 + 24) = v36;
LABEL_61:
  *(a3 + 32) = v28;
  v29 = *MEMORY[0x277D85DE8];
}

void std::vector<BTFinding::RSSIMeasurement>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<BTFinding::RSSIMeasurement>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
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
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

double BTFinding::PRRSSIFilter::calculateAverageForChannel(os_log_t *a1, int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = 0.0;
    v5 = *a2;
    do
    {
      v6 = *v5;
      v5 += 6;
      v4 = v4 + v6;
    }

    while (v5 != v3);
    if (v2 != v3)
    {
      return v4 / (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
    }
  }

  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "No measurement found for channel", v9, 2u);
  }

  return -128.0;
}

double BTFinding::PRRSSIFilter::convertRSSIToContinuousProximityLevel(BTFinding::PRRSSIFilter *this, double a2)
{
  v2 = 0.0;
  if (a2 > -100.0)
  {
    v2 = 1.0;
    if (a2 < -40.0)
    {
      return (a2 + 100.0) / 60.0;
    }
  }

  return v2;
}

void BTFinding::PRRSSIFilter::updateProximityLevelWithHysteresis(BTFinding::PRRSSIFilter *this, double a2)
{
  if (a2 > -65.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 > -50.0)
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  if (v3 == 2 || v2 - v3 != 1)
  {
    *(this + 8) = v2;
    return;
  }

  if (BTFinding::offsetThresholds[v3] <= a2)
  {
    v5 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 0;
    v6 = "Hysteresis: RSSI decrease is not small enough to switch to the lower level";
    v7 = &v8;
  }

  else
  {
    *(this + 8) = v2;
    v5 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v6 = "Hysteresis: RSSI decrease is enough to switch to the lower level";
    v7 = &v9;
  }

  _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BTFinding::RSSIMeasurement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_261409074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_261409E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_26140A3BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_26140AC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, objc_super a14)
{
  a14.super_class = PRBTGroupLocalizer;
  [(_Unwind_Exception *)&a14 dealloc];
  _Unwind_Resume(a1);
}

unint64_t calculateBearingAngleHorizontalDistanceAndVerticalDistance(void *a1, void *a2)
{
  v4 = a2;
  v5 = a1;
  [v4 pose];
  v41 = v6;
  [v4 pose];
  v42 = v7;
  [v4 pose];
  v45 = v8;
  [v4 pose];
  v49 = v9;

  [v5 vector];
  v47 = v10;

  v13.i32[1] = v47.i32[1];
  v11 = vsubq_f32(v47, v49);
  v12 = vmulq_f32(v11, v11);
  *v13.i32 = sqrtf(v12.f32[2] + v12.f32[0]);
  if (*v13.i32 > 0.01)
  {
    v14.i32[0] = vextq_s8(v11, v11, 8uLL).u32[0];
    v14.i32[1] = v11.i32[0];
    v48 = v13.i32[0];
    v39 = vdiv_f32(v14, vdup_lane_s32(v13, 0));
    v15 = acosf(-v45.f32[1]);
    *&v19.i32[1] = v41;
    v16 = v42;
    v2.i32[0] = v42.i32[1];
    v17.i32[0] = vextq_s8(v16, v16, 8uLL).u32[0];
    v17.i32[1] = v42.i32[0];
    v18 = vmulq_f32(v16, v16);
    *v19.i32 = sqrtf(v18.f32[2] + v18.f32[0]);
    if (fabsf(v42.f32[1]) >= fabsf(v41))
    {
      v40 = v19;
      v43 = v17;
      v23 = asinf(*v19.i32);
      if (v23 >= 0.43633)
      {
        v20 = COERCE_DOUBLE(vdiv_f32(v43, vdup_lane_s32(v40, 0)));
        v34 = v15;
        if (v15 <= 1.57079633)
        {
          *&v34 = -*(&v20 + 1);
          v21 = COERCE_DOUBLE(vzip1_s32(*&v34, *&v20));
          v35 = COERCE_DOUBLE(vneg_f32(*&v20));
          LODWORD(v36) = vdup_lane_s32(*&v35, 1).u32[0];
          if (v15 > 0.7854)
          {
            *(&v36 + 1) = -*&v35;
            v21 = v36;
            v20 = v35;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v24 = v45;
        v25.i32[0] = vextq_s8(v24, v24, 8uLL).u32[0];
        v25.i32[1] = v45.i32[0];
        v26 = vmulq_f32(v24, v24);
        v26.f32[0] = sqrtf(v26.f32[2] + v26.f32[0]);
        v20 = COERCE_DOUBLE(vdiv_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(v2, 0), 0), vneg_f32(v25), v25), vdup_lane_s32(*v26.f32, 0)));
        if (v23 > 0.2618)
        {
          v27 = vbsl_s8(vcgtd_f64(1.57079633, v15), vneg_f32(v43), v43);
          v28 = vmul_f32(v27, v27);
          v28.f32[0] = sqrtf(vaddv_f32(v28));
          v29 = vdiv_f32(v27, vdup_lane_s32(v28, 0));
          v27.f32[0] = -*&v29.i32[1];
          v30 = vzip1_s32(v27, v29);
          v44 = v30;
          v46 = v29;
          v31 = vmla_lane_f32(vmul_n_f32(__PAIR64__(v30.u32[0], v29.u32[0]), *&v20), __PAIR64__(v30.u32[1], v29.u32[1]), *&v20, 1);
          v32 = atan2f(v31.f32[1], v31.f32[0]);
          v33 = __sincosf_stret(((v23 + -0.43633) / -0.17453) * v32);
          v20 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(v44, v33.__sinval), v46, v33.__cosval));
        }
      }

      LODWORD(v21) = vdup_lane_s32(*&v20, 1).u32[0];
      *(&v21 + 1) = -*&v20;
    }

    else
    {
      v20 = COERCE_DOUBLE(vdiv_f32(v17, vdup_lane_s32(v19, 0)));
      LODWORD(v21) = HIDWORD(v20);
      v18.f32[0] = -*(&v20 + 1);
      *v18.f32 = vzip1_s32(*v18.f32, *&v20);
      *(&v21 + 1) = -*&v20;
      if (v15 <= 0.7854)
      {
        v21 = *v18.i64;
      }
    }

LABEL_14:
    v37 = vmla_lane_f32(vmul_n_f32(vzip1_s32(*&v20, *&v21), v39.f32[0]), vzip2_s32(*&v20, *&v21), v39, 1);
    v22 = COERCE_UNSIGNED_INT(atan2f(v37.f32[1], v37.f32[0]));
    v13.i32[0] = v48;
    return v22 | (v13.u32[0] << 32);
  }

  v22 = 0;
  return v22 | (v13.u32[0] << 32);
}

double combinedQuaternionFromAoA(float a1, float a2)
{
  v3 = __sincosf_stret(a1 * 0.5);
  v10 = vmulq_n_f32(xmmword_2614160A0, v3.__sinval);
  v4 = __sincosf_stret(a2 * 0.5);
  v5 = vmulq_n_f32(xmmword_2614160B0, v4.__sinval);
  v6.i32[0] = LODWORD(v4.__cosval);
  v6.f32[1] = -v5.f32[2];
  v6.i32[2] = v5.i32[1];
  *v7.f32 = vneg_f32(*v5.f32);
  v6.i32[3] = v7.i32[0];
  v8.i32[0] = vdupq_laneq_s32(v5, 2).u32[0];
  v8.i32[1] = LODWORD(v4.__cosval);
  v8.i64[1] = v7.i64[0];
  v7.i32[0] = vdup_lane_s32(*v7.f32, 1).u32[0];
  v7.i32[1] = v5.i32[0];
  v7.i32[2] = LODWORD(v4.__cosval);
  v7.f32[3] = -v5.f32[2];
  v5.i32[3] = LODWORD(v4.__cosval);
  *&result = vmlaq_n_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, v10.f32[0]), v8, *v10.f32, 1), v7, v10, 2), v5, v3.__cosval).u64[0];
  return result;
}

__n64 unitVectorForAoAInNearbydCoordinates(float *a1)
{
  v2 = __sincosf_stret(*a1);
  cosval = __sincosf_stret(a1[4]).__cosval;
  result.n64_u32[0] = LODWORD(v2.__sinval);
  result.n64_f32[1] = v2.__cosval * cosval;
  return result;
}

float convertAoAFromNearbydCoordinatesToSpatialCoordinates(float *a1)
{
  v2 = *a1;
  v3 = cosf(*a1);
  v4 = __sincosf_stret(a1[1]);
  atan2f(v3 * v4.__cosval, -(v3 * v4.__sinval));
  return v2;
}

float calculateAoAFromUnitVectorInSpatialCoordinates(float a1, float a2, float a3)
{
  v3 = a3;
  v4 = a2;
  v5 = sqrtf(((a2 * a2) + (a1 * a1)) + (a3 * a3));
  if (v5 >= 0.000001)
  {
    a1 = a1 / v5;
    v4 = v4 / v5;
    v3 = a3 / v5;
  }

  v6 = asinf(a1);
  atan2f(v4, -v3);
  return v6;
}

void sub_26140BB6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26140BC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_26140C9D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_26140FCA4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

long double coordinate_transform_from_R1_to_nearbyD(double a1, double a2, double *a3, long double *a4)
{
  v6 = a2 / 180.0 * 3.14159265;
  v7 = __sincos_stret(a1 / 180.0 * 3.14159265);
  v8 = __sincos_stret(v6);
  *a3 = asin(v7.__cosval * v8.__sinval) * 180.0 / 3.14159265;
  result = atan2(-(v7.__sinval * v8.__sinval), v8.__cosval) * 180.0 / 3.14159265;
  *a4 = result;
  return result;
}

void coordinate_transform_from_nearbyD_to_R1(double a1, double a2, double *a3, double *a4)
{
  v7 = __sincos_stret(a1 / 180.0 * 3.14159265);
  v8 = __sincos_stret(a2 / 180.0 * 3.14159265);
  *a4 = acos(v7.__cosval * v8.__cosval) * 180.0 / 3.14159265;
  v9 = atan2(-(v7.__cosval * v8.__sinval), v7.__sinval) * 180.0 / 3.14159265;
  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  *a3 = v9;
}

void cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint()
{
  __assert_rtn("TransposeDataFootprint", "cnmatrix.h", 128, "lead_dim > 0");
}

{
  __assert_rtn("TransposeDataFootprint", "cnmatrix.h", 122, "scratch != nullptr");
}

void cnmatrix::FastResize<double>()
{
  __assert_rtn("FastResize", "cnmatrixbase.h", 2342, "in_nc <= max_nc");
}

{
  __assert_rtn("FastResize", "cnmatrixbase.h", 2340, "in_nc >= 0");
}

{
  __assert_rtn("FastResize", "cnmatrixbase.h", 2339, "in_nr <= max_nr");
}

{
  __assert_rtn("FastResize", "cnmatrixbase.h", 2337, "in_nr >= 0");
}

void cnmatrix::CNMatrixBase<double>::operator()()
{
  __assert_rtn("operator()", "cnmatrixbase.h", 915, "idx < num_elements_");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 914, "idx >= 0");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 913, "data_ != __null");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 817, "idx < num_elements_");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 816, "idx >= 0");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 815, "data_ != __null");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 784, "idx < num_elements_");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 783, "idx >= 0");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 782, "data_ != __null");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 947, "idx < num_elements_");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 946, "idx >= 0");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 945, "data_ != __null");
}

void cnmatrix::Multiply<double>()
{
  __assert_rtn("Multiply", "cnmatrixbase.h", 3885, "A.num_cols_ == B.num_rows_");
}

{
  __assert_rtn("Multiply", "cnmatrixbase.h", 3888, "&(B) != &(C)");
}

{
  __assert_rtn("Multiply", "cnmatrixbase.h", 3887, "&(A) != &(C)");
}

{
  __assert_rtn("Multiply", "cnmatrixbase.h", 3818, "&(B) != &(C)");
}

void cnmatrix::Add<double>()
{
  __assert_rtn("Add", "cnmatrixbase.h", 3533, "A.num_rows_ == B.num_rows_");
}

{
  __assert_rtn("Add", "cnmatrixbase.h", 3534, "A.num_cols_ == B.num_cols_");
}

{
  __assert_rtn("Add", "cnmatrixbase.h", 3537, "&(B) != &(C)");
}

{
  __assert_rtn("Add", "cnmatrixbase.h", 3536, "&(A) != &(C)");
}

void cnmatrix::CNMatrixBase<double>::operator=()
{
  __assert_rtn("operator=", "cnmatrixbase.h", 620, "this->max_num_cols_ >= A.num_cols_");
}

{
  __assert_rtn("operator=", "cnmatrixbase.h", 619, "this->max_num_rows_ >= A.num_rows_");
}

void cnmatrix::Subtract<double>()
{
  __assert_rtn("Subtract", "cnmatrixbase.h", 3674, "A.num_rows_ == B.num_rows_");
}

{
  __assert_rtn("Subtract", "cnmatrixbase.h", 3675, "A.num_cols_ == B.num_cols_");
}

{
  __assert_rtn("Subtract", "cnmatrixbase.h", 3678, "&(B) != &(C)");
}

{
  __assert_rtn("Subtract", "cnmatrixbase.h", 3677, "&(A) != &(C)");
}

void cnmatrix::Norm<double>()
{
  cnprint::CNPrinter::Print();
  __assert_rtn("Norm", "cnmatrixbase.h", 4716, "ret == 1");
}

{
  cnprint::CNPrinter::Print();
  __assert_rtn("Norm", "cnmatrixbase.h", 4640, "false");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4512, "Acopy.num_elements_ >= A.num_elements_");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4509, "&Work != &S");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4508, "&Acopy != &S");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4507, "&Acopy != &Work");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4506, "&A != &S");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4505, "&A != &Work");
}

{
  __assert_rtn("Norm", "cnmatrixbase.h", 4504, "&A != &Acopy");
}

void cnmatrix::SingularValues<double>()
{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7111, "info == 0");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7043, "S.max_num_cols_ >= 1");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7042, "S.max_num_rows_ >= minnrnc");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7041, "Acopy.max_num_cols_ >= ncA");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7040, "Acopy.max_num_rows_ >= nrA");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7038, "ne >= 5*minnrnc");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7037, "ne >= 3*minnrnc + maxnrnc");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7036, "ne >= 1");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7033, "&Work != &S");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7032, "&Acopy != &S");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7031, "&Acopy != &Work");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7030, "&A != &S");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7029, "&A != &Work");
}

{
  __assert_rtn("SingularValues", "cnmatrixbase.h", 7028, "&A != &Acopy");
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::addMeasurement(uint64_t a1, NSObject *a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a3;
  _os_log_error_impl(&dword_2613DF000, a2, OS_LOG_TYPE_ERROR, "Invalid measurement rejected by the batch filter filter, range passed: %f m, range uncertainty passed: %f m", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void cnmatrix::CNMatrixBase<double>::operator()<int,int>()
{
  __assert_rtn("operator()", "cnmatrixbase.h", 751, "idx < num_elements_");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 750, "idx >= 0");
}

{
  __assert_rtn("operator()", "cnmatrixbase.h", 749, "data_ != __null");
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas*>()
{
  do
  {
    OUTLINED_FUNCTION_1();
    *(v0 - 64) = v1;
    *(v0 - 128) = &unk_2873C4140;
    result = v0 - 136;
  }

  while (result != v3);
  return result;
}

void cnmatrix::Inv<double>()
{
  __assert_rtn("Inv", "cnmatrixbase.h", 6084, "A.num_rows_ == A.num_cols_");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6159, "info >= 0");
}

{
  cnprint::CNPrinter::Print();
  __assert_rtn("Inv", "cnmatrixbase.h", 6127, "info >= 0");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6091, "B.max_num_cols_ >= A.num_cols_");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6090, "B.max_num_rows_ >= A.num_rows_");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6088, "Work.max_num_rows_ * Work.max_num_cols_ >= 4 * A.num_rows_");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6086, "Ipiv.max_num_rows_ * Ipiv.max_num_cols_ >= A.num_rows_");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6081, "&Work != &B");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6078, "&A != &B");
}

{
  __assert_rtn("Inv", "cnmatrixbase.h", 6077, "&A != &Work");
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 64;
  v4 = (a1 - 64);
  v5 = (a1 - 64);
  do
  {
    v6 = *v5;
    v5 -= 8;
    result = (*v6)(v4);
    v3 -= 64;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>,RoseSyntheticApertureFiltering::InternalExpectedAoAMeas*>(uint64_t result)
{
  do
  {
    *(result - 88) = &unk_2873C4140;
    result = OUTLINED_FUNCTION_0(result) - 192;
  }

  while (result != v1);
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>,cnmatrix::CNMatrix<2u,1u,double>*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 56;
  v4 = (a1 - 56);
  v5 = (a1 - 56);
  do
  {
    v6 = *v5;
    v5 -= 7;
    result = (*v6)(v4);
    v3 -= 56;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void cnmatrix::Eig<double>()
{
  __assert_rtn("Eig", "cnmatrixbase.h", 5728, "nrA == ncA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5834, "info == 0");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5745, "Rwork.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5744, "Swork.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5743, "Vi.max_num_cols_ >= ncA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5742, "Vi.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5741, "Vr.max_num_cols_ >= ncA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5740, "Vr.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5739, "Di.max_num_cols_ >= ncA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5738, "Di.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5737, "Dr.max_num_cols_ >= ncA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5736, "Dr.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5735, "Acopy.max_num_cols_ >= ncA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5734, "Acopy.max_num_rows_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5732, "ne >= 3*nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5731, "Rwork.max_num_rows_ * Rwork.max_num_cols_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5730, "Swork.max_num_rows_ * Swork.max_num_cols_ >= nrA");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5725, "&Rwork != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5724, "&Swork != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5723, "&Swork != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5722, "&Vi != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5721, "&Vi != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5720, "&Vi != &Swork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5719, "&Vr != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5718, "&Vr != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5717, "&Vr != &Swork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5716, "&Vr != &Vi");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5715, "&Di != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5714, "&Di != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5713, "&Di != &Swork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5712, "&Di != &Vi");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5711, "&Di != &Vr");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5710, "&Dr != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5709, "&Dr != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5708, "&Dr != &Swork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5707, "&Dr != &Vi");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5706, "&Dr != &Vr");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5705, "&Dr != &Di");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5704, "&Acopy != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5703, "&Acopy != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5702, "&Acopy != &Swork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5701, "&Acopy != &Vi");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5700, "&Acopy != &Vr");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5699, "&Acopy != &Di");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5698, "&Acopy != &Dr");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5697, "&A != &Work");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5696, "&A != &Rwork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5695, "&A != &Swork");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5694, "&A != &Vi");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5693, "&A != &Vr");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5692, "&A != &Di");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5691, "&A != &Dr");
}

{
  __assert_rtn("Eig", "cnmatrixbase.h", 5690, "&A != &Acopy");
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>,RoseSyntheticApertureFiltering::InternalAoAMeas*>()
{
  do
  {
    OUTLINED_FUNCTION_1();
    *(v0 - 112) = v1;
    result = OUTLINED_FUNCTION_0(v0) - 208;
  }

  while (result != v3);
  return result;
}

void operator delete[]()
{
    ;
  }
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

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}