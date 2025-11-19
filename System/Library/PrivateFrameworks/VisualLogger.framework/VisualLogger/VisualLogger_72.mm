void sub_27169F294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_271317FB8(&a12);
  _Unwind_Resume(a1);
}

void sub_2716A016C(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      sub_2715EF504(a3, &v690);
      v4 = *a2;
      v5 = v693;
      v6 = v690;
      if (!v690)
      {
        goto LABEL_860;
      }

      v7 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v690;
        v8 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v6 + 96))(&v702);
      }

      else
      {
LABEL_860:
        v702 = 0;
      }

      if (v693)
      {
        v483 = v694;
        if (v694)
        {
          v484 = v692;
          if (v697 == 1 && v692)
          {
            v485 = v690;
            v486 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v486->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v487 = v485;
                (v486->__on_zero_shared)(v486);
                std::__shared_weak_count::__release_weak(v486);
                v485 = v487;
              }
            }

            (*(*v485 + 88))(v485, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v484 = v692;
          }

          if (v483 != 1)
          {
            v703 = v484;
            v704 = v5;
            sub_271828638(v4, &v703);
          }

          v703 = v484;
          v704 = v5;
          sub_271828638(v4, &v703);
        }
      }

      goto LABEL_1313;
    case 2:
      sub_2715EFA94(a3, &v690);
      v154 = *a2;
      v155 = v693;
      v156 = v690;
      if (!v690)
      {
        goto LABEL_848;
      }

      v157 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v690;
        v158 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v156 + 96))(&v702);
      }

      else
      {
LABEL_848:
        v702 = 0;
      }

      if (v693)
      {
        v478 = v694;
        if (v694)
        {
          v479 = v692;
          if (v697 == 1 && v692)
          {
            v480 = v690;
            v481 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v481->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v482 = v480;
                (v481->__on_zero_shared)(v481);
                std::__shared_weak_count::__release_weak(v481);
                v480 = v482;
              }
            }

            (*(*v480 + 88))(v480, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v479 = v692;
          }

          if (v478 != 1)
          {
            v703 = v479;
            v704 = v155;
            sub_27182976C(v154, &v703);
          }

          v703 = v479;
          v704 = v155;
          sub_27182976C(v154, &v703);
        }
      }

      goto LABEL_1313;
    case 3:
      sub_271683A48(a3, &v690);
      v148 = *a2;
      v149 = v693;
      v150 = v690;
      if (!v690)
      {
        goto LABEL_835;
      }

      v151 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v690;
        v152 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v150 + 96))(&v702);
      }

      else
      {
LABEL_835:
        v702 = 0;
      }

      if (v693)
      {
        v470 = v694;
        if (v694)
        {
          v471 = v696;
          v472 = v692;
          if (v697 == 1 && v692)
          {
            v473 = v690;
            v474 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v474->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v475 = v473;
                (v474->__on_zero_shared)(v474);
                std::__shared_weak_count::__release_weak(v474);
                v473 = v475;
              }
            }

            (*(*v473 + 88))(v473, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v472 = v692;
          }

          v476 = v470 - 1;
          if (v476)
          {
            v477 = 2 * v471;
            do
            {
              v703 = v472;
              v704 = v149;
              sub_271829F14(v148, &v703);
              v472 = (v472 + v477);
              --v476;
            }

            while (v476);
          }

          v703 = v472;
          v704 = v149;
          sub_271829F14(v148, &v703);
        }
      }

      goto LABEL_1313;
    case 4:
      sub_271683F50(a3, &v690);
      v92 = *a2;
      v93 = v693;
      v94 = v690;
      if (!v690)
      {
        goto LABEL_642;
      }

      v95 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v95->__on_zero_shared)(v95);
          std::__shared_weak_count::__release_weak(v95);
        }

        v94 = v690;
        v96 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v97 = v94;
            (v96->__on_zero_shared)(v96);
            std::__shared_weak_count::__release_weak(v96);
            v94 = v97;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v94 + 96))(&v702);
      }

      else
      {
LABEL_642:
        v702 = 0;
      }

      if (v693)
      {
        v362 = v694;
        if (v694)
        {
          v363 = v696;
          v364 = v692;
          if (v697 == 1 && v692)
          {
            v365 = v690;
            v366 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v366->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v367 = v365;
                (v366->__on_zero_shared)(v366);
                std::__shared_weak_count::__release_weak(v366);
                v365 = v367;
              }
            }

            (*(*v365 + 88))(v365, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v364 = v692;
          }

          v368 = v362 - 1;
          if (v368)
          {
            v369 = 4 * v363;
            do
            {
              v703 = v364;
              v704 = v93;
              sub_27182A338(v92, &v703);
              v364 = (v364 + v369);
              --v368;
            }

            while (v368);
          }

          v703 = v364;
          v704 = v93;
          sub_27182A338(v92, &v703);
        }
      }

      goto LABEL_1313;
    case 5:
      sub_271684458(a3, &v690);
      v10 = *a2;
      v133 = v699;
      v134 = v690;
      if (!v690)
      {
        goto LABEL_780;
      }

      v135 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v135->__on_zero_shared)(v135);
          std::__shared_weak_count::__release_weak(v135);
        }

        v134 = v690;
        v136 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v137 = v134;
            (v136->__on_zero_shared)(v136);
            std::__shared_weak_count::__release_weak(v136);
            v134 = v137;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v134 + 96))(&v702);
      }

      else
      {
LABEL_780:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v439 = v695;
          if (v695)
          {
            v440 = v698;
            v441 = v692;
            if (v700 == 1 && v692)
            {
              v442 = v690;
              v443 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v443->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v444 = v442;
                  (v443->__on_zero_shared)(v443);
                  std::__shared_weak_count::__release_weak(v443);
                  v442 = v444;
                }
              }

              (*(*v442 + 88))(v442, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v441 = v692;
            }

            v445 = v439 - 1;
            if (v439 != 1)
            {
              if (v133)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v441;
                v704 = 2;
                sub_271828638(v10, &v703);
              }

              v441 = (v441 + v440 + v440 * (v439 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v650 = *(v10 + 56);
                *(v10 + 40) = *(v650 - 8);
                *(v10 + 56) = v650 - 8;
                --v445;
              }

              while (v445);
            }

            sub_2718285F0(v10);
            if (v133)
            {
              v703 = v441;
              v704 = 2;
              sub_271828638(v10, &v703);
            }

            v651 = *(v10 + 56);
            *(v10 + 40) = *(v651 - 8);
            *(v10 + 56) = v651 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 6:
      sub_2716849F0(a3, &v690);
      v10 = *a2;
      v87 = v699;
      v88 = v690;
      if (!v690)
      {
        goto LABEL_627;
      }

      v89 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }

        v88 = v690;
        v90 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v91 = v88;
            (v90->__on_zero_shared)(v90);
            std::__shared_weak_count::__release_weak(v90);
            v88 = v91;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v88 + 96))(&v702);
      }

      else
      {
LABEL_627:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v355 = v695;
          if (v695)
          {
            v356 = v698;
            v357 = v692;
            if (v700 == 1 && v692)
            {
              v358 = v690;
              v359 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v359->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v360 = v358;
                  (v359->__on_zero_shared)(v359);
                  std::__shared_weak_count::__release_weak(v359);
                  v358 = v360;
                }
              }

              (*(*v358 + 88))(v358, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v357 = v692;
            }

            v361 = v355 - 1;
            if (v361)
            {
              if (v87)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v357;
                v704 = 2;
                sub_27182976C(v10, &v703);
              }

              v626 = 2 * v356;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v627 = *(v10 + 56);
                *(v10 + 40) = *(v627 - 8);
                *(v10 + 56) = v627 - 8;
                v357 = (v357 + v626);
                --v361;
              }

              while (v361);
            }

            sub_2718285F0(v10);
            if (v87)
            {
              v703 = v357;
              v704 = 2;
              sub_27182976C(v10, &v703);
            }

            v628 = *(v10 + 56);
            *(v10 + 40) = *(v628 - 8);
            *(v10 + 56) = v628 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 7:
      sub_271684F8C(a3, &v690);
      v10 = *a2;
      v62 = v699;
      v63 = v690;
      if (!v690)
      {
        goto LABEL_537;
      }

      v64 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v64->__on_zero_shared)(v64);
          std::__shared_weak_count::__release_weak(v64);
        }

        v63 = v690;
        v65 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v66 = v63;
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
            v63 = v66;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v63 + 96))(&v702);
      }

      else
      {
LABEL_537:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v305 = v695;
          if (v695)
          {
            v306 = v697;
            v307 = v698;
            v308 = v692;
            if (v700 == 1 && v692)
            {
              v309 = v690;
              v310 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v310->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v311 = v309;
                  (v310->__on_zero_shared)(v310);
                  std::__shared_weak_count::__release_weak(v310);
                  v309 = v311;
                }
              }

              (*(*v309 + 88))(v309, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v308 = v692;
            }

            v312 = v305 - 1;
            if (v312)
            {
              if (v62)
              {
                for (i = 0; i != v312; ++i)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v314 = 0;
                  v315 = v62;
                  do
                  {
                    v703 = &v308[v314];
                    v704 = 2;
                    sub_271829F14(v10, &v703);
                    v314 += v306;
                    --v315;
                  }

                  while (v315);
                  v316 = *(v10 + 56);
                  *(v10 + 40) = *(v316 - 8);
                  *(v10 + 56) = v316 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v308 += v307;
                }
              }

              else
              {
                v609 = 2 * v307;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v610 = *(v10 + 56);
                  *(v10 + 40) = *(v610 - 8);
                  *(v10 + 56) = v610 - 8;
                  v308 = (v308 + v609);
                  --v312;
                }

                while (v312);
              }
            }

            sub_2718285F0(v10);
            if (v62)
            {
              v611 = 0;
              do
              {
                v703 = &v308[v611];
                v704 = 2;
                sub_271829F14(v10, &v703);
                v611 += v306;
                --v62;
              }

              while (v62);
            }

            v612 = *(v10 + 56);
            *(v10 + 40) = *(v612 - 8);
            *(v10 + 56) = v612 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 8:
      sub_271685528(a3, &v690);
      v10 = *a2;
      v143 = v699;
      v144 = v690;
      if (!v690)
      {
        goto LABEL_815;
      }

      v145 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v690;
        v146 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v144 + 96))(&v702);
      }

      else
      {
LABEL_815:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v458 = v695;
          if (v695)
          {
            v459 = v697;
            v460 = v698;
            v461 = v692;
            if (v700 == 1 && v692)
            {
              v462 = v690;
              v463 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v464 = v462;
                  (v463->__on_zero_shared)(v463);
                  std::__shared_weak_count::__release_weak(v463);
                  v462 = v464;
                }
              }

              (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v461 = v692;
            }

            v465 = v458 - 1;
            if (v465)
            {
              if (v143)
              {
                for (j = 0; j != v465; ++j)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v467 = 0;
                  v468 = v143;
                  do
                  {
                    v703 = &v461[2 * v467];
                    v704 = 2;
                    sub_27182A338(v10, &v703);
                    v467 += v459;
                    --v468;
                  }

                  while (v468);
                  v469 = *(v10 + 56);
                  *(v10 + 40) = *(v469 - 8);
                  *(v10 + 56) = v469 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v461 += 2 * v460;
                }
              }

              else
              {
                v656 = 4 * v460;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v657 = *(v10 + 56);
                  *(v10 + 40) = *(v657 - 8);
                  *(v10 + 56) = v657 - 8;
                  v461 = (v461 + v656);
                  --v465;
                }

                while (v465);
              }
            }

            sub_2718285F0(v10);
            if (v143)
            {
              v658 = 0;
              do
              {
                v703 = &v461[2 * v658];
                v704 = 2;
                sub_27182A338(v10, &v703);
                v658 += v459;
                --v143;
              }

              while (v143);
            }

            v659 = *(v10 + 56);
            *(v10 + 40) = *(v659 - 8);
            *(v10 + 56) = v659 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 9:
      sub_271685AC4(a3, &v690);
      v10 = *a2;
      v128 = v699;
      v129 = v690;
      if (!v690)
      {
        goto LABEL_765;
      }

      v130 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        v129 = v690;
        v131 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v132 = v129;
            (v131->__on_zero_shared)(v131);
            std::__shared_weak_count::__release_weak(v131);
            v129 = v132;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v129 + 96))(&v702);
      }

      else
      {
LABEL_765:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v432 = v695;
          if (v695)
          {
            v433 = v698;
            v434 = v692;
            if (v700 == 1 && v692)
            {
              v435 = v690;
              v436 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v436->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v437 = v435;
                  (v436->__on_zero_shared)(v436);
                  std::__shared_weak_count::__release_weak(v436);
                  v435 = v437;
                }
              }

              (*(*v435 + 88))(v435, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v434 = v692;
            }

            v438 = v432 - 1;
            if (v432 != 1)
            {
              if (v128)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v434;
                v704 = 3;
                sub_271828638(v10, &v703);
              }

              v434 = (v434 + v433 + v433 * (v432 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v648 = *(v10 + 56);
                *(v10 + 40) = *(v648 - 8);
                *(v10 + 56) = v648 - 8;
                --v438;
              }

              while (v438);
            }

            sub_2718285F0(v10);
            if (v128)
            {
              v703 = v434;
              v704 = 3;
              sub_271828638(v10, &v703);
            }

            v649 = *(v10 + 56);
            *(v10 + 40) = *(v649 - 8);
            *(v10 + 56) = v649 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 10:
      sub_27168605C(a3, &v690);
      v10 = *a2;
      v170 = v699;
      v171 = v690;
      if (!v690)
      {
        goto LABEL_907;
      }

      v172 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v172->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v172->__on_zero_shared)(v172);
          std::__shared_weak_count::__release_weak(v172);
        }

        v171 = v690;
        v173 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v174 = v171;
            (v173->__on_zero_shared)(v173);
            std::__shared_weak_count::__release_weak(v173);
            v171 = v174;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v171 + 96))(&v702);
      }

      else
      {
LABEL_907:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v507 = v695;
          if (v695)
          {
            v508 = v698;
            v509 = v692;
            if (v700 == 1 && v692)
            {
              v510 = v690;
              v511 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v511->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v512 = v510;
                  (v511->__on_zero_shared)(v511);
                  std::__shared_weak_count::__release_weak(v511);
                  v510 = v512;
                }
              }

              (*(*v510 + 88))(v510, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v509 = v692;
            }

            v513 = v507 - 1;
            if (v513)
            {
              if (v170)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v509;
                v704 = 3;
                sub_27182976C(v10, &v703);
              }

              v665 = 2 * v508;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v666 = *(v10 + 56);
                *(v10 + 40) = *(v666 - 8);
                *(v10 + 56) = v666 - 8;
                v509 = (v509 + v665);
                --v513;
              }

              while (v513);
            }

            sub_2718285F0(v10);
            if (v170)
            {
              v703 = v509;
              v704 = 3;
              sub_27182976C(v10, &v703);
            }

            v667 = *(v10 + 56);
            *(v10 + 40) = *(v667 - 8);
            *(v10 + 56) = v667 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 11:
      sub_2716865F8(a3, &v690);
      v10 = *a2;
      v165 = v699;
      v166 = v690;
      if (!v690)
      {
        goto LABEL_887;
      }

      v167 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v167->__on_zero_shared)(v167);
          std::__shared_weak_count::__release_weak(v167);
        }

        v166 = v690;
        v168 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v169 = v166;
            (v168->__on_zero_shared)(v168);
            std::__shared_weak_count::__release_weak(v168);
            v166 = v169;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v166 + 96))(&v702);
      }

      else
      {
LABEL_887:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v495 = v695;
          if (v695)
          {
            v496 = v697;
            v497 = v698;
            v498 = v692;
            if (v700 == 1 && v692)
            {
              v499 = v690;
              v500 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v500->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v501 = v499;
                  (v500->__on_zero_shared)(v500);
                  std::__shared_weak_count::__release_weak(v500);
                  v499 = v501;
                }
              }

              (*(*v499 + 88))(v499, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v498 = v692;
            }

            v502 = v495 - 1;
            if (v502)
            {
              if (v165)
              {
                for (k = 0; k != v502; ++k)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v504 = 0;
                  v505 = v165;
                  do
                  {
                    v703 = &v498[v504];
                    v704 = 3;
                    sub_271829F14(v10, &v703);
                    v504 += v496;
                    --v505;
                  }

                  while (v505);
                  v506 = *(v10 + 56);
                  *(v10 + 40) = *(v506 - 8);
                  *(v10 + 56) = v506 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v498 += v497;
                }
              }

              else
              {
                v661 = 2 * v497;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v662 = *(v10 + 56);
                  *(v10 + 40) = *(v662 - 8);
                  *(v10 + 56) = v662 - 8;
                  v498 = (v498 + v661);
                  --v502;
                }

                while (v502);
              }
            }

            sub_2718285F0(v10);
            if (v165)
            {
              v663 = 0;
              do
              {
                v703 = &v498[v663];
                v704 = 3;
                sub_271829F14(v10, &v703);
                v663 += v496;
                --v165;
              }

              while (v165);
            }

            v664 = *(v10 + 56);
            *(v10 + 40) = *(v664 - 8);
            *(v10 + 56) = v664 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 12:
      sub_271686B94(a3, &v690);
      v10 = *a2;
      v26 = v699;
      v27 = v690;
      if (!v690)
      {
        goto LABEL_417;
      }

      v28 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v27 = v690;
        v29 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = v27;
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
            v27 = v30;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v27 + 96))(&v702);
      }

      else
      {
LABEL_417:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v241 = v695;
          if (v695)
          {
            v242 = v697;
            v243 = v698;
            v244 = v692;
            if (v700 == 1 && v692)
            {
              v245 = v690;
              v246 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v246->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v247 = v245;
                  (v246->__on_zero_shared)(v246);
                  std::__shared_weak_count::__release_weak(v246);
                  v245 = v247;
                }
              }

              (*(*v245 + 88))(v245, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v244 = v692;
            }

            v248 = v241 - 1;
            if (v248)
            {
              if (v26)
              {
                for (m = 0; m != v248; ++m)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v250 = 0;
                  v251 = v26;
                  do
                  {
                    v703 = &v244[2 * v250];
                    v704 = 3;
                    sub_27182A338(v10, &v703);
                    v250 += v242;
                    --v251;
                  }

                  while (v251);
                  v252 = *(v10 + 56);
                  *(v10 + 40) = *(v252 - 8);
                  *(v10 + 56) = v252 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v244 += 2 * v243;
                }
              }

              else
              {
                v588 = 4 * v243;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v589 = *(v10 + 56);
                  *(v10 + 40) = *(v589 - 8);
                  *(v10 + 56) = v589 - 8;
                  v244 = (v244 + v588);
                  --v248;
                }

                while (v248);
              }
            }

            sub_2718285F0(v10);
            if (v26)
            {
              v590 = 0;
              do
              {
                v703 = &v244[2 * v590];
                v704 = 3;
                sub_27182A338(v10, &v703);
                v590 += v242;
                --v26;
              }

              while (v26);
            }

            v591 = *(v10 + 56);
            *(v10 + 40) = *(v591 - 8);
            *(v10 + 56) = v591 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 13:
      sub_271687130(a3, &v690);
      v10 = *a2;
      v46 = v699;
      v47 = v690;
      if (!v690)
      {
        goto LABEL_487;
      }

      v48 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        v47 = v690;
        v49 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = v47;
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v47 = v50;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v47 + 96))(&v702);
      }

      else
      {
LABEL_487:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v279 = v695;
          if (v695)
          {
            v280 = v698;
            v281 = v692;
            if (v700 == 1 && v692)
            {
              v282 = v690;
              v283 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v284 = v282;
                  (v283->__on_zero_shared)(v283);
                  std::__shared_weak_count::__release_weak(v283);
                  v282 = v284;
                }
              }

              (*(*v282 + 88))(v282, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v281 = v692;
            }

            v285 = v279 - 1;
            if (v279 != 1)
            {
              if (v46)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v281;
                v704 = 4;
                sub_271828638(v10, &v703);
              }

              v281 = (v281 + v280 + v280 * (v279 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v601 = *(v10 + 56);
                *(v10 + 40) = *(v601 - 8);
                *(v10 + 56) = v601 - 8;
                --v285;
              }

              while (v285);
            }

            sub_2718285F0(v10);
            if (v46)
            {
              v703 = v281;
              v704 = 4;
              sub_271828638(v10, &v703);
            }

            v602 = *(v10 + 56);
            *(v10 + 40) = *(v602 - 8);
            *(v10 + 56) = v602 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 14:
      sub_2716876C8(a3, &v690);
      v10 = *a2;
      v41 = v699;
      v42 = v690;
      if (!v690)
      {
        goto LABEL_472;
      }

      v43 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v690;
        v44 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v42 + 96))(&v702);
      }

      else
      {
LABEL_472:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v272 = v695;
          if (v695)
          {
            v273 = v698;
            v274 = v692;
            if (v700 == 1 && v692)
            {
              v275 = v690;
              v276 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v277 = v275;
                  (v276->__on_zero_shared)(v276);
                  std::__shared_weak_count::__release_weak(v276);
                  v275 = v277;
                }
              }

              (*(*v275 + 88))(v275, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v274 = v692;
            }

            v278 = v272 - 1;
            if (v278)
            {
              if (v41)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v274;
                v704 = 4;
                sub_27182976C(v10, &v703);
              }

              v598 = 2 * v273;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v599 = *(v10 + 56);
                *(v10 + 40) = *(v599 - 8);
                *(v10 + 56) = v599 - 8;
                v274 = (v274 + v598);
                --v278;
              }

              while (v278);
            }

            sub_2718285F0(v10);
            if (v41)
            {
              v703 = v274;
              v704 = 4;
              sub_27182976C(v10, &v703);
            }

            v600 = *(v10 + 56);
            *(v10 + 40) = *(v600 - 8);
            *(v10 + 56) = v600 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 15:
      sub_271687C64(a3, &v690);
      v10 = *a2;
      v190 = v699;
      v191 = v690;
      if (!v690)
      {
        goto LABEL_972;
      }

      v192 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v192->__on_zero_shared)(v192);
          std::__shared_weak_count::__release_weak(v192);
        }

        v191 = v690;
        v193 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v194 = v191;
            (v193->__on_zero_shared)(v193);
            std::__shared_weak_count::__release_weak(v193);
            v191 = v194;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v191 + 96))(&v702);
      }

      else
      {
LABEL_972:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v540 = v695;
          if (v695)
          {
            v541 = v697;
            v542 = v698;
            v543 = v692;
            if (v700 == 1 && v692)
            {
              v544 = v690;
              v545 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v545->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v546 = v544;
                  (v545->__on_zero_shared)(v545);
                  std::__shared_weak_count::__release_weak(v545);
                  v544 = v546;
                }
              }

              (*(*v544 + 88))(v544, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v543 = v692;
            }

            v547 = v540 - 1;
            if (v547)
            {
              if (v190)
              {
                for (n = 0; n != v547; ++n)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v549 = 0;
                  v550 = v190;
                  do
                  {
                    v703 = &v543[v549];
                    v704 = 4;
                    sub_271829F14(v10, &v703);
                    v549 += v541;
                    --v550;
                  }

                  while (v550);
                  v551 = *(v10 + 56);
                  *(v10 + 40) = *(v551 - 8);
                  *(v10 + 56) = v551 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v543 += v542;
                }
              }

              else
              {
                v676 = 2 * v542;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v677 = *(v10 + 56);
                  *(v10 + 40) = *(v677 - 8);
                  *(v10 + 56) = v677 - 8;
                  v543 = (v543 + v676);
                  --v547;
                }

                while (v547);
              }
            }

            sub_2718285F0(v10);
            if (v190)
            {
              v678 = 0;
              do
              {
                v703 = &v543[v678];
                v704 = 4;
                sub_271829F14(v10, &v703);
                v678 += v541;
                --v190;
              }

              while (v190);
            }

            v679 = *(v10 + 56);
            *(v10 + 40) = *(v679 - 8);
            *(v10 + 56) = v679 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 16:
      sub_271688200(a3, &v690);
      v10 = *a2;
      v138 = v699;
      v139 = v690;
      if (!v690)
      {
        goto LABEL_795;
      }

      v140 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        v139 = v690;
        v141 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v142 = v139;
            (v141->__on_zero_shared)(v141);
            std::__shared_weak_count::__release_weak(v141);
            v139 = v142;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v139 + 96))(&v702);
      }

      else
      {
LABEL_795:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v446 = v695;
          if (v695)
          {
            v447 = v697;
            v448 = v698;
            v449 = v692;
            if (v700 == 1 && v692)
            {
              v450 = v690;
              v451 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v451->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v452 = v450;
                  (v451->__on_zero_shared)(v451);
                  std::__shared_weak_count::__release_weak(v451);
                  v450 = v452;
                }
              }

              (*(*v450 + 88))(v450, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v449 = v692;
            }

            v453 = v446 - 1;
            if (v453)
            {
              if (v138)
              {
                for (ii = 0; ii != v453; ++ii)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v455 = 0;
                  v456 = v138;
                  do
                  {
                    v703 = &v449[2 * v455];
                    v704 = 4;
                    sub_27182A338(v10, &v703);
                    v455 += v447;
                    --v456;
                  }

                  while (v456);
                  v457 = *(v10 + 56);
                  *(v10 + 40) = *(v457 - 8);
                  *(v10 + 56) = v457 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v449 += 2 * v448;
                }
              }

              else
              {
                v652 = 4 * v448;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v653 = *(v10 + 56);
                  *(v10 + 40) = *(v653 - 8);
                  *(v10 + 56) = v653 - 8;
                  v449 = (v449 + v652);
                  --v453;
                }

                while (v453);
              }
            }

            sub_2718285F0(v10);
            if (v138)
            {
              v654 = 0;
              do
              {
                v703 = &v449[2 * v654];
                v704 = 4;
                sub_27182A338(v10, &v703);
                v654 += v447;
                --v138;
              }

              while (v138);
            }

            v655 = *(v10 + 56);
            *(v10 + 40) = *(v655 - 8);
            *(v10 + 56) = v655 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 17:
      sub_27168879C(a3, &v690);
      v10 = *a2;
      v195 = v699;
      v196 = v690;
      if (!v690)
      {
        goto LABEL_992;
      }

      v197 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v197->__on_zero_shared)(v197);
          std::__shared_weak_count::__release_weak(v197);
        }

        v196 = v690;
        v198 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v199 = v196;
            (v198->__on_zero_shared)(v198);
            std::__shared_weak_count::__release_weak(v198);
            v196 = v199;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v196 + 96))(&v702);
      }

      else
      {
LABEL_992:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v552 = v695;
          if (v695)
          {
            v553 = v698;
            v554 = v692;
            if (v700 == 1 && v692)
            {
              v555 = v690;
              v556 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v556->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v557 = v555;
                  (v556->__on_zero_shared)(v556);
                  std::__shared_weak_count::__release_weak(v556);
                  v555 = v557;
                }
              }

              (*(*v555 + 88))(v555, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v554 = v692;
            }

            v558 = v552 - 1;
            if (v552 != 1)
            {
              if (v195)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v554;
                v704 = 3;
                sub_271828638(v10, &v703);
              }

              v554 = (v554 + v553 + v553 * (v552 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v682 = *(v10 + 56);
                *(v10 + 40) = *(v682 - 8);
                *(v10 + 56) = v682 - 8;
                --v558;
              }

              while (v558);
            }

            sub_2718285F0(v10);
            if (v195)
            {
              v703 = v554;
              v704 = 3;
              sub_271828638(v10, &v703);
            }

            v683 = *(v10 + 56);
            *(v10 + 40) = *(v683 - 8);
            *(v10 + 56) = v683 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 18:
      sub_271688D34(a3, &v690);
      v10 = *a2;
      v57 = v699;
      v58 = v690;
      if (!v690)
      {
        goto LABEL_522;
      }

      v59 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }

        v58 = v690;
        v60 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v61 = v58;
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
            v58 = v61;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v58 + 96))(&v702);
      }

      else
      {
LABEL_522:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v298 = v695;
          if (v695)
          {
            v299 = v698;
            v300 = v692;
            if (v700 == 1 && v692)
            {
              v301 = v690;
              v302 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v302->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v303 = v301;
                  (v302->__on_zero_shared)(v302);
                  std::__shared_weak_count::__release_weak(v302);
                  v301 = v303;
                }
              }

              (*(*v301 + 88))(v301, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v300 = v692;
            }

            v304 = v298 - 1;
            if (v304)
            {
              if (v57)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v300;
                v704 = 3;
                sub_27182976C(v10, &v703);
              }

              v606 = 2 * v299;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v607 = *(v10 + 56);
                *(v10 + 40) = *(v607 - 8);
                *(v10 + 56) = v607 - 8;
                v300 = (v300 + v606);
                --v304;
              }

              while (v304);
            }

            sub_2718285F0(v10);
            if (v57)
            {
              v703 = v300;
              v704 = 3;
              sub_27182976C(v10, &v703);
            }

            v608 = *(v10 + 56);
            *(v10 + 40) = *(v608 - 8);
            *(v10 + 56) = v608 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 19:
      sub_2716892D0(a3, &v690);
      v10 = *a2;
      v16 = v699;
      v17 = v690;
      if (!v690)
      {
        goto LABEL_382;
      }

      v18 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v17 = v690;
        v19 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v20 = v17;
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
            v17 = v20;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v17 + 96))(&v702);
      }

      else
      {
LABEL_382:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v222 = v695;
          if (v695)
          {
            v223 = v697;
            v224 = v698;
            v225 = v692;
            if (v700 == 1 && v692)
            {
              v226 = v690;
              v227 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v228 = v226;
                  (v227->__on_zero_shared)(v227);
                  std::__shared_weak_count::__release_weak(v227);
                  v226 = v228;
                }
              }

              (*(*v226 + 88))(v226, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v225 = v692;
            }

            v229 = v222 - 1;
            if (v229)
            {
              if (v16)
              {
                for (jj = 0; jj != v229; ++jj)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v231 = 0;
                  v232 = v16;
                  do
                  {
                    v703 = &v225[v231];
                    v704 = 3;
                    sub_271829F14(v10, &v703);
                    v231 += v223;
                    --v232;
                  }

                  while (v232);
                  v233 = *(v10 + 56);
                  *(v10 + 40) = *(v233 - 8);
                  *(v10 + 56) = v233 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v225 += v224;
                }
              }

              else
              {
                v582 = 2 * v224;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v583 = *(v10 + 56);
                  *(v10 + 40) = *(v583 - 8);
                  *(v10 + 56) = v583 - 8;
                  v225 = (v225 + v582);
                  --v229;
                }

                while (v229);
              }
            }

            sub_2718285F0(v10);
            if (v16)
            {
              v584 = 0;
              do
              {
                v703 = &v225[v584];
                v704 = 3;
                sub_271829F14(v10, &v703);
                v584 += v223;
                --v16;
              }

              while (v16);
            }

            v585 = *(v10 + 56);
            *(v10 + 40) = *(v585 - 8);
            *(v10 + 56) = v585 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 20:
      sub_27168986C(a3, &v690);
      v10 = *a2;
      v180 = v699;
      v181 = v690;
      if (!v690)
      {
        goto LABEL_937;
      }

      v182 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v182->__on_zero_shared)(v182);
          std::__shared_weak_count::__release_weak(v182);
        }

        v181 = v690;
        v183 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v184 = v181;
            (v183->__on_zero_shared)(v183);
            std::__shared_weak_count::__release_weak(v183);
            v181 = v184;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v181 + 96))(&v702);
      }

      else
      {
LABEL_937:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v521 = v695;
          if (v695)
          {
            v522 = v697;
            v523 = v698;
            v524 = v692;
            if (v700 == 1 && v692)
            {
              v525 = v690;
              v526 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v526->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v527 = v525;
                  (v526->__on_zero_shared)(v526);
                  std::__shared_weak_count::__release_weak(v526);
                  v525 = v527;
                }
              }

              (*(*v525 + 88))(v525, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v524 = v692;
            }

            v528 = v521 - 1;
            if (v528)
            {
              if (v180)
              {
                for (kk = 0; kk != v528; ++kk)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v530 = 0;
                  v531 = v180;
                  do
                  {
                    v703 = &v524[2 * v530];
                    v704 = 3;
                    sub_27182A338(v10, &v703);
                    v530 += v522;
                    --v531;
                  }

                  while (v531);
                  v532 = *(v10 + 56);
                  *(v10 + 40) = *(v532 - 8);
                  *(v10 + 56) = v532 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v524 += 2 * v523;
                }
              }

              else
              {
                v669 = 4 * v523;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v670 = *(v10 + 56);
                  *(v10 + 40) = *(v670 - 8);
                  *(v10 + 56) = v670 - 8;
                  v524 = (v524 + v669);
                  --v528;
                }

                while (v528);
              }
            }

            sub_2718285F0(v10);
            if (v180)
            {
              v671 = 0;
              do
              {
                v703 = &v524[2 * v671];
                v704 = 3;
                sub_27182A338(v10, &v703);
                v671 += v522;
                --v180;
              }

              while (v180);
            }

            v672 = *(v10 + 56);
            *(v10 + 40) = *(v672 - 8);
            *(v10 + 56) = v672 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 21:
      sub_2715EFF9C(a3, &v690);
      v10 = *a2;
      v205 = v699;
      v206 = v690;
      if (!v690)
      {
        goto LABEL_1027;
      }

      v207 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v207->__on_zero_shared)(v207);
          std::__shared_weak_count::__release_weak(v207);
        }

        v206 = v690;
        v208 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v206;
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v206 = v209;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v206 + 96))(&v702);
      }

      else
      {
LABEL_1027:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v571 = v695;
          if (v695)
          {
            v572 = v698;
            v573 = v692;
            if (v700 == 1 && v692)
            {
              v574 = v690;
              v575 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v575->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v576 = v574;
                  (v575->__on_zero_shared)(v575);
                  std::__shared_weak_count::__release_weak(v575);
                  v574 = v576;
                }
              }

              (*(*v574 + 88))(v574, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v573 = v692;
            }

            v577 = v571 - 1;
            if (v571 != 1)
            {
              if (v205)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v573;
                v704 = 3;
                sub_271828638(v10, &v703);
              }

              v573 = (v573 + v572 + v572 * (v571 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v688 = *(v10 + 56);
                *(v10 + 40) = *(v688 - 8);
                *(v10 + 56) = v688 - 8;
                --v577;
              }

              while (v577);
            }

            sub_2718285F0(v10);
            if (v205)
            {
              v703 = v573;
              v704 = 3;
              sub_271828638(v10, &v703);
            }

            v689 = *(v10 + 56);
            *(v10 + 40) = *(v689 - 8);
            *(v10 + 56) = v689 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 22:
      sub_271689E08(a3, &v690);
      v10 = *a2;
      v72 = v699;
      v73 = v690;
      if (!v690)
      {
        goto LABEL_577;
      }

      v74 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        v73 = v690;
        v75 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v76 = v73;
            (v75->__on_zero_shared)(v75);
            std::__shared_weak_count::__release_weak(v75);
            v73 = v76;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v73 + 96))(&v702);
      }

      else
      {
LABEL_577:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v329 = v695;
          if (v695)
          {
            v330 = v698;
            v331 = v692;
            if (v700 == 1 && v692)
            {
              v332 = v690;
              v333 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v333->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v334 = v332;
                  (v333->__on_zero_shared)(v333);
                  std::__shared_weak_count::__release_weak(v333);
                  v332 = v334;
                }
              }

              (*(*v332 + 88))(v332, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v331 = v692;
            }

            v335 = v329 - 1;
            if (v335)
            {
              if (v72)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v331;
                v704 = 3;
                sub_27182976C(v10, &v703);
              }

              v616 = 2 * v330;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v617 = *(v10 + 56);
                *(v10 + 40) = *(v617 - 8);
                *(v10 + 56) = v617 - 8;
                v331 = (v331 + v616);
                --v335;
              }

              while (v335);
            }

            sub_2718285F0(v10);
            if (v72)
            {
              v703 = v331;
              v704 = 3;
              sub_27182976C(v10, &v703);
            }

            v618 = *(v10 + 56);
            *(v10 + 40) = *(v618 - 8);
            *(v10 + 56) = v618 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 23:
      sub_27168A3A4(a3, &v690);
      v10 = *a2;
      v200 = v699;
      v201 = v690;
      if (!v690)
      {
        goto LABEL_1007;
      }

      v202 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v202->__on_zero_shared)(v202);
          std::__shared_weak_count::__release_weak(v202);
        }

        v201 = v690;
        v203 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v204 = v201;
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
            v201 = v204;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v201 + 96))(&v702);
      }

      else
      {
LABEL_1007:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v559 = v695;
          if (v695)
          {
            v560 = v697;
            v561 = v698;
            v562 = v692;
            if (v700 == 1 && v692)
            {
              v563 = v690;
              v564 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v564->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v565 = v563;
                  (v564->__on_zero_shared)(v564);
                  std::__shared_weak_count::__release_weak(v564);
                  v563 = v565;
                }
              }

              (*(*v563 + 88))(v563, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v562 = v692;
            }

            v566 = v559 - 1;
            if (v566)
            {
              if (v200)
              {
                for (mm = 0; mm != v566; ++mm)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v568 = 0;
                  v569 = v200;
                  do
                  {
                    v703 = &v562[v568];
                    v704 = 3;
                    sub_271829F14(v10, &v703);
                    v568 += v560;
                    --v569;
                  }

                  while (v569);
                  v570 = *(v10 + 56);
                  *(v10 + 40) = *(v570 - 8);
                  *(v10 + 56) = v570 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v562 += v561;
                }
              }

              else
              {
                v684 = 2 * v561;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v685 = *(v10 + 56);
                  *(v10 + 40) = *(v685 - 8);
                  *(v10 + 56) = v685 - 8;
                  v562 = (v562 + v684);
                  --v566;
                }

                while (v566);
              }
            }

            sub_2718285F0(v10);
            if (v200)
            {
              v686 = 0;
              do
              {
                v703 = &v562[v686];
                v704 = 3;
                sub_271829F14(v10, &v703);
                v686 += v560;
                --v200;
              }

              while (v200);
            }

            v687 = *(v10 + 56);
            *(v10 + 40) = *(v687 - 8);
            *(v10 + 56) = v687 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 24:
      sub_27168A940(a3, &v690);
      v10 = *a2;
      v36 = v699;
      v37 = v690;
      if (!v690)
      {
        goto LABEL_452;
      }

      v38 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v37 = v690;
        v39 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v40 = v37;
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v37 = v40;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v37 + 96))(&v702);
      }

      else
      {
LABEL_452:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v260 = v695;
          if (v695)
          {
            v261 = v697;
            v262 = v698;
            v263 = v692;
            if (v700 == 1 && v692)
            {
              v264 = v690;
              v265 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v266 = v264;
                  (v265->__on_zero_shared)(v265);
                  std::__shared_weak_count::__release_weak(v265);
                  v264 = v266;
                }
              }

              (*(*v264 + 88))(v264, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v263 = v692;
            }

            v267 = v260 - 1;
            if (v267)
            {
              if (v36)
              {
                for (nn = 0; nn != v267; ++nn)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v269 = 0;
                  v270 = v36;
                  do
                  {
                    v703 = &v263[2 * v269];
                    v704 = 3;
                    sub_27182A338(v10, &v703);
                    v269 += v261;
                    --v270;
                  }

                  while (v270);
                  v271 = *(v10 + 56);
                  *(v10 + 40) = *(v271 - 8);
                  *(v10 + 56) = v271 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v263 += 2 * v262;
                }
              }

              else
              {
                v594 = 4 * v262;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v595 = *(v10 + 56);
                  *(v10 + 40) = *(v595 - 8);
                  *(v10 + 56) = v595 - 8;
                  v263 = (v263 + v594);
                  --v267;
                }

                while (v267);
              }
            }

            sub_2718285F0(v10);
            if (v36)
            {
              v596 = 0;
              do
              {
                v703 = &v263[2 * v596];
                v704 = 3;
                sub_27182A338(v10, &v703);
                v596 += v261;
                --v36;
              }

              while (v36);
            }

            v597 = *(v10 + 56);
            *(v10 + 40) = *(v597 - 8);
            *(v10 + 56) = v597 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 25:
      sub_27168AEDC(a3, &v690);
      v10 = *a2;
      v21 = v699;
      v22 = v690;
      if (!v690)
      {
        goto LABEL_402;
      }

      v23 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v22 = v690;
        v24 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v25 = v22;
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
            v22 = v25;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v22 + 96))(&v702);
      }

      else
      {
LABEL_402:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v234 = v695;
          if (v695)
          {
            v235 = v698;
            v236 = v692;
            if (v700 == 1 && v692)
            {
              v237 = v690;
              v238 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v239 = v237;
                  (v238->__on_zero_shared)(v238);
                  std::__shared_weak_count::__release_weak(v238);
                  v237 = v239;
                }
              }

              (*(*v237 + 88))(v237, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v236 = v692;
            }

            v240 = v234 - 1;
            if (v234 != 1)
            {
              if (v21)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v236;
                v704 = 4;
                sub_271828638(v10, &v703);
              }

              v236 = (v236 + v235 + v235 * (v234 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v586 = *(v10 + 56);
                *(v10 + 40) = *(v586 - 8);
                *(v10 + 56) = v586 - 8;
                --v240;
              }

              while (v240);
            }

            sub_2718285F0(v10);
            if (v21)
            {
              v703 = v236;
              v704 = 4;
              sub_271828638(v10, &v703);
            }

            v587 = *(v10 + 56);
            *(v10 + 40) = *(v587 - 8);
            *(v10 + 56) = v587 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 26:
      sub_27168B474(a3, &v690);
      v10 = *a2;
      v77 = v699;
      v78 = v690;
      if (!v690)
      {
        goto LABEL_592;
      }

      v79 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v690;
        v80 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v78 + 96))(&v702);
      }

      else
      {
LABEL_592:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v336 = v695;
          if (v695)
          {
            v337 = v698;
            v338 = v692;
            if (v700 == 1 && v692)
            {
              v339 = v690;
              v340 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v340->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v341 = v339;
                  (v340->__on_zero_shared)(v340);
                  std::__shared_weak_count::__release_weak(v340);
                  v339 = v341;
                }
              }

              (*(*v339 + 88))(v339, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v338 = v692;
            }

            v342 = v336 - 1;
            if (v342)
            {
              if (v77)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v338;
                v704 = 4;
                sub_27182976C(v10, &v703);
              }

              v619 = 2 * v337;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v620 = *(v10 + 56);
                *(v10 + 40) = *(v620 - 8);
                *(v10 + 56) = v620 - 8;
                v338 = (v338 + v619);
                --v342;
              }

              while (v342);
            }

            sub_2718285F0(v10);
            if (v77)
            {
              v703 = v338;
              v704 = 4;
              sub_27182976C(v10, &v703);
            }

            v621 = *(v10 + 56);
            *(v10 + 40) = *(v621 - 8);
            *(v10 + 56) = v621 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 27:
      sub_27168BA10(a3, &v690);
      v10 = *a2;
      v11 = v699;
      v12 = v690;
      if (!v690)
      {
        goto LABEL_362;
      }

      v13 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v690;
        v14 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v12 + 96))(&v702);
      }

      else
      {
LABEL_362:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v210 = v695;
          if (v695)
          {
            v211 = v697;
            v212 = v698;
            v213 = v692;
            if (v700 == 1 && v692)
            {
              v214 = v690;
              v215 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v216 = v214;
                  (v215->__on_zero_shared)(v215);
                  std::__shared_weak_count::__release_weak(v215);
                  v214 = v216;
                }
              }

              (*(*v214 + 88))(v214, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v213 = v692;
            }

            v217 = v210 - 1;
            if (v217)
            {
              if (v11)
              {
                for (i1 = 0; i1 != v217; ++i1)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v219 = 0;
                  v220 = v11;
                  do
                  {
                    v703 = &v213[v219];
                    v704 = 4;
                    sub_271829F14(v10, &v703);
                    v219 += v211;
                    --v220;
                  }

                  while (v220);
                  v221 = *(v10 + 56);
                  *(v10 + 40) = *(v221 - 8);
                  *(v10 + 56) = v221 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v213 += v212;
                }
              }

              else
              {
                v578 = 2 * v212;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v579 = *(v10 + 56);
                  *(v10 + 40) = *(v579 - 8);
                  *(v10 + 56) = v579 - 8;
                  v213 = (v213 + v578);
                  --v217;
                }

                while (v217);
              }
            }

            sub_2718285F0(v10);
            if (v11)
            {
              v580 = 0;
              do
              {
                v703 = &v213[v580];
                v704 = 4;
                sub_271829F14(v10, &v703);
                v580 += v211;
                --v11;
              }

              while (v11);
            }

            v581 = *(v10 + 56);
            *(v10 + 40) = *(v581 - 8);
            *(v10 + 56) = v581 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 28:
      sub_27168BFAC(a3, &v690);
      v10 = *a2;
      v98 = v699;
      v99 = v690;
      if (!v690)
      {
        goto LABEL_655;
      }

      v100 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v100->__on_zero_shared)(v100);
          std::__shared_weak_count::__release_weak(v100);
        }

        v99 = v690;
        v101 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v102 = v99;
            (v101->__on_zero_shared)(v101);
            std::__shared_weak_count::__release_weak(v101);
            v99 = v102;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v99 + 96))(&v702);
      }

      else
      {
LABEL_655:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v370 = v695;
          if (v695)
          {
            v371 = v697;
            v372 = v698;
            v373 = v692;
            if (v700 == 1 && v692)
            {
              v374 = v690;
              v375 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v375->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v376 = v374;
                  (v375->__on_zero_shared)(v375);
                  std::__shared_weak_count::__release_weak(v375);
                  v374 = v376;
                }
              }

              (*(*v374 + 88))(v374, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v373 = v692;
            }

            v377 = v370 - 1;
            if (v377)
            {
              if (v98)
              {
                for (i2 = 0; i2 != v377; ++i2)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v379 = 0;
                  v380 = v98;
                  do
                  {
                    v703 = &v373[2 * v379];
                    v704 = 4;
                    sub_27182A338(v10, &v703);
                    v379 += v371;
                    --v380;
                  }

                  while (v380);
                  v381 = *(v10 + 56);
                  *(v10 + 40) = *(v381 - 8);
                  *(v10 + 56) = v381 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v373 += 2 * v372;
                }
              }

              else
              {
                v629 = 4 * v372;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v630 = *(v10 + 56);
                  *(v10 + 40) = *(v630 - 8);
                  *(v10 + 56) = v630 - 8;
                  v373 = (v373 + v629);
                  --v377;
                }

                while (v377);
              }
            }

            sub_2718285F0(v10);
            if (v98)
            {
              v631 = 0;
              do
              {
                v703 = &v373[2 * v631];
                v704 = 4;
                sub_27182A338(v10, &v703);
                v631 += v371;
                --v98;
              }

              while (v98);
            }

            v632 = *(v10 + 56);
            *(v10 + 40) = *(v632 - 8);
            *(v10 + 56) = v632 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 29:
      sub_27168C548(a3, &v690);
      v10 = *a2;
      v31 = v699;
      v32 = v690;
      if (!v690)
      {
        goto LABEL_437;
      }

      v33 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v32 = v690;
        v34 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v35 = v32;
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v32 = v35;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v32 + 96))(&v702);
      }

      else
      {
LABEL_437:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v253 = v695;
          if (v695)
          {
            v254 = v698;
            v255 = v692;
            if (v700 == 1 && v692)
            {
              v256 = v690;
              v257 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v257->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v258 = v256;
                  (v257->__on_zero_shared)(v257);
                  std::__shared_weak_count::__release_weak(v257);
                  v256 = v258;
                }
              }

              (*(*v256 + 88))(v256, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v255 = v692;
            }

            v259 = v253 - 1;
            if (v253 != 1)
            {
              if (v31)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v255;
                v704 = 4;
                sub_271828638(v10, &v703);
              }

              v255 = (v255 + v254 + v254 * (v253 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v592 = *(v10 + 56);
                *(v10 + 40) = *(v592 - 8);
                *(v10 + 56) = v592 - 8;
                --v259;
              }

              while (v259);
            }

            sub_2718285F0(v10);
            if (v31)
            {
              v703 = v255;
              v704 = 4;
              sub_271828638(v10, &v703);
            }

            v593 = *(v10 + 56);
            *(v10 + 40) = *(v593 - 8);
            *(v10 + 56) = v593 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 30:
      sub_27168CAE0(a3, &v690);
      v10 = *a2;
      v113 = v699;
      v114 = v690;
      if (!v690)
      {
        goto LABEL_715;
      }

      v115 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v690;
        v116 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v114 + 96))(&v702);
      }

      else
      {
LABEL_715:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v406 = v695;
          if (v695)
          {
            v407 = v698;
            v408 = v692;
            if (v700 == 1 && v692)
            {
              v409 = v690;
              v410 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v410->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v411 = v409;
                  (v410->__on_zero_shared)(v410);
                  std::__shared_weak_count::__release_weak(v410);
                  v409 = v411;
                }
              }

              (*(*v409 + 88))(v409, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v408 = v692;
            }

            v412 = v406 - 1;
            if (v412)
            {
              if (v113)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v408;
                v704 = 4;
                sub_27182976C(v10, &v703);
              }

              v639 = 2 * v407;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v640 = *(v10 + 56);
                *(v10 + 40) = *(v640 - 8);
                *(v10 + 56) = v640 - 8;
                v408 = (v408 + v639);
                --v412;
              }

              while (v412);
            }

            sub_2718285F0(v10);
            if (v113)
            {
              v703 = v408;
              v704 = 4;
              sub_27182976C(v10, &v703);
            }

            v641 = *(v10 + 56);
            *(v10 + 40) = *(v641 - 8);
            *(v10 + 56) = v641 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 31:
      sub_27168D07C(a3, &v690);
      v10 = *a2;
      v82 = v699;
      v83 = v690;
      if (!v690)
      {
        goto LABEL_607;
      }

      v84 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v84->__on_zero_shared)(v84);
          std::__shared_weak_count::__release_weak(v84);
        }

        v83 = v690;
        v85 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v86 = v83;
            (v85->__on_zero_shared)(v85);
            std::__shared_weak_count::__release_weak(v85);
            v83 = v86;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v83 + 96))(&v702);
      }

      else
      {
LABEL_607:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v343 = v695;
          if (v695)
          {
            v344 = v697;
            v345 = v698;
            v346 = v692;
            if (v700 == 1 && v692)
            {
              v347 = v690;
              v348 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v348->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v349 = v347;
                  (v348->__on_zero_shared)(v348);
                  std::__shared_weak_count::__release_weak(v348);
                  v347 = v349;
                }
              }

              (*(*v347 + 88))(v347, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v346 = v692;
            }

            v350 = v343 - 1;
            if (v350)
            {
              if (v82)
              {
                for (i3 = 0; i3 != v350; ++i3)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v352 = 0;
                  v353 = v82;
                  do
                  {
                    v703 = &v346[v352];
                    v704 = 4;
                    sub_271829F14(v10, &v703);
                    v352 += v344;
                    --v353;
                  }

                  while (v353);
                  v354 = *(v10 + 56);
                  *(v10 + 40) = *(v354 - 8);
                  *(v10 + 56) = v354 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v346 += v345;
                }
              }

              else
              {
                v622 = 2 * v345;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v623 = *(v10 + 56);
                  *(v10 + 40) = *(v623 - 8);
                  *(v10 + 56) = v623 - 8;
                  v346 = (v346 + v622);
                  --v350;
                }

                while (v350);
              }
            }

            sub_2718285F0(v10);
            if (v82)
            {
              v624 = 0;
              do
              {
                v703 = &v346[v624];
                v704 = 4;
                sub_271829F14(v10, &v703);
                v624 += v344;
                --v82;
              }

              while (v82);
            }

            v625 = *(v10 + 56);
            *(v10 + 40) = *(v625 - 8);
            *(v10 + 56) = v625 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 32:
      sub_27168D618(a3, &v690);
      v10 = *a2;
      v123 = v699;
      v124 = v690;
      if (!v690)
      {
        goto LABEL_745;
      }

      v125 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v125->__on_zero_shared)(v125);
          std::__shared_weak_count::__release_weak(v125);
        }

        v124 = v690;
        v126 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v127 = v124;
            (v126->__on_zero_shared)(v126);
            std::__shared_weak_count::__release_weak(v126);
            v124 = v127;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v124 + 96))(&v702);
      }

      else
      {
LABEL_745:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v420 = v695;
          if (v695)
          {
            v421 = v697;
            v422 = v698;
            v423 = v692;
            if (v700 == 1 && v692)
            {
              v424 = v690;
              v425 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v425->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v426 = v424;
                  (v425->__on_zero_shared)(v425);
                  std::__shared_weak_count::__release_weak(v425);
                  v424 = v426;
                }
              }

              (*(*v424 + 88))(v424, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v423 = v692;
            }

            v427 = v420 - 1;
            if (v427)
            {
              if (v123)
              {
                for (i4 = 0; i4 != v427; ++i4)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v429 = 0;
                  v430 = v123;
                  do
                  {
                    v703 = &v423[2 * v429];
                    v704 = 4;
                    sub_27182A338(v10, &v703);
                    v429 += v421;
                    --v430;
                  }

                  while (v430);
                  v431 = *(v10 + 56);
                  *(v10 + 40) = *(v431 - 8);
                  *(v10 + 56) = v431 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v423 += 2 * v422;
                }
              }

              else
              {
                v644 = 4 * v422;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v645 = *(v10 + 56);
                  *(v10 + 40) = *(v645 - 8);
                  *(v10 + 56) = v645 - 8;
                  v423 = (v423 + v644);
                  --v427;
                }

                while (v427);
              }
            }

            sub_2718285F0(v10);
            if (v123)
            {
              v646 = 0;
              do
              {
                v703 = &v423[2 * v646];
                v704 = 4;
                sub_27182A338(v10, &v703);
                v646 += v421;
                --v123;
              }

              while (v123);
            }

            v647 = *(v10 + 56);
            *(v10 + 40) = *(v647 - 8);
            *(v10 + 56) = v647 - 8;
            if (*(v10 + 88) == 1)
            {
LABEL_1312:
              *(v10 + 88) = 0;
            }
          }
        }
      }

      goto LABEL_1313;
    case 33:
      sub_27168DBB4(a3, &v690);
      v51 = *a2;
      v175 = v699;
      v176 = v690;
      if (!v690)
      {
        goto LABEL_922;
      }

      v177 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v177->__on_zero_shared)(v177);
          std::__shared_weak_count::__release_weak(v177);
        }

        v176 = v690;
        v178 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v178->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v179 = v176;
            (v178->__on_zero_shared)(v178);
            std::__shared_weak_count::__release_weak(v178);
            v176 = v179;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v176 + 96))(&v702);
      }

      else
      {
LABEL_922:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v514 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v515 = v698;
      v516 = v692;
      if (v700 == 1 && v692)
      {
        v517 = v690;
        v518 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v518->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v519 = v517;
            (v518->__on_zero_shared)(v518);
            std::__shared_weak_count::__release_weak(v518);
            v517 = v519;
          }
        }

        (*(*v517 + 88))(v517, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v516 = v692;
      }

      v520 = v514 - 1;
      if (v514 != 1)
      {
        if (v175)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v516;
          v704 = 4;
          sub_271828638(v51, &v703);
        }

        v516 = (v516 + v515 + v515 * (v514 - 2));
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v668 = *(v51 + 56);
          *(v51 + 40) = *(v668 - 8);
          *(v51 + 56) = v668 - 8;
          --v520;
        }

        while (v520);
      }

      sub_2718285F0(v51);
      if (v175)
      {
        v703 = v516;
        v704 = 4;
        sub_271828638(v51, &v703);
      }

      return;
    case 34:
      sub_27168E14C(a3, &v690);
      v51 = *a2;
      v118 = v699;
      v119 = v690;
      if (!v690)
      {
        goto LABEL_730;
      }

      v120 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v120->__on_zero_shared)(v120);
          std::__shared_weak_count::__release_weak(v120);
        }

        v119 = v690;
        v121 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v122 = v119;
            (v121->__on_zero_shared)(v121);
            std::__shared_weak_count::__release_weak(v121);
            v119 = v122;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v119 + 96))(&v702);
      }

      else
      {
LABEL_730:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v413 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v414 = v698;
      v415 = v692;
      if (v700 == 1 && v692)
      {
        v416 = v690;
        v417 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v417->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v418 = v416;
            (v417->__on_zero_shared)(v417);
            std::__shared_weak_count::__release_weak(v417);
            v416 = v418;
          }
        }

        (*(*v416 + 88))(v416, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v415 = v692;
      }

      v419 = v413 - 1;
      if (v419)
      {
        if (v118)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v415;
          v704 = 4;
          sub_27182976C(v51, &v703);
        }

        v642 = 2 * v414;
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v643 = *(v51 + 56);
          *(v51 + 40) = *(v643 - 8);
          *(v51 + 56) = v643 - 8;
          v415 = (v415 + v642);
          --v419;
        }

        while (v419);
      }

      sub_2718285F0(v51);
      if (v118)
      {
        v703 = v415;
        v704 = 4;
        sub_27182976C(v51, &v703);
      }

      return;
    case 35:
      sub_27168E6E8(a3, &v690);
      v51 = *a2;
      v108 = v699;
      v109 = v690;
      if (!v690)
      {
        goto LABEL_695;
      }

      v110 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v110->__on_zero_shared)(v110);
          std::__shared_weak_count::__release_weak(v110);
        }

        v109 = v690;
        v111 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v112 = v109;
            (v111->__on_zero_shared)(v111);
            std::__shared_weak_count::__release_weak(v111);
            v109 = v112;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v109 + 96))(&v702);
      }

      else
      {
LABEL_695:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v394 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v395 = v697;
      v396 = v698;
      v397 = v692;
      if (v700 == 1 && v692)
      {
        v398 = v690;
        v399 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v399->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v400 = v398;
            (v399->__on_zero_shared)(v399);
            std::__shared_weak_count::__release_weak(v399);
            v398 = v400;
          }
        }

        (*(*v398 + 88))(v398, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v397 = v692;
      }

      v401 = v394 - 1;
      if (v401)
      {
        if (v108)
        {
          for (i5 = 0; i5 != v401; ++i5)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v403 = 0;
            v404 = v108;
            do
            {
              v703 = &v397[v403];
              v704 = 4;
              sub_271829F14(v51, &v703);
              v403 += v395;
              --v404;
            }

            while (v404);
            v405 = *(v51 + 56);
            *(v51 + 40) = *(v405 - 8);
            *(v51 + 56) = v405 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v397 += v396;
          }
        }

        else
        {
          v636 = 2 * v396;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v637 = *(v51 + 56);
            *(v51 + 40) = *(v637 - 8);
            *(v51 + 56) = v637 - 8;
            v397 = (v397 + v636);
            --v401;
          }

          while (v401);
        }
      }

      sub_2718285F0(v51);
      if (v108)
      {
        v638 = 0;
        do
        {
          v703 = &v397[v638];
          v704 = 4;
          sub_271829F14(v51, &v703);
          v638 += v395;
          --v108;
        }

        while (v108);
      }

      break;
    case 36:
      sub_27168EC84(a3, &v690);
      v51 = *a2;
      v103 = v699;
      v104 = v690;
      if (!v690)
      {
        goto LABEL_675;
      }

      v105 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

        v104 = v690;
        v106 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v107 = v104;
            (v106->__on_zero_shared)(v106);
            std::__shared_weak_count::__release_weak(v106);
            v104 = v107;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v104 + 96))(&v702);
      }

      else
      {
LABEL_675:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v382 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v383 = v697;
      v384 = v698;
      v385 = v692;
      if (v700 == 1 && v692)
      {
        v386 = v690;
        v387 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v387->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v388 = v386;
            (v387->__on_zero_shared)(v387);
            std::__shared_weak_count::__release_weak(v387);
            v386 = v388;
          }
        }

        (*(*v386 + 88))(v386, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v385 = v692;
      }

      v389 = v382 - 1;
      if (v389)
      {
        if (v103)
        {
          for (i6 = 0; i6 != v389; ++i6)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v391 = 0;
            v392 = v103;
            do
            {
              v703 = &v385[2 * v391];
              v704 = 4;
              sub_27182A338(v51, &v703);
              v391 += v383;
              --v392;
            }

            while (v392);
            v393 = *(v51 + 56);
            *(v51 + 40) = *(v393 - 8);
            *(v51 + 56) = v393 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v385 += 2 * v384;
          }
        }

        else
        {
          v633 = 4 * v384;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v634 = *(v51 + 56);
            *(v51 + 40) = *(v634 - 8);
            *(v51 + 56) = v634 - 8;
            v385 = (v385 + v633);
            --v389;
          }

          while (v389);
        }
      }

      sub_2718285F0(v51);
      if (v103)
      {
        v635 = 0;
        do
        {
          v703 = &v385[2 * v635];
          v704 = 4;
          sub_27182A338(v51, &v703);
          v635 += v383;
          --v103;
        }

        while (v103);
      }

      break;
    case 37:
      sub_27168F220(a3, &v690);
      v51 = *a2;
      v160 = v699;
      v161 = v690;
      if (!v690)
      {
        goto LABEL_872;
      }

      v162 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v162->__on_zero_shared)(v162);
          std::__shared_weak_count::__release_weak(v162);
        }

        v161 = v690;
        v163 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v164 = v161;
            (v163->__on_zero_shared)(v163);
            std::__shared_weak_count::__release_weak(v163);
            v161 = v164;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v161 + 96))(&v702);
      }

      else
      {
LABEL_872:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v488 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v489 = v698;
      v490 = v692;
      if (v700 == 1 && v692)
      {
        v491 = v690;
        v492 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v492->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v493 = v491;
            (v492->__on_zero_shared)(v492);
            std::__shared_weak_count::__release_weak(v492);
            v491 = v493;
          }
        }

        (*(*v491 + 88))(v491, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v490 = v692;
      }

      v494 = v488 - 1;
      if (v488 != 1)
      {
        if (v160)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v490;
          v704 = 4;
          sub_271828638(v51, &v703);
        }

        v490 = (v490 + v489 + v489 * (v488 - 2));
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v660 = *(v51 + 56);
          *(v51 + 40) = *(v660 - 8);
          *(v51 + 56) = v660 - 8;
          --v494;
        }

        while (v494);
      }

      sub_2718285F0(v51);
      if (v160)
      {
        v703 = v490;
        v704 = 4;
        sub_271828638(v51, &v703);
      }

      return;
    case 38:
      sub_27168F7B8(a3, &v690);
      v51 = *a2;
      v185 = v699;
      v186 = v690;
      if (!v690)
      {
        goto LABEL_957;
      }

      v187 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v690;
        v188 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v186 + 96))(&v702);
      }

      else
      {
LABEL_957:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v533 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v534 = v698;
      v535 = v692;
      if (v700 == 1 && v692)
      {
        v536 = v690;
        v537 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v535 = v692;
      }

      v539 = v533 - 1;
      if (v539)
      {
        if (v185)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v535;
          v704 = 4;
          sub_27182976C(v51, &v703);
        }

        v673 = 2 * v534;
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v674 = *(v51 + 56);
          *(v51 + 40) = *(v674 - 8);
          *(v51 + 56) = v674 - 8;
          v535 = (v535 + v673);
          --v539;
        }

        while (v539);
      }

      sub_2718285F0(v51);
      if (v185)
      {
        v703 = v535;
        v704 = 4;
        sub_27182976C(v51, &v703);
      }

      return;
    case 39:
      sub_27168FD54(a3, &v690);
      v51 = *a2;
      v67 = v699;
      v68 = v690;
      if (!v690)
      {
        goto LABEL_557;
      }

      v69 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }

        v68 = v690;
        v70 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v71 = v68;
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
            v68 = v71;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v68 + 96))(&v702);
      }

      else
      {
LABEL_557:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v317 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v318 = v697;
      v319 = v698;
      v320 = v692;
      if (v700 == 1 && v692)
      {
        v321 = v690;
        v322 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v322->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v323 = v321;
            (v322->__on_zero_shared)(v322);
            std::__shared_weak_count::__release_weak(v322);
            v321 = v323;
          }
        }

        (*(*v321 + 88))(v321, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v320 = v692;
      }

      v324 = v317 - 1;
      if (v324)
      {
        if (v67)
        {
          for (i7 = 0; i7 != v324; ++i7)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v326 = 0;
            v327 = v67;
            do
            {
              v703 = &v320[v326];
              v704 = 4;
              sub_271829F14(v51, &v703);
              v326 += v318;
              --v327;
            }

            while (v327);
            v328 = *(v51 + 56);
            *(v51 + 40) = *(v328 - 8);
            *(v51 + 56) = v328 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v320 += v319;
          }
        }

        else
        {
          v613 = 2 * v319;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v614 = *(v51 + 56);
            *(v51 + 40) = *(v614 - 8);
            *(v51 + 56) = v614 - 8;
            v320 = (v320 + v613);
            --v324;
          }

          while (v324);
        }
      }

      sub_2718285F0(v51);
      if (v67)
      {
        v615 = 0;
        do
        {
          v703 = &v320[v615];
          v704 = 4;
          sub_271829F14(v51, &v703);
          v615 += v318;
          --v67;
        }

        while (v67);
      }

      break;
    case 40:
      sub_2716902F0(a3, &v690);
      v51 = *a2;
      v52 = v699;
      v53 = v690;
      if (!v690)
      {
        goto LABEL_502;
      }

      v54 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v54->__on_zero_shared)(v54);
          std::__shared_weak_count::__release_weak(v54);
        }

        v53 = v690;
        v55 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v56 = v53;
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
            v53 = v56;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v53 + 96))(&v702);
      }

      else
      {
LABEL_502:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v286 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v287 = v697;
      v288 = v698;
      v289 = v692;
      if (v700 == 1 && v692)
      {
        v290 = v690;
        v291 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v291->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v292 = v290;
            (v291->__on_zero_shared)(v291);
            std::__shared_weak_count::__release_weak(v291);
            v290 = v292;
          }
        }

        (*(*v290 + 88))(v290, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v289 = v692;
      }

      v293 = v286 - 1;
      if (v293)
      {
        if (v52)
        {
          for (i8 = 0; i8 != v293; ++i8)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v295 = 0;
            v296 = v52;
            do
            {
              v703 = &v289[2 * v295];
              v704 = 4;
              sub_27182A338(v51, &v703);
              v295 += v287;
              --v296;
            }

            while (v296);
            v297 = *(v51 + 56);
            *(v51 + 40) = *(v297 - 8);
            *(v51 + 56) = v297 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v289 += 2 * v288;
          }
        }

        else
        {
          v603 = 4 * v288;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v604 = *(v51 + 56);
            *(v51 + 40) = *(v604 - 8);
            *(v51 + 56) = v604 - 8;
            v289 = (v289 + v603);
            --v293;
          }

          while (v293);
        }
      }

      sub_2718285F0(v51);
      if (v52)
      {
        v605 = 0;
        do
        {
          v703 = &v289[2 * v605];
          v704 = 4;
          sub_27182A338(v51, &v703);
          v605 += v287;
          --v52;
        }

        while (v52);
      }

      break;
    default:
      return;
  }

  v675 = *(v51 + 56);
  *(v51 + 40) = *(v675 - 8);
  *(v51 + 56) = v675 - 8;
  if (*(v51 + 88) == 1)
  {
    *(v51 + 88) = 0;
  }

