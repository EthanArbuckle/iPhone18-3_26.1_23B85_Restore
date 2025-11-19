void sub_27161FE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 - 88);
  *(v4 - 88) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_271573610(va);
  _Unwind_Resume(a1);
}

void sub_271620D3C(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v770 = &unk_28810E1B8;
      sub_27160528C(&v771, a3);
      v4 = *a2;
      v5 = v774;
      v6 = v771;
      if (!v771)
      {
        goto LABEL_873;
      }

      v7 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v771;
        v8 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v6 + 96))(&v784);
      }

      else
      {
LABEL_873:
        v784 = 0;
      }

      if (v774)
      {
        v590 = v775;
        if (v775)
        {
          v591 = v777;
          v592 = v773;
          if (v778 == 1 && v773)
          {
            v593 = v771;
            v594 = v772;
            if (v772)
            {
              atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v594->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v595 = v593;
                (v594->__on_zero_shared)(v594);
                std::__shared_weak_count::__release_weak(v594);
                v593 = v595;
              }
            }

            (*(*v593 + 88))(v593, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v592 = v773;
          }

          v596 = v590 - 1;
          if (v590 != 1)
          {
            v597 = 0;
            do
            {
              if (v5)
              {
                v598 = *(v4 + 48);
                v599 = v5;
                v600 = v592;
                do
                {
                  sub_27183F824(v598, v600++);
                  --v599;
                }

                while (v599);
              }

              v592 += v591;
              ++v597;
            }

            while (v597 != v596);
          }

          if (v5)
          {
            v748 = *(v4 + 48);
            do
            {
              sub_27183F824(v748, v592++);
              --v5;
            }

            while (v5);
          }
        }
      }

      break;
    case 2:
      v770 = &unk_28810DB38;
      sub_2716056F4(&v771, a3);
      v178 = *a2;
      v179 = v774;
      v180 = v771;
      if (!v771)
      {
        goto LABEL_857;
      }

      v181 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v771;
        v182 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v180 + 96))(&v784);
      }

      else
      {
LABEL_857:
        v784 = 0;
      }

      if (v774)
      {
        v578 = v775;
        if (v775)
        {
          v579 = v777;
          v580 = v773;
          if (v778 == 1 && v773)
          {
            v581 = v771;
            v582 = v772;
            if (v772)
            {
              atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v582->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v583 = v581;
                (v582->__on_zero_shared)(v582);
                std::__shared_weak_count::__release_weak(v582);
                v581 = v583;
              }
            }

            (*(*v581 + 88))(v581, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v580 = v773;
          }

          v584 = 2 * v179;
          v585 = v578 - 1;
          if (v578 != 1)
          {
            v586 = 0;
            do
            {
              if (v179)
              {
                v587 = *(v178 + 48);
                v588 = 2 * v179;
                v589 = v580;
                do
                {
                  sub_27183F9D0(v587, v589++);
                  v588 -= 2;
                }

                while (v588);
              }

              v580 += v579;
              ++v586;
            }

            while (v586 != v585);
          }

          if (v179)
          {
            v747 = *(v178 + 48);
            do
            {
              sub_27183F9D0(v747, v580++);
              v584 -= 2;
            }

            while (v584);
          }
        }
      }

      break;
    case 3:
      v770 = &unk_28810D478;
      sub_271605B5C(&v771, a3);
      v172 = *a2;
      v173 = v774;
      v174 = v771;
      if (!v771)
      {
        goto LABEL_838;
      }

      v175 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v771;
        v176 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v174 + 96))(&v784);
      }

      else
      {
LABEL_838:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      v567 = v775;
      if (!v775)
      {
        break;
      }

      v568 = v777;
      v569 = v773;
      if (v778 == 1 && v773)
      {
        v570 = v771;
        v571 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v571->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v572 = v570;
            (v571->__on_zero_shared)(v571);
            std::__shared_weak_count::__release_weak(v571);
            v570 = v572;
          }
        }

        (*(*v570 + 88))(v570, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v569 = v773;
      }

      v573 = v567 - 1;
      if (!v573)
      {
        goto LABEL_853;
      }

      if (v173)
      {
        v574 = 0;
        v575 = 2 * v568;
        do
        {
          for (i = 0; i != v173; ++i)
          {
            v769 = 0;
            sub_27183F9D0(*(v172 + 48), &v769);
            v569[i] = v769;
          }

          v569 = (v569 + v575);
          ++v574;
        }

        while (v574 != v573);
LABEL_853:
        if (v173)
        {
          v577 = 2 * v173;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v172 + 48), &v769);
            *v569++ = v769;
            v577 -= 2;
          }

          while (v577);
        }
      }

      break;
    case 4:
      v770 = &unk_28810D338;
      sub_27160604C(&v771, a3);
      v106 = *a2;
      v107 = v774;
      v108 = v771;
      if (!v771)
      {
        goto LABEL_649;
      }

      v109 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v771;
        v110 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v779 == 1)
      {
        (*(*v108 + 96))(&v784);
      }

      else
      {
LABEL_649:
        v784 = 0;
      }

      if (v774)
      {
        v435 = v775;
        if (v775)
        {
          v436 = v777;
          v437 = v773;
          if (v778 == 1 && v773)
          {
            v438 = v771;
            v439 = v772;
            if (v772)
            {
              atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v439->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v440 = v438;
                (v439->__on_zero_shared)(v439);
                std::__shared_weak_count::__release_weak(v439);
                v438 = v440;
              }
            }

            (*(*v438 + 88))(v438, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v437 = v773;
          }

          v441 = 4 * v107;
          v442 = v435 - 1;
          if (v435 != 1)
          {
            v443 = 0;
            do
            {
              if (v107)
              {
                v444 = *(v106 + 48);
                v445 = 4 * v107;
                v446 = v437;
                do
                {
                  sub_271840060(v444, v446++);
                  v445 -= 4;
                }

                while (v445);
              }

              v437 += v436;
              ++v443;
            }

            while (v443 != v442);
          }

          if (v107)
          {
            v730 = *(v106 + 48);
            do
            {
              sub_271840060(v730, v437++);
              v441 -= 4;
            }

            while (v441);
          }
        }
      }

      break;
    case 5:
      v770 = &unk_28810D278;
      sub_27160653C(&v771, a3);
      v154 = *a2;
      v155 = v781;
      v156 = v771;
      if (!v771)
      {
        goto LABEL_787;
      }

      v157 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v771;
        v158 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v156 + 96))(&v784);
      }

      else
      {
LABEL_787:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v531 = v776;
          if (v776)
          {
            v532 = v780;
            v533 = v773;
            if (v782 == 1 && v773)
            {
              v534 = v771;
              v535 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v535->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v536 = v534;
                  (v535->__on_zero_shared)(v535);
                  std::__shared_weak_count::__release_weak(v535);
                  v534 = v536;
                }
              }

              (*(*v534 + 88))(v534, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v533 = v773;
            }

            v537 = (2 * v155);
            v538 = v531 - 1;
            if (v531 != 1)
            {
              v539 = 0;
              do
              {
                if (v537)
                {
                  v540 = *(v154 + 48);
                  v541 = v537;
                  v542 = v533;
                  do
                  {
                    sub_27183F824(v540, v542++);
                    --v541;
                  }

                  while (v541);
                }

                v533 += v532;
                ++v539;
              }

              while (v539 != v538);
            }

            if (v537)
            {
              v742 = *(v154 + 48);
              do
              {
                sub_27183F824(v742, v533++);
                --v537;
              }

              while (v537);
            }
          }
        }
      }

      break;
    case 6:
      v770 = &unk_28810D1F8;
      sub_271606A4C(&v771, a3);
      v100 = *a2;
      v101 = v781;
      v102 = v771;
      if (!v771)
      {
        goto LABEL_632;
      }

      v103 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v103->__on_zero_shared)(v103);
          std::__shared_weak_count::__release_weak(v103);
        }

        v102 = v771;
        v104 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v105 = v102;
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
            v102 = v105;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v102 + 96))(&v784);
      }

      else
      {
LABEL_632:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v423 = v776;
          if (v776)
          {
            v424 = v780;
            v425 = v773;
            if (v782 == 1 && v773)
            {
              v426 = v771;
              v427 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v427->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v428 = v426;
                  (v427->__on_zero_shared)(v427);
                  std::__shared_weak_count::__release_weak(v427);
                  v426 = v428;
                }
              }

              (*(*v426 + 88))(v426, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v425 = v773;
            }

            v429 = (2 * v101);
            v430 = v423 - 1;
            if (v423 != 1)
            {
              v431 = 0;
              do
              {
                if (v429)
                {
                  v432 = *(v100 + 48);
                  v433 = 2 * v429;
                  v434 = v425;
                  do
                  {
                    sub_27183F9D0(v432, v434++);
                    v433 -= 2;
                  }

                  while (v433);
                }

                v425 += v424;
                ++v431;
              }

              while (v431 != v430);
            }

            if (v429)
            {
              v728 = *(v100 + 48);
              v729 = 2 * v429;
              do
              {
                sub_27183F9D0(v728, v425++);
                v729 -= 2;
              }

              while (v729);
            }
          }
        }
      }

      break;
    case 7:
      v770 = &unk_28810D138;
      sub_27160742C(&v771, a3);
      v70 = *a2;
      v71 = v781;
      v72 = v771;
      if (!v771)
      {
        goto LABEL_538;
      }

      v73 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v771;
        v74 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v72 + 96))(&v784);
      }

      else
      {
LABEL_538:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v363 = v776;
      if (!v776)
      {
        break;
      }

      v364 = v780;
      v365 = v773;
      if (v782 == 1 && v773)
      {
        v366 = v771;
        v367 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v367->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v368 = v366;
            (v367->__on_zero_shared)(v367);
            std::__shared_weak_count::__release_weak(v367);
            v366 = v368;
          }
        }

        (*(*v366 + 88))(v366, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v365 = v773;
      }

      v369 = (2 * v71);
      v370 = v363 - 1;
      if (!v370)
      {
        goto LABEL_554;
      }

      if (v369)
      {
        v371 = 0;
        v372 = 2 * v364;
        do
        {
          v373 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v70 + 48), &v769);
            v365[v373++] = v769;
          }

          while (v369 != v373);
          v365 = (v365 + v372);
          ++v371;
        }

        while (v371 != v370);
LABEL_554:
        if (v369)
        {
          v374 = 2 * v369;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v70 + 48), &v769);
            *v365++ = v769;
            v374 -= 2;
          }

          while (v374);
        }
      }

      break;
    case 8:
      v770 = &unk_28810D078;
      sub_2716078C4(&v771, a3);
      v166 = *a2;
      v167 = v781;
      v168 = v771;
      if (!v771)
      {
        goto LABEL_821;
      }

      v169 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v771;
        v170 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v168 + 96))(&v784);
      }

      else
      {
LABEL_821:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v555 = v776;
          if (v776)
          {
            v556 = v780;
            v557 = v773;
            if (v782 == 1 && v773)
            {
              v558 = v771;
              v559 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v559->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v560 = v558;
                  (v559->__on_zero_shared)(v559);
                  std::__shared_weak_count::__release_weak(v559);
                  v558 = v560;
                }
              }

              (*(*v558 + 88))(v558, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v557 = v773;
            }

            v561 = (2 * v167);
            v562 = v555 - 1;
            if (v555 != 1)
            {
              v563 = 0;
              do
              {
                if (v561)
                {
                  v564 = *(v166 + 48);
                  v565 = 4 * v561;
                  v566 = v557;
                  do
                  {
                    sub_271840060(v564, v566++);
                    v565 -= 4;
                  }

                  while (v565);
                }

                v557 += v556;
                ++v563;
              }

              while (v563 != v562);
            }

            if (v561)
            {
              v745 = *(v166 + 48);
              v746 = 4 * v561;
              do
              {
                sub_271840060(v745, v557++);
                v746 -= 4;
              }

              while (v746);
            }
          }
        }
      }

      break;
    case 9:
      v770 = &unk_28810CFF8;
      sub_271607DD4(&v771, a3);
      v148 = *a2;
      v149 = v781;
      v150 = v771;
      if (!v771)
      {
        goto LABEL_770;
      }

      v151 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v771;
        v152 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v150 + 96))(&v784);
      }

      else
      {
LABEL_770:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v519 = v776;
          if (v776)
          {
            v520 = v780;
            v521 = v773;
            if (v782 == 1 && v773)
            {
              v522 = v771;
              v523 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v523->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v524 = v522;
                  (v523->__on_zero_shared)(v523);
                  std::__shared_weak_count::__release_weak(v523);
                  v522 = v524;
                }
              }

              (*(*v522 + 88))(v522, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v521 = v773;
            }

            v525 = (3 * v149);
            v526 = v519 - 1;
            if (v519 != 1)
            {
              v527 = 0;
              do
              {
                if (v149)
                {
                  v528 = *(v148 + 48);
                  v529 = (3 * v149);
                  v530 = v521;
                  do
                  {
                    sub_27183F824(v528, v530++);
                    --v529;
                  }

                  while (v529);
                }

                v521 += v520;
                ++v527;
              }

              while (v527 != v526);
            }

            if (3 * v149)
            {
              v741 = *(v148 + 48);
              do
              {
                sub_27183F824(v741, v521++);
                --v525;
              }

              while (v525);
            }
          }
        }
      }

      break;
    case 10:
      v770 = &unk_28810E6F8;
      sub_27160882C(&v771, a3);
      v196 = *a2;
      v197 = v781;
      v198 = v771;
      if (!v771)
      {
        goto LABEL_926;
      }

      v199 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v199->__on_zero_shared)(v199);
          std::__shared_weak_count::__release_weak(v199);
        }

        v198 = v771;
        v200 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v198;
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
            v198 = v201;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v198 + 96))(&v784);
      }

      else
      {
LABEL_926:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v624 = v776;
          if (v776)
          {
            v625 = v780;
            v626 = v773;
            if (v782 == 1 && v773)
            {
              v627 = v771;
              v628 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v628->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v629 = v627;
                  (v628->__on_zero_shared)(v628);
                  std::__shared_weak_count::__release_weak(v628);
                  v627 = v629;
                }
              }

              (*(*v627 + 88))(v627, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v626 = v773;
            }

            v630 = (3 * v197);
            v631 = v624 - 1;
            if (v624 != 1)
            {
              v632 = 0;
              do
              {
                if (v197)
                {
                  v633 = *(v196 + 48);
                  v634 = 2 * (3 * v197);
                  v635 = v626;
                  do
                  {
                    sub_27183F9D0(v633, v635++);
                    v634 -= 2;
                  }

                  while (v634);
                }

                v626 += v625;
                ++v632;
              }

              while (v632 != v631);
              v630 = (3 * v197);
            }

            if (v630)
            {
              v763 = *(v196 + 48);
              v764 = 2 * v630;
              do
              {
                sub_27183F9D0(v763, v626++);
                v764 -= 2;
              }

              while (v764);
            }
          }
        }
      }

      break;
    case 11:
      v770 = &unk_28810E678;
      sub_271609284(&v771, a3);
      v190 = *a2;
      v191 = v781;
      v192 = v771;
      if (!v771)
      {
        goto LABEL_906;
      }

      v193 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v771;
        v194 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v192 + 96))(&v784);
      }

      else
      {
LABEL_906:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v613 = v776;
      if (!v776)
      {
        break;
      }

      v614 = v780;
      v615 = v773;
      if (v782 == 1 && v773)
      {
        v616 = v771;
        v617 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v617->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v618 = v616;
            (v617->__on_zero_shared)(v617);
            std::__shared_weak_count::__release_weak(v617);
            v616 = v618;
          }
        }

        (*(*v616 + 88))(v616, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v615 = v773;
      }

      v619 = v613 - 1;
      if (!v619)
      {
        goto LABEL_922;
      }

      if (v191)
      {
        v620 = 0;
        v621 = 2 * v614;
        do
        {
          v622 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v190 + 48), &v769);
            v615[v622++] = v769;
          }

          while (3 * v191 != v622);
          v615 = (v615 + v621);
          ++v620;
        }

        while (v620 != v619);
LABEL_922:
        if (v191)
        {
          v623 = 2 * (3 * v191);
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v190 + 48), &v769);
            *v615++ = v769;
            v623 -= 2;
          }

          while (v623);
        }
      }

      break;
    case 12:
      v770 = &unk_28810E5F8;
      sub_271609CDC(&v771, a3);
      v28 = *a2;
      v29 = v781;
      v30 = v771;
      if (!v771)
      {
        goto LABEL_419;
      }

      v31 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v771;
        v32 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v30 + 96))(&v784);
      }

      else
      {
LABEL_419:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v279 = v776;
          if (v776)
          {
            v280 = v780;
            v281 = v773;
            if (v782 == 1 && v773)
            {
              v282 = v771;
              v283 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v284 = v282;
                  (v283->__on_zero_shared)(v283);
                  std::__shared_weak_count::__release_weak(v283);
                  v282 = v284;
                }
              }

              (*(*v282 + 88))(v282, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v281 = v773;
            }

            v285 = (3 * v29);
            v286 = v279 - 1;
            if (v279 != 1)
            {
              v287 = 0;
              do
              {
                if (v29)
                {
                  v288 = *(v28 + 48);
                  v289 = 4 * (3 * v29);
                  v290 = v281;
                  do
                  {
                    sub_271840060(v288, v290++);
                    v289 -= 4;
                  }

                  while (v289);
                }

                v281 += v280;
                ++v287;
              }

              while (v287 != v286);
              v285 = (3 * v29);
            }

            if (v285)
            {
              v755 = *(v28 + 48);
              v756 = 4 * v285;
              do
              {
                sub_271840060(v755, v281++);
                v756 -= 4;
              }

              while (v756);
            }
          }
        }
      }

      break;
    case 13:
      v770 = &unk_28810E578;
      sub_27160A734(&v771, a3);
      v52 = *a2;
      v53 = v781;
      v54 = v771;
      if (!v771)
      {
        goto LABEL_487;
      }

      v55 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v771;
        v56 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v54 + 96))(&v784);
      }

      else
      {
LABEL_487:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v327 = v776;
          if (v776)
          {
            v328 = v780;
            v329 = v773;
            if (v782 == 1 && v773)
            {
              v330 = v771;
              v331 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v331->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v332 = v330;
                  (v331->__on_zero_shared)(v331);
                  std::__shared_weak_count::__release_weak(v331);
                  v330 = v332;
                }
              }

              (*(*v330 + 88))(v330, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v329 = v773;
            }

            v333 = (4 * v53);
            v334 = v327 - 1;
            if (v327 != 1)
            {
              v335 = 0;
              do
              {
                if (v333)
                {
                  v336 = *(v52 + 48);
                  v337 = v333;
                  v338 = v329;
                  do
                  {
                    sub_27183F824(v336, v338++);
                    --v337;
                  }

                  while (v337);
                }

                v329 += v328;
                ++v335;
              }

              while (v335 != v334);
            }

            if (v333)
            {
              v723 = *(v52 + 48);
              do
              {
                sub_27183F824(v723, v329++);
                --v333;
              }

              while (v333);
            }
          }
        }
      }

      break;
    case 14:
      v770 = &unk_28810E4F8;
      sub_27160B18C(&v771, a3);
      v46 = *a2;
      v47 = v781;
      v48 = v771;
      if (!v771)
      {
        goto LABEL_470;
      }

      v49 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v771;
        v50 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v48 + 96))(&v784);
      }

      else
      {
LABEL_470:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v315 = v776;
          if (v776)
          {
            v316 = v780;
            v317 = v773;
            if (v782 == 1 && v773)
            {
              v318 = v771;
              v319 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v319->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v320 = v318;
                  (v319->__on_zero_shared)(v319);
                  std::__shared_weak_count::__release_weak(v319);
                  v318 = v320;
                }
              }

              (*(*v318 + 88))(v318, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v317 = v773;
            }

            v321 = (4 * v47);
            v322 = v315 - 1;
            if (v315 != 1)
            {
              v323 = 0;
              do
              {
                if (v321)
                {
                  v324 = *(v46 + 48);
                  v325 = 2 * v321;
                  v326 = v317;
                  do
                  {
                    sub_27183F9D0(v324, v326++);
                    v325 -= 2;
                  }

                  while (v325);
                }

                v317 += v316;
                ++v323;
              }

              while (v323 != v322);
            }

            if (v321)
            {
              v721 = *(v46 + 48);
              v722 = 2 * v321;
              do
              {
                sub_27183F9D0(v721, v317++);
                v722 -= 2;
              }

              while (v722);
            }
          }
        }
      }

      break;
    case 15:
      v770 = &unk_28810E478;
      sub_27160BBE4(&v771, a3);
      v220 = *a2;
      v221 = v781;
      v222 = v771;
      if (!v771)
      {
        goto LABEL_994;
      }

      v223 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v223->__on_zero_shared)(v223);
          std::__shared_weak_count::__release_weak(v223);
        }

        v222 = v771;
        v224 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v222;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v222 = v225;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v222 + 96))(&v784);
      }

      else
      {
LABEL_994:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v672 = v776;
      if (!v776)
      {
        break;
      }

      v673 = v780;
      v674 = v773;
      if (v782 == 1 && v773)
      {
        v675 = v771;
        v676 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v676->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v677 = v675;
            (v676->__on_zero_shared)(v676);
            std::__shared_weak_count::__release_weak(v676);
            v675 = v677;
          }
        }

        (*(*v675 + 88))(v675, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v674 = v773;
      }

      v678 = (4 * v221);
      v679 = v672 - 1;
      if (!v679)
      {
        goto LABEL_1010;
      }

      if (v678)
      {
        v680 = 0;
        v681 = 2 * v673;
        do
        {
          v682 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v220 + 48), &v769);
            v674[v682++] = v769;
          }

          while (v678 != v682);
          v674 = (v674 + v681);
          ++v680;
        }

        while (v680 != v679);
