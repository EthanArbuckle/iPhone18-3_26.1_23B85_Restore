void sub_2716E05DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_2716E14B4(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v692 = &unk_28810E1F8;
      sub_2715EF504(a3, &v693);
      v4 = *a2;
      v5 = v696;
      v6 = v693;
      if (!v693)
      {
        goto LABEL_889;
      }

      v7 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v693;
        v8 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v6 + 96))(&v690);
      }

      else
      {
LABEL_889:
        v690 = 0;
      }

      if (v696)
      {
        v558 = v697;
        if (v697)
        {
          v559 = v699;
          v560 = v695;
          if (v700 == 1 && v695)
          {
            v561 = v693;
            v562 = v694;
            if (v694)
            {
              atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v562->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v563 = v561;
                (v562->__on_zero_shared)(v562);
                std::__shared_weak_count::__release_weak(v562);
                v561 = v563;
              }
            }

            (*(*v561 + 88))(v561, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v560 = v695;
          }

          v564 = v558 - 1;
          if (v558 != 1)
          {
            v565 = 0;
            do
            {
              if (v5)
              {
                v566 = v5;
                v567 = v560;
                do
                {
                  sub_2718388F8(v4, v567++);
                  --v566;
                }

                while (v566);
              }

              v560 += v559;
              ++v565;
            }

            while (v565 != v564);
          }

          for (; v5; --v5)
          {
            sub_2718388F8(v4, v560++);
          }
        }
      }

      goto LABEL_1156;
    case 2:
      v692 = &unk_28810DB78;
      sub_2715EFA94(a3, &v693);
      v46 = *a2;
      v172 = v696;
      v173 = v693;
      if (!v693)
      {
        goto LABEL_871;
      }

      v174 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v174->__on_zero_shared)(v174);
          std::__shared_weak_count::__release_weak(v174);
        }

        v173 = v693;
        v175 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v176 = v173;
            (v175->__on_zero_shared)(v175);
            std::__shared_weak_count::__release_weak(v175);
            v173 = v176;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v173 + 96))(&v689);
      }

      else
      {
LABEL_871:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      v547 = v697;
      if (!v697)
      {
        goto LABEL_1171;
      }

      v548 = v699;
      v301 = v695;
      if (v700 == 1 && v695)
      {
        v549 = v693;
        v550 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v550->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v551 = v549;
            (v550->__on_zero_shared)(v550);
            std::__shared_weak_count::__release_weak(v550);
            v549 = v551;
          }
        }

        (*(*v549 + 88))(v549, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v552 = v547 - 1;
      if (v552)
      {
        v553 = 0;
        v554 = 2 * v548;
        do
        {
          if (v172)
          {
            v555 = 0;
            v556 = *(v46 + 40);
            do
            {
              if (v556)
              {
                v557 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v557, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v555]);
              v556 = *(v46 + 40) + 1;
              *(v46 + 40) = v556;
              ++v555;
            }

            while (v172 != v555);
          }

          v301 = (v301 + v554);
          ++v553;
        }

        while (v553 != v552);
      }

      goto LABEL_1170;
    case 3:
      v692 = &unk_28810D4B8;
      sub_271683A48(a3, &v693);
      v166 = *a2;
      v167 = v696;
      v168 = v693;
      if (!v693)
      {
        goto LABEL_852;
      }

      v169 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v693;
        v170 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v168 + 96))(&v690);
      }

      else
      {
LABEL_852:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      v536 = v697;
      if (!v697)
      {
        goto LABEL_1156;
      }

      v537 = v699;
      v538 = v695;
      if (v700 == 1 && v695)
      {
        v539 = v693;
        v540 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v540->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v541 = v539;
            (v540->__on_zero_shared)(v540);
            std::__shared_weak_count::__release_weak(v540);
            v539 = v541;
          }
        }

        (*(*v539 + 88))(v539, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v538 = v695;
      }

      v542 = v536 - 1;
      if (v536 == 1)
      {
        goto LABEL_867;
      }

      if (v167)
      {
        v543 = 0;
        do
        {
          v544 = 2 * v167;
          v545 = v538;
          do
          {
            sub_2718389E0(v166, v545);
            v545 += 2;
            v544 -= 2;
          }

          while (v544);
          v538 += 2 * v537;
          ++v543;
        }

        while (v543 != v542);
LABEL_867:
        if (v167)
        {
          v546 = 2 * v167;
          do
          {
            sub_2718389E0(v166, v538);
            v538 += 2;
            v546 -= 2;
          }

          while (v546);
        }
      }

      goto LABEL_1156;
    case 4:
      v692 = &unk_28810D378;
      sub_271683F50(a3, &v693);
      v102 = *a2;
      v103 = v696;
      v104 = v693;
      if (!v693)
      {
        goto LABEL_659;
      }

      v105 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

        v104 = v693;
        v106 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
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
        (*(*v104 + 96))(&v690);
      }

      else
      {
LABEL_659:
        v690 = 0;
      }

      if (v696)
      {
        v414 = v697;
        if (v697)
        {
          v415 = v699;
          v416 = v695;
          if (v700 == 1 && v695)
          {
            v417 = v693;
            v418 = v694;
            if (v694)
            {
              atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v418->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v419 = v417;
                (v418->__on_zero_shared)(v418);
                std::__shared_weak_count::__release_weak(v418);
                v417 = v419;
              }
            }

            (*(*v417 + 88))(v417, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v416 = v695;
          }

          v420 = 4 * v103;
          v421 = v414 - 1;
          if (v414 != 1)
          {
            v422 = 0;
            do
            {
              if (v103)
              {
                v423 = 4 * v103;
                v424 = v416;
                do
                {
                  sub_271838C54(v102, v424++);
                  v423 -= 4;
                }

                while (v423);
              }

              v416 += v415;
              ++v422;
            }

            while (v422 != v421);
          }

          if (v103)
          {
            do
            {
              sub_271838C54(v102, v416++);
              v420 -= 4;
            }

            while (v420);
          }
        }
      }

      goto LABEL_1156;
    case 5:
      v692 = &unk_28810D2B8;
      sub_271684458(a3, &v693);
      v148 = *a2;
      v149 = v703;
      v150 = v693;
      if (!v693)
      {
        goto LABEL_801;
      }

      v151 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v693;
        v152 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v150 + 96))(&v690);
      }

      else
      {
LABEL_801:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v503 = v698;
          if (v698)
          {
            v504 = v702;
            v505 = v695;
            if (v704 == 1 && v695)
            {
              v506 = v693;
              v507 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v507->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v508 = v506;
                  (v507->__on_zero_shared)(v507);
                  std::__shared_weak_count::__release_weak(v507);
                  v506 = v508;
                }
              }

              (*(*v506 + 88))(v506, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v505 = v695;
            }

            v509 = (2 * v149);
            v510 = v503 - 1;
            if (v510)
            {
              for (i = 0; i != v510; ++i)
              {
                if (v509)
                {
                  v512 = v509;
                  v513 = v505;
                  do
                  {
                    sub_2718388F8(v148, v513++);
                    --v512;
                  }

                  while (v512);
                }

                v505 += v504;
              }
            }

            for (; v509; --v509)
            {
              sub_2718388F8(v148, v505++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 6:
      v692 = &unk_28810D238;
      sub_2716849F0(a3, &v693);
      v46 = *a2;
      v97 = v703;
      v98 = v693;
      if (!v693)
      {
        goto LABEL_640;
      }

      v99 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v99->__on_zero_shared)(v99);
          std::__shared_weak_count::__release_weak(v99);
        }

        v98 = v693;
        v100 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v101 = v98;
            (v100->__on_zero_shared)(v100);
            std::__shared_weak_count::__release_weak(v100);
            v98 = v101;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v98 + 96))(&v689);
      }

      else
      {
LABEL_640:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v403 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v404 = v702;
      v301 = v695;
      if (v704 == 1 && v695)
      {
        v405 = v693;
        v406 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v406->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v407 = v405;
            (v406->__on_zero_shared)(v406);
            std::__shared_weak_count::__release_weak(v406);
            v405 = v407;
          }
        }

        (*(*v405 + 88))(v405, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v172 = (2 * v97);
      v408 = v403 - 1;
      if (v408)
      {
        v409 = 0;
        v410 = 2 * v404;
        do
        {
          if (v172)
          {
            v411 = 0;
            v412 = *(v46 + 40);
            do
            {
              if (v412)
              {
                v413 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v413, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v411]);
              v412 = *(v46 + 40) + 1;
              *(v46 + 40) = v412;
              ++v411;
            }

            while (v172 != v411);
          }

          v301 = (v301 + v410);
          ++v409;
        }

        while (v409 != v408);
      }

      goto LABEL_1170;
    case 7:
      v692 = &unk_28810D178;
      sub_271684F8C(a3, &v693);
      v70 = *a2;
      v71 = v703;
      v72 = v693;
      if (!v693)
      {
        goto LABEL_542;
      }

      v73 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v693;
        v74 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v72 + 96))(&v690);
      }

      else
      {
LABEL_542:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v345 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v346 = v702;
      v347 = v695;
      if (v704 == 1 && v695)
      {
        v348 = v693;
        v349 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v349->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v350 = v348;
            (v349->__on_zero_shared)(v349);
            std::__shared_weak_count::__release_weak(v349);
            v348 = v350;
          }
        }

        (*(*v348 + 88))(v348, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v347 = v695;
      }

      v351 = (2 * v71);
      v352 = v345 - 1;
      if (!v352)
      {
        goto LABEL_558;
      }

      if (v351)
      {
        for (j = 0; j != v352; ++j)
        {
          v354 = 2 * v351;
          v355 = v347;
          do
          {
            sub_2718389E0(v70, v355);
            v355 += 2;
            v354 -= 2;
          }

          while (v354);
          v347 += 2 * v346;
        }

LABEL_558:
        if (v351)
        {
          v356 = 2 * v351;
          do
          {
            sub_2718389E0(v70, v347);
            v347 += 2;
            v356 -= 2;
          }

          while (v356);
        }
      }

      goto LABEL_1156;
    case 8:
      v692 = &unk_28810D0B8;
      sub_271685528(a3, &v693);
      v160 = *a2;
      v161 = v703;
      v162 = v693;
      if (!v693)
      {
        goto LABEL_835;
      }

      v163 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v693;
        v164 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v162 + 96))(&v690);
      }

      else
      {
LABEL_835:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v525 = v698;
          if (v698)
          {
            v526 = v702;
            v527 = v695;
            if (v704 == 1 && v695)
            {
              v528 = v693;
              v529 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v529->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v530 = v528;
                  (v529->__on_zero_shared)(v529);
                  std::__shared_weak_count::__release_weak(v529);
                  v528 = v530;
                }
              }

              (*(*v528 + 88))(v528, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v527 = v695;
            }

            v531 = (2 * v161);
            v532 = v525 - 1;
            if (v532)
            {
              for (k = 0; k != v532; ++k)
              {
                if (v531)
                {
                  v534 = 4 * v531;
                  v535 = v527;
                  do
                  {
                    sub_271838C54(v160, v535++);
                    v534 -= 4;
                  }

                  while (v534);
                }

                v527 += v526;
              }
            }

            if (v531)
            {
              v685 = 4 * v531;
              do
              {
                sub_271838C54(v160, v527++);
                v685 -= 4;
              }

              while (v685);
            }
          }
        }
      }

      goto LABEL_1156;
    case 9:
      v692 = &unk_28810D038;
      sub_271685AC4(a3, &v693);
      v142 = *a2;
      v143 = v703;
      v144 = v693;
      if (!v693)
      {
        goto LABEL_784;
      }

      v145 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v693;
        v146 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v144 + 96))(&v690);
      }

      else
      {
LABEL_784:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v492 = v698;
          if (v698)
          {
            v493 = v702;
            v494 = v695;
            if (v704 == 1 && v695)
            {
              v495 = v693;
              v496 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v496->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v497 = v495;
                  (v496->__on_zero_shared)(v496);
                  std::__shared_weak_count::__release_weak(v496);
                  v495 = v497;
                }
              }

              (*(*v495 + 88))(v495, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v494 = v695;
            }

            v498 = (3 * v143);
            v499 = v492 - 1;
            if (v492 != 1)
            {
              v500 = 0;
              do
              {
                if (v143)
                {
                  v501 = (3 * v143);
                  v502 = v494;
                  do
                  {
                    sub_2718388F8(v142, v502++);
                    --v501;
                  }

                  while (v501);
                }

                v494 += v493;
                ++v500;
              }

              while (v500 != v499);
            }

            if (3 * v143)
            {
              do
              {
                sub_2718388F8(v142, v494++);
                --v498;
              }

              while (v498);
            }
          }
        }
      }

      goto LABEL_1156;
    case 10:
      v692 = &unk_28810E738;
      sub_27168605C(a3, &v693);
      v64 = *a2;
      v65 = v703;
      v189 = v693;
      if (!v693)
      {
        goto LABEL_942;
      }

      v190 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v190->__on_zero_shared)(v190);
          std::__shared_weak_count::__release_weak(v190);
        }

        v189 = v693;
        v191 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v189;
            (v191->__on_zero_shared)(v191);
            std::__shared_weak_count::__release_weak(v191);
            v189 = v192;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v189 + 96))(&v689);
      }

      else
      {
LABEL_942:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v590 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v591 = v702;
      v335 = v695;
      if (v704 == 1 && v695)
      {
        v592 = v693;
        v593 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v593->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v594 = v592;
            (v593->__on_zero_shared)(v593);
            std::__shared_weak_count::__release_weak(v593);
            v592 = v594;
          }
        }

        (*(*v592 + 88))(v592, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v335 = v695;
      }

      v595 = v590 - 1;
      if (v595)
      {
        v596 = 0;
        v597 = 2 * v591;
        do
        {
          if (v65)
          {
            v598 = 0;
            v599 = *(v64 + 40);
            do
            {
              if (v599)
              {
                v600 = *(v64 + 24);
                LOBYTE(v690) = *(v64 + 32);
                sub_271120E64(v600, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v64 + 24), v335[v598]);
              v599 = *(v64 + 40) + 1;
              *(v64 + 40) = v599;
              ++v598;
            }

            while (3 * v65 != v598);
          }

          v335 = (v335 + v597);
          ++v596;
        }

        while (v596 != v595);
      }

      goto LABEL_1169;
    case 11:
      v692 = &unk_28810E6B8;
      sub_2716865F8(a3, &v693);
      v183 = *a2;
      v184 = v703;
      v185 = v693;
      if (!v693)
      {
        goto LABEL_922;
      }

      v186 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v186->__on_zero_shared)(v186);
          std::__shared_weak_count::__release_weak(v186);
        }

        v185 = v693;
        v187 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v188 = v185;
            (v187->__on_zero_shared)(v187);
            std::__shared_weak_count::__release_weak(v187);
            v185 = v188;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v185 + 96))(&v690);
      }

      else
      {
LABEL_922:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v579 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v580 = v702;
      v581 = v695;
      if (v704 == 1 && v695)
      {
        v582 = v693;
        v583 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v584 = v582;
            (v583->__on_zero_shared)(v583);
            std::__shared_weak_count::__release_weak(v583);
            v582 = v584;
          }
        }

        (*(*v582 + 88))(v582, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v581 = v695;
      }

      v585 = v579 - 1;
      if (v579 == 1)
      {
        goto LABEL_938;
      }

      if (v184)
      {
        v586 = 0;
        do
        {
          v587 = 2 * (3 * v184);
          v588 = v581;
          do
          {
            sub_2718389E0(v183, v588);
            v588 += 2;
            v587 -= 2;
          }

          while (v587);
          v581 += 2 * v580;
          ++v586;
        }

        while (v586 != v585);
LABEL_938:
        if (v184)
        {
          v589 = 2 * (3 * v184);
          do
          {
            sub_2718389E0(v183, v581);
            v581 += 2;
            v589 -= 2;
          }

          while (v589);
        }
      }

      goto LABEL_1156;
    case 12:
      v692 = &unk_28810E638;
      sub_271686B94(a3, &v693);
      v28 = *a2;
      v29 = v703;
      v30 = v693;
      if (!v693)
      {
        goto LABEL_419;
      }

      v31 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v693;
        v32 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v30 + 96))(&v690);
      }

      else
      {
LABEL_419:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v268 = v698;
          if (v698)
          {
            v269 = v702;
            v270 = v695;
            if (v704 == 1 && v695)
            {
              v271 = v693;
              v272 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v272->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v273 = v271;
                  (v272->__on_zero_shared)(v272);
                  std::__shared_weak_count::__release_weak(v272);
                  v271 = v273;
                }
              }

              (*(*v271 + 88))(v271, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v270 = v695;
            }

            v274 = v268 - 1;
            if (v268 != 1)
            {
              v275 = 0;
              do
              {
                if (v29)
                {
                  v276 = 4 * (3 * v29);
                  v277 = v270;
                  do
                  {
                    sub_271838C54(v28, v277++);
                    v276 -= 4;
                  }

                  while (v276);
                }

                v270 += v269;
                ++v275;
              }

              while (v275 != v274);
            }

            if (3 * v29)
            {
              v678 = 4 * (3 * v29);
              do
              {
                sub_271838C54(v28, v270++);
                v678 -= 4;
              }

              while (v678);
            }
          }
        }
      }

      goto LABEL_1156;
    case 13:
      v692 = &unk_28810E5B8;
      sub_271687130(a3, &v693);
      v52 = *a2;
      v53 = v703;
      v54 = v693;
      if (!v693)
      {
        goto LABEL_489;
      }

      v55 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v693;
        v56 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v54 + 96))(&v690);
      }

      else
      {
LABEL_489:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v311 = v698;
          if (v698)
          {
            v312 = v702;
            v313 = v695;
            if (v704 == 1 && v695)
            {
              v314 = v693;
              v315 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v315->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v316 = v314;
                  (v315->__on_zero_shared)(v315);
                  std::__shared_weak_count::__release_weak(v315);
                  v314 = v316;
                }
              }

              (*(*v314 + 88))(v314, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v313 = v695;
            }

            v317 = (4 * v53);
            v318 = v311 - 1;
            if (v318)
            {
              for (m = 0; m != v318; ++m)
              {
                if (v317)
                {
                  v320 = v317;
                  v321 = v313;
                  do
                  {
                    sub_2718388F8(v52, v321++);
                    --v320;
                  }

                  while (v320);
                }

                v313 += v312;
              }
            }

            for (; v317; --v317)
            {
              sub_2718388F8(v52, v313++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 14:
      v692 = &unk_28810E538;
      sub_2716876C8(a3, &v693);
      v46 = *a2;
      v47 = v703;
      v48 = v693;
      if (!v693)
      {
        goto LABEL_470;
      }

      v49 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v693;
        v50 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v48 + 96))(&v689);
      }

      else
      {
LABEL_470:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v299 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v300 = v702;
      v301 = v695;
      if (v704 == 1 && v695)
      {
        v302 = v693;
        v303 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v303->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v304 = v302;
            (v303->__on_zero_shared)(v303);
            std::__shared_weak_count::__release_weak(v303);
            v302 = v304;
          }
        }

        (*(*v302 + 88))(v302, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v172 = (4 * v47);
      v305 = v299 - 1;
      if (v305)
      {
        v306 = 0;
        v307 = 2 * v300;
        do
        {
          if (v172)
          {
            v308 = 0;
            v309 = *(v46 + 40);
            do
            {
              if (v309)
              {
                v310 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v310, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v308]);
              v309 = *(v46 + 40) + 1;
              *(v46 + 40) = v309;
              ++v308;
            }

            while (v172 != v308);
          }

          v301 = (v301 + v307);
          ++v306;
        }

        while (v306 != v305);
      }

      goto LABEL_1170;
    case 15:
      v692 = &unk_28810E4B8;
      sub_271687C64(a3, &v693);
      v210 = *a2;
      v211 = v703;
      v212 = v693;
      if (!v693)
      {
        goto LABEL_1014;
      }

      v213 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v213->__on_zero_shared)(v213);
          std::__shared_weak_count::__release_weak(v213);
        }

        v212 = v693;
        v214 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v215 = v212;
            (v214->__on_zero_shared)(v214);
            std::__shared_weak_count::__release_weak(v214);
            v212 = v215;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v212 + 96))(&v690);
      }

      else
      {
LABEL_1014:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v633 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v634 = v702;
      v635 = v695;
      if (v704 == 1 && v695)
      {
        v636 = v693;
        v637 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v637->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v638 = v636;
            (v637->__on_zero_shared)(v637);
            std::__shared_weak_count::__release_weak(v637);
            v636 = v638;
          }
        }

        (*(*v636 + 88))(v636, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v635 = v695;
      }

      v639 = (4 * v211);
      v640 = v633 - 1;
      if (!v640)
      {
        goto LABEL_1030;
      }

      if (v639)
      {
        for (n = 0; n != v640; ++n)
        {
          v642 = 2 * v639;
          v643 = v635;
          do
          {
            sub_2718389E0(v210, v643);
            v643 += 2;
            v642 -= 2;
          }

          while (v642);
          v635 += 2 * v634;
        }

LABEL_1030:
        if (v639)
        {
          v644 = 2 * v639;
          do
          {
            sub_2718389E0(v210, v635);
            v635 += 2;
            v644 -= 2;
          }

          while (v644);
        }
      }

      goto LABEL_1156;
    case 16:
      v692 = &unk_28810E438;
      sub_271688200(a3, &v693);
      v154 = *a2;
      v155 = v703;
      v156 = v693;
      if (!v693)
      {
        goto LABEL_818;
      }

      v157 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v693;
        v158 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v156 + 96))(&v690);
      }

      else
      {
LABEL_818:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v514 = v698;
          if (v698)
          {
            v515 = v702;
            v516 = v695;
            if (v704 == 1 && v695)
            {
              v517 = v693;
              v518 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v518->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v519 = v517;
                  (v518->__on_zero_shared)(v518);
                  std::__shared_weak_count::__release_weak(v518);
                  v517 = v519;
                }
              }

              (*(*v517 + 88))(v517, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v516 = v695;
            }

            v520 = (4 * v155);
            v521 = v514 - 1;
            if (v521)
            {
              for (ii = 0; ii != v521; ++ii)
              {
                if (v520)
                {
                  v523 = 4 * v520;
                  v524 = v516;
                  do
                  {
                    sub_271838C54(v154, v524++);
                    v523 -= 4;
                  }

                  while (v523);
                }

                v516 += v515;
              }
            }

            if (v520)
            {
              v684 = 4 * v520;
              do
              {
                sub_271838C54(v154, v516++);
                v684 -= 4;
              }

              while (v684);
            }
          }
        }
      }

      goto LABEL_1156;
    case 17:
      v692 = &unk_28810E3B8;
      sub_27168879C(a3, &v693);
      v216 = *a2;
      v217 = v703;
      v218 = v693;
      if (!v693)
      {
        goto LABEL_1034;
      }

      v219 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v219->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v219->__on_zero_shared)(v219);
          std::__shared_weak_count::__release_weak(v219);
        }

        v218 = v693;
        v220 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v220->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v221 = v218;
            (v220->__on_zero_shared)(v220);
            std::__shared_weak_count::__release_weak(v220);
            v218 = v221;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v218 + 96))(&v690);
      }

      else
      {
LABEL_1034:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v645 = v698;
          if (v698)
          {
            v646 = v702;
            v647 = v695;
            if (v704 == 1 && v695)
            {
              v648 = v693;
              v649 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v649->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v650 = v648;
                  (v649->__on_zero_shared)(v649);
                  std::__shared_weak_count::__release_weak(v649);
                  v648 = v650;
                }
              }

              (*(*v648 + 88))(v648, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v647 = v695;
            }

            v651 = (3 * v217);
            v652 = v645 - 1;
            if (v645 != 1)
            {
              v653 = 0;
              do
              {
                if (v217)
                {
                  v654 = (3 * v217);
                  v655 = v647;
                  do
                  {
                    sub_2718388F8(v216, v655++);
                    --v654;
                  }

                  while (v654);
                }

                v647 += v646;
                ++v653;
              }

              while (v653 != v652);
            }

            if (3 * v217)
            {
              do
              {
                sub_2718388F8(v216, v647++);
                --v651;
              }

              while (v651);
            }
          }
        }
      }

      goto LABEL_1156;
    case 18:
      v692 = &unk_28810E338;
      sub_271688D34(a3, &v693);
      v64 = *a2;
      v65 = v703;
      v66 = v693;
      if (!v693)
      {
        goto LABEL_523;
      }

      v67 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v693;
        v68 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v66 + 96))(&v689);
      }

      else
      {
LABEL_523:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v333 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v334 = v702;
      v335 = v695;
      if (v704 == 1 && v695)
      {
        v336 = v693;
        v337 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v337->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v338 = v336;
            (v337->__on_zero_shared)(v337);
            std::__shared_weak_count::__release_weak(v337);
            v336 = v338;
          }
        }

        (*(*v336 + 88))(v336, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v335 = v695;
      }

      v339 = v333 - 1;
      if (v339)
      {
        v340 = 0;
        v341 = 2 * v334;
        do
        {
          if (v65)
          {
            v342 = 0;
            v343 = *(v64 + 40);
            do
            {
              if (v343)
              {
                v344 = *(v64 + 24);
                LOBYTE(v690) = *(v64 + 32);
                sub_271120E64(v344, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v64 + 24), v335[v342]);
              v343 = *(v64 + 40) + 1;
              *(v64 + 40) = v343;
              ++v342;
            }

            while (3 * v65 != v342);
          }

          v335 = (v335 + v341);
          ++v340;
        }

        while (v340 != v339);
      }

      goto LABEL_1169;
    case 19:
      v692 = &unk_28810E2B8;
      sub_2716892D0(a3, &v693);
      v16 = *a2;
      v17 = v703;
      v18 = v693;
      if (!v693)
      {
        goto LABEL_382;
      }

      v19 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v693;
        v20 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v18 + 96))(&v690);
      }

      else
      {
LABEL_382:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v246 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v247 = v702;
      v248 = v695;
      if (v704 == 1 && v695)
      {
        v249 = v693;
        v250 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v250->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v251 = v249;
            (v250->__on_zero_shared)(v250);
            std::__shared_weak_count::__release_weak(v250);
            v249 = v251;
          }
        }

        (*(*v249 + 88))(v249, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v248 = v695;
      }

      v252 = v246 - 1;
      if (v246 == 1)
      {
        goto LABEL_398;
      }

      if (v17)
      {
        v253 = 0;
        do
        {
          v254 = 2 * (3 * v17);
          v255 = v248;
          do
          {
            sub_2718389E0(v16, v255);
            v255 += 2;
            v254 -= 2;
          }

          while (v254);
          v248 += 2 * v247;
          ++v253;
        }

        while (v253 != v252);
LABEL_398:
        if (v17)
        {
          v256 = 2 * (3 * v17);
          do
          {
            sub_2718389E0(v16, v248);
            v248 += 2;
            v256 -= 2;
          }

          while (v256);
        }
      }

      goto LABEL_1156;
    case 20:
      v692 = &unk_28810E178;
      sub_27168986C(a3, &v693);
      v199 = *a2;
      v200 = v703;
      v201 = v693;
      if (!v693)
      {
        goto LABEL_978;
      }

      v202 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v202->__on_zero_shared)(v202);
          std::__shared_weak_count::__release_weak(v202);
        }

        v201 = v693;
        v203 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v204 = v201;
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
            v201 = v204;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v201 + 96))(&v690);
      }

      else
      {
LABEL_978:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v612 = v698;
          if (v698)
          {
            v613 = v702;
            v614 = v695;
            if (v704 == 1 && v695)
            {
              v615 = v693;
              v616 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v616->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v617 = v615;
                  (v616->__on_zero_shared)(v616);
                  std::__shared_weak_count::__release_weak(v616);
                  v615 = v617;
                }
              }

              (*(*v615 + 88))(v615, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v614 = v695;
            }

            v618 = v612 - 1;
            if (v612 != 1)
            {
              v619 = 0;
              do
              {
                if (v200)
                {
                  v620 = 4 * (3 * v200);
                  v621 = v614;
                  do
                  {
                    sub_271838C54(v199, v621++);
                    v620 -= 4;
                  }

                  while (v620);
                }

                v614 += v613;
                ++v619;
              }

              while (v619 != v618);
            }

            if (3 * v200)
            {
              v686 = 4 * (3 * v200);
              do
              {
                sub_271838C54(v199, v614++);
                v686 -= 4;
              }

              while (v686);
            }
          }
        }
      }

      goto LABEL_1156;
    case 21:
      v692 = &unk_28810E0B8;
      sub_2715EFF9C(a3, &v693);
      v228 = *a2;
      v229 = v703;
      v230 = v693;
      if (!v693)
      {
        goto LABEL_1071;
      }

      v231 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v231->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v231->__on_zero_shared)(v231);
          std::__shared_weak_count::__release_weak(v231);
        }

        v230 = v693;
        v232 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v232->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v233 = v230;
            (v232->__on_zero_shared)(v232);
            std::__shared_weak_count::__release_weak(v232);
            v230 = v233;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v230 + 96))(&v690);
      }

      else
      {
LABEL_1071:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v667 = v698;
          if (v698)
          {
            v668 = v702;
            v669 = v695;
            if (v704 == 1 && v695)
            {
              v670 = v693;
              v671 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v671->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v672 = v670;
                  (v671->__on_zero_shared)(v671);
                  std::__shared_weak_count::__release_weak(v671);
                  v670 = v672;
                }
              }

              (*(*v670 + 88))(v670, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v669 = v695;
            }

            v673 = (3 * v229);
            v674 = v667 - 1;
            if (v667 != 1)
            {
              v675 = 0;
              do
              {
                if (v229)
                {
                  v676 = (3 * v229);
                  v677 = v669;
                  do
                  {
                    sub_2718388F8(v228, v677++);
                    --v676;
                  }

                  while (v676);
                }

                v669 += v668;
                ++v675;
              }

              while (v675 != v674);
            }

            if (3 * v229)
            {
              do
              {
                sub_2718388F8(v228, v669++);
                --v673;
              }

              while (v673);
            }
          }
        }
      }

      goto LABEL_1156;
    case 22:
      v692 = &unk_28810DFF8;
      sub_271689E08(a3, &v693);
      v64 = *a2;
      v65 = v703;
      v82 = v693;
      if (!v693)
      {
        goto LABEL_582;
      }

      v83 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v83->__on_zero_shared)(v83);
          std::__shared_weak_count::__release_weak(v83);
        }

        v82 = v693;
        v84 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v85 = v82;
            (v84->__on_zero_shared)(v84);
            std::__shared_weak_count::__release_weak(v84);
            v82 = v85;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v82 + 96))(&v689);
      }

      else
      {
LABEL_582:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v369 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v370 = v702;
      v335 = v695;
      if (v704 == 1 && v695)
      {
        v371 = v693;
        v372 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v372->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v373 = v371;
            (v372->__on_zero_shared)(v372);
            std::__shared_weak_count::__release_weak(v372);
            v371 = v373;
          }
        }

        (*(*v371 + 88))(v371, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v335 = v695;
      }

      v374 = v369 - 1;
      if (v374)
      {
        v375 = 0;
        v376 = 2 * v370;
        do
        {
          if (v65)
          {
            v377 = 0;
            v378 = *(v64 + 40);
            do
            {
              if (v378)
              {
                v379 = *(v64 + 24);
                LOBYTE(v690) = *(v64 + 32);
                sub_271120E64(v379, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v64 + 24), v335[v377]);
              v378 = *(v64 + 40) + 1;
              *(v64 + 40) = v378;
              ++v377;
            }

            while (3 * v65 != v377);
          }

          v335 = (v335 + v376);
          ++v375;
        }

        while (v375 != v374);
      }