LABEL_1313:
  v680 = v702;
  v702 = 0;
  if (v680)
  {
    (*(*v680 + 8))(v680);
  }

  v681 = v691;
  if (v691 && !atomic_fetch_add(&v691->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v681->__on_zero_shared)(v681);
    std::__shared_weak_count::__release_weak(v681);
  }
}

void sub_2716A7AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271317FB8(va);
  _Unwind_Resume(a1);
}

void sub_2716A7AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271312A04(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271310EE8(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27132560C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271315268(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271320E00(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130CB34(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130D8DC(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271324668(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130557C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271306464(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130B044(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271311C5C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713082D0(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130BDEC(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271320058(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271321B48(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131E084(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713228F0(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271323664(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131C594(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130735C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271309070(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131F088(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131AA78(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271317210(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713263B4(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130A074(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131374C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271327128(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130F3F8(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271310140(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271318D2C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131D33C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27130E650(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271319D30(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713144F4(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27131B820(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271304654(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_27131626C(&a10);
  _Unwind_Resume(a1);
}

void sub_2716A8AD4(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      sub_2715EF504(a3, &v690);
      v4 = *a2;
      v5 = v693;
      v6 = v690;
      if (!v690)
      {
        goto LABEL_860;
      }

      v7 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v690;
        v8 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v6 + 96))(&v702);
      }

      else
      {
LABEL_860:
        v702 = 0;
      }

      if (v693)
      {
        v483 = v694;
        if (v694)
        {
          v484 = v692;
          if (v697 == 1 && v692)
          {
            v485 = v690;
            v486 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v486->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v487 = v485;
                (v486->__on_zero_shared)(v486);
                std::__shared_weak_count::__release_weak(v486);
                v485 = v487;
              }
            }

            (*(*v485 + 88))(v485, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v484 = v692;
          }

          if (v483 != 1)
          {
            v703 = v484;
            v704 = v5;
            sub_271828638(v4, &v703);
          }

          v703 = v484;
          v704 = v5;
          sub_271828638(v4, &v703);
        }
      }

      goto LABEL_1313;
    case 2:
      sub_2715EFA94(a3, &v690);
      v154 = *a2;
      v155 = v693;
      v156 = v690;
      if (!v690)
      {
        goto LABEL_848;
      }

      v157 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v690;
        v158 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v156 + 96))(&v702);
      }

      else
      {
LABEL_848:
        v702 = 0;
      }

      if (v693)
      {
        v478 = v694;
        if (v694)
        {
          v479 = v692;
          if (v697 == 1 && v692)
          {
            v480 = v690;
            v481 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v481->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v482 = v480;
                (v481->__on_zero_shared)(v481);
                std::__shared_weak_count::__release_weak(v481);
                v480 = v482;
              }
            }

            (*(*v480 + 88))(v480, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v479 = v692;
          }

          if (v478 != 1)
          {
            v703 = v479;
            v704 = v155;
            sub_27182976C(v154, &v703);
          }

          v703 = v479;
          v704 = v155;
          sub_27182976C(v154, &v703);
        }
      }

      goto LABEL_1313;
    case 3:
      sub_271683A48(a3, &v690);
      v148 = *a2;
      v149 = v693;
      v150 = v690;
      if (!v690)
      {
        goto LABEL_835;
      }

      v151 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v690;
        v152 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v150 + 96))(&v702);
      }

      else
      {
LABEL_835:
        v702 = 0;
      }

      if (v693)
      {
        v470 = v694;
        if (v694)
        {
          v471 = v696;
          v472 = v692;
          if (v697 == 1 && v692)
          {
            v473 = v690;
            v474 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v474->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v475 = v473;
                (v474->__on_zero_shared)(v474);
                std::__shared_weak_count::__release_weak(v474);
                v473 = v475;
              }
            }

            (*(*v473 + 88))(v473, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v472 = v692;
          }

          v476 = v470 - 1;
          if (v476)
          {
            v477 = 2 * v471;
            do
            {
              v703 = v472;
              v704 = v149;
              sub_271829F14(v148, &v703);
              v472 = (v472 + v477);
              --v476;
            }

            while (v476);
          }

          v703 = v472;
          v704 = v149;
          sub_271829F14(v148, &v703);
        }
      }

      goto LABEL_1313;
    case 4:
      sub_271683F50(a3, &v690);
      v92 = *a2;
      v93 = v693;
      v94 = v690;
      if (!v690)
      {
        goto LABEL_642;
      }

      v95 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v95->__on_zero_shared)(v95);
          std::__shared_weak_count::__release_weak(v95);
        }

        v94 = v690;
        v96 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v97 = v94;
            (v96->__on_zero_shared)(v96);
            std::__shared_weak_count::__release_weak(v96);
            v94 = v97;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v94 + 96))(&v702);
      }

      else
      {
LABEL_642:
        v702 = 0;
      }

      if (v693)
      {
        v362 = v694;
        if (v694)
        {
          v363 = v696;
          v364 = v692;
          if (v697 == 1 && v692)
          {
            v365 = v690;
            v366 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v366->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v367 = v365;
                (v366->__on_zero_shared)(v366);
                std::__shared_weak_count::__release_weak(v366);
                v365 = v367;
              }
            }

            (*(*v365 + 88))(v365, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v364 = v692;
          }

          v368 = v362 - 1;
          if (v368)
          {
            v369 = 4 * v363;
            do
            {
              v703 = v364;
              v704 = v93;
              sub_27182A338(v92, &v703);
              v364 = (v364 + v369);
              --v368;
            }

            while (v368);
          }

          v703 = v364;
          v704 = v93;
          sub_27182A338(v92, &v703);
        }
      }

      goto LABEL_1313;
    case 5:
      sub_271684458(a3, &v690);
      v10 = *a2;
      v133 = v699;
      v134 = v690;
      if (!v690)
      {
        goto LABEL_780;
      }

      v135 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v135->__on_zero_shared)(v135);
          std::__shared_weak_count::__release_weak(v135);
        }

        v134 = v690;
        v136 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v137 = v134;
            (v136->__on_zero_shared)(v136);
            std::__shared_weak_count::__release_weak(v136);
            v134 = v137;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v134 + 96))(&v702);
      }

      else
      {
LABEL_780:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v439 = v695;
          if (v695)
          {
            v440 = v698;
            v441 = v692;
            if (v700 == 1 && v692)
            {
              v442 = v690;
              v443 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v443->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v444 = v442;
                  (v443->__on_zero_shared)(v443);
                  std::__shared_weak_count::__release_weak(v443);
                  v442 = v444;
                }
              }

              (*(*v442 + 88))(v442, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v441 = v692;
            }

            v445 = v439 - 1;
            if (v439 != 1)
            {
              if (v133)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v441;
                v704 = 2;
                sub_271828638(v10, &v703);
              }

              v441 = (v441 + v440 + v440 * (v439 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v650 = *(v10 + 56);
                *(v10 + 40) = *(v650 - 8);
                *(v10 + 56) = v650 - 8;
                --v445;
              }

              while (v445);
            }

            sub_2718285F0(v10);
            if (v133)
            {
              v703 = v441;
              v704 = 2;
              sub_271828638(v10, &v703);
            }

            v651 = *(v10 + 56);
            *(v10 + 40) = *(v651 - 8);
            *(v10 + 56) = v651 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 6:
      sub_2716849F0(a3, &v690);
      v10 = *a2;
      v87 = v699;
      v88 = v690;
      if (!v690)
      {
        goto LABEL_627;
      }

      v89 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }

        v88 = v690;
        v90 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v91 = v88;
            (v90->__on_zero_shared)(v90);
            std::__shared_weak_count::__release_weak(v90);
            v88 = v91;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v88 + 96))(&v702);
      }

      else
      {
LABEL_627:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v355 = v695;
          if (v695)
          {
            v356 = v698;
            v357 = v692;
            if (v700 == 1 && v692)
            {
              v358 = v690;
              v359 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v359->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v360 = v358;
                  (v359->__on_zero_shared)(v359);
                  std::__shared_weak_count::__release_weak(v359);
                  v358 = v360;
                }
              }

              (*(*v358 + 88))(v358, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v357 = v692;
            }

            v361 = v355 - 1;
            if (v361)
            {
              if (v87)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v357;
                v704 = 2;
                sub_27182976C(v10, &v703);
              }

              v626 = 2 * v356;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v627 = *(v10 + 56);
                *(v10 + 40) = *(v627 - 8);
                *(v10 + 56) = v627 - 8;
                v357 = (v357 + v626);
                --v361;
              }

              while (v361);
            }

            sub_2718285F0(v10);
            if (v87)
            {
              v703 = v357;
              v704 = 2;
              sub_27182976C(v10, &v703);
            }

            v628 = *(v10 + 56);
            *(v10 + 40) = *(v628 - 8);
            *(v10 + 56) = v628 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 7:
      sub_271684F8C(a3, &v690);
      v10 = *a2;
      v62 = v699;
      v63 = v690;
      if (!v690)
      {
        goto LABEL_537;
      }

      v64 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v64->__on_zero_shared)(v64);
          std::__shared_weak_count::__release_weak(v64);
        }

        v63 = v690;
        v65 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v66 = v63;
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
            v63 = v66;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v63 + 96))(&v702);
      }

      else
      {
LABEL_537:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v305 = v695;
          if (v695)
          {
            v306 = v697;
            v307 = v698;
            v308 = v692;
            if (v700 == 1 && v692)
            {
              v309 = v690;
              v310 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v310->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v311 = v309;
                  (v310->__on_zero_shared)(v310);
                  std::__shared_weak_count::__release_weak(v310);
                  v309 = v311;
                }
              }

              (*(*v309 + 88))(v309, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v308 = v692;
            }

            v312 = v305 - 1;
            if (v312)
            {
              if (v62)
              {
                for (i = 0; i != v312; ++i)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v314 = 0;
                  v315 = v62;
                  do
                  {
                    v703 = &v308[v314];
                    v704 = 2;
                    sub_271829F14(v10, &v703);
                    v314 += v306;
                    --v315;
                  }

                  while (v315);
                  v316 = *(v10 + 56);
                  *(v10 + 40) = *(v316 - 8);
                  *(v10 + 56) = v316 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v308 += v307;
                }
              }

              else
              {
                v609 = 2 * v307;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v610 = *(v10 + 56);
                  *(v10 + 40) = *(v610 - 8);
                  *(v10 + 56) = v610 - 8;
                  v308 = (v308 + v609);
                  --v312;
                }

                while (v312);
              }
            }

            sub_2718285F0(v10);
            if (v62)
            {
              v611 = 0;
              do
              {
                v703 = &v308[v611];
                v704 = 2;
                sub_271829F14(v10, &v703);
                v611 += v306;
                --v62;
              }

              while (v62);
            }

            v612 = *(v10 + 56);
            *(v10 + 40) = *(v612 - 8);
            *(v10 + 56) = v612 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 8:
      sub_271685528(a3, &v690);
      v10 = *a2;
      v143 = v699;
      v144 = v690;
      if (!v690)
      {
        goto LABEL_815;
      }

      v145 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v690;
        v146 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v144 + 96))(&v702);
      }

      else
      {
LABEL_815:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v458 = v695;
          if (v695)
          {
            v459 = v697;
            v460 = v698;
            v461 = v692;
            if (v700 == 1 && v692)
            {
              v462 = v690;
              v463 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v464 = v462;
                  (v463->__on_zero_shared)(v463);
                  std::__shared_weak_count::__release_weak(v463);
                  v462 = v464;
                }
              }

              (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v461 = v692;
            }

            v465 = v458 - 1;
            if (v465)
            {
              if (v143)
              {
                for (j = 0; j != v465; ++j)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v467 = 0;
                  v468 = v143;
                  do
                  {
                    v703 = &v461[2 * v467];
                    v704 = 2;
                    sub_27182A338(v10, &v703);
                    v467 += v459;
                    --v468;
                  }

                  while (v468);
                  v469 = *(v10 + 56);
                  *(v10 + 40) = *(v469 - 8);
                  *(v10 + 56) = v469 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v461 += 2 * v460;
                }
              }

              else
              {
                v656 = 4 * v460;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v657 = *(v10 + 56);
                  *(v10 + 40) = *(v657 - 8);
                  *(v10 + 56) = v657 - 8;
                  v461 = (v461 + v656);
                  --v465;
                }

                while (v465);
              }
            }

            sub_2718285F0(v10);
            if (v143)
            {
              v658 = 0;
              do
              {
                v703 = &v461[2 * v658];
                v704 = 2;
                sub_27182A338(v10, &v703);
                v658 += v459;
                --v143;
              }

              while (v143);
            }

            v659 = *(v10 + 56);
            *(v10 + 40) = *(v659 - 8);
            *(v10 + 56) = v659 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 9:
      sub_271685AC4(a3, &v690);
      v10 = *a2;
      v128 = v699;
      v129 = v690;
      if (!v690)
      {
        goto LABEL_765;
      }

      v130 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        v129 = v690;
        v131 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v132 = v129;
            (v131->__on_zero_shared)(v131);
            std::__shared_weak_count::__release_weak(v131);
            v129 = v132;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v129 + 96))(&v702);
      }

      else
      {
LABEL_765:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v432 = v695;
          if (v695)
          {
            v433 = v698;
            v434 = v692;
            if (v700 == 1 && v692)
            {
              v435 = v690;
              v436 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v436->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v437 = v435;
                  (v436->__on_zero_shared)(v436);
                  std::__shared_weak_count::__release_weak(v436);
                  v435 = v437;
                }
              }

              (*(*v435 + 88))(v435, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v434 = v692;
            }

            v438 = v432 - 1;
            if (v432 != 1)
            {
              if (v128)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v434;
                v704 = 3;
                sub_271828638(v10, &v703);
              }

              v434 = (v434 + v433 + v433 * (v432 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v648 = *(v10 + 56);
                *(v10 + 40) = *(v648 - 8);
                *(v10 + 56) = v648 - 8;
                --v438;
              }

              while (v438);
            }

            sub_2718285F0(v10);
            if (v128)
            {
              v703 = v434;
              v704 = 3;
              sub_271828638(v10, &v703);
            }

            v649 = *(v10 + 56);
            *(v10 + 40) = *(v649 - 8);
            *(v10 + 56) = v649 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 10:
      sub_27168605C(a3, &v690);
      v10 = *a2;
      v170 = v699;
      v171 = v690;
      if (!v690)
      {
        goto LABEL_907;
      }

      v172 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v172->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v172->__on_zero_shared)(v172);
          std::__shared_weak_count::__release_weak(v172);
        }

        v171 = v690;
        v173 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v174 = v171;
            (v173->__on_zero_shared)(v173);
            std::__shared_weak_count::__release_weak(v173);
            v171 = v174;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v171 + 96))(&v702);
      }

      else
      {
LABEL_907:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v507 = v695;
          if (v695)
          {
            v508 = v698;
            v509 = v692;
            if (v700 == 1 && v692)
            {
              v510 = v690;
              v511 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v511->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v512 = v510;
                  (v511->__on_zero_shared)(v511);
                  std::__shared_weak_count::__release_weak(v511);
                  v510 = v512;
                }
              }

              (*(*v510 + 88))(v510, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v509 = v692;
            }

            v513 = v507 - 1;
            if (v513)
            {
              if (v170)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v509;
                v704 = 3;
                sub_27182976C(v10, &v703);
              }

              v665 = 2 * v508;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v666 = *(v10 + 56);
                *(v10 + 40) = *(v666 - 8);
                *(v10 + 56) = v666 - 8;
                v509 = (v509 + v665);
                --v513;
              }

              while (v513);
            }

            sub_2718285F0(v10);
            if (v170)
            {
              v703 = v509;
              v704 = 3;
              sub_27182976C(v10, &v703);
            }

            v667 = *(v10 + 56);
            *(v10 + 40) = *(v667 - 8);
            *(v10 + 56) = v667 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 11:
      sub_2716865F8(a3, &v690);
      v10 = *a2;
      v165 = v699;
      v166 = v690;
      if (!v690)
      {
        goto LABEL_887;
      }

      v167 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v167->__on_zero_shared)(v167);
          std::__shared_weak_count::__release_weak(v167);
        }

        v166 = v690;
        v168 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v169 = v166;
            (v168->__on_zero_shared)(v168);
            std::__shared_weak_count::__release_weak(v168);
            v166 = v169;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v166 + 96))(&v702);
      }

      else
      {
LABEL_887:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v495 = v695;
          if (v695)
          {
            v496 = v697;
            v497 = v698;
            v498 = v692;
            if (v700 == 1 && v692)
            {
              v499 = v690;
              v500 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v500->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v501 = v499;
                  (v500->__on_zero_shared)(v500);
                  std::__shared_weak_count::__release_weak(v500);
                  v499 = v501;
                }
              }

              (*(*v499 + 88))(v499, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v498 = v692;
            }

            v502 = v495 - 1;
            if (v502)
            {
              if (v165)
              {
                for (k = 0; k != v502; ++k)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v504 = 0;
                  v505 = v165;
                  do
                  {
                    v703 = &v498[v504];
                    v704 = 3;
                    sub_271829F14(v10, &v703);
                    v504 += v496;
                    --v505;
                  }

                  while (v505);
                  v506 = *(v10 + 56);
                  *(v10 + 40) = *(v506 - 8);
                  *(v10 + 56) = v506 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v498 += v497;
                }
              }

              else
              {
                v661 = 2 * v497;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v662 = *(v10 + 56);
                  *(v10 + 40) = *(v662 - 8);
                  *(v10 + 56) = v662 - 8;
                  v498 = (v498 + v661);
                  --v502;
                }

                while (v502);
              }
            }

            sub_2718285F0(v10);
            if (v165)
            {
              v663 = 0;
              do
              {
                v703 = &v498[v663];
                v704 = 3;
                sub_271829F14(v10, &v703);
                v663 += v496;
                --v165;
              }

              while (v165);
            }

            v664 = *(v10 + 56);
            *(v10 + 40) = *(v664 - 8);
            *(v10 + 56) = v664 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 12:
      sub_271686B94(a3, &v690);
      v10 = *a2;
      v26 = v699;
      v27 = v690;
      if (!v690)
      {
        goto LABEL_417;
      }

      v28 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v27 = v690;
        v29 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = v27;
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
            v27 = v30;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v27 + 96))(&v702);
      }

      else
      {
LABEL_417:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v241 = v695;
          if (v695)
          {
            v242 = v697;
            v243 = v698;
            v244 = v692;
            if (v700 == 1 && v692)
            {
              v245 = v690;
              v246 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v246->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v247 = v245;
                  (v246->__on_zero_shared)(v246);
                  std::__shared_weak_count::__release_weak(v246);
                  v245 = v247;
                }
              }

              (*(*v245 + 88))(v245, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v244 = v692;
            }

            v248 = v241 - 1;
            if (v248)
            {
              if (v26)
              {
                for (m = 0; m != v248; ++m)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v250 = 0;
                  v251 = v26;
                  do
                  {
                    v703 = &v244[2 * v250];
                    v704 = 3;
                    sub_27182A338(v10, &v703);
                    v250 += v242;
                    --v251;
                  }

                  while (v251);
                  v252 = *(v10 + 56);
                  *(v10 + 40) = *(v252 - 8);
                  *(v10 + 56) = v252 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v244 += 2 * v243;
                }
              }

              else
              {
                v588 = 4 * v243;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v589 = *(v10 + 56);
                  *(v10 + 40) = *(v589 - 8);
                  *(v10 + 56) = v589 - 8;
                  v244 = (v244 + v588);
                  --v248;
                }

                while (v248);
              }
            }

            sub_2718285F0(v10);
            if (v26)
            {
              v590 = 0;
              do
              {
                v703 = &v244[2 * v590];
                v704 = 3;
                sub_27182A338(v10, &v703);
                v590 += v242;
                --v26;
              }

              while (v26);
            }

            v591 = *(v10 + 56);
            *(v10 + 40) = *(v591 - 8);
            *(v10 + 56) = v591 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 13:
      sub_271687130(a3, &v690);
      v10 = *a2;
      v46 = v699;
      v47 = v690;
      if (!v690)
      {
        goto LABEL_487;
      }

      v48 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        v47 = v690;
        v49 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = v47;
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v47 = v50;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v47 + 96))(&v702);
      }

      else
      {
LABEL_487:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v279 = v695;
          if (v695)
          {
            v280 = v698;
            v281 = v692;
            if (v700 == 1 && v692)
            {
              v282 = v690;
              v283 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v284 = v282;
                  (v283->__on_zero_shared)(v283);
                  std::__shared_weak_count::__release_weak(v283);
                  v282 = v284;
                }
              }

              (*(*v282 + 88))(v282, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v281 = v692;
            }

            v285 = v279 - 1;
            if (v279 != 1)
            {
              if (v46)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v281;
                v704 = 4;
                sub_271828638(v10, &v703);
              }

              v281 = (v281 + v280 + v280 * (v279 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v601 = *(v10 + 56);
                *(v10 + 40) = *(v601 - 8);
                *(v10 + 56) = v601 - 8;
                --v285;
              }

              while (v285);
            }

            sub_2718285F0(v10);
            if (v46)
            {
              v703 = v281;
              v704 = 4;
              sub_271828638(v10, &v703);
            }

            v602 = *(v10 + 56);
            *(v10 + 40) = *(v602 - 8);
            *(v10 + 56) = v602 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 14:
      sub_2716876C8(a3, &v690);
      v10 = *a2;
      v41 = v699;
      v42 = v690;
      if (!v690)
      {
        goto LABEL_472;
      }

      v43 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v690;
        v44 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v42 + 96))(&v702);
      }

      else
      {
LABEL_472:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v272 = v695;
          if (v695)
          {
            v273 = v698;
            v274 = v692;
            if (v700 == 1 && v692)
            {
              v275 = v690;
              v276 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v277 = v275;
                  (v276->__on_zero_shared)(v276);
                  std::__shared_weak_count::__release_weak(v276);
                  v275 = v277;
                }
              }

              (*(*v275 + 88))(v275, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v274 = v692;
            }

            v278 = v272 - 1;
            if (v278)
            {
              if (v41)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v274;
                v704 = 4;
                sub_27182976C(v10, &v703);
              }

              v598 = 2 * v273;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v599 = *(v10 + 56);
                *(v10 + 40) = *(v599 - 8);
                *(v10 + 56) = v599 - 8;
                v274 = (v274 + v598);
                --v278;
              }

              while (v278);
            }

            sub_2718285F0(v10);
            if (v41)
            {
              v703 = v274;
              v704 = 4;
              sub_27182976C(v10, &v703);
            }

            v600 = *(v10 + 56);
            *(v10 + 40) = *(v600 - 8);
            *(v10 + 56) = v600 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 15:
      sub_271687C64(a3, &v690);
      v10 = *a2;
      v190 = v699;
      v191 = v690;
      if (!v690)
      {
        goto LABEL_972;
      }

      v192 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v192->__on_zero_shared)(v192);
          std::__shared_weak_count::__release_weak(v192);
        }

        v191 = v690;
        v193 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v194 = v191;
            (v193->__on_zero_shared)(v193);
            std::__shared_weak_count::__release_weak(v193);
            v191 = v194;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v191 + 96))(&v702);
      }

      else
      {
LABEL_972:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v540 = v695;
          if (v695)
          {
            v541 = v697;
            v542 = v698;
            v543 = v692;
            if (v700 == 1 && v692)
            {
              v544 = v690;
              v545 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v545->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v546 = v544;
                  (v545->__on_zero_shared)(v545);
                  std::__shared_weak_count::__release_weak(v545);
                  v544 = v546;
                }
              }

              (*(*v544 + 88))(v544, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v543 = v692;
            }

            v547 = v540 - 1;
            if (v547)
            {
              if (v190)
              {
                for (n = 0; n != v547; ++n)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v549 = 0;
                  v550 = v190;
                  do
                  {
                    v703 = &v543[v549];
                    v704 = 4;
                    sub_271829F14(v10, &v703);
                    v549 += v541;
                    --v550;
                  }

                  while (v550);
                  v551 = *(v10 + 56);
                  *(v10 + 40) = *(v551 - 8);
                  *(v10 + 56) = v551 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v543 += v542;
                }
              }

              else
              {
                v676 = 2 * v542;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v677 = *(v10 + 56);
                  *(v10 + 40) = *(v677 - 8);
                  *(v10 + 56) = v677 - 8;
                  v543 = (v543 + v676);
                  --v547;
                }

                while (v547);
              }
            }

            sub_2718285F0(v10);
            if (v190)
            {
              v678 = 0;
              do
              {
                v703 = &v543[v678];
                v704 = 4;
                sub_271829F14(v10, &v703);
                v678 += v541;
                --v190;
              }

              while (v190);
            }

            v679 = *(v10 + 56);
            *(v10 + 40) = *(v679 - 8);
            *(v10 + 56) = v679 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 16:
      sub_271688200(a3, &v690);
      v10 = *a2;
      v138 = v699;
      v139 = v690;
      if (!v690)
      {
        goto LABEL_795;
      }

      v140 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        v139 = v690;
        v141 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v142 = v139;
            (v141->__on_zero_shared)(v141);
            std::__shared_weak_count::__release_weak(v141);
            v139 = v142;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v139 + 96))(&v702);
      }

      else
      {
LABEL_795:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v446 = v695;
          if (v695)
          {
            v447 = v697;
            v448 = v698;
            v449 = v692;
            if (v700 == 1 && v692)
            {
              v450 = v690;
              v451 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v451->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v452 = v450;
                  (v451->__on_zero_shared)(v451);
                  std::__shared_weak_count::__release_weak(v451);
                  v450 = v452;
                }
              }

              (*(*v450 + 88))(v450, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v449 = v692;
            }

            v453 = v446 - 1;
            if (v453)
            {
              if (v138)
              {
                for (ii = 0; ii != v453; ++ii)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v455 = 0;
                  v456 = v138;
                  do
                  {
                    v703 = &v449[2 * v455];
                    v704 = 4;
                    sub_27182A338(v10, &v703);
                    v455 += v447;
                    --v456;
                  }

                  while (v456);
                  v457 = *(v10 + 56);
                  *(v10 + 40) = *(v457 - 8);
                  *(v10 + 56) = v457 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v449 += 2 * v448;
                }
              }

              else
              {
                v652 = 4 * v448;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v653 = *(v10 + 56);
                  *(v10 + 40) = *(v653 - 8);
                  *(v10 + 56) = v653 - 8;
                  v449 = (v449 + v652);
                  --v453;
                }

                while (v453);
              }
            }

            sub_2718285F0(v10);
            if (v138)
            {
              v654 = 0;
              do
              {
                v703 = &v449[2 * v654];
                v704 = 4;
                sub_27182A338(v10, &v703);
                v654 += v447;
                --v138;
              }

              while (v138);
            }

            v655 = *(v10 + 56);
            *(v10 + 40) = *(v655 - 8);
            *(v10 + 56) = v655 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 17:
      sub_27168879C(a3, &v690);
      v10 = *a2;
      v195 = v699;
      v196 = v690;
      if (!v690)
      {
        goto LABEL_992;
      }

      v197 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v197->__on_zero_shared)(v197);
          std::__shared_weak_count::__release_weak(v197);
        }

        v196 = v690;
        v198 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v199 = v196;
            (v198->__on_zero_shared)(v198);
            std::__shared_weak_count::__release_weak(v198);
            v196 = v199;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v196 + 96))(&v702);
      }

      else
      {
LABEL_992:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v552 = v695;
          if (v695)
          {
            v553 = v698;
            v554 = v692;
            if (v700 == 1 && v692)
            {
              v555 = v690;
              v556 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v556->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v557 = v555;
                  (v556->__on_zero_shared)(v556);
                  std::__shared_weak_count::__release_weak(v556);
                  v555 = v557;
                }
              }

              (*(*v555 + 88))(v555, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v554 = v692;
            }

            v558 = v552 - 1;
            if (v552 != 1)
            {
              if (v195)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v554;
                v704 = 3;
                sub_271828638(v10, &v703);
              }

              v554 = (v554 + v553 + v553 * (v552 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v682 = *(v10 + 56);
                *(v10 + 40) = *(v682 - 8);
                *(v10 + 56) = v682 - 8;
                --v558;
              }

              while (v558);
            }

            sub_2718285F0(v10);
            if (v195)
            {
              v703 = v554;
              v704 = 3;
              sub_271828638(v10, &v703);
            }

            v683 = *(v10 + 56);
            *(v10 + 40) = *(v683 - 8);
            *(v10 + 56) = v683 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 18:
      sub_271688D34(a3, &v690);
      v10 = *a2;
      v57 = v699;
      v58 = v690;
      if (!v690)
      {
        goto LABEL_522;
      }

      v59 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }

        v58 = v690;
        v60 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v61 = v58;
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
            v58 = v61;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v58 + 96))(&v702);
      }

      else
      {
LABEL_522:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v298 = v695;
          if (v695)
          {
            v299 = v698;
            v300 = v692;
            if (v700 == 1 && v692)
            {
              v301 = v690;
              v302 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v302->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v303 = v301;
                  (v302->__on_zero_shared)(v302);
                  std::__shared_weak_count::__release_weak(v302);
                  v301 = v303;
                }
              }

              (*(*v301 + 88))(v301, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v300 = v692;
            }

            v304 = v298 - 1;
            if (v304)
            {
              if (v57)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v300;
                v704 = 3;
                sub_27182976C(v10, &v703);
              }

              v606 = 2 * v299;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v607 = *(v10 + 56);
                *(v10 + 40) = *(v607 - 8);
                *(v10 + 56) = v607 - 8;
                v300 = (v300 + v606);
                --v304;
              }

              while (v304);
            }

            sub_2718285F0(v10);
            if (v57)
            {
              v703 = v300;
              v704 = 3;
              sub_27182976C(v10, &v703);
            }

            v608 = *(v10 + 56);
            *(v10 + 40) = *(v608 - 8);
            *(v10 + 56) = v608 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 19:
      sub_2716892D0(a3, &v690);
      v10 = *a2;
      v16 = v699;
      v17 = v690;
      if (!v690)
      {
        goto LABEL_382;
      }

      v18 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v17 = v690;
        v19 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v20 = v17;
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
            v17 = v20;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v17 + 96))(&v702);
      }

      else
      {
LABEL_382:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v222 = v695;
          if (v695)
          {
            v223 = v697;
            v224 = v698;
            v225 = v692;
            if (v700 == 1 && v692)
            {
              v226 = v690;
              v227 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v228 = v226;
                  (v227->__on_zero_shared)(v227);
                  std::__shared_weak_count::__release_weak(v227);
                  v226 = v228;
                }
              }

              (*(*v226 + 88))(v226, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v225 = v692;
            }

            v229 = v222 - 1;
            if (v229)
            {
              if (v16)
              {
                for (jj = 0; jj != v229; ++jj)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v231 = 0;
                  v232 = v16;
                  do
                  {
                    v703 = &v225[v231];
                    v704 = 3;
                    sub_271829F14(v10, &v703);
                    v231 += v223;
                    --v232;
                  }

                  while (v232);
                  v233 = *(v10 + 56);
                  *(v10 + 40) = *(v233 - 8);
                  *(v10 + 56) = v233 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v225 += v224;
                }
              }

              else
              {
                v582 = 2 * v224;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v583 = *(v10 + 56);
                  *(v10 + 40) = *(v583 - 8);
                  *(v10 + 56) = v583 - 8;
                  v225 = (v225 + v582);
                  --v229;
                }

                while (v229);
              }
            }

            sub_2718285F0(v10);
            if (v16)
            {
              v584 = 0;
              do
              {
                v703 = &v225[v584];
                v704 = 3;
                sub_271829F14(v10, &v703);
                v584 += v223;
                --v16;
              }

              while (v16);
            }

            v585 = *(v10 + 56);
            *(v10 + 40) = *(v585 - 8);
            *(v10 + 56) = v585 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 20:
      sub_27168986C(a3, &v690);
      v10 = *a2;
      v180 = v699;
      v181 = v690;
      if (!v690)
      {
        goto LABEL_937;
      }

      v182 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v182->__on_zero_shared)(v182);
          std::__shared_weak_count::__release_weak(v182);
        }

        v181 = v690;
        v183 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v184 = v181;
            (v183->__on_zero_shared)(v183);
            std::__shared_weak_count::__release_weak(v183);
            v181 = v184;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v181 + 96))(&v702);
      }

      else
      {
LABEL_937:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v521 = v695;
          if (v695)
          {
            v522 = v697;
            v523 = v698;
            v524 = v692;
            if (v700 == 1 && v692)
            {
              v525 = v690;
              v526 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v526->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v527 = v525;
                  (v526->__on_zero_shared)(v526);
                  std::__shared_weak_count::__release_weak(v526);
                  v525 = v527;
                }
              }

              (*(*v525 + 88))(v525, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v524 = v692;
            }

            v528 = v521 - 1;
            if (v528)
            {
              if (v180)
              {
                for (kk = 0; kk != v528; ++kk)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v530 = 0;
                  v531 = v180;
                  do
                  {
                    v703 = &v524[2 * v530];
                    v704 = 3;
                    sub_27182A338(v10, &v703);
                    v530 += v522;
                    --v531;
                  }

                  while (v531);
                  v532 = *(v10 + 56);
                  *(v10 + 40) = *(v532 - 8);
                  *(v10 + 56) = v532 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v524 += 2 * v523;
                }
              }

              else
              {
                v669 = 4 * v523;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v670 = *(v10 + 56);
                  *(v10 + 40) = *(v670 - 8);
                  *(v10 + 56) = v670 - 8;
                  v524 = (v524 + v669);
                  --v528;
                }

                while (v528);
              }
            }

            sub_2718285F0(v10);
            if (v180)
            {
              v671 = 0;
              do
              {
                v703 = &v524[2 * v671];
                v704 = 3;
                sub_27182A338(v10, &v703);
                v671 += v522;
                --v180;
              }

              while (v180);
            }

            v672 = *(v10 + 56);
            *(v10 + 40) = *(v672 - 8);
            *(v10 + 56) = v672 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 21:
      sub_2715EFF9C(a3, &v690);
      v10 = *a2;
      v205 = v699;
      v206 = v690;
      if (!v690)
      {
        goto LABEL_1027;
      }

      v207 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v207->__on_zero_shared)(v207);
          std::__shared_weak_count::__release_weak(v207);
        }

        v206 = v690;
        v208 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v206;
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v206 = v209;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v206 + 96))(&v702);
      }

      else
      {
LABEL_1027:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v571 = v695;
          if (v695)
          {
            v572 = v698;
            v573 = v692;
            if (v700 == 1 && v692)
            {
              v574 = v690;
              v575 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v575->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v576 = v574;
                  (v575->__on_zero_shared)(v575);
                  std::__shared_weak_count::__release_weak(v575);
                  v574 = v576;
                }
              }

              (*(*v574 + 88))(v574, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v573 = v692;
            }

            v577 = v571 - 1;
            if (v571 != 1)
            {
              if (v205)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v573;
                v704 = 3;
                sub_271828638(v10, &v703);
              }

              v573 = (v573 + v572 + v572 * (v571 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v688 = *(v10 + 56);
                *(v10 + 40) = *(v688 - 8);
                *(v10 + 56) = v688 - 8;
                --v577;
              }

              while (v577);
            }

            sub_2718285F0(v10);
            if (v205)
            {
              v703 = v573;
              v704 = 3;
              sub_271828638(v10, &v703);
            }

            v689 = *(v10 + 56);
            *(v10 + 40) = *(v689 - 8);
            *(v10 + 56) = v689 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 22:
      sub_271689E08(a3, &v690);
      v10 = *a2;
      v72 = v699;
      v73 = v690;
      if (!v690)
      {
        goto LABEL_577;
      }

      v74 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        v73 = v690;
        v75 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v76 = v73;
            (v75->__on_zero_shared)(v75);
            std::__shared_weak_count::__release_weak(v75);
            v73 = v76;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v73 + 96))(&v702);
      }

      else
      {
LABEL_577:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v329 = v695;
          if (v695)
          {
            v330 = v698;
            v331 = v692;
            if (v700 == 1 && v692)
            {
              v332 = v690;
              v333 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v333->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v334 = v332;
                  (v333->__on_zero_shared)(v333);
                  std::__shared_weak_count::__release_weak(v333);
                  v332 = v334;
                }
              }

              (*(*v332 + 88))(v332, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v331 = v692;
            }

            v335 = v329 - 1;
            if (v335)
            {
              if (v72)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v331;
                v704 = 3;
                sub_27182976C(v10, &v703);
              }

              v616 = 2 * v330;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v617 = *(v10 + 56);
                *(v10 + 40) = *(v617 - 8);
                *(v10 + 56) = v617 - 8;
                v331 = (v331 + v616);
                --v335;
              }

              while (v335);
            }

            sub_2718285F0(v10);
            if (v72)
            {
              v703 = v331;
              v704 = 3;
              sub_27182976C(v10, &v703);
            }

            v618 = *(v10 + 56);
            *(v10 + 40) = *(v618 - 8);
            *(v10 + 56) = v618 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 23:
      sub_27168A3A4(a3, &v690);
      v10 = *a2;
      v200 = v699;
      v201 = v690;
      if (!v690)
      {
        goto LABEL_1007;
      }

      v202 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v202->__on_zero_shared)(v202);
          std::__shared_weak_count::__release_weak(v202);
        }

        v201 = v690;
        v203 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v204 = v201;
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
            v201 = v204;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v201 + 96))(&v702);
      }

      else
      {
LABEL_1007:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v559 = v695;
          if (v695)
          {
            v560 = v697;
            v561 = v698;
            v562 = v692;
            if (v700 == 1 && v692)
            {
              v563 = v690;
              v564 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v564->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v565 = v563;
                  (v564->__on_zero_shared)(v564);
                  std::__shared_weak_count::__release_weak(v564);
                  v563 = v565;
                }
              }

              (*(*v563 + 88))(v563, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v562 = v692;
            }

            v566 = v559 - 1;
            if (v566)
            {
              if (v200)
              {
                for (mm = 0; mm != v566; ++mm)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v568 = 0;
                  v569 = v200;
                  do
                  {
                    v703 = &v562[v568];
                    v704 = 3;
                    sub_271829F14(v10, &v703);
                    v568 += v560;
                    --v569;
                  }

                  while (v569);
                  v570 = *(v10 + 56);
                  *(v10 + 40) = *(v570 - 8);
                  *(v10 + 56) = v570 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v562 += v561;
                }
              }

              else
              {
                v684 = 2 * v561;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v685 = *(v10 + 56);
                  *(v10 + 40) = *(v685 - 8);
                  *(v10 + 56) = v685 - 8;
                  v562 = (v562 + v684);
                  --v566;
                }

                while (v566);
              }
            }

            sub_2718285F0(v10);
            if (v200)
            {
              v686 = 0;
              do
              {
                v703 = &v562[v686];
                v704 = 3;
                sub_271829F14(v10, &v703);
                v686 += v560;
                --v200;
              }

              while (v200);
            }

            v687 = *(v10 + 56);
            *(v10 + 40) = *(v687 - 8);
            *(v10 + 56) = v687 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 24:
      sub_27168A940(a3, &v690);
      v10 = *a2;
      v36 = v699;
      v37 = v690;
      if (!v690)
      {
        goto LABEL_452;
      }

      v38 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v37 = v690;
        v39 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v40 = v37;
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v37 = v40;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v37 + 96))(&v702);
      }

      else
      {
LABEL_452:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v260 = v695;
          if (v695)
          {
            v261 = v697;
            v262 = v698;
            v263 = v692;
            if (v700 == 1 && v692)
            {
              v264 = v690;
              v265 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v266 = v264;
                  (v265->__on_zero_shared)(v265);
                  std::__shared_weak_count::__release_weak(v265);
                  v264 = v266;
                }
              }

              (*(*v264 + 88))(v264, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v263 = v692;
            }

            v267 = v260 - 1;
            if (v267)
            {
              if (v36)
              {
                for (nn = 0; nn != v267; ++nn)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v269 = 0;
                  v270 = v36;
                  do
                  {
                    v703 = &v263[2 * v269];
                    v704 = 3;
                    sub_27182A338(v10, &v703);
                    v269 += v261;
                    --v270;
                  }

                  while (v270);
                  v271 = *(v10 + 56);
                  *(v10 + 40) = *(v271 - 8);
                  *(v10 + 56) = v271 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v263 += 2 * v262;
                }
              }

              else
              {
                v594 = 4 * v262;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v595 = *(v10 + 56);
                  *(v10 + 40) = *(v595 - 8);
                  *(v10 + 56) = v595 - 8;
                  v263 = (v263 + v594);
                  --v267;
                }

                while (v267);
              }
            }

            sub_2718285F0(v10);
            if (v36)
            {
              v596 = 0;
              do
              {
                v703 = &v263[2 * v596];
                v704 = 3;
                sub_27182A338(v10, &v703);
                v596 += v261;
                --v36;
              }

              while (v36);
            }

            v597 = *(v10 + 56);
            *(v10 + 40) = *(v597 - 8);
            *(v10 + 56) = v597 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 25:
      sub_27168AEDC(a3, &v690);
      v10 = *a2;
      v21 = v699;
      v22 = v690;
      if (!v690)
      {
        goto LABEL_402;
      }

      v23 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v22 = v690;
        v24 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v25 = v22;
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
            v22 = v25;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v22 + 96))(&v702);
      }

      else
      {
LABEL_402:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v234 = v695;
          if (v695)
          {
            v235 = v698;
            v236 = v692;
            if (v700 == 1 && v692)
            {
              v237 = v690;
              v238 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v239 = v237;
                  (v238->__on_zero_shared)(v238);
                  std::__shared_weak_count::__release_weak(v238);
                  v237 = v239;
                }
              }

              (*(*v237 + 88))(v237, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v236 = v692;
            }

            v240 = v234 - 1;
            if (v234 != 1)
            {
              if (v21)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v236;
                v704 = 4;
                sub_271828638(v10, &v703);
              }

              v236 = (v236 + v235 + v235 * (v234 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v586 = *(v10 + 56);
                *(v10 + 40) = *(v586 - 8);
                *(v10 + 56) = v586 - 8;
                --v240;
              }

              while (v240);
            }

            sub_2718285F0(v10);
            if (v21)
            {
              v703 = v236;
              v704 = 4;
              sub_271828638(v10, &v703);
            }

            v587 = *(v10 + 56);
            *(v10 + 40) = *(v587 - 8);
            *(v10 + 56) = v587 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 26:
      sub_27168B474(a3, &v690);
      v10 = *a2;
      v77 = v699;
      v78 = v690;
      if (!v690)
      {
        goto LABEL_592;
      }

      v79 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v690;
        v80 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v78 + 96))(&v702);
      }

      else
      {
LABEL_592:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v336 = v695;
          if (v695)
          {
            v337 = v698;
            v338 = v692;
            if (v700 == 1 && v692)
            {
              v339 = v690;
              v340 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v340->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v341 = v339;
                  (v340->__on_zero_shared)(v340);
                  std::__shared_weak_count::__release_weak(v340);
                  v339 = v341;
                }
              }

              (*(*v339 + 88))(v339, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v338 = v692;
            }

            v342 = v336 - 1;
            if (v342)
            {
              if (v77)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v338;
                v704 = 4;
                sub_27182976C(v10, &v703);
              }

              v619 = 2 * v337;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v620 = *(v10 + 56);
                *(v10 + 40) = *(v620 - 8);
                *(v10 + 56) = v620 - 8;
                v338 = (v338 + v619);
                --v342;
              }

              while (v342);
            }

            sub_2718285F0(v10);
            if (v77)
            {
              v703 = v338;
              v704 = 4;
              sub_27182976C(v10, &v703);
            }

            v621 = *(v10 + 56);
            *(v10 + 40) = *(v621 - 8);
            *(v10 + 56) = v621 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 27:
      sub_27168BA10(a3, &v690);
      v10 = *a2;
      v11 = v699;
      v12 = v690;
      if (!v690)
      {
        goto LABEL_362;
      }

      v13 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v690;
        v14 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v12 + 96))(&v702);
      }

      else
      {
LABEL_362:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v210 = v695;
          if (v695)
          {
            v211 = v697;
            v212 = v698;
            v213 = v692;
            if (v700 == 1 && v692)
            {
              v214 = v690;
              v215 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v216 = v214;
                  (v215->__on_zero_shared)(v215);
                  std::__shared_weak_count::__release_weak(v215);
                  v214 = v216;
                }
              }

              (*(*v214 + 88))(v214, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v213 = v692;
            }

            v217 = v210 - 1;
            if (v217)
            {
              if (v11)
              {
                for (i1 = 0; i1 != v217; ++i1)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v219 = 0;
                  v220 = v11;
                  do
                  {
                    v703 = &v213[v219];
                    v704 = 4;
                    sub_271829F14(v10, &v703);
                    v219 += v211;
                    --v220;
                  }

                  while (v220);
                  v221 = *(v10 + 56);
                  *(v10 + 40) = *(v221 - 8);
                  *(v10 + 56) = v221 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v213 += v212;
                }
              }

              else
              {
                v578 = 2 * v212;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v579 = *(v10 + 56);
                  *(v10 + 40) = *(v579 - 8);
                  *(v10 + 56) = v579 - 8;
                  v213 = (v213 + v578);
                  --v217;
                }

                while (v217);
              }
            }

            sub_2718285F0(v10);
            if (v11)
            {
              v580 = 0;
              do
              {
                v703 = &v213[v580];
                v704 = 4;
                sub_271829F14(v10, &v703);
                v580 += v211;
                --v11;
              }

              while (v11);
            }

            v581 = *(v10 + 56);
            *(v10 + 40) = *(v581 - 8);
            *(v10 + 56) = v581 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 28:
      sub_27168BFAC(a3, &v690);
      v10 = *a2;
      v98 = v699;
      v99 = v690;
      if (!v690)
      {
        goto LABEL_655;
      }

      v100 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v100->__on_zero_shared)(v100);
          std::__shared_weak_count::__release_weak(v100);
        }

        v99 = v690;
        v101 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v102 = v99;
            (v101->__on_zero_shared)(v101);
            std::__shared_weak_count::__release_weak(v101);
            v99 = v102;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v99 + 96))(&v702);
      }

      else
      {
LABEL_655:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v370 = v695;
          if (v695)
          {
            v371 = v697;
            v372 = v698;
            v373 = v692;
            if (v700 == 1 && v692)
            {
              v374 = v690;
              v375 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v375->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v376 = v374;
                  (v375->__on_zero_shared)(v375);
                  std::__shared_weak_count::__release_weak(v375);
                  v374 = v376;
                }
              }

              (*(*v374 + 88))(v374, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v373 = v692;
            }

            v377 = v370 - 1;
            if (v377)
            {
              if (v98)
              {
                for (i2 = 0; i2 != v377; ++i2)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v379 = 0;
                  v380 = v98;
                  do
                  {
                    v703 = &v373[2 * v379];
                    v704 = 4;
                    sub_27182A338(v10, &v703);
                    v379 += v371;
                    --v380;
                  }

                  while (v380);
                  v381 = *(v10 + 56);
                  *(v10 + 40) = *(v381 - 8);
                  *(v10 + 56) = v381 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v373 += 2 * v372;
                }
              }

              else
              {
                v629 = 4 * v372;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v630 = *(v10 + 56);
                  *(v10 + 40) = *(v630 - 8);
                  *(v10 + 56) = v630 - 8;
                  v373 = (v373 + v629);
                  --v377;
                }

                while (v377);
              }
            }

            sub_2718285F0(v10);
            if (v98)
            {
              v631 = 0;
              do
              {
                v703 = &v373[2 * v631];
                v704 = 4;
                sub_27182A338(v10, &v703);
                v631 += v371;
                --v98;
              }

              while (v98);
            }

            v632 = *(v10 + 56);
            *(v10 + 40) = *(v632 - 8);
            *(v10 + 56) = v632 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 29:
      sub_27168C548(a3, &v690);
      v10 = *a2;
      v31 = v699;
      v32 = v690;
      if (!v690)
      {
        goto LABEL_437;
      }

      v33 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v32 = v690;
        v34 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v35 = v32;
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v32 = v35;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v32 + 96))(&v702);
      }

      else
      {
LABEL_437:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v253 = v695;
          if (v695)
          {
            v254 = v698;
            v255 = v692;
            if (v700 == 1 && v692)
            {
              v256 = v690;
              v257 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v257->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v258 = v256;
                  (v257->__on_zero_shared)(v257);
                  std::__shared_weak_count::__release_weak(v257);
                  v256 = v258;
                }
              }

              (*(*v256 + 88))(v256, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v255 = v692;
            }

            v259 = v253 - 1;
            if (v253 != 1)
            {
              if (v31)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v255;
                v704 = 4;
                sub_271828638(v10, &v703);
              }

              v255 = (v255 + v254 + v254 * (v253 - 2));
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v592 = *(v10 + 56);
                *(v10 + 40) = *(v592 - 8);
                *(v10 + 56) = v592 - 8;
                --v259;
              }

              while (v259);
            }

            sub_2718285F0(v10);
            if (v31)
            {
              v703 = v255;
              v704 = 4;
              sub_271828638(v10, &v703);
            }

            v593 = *(v10 + 56);
            *(v10 + 40) = *(v593 - 8);
            *(v10 + 56) = v593 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 30:
      sub_27168CAE0(a3, &v690);
      v10 = *a2;
      v113 = v699;
      v114 = v690;
      if (!v690)
      {
        goto LABEL_715;
      }

      v115 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v690;
        v116 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v114 + 96))(&v702);
      }

      else
      {
LABEL_715:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v406 = v695;
          if (v695)
          {
            v407 = v698;
            v408 = v692;
            if (v700 == 1 && v692)
            {
              v409 = v690;
              v410 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v410->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v411 = v409;
                  (v410->__on_zero_shared)(v410);
                  std::__shared_weak_count::__release_weak(v410);
                  v409 = v411;
                }
              }

              (*(*v409 + 88))(v409, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v408 = v692;
            }

            v412 = v406 - 1;
            if (v412)
            {
              if (v113)
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v408;
                v704 = 4;
                sub_27182976C(v10, &v703);
              }

              v639 = 2 * v407;
              do
              {
                sub_2715DF0F0(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_27182815C(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v640 = *(v10 + 56);
                *(v10 + 40) = *(v640 - 8);
                *(v10 + 56) = v640 - 8;
                v408 = (v408 + v639);
                --v412;
              }

              while (v412);
            }

            sub_2718285F0(v10);
            if (v113)
            {
              v703 = v408;
              v704 = 4;
              sub_27182976C(v10, &v703);
            }

            v641 = *(v10 + 56);
            *(v10 + 40) = *(v641 - 8);
            *(v10 + 56) = v641 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 31:
      sub_27168D07C(a3, &v690);
      v10 = *a2;
      v82 = v699;
      v83 = v690;
      if (!v690)
      {
        goto LABEL_607;
      }

      v84 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v84->__on_zero_shared)(v84);
          std::__shared_weak_count::__release_weak(v84);
        }

        v83 = v690;
        v85 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v86 = v83;
            (v85->__on_zero_shared)(v85);
            std::__shared_weak_count::__release_weak(v85);
            v83 = v86;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v83 + 96))(&v702);
      }

      else
      {
LABEL_607:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v343 = v695;
          if (v695)
          {
            v344 = v697;
            v345 = v698;
            v346 = v692;
            if (v700 == 1 && v692)
            {
              v347 = v690;
              v348 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v348->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v349 = v347;
                  (v348->__on_zero_shared)(v348);
                  std::__shared_weak_count::__release_weak(v348);
                  v347 = v349;
                }
              }

              (*(*v347 + 88))(v347, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v346 = v692;
            }

            v350 = v343 - 1;
            if (v350)
            {
              if (v82)
              {
                for (i3 = 0; i3 != v350; ++i3)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v352 = 0;
                  v353 = v82;
                  do
                  {
                    v703 = &v346[v352];
                    v704 = 4;
                    sub_271829F14(v10, &v703);
                    v352 += v344;
                    --v353;
                  }

                  while (v353);
                  v354 = *(v10 + 56);
                  *(v10 + 40) = *(v354 - 8);
                  *(v10 + 56) = v354 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v346 += v345;
                }
              }

              else
              {
                v622 = 2 * v345;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v623 = *(v10 + 56);
                  *(v10 + 40) = *(v623 - 8);
                  *(v10 + 56) = v623 - 8;
                  v346 = (v346 + v622);
                  --v350;
                }

                while (v350);
              }
            }

            sub_2718285F0(v10);
            if (v82)
            {
              v624 = 0;
              do
              {
                v703 = &v346[v624];
                v704 = 4;
                sub_271829F14(v10, &v703);
                v624 += v344;
                --v82;
              }

              while (v82);
            }

            v625 = *(v10 + 56);
            *(v10 + 40) = *(v625 - 8);
            *(v10 + 56) = v625 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 32:
      sub_27168D618(a3, &v690);
      v10 = *a2;
      v123 = v699;
      v124 = v690;
      if (!v690)
      {
        goto LABEL_745;
      }

      v125 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v125->__on_zero_shared)(v125);
          std::__shared_weak_count::__release_weak(v125);
        }

        v124 = v690;
        v126 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v127 = v124;
            (v126->__on_zero_shared)(v126);
            std::__shared_weak_count::__release_weak(v126);
            v124 = v127;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v124 + 96))(&v702);
      }

      else
      {
LABEL_745:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v420 = v695;
          if (v695)
          {
            v421 = v697;
            v422 = v698;
            v423 = v692;
            if (v700 == 1 && v692)
            {
              v424 = v690;
              v425 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v425->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v426 = v424;
                  (v425->__on_zero_shared)(v425);
                  std::__shared_weak_count::__release_weak(v425);
                  v424 = v426;
                }
              }

              (*(*v424 + 88))(v424, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v423 = v692;
            }

            v427 = v420 - 1;
            if (v427)
            {
              if (v123)
              {
                for (i4 = 0; i4 != v427; ++i4)
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v429 = 0;
                  v430 = v123;
                  do
                  {
                    v703 = &v423[2 * v429];
                    v704 = 4;
                    sub_27182A338(v10, &v703);
                    v429 += v421;
                    --v430;
                  }

                  while (v430);
                  v431 = *(v10 + 56);
                  *(v10 + 40) = *(v431 - 8);
                  *(v10 + 56) = v431 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v423 += 2 * v422;
                }
              }

              else
              {
                v644 = 4 * v422;
                do
                {
                  sub_2715DF0F0(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_27182815C(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v645 = *(v10 + 56);
                  *(v10 + 40) = *(v645 - 8);
                  *(v10 + 56) = v645 - 8;
                  v423 = (v423 + v644);
                  --v427;
                }

                while (v427);
              }
            }

            sub_2718285F0(v10);
            if (v123)
            {
              v646 = 0;
              do
              {
                v703 = &v423[2 * v646];
                v704 = 4;
                sub_27182A338(v10, &v703);
                v646 += v421;
                --v123;
              }

              while (v123);
            }

            v647 = *(v10 + 56);
            *(v10 + 40) = *(v647 - 8);
            *(v10 + 56) = v647 - 8;
            if (*(v10 + 88) == 1)
            {
LABEL_1312:
              *(v10 + 88) = 0;
            }
          }
        }
      }

      goto LABEL_1313;
    case 33:
      sub_27168DBB4(a3, &v690);
      v51 = *a2;
      v175 = v699;
      v176 = v690;
      if (!v690)
      {
        goto LABEL_922;
      }

      v177 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v177->__on_zero_shared)(v177);
          std::__shared_weak_count::__release_weak(v177);
        }

        v176 = v690;
        v178 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v178->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v179 = v176;
            (v178->__on_zero_shared)(v178);
            std::__shared_weak_count::__release_weak(v178);
            v176 = v179;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v176 + 96))(&v702);
      }

      else
      {
LABEL_922:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v514 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v515 = v698;
      v516 = v692;
      if (v700 == 1 && v692)
      {
        v517 = v690;
        v518 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v518->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v519 = v517;
            (v518->__on_zero_shared)(v518);
            std::__shared_weak_count::__release_weak(v518);
            v517 = v519;
          }
        }

        (*(*v517 + 88))(v517, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v516 = v692;
      }

      v520 = v514 - 1;
      if (v514 != 1)
      {
        if (v175)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v516;
          v704 = 4;
          sub_271828638(v51, &v703);
        }

        v516 = (v516 + v515 + v515 * (v514 - 2));
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v668 = *(v51 + 56);
          *(v51 + 40) = *(v668 - 8);
          *(v51 + 56) = v668 - 8;
          --v520;
        }

        while (v520);
      }

      sub_2718285F0(v51);
      if (v175)
      {
        v703 = v516;
        v704 = 4;
        sub_271828638(v51, &v703);
      }

      return;
    case 34:
      sub_27168E14C(a3, &v690);
      v51 = *a2;
      v118 = v699;
      v119 = v690;
      if (!v690)
      {
        goto LABEL_730;
      }

      v120 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v120->__on_zero_shared)(v120);
          std::__shared_weak_count::__release_weak(v120);
        }

        v119 = v690;
        v121 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v122 = v119;
            (v121->__on_zero_shared)(v121);
            std::__shared_weak_count::__release_weak(v121);
            v119 = v122;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v119 + 96))(&v702);
      }

      else
      {
LABEL_730:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v413 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v414 = v698;
      v415 = v692;
      if (v700 == 1 && v692)
      {
        v416 = v690;
        v417 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v417->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v418 = v416;
            (v417->__on_zero_shared)(v417);
            std::__shared_weak_count::__release_weak(v417);
            v416 = v418;
          }
        }

        (*(*v416 + 88))(v416, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v415 = v692;
      }

      v419 = v413 - 1;
      if (v419)
      {
        if (v118)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v415;
          v704 = 4;
          sub_27182976C(v51, &v703);
        }

        v642 = 2 * v414;
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v643 = *(v51 + 56);
          *(v51 + 40) = *(v643 - 8);
          *(v51 + 56) = v643 - 8;
          v415 = (v415 + v642);
          --v419;
        }

        while (v419);
      }

      sub_2718285F0(v51);
      if (v118)
      {
        v703 = v415;
        v704 = 4;
        sub_27182976C(v51, &v703);
      }

      return;
    case 35:
      sub_27168E6E8(a3, &v690);
      v51 = *a2;
      v108 = v699;
      v109 = v690;
      if (!v690)
      {
        goto LABEL_695;
      }

      v110 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v110->__on_zero_shared)(v110);
          std::__shared_weak_count::__release_weak(v110);
        }

        v109 = v690;
        v111 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v112 = v109;
            (v111->__on_zero_shared)(v111);
            std::__shared_weak_count::__release_weak(v111);
            v109 = v112;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v109 + 96))(&v702);
      }

      else
      {
LABEL_695:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v394 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v395 = v697;
      v396 = v698;
      v397 = v692;
      if (v700 == 1 && v692)
      {
        v398 = v690;
        v399 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v399->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v400 = v398;
            (v399->__on_zero_shared)(v399);
            std::__shared_weak_count::__release_weak(v399);
            v398 = v400;
          }
        }

        (*(*v398 + 88))(v398, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v397 = v692;
      }

      v401 = v394 - 1;
      if (v401)
      {
        if (v108)
        {
          for (i5 = 0; i5 != v401; ++i5)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v403 = 0;
            v404 = v108;
            do
            {
              v703 = &v397[v403];
              v704 = 4;
              sub_271829F14(v51, &v703);
              v403 += v395;
              --v404;
            }

            while (v404);
            v405 = *(v51 + 56);
            *(v51 + 40) = *(v405 - 8);
            *(v51 + 56) = v405 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v397 += v396;
          }
        }

        else
        {
          v636 = 2 * v396;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v637 = *(v51 + 56);
            *(v51 + 40) = *(v637 - 8);
            *(v51 + 56) = v637 - 8;
            v397 = (v397 + v636);
            --v401;
          }

          while (v401);
        }
      }

      sub_2718285F0(v51);
      if (v108)
      {
        v638 = 0;
        do
        {
          v703 = &v397[v638];
          v704 = 4;
          sub_271829F14(v51, &v703);
          v638 += v395;
          --v108;
        }

        while (v108);
      }

      break;
    case 36:
      sub_27168EC84(a3, &v690);
      v51 = *a2;
      v103 = v699;
      v104 = v690;
      if (!v690)
      {
        goto LABEL_675;
      }

      v105 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

        v104 = v690;
        v106 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v107 = v104;
            (v106->__on_zero_shared)(v106);
            std::__shared_weak_count::__release_weak(v106);
            v104 = v107;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v104 + 96))(&v702);
      }

      else
      {
LABEL_675:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v382 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v383 = v697;
      v384 = v698;
      v385 = v692;
      if (v700 == 1 && v692)
      {
        v386 = v690;
        v387 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v387->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v388 = v386;
            (v387->__on_zero_shared)(v387);
            std::__shared_weak_count::__release_weak(v387);
            v386 = v388;
          }
        }

        (*(*v386 + 88))(v386, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v385 = v692;
      }

      v389 = v382 - 1;
      if (v389)
      {
        if (v103)
        {
          for (i6 = 0; i6 != v389; ++i6)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v391 = 0;
            v392 = v103;
            do
            {
              v703 = &v385[2 * v391];
              v704 = 4;
              sub_27182A338(v51, &v703);
              v391 += v383;
              --v392;
            }

            while (v392);
            v393 = *(v51 + 56);
            *(v51 + 40) = *(v393 - 8);
            *(v51 + 56) = v393 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v385 += 2 * v384;
          }
        }

        else
        {
          v633 = 4 * v384;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v634 = *(v51 + 56);
            *(v51 + 40) = *(v634 - 8);
            *(v51 + 56) = v634 - 8;
            v385 = (v385 + v633);
            --v389;
          }

          while (v389);
        }
      }

      sub_2718285F0(v51);
      if (v103)
      {
        v635 = 0;
        do
        {
          v703 = &v385[2 * v635];
          v704 = 4;
          sub_27182A338(v51, &v703);
          v635 += v383;
          --v103;
        }

        while (v103);
      }

      break;
    case 37:
      sub_27168F220(a3, &v690);
      v51 = *a2;
      v160 = v699;
      v161 = v690;
      if (!v690)
      {
        goto LABEL_872;
      }

      v162 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v162->__on_zero_shared)(v162);
          std::__shared_weak_count::__release_weak(v162);
        }

        v161 = v690;
        v163 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v164 = v161;
            (v163->__on_zero_shared)(v163);
            std::__shared_weak_count::__release_weak(v163);
            v161 = v164;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v161 + 96))(&v702);
      }

      else
      {
LABEL_872:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v488 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v489 = v698;
      v490 = v692;
      if (v700 == 1 && v692)
      {
        v491 = v690;
        v492 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v492->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v493 = v491;
            (v492->__on_zero_shared)(v492);
            std::__shared_weak_count::__release_weak(v492);
            v491 = v493;
          }
        }

        (*(*v491 + 88))(v491, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v490 = v692;
      }

      v494 = v488 - 1;
      if (v488 != 1)
      {
        if (v160)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v490;
          v704 = 4;
          sub_271828638(v51, &v703);
        }

        v490 = (v490 + v489 + v489 * (v488 - 2));
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v660 = *(v51 + 56);
          *(v51 + 40) = *(v660 - 8);
          *(v51 + 56) = v660 - 8;
          --v494;
        }

        while (v494);
      }

      sub_2718285F0(v51);
      if (v160)
      {
        v703 = v490;
        v704 = 4;
        sub_271828638(v51, &v703);
      }

      return;
    case 38:
      sub_27168F7B8(a3, &v690);
      v51 = *a2;
      v185 = v699;
      v186 = v690;
      if (!v690)
      {
        goto LABEL_957;
      }

      v187 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v690;
        v188 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v186 + 96))(&v702);
      }

      else
      {
LABEL_957:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v533 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v534 = v698;
      v535 = v692;
      if (v700 == 1 && v692)
      {
        v536 = v690;
        v537 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v535 = v692;
      }

      v539 = v533 - 1;
      if (v539)
      {
        if (v185)
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v535;
          v704 = 4;
          sub_27182976C(v51, &v703);
        }

        v673 = 2 * v534;
        do
        {
          sub_2715DF0F0(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_27182815C(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v674 = *(v51 + 56);
          *(v51 + 40) = *(v674 - 8);
          *(v51 + 56) = v674 - 8;
          v535 = (v535 + v673);
          --v539;
        }

        while (v539);
      }

      sub_2718285F0(v51);
      if (v185)
      {
        v703 = v535;
        v704 = 4;
        sub_27182976C(v51, &v703);
      }

      return;
    case 39:
      sub_27168FD54(a3, &v690);
      v51 = *a2;
      v67 = v699;
      v68 = v690;
      if (!v690)
      {
        goto LABEL_557;
      }

      v69 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }

        v68 = v690;
        v70 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v71 = v68;
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
            v68 = v71;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v68 + 96))(&v702);
      }

      else
      {
LABEL_557:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v317 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v318 = v697;
      v319 = v698;
      v320 = v692;
      if (v700 == 1 && v692)
      {
        v321 = v690;
        v322 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v322->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v323 = v321;
            (v322->__on_zero_shared)(v322);
            std::__shared_weak_count::__release_weak(v322);
            v321 = v323;
          }
        }

        (*(*v321 + 88))(v321, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v320 = v692;
      }

      v324 = v317 - 1;
      if (v324)
      {
        if (v67)
        {
          for (i7 = 0; i7 != v324; ++i7)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v326 = 0;
            v327 = v67;
            do
            {
              v703 = &v320[v326];
              v704 = 4;
              sub_271829F14(v51, &v703);
              v326 += v318;
              --v327;
            }

            while (v327);
            v328 = *(v51 + 56);
            *(v51 + 40) = *(v328 - 8);
            *(v51 + 56) = v328 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v320 += v319;
          }
        }

        else
        {
          v613 = 2 * v319;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v614 = *(v51 + 56);
            *(v51 + 40) = *(v614 - 8);
            *(v51 + 56) = v614 - 8;
            v320 = (v320 + v613);
            --v324;
          }

          while (v324);
        }
      }

      sub_2718285F0(v51);
      if (v67)
      {
        v615 = 0;
        do
        {
          v703 = &v320[v615];
          v704 = 4;
          sub_271829F14(v51, &v703);
          v615 += v318;
          --v67;
        }

        while (v67);
      }

      break;
    case 40:
      sub_2716902F0(a3, &v690);
      v51 = *a2;
      v52 = v699;
      v53 = v690;
      if (!v690)
      {
        goto LABEL_502;
      }

      v54 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v54->__on_zero_shared)(v54);
          std::__shared_weak_count::__release_weak(v54);
        }

        v53 = v690;
        v55 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v56 = v53;
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
            v53 = v56;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v53 + 96))(&v702);
      }

      else
      {
LABEL_502:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v286 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v287 = v697;
      v288 = v698;
      v289 = v692;
      if (v700 == 1 && v692)
      {
        v290 = v690;
        v291 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v291->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v292 = v290;
            (v291->__on_zero_shared)(v291);
            std::__shared_weak_count::__release_weak(v291);
            v290 = v292;
          }
        }

        (*(*v290 + 88))(v290, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v289 = v692;
      }

      v293 = v286 - 1;
      if (v293)
      {
        if (v52)
        {
          for (i8 = 0; i8 != v293; ++i8)
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v295 = 0;
            v296 = v52;
            do
            {
              v703 = &v289[2 * v295];
              v704 = 4;
              sub_27182A338(v51, &v703);
              v295 += v287;
              --v296;
            }

            while (v296);
            v297 = *(v51 + 56);
            *(v51 + 40) = *(v297 - 8);
            *(v51 + 56) = v297 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v289 += 2 * v288;
          }
        }

        else
        {
          v603 = 4 * v288;
          do
          {
            sub_2715DF0F0(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_27182815C(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v604 = *(v51 + 56);
            *(v51 + 40) = *(v604 - 8);
            *(v51 + 56) = v604 - 8;
            v289 = (v289 + v603);
            --v293;
          }

          while (v293);
        }
      }

      sub_2718285F0(v51);
      if (v52)
      {
        v605 = 0;
        do
        {
          v703 = &v289[2 * v605];
          v704 = 4;
          sub_27182A338(v51, &v703);
          v605 += v287;
          --v52;
        }

        while (v52);
      }

      break;
    default:
      return;
  }

  v675 = *(v51 + 56);
  *(v51 + 40) = *(v675 - 8);
  *(v51 + 56) = v675 - 8;
  if (*(v51 + 88) == 1)
  {
    *(v51 + 88) = 0;
  }

LABEL_1313:
  v680 = v702;
  v702 = 0;
  if (v680)
  {
    (*(*v680 + 8))(v680);
  }

  v681 = v691;
  if (v691 && !atomic_fetch_add(&v691->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v681->__on_zero_shared)(v681);
    std::__shared_weak_count::__release_weak(v681);
  }
}