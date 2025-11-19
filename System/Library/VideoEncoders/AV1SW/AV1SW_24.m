uint64_t sub_277A7BA84(int a1, int a2, int a3, int a4)
{
  if (a3 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = -a3;
  }

  v5 = a2 + a1;
  if (a4)
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    if (v4 <= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    if (v5 > 0x18)
    {
      v7 = v6;
    }

    v8 = v4 > 0x13;
    if (v4 > 0x2F)
    {
      v8 = 2;
    }

    if (v5 <= 0x10)
    {
      v7 = v8;
    }

    if (v4 <= 0x3F)
    {
      v9 = v4 > 0x27;
    }

    else
    {
      v9 = 2;
    }

    if (v5 <= 8)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  if (v5 <= 8)
  {
    return v4 > 0x37;
  }

  if (v5 <= 0xC)
  {
    return v4 > 0x27;
  }

  if (a3)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3 != 0;
  if (v4 > 3)
  {
    v13 = 2;
  }

  if (v4 > 0x1F)
  {
    v13 = 3;
  }

  if (v5 <= 0x20)
  {
    v12 = v13;
  }

  v14 = v4 > 7;
  if (v4 > 0xF)
  {
    v14 = 2;
  }

  if (v4 <= 0x1F)
  {
    v15 = v14;
  }

  else
  {
    v15 = 3;
  }

  if (v5 > 0x18)
  {
    v15 = v12;
  }

  v16 = v4 > 0x27;
  if (v5 <= 0x10)
  {
    return v16;
  }

  else
  {
    return v15;
  }
}

void sub_277A7BB6C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, uint16x8_t a12, int32x4_t a13, uint16x4_t a14)
{
  v15 = **(a2 + 7864);
  v16 = a2 + 2608 * a3;
  v17 = *(v16 + 56);
  __b = *(v16 + 32) + 4 * (a4 + v17 * a5);
  if (a3)
  {
    v19 = a3;
    v20 = v15[3];
    v21 = byte_277C32971[v20];
    v22 = v15[143] != 0;
    v23 = 3 * v15[89];
    v24 = *(a1 + 24696);
    if (v20 == 13)
    {
      v25 = (a3 - 1);
      if (*(a2 + 14872 + v25))
      {
        v26 = dword_277C3BEE4[a6];
        v27 = dword_277C3BF30[a6];
        v28 = a2 + (v25 << 6);
        if ((*(*(a2 + 7960) + 192) & 8) != 0)
        {
          v34 = 2 * v26;
          v35 = (2 * __b);
          do
          {
            memcpy(v35, (v28 + 14876), v34);
            v35 += 2 * v17;
            --v27;
          }

          while (v27);
        }

        else
        {
          v29 = (*(v16 + 32) + 4 * (a4 + v17 * a5));
          do
          {
            memcpy(v29, (v28 + 14876), v26);
            v29 += v17;
            --v27;
          }

          while (v27);
        }
      }

      else
      {
        sub_277A792E0(a2, *(v24 + 28), *(v24 + 61), *(v16 + 184), *(v16 + 185), a6, v21, v23, a7, a8, a9, a10, a11, a12, a13, a14, v22, 5u, __b, v17, __b, v17, a4, a5, a3);
        if (*(a2 + 14874) == 1)
        {
          v31 = dword_277C3BEE4[a6];
          if ((*(*(a2 + 7960) + 192) & 8) != 0)
          {
            v33 = (2 * __b);
            v31 = 2 * v31;
            v32 = (a2 + (v25 << 6) + 14876);
          }

          else
          {
            v32 = (a2 + (v25 << 6) + 14876);
            v33 = __b;
          }

          memcpy(v32, v33, v31);
          *(a2 + 14872 + v25) = 1;
        }
      }

      v36 = **(a2 + 7864);
      if (!*(a2 + 15012))
      {
        v37 = dword_277C3BEE4[a6];
        v38 = dword_277C3BF30[a6];
        v39 = a2 + 10776;
        v40 = *(a2 + 15008);
        v41 = (v37 - v40);
        v42 = *(a2 + 15004);
        v43 = v38 - v42;
        if (v41 >= 1)
        {
          if (v42 >= 1)
          {
            v44 = 0;
            v45 = vdupq_n_s64(v41 - 1);
            v46 = a2 + 2 * v40 + 10784;
            v47 = vdupq_n_s64(8uLL);
            v48 = (v41 + 7) & 0xFFFFFFF8;
            v49 = v39 + 2 * v40;
            do
            {
              v50 = v46;
              v51 = v48;
              v52 = *(v49 - 2);
              v53 = xmmword_277BB70A0;
              v54 = xmmword_277BB7090;
              v55 = xmmword_277BB7080;
              v56 = xmmword_277BB7070;
              do
              {
                v57 = vmovn_s64(vcgeq_u64(v45, v53));
                if (vuzp1_s8(vuzp1_s16(v57, *v45.i8), *v45.i8).u8[0])
                {
                  *(v50 - 4) = v52;
                }

                if (vuzp1_s8(vuzp1_s16(v57, *&v45), *&v45).i8[1])
                {
                  *(v50 - 3) = v52;
                }

                if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v54))), *&v45).i8[2])
                {
                  *(v50 - 2) = v52;
                  *(v50 - 1) = v52;
                }

                v58 = vmovn_s64(vcgeq_u64(v45, v55));
                if (vuzp1_s8(*&v45, vuzp1_s16(v58, *&v45)).i32[1])
                {
                  *v50 = v52;
                }

                if (vuzp1_s8(*&v45, vuzp1_s16(v58, *&v45)).i8[5])
                {
                  v50[1] = v52;
                }

                if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v56)))).i8[6])
                {
                  v50[2] = v52;
                  v50[3] = v52;
                }

                v55 = vaddq_s64(v55, v47);
                v54 = vaddq_s64(v54, v47);
                v53 = vaddq_s64(v53, v47);
                v50 += 8;
                v56 = vaddq_s64(v56, v47);
                v51 -= 8;
              }

              while (v51);
              v49 += 64;
              ++v44;
              v46 += 64;
            }

            while (v44 != v42);
          }

          *(a2 + 15008) = v37;
        }

        if (v43 >= 1)
        {
          v59 = 0;
          v60 = (v39 + (v42 << 6));
          do
          {
            v61 = v60;
            v62 = v37;
            do
            {
              *v61 = *(v61 - 32);
              ++v61;
              --v62;
            }

            while (v62);
            v60 += 32;
            ++v59;
          }

          while (v59 != v43);
          *(a2 + 15004) = v38;
        }

        off_28866F640[(a6 - 19 * ((27 * a6) >> 9))]();
        *(a2 + 15012) = 1;
      }

      v63 = *(v36 + 92);
      v64 = -3 * ((11 * (v63 + 1)) >> 5) + v63 + 1;
      v65 = (11 * v63 + 11) >> 5;
      if (v19 != 1)
      {
        v65 = v64;
      }

      if (v65)
      {
        v66 = *(v36 + 93);
        v67 = v66 >> 4;
        v68 = v66 & 0xF;
        if (v19 == 1)
        {
          v69 = v67;
        }

        else
        {
          v69 = v68;
        }

        if (v65 == 2)
        {
          v70 = (v69 + 1);
        }

        else
        {
          v70 = ~v69;
        }
      }

      else
      {
        v70 = 0;
      }

      if ((*(*(a2 + 7960) + 192) & 8) != 0)
      {
        v72 = off_28866F770[(a6 - 19 * ((27 * a6) >> 9))];
        v73 = *(a2 + 10656);

        (v72)(a2 + 12824, 2 * __b, v17, v70, v73);
      }

      else
      {
        v71 = off_28866F6D8[(a6 - 19 * ((27 * a6) >> 9))];

        (v71)(a2 + 12824, __b, v17, v70);
      }
    }

    else
    {
      sub_277A792E0(a2, *(v24 + 28), *(v24 + 61), *(v16 + 184), *(v16 + 185), a6, v21, v23, a7, a8, a9, a10, a11, a12, a13, a14, v22, 5u, __b, v17, __b, v17, a4, a5, a3);
    }
  }

  else
  {
    if (v15[91])
    {
      v30 = v15[90];
    }

    else
    {
      v30 = 5;
    }

    sub_277A792E0(a2, *(*(a1 + 24696) + 28), *(*(a1 + 24696) + 61), *(v16 + 184), *(v16 + 185), a6, v15[2], 3 * v15[88], a7, a8, a9, a10, a11, a12, a13, a14, v15[142] != 0, v30, __b, v17, __b, v17, a4, a5, 0);
  }
}

void sub_277A7C138()
{
  qword_280ABB4F8 = sub_277B21168;
  qword_280ABB500 = sub_277B21184;
  qword_280ABB508 = sub_277B211A0;
  qword_280ABB510 = sub_277B211BC;
  qword_280ABB518 = sub_277B21388;
  qword_280ABB520 = sub_277B211DC;
  qword_280ABB528 = sub_277B21214;
  qword_280ABB530 = sub_277B21230;
  qword_280ABB538 = sub_277B21284;
  qword_280ABB540 = sub_277B212A0;
  qword_280ABB548 = sub_277B212F8;
  qword_280ABB550 = sub_277B21318;
  qword_280ABB558 = sub_277B21360;
  qword_280ABB560 = sub_277B211F8;
  qword_280ABB568 = sub_277B21268;
  qword_280ABB570 = sub_277B2124C;
  qword_280ABB578 = sub_277B212D8;
  qword_280ABB580 = sub_277B212BC;
  qword_280ABB588 = sub_277B21338;
  qword_280ABB590 = sub_277B213B0;
  qword_280ABB598 = sub_277B213E0;
  qword_280ABB5A0 = sub_277B21444;
  qword_280ABB5A8 = sub_277B214EC;
  qword_280ABB5B0 = sub_277B22404;
  qword_280ABB5B8 = sub_277B21674;
  qword_280ABB5C0 = sub_277B2177C;
  qword_280ABB5C8 = sub_277B217AC;
  qword_280ABB5D0 = sub_277B219B8;
  qword_280ABB5D8 = sub_277B21A20;
  qword_280ABB5E0 = sub_277B21E0C;
  qword_280ABB5E8 = sub_277B21ED0;
  qword_280ABB5F0 = sub_277B222EC;
  qword_280ABB5F8 = sub_277B216D8;
  qword_280ABB600 = sub_277B21988;
  qword_280ABB608 = sub_277B21854;
  qword_280ABB610 = sub_277B21DA8;
  qword_280ABB618 = sub_277B21B54;
  qword_280ABB620 = sub_277B221E8;
  qword_280ABBB80 = sub_277B27B78;
  qword_280ABBB88 = sub_277B27CEC;
  qword_280ABBB90 = sub_277B27F58;
  qword_280ABBB98 = sub_277B28110;
  qword_280ABBBA0 = sub_277B283D8;
  qword_280ABBBA8 = sub_277B27BF4;
  qword_280ABBBB0 = sub_277B27C70;
  qword_280ABBBB8 = sub_277B27D68;
  qword_280ABBBC0 = sub_277B27EDC;
  qword_280ABBBC8 = sub_277B27FD4;
  qword_280ABBBD0 = sub_277B28050;
  qword_280ABBBD8 = sub_277B281D0;
  qword_280ABBBE0 = sub_277B28290;
  qword_280ABBBE8 = sub_277B27DE4;
  qword_280ABBBF0 = sub_277B28520;
  qword_280ABBBF8 = sub_277B27E60;
  qword_280ABBC00 = sub_277B28618;
  qword_280ABBC08 = sub_277B2859C;
  qword_280ABBC10 = sub_277B286D8;
  qword_280ABB9B8 = sub_277B2622C;
  qword_280ABB9C0 = sub_277B263A4;
  qword_280ABB9C8 = sub_277B266F8;
  qword_280ABB9D0 = sub_277B26A1C;
  qword_280ABB9D8 = sub_277B26C44;
  qword_280ABB9E0 = sub_277B262A8;
  qword_280ABB9E8 = sub_277B26328;
  qword_280ABB9F0 = sub_277B264A4;
  qword_280ABB9F8 = sub_277B2664C;
  qword_280ABBA00 = sub_277B267A4;
  qword_280ABBA08 = sub_277B26A14;
  qword_280ABBA10 = sub_277B26A24;
  qword_280ABBA18 = sub_277B26C3C;
  qword_280ABBA20 = sub_277B26424;
  qword_280ABBA28 = sub_277B265A4;
  qword_280ABBA30 = sub_277B26524;
  qword_280ABBA38 = sub_277B268FC;
  qword_280ABBA40 = sub_277B26850;
  qword_280ABBA48 = sub_277B26A2C;
  qword_280ABBA50 = sub_277B26C4C;
  qword_280ABBA58 = sub_277B26D84;
  qword_280ABBA60 = sub_277B26F28;
  qword_280ABBA68 = sub_277B2712C;
  qword_280ABBA70 = sub_277B272F0;
  qword_280ABBA78 = sub_277B26C98;
  qword_280ABBA80 = sub_277B26D38;
  qword_280ABBA88 = sub_277B26DD4;
  qword_280ABBA90 = sub_277B26ECC;
  qword_280ABBA98 = sub_277B26F84;
  qword_280ABBAA0 = sub_277B270B4;
  qword_280ABBAA8 = sub_277B271A4;
  qword_280ABBAB0 = sub_277B272E8;
  qword_280ABBAB8 = sub_277B26CE8;
  qword_280ABBAC0 = sub_277B26E74;
  qword_280ABBAC8 = sub_277B26E24;
  qword_280ABBAD0 = sub_277B2703C;
  qword_280ABBAD8 = sub_277B26FE0;
  qword_280ABBAE0 = sub_277B2721C;
  qword_280ABBAE8 = sub_277B272F8;
  qword_280ABBAF0 = sub_277B27438;
  qword_280ABBAF8 = sub_277B27608;
  qword_280ABBB00 = sub_277B278C0;
  qword_280ABBB08 = sub_277B27B6C;
  qword_280ABBB10 = sub_277B27348;
  qword_280ABBB18 = sub_277B273E8;
  qword_280ABBB20 = sub_277B27488;
  qword_280ABBB28 = sub_277B27598;
  qword_280ABBB30 = sub_277B27678;
  qword_280ABBB38 = sub_277B2780C;
  qword_280ABBB40 = sub_277B27974;
  qword_280ABBB48 = sub_277B27B60;
  qword_280ABBB50 = sub_277B27398;
  qword_280ABBB58 = sub_277B27528;
  qword_280ABBB60 = sub_277B274D8;
  qword_280ABBB68 = sub_277B27758;
  qword_280ABBB70 = sub_277B276E8;
  qword_280ABBB78 = sub_277B27A28;
  qword_280ABB200 = sub_277B201D4;
  qword_280ABB208 = sub_277B20288;
  qword_280ABB210 = sub_277B20348;
  qword_280ABB218 = sub_277B20424;
  qword_280ABB220 = sub_277B2053C;
  qword_280ABB228 = sub_277B209C0;
  qword_280ABB230 = sub_277B209F8;
  qword_280ABB238 = sub_277B20A14;
  qword_280ABB240 = sub_277B20A68;
  qword_280ABB248 = sub_277B20A84;
  qword_280ABB250 = sub_277B20AD8;
  qword_280ABB258 = sub_277B20AF4;
  qword_280ABB260 = sub_277B20B10;
  qword_280ABB268 = sub_277B209DC;
  qword_280ABB270 = sub_277B20A4C;
  qword_280ABB278 = sub_277B20A30;
  qword_280ABB280 = sub_277B20ABC;
  qword_280ABB288 = sub_277B20AA0;
  qword_280ABB290 = sub_277B20B30;
  qword_280ABB298 = sub_277B201A4;
  qword_280ABB2A0 = sub_277B20258;
  qword_280ABB2A8 = sub_277B20314;
  qword_280ABB2B0 = sub_277B203E8;
  qword_280ABB2B8 = sub_277B204F0;
  qword_280ABB2C0 = sub_277B20E5C;
  qword_280ABB2C8 = sub_277B20EBC;
  qword_280ABB2D0 = sub_277B20EEC;
  qword_280ABB2D8 = sub_277B20F80;
  qword_280ABB2E0 = sub_277B20FB4;
  qword_280ABB2E8 = sub_277B21058;
  qword_280ABB2F0 = sub_277B21094;
  qword_280ABB2F8 = sub_277B2111C;
  qword_280ABB300 = sub_277B20E8C;
  qword_280ABB308 = sub_277B20F4C;
  qword_280ABB310 = sub_277B20F1C;
  qword_280ABB318 = sub_277B2101C;
  qword_280ABB320 = sub_277B20FE8;
  qword_280ABB328 = sub_277B210D0;
  qword_280ABB330 = sub_277B20174;
  qword_280ABB338 = sub_277B20228;
  qword_280ABB340 = sub_277B202E0;
  qword_280ABB348 = sub_277B203AC;
  qword_280ABB350 = sub_277B204A4;
  qword_280ABB358 = sub_277B20B50;
  qword_280ABB360 = sub_277B20B84;
  qword_280ABB368 = sub_277B20BB0;
  qword_280ABB370 = sub_277B20BE4;
  qword_280ABB378 = sub_277B20C14;
  qword_280ABB380 = sub_277B20C4C;
  qword_280ABB388 = sub_277B20C84;
  qword_280ABB390 = sub_277B20CCC;
  qword_280ABB398 = sub_277B20D0C;
  qword_280ABB3A0 = sub_277B20D44;
  qword_280ABB3A8 = sub_277B20D70;
  qword_280ABB3B0 = sub_277B20DA8;
  qword_280ABB3B8 = sub_277B20DDC;
  qword_280ABB3C0 = sub_277B20E20;
  qword_280ABB3C8 = sub_277B20134;
  qword_280ABB3D0 = sub_277B201F0;
  qword_280ABB3D8 = sub_277B202A4;
  qword_280ABB3E0 = sub_277B20364;
  qword_280ABB3E8 = sub_277B20440;
  qword_280ABB3F0 = sub_277B2055C;
  qword_280ABB3F8 = sub_277B205A4;
  qword_280ABB400 = sub_277B2067C;
  qword_280ABB408 = sub_277B206C4;
  qword_280ABB410 = sub_277B207A8;
  qword_280ABB418 = sub_277B207F4;
  qword_280ABB420 = sub_277B208FC;
  qword_280ABB428 = sub_277B2095C;
  qword_280ABB430 = sub_277B205E8;
  qword_280ABB438 = sub_277B20634;
  qword_280ABB440 = sub_277B2070C;
  qword_280ABB448 = sub_277B20758;
  qword_280ABB450 = sub_277B20844;
  qword_280ABB458 = sub_277B2089C;
  qword_280ABAAE0 = sub_277B8F100;
  qword_280ABAAE8 = sub_277B8F190;
  qword_280ABAAF0 = sub_277B8F258;
  qword_280ABAAF8 = sub_277B8F338;
  qword_280ABAB00 = sub_277B8F438;
  qword_280ABAB08 = sub_277B8F120;
  qword_280ABAB10 = sub_277B8F170;
  qword_280ABAB18 = sub_277B8F1B8;
  qword_280ABAB20 = sub_277B8F230;
  qword_280ABAB28 = sub_277B8F280;
  qword_280ABAB30 = sub_277B8F304;
  qword_280ABAB38 = sub_277B8F36C;
  qword_280ABAB40 = sub_277B8F3EC;
  qword_280ABAB48 = sub_277B8F148;
  qword_280ABAB50 = sub_277B8F208;
  qword_280ABAB58 = sub_277B8F1E0;
  qword_280ABAB60 = sub_277B8F2D0;
  qword_280ABAB68 = sub_277B8F2A8;
  qword_280ABAB70 = sub_277B8F3A0;
  qword_280ABAB78 = sub_277B8F484;
  qword_280ABAB80 = sub_277B8F550;
  qword_280ABAB88 = sub_277B8F900;
  qword_280ABAB90 = sub_277B8FC94;
  qword_280ABAB98 = sub_277B901F8;
  qword_280ABABA0 = sub_277B8F4BC;
  qword_280ABABA8 = sub_277B8F518;
  qword_280ABABB0 = sub_277B8F77C;
  qword_280ABABB8 = sub_277B8F5E4;
  qword_280ABABC0 = sub_277B8F9CC;
  qword_280ABABC8 = sub_277B8FB88;
  qword_280ABABD0 = sub_277B8FDB0;
  qword_280ABABD8 = sub_277B9005C;
  qword_280ABABE0 = sub_277B8F6D4;
  qword_280ABABE8 = sub_277B8F5AC;
  qword_280ABABF0 = sub_277B8F824;
  qword_280ABABF8 = sub_277B8F64C;
  qword_280ABAC00 = sub_277B8FAA8;
  qword_280ABAC08 = sub_277B8FED0;
  qword_280ABB168 = sub_277B90398;
  qword_280ABB170 = sub_277B90548;
  qword_280ABB178 = sub_277B907C4;
  qword_280ABB180 = sub_277B90B90;
  qword_280ABB188 = sub_277B91100;
  qword_280ABB190 = sub_277B90404;
  qword_280ABB198 = sub_277B904DC;
  qword_280ABB1A0 = sub_277B905B4;
  qword_280ABB1A8 = sub_277B90728;
  qword_280ABB1B0 = sub_277B90860;
  qword_280ABB1B8 = sub_277B90A94;
  qword_280ABB1C0 = sub_277B90C8C;
  qword_280ABB1C8 = sub_277B90F44;
  qword_280ABB1D0 = sub_277B90470;
  qword_280ABB1D8 = sub_277B9068C;
  qword_280ABB1E0 = sub_277B90620;
  qword_280ABB1E8 = sub_277B90998;
  qword_280ABB1F0 = sub_277B908FC;
  qword_280ABB1F8 = sub_277B90D88;
  qword_280ABAFA0 = sub_277B912BC;
  qword_280ABAFA8 = sub_277B91470;
  qword_280ABAFB0 = sub_277B9162C;
  qword_280ABAFB8 = sub_277B91790;
  qword_280ABAFC0 = sub_277B918F4;
  qword_280ABAFC8 = sub_277B91338;
  qword_280ABAFD0 = sub_277B913B8;
  qword_280ABAFD8 = sub_277B914F8;
  qword_280ABAFE0 = sub_277B91624;
  qword_280ABAFE8 = sub_277B91634;
  qword_280ABAFF0 = sub_277B91788;
  qword_280ABAFF8 = sub_277B91798;
  qword_280ABB000 = sub_277B918EC;
  qword_280ABB008 = sub_277B91478;
  qword_280ABB010 = sub_277B91508;
  qword_280ABB018 = sub_277B91500;
  qword_280ABB020 = sub_277B91644;
  qword_280ABB028 = sub_277B9163C;
  qword_280ABB030 = sub_277B917A0;
  qword_280ABB038 = sub_277B918FC;
  qword_280ABB040 = sub_277B91A54;
  qword_280ABB048 = sub_277B91C80;
  qword_280ABB050 = sub_277B91DA0;
  qword_280ABB058 = sub_277B91EB8;
  qword_280ABB060 = sub_277B9194C;
  qword_280ABB068 = sub_277B919F4;
  qword_280ABB070 = sub_277B91AB8;
  qword_280ABB078 = sub_277B91C78;
  qword_280ABB080 = sub_277B91C88;
  qword_280ABB088 = sub_277B91D98;
  qword_280ABB090 = sub_277B91DA8;
  qword_280ABB098 = sub_277B91EB0;
  qword_280ABB0A0 = sub_277B919A0;
  qword_280ABB0A8 = sub_277B91B80;
  qword_280ABB0B0 = sub_277B91B1C;
  qword_280ABB0B8 = sub_277B91C98;
  qword_280ABB0C0 = sub_277B91C90;
  qword_280ABB0C8 = sub_277B91DB0;
  qword_280ABB0D0 = sub_277B91EC0;
  qword_280ABB0D8 = sub_277B92024;
  qword_280ABB0E0 = sub_277B92284;
  qword_280ABB0E8 = sub_277B923CC;
  qword_280ABB0F0 = sub_277B92510;
  qword_280ABB0F8 = sub_277B91F10;
  qword_280ABB100 = sub_277B91FB0;
  qword_280ABB108 = sub_277B92098;
  qword_280ABB110 = sub_277B92278;
  qword_280ABB118 = sub_277B92290;
  qword_280ABB120 = sub_277B923C0;
  qword_280ABB128 = sub_277B923D8;
  qword_280ABB130 = sub_277B92504;
  qword_280ABB138 = sub_277B91F60;
  qword_280ABB140 = sub_277B92180;
  qword_280ABB148 = sub_277B9210C;
  qword_280ABB150 = sub_277B922A8;
  qword_280ABB158 = sub_277B9229C;
  qword_280ABB160 = sub_277B923E4;
  qword_280ABA7E8 = sub_277B8E358;
  qword_280ABA7F0 = sub_277B8E408;
  qword_280ABA7F8 = sub_277B8E4EC;
  qword_280ABA800 = sub_277B8E5E4;
  qword_280ABA808 = sub_277B8E6C4;
  qword_280ABA810 = sub_277B8E384;
  qword_280ABA818 = sub_277B8E3DC;
  qword_280ABA820 = sub_277B8E434;
  qword_280ABA828 = sub_277B8E4BC;
  qword_280ABA830 = sub_277B8E51C;
  qword_280ABA838 = sub_277B8E5B0;
  qword_280ABA840 = sub_277B8E618;
  qword_280ABA848 = sub_277B8E688;
  qword_280ABA850 = sub_277B8E3B0;
  qword_280ABA858 = sub_277B8E48C;
  qword_280ABA860 = sub_277B8E460;
  qword_280ABA868 = sub_277B8E57C;
  qword_280ABA870 = sub_277B8E54C;
  qword_280ABA878 = sub_277B8E64C;
  qword_280ABA880 = sub_277B8EC00;
  qword_280ABA888 = sub_277B8ECC4;
  qword_280ABA890 = sub_277B8EDD8;
  qword_280ABA898 = sub_277B8EF24;
  qword_280ABA8A0 = sub_277B8F094;
  qword_280ABA8A8 = sub_277B8EC30;
  qword_280ABA8B0 = sub_277B8EC90;
  qword_280ABA8B8 = sub_277B8ECF8;
  qword_280ABA8C0 = sub_277B8ED9C;
  qword_280ABA8C8 = sub_277B8EE14;
  qword_280ABA8D0 = sub_277B8EED8;
  qword_280ABA8D8 = sub_277B8EF70;
  qword_280ABA8E0 = sub_277B8F028;
  qword_280ABA8E8 = sub_277B8EC60;
  qword_280ABA8F0 = sub_277B8ED60;
  qword_280ABA8F8 = sub_277B8ED2C;
  qword_280ABA900 = sub_277B8EE8C;
  qword_280ABA908 = sub_277B8EE50;
  qword_280ABA910 = sub_277B8EFBC;
  qword_280ABA918 = sub_277B8E700;
  qword_280ABA920 = sub_277B8E7CC;
  qword_280ABA928 = sub_277B8E8E8;
  qword_280ABA930 = sub_277B8EA48;
  qword_280ABA938 = sub_277B8EB94;
  qword_280ABA940 = sub_277B8E730;
  qword_280ABA948 = sub_277B8E79C;
  qword_280ABA950 = sub_277B8E800;
  qword_280ABA958 = sub_277B8E8B0;
  qword_280ABA960 = sub_277B8E924;
  qword_280ABA968 = sub_277B8EA08;
  qword_280ABA970 = sub_277B8EA94;
  qword_280ABA978 = sub_277B8EB40;
  qword_280ABA980 = sub_277B8E764;
  qword_280ABA988 = sub_277B8E87C;
  qword_280ABA990 = sub_277B8E838;
  qword_280ABA998 = sub_277B8E9CC;
  qword_280ABA9A0 = sub_277B8E96C;
  qword_280ABA9A8 = sub_277B8EAF8;
  qword_280ABA9B0 = sub_277B8DC48;
  qword_280ABA9B8 = sub_277B8DC7C;
  qword_280ABA9C0 = sub_277B8DCB8;
  qword_280ABA9C8 = sub_277B8DD00;
  qword_280ABA9D0 = sub_277B8DD64;
  qword_280ABA9D8 = sub_277B8DE00;
  qword_280ABA9E0 = sub_277B8DE94;
  qword_280ABA9E8 = sub_277B8DEDC;
  qword_280ABA9F0 = sub_277B8DFD0;
  qword_280ABA9F8 = sub_277B8E020;
  qword_280ABAA00 = sub_277B8E158;
  qword_280ABAA08 = sub_277B8E1BC;
  qword_280ABAA10 = sub_277B8E2C8;
  qword_280ABAA18 = sub_277B8DE48;
  qword_280ABAA20 = sub_277B8DF80;
  qword_280ABAA28 = sub_277B8DF28;
  qword_280ABAA30 = sub_277B8E0F8;
  qword_280ABAA38 = sub_277B8E080;
  qword_280ABAA40 = sub_277B8E244;
}

unint64_t sub_277A7D91C(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, int8x8_t *a7, unsigned int a8, int a9, int a10, uint64_t a11)
{
  v11 = (2 * a3);
  v13 = (2 * a5);
  v14 = (2 * a1);
  if (a11)
  {
    if ((HIDWORD(a11) & a11) == 1)
    {
      if (a9 <= 7)
      {
        result = 2 * a4;
        v42.i64[0] = 0x40004000400040;
        v42.i64[1] = 0x40004000400040;
        do
        {
          v43 = vrshr_n_u8(vqadd_u8(vpadd_s8(*a7, *(a7 + 2 * a8)), vpadd_s8(*(a7 + a8), *(a7 + 3 * a8))), 2uLL);
          v44 = vmovl_u8(v43);
          v45 = vsubw_u8(v42, v43);
          v46 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13, *v45.i8), *v11, *v44.i8), 6uLL), vmlal_u16(vmull_u16(*(v13 + 2 * a6), *&vextq_s8(v45, v45, 8uLL)), *(v11 + 2 * a4), *&vextq_s8(v44, v44, 8uLL)), 6uLL);
          *v14 = v46.i64[0];
          a7 = (a7 + 4 * a8);
          *(v14 + 2 * a2) = v46.i64[1];
          v14 = (v14 + 4 * a2);
          v13 = (v13 + 4 * a6);
          v11 = (v11 + 4 * a4);
          a10 -= 2;
        }

        while (a10);
      }

      else
      {
        v15 = 2 * a2;
        v16.i64[0] = 0x40004000400040;
        v16.i64[1] = 0x40004000400040;
        do
        {
          result = 0;
          for (i = 0; i < a9; i += 8)
          {
            v19 = vrshr_n_u8(vqadd_u8(vpadd_s8(*(a7 + result), *(&a7[1] + result)), vpadd_s8(*(a7 + a8 + result), *(&a7[1] + a8 + result))), 2uLL);
            v20 = vmovl_u8(v19);
            v21 = vsubw_u8(v16, v19);
            *(v14 + result) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v13 + result), *v21.i8), *(v11 + result), *v20.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*&v13->i8[result], v21), *&v11->i8[result], v20), 6uLL);
            result += 16;
          }

          a7 = (a7 + 2 * a8);
          v14 = (v14 + v15);
          v13 = (v13 + 2 * a6);
          v11 = (v11 + 2 * a4);
          --a10;
        }

        while (a10);
      }
    }

    else if (a11 == 1 && HIDWORD(a11) == 0)
    {
      if (a9 <= 7)
      {
        result = 2 * a4;
        v60.i64[0] = 0x40004000400040;
        v60.i64[1] = 0x40004000400040;
        do
        {
          v61 = vrshr_n_u8(vpadd_s8(*a7, *(a7 + a8)), 1uLL);
          v62 = vmovl_u8(v61);
          v63 = vsubw_u8(v60, v61);
          v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13, *v63.i8), *v11, *v62.i8), 6uLL), vmlal_u16(vmull_u16(*(v13 + 2 * a6), *&vextq_s8(v63, v63, 8uLL)), *(v11 + 2 * a4), *&vextq_s8(v62, v62, 8uLL)), 6uLL);
          *v14 = v64.i64[0];
          a7 = (a7 + 2 * a8);
          *(v14 + 2 * a2) = v64.i64[1];
          v14 = (v14 + 4 * a2);
          v13 = (v13 + 4 * a6);
          v11 = (v11 + 4 * a4);
          a10 -= 2;
        }

        while (a10);
      }

      else
      {
        v47.i64[0] = 0x40004000400040;
        v47.i64[1] = 0x40004000400040;
        do
        {
          v48 = 0;
          for (result = 0; result < a9; result += 8)
          {
            v49 = vrshr_n_u8(vpadd_s8(a7[v48], a7[v48 + 1]), 1uLL);
            v50 = vmovl_u8(v49);
            v51 = vsubw_u8(v47, v49);
            *&v14[v48] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v13[v48], *v51.i8), v11[v48], *v50.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13[v48].i8, v51), *v11[v48].i8, v50), 6uLL);
            v48 += 2;
          }

          a7 = (a7 + a8);
          v14 = (v14 + 2 * a2);
          v13 = (v13 + 2 * a6);
          v11 = (v11 + 2 * a4);
          --a10;
        }

        while (a10);
      }
    }

    else
    {
      v28 = 2 * a8;
      v29 = a4;
      if (a9 <= 7)
      {
        result = 4 * a6;
        v52.i64[0] = 0x40004000400040;
        v52.i64[1] = 0x40004000400040;
        v53 = 4 * a4;
        do
        {
          v54.i32[0] = a7->i32[0];
          v54.i32[1] = *(a7->i32 + v28);
          v55.i32[0] = *(a7->i32 + a8);
          v55.i32[1] = *(a7->i32 + a8 + v28);
          v56 = vrhadd_u8(v54, v55);
          v57 = vmovl_u8(v56);
          v58 = vsubw_u8(v52, v56);
          v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13, *v58.i8), *v11, *v57.i8), 6uLL), vmlal_u16(vmull_u16(*(v13 + 2 * a6), *&vextq_s8(v58, v58, 8uLL)), *(v11 + 2 * v29), *&vextq_s8(v57, v57, 8uLL)), 6uLL);
          *v14 = v59.i64[0];
          a7 = (a7 + 4 * a8);
          *(v14 + 2 * a2) = v59.i64[1];
          v14 = (v14 + 4 * a2);
          v13 = (v13 + result);
          v11 = (v11 + v53);
          a10 -= 2;
        }

        while (a10);
      }

      else
      {
        v30 = 2 * a2;
        v31 = a7 + a8;
        v32.i64[0] = 0x40004000400040;
        v32.i64[1] = 0x40004000400040;
        do
        {
          result = 0;
          for (j = 0; j < a9; j += 8)
          {
            v34 = vrhadd_u8(a7[j / 8], *&v31[j]);
            v35 = vmovl_u8(v34);
            v36 = vsubw_u8(v32, v34);
            *(v14 + result) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*(v13 + result), *v36.i8), *(v11 + result), *v35.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*&v13->i8[result], v36), *&v11->i8[result], v35), 6uLL);
            result += 16;
          }

          a7 = (a7 + v28);
          v14 = (v14 + v30);
          v13 = (v13 + 2 * a6);
          v11 = (v11 + 2 * a4);
          v31 += v28;
          --a10;
        }

        while (a10);
      }
    }
  }

  else if (a9 <= 7)
  {
    result = 2 * a4;
    v37.i64[0] = 0x40004000400040;
    v37.i64[1] = 0x40004000400040;
    do
    {
      v38.i32[0] = a7->i32[0];
      v38.i32[1] = *(a7->i32 + a8);
      v39 = vmovl_u8(v38);
      v40 = vsubw_u8(v37, v38);
      v41 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(*v13, *v40.i8), *v11, *v39.i8), 6uLL), vmlal_u16(vmull_u16(*(v13 + 2 * a6), *&vextq_s8(v40, v40, 8uLL)), *(v11 + 2 * a4), *&vextq_s8(v39, v39, 8uLL)), 6uLL);
      *v14 = v41.i64[0];
      a7 = (a7 + 2 * a8);
      *(v14 + 2 * a2) = v41.i64[1];
      v14 = (v14 + 4 * a2);
      v13 = (v13 + 4 * a6);
      v11 = (v11 + 4 * a4);
      a10 -= 2;
    }

    while (a10);
  }

  else
  {
    v22.i64[0] = 0x40004000400040;
    v22.i64[1] = 0x40004000400040;
    do
    {
      v23 = 0;
      for (result = 0; result < a9; result += 8)
      {
        v24 = *(a7 + result);
        v25 = vmovl_u8(v24);
        v26 = vsubw_u8(v22, v24);
        *&v14[v23] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v13[v23], *v26.i8), v11[v23], *v25.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13[v23].i8, v26), *v11[v23].i8, v25), 6uLL);
        v23 += 2;
      }

      a7 = (a7 + a8);
      v14 = (v14 + 2 * a2);
      v13 = (v13 + 2 * a6);
      v11 = (v11 + 2 * a4);
      --a10;
    }

    while (a10);
  }

  return result;
}