LABEL_1169:
      v690 = v335;
      v691 = (3 * v65);
      sub_271839348(v64, &v690);
      goto LABEL_1171;
    case 23:
      v692 = &unk_28810DF78;
      sub_27168A3A4(a3, &v693);
      v222 = *a2;
      v223 = v703;
      v224 = v693;
      if (!v693)
      {
        goto LABEL_1051;
      }

      v225 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v225->__on_zero_shared)(v225);
          std::__shared_weak_count::__release_weak(v225);
        }

        v224 = v693;
        v226 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v226->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v227 = v224;
            (v226->__on_zero_shared)(v226);
            std::__shared_weak_count::__release_weak(v226);
            v224 = v227;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v224 + 96))(&v690);
      }

      else
      {
LABEL_1051:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v656 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v657 = v702;
      v658 = v695;
      if (v704 == 1 && v695)
      {
        v659 = v693;
        v660 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v660->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v661 = v659;
            (v660->__on_zero_shared)(v660);
            std::__shared_weak_count::__release_weak(v660);
            v659 = v661;
          }
        }

        (*(*v659 + 88))(v659, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v658 = v695;
      }

      v662 = v656 - 1;
      if (v656 == 1)
      {
        goto LABEL_1067;
      }

      if (v223)
      {
        v663 = 0;
        do
        {
          v664 = 2 * (3 * v223);
          v665 = v658;
          do
          {
            sub_2718389E0(v222, v665);
            v665 += 2;
            v664 -= 2;
          }

          while (v664);
          v658 += 2 * v657;
          ++v663;
        }

        while (v663 != v662);
LABEL_1067:
        if (v223)
        {
          v666 = 2 * (3 * v223);
          do
          {
            sub_2718389E0(v222, v658);
            v658 += 2;
            v666 -= 2;
          }

          while (v666);
        }
      }

      goto LABEL_1156;
    case 24:
      v692 = &unk_28810DEF8;
      sub_27168A940(a3, &v693);
      v40 = *a2;
      v41 = v703;
      v42 = v693;
      if (!v693)
      {
        goto LABEL_453;
      }

      v43 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v693;
        v44 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v42 + 96))(&v690);
      }

      else
      {
LABEL_453:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v289 = v698;
          if (v698)
          {
            v290 = v702;
            v291 = v695;
            if (v704 == 1 && v695)
            {
              v292 = v693;
              v293 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v293->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v294 = v292;
                  (v293->__on_zero_shared)(v293);
                  std::__shared_weak_count::__release_weak(v293);
                  v292 = v294;
                }
              }

              (*(*v292 + 88))(v292, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v291 = v695;
            }

            v295 = v289 - 1;
            if (v289 != 1)
            {
              v296 = 0;
              do
              {
                if (v41)
                {
                  v297 = 4 * (3 * v41);
                  v298 = v291;
                  do
                  {
                    sub_271838C54(v40, v298++);
                    v297 -= 4;
                  }

                  while (v297);
                }

                v291 += v290;
                ++v296;
              }

              while (v296 != v295);
            }

            if (3 * v41)
            {
              v679 = 4 * (3 * v41);
              do
              {
                sub_271838C54(v40, v291++);
                v679 -= 4;
              }

              while (v679);
            }
          }
        }
      }

      goto LABEL_1156;
    case 25:
      v692 = &unk_28810DE38;
      sub_27168AEDC(a3, &v693);
      v22 = *a2;
      v23 = v703;
      v24 = v693;
      if (!v693)
      {
        goto LABEL_402;
      }

      v25 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v693;
        v26 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v24 + 96))(&v690);
      }

      else
      {
LABEL_402:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v257 = v698;
          if (v698)
          {
            v258 = v702;
            v259 = v695;
            if (v704 == 1 && v695)
            {
              v260 = v693;
              v261 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v261->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v262 = v260;
                  (v261->__on_zero_shared)(v261);
                  std::__shared_weak_count::__release_weak(v261);
                  v260 = v262;
                }
              }

              (*(*v260 + 88))(v260, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v259 = v695;
            }

            v263 = (4 * v23);
            v264 = v257 - 1;
            if (v264)
            {
              for (jj = 0; jj != v264; ++jj)
              {
                if (v263)
                {
                  v266 = v263;
                  v267 = v259;
                  do
                  {
                    sub_2718388F8(v22, v267++);
                    --v266;
                  }

                  while (v266);
                }

                v259 += v258;
              }
            }

            for (; v263; --v263)
            {
              sub_2718388F8(v22, v259++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 26:
      v692 = &unk_28810DDB8;
      sub_27168B474(a3, &v693);
      v46 = *a2;
      v86 = v703;
      v87 = v693;
      if (!v693)
      {
        goto LABEL_601;
      }

      v88 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v88->__on_zero_shared)(v88);
          std::__shared_weak_count::__release_weak(v88);
        }

        v87 = v693;
        v89 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v90 = v87;
            (v89->__on_zero_shared)(v89);
            std::__shared_weak_count::__release_weak(v89);
            v87 = v90;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v87 + 96))(&v689);
      }

      else
      {
LABEL_601:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v380 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v381 = v702;
      v301 = v695;
      if (v704 == 1 && v695)
      {
        v382 = v693;
        v383 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v383->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v384 = v382;
            (v383->__on_zero_shared)(v383);
            std::__shared_weak_count::__release_weak(v383);
            v382 = v384;
          }
        }

        (*(*v382 + 88))(v382, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v172 = (4 * v86);
      v385 = v380 - 1;
      if (v385)
      {
        v386 = 0;
        v387 = 2 * v381;
        do
        {
          if (v172)
          {
            v388 = 0;
            v389 = *(v46 + 40);
            do
            {
              if (v389)
              {
                v390 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v390, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v388]);
              v389 = *(v46 + 40) + 1;
              *(v46 + 40) = v389;
              ++v388;
            }

            while (v172 != v388);
          }

          v301 = (v301 + v387);
          ++v386;
        }

        while (v386 != v385);
      }

      goto LABEL_1170;
    case 27:
      v692 = &unk_28810DD38;
      sub_27168BA10(a3, &v693);
      v10 = *a2;
      v11 = v703;
      v12 = v693;
      if (!v693)
      {
        goto LABEL_362;
      }

      v13 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v693;
        v14 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v12 + 96))(&v690);
      }

      else
      {
LABEL_362:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v234 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v235 = v702;
      v236 = v695;
      if (v704 == 1 && v695)
      {
        v237 = v693;
        v238 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v239 = v237;
            (v238->__on_zero_shared)(v238);
            std::__shared_weak_count::__release_weak(v238);
            v237 = v239;
          }
        }

        (*(*v237 + 88))(v237, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v236 = v695;
      }

      v240 = (4 * v11);
      v241 = v234 - 1;
      if (!v241)
      {
        goto LABEL_378;
      }

      if (v240)
      {
        for (kk = 0; kk != v241; ++kk)
        {
          v243 = 2 * v240;
          v244 = v236;
          do
          {
            sub_2718389E0(v10, v244);
            v244 += 2;
            v243 -= 2;
          }

          while (v243);
          v236 += 2 * v235;
        }

LABEL_378:
        if (v240)
        {
          v245 = 2 * v240;
          do
          {
            sub_2718389E0(v10, v236);
            v236 += 2;
            v245 -= 2;
          }

          while (v245);
        }
      }

      goto LABEL_1156;
    case 28:
      v692 = &unk_28810DCB8;
      sub_27168BFAC(a3, &v693);
      v108 = *a2;
      v109 = v703;
      v110 = v693;
      if (!v693)
      {
        goto LABEL_675;
      }

      v111 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }

        v110 = v693;
        v112 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v113 = v110;
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
            v110 = v113;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v110 + 96))(&v690);
      }

      else
      {
LABEL_675:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v425 = v698;
          if (v698)
          {
            v426 = v702;
            v427 = v695;
            if (v704 == 1 && v695)
            {
              v428 = v693;
              v429 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v429->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v430 = v428;
                  (v429->__on_zero_shared)(v429);
                  std::__shared_weak_count::__release_weak(v429);
                  v428 = v430;
                }
              }

              (*(*v428 + 88))(v428, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v427 = v695;
            }

            v431 = (4 * v109);
            v432 = v425 - 1;
            if (v432)
            {
              for (mm = 0; mm != v432; ++mm)
              {
                if (v431)
                {
                  v434 = 4 * v431;
                  v435 = v427;
                  do
                  {
                    sub_271838C54(v108, v435++);
                    v434 -= 4;
                  }

                  while (v434);
                }

                v427 += v426;
              }
            }

            if (v431)
            {
              v681 = 4 * v431;
              do
              {
                sub_271838C54(v108, v427++);
                v681 -= 4;
              }

              while (v681);
            }
          }
        }
      }

      goto LABEL_1156;
    case 29:
      v692 = &unk_28810DC38;
      sub_27168C548(a3, &v693);
      v34 = *a2;
      v35 = v703;
      v36 = v693;
      if (!v693)
      {
        goto LABEL_436;
      }

      v37 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v693;
        v38 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v36 + 96))(&v690);
      }

      else
      {
LABEL_436:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v278 = v698;
          if (v698)
          {
            v279 = v702;
            v280 = v695;
            if (v704 == 1 && v695)
            {
              v281 = v693;
              v282 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v282->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v283 = v281;
                  (v282->__on_zero_shared)(v282);
                  std::__shared_weak_count::__release_weak(v282);
                  v281 = v283;
                }
              }

              (*(*v281 + 88))(v281, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v280 = v695;
            }

            v284 = (4 * v35);
            v285 = v278 - 1;
            if (v285)
            {
              for (nn = 0; nn != v285; ++nn)
              {
                if (v284)
                {
                  v287 = v284;
                  v288 = v280;
                  do
                  {
                    sub_2718388F8(v34, v288++);
                    --v287;
                  }

                  while (v287);
                }

                v280 += v279;
              }
            }

            for (; v284; --v284)
            {
              sub_2718388F8(v34, v280++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 30:
      v692 = &unk_28810DAF8;
      sub_27168CAE0(a3, &v693);
      v46 = *a2;
      v126 = v703;
      v127 = v693;
      if (!v693)
      {
        goto LABEL_729;
      }

      v128 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v128->__on_zero_shared)(v128);
          std::__shared_weak_count::__release_weak(v128);
        }

        v127 = v693;
        v129 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v130 = v127;
            (v129->__on_zero_shared)(v129);
            std::__shared_weak_count::__release_weak(v129);
            v127 = v130;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v127 + 96))(&v689);
      }

      else
      {
LABEL_729:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v459 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v460 = v702;
      v301 = v695;
      if (v704 == 1 && v695)
      {
        v461 = v693;
        v462 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v462->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v463 = v461;
            (v462->__on_zero_shared)(v462);
            std::__shared_weak_count::__release_weak(v462);
            v461 = v463;
          }
        }

        (*(*v461 + 88))(v461, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v172 = (4 * v126);
      v464 = v459 - 1;
      if (v464)
      {
        v465 = 0;
        v466 = 2 * v460;
        do
        {
          if (v172)
          {
            v467 = 0;
            v468 = *(v46 + 40);
            do
            {
              if (v468)
              {
                v469 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v469, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v467]);
              v468 = *(v46 + 40) + 1;
              *(v46 + 40) = v468;
              ++v467;
            }

            while (v172 != v467);
          }

          v301 = (v301 + v466);
          ++v465;
        }

        while (v465 != v464);
      }

      goto LABEL_1170;
    case 31:
      v692 = &unk_28810DA38;
      sub_27168D07C(a3, &v693);
      v91 = *a2;
      v92 = v703;
      v93 = v693;
      if (!v693)
      {
        goto LABEL_620;
      }

      v94 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v94->__on_zero_shared)(v94);
          std::__shared_weak_count::__release_weak(v94);
        }

        v93 = v693;
        v95 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v96 = v93;
            (v95->__on_zero_shared)(v95);
            std::__shared_weak_count::__release_weak(v95);
            v93 = v96;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v93 + 96))(&v690);
      }

      else
      {
LABEL_620:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v391 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v392 = v702;
      v393 = v695;
      if (v704 == 1 && v695)
      {
        v394 = v693;
        v395 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v395->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v396 = v394;
            (v395->__on_zero_shared)(v395);
            std::__shared_weak_count::__release_weak(v395);
            v394 = v396;
          }
        }

        (*(*v394 + 88))(v394, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v393 = v695;
      }

      v397 = (4 * v92);
      v398 = v391 - 1;
      if (!v398)
      {
        goto LABEL_636;
      }

      if (v397)
      {
        for (i1 = 0; i1 != v398; ++i1)
        {
          v400 = 2 * v397;
          v401 = v393;
          do
          {
            sub_2718389E0(v91, v401);
            v401 += 2;
            v400 -= 2;
          }

          while (v400);
          v393 += 2 * v392;
        }

LABEL_636:
        if (v397)
        {
          v402 = 2 * v397;
          do
          {
            sub_2718389E0(v91, v393);
            v393 += 2;
            v402 -= 2;
          }

          while (v402);
        }
      }

      goto LABEL_1156;
    case 32:
      v692 = &unk_28810D978;
      sub_27168D618(a3, &v693);
      v136 = *a2;
      v137 = v703;
      v138 = v693;
      if (!v693)
      {
        goto LABEL_767;
      }

      v139 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v693;
        v140 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v138 + 96))(&v690);
      }

      else
      {
LABEL_767:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v481 = v698;
          if (v698)
          {
            v482 = v702;
            v483 = v695;
            if (v704 == 1 && v695)
            {
              v484 = v693;
              v485 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v485->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v486 = v484;
                  (v485->__on_zero_shared)(v485);
                  std::__shared_weak_count::__release_weak(v485);
                  v484 = v486;
                }
              }

              (*(*v484 + 88))(v484, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v483 = v695;
            }

            v487 = (4 * v137);
            v488 = v481 - 1;
            if (v488)
            {
              for (i2 = 0; i2 != v488; ++i2)
              {
                if (v487)
                {
                  v490 = 4 * v487;
                  v491 = v483;
                  do
                  {
                    sub_271838C54(v136, v491++);
                    v490 -= 4;
                  }

                  while (v490);
                }

                v483 += v482;
              }
            }

            if (v487)
            {
              v683 = 4 * v487;
              do
              {
                sub_271838C54(v136, v483++);
                v683 -= 4;
              }

              while (v683);
            }
          }
        }
      }

      goto LABEL_1156;
    case 33:
      v692 = &unk_28810D8F8;
      sub_27168DBB4(a3, &v693);
      v193 = *a2;
      v194 = v703;
      v195 = v693;
      if (!v693)
      {
        goto LABEL_961;
      }

      v196 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v196->__on_zero_shared)(v196);
          std::__shared_weak_count::__release_weak(v196);
        }

        v195 = v693;
        v197 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v198 = v195;
            (v197->__on_zero_shared)(v197);
            std::__shared_weak_count::__release_weak(v197);
            v195 = v198;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v195 + 96))(&v690);
      }

      else
      {
LABEL_961:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v601 = v698;
          if (v698)
          {
            v602 = v702;
            v603 = v695;
            if (v704 == 1 && v695)
            {
              v604 = v693;
              v605 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v605->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v606 = v604;
                  (v605->__on_zero_shared)(v605);
                  std::__shared_weak_count::__release_weak(v605);
                  v604 = v606;
                }
              }

              (*(*v604 + 88))(v604, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v603 = v695;
            }

            v607 = (4 * v194);
            v608 = v601 - 1;
            if (v608)
            {
              for (i3 = 0; i3 != v608; ++i3)
              {
                if (v607)
                {
                  v610 = v607;
                  v611 = v603;
                  do
                  {
                    sub_2718388F8(v193, v611++);
                    --v610;
                  }

                  while (v610);
                }

                v603 += v602;
              }
            }

            for (; v607; --v607)
            {
              sub_2718388F8(v193, v603++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 34:
      v692 = &unk_28810D878;
      sub_27168E14C(a3, &v693);
      v46 = *a2;
      v131 = v703;
      v132 = v693;
      if (!v693)
      {
        goto LABEL_748;
      }

      v133 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v693;
        v134 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v132 + 96))(&v689);
      }

      else
      {
LABEL_748:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v470 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v471 = v702;
      v301 = v695;
      if (v704 == 1 && v695)
      {
        v472 = v693;
        v473 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v473->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v474 = v472;
            (v473->__on_zero_shared)(v473);
            std::__shared_weak_count::__release_weak(v473);
            v472 = v474;
          }
        }

        (*(*v472 + 88))(v472, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v172 = (4 * v131);
      v475 = v470 - 1;
      if (v475)
      {
        v476 = 0;
        v477 = 2 * v471;
        do
        {
          if (v172)
          {
            v478 = 0;
            v479 = *(v46 + 40);
            do
            {
              if (v479)
              {
                v480 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v480, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v478]);
              v479 = *(v46 + 40) + 1;
              *(v46 + 40) = v479;
              ++v478;
            }

            while (v172 != v478);
          }

          v301 = (v301 + v477);
          ++v476;
        }

        while (v476 != v475);
      }

      goto LABEL_1170;
    case 35:
      v692 = &unk_28810D7F8;
      sub_27168E6E8(a3, &v693);
      v120 = *a2;
      v121 = v703;
      v122 = v693;
      if (!v693)
      {
        goto LABEL_709;
      }

      v123 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v123->__on_zero_shared)(v123);
          std::__shared_weak_count::__release_weak(v123);
        }

        v122 = v693;
        v124 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v125 = v122;
            (v124->__on_zero_shared)(v124);
            std::__shared_weak_count::__release_weak(v124);
            v122 = v125;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v122 + 96))(&v690);
      }

      else
      {
LABEL_709:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v447 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v448 = v702;
      v449 = v695;
      if (v704 == 1 && v695)
      {
        v450 = v693;
        v451 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v451->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v452 = v450;
            (v451->__on_zero_shared)(v451);
            std::__shared_weak_count::__release_weak(v451);
            v450 = v452;
          }
        }

        (*(*v450 + 88))(v450, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v449 = v695;
      }

      v453 = (4 * v121);
      v454 = v447 - 1;
      if (!v454)
      {
        goto LABEL_725;
      }

      if (v453)
      {
        for (i4 = 0; i4 != v454; ++i4)
        {
          v456 = 2 * v453;
          v457 = v449;
          do
          {
            sub_2718389E0(v120, v457);
            v457 += 2;
            v456 -= 2;
          }

          while (v456);
          v449 += 2 * v448;
        }

LABEL_725:
        if (v453)
        {
          v458 = 2 * v453;
          do
          {
            sub_2718389E0(v120, v449);
            v449 += 2;
            v458 -= 2;
          }

          while (v458);
        }
      }

      goto LABEL_1156;
    case 36:
      v692 = &unk_28810D778;
      sub_27168EC84(a3, &v693);
      v114 = *a2;
      v115 = v703;
      v116 = v693;
      if (!v693)
      {
        goto LABEL_692;
      }

      v117 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
        }

        v116 = v693;
        v118 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v119 = v116;
            (v118->__on_zero_shared)(v118);
            std::__shared_weak_count::__release_weak(v118);
            v116 = v119;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v116 + 96))(&v690);
      }

      else
      {
LABEL_692:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v436 = v698;
          if (v698)
          {
            v437 = v702;
            v438 = v695;
            if (v704 == 1 && v695)
            {
              v439 = v693;
              v440 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v440->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v441 = v439;
                  (v440->__on_zero_shared)(v440);
                  std::__shared_weak_count::__release_weak(v440);
                  v439 = v441;
                }
              }

              (*(*v439 + 88))(v439, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v438 = v695;
            }

            v442 = (4 * v115);
            v443 = v436 - 1;
            if (v443)
            {
              for (i5 = 0; i5 != v443; ++i5)
              {
                if (v442)
                {
                  v445 = 4 * v442;
                  v446 = v438;
                  do
                  {
                    sub_271838C54(v114, v446++);
                    v445 -= 4;
                  }

                  while (v445);
                }

                v438 += v437;
              }
            }

            if (v442)
            {
              v682 = 4 * v442;
              do
              {
                sub_271838C54(v114, v438++);
                v682 -= 4;
              }

              while (v682);
            }
          }
        }
      }

      goto LABEL_1156;
    case 37:
      v692 = &unk_28810D6B8;
      sub_27168F220(a3, &v693);
      v177 = *a2;
      v178 = v703;
      v179 = v693;
      if (!v693)
      {
        goto LABEL_905;
      }

      v180 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v180->__on_zero_shared)(v180);
          std::__shared_weak_count::__release_weak(v180);
        }

        v179 = v693;
        v181 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v182 = v179;
            (v181->__on_zero_shared)(v181);
            std::__shared_weak_count::__release_weak(v181);
            v179 = v182;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v179 + 96))(&v690);
      }

      else
      {
LABEL_905:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v568 = v698;
          if (v698)
          {
            v569 = v702;
            v570 = v695;
            if (v704 == 1 && v695)
            {
              v571 = v693;
              v572 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v572->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v573 = v571;
                  (v572->__on_zero_shared)(v572);
                  std::__shared_weak_count::__release_weak(v572);
                  v571 = v573;
                }
              }

              (*(*v571 + 88))(v571, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v570 = v695;
            }

            v574 = (4 * v178);
            v575 = v568 - 1;
            if (v575)
            {
              for (i6 = 0; i6 != v575; ++i6)
              {
                if (v574)
                {
                  v577 = v574;
                  v578 = v570;
                  do
                  {
                    sub_2718388F8(v177, v578++);
                    --v577;
                  }

                  while (v577);
                }

                v570 += v569;
              }
            }

            for (; v574; --v574)
            {
              sub_2718388F8(v177, v570++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 38:
      v692 = &unk_28810D5F8;
      sub_27168F7B8(a3, &v693);
      v46 = *a2;
      v205 = v703;
      v206 = v693;
      if (!v693)
      {
        goto LABEL_995;
      }

      v207 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v207->__on_zero_shared)(v207);
          std::__shared_weak_count::__release_weak(v207);
        }

        v206 = v693;
        v208 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v206;
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v206 = v209;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v206 + 96))(&v689);
      }

      else
      {
LABEL_995:
        v689 = 0;
      }

      if (!v696)
      {
        goto LABEL_1171;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v622 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v623 = v702;
      v301 = v695;
      if (v704 == 1 && v695)
      {
        v624 = v693;
        v625 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v625->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v626 = v624;
            (v625->__on_zero_shared)(v625);
            std::__shared_weak_count::__release_weak(v625);
            v624 = v626;
          }
        }

        (*(*v624 + 88))(v624, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v301 = v695;
      }

      v172 = (4 * v205);
      v627 = v622 - 1;
      if (v627)
      {
        v628 = 0;
        v629 = 2 * v623;
        do
        {
          if (v172)
          {
            v630 = 0;
            v631 = *(v46 + 40);
            do
            {
              if (v631)
              {
                v632 = *(v46 + 24);
                LOBYTE(v690) = *(v46 + 32);
                sub_271120E64(v632, &v690, 1);
              }

              MEMORY[0x2743BE830](*(v46 + 24), v301[v630]);
              v631 = *(v46 + 40) + 1;
              *(v46 + 40) = v631;
              ++v630;
            }

            while (v172 != v630);
          }

          v301 = (v301 + v629);
          ++v628;
        }

        while (v628 != v627);
      }