LABEL_1010:
        if (v678)
        {
          v683 = 2 * v678;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v220 + 48), &v769);
            *v674++ = v769;
            v683 -= 2;
          }

          while (v683);
        }
      }

      break;
    case 16:
      v770 = &unk_28810E3F8;
      sub_27160C63C(&v771, a3);
      v160 = *a2;
      v161 = v781;
      v162 = v771;
      if (!v771)
      {
        goto LABEL_804;
      }

      v163 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v771;
        v164 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v162 + 96))(&v784);
      }

      else
      {
LABEL_804:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v543 = v776;
          if (v776)
          {
            v544 = v780;
            v545 = v773;
            if (v782 == 1 && v773)
            {
              v546 = v771;
              v547 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v547->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v548 = v546;
                  (v547->__on_zero_shared)(v547);
                  std::__shared_weak_count::__release_weak(v547);
                  v546 = v548;
                }
              }

              (*(*v546 + 88))(v546, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v545 = v773;
            }

            v549 = (4 * v161);
            v550 = v543 - 1;
            if (v543 != 1)
            {
              v551 = 0;
              do
              {
                if (v549)
                {
                  v552 = *(v160 + 48);
                  v553 = 4 * v549;
                  v554 = v545;
                  do
                  {
                    sub_271840060(v552, v554++);
                    v553 -= 4;
                  }

                  while (v553);
                }

                v545 += v544;
                ++v551;
              }

              while (v551 != v550);
            }

            if (v549)
            {
              v743 = *(v160 + 48);
              v744 = 4 * v549;
              do
              {
                sub_271840060(v743, v545++);
                v744 -= 4;
              }

              while (v744);
            }
          }
        }
      }

      break;
    case 17:
      v770 = &unk_28810E378;
      sub_27160D01C(&v771, a3);
      v226 = *a2;
      v227 = v781;
      v228 = v771;
      if (!v771)
      {
        goto LABEL_1014;
      }

      v229 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v229->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v229->__on_zero_shared)(v229);
          std::__shared_weak_count::__release_weak(v229);
        }

        v228 = v771;
        v230 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v231 = v228;
            (v230->__on_zero_shared)(v230);
            std::__shared_weak_count::__release_weak(v230);
            v228 = v231;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v228 + 96))(&v784);
      }

      else
      {
LABEL_1014:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v684 = v776;
          if (v776)
          {
            v685 = v780;
            v686 = v773;
            if (v782 == 1 && v773)
            {
              v687 = v771;
              v688 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v688->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v689 = v687;
                  (v688->__on_zero_shared)(v688);
                  std::__shared_weak_count::__release_weak(v688);
                  v687 = v689;
                }
              }

              (*(*v687 + 88))(v687, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v686 = v773;
            }

            v690 = (3 * v227);
            v691 = v684 - 1;
            if (v684 != 1)
            {
              v692 = 0;
              do
              {
                if (v227)
                {
                  v693 = *(v226 + 48);
                  v694 = (3 * v227);
                  v695 = v686;
                  do
                  {
                    sub_27183F824(v693, v695++);
                    --v694;
                  }

                  while (v694);
                }

                v686 += v685;
                ++v692;
              }

              while (v692 != v691);
            }

            if (3 * v227)
            {
              v753 = *(v226 + 48);
              do
              {
                sub_27183F824(v753, v686++);
                --v690;
              }

              while (v690);
            }
          }
        }
      }

      break;
    case 18:
      v770 = &unk_28810E2F8;
      sub_27160D918(&v771, a3);
      v64 = *a2;
      v65 = v781;
      v66 = v771;
      if (!v771)
      {
        goto LABEL_521;
      }

      v67 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v771;
        v68 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v66 + 96))(&v784);
      }

      else
      {
LABEL_521:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v351 = v776;
          if (v776)
          {
            v352 = v780;
            v353 = v773;
            if (v782 == 1 && v773)
            {
              v354 = v771;
              v355 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v355->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v356 = v354;
                  (v355->__on_zero_shared)(v355);
                  std::__shared_weak_count::__release_weak(v355);
                  v354 = v356;
                }
              }

              (*(*v354 + 88))(v354, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v353 = v773;
            }

            v357 = (3 * v65);
            v358 = v351 - 1;
            if (v351 != 1)
            {
              v359 = 0;
              do
              {
                if (v65)
                {
                  v360 = *(v64 + 48);
                  v361 = 2 * (3 * v65);
                  v362 = v353;
                  do
                  {
                    sub_27183F9D0(v360, v362++);
                    v361 -= 2;
                  }

                  while (v361);
                }

                v353 += v352;
                ++v359;
              }

              while (v359 != v358);
              v357 = (3 * v65);
            }

            if (v357)
            {
              v759 = *(v64 + 48);
              v760 = 2 * v357;
              do
              {
                sub_27183F9D0(v759, v353++);
                v760 -= 2;
              }

              while (v760);
            }
          }
        }
      }

      break;
    case 19:
      v770 = &unk_28810E278;
      sub_27160E370(&v771, a3);
      v16 = *a2;
      v17 = v781;
      v18 = v771;
      if (!v771)
      {
        goto LABEL_382;
      }

      v19 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v771;
        v20 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v18 + 96))(&v784);
      }

      else
      {
LABEL_382:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v256 = v776;
      if (!v776)
      {
        break;
      }

      v257 = v780;
      v258 = v773;
      if (v782 == 1 && v773)
      {
        v259 = v771;
        v260 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v261 = v259;
            (v260->__on_zero_shared)(v260);
            std::__shared_weak_count::__release_weak(v260);
            v259 = v261;
          }
        }

        (*(*v259 + 88))(v259, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v258 = v773;
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
            v769 = 0;
            sub_27183F9D0(*(v16 + 48), &v769);
            v258[v265++] = v769;
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
            v769 = 0;
            sub_27183F9D0(*(v16 + 48), &v769);
            *v258++ = v769;
            v266 -= 2;
          }

          while (v266);
        }
      }

      break;
    case 20:
      v770 = &unk_28810E138;
      sub_27160EDC8(&v771, a3);
      v208 = *a2;
      v209 = v781;
      v210 = v771;
      if (!v771)
      {
        goto LABEL_960;
      }

      v211 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v211->__on_zero_shared)(v211);
          std::__shared_weak_count::__release_weak(v211);
        }

        v210 = v771;
        v212 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v210;
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
            v210 = v213;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v210 + 96))(&v784);
      }

      else
      {
LABEL_960:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v648 = v776;
          if (v776)
          {
            v649 = v780;
            v650 = v773;
            if (v782 == 1 && v773)
            {
              v651 = v771;
              v652 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v652->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v653 = v651;
                  (v652->__on_zero_shared)(v652);
                  std::__shared_weak_count::__release_weak(v652);
                  v651 = v653;
                }
              }

              (*(*v651 + 88))(v651, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v650 = v773;
            }

            v654 = (3 * v209);
            v655 = v648 - 1;
            if (v648 != 1)
            {
              v656 = 0;
              do
              {
                if (v209)
                {
                  v657 = *(v208 + 48);
                  v658 = 4 * (3 * v209);
                  v659 = v650;
                  do
                  {
                    sub_271840060(v657, v659++);
                    v658 -= 4;
                  }

                  while (v658);
                }

                v650 += v649;
                ++v656;
              }

              while (v656 != v655);
              v654 = (3 * v209);
            }

            if (v654)
            {
              v765 = *(v208 + 48);
              v766 = 4 * v654;
              do
              {
                sub_271840060(v765, v650++);
                v766 -= 4;
              }

              while (v766);
            }
          }
        }
      }

      break;
    case 21:
      v770 = &unk_28810E078;
      sub_27160F7A8(&v771, a3);
      v238 = *a2;
      v239 = v781;
      v240 = v771;
      if (!v771)
      {
        goto LABEL_1051;
      }

      v241 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v241->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v241->__on_zero_shared)(v241);
          std::__shared_weak_count::__release_weak(v241);
        }

        v240 = v771;
        v242 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v240;
            (v242->__on_zero_shared)(v242);
            std::__shared_weak_count::__release_weak(v242);
            v240 = v243;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v240 + 96))(&v784);
      }

      else
      {
LABEL_1051:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v707 = v776;
          if (v776)
          {
            v708 = v780;
            v709 = v773;
            if (v782 == 1 && v773)
            {
              v710 = v771;
              v711 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v711->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v712 = v710;
                  (v711->__on_zero_shared)(v711);
                  std::__shared_weak_count::__release_weak(v711);
                  v710 = v712;
                }
              }

              (*(*v710 + 88))(v710, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v709 = v773;
            }

            v713 = (3 * v239);
            v714 = v707 - 1;
            if (v707 != 1)
            {
              v715 = 0;
              do
              {
                if (v239)
                {
                  v716 = *(v238 + 48);
                  v717 = (3 * v239);
                  v718 = v709;
                  do
                  {
                    sub_27183F824(v716, v718++);
                    --v717;
                  }

                  while (v717);
                }

                v709 += v708;
                ++v715;
              }

              while (v715 != v714);
            }

            if (3 * v239)
            {
              v754 = *(v238 + 48);
              do
              {
                sub_27183F824(v754, v709++);
                --v713;
              }

              while (v713);
            }
          }
        }
      }

      break;
    case 22:
      v770 = &unk_28810DFB8;
      sub_27160FC10(&v771, a3);
      v82 = *a2;
      v83 = v781;
      v84 = v771;
      if (!v771)
      {
        goto LABEL_578;
      }

      v85 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v771;
        v86 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v84 + 96))(&v784);
      }

      else
      {
LABEL_578:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v387 = v776;
          if (v776)
          {
            v388 = v780;
            v389 = v773;
            if (v782 == 1 && v773)
            {
              v390 = v771;
              v391 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v391->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v392 = v390;
                  (v391->__on_zero_shared)(v391);
                  std::__shared_weak_count::__release_weak(v391);
                  v390 = v392;
                }
              }

              (*(*v390 + 88))(v390, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v389 = v773;
            }

            v393 = (3 * v83);
            v394 = v387 - 1;
            if (v387 != 1)
            {
              v395 = 0;
              do
              {
                if (v83)
                {
                  v396 = *(v82 + 48);
                  v397 = 2 * (3 * v83);
                  v398 = v389;
                  do
                  {
                    sub_27183F9D0(v396, v398++);
                    v397 -= 2;
                  }

                  while (v397);
                }

                v389 += v388;
                ++v395;
              }

              while (v395 != v394);
              v393 = (3 * v83);
            }

            if (v393)
            {
              v761 = *(v82 + 48);
              v762 = 2 * v393;
              do
              {
                sub_27183F9D0(v761, v389++);
                v762 -= 2;
              }

              while (v762);
            }
          }
        }
      }

      break;
    case 23:
      v770 = &unk_28810DF38;
      sub_271610178(&v771, a3);
      v232 = *a2;
      v233 = v781;
      v234 = v771;
      if (!v771)
      {
        goto LABEL_1031;
      }

      v235 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v235->__on_zero_shared)(v235);
          std::__shared_weak_count::__release_weak(v235);
        }

        v234 = v771;
        v236 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v237 = v234;
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
            v234 = v237;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v234 + 96))(&v784);
      }

      else
      {
LABEL_1031:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v696 = v776;
      if (!v776)
      {
        break;
      }

      v697 = v780;
      v698 = v773;
      if (v782 == 1 && v773)
      {
        v699 = v771;
        v700 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v700->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v701 = v699;
            (v700->__on_zero_shared)(v700);
            std::__shared_weak_count::__release_weak(v700);
            v699 = v701;
          }
        }

        (*(*v699 + 88))(v699, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v698 = v773;
      }

      v702 = v696 - 1;
      if (!v702)
      {
        goto LABEL_1047;
      }

      if (v233)
      {
        v703 = 0;
        v704 = 2 * v697;
        do
        {
          v705 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v232 + 48), &v769);
            v698[v705++] = v769;
          }

          while (3 * v233 != v705);
          v698 = (v698 + v704);
          ++v703;
        }

        while (v703 != v702);