void sub_277A7DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, signed int a10, unsigned int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = MEMORY[0x28223BE20]();
  v17 = v16;
  v155 = v19;
  v156 = v18;
  v21 = v20;
  v153 = v22;
  v154 = v23;
  v24 = v15;
  v25 = a9;
  v180 = *MEMORY[0x277D85DE8];
  v152 = byte_277C3CAE8[v26];
  v151 = byte_277C3CAFE[v26];
  if (*(v15 + 24) >= *(v15 + 16))
  {
    v27 = *(v15 + 16);
  }

  else
  {
    v27 = *(v15 + 24);
  }

  v28 = a10 / 20.0;
  v29 = v28 * v28;
  if (v28 * v28 <= 1.0)
  {
    v30 = v28 * v28;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = vcvtd_n_f64_s32(a10, 6uLL);
  v32 = v31 * v31;
  v33 = vcvtd_n_f64_s32(a11, 2uLL);
  v34 = v33 * v33;
  memset(v168, 0, sizeof(v168));
  bzero(v167, 0x480uLL);
  bzero(v166, 0x1000uLL);
  v35 = 0;
  v36 = fmax(v27 * 0.1, 1.0);
  v37 = (v17 + 2);
  do
  {
    *(v168 + v35) = fmax(sqrt(*(v37 - 1) * *(v37 - 1) + *v37 * *v37) / v36, 1.0);
    v35 += 8;
    v37 += 2;
  }

  while (v35 != 32);
  v38 = 0.00001;
  if (v29 >= 0.00001)
  {
    v39 = v30;
  }

  else
  {
    v39 = 0.00001;
  }

  v40 = 1.0;
  if (v34 <= 1.0)
  {
    v41 = v34;
  }

  else
  {
    v41 = 1.0;
  }

  if (a10 > 127)
  {
    v39 = v32 * 0.5;
  }

  if (v34 >= 0.00001)
  {
    v38 = v41;
  }

  v149 = v38;
  v150 = v39;
  if (v21 >= 1)
  {
    v42 = 0;
    v158 = 0;
    v147 = v24 + 32;
    v148 = v156 + 16;
    v145 = v21;
    v146 = v24 + 40;
    do
    {
      v43 = *(v148 + 2608 * v42 + 4);
      v44 = *(v148 + 2608 * v42 + 8);
      v45 = v152 >> v44;
      v46 = *(v156 + 24);
      v47 = v43 - *(v156 + 20);
      v48 = v42;
      v49 = *(v147 + 4 * (v42 != 0));
      v164 = *(v146 + 8 * v42);
      v50 = v44 - v46;
      v51 = v151 >> v43;
      if (v42)
      {
        v52 = v40 / ((1 << (v44 - v46 + v47)) + 25);
      }

      else
      {
        v52 = 0.04;
      }

      v53 = log(*(v155 + 8 * v42) * 2.0 + 5.0);
      v157 = v48;
      if (v48 == 1 && v45)
      {
        v54 = 0;
        v55 = 1 << v50;
        LODWORD(v56) = 1 << v47;
        if (1 << v47 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = v56;
        }

        if (v55 <= 1)
        {
          v55 = 1;
        }

        v57 = -7.0;
        v58 = 0.5;
        v60 = xmmword_277BB7580;
        v59 = xmmword_277BB7570;
        v61 = v164;
        do
        {
          if (v51)
          {
            for (i = 0; i != v51; ++i)
            {
              if (v50 != 31)
              {
                v63 = 0;
                v64 = i + 32 * v54;
                v65 = ((36 * (v54 << v50)) | 2) + (i << v47);
                do
                {
                  if (v47 != 31)
                  {
                    v66 = v166[v64];
                    v67 = v65;
                    v68 = v56;
                    do
                    {
                      v66 += v167[v67] * v167[v67];
                      ++v67;
                      --v68;
                    }

                    while (v68);
                    v166[v64] = v66;
                  }

                  ++v63;
                  v65 += 36;
                }

                while (v63 != v55);
              }
            }
          }

          ++v54;
        }

        while (v54 != v45);
      }

      else
      {
        v57 = -7.0;
        v58 = 0.5;
        v60 = xmmword_277BB7580;
        v59 = xmmword_277BB7570;
        v61 = v164;
      }

      v69 = 0;
      v70 = 0;
      v71 = a13 + v158;
      v72 = 1.0 / (v149 * (v150 * (v53 + 0.5)));
      if (v45 <= 1)
      {
        v73 = 1;
      }

      else
      {
        v73 = v45;
      }

      v74 = v167;
      v75 = a13 + v158;
      do
      {
        v76 = 0;
        do
        {
          *&v74[v76 + 2] = vabdq_u8(*(v61 + v51 * v154 + v45 * v153 * v49 + v69 + v76), *(v75 + v76));
          v76 += 16;
        }

        while (v76 < v51);
        v74 += 36;
        ++v70;
        v75 += v51;
        v69 += v49;
      }

      while (v70 != v73);
      if (v51)
      {
        v77 = 0;
        v78 = (v51 - 4);
        do
        {
          v79 = 0;
          v80 = &v167[v77];
          do
          {
            v81.i64[0] = *v80;
            v81.i64[1] = *v80;
            if (v77)
            {
              v82 = (&v169 + v79);
              if (v77 >= v78)
              {
                v83 = vqtbl1q_s8(v81, xmmword_277BB7550);
                v84 = vqtbl1q_s8(v81, xmmword_277BB7560);
              }

              else
              {
                v83 = vandq_s8(v81, unk_277BFB040);
                v84 = vandq_s8(v81, unk_277BFB050);
              }
            }

            else
            {
              v83 = vqtbl1q_s8(v81, v59);
              v82 = (&v169 + v79);
              v84 = vqtbl1q_s8(v81, v60);
            }

            v82[4] = v83;
            v82[5] = v84;
            v80 = (v80 + 36);
            v79 += 32;
          }

          while (v79 != 96);
          v169 = v173;
          v170 = v174;
          v171 = v173;
          v172 = v174;
          if (v45)
          {
            v85 = 0;
            _Q2 = v177;
            _Q3 = v178;
            do
            {
              _Q5 = v169;
              _Q6 = v170;
              __asm { UDOT            V4.4S, V5.16B, V5.16B }

              _Q5 = v171;
              _Q7 = v172;
              __asm { UDOT            V4.4S, V5.16B, V5.16B }

              _Q5 = v173;
              _Q16 = v174;
              __asm { UDOT            V4.4S, V5.16B, V5.16B }

              _Q5 = v175;
              _Q17 = v176;
              __asm
              {
                UDOT            V4.4S, V5.16B, V5.16B
                UDOT            V4.4S, V2.16B, V2.16B
                UDOT            V2.4S, V6.16B, V6.16B
                UDOT            V2.4S, V7.16B, V7.16B
                UDOT            V2.4S, V16.16B, V16.16B
                UDOT            V2.4S, V17.16B, V17.16B
                UDOT            V2.4S, V3.16B, V3.16B
              }

              *&v179[128 * v85 + 4 * v77] = vpaddq_s32(_Q4, _Q2);
              v110 = 4;
              v111 = &v171;
              do
              {
                v112 = v111[1];
                *(v111 - 2) = *v111;
                *(v111 - 1) = v112;
                v111 += 2;
                --v110;
              }

              while (v110);
              if (v85 <= (v45 - 4))
              {
                v113.i64[0] = *v80;
                v113.i64[1] = *v80;
                if (v77)
                {
                  if (v77 >= v78)
                  {
                    _Q2 = vqtbl1q_s8(v113, xmmword_277BB7550);
                    v177 = _Q2;
                    _Q3 = vqtbl1q_s8(v113, xmmword_277BB7560);
                  }

                  else
                  {
                    _Q2 = vandq_s8(v113, unk_277BFB040);
                    v177 = _Q2;
                    _Q3 = vandq_s8(v113, unk_277BFB050);
                  }
                }

                else
                {
                  _Q2 = vqtbl1q_s8(v113, v59);
                  v177 = _Q2;
                  _Q3 = vqtbl1q_s8(v113, v60);
                }

                v178 = _Q3;
                v80 = (v80 + 36);
              }

              else
              {
                _Q2 = v175;
                _Q3 = v176;
                v177 = v175;
                v178 = v176;
              }

              ++v85;
            }

            while (v85 != v45);
          }

          v77 += 4;
        }

        while (v77 < v51);
      }

      v114 = a14 + 4 * v158;
      v115 = a15 + 2 * v158;
      if (a12)
      {
        if (v45)
        {
          v116 = 0;
          v117 = 0;
          v118 = v45 >> 1;
          v119 = v166;
          v120 = v179;
          do
          {
            if (v51)
            {
              for (j = 0; j != v51; ++j)
              {
                if (j < v51 >> 1)
                {
                  v122 = 2 * (v116 >= v118);
                }

                else
                {
                  v122 = 2 * (v116 >= v118) + 1;
                }

                v123 = v72 * (*(v168 + v122) * (*(v25 + 4 * v122) * 0.00833333333 + v52 * (v119[j] + *&v120[4 * j]) * 0.0416666667));
                if (v123 >= 7.0)
                {
                  v123 = 7.0;
                }

                v124 = v123;
                v125 = v117 + j;
                v126 = ((COERCE_FLOAT((v124 * -12102000.0) + 1065292415) * 1000.0) + v58);
                v127 = *(v115 + 2 * (v117 + j));
                *(v114 + 4 * v125) += v126 * *(v71 + j);
                *(v115 + 2 * v125) = v127 + v126;
              }

              v117 += j;
            }

            ++v116;
            v119 += 32;
            v120 += 128;
            v71 += v51;
          }

          while (v116 != v45);
        }
      }

      else if (v45)
      {
        v128 = 0;
        v129 = 0;
        v159 = v45 >> 1;
        v160 = v45;
        v130 = v51 >> 1;
        v131 = v166;
        v132 = v179;
        v162 = v51;
        do
        {
          if (v51)
          {
            v133 = 0;
            v161 = v128;
            v163 = 2 * (v128 >= v159);
            do
            {
              v165 = *(v71 + v133);
              v134 = v163;
              if (v133 >= v130)
              {
                v134 = v163 + 1;
              }

              v135 = *(v25 + 4 * v134);
              v136 = v129 + v133;
              v137 = v72 * (*(v168 + v134) * (v135 * 0.00833333333 + v52 * (v131[v133] + *&v132[4 * v133]) * 0.0416666667));
              v138 = -v137;
              if (v137 >= 7.0)
              {
                v138 = v57;
              }

              v139 = v71;
              v140 = v129;
              v141 = v115;
              v142 = v130;
              v143 = exp(v138);
              v130 = v142;
              v115 = v141;
              v129 = v140;
              v71 = v139;
              v57 = -7.0;
              v144 = v143 * 1000.0;
              *(v114 + 4 * v136) += v144 * v165;
              *(v141 + 2 * v136) += v144;
              v25 = a9;
              v51 = v162;
              ++v133;
            }

            while (v162 != v133);
            v129 = (v129 + v133);
            v45 = v160;
            v128 = v161;
          }

          ++v128;
          v131 += 32;
          v132 += 128;
          v71 += v51;
        }

        while (v128 != v45);
      }

      v158 += v51 * v45;
      v42 = v157 + 1;
      v40 = 1.0;
    }

    while (v157 + 1 != v145);
  }
}

void sub_277A7E708(int16x8_t *a1, uint64_t a2, int16x8_t **a3, int32x4_t *a4, int32x4_t *a5, __int16 *a6, uint64_t *a7, int *a8)
{
  v121 = *MEMORY[0x277D85DE8];
  v11 = *(a8 + 1);
  v12 = *(a8 + 2);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v20 = a3[10];
    v19 = a3[11];
    v21 = a3[16];
    v22 = *a7;
    v23 = *a8;
    v24 = (v19->i16[0] + (1 << v23 >> 1)) >> v23;
    LODWORD(v19) = (v19->i16[1] + (1 << v23 >> 1)) >> v23;
    v120[0] = v24;
    v120[1] = v19;
    bzero(a4, 4 * a2);
    bzero(a5, 4 * a2);
    if (a2 < 1)
    {
      v37 = 0;
      v28 = a6;
    }

    else
    {
      v26 = 0;
      v27 = -1;
      v28 = a6;
      do
      {
        v29 = *(v22 + 2 * v26);
        v30 = a1->i32[v29];
        v31 = v21->i16[*(v22 + 2 * v26) != 0];
        if (v30 >= 0)
        {
          v32 = a1->i32[v29];
        }

        else
        {
          v32 = -v30;
        }

        if (*(v11 + v29) * v32 >= v31 << (4 - v23))
        {
          v33 = v30 >> 31;
          v34 = (*(v12 + v29) * v31 + 16) >> 5;
          v35 = v120[*(v22 + 2 * v26) != 0] + v32;
          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFFLL;
          }

          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          v36 = (*(v11 + v29) * v20->i16[*(v22 + 2 * v26) != 0] * v35) >> (21 - v23);
          a4->i32[v29] = (v33 ^ v36) - v33;
          a5->i32[v29] = (((v34 * v36) >> v23) ^ v33) - v33;
          if (v36)
          {
            v27 = v26;
          }
        }

        ++v26;
      }

      while (a2 != v26);
      v37 = v27 + 1;
    }

    *v28 = v37;
    return;
  }

  v14 = *a8;
  if (*a8 == 2)
  {
    v74 = a7[1];
    v116 = *a3[16];
    v119 = *a3[10];
    v75 = vdupq_lane_s16(*&vshrq_n_s16(v116, 3uLL), 1);
    v76 = a2;
    v77 = a2;
    do
    {
      if (vaddlvq_u16(vcgeq_s16(vabsq_s16(vuzp1q_s16(*(a1 + 4 * v76 - 64), *(a1 + 4 * v76 - 48))), v75)) + vaddlvq_u16(vcgeq_s16(vabsq_s16(vuzp1q_s16(*(a1 + 4 * v76 - 32), *(a1 + 4 * v76 - 16))), v75)))
      {
        v78 = 1;
      }

      else
      {
        v76 -= 16;
        v77 -= 16;
        v78 = v76 <= 0;
      }
    }

    while (!v78);
    v79.i64[0] = 0x2000200020002000;
    v79.i64[1] = 0x2000200020002000;
    v114 = vqrdmulhq_s16(*a3[11], v79);
    v80 = 4 * (a2 - v77);
    bzero(a4 + 4 * v77, v80);
    bzero(a5 + 4 * v77, v80);
    v82 = vuzp1q_s16(*a1, a1[1]);
    v83 = vcltzq_s16(v82);
    v84 = vabsq_s16(v82);
    v85.i64[0] = 0x1000100010001;
    v85.i64[1] = 0x1000100010001;
    v86 = vbicq_s8(vqaddq_s16(v84, v114), vcgtq_u16(vshrq_n_u16(v116, 2uLL), vaddq_s16(v84, v84)));
    v87.i64[0] = -1;
    v87.i64[1] = -1;
    v88 = vqdmulhq_s16(v86, v119);
    v89 = vorrq_s8(vshrq_n_u16(vmulq_s16(v86, v119), 0xEuLL), vaddq_s16(v88, v88));
    v90 = vsubq_s16(veorq_s8(v89, v83), v83);
    v91 = vsubq_s16(veorq_s8(vorrq_s8(vshrq_n_u16(vmulq_s16(v89, v116), 2uLL), vshlq_n_s16(vqdmulhq_s16(v89, v116), 0xDuLL)), v83), v83);
    *a4 = vmovl_s16(*v90.i8);
    a4[1] = vmovl_high_s16(v90);
    *a5 = vmovl_s16(*v91.i8);
    a5[1] = vmovl_high_s16(v91);
    v92 = vmaxq_s16(vandq_s8(vaddq_s16(*v74, v85), vcgtzq_s16(v89)), v87);
    if (v77 >= 9)
    {
      v93 = vdupq_lane_s16(*v119.i8, 1);
      v94 = vdupq_lane_s16(*v116.i8, 1);
      v95 = vdupq_lane_s16(*v114.i8, 1);
      v96 = v77 + 8;
      v97 = vshrq_n_u16(v94, 2uLL);
      v98 = a1 + 3;
      v99 = a4 + 3;
      v100 = a5 + 3;
      v101 = v74 + 1;
      do
      {
        v102 = vuzp1q_s16(v98[-1], *v98);
        v103 = vabsq_s16(v102);
        v104 = vcltzq_s16(v102);
        v105 = vbicq_s8(vqaddq_s16(v103, v95), vcgtq_u16(v97, vaddq_s16(v103, v103)));
        v106 = vqdmulhq_lane_s16(v105, *v119.i8, 1);
        v107 = vorrq_s8(vshrq_n_u16(vmulq_s16(v105, v93), 0xEuLL), vaddq_s16(v106, v106));
        v108 = vsubq_s16(veorq_s8(v107, v104), v104);
        v109 = vsubq_s16(veorq_s8(vorrq_s8(vshrq_n_u16(vmulq_s16(v107, v94), 2uLL), vshlq_n_s16(vqdmulhq_lane_s16(v107, *v116.i8, 1), 0xDuLL)), v104), v104);
        v99[-1] = vmovl_s16(*v108.i8);
        *v99 = vmovl_high_s16(v108);
        v100[-1] = vmovl_s16(*v109.i8);
        *v100 = vmovl_high_s16(v109);
        v110 = *v101++;
        v96 -= 8;
        v92 = vmaxq_s16(v92, vandq_s8(vaddq_s16(v110, v85), vcgtzq_s16(v107)));
        v98 += 2;
        v99 += 2;
        v100 += 2;
      }

      while (v96 > 0x10);
    }

    v72 = vmaxvq_s16(v92);
    goto LABEL_48;
  }

  if (v14 == 1)
  {
    v39 = a7[1];
    v115 = *a3[16];
    v118 = *a3[10];
    v113 = vshrq_n_s16(v115, 2uLL);
    v40 = vdupq_lane_s16(*v113.i8, 1);
    v41 = a2;
    v42 = a2;
    do
    {
      if (vaddlvq_u16(vcgeq_s16(vabsq_s16(vuzp1q_s16(*(a1 + 4 * v41 - 64), *(a1 + 4 * v41 - 48))), v40)) + vaddlvq_u16(vcgeq_s16(vabsq_s16(vuzp1q_s16(*(a1 + 4 * v41 - 32), *(a1 + 4 * v41 - 16))), v40)))
      {
        v43 = 1;
      }

      else
      {
        v41 -= 16;
        v42 -= 16;
        v43 = v41 <= 0;
      }
    }

    while (!v43);
    v44.i64[0] = 0x4000400040004000;
    v44.i64[1] = 0x4000400040004000;
    v111 = vqrdmulhq_s16(*a3[11], v44);
    v45 = 4 * (a2 - v42);
    bzero(a4 + 4 * v42, v45);
    bzero(a5 + 4 * v42, v45);
    v47 = vuzp1q_s16(*a1, a1[1]);
    v48 = vcltzq_s16(v47);
    v49 = vabsq_s16(v47);
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v51 = vqdmulhq_s16(vbicq_s8(vqaddq_s16(v49, v111), vcgtq_s16(v113, v49)), v118);
    v52 = vcgtzq_s16(v51);
    v53 = vsubq_s16(veorq_s8(v51, v48), v48);
    v54 = vsubq_s16(veorq_s8(vshrq_n_u16(vmulq_s16(v51, v115), 1uLL), v48), v48);
    *a4 = vmovl_s16(*v53.i8);
    a4[1] = vmovl_high_s16(v53);
    *a5 = vmovl_s16(*v54.i8);
    a5[1] = vmovl_high_s16(v54);
    v55.i64[0] = 0x1000100010001;
    v55.i64[1] = 0x1000100010001;
    v56 = vmaxq_s16(vandq_s8(vaddq_s16(*v39, v55), v52), v50);
    if (v42 >= 9)
    {
      v57 = vdupq_lane_s16(*v115.i8, 1);
      v58 = vdupq_lane_s16(*v111.i8, 1);
      v59 = v42 + 8;
      v60 = vshrq_n_s16(v57, 2uLL);
      v61 = a1 + 3;
      v62 = a4 + 3;
      v63 = a5 + 3;
      v64 = v39 + 1;
      do
      {
        v65 = vuzp1q_s16(v61[-1], *v61);
        v66 = vcltzq_s16(v65);
        v67 = vabsq_s16(v65);
        v68 = vqdmulhq_lane_s16(vbicq_s8(vqaddq_s16(v67, v58), vcgtq_s16(v60, v67)), *v118.i8, 1);
        v69 = vsubq_s16(veorq_s8(v68, v66), v66);
        v70 = vsubq_s16(veorq_s8(vshrq_n_u16(vmulq_s16(v68, v57), 1uLL), v66), v66);
        v62[-1] = vmovl_s16(*v69.i8);
        *v62 = vmovl_high_s16(v69);
        v63[-1] = vmovl_s16(*v70.i8);
        *v63 = vmovl_high_s16(v70);
        v71 = *v64++;
        v59 -= 8;
        v56 = vmaxq_s16(v56, vandq_s8(vaddq_s16(v71, v55), vcgtzq_s16(v68)));
        v61 += 2;
        v62 += 2;
        v63 += 2;
      }

      while (v59 > 0x10);
    }

    v72 = vmaxvq_s16(v56);
LABEL_48:
    *a6 = v72;
    return;
  }

  if (!v14)
  {
    v15 = a7[1];
    v16 = *a3[11];
    v17 = *a3[10];
    v18 = *a3[16];

    sub_277BA5C50(a1, a2, a4, a5, a6, v15, v16, v17, v18);
  }
}

__n128 sub_277A7ED6C(int16x8_t *a1, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x8_t *a5, _WORD *a6, uint64_t *a7, int *a8, __n128 result)
{
  v112 = *MEMORY[0x277D85DE8];
  v13 = *(a8 + 1);
  v14 = *(a8 + 2);
  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (a8[6])
  {
    if (v16)
    {
      sub_27798D194(a1, a2, **(a3 + 120), *(*(a3 + 120) + 2), *(a3 + 104), *(a3 + 96), *(a3 + 112), a4, a5, *(a3 + 128), a6, *a7, v13, v14, *a8);
      return result;
    }

    v41 = *a8;
    if (*a8 == 2)
    {
      v73 = *(a3 + 96);
      v72 = *(a3 + 104);
      v74 = *(a3 + 112);
      v81 = *(a3 + 120);
      v76 = *(a3 + 128);
      v77 = *a7;
      v78 = v81[1];
      v79 = *v81;
      v80 = 2;
    }

    else
    {
      if (v41 != 1)
      {
        if (!v41)
        {
          sub_27798D194(a1, a2, **(a3 + 120), *(*(a3 + 120) + 2), *(a3 + 104), *(a3 + 96), *(a3 + 112), a4, a5, *(a3 + 128), a6, *a7, 0, 0, 0);
        }

        return result;
      }

      v73 = *(a3 + 96);
      v72 = *(a3 + 104);
      v74 = *(a3 + 112);
      v75 = *(a3 + 120);
      v76 = *(a3 + 128);
      v77 = *a7;
      v78 = v75[1];
      v79 = *v75;
      v80 = 1;
    }

    sub_27798D194(a1, a2, v79, v78, v72, v73, v74, a4, a5, v76, a6, v77, 0, 0, v80);
    return result;
  }

  if (!v16)
  {
    v42 = *a8;
    if (*a8 == 2)
    {
      v83 = *(a3 + 96);
      v82 = *(a3 + 104);
      v84 = *(a3 + 112);
      v85 = *(a3 + 120);
      v86 = *(a3 + 128);
      v87 = a7[1];
      v88 = 2;
    }

    else
    {
      if (v42 != 1)
      {
        if (!v42)
        {
          v43 = *(a3 + 96);
          v44 = *(a3 + 104);
          v46 = *(a3 + 112);
          v45 = *(a3 + 120);
          v47 = *(a3 + 128);
          v48 = a7[1];
          v50 = 4 * a2;
          v105 = v45[1];
          v51 = vdupq_n_s16(v105);
          v51.i16[0] = *v45;
          v107 = v51;
          bzero(a4, 4 * a2);
          bzero(a5, v50);
          v53 = v107;
          v54 = v44 + 1;
          v55 = vld1q_dup_s16(v54);
          v56 = v47 + 1;
          v57 = vld1q_dup_s16(v56);
          v58 = v43 + 1;
          v59 = vld1q_dup_s16(v58);
          v60 = v46 + 1;
          v61 = vld1q_dup_s16(v60);
          v62 = vuzp1q_s16(*a1, a1[1]);
          v63 = vabsq_s16(v62);
          v64 = vcgeq_s16(v63, v107);
          if (vmovn_s16(v64))
          {
            v65 = vcltzq_s16(v62);
            v55.i16[0] = *v44;
            v59.i16[0] = *v43;
            v57.i16[0] = *v47;
            v61.i16[0] = *v46;
            v66 = vqaddq_s16(v63, v55);
            v67 = vshrq_n_s16(vqdmulhq_s16(vsraq_n_s16(v66, vqdmulhq_s16(v66, v59), 1uLL), v61), 1uLL);
            v68 = vbslq_s8(v64, vsubq_s16(veorq_s8(v67, v65), v65), vuzp1q_s16(*a4, a4[1]));
            *a4 = vmovl_s16(*v68.i8);
            a4[1] = vmovl_high_s16(v68);
            v69 = vbslq_s8(v64, vsubq_s16(veorq_s8(vmulq_s16(v67, v57), v65), v65), vuzp1q_s16(*a5, a5[1]));
            *a5 = vmovl_s16(*v69.i8);
            a5[1] = vmovl_high_s16(v69);
            v55.i16[0] = v44[1];
            v59.i16[0] = v43[1];
            v57.i16[0] = v47[1];
            v61.i16[0] = v46[1];
            v70 = vandq_s8(vcgtzq_s16(v67), vandq_s8(vcgezq_s16(*v48), v64));
            v71 = vornq_s8(vandq_s8(*v48, v70), v70);
          }

          else
          {
            v71.i64[0] = -1;
            v71.i64[1] = -1;
          }

          if (a2 >= 9)
          {
            v89 = v48 + 1;
            v53.i16[0] = v105;
            v90 = a5 + 3;
            v91 = a4 + 3;
            v92 = a1 + 3;
            v93 = 8;
            do
            {
              v94 = vuzp1q_s16(v92[-1], *v92);
              v95 = vabsq_s16(v94);
              v96 = vcgeq_s16(v95, v53);
              if (vmovn_s16(v96))
              {
                v97 = vcltzq_s16(v94);
                v98 = vqaddq_s16(v95, v55);
                v99 = vshrq_n_s16(vqdmulhq_s16(vsraq_n_s16(v98, vqdmulhq_s16(v98, v59), 1uLL), v61), 1uLL);
                v100 = vbslq_s8(v96, vsubq_s16(veorq_s8(v99, v97), v97), vuzp1q_s16(v91[-1], *v91));
                v91[-1] = vmovl_s16(*v100.i8);
                *v91 = vmovl_high_s16(v100);
                v101 = vbslq_s8(v96, vsubq_s16(veorq_s8(vmulq_s16(v99, v57), v97), v97), vuzp1q_s16(v90[-1], *v90));
                v90[-1] = vmovl_s16(*v101.i8);
                *v90 = vmovl_high_s16(v101);
                v71 = vbslq_s8(vandq_s8(vcgtzq_s16(v99), vandq_s8(vcgtq_s16(*v89, v71), v96)), *v89, v71);
              }

              v93 += 8;
              ++v89;
              v90 += 2;
              v91 += 2;
              v92 += 2;
            }

            while (v93 < a2);
          }

          result.n128_u16[0] = vmaxvq_s16(v71);
          *a6 = result.n128_u16[0] + 1;
        }

        return result;
      }

      v83 = *(a3 + 96);
      v82 = *(a3 + 104);
      v84 = *(a3 + 112);
      v85 = *(a3 + 120);
      v86 = *(a3 + 128);
      v87 = a7[1];
      v88 = 1;
    }

    result.n128_u16[0] = sub_277BA5DE4(a1, a2, v85, v82, v83, v84, a4, a5, v86, a6, v87, v88);
    return result;
  }

  v102 = *(a3 + 96);
  v103 = *(a3 + 104);
  v18 = *(a3 + 112);
  v17 = *(a3 + 120);
  v19 = *(a3 + 128);
  v20 = *a7;
  v21 = *a8;
  v22 = 1 << *a8 >> 1;
  v23 = (*v17 + (1 << v21 >> 1)) >> v21;
  LODWORD(v17) = (v17[1] + (1 << v21 >> 1)) >> v21;
  v111[0] = v23;
  v111[1] = v17;
  v110[0] = -v23;
  v110[1] = -v17;
  v24 = 4 * a2;
  v108 = a2;
  bzero(a4, 4 * a2);
  bzero(a5, v24);
  v25 = v108;
  v26 = v20 - 2;
  do
  {
    if (v25 < 1)
    {
      v40 = 0;
      goto LABEL_41;
    }

    v27 = v25;
    v28 = *(v26 + 2 * v25) != 0;
    v29 = a1->i32[*(v26 + 2 * v25)] * *(v13 + *(v26 + 2 * v25));
    if (v29 >= 32 * v111[*(v26 + 2 * v25) != 0])
    {
      break;
    }

    --v25;
  }

  while (v29 > 32 * v110[v28]);
  v30 = 0;
  v31 = v27 & 0x7FFFFFFF;
  v32 = -1;
  do
  {
    v33 = *(v20 + 2 * v30);
    v34 = *(v20 + 2 * v30) != 0;
    v35 = a1->i32[v33];
    if (v35 >= 0)
    {
      v36 = a1->i32[v33];
    }

    else
    {
      v36 = -v35;
    }

    if (v36 * *(v13 + v33) >= 32 * v111[*(v20 + 2 * v30) != 0])
    {
      v37 = v35 >> 31;
      v38 = ((v22 + *(v103 + 2 * (*(v20 + 2 * v30) != 0))) >> v21) + v36;
      if (v38 >= 0x7FFF)
      {
        v38 = 0x7FFF;
      }

      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      v39 = ((((*(v13 + v33) * v38 * *(v102 + 2 * v34)) >> 16) + *(v13 + v33) * v38) * *(v18 + 2 * v34)) >> (21 - v21);
      a4->i32[v33] = (v37 ^ v39) - v37;
      a5->i32[v33] = (((((*(v14 + v33) * *(v19 + 2 * v34) + 16) >> 5) * v39) >> v21) ^ v37) - v37;
      if (v39)
      {
        v32 = v30;
      }
    }

    ++v30;
  }

  while (v31 != v30);
  v40 = v32 + 1;
LABEL_41:
  *a6 = v40;
  return result;
}

void sub_277A7F310(int *a1, int a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _WORD *a6, uint64_t a7, int *a8)
{
  v10 = *(a8 + 1);
  v11 = *(a8 + 2);
  v12 = *(a3 + 104);
  v13 = **(a3 + 80);
  v14 = **(a3 + 128);
  v15 = *a8;
  v16 = *a1;
  v17 = 4 * a2;
  bzero(a4, v17);
  bzero(a5, v17);
  if (v10)
  {
    v18 = *v10;
    if (v11)
    {
LABEL_3:
      v19 = *v11;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 32;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = 32;
LABEL_6:
  v20 = (v16 ^ (v16 >> 31)) + (v16 >> 31) + ((*v12 + (1 << v15 >> 1)) >> v15);
  if (v20 >= 0x7FFF)
  {
    v20 = 0x7FFF;
  }

  if (v20 <= -32768)
  {
    v20 = -32768;
  }

  v21 = (v18 * v13 * v20) >> (21 - v15);
  *a4 = (v21 ^ (v16 >> 31)) - (v16 >> 31);
  *a5 = (((((v19 * v14 + 16) >> 5) * v21) >> v15) ^ (v16 >> 31)) - (v16 >> 31);
  *a6 = v21 != 0;
}

int32x4_t *sub_277A7F444(int32x4_t *result, uint64_t a2, void *a3, int32x4_t *a4, int32x4_t *a5, __int16 *a6, uint64_t *a7, uint64_t a8)
{
  v8 = *(a8 + 8);
  v9 = *(a8 + 16);
  v11 = a3[10];
  v10 = a3[11];
  v12 = a3[16];
  v13 = *a8;
  if (v8)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a7[1];
    v16 = *v12;
    v17 = vbsl_s8(vcltz_s16(vshl_n_s16(vdup_n_s16(v13 > 0), 0xFuLL)), vqrdmulh_s16(*v10, vdup_n_s16(1 << (15 - v13))), *v10);
    v18 = vmovl_s16(v17).u64[0];
    v19 = vshll_n_s16(*v11, 0xFuLL);
    v20 = vmovl_s16(*v12);
    v21 = vcltzq_s32(*result);
    v22 = vdupq_n_s32(v13);
    v23 = vdupq_n_s32(v13 + 1);
    v24 = vabsq_s32(*result);
    v25 = vqdmulhq_s32(vshlq_s32(vbicq_s8(vaddw_s16(v24, v17), vcgtq_s32(v20, vshlq_s32(v24, v23))), v22), v19);
    v26 = vnegq_s32(v22);
    *a4 = vsubq_s32(veorq_s8(v25, v21), v21);
    *a5 = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v25, v20), v26), v21), v21);
    v27 = vdupq_lane_s32(v18, 1);
    v28 = vmovl_s16(vdup_lane_s16(v16, 1));
    v29 = vdupq_lane_s32(*v20.i8, 1);
    v30 = result[1];
    v31 = vcltzq_s32(v30);
    v32 = vabsq_s32(v30);
    v33 = vqdmulhq_lane_s32(vshlq_s32(vbicq_s8(vaddq_s32(v32, v27), vcgtq_s32(v29, vshlq_s32(v32, v23))), v22), *v19.i8, 1);
    a4[1] = vsubq_s32(veorq_s8(v33, v31), v31);
    a5[1] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v33, v28), v26), v31), v31);
    v34 = vuzp1q_s16(vcgtzq_s32(v25), vcgtzq_s32(v33));
    v36 = *v15;
    v35 = v15 + 1;
    v37.i64[0] = 0x1000100010001;
    v37.i64[1] = 0x1000100010001;
    v28.i64[0] = -1;
    v28.i64[1] = -1;
    v38 = vmaxq_s16(vandq_s8(vaddq_s16(v36, v37), v34), v28);
    v39 = a2 - 8;
    v40 = a5 + 3;
    v41 = a4 + 3;
    v42 = result + 3;
    do
    {
      v43 = v42[-1];
      v44 = vcltzq_s32(v43);
      v45 = vabsq_s32(v43);
      v46 = vqdmulhq_lane_s32(vshlq_s32(vbicq_s8(vaddq_s32(v45, v27), vcgtq_s32(v29, vshlq_s32(v45, v23))), v22), *v19.i8, 1);
      v41[-1] = vsubq_s32(veorq_s8(v46, v44), v44);
      v40[-1] = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v46, v29), v26), v44), v44);
      v47 = *v42;
      v42 += 2;
      v48 = vcltzq_s32(v47);
      v49 = vabsq_s32(v47);
      v50 = vqdmulhq_lane_s32(vshlq_s32(vbicq_s8(vaddq_s32(v49, v27), vcgtq_s32(v29, vshlq_s32(v49, v23))), v22), *v19.i8, 1);
      *v41 = vsubq_s32(veorq_s8(v50, v48), v48);
      v41 += 2;
      *v40 = vsubq_s32(veorq_s8(vshlq_s32(vmulq_s32(v50, v29), v26), v48), v48);
      v40 += 2;
      v51 = *v35++;
      v38 = vmaxq_s16(v38, vandq_s8(vaddq_s16(v51, v37), vuzp1q_s16(vcgtzq_s32(v46), vcgtzq_s32(v50))));
      v39 -= 8;
    }

    while (v39);
    v52 = vmaxvq_s16(v38);
  }

  else if (a2 < 1)
  {
    v52 = 0;
  }

  else
  {
    v53 = 0;
    v54 = *a7;
    v55 = -1;
    do
    {
      v56 = *(v54 + 2 * v53);
      v58 = result->i32[v56];
      v59 = v12->i16[*(v54 + 2 * v53) != 0];
      if (v58 >= 0)
      {
        v60 = result->i32[v56];
      }

      else
      {
        v60 = -v58;
      }

      if (*(v8 + v56) * v60 >= v59 << (4 - v13))
      {
        v63 = v58 >> 31;
        v57 = *(v54 + 2 * v53) != 0;
        v64 = (*(v8 + v56) * v11->i16[v57] * (v60 + (((1 << v13 >> 1) + v10->i16[v57]) >> v13))) >> (21 - v13);
        v61 = (v63 ^ v64) - v63;
        v62 = (((((*(v9 + v56) * v59 + 16) >> 5) * v64) >> v13) ^ v63) - v63;
        if (v64)
        {
          v55 = v53;
        }
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      a4->i32[v56] = v61;
      a5->i32[v56] = v62;
      ++v53;
    }

    while (a2 != v53);
    v52 = v55 + 1;
  }

  *a6 = v52;
  return result;
}