LABEL_1170:
      v690 = v301;
      v691 = v172;
      sub_271839348(v46, &v690);
LABEL_1171:
      v687 = v689;
      v689 = 0;
      if (!v687)
      {
        goto LABEL_1158;
      }

      goto LABEL_1157;
    case 39:
      v692 = &unk_28810D578;
      sub_27168FD54(a3, &v693);
      v76 = *a2;
      v77 = v703;
      v78 = v693;
      if (!v693)
      {
        goto LABEL_562;
      }

      v79 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v693;
        v80 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v78 + 96))(&v690);
      }

      else
      {
LABEL_562:
        v690 = 0;
      }

      if (!v696)
      {
        goto LABEL_1156;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v357 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v358 = v702;
      v359 = v695;
      if (v704 == 1 && v695)
      {
        v360 = v693;
        v361 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v361->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v362 = v360;
            (v361->__on_zero_shared)(v361);
            std::__shared_weak_count::__release_weak(v361);
            v360 = v362;
          }
        }

        (*(*v360 + 88))(v360, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v359 = v695;
      }

      v363 = (4 * v77);
      v364 = v357 - 1;
      if (!v364)
      {
        goto LABEL_578;
      }

      if (v363)
      {
        for (i7 = 0; i7 != v364; ++i7)
        {
          v366 = 2 * v363;
          v367 = v359;
          do
          {
            sub_2718389E0(v76, v367);
            v367 += 2;
            v366 -= 2;
          }

          while (v366);
          v359 += 2 * v358;
        }

LABEL_578:
        if (v363)
        {
          v368 = 2 * v363;
          do
          {
            sub_2718389E0(v76, v359);
            v359 += 2;
            v368 -= 2;
          }

          while (v368);
        }
      }