LABEL_1047:
        if (v233)
        {
          v706 = 2 * (3 * v233);
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v232 + 48), &v769);
            *v698++ = v769;
            v706 -= 2;
          }

          while (v706);
        }
      }

      break;
    case 24:
      v770 = &unk_28810DEB8;
      sub_271610C28(&v771, a3);
      v40 = *a2;
      v41 = v781;
      v42 = v771;
      if (!v771)
      {
        goto LABEL_453;
      }

      v43 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v771;
        v44 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v42 + 96))(&v784);
      }

      else
      {
LABEL_453:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v303 = v776;
          if (v776)
          {
            v304 = v780;
            v305 = v773;
            if (v782 == 1 && v773)
            {
              v306 = v771;
              v307 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v307->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v308 = v306;
                  (v307->__on_zero_shared)(v307);
                  std::__shared_weak_count::__release_weak(v307);
                  v306 = v308;
                }
              }

              (*(*v306 + 88))(v306, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v305 = v773;
            }

            v309 = (3 * v41);
            v310 = v303 - 1;
            if (v303 != 1)
            {
              v311 = 0;
              do
              {
                if (v41)
                {
                  v312 = *(v40 + 48);
                  v313 = 4 * (3 * v41);
                  v314 = v305;
                  do
                  {
                    sub_271840060(v312, v314++);
                    v313 -= 4;
                  }

                  while (v313);
                }

                v305 += v304;
                ++v311;
              }

              while (v311 != v310);
              v309 = (3 * v41);
            }

            if (v309)
            {
              v757 = *(v40 + 48);
              v758 = 4 * v309;
              do
              {
                sub_271840060(v757, v305++);
                v758 -= 4;
              }

              while (v758);
            }
          }
        }
      }

      break;
    case 25:
      v770 = &unk_28810DDF8;
      sub_271611660(&v771, a3);
      v22 = *a2;
      v23 = v781;
      v24 = v771;
      if (!v771)
      {
        goto LABEL_402;
      }

      v25 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v771;
        v26 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v24 + 96))(&v784);
      }

      else
      {
LABEL_402:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v267 = v776;
          if (v776)
          {
            v268 = v780;
            v269 = v773;
            if (v782 == 1 && v773)
            {
              v270 = v771;
              v271 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v272 = v270;
                  (v271->__on_zero_shared)(v271);
                  std::__shared_weak_count::__release_weak(v271);
                  v270 = v272;
                }
              }

              (*(*v270 + 88))(v270, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v269 = v773;
            }

            v273 = (4 * v23);
            v274 = v267 - 1;
            if (v267 != 1)
            {
              v275 = 0;
              do
              {
                if (v273)
                {
                  v276 = *(v22 + 48);
                  v277 = v273;
                  v278 = v269;
                  do
                  {
                    sub_27183F824(v276, v278++);
                    --v277;
                  }

                  while (v277);
                }

                v269 += v268;
                ++v275;
              }

              while (v275 != v274);
            }

            if (v273)
            {
              v719 = *(v22 + 48);
              do
              {
                sub_27183F824(v719, v269++);
                --v273;
              }

              while (v273);
            }
          }
        }
      }

      break;
    case 26:
      v770 = &unk_28810DD78;
      sub_271611BC8(&v771, a3);
      v88 = *a2;
      v89 = v781;
      v90 = v771;
      if (!v771)
      {
        goto LABEL_595;
      }

      v91 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v771;
        v92 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v90 + 96))(&v784);
      }

      else
      {
LABEL_595:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v399 = v776;
          if (v776)
          {
            v400 = v780;
            v401 = v773;
            if (v782 == 1 && v773)
            {
              v402 = v771;
              v403 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v403->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v404 = v402;
                  (v403->__on_zero_shared)(v403);
                  std::__shared_weak_count::__release_weak(v403);
                  v402 = v404;
                }
              }

              (*(*v402 + 88))(v402, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v401 = v773;
            }

            v405 = (4 * v89);
            v406 = v399 - 1;
            if (v399 != 1)
            {
              v407 = 0;
              do
              {
                if (v405)
                {
                  v408 = *(v88 + 48);
                  v409 = 2 * v405;
                  v410 = v401;
                  do
                  {
                    sub_27183F9D0(v408, v410++);
                    v409 -= 2;
                  }

                  while (v409);
                }

                v401 += v400;
                ++v407;
              }

              while (v407 != v406);
            }

            if (v405)
            {
              v726 = *(v88 + 48);
              v727 = 2 * v405;
              do
              {
                sub_27183F9D0(v726, v401++);
                v727 -= 2;
              }

              while (v727);
            }
          }
        }
      }

      break;
    case 27:
      v770 = &unk_28810DCF8;
      sub_271612620(&v771, a3);
      v10 = *a2;
      v11 = v781;
      v12 = v771;
      if (!v771)
      {
        goto LABEL_362;
      }

      v13 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v771;
        v14 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v12 + 96))(&v784);
      }

      else
      {
LABEL_362:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v244 = v776;
      if (!v776)
      {
        break;
      }

      v245 = v780;
      v246 = v773;
      if (v782 == 1 && v773)
      {
        v247 = v771;
        v248 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v249 = v247;
            (v248->__on_zero_shared)(v248);
            std::__shared_weak_count::__release_weak(v248);
            v247 = v249;
          }
        }

        (*(*v247 + 88))(v247, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v246 = v773;
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
            v769 = 0;
            sub_27183F9D0(*(v10 + 48), &v769);
            v246[v254++] = v769;
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
            v769 = 0;
            sub_27183F9D0(*(v10 + 48), &v769);
            *v246++ = v769;
            v255 -= 2;
          }

          while (v255);
        }
      }

      break;
    case 28:
      v770 = &unk_28810DC78;
      sub_271613078(&v771, a3);
      v112 = *a2;
      v113 = v781;
      v114 = v771;
      if (!v771)
      {
        goto LABEL_665;
      }

      v115 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v771;
        v116 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v114 + 96))(&v784);
      }

      else
      {
LABEL_665:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v447 = v776;
          if (v776)
          {
            v448 = v780;
            v449 = v773;
            if (v782 == 1 && v773)
            {
              v450 = v771;
              v451 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v451->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v452 = v450;
                  (v451->__on_zero_shared)(v451);
                  std::__shared_weak_count::__release_weak(v451);
                  v450 = v452;
                }
              }

              (*(*v450 + 88))(v450, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v449 = v773;
            }

            v453 = (4 * v113);
            v454 = v447 - 1;
            if (v447 != 1)
            {
              v455 = 0;
              do
              {
                if (v453)
                {
                  v456 = *(v112 + 48);
                  v457 = 4 * v453;
                  v458 = v449;
                  do
                  {
                    sub_271840060(v456, v458++);
                    v457 -= 4;
                  }

                  while (v457);
                }

                v449 += v448;
                ++v455;
              }

              while (v455 != v454);
            }

            if (v453)
            {
              v731 = *(v112 + 48);
              v732 = 4 * v453;
              do
              {
                sub_271840060(v731, v449++);
                v732 -= 4;
              }

              while (v732);
            }
          }
        }
      }

      break;
    case 29:
      v770 = &unk_28810DBF8;
      sub_271613A58(&v771, a3);
      v34 = *a2;
      v35 = v781;
      v36 = v771;
      if (!v771)
      {
        goto LABEL_436;
      }

      v37 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v771;
        v38 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v36 + 96))(&v784);
      }

      else
      {
LABEL_436:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v291 = v776;
          if (v776)
          {
            v292 = v780;
            v293 = v773;
            if (v782 == 1 && v773)
            {
              v294 = v771;
              v295 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v295->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v296 = v294;
                  (v295->__on_zero_shared)(v295);
                  std::__shared_weak_count::__release_weak(v295);
                  v294 = v296;
                }
              }

              (*(*v294 + 88))(v294, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v293 = v773;
            }

            v297 = (4 * v35);
            v298 = v291 - 1;
            if (v291 != 1)
            {
              v299 = 0;
              do
              {
                if (v297)
                {
                  v300 = *(v34 + 48);
                  v301 = v297;
                  v302 = v293;
                  do
                  {
                    sub_27183F824(v300, v302++);
                    --v301;
                  }

                  while (v301);
                }

                v293 += v292;
                ++v299;
              }

              while (v299 != v298);
            }

            if (v297)
            {
              v720 = *(v34 + 48);
              do
              {
                sub_27183F824(v720, v293++);
                --v297;
              }

              while (v297);
            }
          }
        }
      }

      break;
    case 30:
      v770 = &unk_28810DAB8;
      sub_2716143AC(&v771, a3);
      v130 = *a2;
      v131 = v781;
      v132 = v771;
      if (!v771)
      {
        goto LABEL_719;
      }

      v133 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v771;
        v134 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v132 + 96))(&v784);
      }

      else
      {
LABEL_719:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v483 = v776;
          if (v776)
          {
            v484 = v780;
            v485 = v773;
            if (v782 == 1 && v773)
            {
              v486 = v771;
              v487 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v487->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v488 = v486;
                  (v487->__on_zero_shared)(v487);
                  std::__shared_weak_count::__release_weak(v487);
                  v486 = v488;
                }
              }

              (*(*v486 + 88))(v486, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v485 = v773;
            }

            v489 = (4 * v131);
            v490 = v483 - 1;
            if (v483 != 1)
            {
              v491 = 0;
              do
              {
                if (v489)
                {
                  v492 = *(v130 + 48);
                  v493 = 2 * v489;
                  v494 = v485;
                  do
                  {
                    sub_27183F9D0(v492, v494++);
                    v493 -= 2;
                  }

                  while (v493);
                }

                v485 += v484;
                ++v491;
              }

              while (v491 != v490);
            }

            if (v489)
            {
              v735 = *(v130 + 48);
              v736 = 2 * v489;
              do
              {
                sub_27183F9D0(v735, v485++);
                v736 -= 2;
              }

              while (v736);
            }
          }
        }
      }

      break;
    case 31:
      v770 = &unk_28810D9F8;
      sub_271614DE4(&v771, a3);
      v94 = *a2;
      v95 = v781;
      v96 = v771;
      if (!v771)
      {
        goto LABEL_612;
      }

      v97 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v771;
        v98 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v96 + 96))(&v784);
      }

      else
      {
LABEL_612:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v411 = v776;
      if (!v776)
      {
        break;
      }

      v412 = v780;
      v413 = v773;
      if (v782 == 1 && v773)
      {
        v414 = v771;
        v415 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v415->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v416 = v414;
            (v415->__on_zero_shared)(v415);
            std::__shared_weak_count::__release_weak(v415);
            v414 = v416;
          }
        }

        (*(*v414 + 88))(v414, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v413 = v773;
      }

      v417 = (4 * v95);
      v418 = v411 - 1;
      if (!v418)
      {
        goto LABEL_628;
      }

      if (v417)
      {
        v419 = 0;
        v420 = 2 * v412;
        do
        {
          v421 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v94 + 48), &v769);
            v413[v421++] = v769;
          }

          while (v417 != v421);
          v413 = (v413 + v420);
          ++v419;
        }

        while (v419 != v418);
LABEL_628:
        if (v417)
        {
          v422 = 2 * v417;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v94 + 48), &v769);
            *v413++ = v769;
            v422 -= 2;
          }

          while (v422);
        }
      }

      break;
    case 32:
      v770 = &unk_28810D938;
      sub_2716152D4(&v771, a3);
      v142 = *a2;
      v143 = v781;
      v144 = v771;
      if (!v771)
      {
        goto LABEL_753;
      }

      v145 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v771;
        v146 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v144 + 96))(&v784);
      }

      else
      {
LABEL_753:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v507 = v776;
          if (v776)
          {
            v508 = v780;
            v509 = v773;
            if (v782 == 1 && v773)
            {
              v510 = v771;
              v511 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v511->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v512 = v510;
                  (v511->__on_zero_shared)(v511);
                  std::__shared_weak_count::__release_weak(v511);
                  v510 = v512;
                }
              }

              (*(*v510 + 88))(v510, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v509 = v773;
            }

            v513 = (4 * v143);
            v514 = v507 - 1;
            if (v507 != 1)
            {
              v515 = 0;
              do
              {
                if (v513)
                {
                  v516 = *(v142 + 48);
                  v517 = 4 * v513;
                  v518 = v509;
                  do
                  {
                    sub_271840060(v516, v518++);
                    v517 -= 4;
                  }

                  while (v517);
                }

                v509 += v508;
                ++v515;
              }

              while (v515 != v514);
            }

            if (v513)
            {
              v739 = *(v142 + 48);
              v740 = 4 * v513;
              do
              {
                sub_271840060(v739, v509++);
                v740 -= 4;
              }

              while (v740);
            }
          }
        }
      }

      break;
    case 33:
      v770 = &unk_28810D8B8;
      sub_2716157C4(&v771, a3);
      v202 = *a2;
      v203 = v781;
      v204 = v771;
      if (!v771)
      {
        goto LABEL_943;
      }

      v205 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v205->__on_zero_shared)(v205);
          std::__shared_weak_count::__release_weak(v205);
        }

        v204 = v771;
        v206 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v207 = v204;
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
            v204 = v207;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v204 + 96))(&v784);
      }

      else
      {
LABEL_943:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v636 = v776;
          if (v776)
          {
            v637 = v780;
            v638 = v773;
            if (v782 == 1 && v773)
            {
              v639 = v771;
              v640 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v640->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v641 = v639;
                  (v640->__on_zero_shared)(v640);
                  std::__shared_weak_count::__release_weak(v640);
                  v639 = v641;
                }
              }

              (*(*v639 + 88))(v639, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v638 = v773;
            }

            v642 = (4 * v203);
            v643 = v636 - 1;
            if (v636 != 1)
            {
              v644 = 0;
              do
              {
                if (v642)
                {
                  v645 = *(v202 + 48);
                  v646 = v642;
                  v647 = v638;
                  do
                  {
                    sub_27183F824(v645, v647++);
                    --v646;
                  }

                  while (v646);
                }

                v638 += v637;
                ++v644;
              }

              while (v644 != v643);
            }

            if (v642)
            {
              v750 = *(v202 + 48);
              do
              {
                sub_27183F824(v750, v638++);
                --v642;
              }

              while (v642);
            }
          }
        }
      }

      break;
    case 34:
      v770 = &unk_28810D838;
      sub_271616118(&v771, a3);
      v136 = *a2;
      v137 = v781;
      v138 = v771;
      if (!v771)
      {
        goto LABEL_736;
      }

      v139 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v771;
        v140 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v138 + 96))(&v784);
      }

      else
      {
LABEL_736:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v495 = v776;
          if (v776)
          {
            v496 = v780;
            v497 = v773;
            if (v782 == 1 && v773)
            {
              v498 = v771;
              v499 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v499->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v500 = v498;
                  (v499->__on_zero_shared)(v499);
                  std::__shared_weak_count::__release_weak(v499);
                  v498 = v500;
                }
              }

              (*(*v498 + 88))(v498, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v497 = v773;
            }

            v501 = (4 * v137);
            v502 = v495 - 1;
            if (v495 != 1)
            {
              v503 = 0;
              do
              {
                if (v501)
                {
                  v504 = *(v136 + 48);
                  v505 = 2 * v501;
                  v506 = v497;
                  do
                  {
                    sub_27183F9D0(v504, v506++);
                    v505 -= 2;
                  }

                  while (v505);
                }

                v497 += v496;
                ++v503;
              }

              while (v503 != v502);
            }

            if (v501)
            {
              v737 = *(v136 + 48);
              v738 = 2 * v501;
              do
              {
                sub_27183F9D0(v737, v497++);
                v738 -= 2;
              }

              while (v738);
            }
          }
        }
      }

      break;
    case 35:
      v770 = &unk_28810D7B8;
      sub_271616B70(&v771, a3);
      v124 = *a2;
      v125 = v781;
      v126 = v771;
      if (!v771)
      {
        goto LABEL_699;
      }

      v127 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v771;
        v128 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v126 + 96))(&v784);
      }

      else
      {
LABEL_699:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v471 = v776;
      if (!v776)
      {
        break;
      }

      v472 = v780;
      v473 = v773;
      if (v782 == 1 && v773)
      {
        v474 = v771;
        v475 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v475->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v476 = v474;
            (v475->__on_zero_shared)(v475);
            std::__shared_weak_count::__release_weak(v475);
            v474 = v476;
          }
        }

        (*(*v474 + 88))(v474, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v473 = v773;
      }

      v477 = (4 * v125);
      v478 = v471 - 1;
      if (!v478)
      {
        goto LABEL_715;
      }

      if (v477)
      {
        v479 = 0;
        v480 = 2 * v472;
        do
        {
          v481 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v124 + 48), &v769);
            v473[v481++] = v769;
          }

          while (v477 != v481);
          v473 = (v473 + v480);
          ++v479;
        }

        while (v479 != v478);
LABEL_715:
        if (v477)
        {
          v482 = 2 * v477;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v124 + 48), &v769);
            *v473++ = v769;
            v482 -= 2;
          }

          while (v482);
        }
      }

      break;
    case 36:
      v770 = &unk_28810D738;
      sub_2716175C8(&v771, a3);
      v118 = *a2;
      v119 = v781;
      v120 = v771;
      if (!v771)
      {
        goto LABEL_682;
      }

      v121 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v771;
        v122 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v120 + 96))(&v784);
      }

      else
      {
LABEL_682:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v459 = v776;
          if (v776)
          {
            v460 = v780;
            v461 = v773;
            if (v782 == 1 && v773)
            {
              v462 = v771;
              v463 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v464 = v462;
                  (v463->__on_zero_shared)(v463);
                  std::__shared_weak_count::__release_weak(v463);
                  v462 = v464;
                }
              }

              (*(*v462 + 88))(v462, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v461 = v773;
            }

            v465 = (4 * v119);
            v466 = v459 - 1;
            if (v459 != 1)
            {
              v467 = 0;
              do
              {
                if (v465)
                {
                  v468 = *(v118 + 48);
                  v469 = 4 * v465;
                  v470 = v461;
                  do
                  {
                    sub_271840060(v468, v470++);
                    v469 -= 4;
                  }

                  while (v469);
                }

                v461 += v460;
                ++v467;
              }

              while (v467 != v466);
            }

            if (v465)
            {
              v733 = *(v118 + 48);
              v734 = 4 * v465;
              do
              {
                sub_271840060(v733, v461++);
                v734 -= 4;
              }

              while (v734);
            }
          }
        }
      }

      break;
    case 37:
      v770 = &unk_28810D678;
      sub_271617FA8(&v771, a3);
      v184 = *a2;
      v185 = v781;
      v186 = v771;
      if (!v771)
      {
        goto LABEL_889;
      }

      v187 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v771;
        v188 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v186 + 96))(&v784);
      }

      else
      {
LABEL_889:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v601 = v776;
          if (v776)
          {
            v602 = v780;
            v603 = v773;
            if (v782 == 1 && v773)
            {
              v604 = v771;
              v605 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v605->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v606 = v604;
                  (v605->__on_zero_shared)(v605);
                  std::__shared_weak_count::__release_weak(v605);
                  v604 = v606;
                }
              }

              (*(*v604 + 88))(v604, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v603 = v773;
            }

            v607 = (4 * v185);
            v608 = v601 - 1;
            if (v601 != 1)
            {
              v609 = 0;
              do
              {
                if (v607)
                {
                  v610 = *(v184 + 48);
                  v611 = v607;
                  v612 = v603;
                  do
                  {
                    sub_27183F824(v610, v612++);
                    --v611;
                  }

                  while (v611);
                }

                v603 += v602;
                ++v609;
              }

              while (v609 != v608);
            }

            if (v607)
            {
              v749 = *(v184 + 48);
              do
              {
                sub_27183F824(v749, v603++);
                --v607;
              }

              while (v607);
            }
          }
        }
      }

      break;
    case 38:
      v770 = &unk_28810D5B8;
      sub_271618498(&v771, a3);
      v214 = *a2;
      v215 = v781;
      v216 = v771;
      if (!v771)
      {
        goto LABEL_977;
      }

      v217 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v771;
        v218 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v216 + 96))(&v784);
      }

      else
      {
LABEL_977:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v660 = v776;
          if (v776)
          {
            v661 = v780;
            v662 = v773;
            if (v782 == 1 && v773)
            {
              v663 = v771;
              v664 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v664->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v665 = v663;
                  (v664->__on_zero_shared)(v664);
                  std::__shared_weak_count::__release_weak(v664);
                  v663 = v665;
                }
              }

              (*(*v663 + 88))(v663, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v662 = v773;
            }

            v666 = (4 * v215);
            v667 = v660 - 1;
            if (v660 != 1)
            {
              v668 = 0;
              do
              {
                if (v666)
                {
                  v669 = *(v214 + 48);
                  v670 = 2 * v666;
                  v671 = v662;
                  do
                  {
                    sub_27183F9D0(v669, v671++);
                    v670 -= 2;
                  }

                  while (v670);
                }

                v662 += v661;
                ++v668;
              }

              while (v668 != v667);
            }

            if (v666)
            {
              v751 = *(v214 + 48);
              v752 = 2 * v666;
              do
              {
                sub_27183F9D0(v751, v662++);
                v752 -= 2;
              }

              while (v752);
            }
          }
        }
      }

      break;
    case 39:
      v770 = &unk_28810D538;
      sub_271618A00(&v771, a3);
      v76 = *a2;
      v77 = v781;
      v78 = v771;
      if (!v771)
      {
        goto LABEL_558;
      }

      v79 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v771;
        v80 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v78 + 96))(&v784);
      }

      else
      {
LABEL_558:
        v784 = 0;
      }

      if (!v774)
      {
        break;
      }

      if (!v775)
      {
        break;
      }

      v375 = v776;
      if (!v776)
      {
        break;
      }

      v376 = v780;
      v377 = v773;
      if (v782 == 1 && v773)
      {
        v378 = v771;
        v379 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v379->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v380 = v378;
            (v379->__on_zero_shared)(v379);
            std::__shared_weak_count::__release_weak(v379);
            v378 = v380;
          }
        }

        (*(*v378 + 88))(v378, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v377 = v773;
      }

      v381 = (4 * v77);
      v382 = v375 - 1;
      if (!v382)
      {
        goto LABEL_574;
      }

      if (v381)
      {
        v383 = 0;
        v384 = 2 * v376;
        do
        {
          v385 = 0;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v76 + 48), &v769);
            v377[v385++] = v769;
          }

          while (v381 != v385);
          v377 = (v377 + v384);
          ++v383;
        }

        while (v383 != v382);
LABEL_574:
        if (v381)
        {
          v386 = 2 * v381;
          do
          {
            v769 = 0;
            sub_27183F9D0(*(v76 + 48), &v769);
            *v377++ = v769;
            v386 -= 2;
          }

          while (v386);
        }
      }

      break;
    case 40:
      v770 = &unk_28810D3F8;
      sub_2716194B0(&v771, a3);
      v58 = *a2;
      v59 = v781;
      v60 = v771;
      if (!v771)
      {
        goto LABEL_504;
      }

      v61 = v772;
      if (v772)
      {
        atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v771;
        v62 = v772;
        if (v772)
        {
          atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v783 == 1)
      {
        (*(*v60 + 96))(&v784);
      }

      else
      {
LABEL_504:
        v784 = 0;
      }

      if (v774)
      {
        if (v775)
        {
          v339 = v776;
          if (v776)
          {
            v340 = v780;
            v341 = v773;
            if (v782 == 1 && v773)
            {
              v342 = v771;
              v343 = v772;
              if (v772)
              {
                atomic_fetch_add_explicit(&v772->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v343->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v344 = v342;
                  (v343->__on_zero_shared)(v343);
                  std::__shared_weak_count::__release_weak(v343);
                  v342 = v344;
                }
              }

              (*(*v342 + 88))(v342, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v341 = v773;
            }

            v345 = (4 * v59);
            v346 = v339 - 1;
            if (v339 != 1)
            {
              v347 = 0;
              do
              {
                if (v345)
                {
                  v348 = *(v58 + 48);
                  v349 = 4 * v345;
                  v350 = v341;
                  do
                  {
                    sub_271840060(v348, v350++);
                    v349 -= 4;
                  }

                  while (v349);
                }

                v341 += v340;
                ++v347;
              }

              while (v347 != v346);
            }

            if (v345)
            {
              v724 = *(v58 + 48);
              v725 = 4 * v345;
              do
              {
                sub_271840060(v724, v341++);
                v725 -= 4;
              }

              while (v725);
            }
          }
        }
      }

      break;
    default:
      return;
  }

  v767 = v784;
  v784 = 0;
  if (v767)
  {
    (*(*v767 + 8))(v767);
  }

  v768 = v772;
  if (v772)
  {
    if (!atomic_fetch_add(&v772->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v768->__on_zero_shared)(v768);
      std::__shared_weak_count::__release_weak(v768);
    }
  }
}