int32x2_t sub_277A7F750()
{
  v0 = MEMORY[0x28223BE20]();
  v11 = v5;
  v12 = v1;
  v13 = v0;
  v104 = *MEMORY[0x277D85DE8];
  v14 = *(v7 + 1);
  v15 = *(v7 + 2);
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (v7[6])
  {
    if (!v17)
    {
      v70 = *v7;
      if (*v7 == 2)
      {
        v82 = v2[15];
        v83 = v2[16];
        v84 = *v6;
        v85 = *(v6 + 8);
        v86 = *v2[13];
        v87 = *v2[12];
        v88 = *v2[14];
        v89 = 2;
      }

      else
      {
        if (v70 != 1)
        {
          if (!v70)
          {
            sub_277AE37D4(v0, v1, v2[15], v3, v4, v2[16], v5, *v6, *v2[13], *v2[12], *v2[14], v9, v10, *(v6 + 8), 0);
          }

          return result;
        }

        v82 = v2[15];
        v83 = v2[16];
        v84 = *v6;
        v85 = *(v6 + 8);
        v86 = *v2[13];
        v87 = *v2[12];
        v88 = *v2[14];
        v89 = 1;
      }

      sub_277AE37D4(v0, v1, v82, v3, v4, v83, v11, v84, v86, v87, v88, v9, v10, v85, v89);
      return result;
    }

    v98 = v5;
    v92 = v2[12];
    v94 = v2[13];
    v18 = v2[15];
    v90 = v2[14];
    v19 = v2[16];
    v20 = *v6;
    v21 = *v7;
    v22 = 1 << *v7 >> 1;
    v23 = (v18->i16[0] + (1 << v21 >> 1)) >> v21;
    LODWORD(v18) = (v18->i16[1] + (1 << v21 >> 1)) >> v21;
    v100[0] = v23;
    v100[1] = v18;
    v102 = -v23;
    v103 = -v18;
    v96 = v3;
    v24 = v4;
    bzero(v3, 4 * v1);
    bzero(v24, 4 * v12);
    v25.i32[0] = v19->i16[0];
    v25.i32[1] = v19->i16[1];
    v26 = v12;
    result = vshr_n_s32(vmla_s32(0x4000000040, v25, vdup_n_s32(0x145u)), 7uLL);
    v101 = result;
    v27 = v20 - 2;
    do
    {
      if (v26 < 1)
      {
        LOWORD(v34) = -1;
        v43 = v98;
        goto LABEL_61;
      }

      v28 = v26;
      v29 = *(v27 + 2 * v26) != 0;
      v30 = v13->i32[*(v27 + 2 * v26)] * *(v14 + *(v27 + 2 * v26));
      v31 = *(&v101 | (4 * v29));
      if (v30 >= v31 + 32 * v100[v29])
      {
        break;
      }

      --v26;
    }

    while (v30 > 32 * *(&v102 + v29) - v31);
    v32 = 0;
    v33 = v28 & 0x7FFFFFFF;
    v34 = -1;
    v35 = -1;
    do
    {
      v36 = *(v20 + 2 * v32);
      v37 = *(v20 + 2 * v32) != 0;
      v38 = v13->i32[v36];
      if (v38 >= 0)
      {
        v39 = v13->i32[v36];
      }

      else
      {
        v39 = -v38;
      }

      if (v39 * *(v14 + v36) >= 32 * v100[*(v20 + 2 * v32) != 0])
      {
        v40 = v38 >> 31;
        v41 = *(v14 + v36) * (((v22 + v94->i16[*(v20 + 2 * v32) != 0]) >> v21) + v39);
        v42 = ((((v41 * v92->i16[v37]) >> 16) + v41) * v90->i16[v37]) >> (21 - v21);
        v96->i32[v36] = (v40 ^ v42) - v40;
        v24->i32[v36] = (((((*(v15 + v36) * v19->i16[v37] + 16) >> 5) * v42) >> v21) ^ v40) - v40;
        if (v42)
        {
          if (v35 == -1)
          {
            v35 = v32;
          }

          v34 = v32;
        }
      }

      ++v32;
    }

    while (v33 != v32);
    v43 = v98;
    if ((v34 & 0x80000000) == 0 && v35 == v34)
    {
      v44 = *(v20 + 2 * v35);
      v45 = v96->i32[v44];
      v46 = v45 == 1 || v45 == -1;
      if (v46 && (v47 = v13->i32[v44] * *(v14 + v44), v48 = (525 * v19->i16[v44 != 0] + 64) >> 7, v47 < v48 + 32 * v100[v44 != 0]))
      {
        LOWORD(v34) = v35;
        if (v47 > 32 * *(&v102 + (v44 != 0)) - v48)
        {
          v96->i32[v44] = 0;
          v24->i32[v44] = 0;
          LOWORD(v34) = -1;
        }
      }

      else
      {
        LOWORD(v34) = v35;
      }
    }

LABEL_61:
    *v43 = v34 + 1;
  }

  else if (v17)
  {
    v99 = v5;
    v91 = v2[12];
    v93 = v2[13];
    v50 = v2[14];
    v49 = v2[15];
    v51 = v2[16];
    v52 = *v6;
    v53 = *v7;
    v54 = (v49->i16[0] + (1 << v53 >> 1)) >> v53;
    v95 = 1 << *v7;
    LODWORD(v49) = (v49->i16[1] + (1 << v53 >> 1)) >> v53;
    v102 = v54;
    v103 = v49;
    v101.i32[0] = -v54;
    v101.i32[1] = -v49;
    v97 = v3;
    v55 = v4;
    bzero(v3, 4 * v1);
    bzero(v55, 4 * v12);
    if (v12 < 1)
    {
      goto LABEL_54;
    }

    v56 = 0;
    LODWORD(v57) = 0;
    do
    {
      v58 = v13->i32[*(v52 + 2 * v56)] * *(v14 + *(v52 + 2 * v56));
      if (v58 >= 32 * *(&v102 + (*(v52 + 2 * v56) != 0)) || v58 <= 32 * v101.i32[*(v52 + 2 * v56) != 0])
      {
        v100[v57] = v56;
        LODWORD(v57) = v57 + 1;
      }

      ++v56;
    }

    while (v12 != v56);
    if (v57 < 1)
    {
LABEL_54:
      v69 = 0;
    }

    else
    {
      v57 = v57;
      v59 = -1;
      v60 = v100;
      do
      {
        v62 = *v60++;
        v61 = v62;
        v63 = *(v52 + 2 * v62);
        v64 = *(v52 + 2 * v62) != 0;
        v65 = v13->i32[v63];
        v66 = (v65 ^ (v65 >> 31)) + (v65 >> 31) + (((v95 >> 1) + v93->i16[*(v52 + 2 * v62) != 0]) >> v53);
        v67 = ((((*(v14 + v63) * v66 * v91->i16[v64]) >> 16) + *(v14 + v63) * v66) * v50->i16[v64]) >> (21 - v53);
        v68 = *(v15 + v63);
        v97->i32[v63] = (v67 ^ (v65 >> 31)) - (v65 >> 31);
        v55->i32[v63] = (((((v68 * v51->i16[v64] + 16) >> 5) * v67) >> v53) ^ (v65 >> 31)) - (v65 >> 31);
        if (v67)
        {
          v59 = v61;
        }

        --v57;
      }

      while (v57);
      v69 = v59 + 1;
    }

    *v99 = v69;
  }

  else
  {
    v71 = *v7;
    if (*v7 == 2)
    {
      v72 = *(v6 + 8);
      v73 = *v2[15];
      v74 = *v2[13];
      v75 = *v2[12];
      v76 = *v2[14];
      v77 = *v2[16];
      v78 = v3;
      v79 = v4;
      v80 = v11;
      v81 = 2;
    }

    else if (v71 == 1)
    {
      v72 = *(v6 + 8);
      v73 = *v2[15];
      v74 = *v2[13];
      v75 = *v2[12];
      v76 = *v2[14];
      v77 = *v2[16];
      v78 = v3;
      v79 = v4;
      v80 = v11;
      v81 = 1;
    }

    else
    {
      if (v71)
      {
        return result;
      }

      v72 = *(v6 + 8);
      v73 = *v2[15];
      v74 = *v2[13];
      v75 = *v2[12];
      v76 = *v2[14];
      v77 = *v2[16];
      v78 = v3;
      v79 = v4;
      v80 = v11;
      v81 = 0;
    }

    return sub_277AE34C8(v0, v1, v78, v79, v80, v72, v81, v73, v74, v75, v76, v77);
  }

  return result;
}

void sub_277A7FE34(int *a1, int a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _WORD *a6, uint64_t a7, int *a8)
{
  v11 = *(a8 + 1);
  v12 = *(a8 + 2);
  v13 = *(a3 + 104);
  v14 = **(a3 + 80);
  v15 = **(a3 + 128);
  v16 = *a8;
  v17 = 4 * a2;
  bzero(a4, v17);
  bzero(a5, v17);
  if (!v11)
  {
    v18 = 32;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 32;
    goto LABEL_6;
  }

  v18 = *v11;
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = *v12;
LABEL_6:
  v20 = *a1;
  v21 = (v18 * v14 * ((v20 ^ (v20 >> 31)) + (v20 >> 31) + ((*v13 + (1 << v16 >> 1)) >> v16))) >> (21 - v16);
  *a4 = (v21 ^ (*a1 >> 31)) - (*a1 >> 31);
  *a5 = (((((v19 * v15 + 16) >> 5) * v21) >> v16) ^ (v20 >> 31)) - (v20 >> 31);
  *a6 = v21 != 0;
}