LABEL_1156:
      v687 = v690;
      v690 = 0;
      if (v687)
      {
LABEL_1157:
        (*(*v687 + 8))(v687);
      }

LABEL_1158:
      v688 = v694;
      if (v694)
      {
        if (!atomic_fetch_add(&v694->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v688->__on_zero_shared)(v688);
          std::__shared_weak_count::__release_weak(v688);
        }
      }

      return;
    case 40:
      v692 = &unk_28810D438;
      sub_2716902F0(a3, &v693);
      v58 = *a2;
      v59 = v703;
      v60 = v693;
      if (!v693)
      {
        goto LABEL_506;
      }

      v61 = v694;
      if (v694)
      {
        atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v693;
        v62 = v694;
        if (v694)
        {
          atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v705 == 1)
      {
        (*(*v60 + 96))(&v690);
      }

      else
      {
LABEL_506:
        v690 = 0;
      }

      if (v696)
      {
        if (v697)
        {
          v322 = v698;
          if (v698)
          {
            v323 = v702;
            v324 = v695;
            if (v704 == 1 && v695)
            {
              v325 = v693;
              v326 = v694;
              if (v694)
              {
                atomic_fetch_add_explicit(&v694->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v326->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v327 = v325;
                  (v326->__on_zero_shared)(v326);
                  std::__shared_weak_count::__release_weak(v326);
                  v325 = v327;
                }
              }

              (*(*v325 + 88))(v325, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v324 = v695;
            }

            v328 = (4 * v59);
            v329 = v322 - 1;
            if (v329)
            {
              for (i8 = 0; i8 != v329; ++i8)
              {
                if (v328)
                {
                  v331 = 4 * v328;
                  v332 = v324;
                  do
                  {
                    sub_271838C54(v58, v332++);
                    v331 -= 4;
                  }

                  while (v331);
                }

                v324 += v323;
              }
            }

            if (v328)
            {
              v680 = 4 * v328;
              do
              {
                sub_271838C54(v58, v324++);
                v680 -= 4;
              }

              while (v680);
            }
          }
        }
      }

      goto LABEL_1156;
    default:
      return;
  }
}