void sub_271626C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 - 88);
  *(v4 - 88) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_271573610(va);
  _Unwind_Resume(a1);
}

void sub_271627B90(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      sub_27160528C(&v1040, a3);
      v4 = *a2;
      v5 = v1043;
      v6 = v1040;
      if (!v1040)
      {
        goto LABEL_973;
      }

      v7 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v1040;
        v8 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (BYTE1(v1047) == 1)
      {
        (*(*v6 + 96))(&v1052);
      }

      else
      {
LABEL_973:
        v1052 = 0;
      }

      if (v1043)
      {
        v704 = v1044;
        if (v1044)
        {
          v705 = v1046;
          v706 = v1042;
          if (v1047 == 1 && v1042)
          {
            v707 = v1040;
            v708 = v1041;
            if (v1041)
            {
              atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v708->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v709 = v707;
                (v708->__on_zero_shared)(v708);
                std::__shared_weak_count::__release_weak(v708);
                v707 = v709;
              }
            }

            (*(*v707 + 88))(v707, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v706 = v1042;
          }

          for (i = v704 - 1; i; --i)
          {
            v1053 = v706;
            v1054 = v5;
            v711 = sub_27182D2AC(v4);
            ++v4[14];
            sub_27182D3F8(v711, &v1053);
            v706 = (v706 + v705);
          }

          v1053 = v706;
          v1054 = v5;
          sub_27182DE4C(v4, &v1053);
        }
      }

      goto LABEL_1205;
    case 2:
      sub_2716056F4(&v1040, a3);
      v153 = *a2;
      v154 = v1043;
      v155 = v1040;
      if (!v1040)
      {
        goto LABEL_960;
      }

      v156 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v156->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v156->__on_zero_shared)(v156);
          std::__shared_weak_count::__release_weak(v156);
        }

        v155 = v1040;
        v157 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v158 = v155;
            (v157->__on_zero_shared)(v157);
            std::__shared_weak_count::__release_weak(v157);
            v155 = v158;
          }
        }
      }

      if (BYTE1(v1047) == 1)
      {
        (*(*v155 + 96))(&v1052);
      }

      else
      {
LABEL_960:
        v1052 = 0;
      }

      if (v1043)
      {
        v695 = v1044;
        if (v1044)
        {
          v696 = v1046;
          v697 = v1042;
          if (v1047 == 1 && v1042)
          {
            v698 = v1040;
            v699 = v1041;
            if (v1041)
            {
              atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v699->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v700 = v698;
                (v699->__on_zero_shared)(v699);
                std::__shared_weak_count::__release_weak(v699);
                v698 = v700;
              }
            }

            (*(*v698 + 88))(v698, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v697 = v1042;
          }

          v701 = v695 - 1;
          if (v701)
          {
            v702 = 2 * v696;
            do
            {
              v1053 = v697;
              v1054 = v154;
              v703 = sub_27182D2AC(v153);
              ++v153[14];
              sub_27182DFB4(v703, &v1053);
              v697 = (v697 + v702);
              --v701;
            }

            while (v701);
          }

          v1053 = v697;
          v1054 = v154;
          sub_27182DF6C(v153, &v1053);
        }
      }

      goto LABEL_1205;
    case 3:
      sub_271605B5C(&v1040, a3);
      v147 = *a2;
      v148 = v1043;
      v149 = v1040;
      if (!v1040)
      {
        goto LABEL_947;
      }

      v150 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v150->__on_zero_shared)(v150);
          std::__shared_weak_count::__release_weak(v150);
        }

        v149 = v1040;
        v151 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v152 = v149;
            (v151->__on_zero_shared)(v151);
            std::__shared_weak_count::__release_weak(v151);
            v149 = v152;
          }
        }
      }

      if (BYTE1(v1047) == 1)
      {
        (*(*v149 + 96))(&v1052);
      }

      else
      {
LABEL_947:
        v1052 = 0;
      }

      if (v1043)
      {
        v686 = v1044;
        if (v1044)
        {
          v687 = v1046;
          v688 = v1042;
          if (v1047 == 1 && v1042)
          {
            v689 = v1040;
            v690 = v1041;
            if (v1041)
            {
              atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v690->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v691 = v689;
                (v690->__on_zero_shared)(v690);
                std::__shared_weak_count::__release_weak(v690);
                v689 = v691;
              }
            }

            (*(*v689 + 88))(v689, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v688 = v1042;
          }

          v692 = v686 - 1;
          if (v692)
          {
            v693 = 2 * v687;
            do
            {
              v1053 = v688;
              v1054 = v148;
              v694 = sub_27182D2AC(v147);
              ++v147[14];
              sub_27182E284(v694, &v1053);
              v688 = (v688 + v693);
              --v692;
            }

            while (v692);
          }

          v1053 = v688;
          v1054 = v148;
          sub_27182E23C(v147, &v1053);
        }
      }

      goto LABEL_1205;
    case 4:
      sub_27160604C(&v1040, a3);
      v91 = *a2;
      v92 = v1043;
      v93 = v1040;
      if (!v1040)
      {
        goto LABEL_714;
      }

      v94 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v94->__on_zero_shared)(v94);
          std::__shared_weak_count::__release_weak(v94);
        }

        v93 = v1040;
        v95 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v96 = v93;
            (v95->__on_zero_shared)(v95);
            std::__shared_weak_count::__release_weak(v95);
            v93 = v96;
          }
        }
      }

      if (BYTE1(v1047) == 1)
      {
        (*(*v93 + 96))(&v1052);
      }

      else
      {
LABEL_714:
        v1052 = 0;
      }

      if (v1043)
      {
        v497 = v1044;
        if (v1044)
        {
          v498 = v1046;
          v499 = v1042;
          if (v1047 == 1 && v1042)
          {
            v500 = v1040;
            v501 = v1041;
            if (v1041)
            {
              atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v502 = v500;
                (v501->__on_zero_shared)(v501);
                std::__shared_weak_count::__release_weak(v501);
                v500 = v502;
              }
            }

            (*(*v500 + 88))(v500, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v499 = v1042;
          }

          v503 = v497 - 1;
          if (v503)
          {
            v504 = 4 * v498;
            do
            {
              v1053 = v499;
              v1054 = v92;
              v505 = sub_27182D2AC(v91);
              ++v91[14];
              sub_27182E498(v505, &v1053);
              v499 = (v499 + v504);
              --v503;
            }

            while (v503);
          }

          v1053 = v499;
          v1054 = v92;
          sub_27182E450(v91, &v1053);
        }
      }

      goto LABEL_1205;
    case 5:
      sub_27160653C(&v1040, a3);
      v10 = *a2;
      v132 = v1049;
      v133 = v1040;
      if (!v1040)
      {
        goto LABEL_881;
      }

      v134 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }

        v133 = v1040;
        v135 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v136 = v133;
            (v135->__on_zero_shared)(v135);
            std::__shared_weak_count::__release_weak(v135);
            v133 = v136;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v133 + 96))(&v1052);
      }

      else
      {
LABEL_881:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v632 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v633 = v1047;
      v634 = v1048;
      v635 = v1042;
      if (v1050 == 1 && v1042)
      {
        v636 = v1040;
        v637 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v637->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v638 = v636;
            (v637->__on_zero_shared)(v637);
            std::__shared_weak_count::__release_weak(v637);
            v636 = v638;
          }
        }

        (*(*v636 + 88))(v636, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v635 = v1042;
      }

      v639 = v632 - 1;
      if (v632 != 1)
      {
        if (v132)
        {
          v640 = 0;
          v641 = *(v10 + 32);
          do
          {
            v1053 = v641;
            v642 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v642;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v643 = 0;
            v644 = v132;
            do
            {
              v1053 = (v635 + v643);
              v1054 = 2;
              v645 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v645, &v1053);
              v643 += v633;
              --v644;
            }

            while (v644);
            v646 = *(v10 + 48);
            v641 = *(v646 - 8);
            *(v10 + 32) = v641;
            v647 = *(v10 + 72);
            *(v10 + 112) = *(v647 - 8);
            *(v10 + 48) = v646 - 8;
            *(v10 + 72) = v647 - 8;
            v635 = (v635 + v634);
            ++v640;
          }

          while (v640 != v639);
        }

        else
        {
          v635 = (v635 + v634 + v634 * (v632 - 2));
          v988 = *(v10 + 32);
          do
          {
            v1053 = v988;
            v991 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v991;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v989 = *(v10 + 48);
            v988 = *(v989 - 8);
            *(v10 + 32) = v988;
            v990 = *(v10 + 72);
            *(v10 + 112) = *(v990 - 8);
            *(v10 + 48) = v989 - 8;
            *(v10 + 72) = v990 - 8;
            --v639;
          }

          while (v639);
        }
      }

      sub_27182D120(v10);
      if (v132)
      {
        v648 = 0;
        do
        {
          v1053 = (v635 + v648);
          v1054 = 2;
          v649 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v649, &v1053);
          v648 += v633;
          --v132;
        }

        while (v132);
      }

      break;
    case 6:
      sub_271606A4C(&v1040, a3);
      v10 = *a2;
      v86 = v1049;
      v87 = v1040;
      if (!v1040)
      {
        goto LABEL_692;
      }

      v88 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v88->__on_zero_shared)(v88);
          std::__shared_weak_count::__release_weak(v88);
        }

        v87 = v1040;
        v89 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v90 = v87;
            (v89->__on_zero_shared)(v89);
            std::__shared_weak_count::__release_weak(v89);
            v87 = v90;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v87 + 96))(&v1052);
      }

      else
      {
LABEL_692:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v479 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v480 = v1047;
      v481 = v1048;
      v482 = v1042;
      if (v1050 == 1 && v1042)
      {
        v483 = v1040;
        v484 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v484->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v485 = v483;
            (v484->__on_zero_shared)(v484);
            std::__shared_weak_count::__release_weak(v484);
            v483 = v485;
          }
        }

        (*(*v483 + 88))(v483, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v482 = v1042;
      }

      v486 = v479 - 1;
      if (v486)
      {
        v487 = *(v10 + 32);
        if (v86)
        {
          for (j = 0; j != v486; ++j)
          {
            v1053 = v487;
            v489 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v489;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v490 = 0;
            v491 = v86;
            do
            {
              v1053 = &v482[v490];
              v1054 = 2;
              v492 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v492, &v1053);
              v490 += v480;
              --v491;
            }

            while (v491);
            v493 = *(v10 + 48);
            v487 = *(v493 - 8);
            *(v10 + 32) = v487;
            v494 = *(v10 + 72);
            *(v10 + 112) = *(v494 - 8);
            *(v10 + 48) = v493 - 8;
            *(v10 + 72) = v494 - 8;
            v482 += v481;
          }
        }

        else
        {
          v956 = 2 * v481;
          do
          {
            v1053 = v487;
            v959 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v959;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v957 = *(v10 + 48);
            v487 = *(v957 - 8);
            *(v10 + 32) = v487;
            v958 = *(v10 + 72);
            *(v10 + 112) = *(v958 - 8);
            *(v10 + 48) = v957 - 8;
            *(v10 + 72) = v958 - 8;
            v482 = (v482 + v956);
            --v486;
          }

          while (v486);
        }
      }

      sub_27182D120(v10);
      if (v86)
      {
        v495 = 0;
        do
        {
          v1053 = &v482[v495];
          v1054 = 2;
          v496 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v496, &v1053);
          v495 += v480;
          --v86;
        }

        while (v86);
      }

      break;
    case 7:
      sub_27160742C(&v1040, a3);
      v10 = *a2;
      v61 = v1049;
      v62 = v1040;
      if (!v1040)
      {
        goto LABEL_582;
      }

      v63 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
        }

        v62 = v1040;
        v64 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v65 = v62;
            (v64->__on_zero_shared)(v64);
            std::__shared_weak_count::__release_weak(v64);
            v62 = v65;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v62 + 96))(&v1052);
      }

      else
      {
LABEL_582:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v389 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v390 = v1047;
      v391 = v1048;
      v392 = v1042;
      if (v1050 == 1 && v1042)
      {
        v393 = v1040;
        v394 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v394->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v395 = v393;
            (v394->__on_zero_shared)(v394);
            std::__shared_weak_count::__release_weak(v394);
            v393 = v395;
          }
        }

        (*(*v393 + 88))(v393, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v392 = v1042;
      }

      v396 = v389 - 1;
      if (v396)
      {
        v397 = *(v10 + 32);
        if (v61)
        {
          for (k = 0; k != v396; ++k)
          {
            v1053 = v397;
            v399 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v399;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v400 = 0;
            v401 = v61;
            do
            {
              v1053 = &v392[v400];
              v1054 = 2;
              v402 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v402, &v1053);
              v400 += v390;
              --v401;
            }

            while (v401);
            v403 = *(v10 + 48);
            v397 = *(v403 - 8);
            *(v10 + 32) = v397;
            v404 = *(v10 + 72);
            *(v10 + 112) = *(v404 - 8);
            *(v10 + 48) = v403 - 8;
            *(v10 + 72) = v404 - 8;
            v392 += v391;
          }
        }

        else
        {
          v936 = 2 * v391;
          do
          {
            v1053 = v397;
            v939 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v939;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v937 = *(v10 + 48);
            v397 = *(v937 - 8);
            *(v10 + 32) = v397;
            v938 = *(v10 + 72);
            *(v10 + 112) = *(v938 - 8);
            *(v10 + 48) = v937 - 8;
            *(v10 + 72) = v938 - 8;
            v392 = (v392 + v936);
            --v396;
          }

          while (v396);
        }
      }

      sub_27182D120(v10);
      if (v61)
      {
        v405 = 0;
        do
        {
          v1053 = &v392[v405];
          v1054 = 2;
          v406 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v406, &v1053);
          v405 += v390;
          --v61;
        }

        while (v61);
      }

      break;
    case 8:
      sub_2716078C4(&v1040, a3);
      v10 = *a2;
      v142 = v1049;
      v143 = v1040;
      if (!v1040)
      {
        goto LABEL_925;
      }

      v144 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v144->__on_zero_shared)(v144);
          std::__shared_weak_count::__release_weak(v144);
        }

        v143 = v1040;
        v145 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v146 = v143;
            (v145->__on_zero_shared)(v145);
            std::__shared_weak_count::__release_weak(v145);
            v143 = v146;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v143 + 96))(&v1052);
      }

      else
      {
LABEL_925:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v668 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v669 = v1047;
      v670 = v1048;
      v671 = v1042;
      if (v1050 == 1 && v1042)
      {
        v672 = v1040;
        v673 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v673->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v674 = v672;
            (v673->__on_zero_shared)(v673);
            std::__shared_weak_count::__release_weak(v673);
            v672 = v674;
          }
        }

        (*(*v672 + 88))(v672, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v671 = v1042;
      }

      v675 = v668 - 1;
      if (v675)
      {
        v676 = *(v10 + 32);
        if (v142)
        {
          for (m = 0; m != v675; ++m)
          {
            v1053 = v676;
            v678 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v678;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v679 = 0;
            v680 = v142;
            do
            {
              v1053 = &v671[2 * v679];
              v1054 = 2;
              v681 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v681, &v1053);
              v679 += v669;
              --v680;
            }

            while (v680);
            v682 = *(v10 + 48);
            v676 = *(v682 - 8);
            *(v10 + 32) = v676;
            v683 = *(v10 + 72);
            *(v10 + 112) = *(v683 - 8);
            *(v10 + 48) = v682 - 8;
            *(v10 + 72) = v683 - 8;
            v671 += 2 * v670;
          }
        }

        else
        {
          v996 = 4 * v670;
          do
          {
            v1053 = v676;
            v999 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v999;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v997 = *(v10 + 48);
            v676 = *(v997 - 8);
            *(v10 + 32) = v676;
            v998 = *(v10 + 72);
            *(v10 + 112) = *(v998 - 8);
            *(v10 + 48) = v997 - 8;
            *(v10 + 72) = v998 - 8;
            v671 = (v671 + v996);
            --v675;
          }

          while (v675);
        }
      }

      sub_27182D120(v10);
      if (v142)
      {
        v684 = 0;
        do
        {
          v1053 = &v671[2 * v684];
          v1054 = 2;
          v685 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v685, &v1053);
          v684 += v669;
          --v142;
        }

        while (v142);
      }

      break;
    case 9:
      sub_271607DD4(&v1040, a3);
      v10 = *a2;
      v127 = v1049;
      v128 = v1040;
      if (!v1040)
      {
        goto LABEL_859;
      }

      v129 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }

        v128 = v1040;
        v130 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v131 = v128;
            (v130->__on_zero_shared)(v130);
            std::__shared_weak_count::__release_weak(v130);
            v128 = v131;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v128 + 96))(&v1052);
      }

      else
      {
LABEL_859:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v614 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v615 = v1047;
      v616 = v1048;
      v617 = v1042;
      if (v1050 == 1 && v1042)
      {
        v618 = v1040;
        v619 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v619->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v620 = v618;
            (v619->__on_zero_shared)(v619);
            std::__shared_weak_count::__release_weak(v619);
            v618 = v620;
          }
        }

        (*(*v618 + 88))(v618, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v617 = v1042;
      }

      v621 = v614 - 1;
      if (v614 != 1)
      {
        if (v127)
        {
          v622 = 0;
          v623 = *(v10 + 32);
          do
          {
            v1053 = v623;
            v624 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v624;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v625 = 0;
            v626 = v127;
            do
            {
              v1053 = (v617 + v625);
              v1054 = 3;
              v627 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v627, &v1053);
              v625 += v615;
              --v626;
            }

            while (v626);
            v628 = *(v10 + 48);
            v623 = *(v628 - 8);
            *(v10 + 32) = v623;
            v629 = *(v10 + 72);
            *(v10 + 112) = *(v629 - 8);
            *(v10 + 48) = v628 - 8;
            *(v10 + 72) = v629 - 8;
            v617 = (v617 + v616);
            ++v622;
          }

          while (v622 != v621);
        }

        else
        {
          v617 = (v617 + v616 + v616 * (v614 - 2));
          v984 = *(v10 + 32);
          do
          {
            v1053 = v984;
            v987 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v987;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v985 = *(v10 + 48);
            v984 = *(v985 - 8);
            *(v10 + 32) = v984;
            v986 = *(v10 + 72);
            *(v10 + 112) = *(v986 - 8);
            *(v10 + 48) = v985 - 8;
            *(v10 + 72) = v986 - 8;
            --v621;
          }

          while (v621);
        }
      }

      sub_27182D120(v10);
      if (v127)
      {
        v630 = 0;
        do
        {
          v1053 = (v617 + v630);
          v1054 = 3;
          v631 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v631, &v1053);
          v630 += v615;
          --v127;
        }

        while (v127);
      }

      break;
    case 10:
      sub_27160882C(&v1040, a3);
      v10 = *a2;
      v169 = v1049;
      v170 = v1040;
      if (!v1040)
      {
        goto LABEL_1029;
      }

      v171 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v171->__on_zero_shared)(v171);
          std::__shared_weak_count::__release_weak(v171);
        }

        v170 = v1040;
        v172 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v172->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v173 = v170;
            (v172->__on_zero_shared)(v172);
            std::__shared_weak_count::__release_weak(v172);
            v170 = v173;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v170 + 96))(&v1052);
      }

      else
      {
LABEL_1029:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v748 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v749 = v1047;
      v750 = v1048;
      v751 = v1042;
      if (v1050 == 1 && v1042)
      {
        v752 = v1040;
        v753 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v753->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v754 = v752;
            (v753->__on_zero_shared)(v753);
            std::__shared_weak_count::__release_weak(v753);
            v752 = v754;
          }
        }

        (*(*v752 + 88))(v752, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v751 = v1042;
      }

      v755 = v748 - 1;
      if (v755)
      {
        v756 = *(v10 + 32);
        if (v169)
        {
          for (n = 0; n != v755; ++n)
          {
            v1053 = v756;
            v758 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v758;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v759 = 0;
            v760 = v169;
            do
            {
              v1053 = &v751[v759];
              v1054 = 3;
              v761 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v761, &v1053);
              v759 += v749;
              --v760;
            }

            while (v760);
            v762 = *(v10 + 48);
            v756 = *(v762 - 8);
            *(v10 + 32) = v756;
            v763 = *(v10 + 72);
            *(v10 + 112) = *(v763 - 8);
            *(v10 + 48) = v762 - 8;
            *(v10 + 72) = v763 - 8;
            v751 += v750;
          }
        }

        else
        {
          v1008 = 2 * v750;
          do
          {
            v1053 = v756;
            v1011 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1011;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1009 = *(v10 + 48);
            v756 = *(v1009 - 8);
            *(v10 + 32) = v756;
            v1010 = *(v10 + 72);
            *(v10 + 112) = *(v1010 - 8);
            *(v10 + 48) = v1009 - 8;
            *(v10 + 72) = v1010 - 8;
            v751 = (v751 + v1008);
            --v755;
          }

          while (v755);
        }
      }

      sub_27182D120(v10);
      if (v169)
      {
        v764 = 0;
        do
        {
          v1053 = &v751[v764];
          v1054 = 3;
          v765 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v765, &v1053);
          v764 += v749;
          --v169;
        }

        while (v169);
      }

      break;
    case 11:
      sub_271609284(&v1040, a3);
      v10 = *a2;
      v164 = v1049;
      v165 = v1040;
      if (!v1040)
      {
        goto LABEL_1007;
      }

      v166 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v166->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v166->__on_zero_shared)(v166);
          std::__shared_weak_count::__release_weak(v166);
        }

        v165 = v1040;
        v167 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v168 = v165;
            (v167->__on_zero_shared)(v167);
            std::__shared_weak_count::__release_weak(v167);
            v165 = v168;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v165 + 96))(&v1052);
      }

      else
      {
LABEL_1007:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v730 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v731 = v1047;
      v732 = v1048;
      v733 = v1042;
      if (v1050 == 1 && v1042)
      {
        v734 = v1040;
        v735 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v735->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v736 = v734;
            (v735->__on_zero_shared)(v735);
            std::__shared_weak_count::__release_weak(v735);
            v734 = v736;
          }
        }

        (*(*v734 + 88))(v734, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v733 = v1042;
      }

      v737 = v730 - 1;
      if (v737)
      {
        v738 = *(v10 + 32);
        if (v164)
        {
          for (ii = 0; ii != v737; ++ii)
          {
            v1053 = v738;
            v740 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v740;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v741 = 0;
            v742 = v164;
            do
            {
              v1053 = &v733[v741];
              v1054 = 3;
              v743 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v743, &v1053);
              v741 += v731;
              --v742;
            }

            while (v742);
            v744 = *(v10 + 48);
            v738 = *(v744 - 8);
            *(v10 + 32) = v738;
            v745 = *(v10 + 72);
            *(v10 + 112) = *(v745 - 8);
            *(v10 + 48) = v744 - 8;
            *(v10 + 72) = v745 - 8;
            v733 += v732;
          }
        }

        else
        {
          v1004 = 2 * v732;
          do
          {
            v1053 = v738;
            v1007 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1007;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1005 = *(v10 + 48);
            v738 = *(v1005 - 8);
            *(v10 + 32) = v738;
            v1006 = *(v10 + 72);
            *(v10 + 112) = *(v1006 - 8);
            *(v10 + 48) = v1005 - 8;
            *(v10 + 72) = v1006 - 8;
            v733 = (v733 + v1004);
            --v737;
          }

          while (v737);
        }
      }

      sub_27182D120(v10);
      if (v164)
      {
        v746 = 0;
        do
        {
          v1053 = &v733[v746];
          v1054 = 3;
          v747 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v747, &v1053);
          v746 += v731;
          --v164;
        }

        while (v164);
      }

      break;
    case 12:
      sub_271609CDC(&v1040, a3);
      v10 = *a2;
      v26 = v1049;
      v27 = v1040;
      if (!v1040)
      {
        goto LABEL_428;
      }

      v28 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v27 = v1040;
        v29 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = v27;
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
            v27 = v30;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v27 + 96))(&v1052);
      }

      else
      {
LABEL_428:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v263 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v264 = v1047;
      v265 = v1048;
      v266 = v1042;
      if (v1050 == 1 && v1042)
      {
        v267 = v1040;
        v268 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v268->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v269 = v267;
            (v268->__on_zero_shared)(v268);
            std::__shared_weak_count::__release_weak(v268);
            v267 = v269;
          }
        }

        (*(*v267 + 88))(v267, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v266 = v1042;
      }

      v270 = v263 - 1;
      if (v270)
      {
        v271 = *(v10 + 32);
        if (v26)
        {
          for (jj = 0; jj != v270; ++jj)
          {
            v1053 = v271;
            v273 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v273;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v274 = 0;
            v275 = v26;
            do
            {
              v1053 = &v266[2 * v274];
              v1054 = 3;
              v276 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v276, &v1053);
              v274 += v264;
              --v275;
            }

            while (v275);
            v277 = *(v10 + 48);
            v271 = *(v277 - 8);
            *(v10 + 32) = v271;
            v278 = *(v10 + 72);
            *(v10 + 112) = *(v278 - 8);
            *(v10 + 48) = v277 - 8;
            *(v10 + 72) = v278 - 8;
            v266 += 2 * v265;
          }
        }

        else
        {
          v908 = 4 * v265;
          do
          {
            v1053 = v271;
            v911 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v911;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v909 = *(v10 + 48);
            v271 = *(v909 - 8);
            *(v10 + 32) = v271;
            v910 = *(v10 + 72);
            *(v10 + 112) = *(v910 - 8);
            *(v10 + 48) = v909 - 8;
            *(v10 + 72) = v910 - 8;
            v266 = (v266 + v908);
            --v270;
          }

          while (v270);
        }
      }

      sub_27182D120(v10);
      if (v26)
      {
        v279 = 0;
        do
        {
          v1053 = &v266[2 * v279];
          v1054 = 3;
          v280 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v280, &v1053);
          v279 += v264;
          --v26;
        }

        while (v26);
      }

      break;
    case 13:
      sub_27160A734(&v1040, a3);
      v10 = *a2;
      v46 = v1049;
      v47 = v1040;
      if (!v1040)
      {
        goto LABEL_516;
      }

      v48 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        v47 = v1040;
        v49 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = v47;
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v47 = v50;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v47 + 96))(&v1052);
      }

      else
      {
LABEL_516:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v335 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v336 = v1047;
      v337 = v1048;
      v338 = v1042;
      if (v1050 == 1 && v1042)
      {
        v339 = v1040;
        v340 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v340->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v341 = v339;
            (v340->__on_zero_shared)(v340);
            std::__shared_weak_count::__release_weak(v340);
            v339 = v341;
          }
        }

        (*(*v339 + 88))(v339, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v338 = v1042;
      }

      v342 = v335 - 1;
      if (v335 != 1)
      {
        if (v46)
        {
          v343 = 0;
          v344 = *(v10 + 32);
          do
          {
            v1053 = v344;
            v345 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v345;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v346 = 0;
            v347 = v46;
            do
            {
              v1053 = (v338 + v346);
              v1054 = 4;
              v348 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v348, &v1053);
              v346 += v336;
              --v347;
            }

            while (v347);
            v349 = *(v10 + 48);
            v344 = *(v349 - 8);
            *(v10 + 32) = v344;
            v350 = *(v10 + 72);
            *(v10 + 112) = *(v350 - 8);
            *(v10 + 48) = v349 - 8;
            *(v10 + 72) = v350 - 8;
            v338 = (v338 + v337);
            ++v343;
          }

          while (v343 != v342);
        }

        else
        {
          v338 = (v338 + v337 + v337 * (v335 - 2));
          v924 = *(v10 + 32);
          do
          {
            v1053 = v924;
            v927 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v927;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v925 = *(v10 + 48);
            v924 = *(v925 - 8);
            *(v10 + 32) = v924;
            v926 = *(v10 + 72);
            *(v10 + 112) = *(v926 - 8);
            *(v10 + 48) = v925 - 8;
            *(v10 + 72) = v926 - 8;
            --v342;
          }

          while (v342);
        }
      }

      sub_27182D120(v10);
      if (v46)
      {
        v351 = 0;
        do
        {
          v1053 = (v338 + v351);
          v1054 = 4;
          v352 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v352, &v1053);
          v351 += v336;
          --v46;
        }

        while (v46);
      }

      break;
    case 14:
      sub_27160B18C(&v1040, a3);
      v10 = *a2;
      v41 = v1049;
      v42 = v1040;
      if (!v1040)
      {
        goto LABEL_494;
      }

      v43 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v1040;
        v44 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v42 + 96))(&v1052);
      }

      else
      {
LABEL_494:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v317 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v318 = v1047;
      v319 = v1048;
      v320 = v1042;
      if (v1050 == 1 && v1042)
      {
        v321 = v1040;
        v322 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v322->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v323 = v321;
            (v322->__on_zero_shared)(v322);
            std::__shared_weak_count::__release_weak(v322);
            v321 = v323;
          }
        }

        (*(*v321 + 88))(v321, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v320 = v1042;
      }

      v324 = v317 - 1;
      if (v324)
      {
        v325 = *(v10 + 32);
        if (v41)
        {
          for (kk = 0; kk != v324; ++kk)
          {
            v1053 = v325;
            v327 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v327;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v328 = 0;
            v329 = v41;
            do
            {
              v1053 = &v320[v328];
              v1054 = 4;
              v330 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v330, &v1053);
              v328 += v318;
              --v329;
            }

            while (v329);
            v331 = *(v10 + 48);
            v325 = *(v331 - 8);
            *(v10 + 32) = v325;
            v332 = *(v10 + 72);
            *(v10 + 112) = *(v332 - 8);
            *(v10 + 48) = v331 - 8;
            *(v10 + 72) = v332 - 8;
            v320 += v319;
          }
        }

        else
        {
          v920 = 2 * v319;
          do
          {
            v1053 = v325;
            v923 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v923;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v921 = *(v10 + 48);
            v325 = *(v921 - 8);
            *(v10 + 32) = v325;
            v922 = *(v10 + 72);
            *(v10 + 112) = *(v922 - 8);
            *(v10 + 48) = v921 - 8;
            *(v10 + 72) = v922 - 8;
            v320 = (v320 + v920);
            --v324;
          }

          while (v324);
        }
      }

      sub_27182D120(v10);
      if (v41)
      {
        v333 = 0;
        do
        {
          v1053 = &v320[v333];
          v1054 = 4;
          v334 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v334, &v1053);
          v333 += v318;
          --v41;
        }

        while (v41);
      }

      break;
    case 15:
      sub_27160BBE4(&v1040, a3);
      v10 = *a2;
      v189 = v1049;
      v190 = v1040;
      if (!v1040)
      {
        goto LABEL_1117;
      }

      v191 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v191->__on_zero_shared)(v191);
          std::__shared_weak_count::__release_weak(v191);
        }

        v190 = v1040;
        v192 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v193 = v190;
            (v192->__on_zero_shared)(v192);
            std::__shared_weak_count::__release_weak(v192);
            v190 = v193;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v190 + 96))(&v1052);
      }

      else
      {
LABEL_1117:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v820 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v821 = v1047;
      v822 = v1048;
      v823 = v1042;
      if (v1050 == 1 && v1042)
      {
        v824 = v1040;
        v825 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v825->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v826 = v824;
            (v825->__on_zero_shared)(v825);
            std::__shared_weak_count::__release_weak(v825);
            v824 = v826;
          }
        }

        (*(*v824 + 88))(v824, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v823 = v1042;
      }

      v827 = v820 - 1;
      if (v827)
      {
        v828 = *(v10 + 32);
        if (v189)
        {
          for (mm = 0; mm != v827; ++mm)
          {
            v1053 = v828;
            v830 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v830;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v831 = 0;
            v832 = v189;
            do
            {
              v1053 = &v823[v831];
              v1054 = 4;
              v833 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v833, &v1053);
              v831 += v821;
              --v832;
            }

            while (v832);
            v834 = *(v10 + 48);
            v828 = *(v834 - 8);
            *(v10 + 32) = v828;
            v835 = *(v10 + 72);
            *(v10 + 112) = *(v835 - 8);
            *(v10 + 48) = v834 - 8;
            *(v10 + 72) = v835 - 8;
            v823 += v822;
          }
        }

        else
        {
          v1024 = 2 * v822;
          do
          {
            v1053 = v828;
            v1027 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1027;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1025 = *(v10 + 48);
            v828 = *(v1025 - 8);
            *(v10 + 32) = v828;
            v1026 = *(v10 + 72);
            *(v10 + 112) = *(v1026 - 8);
            *(v10 + 48) = v1025 - 8;
            *(v10 + 72) = v1026 - 8;
            v823 = (v823 + v1024);
            --v827;
          }

          while (v827);
        }
      }

      sub_27182D120(v10);
      if (v189)
      {
        v836 = 0;
        do
        {
          v1053 = &v823[v836];
          v1054 = 4;
          v837 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v837, &v1053);
          v836 += v821;
          --v189;
        }

        while (v189);
      }

      break;
    case 16:
      sub_27160C63C(&v1040, a3);
      v10 = *a2;
      v137 = v1049;
      v138 = v1040;
      if (!v1040)
      {
        goto LABEL_903;
      }

      v139 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v1040;
        v140 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v138 + 96))(&v1052);
      }

      else
      {
LABEL_903:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v650 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v651 = v1047;
      v652 = v1048;
      v653 = v1042;
      if (v1050 == 1 && v1042)
      {
        v654 = v1040;
        v655 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v655->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v656 = v654;
            (v655->__on_zero_shared)(v655);
            std::__shared_weak_count::__release_weak(v655);
            v654 = v656;
          }
        }

        (*(*v654 + 88))(v654, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v653 = v1042;
      }

      v657 = v650 - 1;
      if (v657)
      {
        v658 = *(v10 + 32);
        if (v137)
        {
          for (nn = 0; nn != v657; ++nn)
          {
            v1053 = v658;
            v660 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v660;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v661 = 0;
            v662 = v137;
            do
            {
              v1053 = &v653[2 * v661];
              v1054 = 4;
              v663 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v663, &v1053);
              v661 += v651;
              --v662;
            }

            while (v662);
            v664 = *(v10 + 48);
            v658 = *(v664 - 8);
            *(v10 + 32) = v658;
            v665 = *(v10 + 72);
            *(v10 + 112) = *(v665 - 8);
            *(v10 + 48) = v664 - 8;
            *(v10 + 72) = v665 - 8;
            v653 += 2 * v652;
          }
        }

        else
        {
          v992 = 4 * v652;
          do
          {
            v1053 = v658;
            v995 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v995;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v993 = *(v10 + 48);
            v658 = *(v993 - 8);
            *(v10 + 32) = v658;
            v994 = *(v10 + 72);
            *(v10 + 112) = *(v994 - 8);
            *(v10 + 48) = v993 - 8;
            *(v10 + 72) = v994 - 8;
            v653 = (v653 + v992);
            --v657;
          }

          while (v657);
        }
      }

      sub_27182D120(v10);
      if (v137)
      {
        v666 = 0;
        do
        {
          v1053 = &v653[2 * v666];
          v1054 = 4;
          v667 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v667, &v1053);
          v666 += v651;
          --v137;
        }

        while (v137);
      }

      break;
    case 17:
      sub_27160D01C(&v1040, a3);
      v10 = *a2;
      v194 = v1049;
      v195 = v1040;
      if (!v1040)
      {
        goto LABEL_1139;
      }

      v196 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v196->__on_zero_shared)(v196);
          std::__shared_weak_count::__release_weak(v196);
        }

        v195 = v1040;
        v197 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v198 = v195;
            (v197->__on_zero_shared)(v197);
            std::__shared_weak_count::__release_weak(v197);
            v195 = v198;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v195 + 96))(&v1052);
      }

      else
      {
LABEL_1139:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v838 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v839 = v1047;
      v840 = v1048;
      v841 = v1042;
      if (v1050 == 1 && v1042)
      {
        v842 = v1040;
        v843 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v843->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v844 = v842;
            (v843->__on_zero_shared)(v843);
            std::__shared_weak_count::__release_weak(v843);
            v842 = v844;
          }
        }

        (*(*v842 + 88))(v842, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v841 = v1042;
      }

      v845 = v838 - 1;
      if (v838 != 1)
      {
        if (v194)
        {
          v846 = 0;
          v847 = *(v10 + 32);
          do
          {
            v1053 = v847;
            v848 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v848;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v849 = 0;
            v850 = v194;
            do
            {
              v1053 = (v841 + v849);
              v1054 = 3;
              v851 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v851, &v1053);
              v849 += v839;
              --v850;
            }

            while (v850);
            v852 = *(v10 + 48);
            v847 = *(v852 - 8);
            *(v10 + 32) = v847;
            v853 = *(v10 + 72);
            *(v10 + 112) = *(v853 - 8);
            *(v10 + 48) = v852 - 8;
            *(v10 + 72) = v853 - 8;
            v841 = (v841 + v840);
            ++v846;
          }

          while (v846 != v845);
        }

        else
        {
          v841 = (v841 + v840 + v840 * (v838 - 2));
          v1028 = *(v10 + 32);
          do
          {
            v1053 = v1028;
            v1031 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1031;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1029 = *(v10 + 48);
            v1028 = *(v1029 - 8);
            *(v10 + 32) = v1028;
            v1030 = *(v10 + 72);
            *(v10 + 112) = *(v1030 - 8);
            *(v10 + 48) = v1029 - 8;
            *(v10 + 72) = v1030 - 8;
            --v845;
          }

          while (v845);
        }
      }

      sub_27182D120(v10);
      if (v194)
      {
        v854 = 0;
        do
        {
          v1053 = (v841 + v854);
          v1054 = 3;
          v855 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v855, &v1053);
          v854 += v839;
          --v194;
        }

        while (v194);
      }

      break;
    case 18:
      sub_27160D918(&v1040, a3);
      v10 = *a2;
      v56 = v1049;
      v57 = v1040;
      if (!v1040)
      {
        goto LABEL_560;
      }

      v58 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v58->__on_zero_shared)(v58);
          std::__shared_weak_count::__release_weak(v58);
        }

        v57 = v1040;
        v59 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v60 = v57;
            (v59->__on_zero_shared)(v59);
            std::__shared_weak_count::__release_weak(v59);
            v57 = v60;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v57 + 96))(&v1052);
      }

      else
      {
LABEL_560:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v371 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v372 = v1047;
      v373 = v1048;
      v374 = v1042;
      if (v1050 == 1 && v1042)
      {
        v375 = v1040;
        v376 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v376->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v377 = v375;
            (v376->__on_zero_shared)(v376);
            std::__shared_weak_count::__release_weak(v376);
            v375 = v377;
          }
        }

        (*(*v375 + 88))(v375, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v374 = v1042;
      }

      v378 = v371 - 1;
      if (v378)
      {
        v379 = *(v10 + 32);
        if (v56)
        {
          for (i1 = 0; i1 != v378; ++i1)
          {
            v1053 = v379;
            v381 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v381;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v382 = 0;
            v383 = v56;
            do
            {
              v1053 = &v374[v382];
              v1054 = 3;
              v384 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v384, &v1053);
              v382 += v372;
              --v383;
            }

            while (v383);
            v385 = *(v10 + 48);
            v379 = *(v385 - 8);
            *(v10 + 32) = v379;
            v386 = *(v10 + 72);
            *(v10 + 112) = *(v386 - 8);
            *(v10 + 48) = v385 - 8;
            *(v10 + 72) = v386 - 8;
            v374 += v373;
          }
        }

        else
        {
          v932 = 2 * v373;
          do
          {
            v1053 = v379;
            v935 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v935;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v933 = *(v10 + 48);
            v379 = *(v933 - 8);
            *(v10 + 32) = v379;
            v934 = *(v10 + 72);
            *(v10 + 112) = *(v934 - 8);
            *(v10 + 48) = v933 - 8;
            *(v10 + 72) = v934 - 8;
            v374 = (v374 + v932);
            --v378;
          }

          while (v378);
        }
      }

      sub_27182D120(v10);
      if (v56)
      {
        v387 = 0;
        do
        {
          v1053 = &v374[v387];
          v1054 = 3;
          v388 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v388, &v1053);
          v387 += v372;
          --v56;
        }

        while (v56);
      }

      break;
    case 19:
      sub_27160E370(&v1040, a3);
      v10 = *a2;
      v16 = v1049;
      v17 = v1040;
      if (!v1040)
      {
        goto LABEL_384;
      }

      v18 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v17 = v1040;
        v19 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v20 = v17;
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
            v17 = v20;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v17 + 96))(&v1052);
      }

      else
      {
LABEL_384:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v227 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v228 = v1047;
      v229 = v1048;
      v230 = v1042;
      if (v1050 == 1 && v1042)
      {
        v231 = v1040;
        v232 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v232->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v233 = v231;
            (v232->__on_zero_shared)(v232);
            std::__shared_weak_count::__release_weak(v232);
            v231 = v233;
          }
        }

        (*(*v231 + 88))(v231, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v230 = v1042;
      }

      v234 = v227 - 1;
      if (v234)
      {
        v235 = *(v10 + 32);
        if (v16)
        {
          for (i2 = 0; i2 != v234; ++i2)
          {
            v1053 = v235;
            v237 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v237;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v238 = 0;
            v239 = v16;
            do
            {
              v1053 = &v230[v238];
              v1054 = 3;
              v240 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v240, &v1053);
              v238 += v228;
              --v239;
            }

            while (v239);
            v241 = *(v10 + 48);
            v235 = *(v241 - 8);
            *(v10 + 32) = v235;
            v242 = *(v10 + 72);
            *(v10 + 112) = *(v242 - 8);
            *(v10 + 48) = v241 - 8;
            *(v10 + 72) = v242 - 8;
            v230 += v229;
          }
        }

        else
        {
          v900 = 2 * v229;
          do
          {
            v1053 = v235;
            v903 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v903;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v901 = *(v10 + 48);
            v235 = *(v901 - 8);
            *(v10 + 32) = v235;
            v902 = *(v10 + 72);
            *(v10 + 112) = *(v902 - 8);
            *(v10 + 48) = v901 - 8;
            *(v10 + 72) = v902 - 8;
            v230 = (v230 + v900);
            --v234;
          }

          while (v234);
        }
      }

      sub_27182D120(v10);
      if (v16)
      {
        v243 = 0;
        do
        {
          v1053 = &v230[v243];
          v1054 = 3;
          v244 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v244, &v1053);
          v243 += v228;
          --v16;
        }

        while (v16);
      }

      break;
    case 20:
      sub_27160EDC8(&v1040, a3);
      v10 = *a2;
      v179 = v1049;
      v180 = v1040;
      if (!v1040)
      {
        goto LABEL_1073;
      }

      v181 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v1040;
        v182 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v180 + 96))(&v1052);
      }

      else
      {
LABEL_1073:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v784 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v785 = v1047;
      v786 = v1048;
      v787 = v1042;
      if (v1050 == 1 && v1042)
      {
        v788 = v1040;
        v789 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v789->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v790 = v788;
            (v789->__on_zero_shared)(v789);
            std::__shared_weak_count::__release_weak(v789);
            v788 = v790;
          }
        }

        (*(*v788 + 88))(v788, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v787 = v1042;
      }

      v791 = v784 - 1;
      if (v791)
      {
        v792 = *(v10 + 32);
        if (v179)
        {
          for (i3 = 0; i3 != v791; ++i3)
          {
            v1053 = v792;
            v794 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v794;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v795 = 0;
            v796 = v179;
            do
            {
              v1053 = &v787[2 * v795];
              v1054 = 3;
              v797 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v797, &v1053);
              v795 += v785;
              --v796;
            }

            while (v796);
            v798 = *(v10 + 48);
            v792 = *(v798 - 8);
            *(v10 + 32) = v792;
            v799 = *(v10 + 72);
            *(v10 + 112) = *(v799 - 8);
            *(v10 + 48) = v798 - 8;
            *(v10 + 72) = v799 - 8;
            v787 += 2 * v786;
          }
        }

        else
        {
          v1016 = 4 * v786;
          do
          {
            v1053 = v792;
            v1019 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1019;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1017 = *(v10 + 48);
            v792 = *(v1017 - 8);
            *(v10 + 32) = v792;
            v1018 = *(v10 + 72);
            *(v10 + 112) = *(v1018 - 8);
            *(v10 + 48) = v1017 - 8;
            *(v10 + 72) = v1018 - 8;
            v787 = (v787 + v1016);
            --v791;
          }

          while (v791);
        }
      }

      sub_27182D120(v10);
      if (v179)
      {
        v800 = 0;
        do
        {
          v1053 = &v787[2 * v800];
          v1054 = 3;
          v801 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v801, &v1053);
          v800 += v785;
          --v179;
        }

        while (v179);
      }

      break;
    case 21:
      sub_27160F7A8(&v1040, a3);
      v10 = *a2;
      v204 = v1049;
      v205 = v1040;
      if (!v1040)
      {
        goto LABEL_1183;
      }

      v206 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v206->__on_zero_shared)(v206);
          std::__shared_weak_count::__release_weak(v206);
        }

        v205 = v1040;
        v207 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v208 = v205;
            (v207->__on_zero_shared)(v207);
            std::__shared_weak_count::__release_weak(v207);
            v205 = v208;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v205 + 96))(&v1052);
      }

      else
      {
LABEL_1183:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v874 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v875 = v1047;
      v876 = v1048;
      v877 = v1042;
      if (v1050 == 1 && v1042)
      {
        v878 = v1040;
        v879 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v879->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v880 = v878;
            (v879->__on_zero_shared)(v879);
            std::__shared_weak_count::__release_weak(v879);
            v878 = v880;
          }
        }

        (*(*v878 + 88))(v878, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v877 = v1042;
      }

      v881 = v874 - 1;
      if (v874 != 1)
      {
        if (v204)
        {
          v882 = 0;
          v883 = *(v10 + 32);
          do
          {
            v1053 = v883;
            v884 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v884;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v885 = 0;
            v886 = v204;
            do
            {
              v1053 = (v877 + v885);
              v1054 = 3;
              v887 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v887, &v1053);
              v885 += v875;
              --v886;
            }

            while (v886);
            v888 = *(v10 + 48);
            v883 = *(v888 - 8);
            *(v10 + 32) = v883;
            v889 = *(v10 + 72);
            *(v10 + 112) = *(v889 - 8);
            *(v10 + 48) = v888 - 8;
            *(v10 + 72) = v889 - 8;
            v877 = (v877 + v876);
            ++v882;
          }

          while (v882 != v881);
        }

        else
        {
          v877 = (v877 + v876 + v876 * (v874 - 2));
          v1036 = *(v10 + 32);
          do
          {
            v1053 = v1036;
            v1039 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1039;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1037 = *(v10 + 48);
            v1036 = *(v1037 - 8);
            *(v10 + 32) = v1036;
            v1038 = *(v10 + 72);
            *(v10 + 112) = *(v1038 - 8);
            *(v10 + 48) = v1037 - 8;
            *(v10 + 72) = v1038 - 8;
            --v881;
          }

          while (v881);
        }
      }

      sub_27182D120(v10);
      if (v204)
      {
        v890 = 0;
        do
        {
          v1053 = (v877 + v890);
          v1054 = 3;
          v891 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v891, &v1053);
          v890 += v875;
          --v204;
        }

        while (v204);
      }

      break;
    case 22:
      sub_27160FC10(&v1040, a3);
      v10 = *a2;
      v71 = v1049;
      v72 = v1040;
      if (!v1040)
      {
        goto LABEL_626;
      }

      v73 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v1040;
        v74 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v72 + 96))(&v1052);
      }

      else
      {
LABEL_626:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v425 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v426 = v1047;
      v427 = v1048;
      v428 = v1042;
      if (v1050 == 1 && v1042)
      {
        v429 = v1040;
        v430 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v430->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v431 = v429;
            (v430->__on_zero_shared)(v430);
            std::__shared_weak_count::__release_weak(v430);
            v429 = v431;
          }
        }

        (*(*v429 + 88))(v429, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v428 = v1042;
      }

      v432 = v425 - 1;
      if (v432)
      {
        v433 = *(v10 + 32);
        if (v71)
        {
          for (i4 = 0; i4 != v432; ++i4)
          {
            v1053 = v433;
            v435 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v435;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v436 = 0;
            v437 = v71;
            do
            {
              v1053 = &v428[v436];
              v1054 = 3;
              v438 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v438, &v1053);
              v436 += v426;
              --v437;
            }

            while (v437);
            v439 = *(v10 + 48);
            v433 = *(v439 - 8);
            *(v10 + 32) = v433;
            v440 = *(v10 + 72);
            *(v10 + 112) = *(v440 - 8);
            *(v10 + 48) = v439 - 8;
            *(v10 + 72) = v440 - 8;
            v428 += v427;
          }
        }

        else
        {
          v944 = 2 * v427;
          do
          {
            v1053 = v433;
            v947 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v947;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v945 = *(v10 + 48);
            v433 = *(v945 - 8);
            *(v10 + 32) = v433;
            v946 = *(v10 + 72);
            *(v10 + 112) = *(v946 - 8);
            *(v10 + 48) = v945 - 8;
            *(v10 + 72) = v946 - 8;
            v428 = (v428 + v944);
            --v432;
          }

          while (v432);
        }
      }

      sub_27182D120(v10);
      if (v71)
      {
        v441 = 0;
        do
        {
          v1053 = &v428[v441];
          v1054 = 3;
          v442 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v442, &v1053);
          v441 += v426;
          --v71;
        }

        while (v71);
      }

      break;
    case 23:
      sub_271610178(&v1040, a3);
      v10 = *a2;
      v199 = v1049;
      v200 = v1040;
      if (!v1040)
      {
        goto LABEL_1161;
      }

      v201 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v201->__on_zero_shared)(v201);
          std::__shared_weak_count::__release_weak(v201);
        }

        v200 = v1040;
        v202 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v203 = v200;
            (v202->__on_zero_shared)(v202);
            std::__shared_weak_count::__release_weak(v202);
            v200 = v203;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v200 + 96))(&v1052);
      }

      else
      {
LABEL_1161:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v856 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v857 = v1047;
      v858 = v1048;
      v859 = v1042;
      if (v1050 == 1 && v1042)
      {
        v860 = v1040;
        v861 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v861->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v862 = v860;
            (v861->__on_zero_shared)(v861);
            std::__shared_weak_count::__release_weak(v861);
            v860 = v862;
          }
        }

        (*(*v860 + 88))(v860, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v859 = v1042;
      }

      v863 = v856 - 1;
      if (v863)
      {
        v864 = *(v10 + 32);
        if (v199)
        {
          for (i5 = 0; i5 != v863; ++i5)
          {
            v1053 = v864;
            v866 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v866;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v867 = 0;
            v868 = v199;
            do
            {
              v1053 = &v859[v867];
              v1054 = 3;
              v869 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v869, &v1053);
              v867 += v857;
              --v868;
            }

            while (v868);
            v870 = *(v10 + 48);
            v864 = *(v870 - 8);
            *(v10 + 32) = v864;
            v871 = *(v10 + 72);
            *(v10 + 112) = *(v871 - 8);
            *(v10 + 48) = v870 - 8;
            *(v10 + 72) = v871 - 8;
            v859 += v858;
          }
        }

        else
        {
          v1032 = 2 * v858;
          do
          {
            v1053 = v864;
            v1035 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1035;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1033 = *(v10 + 48);
            v864 = *(v1033 - 8);
            *(v10 + 32) = v864;
            v1034 = *(v10 + 72);
            *(v10 + 112) = *(v1034 - 8);
            *(v10 + 48) = v1033 - 8;
            *(v10 + 72) = v1034 - 8;
            v859 = (v859 + v1032);
            --v863;
          }

          while (v863);
        }
      }

      sub_27182D120(v10);
      if (v199)
      {
        v872 = 0;
        do
        {
          v1053 = &v859[v872];
          v1054 = 3;
          v873 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v873, &v1053);
          v872 += v857;
          --v199;
        }

        while (v199);
      }

      break;
    case 24:
      sub_271610C28(&v1040, a3);
      v10 = *a2;
      v36 = v1049;
      v37 = v1040;
      if (!v1040)
      {
        goto LABEL_472;
      }

      v38 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v37 = v1040;
        v39 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v40 = v37;
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v37 = v40;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v37 + 96))(&v1052);
      }

      else
      {
LABEL_472:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v299 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v300 = v1047;
      v301 = v1048;
      v302 = v1042;
      if (v1050 == 1 && v1042)
      {
        v303 = v1040;
        v304 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v304->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v305 = v303;
            (v304->__on_zero_shared)(v304);
            std::__shared_weak_count::__release_weak(v304);
            v303 = v305;
          }
        }

        (*(*v303 + 88))(v303, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v1042;
      }

      v306 = v299 - 1;
      if (v306)
      {
        v307 = *(v10 + 32);
        if (v36)
        {
          for (i6 = 0; i6 != v306; ++i6)
          {
            v1053 = v307;
            v309 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v309;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v310 = 0;
            v311 = v36;
            do
            {
              v1053 = &v302[2 * v310];
              v1054 = 3;
              v312 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v312, &v1053);
              v310 += v300;
              --v311;
            }

            while (v311);
            v313 = *(v10 + 48);
            v307 = *(v313 - 8);
            *(v10 + 32) = v307;
            v314 = *(v10 + 72);
            *(v10 + 112) = *(v314 - 8);
            *(v10 + 48) = v313 - 8;
            *(v10 + 72) = v314 - 8;
            v302 += 2 * v301;
          }
        }

        else
        {
          v916 = 4 * v301;
          do
          {
            v1053 = v307;
            v919 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v919;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v917 = *(v10 + 48);
            v307 = *(v917 - 8);
            *(v10 + 32) = v307;
            v918 = *(v10 + 72);
            *(v10 + 112) = *(v918 - 8);
            *(v10 + 48) = v917 - 8;
            *(v10 + 72) = v918 - 8;
            v302 = (v302 + v916);
            --v306;
          }

          while (v306);
        }
      }

      sub_27182D120(v10);
      if (v36)
      {
        v315 = 0;
        do
        {
          v1053 = &v302[2 * v315];
          v1054 = 3;
          v316 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v316, &v1053);
          v315 += v300;
          --v36;
        }

        while (v36);
      }

      break;
    case 25:
      sub_271611660(&v1040, a3);
      v10 = *a2;
      v21 = v1049;
      v22 = v1040;
      if (!v1040)
      {
        goto LABEL_406;
      }

      v23 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v22 = v1040;
        v24 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v25 = v22;
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
            v22 = v25;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v22 + 96))(&v1052);
      }

      else
      {
LABEL_406:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v245 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v246 = v1047;
      v247 = v1048;
      v248 = v1042;
      if (v1050 == 1 && v1042)
      {
        v249 = v1040;
        v250 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v250->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v251 = v249;
            (v250->__on_zero_shared)(v250);
            std::__shared_weak_count::__release_weak(v250);
            v249 = v251;
          }
        }

        (*(*v249 + 88))(v249, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v248 = v1042;
      }

      v252 = v245 - 1;
      if (v245 != 1)
      {
        if (v21)
        {
          v253 = 0;
          v254 = *(v10 + 32);
          do
          {
            v1053 = v254;
            v255 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v255;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v256 = 0;
            v257 = v21;
            do
            {
              v1053 = (v248 + v256);
              v1054 = 4;
              v258 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v258, &v1053);
              v256 += v246;
              --v257;
            }

            while (v257);
            v259 = *(v10 + 48);
            v254 = *(v259 - 8);
            *(v10 + 32) = v254;
            v260 = *(v10 + 72);
            *(v10 + 112) = *(v260 - 8);
            *(v10 + 48) = v259 - 8;
            *(v10 + 72) = v260 - 8;
            v248 = (v248 + v247);
            ++v253;
          }

          while (v253 != v252);
        }

        else
        {
          v248 = (v248 + v247 + v247 * (v245 - 2));
          v904 = *(v10 + 32);
          do
          {
            v1053 = v904;
            v907 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v907;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v905 = *(v10 + 48);
            v904 = *(v905 - 8);
            *(v10 + 32) = v904;
            v906 = *(v10 + 72);
            *(v10 + 112) = *(v906 - 8);
            *(v10 + 48) = v905 - 8;
            *(v10 + 72) = v906 - 8;
            --v252;
          }

          while (v252);
        }
      }

      sub_27182D120(v10);
      if (v21)
      {
        v261 = 0;
        do
        {
          v1053 = (v248 + v261);
          v1054 = 4;
          v262 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v262, &v1053);
          v261 += v246;
          --v21;
        }

        while (v21);
      }

      break;
    case 26:
      sub_271611BC8(&v1040, a3);
      v10 = *a2;
      v76 = v1049;
      v77 = v1040;
      if (!v1040)
      {
        goto LABEL_648;
      }

      v78 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v78->__on_zero_shared)(v78);
          std::__shared_weak_count::__release_weak(v78);
        }

        v77 = v1040;
        v79 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v80 = v77;
            (v79->__on_zero_shared)(v79);
            std::__shared_weak_count::__release_weak(v79);
            v77 = v80;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v77 + 96))(&v1052);
      }

      else
      {
LABEL_648:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v443 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v444 = v1047;
      v445 = v1048;
      v446 = v1042;
      if (v1050 == 1 && v1042)
      {
        v447 = v1040;
        v448 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v448->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v449 = v447;
            (v448->__on_zero_shared)(v448);
            std::__shared_weak_count::__release_weak(v448);
            v447 = v449;
          }
        }

        (*(*v447 + 88))(v447, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v446 = v1042;
      }

      v450 = v443 - 1;
      if (v450)
      {
        v451 = *(v10 + 32);
        if (v76)
        {
          for (i7 = 0; i7 != v450; ++i7)
          {
            v1053 = v451;
            v453 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v453;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v454 = 0;
            v455 = v76;
            do
            {
              v1053 = &v446[v454];
              v1054 = 4;
              v456 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v456, &v1053);
              v454 += v444;
              --v455;
            }

            while (v455);
            v457 = *(v10 + 48);
            v451 = *(v457 - 8);
            *(v10 + 32) = v451;
            v458 = *(v10 + 72);
            *(v10 + 112) = *(v458 - 8);
            *(v10 + 48) = v457 - 8;
            *(v10 + 72) = v458 - 8;
            v446 += v445;
          }
        }

        else
        {
          v948 = 2 * v445;
          do
          {
            v1053 = v451;
            v951 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v951;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v949 = *(v10 + 48);
            v451 = *(v949 - 8);
            *(v10 + 32) = v451;
            v950 = *(v10 + 72);
            *(v10 + 112) = *(v950 - 8);
            *(v10 + 48) = v949 - 8;
            *(v10 + 72) = v950 - 8;
            v446 = (v446 + v948);
            --v450;
          }

          while (v450);
        }
      }

      sub_27182D120(v10);
      if (v76)
      {
        v459 = 0;
        do
        {
          v1053 = &v446[v459];
          v1054 = 4;
          v460 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v460, &v1053);
          v459 += v444;
          --v76;
        }

        while (v76);
      }

      break;
    case 27:
      sub_271612620(&v1040, a3);
      v10 = *a2;
      v11 = v1049;
      v12 = v1040;
      if (!v1040)
      {
        goto LABEL_362;
      }

      v13 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v1040;
        v14 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v12 + 96))(&v1052);
      }

      else
      {
LABEL_362:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v209 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v210 = v1047;
      v211 = v1048;
      v212 = v1042;
      if (v1050 == 1 && v1042)
      {
        v213 = v1040;
        v214 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v215 = v213;
            (v214->__on_zero_shared)(v214);
            std::__shared_weak_count::__release_weak(v214);
            v213 = v215;
          }
        }

        (*(*v213 + 88))(v213, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v212 = v1042;
      }

      v216 = v209 - 1;
      if (v216)
      {
        v217 = *(v10 + 32);
        if (v11)
        {
          for (i8 = 0; i8 != v216; ++i8)
          {
            v1053 = v217;
            v219 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v219;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v220 = 0;
            v221 = v11;
            do
            {
              v1053 = &v212[v220];
              v1054 = 4;
              v222 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v222, &v1053);
              v220 += v210;
              --v221;
            }

            while (v221);
            v223 = *(v10 + 48);
            v217 = *(v223 - 8);
            *(v10 + 32) = v217;
            v224 = *(v10 + 72);
            *(v10 + 112) = *(v224 - 8);
            *(v10 + 48) = v223 - 8;
            *(v10 + 72) = v224 - 8;
            v212 += v211;
          }
        }

        else
        {
          v896 = 2 * v211;
          do
          {
            v1053 = v217;
            v899 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v899;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v897 = *(v10 + 48);
            v217 = *(v897 - 8);
            *(v10 + 32) = v217;
            v898 = *(v10 + 72);
            *(v10 + 112) = *(v898 - 8);
            *(v10 + 48) = v897 - 8;
            *(v10 + 72) = v898 - 8;
            v212 = (v212 + v896);
            --v216;
          }

          while (v216);
        }
      }

      sub_27182D120(v10);
      if (v11)
      {
        v225 = 0;
        do
        {
          v1053 = &v212[v225];
          v1054 = 4;
          v226 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v226, &v1053);
          v225 += v210;
          --v11;
        }

        while (v11);
      }

      break;
    case 28:
      sub_271613078(&v1040, a3);
      v10 = *a2;
      v97 = v1049;
      v98 = v1040;
      if (!v1040)
      {
        goto LABEL_727;
      }

      v99 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v99->__on_zero_shared)(v99);
          std::__shared_weak_count::__release_weak(v99);
        }

        v98 = v1040;
        v100 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v101 = v98;
            (v100->__on_zero_shared)(v100);
            std::__shared_weak_count::__release_weak(v100);
            v98 = v101;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v98 + 96))(&v1052);
      }

      else
      {
LABEL_727:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v506 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v507 = v1047;
      v508 = v1048;
      v509 = v1042;
      if (v1050 == 1 && v1042)
      {
        v510 = v1040;
        v511 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v511->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v512 = v510;
            (v511->__on_zero_shared)(v511);
            std::__shared_weak_count::__release_weak(v511);
            v510 = v512;
          }
        }

        (*(*v510 + 88))(v510, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v509 = v1042;
      }

      v513 = v506 - 1;
      if (v513)
      {
        v514 = *(v10 + 32);
        if (v97)
        {
          for (i9 = 0; i9 != v513; ++i9)
          {
            v1053 = v514;
            v516 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v516;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v517 = 0;
            v518 = v97;
            do
            {
              v1053 = &v509[2 * v517];
              v1054 = 4;
              v519 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v519, &v1053);
              v517 += v507;
              --v518;
            }

            while (v518);
            v520 = *(v10 + 48);
            v514 = *(v520 - 8);
            *(v10 + 32) = v514;
            v521 = *(v10 + 72);
            *(v10 + 112) = *(v521 - 8);
            *(v10 + 48) = v520 - 8;
            *(v10 + 72) = v521 - 8;
            v509 += 2 * v508;
          }
        }

        else
        {
          v960 = 4 * v508;
          do
          {
            v1053 = v514;
            v963 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v963;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v961 = *(v10 + 48);
            v514 = *(v961 - 8);
            *(v10 + 32) = v514;
            v962 = *(v10 + 72);
            *(v10 + 112) = *(v962 - 8);
            *(v10 + 48) = v961 - 8;
            *(v10 + 72) = v962 - 8;
            v509 = (v509 + v960);
            --v513;
          }

          while (v513);
        }
      }

      sub_27182D120(v10);
      if (v97)
      {
        v522 = 0;
        do
        {
          v1053 = &v509[2 * v522];
          v1054 = 4;
          v523 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v523, &v1053);
          v522 += v507;
          --v97;
        }

        while (v97);
      }

      break;
    case 29:
      sub_271613A58(&v1040, a3);
      v10 = *a2;
      v31 = v1049;
      v32 = v1040;
      if (!v1040)
      {
        goto LABEL_450;
      }

      v33 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v32 = v1040;
        v34 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v35 = v32;
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v32 = v35;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v32 + 96))(&v1052);
      }

      else
      {
LABEL_450:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v281 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v282 = v1047;
      v283 = v1048;
      v284 = v1042;
      if (v1050 == 1 && v1042)
      {
        v285 = v1040;
        v286 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v286->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v287 = v285;
            (v286->__on_zero_shared)(v286);
            std::__shared_weak_count::__release_weak(v286);
            v285 = v287;
          }
        }

        (*(*v285 + 88))(v285, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v284 = v1042;
      }

      v288 = v281 - 1;
      if (v281 != 1)
      {
        if (v31)
        {
          v289 = 0;
          v290 = *(v10 + 32);
          do
          {
            v1053 = v290;
            v291 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v291;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v292 = 0;
            v293 = v31;
            do
            {
              v1053 = (v284 + v292);
              v1054 = 4;
              v294 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v294, &v1053);
              v292 += v282;
              --v293;
            }

            while (v293);
            v295 = *(v10 + 48);
            v290 = *(v295 - 8);
            *(v10 + 32) = v290;
            v296 = *(v10 + 72);
            *(v10 + 112) = *(v296 - 8);
            *(v10 + 48) = v295 - 8;
            *(v10 + 72) = v296 - 8;
            v284 = (v284 + v283);
            ++v289;
          }

          while (v289 != v288);
        }

        else
        {
          v284 = (v284 + v283 + v283 * (v281 - 2));
          v912 = *(v10 + 32);
          do
          {
            v1053 = v912;
            v915 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v915;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v913 = *(v10 + 48);
            v912 = *(v913 - 8);
            *(v10 + 32) = v912;
            v914 = *(v10 + 72);
            *(v10 + 112) = *(v914 - 8);
            *(v10 + 48) = v913 - 8;
            *(v10 + 72) = v914 - 8;
            --v288;
          }

          while (v288);
        }
      }

      sub_27182D120(v10);
      if (v31)
      {
        v297 = 0;
        do
        {
          v1053 = (v284 + v297);
          v1054 = 4;
          v298 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v298, &v1053);
          v297 += v282;
          --v31;
        }

        while (v31);
      }

      break;
    case 30:
      sub_2716143AC(&v1040, a3);
      v10 = *a2;
      v112 = v1049;
      v113 = v1040;
      if (!v1040)
      {
        goto LABEL_793;
      }

      v114 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v114->__on_zero_shared)(v114);
          std::__shared_weak_count::__release_weak(v114);
        }

        v113 = v1040;
        v115 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v116 = v113;
            (v115->__on_zero_shared)(v115);
            std::__shared_weak_count::__release_weak(v115);
            v113 = v116;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v113 + 96))(&v1052);
      }

      else
      {
LABEL_793:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v560 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v561 = v1047;
      v562 = v1048;
      v563 = v1042;
      if (v1050 == 1 && v1042)
      {
        v564 = v1040;
        v565 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v565->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v566 = v564;
            (v565->__on_zero_shared)(v565);
            std::__shared_weak_count::__release_weak(v565);
            v564 = v566;
          }
        }

        (*(*v564 + 88))(v564, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v563 = v1042;
      }

      v567 = v560 - 1;
      if (v567)
      {
        v568 = *(v10 + 32);
        if (v112)
        {
          for (i10 = 0; i10 != v567; ++i10)
          {
            v1053 = v568;
            v570 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v570;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v571 = 0;
            v572 = v112;
            do
            {
              v1053 = &v563[v571];
              v1054 = 4;
              v573 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v573, &v1053);
              v571 += v561;
              --v572;
            }

            while (v572);
            v574 = *(v10 + 48);
            v568 = *(v574 - 8);
            *(v10 + 32) = v568;
            v575 = *(v10 + 72);
            *(v10 + 112) = *(v575 - 8);
            *(v10 + 48) = v574 - 8;
            *(v10 + 72) = v575 - 8;
            v563 += v562;
          }
        }

        else
        {
          v972 = 2 * v562;
          do
          {
            v1053 = v568;
            v975 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v975;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v973 = *(v10 + 48);
            v568 = *(v973 - 8);
            *(v10 + 32) = v568;
            v974 = *(v10 + 72);
            *(v10 + 112) = *(v974 - 8);
            *(v10 + 48) = v973 - 8;
            *(v10 + 72) = v974 - 8;
            v563 = (v563 + v972);
            --v567;
          }

          while (v567);
        }
      }

      sub_27182D120(v10);
      if (v112)
      {
        v576 = 0;
        do
        {
          v1053 = &v563[v576];
          v1054 = 4;
          v577 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v577, &v1053);
          v576 += v561;
          --v112;
        }

        while (v112);
      }

      break;
    case 31:
      sub_271614DE4(&v1040, a3);
      v10 = *a2;
      v81 = v1049;
      v82 = v1040;
      if (!v1040)
      {
        goto LABEL_670;
      }

      v83 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v83->__on_zero_shared)(v83);
          std::__shared_weak_count::__release_weak(v83);
        }

        v82 = v1040;
        v84 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v85 = v82;
            (v84->__on_zero_shared)(v84);
            std::__shared_weak_count::__release_weak(v84);
            v82 = v85;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v82 + 96))(&v1052);
      }

      else
      {
LABEL_670:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v461 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v462 = v1047;
      v463 = v1048;
      v464 = v1042;
      if (v1050 == 1 && v1042)
      {
        v465 = v1040;
        v466 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v466->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v467 = v465;
            (v466->__on_zero_shared)(v466);
            std::__shared_weak_count::__release_weak(v466);
            v465 = v467;
          }
        }

        (*(*v465 + 88))(v465, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v464 = v1042;
      }

      v468 = v461 - 1;
      if (v468)
      {
        v469 = *(v10 + 32);
        if (v81)
        {
          for (i11 = 0; i11 != v468; ++i11)
          {
            v1053 = v469;
            v471 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v471;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v472 = 0;
            v473 = v81;
            do
            {
              v1053 = &v464[v472];
              v1054 = 4;
              v474 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v474, &v1053);
              v472 += v462;
              --v473;
            }

            while (v473);
            v475 = *(v10 + 48);
            v469 = *(v475 - 8);
            *(v10 + 32) = v469;
            v476 = *(v10 + 72);
            *(v10 + 112) = *(v476 - 8);
            *(v10 + 48) = v475 - 8;
            *(v10 + 72) = v476 - 8;
            v464 += v463;
          }
        }

        else
        {
          v952 = 2 * v463;
          do
          {
            v1053 = v469;
            v955 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v955;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v953 = *(v10 + 48);
            v469 = *(v953 - 8);
            *(v10 + 32) = v469;
            v954 = *(v10 + 72);
            *(v10 + 112) = *(v954 - 8);
            *(v10 + 48) = v953 - 8;
            *(v10 + 72) = v954 - 8;
            v464 = (v464 + v952);
            --v468;
          }

          while (v468);
        }
      }

      sub_27182D120(v10);
      if (v81)
      {
        v477 = 0;
        do
        {
          v1053 = &v464[v477];
          v1054 = 4;
          v478 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v478, &v1053);
          v477 += v462;
          --v81;
        }

        while (v81);
      }

      break;
    case 32:
      sub_2716152D4(&v1040, a3);
      v10 = *a2;
      v122 = v1049;
      v123 = v1040;
      if (!v1040)
      {
        goto LABEL_837;
      }

      v124 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v124->__on_zero_shared)(v124);
          std::__shared_weak_count::__release_weak(v124);
        }

        v123 = v1040;
        v125 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v126 = v123;
            (v125->__on_zero_shared)(v125);
            std::__shared_weak_count::__release_weak(v125);
            v123 = v126;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v123 + 96))(&v1052);
      }

      else
      {
LABEL_837:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v596 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v597 = v1047;
      v598 = v1048;
      v599 = v1042;
      if (v1050 == 1 && v1042)
      {
        v600 = v1040;
        v601 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v601->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v602 = v600;
            (v601->__on_zero_shared)(v601);
            std::__shared_weak_count::__release_weak(v601);
            v600 = v602;
          }
        }

        (*(*v600 + 88))(v600, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v599 = v1042;
      }

      v603 = v596 - 1;
      if (v603)
      {
        v604 = *(v10 + 32);
        if (v122)
        {
          for (i12 = 0; i12 != v603; ++i12)
          {
            v1053 = v604;
            v606 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v606;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v607 = 0;
            v608 = v122;
            do
            {
              v1053 = &v599[2 * v607];
              v1054 = 4;
              v609 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v609, &v1053);
              v607 += v597;
              --v608;
            }

            while (v608);
            v610 = *(v10 + 48);
            v604 = *(v610 - 8);
            *(v10 + 32) = v604;
            v611 = *(v10 + 72);
            *(v10 + 112) = *(v611 - 8);
            *(v10 + 48) = v610 - 8;
            *(v10 + 72) = v611 - 8;
            v599 += 2 * v598;
          }
        }

        else
        {
          v980 = 4 * v598;
          do
          {
            v1053 = v604;
            v983 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v983;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v981 = *(v10 + 48);
            v604 = *(v981 - 8);
            *(v10 + 32) = v604;
            v982 = *(v10 + 72);
            *(v10 + 112) = *(v982 - 8);
            *(v10 + 48) = v981 - 8;
            *(v10 + 72) = v982 - 8;
            v599 = (v599 + v980);
            --v603;
          }

          while (v603);
        }
      }

      sub_27182D120(v10);
      if (v122)
      {
        v612 = 0;
        do
        {
          v1053 = &v599[2 * v612];
          v1054 = 4;
          v613 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v613, &v1053);
          v612 += v597;
          --v122;
        }

        while (v122);
      }

      break;
    case 33:
      sub_2716157C4(&v1040, a3);
      v10 = *a2;
      v174 = v1049;
      v175 = v1040;
      if (!v1040)
      {
        goto LABEL_1051;
      }

      v176 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v176->__on_zero_shared)(v176);
          std::__shared_weak_count::__release_weak(v176);
        }

        v175 = v1040;
        v177 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v175;
            (v177->__on_zero_shared)(v177);
            std::__shared_weak_count::__release_weak(v177);
            v175 = v178;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v175 + 96))(&v1052);
      }

      else
      {
LABEL_1051:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v766 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v767 = v1047;
      v768 = v1048;
      v769 = v1042;
      if (v1050 == 1 && v1042)
      {
        v770 = v1040;
        v771 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v771->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v772 = v770;
            (v771->__on_zero_shared)(v771);
            std::__shared_weak_count::__release_weak(v771);
            v770 = v772;
          }
        }

        (*(*v770 + 88))(v770, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v769 = v1042;
      }

      v773 = v766 - 1;
      if (v766 != 1)
      {
        if (v174)
        {
          v774 = 0;
          v775 = *(v10 + 32);
          do
          {
            v1053 = v775;
            v776 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v776;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v777 = 0;
            v778 = v174;
            do
            {
              v1053 = (v769 + v777);
              v1054 = 4;
              v779 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v779, &v1053);
              v777 += v767;
              --v778;
            }

            while (v778);
            v780 = *(v10 + 48);
            v775 = *(v780 - 8);
            *(v10 + 32) = v775;
            v781 = *(v10 + 72);
            *(v10 + 112) = *(v781 - 8);
            *(v10 + 48) = v780 - 8;
            *(v10 + 72) = v781 - 8;
            v769 = (v769 + v768);
            ++v774;
          }

          while (v774 != v773);
        }

        else
        {
          v769 = (v769 + v768 + v768 * (v766 - 2));
          v1012 = *(v10 + 32);
          do
          {
            v1053 = v1012;
            v1015 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1015;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1013 = *(v10 + 48);
            v1012 = *(v1013 - 8);
            *(v10 + 32) = v1012;
            v1014 = *(v10 + 72);
            *(v10 + 112) = *(v1014 - 8);
            *(v10 + 48) = v1013 - 8;
            *(v10 + 72) = v1014 - 8;
            --v773;
          }

          while (v773);
        }
      }

      sub_27182D120(v10);
      if (v174)
      {
        v782 = 0;
        do
        {
          v1053 = (v769 + v782);
          v1054 = 4;
          v783 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v783, &v1053);
          v782 += v767;
          --v174;
        }

        while (v174);
      }

      break;
    case 34:
      sub_271616118(&v1040, a3);
      v10 = *a2;
      v117 = v1049;
      v118 = v1040;
      if (!v1040)
      {
        goto LABEL_815;
      }

      v119 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v119->__on_zero_shared)(v119);
          std::__shared_weak_count::__release_weak(v119);
        }

        v118 = v1040;
        v120 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v121 = v118;
            (v120->__on_zero_shared)(v120);
            std::__shared_weak_count::__release_weak(v120);
            v118 = v121;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v118 + 96))(&v1052);
      }

      else
      {
LABEL_815:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v578 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v579 = v1047;
      v580 = v1048;
      v581 = v1042;
      if (v1050 == 1 && v1042)
      {
        v582 = v1040;
        v583 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v584 = v582;
            (v583->__on_zero_shared)(v583);
            std::__shared_weak_count::__release_weak(v583);
            v582 = v584;
          }
        }

        (*(*v582 + 88))(v582, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v581 = v1042;
      }

      v585 = v578 - 1;
      if (v585)
      {
        v586 = *(v10 + 32);
        if (v117)
        {
          for (i13 = 0; i13 != v585; ++i13)
          {
            v1053 = v586;
            v588 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v588;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v589 = 0;
            v590 = v117;
            do
            {
              v1053 = &v581[v589];
              v1054 = 4;
              v591 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v591, &v1053);
              v589 += v579;
              --v590;
            }

            while (v590);
            v592 = *(v10 + 48);
            v586 = *(v592 - 8);
            *(v10 + 32) = v586;
            v593 = *(v10 + 72);
            *(v10 + 112) = *(v593 - 8);
            *(v10 + 48) = v592 - 8;
            *(v10 + 72) = v593 - 8;
            v581 += v580;
          }
        }

        else
        {
          v976 = 2 * v580;
          do
          {
            v1053 = v586;
            v979 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v979;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v977 = *(v10 + 48);
            v586 = *(v977 - 8);
            *(v10 + 32) = v586;
            v978 = *(v10 + 72);
            *(v10 + 112) = *(v978 - 8);
            *(v10 + 48) = v977 - 8;
            *(v10 + 72) = v978 - 8;
            v581 = (v581 + v976);
            --v585;
          }

          while (v585);
        }
      }

      sub_27182D120(v10);
      if (v117)
      {
        v594 = 0;
        do
        {
          v1053 = &v581[v594];
          v1054 = 4;
          v595 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v595, &v1053);
          v594 += v579;
          --v117;
        }

        while (v117);
      }

      break;
    case 35:
      sub_271616B70(&v1040, a3);
      v10 = *a2;
      v107 = v1049;
      v108 = v1040;
      if (!v1040)
      {
        goto LABEL_771;
      }

      v109 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v1040;
        v110 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v108 + 96))(&v1052);
      }

      else
      {
LABEL_771:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v542 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v543 = v1047;
      v544 = v1048;
      v545 = v1042;
      if (v1050 == 1 && v1042)
      {
        v546 = v1040;
        v547 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v547->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v548 = v546;
            (v547->__on_zero_shared)(v547);
            std::__shared_weak_count::__release_weak(v547);
            v546 = v548;
          }
        }

        (*(*v546 + 88))(v546, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v545 = v1042;
      }

      v549 = v542 - 1;
      if (v549)
      {
        v550 = *(v10 + 32);
        if (v107)
        {
          for (i14 = 0; i14 != v549; ++i14)
          {
            v1053 = v550;
            v552 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v552;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v553 = 0;
            v554 = v107;
            do
            {
              v1053 = &v545[v553];
              v1054 = 4;
              v555 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v555, &v1053);
              v553 += v543;
              --v554;
            }

            while (v554);
            v556 = *(v10 + 48);
            v550 = *(v556 - 8);
            *(v10 + 32) = v550;
            v557 = *(v10 + 72);
            *(v10 + 112) = *(v557 - 8);
            *(v10 + 48) = v556 - 8;
            *(v10 + 72) = v557 - 8;
            v545 += v544;
          }
        }

        else
        {
          v968 = 2 * v544;
          do
          {
            v1053 = v550;
            v971 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v971;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v969 = *(v10 + 48);
            v550 = *(v969 - 8);
            *(v10 + 32) = v550;
            v970 = *(v10 + 72);
            *(v10 + 112) = *(v970 - 8);
            *(v10 + 48) = v969 - 8;
            *(v10 + 72) = v970 - 8;
            v545 = (v545 + v968);
            --v549;
          }

          while (v549);
        }
      }

      sub_27182D120(v10);
      if (v107)
      {
        v558 = 0;
        do
        {
          v1053 = &v545[v558];
          v1054 = 4;
          v559 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v559, &v1053);
          v558 += v543;
          --v107;
        }

        while (v107);
      }

      break;
    case 36:
      sub_2716175C8(&v1040, a3);
      v10 = *a2;
      v102 = v1049;
      v103 = v1040;
      if (!v1040)
      {
        goto LABEL_749;
      }

      v104 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v104->__on_zero_shared)(v104);
          std::__shared_weak_count::__release_weak(v104);
        }

        v103 = v1040;
        v105 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v106 = v103;
            (v105->__on_zero_shared)(v105);
            std::__shared_weak_count::__release_weak(v105);
            v103 = v106;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v103 + 96))(&v1052);
      }

      else
      {
LABEL_749:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v524 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v525 = v1047;
      v526 = v1048;
      v527 = v1042;
      if (v1050 == 1 && v1042)
      {
        v528 = v1040;
        v529 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v529->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v530 = v528;
            (v529->__on_zero_shared)(v529);
            std::__shared_weak_count::__release_weak(v529);
            v528 = v530;
          }
        }

        (*(*v528 + 88))(v528, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v527 = v1042;
      }

      v531 = v524 - 1;
      if (v531)
      {
        v532 = *(v10 + 32);
        if (v102)
        {
          for (i15 = 0; i15 != v531; ++i15)
          {
            v1053 = v532;
            v534 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v534;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v535 = 0;
            v536 = v102;
            do
            {
              v1053 = &v527[2 * v535];
              v1054 = 4;
              v537 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v537, &v1053);
              v535 += v525;
              --v536;
            }

            while (v536);
            v538 = *(v10 + 48);
            v532 = *(v538 - 8);
            *(v10 + 32) = v532;
            v539 = *(v10 + 72);
            *(v10 + 112) = *(v539 - 8);
            *(v10 + 48) = v538 - 8;
            *(v10 + 72) = v539 - 8;
            v527 += 2 * v526;
          }
        }

        else
        {
          v964 = 4 * v526;
          do
          {
            v1053 = v532;
            v967 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v967;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v965 = *(v10 + 48);
            v532 = *(v965 - 8);
            *(v10 + 32) = v532;
            v966 = *(v10 + 72);
            *(v10 + 112) = *(v966 - 8);
            *(v10 + 48) = v965 - 8;
            *(v10 + 72) = v966 - 8;
            v527 = (v527 + v964);
            --v531;
          }

          while (v531);
        }
      }

      sub_27182D120(v10);
      if (v102)
      {
        v540 = 0;
        do
        {
          v1053 = &v527[2 * v540];
          v1054 = 4;
          v541 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v541, &v1053);
          v540 += v525;
          --v102;
        }

        while (v102);
      }

      break;
    case 37:
      sub_271617FA8(&v1040, a3);
      v10 = *a2;
      v159 = v1049;
      v160 = v1040;
      if (!v1040)
      {
        goto LABEL_985;
      }

      v161 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v161->__on_zero_shared)(v161);
          std::__shared_weak_count::__release_weak(v161);
        }

        v160 = v1040;
        v162 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v163 = v160;
            (v162->__on_zero_shared)(v162);
            std::__shared_weak_count::__release_weak(v162);
            v160 = v163;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v160 + 96))(&v1052);
      }

      else
      {
LABEL_985:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v712 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v713 = v1047;
      v714 = v1048;
      v715 = v1042;
      if (v1050 == 1 && v1042)
      {
        v716 = v1040;
        v717 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v717->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v718 = v716;
            (v717->__on_zero_shared)(v717);
            std::__shared_weak_count::__release_weak(v717);
            v716 = v718;
          }
        }

        (*(*v716 + 88))(v716, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v715 = v1042;
      }

      v719 = v712 - 1;
      if (v712 != 1)
      {
        if (v159)
        {
          v720 = 0;
          v721 = *(v10 + 32);
          do
          {
            v1053 = v721;
            v722 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v722;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v723 = 0;
            v724 = v159;
            do
            {
              v1053 = (v715 + v723);
              v1054 = 4;
              v725 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182D3F8(v725, &v1053);
              v723 += v713;
              --v724;
            }

            while (v724);
            v726 = *(v10 + 48);
            v721 = *(v726 - 8);
            *(v10 + 32) = v721;
            v727 = *(v10 + 72);
            *(v10 + 112) = *(v727 - 8);
            *(v10 + 48) = v726 - 8;
            *(v10 + 72) = v727 - 8;
            v715 = (v715 + v714);
            ++v720;
          }

          while (v720 != v719);
        }

        else
        {
          v715 = (v715 + v714 + v714 * (v712 - 2));
          v1000 = *(v10 + 32);
          do
          {
            v1053 = v1000;
            v1003 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1003;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1001 = *(v10 + 48);
            v1000 = *(v1001 - 8);
            *(v10 + 32) = v1000;
            v1002 = *(v10 + 72);
            *(v10 + 112) = *(v1002 - 8);
            *(v10 + 48) = v1001 - 8;
            *(v10 + 72) = v1002 - 8;
            --v719;
          }

          while (v719);
        }
      }

      sub_27182D120(v10);
      if (v159)
      {
        v728 = 0;
        do
        {
          v1053 = (v715 + v728);
          v1054 = 4;
          v729 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182D3F8(v729, &v1053);
          v728 += v713;
          --v159;
        }

        while (v159);
      }

      break;
    case 38:
      sub_271618498(&v1040, a3);
      v10 = *a2;
      v184 = v1049;
      v185 = v1040;
      if (!v1040)
      {
        goto LABEL_1095;
      }

      v186 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v186->__on_zero_shared)(v186);
          std::__shared_weak_count::__release_weak(v186);
        }

        v185 = v1040;
        v187 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v188 = v185;
            (v187->__on_zero_shared)(v187);
            std::__shared_weak_count::__release_weak(v187);
            v185 = v188;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v185 + 96))(&v1052);
      }

      else
      {
LABEL_1095:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v802 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v803 = v1047;
      v804 = v1048;
      v805 = v1042;
      if (v1050 == 1 && v1042)
      {
        v806 = v1040;
        v807 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v807->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v808 = v806;
            (v807->__on_zero_shared)(v807);
            std::__shared_weak_count::__release_weak(v807);
            v806 = v808;
          }
        }

        (*(*v806 + 88))(v806, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v805 = v1042;
      }

      v809 = v802 - 1;
      if (v809)
      {
        v810 = *(v10 + 32);
        if (v184)
        {
          for (i16 = 0; i16 != v809; ++i16)
          {
            v1053 = v810;
            v812 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v812;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v813 = 0;
            v814 = v184;
            do
            {
              v1053 = &v805[v813];
              v1054 = 4;
              v815 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182DFB4(v815, &v1053);
              v813 += v803;
              --v814;
            }

            while (v814);
            v816 = *(v10 + 48);
            v810 = *(v816 - 8);
            *(v10 + 32) = v810;
            v817 = *(v10 + 72);
            *(v10 + 112) = *(v817 - 8);
            *(v10 + 48) = v816 - 8;
            *(v10 + 72) = v817 - 8;
            v805 += v804;
          }
        }

        else
        {
          v1020 = 2 * v804;
          do
          {
            v1053 = v810;
            v1023 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v1023;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v1021 = *(v10 + 48);
            v810 = *(v1021 - 8);
            *(v10 + 32) = v810;
            v1022 = *(v10 + 72);
            *(v10 + 112) = *(v1022 - 8);
            *(v10 + 48) = v1021 - 8;
            *(v10 + 72) = v1022 - 8;
            v805 = (v805 + v1020);
            --v809;
          }

          while (v809);
        }
      }

      sub_27182D120(v10);
      if (v184)
      {
        v818 = 0;
        do
        {
          v1053 = &v805[v818];
          v1054 = 4;
          v819 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182DFB4(v819, &v1053);
          v818 += v803;
          --v184;
        }

        while (v184);
      }

      break;
    case 39:
      sub_271618A00(&v1040, a3);
      v10 = *a2;
      v66 = v1049;
      v67 = v1040;
      if (!v1040)
      {
        goto LABEL_604;
      }

      v68 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);
          std::__shared_weak_count::__release_weak(v68);
        }

        v67 = v1040;
        v69 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v70 = v67;
            (v69->__on_zero_shared)(v69);
            std::__shared_weak_count::__release_weak(v69);
            v67 = v70;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v67 + 96))(&v1052);
      }

      else
      {
LABEL_604:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v407 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v408 = v1047;
      v409 = v1048;
      v410 = v1042;
      if (v1050 == 1 && v1042)
      {
        v411 = v1040;
        v412 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v412->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v413 = v411;
            (v412->__on_zero_shared)(v412);
            std::__shared_weak_count::__release_weak(v412);
            v411 = v413;
          }
        }

        (*(*v411 + 88))(v411, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v410 = v1042;
      }

      v414 = v407 - 1;
      if (v414)
      {
        v415 = *(v10 + 32);
        if (v66)
        {
          for (i17 = 0; i17 != v414; ++i17)
          {
            v1053 = v415;
            v417 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v417;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v418 = 0;
            v419 = v66;
            do
            {
              v1053 = &v410[v418];
              v1054 = 4;
              v420 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E284(v420, &v1053);
              v418 += v408;
              --v419;
            }

            while (v419);
            v421 = *(v10 + 48);
            v415 = *(v421 - 8);
            *(v10 + 32) = v415;
            v422 = *(v10 + 72);
            *(v10 + 112) = *(v422 - 8);
            *(v10 + 48) = v421 - 8;
            *(v10 + 72) = v422 - 8;
            v410 += v409;
          }
        }

        else
        {
          v940 = 2 * v409;
          do
          {
            v1053 = v415;
            v943 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v943;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v941 = *(v10 + 48);
            v415 = *(v941 - 8);
            *(v10 + 32) = v415;
            v942 = *(v10 + 72);
            *(v10 + 112) = *(v942 - 8);
            *(v10 + 48) = v941 - 8;
            *(v10 + 72) = v942 - 8;
            v410 = (v410 + v940);
            --v414;
          }

          while (v414);
        }
      }

      sub_27182D120(v10);
      if (v66)
      {
        v423 = 0;
        do
        {
          v1053 = &v410[v423];
          v1054 = 4;
          v424 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E284(v424, &v1053);
          v423 += v408;
          --v66;
        }

        while (v66);
      }

      break;
    case 40:
      sub_2716194B0(&v1040, a3);
      v10 = *a2;
      v51 = v1049;
      v52 = v1040;
      if (!v1040)
      {
        goto LABEL_538;
      }

      v53 = v1041;
      if (v1041)
      {
        atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v53->__on_zero_shared)(v53);
          std::__shared_weak_count::__release_weak(v53);
        }

        v52 = v1040;
        v54 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v55 = v52;
            (v54->__on_zero_shared)(v54);
            std::__shared_weak_count::__release_weak(v54);
            v52 = v55;
          }
        }
      }

      if (v1051 == 1)
      {
        (*(*v52 + 96))(&v1052);
      }

      else
      {
LABEL_538:
        v1052 = 0;
      }

      if (!v1043)
      {
        goto LABEL_1205;
      }

      if (!v1044)
      {
        goto LABEL_1205;
      }

      v353 = v1045;
      if (!v1045)
      {
        goto LABEL_1205;
      }

      v354 = v1047;
      v355 = v1048;
      v356 = v1042;
      if (v1050 == 1 && v1042)
      {
        v357 = v1040;
        v358 = v1041;
        if (v1041)
        {
          atomic_fetch_add_explicit(&v1041->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v358->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v359 = v357;
            (v358->__on_zero_shared)(v358);
            std::__shared_weak_count::__release_weak(v358);
            v357 = v359;
          }
        }

        (*(*v357 + 88))(v357, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v356 = v1042;
      }

      v360 = v353 - 1;
      if (v360)
      {
        v361 = *(v10 + 32);
        if (v51)
        {
          for (i18 = 0; i18 != v360; ++i18)
          {
            v1053 = v361;
            v363 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v363;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v364 = 0;
            v365 = v51;
            do
            {
              v1053 = &v356[2 * v364];
              v1054 = 4;
              v366 = sub_27182D2AC(v10);
              ++*(v10 + 112);
              sub_27182E498(v366, &v1053);
              v364 += v354;
              --v365;
            }

            while (v365);
            v367 = *(v10 + 48);
            v361 = *(v367 - 8);
            *(v10 + 32) = v361;
            v368 = *(v10 + 72);
            *(v10 + 112) = *(v368 - 8);
            *(v10 + 48) = v367 - 8;
            *(v10 + 72) = v368 - 8;
            v356 += 2 * v355;
          }
        }

        else
        {
          v928 = 4 * v355;
          do
          {
            v1053 = v361;
            v931 = sub_27182D2AC(v10);
            ++*(v10 + 112);
            *(v10 + 32) = v931;
            sub_27182D194(v10 + 40, &v1053);
            sub_2717313F0(v10 + 64, (v10 + 112));
            *(v10 + 112) = 0;
            if (*(v10 + 104) == 1)
            {
              *(v10 + 104) = 0;
            }

            v929 = *(v10 + 48);
            v361 = *(v929 - 8);
            *(v10 + 32) = v361;
            v930 = *(v10 + 72);
            *(v10 + 112) = *(v930 - 8);
            *(v10 + 48) = v929 - 8;
            *(v10 + 72) = v930 - 8;
            v356 = (v356 + v928);
            --v360;
          }

          while (v360);
        }
      }

      sub_27182D120(v10);
      if (v51)
      {
        v369 = 0;
        do
        {
          v1053 = &v356[2 * v369];
          v1054 = 4;
          v370 = sub_27182D2AC(v10);
          ++*(v10 + 112);
          sub_27182E498(v370, &v1053);
          v369 += v354;
          --v51;
        }

        while (v51);
      }

      break;
    default:
      return;
  }

  v892 = *(v10 + 48);
  *(v10 + 32) = *(v892 - 8);
  v893 = *(v10 + 72);
  *(v10 + 112) = *(v893 - 8);
  *(v10 + 48) = v892 - 8;
  *(v10 + 72) = v893 - 8;
LABEL_1205:
  v894 = v1052;
  v1052 = 0;
  if (v894)
  {
    (*(*v894 + 8))(v894);
  }

  v895 = v1041;
  if (v1041)
  {
    if (!atomic_fetch_add(&v1041->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v895->__on_zero_shared)(v895);
      std::__shared_weak_count::__release_weak(v895);
    }
  }
}