int32x4_t sub_277A7FF54(int32x4_t *a1, _DWORD *a2, int a3)
{
  v67 = a2[1];
  if (a1[5376].i32[0] != v67)
  {
    v3 = a2[2];
    goto LABEL_8;
  }

  v3 = a1[5376].i32[1];
  v68 = a2[2];
  if (v3 != v68)
  {
LABEL_9:
    v61 = a1 + 5376;
    v4 = 0;
    v88 = a1 + 256;
    v89 = a1 + 4608;
    v66 = a2[4];
    v65 = a2[3];
    v86 = a1 + 1792;
    v87 = a1 + 1024;
    v64 = a2[5];
    v84 = a1 + 768;
    v85 = a1 + 512;
    v82 = a1 + 3072;
    v83 = a1 + 2560;
    v80 = a1 + 2048;
    v81 = a1 + 1280;
    v78 = a1 + 4096;
    v79 = a1 + 3584;
    v76 = a1 + 2816;
    v77 = a1 + 4864;
    v74 = a1 + 1536;
    v75 = a1 + 3328;
    v72 = a1 + 3840;
    v73 = a1 + 2304;
    v70 = a1 + 5120;
    v71 = a1 + 4352;
    v5 = a1;
    v63 = a3;
    while (1)
    {
      if (v4 >= 0xFF)
      {
        v6 = 255;
      }

      else
      {
        v6 = v4;
      }

      if (a3 == 8)
      {
        v7 = &unk_277BFDBFA;
        goto LABEL_19;
      }

      if (a3 == 12)
      {
        break;
      }

      if (a3 == 10)
      {
        v7 = &unk_277BFDDFA;
LABEL_19:
        v8 = v7[v6];
        goto LABEL_21;
      }

      v8 = -1;
LABEL_21:
      switch(a3)
      {
        case 12:
          v9 = v8 < 2368;
          goto LABEL_27;
        case 10:
          v9 = v8 < 592;
          goto LABEL_27;
        case 8:
          v9 = v8 < 148;
LABEL_27:
          if (v9)
          {
            v10 = 84;
          }

          else
          {
            v10 = 80;
          }

          if (v4)
          {
            v11 = v10;
          }

          else
          {
            v11 = 64;
          }

          goto LABEL_34;
      }

      v11 = -1;
LABEL_34:
      v12 = 0;
      if (v4)
      {
        v13 = 48;
      }

      else
      {
        v13 = 64;
      }

      if ((v67 + v4) >= 0xFF)
      {
        v14 = 255;
      }

      else
      {
        v14 = v67 + v4;
      }

      if (v67 + v4 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v95 = v15;
      if ((v66 + v4) >= 0xFF)
      {
        v16 = 255;
      }

      else
      {
        v16 = v66 + v4;
      }

      if (v66 + v4 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v93 = v17;
      if ((v68 + v4) >= 0xFF)
      {
        v18 = 255;
      }

      else
      {
        v18 = v68 + v4;
      }

      if (v68 + v4 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v92 = v19;
      if ((v64 + v4) >= 0xFF)
      {
        v20 = 255;
      }

      else
      {
        v20 = v64 + v4;
      }

      if (v64 + v4 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v91 = v21;
      if ((v65 + v4) >= 0xFF)
      {
        v22 = 255;
      }

      else
      {
        v22 = v65 + v4;
      }

      if (v65 + v4 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v69 = v23;
      v24 = 1;
      do
      {
        v25 = v24;
        if (v24)
        {
          switch(a3)
          {
            case 8:
              v26 = &unk_277BFDBFA;
              break;
            case 12:
              v26 = &unk_277BFDFFA;
              break;
            case 10:
              v26 = &unk_277BFDDFA;
              break;
            default:
              goto LABEL_77;
          }

          v29 = &v26[2 * v95];
        }

        else
        {
          switch(a3)
          {
            case 8:
              v27 = &unk_277BFE1FA;
              break;
            case 12:
              v27 = &unk_277BFE5FA;
              break;
            case 10:
              v27 = &unk_277BFE3FA;
              break;
            default:
LABEL_77:
              v28 = -1;
              goto LABEL_85;
          }

          v29 = &v27[2 * v6];
        }

        v28 = *v29;
LABEL_85:
        v30 = &a1[v4];
        v31 = __clz(v28) ^ 0x1F;
        v30->i16[v12] = (0x10000 << v31) / v28 + 1;
        v88[v4].i16[v12] = 1 << (16 - v31);
        v32 = &v87[v4];
        v32->i16[v12] = 0x10000 / v28;
        v86[v4].i16[v12] = v28 >> 1;
        v85[v4].i16[v12] = (v11 * v28 + 64) >> 7;
        v84[v4].i16[v12] = (v13 * v28) >> 7;
        v89[v4].i16[v12] = v28;
        if (v24)
        {
          switch(a3)
          {
            case 8:
              v33 = &unk_277BFDBFA;
              break;
            case 12:
              v33 = &unk_277BFDFFA;
              break;
            case 10:
              v33 = &unk_277BFDDFA;
              break;
            default:
              goto LABEL_94;
          }

          v35 = v92;
        }

        else
        {
          switch(a3)
          {
            case 8:
              v33 = &unk_277BFE1FA;
              break;
            case 12:
              v33 = &unk_277BFE5FA;
              break;
            case 10:
              v33 = &unk_277BFE3FA;
              break;
            default:
LABEL_94:
              v34 = -1;
              goto LABEL_102;
          }

          v35 = v93;
        }

        v34 = v33[v35];
LABEL_102:
        v36 = &v83[v4];
        v37 = &v82[v4];
        v38 = __clz(v34) ^ 0x1F;
        v36->i16[v12] = (0x10000 << v38) / v34 + 1;
        v37->i16[v12] = 1 << (16 - v38);
        v39 = &v81[v4];
        v40 = &v80[v4];
        v39->i16[v12] = 0x10000 / v34;
        v40->i16[v12] = v34 >> 1;
        v41 = &v79[v4];
        v41->i16[v12] = (v11 * v34 + 64) >> 7;
        v42 = &v78[v4];
        v42->i16[v12] = (v13 * v34) >> 7;
        v43 = &v77[v4];
        v43->i16[v12] = v34;
        if (v24)
        {
          switch(a3)
          {
            case 8:
              v44 = &unk_277BFDBFA;
              break;
            case 12:
              v44 = &unk_277BFDFFA;
              break;
            case 10:
              v44 = &unk_277BFDDFA;
              break;
            default:
              goto LABEL_111;
          }

          v46 = v69;
        }

        else
        {
          switch(a3)
          {
            case 8:
              v44 = &unk_277BFE1FA;
              break;
            case 12:
              v44 = &unk_277BFE5FA;
              break;
            case 10:
              v44 = &unk_277BFE3FA;
              break;
            default:
LABEL_111:
              v45 = -1;
              goto LABEL_119;
          }

          v46 = v91;
        }

        v45 = v44[v46];
LABEL_119:
        v24 = 0;
        v47 = &v76[v4];
        v48 = &v75[v4];
        v49 = __clz(v45) ^ 0x1F;
        v47->i16[v12] = (0x10000 << v49) / v45 + 1;
        v48->i16[v12] = 1 << (16 - v49);
        v50 = &v74[v4];
        v50->i16[v12] = 0x10000 / v45;
        v51 = &v73[v4];
        v51->i16[v12] = v45 >> 1;
        v52 = &v72[v4];
        v52->i16[v12] = (v11 * v45 + 64) >> 7;
        v53 = &v71[v4];
        v53->i16[v12] = (v13 * v45) >> 7;
        v54 = &v70[v4];
        v54->i16[v12] = v45;
        v12 = 1;
      }

      while ((v25 & 1) != 0);
      v55 = 0;
      v94 = v30->i16[1];
      do
      {
        v56 = &v5->i8[v55 * 2];
        *(v56 + 2) = v94;
        v57 = &v5[256].i16[v55 + 2];
        v57[6144] = v32->i16[1];
        v57[12288] = v86[v4].i16[1];
        *(v56 + 2050) = v88[v4].i16[1];
        v58 = &v5[2816].i16[v55 + 2];
        *(v58 - 18432) = v85[v4].i16[1];
        *(v58 - 0x4000) = v84[v4].i16[1];
        v58[14336] = v89[v4].i16[1];
        v57[18432] = v36->i16[1];
        *(v58 - 12288) = v39->i16[1];
        *(v58 - 6144) = v40->i16[1];
        v57[22528] = v37->i16[1];
        v58[6144] = v41->i16[1];
        v58[10240] = v42->i16[1];
        v58[0x4000] = v43->i16[1];
        v57[20480] = v47->i16[1];
        *(v58 - 10240) = v50->i16[1];
        *(v58 - 4096) = v51->i16[1];
        v58[4096] = v48->i16[1];
        v58[0x2000] = v52->i16[1];
        v58[12288] = v53->i16[1];
        v58[18432] = v54->i16[1];
        ++v55;
      }

      while (v55 != 6);
      ++v4;
      ++v5;
      a3 = v63;
      if (v4 == 256)
      {
        result = *(a2 + 1);
        v60 = vrev64q_s32(result);
        v60.i64[0] = *(a2 + 1);
        *v61 = v60;
        v61[1].i32[0] = a2[5];
        return result;
      }
    }

    v7 = &unk_277BFDFFA;
    goto LABEL_19;
  }

  if (a1[5376].i32[3] != a2[3] || a1[5376].i32[2] != a2[4])
  {
LABEL_8:
    v68 = v3;
    goto LABEL_9;
  }

  v68 = a1[5376].i32[1];
  if (a1[5377].i32[0] != a2[5])
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_277A806F0(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 16904);
  v6 = a1 + 33750;
  v8 = *(a1 + 67500);
  v9 = *(a1 + 61558);
  v10 = v9;
  if (v8)
  {
    v10 = *(a2 + 16908) + v9;
  }

  v11 = *(a1 + 463456);
  v12 = v10 & ~(v10 >> 31);
  if (v12 >= 255)
  {
    v13 = 255;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 264608);
  if (*(a1 + 264608) && (*(a1 + a3 + 66185) & 1) != 0)
  {
    v15 = v13 + SWORD2(a1[2 * a3 + 33076]);
    if (v15 >= 0xFF)
    {
      v16 = 255;
    }

    else
    {
      v16 = v13 + SWORD2(a1[2 * a3 + 33076]);
    }

    if (v15 >= 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  v17 = *a1;
  v18 = v13;
  if (*(a1 + 68062))
  {
    if (v8)
    {
      v9 += *(a2 + 16912);
    }

    v19 = v9 & ~(v9 >> 31);
    if (v19 >= 255)
    {
      v18 = 255;
    }

    else
    {
      v18 = v19;
    }

    if (*(a1 + 264608) && (*(a1 + a3 + 66185) & 1) != 0)
    {
      v20 = v18 + SWORD2(a1[2 * a3 + 33076]);
      if (v20 >= 0xFF)
      {
        v21 = 255;
      }

      else
      {
        v21 = v18 + SWORD2(a1[2 * a3 + 33076]);
      }

      if (v20 >= 0)
      {
        v18 = v21;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  v22 = (a2 + 86568);
  v23 = v17 + 4 * v11;
  v24 = v17 + v11;
  v25 = *(a1 + 68045);
  if (v25 > 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = !v25 && !*(a1 + 644192) && *(v17 + 23172) != 0;
  }

  v27 = *(a1 + 245616);
  v28 = *(a1[33789] + 72);
  v29 = *(v24 + 400);
  v30 = *(a1 + 67828);
  v31 = *(v17 + 35636);
  v32 = *(v23 + 1152);
  v33 = *(a1 + 61559);
  if (a4 || *v5 != v13)
  {
    *v5 = v13;
    *(a2 + 86576) = 0;
    v34 = &a1[2 * v13];
    *(a2 + 80) = v34 + 2050;
    *(a2 + 88) = v34 + 3586;
    *(a2 + 112) = v34 + 514;
    *(a2 + 120) = v34 + 1026;
    *(a2 + 96) = v34 + 2;
    *(a2 + 104) = v34 + 1538;
    *(a2 + 128) = v34 + 9218;
    *(a2 + 216) = v34 + 2562;
    *(a2 + 224) = v34 + 4098;
    *(a2 + 248) = v34 + 6146;
    *(a2 + 256) = v34 + 7170;
    *(a2 + 232) = v34 + 5122;
    *(a2 + 240) = v34 + 8194;
    *(a2 + 264) = v34 + 9730;
    *(a2 + 352) = v34 + 3074;
    *(a2 + 360) = v34 + 4610;
    *(a2 + 384) = v34 + 6658;
    *(a2 + 392) = v34 + 7682;
    *(a2 + 368) = v34 + 5634;
    *(a2 + 376) = v34 + 8706;
    *(a2 + 400) = v34 + 10242;
  }

  v7 = a1 + 33074;
  if (*(a2 + 86600) != a3)
  {
    if ((*v7 & 1) == 0)
    {
      v36 = a3;
      goto LABEL_45;
    }

LABEL_42:
    v36 = a3;
    if (!*(a2 + 4 * a3 + 11108))
    {
      v37 = *(a1 + 264596);
      v38 = *(a1 + 66151);
LABEL_46:
      v39 = 0;
      v63 = v37;
      v64 = v38;
      v40 = a1 + 30794;
      v41 = a2 + 152 * v36;
      do
      {
        v42 = &v40[57 * *(&v63 + v39)];
        v43 = *(v42 + 457);
        *(v41 + 1824) = *(v42 + 456);
        *(v41 + 1840) = v43;
        v44 = *(v42 + 459);
        v45 = *(v42 + 460);
        v46 = *(v42 + 461);
        *(v41 + 1856) = *(v42 + 458);
        *(v41 + 1904) = v46;
        *(v41 + 1888) = v45;
        *(v41 + 1872) = v44;
        v47 = *(v42 + 463);
        v48 = *(v42 + 464);
        v49 = v42[930];
        *(v41 + 1920) = *(v42 + 462);
        *(v41 + 1968) = v49;
        *(v41 + 1952) = v48;
        *(v41 + 1936) = v47;
        v50 = *(v42 + 1);
        *(v41 + 608) = *v42;
        *(v41 + 624) = v50;
        v51 = *(v42 + 5);
        v53 = *(v42 + 2);
        v52 = *(v42 + 3);
        *(v41 + 672) = *(v42 + 4);
        *(v41 + 688) = v51;
        *(v41 + 640) = v53;
        *(v41 + 656) = v52;
        v55 = *(v42 + 7);
        v54 = *(v42 + 8);
        v56 = *(v42 + 6);
        *(v41 + 752) = v42[18];
        *(v41 + 720) = v55;
        *(v41 + 736) = v54;
        *(v41 + 704) = v56;
        v39 += 4;
        v40 += 19;
        v41 += 2608;
      }

      while (v39 != 12);
      if (*(a1 + 264608))
      {
        goto LABEL_40;
      }

      goto LABEL_49;
    }

LABEL_45:
    v37 = 0xF0000000FLL;
    v38 = 15;
    goto LABEL_46;
  }

  if ((*v7 & 1) != 0 && !*(a2 + 4 * a3 + 11108))
  {
    goto LABEL_42;
  }

  if (v14)
  {
LABEL_40:
    v35 = (*(a1 + a3 + 66185) >> 6) & 1;
    goto LABEL_50;
  }

LABEL_49:
  v35 = 0;
LABEL_50:
  if (v32 >= 6)
  {
    v57 = 6;
  }

  else
  {
    v57 = v32;
  }

  if (v31 <= 1599)
  {
    v58 = v31 / 100;
  }

  else
  {
    v58 = 15;
  }

  result = sub_277A8A0B8(v33 + v18, v28, v29, v57, v58, v27, v30, v26);
  v22[2] = v35;
  v60 = result >> 6;
  if (result >> 6 <= 1)
  {
    v60 = 1;
  }

  *v22 = v60;
  v61 = *(v6[39] + 72);
  switch(v61)
  {
    case 8:
      v62 = &unk_280ABBC20;
      goto LABEL_64;
    case 12:
      v62 = &unk_280ABC420;
      goto LABEL_64;
    case 10:
      v62 = &unk_280ABC020;
LABEL_64:
      v22[1] = v62[v18];
      break;
  }

  v22[8] = a3;
  return result;
}

int32x2_t sub_277A80B98(uint64_t a1, int a2, int a3, signed int a4, int a5, int a6)
{
  v6 = *(a1 + 24384);
  if (v6 <= a4)
  {
    v6 = a4;
  }

  *(a1 + 616) = v6;
  *(a1 + 620) = 0;
  v7 = 2 * (a5 != 0);
  *(a1 + 624) = vdupq_n_s32(v7);
  if (a6)
  {
    v8 = vcvtd_n_f64_s32(v6, 1uLL);
    v9 = (v8 * -0.46 + 9.26) * 1.04 + (v8 * -0.46 + 9.26) * 1.04;
    v10 = 0.5;
    if (v9 < 0.0)
    {
      v10 = -0.5;
    }

    v11 = (v9 + v10);
    if (v11 >= -24)
    {
      v12 = (v11 & (v11 >> 31));
      if (v12 > 24.0)
      {
        v12 = 24.0;
      }

      v7 = v12;
    }

    else
    {
      v7 = -24;
    }

    *(a1 + 624) = vdupq_n_s32(v7);
  }

  v13 = a3 - a2 + 1;
  *(a1 + 18980) = a2 + v6 * v13 / 256;
  result = vdup_n_s32(a2 + ((v7 + v6) * v13) / 256);
  *(a1 + 18984) = result;
  return result;
}

uint64_t sub_277A80C80(_DWORD *a1)
{
  v2 = a1 + 67797;
  v3 = *a1;
  v61 = a1 + 98778;
  if (a1[98778])
  {
    if (*(v3 + 23168))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v5 = a1[68061];
    if (v5 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      if (v5 >= *(v3 + 3156))
      {
        v5 = *(v3 + 3156);
      }

      *(v3 + 3156) = v5;
    }
  }

  v6 = *(v3 + 44120);
  v7 = (v3 + 6160);
  v65 = 0;
  if (v4)
  {
    v8 = a1[61408];
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 - 1;
  v60 = v4;
  v10 = v4;
  v64 = v8;
  v11 = v3 + 12668;
  bzero((v3 + 6668), 0x3E8uLL);
  bzero((v3 + 12668), 0x5DCuLL);
  memset((v3 + 14168), 255, 0x2328uLL);
  if (!v10)
  {
    v15 = v6 != 250 && *v2 > 1;
    if (v6 != 250 && *v2 > 1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    *(v3 + 400) = v16;
    *(v3 + 650) = 0;
    *(v3 + 900) = 0;
    *(v3 + 1152) = 0;
    *v7 = 0;
    *(v3 + 6410) = 0;
    *(v3 + 3152) = 0;
    *(v3 + 7668) = v8;
    v12 = 1;
    v13 = 1;
    if (v15)
    {
      HIDWORD(v65) = 1;
      *(v3 + 401) = 4;
      *(v3 + 651) = 0;
      *(v3 + 901) = 0;
      *(v3 + 1156) = 0;
      *(v3 + 6161) = 1;
      *(v3 + 6411) = 1;
      v13 = 2;
      *(v3 + 7672) = v8;
    }

    v14 = 0;
    v64 = ++v8;
    HIDWORD(v65) = v13;
    goto LABEL_22;
  }

  if (v10 == 2)
  {
    *(v3 + 400) = 2;
    *(v3 + 650) = 0;
    *(v3 + 900) = 0;
    *(v3 + 1152) = 0;
    v12 = 1;
    *v7 = 1;
    *(v3 + 6410) = 1;
    *(v3 + 3152) = 0;
    *(v3 + 7668) = v8++;
    v64 = v8;
    HIDWORD(v65) = 1;
    v13 = 1;
    v14 = 1;
LABEL_22:
    LODWORD(v65) = 1;
    goto LABEL_24;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_24:
  v17 = v6 - 1;
  v18 = v3 + 400;
  if (*(v3 + 3156) >= 1)
  {
    v19 = v61[1] == v9;
    *(v18 + v13) = 3;
    v20 = v3 + 650;
    *(v3 + 650 + v13) = v9 - v12;
    *(v3 + 900 + v13) = v12;
    v21 = !v19;
    *(v3 + 1152 + 4 * v13) = 1;
    *(v3 + 2152 + 4 * v13) = *(*a1 + 35636);
    *(v3 + 6160 + v13) = v21;
    *(v3 + 6410 + v13) = 1;
    *(v3 + 3152) = 1;
    *(v3 + 6660) = v13;
    *(v3 + 7668 + 4 * v13) = v8 + *(v20 + v13);
    HIDWORD(v65) = v13 + 1;
    v63 = 1;
    v22 = *(*a1 + 328);
    if (v22 < 2)
    {
      v62 = v12;
      result = sub_277A81368(v3 + 23480, a1 + 80567, v3 + 400, v3 + 35624, a1 + 115866, v12, v17, &v65, &v65 + 1, &v63, v22, 0, &v62, &v64, 2);
    }

    else
    {
      v23 = *(v3 + 3156);
      v62 = v12;
      v24 = v23 <= 3;
      v25 = v23 > 3;
      if (!v24)
      {
        if (!v60)
        {
          v14 = 1;
        }

        if (v14)
        {
          v26 = v6 - 1;
        }

        else
        {
          v26 = v6;
        }

        if (v26 == 32)
        {
          v27 = 4;
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

        if (v26 == 16)
        {
          v28 = 3;
        }

        else
        {
          v28 = v27;
        }

        result = sub_277A818A4(v3 + 23480, a1 + 80567, v3 + 400, v3 + 35624, a1 + 115866, v12, v17, &v65, &v65 + 1, &v63, __SPAIR64__(v25, v22), &v62, v28, &v64, 2);
        v30 = 1;
        goto LABEL_55;
      }

      result = sub_277A81368(v3 + 23480, a1 + 80567, v3 + 400, v3 + 35624, a1 + 115866, v12, v17, &v65, &v65 + 1, &v63, v22, v25, &v62, &v64, 2);
    }

    v30 = 0;
LABEL_55:
    v44 = SHIDWORD(v65);
    *(v18 + SHIDWORD(v65)) = 4;
    *(v20 + v44) = 0;
    *(v3 + 900 + v44) = v65;
    *(v3 + 1152 + 4 * v44) = 6;
    *(v3 + 2152 + 4 * v44) = 100;
    *(v3 + 6160 + v44) = 1;
    *(v3 + 6410 + v44) = v21;
    *(v3 + 7668 + 4 * v44) = v64;
    v33 = (v44 + 1);
    if (v30)
    {
      if ((v44 & 0x80000000) == 0)
      {
        v45 = 0;
        v46 = 0;
        v47 = 0x7FFFFFFF;
        do
        {
          v48 = *(v11 + 4 * v45);
          if (v48 == 1)
          {
            if (v47 == 0x7FFFFFFF || v46)
            {
              v46 = 0;
              v48 = 1;
            }

            else
            {
              *(v11 + 4 * v47) = 0;
              v48 = *(v11 + 4 * v45);
            }

            v47 = v45;
          }

          if (v48 == 2)
          {
            ++v46;
          }

          ++v45;
        }

        while (v33 != v45);
      }

      v49 = v44 - 1;
      if (*(v11 + 4 * v49) == 1)
      {
        *(v11 + 4 * v49) = 0;
      }
    }

    goto LABEL_69;
  }

  *(v3 + 6660) = -1;
  v62 = v12;
  v63 = 1;
  result = sub_277A81368(v3 + 23480, a1 + 80567, v3 + 400, v3 + 35624, a1 + 115866, v12, v17, &v65, &v65 + 1, &v63, *(*a1 + 328), 0, &v62, &v64, 1);
  v31 = v65;
  v32 = HIDWORD(v65);
  LODWORD(v33) = HIDWORD(v65);
  if (v65 < v6)
  {
    v33 = 0;
    v34 = v64;
    v35 = v3 + 4 * SHIDWORD(v65);
    v36 = v62;
    v37 = (v35 + 6668);
    v38 = v3 + SHIDWORD(v65);
    result = 6;
    do
    {
      v39 = (v38 + v33);
      v39[400] = 1;
      v39[650] = 0;
      v39[900] = v31 + v33;
      v40 = v35 + 4 * v33;
      *(v40 + 1152) = 6;
      *(v40 + 2152) = 100;
      v41 = (v38 + 6160 + v33);
      *v41 = 1;
      v41[250] = 1;
      v42 = *(v3 + 3152);
      if (v42 <= 2)
      {
        v42 = 2;
      }

      *(v3 + 3152) = v42;
      v43 = v37[1500];
      if (v43 >= 1)
      {
        if (v43 == 1)
        {
          v36 = v31 + v33;
        }

        *v37 = v31 + v33 - v36 + v39[650];
      }

      v37[250] = v34 + v33++;
      ++v37;
    }

    while (v31 - v6 + v33);
    LODWORD(v33) = v32 + v33;
  }

LABEL_69:
  if (v33 <= 249)
  {
    v50 = v33;
    v51 = 4 * v33 + 1152;
    do
    {
      v52 = (v3 + v50);
      v52[400] = 1;
      v52[650] = 0;
      v52[900] = v50;
      v53 = (v3 + v51);
      *v53 = 6;
      v53[250] = 100;
      v54 = (v3 + 6160 + v50);
      *v54 = 1;
      v54[250] = 1;
      v55 = *(v3 + 3152);
      if (v55 <= 2)
      {
        v55 = 2;
      }

      *(v3 + 3152) = v55;
      ++v50;
      v51 += 4;
    }

    while (v50 != 250);
  }

  *(v3 + 6664) = v33;
  if (!*(v3 + 3156))
  {
    v56 = -1;
    do
    {
      ++v56;
    }

    while (1 << v56 < *(v3 + 44120));
    if (v33 >= 1)
    {
      v57 = 0;
      do
      {
        for (i = 0; i != 6; ++i)
        {
          if ((v57 >> i))
          {
            break;
          }
        }

        *(v3 + 1152 + 4 * v57++) = (v56 - i) & ~((v56 - i) >> 31);
      }

      while (v57 < *(v3 + 6664));
    }

    if (v56 >= 6)
    {
      v59 = 6;
    }

    else
    {
      v59 = v56;
    }

    *(v3 + 3152) = v59;
  }

  return result;
}

uint64_t sub_277A81368(uint64_t result, void *a2, uint64_t a3, uint64_t a4, int *a5, int a6, int a7, int *a8, int *a9, int *a10, int a11, int a12, int *a13, _DWORD *a14, int a15)
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a3;
  v65 = result;
  v19 = a15;
  v20 = a14;
  if (*(a3 + 2756) < a15 || a7 - a6 < 3)
  {
    v22 = a15;
  }

  else
  {
    v61 = a7 - 1;
    v23 = a3 + 250;
    v24 = a3 + 500;
    v25 = a3 + 7268;
    v26 = a3 + 752;
    result = a3 + 5760;
    v27 = a3 + 6010;
    v28 = a3 + 12268;
    v63 = v18;
    v64 = v18 + 6268;
    v54 = v18 + 1752;
    v55 = v18 + 12268;
    v60 = v18 + 500;
    v58 = v18 + 752;
    v59 = v18 + 7268;
    v56 = v18 + 6010;
    v57 = v18 + 5760;
    do
    {
      v29 = (v61 + v17) / 2;
      *(v18 + *a9) = 6;
      *(v23 + *a9) = v29 - v17;
      *(v24 + *a9) = *v15;
      *(v25 + 4 * *a9) = *v20 + *(v23 + *a9);
      *(v26 + 4 * *a9) = v19;
      *(result + *a9) = 1;
      *(v27 + *a9) = 1;
      if (a12 && *a10 > 1 && *a10 <= a11)
      {
        v30 = *a9;
        if (*(v23 + v30) <= 6u)
        {
          *(v28 + 4 * v30) = 2;
        }

        *a10 = 1;
      }

      v31 = *a9;
      v32 = *(v28 + 4 * v31);
      v33 = v32 == 1;
      if (v32 >= 1)
      {
        v34 = *v15;
        if (v33)
        {
          *a13 = v34;
          v35 = v34;
        }

        else
        {
          v35 = *a13;
        }

        *(v64 + 4 * v31) = v34 - v35 + *(v23 + v31);
      }

      *(v54 + 4 * (*a9)++) = sub_2779727CC(v65, a2, a4, a5, v29, v16 - v29, v29 - v17, 0, 0, 0);
      v15 = a8;
      v18 = v63;
      sub_277A81368(v65, a2);
      v20 = a14;
      *(v63 + *a9) = 5;
      *(v23 + *a9) = 0;
      v25 = v59;
      v24 = v60;
      *(v60 + *a9) = *a8;
      *(v59 + 4 * *a9) = *a14;
      *(v54 + 4 * *a9) = 0;
      result = v57;
      v26 = v58;
      *(v58 + 4 * *a9) = v19;
      *(v57 + *a9) = 1;
      v28 = v55;
      v27 = v56;
      *(v56 + *a9) = 1;
      v36 = *a9;
      v37 = *(v55 + 4 * *a9);
      v38 = v37 == 1;
      if (v37 < 1)
      {
        v16 = a7;
        v22 = v19 + 1;
      }

      else
      {
        v39 = *a8;
        if (v38)
        {
          *a13 = v39;
          v40 = v39;
        }

        else
        {
          v40 = *a13;
        }

        v16 = a7;
        v22 = v19 + 1;
        *(v64 + 4 * v36) = v39 - v40 + *(v23 + v36);
        v36 = *a9;
      }

      *a9 = v36 + 1;
      ++*a8;
      ++*a14;
      v17 = v29 + 1;
      if (*(v63 + 2756) <= v19)
      {
        break;
      }

      v19 = v22;
    }

    while (v16 - v17 >= 3);
  }

  v41 = v16 - v17;
  if (v16 > v17)
  {
    v42 = v18 + 250;
    v43 = v18 + 12268;
    do
    {
      *(v18 + *a9) = 1;
      *(v42 + *a9) = 0;
      *(v18 + 500 + *a9) = *v15;
      v44 = v20;
      *(v18 + 7268 + 4 * *a9) = *v20;
      *(v18 + 752 + 4 * *a9) = 6;
      result = sub_2779727CC(v65, a2, a4, a5, v17, v41, 0, 0, 0, 0);
      *(v18 + 1752 + 4 * *a9) = result;
      *(v18 + 5760 + *a9) = 1;
      *(v18 + 6010 + *a9) = 1;
      v45 = *(v18 + 2752);
      if (v45 <= v22)
      {
        v45 = v22;
      }

      *(v18 + 2752) = v45;
      v46 = *a9;
      v47 = *a9;
      if (a12)
      {
        if (*a10 <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2;
        }

        *(v43 + 4 * v47) = v48;
        if (*a10 < a11)
        {
          v49 = *a10 + 1;
        }

        else
        {
          v49 = 1;
        }

        *a10 = v49;
        v46 = *a9;
        v47 = v46;
        *(v18 + 13268 + v46) = 1;
      }

      v50 = *(v43 + 4 * v47);
      v20 = v44;
      if (v50 >= 1)
      {
        v51 = *v15;
        if (v50 == 1)
        {
          *a13 = v51;
          v52 = v51;
        }

        else
        {
          v52 = *a13;
        }

        *(v18 + 6268 + 4 * v47) = v51 - v52 + *(v42 + v47);
        v46 = *a9;
      }

      *a9 = v46 + 1;
      ++*v15;
      ++*v44;
      ++v17;
      --v41;
    }

    while (v41);
  }

  return result;
}

uint64_t sub_277A818A4(uint64_t result, void *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, int a7, int *a8, int *a9, int *a10, uint64_t a11, int *a12, int a13, _DWORD *a14, int a15)
{
  v16 = a7;
  v17 = a6;
  v86 = result;
  v19 = a15;
  v93 = *MEMORY[0x277D85DE8];
  if (*(a3 + 2756) < a15 || a7 - a6 < 3)
  {
    v21 = a15;
LABEL_7:
    v22 = v16 - v17;
    if (v16 > v17)
    {
      v23 = a3 + 250;
      v24 = a3 + 12268;
      do
      {
        *(a3 + *a9) = 1;
        *(v23 + *a9) = 0;
        *(a3 + 500 + *a9) = *a8;
        *(a3 + 752 + 4 * *a9) = 6;
        *(a3 + 5760 + *a9) = 1;
        *(a3 + 6010 + *a9) = 1;
        v25 = *(a3 + 2752);
        if (v25 <= v21)
        {
          v25 = v21;
        }

        *(a3 + 2752) = v25;
        *(a3 + 7268 + 4 * *a9) = *a14;
        result = sub_2779727CC(v86, a2, a4, a5, v17, v22, 0, 0, 0, 0);
        *(a3 + 1752 + 4 * *a9) = result;
        ++*a14;
        v26 = *a9;
        v27 = *a9;
        if (HIDWORD(a11))
        {
          if (*a10 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          *(v24 + 4 * v27) = v28;
          if (*a10 < a11)
          {
            v29 = *a10 + 1;
          }

          else
          {
            v29 = 1;
          }

          *a10 = v29;
          v26 = *a9;
          v27 = v26;
          *(a3 + 13268 + v26) = 1;
        }

        v30 = *(v24 + 4 * v27);
        if (v30 >= 1)
        {
          v31 = *a8;
          if (v30 == 1)
          {
            *a12 = v31;
            v32 = v31;
          }

          else
          {
            v32 = *a12;
          }

          *(a3 + 6268 + 4 * v27) = v31 - v32 + *(v23 + v27);
          v26 = *a9;
        }

        *a9 = v26 + 1;
        ++*a8;
        LODWORD(v17) = v17 + 1;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v75 = a7 - 1;
    v33 = a3 + 250;
    v84 = a3 + 752;
    v81 = a3 + 5760;
    v82 = a3 + 500;
    v80 = a3 + 6010;
    v83 = a3 + 7268;
    v77 = a3 + 1752;
    v85 = a3 + 12268;
    v79 = a3 + 6268;
    if (a15 <= a13)
    {
      v34 = a13;
    }

    else
    {
      v34 = a15;
    }

    v76 = v34;
    while (1)
    {
      v35 = ((v75 + v17) / 2);
      *(a3 + *a9) = 6;
      *(v33 + *a9) = v35 - v17;
      *(v82 + *a9) = *a8;
      *(v84 + 4 * *a9) = v19;
      *(v81 + *a9) = 1;
      *(v80 + *a9) = 1;
      *(v83 + 4 * *a9) = *a14 + *(v33 + *a9);
      *(v77 + 4 * *a9) = sub_2779727CC(v86, a2, a4, a5, (v75 + v17) / 2, v16 - (v75 + v17) / 2, v35 - v17, 0, 0, 0);
      if (HIDWORD(a11) && *a10 > 1 && *a10 <= a11)
      {
        v36 = *a9;
        if (*(v33 + v36) <= 6u)
        {
          *(v85 + 4 * v36) = 2;
        }

        *a10 = 1;
      }

      v37 = *a9;
      v38 = *(v85 + 4 * *a9);
      v39 = v38 == 1;
      if (v38 >= 1)
      {
        v40 = *a8;
        if (v39)
        {
          *a12 = v40;
          v41 = v40;
        }

        else
        {
          v41 = *a12;
        }

        *(v79 + 4 * v37) = v40 - v41 + *(v33 + v37);
        v37 = *a9;
      }

      v42 = v37 + 1;
      *a9 = v42;
      if (v76 == v19)
      {
        break;
      }

      v21 = v19 + 1;
      result = sub_277A818A4(v86, a2, a3, a4, a5, v17, v35, a8, a9, a10, a11, a12, a13, a14, v19 + 1);
      *(a3 + *a9) = 5;
      *(v33 + *a9) = 0;
      *(v82 + *a9) = *a8;
      *(v84 + 4 * *a9) = v19;
      *(v81 + *a9) = 1;
      *(v80 + *a9) = 1;
      v43 = *a14;
      *(v83 + 4 * *a9) = *a14;
      *a14 = v43 + 1;
      v44 = *a9;
      v45 = *(v85 + 4 * *a9);
      v46 = v45 == 1;
      if (v45 >= 1)
      {
        v47 = *a8;
        if (v46)
        {
          *a12 = v47;
          v48 = v47;
        }

        else
        {
          v48 = *a12;
        }

        *(v79 + 4 * v44) = v47 - v48 + *(v33 + v44);
        v44 = *a9;
      }

      *a9 = v44 + 1;
      ++*a8;
      v17 = (v35 + 1);
      v16 = a7;
      if (*(a3 + 2756) > v19)
      {
        ++v19;
        if (a7 - v17 >= 3)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v49 = v35 - (v17 + v35 - 1) / 2;
    v50 = (v17 + v35 - 1) / 2;
    v51 = (v35 + 1 + a7) / 2;
    v52 = v50 - v17;
    v74 = v51 - v17;
    v73 = v51 - (v35 + 1);
    v53 = v76 + 1;
    v72 = a3 + 13768;
    v54 = 1;
    v55 = v50 - v17;
    do
    {
      *(a3 + v42) = 6;
      v56 = v54;
      *(v33 + *a9) = v55;
      *(v82 + *a9) = *a8;
      *(v84 + 4 * *a9) = v53;
      *(v81 + *a9) = 1;
      *(v80 + *a9) = 1;
      *(v83 + 4 * *a9) = *a14 + *(v33 + *a9);
      *(v77 + 4 * *a9) = sub_2779727CC(v86, a2, a4, a5, v50, v49, v52, 0, 0, 0);
      if (HIDWORD(a11))
      {
        if (a13 != 0x7FFFFFFF)
        {
          v57 = *a9;
          if (*(v84 + 4 * v57 - 4) == v53)
          {
            *(v85 + 4 * v57) = 2;
            *(v72 + 32 * *a9) = *(v83 + 4 * *a9 - 4);
            *(v72 + 32 * *a9 + 4) = *(v83 + 4 * *a9 - 8);
            *(a3 + 21768 + 4 * *a9) = *(v83 + 4 * *a9 - 4);
          }

          else
          {
            *(v85 + 4 * v57) = 1;
          }
        }

        if (*a10 > 1 && *a10 <= a11)
        {
          v58 = *a9;
          if (*(v33 + v58) <= 6u)
          {
            *(v85 + 4 * v58) = 2;
          }

          *a10 = 1;
        }
      }

      v59 = *a9;
      v60 = *(v85 + 4 * *a9);
      v61 = v60 == 1;
      if (v60 >= 1)
      {
        v62 = *a8;
        if (v61)
        {
          *a12 = v62;
          v63 = v62;
        }

        else
        {
          v63 = *a12;
        }

        *(v79 + 4 * v59) = v62 - v63 + *(v33 + v59);
        v59 = *a9;
      }

      v54 = 0;
      v42 = v59 + 1;
      *a9 = v42;
      v49 = a7 - (v35 + 1 + a7) / 2;
      v52 = v73;
      v55 = v74;
      v50 = (v35 + 1 + a7) / 2;
    }

    while ((v56 & 1) != 0);
    v64 = 0;
    v92[0] = v17;
    v92[1] = (v17 + v35 - 1) / 2 + 1;
    v92[2] = v35 + 1;
    v92[3] = v75;
    v91[0] = (v17 + v35 - 1) / 2;
    v91[1] = (v75 + v17) / 2;
    v91[2] = (v35 + 1 + a7) / 2;
    v91[3] = a7;
    v90[0] = v76 + 1;
    v90[1] = v76;
    v90[2] = v76 + 1;
    v90[3] = -1;
    do
    {
      result = sub_277A818A4(v86, a2, a3, a4, a5, v92[v64], v91[v64], a8, a9, a10, a11, a12, a13, a14, v76 + 2);
      v65 = v90[v64];
      if (v65 != -1)
      {
        *(a3 + *a9) = 5;
        *(v33 + *a9) = 0;
        *(v82 + *a9) = *a8;
        *(v84 + 4 * *a9) = v65;
        *(v81 + *a9) = 1;
        *(v80 + *a9) = 1;
        v66 = *a14;
        *(v83 + 4 * *a9) = *a14;
        *a14 = v66 + 1;
        v67 = *a9;
        v68 = *(v85 + 4 * *a9);
        v69 = v68 == 1;
        if (v68 >= 1)
        {
          v70 = *a8;
          if (v69)
          {
            *a12 = v70;
            v71 = v70;
          }

          else
          {
            v71 = *a12;
          }

          *(v79 + 4 * v67) = v70 - v71 + *(v33 + v67);
          v67 = *a9;
        }

        *a9 = v67 + 1;
        ++*a8;
      }

      ++v64;
    }

    while (v64 != 4);
  }

  return result;
}

int32x4_t sub_277A8219C(int16x8_t *a1, uint64_t a2, int32x4_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = vaddq_s16(v3, *a1);
  v5 = vsubq_s16(*a1, v3);
  v6 = *(a1 + 4 * a2);
  v7 = *(a1 + 6 * a2);
  v8 = vaddq_s16(v7, v6);
  v9 = vsubq_s16(v6, v7);
  v10 = *(a1 + 8 * a2);
  v11 = *(a1 + 10 * a2);
  v12 = *(a1 + 12 * a2);
  v13 = vaddq_s16(v11, v10);
  v14 = vsubq_s16(v10, v11);
  v15 = *(a1 + 14 * a2);
  v16 = vaddq_s16(v15, v12);
  v17 = vsubq_s16(v12, v15);
  v18 = vaddq_s16(v8, v4);
  v19 = vsubq_s16(v4, v8);
  v20 = vaddq_s16(v9, v5);
  v21 = vsubq_s16(v5, v9);
  v22 = vaddq_s16(v16, v13);
  v23 = vsubq_s16(v13, v16);
  v24 = vaddq_s16(v17, v14);
  v25 = vsubq_s16(v14, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v18, v22);
  v28 = vaddq_s16(v24, v20);
  v29 = vsubq_s16(v20, v24);
  v30 = vaddq_s16(v23, v19);
  v31 = vsubq_s16(v19, v23);
  v32 = vaddq_s16(v25, v21);
  v33 = vsubq_s16(v21, v25);
  v34 = vtrn1q_s16(v26, v31);
  v35 = vtrn2q_s16(v26, v31);
  v36 = vtrn1q_s16(v27, v30);
  v37 = vtrn2q_s16(v27, v30);
  v38 = vtrn1q_s16(v32, v33);
  v39 = vtrn2q_s16(v32, v33);
  v40 = vtrn1q_s16(v29, v28);
  v41 = vtrn2q_s16(v29, v28);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vtrn2q_s32(v39, v41);
  v50 = vaddl_s16(*v44.i8, *v42.i8);
  v51 = vsubl_s16(*v42.i8, *v44.i8);
  v52 = vaddl_s16(*v45.i8, *v43.i8);
  v53 = vsubl_s16(*v43.i8, *v45.i8);
  v54 = vaddl_high_s16(v44, v42);
  v55 = vsubl_high_s16(v42, v44);
  v56 = vaddl_high_s16(v45, v43);
  v57 = vsubl_high_s16(v43, v45);
  v58 = vaddq_s32(v52, v50);
  v59 = vsubq_s32(v50, v52);
  v60 = vaddq_s32(v53, v51);
  v61 = vsubq_s32(v51, v53);
  v62 = vaddq_s32(v56, v54);
  v63 = vsubq_s32(v54, v56);
  v64 = vaddq_s32(v57, v55);
  v65 = vsubq_s32(v55, v57);
  *a3 = vaddq_s32(v62, v58);
  a3[1] = vsubq_s32(v59, v63);
  a3[2] = vsubq_s32(v58, v62);
  a3[3] = vaddq_s32(v63, v59);
  a3[4] = vaddq_s32(v65, v61);
  a3[5] = vsubq_s32(v61, v65);
  a3[6] = vsubq_s32(v60, v64);
  a3[7] = vaddq_s32(v64, v60);
  v66 = vaddl_s16(*v48.i8, *v46.i8);
  v67 = vsubl_s16(*v46.i8, *v48.i8);
  v68 = vaddl_s16(*v49.i8, *v47.i8);
  v69 = vsubl_s16(*v47.i8, *v49.i8);
  v70 = vaddl_high_s16(v48, v46);
  v71 = vsubl_high_s16(v46, v48);
  v72 = vaddl_high_s16(v49, v47);
  v73 = vsubl_high_s16(v47, v49);
  v74 = vaddq_s32(v68, v66);
  v75 = vsubq_s32(v66, v68);
  v76 = vsubq_s32(v67, v69);
  v77 = vaddq_s32(v72, v70);
  v78 = vsubq_s32(v70, v72);
  v79 = vsubq_s32(v71, v73);
  a3[8] = vaddq_s32(v77, v74);
  a3[9] = vsubq_s32(v75, v78);
  a3[10] = vsubq_s32(v74, v77);
  a3[11] = vaddq_s32(v78, v75);
  a3[12] = vaddq_s32(v79, v76);
  a3[13] = vsubq_s32(v76, v79);
  v80 = vaddq_s32(v69, v67);
  v81 = vaddq_s32(v73, v71);
  v82 = vaddq_s32(v81, v80);
  result = vsubq_s32(v80, v81);
  a3[14] = result;
  a3[15] = v82;
  return result;
}

int32x4_t sub_277A8236C(int16x8_t *a1, uint64_t a2, int32x4_t *a3)
{
  v3 = a3;
  sub_277A8219C(a1, a2, a3);
  sub_277A8219C(a1 + 1, a2, v3 + 16);
  v6 = &a1[a2];
  sub_277A8219C(v6, a2, v3 + 32);
  sub_277A8219C(v6 + 1, a2, v3 + 48);
  v7 = 16;
  do
  {
    v8 = v3[16];
    v9 = v3[32];
    v10 = v3[48];
    v11 = vhaddq_s32(*v3, v8);
    v12 = vhsubq_s32(*v3, v8);
    v13 = vhaddq_s32(v9, v10);
    v14 = vhsubq_s32(v9, v10);
    v15 = vaddq_s32(v14, v12);
    *v3 = vaddq_s32(v13, v11);
    result = vsubq_s32(v12, v14);
    v3[16] = v15;
    v3[32] = vsubq_s32(v11, v13);
    v3[48] = result;
    ++v3;
    --v7;
  }

  while (v7);
  return result;
}

void sub_277A82424(uint64_t a1, unint64_t *a2, uint64_t a3, int a4, int a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 24696);
  if (*(v7 + 77))
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v96 = v8;
  v100 = 0uLL;
  v101 = 0;
  v98 = 0uLL;
  v99 = 0;
  v9 = (a1 + 23472);
  v10 = *(a1 + 532);
  v12 = v10 + 15;
  v11 = v10 < -15;
  v13 = v10 + 30;
  if (!v11)
  {
    v13 = v12;
  }

  v14 = v13 >> 4;
  if (*(v7 + 67))
  {
    v87 = a4 > 1;
    v15 = 32 * v14;
    if (a4 <= 1)
    {
      v15 = 96;
    }

    if (*(a1 + 25304))
    {
      v90 = 0;
      v95 = 0;
    }

    else
    {
      v16 = 0;
      v17 = (4 * *(a1 + 536) + 15) & 0xFFFFFFF0;
      v95 = 38016;
      do
      {
        if (v16)
        {
          v18 = *(v7 + 96);
        }

        else
        {
          LOBYTE(v18) = 0;
        }

        *(&v100 + v16) = v15 * (v17 >> v18);
        *(&v98 + v16) = 16 * (256 << (2 - v18));
        v16 += 8;
      }

      while (8 * v96 != v16);
      v90 = 1;
    }
  }

  else
  {
    v90 = 0;
    v95 = 0;
    v87 = a4 > 1;
  }

  v19 = 0;
  v93 = (a1 + 23724);
  v20 = *(a1 + 23728);
  v89 = a1 + 23552;
  v21 = (a1 + 23496);
  do
  {
    v22 = a1 + v19;
    if (*(&v100 + v19) != *(a1 + v19 + 23552))
    {
      v23 = *(v22 + 23496);
      if (v23)
      {
        free(*(v23 - 8));
      }

      *(v22 + 23496) = 0;
    }

    v19 += 8;
  }

  while (v19 != 24);
  if (*(a1 + 23576) != v95)
  {
    v24 = *(a1 + 23520);
    if (v24)
    {
      free(*(v24 - 8));
    }

    *(a1 + 23520) = 0;
  }

  v25 = 0;
  v26 = (a1 + 23528);
  do
  {
    v27 = a1 + v25;
    if (*(&v98 + v25) != *(a1 + v25 + 23528))
    {
      v28 = *(v27 + 23472);
      if (v28)
      {
        free(*(v28 - 8));
      }

      *(v27 + 23472) = 0;
    }

    v25 += 8;
  }

  while (v25 != 24);
  v91 = v14;
  v88 = a5;
  if (a5)
  {
    v29 = *a2;
    if (*a2)
    {
      if (v20 == a4)
      {
        if (v87)
        {
          v30 = a4;
          v31 = 488 * a4 - 472;
          do
          {
            v32 = *a2;
            if (*(a1 + 23576) != v95)
            {
              v33 = v32 + 488 * (v30 - 1);
              v34 = *(v33 + 40);
              if (v34)
              {
                free(*(v34 - 8));
              }

              *(v33 + 40) = 0;
            }

            v35 = 0;
            v36 = v32 + v31;
            do
            {
              if (*(&v98 + v35) != *(v26 + v35))
              {
                v37 = *(v36 + v35);
                if (v37)
                {
                  free(*(v37 - 8));
                }

                *(v36 + v35) = 0;
              }

              v35 += 8;
            }

            while (v35 != 24);
            v31 -= 488;
            v11 = v30-- <= 2;
          }

          while (!v11);
        }
      }

      else
      {
        v38 = v93[1];
        if (v38 < 2)
        {
          goto LABEL_63;
        }

        v39 = 488 * v38 - 472;
        do
        {
          v40 = *a2;
          v41 = *a2 + 488 * (v38 - 1);
          v42 = *(v41 + 40);
          if (v42)
          {
            free(*(v42 - 8));
          }

          v43 = 0;
          *(v41 + 40) = 0;
          v44 = v40 + v39;
          do
          {
            v45 = *(v44 + v43);
            if (v45)
            {
              free(*(v45 - 8));
            }

            *(v44 + v43) = 0;
            v43 += 8;
          }

          while (v43 != 24);
          v39 -= 488;
          v11 = v38-- <= 2;
        }

        while (!v11);
        v29 = *a2;
        if (*a2)
        {
LABEL_63:
          free(*(v29 - 8));
        }

        *a2 = 0;
      }
    }
  }

  v46 = *v93;
  if (v46 != v91)
  {
    v47 = *(a3 + 8);
    if (v47)
    {
      if (v46 < 1)
      {
        goto LABEL_77;
      }

      v48 = 0;
      v49 = 24 * v46;
      do
      {
        v50 = *(a3 + 8);
        v51 = *(v50 + v48);
        if (v51)
        {
          pthread_mutex_destroy(v51);
          v50 = *(a3 + 8);
          v52 = *(v50 + v48);
          if (v52)
          {
            free(*(v52 - 8));
            v50 = *(a3 + 8);
          }
        }

        v53 = *(v50 + v48 + 8);
        if (v53)
        {
          pthread_cond_destroy(v53);
          v54 = *(*(a3 + 8) + v48 + 8);
          if (v54)
          {
            free(*(v54 - 8));
          }
        }

        v48 += 24;
      }

      while (v49 != v48);
      v47 = *(a3 + 8);
      if (v47)
      {
LABEL_77:
        free(*(v47 - 8));
      }

      *(a3 + 8) = 0;
    }
  }

  *(a1 + 23576) = v95;
  *v26 = v98;
  *(a1 + 23544) = v99;
  *v89 = v100;
  *(v89 + 16) = v101;
  *v93 = v91;
  v93[1] = a4;
  if (!v90)
  {
    return;
  }

  if (*(a1 + 23520))
  {
    goto LABEL_86;
  }

  v55 = malloc_type_malloc(v95 | 0x17, 0x5F484EBFuLL);
  if (!v55)
  {
    *(a1 + 23520) = 0;
LABEL_85:
    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate *srcbuf");
    goto LABEL_86;
  }

  v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v56 - 8) = v55;
  *(a1 + 23520) = v56;
  if (!v56)
  {
    goto LABEL_85;
  }

LABEL_86:
  v57 = v96;
  do
  {
    if (*v9)
    {
      goto LABEL_94;
    }

    v58 = v9[7];
    if (v58 <= 0x1FFFFFFE9 && (v59 = malloc_type_malloc(v58 + 23, 0x5F484EBFuLL)) != 0)
    {
      v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v60 - 8) = v59;
      *v9 = v60;
      if (v60)
      {
        goto LABEL_94;
      }
    }

    else
    {
      *v9 = 0;
    }

    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
LABEL_94:
    ++v9;
    --v57;
  }

  while (v57);
  v61 = v96;
  do
  {
    if (*v21)
    {
      goto LABEL_103;
    }

    v62 = v21[7];
    if (v62 <= 0x1FFFFFFE9 && (v63 = malloc_type_malloc(v62 + 23, 0x5F484EBFuLL)) != 0)
    {
      v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v64 - 8) = v63;
      *v21 = v64;
      if (v64)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *v21 = 0;
    }

    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate linebuf[plane]");
LABEL_103:
    ++v21;
    --v61;
  }

  while (v61);
  if (a4 < 2)
  {
    return;
  }

  if (!v88)
  {
    goto LABEL_128;
  }

  v65 = a4;
  if (!*a2)
  {
    v66 = sub_2779724A8(a4, 0x1E8uLL);
    *a2 = v66;
    if (!v66)
    {
      sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate *cdef_worker");
    }
  }

  v67 = a4 - 1;
  while (2)
  {
    v68 = *a2;
    v69 = *a2 + 488 * (v65 - 1);
    if (!*(v69 + 40))
    {
      v70 = *(a1 + 23576);
      if (v70 > 0x1FFFFFFE9 || (v71 = malloc_type_malloc(v70 + 23, 0x5F484EBFuLL)) == 0)
      {
        *(v69 + 40) = 0;
        goto LABEL_116;
      }

      v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v72 - 8) = v71;
      *(v69 + 40) = v72;
      if (!v72)
      {
LABEL_116:
        sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate *srcbuf");
      }
    }

    v73 = (v68 + 488 * v67 + 16);
    v74 = (a1 + 23528);
    v75 = v96;
    while (2)
    {
      if (!*v73)
      {
        if (*v74 > 0x1FFFFFFE9uLL || (v76 = malloc_type_malloc(*v74 + 23, 0x5F484EBFuLL)) == 0)
        {
          *v73 = 0;
          goto LABEL_124;
        }

        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v77 - 8) = v76;
        *v73 = v77;
        if (!v77)
        {
LABEL_124:
          sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate colbuf[plane]");
        }
      }

      ++v74;
      ++v73;
      if (--v75)
      {
        continue;
      }

      break;
    }

    --v67;
    v11 = v65-- <= 2;
    if (!v11)
    {
      continue;
    }

    break;
  }

LABEL_128:
  if (!*(a3 + 8))
  {
    v78 = *v93;
    v79 = sub_2779724A8(v78, 0x18uLL);
    *(a3 + 8) = v79;
    if (!v79)
    {
      sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate *cdef_row_mt");
    }

    if (v78 >= 1)
    {
      v80 = 0;
      do
      {
        v81 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
        if (v81)
        {
          v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v82 - 8) = v81;
        }

        else
        {
          v82 = 0;
        }

        *(*(a3 + 8) + v80) = v82;
        v83 = *(*(a3 + 8) + v80);
        if (!v83)
        {
          sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate (*cdef_row_mt)[row_idx].row_mutex_");
          v83 = *(*(a3 + 8) + v80);
        }

        pthread_mutex_init(v83, 0);
        v84 = malloc_type_malloc(0x47uLL, 0x5F484EBFuLL);
        if (v84)
        {
          v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v85 - 8) = v84;
        }

        else
        {
          v85 = 0;
        }

        *(*(a3 + 8) + v80 + 8) = v85;
        v86 = *(*(a3 + 8) + v80 + 8);
        if (!v86)
        {
          sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate (*cdef_row_mt)[row_idx].row_cond_");
          v86 = *(*(a3 + 8) + v80 + 8);
        }

        pthread_cond_init(v86, 0);
        v80 += 24;
      }

      while (24 * v78 != v80);
    }
  }
}

void sub_277A82C68(uint64_t *a1)
{
  v2 = *(a1 + 10);
  if (*(a1 + 11) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = a1 + 1;
      v5 = v2;
      if (v2 >= 1)
      {
        do
        {
          v6 = *v4;
          if (!*v4)
          {
            break;
          }

          v7 = *(v6 + 8 * v3);
          if (v7)
          {
            free(*(v7 - 8));
            v6 = *v4;
          }

          *(v6 + 8 * v3) = 0;
          ++v4;
          --v5;
        }

        while (v5);
      }

      v8 = *a1;
      if (*a1)
      {
        v9 = *(v8 + 8 * v3);
        if (v9)
        {
          free(*(v9 - 8));
          v8 = *a1;
        }

        *(v8 + 8 * v3) = 0;
      }

      v10 = a1[4];
      if (v10)
      {
        v11 = *(v10 + 8 * v3);
        if (v11)
        {
          free(*(v11 - 8));
          v10 = a1[4];
        }

        *(v10 + 8 * v3) = 0;
      }

      ++v3;
    }

    while (v3 < *(a1 + 11));
  }

  if (v2 >= 1)
  {
    v12 = a1 + 1;
    do
    {
      if (*v12)
      {
        free(*(*v12 - 8));
      }

      *v12++ = 0;
      --v2;
    }

    while (v2);
  }

  if (*a1)
  {
    free(*(*a1 - 8));
  }

  *a1 = 0;
  v15 = a1[4];
  v14 = a1 + 4;
  v13 = v15;
  if (v15)
  {
    free(*(v13 - 8));
  }

  *v14 = 0;
  v14[1] = 0;
  *(v14 + 4) = 0;
}

uint64_t sub_277A82D8C(uint64_t a1)
{
  (*(a1 + 608))(a1 + 520);
  v2 = (*(a1 + 532) + 31) & 0xFFFFFFFFFFFFFFE0;
  v3 = v2 * *(a1 + 580);
  v4 = *(a1 + 556) * (v2 / byte_277C3F990[*(a1 + 560)]);
  if (*(a1 + 552) >= v4 && *(a1 + 576) >= v3)
  {
    return 0;
  }

  (*(a1 + 592))(a1 + 520);
  v5 = sub_2779724A8(v4, 0xB0uLL);
  *(a1 + 544) = v5;
  if (v5 && (*(a1 + 552) = v4, v6 = sub_2779724A8(v3, 8uLL), (*(a1 + 568) = v6) != 0) && (v7 = sub_2779724A8(v3, 1uLL), (*(a1 + 584) = v7) != 0))
  {
    result = 0;
    *(a1 + 576) = v3;
  }

  else
  {
    (*(a1 + 608))(a1 + 520, 0, 0, 0);
    v9 = *(a1 + 592);
    if (v9)
    {
      v9(a1 + 520);
    }

    sub_277A82C68((a1 + 25320));
    return 1;
  }

  return result;
}

uint8x16_t *sub_277A82EA0(uint8x16_t *result, int a2, uint64_t *a3, int a4, uint64_t *a5, int a6, int a7, int a8)
{
  if (a2)
  {
    if (a8 < 16)
    {
      if (a8 == 8)
      {
        v25 = 0;
        v26.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
        v26.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
        do
        {
          v27.i64[0] = *a3;
          v27.i64[1] = *(a3 + a4);
          v28.i64[0] = *a5;
          v28.i64[1] = *(a5 + a4);
          *result++ = vqsubq_u8(v26, vshrq_n_u8(vabdq_u8(v27, v28), 4uLL));
          a3 = (a3 + 2 * a4);
          a5 = (a5 + 2 * a6);
          v25 += 2;
        }

        while (v25 < a7);
      }

      else if (a8 == 4)
      {
        v16 = 0;
        v17.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
        v17.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
        do
        {
          if (a4 == 4)
          {
            v18 = *a3;
          }

          else
          {
            v18.i32[0] = *a3;
            v18.i32[1] = *(a3 + a4);
            v18.i32[2] = *(a3 + 2 * a4);
            v18.i32[3] = *(a3 + 3 * a4);
          }

          if (a6 == 4)
          {
            v19 = *a5;
          }

          else
          {
            v19.i32[0] = *a5;
            v19.i32[1] = *(a5 + a6);
            v19.i32[2] = *(a5 + 2 * a6);
            v19.i32[3] = *(a5 + 3 * a6);
          }

          *result++ = vqsubq_u8(v17, vshrq_n_u8(vabdq_u8(v18, v19), 4uLL));
          a3 = (a3 + 4 * a4);
          a5 = (a5 + 4 * a6);
          v16 += 4;
        }

        while (v16 < a7);
      }
    }

    else
    {
      v8 = 0;
      if (a7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = a7;
      }

      v10.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
      v10.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
      do
      {
        for (i = 0; i < a8; i += 16)
        {
          result[i / 0x10] = vqsubq_u8(v10, vshrq_n_u8(vabdq_u8(*&a3[i / 8], *&a5[i / 8]), 4uLL));
        }

        result = (result + i);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        ++v8;
      }

      while (v8 != v9);
    }
  }

  else if (a8 < 16)
  {
    if (a8 == 8)
    {
      v29 = 0;
      do
      {
        v30.i64[0] = *a3;
        v30.i64[1] = *(a3 + a4);
        v31.i64[0] = *a5;
        v31.i64[1] = *(a5 + a4);
        v32.i64[0] = 0x2626262626262626;
        v32.i64[1] = 0x2626262626262626;
        *result++ = vsraq_n_u8(v32, vabdq_u8(v30, v31), 4uLL);
        a3 = (a3 + 2 * a4);
        a5 = (a5 + 2 * a6);
        v29 += 2;
      }

      while (v29 < a7);
    }

    else if (a8 == 4)
    {
      v20 = 0;
      do
      {
        if (a4 == 4)
        {
          v21 = *a3;
        }

        else
        {
          v21.i32[0] = *a3;
          v21.i32[1] = *(a3 + a4);
          v21.i32[2] = *(a3 + 2 * a4);
          v21.i32[3] = *(a3 + 3 * a4);
        }

        if (a6 == 4)
        {
          v22 = *a5;
        }

        else
        {
          v22.i32[0] = *a5;
          v22.i32[1] = *(a5 + a6);
          v22.i32[2] = *(a5 + 2 * a6);
          v22.i32[3] = *(a5 + 3 * a6);
        }

        v23 = vabdq_u8(v21, v22);
        v24.i64[0] = 0x2626262626262626;
        v24.i64[1] = 0x2626262626262626;
        *result++ = vsraq_n_u8(v24, v23, 4uLL);
        a3 = (a3 + 4 * a4);
        a5 = (a5 + 4 * a6);
        v20 += 4;
      }

      while (v20 < a7);
    }
  }

  else
  {
    v12 = 0;
    if (a7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a7;
    }

    do
    {
      for (j = 0; j < a8; j += 16)
      {
        v15.i64[0] = 0x2626262626262626;
        v15.i64[1] = 0x2626262626262626;
        result[j / 0x10] = vsraq_n_u8(v15, vabdq_u8(*&a3[j / 8], *&a5[j / 8]), 4uLL);
      }

      result = (result + j);
      a3 = (a3 + a4);
      a5 = (a5 + a6);
      ++v12;
    }

    while (v12 != v13);
  }

  return result;
}

uint64_t sub_277A83184(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v7 = vpadalq_u16(v7, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v8 = vpadalq_u16(v8, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v9 = vpadalq_u16(v9, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 2 * a2;
    v5 += 2 * a4;
    --v10;
  }

  while (v10);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9)));
}

uint64_t sub_277A83220(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v7 = vpadalq_u16(v7, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v8 = vpadalq_u16(v8, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v9 = vpadalq_u16(v9, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 2 * a2;
    v5 += 2 * a4;
    --v10;
  }

  while (v10);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9)));
}

uint64_t sub_277A832BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 128;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v7 = vpadalq_u16(v7, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v8 = vpadalq_u16(v8, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v9 = vpadalq_u16(v9, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 2 * a2;
    v5 += 2 * a4;
    --v10;
  }

  while (v10);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9)));
}

uint64_t sub_277A83358(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -32;
    do
    {
      v6 = vpadalq_u16(v6, vabdq_u16(*(v4 + v11), *(v5 + v11)));
      v7 = vpadalq_u16(v7, vabdq_u16(*(v4 + v11 + 16), *(v5 + v11 + 16)));
      v8 = vpadalq_u16(v8, vabdq_u16(*(v4 + v11 + 32), *(v5 + v11 + 32)));
      v9 = vpadalq_u16(v9, vabdq_u16(*(v4 + v11 + 48), *(v5 + v11 + 48)));
      v12 += 32;
      v11 += 64;
    }

    while (v12 < 0x60);
    v4 += 2 * a2;
    v5 += 2 * a4;
    --v10;
  }

  while (v10);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9)));
}

uint64_t sub_277A833F4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 128;
  do
  {
    v11 = 0;
    v12 = -32;
    do
    {
      v6 = vpadalq_u16(v6, vabdq_u16(*(v4 + v11), *(v5 + v11)));
      v7 = vpadalq_u16(v7, vabdq_u16(*(v4 + v11 + 16), *(v5 + v11 + 16)));
      v8 = vpadalq_u16(v8, vabdq_u16(*(v4 + v11 + 32), *(v5 + v11 + 32)));
      v9 = vpadalq_u16(v9, vabdq_u16(*(v4 + v11 + 48), *(v5 + v11 + 48)));
      v12 += 32;
      v11 += 64;
    }

    while (v12 < 0x60);
    v4 += 2 * a2;
    v5 += 2 * a4;
    --v10;
  }

  while (v10);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9)));
}