void sub_2716E7348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_2716E8220(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v704 = &unk_28810E1F8;
      sub_2715EF504(a3, &v705);
      v4 = *a2;
      v5 = v708;
      v6 = v705;
      if (!v705)
      {
        goto LABEL_934;
      }

      v7 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v705;
        v8 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v6 + 96))(&v718);
      }

      else
      {
LABEL_934:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v579 = v709;
      if (!v709)
      {
        break;
      }

      v580 = v711;
      v581 = v707;
      if (v712 == 1 && v707)
      {
        v582 = v705;
        v583 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v584 = v582;
            (v583->__on_zero_shared)(v583);
            std::__shared_weak_count::__release_weak(v583);
            v582 = v584;
          }
        }

        (*(*v582 + 88))(v582, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v581 = v707;
      }

      v585 = v579 - 1;
      if (v579 == 1)
      {
        goto LABEL_949;
      }

      if (v5)
      {
        v586 = 0;
        do
        {
          v587 = v5;
          v588 = v581;
          do
          {
            (*(*v4 + 80))(v4, v588);
            v588 = (v588 + 1);
            --v587;
          }

          while (v587);
          v581 = (v581 + v580);
          ++v586;
        }

        while (v586 != v585);
LABEL_949:
        if (v5)
        {
          do
          {
            (*(*v4 + 80))(v4, v581);
            v581 = (v581 + 1);
            --v5;
          }

          while (v5);
        }
      }

      break;
    case 2:
      v704 = &unk_28810DB78;
      sub_2715EFA94(a3, &v705);
      v178 = *a2;
      v179 = v708;
      v180 = v705;
      if (!v705)
      {
        goto LABEL_915;
      }

      v181 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v705;
        v182 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v180 + 96))(&v718);
      }

      else
      {
LABEL_915:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v568 = v709;
      if (!v709)
      {
        break;
      }

      v569 = v711;
      v570 = v707;
      if (v712 == 1 && v707)
      {
        v571 = v705;
        v572 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v572->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v573 = v571;
            (v572->__on_zero_shared)(v572);
            std::__shared_weak_count::__release_weak(v572);
            v571 = v573;
          }
        }

        (*(*v571 + 88))(v571, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v570 = v707;
      }

      v574 = v568 - 1;
      if (v568 == 1)
      {
        goto LABEL_930;
      }

      if (v179)
      {
        v575 = 0;
        do
        {
          v576 = 2 * v179;
          v577 = v570;
          do
          {
            (*(*v178 + 96))(v178, v577++);
            v576 -= 2;
          }

          while (v576);
          v570 += v569;
          ++v575;
        }

        while (v575 != v574);
LABEL_930:
        if (v179)
        {
          v578 = 2 * v179;
          do
          {
            (*(*v178 + 96))(v178, v570++);
            v578 -= 2;
          }

          while (v578);
        }
      }

      break;
    case 3:
      v704 = &unk_28810D4B8;
      sub_271683A48(a3, &v705);
      v172 = *a2;
      v173 = v708;
      v174 = v705;
      if (!v705)
      {
        goto LABEL_896;
      }

      v175 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v705;
        v176 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v174 + 96))(&v718);
      }

      else
      {
LABEL_896:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v557 = v709;
      if (!v709)
      {
        break;
      }

      v558 = v711;
      v559 = v707;
      if (v712 == 1 && v707)
      {
        v560 = v705;
        v561 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v561->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v562 = v560;
            (v561->__on_zero_shared)(v561);
            std::__shared_weak_count::__release_weak(v561);
            v560 = v562;
          }
        }

        (*(*v560 + 88))(v560, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v559 = v707;
      }

      v563 = v557 - 1;
      if (!v563)
      {
        goto LABEL_911;
      }

      if (v173)
      {
        v564 = 0;
        v565 = 2 * v558;
        do
        {
          for (i = 0; i != v173; ++i)
          {
            v703 = v559[i];
            (*(*v172 + 96))(v172, &v703);
          }

          v559 = (v559 + v565);
          ++v564;
        }

        while (v564 != v563);
LABEL_911:
        if (v173)
        {
          v567 = 2 * v173;
          do
          {
            v703 = *v559;
            (*(*v172 + 96))(v172, &v703);
            ++v559;
            v567 -= 2;
          }

          while (v567);
        }
      }

      break;
    case 4:
      v704 = &unk_28810D378;
      sub_271683F50(a3, &v705);
      v106 = *a2;
      v107 = v708;
      v108 = v705;
      if (!v705)
      {
        goto LABEL_679;
      }

      v109 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v705;
        v110 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v108 + 96))(&v718);
      }

      else
      {
LABEL_679:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v428 = v709;
      if (!v709)
      {
        break;
      }

      v429 = v711;
      v430 = v707;
      if (v712 == 1 && v707)
      {
        v431 = v705;
        v432 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v432->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v433 = v431;
            (v432->__on_zero_shared)(v432);
            std::__shared_weak_count::__release_weak(v432);
            v431 = v433;
          }
        }

        (*(*v431 + 88))(v431, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v430 = v707;
      }

      v434 = v428 - 1;
      if (v428 == 1)
      {
        goto LABEL_694;
      }

      if (v107)
      {
        v435 = 0;
        do
        {
          v436 = 4 * v107;
          v437 = v430;
          do
          {
            (*(*v106 + 128))(v106, v437);
            v437 += 2;
            v436 -= 4;
          }

          while (v436);
          v430 += 2 * v429;
          ++v435;
        }

        while (v435 != v434);
LABEL_694:
        if (v107)
        {
          v438 = 4 * v107;
          do
          {
            (*(*v106 + 128))(v106, v430);
            v430 += 2;
            v438 -= 4;
          }

          while (v438);
        }
      }

      break;
    case 5:
      v704 = &unk_28810D2B8;
      sub_271684458(a3, &v705);
      v154 = *a2;
      v155 = v715;
      v156 = v705;
      if (!v705)
      {
        goto LABEL_837;
      }

      v157 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v705;
        v158 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v156 + 96))(&v718);
      }

      else
      {
LABEL_837:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v522 = v710;
      if (!v710)
      {
        break;
      }

      v523 = v714;
      v524 = v707;
      if (v716 == 1 && v707)
      {
        v525 = v705;
        v526 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v526->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v527 = v525;
            (v526->__on_zero_shared)(v526);
            std::__shared_weak_count::__release_weak(v526);
            v525 = v527;
          }
        }

        (*(*v525 + 88))(v525, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v524 = v707;
      }

      v528 = (2 * v155);
      v529 = v522 - 1;
      if (!v529)
      {
        goto LABEL_853;
      }

      if (v528)
      {
        for (j = 0; j != v529; ++j)
        {
          v531 = v528;
          v532 = v524;
          do
          {
            (*(*v154 + 80))(v154, v532);
            v532 = (v532 + 1);
            --v531;
          }

          while (v531);
          v524 = (v524 + v523);
        }

LABEL_853:
        if (v528)
        {
          do
          {
            (*(*v154 + 80))(v154, v524);
            v524 = (v524 + 1);
            --v528;
          }

          while (v528);
        }
      }

      break;
    case 6:
      v704 = &unk_28810D238;
      sub_2716849F0(a3, &v705);
      v100 = *a2;
      v101 = v715;
      v102 = v705;
      if (!v705)
      {
        goto LABEL_659;
      }

      v103 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v103->__on_zero_shared)(v103);
          std::__shared_weak_count::__release_weak(v103);
        }

        v102 = v705;
        v104 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v105 = v102;
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
            v102 = v105;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v102 + 96))(&v718);
      }

      else
      {
LABEL_659:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v416 = v710;
      if (!v710)
      {
        break;
      }

      v417 = v714;
      v418 = v707;
      if (v716 == 1 && v707)
      {
        v419 = v705;
        v420 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v420->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v421 = v419;
            (v420->__on_zero_shared)(v420);
            std::__shared_weak_count::__release_weak(v420);
            v419 = v421;
          }
        }

        (*(*v419 + 88))(v419, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v418 = v707;
      }

      v422 = (2 * v101);
      v423 = v416 - 1;
      if (!v423)
      {
        goto LABEL_675;
      }

      if (v422)
      {
        for (k = 0; k != v423; ++k)
        {
          v425 = 2 * v422;
          v426 = v418;
          do
          {
            (*(*v100 + 96))(v100, v426++);
            v425 -= 2;
          }

          while (v425);
          v418 += v417;
        }

LABEL_675:
        if (v422)
        {
          v427 = 2 * v422;
          do
          {
            (*(*v100 + 96))(v100, v418++);
            v427 -= 2;
          }

          while (v427);
        }
      }

      break;
    case 7:
      v704 = &unk_28810D178;
      sub_271684F8C(a3, &v705);
      v70 = *a2;
      v71 = v715;
      v72 = v705;
      if (!v705)
      {
        goto LABEL_559;
      }

      v73 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v705;
        v74 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v72 + 96))(&v718);
      }

      else
      {
LABEL_559:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v357 = v710;
      if (!v710)
      {
        break;
      }

      v358 = v714;
      v359 = v707;
      if (v716 == 1 && v707)
      {
        v360 = v705;
        v361 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v361->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v362 = v360;
            (v361->__on_zero_shared)(v361);
            std::__shared_weak_count::__release_weak(v361);
            v360 = v362;
          }
        }

        (*(*v360 + 88))(v360, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v359 = v707;
      }

      v363 = (2 * v71);
      v364 = v357 - 1;
      if (!v364)
      {
        goto LABEL_575;
      }

      if (v363)
      {
        v365 = 0;
        v366 = 2 * v358;
        do
        {
          v367 = 0;
          do
          {
            v703 = v359[v367];
            (*(*v70 + 96))(v70, &v703);
            ++v367;
          }

          while (v363 != v367);
          v359 = (v359 + v366);
          ++v365;
        }

        while (v365 != v364);
LABEL_575:
        if (v363)
        {
          v368 = 2 * v363;
          do
          {
            v703 = *v359;
            (*(*v70 + 96))(v70, &v703);
            ++v359;
            v368 -= 2;
          }

          while (v368);
        }
      }

      break;
    case 8:
      v704 = &unk_28810D0B8;
      sub_271685528(a3, &v705);
      v166 = *a2;
      v167 = v715;
      v168 = v705;
      if (!v705)
      {
        goto LABEL_876;
      }

      v169 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v705;
        v170 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v168 + 96))(&v718);
      }

      else
      {
LABEL_876:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v545 = v710;
      if (!v710)
      {
        break;
      }

      v546 = v714;
      v547 = v707;
      if (v716 == 1 && v707)
      {
        v548 = v705;
        v549 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v549->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v550 = v548;
            (v549->__on_zero_shared)(v549);
            std::__shared_weak_count::__release_weak(v549);
            v548 = v550;
          }
        }

        (*(*v548 + 88))(v548, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v547 = v707;
      }

      v551 = (2 * v167);
      v552 = v545 - 1;
      if (!v552)
      {
        goto LABEL_892;
      }

      if (v551)
      {
        for (m = 0; m != v552; ++m)
        {
          v554 = 4 * v551;
          v555 = v547;
          do
          {
            (*(*v166 + 128))(v166, v555);
            v555 += 2;
            v554 -= 4;
          }

          while (v554);
          v547 += 2 * v546;
        }

LABEL_892:
        if (v551)
        {
          v556 = 4 * v551;
          do
          {
            (*(*v166 + 128))(v166, v547);
            v547 += 2;
            v556 -= 4;
          }

          while (v556);
        }
      }

      break;
    case 9:
      v704 = &unk_28810D038;
      sub_271685AC4(a3, &v705);
      v148 = *a2;
      v149 = v715;
      v150 = v705;
      if (!v705)
      {
        goto LABEL_818;
      }

      v151 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v705;
        v152 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v150 + 96))(&v718);
      }

      else
      {
LABEL_818:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v511 = v710;
      if (!v710)
      {
        break;
      }

      v512 = v714;
      v513 = v707;
      if (v716 == 1 && v707)
      {
        v514 = v705;
        v515 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v515->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v516 = v514;
            (v515->__on_zero_shared)(v515);
            std::__shared_weak_count::__release_weak(v515);
            v514 = v516;
          }
        }

        (*(*v514 + 88))(v514, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v513 = v707;
      }

      v517 = (3 * v149);
      v518 = v511 - 1;
      if (v511 == 1)
      {
        goto LABEL_834;
      }

      if (v149)
      {
        v519 = 0;
        do
        {
          v520 = (3 * v149);
          v521 = v513;
          do
          {
            (*(*v148 + 80))(v148, v521);
            v521 = (v521 + 1);
            --v520;
          }

          while (v520);
          v513 = (v513 + v512);
          ++v519;
        }

        while (v519 != v518);
LABEL_834:
        if (v149)
        {
          do
          {
            (*(*v148 + 80))(v148, v513);
            v513 = (v513 + 1);
            --v517;
          }

          while (v517);
        }
      }

      break;
    case 10:
      v704 = &unk_28810E738;
      sub_27168605C(a3, &v705);
      v196 = *a2;
      v197 = v715;
      v198 = v705;
      if (!v705)
      {
        goto LABEL_991;
      }

      v199 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v199->__on_zero_shared)(v199);
          std::__shared_weak_count::__release_weak(v199);
        }

        v198 = v705;
        v200 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v198;
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
            v198 = v201;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v198 + 96))(&v718);
      }

      else
      {
LABEL_991:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v611 = v710;
      if (!v710)
      {
        break;
      }

      v612 = v714;
      v613 = v707;
      if (v716 == 1 && v707)
      {
        v614 = v705;
        v615 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v615->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v616 = v614;
            (v615->__on_zero_shared)(v615);
            std::__shared_weak_count::__release_weak(v615);
            v614 = v616;
          }
        }

        (*(*v614 + 88))(v614, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v613 = v707;
      }

      v617 = v611 - 1;
      if (v611 == 1)
      {
        goto LABEL_1007;
      }

      if (v197)
      {
        v618 = 0;
        do
        {
          v619 = 2 * (3 * v197);
          v620 = v613;
          do
          {
            (*(*v196 + 96))(v196, v620++);
            v619 -= 2;
          }

          while (v619);
          v613 += v612;
          ++v618;
        }

        while (v618 != v617);
LABEL_1007:
        if (v197)
        {
          v621 = 2 * (3 * v197);
          do
          {
            (*(*v196 + 96))(v196, v613++);
            v621 -= 2;
          }

          while (v621);
        }
      }

      break;
    case 11:
      v704 = &unk_28810E6B8;
      sub_2716865F8(a3, &v705);
      v190 = *a2;
      v191 = v715;
      v192 = v705;
      if (!v705)
      {
        goto LABEL_971;
      }

      v193 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v705;
        v194 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v192 + 96))(&v718);
      }

      else
      {
LABEL_971:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v600 = v710;
      if (!v710)
      {
        break;
      }

      v601 = v714;
      v602 = v707;
      if (v716 == 1 && v707)
      {
        v603 = v705;
        v604 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v604->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v605 = v603;
            (v604->__on_zero_shared)(v604);
            std::__shared_weak_count::__release_weak(v604);
            v603 = v605;
          }
        }

        (*(*v603 + 88))(v603, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v602 = v707;
      }

      v606 = v600 - 1;
      if (!v606)
      {
        goto LABEL_987;
      }

      if (v191)
      {
        v607 = 0;
        v608 = 2 * v601;
        do
        {
          v609 = 0;
          do
          {
            v703 = v602[v609];
            (*(*v190 + 96))(v190, &v703);
            ++v609;
          }

          while (3 * v191 != v609);
          v602 = (v602 + v608);
          ++v607;
        }

        while (v607 != v606);
LABEL_987:
        if (v191)
        {
          v610 = 2 * (3 * v191);
          do
          {
            v703 = *v602;
            (*(*v190 + 96))(v190, &v703);
            ++v602;
            v610 -= 2;
          }

          while (v610);
        }
      }

      break;
    case 12:
      v704 = &unk_28810E638;
      sub_271686B94(a3, &v705);
      v28 = *a2;
      v29 = v715;
      v30 = v705;
      if (!v705)
      {
        goto LABEL_421;
      }

      v31 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v705;
        v32 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v30 + 96))(&v718);
      }

      else
      {
LABEL_421:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v278 = v710;
      if (!v710)
      {
        break;
      }

      v279 = v714;
      v280 = v707;
      if (v716 == 1 && v707)
      {
        v281 = v705;
        v282 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v282->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v283 = v281;
            (v282->__on_zero_shared)(v282);
            std::__shared_weak_count::__release_weak(v282);
            v281 = v283;
          }
        }

        (*(*v281 + 88))(v281, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v280 = v707;
      }

      v284 = v278 - 1;
      if (v278 == 1)
      {
        goto LABEL_437;
      }

      if (v29)
      {
        v285 = 0;
        do
        {
          v286 = 4 * (3 * v29);
          v287 = v280;
          do
          {
            (*(*v28 + 128))(v28, v287);
            v287 += 2;
            v286 -= 4;
          }

          while (v286);
          v280 += 2 * v279;
          ++v285;
        }

        while (v285 != v284);
LABEL_437:
        if (v29)
        {
          v288 = 4 * (3 * v29);
          do
          {
            (*(*v28 + 128))(v28, v280);
            v280 += 2;
            v288 -= 4;
          }

          while (v288);
        }
      }

      break;
    case 13:
      v704 = &unk_28810E5B8;
      sub_271687130(a3, &v705);
      v52 = *a2;
      v53 = v715;
      v54 = v705;
      if (!v705)
      {
        goto LABEL_500;
      }

      v55 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v705;
        v56 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v54 + 96))(&v718);
      }

      else
      {
LABEL_500:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v323 = v710;
      if (!v710)
      {
        break;
      }

      v324 = v714;
      v325 = v707;
      if (v716 == 1 && v707)
      {
        v326 = v705;
        v327 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v327->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v328 = v326;
            (v327->__on_zero_shared)(v327);
            std::__shared_weak_count::__release_weak(v327);
            v326 = v328;
          }
        }

        (*(*v326 + 88))(v326, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v325 = v707;
      }

      v329 = (4 * v53);
      v330 = v323 - 1;
      if (!v330)
      {
        goto LABEL_516;
      }

      if (v329)
      {
        for (n = 0; n != v330; ++n)
        {
          v332 = v329;
          v333 = v325;
          do
          {
            (*(*v52 + 80))(v52, v333);
            v333 = (v333 + 1);
            --v332;
          }

          while (v332);
          v325 = (v325 + v324);
        }

LABEL_516:
        if (v329)
        {
          do
          {
            (*(*v52 + 80))(v52, v325);
            v325 = (v325 + 1);
            --v329;
          }

          while (v329);
        }
      }

      break;
    case 14:
      v704 = &unk_28810E538;
      sub_2716876C8(a3, &v705);
      v46 = *a2;
      v47 = v715;
      v48 = v705;
      if (!v705)
      {
        goto LABEL_480;
      }

      v49 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v705;
        v50 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v48 + 96))(&v718);
      }

      else
      {
LABEL_480:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v311 = v710;
      if (!v710)
      {
        break;
      }

      v312 = v714;
      v313 = v707;
      if (v716 == 1 && v707)
      {
        v314 = v705;
        v315 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v315->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v316 = v314;
            (v315->__on_zero_shared)(v315);
            std::__shared_weak_count::__release_weak(v315);
            v314 = v316;
          }
        }

        (*(*v314 + 88))(v314, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v313 = v707;
      }

      v317 = (4 * v47);
      v318 = v311 - 1;
      if (!v318)
      {
        goto LABEL_496;
      }

      if (v317)
      {
        for (ii = 0; ii != v318; ++ii)
        {
          v320 = 2 * v317;
          v321 = v313;
          do
          {
            (*(*v46 + 96))(v46, v321++);
            v320 -= 2;
          }

          while (v320);
          v313 += v312;
        }

LABEL_496:
        if (v317)
        {
          v322 = 2 * v317;
          do
          {
            (*(*v46 + 96))(v46, v313++);
            v322 -= 2;
          }

          while (v322);
        }
      }

      break;
    case 15:
      v704 = &unk_28810E4B8;
      sub_271687C64(a3, &v705);
      v220 = *a2;
      v221 = v715;
      v222 = v705;
      if (!v705)
      {
        goto LABEL_1070;
      }

      v223 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v223->__on_zero_shared)(v223);
          std::__shared_weak_count::__release_weak(v223);
        }

        v222 = v705;
        v224 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v222;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v222 = v225;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v222 + 96))(&v718);
      }

      else
      {
LABEL_1070:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v656 = v710;
      if (!v710)
      {
        break;
      }

      v657 = v714;
      v658 = v707;
      if (v716 == 1 && v707)
      {
        v659 = v705;
        v660 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v660->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v661 = v659;
            (v660->__on_zero_shared)(v660);
            std::__shared_weak_count::__release_weak(v660);
            v659 = v661;
          }
        }

        (*(*v659 + 88))(v659, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v658 = v707;
      }

      v662 = (4 * v221);
      v663 = v656 - 1;
      if (!v663)
      {
        goto LABEL_1086;
      }

      if (v662)
      {
        v664 = 0;
        v665 = 2 * v657;
        do
        {
          v666 = 0;
          do
          {
            v703 = v658[v666];
            (*(*v220 + 96))(v220, &v703);
            ++v666;
          }

          while (v662 != v666);
          v658 = (v658 + v665);
          ++v664;
        }

        while (v664 != v663);
LABEL_1086:
        if (v662)
        {
          v667 = 2 * v662;
          do
          {
            v703 = *v658;
            (*(*v220 + 96))(v220, &v703);
            ++v658;
            v667 -= 2;
          }

          while (v667);
        }
      }

      break;
    case 16:
      v704 = &unk_28810E438;
      sub_271688200(a3, &v705);
      v160 = *a2;
      v161 = v715;
      v162 = v705;
      if (!v705)
      {
        goto LABEL_856;
      }

      v163 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v705;
        v164 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v162 + 96))(&v718);
      }

      else
      {
LABEL_856:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v533 = v710;
      if (!v710)
      {
        break;
      }

      v534 = v714;
      v535 = v707;
      if (v716 == 1 && v707)
      {
        v536 = v705;
        v537 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v535 = v707;
      }

      v539 = (4 * v161);
      v540 = v533 - 1;
      if (!v540)
      {
        goto LABEL_872;
      }

      if (v539)
      {
        for (jj = 0; jj != v540; ++jj)
        {
          v542 = 4 * v539;
          v543 = v535;
          do
          {
            (*(*v160 + 128))(v160, v543);
            v543 += 2;
            v542 -= 4;
          }

          while (v542);
          v535 += 2 * v534;
        }

LABEL_872:
        if (v539)
        {
          v544 = 4 * v539;
          do
          {
            (*(*v160 + 128))(v160, v535);
            v535 += 2;
            v544 -= 4;
          }

          while (v544);
        }
      }

      break;
    case 17:
      v704 = &unk_28810E3B8;
      sub_27168879C(a3, &v705);
      v226 = *a2;
      v227 = v715;
      v228 = v705;
      if (!v705)
      {
        goto LABEL_1090;
      }

      v229 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v229->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v229->__on_zero_shared)(v229);
          std::__shared_weak_count::__release_weak(v229);
        }

        v228 = v705;
        v230 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v231 = v228;
            (v230->__on_zero_shared)(v230);
            std::__shared_weak_count::__release_weak(v230);
            v228 = v231;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v228 + 96))(&v718);
      }

      else
      {
LABEL_1090:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v668 = v710;
      if (!v710)
      {
        break;
      }

      v669 = v714;
      v670 = v707;
      if (v716 == 1 && v707)
      {
        v671 = v705;
        v672 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v672->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v673 = v671;
            (v672->__on_zero_shared)(v672);
            std::__shared_weak_count::__release_weak(v672);
            v671 = v673;
          }
        }

        (*(*v671 + 88))(v671, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v670 = v707;
      }

      v674 = (3 * v227);
      v675 = v668 - 1;
      if (v668 == 1)
      {
        goto LABEL_1106;
      }

      if (v227)
      {
        v676 = 0;
        do
        {
          v677 = (3 * v227);
          v678 = v670;
          do
          {
            (*(*v226 + 80))(v226, v678);
            v678 = (v678 + 1);
            --v677;
          }

          while (v677);
          v670 = (v670 + v669);
          ++v676;
        }

        while (v676 != v675);
LABEL_1106:
        if (v227)
        {
          do
          {
            (*(*v226 + 80))(v226, v670);
            v670 = (v670 + 1);
            --v674;
          }

          while (v674);
        }
      }

      break;
    case 18:
      v704 = &unk_28810E338;
      sub_271688D34(a3, &v705);
      v64 = *a2;
      v65 = v715;
      v66 = v705;
      if (!v705)
      {
        goto LABEL_539;
      }

      v67 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v705;
        v68 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v66 + 96))(&v718);
      }

      else
      {
LABEL_539:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v346 = v710;
      if (!v710)
      {
        break;
      }

      v347 = v714;
      v348 = v707;
      if (v716 == 1 && v707)
      {
        v349 = v705;
        v350 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v350->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v351 = v349;
            (v350->__on_zero_shared)(v350);
            std::__shared_weak_count::__release_weak(v350);
            v349 = v351;
          }
        }

        (*(*v349 + 88))(v349, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v348 = v707;
      }

      v352 = v346 - 1;
      if (v346 == 1)
      {
        goto LABEL_555;
      }

      if (v65)
      {
        v353 = 0;
        do
        {
          v354 = 2 * (3 * v65);
          v355 = v348;
          do
          {
            (*(*v64 + 96))(v64, v355++);
            v354 -= 2;
          }

          while (v354);
          v348 += v347;
          ++v353;
        }

        while (v353 != v352);
LABEL_555:
        if (v65)
        {
          v356 = 2 * (3 * v65);
          do
          {
            (*(*v64 + 96))(v64, v348++);
            v356 -= 2;
          }

          while (v356);
        }
      }

      break;
    case 19:
      v704 = &unk_28810E2B8;
      sub_2716892D0(a3, &v705);
      v16 = *a2;
      v17 = v715;
      v18 = v705;
      if (!v705)
      {
        goto LABEL_382;
      }

      v19 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v705;
        v20 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v18 + 96))(&v718);
      }

      else
      {
LABEL_382:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v256 = v710;
      if (!v710)
      {
        break;
      }

      v257 = v714;
      v258 = v707;
      if (v716 == 1 && v707)
      {
        v259 = v705;
        v260 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v261 = v259;
            (v260->__on_zero_shared)(v260);
            std::__shared_weak_count::__release_weak(v260);
            v259 = v261;
          }
        }

        (*(*v259 + 88))(v259, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v258 = v707;
      }

      v262 = v256 - 1;
      if (!v262)
      {
        goto LABEL_398;
      }

      if (v17)
      {
        v263 = 0;
        v264 = 2 * v257;
        do
        {
          v265 = 0;
          do
          {
            v703 = v258[v265];
            (*(*v16 + 96))(v16, &v703);
            ++v265;
          }

          while (3 * v17 != v265);
          v258 = (v258 + v264);
          ++v263;
        }

        while (v263 != v262);
LABEL_398:
        if (v17)
        {
          v266 = 2 * (3 * v17);
          do
          {
            v703 = *v258;
            (*(*v16 + 96))(v16, &v703);
            ++v258;
            v266 -= 2;
          }

          while (v266);
        }
      }

      break;
    case 20:
      v704 = &unk_28810E178;
      sub_27168986C(a3, &v705);
      v208 = *a2;
      v209 = v715;
      v210 = v705;
      if (!v705)
      {
        goto LABEL_1030;
      }

      v211 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v211->__on_zero_shared)(v211);
          std::__shared_weak_count::__release_weak(v211);
        }

        v210 = v705;
        v212 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v210;
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
            v210 = v213;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v210 + 96))(&v718);
      }

      else
      {
LABEL_1030:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v633 = v710;
      if (!v710)
      {
        break;
      }

      v634 = v714;
      v635 = v707;
      if (v716 == 1 && v707)
      {
        v636 = v705;
        v637 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v637->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v638 = v636;
            (v637->__on_zero_shared)(v637);
            std::__shared_weak_count::__release_weak(v637);
            v636 = v638;
          }
        }

        (*(*v636 + 88))(v636, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v635 = v707;
      }

      v639 = v633 - 1;
      if (v633 == 1)
      {
        goto LABEL_1046;
      }

      if (v209)
      {
        v640 = 0;
        do
        {
          v641 = 4 * (3 * v209);
          v642 = v635;
          do
          {
            (*(*v208 + 128))(v208, v642);
            v642 += 2;
            v641 -= 4;
          }

          while (v641);
          v635 += 2 * v634;
          ++v640;
        }

        while (v640 != v639);
LABEL_1046:
        if (v209)
        {
          v643 = 4 * (3 * v209);
          do
          {
            (*(*v208 + 128))(v208, v635);
            v635 += 2;
            v643 -= 4;
          }

          while (v643);
        }
      }

      break;
    case 21:
      v704 = &unk_28810E0B8;
      sub_2715EFF9C(a3, &v705);
      v238 = *a2;
      v239 = v715;
      v240 = v705;
      if (!v705)
      {
        goto LABEL_1129;
      }

      v241 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v241->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v241->__on_zero_shared)(v241);
          std::__shared_weak_count::__release_weak(v241);
        }

        v240 = v705;
        v242 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v240;
            (v242->__on_zero_shared)(v242);
            std::__shared_weak_count::__release_weak(v242);
            v240 = v243;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v240 + 96))(&v718);
      }

      else
      {
LABEL_1129:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v690 = v710;
      if (!v710)
      {
        break;
      }

      v691 = v714;
      v692 = v707;
      if (v716 == 1 && v707)
      {
        v693 = v705;
        v694 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v694->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v695 = v693;
            (v694->__on_zero_shared)(v694);
            std::__shared_weak_count::__release_weak(v694);
            v693 = v695;
          }
        }

        (*(*v693 + 88))(v693, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v692 = v707;
      }

      v696 = (3 * v239);
      v697 = v690 - 1;
      if (v690 == 1)
      {
        goto LABEL_1145;
      }

      if (v239)
      {
        v698 = 0;
        do
        {
          v699 = (3 * v239);
          v700 = v692;
          do
          {
            (*(*v238 + 80))(v238, v700);
            v700 = (v700 + 1);
            --v699;
          }

          while (v699);
          v692 = (v692 + v691);
          ++v698;
        }

        while (v698 != v697);
LABEL_1145:
        if (v239)
        {
          do
          {
            (*(*v238 + 80))(v238, v692);
            v692 = (v692 + 1);
            --v696;
          }

          while (v696);
        }
      }

      break;
    case 22:
      v704 = &unk_28810DFF8;
      sub_271689E08(a3, &v705);
      v82 = *a2;
      v83 = v715;
      v84 = v705;
      if (!v705)
      {
        goto LABEL_599;
      }

      v85 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v705;
        v86 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v84 + 96))(&v718);
      }

      else
      {
LABEL_599:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v381 = v710;
      if (!v710)
      {
        break;
      }

      v382 = v714;
      v383 = v707;
      if (v716 == 1 && v707)
      {
        v384 = v705;
        v385 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v385->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v386 = v384;
            (v385->__on_zero_shared)(v385);
            std::__shared_weak_count::__release_weak(v385);
            v384 = v386;
          }
        }

        (*(*v384 + 88))(v384, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v383 = v707;
      }

      v387 = v381 - 1;
      if (v381 == 1)
      {
        goto LABEL_615;
      }

      if (v83)
      {
        v388 = 0;
        do
        {
          v389 = 2 * (3 * v83);
          v390 = v383;
          do
          {
            (*(*v82 + 96))(v82, v390++);
            v389 -= 2;
          }

          while (v389);
          v383 += v382;
          ++v388;
        }

        while (v388 != v387);
LABEL_615:
        if (v83)
        {
          v391 = 2 * (3 * v83);
          do
          {
            (*(*v82 + 96))(v82, v383++);
            v391 -= 2;
          }

          while (v391);
        }
      }

      break;
    case 23:
      v704 = &unk_28810DF78;
      sub_27168A3A4(a3, &v705);
      v232 = *a2;
      v233 = v715;
      v234 = v705;
      if (!v705)
      {
        goto LABEL_1109;
      }

      v235 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v235->__on_zero_shared)(v235);
          std::__shared_weak_count::__release_weak(v235);
        }

        v234 = v705;
        v236 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v237 = v234;
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
            v234 = v237;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v234 + 96))(&v718);
      }

      else
      {
LABEL_1109:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v679 = v710;
      if (!v710)
      {
        break;
      }

      v680 = v714;
      v681 = v707;
      if (v716 == 1 && v707)
      {
        v682 = v705;
        v683 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v683->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v684 = v682;
            (v683->__on_zero_shared)(v683);
            std::__shared_weak_count::__release_weak(v683);
            v682 = v684;
          }
        }

        (*(*v682 + 88))(v682, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v681 = v707;
      }

      v685 = v679 - 1;
      if (!v685)
      {
        goto LABEL_1125;
      }

      if (v233)
      {
        v686 = 0;
        v687 = 2 * v680;
        do
        {
          v688 = 0;
          do
          {
            v703 = v681[v688];
            (*(*v232 + 96))(v232, &v703);
            ++v688;
          }

          while (3 * v233 != v688);
          v681 = (v681 + v687);
          ++v686;
        }

        while (v686 != v685);
LABEL_1125:
        if (v233)
        {
          v689 = 2 * (3 * v233);
          do
          {
            v703 = *v681;
            (*(*v232 + 96))(v232, &v703);
            ++v681;
            v689 -= 2;
          }

          while (v689);
        }
      }

      break;
    case 24:
      v704 = &unk_28810DEF8;
      sub_27168A940(a3, &v705);
      v40 = *a2;
      v41 = v715;
      v42 = v705;
      if (!v705)
      {
        goto LABEL_460;
      }

      v43 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v705;
        v44 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v42 + 96))(&v718);
      }

      else
      {
LABEL_460:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v300 = v710;
      if (!v710)
      {
        break;
      }

      v301 = v714;
      v302 = v707;
      if (v716 == 1 && v707)
      {
        v303 = v705;
        v304 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v304->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v305 = v303;
            (v304->__on_zero_shared)(v304);
            std::__shared_weak_count::__release_weak(v304);
            v303 = v305;
          }
        }

        (*(*v303 + 88))(v303, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v707;
      }

      v306 = v300 - 1;
      if (v300 == 1)
      {
        goto LABEL_476;
      }

      if (v41)
      {
        v307 = 0;
        do
        {
          v308 = 4 * (3 * v41);
          v309 = v302;
          do
          {
            (*(*v40 + 128))(v40, v309);
            v309 += 2;
            v308 -= 4;
          }

          while (v308);
          v302 += 2 * v301;
          ++v307;
        }

        while (v307 != v306);
LABEL_476:
        if (v41)
        {
          v310 = 4 * (3 * v41);
          do
          {
            (*(*v40 + 128))(v40, v302);
            v302 += 2;
            v310 -= 4;
          }

          while (v310);
        }
      }

      break;
    case 25:
      v704 = &unk_28810DE38;
      sub_27168AEDC(a3, &v705);
      v22 = *a2;
      v23 = v715;
      v24 = v705;
      if (!v705)
      {
        goto LABEL_402;
      }

      v25 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v705;
        v26 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v24 + 96))(&v718);
      }

      else
      {
LABEL_402:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v267 = v710;
      if (!v710)
      {
        break;
      }

      v268 = v714;
      v269 = v707;
      if (v716 == 1 && v707)
      {
        v270 = v705;
        v271 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v272 = v270;
            (v271->__on_zero_shared)(v271);
            std::__shared_weak_count::__release_weak(v271);
            v270 = v272;
          }
        }

        (*(*v270 + 88))(v270, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v269 = v707;
      }

      v273 = (4 * v23);
      v274 = v267 - 1;
      if (!v274)
      {
        goto LABEL_418;
      }

      if (v273)
      {
        for (kk = 0; kk != v274; ++kk)
        {
          v276 = v273;
          v277 = v269;
          do
          {
            (*(*v22 + 80))(v22, v277);
            v277 = (v277 + 1);
            --v276;
          }

          while (v276);
          v269 = (v269 + v268);
        }

LABEL_418:
        if (v273)
        {
          do
          {
            (*(*v22 + 80))(v22, v269);
            v269 = (v269 + 1);
            --v273;
          }

          while (v273);
        }
      }

      break;
    case 26:
      v704 = &unk_28810DDB8;
      sub_27168B474(a3, &v705);
      v88 = *a2;
      v89 = v715;
      v90 = v705;
      if (!v705)
      {
        goto LABEL_619;
      }

      v91 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v705;
        v92 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v90 + 96))(&v718);
      }

      else
      {
LABEL_619:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v392 = v710;
      if (!v710)
      {
        break;
      }

      v393 = v714;
      v394 = v707;
      if (v716 == 1 && v707)
      {
        v395 = v705;
        v396 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v396->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v397 = v395;
            (v396->__on_zero_shared)(v396);
            std::__shared_weak_count::__release_weak(v396);
            v395 = v397;
          }
        }

        (*(*v395 + 88))(v395, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v394 = v707;
      }

      v398 = (4 * v89);
      v399 = v392 - 1;
      if (!v399)
      {
        goto LABEL_635;
      }

      if (v398)
      {
        for (mm = 0; mm != v399; ++mm)
        {
          v401 = 2 * v398;
          v402 = v394;
          do
          {
            (*(*v88 + 96))(v88, v402++);
            v401 -= 2;
          }

          while (v401);
          v394 += v393;
        }

LABEL_635:
        if (v398)
        {
          v403 = 2 * v398;
          do
          {
            (*(*v88 + 96))(v88, v394++);
            v403 -= 2;
          }

          while (v403);
        }
      }

      break;
    case 27:
      v704 = &unk_28810DD38;
      sub_27168BA10(a3, &v705);
      v10 = *a2;
      v11 = v715;
      v12 = v705;
      if (!v705)
      {
        goto LABEL_362;
      }

      v13 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v705;
        v14 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v12 + 96))(&v718);
      }

      else
      {
LABEL_362:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v244 = v710;
      if (!v710)
      {
        break;
      }

      v245 = v714;
      v246 = v707;
      if (v716 == 1 && v707)
      {
        v247 = v705;
        v248 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v249 = v247;
            (v248->__on_zero_shared)(v248);
            std::__shared_weak_count::__release_weak(v248);
            v247 = v249;
          }
        }

        (*(*v247 + 88))(v247, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v246 = v707;
      }

      v250 = (4 * v11);
      v251 = v244 - 1;
      if (!v251)
      {
        goto LABEL_378;
      }

      if (v250)
      {
        v252 = 0;
        v253 = 2 * v245;
        do
        {
          v254 = 0;
          do
          {
            v703 = v246[v254];
            (*(*v10 + 96))(v10, &v703);
            ++v254;
          }

          while (v250 != v254);
          v246 = (v246 + v253);
          ++v252;
        }

        while (v252 != v251);
LABEL_378:
        if (v250)
        {
          v255 = 2 * v250;
          do
          {
            v703 = *v246;
            (*(*v10 + 96))(v10, &v703);
            ++v246;
            v255 -= 2;
          }

          while (v255);
        }
      }

      break;
    case 28:
      v704 = &unk_28810DCB8;
      sub_27168BFAC(a3, &v705);
      v112 = *a2;
      v113 = v715;
      v114 = v705;
      if (!v705)
      {
        goto LABEL_698;
      }

      v115 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v705;
        v116 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v114 + 96))(&v718);
      }

      else
      {
LABEL_698:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v439 = v710;
      if (!v710)
      {
        break;
      }

      v440 = v714;
      v441 = v707;
      if (v716 == 1 && v707)
      {
        v442 = v705;
        v443 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v443->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v444 = v442;
            (v443->__on_zero_shared)(v443);
            std::__shared_weak_count::__release_weak(v443);
            v442 = v444;
          }
        }

        (*(*v442 + 88))(v442, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v441 = v707;
      }

      v445 = (4 * v113);
      v446 = v439 - 1;
      if (!v446)
      {
        goto LABEL_714;
      }

      if (v445)
      {
        for (nn = 0; nn != v446; ++nn)
        {
          v448 = 4 * v445;
          v449 = v441;
          do
          {
            (*(*v112 + 128))(v112, v449);
            v449 += 2;
            v448 -= 4;
          }

          while (v448);
          v441 += 2 * v440;
        }

LABEL_714:
        if (v445)
        {
          v450 = 4 * v445;
          do
          {
            (*(*v112 + 128))(v112, v441);
            v441 += 2;
            v450 -= 4;
          }

          while (v450);
        }
      }

      break;
    case 29:
      v704 = &unk_28810DC38;
      sub_27168C548(a3, &v705);
      v34 = *a2;
      v35 = v715;
      v36 = v705;
      if (!v705)
      {
        goto LABEL_441;
      }

      v37 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v705;
        v38 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v36 + 96))(&v718);
      }

      else
      {
LABEL_441:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v289 = v710;
      if (!v710)
      {
        break;
      }

      v290 = v714;
      v291 = v707;
      if (v716 == 1 && v707)
      {
        v292 = v705;
        v293 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v293->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v294 = v292;
            (v293->__on_zero_shared)(v293);
            std::__shared_weak_count::__release_weak(v293);
            v292 = v294;
          }
        }

        (*(*v292 + 88))(v292, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v291 = v707;
      }

      v295 = (4 * v35);
      v296 = v289 - 1;
      if (!v296)
      {
        goto LABEL_457;
      }

      if (v295)
      {
        for (i1 = 0; i1 != v296; ++i1)
        {
          v298 = v295;
          v299 = v291;
          do
          {
            (*(*v34 + 80))(v34, v299);
            v299 = (v299 + 1);
            --v298;
          }

          while (v298);
          v291 = (v291 + v290);
        }

LABEL_457:
        if (v295)
        {
          do
          {
            (*(*v34 + 80))(v34, v291);
            v291 = (v291 + 1);
            --v295;
          }

          while (v295);
        }
      }

      break;
    case 30:
      v704 = &unk_28810DAF8;
      sub_27168CAE0(a3, &v705);
      v130 = *a2;
      v131 = v715;
      v132 = v705;
      if (!v705)
      {
        goto LABEL_758;
      }

      v133 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v705;
        v134 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v132 + 96))(&v718);
      }

      else
      {
LABEL_758:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v475 = v710;
      if (!v710)
      {
        break;
      }

      v476 = v714;
      v477 = v707;
      if (v716 == 1 && v707)
      {
        v478 = v705;
        v479 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v479->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v480 = v478;
            (v479->__on_zero_shared)(v479);
            std::__shared_weak_count::__release_weak(v479);
            v478 = v480;
          }
        }

        (*(*v478 + 88))(v478, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v477 = v707;
      }

      v481 = (4 * v131);
      v482 = v475 - 1;
      if (!v482)
      {
        goto LABEL_774;
      }

      if (v481)
      {
        for (i2 = 0; i2 != v482; ++i2)
        {
          v484 = 2 * v481;
          v485 = v477;
          do
          {
            (*(*v130 + 96))(v130, v485++);
            v484 -= 2;
          }

          while (v484);
          v477 += v476;
        }

LABEL_774:
        if (v481)
        {
          v486 = 2 * v481;
          do
          {
            (*(*v130 + 96))(v130, v477++);
            v486 -= 2;
          }

          while (v486);
        }
      }

      break;
    case 31:
      v704 = &unk_28810DA38;
      sub_27168D07C(a3, &v705);
      v94 = *a2;
      v95 = v715;
      v96 = v705;
      if (!v705)
      {
        goto LABEL_639;
      }

      v97 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v705;
        v98 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v96 + 96))(&v718);
      }

      else
      {
LABEL_639:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v404 = v710;
      if (!v710)
      {
        break;
      }

      v405 = v714;
      v406 = v707;
      if (v716 == 1 && v707)
      {
        v407 = v705;
        v408 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v408->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v409 = v407;
            (v408->__on_zero_shared)(v408);
            std::__shared_weak_count::__release_weak(v408);
            v407 = v409;
          }
        }

        (*(*v407 + 88))(v407, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v406 = v707;
      }

      v410 = (4 * v95);
      v411 = v404 - 1;
      if (!v411)
      {
        goto LABEL_655;
      }

      if (v410)
      {
        v412 = 0;
        v413 = 2 * v405;
        do
        {
          v414 = 0;
          do
          {
            v703 = v406[v414];
            (*(*v94 + 96))(v94, &v703);
            ++v414;
          }

          while (v410 != v414);
          v406 = (v406 + v413);
          ++v412;
        }

        while (v412 != v411);
LABEL_655:
        if (v410)
        {
          v415 = 2 * v410;
          do
          {
            v703 = *v406;
            (*(*v94 + 96))(v94, &v703);
            ++v406;
            v415 -= 2;
          }

          while (v415);
        }
      }

      break;
    case 32:
      v704 = &unk_28810D978;
      sub_27168D618(a3, &v705);
      v142 = *a2;
      v143 = v715;
      v144 = v705;
      if (!v705)
      {
        goto LABEL_798;
      }

      v145 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v705;
        v146 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v144 + 96))(&v718);
      }

      else
      {
LABEL_798:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v499 = v710;
      if (!v710)
      {
        break;
      }

      v500 = v714;
      v501 = v707;
      if (v716 == 1 && v707)
      {
        v502 = v705;
        v503 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v503->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v504 = v502;
            (v503->__on_zero_shared)(v503);
            std::__shared_weak_count::__release_weak(v503);
            v502 = v504;
          }
        }

        (*(*v502 + 88))(v502, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v501 = v707;
      }

      v505 = (4 * v143);
      v506 = v499 - 1;
      if (!v506)
      {
        goto LABEL_814;
      }

      if (v505)
      {
        for (i3 = 0; i3 != v506; ++i3)
        {
          v508 = 4 * v505;
          v509 = v501;
          do
          {
            (*(*v142 + 128))(v142, v509);
            v509 += 2;
            v508 -= 4;
          }

          while (v508);
          v501 += 2 * v500;
        }

LABEL_814:
        if (v505)
        {
          v510 = 4 * v505;
          do
          {
            (*(*v142 + 128))(v142, v501);
            v501 += 2;
            v510 -= 4;
          }

          while (v510);
        }
      }

      break;
    case 33:
      v704 = &unk_28810D8F8;
      sub_27168DBB4(a3, &v705);
      v202 = *a2;
      v203 = v715;
      v204 = v705;
      if (!v705)
      {
        goto LABEL_1011;
      }

      v205 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v205->__on_zero_shared)(v205);
          std::__shared_weak_count::__release_weak(v205);
        }

        v204 = v705;
        v206 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v207 = v204;
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
            v204 = v207;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v204 + 96))(&v718);
      }

      else
      {
LABEL_1011:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v622 = v710;
      if (!v710)
      {
        break;
      }

      v623 = v714;
      v624 = v707;
      if (v716 == 1 && v707)
      {
        v625 = v705;
        v626 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v626->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v627 = v625;
            (v626->__on_zero_shared)(v626);
            std::__shared_weak_count::__release_weak(v626);
            v625 = v627;
          }
        }

        (*(*v625 + 88))(v625, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v624 = v707;
      }

      v628 = (4 * v203);
      v629 = v622 - 1;
      if (!v629)
      {
        goto LABEL_1027;
      }

      if (v628)
      {
        for (i4 = 0; i4 != v629; ++i4)
        {
          v631 = v628;
          v632 = v624;
          do
          {
            (*(*v202 + 80))(v202, v632);
            v632 = (v632 + 1);
            --v631;
          }

          while (v631);
          v624 = (v624 + v623);
        }

LABEL_1027:
        if (v628)
        {
          do
          {
            (*(*v202 + 80))(v202, v624);
            v624 = (v624 + 1);
            --v628;
          }

          while (v628);
        }
      }

      break;
    case 34:
      v704 = &unk_28810D878;
      sub_27168E14C(a3, &v705);
      v136 = *a2;
      v137 = v715;
      v138 = v705;
      if (!v705)
      {
        goto LABEL_778;
      }

      v139 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v705;
        v140 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v138 + 96))(&v718);
      }

      else
      {
LABEL_778:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v487 = v710;
      if (!v710)
      {
        break;
      }

      v488 = v714;
      v489 = v707;
      if (v716 == 1 && v707)
      {
        v490 = v705;
        v491 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v491->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v492 = v490;
            (v491->__on_zero_shared)(v491);
            std::__shared_weak_count::__release_weak(v491);
            v490 = v492;
          }
        }

        (*(*v490 + 88))(v490, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v489 = v707;
      }

      v493 = (4 * v137);
      v494 = v487 - 1;
      if (!v494)
      {
        goto LABEL_794;
      }

      if (v493)
      {
        for (i5 = 0; i5 != v494; ++i5)
        {
          v496 = 2 * v493;
          v497 = v489;
          do
          {
            (*(*v136 + 96))(v136, v497++);
            v496 -= 2;
          }

          while (v496);
          v489 += v488;
        }

LABEL_794:
        if (v493)
        {
          v498 = 2 * v493;
          do
          {
            (*(*v136 + 96))(v136, v489++);
            v498 -= 2;
          }

          while (v498);
        }
      }

      break;
    case 35:
      v704 = &unk_28810D7F8;
      sub_27168E6E8(a3, &v705);
      v124 = *a2;
      v125 = v715;
      v126 = v705;
      if (!v705)
      {
        goto LABEL_738;
      }

      v127 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v705;
        v128 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v126 + 96))(&v718);
      }

      else
      {
LABEL_738:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v463 = v710;
      if (!v710)
      {
        break;
      }

      v464 = v714;
      v465 = v707;
      if (v716 == 1 && v707)
      {
        v466 = v705;
        v467 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v467->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v468 = v466;
            (v467->__on_zero_shared)(v467);
            std::__shared_weak_count::__release_weak(v467);
            v466 = v468;
          }
        }

        (*(*v466 + 88))(v466, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v465 = v707;
      }

      v469 = (4 * v125);
      v470 = v463 - 1;
      if (!v470)
      {
        goto LABEL_754;
      }

      if (v469)
      {
        v471 = 0;
        v472 = 2 * v464;
        do
        {
          v473 = 0;
          do
          {
            v703 = v465[v473];
            (*(*v124 + 96))(v124, &v703);
            ++v473;
          }

          while (v469 != v473);
          v465 = (v465 + v472);
          ++v471;
        }

        while (v471 != v470);
LABEL_754:
        if (v469)
        {
          v474 = 2 * v469;
          do
          {
            v703 = *v465;
            (*(*v124 + 96))(v124, &v703);
            ++v465;
            v474 -= 2;
          }

          while (v474);
        }
      }

      break;
    case 36:
      v704 = &unk_28810D778;
      sub_27168EC84(a3, &v705);
      v118 = *a2;
      v119 = v715;
      v120 = v705;
      if (!v705)
      {
        goto LABEL_718;
      }

      v121 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v705;
        v122 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v120 + 96))(&v718);
      }

      else
      {
LABEL_718:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v451 = v710;
      if (!v710)
      {
        break;
      }

      v452 = v714;
      v453 = v707;
      if (v716 == 1 && v707)
      {
        v454 = v705;
        v455 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v455->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v456 = v454;
            (v455->__on_zero_shared)(v455);
            std::__shared_weak_count::__release_weak(v455);
            v454 = v456;
          }
        }

        (*(*v454 + 88))(v454, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v453 = v707;
      }

      v457 = (4 * v119);
      v458 = v451 - 1;
      if (!v458)
      {
        goto LABEL_734;
      }

      if (v457)
      {
        for (i6 = 0; i6 != v458; ++i6)
        {
          v460 = 4 * v457;
          v461 = v453;
          do
          {
            (*(*v118 + 128))(v118, v461);
            v461 += 2;
            v460 -= 4;
          }

          while (v460);
          v453 += 2 * v452;
        }

LABEL_734:
        if (v457)
        {
          v462 = 4 * v457;
          do
          {
            (*(*v118 + 128))(v118, v453);
            v453 += 2;
            v462 -= 4;
          }

          while (v462);
        }
      }

      break;
    case 37:
      v704 = &unk_28810D6B8;
      sub_27168F220(a3, &v705);
      v184 = *a2;
      v185 = v715;
      v186 = v705;
      if (!v705)
      {
        goto LABEL_952;
      }

      v187 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v705;
        v188 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v186 + 96))(&v718);
      }

      else
      {
LABEL_952:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v589 = v710;
      if (!v710)
      {
        break;
      }

      v590 = v714;
      v591 = v707;
      if (v716 == 1 && v707)
      {
        v592 = v705;
        v593 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v593->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v594 = v592;
            (v593->__on_zero_shared)(v593);
            std::__shared_weak_count::__release_weak(v593);
            v592 = v594;
          }
        }

        (*(*v592 + 88))(v592, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v591 = v707;
      }

      v595 = (4 * v185);
      v596 = v589 - 1;
      if (!v596)
      {
        goto LABEL_968;
      }

      if (v595)
      {
        for (i7 = 0; i7 != v596; ++i7)
        {
          v598 = v595;
          v599 = v591;
          do
          {
            (*(*v184 + 80))(v184, v599);
            v599 = (v599 + 1);
            --v598;
          }

          while (v598);
          v591 = (v591 + v590);
        }

LABEL_968:
        if (v595)
        {
          do
          {
            (*(*v184 + 80))(v184, v591);
            v591 = (v591 + 1);
            --v595;
          }

          while (v595);
        }
      }

      break;
    case 38:
      v704 = &unk_28810D5F8;
      sub_27168F7B8(a3, &v705);
      v214 = *a2;
      v215 = v715;
      v216 = v705;
      if (!v705)
      {
        goto LABEL_1050;
      }

      v217 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v705;
        v218 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v216 + 96))(&v718);
      }

      else
      {
LABEL_1050:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v644 = v710;
      if (!v710)
      {
        break;
      }

      v645 = v714;
      v646 = v707;
      if (v716 == 1 && v707)
      {
        v647 = v705;
        v648 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v648->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v649 = v647;
            (v648->__on_zero_shared)(v648);
            std::__shared_weak_count::__release_weak(v648);
            v647 = v649;
          }
        }

        (*(*v647 + 88))(v647, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v646 = v707;
      }

      v650 = (4 * v215);
      v651 = v644 - 1;
      if (!v651)
      {
        goto LABEL_1066;
      }

      if (v650)
      {
        for (i8 = 0; i8 != v651; ++i8)
        {
          v653 = 2 * v650;
          v654 = v646;
          do
          {
            (*(*v214 + 96))(v214, v654++);
            v653 -= 2;
          }

          while (v653);
          v646 += v645;
        }

LABEL_1066:
        if (v650)
        {
          v655 = 2 * v650;
          do
          {
            (*(*v214 + 96))(v214, v646++);
            v655 -= 2;
          }

          while (v655);
        }
      }

      break;
    case 39:
      v704 = &unk_28810D578;
      sub_27168FD54(a3, &v705);
      v76 = *a2;
      v77 = v715;
      v78 = v705;
      if (!v705)
      {
        goto LABEL_579;
      }

      v79 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v705;
        v80 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v78 + 96))(&v718);
      }

      else
      {
LABEL_579:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v369 = v710;
      if (!v710)
      {
        break;
      }

      v370 = v714;
      v371 = v707;
      if (v716 == 1 && v707)
      {
        v372 = v705;
        v373 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v373->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v374 = v372;
            (v373->__on_zero_shared)(v373);
            std::__shared_weak_count::__release_weak(v373);
            v372 = v374;
          }
        }

        (*(*v372 + 88))(v372, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v371 = v707;
      }

      v375 = (4 * v77);
      v376 = v369 - 1;
      if (!v376)
      {
        goto LABEL_595;
      }

      if (v375)
      {
        v377 = 0;
        v378 = 2 * v370;
        do
        {
          v379 = 0;
          do
          {
            v703 = v371[v379];
            (*(*v76 + 96))(v76, &v703);
            ++v379;
          }

          while (v375 != v379);
          v371 = (v371 + v378);
          ++v377;
        }

        while (v377 != v376);
LABEL_595:
        if (v375)
        {
          v380 = 2 * v375;
          do
          {
            v703 = *v371;
            (*(*v76 + 96))(v76, &v703);
            ++v371;
            v380 -= 2;
          }

          while (v380);
        }
      }

      break;
    case 40:
      v704 = &unk_28810D438;
      sub_2716902F0(a3, &v705);
      v58 = *a2;
      v59 = v715;
      v60 = v705;
      if (!v705)
      {
        goto LABEL_519;
      }

      v61 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v705;
        v62 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v60 + 96))(&v718);
      }

      else
      {
LABEL_519:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v334 = v710;
      if (!v710)
      {
        break;
      }

      v335 = v714;
      v336 = v707;
      if (v716 == 1 && v707)
      {
        v337 = v705;
        v338 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v338->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v339 = v337;
            (v338->__on_zero_shared)(v338);
            std::__shared_weak_count::__release_weak(v338);
            v337 = v339;
          }
        }

        (*(*v337 + 88))(v337, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v336 = v707;
      }

      v340 = (4 * v59);
      v341 = v334 - 1;
      if (!v341)
      {
        goto LABEL_535;
      }

      if (v340)
      {
        for (i9 = 0; i9 != v341; ++i9)
        {
          v343 = 4 * v340;
          v344 = v336;
          do
          {
            (*(*v58 + 128))(v58, v344);
            v344 += 2;
            v343 -= 4;
          }

          while (v343);
          v336 += 2 * v335;
        }

LABEL_535:
        if (v340)
        {
          v345 = 4 * v340;
          do
          {
            (*(*v58 + 128))(v58, v336);
            v336 += 2;
            v345 -= 4;
          }

          while (v345);
        }
      }

      break;
    default:
      return;
  }

  v701 = v718;
  v718 = 0;
  if (v701)
  {
    (*(*v701 + 8))(v701);
  }

  v702 = v706;
  if (v706)
  {
    if (!atomic_fetch_add(&v706->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v702->__on_zero_shared)(v702);
      std::__shared_weak_count::__release_weak(v702);
    }
  }
}