uint64_t sub_277A83490(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v7 = vpadalq_u16(v7, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v8 = vpadalq_u16(v8, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v9 = vpadalq_u16(v9, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 2 * a2;
    v5 += 2 * a4;
    --v10;
  }

  while (v10);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9)));
}

uint64_t sub_277A8352C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -8;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t sub_277A835BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t sub_277A8364C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t sub_277A836DC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v8 = vpadalq_u16(v8, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v9 = vpadalq_u16(v9, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v10 = vpadalq_u16(v10, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 4 * a2;
    v5 += 4 * a4;
    --v7;
  }

  while (v7);
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))));
}

uint64_t sub_277A83784(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v8 = vpadalq_u16(v8, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v9 = vpadalq_u16(v9, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v10 = vpadalq_u16(v10, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 4 * a2;
    v5 += 4 * a4;
    --v7;
  }

  while (v7);
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))));
}

uint64_t sub_277A8382C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v8 = vpadalq_u16(v8, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v9 = vpadalq_u16(v9, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v10 = vpadalq_u16(v10, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 4 * a2;
    v5 += 4 * a4;
    --v7;
  }

  while (v7);
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))));
}

uint64_t sub_277A838D4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = 0;
    v12 = -32;
    do
    {
      v6 = vpadalq_u16(v6, vabdq_u16(*(v4 + v11), *(v5 + v11)));
      v8 = vpadalq_u16(v8, vabdq_u16(*(v4 + v11 + 16), *(v5 + v11 + 16)));
      v9 = vpadalq_u16(v9, vabdq_u16(*(v4 + v11 + 32), *(v5 + v11 + 32)));
      v10 = vpadalq_u16(v10, vabdq_u16(*(v4 + v11 + 48), *(v5 + v11 + 48)));
      v12 += 32;
      v11 += 64;
    }

    while (v12 < 0x60);
    v4 += 4 * a2;
    v5 += 4 * a4;
    --v7;
  }

  while (v7);
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))));
}

uint64_t sub_277A8397C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = 0;
    v12 = -32;
    do
    {
      v6 = vpadalq_u16(v6, vabdq_u16(*(v4 + v11), *(v5 + v11)));
      v8 = vpadalq_u16(v8, vabdq_u16(*(v4 + v11 + 16), *(v5 + v11 + 16)));
      v9 = vpadalq_u16(v9, vabdq_u16(*(v4 + v11 + 32), *(v5 + v11 + 32)));
      v10 = vpadalq_u16(v10, vabdq_u16(*(v4 + v11 + 48), *(v5 + v11 + 48)));
      v12 += 32;
      v11 += 64;
    }

    while (v12 < 0x60);
    v4 += 4 * a2;
    v5 += 4 * a4;
    --v7;
  }

  while (v7);
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))));
}

uint64_t sub_277A83A24(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -4;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v7 = vpadalq_u16(v7, vabdq_u16(v4[-1], v5[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v4, *v5));
    v9 = vpadalq_u16(v9, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 4 * a2);
    v5 = (v5 + 4 * a4);
  }

  while (!__CFADD__(v10++, 1));
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v7, v6), vaddq_s32(v8, v9))));
}

uint64_t sub_277A83AB4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 2 * a1;
  v5 = 2 * a3;
  v6 = 0uLL;
  v7 = 8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = (v4 + 2 * v11);
      v14 = (v5 + 2 * v11);
      v6 = vpadalq_u16(v6, vabdq_u16(*v13, *v14));
      v8 = vpadalq_u16(v8, vabdq_u16(v13[1], v14[1]));
      v15 = v13[3];
      v9 = vpadalq_u16(v9, vabdq_u16(v13[2], v14[2]));
      LOBYTE(v13) = v12;
      v10 = vpadalq_u16(v10, vabdq_u16(v15, v14[3]));
      v11 = 32;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v4 += 4 * a2;
    v5 += 4 * a4;
    --v7;
  }

  while (v7);
  return (2 * vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))));
}

uint64_t sub_277A83B5C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t sub_277A83C04(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t sub_277A83CAC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 4096);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t sub_277A83D54(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 2 * a5;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 32;
  do
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (v5 + 2 * v13);
      v16 = (v6 + 2 * v13);
      v17 = (v7 + 2 * v13);
      v8 = vpadalq_u16(v8, vabdq_u16(*v15, vrhaddq_u16(*v16, *v17)));
      v9 = vpadalq_u16(v9, vabdq_u16(v15[1], vrhaddq_u16(v16[1], v17[1])));
      v18 = v15[3];
      v10 = vpadalq_u16(v10, vabdq_u16(v15[2], vrhaddq_u16(v16[2], v17[2])));
      LOBYTE(v15) = v14;
      v11 = vpadalq_u16(v11, vabdq_u16(v18, vrhaddq_u16(v16[3], v17[3])));
      v13 = 32;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    v5 += 2 * a2;
    v7 += 128;
    v6 += 2 * a4;
    --v12;
  }

  while (v12);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)));
}

uint64_t sub_277A83E14(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 2 * a5;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 64;
  do
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (v5 + 2 * v13);
      v16 = (v6 + 2 * v13);
      v17 = (v7 + 2 * v13);
      v8 = vpadalq_u16(v8, vabdq_u16(*v15, vrhaddq_u16(*v16, *v17)));
      v9 = vpadalq_u16(v9, vabdq_u16(v15[1], vrhaddq_u16(v16[1], v17[1])));
      v18 = v15[3];
      v10 = vpadalq_u16(v10, vabdq_u16(v15[2], vrhaddq_u16(v16[2], v17[2])));
      LOBYTE(v15) = v14;
      v11 = vpadalq_u16(v11, vabdq_u16(v18, vrhaddq_u16(v16[3], v17[3])));
      v13 = 32;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    v5 += 2 * a2;
    v7 += 128;
    v6 += 2 * a4;
    --v12;
  }

  while (v12);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)));
}

uint64_t sub_277A83ED4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 2 * a5;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 128;
  do
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (v5 + 2 * v13);
      v16 = (v6 + 2 * v13);
      v17 = (v7 + 2 * v13);
      v8 = vpadalq_u16(v8, vabdq_u16(*v15, vrhaddq_u16(*v16, *v17)));
      v9 = vpadalq_u16(v9, vabdq_u16(v15[1], vrhaddq_u16(v16[1], v17[1])));
      v18 = v15[3];
      v10 = vpadalq_u16(v10, vabdq_u16(v15[2], vrhaddq_u16(v16[2], v17[2])));
      LOBYTE(v15) = v14;
      v11 = vpadalq_u16(v11, vabdq_u16(v18, vrhaddq_u16(v16[3], v17[3])));
      v13 = 32;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    v5 += 2 * a2;
    v7 += 128;
    v6 += 2 * a4;
    --v12;
  }

  while (v12);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)));
}

uint64_t sub_277A83F94(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 2 * a5;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 64;
  do
  {
    v13 = 0;
    v14 = -32;
    do
    {
      v8 = vpadalq_u16(v8, vabdq_u16(*(v5 + v13), vrhaddq_u16(*(v6 + v13), *(v7 + v13))));
      v9 = vpadalq_u16(v9, vabdq_u16(*(v5 + v13 + 16), vrhaddq_u16(*(v6 + v13 + 16), *(v7 + v13 + 16))));
      v10 = vpadalq_u16(v10, vabdq_u16(*(v5 + v13 + 32), vrhaddq_u16(*(v6 + v13 + 32), *(v7 + v13 + 32))));
      v11 = vpadalq_u16(v11, vabdq_u16(*(v5 + v13 + 48), vrhaddq_u16(*(v6 + v13 + 48), *(v7 + v13 + 48))));
      v14 += 32;
      v13 += 64;
    }

    while (v14 < 0x60);
    v7 += 256;
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v12;
  }

  while (v12);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)));
}

uint64_t sub_277A84054(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 2 * a5;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 128;
  do
  {
    v13 = 0;
    v14 = -32;
    do
    {
      v8 = vpadalq_u16(v8, vabdq_u16(*(v5 + v13), vrhaddq_u16(*(v6 + v13), *(v7 + v13))));
      v9 = vpadalq_u16(v9, vabdq_u16(*(v5 + v13 + 16), vrhaddq_u16(*(v6 + v13 + 16), *(v7 + v13 + 16))));
      v10 = vpadalq_u16(v10, vabdq_u16(*(v5 + v13 + 32), vrhaddq_u16(*(v6 + v13 + 32), *(v7 + v13 + 32))));
      v11 = vpadalq_u16(v11, vabdq_u16(*(v5 + v13 + 48), vrhaddq_u16(*(v6 + v13 + 48), *(v7 + v13 + 48))));
      v14 += 32;
      v13 += 64;
    }

    while (v14 < 0x60);
    v7 += 256;
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v12;
  }

  while (v12);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)));
}

uint64_t sub_277A84114(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a1 + 32);
  v8 = (2 * a3 + 32);
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v7[-2], vrhaddq_u16(v8[-2], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(v7[-1], vrhaddq_u16(v8[-1], *(v6 + v5 + 16))));
    v11 = vpadalq_u16(v11, vabdq_u16(*v7, vrhaddq_u16(*v8, *(v6 + v5 + 32))));
    v12 = vpadalq_u16(v12, vabdq_u16(v7[1], vrhaddq_u16(v8[1], *(v6 + v5 + 48))));
    v5 += 64;
    v7 = (v7 + 2 * a2);
    v8 = (v8 + 2 * a4);
  }

  while (v5 != 512);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v10, v9), vaddq_s32(v11, v12)));
}

uint64_t sub_277A841BC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 2 * a5;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 16;
  do
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (v5 + 2 * v13);
      v16 = (v6 + 2 * v13);
      v17 = (v7 + 2 * v13);
      v8 = vpadalq_u16(v8, vabdq_u16(*v15, vrhaddq_u16(*v16, *v17)));
      v9 = vpadalq_u16(v9, vabdq_u16(v15[1], vrhaddq_u16(v16[1], v17[1])));
      v18 = v15[3];
      v10 = vpadalq_u16(v10, vabdq_u16(v15[2], vrhaddq_u16(v16[2], v17[2])));
      LOBYTE(v15) = v14;
      v11 = vpadalq_u16(v11, vabdq_u16(v18, vrhaddq_u16(v16[3], v17[3])));
      v13 = 32;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    v5 += 2 * a2;
    v7 += 128;
    v6 += 2 * a4;
    --v12;
  }

  while (v12);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)));
}

int16x4_t *sub_277A8427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20]();
  v20 = v19;
  v486[4097] = *MEMORY[0x277D85DE8];
  v22 = *(v21 + 8);
  v23 = (*v21 + 2 * (a11 & 0xFu) * v22);
  if (v22 == 12)
  {
    v24 = 12;
  }

  else if (v23->u16[7] | v23->u16[0])
  {
    v24 = 8;
  }

  else if (v23->u16[6] | v23->u16[1])
  {
    v24 = 6;
  }

  else if (v23->u16[5] | v23->u16[2])
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v24 <= 6)
  {
    v25 = 6;
  }

  else
  {
    v25 = v24;
  }

  v26 = v16 + v25;
  v27 = *(v17 + 8);
  v28 = v27 >> 1;
  v29 = ((v25 >> 1) - 1) * v13;
  v30 = v29;
  v31 = *v17 + 2 * (a9 & 0xF) * v27;
  v32 = *v23;
  v33 = 4 * v13;
  if (v20 == 4)
  {
    v18.i64[0] = *(v31 + 4);
    v34 = v13;
    _Q1 = vdupq_lane_s32(vshrn_n_s16(v18, 1uLL), 0);
    v36 = v33;
    v37 = v26 + 3;
    v38 = 3 - (v28 + v29);
    v39 = 3 * v13 - (v28 + v29) + 3;
    v40 = 2 * v13 - v28 - v30;
    v41 = v13 - v28 - v30;
    v42 = v479;
    v43.i64[0] = 0x8080808080808080;
    v43.i64[1] = 0x8080808080808080;
    v44 = 0x403020103020100;
    do
    {
      v45 = result + v38;
      _Q5 = vqtbl1q_s8(veorq_s8(*&result->i8[v38], v43), xmmword_277BB74E0);
      __asm { SDOT            V17.4S, V5.16B, V1.16B }

      *_Q5.i8 = vshrn_n_s32(_Q17, 2uLL);
      _Q6 = vqtbl1q_s8(veorq_s8(*(result->i32 + v41 + 3), v43), xmmword_277BB74E0);
      __asm { SDOT            V17.4S, V6.16B, V1.16B }

      *_Q6.i8 = vshrn_n_s32(_Q17, 2uLL);
      _Q7 = vqtbl1q_s8(veorq_s8(*(result->i32 + v40 + 3), v43), xmmword_277BB74E0);
      __asm { SDOT            V17.4S, V7.16B, V1.16B }

      *_Q7.i8 = vshrn_n_s32(_Q17, 2uLL);
      _Q16 = vqtbl1q_s8(veorq_s8(*&result->i8[v39], v43), xmmword_277BB74E0);
      __asm { SDOT            V17.4S, V16.16B, V1.16B }

      *v42 = *_Q5.i8;
      v42[32] = *_Q6.i8;
      v42[64] = *_Q7.i8;
      v42[96] = vshrn_n_s32(_Q17, 2uLL);
      v42 += 128;
      v37 -= 4;
      result = (result + v36);
    }

    while (v37 > 8);
    v58 = &v45[v36];
    v59 = v37 - 4;
    v60.i64[0] = 0x8080808080808080;
    v60.i64[1] = 0x8080808080808080;
    do
    {
      _Q5 = vqtbl1q_s8(veorq_s8(*v58, v60), xmmword_277BB74E0);
      __asm { SDOT            V6.4S, V5.16B, V1.16B }

      *v42 = vshrn_n_s32(_Q6, 2uLL);
      v58 = (v58 + v34);
      v42 += 32;
      --v59;
    }

    while (v59);
  }

  else
  {
    v63 = v26 - 1;
    v64 = result + -(v27 >> 1) - v29 + 1;
    _Q1.i64[0] = xmmword_277BFB160.i64[0];
    v44 = *xmmword_277BFB170.i8;
    v65 = vshrn_n_s16(*v31, 1uLL);
    v66 = v33;
    _Q4 = vdupq_lane_s32(v65, 0);
    _Q5 = vdupq_lane_s32(v65, 1);
    v69 = v13;
    v70 = 3 * v13 - (v28 + v29) + 1;
    v71 = 2 * v13 - v28 - v30;
    v72 = v13 - v28 - v30;
    v73 = 1 - (v28 + v30);
    v74 = v479;
    v75.i64[0] = 0x8080808080808080;
    v75.i64[1] = 0x8080808080808080;
    do
    {
      v76 = v20 + 8;
      v77 = result;
      v78 = v74;
      do
      {
        v79 = veorq_s8(*&v77->i8[v73], v75);
        _Q20 = vqtbl1q_s8(v79, xmmword_277BFB160);
        _Q21 = vqtbl1q_s8(v79, xmmword_277BFB170);
        _Q16 = vqtbl1q_s8(v79, unk_277BFB180);
        __asm
        {
          SDOT            V22.4S, V20.16B, V4.16B
          SDOT            V22.4S, V21.16B, V5.16B
          SDOT            V20.4S, V21.16B, V4.16B
          SDOT            V20.4S, V16.16B, V5.16B
        }

        v87 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
        v88 = veorq_s8(*&v77->i8[v72 + 1], v75);
        _Q20 = vqtbl1q_s8(v88, xmmword_277BFB160);
        _Q21 = vqtbl1q_s8(v88, xmmword_277BFB170);
        _Q17 = vqtbl1q_s8(v88, unk_277BFB180);
        __asm
        {
          SDOT            V22.4S, V20.16B, V4.16B
          SDOT            V22.4S, V21.16B, V5.16B
          SDOT            V20.4S, V21.16B, V4.16B
          SDOT            V20.4S, V17.16B, V5.16B
        }

        v96 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
        v97 = veorq_s8(*&v77->i8[v71 + 1], v75);
        _Q20 = vqtbl1q_s8(v97, xmmword_277BFB160);
        _Q21 = vqtbl1q_s8(v97, xmmword_277BFB170);
        _Q18 = vqtbl1q_s8(v97, unk_277BFB180);
        __asm
        {
          SDOT            V22.4S, V20.16B, V4.16B
          SDOT            V22.4S, V21.16B, V5.16B
          SDOT            V20.4S, V21.16B, V4.16B
          SDOT            V20.4S, V18.16B, V5.16B
        }

        v105 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
        v106 = veorq_s8(*&v77->i8[v70], v75);
        _Q20 = vqtbl1q_s8(v106, xmmword_277BFB160);
        _Q21 = vqtbl1q_s8(v106, xmmword_277BFB170);
        _Q19 = vqtbl1q_s8(v106, unk_277BFB180);
        __asm
        {
          SDOT            V22.4S, V20.16B, V4.16B
          SDOT            V22.4S, V21.16B, V5.16B
          SDOT            V20.4S, V21.16B, V4.16B
          SDOT            V20.4S, V19.16B, V5.16B
        }

        *v78 = v87;
        v78[16] = v96;
        v78[32] = v105;
        v78[48] = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
        ++v78;
        ++v77;
        v76 -= 8;
      }

      while (v76 > 8);
      v64 += v66;
      v74 += 128;
      v114 = v63 - 4;
      result = (result + v66);
      v115 = v63 <= 8;
      v63 -= 4;
    }

    while (!v115);
    v116.i64[0] = 0x8080808080808080;
    v116.i64[1] = 0x8080808080808080;
    do
    {
      v117 = v20 + 8;
      v118 = v64;
      v119 = v74;
      do
      {
        v120 = *v118;
        v118 = (v118 + 8);
        v121 = veorq_s8(v120, v116);
        _Q17 = vqtbl1q_s8(v121, xmmword_277BFB160);
        _Q18 = vqtbl1q_s8(v121, xmmword_277BFB170);
        _Q16 = vqtbl1q_s8(v121, unk_277BFB180);
        __asm
        {
          SDOT            V19.4S, V17.16B, V4.16B
          SDOT            V19.4S, V18.16B, V5.16B
          SDOT            V17.4S, V18.16B, V4.16B
          SDOT            V17.4S, V16.16B, V5.16B
        }

        *v119++ = vshrn_high_n_s32(vshrn_n_s32(_Q19, 2uLL), _Q17, 2uLL);
        v117 -= 8;
      }

      while (v117 > 8);
      v64 += v69;
      v74 += 32;
      --v114;
    }

    while (v114);
  }

  v129 = *a12;
  if (v24 > 6)
  {
    if (v129)
    {
      if (*(a12 + 36))
      {
        return sub_27799A734(v479, v14, v15, a12, v16, v20, v32, *_Q1.i8, v44);
      }

      else
      {
        v160 = *(a12 + 8);
        v161 = *(a12 + 16);
        if (v20 == 4)
        {
          v162 = v479[0];
          v163 = v480;
          v164 = v481;
          v165 = 2 * v15;
          v166 = v482;
          v167 = v486;
          v168 = v483;
          v169 = v484[0];
          v170 = v485;
          v171.i64[0] = 0xE800E800E800E800;
          v171.i64[1] = 0xE800E800E800E800;
          do
          {
            v172.i64[0] = 0x8000000080000;
            v172.i64[1] = 0x8000000080000;
            v173 = vmlal_lane_s16(v172, v162, *v32.i8, 0);
            v162 = v168;
            v174 = vmlal_lane_s16(v173, v163, *v32.i8, 1);
            v175.i64[0] = 0x8000000080000;
            v175.i64[1] = 0x8000000080000;
            v176 = vmlal_lane_s16(v175, v163, *v32.i8, 0);
            v163 = v169;
            v177.i64[0] = 0x8000000080000;
            v177.i64[1] = 0x8000000080000;
            v178 = vmlal_lane_s16(vmlal_lane_s16(v174, v164, *v32.i8, 2), v166, *v32.i8, 3);
            v179 = vmlal_lane_s16(vmlal_lane_s16(v176, v164, *v32.i8, 1), v166, *v32.i8, 2);
            v180 = vmlal_lane_s16(vmlal_lane_s16(v177, v164, *v32.i8, 0), v166, *v32.i8, 1);
            v181.i64[0] = 0x8000000080000;
            v181.i64[1] = 0x8000000080000;
            v182 = vmlal_lane_s16(v181, v166, *v32.i8, 0);
            v166 = *v167;
            v183 = vmlal_laneq_s16(v178, v168, v32, 4);
            v184 = vmlal_lane_s16(v179, v168, *v32.i8, 3);
            v185 = vmlal_lane_s16(v180, v168, *v32.i8, 2);
            v186 = vmlal_lane_s16(v182, v168, *v32.i8, 1);
            v168 = v167[32];
            v187 = vmlal_laneq_s16(v183, v169, v32, 5);
            v188 = vmlal_laneq_s16(v184, v169, v32, 4);
            v189 = vmlal_lane_s16(v185, v169, *v32.i8, 3);
            v190 = vmlal_lane_s16(v186, v169, *v32.i8, 2);
            v169 = v167[64];
            v191 = vmlal_laneq_s16(v187, v170, v32, 6);
            v192 = vmlal_laneq_s16(v188, v170, v32, 5);
            v193 = vmlal_laneq_s16(v189, v170, v32, 4);
            v194 = vmlal_lane_s16(v190, v170, *v32.i8, 3);
            v164 = v170;
            v170 = v167[96];
            v195.i64[0] = *v160;
            v196.i64[0] = *(v160 + 4 * v161);
            v195.i64[1] = *(v160 + 2 * v161);
            v196.i64[1] = *(v160 + 6 * v161);
            *v191.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v195, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v191, *v167, v32, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v192, *v167, v32, 6), v168, v32, 7), 7uLL)), v171), 4uLL);
            *v192.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v196, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v193, *v167, v32, 5), v168, v32, 6), v169, v32, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v194, *v167, v32, 4), v168, v32, 5), v169, v32, 6), v170, v32, 7), 7uLL)), v171), 4uLL);
            *v14 = v191.i32[0];
            *(v14 + v15) = v191.i32[1];
            *(v14 + v165) = v192.i32[0];
            result = (v14 + v15 + v165);
            v14 += v15;
            result->i32[0] = v192.i32[1];
            v167 += 128;
            v160 += v161;
            v16 -= 4;
          }

          while (v16);
        }

        else
        {
          v317 = 0;
          v318 = 4 * v15;
          v319 = v479;
          v320 = 8 * v161;
          v321 = v160 + 6 * v161;
          v322 = v160 + 4 * v161;
          v323 = v160 + 2 * v161;
          result = (v14 + 3 * v15);
          v324 = v14 + 2 * v15;
          v325.i64[0] = 0xE800E800E800E800;
          v325.i64[1] = 0xE800E800E800E800;
          v326 = v14 + v15;
          do
          {
            v327 = 0;
            v328 = *v319->i8;
            v329 = *v319[32].i8;
            v330 = *v319[64].i8;
            v331 = *v319[96].i8;
            v332 = v160;
            v333 = *v319[128].i8;
            v334 = v323;
            v335 = v322;
            v336 = *v319[160].i8;
            v337 = v321;
            v338 = v486;
            v339 = v16;
            v340 = *v319[192].i8;
            do
            {
              v341.i64[0] = 0x8000000080000;
              v341.i64[1] = 0x8000000080000;
              v342 = vmlal_lane_s16(v341, *v328.i8, *v32.i8, 0);
              v343.i64[0] = 0x8000000080000;
              v343.i64[1] = 0x8000000080000;
              v344 = vmlal_high_lane_s16(v343, v328, *v32.i8, 0);
              v328 = v333;
              v345.i64[0] = 0x8000000080000;
              v345.i64[1] = 0x8000000080000;
              v346.i64[0] = 0x8000000080000;
              v346.i64[1] = 0x8000000080000;
              v347.i64[0] = 0x8000000080000;
              v347.i64[1] = 0x8000000080000;
              v348.i64[0] = 0x8000000080000;
              v348.i64[1] = 0x8000000080000;
              v349 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v345, *v329.i8, *v32.i8, 0), *v330.i8, *v32.i8, 1), *v331.i8, *v32.i8, 2);
              v350 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v346, v329, *v32.i8, 0), v330, *v32.i8, 1), v331, *v32.i8, 2);
              v351 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v342, *v329.i8, *v32.i8, 1), *v330.i8, *v32.i8, 2), *v331.i8, *v32.i8, 3);
              v352 = vmlal_lane_s16(vmlal_lane_s16(v347, *v330.i8, *v32.i8, 0), *v331.i8, *v32.i8, 1);
              v353 = vmlal_high_lane_s16(vmlal_high_lane_s16(v348, v330, *v32.i8, 0), v331, *v32.i8, 1);
              v354.i64[0] = 0x8000000080000;
              v354.i64[1] = 0x8000000080000;
              v355 = vmlal_lane_s16(v354, *v331.i8, *v32.i8, 0);
              v356.i64[0] = 0x8000000080000;
              v356.i64[1] = 0x8000000080000;
              v357 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v344, v329, *v32.i8, 1), v330, *v32.i8, 2), v331, *v32.i8, 3);
              v358 = vmlal_high_lane_s16(v356, v331, *v32.i8, 0);
              v331 = *&v338[v317];
              v359 = vmlal_laneq_s16(v351, *v333.i8, v32, 4);
              v360 = vmlal_lane_s16(v349, *v333.i8, *v32.i8, 3);
              v361 = vmlal_high_lane_s16(v350, v333, *v32.i8, 3);
              v362 = vmlal_high_laneq_s16(v357, v333, v32, 4);
              v363 = vmlal_lane_s16(v352, *v333.i8, *v32.i8, 2);
              v364 = vmlal_high_lane_s16(v353, v333, *v32.i8, 2);
              v365 = vmlal_lane_s16(v355, *v333.i8, *v32.i8, 1);
              v366 = vmlal_high_lane_s16(v358, v333, *v32.i8, 1);
              v333 = *&v338[v317 + 32];
              v367 = vmlal_laneq_s16(v359, *v336.i8, v32, 5);
              v368 = vmlal_laneq_s16(v360, *v336.i8, v32, 4);
              v369 = vmlal_high_laneq_s16(v361, v336, v32, 4);
              v370 = vmlal_lane_s16(v363, *v336.i8, *v32.i8, 3);
              v371 = vmlal_high_lane_s16(v364, v336, *v32.i8, 3);
              v372 = vmlal_high_laneq_s16(v362, v336, v32, 5);
              v373 = vmlal_lane_s16(v365, *v336.i8, *v32.i8, 2);
              v374 = vmlal_high_lane_s16(v366, v336, *v32.i8, 2);
              v329 = v336;
              v336 = *&v338[v317 + 64];
              v375 = vmlal_laneq_s16(v368, *v340.i8, v32, 5);
              v376 = vmlal_laneq_s16(v367, *v340.i8, v32, 6);
              v377 = vmlal_high_laneq_s16(v369, v340, v32, 5);
              v378 = vmlal_laneq_s16(v370, *v340.i8, v32, 4);
              v379 = vmlal_high_laneq_s16(v371, v340, v32, 4);
              v380 = vmlal_lane_s16(v373, *v340.i8, *v32.i8, 3);
              v381 = vmlal_high_lane_s16(v374, v340, *v32.i8, 3);
              v382 = vmlal_high_laneq_s16(v372, v340, v32, 6);
              v330 = v340;
              v340 = *&v338[v317 + 96];
              v383 = vhaddq_u16(*&v332[v317], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v376, *v331.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(v382, v331, v32, 7), 7uLL));
              v384 = vhaddq_u16(*&v334[v317 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v375, *v331.i8, v32, 6), *v333.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v377, v331, v32, 6), v333, v32, 7), 7uLL));
              v385 = vhaddq_u16(*&v337[v317 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v380, *v331.i8, v32, 4), *v333.i8, v32, 5), *v336.i8, v32, 6), *v340.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v381, v331, v32, 4), v333, v32, 5), v336, v32, 6), v340, v32, 7), 7uLL));
              *v375.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v335[v317 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v378, *v331.i8, v32, 5), *v333.i8, v32, 6), *v336.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v379, v331, v32, 5), v333, v32, 6), v336, v32, 7), 7uLL)), v325), 4uLL);
              *(v14 + v327) = vqrshrun_n_s16(vaddq_s16(v383, v325), 4uLL);
              *&v326[v327] = vqrshrun_n_s16(vaddq_s16(v384, v325), 4uLL);
              *&v324[v327] = v375.i64[0];
              v338 += 128;
              v337 += v320;
              *(result + v327) = vqrshrun_n_s16(vaddq_s16(v385, v325), 4uLL);
              v335 += v320;
              v334 += v320;
              v332 = (v332 + v320);
              v327 += v318;
              v339 -= 4;
            }

            while (v339);
            v319 += 2;
            v14 += 2;
            v317 += 2;
            ++result;
            v324 += 8;
            v326 += 8;
            v20 -= 8;
          }

          while (v20);
        }
      }
    }

    else
    {
      v224 = *(a12 + 8);
      v225 = *(a12 + 16);
      if (v20 == 4)
      {
        v226 = v479[0];
        v227 = v480;
        v228 = v481;
        v229 = v482;
        v230 = v486;
        v231 = v483;
        v232 = v484[0];
        v233 = v485;
        do
        {
          v234.i64[0] = 0x8000000080000;
          v234.i64[1] = 0x8000000080000;
          v235 = vmlal_lane_s16(v234, v226, *v32.i8, 0);
          v226 = v231;
          v236.i64[0] = 0x8000000080000;
          v236.i64[1] = 0x8000000080000;
          v237.i64[0] = 0x8000000080000;
          v237.i64[1] = 0x8000000080000;
          v238 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v235, v227, *v32.i8, 1), v228, *v32.i8, 2), v229, *v32.i8, 3);
          v239 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v236, v227, *v32.i8, 0), v228, *v32.i8, 1), v229, *v32.i8, 2);
          v240 = vmlal_lane_s16(vmlal_lane_s16(v237, v228, *v32.i8, 0), v229, *v32.i8, 1);
          v241.i64[0] = 0x8000000080000;
          v241.i64[1] = 0x8000000080000;
          v242 = vmlal_lane_s16(v241, v229, *v32.i8, 0);
          v229 = *v230;
          v243 = vmlal_laneq_s16(v238, v231, v32, 4);
          v244 = vmlal_lane_s16(v239, v231, *v32.i8, 3);
          v245 = vmlal_lane_s16(v240, v231, *v32.i8, 2);
          v246 = vmlal_lane_s16(v242, v231, *v32.i8, 1);
          v231 = v230[32];
          v247 = vmlal_laneq_s16(v243, v232, v32, 5);
          v248 = vmlal_laneq_s16(v244, v232, v32, 4);
          v249 = vmlal_lane_s16(v245, v232, *v32.i8, 3);
          v250 = vmlal_lane_s16(v246, v232, *v32.i8, 2);
          v227 = v232;
          v232 = v230[64];
          v251 = vmlal_laneq_s16(v247, v233, v32, 6);
          v252 = vmlal_laneq_s16(v248, v233, v32, 5);
          v253 = vmlal_laneq_s16(v249, v233, v32, 4);
          v254 = vmlal_lane_s16(v250, v233, *v32.i8, 3);
          v228 = v233;
          v233 = v230[96];
          *v252.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v252, *v230, v32, 6), v231, v32, 7), 7uLL);
          *v253.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v253, *v230, v32, 5), v231, v32, 6), v232, v32, 7), 7uLL);
          *v254.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v254, *v230, v32, 4), v231, v32, 5), v232, v32, 6), v233, v32, 7), 7uLL);
          *v224 = vqrshrun_n_s32(vmlal_laneq_s16(v251, *v230, v32, 7), 7uLL);
          *(v224 + 2 * v225) = *v252.i8;
          *(v224 + 4 * v225) = *v253.i8;
          *(v224 + 6 * v225) = *v254.i8;
          v230 += 128;
          v224 += v225;
          v16 -= 4;
        }

        while (v16);
      }

      else
      {
        v428 = 8 * v225;
        v429 = v224 + 6 * v225;
        v430 = v224 + 4 * v225;
        v431 = v479;
        v432 = v224 + 2 * v225;
        do
        {
          v433 = 0;
          v434 = *v431->i8;
          v435 = *v431[32].i8;
          v436 = *v431[64].i8;
          v437 = *v431[96].i8;
          v438 = *v431[128].i8;
          v439 = *v431[160].i8;
          v440 = 224;
          v441 = v16;
          v442 = *v431[192].i8;
          do
          {
            result = &v431[v440];
            v443.i64[0] = 0x8000000080000;
            v443.i64[1] = 0x8000000080000;
            v444 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v443, *v434.i8, *v32.i8, 0), *v435.i8, *v32.i8, 1), *v436.i8, *v32.i8, 2), *v437.i8, *v32.i8, 3);
            v445.i64[0] = 0x8000000080000;
            v445.i64[1] = 0x8000000080000;
            v446 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v445, v434, *v32.i8, 0), v435, *v32.i8, 1), v436, *v32.i8, 2), v437, *v32.i8, 3);
            v447.i64[0] = 0x8000000080000;
            v447.i64[1] = 0x8000000080000;
            v448 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v447, *v435.i8, *v32.i8, 0), *v436.i8, *v32.i8, 1), *v437.i8, *v32.i8, 2);
            v449.i64[0] = 0x8000000080000;
            v449.i64[1] = 0x8000000080000;
            v450 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v449, v435, *v32.i8, 0), v436, *v32.i8, 1), v437, *v32.i8, 2);
            v451.i64[0] = 0x8000000080000;
            v451.i64[1] = 0x8000000080000;
            v452 = vmlal_lane_s16(vmlal_lane_s16(v451, *v436.i8, *v32.i8, 0), *v437.i8, *v32.i8, 1);
            v453.i64[0] = 0x8000000080000;
            v453.i64[1] = 0x8000000080000;
            v454 = vmlal_high_lane_s16(vmlal_high_lane_s16(v453, v436, *v32.i8, 0), v437, *v32.i8, 1);
            v455.i64[0] = 0x8000000080000;
            v455.i64[1] = 0x8000000080000;
            v456 = vmlal_lane_s16(v455, *v437.i8, *v32.i8, 0);
            v457.i64[0] = 0x8000000080000;
            v457.i64[1] = 0x8000000080000;
            v458 = vmlal_high_lane_s16(v457, v437, *v32.i8, 0);
            v437 = *v431[v440].i8;
            v459 = vmlal_laneq_s16(v444, *v438.i8, v32, 4);
            v460 = vmlal_high_laneq_s16(v446, v438, v32, 4);
            v461 = vmlal_lane_s16(v448, *v438.i8, *v32.i8, 3);
            v462 = vmlal_high_lane_s16(v450, v438, *v32.i8, 3);
            v463 = vmlal_lane_s16(v452, *v438.i8, *v32.i8, 2);
            v464 = vmlal_high_lane_s16(v454, v438, *v32.i8, 2);
            v465 = vmlal_lane_s16(v456, *v438.i8, *v32.i8, 1);
            v466 = vmlal_high_lane_s16(v458, v438, *v32.i8, 1);
            v434 = v438;
            v438 = *v431[v440 + 32].i8;
            v467 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v459, *v439.i8, v32, 5), *v442.i8, v32, 6), *v437.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v460, v439, v32, 5), v442, v32, 6), v437, v32, 7), 7uLL);
            v468 = vmlal_laneq_s16(v461, *v439.i8, v32, 4);
            v469 = vmlal_high_laneq_s16(v462, v439, v32, 4);
            v470 = vmlal_lane_s16(v463, *v439.i8, *v32.i8, 3);
            v471 = vmlal_high_lane_s16(v464, v439, *v32.i8, 3);
            v472 = vmlal_lane_s16(v465, *v439.i8, *v32.i8, 2);
            v473 = vmlal_high_lane_s16(v466, v439, *v32.i8, 2);
            v435 = v439;
            v439 = *v431[v440 + 64].i8;
            v474 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v468, *v442.i8, v32, 5), *v437.i8, v32, 6), *v438.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v469, v442, v32, 5), v437, v32, 6), v438, v32, 7), 7uLL);
            v475 = vmlal_laneq_s16(v470, *v442.i8, v32, 4);
            v476 = vmlal_high_laneq_s16(v471, v442, v32, 4);
            v477 = vmlal_lane_s16(v472, *v442.i8, *v32.i8, 3);
            v478 = vmlal_high_lane_s16(v473, v442, *v32.i8, 3);
            v436 = v442;
            v442 = *v431[v440 + 96].i8;
            *&v224->i8[v433] = v467;
            *&v432[v433] = v474;
            *&v430[v433] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v475, *v437.i8, v32, 5), *v438.i8, v32, 6), *v439.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v476, v437, v32, 5), v438, v32, 6), v439, v32, 7), 7uLL);
            *&v429[v433] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v477, *v437.i8, v32, 4), *v438.i8, v32, 5), *v439.i8, v32, 6), *v442.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v478, v437, v32, 4), v438, v32, 5), v439, v32, 6), v442, v32, 7), 7uLL);
            v440 += 128;
            v433 += v428;
            v441 -= 4;
          }

          while (v441);
          v431 += 2;
          v224 += 2;
          v429 += 16;
          v430 += 16;
          v432 += 16;
          v20 -= 8;
        }

        while (v20);
      }
    }
  }

  else if (v129)
  {
    if (*(a12 + 36))
    {
      return sub_27799A32C(v479, v14, v15, a12, v16, v20, v32, *_Q1.i8, v44);
    }

    else
    {
      v130 = *(a12 + 8);
      v131 = *(a12 + 16);
      if (v20 == 4)
      {
        v132 = v479[0];
        v133 = v480;
        v134 = v481;
        v135 = 2 * v15;
        v136 = v482;
        v137 = v484;
        v138 = v483;
        v139.i64[0] = 0xE800E800E800E800;
        v139.i64[1] = 0xE800E800E800E800;
        do
        {
          v140.i64[0] = 0x8000000080000;
          v140.i64[1] = 0x8000000080000;
          v141 = vmlal_lane_s16(v140, v132, *v32.i8, 1);
          v132 = v138;
          v142 = vmlal_lane_s16(v141, v133, *v32.i8, 2);
          v143.i64[0] = 0x8000000080000;
          v143.i64[1] = 0x8000000080000;
          v144 = vmlal_lane_s16(v143, v133, *v32.i8, 1);
          v133 = *v137;
          v145 = vmlal_lane_s16(v142, v134, *v32.i8, 3);
          v146 = vmlal_lane_s16(v144, v134, *v32.i8, 2);
          v147.i64[0] = 0x8000000080000;
          v147.i64[1] = 0x8000000080000;
          v148 = vmlal_lane_s16(v147, v134, *v32.i8, 1);
          v134 = v137[32];
          v149 = vmlal_laneq_s16(v145, v136, v32, 4);
          v150 = vmlal_lane_s16(v146, v136, *v32.i8, 3);
          v151 = vmlal_lane_s16(v148, v136, *v32.i8, 2);
          v152.i64[0] = 0x8000000080000;
          v152.i64[1] = 0x8000000080000;
          v153 = vmlal_lane_s16(v152, v136, *v32.i8, 1);
          v136 = v137[64];
          v154 = vmlal_laneq_s16(v149, v138, v32, 5);
          v155 = vmlal_laneq_s16(v150, v138, v32, 4);
          v156 = vmlal_lane_s16(v151, v138, *v32.i8, 3);
          v157 = vmlal_lane_s16(v153, v138, *v32.i8, 2);
          v138 = v137[96];
          v158.i64[0] = *v130;
          v159.i64[0] = *(v130 + 4 * v131);
          v158.i64[1] = *(v130 + 2 * v131);
          v159.i64[1] = *(v130 + 6 * v131);
          *v155.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v158, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v154, *v137, v32, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v155, *v137, v32, 5), v134, v32, 6), 7uLL)), v139), 4uLL);
          *v154.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v159, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v156, *v137, v32, 4), v134, v32, 5), v136, v32, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v157, *v137, *v32.i8, 3), v134, v32, 4), v136, v32, 5), v138, v32, 6), 7uLL)), v139), 4uLL);
          *v14 = v155.i32[0];
          *(v14 + v15) = v155.i32[1];
          *(v14 + v135) = v154.i32[0];
          result = (v14 + v15 + v135);
          v14 += v15;
          v137 += 128;
          v130 += v131;
          result->i32[0] = v154.i32[1];
          v16 -= 4;
        }

        while (v16);
      }

      else
      {
        v255 = 0;
        v256 = 4 * v15;
        v257 = v479;
        v258 = 8 * v131;
        v259 = v130 + 6 * v131;
        v260 = v130 + 4 * v131;
        v261 = v130 + 2 * v131;
        result = (v14 + 3 * v15);
        v262 = v14 + 2 * v15;
        v263.i64[0] = 0xE800E800E800E800;
        v263.i64[1] = 0xE800E800E800E800;
        v264 = v14 + v15;
        do
        {
          v265 = 0;
          v266 = *v257->i8;
          v267 = *v257[32].i8;
          v268 = v130;
          v269 = *v257[64].i8;
          v270 = v261;
          v271 = v260;
          v272 = *v257[96].i8;
          v273 = v259;
          v274 = v484;
          v275 = v16;
          v276 = *v257[128].i8;
          do
          {
            v277.i64[0] = 0x8000000080000;
            v277.i64[1] = 0x8000000080000;
            v278 = vmlal_lane_s16(v277, *v266.i8, *v32.i8, 1);
            v279.i64[0] = 0x8000000080000;
            v279.i64[1] = 0x8000000080000;
            v280 = vmlal_high_lane_s16(v279, v266, *v32.i8, 1);
            v266 = v276;
            v281 = vmlal_lane_s16(v278, *v267.i8, *v32.i8, 2);
            v282 = vmlal_high_lane_s16(v280, v267, *v32.i8, 2);
            v283.i64[0] = 0x8000000080000;
            v283.i64[1] = 0x8000000080000;
            v284 = vmlal_lane_s16(v283, *v267.i8, *v32.i8, 1);
            v285.i64[0] = 0x8000000080000;
            v285.i64[1] = 0x8000000080000;
            v286 = vmlal_high_lane_s16(v285, v267, *v32.i8, 1);
            v267 = *&v274[v255];
            v287 = vmlal_lane_s16(v281, *v269.i8, *v32.i8, 3);
            v288 = vmlal_lane_s16(v284, *v269.i8, *v32.i8, 2);
            v289 = vmlal_high_lane_s16(v286, v269, *v32.i8, 2);
            v290.i64[0] = 0x8000000080000;
            v290.i64[1] = 0x8000000080000;
            v291 = vmlal_lane_s16(v290, *v269.i8, *v32.i8, 1);
            v292 = vmlal_high_lane_s16(v282, v269, *v32.i8, 3);
            v293.i64[0] = 0x8000000080000;
            v293.i64[1] = 0x8000000080000;
            v294 = vmlal_high_lane_s16(v293, v269, *v32.i8, 1);
            v269 = *&v274[v255 + 32];
            v295 = vmlal_lane_s16(v288, *v272.i8, *v32.i8, 3);
            v296 = vmlal_high_lane_s16(v289, v272, *v32.i8, 3);
            v297 = vmlal_laneq_s16(v287, *v272.i8, v32, 4);
            v298 = vmlal_lane_s16(v291, *v272.i8, *v32.i8, 2);
            v299 = vmlal_high_lane_s16(v294, v272, *v32.i8, 2);
            v300.i64[0] = 0x8000000080000;
            v300.i64[1] = 0x8000000080000;
            v301 = vmlal_lane_s16(v300, *v272.i8, *v32.i8, 1);
            v302.i64[0] = 0x8000000080000;
            v302.i64[1] = 0x8000000080000;
            v303 = vmlal_high_laneq_s16(v292, v272, v32, 4);
            v304 = vmlal_high_lane_s16(v302, v272, *v32.i8, 1);
            v272 = *&v274[v255 + 64];
            v305 = vmlal_laneq_s16(v297, *v276.i8, v32, 5);
            v306 = vmlal_laneq_s16(v295, *v276.i8, v32, 4);
            v307 = vmlal_high_laneq_s16(v296, v276, v32, 4);
            v308 = vmlal_high_laneq_s16(v303, v276, v32, 5);
            v309 = vmlal_lane_s16(v298, *v276.i8, *v32.i8, 3);
            v310 = vmlal_high_lane_s16(v299, v276, *v32.i8, 3);
            v311 = vmlal_lane_s16(v301, *v276.i8, *v32.i8, 2);
            v312 = vmlal_high_lane_s16(v304, v276, *v32.i8, 2);
            v276 = *&v274[v255 + 96];
            v313 = vhaddq_u16(*&v268[v255], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v305, *v267.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(v308, v267, v32, 6), 7uLL));
            v314 = vhaddq_u16(*&v270[v255 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v306, *v267.i8, v32, 5), *v269.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v307, v267, v32, 5), v269, v32, 6), 7uLL));
            v315 = vaddq_s16(vhaddq_u16(*&v271[v255 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v309, *v267.i8, v32, 4), *v269.i8, v32, 5), *v272.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v310, v267, v32, 4), v269, v32, 5), v272, v32, 6), 7uLL)), v263);
            v316 = vaddq_s16(vhaddq_u16(*&v273[v255 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v311, *v267.i8, *v32.i8, 3), *v269.i8, v32, 4), *v272.i8, v32, 5), *v276.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v312, v267, *v32.i8, 3), v269, v32, 4), v272, v32, 5), v276, v32, 6), 7uLL)), v263);
            *(v14 + v265) = vqrshrun_n_s16(vaddq_s16(v313, v263), 4uLL);
            *&v264[v265] = vqrshrun_n_s16(vaddq_s16(v314, v263), 4uLL);
            v274 += 128;
            *&v262[v265] = vqrshrun_n_s16(v315, 4uLL);
            v273 += v258;
            v271 += v258;
            v270 += v258;
            *(result + v265) = vqrshrun_n_s16(v316, 4uLL);
            v268 = (v268 + v258);
            v265 += v256;
            v275 -= 4;
          }

          while (v275);
          v257 += 2;
          v14 += 2;
          v255 += 2;
          ++result;
          v262 += 8;
          v264 += 8;
          v20 -= 8;
        }

        while (v20);
      }
    }
  }

  else
  {
    v197 = *(a12 + 8);
    v198 = *(a12 + 16);
    if (v20 == 4)
    {
      v199 = v479[0];
      v200 = v480;
      v201 = v481;
      v202 = v482;
      v203 = v483;
      v204 = v484;
      do
      {
        v205.i64[0] = 0x8000000080000;
        v205.i64[1] = 0x8000000080000;
        v206 = vmlal_lane_s16(v205, v199, *v32.i8, 1);
        v199 = v203;
        v207 = vmlal_lane_s16(v206, v200, *v32.i8, 2);
        v208.i64[0] = 0x8000000080000;
        v208.i64[1] = 0x8000000080000;
        v209 = vmlal_lane_s16(v208, v200, *v32.i8, 1);
        v200 = *v204;
        v210 = vmlal_lane_s16(v207, v201, *v32.i8, 3);
        v211 = vmlal_lane_s16(v209, v201, *v32.i8, 2);
        v212.i64[0] = 0x8000000080000;
        v212.i64[1] = 0x8000000080000;
        v213 = vmlal_lane_s16(v212, v201, *v32.i8, 1);
        v201 = v204[32];
        v214 = vmlal_laneq_s16(v210, v202, v32, 4);
        v215 = vmlal_lane_s16(v211, v202, *v32.i8, 3);
        v216 = vmlal_lane_s16(v213, v202, *v32.i8, 2);
        v217.i64[0] = 0x8000000080000;
        v217.i64[1] = 0x8000000080000;
        v218 = vmlal_lane_s16(v217, v202, *v32.i8, 1);
        v202 = v204[64];
        v219 = vmlal_laneq_s16(v214, v203, v32, 5);
        v220 = vmlal_laneq_s16(v215, v203, v32, 4);
        v221 = vmlal_lane_s16(v216, v203, *v32.i8, 3);
        v222 = vmlal_lane_s16(v218, v203, *v32.i8, 2);
        v203 = v204[96];
        *v220.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v220, *v204, v32, 5), v201, v32, 6), 7uLL);
        *v221.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v221, *v204, v32, 4), v201, v32, 5), v202, v32, 6), 7uLL);
        v223 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v222, *v204, *v32.i8, 3), v201, v32, 4), v202, v32, 5);
        *v197 = vqrshrun_n_s32(vmlal_laneq_s16(v219, *v204, v32, 6), 7uLL);
        *(v197 + 2 * v198) = *v220.i8;
        *(v197 + 4 * v198) = *v221.i8;
        *(v197 + 6 * v198) = vqrshrun_n_s32(vmlal_laneq_s16(v223, v203, v32, 6), 7uLL);
        v204 += 128;
        v197 += v198;
        v16 -= 4;
      }

      while (v16);
    }

    else
    {
      v386 = 8 * v198;
      v387 = v197 + 6 * v198;
      v388 = v197 + 4 * v198;
      v389 = v479;
      v390 = v197 + 2 * v198;
      do
      {
        v391 = 0;
        v392 = *v389->i8;
        v393 = *v389[32].i8;
        v394 = *v389[64].i8;
        v395 = *v389[96].i8;
        v396 = 160;
        v397 = v16;
        v398 = *v389[128].i8;
        do
        {
          result = &v389[v396];
          v399.i64[0] = 0x8000000080000;
          v399.i64[1] = 0x8000000080000;
          v400 = vmlal_lane_s16(vmlal_lane_s16(v399, *v392.i8, *v32.i8, 1), *v393.i8, *v32.i8, 2);
          v401.i64[0] = 0x8000000080000;
          v401.i64[1] = 0x8000000080000;
          v402 = vmlal_high_lane_s16(vmlal_high_lane_s16(v401, v392, *v32.i8, 1), v393, *v32.i8, 2);
          v403.i64[0] = 0x8000000080000;
          v403.i64[1] = 0x8000000080000;
          v404 = vmlal_lane_s16(v403, *v393.i8, *v32.i8, 1);
          v405.i64[0] = 0x8000000080000;
          v405.i64[1] = 0x8000000080000;
          v406 = vmlal_high_lane_s16(v405, v393, *v32.i8, 1);
          v393 = *v389[v396].i8;
          v407 = vmlal_lane_s16(v400, *v394.i8, *v32.i8, 3);
          v408 = vmlal_high_lane_s16(v402, v394, *v32.i8, 3);
          v409 = vmlal_lane_s16(v404, *v394.i8, *v32.i8, 2);
          v410 = vmlal_high_lane_s16(v406, v394, *v32.i8, 2);
          v411.i64[0] = 0x8000000080000;
          v411.i64[1] = 0x8000000080000;
          v412 = vmlal_lane_s16(v411, *v394.i8, *v32.i8, 1);
          v413.i64[0] = 0x8000000080000;
          v413.i64[1] = 0x8000000080000;
          v414 = vmlal_high_lane_s16(v413, v394, *v32.i8, 1);
          v394 = *v389[v396 + 32].i8;
          v415 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v407, *v395.i8, v32, 4), *v398.i8, v32, 5), *v393.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v408, v395, v32, 4), v398, v32, 5), v393, v32, 6), 7uLL);
          v416 = vmlal_lane_s16(v409, *v395.i8, *v32.i8, 3);
          v417 = vmlal_high_lane_s16(v410, v395, *v32.i8, 3);
          v418 = vmlal_lane_s16(v412, *v395.i8, *v32.i8, 2);
          v419 = vmlal_high_lane_s16(v414, v395, *v32.i8, 2);
          v408.i64[0] = 0x8000000080000;
          v408.i64[1] = 0x8000000080000;
          v420 = vmlal_lane_s16(v408, *v395.i8, *v32.i8, 1);
          v421.i64[0] = 0x8000000080000;
          v421.i64[1] = 0x8000000080000;
          v422 = vmlal_high_lane_s16(v421, v395, *v32.i8, 1);
          v395 = *v389[v396 + 64].i8;
          v423 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v416, *v398.i8, v32, 4), *v393.i8, v32, 5), *v394.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v417, v398, v32, 4), v393, v32, 5), v394, v32, 6), 7uLL);
          v424 = vmlal_lane_s16(v418, *v398.i8, *v32.i8, 3);
          v425 = vmlal_high_lane_s16(v419, v398, *v32.i8, 3);
          v426 = vmlal_lane_s16(v420, *v398.i8, *v32.i8, 2);
          v427 = vmlal_high_lane_s16(v422, v398, *v32.i8, 2);
          v392 = v398;
          v398 = *v389[v396 + 96].i8;
          *&v197->i8[v391] = v415;
          *&v390[v391] = v423;
          *&v388[v391] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v424, *v393.i8, v32, 4), *v394.i8, v32, 5), *v395.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v425, v393, v32, 4), v394, v32, 5), v395, v32, 6), 7uLL);
          *&v387[v391] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v426, *v393.i8, *v32.i8, 3), *v394.i8, v32, 4), *v395.i8, v32, 5), *v398.i8, v32, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v427, v393, *v32.i8, 3), v394, v32, 4), v395, v32, 5), v398, v32, 6), 7uLL);
          v396 += 128;
          v391 += v386;
          v397 -= 4;
        }

        while (v397);
        v389 += 2;
        v197 += 2;
        v387 += 16;
        v388 += 16;
        v390 += 16;
        v20 -= 8;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t sub_277A85464(uint64_t a1, int a2, _DWORD *a3, int a4, unsigned int a5, int a6, uint64_t a7, char a8, int16x8_t a9, uint16x4_t a10, uint16x4_t a11, double a12, double a13, uint16x4_t a14, uint16x4_t a15, uint64_t a16)
{
  if (*a16)
  {
    if (*(a16 + 36))
    {
      return sub_277A85ACC(a1, a2, a3, a4, a5, a6, *a7, *(a7 + 8), a9, a10, a11, a12, a13, a14, a15, a8, a16);
    }

    else
    {
      v16 = *(a7 + 8);
      v17 = *a7 + 2 * (a8 & 0xF) * v16;
      v18 = *(a16 + 8);
      v19 = *(a16 + 16);
      if (a5 == 4)
      {
        a9.i64[0] = *(v17 + 4);
        v20 = (a1 - (v16 >> 1) + 3);
        _Q0 = vdupq_lane_s32(vshrn_n_s16(a9, 1uLL), 0);
        result = 2 * v19;
        v23.i64[0] = 0x8080808080808080;
        v23.i64[1] = 0x8080808080808080;
        v24.i64[0] = 0xE800E800E800E800;
        v24.i64[1] = 0xE800E800E800E800;
        do
        {
          _Q5 = vqtbl1q_s8(veorq_s8(*v20, v23), xmmword_277BB74E0);
          __asm { SDOT            V17.4S, V5.16B, V0.16B }

          *_Q5.i8 = vshrn_n_s32(_Q17, 2uLL);
          _Q6 = vqtbl1q_s8(veorq_s8(*(v20 + a2), v23), xmmword_277BB74E0);
          __asm { SDOT            V17.4S, V6.16B, V0.16B }

          _Q6 = vqtbl1q_s8(veorq_s8(*(v20 + 2 * a2), v23), xmmword_277BB74E0);
          __asm { SDOT            V7.4S, V6.16B, V0.16B }

          *_Q6.i8 = vshrn_n_s32(_Q7, 2uLL);
          _Q7 = vqtbl1q_s8(veorq_s8(*(v20 + 3 * a2), v23), xmmword_277BB74E0);
          v36.i64[0] = *v18;
          v37.i64[0] = *(v18 + 4 * v19);
          v36.i64[1] = *(v18 + 2 * v19);
          __asm { SDOT            V16.4S, V7.16B, V0.16B }

          v37.i64[1] = *(v18 + 6 * v19);
          *_Q5.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v36, vshrn_high_n_s32(*_Q5.i8, _Q17, 2uLL)), v24), 4uLL);
          *_Q6.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v37, vshrn_high_n_s32(*_Q6.i8, _Q16, 2uLL)), v24), 4uLL);
          *a3 = _Q5.i32[0];
          *(a3 + a4) = _Q5.i32[1];
          *(a3 + 2 * a4) = _Q6.i32[0];
          *(a3 + a4 + (2 * a4)) = _Q6.i32[1];
          v20 = (v20 + 4 * a2);
          a3 += a4;
          v18 += v19;
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v54 = v16 >> 1;
        v55 = *v17;
        v56 = 4 * a2;
        v57 = vshrn_n_s16(v55, 1uLL);
        _Q3 = vdupq_lane_s32(v57, 0);
        _Q4 = vdupq_lane_s32(v57, 1);
        v60 = 4 * a4;
        v61 = 3 * a2 - (v16 >> 1) + a1 + 1;
        v62 = a1 - v54;
        v63 = a1 - v54 + 2 * a2 + 1;
        v64 = a2 - v54 + a1 + 1;
        v65 = v18 + 6 * v19;
        v66 = 8 * v19;
        v67 = v18 + 4 * v19;
        result = v18 + 2 * v19;
        v68 = a3 + 3 * a4;
        v69 = a3 + 2 * a4;
        v70 = a3 + a4;
        v71.i64[0] = 0x8080808080808080;
        v71.i64[1] = 0x8080808080808080;
        v72.i64[0] = 0xE800E800E800E800;
        v72.i64[1] = 0xE800E800E800E800;
        do
        {
          v73 = 0;
          v74 = 0;
          do
          {
            v75 = veorq_s8(*(v62 + v74 + 1), v71);
            _Q20 = vqtbl1q_s8(v75, xmmword_277BFB160);
            _Q21 = vqtbl1q_s8(v75, xmmword_277BFB170);
            _Q17 = vqtbl1q_s8(v75, unk_277BFB180);
            __asm
            {
              SDOT            V22.4S, V20.16B, V3.16B
              SDOT            V22.4S, V21.16B, V4.16B
              SDOT            V20.4S, V21.16B, V3.16B
              SDOT            V20.4S, V17.16B, V4.16B
            }

            v83 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
            v84 = veorq_s8(*(v64 + v74), v71);
            _Q20 = vqtbl1q_s8(v84, xmmword_277BFB160);
            _Q21 = vqtbl1q_s8(v84, xmmword_277BFB170);
            _Q16 = vqtbl1q_s8(v84, unk_277BFB180);
            __asm
            {
              SDOT            V22.4S, V20.16B, V3.16B
              SDOT            V22.4S, V21.16B, V4.16B
              SDOT            V20.4S, V21.16B, V3.16B
              SDOT            V20.4S, V16.16B, V4.16B
            }

            v92 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
            v93 = veorq_s8(*(v63 + v74), v71);
            _Q20 = vqtbl1q_s8(v93, xmmword_277BFB160);
            _Q21 = vqtbl1q_s8(v93, xmmword_277BFB170);
            _Q18 = vqtbl1q_s8(v93, unk_277BFB180);
            __asm
            {
              SDOT            V22.4S, V20.16B, V3.16B
              SDOT            V22.4S, V21.16B, V4.16B
              SDOT            V20.4S, V21.16B, V3.16B
              SDOT            V20.4S, V18.16B, V4.16B
            }

            v101 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL);
            v102 = veorq_s8(*(v61 + v74), v71);
            _Q20 = vqtbl1q_s8(v102, xmmword_277BFB160);
            _Q21 = vqtbl1q_s8(v102, xmmword_277BFB170);
            _Q19 = vqtbl1q_s8(v102, unk_277BFB180);
            __asm
            {
              SDOT            V22.4S, V20.16B, V3.16B
              SDOT            V22.4S, V21.16B, V4.16B
              SDOT            V20.4S, V21.16B, V3.16B
              SDOT            V20.4S, V19.16B, V4.16B
            }

            v110 = vaddq_s16(vhaddq_u16(*&v65[v73], vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q20, 2uLL)), v72);
            *v92.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(result + v73), v92), v72), 4uLL);
            *v101.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v67[v73], v101), v72), 4uLL);
            *&a3[v74 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v18[v73 / 8], v83), v72), 4uLL);
            *&v70[v74] = v92.i64[0];
            *&v69[v74] = v101.i64[0];
            *&v68[v74] = vqrshrun_n_s16(v110, 4uLL);
            v74 += 8;
            v73 += 16;
          }

          while (a5 != v74);
          a3 = (a3 + v60);
          v61 += v56;
          v63 += v56;
          v64 += v56;
          v62 += v56;
          v65 += v66;
          v67 += v66;
          result += v66;
          v18 = (v18 + v66);
          v68 += v60;
          v69 += v60;
          v70 += v60;
          a6 -= 4;
        }

        while (a6);
      }
    }
  }

  else
  {
    v39 = *(a7 + 8);
    v40 = *a7 + 2 * (a8 & 0xF) * v39;
    v41 = *(a16 + 8);
    v42 = *(a16 + 16);
    if (a5 == 4)
    {
      a9.i64[0] = *(v40 + 4);
      v43 = (a1 - (v39 >> 1) + 3);
      _Q0 = vdupq_lane_s32(vshrn_n_s16(a9, 1uLL), 0);
      v45.i64[0] = 0x8080808080808080;
      v45.i64[1] = 0x8080808080808080;
      result = 32770;
      do
      {
        _Q4 = vqtbl1q_s8(veorq_s8(*v43, v45), xmmword_277BB74E0);
        __asm { SDOT            V16.4S, V4.16B, V0.16B }

        *_Q4.i8 = vshrn_n_s32(_Q16, 2uLL);
        _Q5 = vqtbl1q_s8(veorq_s8(*(v43 + a2), v45), xmmword_277BB74E0);
        __asm { SDOT            V16.4S, V5.16B, V0.16B }

        *_Q5.i8 = vshrn_n_s32(_Q16, 2uLL);
        _Q6 = vqtbl1q_s8(veorq_s8(*(v43 + 2 * a2), v45), xmmword_277BB74E0);
        __asm { SDOT            V16.4S, V6.16B, V0.16B }

        *_Q6.i8 = vshrn_n_s32(_Q16, 2uLL);
        _Q7 = vqtbl1q_s8(veorq_s8(*(v43 + 3 * a2), v45), xmmword_277BB74E0);
        __asm { SDOT            V16.4S, V7.16B, V0.16B }

        *v41 = _Q4.i64[0];
        *(v41 + 2 * v42) = _Q5.i64[0];
        *(v41 + 4 * v42) = _Q6.i64[0];
        *(v41 + 6 * v42) = vshrn_n_s32(_Q16, 2uLL);
        v43 = (v43 + 4 * a2);
        v41 += v42;
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      v111 = v39 >> 1;
      v112 = vshrn_n_s16(*v40, 1uLL);
      v113 = 4 * a2;
      _Q3 = vdupq_lane_s32(v112, 0);
      _Q4 = vdupq_lane_s32(v112, 1);
      v116 = 3 * a2 - (v39 >> 1) + a1 + 1;
      v117 = a1 - (v39 >> 1);
      v118 = v117 + 2 * a2 + 1;
      v119 = a2 - v111 + a1 + 1;
      v120 = v41 + 6 * v42;
      v121 = 8 * v42;
      v122 = v41 + 4 * v42;
      v123 = v41 + 2 * v42;
      result = a5;
      v124.i64[0] = 0x8080808080808080;
      v124.i64[1] = 0x8080808080808080;
      do
      {
        v125 = 0;
        v126 = 0;
        do
        {
          v127 = veorq_s8(*(v117 + v126 + 1), v124);
          _Q19 = vqtbl1q_s8(v127, xmmword_277BFB160);
          _Q20 = vqtbl1q_s8(v127, xmmword_277BFB170);
          _Q18 = vqtbl1q_s8(v127, unk_277BFB180);
          __asm
          {
            SDOT            V21.4S, V19.16B, V3.16B
            SDOT            V21.4S, V20.16B, V4.16B
            SDOT            V19.4S, V20.16B, V3.16B
            SDOT            V19.4S, V18.16B, V4.16B
          }

          v135 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
          v136 = veorq_s8(*(v119 + v126), v124);
          _Q19 = vqtbl1q_s8(v136, xmmword_277BFB160);
          _Q20 = vqtbl1q_s8(v136, xmmword_277BFB170);
          _Q7 = vqtbl1q_s8(v136, unk_277BFB180);
          __asm
          {
            SDOT            V21.4S, V19.16B, V3.16B
            SDOT            V21.4S, V20.16B, V4.16B
            SDOT            V19.4S, V20.16B, V3.16B
            SDOT            V19.4S, V7.16B, V4.16B
          }

          v144 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
          v145 = veorq_s8(*(v118 + v126), v124);
          _Q19 = vqtbl1q_s8(v145, xmmword_277BFB160);
          _Q20 = vqtbl1q_s8(v145, xmmword_277BFB170);
          _Q16 = vqtbl1q_s8(v145, unk_277BFB180);
          __asm
          {
            SDOT            V21.4S, V19.16B, V3.16B
            SDOT            V21.4S, V20.16B, V4.16B
            SDOT            V19.4S, V20.16B, V3.16B
            SDOT            V19.4S, V16.16B, V4.16B
          }

          v153 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
          v154 = veorq_s8(*(v116 + v126), v124);
          _Q19 = vqtbl1q_s8(v154, xmmword_277BFB160);
          _Q20 = vqtbl1q_s8(v154, xmmword_277BFB170);
          _Q17 = vqtbl1q_s8(v154, unk_277BFB180);
          __asm
          {
            SDOT            V21.4S, V19.16B, V3.16B
            SDOT            V21.4S, V20.16B, V4.16B
            SDOT            V19.4S, V20.16B, V3.16B
            SDOT            V19.4S, V17.16B, V4.16B
          }

          *&v41[v125 / 8] = v135;
          *&v123[v125] = v144;
          *&v122[v125] = v153;
          *&v120[v125] = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
          v126 += 8;
          v125 += 16;
        }

        while (a5 != v126);
        v116 += v113;
        v118 += v113;
        v119 += v113;
        v117 += v113;
        v120 += v121;
        v122 += v121;
        v123 += v121;
        v41 = (v41 + v121);
        a6 -= 4;
      }

      while (a6);
    }
  }

  return result;
}

uint64_t sub_277A85ACC(uint64_t a1, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, unsigned __int16 a8, int16x8_t a9, uint16x4_t a10, uint16x4_t a11, double a12, double a13, uint16x4_t a14, uint16x4_t a15, char a16, uint64_t a17)
{
  v17 = a7 + 2 * (a16 & 0xF) * a8;
  v18 = a8 >> 1;
  v19 = a1 - v18;
  v20 = *(a17 + 8);
  v21 = *(a17 + 16);
  if (a5 == 4)
  {
    a9.i64[0] = *(v17 + 4);
    v22 = (v19 + 3);
    _Q0 = vdupq_lane_s32(vshrn_n_s16(a9, 1uLL), 0);
    a10.i32[0] = *(a17 + 40);
    a11.i32[0] = *(a17 + 44);
    result = 2 * v21;
    v25.i64[0] = 0x8080808080808080;
    v25.i64[1] = 0x8080808080808080;
    v26.i64[0] = 0xE800E800E800E800;
    v26.i64[1] = 0xE800E800E800E800;
    do
    {
      _Q7 = vqtbl1q_s8(veorq_s8(*v22, v25), xmmword_277BB74E0);
      __asm { SDOT            V19.4S, V7.16B, V0.16B }

      _Q7 = vqtbl1q_s8(veorq_s8(*(v22 + a2), v25), xmmword_277BB74E0);
      __asm { SDOT            V16.4S, V7.16B, V0.16B }

      _Q7 = vqtbl1q_s8(veorq_s8(*(v22 + 2 * a2), v25), xmmword_277BB74E0);
      __asm { SDOT            V17.4S, V7.16B, V0.16B }

      *_Q7.i8 = vshrn_n_s32(_Q17, 2uLL);
      _Q17 = vqtbl1q_s8(veorq_s8(*(v22 + 3 * a2), v25), xmmword_277BB74E0);
      __asm { SDOT            V18.4S, V17.16B, V0.16B }

      *_Q16.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q19, 2uLL), a11, 0), *v20, a10, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q16, 2uLL), a11, 0), *(v20 + 2 * v21), a10, 0), 4uLL), v26), 4uLL);
      *_Q7.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q7.i8, a11, 0), *(v20 + 4 * v21), a10, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q18, 2uLL), a11, 0), *(v20 + 6 * v21), a10, 0), 4uLL), v26), 4uLL);
      *a3 = _Q16.i32[0];
      *(a3 + a4) = _Q16.i32[1];
      *(a3 + 2 * a4) = _Q7.i32[0];
      *(a3 + a4 + (2 * a4)) = _Q7.i32[1];
      v22 = (v22 + 4 * a2);
      a3 += a4;
      v20 += v21;
      a6 -= 4;
    }

    while (a6);
  }

  else
  {
    v39 = *v17;
    v40 = 4 * a2;
    v41 = vshrn_n_s16(v39, 1uLL);
    _Q3 = vdupq_lane_s32(v41, 0);
    _Q4 = vdupq_lane_s32(v41, 1);
    v44 = 4 * a4;
    a14.i32[0] = *(a17 + 40);
    a15.i32[0] = *(a17 + 44);
    v45 = 3 * a2 - v18 + a1 + 1;
    v46 = v19 + 2 * a2 + 1;
    v47 = a2 - v18 + a1 + 1;
    v48 = v20 + 6 * v21;
    v49 = 8 * v21;
    v50 = v20 + 4 * v21;
    result = v20 + 2 * v21;
    v51 = a3 + 3 * a4;
    v52 = a3 + 2 * a4;
    v53 = a3 + a4;
    v54.i64[0] = 0x8080808080808080;
    v54.i64[1] = 0x8080808080808080;
    v55.i64[0] = 0xE800E800E800E800;
    v55.i64[1] = 0xE800E800E800E800;
    do
    {
      v56 = 0;
      v57 = 0;
      do
      {
        v58 = veorq_s8(*(v19 + v57 + 1), v54);
        _Q22 = vqtbl1q_s8(v58, unk_277BFB160);
        _Q23 = vqtbl1q_s8(v58, unk_277BFB170);
        _Q20 = vqtbl1q_s8(v58, unk_277BFB180);
        __asm
        {
          SDOT            V24.4S, V22.16B, V3.16B
          SDOT            V24.4S, V23.16B, V4.16B
          SDOT            V22.4S, V23.16B, V3.16B
          SDOT            V22.4S, V20.16B, V4.16B
        }

        *_Q20.i8 = vshrn_n_s32(_Q24, 2uLL);
        v66 = veorq_s8(*(v47 + v57), v54);
        _Q23 = vqtbl1q_s8(v66, unk_277BFB160);
        _Q24 = vqtbl1q_s8(v66, unk_277BFB170);
        _Q18 = vqtbl1q_s8(v66, unk_277BFB180);
        __asm
        {
          SDOT            V25.4S, V23.16B, V3.16B
          SDOT            V25.4S, V24.16B, V4.16B
          SDOT            V23.4S, V24.16B, V3.16B
          SDOT            V23.4S, V18.16B, V4.16B
        }

        *_Q18.i8 = vshrn_n_s32(_Q25, 2uLL);
        v74 = veorq_s8(*(v46 + v57), v54);
        _Q24 = vqtbl1q_s8(v74, unk_277BFB160);
        _Q25 = vqtbl1q_s8(v74, unk_277BFB170);
        _Q19 = vqtbl1q_s8(v74, unk_277BFB180);
        __asm
        {
          SDOT            V26.4S, V24.16B, V3.16B
          SDOT            V26.4S, V25.16B, V4.16B
          SDOT            V24.4S, V25.16B, V3.16B
          SDOT            V24.4S, V19.16B, V4.16B
        }

        *_Q19.i8 = vshrn_n_s32(_Q26, 2uLL);
        v82 = veorq_s8(*(v45 + v57), v54);
        _Q25 = vqtbl1q_s8(v82, unk_277BFB160);
        _Q26 = vqtbl1q_s8(v82, unk_277BFB170);
        _Q21 = vqtbl1q_s8(v82, unk_277BFB180);
        __asm
        {
          SDOT            V27.4S, V25.16B, V3.16B
          SDOT            V27.4S, V26.16B, V4.16B
          SDOT            V25.4S, V26.16B, V3.16B
          SDOT            V25.4S, V21.16B, V4.16B
        }

        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q27, 2uLL), a15, 0), *&v48[v56], a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q25, 2uLL), a15, 0), *&v48[v56], a14, 0), 4uLL), v55);
        *_Q18.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q18.i8, a15, 0), *(result + v56), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q23, 2uLL), a15, 0), *(result + v56), a14, 0), 4uLL), v55), 4uLL);
        *_Q19.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q19.i8, a15, 0), *&v50[v56], a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q24, 2uLL), a15, 0), *&v50[v56], a14, 0), 4uLL), v55), 4uLL);
        *&a3[v57 / 4] = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q20.i8, a15, 0), v20[v56 / 8], a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q22, 2uLL), a15, 0), *v20[v56 / 8].i8, a14, 0), 4uLL), v55), 4uLL);
        *&v53[v57] = _Q18.i64[0];
        *&v52[v57] = _Q19.i64[0];
        *&v51[v57] = vqrshrun_n_s16(v90, 4uLL);
        v57 += 8;
        v56 += 16;
      }

      while (a5 != v57);
      a3 = (a3 + v44);
      v45 += v40;
      v46 += v40;
      v47 += v40;
      v19 += v40;
      v48 += v49;
      v50 += v49;
      result += v49;
      v20 = (v20 + v49);
      v51 += v44;
      v52 += v44;
      v53 += v44;
      a6 -= 4;
    }

    while (a6);
  }

  return result;
}

unint64_t sub_277A85EC4(int a1)
{
  v2 = malloc_type_malloc(0x3FuLL, 0x5F484EBFuLL);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v3 - 8) = v2;
  if (!v3)
  {
    return v3;
  }

  *(((v2 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0;
  *v3 = 0u;
  *(((v2 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
  v4 = sub_2779A7468;
  v5 = sub_2779A6014;
  if (a1 <= 7)
  {
    if (a1 == 2)
    {
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      v4 = sub_2779A7490;
      v5 = sub_2779A602C;
      goto LABEL_13;
    }

LABEL_17:
    free(v2);
    fprintf(*MEMORY[0x277D85DF8], "Unsupported block size %d\n", a1);
    return 0;
  }

  if (a1 == 8)
  {
    v4 = sub_2779A74B8;
    v5 = sub_2779A6044;
    goto LABEL_13;
  }

  if (a1 == 16)
  {
    v4 = sub_2779A74E0;
    v5 = sub_2779A605C;
    goto LABEL_13;
  }

  if (a1 != 32)
  {
    goto LABEL_17;
  }

  v4 = sub_2779A7508;
  v5 = sub_2779A6074;
LABEL_13:
  *(((v2 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x18) = v5;
  *(((v2 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = v4;
  *(((v2 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = a1;
  v6 = 8 * a1 * a1;
  if (v6 > 0x1FFFFFFD9)
  {
    *v3 = 0;
LABEL_23:
    *(v3 + 8) = 0;
LABEL_24:
    sub_277A860B8(v3);
    return 0;
  }

  v7 = malloc_type_malloc(v6 + 39, 0x5F484EBFuLL);
  if (v7)
  {
    v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v8 - 8) = v7;
  }

  else
  {
    v8 = 0;
  }

  *v3 = v8;
  v9 = malloc_type_malloc(v6 + 39, 0x5F484EBFuLL);
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v10 - 8) = v9;
  *(v3 + 8) = v10;
  if (!*v3 || !v10)
  {
    goto LABEL_24;
  }

  bzero(*v3, v6);
  bzero(*(v3 + 8), v6);
  return v3;
}

void sub_277A860B8(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      free(*(*a1 - 8));
    }

    v2 = a1[1];
    if (v2)
    {
      free(*(v2 - 8));
    }

    v3 = *(a1 - 1);

    free(v3);
  }
}

uint64_t sub_277A86114(uint64_t result, float *a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *result + 4;
    do
    {
      v5 = v4;
      v6 = a2;
      v7 = v2;
      do
      {
        v8 = *(v5 - 1);
        v9 = fmaxf(fabsf(v8), 0.00000001);
        v10 = fmaxf(fabsf(*v5), 0.00000001);
        v11 = (v10 * v10) + (v9 * v9);
        if (v11 <= (*v6 * 1.1) || v11 <= 0.000001)
        {
          *(v5 - 1) = v8 * 0.090909;
          v13 = 0.090909;
        }

        else
        {
          v12 = fmaxf(v11, 0.000001);
          *(v5 - 1) = v8 * ((v11 - *v6) / v12);
          v13 = (v11 - *v6) / v12;
        }

        *v5 = *v5 * v13;
        v5 += 2;
        ++v6;
        --v7;
      }

      while (v7);
      ++v3;
      a2 += v2;
      v4 += 8 * v2;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_277A86200(uint64_t a1, float *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  result = (*(a1 + 32))(*a1, *(a1 + 8), a2);
  if (v3)
  {
    LODWORD(v5) = v3 * v3;
    if ((v3 * v3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    do
    {
      *v2 = *v2 / (v3 * v3);
      ++v2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_277A86260(int32x4_t *a1, int32x4_t *a2, uint64_t a3, void *a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  do
  {
    v6 = vmovn_s32(*a1);
    v7 = vmovn_s32(a1[1]);
    v8 = vmovn_s32(a1[2]);
    v9 = vmovn_s32(a1[3]);
    v10 = vabd_s16(v6, vmovn_s32(*a2));
    v11 = vabd_s16(v7, vmovn_s32(a2[1]));
    v12 = vmlal_u16(vmull_u16(v11, v11), v10, v10);
    v13 = vabd_s16(v8, vmovn_s32(a2[2]));
    v14 = vmlal_u16(v12, v13, v13);
    v15 = vabd_s16(v9, vmovn_s32(a2[3]));
    v5 = vpadalq_u32(v5, vmlal_u16(v14, v15, v15));
    v4 = vpadalq_s32(vpadalq_s32(v4, vmlal_s16(vmull_s16(v7, v7), v6, v6)), vmlal_s16(vmull_s16(v9, v9), v8, v8));
    a1 += 4;
    a2 += 4;
    a3 -= 16;
  }

  while (a3);
  *a4 = vaddvq_s64(v4);
  return vaddvq_s64(v5);
}

int8x8_t *sub_277A862F8(int8x8_t *result, unsigned int a2, uint8x8_t *a3, unsigned int a4, uint8x8_t *a5, unsigned int a6, int8x8_t *a7, unsigned int a8, int a9, int a10, uint64_t a11)
{
  if (a11)
  {
    if ((HIDWORD(a11) & a11) == 1)
    {
      v12 = 2 * a8;
      if (a9 < 9)
      {
        if (a9 == 8)
        {
          do
          {
            v34 = vrshr_n_u8(vqadd_u8(vpadd_s8(*a7, a7[1]), vpadd_s8(*(a7 + a8), *(&a7[1] + a8))), 2uLL);
            a7 = (a7 + v12);
            *result = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v34), *a5), v34, *a3), 6uLL);
            a3 = (a3 + a4);
            a5 = (a5 + a6);
            result = (result + a2);
            --a10;
          }

          while (a10);
        }

        else
        {
          do
          {
            v46.i32[0] = a3->i32[0];
            v46.i32[1] = *(a3->i32 + a4);
            v47.i32[0] = a5->i32[0];
            v47.i32[1] = *(a5->i32 + a6);
            v48 = vrshr_n_u8(vqadd_u8(vpadd_s8(*a7, *(a7 + v12)), vpadd_s8(*(a7 + a8), *(a7 + 3 * a8))), 2uLL);
            v49 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v48), v47), v48, v46), 6uLL);
            result->i32[0] = v49.i32[0];
            a7 = (a7 + 4 * a8);
            *(result->i32 + a2) = v49.i32[1];
            a3 = (a3 + 2 * a4);
            a5 = (a5 + 2 * a6);
            result = (result + 2 * a2);
            a10 -= 2;
          }

          while (a10);
        }
      }

      else
      {
        v13 = a2;
        v14 = &a7[2];
        v15.i64[0] = 0x4040404040404040;
        v15.i64[1] = 0x4040404040404040;
        v16 = &a7[2] + a8;
        do
        {
          v17 = 0;
          v18 = v16;
          v19 = v14;
          do
          {
            v20 = vrshrq_n_u8(vqaddq_u8(vpaddq_s8(v19[-1], *v19), vpaddq_s8(v18[-1], *v18)), 2uLL);
            v21 = vsubq_s8(v15, v20);
            *result[v17 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v21.i8, a5[v17 / 8]), *v20.i8, a3[v17 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v21, *a5[v17 / 8].i8), v20, *a3[v17 / 8].i8), 6uLL);
            v17 += 16;
            v19 += 2;
            v18 += 2;
          }

          while (v17 < a9);
          a3 = (a3 + a4);
          a5 = (a5 + a6);
          result = (result + v13);
          v14 = (v14 + v12);
          v16 += v12;
          --a10;
        }

        while (a10);
      }
    }

    else if (a11 == 1 && HIDWORD(a11) == 0)
    {
      if (a9 < 9)
      {
        if (a9 == 8)
        {
          v50 = a7 + 1;
          do
          {
            v51 = vrshr_n_u8(vpadd_s8(v50[-1], *v50), 1uLL);
            v52 = vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v51), *a5), v51, *a3);
            a3 = (a3 + a4);
            *result = vrshrn_n_s16(v52, 6uLL);
            a5 = (a5 + a6);
            result = (result + a2);
            v50 = (v50 + a8);
            --a10;
          }

          while (a10);
        }

        else
        {
          do
          {
            v59.i32[0] = a3->i32[0];
            v59.i32[1] = *(a3->i32 + a4);
            v60.i32[0] = a5->i32[0];
            v60.i32[1] = *(a5->i32 + a6);
            v61 = vrshr_n_u8(vpadd_s8(*a7, *(a7 + a8)), 1uLL);
            v62 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v61), v60), v61, v59), 6uLL);
            result->i32[0] = v62.i32[0];
            a7 = (a7 + 2 * a8);
            *(result->i32 + a2) = v62.i32[1];
            a3 = (a3 + 2 * a4);
            a5 = (a5 + 2 * a6);
            result = (result + 2 * a2);
            a10 -= 2;
          }

          while (a10);
        }
      }

      else
      {
        v35 = &a7[2];
        v36.i64[0] = 0x4040404040404040;
        v36.i64[1] = 0x4040404040404040;
        do
        {
          v37 = 0;
          v38 = v35;
          do
          {
            v39 = vrshrq_n_u8(vpaddq_s8(v38[-1], *v38), 1uLL);
            v40 = vsubq_s8(v36, v39);
            *result[v37 / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v40.i8, a5[v37 / 8]), *v39.i8, a3[v37 / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v40, *a5[v37 / 8].i8), v39, *a3[v37 / 8].i8), 6uLL);
            v37 += 16;
            v38 += 2;
          }

          while (v37 < a9);
          a3 = (a3 + a4);
          a5 = (a5 + a6);
          result = (result + a2);
          v35 = (v35 + a8);
          --a10;
        }

        while (a10);
      }
    }

    else if (a9 < 9)
    {
      if (a9 == 8)
      {
        do
        {
          v45 = vrhadd_u8(*a7, *(a7 + a8));
          a7 = (a7 + 2 * a8);
          *result = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v45), *a5), v45, *a3), 6uLL);
          a3 = (a3 + a4);
          a5 = (a5 + a6);
          result = (result + a2);
          --a10;
        }

        while (a10);
      }

      else
      {
        do
        {
          v53.i32[0] = a7->i32[0];
          v53.i32[1] = *(a7->i32 + 2 * a8);
          v54.i32[0] = *(a7->i32 + a8);
          v54.i32[1] = *(a7->i32 + 3 * a8);
          v55.i32[0] = a3->i32[0];
          v55.i32[1] = *(a3->i32 + a4);
          v56.i32[0] = a5->i32[0];
          v56.i32[1] = *(a5->i32 + a6);
          v57 = vrhadd_u8(v53, v54);
          v58 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v57), v56), v57, v55), 6uLL);
          result->i32[0] = v58.i32[0];
          a7 = (a7 + 4 * a8);
          *(result->i32 + a2) = v58.i32[1];
          a3 = (a3 + 2 * a4);
          a5 = (a5 + 2 * a6);
          result = (result + 2 * a2);
          a10 -= 2;
        }

        while (a10);
      }
    }

    else
    {
      v27 = 2 * a8;
      v28.i64[0] = 0x4040404040404040;
      v28.i64[1] = 0x4040404040404040;
      v29 = a7 + a8;
      do
      {
        for (i = 0; i < a9; i += 16)
        {
          v31 = vrhaddq_u8(*a7[i / 8].i8, *&v29[i]);
          v32 = vsubq_s8(v28, v31);
          *result[i / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v32.i8, a5[i / 8]), *v31.i8, a3[i / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v32, *a5[i / 8].i8), v31, *a3[i / 8].i8), 6uLL);
        }

        a7 = (a7 + v27);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        result = (result + a2);
        v29 += v27;
        --a10;
      }

      while (a10);
    }
  }

  else if (a9 < 9)
  {
    if (a9 == 8)
    {
      do
      {
        v33 = vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, *a7), *a5), *a7, *a3);
        a7 = (a7 + a8);
        *result = vrshrn_n_s16(v33, 6uLL);
        a3 = (a3 + a4);
        a5 = (a5 + a6);
        result = (result + a2);
        --a10;
      }

      while (a10);
    }

    else
    {
      do
      {
        v41.i32[0] = a7->i32[0];
        v41.i32[1] = *(a7->i32 + a8);
        v42.i32[0] = a3->i32[0];
        v42.i32[1] = *(a3->i32 + a4);
        v43.i32[0] = a5->i32[0];
        v43.i32[1] = *(a5->i32 + a6);
        v44 = vrshrn_n_s16(vmlal_u8(vmull_u8(vsub_s8(0x4040404040404040, v41), v43), v41, v42), 6uLL);
        result->i32[0] = v44.i32[0];
        a7 = (a7 + 2 * a8);
        *(result->i32 + a2) = v44.i32[1];
        a3 = (a3 + 2 * a4);
        a5 = (a5 + 2 * a6);
        result = (result + 2 * a2);
        a10 -= 2;
      }

      while (a10);
    }
  }

  else
  {
    v22.i64[0] = 0x4040404040404040;
    v22.i64[1] = 0x4040404040404040;
    do
    {
      for (j = 0; j < a9; j += 16)
      {
        v24 = *a7[j / 8].i8;
        v25 = vsubq_s8(v22, v24);
        *result[j / 8].i8 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v25.i8, a5[j / 8]), *v24.i8, a3[j / 8]), 6uLL), vmlal_high_u8(vmull_high_u8(v25, *a5[j / 8].i8), v24, *a3[j / 8].i8), 6uLL);
      }

      a7 = (a7 + a8);
      a3 = (a3 + a4);
      a5 = (a5 + a6);
      result = (result + a2);
      --a10;
    }

    while (a10);
  }

  return result;
}

uint64_t sub_277A8690C(uint64_t result, int a2, uint64_t a3, int *a4, int *a5)
{
  v5 = *(a3 + 48);
  if (*(a3 + 52))
  {
    if (v5 >= 2)
    {
      if (v5 != 2)
      {
        return result;
      }

      *a4 = *(a3 + 4) + *(a3 + 16) * (result - 1);
      v6 = *(a3 + 8) + *(a3 + 20) * (a2 - 1);
    }

    else
    {
      *a4 = *(a3 + 16) * result;
      v6 = *(a3 + 20) * a2;
    }
  }

  else if (v5 >= 2)
  {
    if (v5 != 2)
    {
      return result;
    }

    *a4 = (result - *(a3 + 4) + *(a3 + 16)) / *(a3 + 16);
    v6 = (a2 - *(a3 + 8) + *(a3 + 20)) / *(a3 + 20);
  }

  else
  {
    *a4 = (result + *(a3 + 16) - 1) / *(a3 + 16);
    v6 = (a2 + *(a3 + 20) - 1) / *(a3 + 20);
  }

  *a5 = v6;
  return result;
}

uint64_t sub_277A869D0(uint64_t result, int a2, int a3, int a4, unsigned int *a5, uint64_t a6, int a7, int a8, int a9, unsigned int a10)
{
  v10 = a5[3];
  if (v10 > a8)
  {
    v11 = a5[2];
    v37 = a3 - v11;
    v12 = a8;
    v13 = 4 * a4;
    v34 = a2;
    do
    {
      if ((v37 & 0x80000000) == 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = a5[1];
        v18 = v34 - v17;
        v36 = a5[5];
        do
        {
          if ((v18 & 0x80000000) == 0)
          {
            v19 = 0;
            v20 = v15;
            v21 = *(a5 + 5);
            v22 = *a5;
            v23 = *(a6 + 8 * v12);
            v24 = a5[4];
            v25 = v14;
            do
            {
              v26 = *(v21 + 4 * v12);
              if (v22 >= 1)
              {
                for (i = 0; i != v22; ++i)
                {
                  if (v11 >= 1)
                  {
                    LODWORD(v28) = v12 + i * v10;
                    v29 = v25;
                    v30 = v16;
                    do
                    {
                      if (v17 >= 1)
                      {
                        v28 = v28;
                        v31 = (*(result + 8 * i) + v29);
                        v32 = v19;
                        do
                        {
                          v33 = *v31++;
                          v26 = v26 + (*(*(a5 + 4) + 4 * v28) * v33);
                          v28 += a9;
                          ++v32;
                        }

                        while (v32 < v19 + v17);
                      }

                      ++v30;
                      v29 += v13;
                    }

                    while (v30 < v16 + v11);
                  }
                }
              }

              *(v23 + 4 * v20) = v26;
              v19 += v24;
              ++v20;
              v25 += 4 * v24;
            }

            while (v19 <= v18);
          }

          v16 += v36;
          v15 += a7;
          v14 += v13 * v36;
        }

        while (v16 <= v37);
      }

      v12 += a10;
    }

    while (v12 < v10);
  }

  return result;
}

uint64_t sub_277A86B78()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v204 = v3;
  __src = v0;
  v230 = *MEMORY[0x277D85DE8];
  bzero(v228, 0x2060uLL);
  bzero(&v226, 0x2060uLL);
  v4 = v2[1];
  v5 = v2[3];
  memset(v225, 0, sizeof(v225));
  v224 = v5;
  v6 = *v2;
  if (v6 >= 2)
  {
    v7 = v6 - 1;
    v8 = v225;
    do
    {
      v9 = *v4++;
      v5 += 8 * v9;
      *v8++ = v5;
      --v7;
    }

    while (v7);
  }

  v222 = 0;
  v10 = -8288;
  do
  {
    bzero(&v228[v10 + 8288], 0x818uLL);
    bzero(&v228[v10], 0x818uLL);
    v10 += 2072;
  }

  while (v10);
  v11 = 0;
  v195 = v2[2];
  v198 = 65;
  v199 = 65;
  while (1)
  {
    v12 = &unk_27A7199D8 + 120 * v11;
    v13 = (v12 + 24);
    v14 = *(v12 + 20);
    v15 = &v228[2072 * v14];
    v202 = v11;
    if (v11)
    {
      memcpy(v229, &v228[2072 * v14], sizeof(v229));
      memcpy(&v228[2072 * v14], &v227[2072 * v14 - 4], 0x818uLL);
      memcpy(&v227[2072 * v14 - 4], v229, 0x818uLL);
      v16 = v15[2];
      v17 = v15[3];
      v18 = v204;
    }

    else
    {
      v19 = *v13;
      *v15 = 0;
      v15[1] = v19;
      *(v15 + 1) = 0x4100000041;
      v15[4] = 65;
      if (__src)
      {
        v18 = v204;
        if (v19 >= 1)
        {
          memcpy(v15 + 6, __src, 8 * v19);
        }
      }

      else
      {
        v18 = v204;
        if (v19 >= 1)
        {
          bzero(v15 + 6, 8 * v19);
        }
      }

      v17 = v198;
      v16 = v199;
    }

    v198 = v17;
    v199 = v16;
    sub_277A8690C(v16, v17, v13, &v222 + 1, &v222);
    v20 = v13[28];
    v21 = &v227[2072 * v14 - 4];
    v206 = v21;
    if (v20 == -1)
    {
      LODWORD(v24) = v13[3];
      v31 = HIDWORD(v222);
      v197 = v222;
      if ((sub_277A87AFC(&v227[2072 * v14 - 4], v24, SHIDWORD(v222), v222) & 1) == 0)
      {
        break;
      }

      v196 = v31;
      goto LABEL_29;
    }

    if (*v21)
    {
      v22 = *(v21 + 3);
      if (v22)
      {
        free(*(v22 - 8));
        v21 = &v227[2072 * v14 - 4];
      }

      *(v21 + 3) = 0;
      *v21 = 0;
    }

    v23 = v225[v20 - 1];
    v24 = v13[3];
    v25 = v222;
    v26 = HIDWORD(v222);
    v27 = *(v195 + 4 * v20);
    *v21 = 0;
    *(v21 + 1) = v24;
    *(v21 + 2) = v26;
    *(v21 + 3) = v25;
    *(v21 + 4) = v27;
    v196 = v26;
    v197 = v25;
    if (!v23)
    {
      if (v24 < 1)
      {
        goto LABEL_30;
      }

      bzero(v21 + 24, 8 * v24);
LABEL_29:
      v21 = &v227[2072 * v14 - 4];
      goto LABEL_30;
    }

    if (v24 >= 1)
    {
      v28 = v21 + 24;
      v29 = v24;
      do
      {
        v30 = *v23++;
        *v28++ = v30;
        --v29;
      }

      while (v29);
    }

LABEL_30:
    v32 = v14;
    v203 = *(v13 + 60);
    if (v203 == 1)
    {
      v33 = sub_277A87C58(&v228[2072 * v14], v13, v14, &v226);
      v21 = &v227[2072 * v14 - 4];
      if (!v33)
      {
        break;
      }
    }

    v201 = v14;
    v205 = v14;
    if (v13[13])
    {
      v200 = v20;
      v34 = v15 + 6;
      v35 = v15[2];
      v36 = v15[3];
      v37 = v15[4];
      v208 = *(v21 + 4);
      v209 = v21 + 24;
      v38 = *v13;
      v220 = v24 * v38;
      v229[0] = 0;
      LODWORD(__dst[0]) = 0;
      sub_277A8690C(v35, v36, v13, v229, __dst);
      v39 = *(v13 + 48);
      if (*(v13 + 48))
      {
        v40 = xmmword_277BB70A0;
        if (v39 == 1)
        {
          if (v24 >= 1)
          {
            v93 = 0;
            v207 = LODWORD(__dst[0]);
            v216 = v229[0];
            v219 = v24;
            do
            {
              if (v207 >= 1)
              {
                for (i = 0; i != v207; ++i)
                {
                  if (v216 >= 1)
                  {
                    v95 = 0;
                    v213 = *(v13 + 5);
                    v211 = *&v209[8 * v93] + 4 * i * v208;
                    do
                    {
                      v96 = *(v213 + 4 * v93);
                      if (v38 >= 1)
                      {
                        v97 = 0;
                        v98 = v13[2];
                        do
                        {
                          if (v98 >= 1)
                          {
                            v99 = 0;
                            v100 = v93 + v97 * v219;
                            v101 = v13[5];
                            v102 = v13[1];
                            do
                            {
                              if (v102 >= 1)
                              {
                                v103 = (((v98 - v101) & ~((v98 - v101) >> 31)) >> 1) + i - v99;
                                v104 = v13[4];
                                if (v103 / v101 >= v36)
                                {
                                  v105 = v36 - 1;
                                }

                                else
                                {
                                  v105 = v103 / v101;
                                }

                                if (v103 / v101 >= 0)
                                {
                                  v106 = v105;
                                }

                                else
                                {
                                  v106 = 0;
                                }

                                v107 = v106 * v37;
                                v108 = 4 * v100;
                                v109 = v95 + (((v102 - v104) & ~((v102 - v104) >> 31)) >> 1);
                                v110 = v13[1];
                                do
                                {
                                  if (v103 == v103 / v101 * v101)
                                  {
                                    v111 = v109 / v104;
                                    if (v109 == v109 / v104 * v104)
                                    {
                                      if (v111 >= v35)
                                      {
                                        v112 = v35 - 1;
                                      }

                                      else
                                      {
                                        v112 = v109 / v104;
                                      }

                                      if (v111 < 0)
                                      {
                                        v112 = 0;
                                      }

                                      v96 = v96 + (*(*(v13 + 4) + v108) * *(*&v34[2 * v97] + 4 * (v107 + v112)));
                                    }
                                  }

                                  v108 += 4 * v220;
                                  --v109;
                                  --v110;
                                }

                                while (v110);
                                v100 += v102 * v220;
                              }

                              ++v99;
                            }

                            while (v99 != v98);
                          }

                          ++v97;
                        }

                        while (v97 != v38);
                      }

                      *(v211 + 4 * v95++) = v96;
                    }

                    while (v95 != v216);
                  }
                }
              }

              ++v93;
            }

            while (v93 != v219);
          }
        }

        else if (v39 == 2 && v24 >= 1)
        {
          v41 = 0;
          v217 = LODWORD(__dst[0]);
          v42 = v229[0];
          v43 = v24;
          do
          {
            if (v217 >= 1)
            {
              for (j = 0; j != v217; ++j)
              {
                if (v42 >= 1)
                {
                  v45 = 0;
                  v46 = *(v13 + 5);
                  v47 = *&v209[8 * v41] + 4 * j * v208;
                  do
                  {
                    v48 = *(v46 + 4 * v41);
                    if (v38 >= 1)
                    {
                      v49 = 0;
                      v50 = v13[2];
                      do
                      {
                        if (v50 >= 1)
                        {
                          v51 = 0;
                          v52 = v41 + v49 * v43;
                          v53 = v13[1];
                          do
                          {
                            if (v53 >= 1)
                            {
                              v54 = v13[5];
                              v55 = (j - v51) / v54;
                              v56 = v55 * v54;
                              v57 = 4 * v52;
                              v58 = v13[1];
                              v59 = v45;
                              do
                              {
                                if (j - v51 == v56)
                                {
                                  v60 = v13[4];
                                  v61 = v59 / v60;
                                  if (v59 == v59 / v60 * v60 && (v55 & 0x80000000) == 0 && v55 < v36 && (v61 & 0x80000000) == 0 && v61 < v35)
                                  {
                                    v48 = v48 + (*(*(v13 + 4) + v57) * *(*&v34[2 * v49] + 4 * (v55 * v37 + v61)));
                                  }
                                }

                                v57 += 4 * v220;
                                --v59;
                                --v58;
                              }

                              while (v58);
                              v52 += v53 * v220;
                            }

                            ++v51;
                          }

                          while (v51 != v50);
                        }

                        ++v49;
                      }

                      while (v49 != v38);
                    }

                    *(v47 + 4 * v45++) = v48;
                  }

                  while (v45 != v42);
                }
              }
            }

            ++v41;
          }

          while (v41 != v43);
        }
      }

      else
      {
        v40 = xmmword_277BB70A0;
        if (v24 >= 1)
        {
          v76 = 0;
          v210 = LODWORD(__dst[0]);
          v218 = v229[0];
          do
          {
            if (v210 >= 1)
            {
              for (k = 0; k != v210; ++k)
              {
                if (v218 >= 1)
                {
                  v78 = 0;
                  v215 = *(v13 + 5);
                  v212 = *&v209[8 * v76] + 4 * k * v208;
                  do
                  {
                    v79 = *(v215 + 4 * v76);
                    if (v38 >= 1)
                    {
                      v80 = 0;
                      v81 = v13[2];
                      do
                      {
                        if (v81 >= 1)
                        {
                          v82 = 0;
                          v83 = v76 + v80 * v24;
                          v84 = v13[5];
                          v85 = v13[1];
                          do
                          {
                            if (v85 >= 1)
                            {
                              v86 = (((v81 - v84) & ~((v81 - v84) >> 31)) >> 1) + k - v82;
                              v87 = v13[4];
                              v88 = v86 / v84;
                              v89 = 4 * v83;
                              v90 = v78 + (((v85 - v87) & ~((v85 - v87) >> 31)) >> 1);
                              v91 = v13[1];
                              do
                              {
                                if (v86 == v86 / v84 * v84)
                                {
                                  v92 = v90 / v87;
                                  if (v90 == v90 / v87 * v87 && (v88 & 0x80000000) == 0 && v88 < v36 && (v92 & 0x80000000) == 0 && v92 < v35)
                                  {
                                    v79 = v79 + (*(*(v13 + 4) + v89) * *(*&v34[2 * v80] + 4 * (v86 / v84 * v37 + v92)));
                                  }
                                }

                                v89 += 4 * v220;
                                --v90;
                                --v91;
                              }

                              while (v91);
                              v83 += v85 * v220;
                            }

                            ++v82;
                          }

                          while (v82 != v81);
                        }

                        ++v80;
                      }

                      while (v80 != v38);
                    }

                    *(v212 + 4 * v78++) = v79;
                  }

                  while (v78 != v218);
                }
              }
            }

            ++v76;
          }

          while (v76 != v24);
        }
      }
    }

    else
    {
      v62 = v15[3];
      v63 = v15[4];
      v64 = v21 + 24;
      v65 = *(v21 + 4);
      v221 = *v18;
      if (*v18 < 2)
      {
        sub_277A87D18(v15 + 3, v15[2], v62, v63, v13, v21 + 3, v65, 0, 1);
        v40 = xmmword_277BB70A0;
        goto LABEL_136;
      }

      v200 = v20;
      v66 = 0;
      v67 = 0;
      v68 = v221 >= 0x20 ? 32 : *v18;
      v69 = 56 * v68;
      v214 = v15 + 6;
      v70 = v15[2];
      v71 = v63;
      do
      {
        v72 = *(v204 + 8) + v67;
        sub_277985F5C(v72);
        v73 = &v229[v67 / 4];
        *v73 = v214;
        v73[2] = v70;
        v73[3] = v62;
        v73[4] = v71;
        v73[5] = 0;
        *(v73 + 3) = v13;
        *(v73 + 4) = v64;
        v73[10] = v65;
        v73[11] = v66;
        v73[12] = v221;
        v73[13] = 0;
        *(v72 + 24) = sub_277A89100;
        *(v72 + 32) = &v229[v67 / 4];
        v74 = 4;
        if (56 * (v221 - 1) != v67)
        {
          v74 = 3;
        }

        *(v72 + 40) = 0;
        (off_28866CE58[v74])(v72);
        v67 += 56;
        ++v66;
      }

      while (v69 != v67);
      v75 = 0;
      do
      {
        sub_277985E48((*(v204 + 8) + v75), 1);
        v75 += 56;
      }

      while (v69 != v75);
      v40 = xmmword_277BB70A0;
    }

    v32 = v205;
    v20 = v200;
LABEL_136:
    if (v203 == 2)
    {
      v113 = sub_277A87C58(v206, v13, v32, &v226);
      v40 = xmmword_277BB70A0;
      if (!v113)
      {
        break;
      }
    }

    v114 = *(v13 + 61);
    v115 = v206;
    if (v114 == 1)
    {
      v116 = 0;
      v117 = v13[18];
      do
      {
        if (((v117 >> v116) & 1) != 0 && v116 != v32)
        {
          v118 = *(v206 + 4);
          if (v118 >= 1)
          {
            v119 = 0;
            v120 = *(v206 + 12);
            v121 = *(v206 + 8);
            v122 = 4 * *(v206 + 16);
            do
            {
              if (v120 >= 1)
              {
                v123 = 0;
                for (m = 0; m != v120; ++m)
                {
                  if (v121 >= 1)
                  {
                    v125 = (*(v206 + 24 + 8 * v119) + v123);
                    v126 = (*&v227[2072 * v116 + 20 + 8 * v119] + v123);
                    v127 = v121;
                    do
                    {
                      v128 = *v126++;
                      *v125 = v128 + *v125;
                      ++v125;
                      --v127;
                    }

                    while (v127);
                  }

                  v123 += v122;
                }
              }

              ++v119;
            }

            while (v119 != v118);
          }
        }

        ++v116;
      }

      while (v116 != 4);
    }

    v129 = (v206 + 24);
    v131 = *(v206 + 4);
    v130 = *(v206 + 8);
    v132 = *(v206 + 12);
    v133 = *(v206 + 16);
    v134 = *(v13 + 49);
    if (v134 == 1)
    {
      if (v131 >= 1)
      {
        for (n = 0; n != v131; ++n)
        {
          if (v132 >= 1)
          {
            v142 = 0;
            for (ii = 0; ii != v132; ++ii)
            {
              if (v130 >= 1)
              {
                v144 = (v129[n] + v142);
                v145 = v130;
                do
                {
                  v146 = *v144;
                  if (*v144 < 0.0)
                  {
                    v146 = 0.0;
                  }

                  *v144++ = v146;
                  --v145;
                }

                while (v145);
              }

              v142 += 4 * v133;
            }
          }
        }
      }
    }

    else if (v134 == 2 && v131 >= 1)
    {
      v136 = 0;
      do
      {
        if (v132 >= 1)
        {
          v137 = 0;
          for (jj = 0; jj != v132; ++jj)
          {
            if (v130 >= 1)
            {
              v139 = (v129[v136] + v137);
              v140 = v130;
              do
              {
                *v139 = *v139 / (fabsf(*v139) + 1.0);
                ++v139;
                --v140;
              }

              while (v140);
            }

            v137 += 4 * v133;
          }
        }

        ++v136;
      }

      while (v136 != v131);
    }

    v147 = *(v13 + 10);
    if (v147 && v131 >= 1)
    {
      v148 = 0;
      v149 = *(v13 + 11);
      v150 = *(v13 + 12);
      v151 = 4 * v133;
      v152 = *(v13 + 13);
      do
      {
        if (v132 >= 1)
        {
          v153 = 0;
          v154 = *(v147 + 4 * v148);
          v155 = *(v149 + 4 * v148);
          v156 = *(v150 + 4 * v148);
          v157 = *(v152 + 4 * v148);
          v158 = v129[v148];
          do
          {
            if (v130 >= 1)
            {
              v159 = 0;
              do
              {
                *(v158 + v159) = v155 + ((v154 * (*(v158 + v159) - v156)) / v157);
                v159 += 4;
              }

              while (4 * v130 != v159);
            }

            ++v153;
            v158 += v151;
          }

          while (v153 != v132);
        }

        ++v148;
      }

      while (v148 != v131);
    }

    if (v114 == 2)
    {
      if (v20 == -1)
      {
        v167 = 0;
        v168 = v13[18];
        do
        {
          if (((v168 >> v167) & 1) != 0 && v167 != v205)
          {
            v169 = &v227[2072 * v167 - 4];
            v170 = *(v115 + 4);
            v171 = (*(v169 + 1) + v170);
            v172 = *(v115 + 8);
            v173 = *(v115 + 12);
            if (*v115 < v171 * v172 * v173)
            {
              bzero(__dst, 0x818uLL);
              if (!sub_277A87AFC(__dst, v171, v172, v173))
              {
                goto LABEL_229;
              }

              sub_277A88FEC(v206, *(v206 + 4), 0, __dst);
              memcpy(v229, v206, sizeof(v229));
              memcpy(v206, __dst, 0x818uLL);
              memcpy(__dst, v229, sizeof(__dst));
              if (LODWORD(__dst[0]) && __dst[3])
              {
                free(*(__dst[3] - 8));
              }

              v40 = xmmword_277BB70A0;
              v115 = v206;
            }

            if (v171 >= 2)
            {
              v174 = 0;
              v175 = *(v115 + 24);
              v176 = v171 & 0x7FFFFFFE;
              v177 = vdupq_n_s64(v171 - 2);
              v178 = vdup_n_s32(*(v115 + 12) * *(v115 + 8));
              v179 = &v227[2072 * v201 + 36];
              v180 = 0x200000001;
              do
              {
                v181 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(vdupq_n_s64(v174), v40)));
                v182 = vmul_s32(v178, v180);
                *&v183 = v182.i32[0];
                *(&v183 + 1) = v182.i32[1];
                v184 = v183;
                if (v181.i8[0])
                {
                  *(v179 - 1) = v175 + 4 * v184;
                }

                if (v181.i8[4])
                {
                  *v179 = v175 + 4 * *(&v184 + 1);
                }

                v180 = vadd_s32(v180, 0x200000002);
                v179 += 2;
                v174 += 2;
                v176 -= 2;
              }

              while (v176);
            }

            sub_277A88FEC(&v227[2072 * v167 - 4], *(v169 + 1), v170, v115);
            v115 = v206;
            v40 = xmmword_277BB70A0;
          }

          ++v167;
        }

        while (v167 != 4);
      }

      else
      {
        v160 = 0;
        v161 = v13[18];
        v162 = v227;
        LODWORD(v163) = v131;
        do
        {
          if (((v161 >> v160) & 1) != 0 && v205 != v160)
          {
            LODWORD(v163) = *v162 + v163;
          }

          ++v160;
          v162 += 518;
        }

        while (v160 != 4);
        v164 = v225[v20 - 1];
        v165 = *(v195 + 4 * v20);
        *v206 = 0;
        *(v206 + 4) = v163;
        *(v206 + 8) = v196;
        *(v206 + 12) = v197;
        *(v206 + 16) = v165;
        if (v164)
        {
          if (v163 > 0)
          {
            v163 = v163;
            do
            {
              v166 = *v164++;
              *v129++ = v166;
              --v163;
            }

            while (v163);
          }
        }

        else if (v163 >= 1)
        {
          bzero(v129, 8 * v163);
          v115 = v206;
        }

        v185 = 0;
        v186 = &v226;
        do
        {
          if (((v161 >> v185) & 1) != 0 && v205 != v185)
          {
            sub_277A88FEC(v186, v186[1], v131, v115);
            v115 = v206;
            LODWORD(v131) = v186[1] + v131;
          }

          ++v185;
          v186 += 518;
        }

        while (v185 != 4);
      }
    }

    if (v203 == 3 && !sub_277A87C58(v115, v13, v201, &v226))
    {
      break;
    }

    v11 = v202 + 1;
    if (v202 == 4)
    {
      v187 = 1;
      goto LABEL_230;
    }
  }

LABEL_229:
  v187 = 0;
LABEL_230:
  v188 = -8288;
  do
  {
    v189 = &v228[v188];
    if (*&v228[v188 + 8288])
    {
      v190 = *(v189 + 1039);
      if (v190)
      {
        free(*(v190 - 8));
      }

      *(v189 + 1039) = 0;
      *(v189 + 2072) = 0;
    }

    v191 = &v227[v188 - 4];
    if (*&v228[v188])
    {
      v192 = *(v191 + 1039);
      if (v192)
      {
        free(*(v192 - 8));
      }

      *(v191 + 1039) = 0;
      *(v191 + 2072) = 0;
    }

    v188 += 2072;
  }

  while (v188);
  return v187;
}

uint64_t sub_277A87AFC(uint64_t a1, int a2, int a3, int a4)
{
  v8 = a4 * a3;
  v9 = a4 * a3 * a2;
  if (*a1 < v9)
  {
    if (*a1)
    {
      v10 = *(a1 + 24);
      if (v10)
      {
        free(*(v10 - 8));
      }

      *(a1 + 24) = 0;
      *a1 = 0;
    }

    v11 = 4 * v9;
    if (v11 > 0x1FFFFFFE9 || (v12 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL)) == 0)
    {
      result = 0;
      *(a1 + 24) = 0;
      return result;
    }

    v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v13 - 8) = v12;
    *(a1 + 24) = v13;
    if (!v13)
    {
      return 0;
    }

    *a1 = v9;
  }

  *(a1 + 12) = a4;
  *(a1 + 16) = a3;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  if (a2 >= 2)
  {
    v14 = 0;
    v15 = *(a1 + 24);
    v16 = a2 & 0x7FFFFFFE;
    v17 = vdupq_n_s64(a2 - 2);
    v18 = vdup_n_s32(v8);
    v19 = 0x200000001;
    v20 = (a1 + 40);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v14), xmmword_277BB70A0)));
      v22 = vmul_s32(v18, v19);
      *&v23 = v22.i32[0];
      *(&v23 + 1) = v22.i32[1];
      v24 = v23;
      if (v21.i8[0])
      {
        *(v20 - 1) = v15 + 4 * v24;
      }

      if (v21.i8[4])
      {
        *v20 = v15 + 4 * *(&v24 + 1);
      }

      v19 = vadd_s32(v19, 0x200000002);
      v20 += 2;
      v14 += 2;
      v16 -= 2;
    }

    while (v16);
  }

  return 1;
}

BOOL sub_277A87C58(uint64_t a1, uint64_t a2, unsigned int a3, int *a4)
{
  v7 = 0;
  v8 = 0;
  v9 = a3;
  do
  {
    if (v9 == v7 || (*(a2 + 64) & (1 << v7)) == 0)
    {
      goto LABEL_8;
    }

    v10 = *(a2 + 68);
    if (v10 <= 0)
    {
      v10 = *(a1 + 4);
    }

    if (!sub_277A87AFC(a4, v10, *(a1 + 8), *(a1 + 12)))
    {
      break;
    }

    sub_277A88FEC(a1, v10, 0, a4);
LABEL_8:
    v8 = v7 > 2;
    a4 += 518;
    ++v7;
  }

  while (v7 != 4);
  return v8;
}

uint64_t *sub_277A87D18(uint64_t *result, int a2, int a3, int a4, unsigned int *a5, float32x4_t **a6, int a7, uint64_t a8, int a9)
{
  v11 = a5[2];
  v10 = a5[3];
  v12 = *a5;
  v13 = a5[1];
  v281 = v10 * v12;
  v292 = v11 >> 1;
  v14 = v13 >> 1;
  if (a9 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a9;
  }

  v328 = v15;
  if (a5[6] && ((v264 = a5[5], v264 > 1) || a5[4] >= 2))
  {
    v16 = *(a5 + 48);
    if (v16 == 2)
    {
      if (v10 >= 1)
      {
        v92 = 0;
        v273 = a3 - v11;
        v261 = a7;
        v299 = a2 - v13;
        v93 = v13 * v281;
        v94 = 4 * v281;
        do
        {
          if ((v273 & 0x80000000) == 0)
          {
            v288 = 0;
            v283 = 0;
            v95 = 0;
            do
            {
              v278 = v95 + v264;
              if ((v299 & 0x80000000) == 0)
              {
                v317 = 0;
                v96 = 0;
                v97 = v95 + v264;
                if (v278 >= a3)
                {
                  v97 = a3;
                }

                v323 = v97;
                v98 = v283 * v261;
                v99 = a5[4];
                v311 = v288;
                v294 = v99;
                do
                {
                  v305 = v96 + v99;
                  if (v95 < v323)
                  {
                    if (v305 >= a2)
                    {
                      v100 = a2;
                    }

                    else
                    {
                      v100 = v96 + v99;
                    }

                    v330 = v311;
                    v101 = v95;
                    do
                    {
                      if (v96 < v100)
                      {
                        v102 = *(a5 + 5);
                        v103 = a6[v92]->i64 + 4 * v317;
                        v104 = v330;
                        v105 = v96;
                        do
                        {
                          v106 = *(v102 + 4 * v92);
                          if (v12 >= 1)
                          {
                            for (i = 0; i != v12; ++i)
                            {
                              if (v11 >= 1)
                              {
                                v108 = 0;
                                v109 = v92 + i * v10;
                                v110 = v104;
                                do
                                {
                                  if (v13 >= 1)
                                  {
                                    v111 = (*(a5 + 4) + 4 * v109);
                                    v112 = v110;
                                    v113 = v13;
                                    do
                                    {
                                      v106 = v106 + (*v111 * *(result[i] + 4 * v112));
                                      v111 = (v111 + v94);
                                      ++v112;
                                      --v113;
                                    }

                                    while (v113);
                                    v109 += v93;
                                  }

                                  ++v108;
                                  v110 += a4;
                                }

                                while (v108 != v11);
                              }
                            }
                          }

                          if ((v95 != v101 || v96 != v105) && *(v103 + 4 * v98) > v106)
                          {
                            v106 = *(v103 + 4 * v98);
                          }

                          *(v103 + 4 * v98) = v106;
                          ++v105;
                          ++v104;
                        }

                        while (v105 < v100);
                      }

                      ++v101;
                      v330 += a4;
                    }

                    while (v101 < v323);
                  }

                  ++v317;
                  v99 = v294;
                  v311 += v294;
                  v96 = v305;
                }

                while (v305 <= v299);
              }

              ++v283;
              v288 += v264 * a4;
              v95 += v264;
            }

            while (v278 <= v273);
          }

          ++v92;
        }

        while (v92 != v10);
      }
    }

    else if (v16 == 1)
    {
      if (v10 >= 1)
      {
        v114 = 0;
        v262 = a7;
        v115 = v13 * v281;
        v116 = 4 * v281;
        v257 = -v14;
        do
        {
          if (a3 >= 1)
          {
            v274 = 0;
            v117 = 0;
            do
            {
              v269 = v117 + v264;
              if (a2 >= 1)
              {
                v300 = 0;
                v118 = 0;
                v119 = v117 + v264;
                if (v269 >= a3)
                {
                  v119 = a3;
                }

                v306 = v119;
                v120 = v274 * v262;
                v121 = a5[4];
                v289 = v257;
                v279 = v121;
                do
                {
                  v284 = v118 + v121;
                  if (v117 < v306)
                  {
                    v122 = v118 + v121;
                    if (v284 >= a2)
                    {
                      v122 = a2;
                    }

                    v324 = v122;
                    v331 = v117;
                    v312 = v118;
                    do
                    {
                      if (v118 < v324)
                      {
                        v318 = *(a5 + 5);
                        v123 = v331 - v292;
                        v124 = a6[v114]->i64 + 4 * v300;
                        v125 = v289;
                        v126 = v312;
                        do
                        {
                          v127 = *(v318 + 4 * v114);
                          if (v12 >= 1)
                          {
                            for (j = 0; j != v12; ++j)
                            {
                              if (v11 >= 1)
                              {
                                v129 = 0;
                                v130 = v114 + j * v10;
                                do
                                {
                                  if (v13 >= 1)
                                  {
                                    if (v129 + v123 >= a3)
                                    {
                                      v131 = a3 - 1;
                                    }

                                    else
                                    {
                                      v131 = v129 + v123;
                                    }

                                    if (v129 + v123 >= 0)
                                    {
                                      v132 = v131;
                                    }

                                    else
                                    {
                                      v132 = 0;
                                    }

                                    v133 = v132 * a4;
                                    v134 = (*(a5 + 4) + 4 * v130);
                                    v135 = v125;
                                    v136 = v13;
                                    do
                                    {
                                      if (v135 >= a2)
                                      {
                                        v137 = a2 - 1;
                                      }

                                      else
                                      {
                                        v137 = v135;
                                      }

                                      if (v135 < 0)
                                      {
                                        v137 = 0;
                                      }

                                      v127 = v127 + (*v134 * *(result[j] + 4 * (v137 + v133)));
                                      v134 = (v134 + v116);
                                      ++v135;
                                      --v136;
                                    }

                                    while (v136);
                                    v130 += v115;
                                  }

                                  ++v129;
                                }

                                while (v129 != v11);
                              }
                            }
                          }

                          if ((v117 != v331 || v312 != v126) && *(v124 + 4 * v120) > v127)
                          {
                            v127 = *(v124 + 4 * v120);
                          }

                          *(v124 + 4 * v120) = v127;
                          ++v126;
                          ++v125;
                        }

                        while (v126 < v324);
                      }

                      ++v331;
                      v118 = v312;
                    }

                    while (v331 < v306);
                  }

                  ++v300;
                  v121 = v279;
                  v289 += v279;
                  v118 = v284;
                }

                while (v284 < a2);
              }

              ++v274;
              v117 += v264;
            }

            while (v269 < a3);
          }

          ++v114;
        }

        while (v114 != v10);
      }
    }

    else if (!*(a5 + 48) && v10 >= 1)
    {
      v17 = 0;
      v248 = a7;
      v18 = v13 * v281;
      v19 = 4 * v281;
      v245 = -(v14 + v292 * a4);
      v246 = -v14;
      do
      {
        if (a3 >= 1)
        {
          v259 = 0;
          v20 = 0;
          v255 = v245;
          do
          {
            v253 = v20 + v264;
            if (a2 >= 1)
            {
              v286 = 0;
              v21 = 0;
              v22 = v20 + v264;
              if (v253 >= a3)
              {
                v22 = a3;
              }

              v297 = v22;
              v23 = v259 * v248;
              v24 = a5[4];
              v282 = v246;
              v276 = v255;
              v268 = v24;
              do
              {
                v271 = v21 + v24;
                if (v20 < v297)
                {
                  v25 = v21 + v24;
                  if (v271 >= a2)
                  {
                    v25 = a2;
                  }

                  v321 = v25;
                  v303 = v276;
                  v329 = v20;
                  v309 = v21;
                  do
                  {
                    if (v21 < v321)
                    {
                      v315 = *(a5 + 5);
                      v26 = a6[v17]->i64 + 4 * v286;
                      v27 = v282;
                      v28 = v303;
                      v29 = v309;
                      do
                      {
                        v30 = *(v315 + 4 * v17);
                        if (v12 >= 1)
                        {
                          for (k = 0; k != v12; ++k)
                          {
                            if (v11 >= 1)
                            {
                              v32 = 0;
                              v33 = v17 + k * v10;
                              v34 = v28;
                              do
                              {
                                if (v13 >= 1)
                                {
                                  v35 = v32 + v329 - v292;
                                  v36 = 4 * v33;
                                  v37 = v27;
                                  v38 = v34;
                                  v39 = v13;
                                  do
                                  {
                                    if ((v35 & 0x80000000) == 0 && v35 < a3 && v37 < a2)
                                    {
                                      v30 = v30 + (*(*(a5 + 4) + v36) * *(result[k] + 4 * v38));
                                    }

                                    v36 += v19;
                                    ++v38;
                                    ++v37;
                                    --v39;
                                  }

                                  while (v39);
                                  v33 += v18;
                                }

                                ++v32;
                                v34 += a4;
                              }

                              while (v32 != v11);
                            }
                          }
                        }

                        if ((v20 != v329 || v309 != v29) && *(v26 + 4 * v23) > v30)
                        {
                          v30 = *(v26 + 4 * v23);
                        }

                        *(v26 + 4 * v23) = v30;
                        ++v29;
                        ++v28;
                        ++v27;
                      }

                      while (v29 < v321);
                    }

                    v303 += a4;
                    ++v329;
                    v21 = v309;
                  }

                  while (v329 < v297);
                }

                ++v286;
                v24 = v268;
                v276 += v268;
                v282 += v268;
                v21 = v271;
              }

              while (v271 < a2);
            }

            ++v259;
            v255 += v264 * a4;
            v20 += v264;
          }

          while (v253 < a3);
        }

        ++v17;
      }

      while (v17 != v10);
    }
  }

  else
  {
    v40 = v11 - 1;
    if (v11 == 1 && v13 == 1)
    {
      if (v10 >= 1)
      {
        v71 = 0;
        v72 = 0;
        v73 = a5[4];
        v74 = a5[5];
        v75 = a2 % v73;
        if (!(a2 % v73))
        {
          v75 = a5[4];
        }

        v76 = (v75 / 2) & ((v75 + (v75 >> 31)) >> 31);
        v77 = a3 % v74;
        if (!(a3 % v74))
        {
          v77 = a5[5];
        }

        v78 = (v77 / 2) & ((v77 + (v77 >> 31)) >> 31);
        v79 = v76 + v73 * a8;
        v80 = v73 * v328;
        do
        {
          v81 = v78;
          for (m = a8; v81 < a3; m += a7)
          {
            if (v79 < a2)
            {
              v83 = m;
              v84 = *(a5 + 5);
              v85 = a6[v72];
              v86 = v79;
              do
              {
                v87 = *(v84 + 4 * v72);
                if (v12 >= 1)
                {
                  v88 = (*(a5 + 4) + v71);
                  v89 = result;
                  v90 = v12;
                  do
                  {
                    v91 = *v89++;
                    v87 = v87 + (*v88 * *(v91 + 4 * v86 + 4 * v81 * a4));
                    v88 += v10;
                    --v90;
                  }

                  while (v90);
                }

                v85->f32[v83] = v87;
                v86 += v80;
                v83 += v328;
              }

              while (v86 < a2);
            }

            v81 += v74;
          }

          ++v72;
          v71 += 4;
        }

        while (v72 != v10);
      }
    }

    else
    {
      v42 = *(a5 + 48);
      if (v42 == 2)
      {
        if (v13 == 2)
        {
          if (v11 == 2 && a5[4] == 2 && a5[5] == 2)
          {
            v209 = a5[28];
            if (v209 > 2)
            {
              v210 = &unk_277C33160;
            }

            else
            {
              v210 = *(&off_27A7222F0 + v209);
            }

            if (a2 >= 16)
            {
              v211 = *(a5 + 5);
              v212 = a3 - 2;
              v213 = 8 * a4;
              v214 = 8 * a3 * a2;
              v215 = 4 * a4;
              v327 = 4 * a3 * a2;
              do
              {
                v216 = 0;
                v217 = 0;
                v218 = vld1q_dup_f32(v211);
                v219 = *result;
                v220 = *a6;
                v221 = *result + v215;
                v222 = *result + v215 + v327;
                v223 = *result + v327;
                do
                {
                  v224 = 0;
                  v225 = v216;
                  v226 = v220;
                  do
                  {
                    v227 = 0;
                    v228 = 0uLL;
                    v229 = v225;
                    v230 = 0uLL;
                    v231 = 0uLL;
                    v232 = v218;
                    v233 = 0uLL;
                    v234 = 0uLL;
                    v235 = v218;
                    v236 = 0uLL;
                    do
                    {
                      v237 = &v210[16 * v227];
                      v238 = (v219 + v229);
                      v240 = *v237;
                      v239 = v237[1];
                      v333 = vld2q_f32(v238);
                      v238 += 8;
                      v241 = (v221 + v229);
                      v335 = vld2q_f32(v241);
                      v241 += 8;
                      v242 = (v223 + v229);
                      v337 = vld2q_f32(v242);
                      v242 += 8;
                      v243 = (v222 + v229);
                      v339 = vld2q_f32(v243);
                      v243 += 8;
                      v340 = vld2q_f32(v238);
                      v232 = vmlaq_lane_f32(vmlaq_n_f32(v232, v333.val[0], v240.f32[0]), v333.val[1], *v240.f32, 1);
                      v334 = vld2q_f32(v241);
                      v231 = vmlaq_laneq_f32(vmlaq_laneq_f32(v231, v335.val[0], v240, 2), v335.val[1], v240, 3);
                      v336 = vld2q_f32(v242);
                      v230 = vmlaq_lane_f32(vmlaq_n_f32(v230, v337.val[0], v239.f32[0]), v337.val[1], *v239.f32, 1);
                      v338 = vld2q_f32(v243);
                      v228 = vmlaq_laneq_f32(vmlaq_laneq_f32(v228, v339.val[0], v239, 2), v339.val[1], v239, 3);
                      v235 = vmlaq_lane_f32(vmlaq_n_f32(v235, v340.val[0], v240.f32[0]), v340.val[1], *v240.f32, 1);
                      v236 = vmlaq_laneq_f32(vmlaq_laneq_f32(v236, v334.val[0], v240, 2), v334.val[1], v240, 3);
                      v234 = vmlaq_lane_f32(vmlaq_n_f32(v234, v336.val[0], v239.f32[0]), v336.val[1], *v239.f32, 1);
                      v233 = vmlaq_laneq_f32(vmlaq_laneq_f32(v233, v338.val[0], v239, 2), v338.val[1], v239, 3);
                      v227 += 2;
                      v229 += v214;
                    }

                    while (v227 < v12);
                    *v226 = vaddq_f32(vaddq_f32(v232, v231), vaddq_f32(v230, v228));
                    v226[1] = vaddq_f32(vaddq_f32(v235, v236), vaddq_f32(v234, v233));
                    v226 += 2;
                    v224 += 16;
                    v225 += 64;
                  }

                  while (v224 <= a2 - 2);
                  v220 = (v220 + 4 * a7);
                  v217 += 2;
                  v216 += v213;
                }

                while (v217 <= v212);
                ++v211;
                ++a6;
                LODWORD(a8) = a8 + 1;
                v210 += 16 * v12;
              }

              while (a8 < v10);
              return result;
            }

            if (a2 == 8)
            {
              return sub_277B0D8F8(result, a3, a4, *(a5 + 5), v12, v10, a6, a7, a8, v210);
            }
          }
        }

        else if (v13 == 5 && v11 == 5 && a5[4] == 4 && a5[5] == 4)
        {
          v138 = 4 * a4;
          v139 = *(a5 + 5);
          v140 = a2 - 4;
          v141 = a3 - 4;
          v142 = 4 * a7;
          v144 = 12 * a4;
          v145 = 8 * a4;
          v146 = &xmmword_277C32990;
          v147 = 4 * a4;
          do
          {
            v148 = 0;
            v149 = vld1q_dup_f32(v139);
            v150 = *result;
            v151 = (v146 + 6);
            v152 = vld1q_dup_f32(v151);
            v153 = *a6;
            v154 = v146[1];
            v155 = v146[2];
            v156 = v146[3];
            v157 = v146[4];
            v158 = v146[5];
            v159 = vdupq_lane_s32(*v146, 0);
            v332 = vdupq_lane_s32(*v146, 1);
            v325 = vdupq_laneq_s32(*v146, 2);
            v160 = vdupq_laneq_s32(*v146, 3);
            v161 = vdupq_lane_s32(*v154.i8, 0);
            v162 = vdupq_lane_s32(*v154.i8, 1);
            v163 = vdupq_laneq_s32(v154, 2);
            v164 = vdupq_lane_s32(*v155.i8, 0);
            v165 = vdupq_lane_s32(*v156.i8, 1);
            v166 = vdupq_laneq_s32(v156, 2);
            v167 = vdupq_laneq_s32(v158, 2);
            v313 = vdupq_lane_s32(*v155.i8, 1);
            v319 = v152;
            v307 = vdupq_laneq_s32(v155, 2);
            v295 = vdupq_laneq_s32(v155, 3);
            v301 = vdupq_lane_s32(*v156.i8, 0);
            v285 = vdupq_laneq_s32(v156, 3);
            v290 = v159;
            v275 = vdupq_lane_s32(*v157.i8, 1);
            v280 = vdupq_lane_s32(*v157.i8, 0);
            v266 = vdupq_laneq_s32(v157, 3);
            v270 = vdupq_laneq_s32(v157, 2);
            v258 = vdupq_lane_s32(*v158.i8, 1);
            v263 = vdupq_lane_s32(*v158.i8, 0);
            v252 = vdupq_laneq_s32(v158, 3);
            v254 = v149;
            v250 = vdupq_laneq_s32(v154, 3);
            do
            {
              v168 = 0;
              v169 = v150;
              do
              {
                v170 = v169;
                v171 = v162;
                v172 = v160;
                v344 = vld4q_f32(v170);
                v143 = v138;
                v173 = &v170[v143];
                v174 = (v169 + v147);
                v175 = v164;
                v345 = vld4q_f32(v174);
                v174 += 16;
                v176 = (v169 + v145);
                v342 = vld4q_f32(v176);
                v176 += 16;
                v177 = (v169 + v144);
                v341 = vld4q_f32(v177);
                v177 += 16;
                v343 = vld4q_f32(v173);
                v173 += 16;
                v178 = v167;
                v179 = v163;
                v180 = v161;
                v181 = *(v169 + 64);
                v169 += 64;
                v161.i32[0] = v181;
                v182 = vmlaq_f32(v254, v159, v344.val[0]);
                v183 = vmlaq_f32(vmlaq_f32(0, v332, v344.val[1]), v172, v344.val[3]);
                v160 = v172;
                v162 = v171;
                v184 = vmlaq_f32(vmlaq_f32(v182, v325, v344.val[2]), v180, vextq_s8(v344.val[0], v161, 4uLL));
                v161 = v180;
                v163 = v179;
                v167 = v178;
                v344.val[2].f32[0] = *v174;
                v344.val[2] = vextq_s8(v345.val[0], v344.val[2], 4uLL);
                v185 = vmlaq_f32(vmlaq_f32(v183, v171, v345.val[0]), v250, v345.val[2]);
                v164 = v175;
                v186 = vmlaq_f32(v185, v313, v344.val[2]);
                v344.val[2].f32[0] = *v176;
                v187 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v184, v163, v345.val[1]), v175, v345.val[3]), v307, v342.val[0]), v301, v342.val[2]), v166, vextq_s8(v342.val[0], v344.val[2], 4uLL));
                v342.val[0].f32[0] = *v177;
                v188 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v186, v295, v342.val[1]), v165, v342.val[3]), v285, v341.val[0]), v275, v341.val[2]), v266, vextq_s8(v341.val[0], v342.val[0], 4uLL));
                v341.val[0].f32[0] = *v173;
                v341.val[0] = vaddq_f32(vmlaq_f32(vmlaq_f32(v188, v258, v343.val[1]), v252, v343.val[3]), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v187, v280, v341.val[1]), v270, v341.val[3]), v263, v343.val[0]), v178, v343.val[2]), vextq_s8(v343.val[0], v341.val[0], 4uLL), v319));
                v159 = v290;
                v153[v168++] = v341.val[0];
              }

              while ((v168 * 16) < v140);
              v150 += 4 * v138;
              v148 += 4;
              v153 = (v153 + v142);
            }

            while (v148 < v141);
            ++a6;
            ++v139;
            v146 = (v146 + 100);
            LODWORD(a8) = a8 + 1;
          }

          while (a8 < v10);
          return result;
        }

        return sub_277A869D0(result, a2, a3, a4, a5, a6, a7, a8, v281, v328);
      }

      v43 = v10;
      v44 = v40 / 2;
      v249 = v292 - v40 + ((v40 + (v40 >> 31)) & 0xFFFFFFFE);
      v45 = (v13 - 1) / 2;
      v277 = v14 - (v13 - 1) + ((v13 - 1 + ((v13 - 1) >> 31)) & 0xFFFFFFFE);
      if (v42 == 1)
      {
        v189 = a5[4];
        v190 = a3 % a5[5];
        v308 = a5[5];
        if (!v190)
        {
          v190 = a5[5];
        }

        v191 = v11 & 1;
        if (v11 < 0)
        {
          v191 = -v191;
        }

        v192 = (v191 + v190 - 1) / 2;
        if (v192 >= v44)
        {
          v192 = v44;
        }

        v291 = v192;
        v193 = a2 % v189;
        v326 = a5[4];
        if (!(a2 % v189))
        {
          v193 = a5[4];
        }

        v194 = a5[1] & 1;
        if (v13 < 0)
        {
          v194 = -v194;
        }

        v195 = (v194 + v193 - 1) / 2;
        if (v195 >= v45)
        {
          v195 = (v13 - 1) / 2;
        }

        v314 = v195;
        if (v10 > a8)
        {
          v296 = v195 - v277;
          a8 = a8;
          do
          {
            if (v291 < a3)
            {
              v320 = 0;
              v196 = v291 - v249;
              do
              {
                if (v314 < a2)
                {
                  v197 = v320;
                  v198 = *(a5 + 5);
                  v199 = a6[a8];
                  v200 = v296;
                  do
                  {
                    v201 = *(v198 + 4 * a8);
                    if (v12 >= 1)
                    {
                      for (n = 0; n != v12; ++n)
                      {
                        if (v11 >= 1)
                        {
                          LODWORD(v203) = a8 + n * v43;
                          v204 = v196;
                          do
                          {
                            if (v13 >= 1)
                            {
                              if (v204 >= a3)
                              {
                                v205 = a3 - 1;
                              }

                              else
                              {
                                v205 = v204;
                              }

                              if (v204 < 0)
                              {
                                v205 = 0;
                              }

                              v206 = v205 * a4;
                              v203 = v203;
                              v207 = v200;
                              do
                              {
                                if (v207 >= a2)
                                {
                                  v208 = a2 - 1;
                                }

                                else
                                {
                                  v208 = v207;
                                }

                                if (v207 < 0)
                                {
                                  v208 = 0;
                                }

                                v201 = v201 + (*(*(a5 + 4) + 4 * v203) * *(result[n] + 4 * (v208 + v206)));
                                v203 += v281;
                                ++v207;
                              }

                              while (v207 < v200 + v13);
                            }

                            ++v204;
                          }

                          while (v204 < v196 + v11);
                        }
                      }
                    }

                    v199->f32[v197] = v201;
                    v200 += v326;
                    ++v197;
                  }

                  while (v200 < a2 - v277);
                }

                v196 += v308;
                v320 += a7;
              }

              while (v196 < (a3 - v249));
            }

            a8 += v328;
          }

          while (a8 < v43);
        }
      }

      else if (!*(a5 + 48))
      {
        v46 = a5[4];
        v47 = a3 % a5[5];
        v251 = a5[5];
        if (!v47)
        {
          v47 = a5[5];
        }

        v48 = v11 < 0;
        v49 = v11 & 1;
        if (v48)
        {
          v49 = -v49;
        }

        v50 = (v49 + v47 - 1) / 2;
        if (v50 >= v44)
        {
          v50 = v40 / 2;
        }

        v244 = v50;
        v51 = a2 % v46;
        v287 = a5[4];
        if (!(a2 % v46))
        {
          v51 = a5[4];
        }

        v52 = a5[1] & 1;
        if (v13 < 0)
        {
          v52 = -v52;
        }

        v53 = (v52 + v51 - 1) / 2;
        if (v53 >= v45)
        {
          v53 = (v13 - 1) / 2;
        }

        if (v10 > a8)
        {
          v247 = v292 + 1;
          v293 = v14 + 1;
          v272 = v14 + 1 - a2;
          v310 = a8;
          v54 = 4 * a4;
          do
          {
            if (v244 < a3)
            {
              v265 = 0;
              v260 = v244 - v249;
              v256 = v244;
              do
              {
                if (v53 < a2)
                {
                  v55 = v247 + v256;
                  if (v247 + v256 >= a3)
                  {
                    v55 = a3;
                  }

                  v56 = v265;
                  v304 = *(a5 + 5);
                  v298 = a6[v310];
                  v57 = v55;
                  v59 = v277 - v53;
                  v58 = v53 - v277;
                  v60 = v53;
                  do
                  {
                    v322 = v56;
                    v61 = *(v304 + 4 * v310);
                    v316 = v59;
                    if (v12 >= 1)
                    {
                      v62 = 0;
                      v63 = (v59 & ~(v59 >> 31)) * v281;
                      v64 = v60 + v293;
                      if (v60 + v293 >= a2)
                      {
                        v64 = a2;
                      }

                      v65 = v64;
                      do
                      {
                        if (((v256 - v249) & ~((v256 - v249) >> 31)) < v57)
                        {
                          v66 = v310 + (((v249 - v256) * v13) & ~(((v249 - v256) * v13) >> 31)) * v281 + v62 * v10;
                          v67 = v54 * (v260 & ~(v260 >> 31));
                          v68 = v260 & ~(v260 >> 31);
                          do
                          {
                            if (((v60 - v277) & ~((v60 - v277) >> 31)) >= v65)
                            {
                              LODWORD(v69) = v66 + ((v277 - v60) & ~((v277 - v60) >> 31)) * v281;
                            }

                            else
                            {
                              v69 = v66 + v63;
                              v70 = v58 & ~(v58 >> 31);
                              do
                              {
                                v61 = v61 + (*(*(a5 + 4) + 4 * v69) * *(result[v62] + v67 + 4 * v70++));
                                v69 += v281;
                              }

                              while (v70 < v65);
                            }

                            v66 = v69 + ((v272 + v60) & ~((v272 + v60) >> 31)) * v281;
                            ++v68;
                            v67 += v54;
                          }

                          while (v68 < v57);
                        }

                        ++v62;
                      }

                      while (v62 != v12);
                    }

                    v298->f32[v322] = v61;
                    v60 += v287;
                    v56 = v322 + 1;
                    v58 += v287;
                    v59 = v316 - v287;
                  }

                  while (v60 < a2);
                }

                v260 += v251;
                v265 += a7;
                v256 += v251;
              }

              while (v256 < a3);
            }

            v310 += v328;
          }

          while (v310 < v10);
        }
      }
    }
  }

  return result;
}