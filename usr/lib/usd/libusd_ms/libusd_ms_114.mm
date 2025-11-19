uint64_t sub_29AB2AFA8(unsigned int a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = HIWORD(a1);
  v5 = &a2[a3];
  if (a3 && (a2 & 0xF) != 0)
  {
    v6 = a3 - 1;
    v7 = a2;
    do
    {
      v8 = *a2++;
      v3 += v8;
      v4 += v3;
      ++v7;
      if (!v6)
      {
        break;
      }

      --v6;
    }

    while ((v7 & 0xF) != 0);
    v3 %= 0xFFF1u;
    v4 %= 0xFFF1u;
  }

  else
  {
    v7 = a2;
  }

  v9 = &v5[-((v5 - v7) & 0x3F)];
  if (a2 != v9)
  {
    *&_Q0 = 0x101010101010101;
    *(&_Q0 + 1) = 0x101010101010101;
    _Q1 = xmmword_29B4E1830;
    _Q2 = xmmword_29B4E1840;
    _Q3 = xmmword_29B4E1850;
    _Q4 = xmmword_29B4E1860;
    do
    {
      v15 = a2;
      if ((v9 - a2) >= 0x1580)
      {
        v16 = 5504;
      }

      else
      {
        v16 = v9 - a2;
      }

      _Q7 = 0uLL;
      _Q17 = 0uLL;
      _Q19 = 0uLL;
      v20 = v3 * v16;
      a2 += v16;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      _Q24 = 0uLL;
      do
      {
        _Q25 = *v15;
        _Q26 = *(v15 + 1);
        v21 = vaddq_s32(_Q24, v21);
        __asm
        {
          UDOT            V24.4S, V25.16B, V0.16B
          UDOT            V5.4S, V25.16B, V1.16B
        }

        v22 = vaddq_s32(v22, _Q7);
        __asm
        {
          UDOT            V7.4S, V26.16B, V0.16B
          UDOT            V6.4S, V26.16B, V2.16B
        }

        _Q25 = *(v15 + 2);
        _Q26 = *(v15 + 3);
        v23 = vaddq_s32(v23, _Q17);
        __asm
        {
          UDOT            V17.4S, V25.16B, V0.16B
          UDOT            V16.4S, V25.16B, V3.16B
        }

        v24 = vaddq_s32(v24, _Q19);
        __asm
        {
          UDOT            V19.4S, V26.16B, V0.16B
          UDOT            V18.4S, V26.16B, V4.16B
        }

        v15 += 64;
      }

      while (v15 != a2);
      v3 = (vaddvq_s32(vaddq_s32(vaddq_s32(_Q7, _Q24), vaddq_s32(_Q17, _Q19))) + v3) % 0xFFF1;
      v4 = (v20 + v4 + vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(_Q6, _Q5), vaddq_s32(_Q16, _Q18)), vqshlq_n_u32(vaddq_s32(vaddq_s32(v23, v22), vaddq_s32(v24, v21)), 6uLL)))) % 0xFFF1;
    }

    while (a2 != v9);
    a2 = v9;
  }

  if (a2 != v5)
  {
    do
    {
      v38 = *a2++;
      v3 += v38;
      v4 += v3;
    }

    while (a2 != v5);
    v3 %= 0xFFF1u;
    v4 %= 0xFFF1u;
  }

  return v3 | (v4 << 16);
}

uint64_t sub_29AB2B19C(unsigned int a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = HIWORD(a1);
  v5 = &a2[a3];
  if (a3 && (a2 & 0xF) != 0)
  {
    v6 = a3 - 1;
    v7 = a2;
    do
    {
      v8 = *a2++;
      v3 += v8;
      v4 += v3;
      ++v7;
      if (!v6)
      {
        break;
      }

      --v6;
    }

    while ((v7 & 0xF) != 0);
    v3 %= 0xFFF1u;
    v4 %= 0xFFF1u;
  }

  else
  {
    v7 = a2;
  }

  v9 = &v5[-((v5 - v7) & 0x3F)];
  if (a2 != v9)
  {
    do
    {
      v10 = a2;
      if ((v9 - a2) >= 0x1580)
      {
        v11 = 5504;
      }

      else
      {
        v11 = v9 - a2;
      }

      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = v3 * v11;
      a2 += v11;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      do
      {
        v23 = v10[1];
        v24 = v10[2];
        v25 = v10[3];
        v14 = vaddq_s32(v14, v13);
        v12 = vaddw_u8(v12, *v10->i8);
        v15 = vaddw_high_u8(v15, *v10);
        v17 = vaddw_u8(v17, *v23.i8);
        v18 = vaddw_high_u8(v18, v23);
        v19 = vaddw_u8(v19, *v24.i8);
        v20 = vaddw_high_u8(v20, v24);
        v21 = vaddw_u8(v21, *v25.i8);
        v22 = vaddw_high_u8(v22, v25);
        v13 = vpadalq_u16(v13, vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v23), *v10), v24), v25));
        v10 += 4;
      }

      while (v10 != a2);
      v3 = (vaddvq_s32(v13) + v3) % 0xFFF1;
      v4 = (v16 + v4 + vaddvq_s32(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vqshlq_n_u32(v14, 6uLL), *v12.i8, 0x3D003E003F0040), *&vextq_s8(v12, v12, 8uLL), 0x39003A003B003CLL), *v15.i8, 0x35003600370038), *&vextq_s8(v15, v15, 8uLL), 0x31003200330034), *v17.i8, 0x2D002E002F0030), *&vextq_s8(v17, v17, 8uLL), 0x29002A002B002CLL), *v18.i8, 0x25002600270028), *&vextq_s8(v18, v18, 8uLL), 0x21002200230024), *v19.i8, 0x1D001E001F0020), *&vextq_s8(v19, v19, 8uLL), 0x19001A001B001CLL), *v20.i8, 0x15001600170018), *&vextq_s8(v20, v20, 8uLL), 0x11001200130014), *v21.i8, 0xD000E000F0010), *&vextq_s8(v21, v21, 8uLL), 0x9000A000B000CLL), *v22.i8, 0x5000600070008), *&vextq_s8(v22, v22, 8uLL), 0x1000200030004))) % 0xFFF1;
    }

    while (a2 != v9);
    a2 = v9;
  }

  if (a2 != v5)
  {
    do
    {
      v26 = *a2++;
      v3 += v26;
      v4 += v3;
    }

    while (a2 != v5);
    v3 %= 0xFFF1u;
    v4 %= 0xFFF1u;
  }

  return v3 | (v4 << 16);
}

uint64_t sub_29AB2B444(void *a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    v30 = 0;
    goto LABEL_17;
  }

  result = 3;
  if (a3 >= 0x14 && a7 == 1835036)
  {
    v12 = a2;
    v154 = (a2 + 20);
    v13 = a2 + a3;
    v14 = a6 + 1048592;
    bzero(a6, 0x80008uLL);
    v15 = 0;
    do
    {
      ++*&a6[8 * a4[v15++]];
    }

    while (a5 != v15);
    v16 = a6 + 524296;
    LODWORD(v17) = -1;
    do
    {
      v17 = (v17 + 1);
    }

    while (!*&a6[8 * v17]);
    if (v17 > 0x10000)
    {
      v26 = 1;
      *(a6 + 1) = 1;
      *v14 = a6 + 8;
      v29 = a6 + 8;
      goto LABEL_19;
    }

    v152 = v12;
    v18 = 0;
    v19 = 0;
    v20 = a6 + 1572888;
    v21 = v17 + 1;
    v22 = &a6[8 * v17];
    v23 = &a6[4 * v17 + 1572888];
    v24 = v17;
    do
    {
      *v23 = v24;
      if (*v22)
      {
        *&v14[8 * v19++] = v22;
        v18 = v24;
      }

      v22 += 8;
      ++v24;
      v23 += 4;
      v25 = v21++ == 65537;
    }

    while (!v25);
    v153 = a1;
    v26 = (v18 + 1);
    v27 = &a6[8 * v26];
    *v27 = 1;
    *&v14[8 * v19] = v27;
    v28 = (v19 + 1);
    if (v28 <= 1)
    {
      v12 = v152;
      a1 = v153;
      v29 = &a6[8 * v26];
LABEL_19:
      bzero(a6 + 524296, 0x80008uLL);
      goto LABEL_116;
    }

    v31 = (v28 - 2) >> 1;
    v32 = (v28 - 1) >> 1;
    v33 = v31;
    do
    {
      v34 = v33;
      v35 = *&v14[8 * v33];
      v36 = v34;
      if (v32 > v34)
      {
        v37 = v34;
        do
        {
          v38 = *&v14[16 * v37 + 16];
          v39 = *&v14[8 * ((2 * v37) | 1)];
          v40 = *v38 == *v39 && v38 > v39;
          if (v40 || *v38 > *v39)
          {
            v36 = 2 * v37 + 1;
          }

          else
          {
            v36 = 2 * v37 + 2;
          }

          *&v14[8 * v37] = *&v14[8 * v36];
          v37 = v36;
        }

        while (v36 < v32);
      }

      if ((v28 & 1) == 0 && v36 == v31)
      {
        *&v14[8 * v31] = *&v14[8 * v28 - 8];
        v36 = v28 - 1;
      }

      if (v36 > v34)
      {
        v42 = *v35;
        while (1)
        {
          v43 = (v36 - 1) >> 1;
          v44 = *&v14[8 * v43];
          v45 = *v44 != v42 || v44 <= v35;
          if (*v44 <= v42 && v45)
          {
            break;
          }

          *&v14[8 * v36] = v44;
          v36 = (v36 - 1) >> 1;
          if (v43 <= v34)
          {
            goto LABEL_46;
          }
        }
      }

      v43 = v36;
LABEL_46:
      *&v14[8 * v43] = v35;
      v33 = v34 - 1;
    }

    while (v34);
    bzero(a6 + 524296, 0x80008uLL);
    while (1)
    {
      v46 = *v14;
      v47 = &a6[8 * v28 + 1048584];
      v48 = *v47;
      *v47 = *v14;
      v49 = v47 - v14;
      v50 = (v47 - v14) >> 3;
      if ((v50 - 1) >= 2)
      {
        v52 = 0;
        do
        {
          v53 = *&v14[16 * v52 + 16];
          v54 = *&v14[8 * ((2 * v52) | 1)];
          if (*v53 == *v54 && v53 > v54 || *v53 > *v54)
          {
            v51 = 2 * v52 + 1;
          }

          else
          {
            v51 = 2 * v52 + 2;
          }

          *&v14[8 * v52] = *&v14[8 * v51];
          v52 = v51;
        }

        while (v51 < (v50 - 1) >> 1);
      }

      else
      {
        v51 = 0;
      }

      if ((v49 & 8) != 0 || v51 != (v50 - 2) >> 1)
      {
        if (!v51)
        {
          goto LABEL_73;
        }
      }

      else
      {
        *&v14[8 * v51] = *&v14[8 * ((2 * v51) | 1)];
        v51 = (2 * v51) | 1;
      }

      v57 = *v48;
      while (1)
      {
        v58 = v51 - 1;
        v59 = *&v14[8 * ((v51 - 1) >> 1)];
        v60 = *v59 != v57 || v59 <= v48;
        if (*v59 <= v57 && v60)
        {
          break;
        }

        *&v14[8 * v51] = v59;
        v51 = (v51 - 1) >> 1;
        if (v58 <= 1)
        {
          v51 = 0;
          break;
        }
      }

LABEL_73:
      *&v14[8 * v51] = v48;
      v61 = v28 - 1;
      v62 = *v14;
      v63 = &v14[8 * v28 - 8];
      if ((v28 - 1) >= 2)
      {
        v64 = *(v63 - 1);
        *(v63 - 1) = v62;
        v65 = 8 * (v28 - 1) - 8;
        v66 = (v65 >> 3) - 1;
        if (v66 >= 2)
        {
          v68 = 0;
          v69 = v66 >> 1;
          do
          {
            v70 = *&v14[16 * v68 + 16];
            v71 = *&v14[8 * ((2 * v68) | 1)];
            if (*v70 == *v71 && v70 > v71 || *v70 > *v71)
            {
              v67 = 2 * v68 + 1;
            }

            else
            {
              v67 = 2 * v68 + 2;
            }

            *&v14[8 * v68] = *&v14[8 * v67];
            v68 = v67;
          }

          while (v67 < v69);
        }

        else
        {
          v67 = 0;
        }

        if ((v65 & 8) != 0 || v67 != ((v65 >> 3) - 2) >> 1)
        {
          if (v67)
          {
            goto LABEL_91;
          }
        }

        else
        {
          *&v14[8 * v67] = *&v14[8 * ((2 * v67) | 1)];
          v67 = (2 * v67) | 1;
LABEL_91:
          v74 = *v64;
          while (1)
          {
            v75 = v67 - 1;
            v76 = *&v14[8 * ((v67 - 1) >> 1)];
            v77 = *v76 != v74 || v76 <= v64;
            if (*v76 <= v74 && v77)
            {
              break;
            }

            *&v14[8 * v67] = v76;
            v67 = (v67 - 1) >> 1;
            if (v75 <= 1)
            {
              v67 = 0;
              break;
            }
          }
        }

        *&v14[8 * v67] = v64;
      }

      v78 = v46 - a6;
      v79 = v62 - a6;
      *&a6[(v62 - a6) & 0x7FFFFFFF8] += *&a6[v78 & 0x7FFFFFFF8];
      v80 = *(v63 - 1);
      v81 = v28 - 2;
      if (v28 != 2)
      {
        v82 = *v80;
        while (1)
        {
          v83 = v81 - 1;
          v84 = *&v14[8 * ((v81 - 1) >> 1)];
          v85 = *v84 != v82 || v84 <= v80;
          if (*v84 <= v82 && v85)
          {
            break;
          }

          *&v14[8 * v81] = v84;
          v81 = (v81 - 1) >> 1;
          if (v83 <= 1)
          {
            v81 = 0;
            break;
          }
        }
      }

      v86 = (v78 >> 3);
      v87 = (v79 >> 3);
      *&v14[8 * v81] = v80;
      do
      {
        v88 = v87;
        ++*&v16[8 * v87];
        v87 = *&v20[4 * v87];
      }

      while (v87 != v88);
      *&v20[4 * v88] = v86;
      do
      {
        ++*&v16[8 * v86];
        v25 = *&v20[4 * v86] == v86;
        v86 = *&v20[4 * v86];
      }

      while (!v25);
      --v28;
      if (v61 < 2)
      {
        v12 = v152;
        a1 = v153;
        v29 = &a6[8 * v26];
LABEL_116:
        sub_29AB2BF10(a6 + 65537);
        memcpy(a6, a6 + 524296, 0x80008uLL);
        if (v17 <= v26)
        {
          v104 = 0;
          v105 = 0;
          LODWORD(v106) = v17;
          v89 = v154;
          v90 = v154;
          do
          {
            v107 = *&a6[8 * v106] & 0x3FLL;
            if (v106 >= v26 || v107)
            {
              goto LABEL_138;
            }

            v106 = v106;
            v108 = 1;
            while ((*&a6[8 * v106 + 8] & 0x3FLL) == 0)
            {
              ++v106;
              v109 = v108 + 1;
              if (v106 < v26 && v108++ < 0x104)
              {
                continue;
              }

              goto LABEL_137;
            }

            v109 = v108;
LABEL_137:
            if (v109 < 2)
            {
LABEL_138:
              v111 = (v104 + 6);
              v105 = v107 | (v105 << 6);
              if (v104 >= 2)
              {
                do
                {
                  if (v90 >= v13)
                  {
                    return 4;
                  }

                  v111 -= 8;
                  *v90++ = v105 >> v111;
                }

                while (v111 > 7);
              }

              v104 = v111;
            }

            else
            {
              v112 = v109 - 6;
              if (v109 < 6)
              {
                v105 = (v109 + 57) | (v105 << 6);
                v119 = (v104 - 2);
                if (v104 < 2)
                {
                  v104 += 6;
                }

                else
                {
                  v120 = v104 + 14;
                  do
                  {
                    if (v90 >= v13)
                    {
                      return 4;
                    }

                    *v90++ = v105 >> v119;
                    v120 -= 8;
                    v119 -= 8;
                  }

                  while (v120 > 15);
                  v104 = v120 - 8;
                }
              }

              else
              {
                v113 = (v104 + 6);
                v114 = (v105 << 6) | 0x3F;
                if (v104 >= 2)
                {
                  v115 = v104 + 14;
                  v116 = v113 - 8;
                  do
                  {
                    if (v90 >= v13)
                    {
                      return 4;
                    }

                    *v90++ = v114 >> v116;
                    v115 -= 8;
                    v116 -= 8;
                  }

                  while (v115 > 15);
                  LODWORD(v113) = v115 - 8;
                }

                v104 = v113 + 8;
                v105 = v112 | (v114 << 8);
                if ((v113 & 0x80000000) == 0)
                {
                  v117 = v113;
                  do
                  {
                    if (v90 >= v13)
                    {
                      return 4;
                    }

                    *v90++ = v105 >> v117;
                    v118 = v104 - 8;
                    v117 -= 8;
                    v40 = v104 <= 15;
                    v104 -= 8;
                  }

                  while (!v40);
                  v104 = v118;
                }
              }
            }

            LODWORD(v106) = v106 + 1;
          }

          while (v106 <= v26);
          if (v104 >= 1)
          {
            if (v90 >= v13)
            {
              return 4;
            }

            *v90++ = v105 << (8 - v104);
          }
        }

        else
        {
          v89 = v154;
          v90 = v154;
        }

        v91 = *a4;
        if (a5 != 1)
        {
          v121 = 0;
          LODWORD(v93) = 0;
          v92 = 0;
          v122 = 1;
          v95 = v90;
          while (1)
          {
            if (v91 == a4[v122] && v121 <= 254)
            {
              v94 = v121 + 1;
            }

            else
            {
              v123 = *&a6[8 * v91];
              v124 = *v29;
              v125 = v123 & 0x3F;
              v126 = *v29 & 0x3FLL;
              if (v125 + v126 + 8 >= v125 * v121)
              {
                if ((v121 & 0x80000000) == 0)
                {
                  v131 = v123 >> 6;
                  v132 = v123 & 0x3F;
                  while (1)
                  {
                    v133 = (v93 + v125);
                    v92 = (v92 << v132) | v131;
                    if (v133 >= 8)
                    {
                      break;
                    }

                    LODWORD(v93) = v93 + v125;
LABEL_182:
                    v94 = 0;
                    v40 = v121-- <= 0;
                    if (v40)
                    {
                      goto LABEL_199;
                    }
                  }

                  v134 = v133 - 8;
                  while (v95 < v13)
                  {
                    *v95++ = v92 >> v134;
                    LODWORD(v93) = v133 - 8;
                    v134 -= 8;
                    v40 = v133 <= 15;
                    LODWORD(v133) = v133 - 8;
                    if (v40)
                    {
                      goto LABEL_182;
                    }
                  }

                  return 4;
                }
              }

              else
              {
                v127 = (v125 + v93);
                v128 = (v92 << v123) | (v123 >> 6);
                if (v127 >= 8)
                {
                  v129 = v127 - 8;
                  while (v95 < v13)
                  {
                    *v95++ = v128 >> v129;
                    v130 = v127 - 8;
                    v129 -= 8;
                    v40 = v127 <= 15;
                    LODWORD(v127) = v127 - 8;
                    if (v40)
                    {
                      goto LABEL_186;
                    }
                  }

                  return 4;
                }

                v130 = v127;
LABEL_186:
                v135 = (v130 + v126);
                v136 = (v128 << v124) | (v124 >> 6);
                if (v135 >= 8)
                {
                  v137 = v135 - 8;
                  while (v95 < v13)
                  {
                    *v95++ = v136 >> v137;
                    v138 = v135 - 8;
                    v137 -= 8;
                    v40 = v135 <= 15;
                    LODWORD(v135) = v135 - 8;
                    if (v40)
                    {
                      goto LABEL_193;
                    }
                  }

                  return 4;
                }

                v138 = v130 + v126;
LABEL_193:
                v93 = (v138 + 8);
                v92 = v121 | (v136 << 8);
                if ((v138 & 0x80000000) == 0)
                {
                  v139 = v138 + 16;
                  v140 = v93 - 8;
                  while (v95 < v13)
                  {
                    *v95++ = v92 >> v140;
                    v139 -= 8;
                    v140 -= 8;
                    if (v139 <= 15)
                    {
                      v94 = 0;
                      LODWORD(v93) = v139 - 8;
                      goto LABEL_199;
                    }
                  }

                  return 4;
                }
              }

              v94 = 0;
            }

LABEL_199:
            v91 = a4[v122++];
            v121 = v94;
            if (v122 == a5)
            {
              goto LABEL_120;
            }
          }
        }

        v92 = 0;
        LODWORD(v93) = 0;
        v94 = 0;
        v95 = v90;
LABEL_120:
        v96 = *&a6[8 * v91];
        v97 = *v29;
        v98 = v96 & 0x3F;
        v99 = *v29 & 0x3FLL;
        if (v98 + v99 + 8 >= v98 * v94)
        {
          if ((v94 & 0x80000000) == 0)
          {
            v141 = v96 >> 6;
            v142 = v96 & 0x3F;
            while (1)
            {
              v143 = (v93 + v98);
              v92 = (v92 << v142) | v141;
              if (v143 >= 8)
              {
                break;
              }

              LODWORD(v93) = v93 + v98;
LABEL_210:
              v40 = v94-- <= 0;
              if (v40)
              {
                goto LABEL_229;
              }
            }

            v144 = v143 - 8;
            while (v95 < v13)
            {
              *v95++ = v92 >> v144;
              LODWORD(v93) = v143 - 8;
              v144 -= 8;
              v40 = v143 <= 15;
              LODWORD(v143) = v143 - 8;
              if (v40)
              {
                goto LABEL_210;
              }
            }

            return 4;
          }
        }

        else
        {
          v100 = (v98 + v93);
          v101 = (v92 << v96) | (v96 >> 6);
          if (v100 >= 8)
          {
            v102 = v100 - 8;
            while (v95 < v13)
            {
              *v95++ = v101 >> v102;
              v103 = v100 - 8;
              v102 -= 8;
              v40 = v100 <= 15;
              LODWORD(v100) = v100 - 8;
              if (v40)
              {
                goto LABEL_214;
              }
            }

            return 4;
          }

          v103 = v100;
LABEL_214:
          v145 = (v103 + v99);
          v146 = (v101 << v97) | (v97 >> 6);
          if (v145 >= 8)
          {
            v147 = v145 - 8;
            while (v95 < v13)
            {
              *v95++ = v146 >> v147;
              v148 = v145 - 8;
              v147 -= 8;
              v40 = v145 <= 15;
              LODWORD(v145) = v145 - 8;
              if (v40)
              {
                goto LABEL_221;
              }
            }

            return 4;
          }

          v148 = v103 + v99;
LABEL_221:
          v93 = (v148 + 8);
          v92 = v94 | (v146 << 8);
          if ((v148 & 0x80000000) == 0)
          {
            v149 = v148 + 16;
            v150 = v93 - 8;
            while (v95 < v13)
            {
              *v95++ = v92 >> v150;
              v149 -= 8;
              v150 -= 8;
              if (v149 <= 15)
              {
                LODWORD(v93) = v149 - 8;
                goto LABEL_229;
              }
            }

            return 4;
          }
        }

LABEL_229:
        if (v93)
        {
          if (v95 >= v13)
          {
            return 4;
          }

          *v95 = v92 << (8 - v93);
        }

        v151 = 8 * (v95 - v90) + v93;
        if (HIDWORD(v151))
        {
          return 4;
        }

        *v12 = v17;
        *(v12 + 2) = BYTE2(v17);
        *(v12 + 3) = BYTE3(v17);
        *(v12 + 4) = v26;
        *(v12 + 6) = BYTE2(v26);
        *(v12 + 7) = BYTE3(v26);
        *(v12 + 8) = v90 - v89;
        *(v12 + 10) = (v90 - v89) >> 16;
        *(v12 + 11) = (v90 - v89) >> 24;
        *(v12 + 12) = v151;
        *(v12 + 14) = BYTE2(v151);
        *(v12 + 15) = BYTE3(v151);
        v30 = &v90[((v151 + 7) >> 3) - v12];
        *(v12 + 16) = 0;
LABEL_17:
        result = 0;
        *a1 = v30;
        return result;
      }
    }
  }

  return result;
}

uint64_t *sub_29AB2BF10(uint64_t *result)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = 65537;
  v12 = 0;
  v2 = 65537;
  v3 = result;
  memset(v11, 0, sizeof(v11));
  do
  {
    v4 = *v3++;
    ++*(v11 + v4);
    --v2;
  }

  while (v2);
  v5 = 0;
  v6 = 58;
  do
  {
    v7 = *(v11 + v6) + v5;
    *(v11 + v6) = v5;
    v5 = v7 >> 1;
  }

  while (v6-- > 1);
  do
  {
    v9 = *result;
    if (*result)
    {
      v10 = *(v11 + v9);
      *(v11 + v9) = v10 + 1;
      *result = v9 | (v10 << 6);
    }

    ++result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_29AB2C01C(void *a1, int a2)
{
  v3 = a1;
  v148 = *MEMORY[0x29EDCA608];
  v4 = a1[20];
  result = sub_29AB26F38(a1, 3, a1 + 23, a1 + 24, a1[13]);
  if (result)
  {
    return result;
  }

  v102 = a2;
  v6 = *(v3 + 9);
  if (v6 <= 0)
  {
    v9 = *(v3 + 4);
    goto LABEL_17;
  }

  v7 = 0;
  v8 = v3[12];
  v9 = *(v3 + 4);
  do
  {
    if (v9 < 1)
    {
      goto LABEL_14;
    }

    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 8) + v7;
    v13 = v3[23];
    do
    {
      v14 = *v3 + v10;
      v15 = *(v14 + 25) * *(v14 + 12);
      v16 = v15 * *(v14 + 8);
      if (!v16)
      {
        goto LABEL_12;
      }

      v17 = *(v14 + 20);
      v18 = v7;
      if (v17 >= 2)
      {
        if (v12 % v17)
        {
          v13 += v16;
          goto LABEL_12;
        }

        v18 = v7 / v17;
      }

      memcpy((v13 + v15 * v18), v8, v15);
      v8 += v15;
      v13 += v16;
      v9 = *(v3 + 4);
LABEL_12:
      ++v11;
      v10 += 48;
    }

    while (v11 < v9);
    v6 = *(v3 + 9);
LABEL_14:
    ++v7;
  }

  while (v7 < v6);
LABEL_17:
  if (v9 < 1)
  {
    v20 = 0;
LABEL_85:
    result = 0;
    v3[21] = v20;
    return result;
  }

  v19 = 0;
  v20 = 0;
  __src = v3[23];
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  while (2)
  {
    v22 = *v3 + 48 * v19;
    v23 = *(v22 + 12);
    v98 = *(v22 + 8);
    v24 = v98 * v23 * *(v22 + 25);
    if (!v24)
    {
LABEL_81:
      if (++v19 >= *(v3 + 4))
      {
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  v96 = v19;
  if (*(v22 + 26) != 1)
  {
    v20 += v24;
    if (v20 > v3[22])
    {
      return 1;
    }

    memcpy(v4, __src, v24);
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v19 = v96;
    v4 += v24;
    __src += v24;
    goto LABEL_81;
  }

  v94 = v98 * v23 * *(v22 + 25);
  v25 = *(v22 + 8);
  if (v98 < 1)
  {
LABEL_78:
    v19 = v96;
    __src += v94;
    goto LABEL_81;
  }

  v26 = 0;
  v100 = *v3 + 48 * v19;
  v101 = v3;
  v99 = *(v22 + 12);
  while (1)
  {
    v27 = v25;
    v28 = &__src[2 * v26 * v23];
    v29 = &v28[2 * v23];
    v30 = v26 | 3;
    if ((v26 | 1) >= v27)
    {
      v31 = &__src[2 * v26 * v23];
    }

    else
    {
      v31 = &v28[2 * v23];
    }

    v95 = v26;
    if ((v26 | 2) >= v27)
    {
      v32 = v31;
    }

    else
    {
      v32 = &v29[2 * v23];
    }

    v33 = v30 < v27;
    if (v30 >= v27)
    {
      v34 = v31;
    }

    else
    {
      v34 = &v28[2 * v23];
    }

    if (v33)
    {
      v35 = &v29[2 * v23];
    }

    else
    {
      v35 = v32;
    }

    if (v33)
    {
      v32 = &v29[2 * v23 + 2 * v23];
    }

    if (v23 >= 1)
    {
      break;
    }

LABEL_77:
    v26 = v95 + 4;
    v25 = v98;
    if (v95 + 4 >= v98)
    {
      goto LABEL_78;
    }
  }

  v36 = 0;
  while (1)
  {
    v105 = v36;
    if ((v36 | 3) >= v23)
    {
      v37 = 0;
      v38 = v23 + ~v36;
      v39 = v116;
      do
      {
        if (v37 >= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v37;
        }

        *(v39 - 8) = *&v28[2 * v40];
        *(v39 - 4) = *&v34[2 * v40];
        *v39 = *&v35[2 * v40];
        v39[4] = *&v32[2 * v40];
        ++v37;
        ++v39;
      }

      while (v37 != 4);
    }

    else
    {
      v115[0] = *v28;
      v115[1] = *v34;
      v116[0] = *v35;
      v116[1] = *v32;
    }

    v104 = *(v22 + 24);
    if (*(v22 + 24))
    {
      v41 = 0;
      v42 = exrcore_expTable;
      do
      {
        *(v115 + v41) = *(v42 + 2 * *(v115 + v41));
        v41 += 2;
      }

      while (v41 != 32);
    }

    v43 = 0;
    v44 = v28 + 8;
    v45 = v34 + 8;
    v46 = v35 + 8;
    v47 = v32 + 8;
    do
    {
      v48 = *(v115 + v43);
      if ((~v48 & 0x7C00) != 0)
      {
        if ((v48 & 0x8000) != 0)
        {
          v49 = ~v48;
        }

        else
        {
          v49 = v48 | 0x8000;
        }

        *(v117 + v43) = v49;
      }

      else
      {
        *(v117 + v43) = 0x8000;
      }

      v43 += 2;
    }

    while (v43 != 32);
    v106 = v47;
    v107 = v46;
    v108 = v45;
    v109 = v44;
    v110 = v20;
    v111 = v4;
    v50 = vmaxq_u16(*v117, *&v117[2]);
    v50.i16[0] = vmaxvq_u16(v50);
    v103 = v50.i16[0];
    v51 = vdupq_n_s32(v50.u32[0]);
    v52 = -1;
    do
    {
      v53 = 0;
      v54 = v52 + 2;
      ++v52;
      v55 = vdupq_n_s32(v54);
      v56 = vdupq_n_s32(~(-1 << v52));
      v57 = &v132;
      v58 = vnegq_s32(v55);
      do
      {
        v59 = *&v117[v53];
        v60 = vsubw_high_u16(v51, v59);
        v61 = vsubw_u16(v51, *v59.i8);
        v62 = vaddq_s32(v61, v61);
        v63 = vaddq_s32(v60, v60);
        *v57 = vshlq_s32(vaddq_s32(vaddq_s32(v62, v56), vandq_s8(vshlq_u32(v62, v58), v21)), v58);
        v57[1] = vshlq_s32(vaddq_s32(vaddq_s32(v63, v56), vandq_s8(vshlq_u32(v63, v58), v21)), v58);
        v57 += 2;
        v53 += 2;
      }

      while (v53 != 4);
      v114 = v132 - v136;
      v113 = v136 - v140;
      v64 = v140 - v144 + 32;
      v112 = v136 - v140 + 32;
      v118 = v112;
      v119 = v140 - v144 + 32;
      v65 = v132 - v133 + 32;
      v66 = v136 - v137;
      v67 = v136 - v137 + 32;
      v120 = v132 - v133 + 32;
      v121 = v67;
      v68 = v140 - v141;
      v69 = v140 - v141 + 32;
      v70 = v144 - v145 + 32;
      v122 = v69;
      v123 = v144 - v145 + 32;
      v71 = v133 - v134 + 32;
      v72 = v137 - v138;
      v73 = v137 - v138 + 32;
      v124 = v133 - v134 + 32;
      v125 = v73;
      v74 = v141 - v142;
      v75 = v141 - v142 + 32;
      v76 = v145 - v146 + 32;
      v77 = v134 - v135 + 32;
      v126 = v75;
      v127 = v145 - v146 + 32;
      v78 = v138 - v139;
      v79 = v138 - v139 + 32;
      v80 = v142 - v143;
      v81 = v142 - v143 + 32;
      v128 = v134 - v135 + 32;
      v129 = v79;
      v82 = v146 - v147 + 32;
      v83 = 4;
      v84 = v132 - v136 + 32;
      v85 = v84;
      v130 = v81;
      v131 = v146 - v147 + 32;
      do
      {
        v86 = *(&v117[4] + v83 + 4);
        if (v85 >= v86)
        {
          v85 = *(&v117[4] + v83 + 4);
        }

        if (v84 <= v86)
        {
          v84 = *(&v117[4] + v83 + 4);
        }

        v83 += 4;
      }

      while (v83 != 60);
    }

    while (v85 < 0 || v84 > 63);
    v87 = v117[0];
    if (v102 && v85 == 32 && v84 == 32)
    {
      v88 = HIBYTE(LOWORD(v117[0]));
      v89 = -4;
      v90 = 2;
      v91 = 3;
      v92 = v111;
    }

    else
    {
      if (!v104)
      {
        v87 = v103 - (v132 << v52);
      }

      LOBYTE(v88) = HIBYTE(v87);
      v111[2] = ((v132 - v136 + 32) >> 4) | (4 * v52);
      v111[3] = (v112 >> 2) | (16 * v114);
      v111[4] = v64 | (v113 << 6);
      v111[5] = (v67 >> 4) | (4 * v65);
      v111[6] = (v69 >> 2) | (16 * v66);
      v111[7] = v70 | (v68 << 6);
      v111[8] = (v73 >> 4) | (4 * v71);
      v93 = v75 >> 2;
      v92 = v111;
      v111[9] = v93 | (16 * v72);
      v111[10] = v76 | (v74 << 6);
      v111[11] = (v79 >> 4) | (4 * v77);
      v111[12] = (v81 >> 2) | (16 * v78);
      v90 = 13;
      v91 = 14;
      v89 = v82 | (v80 << 6);
    }

    v23 = v99;
    v22 = v100;
    *v92 = v88;
    v92[1] = v87;
    v92[v90] = v89;
    v20 = v91 + v110;
    v3 = v101;
    if (v91 + v110 + 14 > v101[22])
    {
      return 1;
    }

    v36 = v105 + 4;
    v4 = &v92[v91];
    v34 = v108;
    v28 = v109;
    v32 = v106;
    v35 = v107;
    if (v105 + 4 >= v99)
    {
      goto LABEL_77;
    }
  }
}

uint64_t sub_29AB2C6AC(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if ((byte_2A17482A4 & 1) == 0)
  {
    byte_2A17482A4 = 1;
    off_2A1B6C400[0] = sub_29AB2D628;
    off_2A1B6C408[0] = sub_29AB2D64C;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = a2;
  *a1 = a3;
  *(a1 + 8) = a4;
  if (!a3)
  {
    v10 = a4[2];
    v11 = sub_29AB21010;
    if (v10)
    {
      v12 = *(v10 + 88);
      v11 = *(v10 + 96);
    }

    else
    {
      v12 = j__malloc;
    }

    *(a1 + 184) = v12;
    *(a1 + 192) = v11;
    v31 = (v12)((576 * *(a4 + 4)) | 0x20);
    v32 = 32 - (v31 & 0x1F);
    *(a1 + 64) = v31;
    if ((v31 & 0x1F) == 0)
    {
      v32 = 0;
    }

    v33 = (v31 + v32);
    if (v31)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    *(a1 + 48) = v34;
    if (v34)
    {
      v35 = *(a4 + 4);
      bzero(v34, 576 * *(a4 + 4));
      *(a1 + 40) = v35;
      v36 = *(a4 + 4);
      if (v36 >= 1)
      {
        v37 = *a4;
        v38 = *(a1 + 48) + 448;
        do
        {
          *v38 = v37;
          *(v38 + 100) = 0;
          v37 += 48;
          v38 += 576;
          --v36;
        }

        while (v36);
      }

      result = 0;
      v39 = *(a4 + 7);
      *(a1 + 20) = *(a4 + 9);
      *(a1 + 24) = v39;
      v40 = *(a4 + 8);
      *(a1 + 28) = v40;
      *(a1 + 32) = v39 + *(a4 + 10) - 1;
      *(a1 + 36) = v40 + *(a4 + 9) - 1;
      return result;
    }

    return 1;
  }

  v7 = *(a3 + 16);
  v8 = sub_29AB21010;
  if (v7)
  {
    v9 = *(v7 + 88);
    v8 = *(v7 + 96);
  }

  else
  {
    v9 = j__malloc;
  }

  *(a1 + 184) = v9;
  *(a1 + 192) = v8;
  v13 = (v9)((576 * *(a3 + 8)) | 0x20);
  v14 = 32 - (v13 & 0x1F);
  *(a1 + 64) = v13;
  if ((v13 & 0x1F) == 0)
  {
    v14 = 0;
  }

  v15 = (v13 + v14);
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 48) = v16;
  if (!v16)
  {
    return 1;
  }

  v17 = *(a3 + 8);
  bzero(v16, 576 * *(a3 + 8));
  *(a1 + 40) = v17;
  if (*(a3 + 8) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 26;
    do
    {
      v21 = (*a3 + v20);
      v22 = *(a1 + 48) + v18;
      v23 = *v21;
      *(v22 + 448) = v21 - 13;
      *(v22 + 548) = 0;
      *(v22 + 416) = 0uLL;
      *(v22 + 432) = 0uLL;
      *(v22 + 384) = 0uLL;
      *(v22 + 400) = 0uLL;
      *(v22 + 352) = 0uLL;
      *(v22 + 368) = 0uLL;
      *(v22 + 320) = 0uLL;
      *(v22 + 336) = 0uLL;
      *(v22 + 288) = 0uLL;
      *(v22 + 304) = 0uLL;
      *(v22 + 256) = 0uLL;
      *(v22 + 272) = 0uLL;
      *(v22 + 224) = 0uLL;
      *(v22 + 240) = 0uLL;
      *(v22 + 192) = 0uLL;
      *(v22 + 208) = 0uLL;
      *(v22 + 160) = 0uLL;
      *(v22 + 176) = 0uLL;
      *(v22 + 128) = 0uLL;
      *(v22 + 144) = 0uLL;
      *(v22 + 96) = 0uLL;
      *(v22 + 112) = 0uLL;
      *(v22 + 64) = 0uLL;
      *(v22 + 80) = 0uLL;
      *(v22 + 32) = 0uLL;
      *(v22 + 48) = 0uLL;
      *v22 = 0uLL;
      *(v22 + 16) = 0uLL;
      ++v19;
      *(v22 + 416) = v23;
      v18 += 576;
      v20 += 48;
    }

    while (v19 < *(a3 + 8));
  }

  v24 = *(a3 + 28);
  *(a1 + 20) = *(a3 + 36);
  *(a1 + 24) = v24;
  v25 = *(a3 + 32);
  *(a1 + 28) = v25;
  *(a1 + 32) = v24 + *(a3 + 40) - 1;
  *(a1 + 36) = v25 + *(a3 + 36) - 1;
  result = sub_29AB27FEC(*(a3 + 16), *(a3 + 12), (a1 + 200));
  if (!result)
  {
    v27 = *(a3 + 16);
    if (!v27)
    {
      return 2;
    }

    v28 = *(a3 + 12);
    if (*v27 == 1)
    {
      pthread_mutex_lock((v27 + 504));
    }

    if ((v28 & 0x80000000) != 0)
    {
      v29 = *v27;
    }

    else
    {
      v29 = *v27;
      if (*(v27 + 49) > v28)
      {
        v30 = *(*(*(v27 + 59) + 8 * v28) + 188);
        if (v29 == 1)
        {
          pthread_mutex_unlock((v27 + 504));
        }

        result = 0;
        *(a1 + 204) = v30;
        return result;
      }
    }

    if (v29 == 1)
    {
      pthread_mutex_unlock((v27 + 504));
    }

    return (*(v27 + 9))(v27, 4, "Part index (%d) out of range", v28);
  }

  return result;
}

uint64_t sub_29AB2CA38(void *a1)
{
  v150 = 0;
  a1[9] = &off_2A14F92A0;
  a1[10] = 15;
  sub_29AB2EF6C(a1, &v150);
  if (*(*a1 + 176) < 0x58uLL)
  {
    return 1;
  }

  v3 = v150;
  v2 = sub_29AB26F38(*a1, 3, (*a1 + 160), (*a1 + 176), v150);
  if (v2)
  {
    return v2;
  }

  v5 = *(*a1 + 160);
  bzero(v5, *(*a1 + 176));
  if (v3 < 2)
  {
    return 1;
  }

  v117 = v5;
  __dst = &v5[5].i8[10];
  v6 = a1[10];
  if (!v6)
  {
    v8 = 2;
    goto LABEL_26;
  }

  v115 = v3;
  v7 = 0;
  v8 = 2;
  do
  {
    v9 = *(a1 + 10);
    if (v9 < 1)
    {
      goto LABEL_22;
    }

    v10 = a1[9] + 24 * v7;
    v11 = *(v10 + 12);
    v12 = (a1[6] + 448);
    while (1)
    {
      v13 = *v12;
      v14 = **v12;
      v15 = strrchr(v14, 46);
      v16 = v15 ? v15 + 1 : v14;
      if (v11 == *(v13 + 13))
      {
        v17 = *v10;
        v18 = *v10;
        if (*(v10 + 20))
        {
          if (!strcasecmp(v16, v18))
          {
            break;
          }

          goto LABEL_18;
        }

        if (!strcmp(v16, v18))
        {
          break;
        }
      }

LABEL_18:
      v12 += 72;
      if (!--v9)
      {
        goto LABEL_22;
      }
    }

    v19 = strlen(v17);
    v8 += v19 + 3;
    if (v8 > v115)
    {
      return 1;
    }

    v20 = v19 + 1;
    memcpy(__dst, v17, v19 + 1);
    v21 = &__dst[v20];
    *v21 = ((4 * (*(v10 + 8) & 3)) | (16 * *(v10 + 16)) | *(v10 + 20) & 1) + 16;
    v21[1] = *(v10 + 12);
    __dst += v20 + 2;
    v6 = a1[10];
LABEL_22:
    ++v7;
  }

  while (v7 < v6);
  if (v8 >> 16)
  {
    return 1;
  }

LABEL_26:
  v117[5].i16[4] = v8;
  v22 = v8 + 88;
  if (v8 + 88 >= *(*a1 + 176))
  {
    return 1;
  }

  v23 = a1[11];
  v24 = a1[13];
  v117->i64[0] = 2;
  v117[5].i64[0] = *(a1 + 4);
  sub_29AB2F6A8(a1);
  v25 = *(a1 + 10);
  if (v25 >= 1)
  {
    v26 = a1[6];
    v27 = (v25 + 3) & 0xFFFFFFFC;
    v28 = xmmword_29B433E10;
    v29 = xmmword_29B430070;
    v30 = vdupq_n_s64(v25 - 1);
    v31 = vdupq_n_s64(4uLL);
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, v29));
      if (vuzp1_s16(v32, *v28.i8).u8[0])
      {
        v26[136] = 0;
      }

      if (vuzp1_s16(v32, *&v28).i8[2])
      {
        v26[280] = 0;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v30, *&v28))).i32[1])
      {
        v26[424] = 0;
        v26[568] = 0;
      }

      v28 = vaddq_s64(v28, v31);
      v29 = vaddq_s64(v29, v31);
      v26 += 576;
      v27 -= 4;
    }

    while (v27);
  }

  v33 = *(a1 + 7);
  v34 = *(a1 + 9);
  if (v33 <= v34)
  {
    v70 = *(*a1 + 96);
    do
    {
      if (v25 >= 1)
      {
        v71 = 0;
        v72 = 448;
        do
        {
          v73 = a1[6] + v72;
          v74 = *v73;
          if (!(v33 % *(*v73 + 20)))
          {
            if (sub_29AB2F7CC(a1[23], a1[24], (v73 - 448), v70))
            {
              return 1;
            }

            v70 += *(v74 + 12) * *(v74 + 25);
            LODWORD(v25) = *(a1 + 10);
          }

          ++v71;
          v72 += 576;
        }

        while (v71 < v25);
        v34 = *(a1 + 9);
      }
    }

    while (v33++ < v34);
  }

  v116 = v22;
  if (*(a1 + 11) < 1)
  {
LABEL_41:
    v44 = *(a1 + 10);
    v45 = v117;
    if (v44 >= 1)
    {
      v46 = 0;
      v47 = 504;
      while (1)
      {
        v48 = a1[6];
        v49 = v48 + 576 * v46;
        if (!*(v49 + 544))
        {
          break;
        }

LABEL_70:
        ++v46;
        v47 += 576;
        if (v46 >= v44)
        {
          goto LABEL_71;
        }
      }

      v50 = *(v49 + 448);
      v51 = *(v49 + 548);
      switch(v51)
      {
        case 0:
          if (*(v49 + 408))
          {
            v65 = 0;
            v66 = *(v50 + 25) * *(v50 + 12);
            v67 = *(v49 + 464);
            do
            {
              memcpy(v67, *(*(v49 + 392) + 8 * v65), v66);
              v67 = (*(v49 + 464) + v66);
              *(v49 + 464) = v67;
              ++v65;
            }

            while (v65 < *(v49 + 408));
          }

          v45 = v117;
          v117->i64[1] += *(v49 + 536);
          goto LABEL_69;
        case 1:
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          memset(v119, 0, sizeof(v119));
          if (*(v50 + 24))
          {
            v62 = 0;
          }

          else
          {
            v62 = &dwaCompressorToNonlinear;
          }

          sub_29AB30484(v119, v23, v24, v62, *(v50 + 12), *(v50 + 8), *(a1 + 51) / 100000.0);
          v119[1].i64[1] = v49;
          v2 = 1;
          LODWORD(v121) = 1;
          v63 = sub_29AB2F880(a1[23], a1[24], v119);
          v64 = *(v119 + 8);
          v117[4] = vaddq_s64(*(v119 + 8), v117[4]);
          if (v63)
          {
            return v2;
          }

          v23 += 2 * v64;
          v24 += 2 * *(&v64 + 1);
          break;
        case 2:
          v52 = *(v49 + 408);
          if (v52)
          {
            v53 = 0;
            v54 = *(v50 + 12);
            LOBYTE(v55) = *(v50 + 25);
            v56 = v48 + v47;
            v45 = v117;
            do
            {
              if (v54 >= 1)
              {
                v57 = 0;
                v58 = *(*(v49 + 392) + 8 * v53);
                do
                {
                  if (v55 >= 1)
                  {
                    v59 = 0;
                    do
                    {
                      v60 = *(v58 + v59);
                      v61 = *(v56 + 8 * v59);
                      *(v56 + 8 * v59) = v61 + 1;
                      *v61 = v60;
                      ++v59;
                      v55 = *(v50 + 25);
                    }

                    while (v59 < v55);
                    v54 = *(v50 + 12);
                    v58 += v59;
                  }

                  ++v57;
                }

                while (v57 < v54);
                v52 = *(v49 + 408);
              }

              v117[3].i64[1] += v55 * v54;
              ++v53;
            }

            while (v53 < v52);
            goto LABEL_69;
          }

          break;
        default:
          return 3;
      }

      v45 = v117;
LABEL_69:
      *(v49 + 544) = 1;
      v44 = *(a1 + 10);
      goto LABEL_70;
    }

LABEL_71:
    v68 = v45[1];
    if (v68)
    {
      v119[0].i64[0] = 0;
      if ((v68 + 4999) >> 3 >= 0x271)
      {
        v69 = 5 * ((v68 + 4999) / 0x1388);
      }

      else
      {
        v69 = 5;
      }

      v78 = v68 + v69 + 15;
      v79 = v78 + 9;
      if ((130 * v68) >> 7 > v78 + 9)
      {
        v79 = (130 * v68) >> 7;
      }

      if (130 * v68 >= v68)
      {
        v80 = v79;
      }

      else
      {
        v80 = -1;
      }

      if (v78 <= 0xFFFFFFFFFFFFFFF6)
      {
        v81 = v80;
      }

      else
      {
        v81 = -1;
      }

      if (sub_29AB28158(*(*a1 + 16), 9u, a1[17], v68, __dst, v81, v119))
      {
        return 1;
      }

      v82 = v119[0].i64[0];
      v76 = &__dst[v119[0].i64[0]];
      v45[2] = v119[0].i64[0];
      v77 = v82 + v116;
    }

    else
    {
      v76 = __dst;
      v77 = v116;
    }

    v83 = v45[8];
    if (v83)
    {
      v84 = *(a1 + 4);
      if (v84 == 1)
      {
        v87 = 2 * v83;
        v119[0].i64[0] = 0;
        v88 = 2 * v83 + 4999;
        if (v88 >> 3 >= 0x271)
        {
          v89 = 5 * (v88 / 0x1388);
        }

        else
        {
          v89 = 5;
        }

        v90 = v87 + v89 + 15;
        v91 = v90 + 9;
        if ((260 * v83) >> 7 > v90 + 9)
        {
          v91 = (260 * v83) >> 7;
        }

        if (260 * v83 >= v87)
        {
          v92 = v91;
        }

        else
        {
          v92 = -1;
        }

        if (v90 <= 0xFFFFFFFFFFFFFFF6)
        {
          v93 = v92;
        }

        else
        {
          v93 = -1;
        }

        if (sub_29AB28158(*(*a1 + 16), 9u, a1[11], v87, v76, v93, v119))
        {
          return 1;
        }

        v86 = v119[0].i64[0];
        v45[3] = v119[0].i64[0];
      }

      else
      {
        if (v84)
        {
          return 3;
        }

        v85 = sub_29AB2B444(v45 + 3, v76, v45 - v76 + v150, a1[11], v83, *(*a1 + 184), *(*a1 + 192));
        if (v85 == 4)
        {
          memcpy(*(*a1 + 160), *(*a1 + 96), *(*a1 + 112));
          v2 = 0;
          v97 = *a1;
          v98 = *(*a1 + 112);
          goto LABEL_152;
        }

        v2 = v85;
        if (v85)
        {
          return v2;
        }

        v45 = v117;
        v86 = v117[1].i64[1];
      }

      v76 += v86;
      v77 += v86;
    }

    v94 = v45[9];
    if (v94)
    {
      v119[0].i64[0] = 0;
      v95 = 2 * v94;
      v2 = sub_29AB26F38(*a1, 3, (*a1 + 184), (*a1 + 192), 2 * v94);
      if (v2)
      {
        return v2;
      }

      sub_29AB280E4(*(*a1 + 184), a1[13], 2 * v94);
      if ((v95 + 4999) >> 3 >= 0x271)
      {
        v96 = 5 * ((v95 + 4999) / 0x1388);
      }

      else
      {
        v96 = 5;
      }

      v45 = v117;
      v99 = v95 + v96 + 15;
      v100 = v99 + 9;
      if ((260 * v94) >> 7 > v99 + 9)
      {
        v100 = (260 * v94) >> 7;
      }

      if (260 * v94 >= v95)
      {
        v101 = v100;
      }

      else
      {
        v101 = -1;
      }

      if (v99 <= 0xFFFFFFFFFFFFFFF6)
      {
        v102 = v101;
      }

      else
      {
        v102 = -1;
      }

      if (sub_29AB28158(*(*a1 + 16), *(a1 + 50), *(*a1 + 184), 2 * v94, v76, v102, v119))
      {
        return 1;
      }

      v103 = v119[0].i64[0];
      v117[2].i64[0] = v119[0].i64[0];
      v76 += v103;
      v77 += v103;
    }

    v104 = v45[7];
    if (!v104)
    {
LABEL_147:
      v112 = *a1;
      v113 = *(*a1 + 160);
      if (v77 != v76 - v113)
      {
        return 23;
      }

      v114 = *(v112 + 104);
      if (v77 < v114)
      {
        v2 = 0;
        *(v112 + 168) = v77;
        return v2;
      }

      memcpy(v113, *(v112 + 96), v114);
      v2 = 0;
      v97 = *a1;
      v98 = *(*a1 + 104);
LABEL_152:
      *(v97 + 168) = v98;
      return v2;
    }

    v119[0].i64[0] = 0;
    v105 = sub_29AB27E8C(a1[15], a1[16], a1[19], v104);
    v45[6] = v105;
    if ((v105 + 4999) >> 3 >= 0x271)
    {
      v106 = 5 * ((v105 + 4999) / 0x1388);
    }

    else
    {
      v106 = 5;
    }

    v107 = v105 + v106 + 15;
    v108 = v107 + 9;
    if ((130 * v105) >> 7 > v107 + 9)
    {
      v108 = (130 * v105) >> 7;
    }

    if (130 * v105 >= v105)
    {
      v109 = v108;
    }

    else
    {
      v109 = -1;
    }

    if (v107 <= 0xFFFFFFFFFFFFFFF6)
    {
      v110 = v109;
    }

    else
    {
      v110 = -1;
    }

    if (!sub_29AB28158(*(*a1 + 16), 9u, a1[15], v105, v76, v110, v119))
    {
      v111 = v119[0].i64[0];
      v45[5] = v119[0].i64[0];
      v76 += v111;
      v77 += v111;
      goto LABEL_147;
    }

    return 1;
  }

  v35 = 0;
  v36 = 0;
  v37 = a1[6];
  while (1)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    memset(v119, 0, sizeof(v119));
    v38 = (a1[7] + v35);
    v39 = v37 + 576 * *v38;
    v40 = v37 + 576 * v38[1];
    v41 = v37 + 576 * v38[2];
    sub_29AB30484(v119, v23, v24, &dwaCompressorToNonlinear, *(*(v39 + 448) + 12), *(*(v39 + 448) + 8), *(a1 + 51) / 100000.0);
    v119[1].i64[1] = v39;
    *&v120 = v40;
    *(&v120 + 1) = v41;
    LODWORD(v121) = 3;
    v42 = sub_29AB2F880(a1[23], a1[24], v119);
    v43 = *(v119 + 8);
    v117[4] = vaddq_s64(*(v119 + 8), v117[4]);
    v37 = a1[6];
    v2 = 1;
    *(v37 + 576 * *v38 + 544) = 1;
    *(v37 + 576 * v38[1] + 544) = 1;
    *(v37 + 576 * v38[2] + 544) = 1;
    if (v42)
    {
      return v2;
    }

    v24 += 2 * *(&v43 + 1);
    v23 += 2 * v43;
    ++v36;
    v35 += 12;
    if (v36 >= *(a1 + 11))
    {
      goto LABEL_41;
    }
  }
}

uint64_t sub_29AB2D4D8(uint64_t a1)
{
  if (*(a1 + 88))
  {
    (*(a1 + 192))();
  }

  if (*(a1 + 104))
  {
    (*(a1 + 192))();
  }

  if (*(a1 + 120))
  {
    (*(a1 + 192))();
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 392;
      do
      {
        if (*(*(a1 + 48) + v5))
        {
          (*(a1 + 192))();
          v3 = *(a1 + 40);
        }

        ++v4;
        v5 += 576;
      }

      while (v4 < v3);
      v2 = *(a1 + 64);
    }

    (*(a1 + 192))(v2);
  }

  if (*(a1 + 56))
  {
    (*(a1 + 192))();
  }

  v6 = *(a1 + 72);
  if (v6 != &off_2A14F9048 && v6 != &off_2A14F92A0)
  {
    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i < v7; ++i)
      {
        v10 = *(a1 + 72);
        if (*(v10 + v8) && !*(v10 + v8 + 22))
        {
          (*(a1 + 192))();
          v7 = *(a1 + 80);
        }

        v8 += 24;
      }

      v6 = *(a1 + 72);
    }

    (*(a1 + 192))(v6);
  }

  for (j = 0; j != 24; j += 8)
  {
    result = *(a1 + 136 + j);
    if (result)
    {
      result = (*(a1 + 192))();
    }
  }

  return result;
}

float16x8_t *sub_29AB2D628(float16x8_t *result, float32x4_t *a2)
{
  v2 = -8;
  do
  {
    v3 = *a2;
    v4 = a2[1];
    a2 += 2;
    *result++ = vcvt_hight_f16_f32(vcvt_f16_f32(v3), v4);
    v2 += 8;
  }

  while (v2 < 0x38);
  return result;
}

float32x4_t sub_29AB2D64C(const char *a1, uint64_t a2)
{
  v2 = 0;
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  do
  {
    v18 = vld2q_s8(a1);
    a1 += 32;
    v17.val[v2] = v18.val[0];
    v16.val[v2++] = v18.val[1];
  }

  while (v2 != 4);
  v19 = v17;
  v20 = v16;
  v3 = vqtbl4q_s8(v17, xmmword_29B4E1870);
  v4 = vqtbl4q_s8(v16, xmmword_29B4E1870);
  v5 = vzip1q_s8(v3, v4);
  v6 = vzip2q_s8(v3, v4);
  *a2 = vcvtq_f32_f16(*v5.i8);
  *(a2 + 16) = vcvtq_f32_f16(*&vextq_s8(v5, v5, 8uLL));
  *(a2 + 32) = vcvtq_f32_f16(*v6.i8);
  *(a2 + 48) = vcvtq_f32_f16(*&vextq_s8(v6, v6, 8uLL));
  v7 = vqtbl4q_s8(v19, xmmword_29B4E1880);
  v8 = vqtbl4q_s8(v20, xmmword_29B4E1880);
  v9 = vzip1q_s8(v7, v8);
  v10 = vzip2q_s8(v7, v8);
  *(a2 + 64) = vcvtq_f32_f16(*v9.i8);
  *(a2 + 80) = vcvtq_f32_f16(*&vextq_s8(v9, v9, 8uLL));
  *(a2 + 96) = vcvtq_f32_f16(*v10.i8);
  *(a2 + 112) = vcvtq_f32_f16(*&vextq_s8(v10, v10, 8uLL));
  v11 = vqtbl4q_s8(v19, xmmword_29B4E1890);
  v12 = vqtbl4q_s8(v20, xmmword_29B4E1890);
  v13 = vzip1q_s8(v11, v12);
  v14 = vzip2q_s8(v11, v12);
  *(a2 + 128) = vcvtq_f32_f16(*v13.i8);
  *(a2 + 144) = vcvtq_f32_f16(*&vextq_s8(v13, v13, 8uLL));
  *(a2 + 160) = vcvtq_f32_f16(*v14.i8);
  *(a2 + 176) = vcvtq_f32_f16(*&vextq_s8(v14, v14, 8uLL));
  v19.val[0] = vqtbl4q_s8(v19, xmmword_29B4E18A0);
  v19.val[1] = vqtbl4q_s8(v20, xmmword_29B4E18A0);
  v19.val[2] = vzip1q_s8(v19.val[0], v19.val[1]);
  v19.val[0] = vzip2q_s8(v19.val[0], v19.val[1]);
  *(a2 + 192) = vcvtq_f32_f16(*v19.val[2].i8);
  *(a2 + 208) = vcvtq_f32_f16(*&vextq_s8(v19.val[2], v19.val[2], 8uLL));
  v19.val[1] = vcvtq_f32_f16(*v19.val[0].i8);
  result = vcvtq_f32_f16(*&vextq_s8(v19.val[0], v19.val[0], 8uLL));
  *(a2 + 224) = v19.val[1];
  *(a2 + 240) = result;
  return result;
}

uint64_t sub_29AB2D780(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; ++i)
  {
    v3 = *(a2 + 4 * i);
    v4 = v3 & 0x7FFFFFFF;
    v5 = HIWORD(v3);
    v6 = HIWORD(v3) & 0x8000;
    if ((v3 >> 23) < 0x71u)
    {
      if (v4 >= 0x33000001)
      {
        v8 = 126 - (v4 >> 23);
        v9 = v4 & 0x7FFFFF | 0x800000;
        v10 = v9 << ((v4 >> 23) - 94);
        v11 = v9 >> v8;
        LOWORD(v6) = v11 | v5 & 0x8000;
        if (v10 > 0x80000000 || (v10 == 0x80000000 ? (v12 = (v11 & 1) == 0) : (v12 = 1), !v12))
        {
          LOWORD(v6) = v6 + 1;
        }
      }
    }

    else
    {
      v7 = v6 | ((v4 + ((v4 >> 13) & 1) + 134221823) >> 13);
      v6 |= 0x7C00u;
      if (v4 >= 0x477FF000)
      {
        LOWORD(v7) = v6;
      }

      if (v4 != 2139095040)
      {
        v6 |= (v4 >> 13) & 0x3FF | (((v4 >> 13) & 0x3FF) == 0);
      }

      if (v4 >> 23 < 0xFF)
      {
        LOWORD(v6) = v7;
      }
    }

    *(result + 2 * i) = v6;
  }

  return result;
}

__int16 *sub_29AB2D868(__int16 *result, int *a2)
{
  v2 = *result;
  v3 = (v2 & 0x7FFF) << 13;
  v4 = v2 & 0x80000000;
  if (v3 < 0x800000)
  {
    if (v3)
    {
      v258 = __clz(v3) - 8;
      v4 = (v4 | 0x38800000 | (v3 << v258)) - (v258 << 23);
    }
  }

  else
  {
    v5 = v3 | v4;
    if (v3 >> 23 > 0x1E)
    {
      v4 = v5 | 0x7F800000;
    }

    else
    {
      v4 = v5 + 939524096;
    }
  }

  *a2 = v4;
  v6 = result[1];
  v7 = (v6 & 0x7FFF) << 13;
  v8 = v6 & 0x80000000;
  if (v7 < 0x800000)
  {
    if (v7)
    {
      v259 = __clz(v7) - 8;
      v8 = (v8 | 0x38800000 | (v7 << v259)) - (v259 << 23);
    }
  }

  else
  {
    v9 = v7 | v8;
    if (v7 >> 23 > 0x1E)
    {
      v8 = v9 | 0x7F800000;
    }

    else
    {
      v8 = v9 + 939524096;
    }
  }

  a2[1] = v8;
  v10 = result[5];
  v11 = (v10 & 0x7FFF) << 13;
  v12 = v10 & 0x80000000;
  if (v11 < 0x800000)
  {
    if (v11)
    {
      v260 = __clz(v11) - 8;
      v12 = (v12 | 0x38800000 | (v11 << v260)) - (v260 << 23);
    }
  }

  else
  {
    v13 = v11 | v12;
    if (v11 >> 23 > 0x1E)
    {
      v12 = v13 | 0x7F800000;
    }

    else
    {
      v12 = v13 + 939524096;
    }
  }

  a2[2] = v12;
  v14 = result[6];
  v15 = (v14 & 0x7FFF) << 13;
  v16 = v14 & 0x80000000;
  if (v15 < 0x800000)
  {
    if (v15)
    {
      v261 = __clz(v15) - 8;
      v16 = (v16 | 0x38800000 | (v15 << v261)) - (v261 << 23);
    }
  }

  else
  {
    v17 = v15 | v16;
    if (v15 >> 23 > 0x1E)
    {
      v16 = v17 | 0x7F800000;
    }

    else
    {
      v16 = v17 + 939524096;
    }
  }

  a2[3] = v16;
  v18 = result[14];
  v19 = (v18 & 0x7FFF) << 13;
  v20 = v18 & 0x80000000;
  if (v19 < 0x800000)
  {
    if (v19)
    {
      v262 = __clz(v19) - 8;
      v20 = (v20 | 0x38800000 | (v19 << v262)) - (v262 << 23);
    }
  }

  else
  {
    v21 = v19 | v20;
    if (v19 >> 23 > 0x1E)
    {
      v20 = v21 | 0x7F800000;
    }

    else
    {
      v20 = v21 + 939524096;
    }
  }

  a2[4] = v20;
  v22 = result[15];
  v23 = (v22 & 0x7FFF) << 13;
  v24 = v22 & 0x80000000;
  if (v23 < 0x800000)
  {
    if (v23)
    {
      v263 = __clz(v23) - 8;
      v24 = (v24 | 0x38800000 | (v23 << v263)) - (v263 << 23);
    }
  }

  else
  {
    v25 = v23 | v24;
    if (v23 >> 23 > 0x1E)
    {
      v24 = v25 | 0x7F800000;
    }

    else
    {
      v24 = v25 + 939524096;
    }
  }

  a2[5] = v24;
  v26 = result[27];
  v27 = (v26 & 0x7FFF) << 13;
  v28 = v26 & 0x80000000;
  if (v27 < 0x800000)
  {
    if (v27)
    {
      v264 = __clz(v27) - 8;
      v28 = (v28 | 0x38800000 | (v27 << v264)) - (v264 << 23);
    }
  }

  else
  {
    v29 = v27 | v28;
    if (v27 >> 23 > 0x1E)
    {
      v28 = v29 | 0x7F800000;
    }

    else
    {
      v28 = v29 + 939524096;
    }
  }

  a2[6] = v28;
  v30 = result[28];
  v31 = (v30 & 0x7FFF) << 13;
  v32 = v30 & 0x80000000;
  if (v31 < 0x800000)
  {
    if (v31)
    {
      v265 = __clz(v31) - 8;
      v32 = (v32 | 0x38800000 | (v31 << v265)) - (v265 << 23);
    }
  }

  else
  {
    v33 = v31 | v32;
    if (v31 >> 23 > 0x1E)
    {
      v32 = v33 | 0x7F800000;
    }

    else
    {
      v32 = v33 + 939524096;
    }
  }

  a2[7] = v32;
  v34 = result[2];
  v35 = (v34 & 0x7FFF) << 13;
  v36 = v34 & 0x80000000;
  if (v35 < 0x800000)
  {
    if (v35)
    {
      v266 = __clz(v35) - 8;
      v36 = (v36 | 0x38800000 | (v35 << v266)) - (v266 << 23);
    }
  }

  else
  {
    v37 = v35 | v36;
    if (v35 >> 23 > 0x1E)
    {
      v36 = v37 | 0x7F800000;
    }

    else
    {
      v36 = v37 + 939524096;
    }
  }

  a2[8] = v36;
  v38 = result[4];
  v39 = (v38 & 0x7FFF) << 13;
  v40 = v38 & 0x80000000;
  if (v39 < 0x800000)
  {
    if (v39)
    {
      v267 = __clz(v39) - 8;
      v40 = (v40 | 0x38800000 | (v39 << v267)) - (v267 << 23);
    }
  }

  else
  {
    v41 = v39 | v40;
    if (v39 >> 23 > 0x1E)
    {
      v40 = v41 | 0x7F800000;
    }

    else
    {
      v40 = v41 + 939524096;
    }
  }

  a2[9] = v40;
  v42 = result[7];
  v43 = (v42 & 0x7FFF) << 13;
  v44 = v42 & 0x80000000;
  if (v43 < 0x800000)
  {
    if (v43)
    {
      v268 = __clz(v43) - 8;
      v44 = (v44 | 0x38800000 | (v43 << v268)) - (v268 << 23);
    }
  }

  else
  {
    v45 = v43 | v44;
    if (v43 >> 23 > 0x1E)
    {
      v44 = v45 | 0x7F800000;
    }

    else
    {
      v44 = v45 + 939524096;
    }
  }

  a2[10] = v44;
  v46 = result[13];
  v47 = (v46 & 0x7FFF) << 13;
  v48 = v46 & 0x80000000;
  if (v47 < 0x800000)
  {
    if (v47)
    {
      v269 = __clz(v47) - 8;
      v48 = (v48 | 0x38800000 | (v47 << v269)) - (v269 << 23);
    }
  }

  else
  {
    v49 = v47 | v48;
    if (v47 >> 23 > 0x1E)
    {
      v48 = v49 | 0x7F800000;
    }

    else
    {
      v48 = v49 + 939524096;
    }
  }

  a2[11] = v48;
  v50 = result[16];
  v51 = (v50 & 0x7FFF) << 13;
  v52 = v50 & 0x80000000;
  if (v51 < 0x800000)
  {
    if (v51)
    {
      v270 = __clz(v51) - 8;
      v52 = (v52 | 0x38800000 | (v51 << v270)) - (v270 << 23);
    }
  }

  else
  {
    v53 = v51 | v52;
    if (v51 >> 23 > 0x1E)
    {
      v52 = v53 | 0x7F800000;
    }

    else
    {
      v52 = v53 + 939524096;
    }
  }

  a2[12] = v52;
  v54 = result[26];
  v55 = (v54 & 0x7FFF) << 13;
  v56 = v54 & 0x80000000;
  if (v55 < 0x800000)
  {
    if (v55)
    {
      v271 = __clz(v55) - 8;
      v56 = (v56 | 0x38800000 | (v55 << v271)) - (v271 << 23);
    }
  }

  else
  {
    v57 = v55 | v56;
    if (v55 >> 23 > 0x1E)
    {
      v56 = v57 | 0x7F800000;
    }

    else
    {
      v56 = v57 + 939524096;
    }
  }

  a2[13] = v56;
  v58 = result[29];
  v59 = (v58 & 0x7FFF) << 13;
  v60 = v58 & 0x80000000;
  if (v59 < 0x800000)
  {
    if (v59)
    {
      v272 = __clz(v59) - 8;
      v60 = (v60 | 0x38800000 | (v59 << v272)) - (v272 << 23);
    }
  }

  else
  {
    v61 = v59 | v60;
    if (v59 >> 23 > 0x1E)
    {
      v60 = v61 | 0x7F800000;
    }

    else
    {
      v60 = v61 + 939524096;
    }
  }

  a2[14] = v60;
  v62 = result[42];
  v63 = (v62 & 0x7FFF) << 13;
  v64 = v62 & 0x80000000;
  if (v63 < 0x800000)
  {
    if (v63)
    {
      v273 = __clz(v63) - 8;
      v64 = (v64 | 0x38800000 | (v63 << v273)) - (v273 << 23);
    }
  }

  else
  {
    v65 = v63 | v64;
    if (v63 >> 23 > 0x1E)
    {
      v64 = v65 | 0x7F800000;
    }

    else
    {
      v64 = v65 + 939524096;
    }
  }

  a2[15] = v64;
  v66 = result[3];
  v67 = (v66 & 0x7FFF) << 13;
  v68 = v66 & 0x80000000;
  if (v67 < 0x800000)
  {
    if (v67)
    {
      v274 = __clz(v67) - 8;
      v68 = (v68 | 0x38800000 | (v67 << v274)) - (v274 << 23);
    }
  }

  else
  {
    v69 = v67 | v68;
    if (v67 >> 23 > 0x1E)
    {
      v68 = v69 | 0x7F800000;
    }

    else
    {
      v68 = v69 + 939524096;
    }
  }

  a2[16] = v68;
  v70 = result[8];
  v71 = (v70 & 0x7FFF) << 13;
  v72 = v70 & 0x80000000;
  if (v71 < 0x800000)
  {
    if (v71)
    {
      v275 = __clz(v71) - 8;
      v72 = (v72 | 0x38800000 | (v71 << v275)) - (v275 << 23);
    }
  }

  else
  {
    v73 = v71 | v72;
    if (v71 >> 23 > 0x1E)
    {
      v72 = v73 | 0x7F800000;
    }

    else
    {
      v72 = v73 + 939524096;
    }
  }

  a2[17] = v72;
  v74 = result[12];
  v75 = (v74 & 0x7FFF) << 13;
  v76 = v74 & 0x80000000;
  if (v75 < 0x800000)
  {
    if (v75)
    {
      v276 = __clz(v75) - 8;
      v76 = (v76 | 0x38800000 | (v75 << v276)) - (v276 << 23);
    }
  }

  else
  {
    v77 = v75 | v76;
    if (v75 >> 23 > 0x1E)
    {
      v76 = v77 | 0x7F800000;
    }

    else
    {
      v76 = v77 + 939524096;
    }
  }

  a2[18] = v76;
  v78 = result[17];
  v79 = (v78 & 0x7FFF) << 13;
  v80 = v78 & 0x80000000;
  if (v79 < 0x800000)
  {
    if (v79)
    {
      v277 = __clz(v79) - 8;
      v80 = (v80 | 0x38800000 | (v79 << v277)) - (v277 << 23);
    }
  }

  else
  {
    v81 = v79 | v80;
    if (v79 >> 23 > 0x1E)
    {
      v80 = v81 | 0x7F800000;
    }

    else
    {
      v80 = v81 + 939524096;
    }
  }

  a2[19] = v80;
  v82 = result[25];
  v83 = (v82 & 0x7FFF) << 13;
  v84 = v82 & 0x80000000;
  if (v83 < 0x800000)
  {
    if (v83)
    {
      v278 = __clz(v83) - 8;
      v84 = (v84 | 0x38800000 | (v83 << v278)) - (v278 << 23);
    }
  }

  else
  {
    v85 = v83 | v84;
    if (v83 >> 23 > 0x1E)
    {
      v84 = v85 | 0x7F800000;
    }

    else
    {
      v84 = v85 + 939524096;
    }
  }

  a2[20] = v84;
  v86 = result[30];
  v87 = (v86 & 0x7FFF) << 13;
  v88 = v86 & 0x80000000;
  if (v87 < 0x800000)
  {
    if (v87)
    {
      v279 = __clz(v87) - 8;
      v88 = (v88 | 0x38800000 | (v87 << v279)) - (v279 << 23);
    }
  }

  else
  {
    v89 = v87 | v88;
    if (v87 >> 23 > 0x1E)
    {
      v88 = v89 | 0x7F800000;
    }

    else
    {
      v88 = v89 + 939524096;
    }
  }

  a2[21] = v88;
  v90 = result[41];
  v91 = (v90 & 0x7FFF) << 13;
  v92 = v90 & 0x80000000;
  if (v91 < 0x800000)
  {
    if (v91)
    {
      v280 = __clz(v91) - 8;
      v92 = (v92 | 0x38800000 | (v91 << v280)) - (v280 << 23);
    }
  }

  else
  {
    v93 = v91 | v92;
    if (v91 >> 23 > 0x1E)
    {
      v92 = v93 | 0x7F800000;
    }

    else
    {
      v92 = v93 + 939524096;
    }
  }

  a2[22] = v92;
  v94 = result[43];
  v95 = (v94 & 0x7FFF) << 13;
  v96 = v94 & 0x80000000;
  if (v95 < 0x800000)
  {
    if (v95)
    {
      v281 = __clz(v95) - 8;
      v96 = (v96 | 0x38800000 | (v95 << v281)) - (v281 << 23);
    }
  }

  else
  {
    v97 = v95 | v96;
    if (v95 >> 23 > 0x1E)
    {
      v96 = v97 | 0x7F800000;
    }

    else
    {
      v96 = v97 + 939524096;
    }
  }

  a2[23] = v96;
  v98 = result[9];
  v99 = (v98 & 0x7FFF) << 13;
  v100 = v98 & 0x80000000;
  if (v99 < 0x800000)
  {
    if (v99)
    {
      v282 = __clz(v99) - 8;
      v100 = (v100 | 0x38800000 | (v99 << v282)) - (v282 << 23);
    }
  }

  else
  {
    v101 = v99 | v100;
    if (v99 >> 23 > 0x1E)
    {
      v100 = v101 | 0x7F800000;
    }

    else
    {
      v100 = v101 + 939524096;
    }
  }

  a2[24] = v100;
  v102 = result[11];
  v103 = (v102 & 0x7FFF) << 13;
  v104 = v102 & 0x80000000;
  if (v103 < 0x800000)
  {
    if (v103)
    {
      v283 = __clz(v103) - 8;
      v104 = (v104 | 0x38800000 | (v103 << v283)) - (v283 << 23);
    }
  }

  else
  {
    v105 = v103 | v104;
    if (v103 >> 23 > 0x1E)
    {
      v104 = v105 | 0x7F800000;
    }

    else
    {
      v104 = v105 + 939524096;
    }
  }

  a2[25] = v104;
  v106 = result[18];
  v107 = (v106 & 0x7FFF) << 13;
  v108 = v106 & 0x80000000;
  if (v107 < 0x800000)
  {
    if (v107)
    {
      v284 = __clz(v107) - 8;
      v108 = (v108 | 0x38800000 | (v107 << v284)) - (v284 << 23);
    }
  }

  else
  {
    v109 = v107 | v108;
    if (v107 >> 23 > 0x1E)
    {
      v108 = v109 | 0x7F800000;
    }

    else
    {
      v108 = v109 + 939524096;
    }
  }

  a2[26] = v108;
  v110 = result[24];
  v111 = (v110 & 0x7FFF) << 13;
  v112 = v110 & 0x80000000;
  if (v111 < 0x800000)
  {
    if (v111)
    {
      v285 = __clz(v111) - 8;
      v112 = (v112 | 0x38800000 | (v111 << v285)) - (v285 << 23);
    }
  }

  else
  {
    v113 = v111 | v112;
    if (v111 >> 23 > 0x1E)
    {
      v112 = v113 | 0x7F800000;
    }

    else
    {
      v112 = v113 + 939524096;
    }
  }

  a2[27] = v112;
  v114 = result[31];
  v115 = (v114 & 0x7FFF) << 13;
  v116 = v114 & 0x80000000;
  if (v115 < 0x800000)
  {
    if (v115)
    {
      v286 = __clz(v115) - 8;
      v116 = (v116 | 0x38800000 | (v115 << v286)) - (v286 << 23);
    }
  }

  else
  {
    v117 = v115 | v116;
    if (v115 >> 23 > 0x1E)
    {
      v116 = v117 | 0x7F800000;
    }

    else
    {
      v116 = v117 + 939524096;
    }
  }

  a2[28] = v116;
  v118 = result[40];
  v119 = (v118 & 0x7FFF) << 13;
  v120 = v118 & 0x80000000;
  if (v119 < 0x800000)
  {
    if (v119)
    {
      v287 = __clz(v119) - 8;
      v120 = (v120 | 0x38800000 | (v119 << v287)) - (v287 << 23);
    }
  }

  else
  {
    v121 = v119 | v120;
    if (v119 >> 23 > 0x1E)
    {
      v120 = v121 | 0x7F800000;
    }

    else
    {
      v120 = v121 + 939524096;
    }
  }

  a2[29] = v120;
  v122 = result[44];
  v123 = (v122 & 0x7FFF) << 13;
  v124 = v122 & 0x80000000;
  if (v123 < 0x800000)
  {
    if (v123)
    {
      v288 = __clz(v123) - 8;
      v124 = (v124 | 0x38800000 | (v123 << v288)) - (v288 << 23);
    }
  }

  else
  {
    v125 = v123 | v124;
    if (v123 >> 23 > 0x1E)
    {
      v124 = v125 | 0x7F800000;
    }

    else
    {
      v124 = v125 + 939524096;
    }
  }

  a2[30] = v124;
  v126 = result[53];
  v127 = (v126 & 0x7FFF) << 13;
  v128 = v126 & 0x80000000;
  if (v127 < 0x800000)
  {
    if (v127)
    {
      v289 = __clz(v127) - 8;
      v128 = (v128 | 0x38800000 | (v127 << v289)) - (v289 << 23);
    }
  }

  else
  {
    v129 = v127 | v128;
    if (v127 >> 23 > 0x1E)
    {
      v128 = v129 | 0x7F800000;
    }

    else
    {
      v128 = v129 + 939524096;
    }
  }

  a2[31] = v128;
  v130 = result[10];
  v131 = (v130 & 0x7FFF) << 13;
  v132 = v130 & 0x80000000;
  if (v131 < 0x800000)
  {
    if (v131)
    {
      v290 = __clz(v131) - 8;
      v132 = (v132 | 0x38800000 | (v131 << v290)) - (v290 << 23);
    }
  }

  else
  {
    v133 = v131 | v132;
    if (v131 >> 23 > 0x1E)
    {
      v132 = v133 | 0x7F800000;
    }

    else
    {
      v132 = v133 + 939524096;
    }
  }

  a2[32] = v132;
  v134 = result[19];
  v135 = (v134 & 0x7FFF) << 13;
  v136 = v134 & 0x80000000;
  if (v135 < 0x800000)
  {
    if (v135)
    {
      v291 = __clz(v135) - 8;
      v136 = (v136 | 0x38800000 | (v135 << v291)) - (v291 << 23);
    }
  }

  else
  {
    v137 = v135 | v136;
    if (v135 >> 23 > 0x1E)
    {
      v136 = v137 | 0x7F800000;
    }

    else
    {
      v136 = v137 + 939524096;
    }
  }

  a2[33] = v136;
  v138 = result[23];
  v139 = (v138 & 0x7FFF) << 13;
  v140 = v138 & 0x80000000;
  if (v139 < 0x800000)
  {
    if (v139)
    {
      v292 = __clz(v139) - 8;
      v140 = (v140 | 0x38800000 | (v139 << v292)) - (v292 << 23);
    }
  }

  else
  {
    v141 = v139 | v140;
    if (v139 >> 23 > 0x1E)
    {
      v140 = v141 | 0x7F800000;
    }

    else
    {
      v140 = v141 + 939524096;
    }
  }

  a2[34] = v140;
  v142 = result[32];
  v143 = (v142 & 0x7FFF) << 13;
  v144 = v142 & 0x80000000;
  if (v143 < 0x800000)
  {
    if (v143)
    {
      v293 = __clz(v143) - 8;
      v144 = (v144 | 0x38800000 | (v143 << v293)) - (v293 << 23);
    }
  }

  else
  {
    v145 = v143 | v144;
    if (v143 >> 23 > 0x1E)
    {
      v144 = v145 | 0x7F800000;
    }

    else
    {
      v144 = v145 + 939524096;
    }
  }

  a2[35] = v144;
  v146 = result[39];
  v147 = (v146 & 0x7FFF) << 13;
  v148 = v146 & 0x80000000;
  if (v147 < 0x800000)
  {
    if (v147)
    {
      v294 = __clz(v147) - 8;
      v148 = (v148 | 0x38800000 | (v147 << v294)) - (v294 << 23);
    }
  }

  else
  {
    v149 = v147 | v148;
    if (v147 >> 23 > 0x1E)
    {
      v148 = v149 | 0x7F800000;
    }

    else
    {
      v148 = v149 + 939524096;
    }
  }

  a2[36] = v148;
  v150 = result[45];
  v151 = (v150 & 0x7FFF) << 13;
  v152 = v150 & 0x80000000;
  if (v151 < 0x800000)
  {
    if (v151)
    {
      v295 = __clz(v151) - 8;
      v152 = (v152 | 0x38800000 | (v151 << v295)) - (v295 << 23);
    }
  }

  else
  {
    v153 = v151 | v152;
    if (v151 >> 23 > 0x1E)
    {
      v152 = v153 | 0x7F800000;
    }

    else
    {
      v152 = v153 + 939524096;
    }
  }

  a2[37] = v152;
  v154 = result[52];
  v155 = (v154 & 0x7FFF) << 13;
  v156 = v154 & 0x80000000;
  if (v155 < 0x800000)
  {
    if (v155)
    {
      v296 = __clz(v155) - 8;
      v156 = (v156 | 0x38800000 | (v155 << v296)) - (v296 << 23);
    }
  }

  else
  {
    v157 = v155 | v156;
    if (v155 >> 23 > 0x1E)
    {
      v156 = v157 | 0x7F800000;
    }

    else
    {
      v156 = v157 + 939524096;
    }
  }

  a2[38] = v156;
  v158 = result[54];
  v159 = (v158 & 0x7FFF) << 13;
  v160 = v158 & 0x80000000;
  if (v159 < 0x800000)
  {
    if (v159)
    {
      v297 = __clz(v159) - 8;
      v160 = (v160 | 0x38800000 | (v159 << v297)) - (v297 << 23);
    }
  }

  else
  {
    v161 = v159 | v160;
    if (v159 >> 23 > 0x1E)
    {
      v160 = v161 | 0x7F800000;
    }

    else
    {
      v160 = v161 + 939524096;
    }
  }

  a2[39] = v160;
  v162 = result[20];
  v163 = (v162 & 0x7FFF) << 13;
  v164 = v162 & 0x80000000;
  if (v163 < 0x800000)
  {
    if (v163)
    {
      v298 = __clz(v163) - 8;
      v164 = (v164 | 0x38800000 | (v163 << v298)) - (v298 << 23);
    }
  }

  else
  {
    v165 = v163 | v164;
    if (v163 >> 23 > 0x1E)
    {
      v164 = v165 | 0x7F800000;
    }

    else
    {
      v164 = v165 + 939524096;
    }
  }

  a2[40] = v164;
  v166 = result[22];
  v167 = (v166 & 0x7FFF) << 13;
  v168 = v166 & 0x80000000;
  if (v167 < 0x800000)
  {
    if (v167)
    {
      v299 = __clz(v167) - 8;
      v168 = (v168 | 0x38800000 | (v167 << v299)) - (v299 << 23);
    }
  }

  else
  {
    v169 = v167 | v168;
    if (v167 >> 23 > 0x1E)
    {
      v168 = v169 | 0x7F800000;
    }

    else
    {
      v168 = v169 + 939524096;
    }
  }

  a2[41] = v168;
  v170 = result[33];
  v171 = (v170 & 0x7FFF) << 13;
  v172 = v170 & 0x80000000;
  if (v171 < 0x800000)
  {
    if (v171)
    {
      v300 = __clz(v171) - 8;
      v172 = (v172 | 0x38800000 | (v171 << v300)) - (v300 << 23);
    }
  }

  else
  {
    v173 = v171 | v172;
    if (v171 >> 23 > 0x1E)
    {
      v172 = v173 | 0x7F800000;
    }

    else
    {
      v172 = v173 + 939524096;
    }
  }

  a2[42] = v172;
  v174 = result[38];
  v175 = (v174 & 0x7FFF) << 13;
  v176 = v174 & 0x80000000;
  if (v175 < 0x800000)
  {
    if (v175)
    {
      v301 = __clz(v175) - 8;
      v176 = (v176 | 0x38800000 | (v175 << v301)) - (v301 << 23);
    }
  }

  else
  {
    v177 = v175 | v176;
    if (v175 >> 23 > 0x1E)
    {
      v176 = v177 | 0x7F800000;
    }

    else
    {
      v176 = v177 + 939524096;
    }
  }

  a2[43] = v176;
  v178 = result[46];
  v179 = (v178 & 0x7FFF) << 13;
  v180 = v178 & 0x80000000;
  if (v179 < 0x800000)
  {
    if (v179)
    {
      v302 = __clz(v179) - 8;
      v180 = (v180 | 0x38800000 | (v179 << v302)) - (v302 << 23);
    }
  }

  else
  {
    v181 = v179 | v180;
    if (v179 >> 23 > 0x1E)
    {
      v180 = v181 | 0x7F800000;
    }

    else
    {
      v180 = v181 + 939524096;
    }
  }

  a2[44] = v180;
  v182 = result[51];
  v183 = (v182 & 0x7FFF) << 13;
  v184 = v182 & 0x80000000;
  if (v183 < 0x800000)
  {
    if (v183)
    {
      v303 = __clz(v183) - 8;
      v184 = (v184 | 0x38800000 | (v183 << v303)) - (v303 << 23);
    }
  }

  else
  {
    v185 = v183 | v184;
    if (v183 >> 23 > 0x1E)
    {
      v184 = v185 | 0x7F800000;
    }

    else
    {
      v184 = v185 + 939524096;
    }
  }

  a2[45] = v184;
  v186 = result[55];
  v187 = (v186 & 0x7FFF) << 13;
  v188 = v186 & 0x80000000;
  if (v187 < 0x800000)
  {
    if (v187)
    {
      v304 = __clz(v187) - 8;
      v188 = (v188 | 0x38800000 | (v187 << v304)) - (v304 << 23);
    }
  }

  else
  {
    v189 = v187 | v188;
    if (v187 >> 23 > 0x1E)
    {
      v188 = v189 | 0x7F800000;
    }

    else
    {
      v188 = v189 + 939524096;
    }
  }

  a2[46] = v188;
  v190 = result[60];
  v191 = (v190 & 0x7FFF) << 13;
  v192 = v190 & 0x80000000;
  if (v191 < 0x800000)
  {
    if (v191)
    {
      v305 = __clz(v191) - 8;
      v192 = (v192 | 0x38800000 | (v191 << v305)) - (v305 << 23);
    }
  }

  else
  {
    v193 = v191 | v192;
    if (v191 >> 23 > 0x1E)
    {
      v192 = v193 | 0x7F800000;
    }

    else
    {
      v192 = v193 + 939524096;
    }
  }

  a2[47] = v192;
  v194 = result[21];
  v195 = (v194 & 0x7FFF) << 13;
  v196 = v194 & 0x80000000;
  if (v195 < 0x800000)
  {
    if (v195)
    {
      v306 = __clz(v195) - 8;
      v196 = (v196 | 0x38800000 | (v195 << v306)) - (v306 << 23);
    }
  }

  else
  {
    v197 = v195 | v196;
    if (v195 >> 23 > 0x1E)
    {
      v196 = v197 | 0x7F800000;
    }

    else
    {
      v196 = v197 + 939524096;
    }
  }

  a2[48] = v196;
  v198 = result[34];
  v199 = (v198 & 0x7FFF) << 13;
  v200 = v198 & 0x80000000;
  if (v199 < 0x800000)
  {
    if (v199)
    {
      v307 = __clz(v199) - 8;
      v200 = (v200 | 0x38800000 | (v199 << v307)) - (v307 << 23);
    }
  }

  else
  {
    v201 = v199 | v200;
    if (v199 >> 23 > 0x1E)
    {
      v200 = v201 | 0x7F800000;
    }

    else
    {
      v200 = v201 + 939524096;
    }
  }

  a2[49] = v200;
  v202 = result[37];
  v203 = (v202 & 0x7FFF) << 13;
  v204 = v202 & 0x80000000;
  if (v203 < 0x800000)
  {
    if (v203)
    {
      v308 = __clz(v203) - 8;
      v204 = (v204 | 0x38800000 | (v203 << v308)) - (v308 << 23);
    }
  }

  else
  {
    v205 = v203 | v204;
    if (v203 >> 23 > 0x1E)
    {
      v204 = v205 | 0x7F800000;
    }

    else
    {
      v204 = v205 + 939524096;
    }
  }

  a2[50] = v204;
  v206 = result[47];
  v207 = (v206 & 0x7FFF) << 13;
  v208 = v206 & 0x80000000;
  if (v207 < 0x800000)
  {
    if (v207)
    {
      v309 = __clz(v207) - 8;
      v208 = (v208 | 0x38800000 | (v207 << v309)) - (v309 << 23);
    }
  }

  else
  {
    v209 = v207 | v208;
    if (v207 >> 23 > 0x1E)
    {
      v208 = v209 | 0x7F800000;
    }

    else
    {
      v208 = v209 + 939524096;
    }
  }

  a2[51] = v208;
  v210 = result[50];
  v211 = (v210 & 0x7FFF) << 13;
  v212 = v210 & 0x80000000;
  if (v211 < 0x800000)
  {
    if (v211)
    {
      v310 = __clz(v211) - 8;
      v212 = (v212 | 0x38800000 | (v211 << v310)) - (v310 << 23);
    }
  }

  else
  {
    v213 = v211 | v212;
    if (v211 >> 23 > 0x1E)
    {
      v212 = v213 | 0x7F800000;
    }

    else
    {
      v212 = v213 + 939524096;
    }
  }

  a2[52] = v212;
  v214 = result[56];
  v215 = (v214 & 0x7FFF) << 13;
  v216 = v214 & 0x80000000;
  if (v215 < 0x800000)
  {
    if (v215)
    {
      v311 = __clz(v215) - 8;
      v216 = (v216 | 0x38800000 | (v215 << v311)) - (v311 << 23);
    }
  }

  else
  {
    v217 = v215 | v216;
    if (v215 >> 23 > 0x1E)
    {
      v216 = v217 | 0x7F800000;
    }

    else
    {
      v216 = v217 + 939524096;
    }
  }

  a2[53] = v216;
  v218 = result[59];
  v219 = (v218 & 0x7FFF) << 13;
  v220 = v218 & 0x80000000;
  if (v219 < 0x800000)
  {
    if (v219)
    {
      v312 = __clz(v219) - 8;
      v220 = (v220 | 0x38800000 | (v219 << v312)) - (v312 << 23);
    }
  }

  else
  {
    v221 = v219 | v220;
    if (v219 >> 23 > 0x1E)
    {
      v220 = v221 | 0x7F800000;
    }

    else
    {
      v220 = v221 + 939524096;
    }
  }

  a2[54] = v220;
  v222 = result[61];
  v223 = (v222 & 0x7FFF) << 13;
  v224 = v222 & 0x80000000;
  if (v223 < 0x800000)
  {
    if (v223)
    {
      v313 = __clz(v223) - 8;
      v224 = (v224 | 0x38800000 | (v223 << v313)) - (v313 << 23);
    }
  }

  else
  {
    v225 = v223 | v224;
    if (v223 >> 23 > 0x1E)
    {
      v224 = v225 | 0x7F800000;
    }

    else
    {
      v224 = v225 + 939524096;
    }
  }

  a2[55] = v224;
  v226 = result[35];
  v227 = (v226 & 0x7FFF) << 13;
  v228 = v226 & 0x80000000;
  if (v227 < 0x800000)
  {
    if (v227)
    {
      v314 = __clz(v227) - 8;
      v228 = (v228 | 0x38800000 | (v227 << v314)) - (v314 << 23);
    }
  }

  else
  {
    v229 = v227 | v228;
    if (v227 >> 23 > 0x1E)
    {
      v228 = v229 | 0x7F800000;
    }

    else
    {
      v228 = v229 + 939524096;
    }
  }

  a2[56] = v228;
  v230 = result[36];
  v231 = (v230 & 0x7FFF) << 13;
  v232 = v230 & 0x80000000;
  if (v231 < 0x800000)
  {
    if (v231)
    {
      v315 = __clz(v231) - 8;
      v232 = (v232 | 0x38800000 | (v231 << v315)) - (v315 << 23);
    }
  }

  else
  {
    v233 = v231 | v232;
    if (v231 >> 23 > 0x1E)
    {
      v232 = v233 | 0x7F800000;
    }

    else
    {
      v232 = v233 + 939524096;
    }
  }

  a2[57] = v232;
  v234 = result[48];
  v235 = (v234 & 0x7FFF) << 13;
  v236 = v234 & 0x80000000;
  if (v235 < 0x800000)
  {
    if (v235)
    {
      v316 = __clz(v235) - 8;
      v236 = (v236 | 0x38800000 | (v235 << v316)) - (v316 << 23);
    }
  }

  else
  {
    v237 = v235 | v236;
    if (v235 >> 23 > 0x1E)
    {
      v236 = v237 | 0x7F800000;
    }

    else
    {
      v236 = v237 + 939524096;
    }
  }

  a2[58] = v236;
  v238 = result[49];
  v239 = (v238 & 0x7FFF) << 13;
  v240 = v238 & 0x80000000;
  if (v239 < 0x800000)
  {
    if (v239)
    {
      v317 = __clz(v239) - 8;
      v240 = (v240 | 0x38800000 | (v239 << v317)) - (v317 << 23);
    }
  }

  else
  {
    v241 = v239 | v240;
    if (v239 >> 23 > 0x1E)
    {
      v240 = v241 | 0x7F800000;
    }

    else
    {
      v240 = v241 + 939524096;
    }
  }

  a2[59] = v240;
  v242 = result[57];
  v243 = (v242 & 0x7FFF) << 13;
  v244 = v242 & 0x80000000;
  if (v243 < 0x800000)
  {
    if (v243)
    {
      v318 = __clz(v243) - 8;
      v244 = (v244 | 0x38800000 | (v243 << v318)) - (v318 << 23);
    }
  }

  else
  {
    v245 = v243 | v244;
    if (v243 >> 23 > 0x1E)
    {
      v244 = v245 | 0x7F800000;
    }

    else
    {
      v244 = v245 + 939524096;
    }
  }

  a2[60] = v244;
  v246 = result[58];
  v247 = (v246 & 0x7FFF) << 13;
  v248 = v246 & 0x80000000;
  if (v247 < 0x800000)
  {
    if (v247)
    {
      v319 = __clz(v247) - 8;
      v248 = (v248 | 0x38800000 | (v247 << v319)) - (v319 << 23);
    }
  }

  else
  {
    v249 = v247 | v248;
    if (v247 >> 23 > 0x1E)
    {
      v248 = v249 | 0x7F800000;
    }

    else
    {
      v248 = v249 + 939524096;
    }
  }

  a2[61] = v248;
  v250 = result[62];
  v251 = (v250 & 0x7FFF) << 13;
  v252 = v250 & 0x80000000;
  if (v251 < 0x800000)
  {
    if (v251)
    {
      v320 = __clz(v251) - 8;
      v252 = (v252 | 0x38800000 | (v251 << v320)) - (v320 << 23);
    }
  }

  else
  {
    v253 = v251 | v252;
    if (v251 >> 23 > 0x1E)
    {
      v252 = v253 | 0x7F800000;
    }

    else
    {
      v252 = v253 + 939524096;
    }
  }

  a2[62] = v252;
  v254 = result[63];
  v255 = (v254 & 0x7FFF) << 13;
  v256 = v254 & 0x80000000;
  if (v255 < 0x800000)
  {
    if (v255)
    {
      v321 = __clz(v255) - 8;
      v256 = (v256 | 0x38800000 | (v255 << v321)) - (v321 << 23);
    }
  }

  else
  {
    v257 = v255 | v256;
    if (v255 >> 23 > 0x1E)
    {
      v256 = v257 | 0x7F800000;
    }

    else
    {
      v256 = v257 + 939524096;
    }
  }

  a2[63] = v256;
  return result;
}

uint64_t sub_29AB2EF6C(uint64_t a1, void *a2)
{
  v3 = a1;
  v101 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v6 = *(a1 + 20);
  v5 = *(a1 + 24);
  v99[0] = 0;
  v99[1] = 0;
  v100 = 0;
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 72);
    do
    {
      v10 = *v9;
      v9 += 3;
      v8 += strlen(v10) + 3;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = (*(v3 + 184))(12 * *(v3 + 40));
  *(v3 + 56) = v11;
  if (!v11)
  {
    return 1;
  }

  v12 = (*(v3 + 184))(32 * *(v3 + 40));
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  v14 = v4 - v5 + 1;
  v15 = vcvtps_u32_f32(vcvts_n_f32_s32(v14, 3uLL)) * vcvtps_u32_f32(vcvts_n_f32_s32(v6, 3uLL));
  v16 = v15 << 7;
  bzero(v12, 32 * *(v3 + 40));
  LODWORD(v17) = *(v3 + 40);
  v18 = v13;
  if (v17 < 1)
  {
    goto LABEL_44;
  }

  v91 = v8;
  v92 = v15 << 7;
  v93 = v14;
  v94 = v6;
  v95 = v15;
  v96 = a2;
  v19 = 0;
  v20 = *(v3 + 48);
  v97 = *(v3 + 80);
  v98 = v3;
  do
  {
    v21 = v17;
    v22 = v20;
    v23 = *(v20 + 576 * v19 + 448);
    v24 = *v23;
    v25 = strrchr(*v23, 46);
    v26 = 0;
    if (v25)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v24;
    }

    v28 = v24 - v27;
    v29 = v18;
    while (1)
    {
      if (!*v18)
      {
        *v18 = v24;
        *(v18 + 1) = v28;
        *(v18 + 2) = -1;
        v21 = v26;
        *(v18 + 6) = -1;
        goto LABEL_21;
      }

      if (*(v18 + 1) == v28 && !strncmp(v24, *v18, v24 - v27))
      {
        break;
      }

      ++v26;
      v18 += 32;
      if (v21 == v26)
      {
        goto LABEL_21;
      }
    }

    v21 = v26;
LABEL_21:
    v18 = v29;
    v20 = v22;
    if (v97)
    {
      v30 = v97;
      v31 = *(v23 + 26);
      v32 = *(v98 + 72) + 12;
      v33 = &v18[32 * v21];
      do
      {
        if (*v32 == v31)
        {
          v34 = *(v32 - 12);
          if (*(v32 + 8))
          {
            if (!strcasecmp(v27, v34))
            {
              goto LABEL_28;
            }
          }

          else if (!strcmp(v27, v34))
          {
LABEL_28:
            *(v22 + 576 * v19 + 548) = *(v32 - 4);
            v35 = *(v32 + 4);
            if ((v35 & 0x80000000) == 0)
            {
              *&v33[4 * v35 + 16] = v19;
            }
          }
        }

        v32 += 24;
        --v30;
      }

      while (v30);
    }

    ++v19;
    v3 = v98;
    v17 = *(v98 + 40);
  }

  while (v19 < v17);
  v15 = v95;
  a2 = v96;
  v14 = v93;
  v6 = v94;
  v8 = v91;
  v16 = v92;
  if (v17 >= 1)
  {
    v36 = 0;
    v37 = v18 + 24;
    do
    {
      if (!*(v37 - 3))
      {
        break;
      }

      v38 = *(v37 - 2);
      if ((v38 & 0x80000000) == 0)
      {
        v39 = *(v37 - 1);
        if ((v39 & 0x80000000) == 0)
        {
          v40 = *v37;
          if ((*v37 & 0x80000000) == 0)
          {
            v41 = *(v20 + 576 * v38 + 448);
            v42 = *(v20 + 576 * v39 + 448);
            v43 = *(v41 + 16);
            if (v43 == *(v42 + 16))
            {
              v44 = *(v20 + 576 * v40 + 448);
              if (v43 == *(v44 + 16))
              {
                v45 = *(v41 + 20);
                if (v45 == *(v42 + 20) && v45 == *(v44 + 20))
                {
                  v17 = *(v98 + 56) + 12 * *(v98 + 44);
                  *v17 = v38;
                  *(v17 + 4) = v39;
                  *(v17 + 8) = v40;
                  LODWORD(v17) = *(v98 + 40);
                  ++*(v98 + 44);
                }
              }
            }
          }
        }
      }

      ++v36;
      v37 += 8;
    }

    while (v36 < v17);
  }

LABEL_44:
  v46 = v16 - 2 * v15;
  (*(v3 + 192))(v18);
  v47 = *(v3 + 40);
  if (v47 <= 0)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v99[0] = 0;
    v66 = 5;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = v14 * v6;
    v54 = 252 * v15 + 0x10000;
    v55 = 5;
    if ((v46 + 4999) >> 3 >= 0x271)
    {
      v55 = 5 * ((v46 + 4999) / 0x1388);
    }

    v56 = v46 + v55;
    v57 = (16380 * v15) >> 7;
    if (v57 <= v56 + 24)
    {
      v57 = v56 + 24;
    }

    v58 = v56 + 15;
    if (16380 * v15 < v46 || v58 > 0xFFFFFFFFFFFFFFF6)
    {
      v60 = -1;
    }

    else
    {
      v60 = v57;
    }

    if (v54 <= v60)
    {
      v54 = v60;
    }

    v61 = (*(v3 + 48) + 548);
    do
    {
      v62 = *(v61 - 25);
      v63 = *v61;
      if (*v61)
      {
        if (v63 == 2)
        {
          v64 = 2 * v53 * *(v62 + 25);
          v50 += v64;
          v48 += v64;
        }

        else
        {
          if (v63 != 1)
          {
            return 3;
          }

          v8 += v54;
          ++v49;
        }
      }

      else
      {
        v65 = v53 * *(v62 + 25);
        v51 += v65;
        v52 += v65;
      }

      v61 += 144;
      --v47;
    }

    while (v47);
    v100 = v48;
    v99[0] = v52;
    v66 = 5 * ((v50 + 4999) / 0x1388);
    if ((v50 + 4999) >> 3 < 0x271)
    {
      v66 = 5;
    }
  }

  v67 = v50 + v66 + 15;
  if (v67 <= 0xFFFFFFFFFFFFFFF6 && 130 * v50 >= v50)
  {
    v68 = v67 + 9;
    if ((130 * v50) >> 7 > v68)
    {
      v68 = (130 * v50) >> 7;
    }
  }

  else
  {
    v68 = -1;
  }

  if ((v51 + 4999) >> 3 >= 0x271)
  {
    v69 = 5 * ((v51 + 4999) / 0x1388);
  }

  else
  {
    v69 = 5;
  }

  v70 = 2 * v15;
  v71 = v51 + v69 + 15;
  if (v71 <= 0xFFFFFFFFFFFFFFF6 && (v72 = 130 * v51, 130 * v51 >= v51))
  {
    v73 = v71 + 9;
    if (v72 >> 7 > v71 + 9)
    {
      v73 = v72 >> 7;
    }
  }

  else
  {
    v73 = -1;
  }

  v74 = v49 * v70;
  v75 = v49 * v70 + 4999;
  if (v75 >> 3 >= 0x271)
  {
    v76 = 5 * (v75 / 0x1388);
  }

  else
  {
    v76 = 5;
  }

  v77 = v74 + v76 + 15;
  if (v77 <= 0xFFFFFFFFFFFFFFF6 && 130 * v74 >= v74)
  {
    v78 = v77 + 9;
    if ((130 * v74) >> 7 > v78)
    {
      v78 = (130 * v74) >> 7;
    }
  }

  else
  {
    v78 = -1;
  }

  *a2 = v8 + v68 + v73 + v78 + 88;
  v79 = v49 * v46;
  if (v49 * v46 <= *(v3 + 96))
  {
LABEL_95:
    if (v74 > *(v3 + 112))
    {
      *(v3 + 112) = v74;
      if (*(v3 + 104))
      {
        (*(v3 + 192))();
        v74 = *(v3 + 112);
      }

      v81 = (*(v3 + 184))(v74);
      *(v3 + 104) = v81;
      if (!v81)
      {
        return 1;
      }

      bzero(v81, *(v3 + 112));
    }

    if (v50 > *(v3 + 128))
    {
      *(v3 + 128) = v50;
      if (*(v3 + 120))
      {
        (*(v3 + 192))();
      }

      v82 = (*(v3 + 184))(v50);
      *(v3 + 120) = v82;
      if (!v82)
      {
        return 1;
      }

      bzero(v82, v50);
    }

    if (v52)
    {
      if ((v52 + 4999) >> 3 >= 0x271)
      {
        v83 = 5 * ((v52 + 4999) / 0x1388);
      }

      else
      {
        v83 = 5;
      }

      v85 = v52 + v83 + 15;
      if (v85 <= 0xFFFFFFFFFFFFFFF6 && 130 * v52 >= v52)
      {
        v86 = v85 + 9;
        if ((130 * v52) >> 7 > v86)
        {
          v86 = (130 * v52) >> 7;
        }
      }

      else
      {
        v86 = -1;
      }

      v99[0] = v86;
    }

    v87 = 0;
    for (i = (v3 + 136); ; ++i)
    {
      v89 = v99[v87];
      if (v89 > i[3])
      {
        i[3] = v89;
        if (*i)
        {
          (*(v3 + 192))();
        }

        v90 = (*(v3 + 184))(v89);
        *i = v90;
        if (!v90)
        {
          break;
        }
      }

      if (++v87 == 3)
      {
        return 0;
      }
    }

    return 1;
  }

  *(v3 + 96) = v79;
  if (*(v3 + 88))
  {
    (*(v3 + 192))(*(v3 + 88));
    v79 = *(v3 + 96);
  }

  v80 = (*(v3 + 184))(v79);
  *(v3 + 88) = v80;
  if (v80)
  {
    bzero(v80, *(v3 + 96));
    goto LABEL_95;
  }

  return 1;
}

uint64_t sub_29AB2F6A8(uint64_t result)
{
  v1 = 0;
  v18[3] = *MEMORY[0x29EDCA608];
  memset(v18, 0, 24);
  do
  {
    v18[v1] = *(result + 136 + v1 * 8);
    ++v1;
  }

  while (v1 != 3);
  v2 = *(result + 40);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 512;
    do
    {
      v5 = *(result + 48);
      v6 = v5 + 576 * v3;
      v7 = *(v6 + 448);
      v9 = *(v7 + 8);
      v8 = *(v7 + 12);
      v10 = *(v7 + 25);
      v11 = v9 * v8 * v10;
      v12 = *(v6 + 548);
      v13 = v18[v12];
      *(v6 + 536) = v11;
      *(v6 + 456) = v13;
      *(v6 + 464) = v13;
      *(v6 + 472) = v13;
      *(v6 + 504) = v13;
      if (v10 >= 2)
      {
        v14 = v9 * v8;
        v15 = v13 + v14;
        v16 = (v5 + v4);
        v17 = v10 - 1;
        do
        {
          *(v16 - 4) = v15;
          *v16++ = v15;
          v15 += v14;
          --v17;
        }

        while (v17);
      }

      *(v6 + 552) = *(v7 + 26);
      if (v12 == 1)
      {
        *(v6 + 552) = 2;
      }

      else
      {
        v18[v12] = v13 + v11;
      }

      ++v3;
      v4 += 576;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_29AB2F7CC(uint64_t (*a1)(unint64_t), void (*a2)(void), void *a3, uint64_t a4)
{
  v6 = a3[51];
  if (v6 != a3[50])
  {
    v10 = a3[49];
LABEL_10:
    result = 0;
    v10[v6] = a4;
    a3[51] = v6 + 1;
    return result;
  }

  if (v6)
  {
    v8 = (3 * v6) >> 1;
  }

  else
  {
    v8 = 16;
  }

  v9 = a1(8 * v8);
  if (v9)
  {
    v10 = v9;
    v11 = a3[49];
    if (v11)
    {
      memcpy(v9, v11, 8 * a3[51]);
      a2(a3[49]);
    }

    a3[49] = v10;
    a3[50] = v8;
    v6 = a3[51];
    goto LABEL_10;
  }

  return 1;
}

uint64_t sub_29AB2F880(uint64_t (*a1)(uint64_t), void (*a2)(void), uint64_t *a3)
{
  v5 = a3;
  v235 = *MEMORY[0x29EDCA608];
  __dst = 0;
  v233 = 0;
  v7 = *(a3 + 12);
  v6 = *(a3 + 13);
  v234 = 0;
  LODWORD(v3) = vcvtps_s32_f32(vcvts_n_f32_s32(v6, 3uLL));
  v225 = v3;
  v8 = *(a3 + 14);
  LODWORD(v4) = vcvtps_s32_f32(vcvts_n_f32_s32(v8, 3uLL));
  v218 = v4;
  v9 = a3[8];
  a3[1] = 0;
  a3[2] = 0;
  v229 = v7;
  if (v7 < 1)
  {
    v217 = 0;
    v222 = __dst;
    *(__dst + 384) = a3[9];
  }

  else
  {
    v11 = a3 + 3;
    v12 = v8 * v6;
    v13 = v7;
    memcpy(&__dst, a3 + 3, 8 * v7);
    v14 = 0;
    v15 = v13;
    do
    {
      v16 = *v11++;
      if (*(v16 + 416) == 2)
      {
        v17 = v12;
      }

      else
      {
        v17 = 0;
      }

      v14 += v17;
      --v15;
    }

    while (v15);
    if (v14)
    {
      v18 = a1(2 * v14);
      if (!v18)
      {
        return 1;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
    v21 = v18;
    do
    {
      v22 = *(&__dst + v20);
      if (*(v22 + 416) == 2)
      {
        v23 = *(v5 + 14);
        if (v23 >= 1)
        {
          v24 = 0;
          v25 = *(v5 + 13);
          v26 = *(v5 + 13);
          do
          {
            v27 = *(v22 + 392);
            if (v26 >= 1)
            {
              v28 = 0;
              v29 = *(v27 + 8 * v24);
              do
              {
                v30 = *(v29 + 4 * v28);
                v31 = 1199562752;
                if (v30 <= 65504.0)
                {
                  v31 = *(v29 + 4 * v28);
                  if (v30 < -65504.0)
                  {
                    v31 = -947920896;
                  }
                }

                v32 = v31 & 0x7FFFFFFF;
                v33 = HIWORD(v31) & 0x8000;
                if ((v31 & 0x7FFFFFFF) <= 0x387FFFFF)
                {
                  if (v32 >= 0x33000001)
                  {
                    v35 = 126 - (v32 >> 23);
                    v36 = v31 & 0x7FFFFF | 0x800000;
                    v37 = v36 << ((v32 >> 23) - 94);
                    v38 = v36 >> v35;
                    LOWORD(v33) = v38 | HIWORD(v31) & 0x8000;
                    if (v37 > 0x80000000 || (v37 == 0x80000000 ? (v39 = (v38 & 1) == 0) : (v39 = 1), !v39))
                    {
                      LOWORD(v33) = v33 + 1;
                    }
                  }
                }

                else
                {
                  v34 = v33 | ((v32 + 134221823 + ((v32 >> 13) & 1)) >> 13);
                  v33 |= 0x7C00u;
                  if (v32 > 0x477FEFFF)
                  {
                    LOWORD(v34) = v33;
                  }

                  if (v32 != 2139095040)
                  {
                    v33 |= (v32 >> 13) & 0x3FF | (((v32 >> 13) & 0x3FF) == 0);
                  }

                  if (v32 <= 0x7F7FFFFF)
                  {
                    LOWORD(v33) = v34;
                  }
                }

                *(v21 + 2 * v28++) = v33;
              }

              while (v25 != v28);
            }

            *(v27 + 8 * v24) = v21;
            v21 += 2 * v25;
            ++v24;
          }

          while (v24 != v23);
        }
      }

      ++v20;
    }

    while (v20 != v229);
    v40 = v5[9];
    v222 = __dst;
    *(__dst + 384) = v40;
    LODWORD(v7) = v229;
    v217 = v18;
    if (v229 != 1)
    {
      v41 = 2 * v218 * v225;
      v42 = v40 + v41;
      v43 = &v233;
      v44 = v229 - 1;
      do
      {
        v45 = *v43++;
        *(v45 + 384) = v42;
        v42 += v41;
        --v44;
      }

      while (v44);
      LODWORD(v7) = v229;
    }
  }

  if (v218 >= 1)
  {
    v46 = 0;
    v220 = (v7 - 1) + 1;
    v47 = 0.5;
    v48 = vdupq_n_s32(0x3F3504FBu);
    v49.i64[0] = 0x3F0000003F000000;
    v49.i64[1] = 0x3F0000003F000000;
    v50 = vdupq_n_s32(0xBF3504FB);
    v51 = vdupq_n_s32(0x3ED4DB36u);
    v52 = vdupq_n_s32(0x3E8E39E5u);
    v53 = vdupq_n_s32(0xBDC7C60B);
    v54 = vdupq_n_s32(0x3EFB14BFu);
    v55 = vdupq_n_s32(0xBE8E39E5);
    v56 = vdupq_n_s32(0x3EEC8361u);
    v57 = vdupq_n_s32(0x3E43EF33u);
    v58 = vdupq_n_s32(0xBEEC8361);
    v59 = vdupq_n_s32(0x3DC7C60Bu);
    v221 = v5;
    do
    {
      v219 = v46;
      if (v225 < 1)
      {
        goto LABEL_135;
      }

      v60 = 0;
      v61 = 0;
      v224 = v233;
      v223 = v234;
      v62 = 8 * v46;
      v63 = -1;
      do
      {
        if (v7 < 1)
        {
          goto LABEL_134;
        }

        v228 = v61;
        v64 = 0;
        v65 = *(v5 + 13);
        v66 = *(v5 + 14);
        v67 = *v5;
        v227 = v63;
        v68 = v63 + 2 * v65;
        do
        {
          v69 = 0;
          v70 = *(&__dst + v64);
          v71 = *(v70 + 392);
          do
          {
            v72 = 0;
            v73 = v69 + v62;
            if (v66 <= v69 + v62)
            {
              v73 = 2 * v66 + ~(v69 + v62);
            }

            if (v73 < 0)
            {
              v73 = v66 - 1;
            }

            v74 = *(v71 + 8 * v73);
            v75 = v68;
            v76 = v60;
            do
            {
              if (v65 <= v76)
              {
                v77 = v75;
              }

              else
              {
                v77 = v76;
              }

              if (v77 < 0)
              {
                v77 = v65 - 1;
              }

              v78 = *(v74 + 2 * v77);
              if (v67)
              {
                LODWORD(v78) = *(v67 + 2 * v78);
              }

              v79 = (v78 & 0x7FFF) << 13;
              v80 = (v78 << 16) & 0x80000000;
              v81 = __clz(v79);
              v82 = (v80 | 0x38800000 | (v79 << (v81 - 8))) - ((v81 - 8) << 23);
              if (!v79)
              {
                v82 = v80;
              }

              v83 = v79 | v80;
              v84 = v83 | 0x7F800000;
              v85 = v83 + 939524096;
              if (v79 >> 23 > 0x1E)
              {
                v85 = v84;
              }

              if (v79 < 0x800000)
              {
                v85 = v82;
              }

              *(v70 + v72) = v85;
              ++v76;
              --v75;
              v72 += 4;
            }

            while (v72 != 32);
            ++v69;
            v70 += 32;
          }

          while (v69 != 8);
          ++v64;
        }

        while (v64 != v229);
        if (v229 == 3)
        {
          for (i = 0; i != 256; i += 4)
          {
            v87 = *(v222 + i);
            v88 = *(v224 + i);
            v89 = *(v223 + i);
            *(v222 + i) = ((v88 * 0.7152) + (v87 * 0.2126)) + (v89 * 0.0722);
            *(v224 + i) = ((v88 * -0.3854) + (v87 * -0.1146)) + (v89 * v47);
            *(v223 + i) = ((v88 * -0.4542) + (v87 * v47)) + (v89 * -0.0458);
          }
        }

        v90 = 0;
        v5 = v221;
        v91 = v221[1];
        v226 = v221[2];
        v92 = 10;
        do
        {
          v93 = 0;
          v94 = *(&__dst + v90);
          do
          {
            v95 = &v94[v93];
            v97 = v94[v93 + 6];
            v96 = v94[v93 + 7];
            v99 = v94[v93 + 4];
            v98 = v94[v93 + 5];
            v101 = v94[v93 + 2];
            v100 = v94[v93 + 3];
            v103 = v94[v93];
            v102 = v94[v93 + 1];
            v104.i64[0] = vzip1q_s32(v103, v101).u64[0];
            v105 = vzip1q_s32(v99, v97);
            v106 = vextq_s8(v99, v105, 8uLL);
            v107.i64[0] = vtrn2q_s32(v103, v101).u64[0];
            v107.i64[1] = v105.i64[1];
            v108 = vzip2q_s32(v99, v97);
            v99.i32[3] = v94[v93 + 6].i64[1];
            v97.i64[0] = vzip2q_s32(v103, v101).u64[0];
            v104.i64[1] = v106.i64[1];
            v101.i64[0] = vuzp2q_s32(vuzp2q_s32(v103, v101), v103).u64[0];
            v103.i64[0] = vzip1q_s32(v102, v100).u64[0];
            v109 = vzip1q_s32(v98, v96);
            v110 = vextq_s8(v98, v109, 8uLL);
            v101.i64[1] = v108.i64[1];
            v108.i64[0] = vtrn2q_s32(v102, v100).u64[0];
            v108.i64[1] = v109.i64[1];
            v111 = vzip2q_s32(v98, v96);
            v103.i64[1] = v110.i64[1];
            v98.i32[3] = v94[v93 + 7].i64[1];
            v110.i64[0] = vzip2q_s32(v102, v100).u64[0];
            v97.i64[1] = v99.i64[1];
            v110.i64[1] = v98.i64[1];
            v96.i64[0] = vuzp2q_s32(vuzp2q_s32(v102, v100), v102).u64[0];
            v96.i64[1] = v111.i64[1];
            v112 = vaddq_f32(v104, v96);
            v113 = vaddq_f32(v107, v97);
            v114 = vsubq_f32(v107, v97);
            v115 = vaddq_f32(v101, v103);
            v116 = vsubq_f32(v101, v103);
            v117 = vaddq_f32(v108, v110);
            v118 = vsubq_f32(v108, v110);
            v119 = vsubq_f32(v104, v96);
            v120 = vmulq_f32(vaddq_f32(v112, v115), v48);
            v121 = vmulq_f32(vaddq_f32(v113, v117), v48);
            v122 = vaddq_f32(v120, v121);
            v123 = vsubq_f32(v120, v121);
            v124 = vsubq_f32(v114, v118);
            v125 = vsubq_f32(v112, v115);
            v126 = vmulq_f32(v122, v49);
            v127 = vmulq_f32(vsubq_f32(v113, v117), v48);
            v128 = vmulq_f32(vaddq_f32(v114, v118), v50);
            v129 = vsubq_f32(v119, v127);
            v130 = vaddq_f32(v116, v128);
            v131 = vmulq_f32(v123, v49);
            v132 = vmlaq_f32(vmulq_f32(v130, v51), v52, v129);
            v133 = vaddq_f32(v119, v127);
            v134 = vsubq_f32(v128, v116);
            v135 = vmlaq_f32(vmulq_f32(v134, v53), v54, v133);
            v136 = vmlaq_f32(vmulq_f32(v125, v56), v57, v124);
            v137 = vmlaq_f32(vmulq_f32(v130, v55), v51, v129);
            v138 = vmlaq_f32(vmulq_f32(v124, v58), v57, v125);
            v139 = vmlaq_f32(vmulq_f32(v134, v54), v59, v133);
            v129.i64[0] = vzip1q_s32(v131, v132).u64[0];
            v140 = vzip1q_s32(v138, v139);
            v133.i64[0] = vzip1q_s32(v126, v135).u64[0];
            v141 = vzip1q_s32(v136, v137);
            v142.i64[0] = vtrn2q_s32(v131, v132).u64[0];
            v129.i64[1] = vextq_s8(*&v138, v140, 8uLL).i64[1];
            v142.i64[1] = v140.i64[1];
            v140.i64[0] = vuzp2q_s32(vuzp2q_s32(v131, v132), v131).u64[0];
            v133.i64[1] = vextq_s8(*&v136, v141, 8uLL).i64[1];
            v143.i64[0] = vtrn2q_s32(v126, v135).u64[0];
            v143.i64[1] = v141.i64[1];
            v140.i64[1] = vzip2q_s32(v138, v139).i64[1];
            v144.i64[0] = vuzp2q_s32(vuzp2q_s32(v126, v135), v126).u64[0];
            v138.i32[3] = v139.i32[2];
            v144.i64[1] = vzip2q_s32(v136, v137).i64[1];
            v139.i64[0] = vzip2q_s32(v131, v132).u64[0];
            v136.i32[3] = v137.i32[2];
            v126.i64[0] = vzip2q_s32(v126, v135).u64[0];
            v139.i64[1] = v138.i64[1];
            v126.i64[1] = v136.i64[1];
            v95[2] = v143;
            v95[3] = v142;
            v95[4] = v126;
            v95[5] = v139;
            v95[6] = v144;
            v95[7] = v140;
            *v95 = v133;
            v95[1] = v129;
            v93 += 8;
          }

          while (v93 != 16);
          v145 = v94 + 8;
          v146 = 8;
          do
          {
            v147 = v145[-8];
            v148 = v145[6];
            v149 = vaddq_f32(v147, v148);
            v150 = vsubq_f32(v147, v148);
            v151 = v145[-6];
            v152 = v145[-4];
            v153 = vaddq_f32(v151, v152);
            v154 = vsubq_f32(v151, v152);
            v155 = v145[-2];
            v156 = vaddq_f32(v155, *v145);
            v157 = vsubq_f32(v155, *v145);
            v158 = v145[2];
            v159 = v145[4];
            v160 = vaddq_f32(v158, v159);
            v161 = vsubq_f32(v158, v159);
            v162 = vmulq_f32(vaddq_f32(v149, v156), v48);
            v163 = vmulq_f32(vaddq_f32(v153, v160), v48);
            v145[-8] = vmulq_f32(vaddq_f32(v162, v163), v49);
            *v145 = vmulq_f32(vsubq_f32(v162, v163), v49);
            v164 = vsubq_f32(v154, v161);
            v165 = vsubq_f32(v149, v156);
            v166 = vdupq_n_s32(0x3EC3EF33u);
            v145[-4] = vmulq_f32(vmlaq_f32(vmulq_f32(v165, vdupq_n_s32(0x3F6C8361u)), v166, v164), v49);
            v145[4] = vmulq_f32(vmlaq_f32(vmulq_f32(v164, vdupq_n_s32(0xBF6C8361)), v166, v165), v49);
            v167 = vmulq_f32(vsubq_f32(v153, v160), v48);
            v168 = vmulq_f32(vaddq_f32(v154, v161), v50);
            v169 = vsubq_f32(v150, v167);
            v170 = vaddq_f32(v157, v168);
            v171 = vdupq_n_s32(0x3F54DB36u);
            v145[-2] = vmulq_f32(vmlaq_f32(vmulq_f32(v170, vdupq_n_s32(0xBF0E39E5)), v171, v169), v49);
            v145[2] = vmulq_f32(vmlaq_f32(vmulq_f32(v170, v171), vdupq_n_s32(0x3F0E39E5u), v169), v49);
            v172 = vaddq_f32(v150, v167);
            v173 = vsubq_f32(v168, v157);
            v174 = vdupq_n_s32(0x3F7B14BFu);
            v145[-6] = vmulq_f32(vmlaq_f32(vmulq_f32(v173, vdupq_n_s32(0xBE47C60B)), v174, v172), v49);
            v145[6] = vmulq_f32(vmlaq_f32(vmulq_f32(v173, v174), vdupq_n_s32(0x3E47C60Bu), v172), v49);
            ++v145;
            v146 -= 4;
          }

          while (v146);
          v175 = 0;
          v176 = &v221[v92];
          do
          {
            v177 = v94->u32[v175];
            v178 = v177 & 0x7FFFFFFF;
            v179 = HIWORD(v177);
            v180 = v179 & 0x8000;
            if (v178 <= 0x387FFFFF)
            {
              if (v178 >= 0x33000001)
              {
                v183 = 126 - (v178 >> 23);
                v184 = v178 & 0x7FFFFF | 0x800000;
                v185 = v184 << ((v178 >> 23) - 94);
                v180 = (v184 >> v183) | v179 & 0x8000;
                if (v185 > 0x80000000 || (v185 == 0x80000000 ? (v186 = ((v184 >> v183) & 1) == 0) : (v186 = 1), !v186))
                {
                  ++v180;
                }
              }
            }

            else
            {
              v181 = v180 | ((v178 + 134221823 + ((v178 >> 13) & 1)) >> 13);
              v182 = v180 | 0x7C00;
              if (v178 > 0x477FEFFF)
              {
                v181 = v180 | 0x7C00;
              }

              if (v178 != 2139095040)
              {
                v182 |= (v178 >> 13) & 0x3FF | (((v178 >> 13) & 0x3FF) == 0);
              }

              if (v178 > 0x7F7FFFFF)
              {
                v180 = v182;
              }

              else
              {
                v180 = v181;
              }
            }

            v187 = (v180 & 0x7FFF) << 13;
            v188 = (v180 << 16) & 0x80000000;
            v189 = __clz(v187);
            v190 = (v188 | 0x38800000 | (v187 << (v189 - 8))) - ((v189 - 8) << 23);
            if (!v187)
            {
              v190 = (v180 << 16) & 0x80000000;
            }

            v191 = v187 | v188;
            v192 = v191 | 0x7F800000;
            v193 = v191 + 939524096;
            if (v187 >> 23 > 0x1E)
            {
              v193 = v192;
            }

            if (v187 >= 0x800000)
            {
              v194 = *&v193;
            }

            else
            {
              v194 = *&v190;
            }

            v195 = word_29B6C22A8[v180];
            v196 = word_29B6C22A8[BYTE1(v180)];
            if (v196 + v195)
            {
              v197 = v194;
              v198 = (&closestData + 2 * closestDataOffset[v180]);
              v199 = v195 + v196 + 1;
              while (1)
              {
                v200 = *v198;
                v201 = (v200 & 0x7FFF) << 13;
                v202 = __clz(v201);
                v203 = (v200 & 0x80000000 | 0x38800000 | (v201 << (v202 - 8))) - ((v202 - 8) << 23);
                if (!v201)
                {
                  v203 = v200 & 0x80000000;
                }

                v204 = v201 | v200 & 0x80000000;
                v205 = v204 | 0x7F800000;
                v206 = v204 + 939524096;
                if (v201 >> 23 > 0x1E)
                {
                  v206 = v205;
                }

                v207 = v201 >= 0x800000 ? *&v206 : *&v203;
                if (vabds_f32(v207, v197) < *(v176 + v175))
                {
                  break;
                }

                ++v198;
                if (--v199 < 2)
                {
                  goto LABEL_115;
                }
              }

              LOWORD(v180) = *v198;
            }

LABEL_115:
            v230[v175++] = v180;
          }

          while (v175 != 64);
          v208 = 0;
          v47 = 0.5;
          do
          {
            v231[v208] = v230[dword_29B6C24A8[v208]];
            ++v208;
          }

          while (v208 != 64);
          v209 = v94[24].i64[0];
          *v209 = v231[0];
          v94[24].i64[0] = (v209 + 1);
          for (j = 1; j < 0x40; j += v215)
          {
            v211 = v231[j];
            if (v211)
            {
              goto LABEL_130;
            }

            if (j > 0x3E)
            {
              v211 = 0;
LABEL_130:
              v215 = 1;
              goto LABEL_131;
            }

            v212 = j + 1;
            v213 = 1;
            do
            {
              if (v231[v212])
              {
                break;
              }

              v212 = j + ++v213;
            }

            while (v212 < 0x40);
            v214 = v213;
            v211 = v213 | 0xFF00;
            if (v212 == 64)
            {
              v211 = -256;
            }

            if (v214 == 1)
            {
              v211 = 0;
              v215 = 1;
            }

            else
            {
              v215 = v214;
            }

LABEL_131:
            *v9++ = v211;
            ++v91;
          }

          ++v90;
          v92 = 42;
          LODWORD(v7) = v229;
        }

        while (v90 != v229);
        v221[1] = v91;
        v221[2] = v220 + v226;
        v61 = v228;
        v63 = v227;
LABEL_134:
        ++v61;
        v60 += 8;
        v63 -= 8;
      }

      while (v61 != v225);
LABEL_135:
      v46 = v219 + 1;
    }

    while (v219 + 1 != v218);
  }

  result = v217;
  if (v217)
  {
    a2();
    return 0;
  }

  return result;
}

float32x4_t *sub_29AB30484(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, __int32 a6, float a7)
{
  result[3].f32[3] = a7;
  result[3].i32[1] = a5;
  result[3].i32[2] = a6;
  result->i64[1] = 0;
  result[1].i64[0] = 0;
  result->i64[0] = a4;
  result[4].i64[0] = a2;
  result[4].i64[1] = a3;
  if (a7 < 0.0)
  {
    result[3].i32[3] = 0;
    a7 = 0.0;
  }

  v7 = 0;
  v8 = result + 21;
  v9 = &xmmword_29B6C20A8;
  __asm
  {
    FMOV            V1.4S, #10.0
    FMOV            V2.4S, #17.0
  }

  do
  {
    v16 = *v9++;
    v8[-16] = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(v16), a7), _Q1);
    *v8++ = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(xmmword_29B6C21A8[v7++]), a7), _Q2);
  }

  while (v7 != 16);
  result[1].i64[1] = 0;
  result[2].i64[0] = 0;
  result[3].i32[0] = 0;
  result[2].i64[1] = 0;
  return result;
}

uint64_t sub_29AB3050C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = *(a2 + 96);
  if (v7 && (v8 = *(a2 + 192), v8 >= 1) && (v9 = *(a2 + 196), v9 >= 1) && (v10 = *(a2 + 200)) != 0 && (v11 = *(a2 + 208)) != 0)
  {
    if (((a4 | a3 | a5 | a6) & 0x80000000) != 0)
    {
      return (*(a1 + 72))(a1, 3, "Invalid tile indices provided (%d, %d, level %d, %d)", a4, a5, a6);
    }

    v12 = *(*(v7 + 24) + 8) & 0xF;
    if (v12 < 2)
    {
      if (a5 != a6)
      {
        return (*(a1 + 72))(a1, 3, "Request for tile (%d, %d) level (%d, %d), but single level and mipmap tiles must have same level x and y", a4, a5, a6);
      }

      if (v8 <= a5)
      {
        return (*(a1 + 72))(a1, 3, "Request for tile (%d, %d) level %d, but level past available levels (%d)", a4, a5, a6);
      }

      v13 = v10[a5];
      if (v13 <= a3 || v11[a5] <= a4)
      {
        return (*(a1 + 72))(a1, 3, "Request for tile (%d, %d) level %d, but level only has %d x %d tiles", a4, a5, a6);
      }

      if (a5 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = a5;
        do
        {
          v17 = *v10++;
          v16 = v17;
          v18 = *v11++;
          v14 += v18 * v16;
          --v15;
        }

        while (v15);
      }

LABEL_44:
      v29 = v14 + (a3 + v13 * a4);
      v30 = *(a2 + 244);
      if (v29 >= v30)
      {
        return (*(a1 + 72))(a1, 32, "Invalid tile chunk offset %lld (%d avail)", v29, v30);
      }

      *a7 = v29;
      return 0;
    }

    if (v12 == 2)
    {
      if (v8 <= a5)
      {
        return (*(a1 + 72))(a1, 3, "Request for tile (%d, %d) level %d, %d, but x level past available levels (%d)", a4, a5, a6);
      }

      if (v9 <= a6)
      {
        return (*(a1 + 72))(a1, 3, "Request for tile (%d, %d) level %d, %d, but y level past available levels (%d)", a4, a5, a6);
      }

      v13 = v10[a5];
      v21 = v11[a6];
      if (v13 <= a3 || v21 <= a4)
      {
        return (*(a1 + 72))(a1, 3, "Request for tile (%d, %d) at rip level %d, %d level only has %d x %d tiles", a4, a5, a6);
      }

      v22 = a5;
      if (a6 < 1)
      {
        v14 = 0;
      }

      else
      {
        v23 = 0;
        v14 = 0;
        v24 = a6;
        do
        {
          if (a5 >= 1)
          {
            v25 = a5;
            v26 = *(a2 + 200);
            do
            {
              v27 = *v26++;
              v14 += v11[v23] * v27;
              --v25;
            }

            while (v25);
          }

          ++v23;
        }

        while (v23 != v24);
      }

      if (a5 >= 1)
      {
        do
        {
          v28 = *v10++;
          v14 += v28 * v21;
          --v22;
        }

        while (v22);
      }

      goto LABEL_44;
    }

    v19 = *(a1 + 72);
  }

  else
  {
    v19 = *(a1 + 72);
  }

  return v19();
}

uint64_t sub_29AB307A0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v30[4] = *MEMORY[0x29EDCA608];
  if (*a1 != 3)
  {
    v10 = *(a1 + 56);
LABEL_5:

    return v10();
  }

  v12 = *(a3 + 4);
  if ((v12 | 2) == 3)
  {
    v10 = *(a1 + 56);
    goto LABEL_5;
  }

  if (*(a1 + 184) != a2)
  {
    v10 = *(a1 + 56);
    goto LABEL_5;
  }

  if (!a5 && a6)
  {
    return (*(a1 + 72))(a1, 3, "Invalid packed data argument size %llu pointer %p");
  }

  if (a6 >> 31 && v12 != 2)
  {
    return (*(a1 + 72))(a1, 3, "Packed data size %llu too large (max %llu)");
  }

  if (v12 == 2 && (!a8 || !a9))
  {
    return (*(a1 + 72))(a1, 3, "Invalid sample count data argument size %llu pointer %p");
  }

  v18 = *(a3 + 148);
  v19 = a4 - v18;
  if (a4 < v18 || *(a3 + 156) < a4)
  {
    return (*(a1 + 72))(a1, 3, "Invalid attempt to write scanlines starting at %d outside range of data window (%d - %d)");
  }

  v20 = *(a3 + 240);
  if (v20 >= 2)
  {
    v19 /= v20;
  }

  if (v18 + v19 * v20 != a4)
  {
    return (*(a1 + 72))(a1, 3, "Attempt to write scanline %d which does not align with y dims (%d) for chunk index (%d)");
  }

  if (v19 < 0 || v19 >= *(a3 + 244))
  {
    return (*(a1 + 72))(a1, 3, "Chunk index for scanline %d in chunk %d outside chunk count %d");
  }

  if (*(a3 + 180) != 2 && *(a1 + 188) != v19 - 1)
  {
    v10 = *(a1 + 56);
    goto LABEL_5;
  }

  if (!*(a1 + 5))
  {
    v28 = a4;
    if (v12 == 2)
    {
      v21 = 4;
      goto LABEL_42;
    }

    v22 = &v29;
    v21 = 8;
LABEL_41:
    *v22 = a6;
    goto LABEL_42;
  }

  v28 = a2;
  v29 = a4;
  if (v12 != 2)
  {
    v22 = v30;
    v21 = 12;
    goto LABEL_41;
  }

  v21 = 8;
LABEL_42:
  v26 = 0;
  result = sub_29AB30BE0(a1, a3, &v26);
  if (!result)
  {
    v25 = v26;
    *(v26 + 8 * v19) = *(a1 + 176);
    result = (*(a1 + 48))(a1, &v28, v21, a1 + 176);
    if (!result)
    {
      if (*(a3 + 4) == 2)
      {
        v27[0] = a9;
        v27[1] = a6;
        v27[2] = a7;
        result = (*(a1 + 48))(a1, v27, 24, a1 + 176);
        if (!result)
        {
          result = (*(a1 + 48))(a1, a8, a9, a1 + 176);
        }
      }

      else
      {
        result = 0;
      }

      if (a6 && !result)
      {
        result = (*(a1 + 48))(a1, a5, a6, a1 + 176);
      }

      if (!result)
      {
        v23 = *(a1 + 192) + 1;
        *(a1 + 192) = v23;
        if (v23 == *(a3 + 244))
        {
          v27[0] = *(a3 + 248);
          v24 = *(a1 + 184) + 1;
          *(a1 + 184) = v24;
          if (v24 == *(a1 + 196))
          {
            *a1 = 4;
          }

          *(a1 + 188) = 0xFFFFFFFFLL;
          return (*(a1 + 48))(a1, v25, 8 * v23, v27);
        }

        else
        {
          result = 0;
          *(a1 + 188) = v19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AB30BE0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = atomic_load((a2 + 256));
  if (v4)
  {
    goto LABEL_2;
  }

  v8 = 8 * *(a2 + 244);
  v9 = (*(a1 + 88))(v8);
  if (v9)
  {
    v4 = v9;
    bzero(v9, v8);
    v10 = 0;
    atomic_compare_exchange_strong((a2 + 256), &v10, v4);
    if (v10)
    {
      (*(a1 + 96))(v4);
      v4 = v10;
    }

LABEL_2:
    *a3 = v4;
    return 0;
  }

  v11 = *(a1 + 56);

  return v11(a1, 1);
}

uint64_t sub_29AB30CA8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*a1 != 3)
  {
    v13 = *(a1 + 56);
LABEL_5:

    return v13();
  }

  v15 = *(a3 + 4);
  if ((v15 | 2) == 2)
  {
    v13 = *(a1 + 56);
    goto LABEL_5;
  }

  if (*(a1 + 184) != a2)
  {
    v13 = *(a1 + 56);
    goto LABEL_5;
  }

  if (!a8 || !a9)
  {
    return (*(a1 + 72))(a1, 3, "Invalid packed data argument size %llu pointer %p");
  }

  v18 = a7;
  v19 = a6;
  v20 = a5;
  if (a9 >> 31 && v15 != 3)
  {
    return (*(a1 + 72))(a1, 3, "Packed data size %llu too large (max %llu)");
  }

  if (v15 == 3 && (!a11 || !a12))
  {
    return (*(a1 + 72))(a1, 3, "Invalid sample count data argument size %llu pointer %p");
  }

  v30 = -1;
  result = sub_29AB3050C(a1, a3, a4, a5, a6, a7, &v30);
  if (!result)
  {
    if (v30 < 0 || v30 >= *(a3 + 244))
    {
      return (*(a1 + 72))(a1, 3, "Chunk index for tile (%d, %d) at level (%d, %d) %d outside chunk count %d");
    }

    else if (*(a3 + 180) == 2 || *(a1 + 188) == v30 - 1)
    {
      v22 = *(a1 + 5);
      v27 = v30;
      if (*(a1 + 5))
      {
        v32[0] = a2;
        v22 = 1;
      }

      v32[v22] = a4;
      v32[v22 + 1] = v20;
      v32[v22 | 2] = v19;
      v23 = v22 | 4;
      v32[v22 + 3] = v18;
      if (*(a3 + 4) != 3)
      {
        v32[v23] = a9;
        v23 = v22 + 5;
      }

      v29 = 0;
      result = sub_29AB30BE0(a1, a3, &v29);
      if (!result)
      {
        v24 = v29;
        *(v29 + 8 * v27) = *(a1 + 176);
        result = (*(a1 + 48))(a1, v32, 4 * v23, a1 + 176);
        if (!result)
        {
          if (*(a3 + 4) != 3 || (v31[0] = a12, v31[1] = a9, v31[2] = a10, result = (*(a1 + 48))(a1, v31, 24, a1 + 176), !result) && (result = (*(a1 + 48))(a1, a11, a12, a1 + 176), !result))
          {
            result = (*(a1 + 48))(a1, a8, a9, a1 + 176);
            if (!result)
            {
              v25 = *(a1 + 192) + 1;
              *(a1 + 192) = v25;
              if (v25 == *(a3 + 244))
              {
                v31[0] = *(a3 + 248);
                v26 = *(a1 + 184) + 1;
                *(a1 + 184) = v26;
                if (v26 == *(a1 + 196))
                {
                  *a1 = 4;
                }

                *(a1 + 188) = 0xFFFFFFFFLL;
                return (*(a1 + 48))(a1, v24, 8 * v25, v31);
              }

              else
              {
                result = 0;
                *(a1 + 188) = v27;
              }
            }
          }
        }
      }
    }

    else
    {
      return (*(a1 + 72))(a1, 25, "Chunk index %d is not the next chunk to be written (last %d)");
    }
  }

  return result;
}

uint64_t sub_29AB310C0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v26 = *(a2 + 248);
  v5 = *(a2 + 244);
  *a4 = v26 + 8 * v5;
  v6 = atomic_load((a2 + 256));
  if (!v6)
  {
    v25 = 0;
    if (*(a2 + 244) <= 0)
    {
      v15 = *(a1 + 64);
    }

    else
    {
      v10 = 8 * v5;
      v11 = *(a1 + 152);
      if (v11 >= 1 && v26 + v10 > v11)
      {
        return (*(a1 + 72))(a1, 3, "chunk table size (%llu) too big for file size (%lld)", v10, v11);
      }

      v13 = (*(a1 + 88))(v10);
      if (!v13)
      {
        return (*(a1 + 56))(a1, 1);
      }

      v6 = v13;
      v14 = (*(a1 + 40))(a1, v13, v10, &v26, &v25, 0);
      if (v14)
      {
        v7 = v14;
        (*(a1 + 96))(v6);
        return v7;
      }

      if (*(a1 + 568))
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 152);
      if (v18 <= 0)
      {
        v18 = -1;
      }

      v19 = *(a2 + 244);
      if (v19 < 1)
      {
        goto LABEL_16;
      }

      v20 = 0;
      v21 = 8 * v19;
      v22 = 1;
      do
      {
        v23 = *(v6 + v20);
        if (v23 >= v18 || v23 < v26)
        {
          v22 = 0;
        }

        v20 += 8;
      }

      while (v21 != v20);
      if (v22 || !sub_29AB312B4(a1, a2, v6) || !*(a1 + 6))
      {
LABEL_16:
        v17 = 0;
        atomic_compare_exchange_strong((a2 + 256), &v17, v6);
        if (v17)
        {
          (*(a1 + 96))(v6);
          v6 = v17;
        }

        goto LABEL_2;
      }

      (*(a1 + 96))(v6);
      v15 = *(a1 + 64);
    }

    return v15();
  }

LABEL_2:
  v7 = 0;
  *a3 = v6;
  return v7;
}

uint64_t sub_29AB312B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 472);
  v7 = v6[*(a1 + 196) - 1];
  v34 = *(v7 + 248) + 8 * *(v7 + 244);
  if (*v6 == a2)
  {
    v8 = 0;
    if (*(a1 + 152) <= 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = *(a1 + 152);
    }
  }

  else
  {
    v8 = 0;
    v9 = v6 + 1;
    do
    {
      v10 = *v9++;
      ++v8;
    }

    while (v10 != a2);
    if (*(a1 + 152) <= 0)
    {
      v11 = -1;
    }

    else
    {
      v11 = *(a1 + 152);
    }

    v32 = 0;
    v12 = v6[v8 - 1];
    result = sub_29AB310C0(a1, v12, &v32, v33);
    if (result)
    {
      return result;
    }

    v14 = *v32;
    v15 = *(v12 + 244);
    if (v15 >= 2)
    {
      v16 = v32 + 1;
      v17 = v15 - 1;
      do
      {
        v19 = *v16++;
        v18 = v19;
        if (v19 > v14)
        {
          v14 = v18;
        }

        --v17;
      }

      while (v17);
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    result = sub_29AB31510(a1, v12, v8 - 1, v14, &v34, &v36);
    if (result)
    {
      return result;
    }
  }

  LODWORD(v20) = *(a2 + 244);
  if (v20 >= 1)
  {
    v21 = 0;
    for (i = -1; ; --i)
    {
      v23 = *(a3 + 8 * v21);
      if (v23 < v11 && v23 >= v34)
      {
        v25 = *(a3 + 8 * v21);
      }

      else
      {
        v25 = v34;
      }

      v34 = v25;
      v26 = v20 + i;
      if (*(a2 + 180) == 1)
      {
        v27 = v26;
      }

      else
      {
        v27 = v21;
      }

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      result = sub_29AB31510(a1, a2, v8, v25, &v34, &v36);
      if (result)
      {
        return result;
      }

      v28 = *(a2 + 4);
      if ((v28 | 2) != 2)
      {
        break;
      }

      v29 = *(a2 + 148);
      v30 = *(a2 + 240);
      v31 = (SDWORD1(v36) - v29) / v30;
      if (v31 >> 31)
      {
        result = (*(a1 + 72))(a1, 22, "Invalid chunk index: %lld reading scanline %d (datawindow min %d) with lines per chunk %d", (SDWORD1(v36) - v29) / v30, DWORD1(v36), *(a2 + 148), v30);
        LODWORD(v31) = v27;
        if (result)
        {
          return result;
        }

LABEL_35:
        v28 = *(a2 + 4);
      }

      if ((v28 | 2) == 2 && v27 != v31)
      {
        return 22;
      }

      *(a3 + 8 * v31) = v25;
      ++v21;
      v20 = *(a2 + 244);
      if (v21 >= v20)
      {
        return 0;
      }
    }

    v35 = 0;
    result = sub_29AB3050C(a1, a2, SDWORD1(v36), DWORD2(v36), HIDWORD(v36), v37, &v35);
    LODWORD(v31) = v35;
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  return 0;
}

uint64_t sub_29AB31510(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = a4;
  if (*(a1 + 152) <= 0)
  {
    v11 = 0x7FFFFFFFLL;
  }

  else
  {
    v11 = *(a1 + 152);
  }

  v12 = *(a2 + 4);
  switch(v12)
  {
    case 0:
      goto LABEL_7;
    case 3:
      v15 = *(a1 + 5) == 0;
      v14 = 4;
      break;
    case 2:
LABEL_7:
      v13 = 1;
      if (*(a1 + 5))
      {
        v13 = 2;
      }

      if (v12 == 2)
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 + 1;
      }

      goto LABEL_16;
    default:
      v15 = *(a1 + 5) == 0;
      v14 = 5;
      break;
  }

  if (!v15)
  {
    ++v14;
  }

LABEL_16:
  result = (*(a1 + 40))(a1, v22, 4 * v14, &v21, 0, 0);
  if (result)
  {
    return result;
  }

  v17 = *(a1 + 5);
  if (*(a1 + 5))
  {
    if (v22[0] != a3)
    {
      return (*(a1 + 72))(a1, 22, "Invalid part number reconstructing chunk table: expect %d, found %d");
    }

    v17 = 1;
  }

  else
  {
    a3 = 0;
  }

  *a6 = a3;
  if ((*(a2 + 4) | 2) == 2)
  {
    v18 = 4;
  }

  else
  {
    v19 = v17 | 2;
    *(a6 + 4) = *&v22[v17];
    v17 += 3;
    *(a6 + 12) = v22[v19];
    v18 = 16;
  }

  *(a6 + v18) = v22[v17];
  if ((*(a2 + 4) & 0xFFFFFFFE) == 2)
  {
    result = (*(a1 + 40))(a1, a6 + 24, 24, &v21, 0, 0);
    if (result)
    {
      return result;
    }

    v20 = *(a6 + 32);
    if (v20 < 0 || v20 > v11)
    {
      return (*(a1 + 72))(a1, 22, "Invalid chunk size reconstructing chunk table: found out of range %lld");
    }
  }

  else
  {
    v20 = v22[v17 + 1];
    if ((v20 & 0x80000000) != 0 || v11 < v20)
    {
      return (*(a1 + 72))(a1, 22, "Invalid chunk size reconstructing chunk table: found out of range %d");
    }
  }

  *(a6 + 48) = v20;
  result = 0;
  *a5 = v21 + v20;
  return result;
}

BOOL sub_29AB31730(char *__s, char *a2, const char *a3)
{
  result = 0;
  if (a2 && a3)
  {
    v6 = a2;
    if (__s)
    {
      v7 = strlen(__s);
      if (strncmp(__s, v6, v7))
      {
        return 0;
      }

      v6 += v7;
    }

    v8 = strrchr(v6, 46);
    if (v8)
    {
      v6 = v8 + 1;
    }

    if (strlen(v6) == 1)
    {
      v9 = __tolower(*v6);
      return v9 == __tolower(*a3);
    }

    else
    {
      return strcasecmp(v6, a3) == 0;
    }
  }

  return result;
}

uint64_t sub_29AB317F0(uint64_t *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 2;
  }

  if (!*v1)
  {
    v6 = *(a1 + 3);
    if (v6 < 0 || v6 >= *(v1 + 196))
    {
      return (*(v1 + 72))(v1, 4, "Part index (%d) out of range", *(a1 + 3));
    }

    v20 = a1[6];
    v7 = *(a1 + 9);
    if (v7 < 1)
    {
      return 0;
    }

    v8 = 0;
    v9 = *(a1 + 8);
    v10 = *(a1 + 4);
    while (v10 < 1)
    {
LABEL_21:
      result = 0;
      if (++v8 == v7)
      {
        return result;
      }
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *a1;
      v14 = *a1 + v11;
      if (*(v14 + 8))
      {
        v15 = *(v14 + 40);
        v16 = *(v14 + 12);
        v17 = *(v14 + 25);
        v18 = *(v14 + 20);
        if (v18 < 2)
        {
          v19 = v8 * *(v13 + v11 + 36);
          goto LABEL_18;
        }

        if (!((v9 + v8) % v18))
        {
          v19 = *(v13 + v11 + 36) * (v8 / v18);
LABEL_18:
          result = (*(v1 + 40))(v1, v15 + v19, v17 * v16, &v20, 0, 0);
          if (result)
          {
            return result;
          }

          v10 = *(a1 + 4);
        }
      }

      ++v12;
      v11 += 48;
      if (v12 >= v10)
      {
        goto LABEL_21;
      }
    }
  }

  v2 = *(v1 + 56);
  v3 = a1[2];

  return v2(v3, 7);
}

uint64_t sub_29AB31990(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 2;
  }

  if (*v2)
  {
    v3 = *(v2 + 56);

    return v3();
  }

  else
  {
    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0 || v5 >= *(v2 + 196))
    {
      return (*(v2 + 72))(v2, 4, "Part index (%d) out of range", *(a1 + 12));
    }

    else
    {
      v6 = *(*(v2 + 472) + 8 * v5);
      if (*(a1 + 112) == *(a1 + 96) && !*(a1 + 120))
      {
        *(a1 + 112) = 0;
      }

      if ((*(v6 + 4) & 0xFFFFFFFE) == 2)
      {
        result = sub_29AB31F1C(a1, 5, (a1 + 128), (a1 + 136), *(a1 + 80));
        if (result)
        {
          return result;
        }

        if ((*(a1 + 10) & 4) != 0)
        {
          v7 = *(a1 + 16);
          v8 = *(a1 + 12);
          v10 = *(a1 + 128);
          v11 = a1 + 24;
          v9 = 0;
        }

        else
        {
          result = sub_29AB31F1C(a1, 0, (a1 + 96), (a1 + 104), *(a1 + 56));
          if (result)
          {
            return result;
          }

          v7 = *(a1 + 16);
          v8 = *(a1 + 12);
          v9 = *(a1 + 96);
          v10 = *(a1 + 128);
          v11 = a1 + 24;
        }

        return sub_29AB32098(v7, v8, v11, v9, v10);
      }

      else
      {
        result = sub_29AB31F1C(a1, 0, (a1 + 96), (a1 + 104), *(a1 + 56));
        if (!result)
        {
          v12 = *(a1 + 16);
          v13 = *(a1 + 12);
          v14 = *(a1 + 96);

          return sub_29AB322B4(v12, v13, a1 + 24, v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AB31B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  if (*v1)
  {
    v2 = *(v1 + 56);
    v3 = *(a1 + 16);

    return v2(v3, 7);
  }

  else
  {
    v6 = *(a1 + 12);
    if ((v6 & 0x80000000) != 0 || v6 >= *(v1 + 196))
    {
      return (*(v1 + 72))(v1, 4, "Part index (%d) out of range", *(a1 + 12));
    }

    else
    {
      v7 = *(*(v1 + 472) + 8 * v6);
      if ((*(v7 + 4) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_14;
      }

      v8 = sub_29AB32554(*(a1 + 16), *(v7 + 176), a1, *(a1 + 128), *(a1 + 80), *(a1 + 144), 4 * ((*(a1 + 10) & 1) + *(a1 + 36) * *(a1 + 40)));
      if (v8)
      {
        return (*(v1 + 72))(v1, v8, "Unable to decompress sample table %llu -> %llu");
      }

      if ((*(a1 + 10) & 4) != 0)
      {
        return 0;
      }

      else
      {
LABEL_14:
        result = sub_29AB32554(v1, *(v7 + 176), a1, *(a1 + 96), *(a1 + 56), *(a1 + 112), *(a1 + 64));
        if (result)
        {
          return (*(v1 + 72))(v1, result, "Unable to decompress image data %llu -> %llu");
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_29AB31C9C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12))(uint64_t a1)
{
  if ((byte_2A17482A8 & 1) == 0)
  {
    byte_2A17482A8 = 1;
  }

  if (a2)
  {
    v13 = (*(a1 + 10) & 2) == 0;
    v14 = sub_29AB365B4;
    v15 = sub_29AB36B90;
LABEL_5:
    if (v13)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }

  if (a9 < 1)
  {
    v18 = sub_29AB37A4C;
    if (a8)
    {
      return v18;
    }

    result = sub_29AB37A4C;
    if (a7 >= 1 && a6 >= 1)
    {
      v20 = *(a1 + 8);
      if (v20 == a3)
      {
        v18 = sub_29AB38704;
        if (a6 != 4)
        {
          if (a6 != 2)
          {
            return sub_29AB37A4C;
          }

          v21 = v20;
          if (a11 >= 1)
          {
            v18 = sub_29AB37F88;
            if (v20 == 4)
            {
              return v18;
            }

            if (v20 == 3)
            {
              return sub_29AB38024;
            }
          }

          if (a12 >= 1)
          {
            v18 = sub_29AB380BC;
            if (v20 == 4)
            {
              return v18;
            }

            if (v20 == 3)
            {
              return sub_29AB3815C;
            }
          }

          if (a10 == 2)
          {
            v18 = sub_29AB381F0;
            if (v20 == 4)
            {
              return v18;
            }

            if (v20 == 3)
            {
              return sub_29AB382FC;
            }
          }

          v14 = sub_29AB38624;
          if (v21 == 3)
          {
            v14 = sub_29AB38524;
          }

          v13 = v21 == 4;
          v15 = sub_29AB383D8;
          goto LABEL_5;
        }

        return v18;
      }
    }
  }

  else
  {
    result = sub_29AB37A4C;
    if (a4 == 1 && a5 == 2)
    {
      if (a11 >= 1)
      {
        v17 = *(a1 + 8);
        v18 = sub_29AB3718C;
        if (v17 == 4)
        {
          return v18;
        }

        if (v17 == 3)
        {
          return sub_29AB37368;
        }
      }

      if (a12 >= 1)
      {
        v19 = *(a1 + 8);
        v18 = sub_29AB374EC;
        if (v19 == 4)
        {
          return v18;
        }

        if (v19 == 3)
        {
          return sub_29AB376D0;
        }
      }

      v18 = sub_29AB37A4C;
      if (a10 == 4)
      {
        v22 = *(a1 + 8);
        v14 = sub_29AB37A4C;
        if (v22 == 3)
        {
          v14 = sub_29AB37968;
        }

        v13 = v22 == 4;
        v15 = sub_29AB37854;
        goto LABEL_5;
      }

      return v18;
    }
  }

  return result;
}

uint64_t sub_29AB31F1C(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t a5)
{
  if (!a5 || *a3 && *a4 >= a5)
  {
    return 0;
  }

  sub_29AB3248C(a1, a2, a3, a4);
  v10 = *(a1 + 192);
  if (v10)
  {
    v11 = v10(a2, a5);
    goto LABEL_6;
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    return 2;
  }

  v15 = *(a1 + 12);
  if ((v15 & 0x80000000) == 0 && v15 < *(v14 + 196))
  {
    v11 = (*(v14 + 88))(a5);
LABEL_6:
    v12 = v11;
    if (v11)
    {
      result = 0;
      *a3 = v12;
      *a4 = a5;
      return result;
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = *(a1 + 12);
      if ((v17 & 0x80000000) == 0 && v17 < *(v16 + 196))
      {
        return (*(v16 + 72))(v16, 1, "Unable to allocate %llu bytes", a5);
      }

      if (*v16 == 1)
      {
        pthread_mutex_unlock((v16 + 504));
      }

      return (*(v16 + 72))(v16, 4, "Part index (%d) out of range");
    }

    return 2;
  }

  if (*v14 == 1)
  {
    pthread_mutex_unlock((v14 + 504));
  }

  return (*(v14 + 72))(v14, 4, "Part index (%d) out of range");
}

uint64_t sub_29AB32098(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1)
  {
    v6 = *(a1 + 56);
LABEL_4:

    return v6();
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    v12 = *(a1 + 72);
    v13 = 4;
    return v12(a1, v13);
  }

  if (!a3)
  {
    v6 = *(a1 + 56);
    goto LABEL_4;
  }

  v9 = *(*(a1 + 472) + 8 * a2);
  if ((*a3 & 0x80000000) != 0 || *a3 >= *(v9 + 244))
  {
    v12 = *(a1 + 72);
    goto LABEL_23;
  }

  if (*(a3 + 22) != *(v9 + 4))
  {
    v14 = *(a1 + 64);
LABEL_26:

    return v14();
  }

  if (*(a3 + 23) != *(v9 + 176))
  {
    v14 = *(a1 + 64);
    goto LABEL_26;
  }

  v11 = *(a1 + 152);
  if (v11 >= 1)
  {
    if (*(a3 + 48) > v11)
    {
      v12 = *(a1 + 72);
LABEL_23:
      v13 = 3;
      return v12(a1, v13);
    }

    if (*(a3 + 24) > v11)
    {
      v12 = *(a1 + 72);
      goto LABEL_23;
    }
  }

  if (!a5 || (v15 = *(a3 + 56)) == 0 || (v16 = *(a3 + 48), v19 = 0, v20 = v16, result = (*(a1 + 40))(a1, a5, v15, &v20, &v19, 0), !result))
  {
    if (a4 && (v17 = *(a3 + 32)) != 0)
    {
      v18 = *(a3 + 24);
      v19 = 0;
      v20 = v18;
      return (*(a1 + 40))(a1, a4, v17, &v20, &v19, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AB322B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1)
  {
    v4 = *(a1 + 56);
LABEL_4:

    return v4();
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    return (*(a1 + 72))(a1, 4);
  }

  if (!a3 || (v8 = *(*(a1 + 472) + 8 * a2), v9 = *(a3 + 32), !a4) && v9)
  {
    v4 = *(a1 + 56);
    goto LABEL_4;
  }

  if ((*a3 & 0x80000000) != 0 || *a3 >= *(v8 + 244))
  {
    return (*(a1 + 72))(a1, 3);
  }

  if (*(a3 + 22) == *(v8 + 4))
  {
    v10 = *(v8 + 176);
    if (*(a3 + 23) == v10)
    {
      v11 = *(a3 + 24);
      v15 = v11;
      v12 = *(a1 + 152);
      if (v12 >= 1 && v11 > v12)
      {
        return (*(a1 + 72))(a1, 3, "chunk block info data offset (%llu) past end of file (%lld)", v11, v12);
      }

      if (!v9)
      {
        return 0;
      }

      v14 = 0;
      v6 = (*(a1 + 40))(a1, a4, v9, &v15, &v14, v10 == 0);
      if (!v10 && v9 > v14)
      {
        bzero((a4 + v14), v9 - v14);
      }

      return v6;
    }

    v13 = *(a1 + 64);
  }

  else
  {
    v13 = *(a1 + 64);
  }

  return v13();
}

uint64_t sub_29AB3248C(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  if (!*a3)
  {
    goto LABEL_6;
  }

  if (!*a4)
  {
LABEL_5:
    *a3 = 0;
LABEL_6:
    *a4 = 0;
    return result;
  }

  v6 = result;
  v7 = *(result + 200);
  if (v7)
  {
    result = v7(a2);
    goto LABEL_5;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = *(result + 12);
    if ((v9 & 0x80000000) == 0 && v9 < *(v8 + 196))
    {
      result = (*(v8 + 96))(*a3);
      goto LABEL_5;
    }

    if (*v8 == 1)
    {
      pthread_mutex_unlock((v8 + 504));
      v9 = *(v6 + 12);
    }

    return (*(v8 + 72))(v8, 4, "Part index (%d) out of range", v9);
  }

  return result;
}

uint64_t sub_29AB32554(uint64_t a1, int a2, uint64_t a3, int64x2_t *__src, size_t __n, int64x2_t *__dst, unint64_t a7)
{
  if (!__n)
  {
    return 0;
  }

  v8 = __dst;
  v9 = __n;
  if ((a2 - 8) <= 0xFFFFFFFD && __n == a7)
  {
    if (__dst != __src)
    {
      memcpy(__dst, __src, __n);
    }

    return 0;
  }

  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v14 = sub_29AB31F1C(a3, 3, (a3 + 160), (a3 + 168), a7);
        if (!v14)
        {
          if (*(a3 + 168) >= a7)
          {
            v32 = *(a3 + 160);
            *&v148[0] = 0;
            v12 = sub_29AB33180(*(a3 + 16), __src, v9, v32, a7, v148);
            if (v12)
            {
              return v12;
            }

            v33 = *(a3 + 36);
            if (v33 >= 1)
            {
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v37 = *(a3 + 8);
              while (1)
              {
                if (v37 >= 1)
                {
                  v38 = 0;
                  v39 = *(a3 + 32) + v36;
                  do
                  {
                    v40 = *a3 + 48 * v38;
                    if (*(v40 + 8))
                    {
                      v41 = *(v40 + 12);
                      v42 = *(v40 + 20);
                      if (v42 < 2 || !(v39 % v42))
                      {
                        v43 = *(v40 + 25) * v41;
                        v34 += v43;
                        if (v34 > a7)
                        {
                          return 1;
                        }

                        v44 = v41;
                        v45 = *(v40 + 26);
                        if (v45 == 2)
                        {
                          v35 += 3 * v41;
                          if (v35 > *&v148[0])
                          {
                            return 23;
                          }

                          v46 = &v32[2 * v41 + v41];
                          if (v41 >= 1)
                          {
                            v57 = 0;
                            v58 = v8;
                            do
                            {
                              v59 = v32[v44];
                              v60 = *v32;
                              v61 = v32[2 * v44];
                              ++v32;
                              v57 += (v60 << 24) | (v59 << 16) | (v61 << 8);
                              v58->i32[0] = v57;
                              v58 = (v58 + 4);
                              --v41;
                            }

                            while (v41);
                          }
                        }

                        else if (v45 == 1)
                        {
                          v35 += v43;
                          if (v35 > *&v148[0])
                          {
                            return 23;
                          }

                          v46 = &v32[v41 + v41];
                          if (v41 >= 1)
                          {
                            v53 = 0;
                            v54 = v8;
                            do
                            {
                              v55 = *v32;
                              v56 = v32[v44];
                              ++v32;
                              v53 += v56 | (v55 << 8);
                              v54->i16[0] = v53;
                              v54 = (v54 + 2);
                              --v41;
                            }

                            while (v41);
                          }
                        }

                        else
                        {
                          if (v45)
                          {
                            return 3;
                          }

                          v35 += v43;
                          if (v35 > *&v148[0])
                          {
                            return 23;
                          }

                          v46 = &v32[2 * v41 + v41 + v41];
                          if (v41 >= 1)
                          {
                            v47 = 0;
                            v48 = v8;
                            do
                            {
                              v49 = *v32;
                              v50 = v32[v44];
                              v51 = v32[2 * v44];
                              v52 = v32[3 * v44];
                              ++v32;
                              v47 += (v49 << 24) | (v50 << 16) | (v51 << 8) | v52;
                              v48->i32[0] = v47;
                              v48 = (v48 + 4);
                              --v41;
                            }

                            while (v41);
                          }
                        }

                        v8 = (v8 + v43);
                        v37 = *(a3 + 8);
                        v32 = v46;
                      }
                    }

                    ++v38;
                  }

                  while (v38 < v37);
                  v33 = *(a3 + 36);
                }

                v12 = 0;
                if (++v36 >= v33)
                {
                  return v12;
                }
              }
            }

            return 0;
          }

          return 3;
        }

        return v14;
      }
    }

    else if (a2 != 7)
    {
      if (a2 == 8 || a2 == 9)
      {
        v12 = sub_29AB31F1C(a3, 3, (a3 + 160), (a3 + 168), 0xC0008uLL);
        if (!v12)
        {
          memset(v148, 0, 208);
          v12 = sub_29AB2C6AC(v148, 0, 0, a3);
          if (!v12)
          {
            v12 = sub_29AB34D44(v148, __src, v9, v8, a7);
          }

          sub_29AB2D4D8(v148);
        }

        return v12;
      }

      return (*(a1 + 72))(a1, 3, "Compression technique 0x%02X invalid", a2);
    }

    v25 = sub_29AB34594(a3, a7);
    v14 = sub_29AB31F1C(a3, 3, (a3 + 160), (a3 + 168), v25);
    if (v14)
    {
      return v14;
    }

    return sub_29AB34620(a3, __src, v9, v8->i8, a7);
  }

  else
  {
    if (a2 > 1)
    {
      if ((a2 - 2) < 2)
      {
        if (__n <= a7)
        {
          __n = a7;
        }

        v14 = sub_29AB31F1C(a3, 3, (a3 + 160), (a3 + 168), __n);
        if (!v14)
        {
          v15 = *(a3 + 168);
          if (v15 >= a7)
          {
            v16 = *(a3 + 160);
            *&v148[0] = 0;
            v12 = sub_29AB33180(*(a3 + 16), __src, v9, v16, v15, v148);
            if (v12)
            {
              return v12;
            }

            if (*&v148[0] == a7)
            {
              sub_29AB33DC8(v8, v16, a7);
              return 0;
            }

            return 23;
          }

          return 3;
        }

        return v14;
      }

      if (a2 == 4)
      {
        v14 = sub_29AB31F1C(a3, 3, (a3 + 160), (a3 + 168), a7);
        if (v14)
        {
          return v14;
        }

        v14 = sub_29AB31F1C(a3, 4, (a3 + 176), (a3 + 184), 0xE2008uLL);
        if (v14)
        {
          return v14;
        }

        v142 = a3;
        v26 = *(a3 + 176);
        v27 = v26 + 917512;
        bzero((v26 + 917512), 0x2000uLL);
        if (v9 < 4)
        {
          return 23;
        }

        v28 = __src->u16[1];
        if (v28 >> 13)
        {
          return 23;
        }

        v29 = __src->u16[0];
        if (v29 <= v28)
        {
          v62 = v28 - v29;
          v30 = v62 + 5;
          if (v62 + 5 > v9)
          {
            return 23;
          }

          v139 = a7;
          memcpy((v27 + v29), __src->i64 + 4, v62 + 1);
        }

        else
        {
          v139 = a7;
          v30 = 4;
        }

        v63 = 0;
        v64 = 0;
        v65 = v26 + 786440;
        do
        {
          if (!v63 || ((*(v27 + (v63 >> 3)) >> (v63 & 7)) & 1) != 0)
          {
            *(v65 + 2 * v64++) = v63;
          }

          ++v63;
        }

        while (v63 != 0x10000);
        if (!HIWORD(v64))
        {
          bzero((v65 + 2 * v64), 0x20000 - 2 * v64);
          v65 = v26 + 786440;
        }

        v66 = v30 + 4;
        if (v30 + 4 > v9)
        {
          return 23;
        }

        v67 = *(__src->u32 + v30);
        if (v66 + v67 > v9)
        {
          return 23;
        }

        v68 = a3;
        v137 = v65;
        v14 = sub_29AB33ED4(a3, (__src->u32 + v66), v67, *(a3 + 160), v139 >> 1, v26, 786440);
        if (v14)
        {
          return v14;
        }

        __dsta = v8;
        v136 = *(a3 + 160);
        v69 = *(a3 + 8);
        if (v69 >= 1)
        {
          v70 = 0;
          v145 = v64 - 1;
          v71 = *a3;
          v72 = *(a3 + 160);
          v138 = *a3;
          do
          {
            v73 = v71 + 48 * v70;
            v74 = *(v73 + 8);
            v75 = *(v73 + 12);
            LODWORD(v73) = *(v73 + 25);
            v76 = (((v73 + (v73 >> 7)) << 24) >> 25);
            v147 = v75 * v76;
            if (v73 >= 2)
            {
              v140 = v70;
              v143 = 0;
              v144 = 0;
              v146 = v75;
              if (v75 >= v74)
              {
                v77 = v74;
              }

              else
              {
                v77 = v75;
              }

              v141 = v77;
              do
              {
                v78 = 1;
                do
                {
                  v79 = v78;
                  v78 *= 2;
                }

                while (v79 <= v77);
                v80 = v79 >> 2;
                if (v79 >> 2 >= 1)
                {
                  v81 = v79 >> 1;
                  do
                  {
                    v82 = v81;
                    v81 = v80;
                    v83 = v74;
                    v84 = (v74 - v82) * v147;
                    v85 = v81 * v76;
                    v86 = v82 * v76;
                    v87 = v145 >> 14;
                    v88 = (v72 + 2 * v143);
                    if ((v84 & 0x80000000) == 0)
                    {
                      v88 = (v72 + 2 * v143);
                      v89 = &v88[v84];
                      v90 = ((v146 - v82) * v76);
                      v91 = (v82 * v147);
                      v92 = v81 * v147;
                      v93 = v72 + 2 * (v81 * v147);
                      v94 = v72 + 2 * (v81 * v147) + 2 * v85;
                      v95 = v72 + 2 * v85;
                      v96 = v144;
                      do
                      {
                        v97 = v88;
                        if ((v90 & 0x80000000) == 0)
                        {
                          v98 = v96;
                          do
                          {
                            v99 = *(v72 + v98);
                            v100 = *(v93 + v98);
                            if (v87)
                            {
                              v106 = v99 - (v100 >> 1);
                              v107 = *(v94 + v98);
                              v108 = *(v95 + v98) - (v107 >> 1);
                              LOWORD(v107) = (v108 + v107) ^ 0x8000;
                              v109 = ((v106 + v100) ^ 0xFFFF8000) - ((v107 & 0xFFFE) >> 1);
                              *(v95 + v98) = v109;
                              *(v72 + v98) = (v109 + v107) ^ 0x8000;
                              v110 = v106 - ((v108 & 0xFFFE) >> 1);
                              *(v94 + v98) = v110;
                              *(v93 + v98) = (v110 + v108) ^ 0x8000;
                            }

                            else
                            {
                              v101 = (v100 & 1) + v99 + (v100 >> 1);
                              v102 = *(v94 + v98);
                              v103 = (v102 & 1) + *(v95 + v98) + (v102 >> 1);
                              LOWORD(v102) = v103 - v102;
                              v104 = (v103 & 1) + v101 + (v103 >> 1);
                              *(v72 + v98) = v104;
                              *(v95 + v98) = v104 - v103;
                              v105 = v101 - v100 + (v102 & 1) + (v102 >> 1);
                              *(v93 + v98) = v105;
                              *(v94 + v98) = v105 - v102;
                            }

                            v98 += 2 * v86;
                            v97 = (v72 + v98);
                          }

                          while (v72 + v98 <= &v88[v90]);
                        }

                        if ((v81 & v146) != 0)
                        {
                          v111 = *v97;
                          v112 = v97[v92];
                          if (v87)
                          {
                            v111 -= v112 >> 1;
                            LOWORD(v113) = (v111 + v112) ^ 0x8000;
                          }

                          else
                          {
                            v113 = (v112 & 1) + v111 + (v112 >> 1);
                            LOWORD(v111) = v113 - v112;
                          }

                          v97[v92] = v111;
                          *v97 = v113;
                        }

                        v88 += v91;
                        v96 += 2 * v91;
                      }

                      while (v88 <= v89);
                    }

                    v74 = v83;
                    if ((v81 & v83) != 0)
                    {
                      v114 = (v146 - v82) * v76;
                      if ((v114 & 0x80000000) == 0)
                      {
                        v115 = &v88[v114];
                        do
                        {
                          v116 = *v88;
                          v117 = v88[v85];
                          if (v87)
                          {
                            v116 -= v117 >> 1;
                            LOWORD(v118) = (v116 + v117) ^ 0x8000;
                          }

                          else
                          {
                            v118 = (v117 & 1) + v116 + (v117 >> 1);
                            LOWORD(v116) = v118 - v117;
                          }

                          v88[v85] = v116;
                          *v88 = v118;
                          v88 += v86;
                        }

                        while (v88 <= v115);
                      }
                    }

                    v80 = v81 >> 1;
                  }

                  while (v81 > 1);
                }

                ++v143;
                v144 += 2;
                v77 = v141;
              }

              while (v143 != v76);
              v68 = v142;
              LOWORD(v69) = *(v142 + 8);
              v70 = v140;
              v71 = v138;
            }

            v72 += 2 * v147 * v74;
            ++v70;
          }

          while (v70 < v69);
        }

        v119 = v139 >> 1;
        v120 = v136;
        if (v139 >= 2)
        {
          do
          {
            *v120 = *(v137 + 2 * *v120);
            ++v120;
            --v119;
          }

          while (v119);
        }

        v121 = *(v68 + 36);
        if (v121 < 1)
        {
          v123 = 0;
          goto LABEL_157;
        }

        v122 = 0;
        v123 = 0;
        v124 = *(v142 + 8);
        v125 = __dsta;
LABEL_144:
        if (v124 < 1)
        {
          goto LABEL_154;
        }

        v126 = 0;
        v127 = 0;
        v128 = *(v142 + 32) + v122;
        v129 = *(v142 + 160);
        while (1)
        {
          v130 = *v142 + v126;
          v131 = *(v130 + 25) * *(v130 + 12);
          if (!v131)
          {
            v132 = v129;
            goto LABEL_152;
          }

          v132 = v129 + v131 * *(v130 + 8);
          v133 = *(v130 + 20);
          v134 = v122;
          if (v133 < 2)
          {
            goto LABEL_150;
          }

          if (!(v128 % v133))
          {
            break;
          }

LABEL_152:
          ++v127;
          v126 += 48;
          v129 = v132;
          if (v127 >= v124)
          {
            v121 = *(v142 + 36);
LABEL_154:
            if (++v122 >= v121)
            {
LABEL_157:
              if (v123 == v139)
              {
                return 0;
              }

              else
              {
                return 23;
              }
            }

            goto LABEL_144;
          }
        }

        v134 = v122 / v133;
LABEL_150:
        memcpy(v125, (v129 + v131 * v134), v131);
        v125 = (v125 + v131);
        v123 += v131;
        v124 = *(v142 + 8);
        goto LABEL_152;
      }

      return (*(a1 + 72))(a1, 3, "Compression technique 0x%02X invalid", a2);
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v14 = sub_29AB31F1C(a3, 3, (a3 + 160), (a3 + 168), a7);
        if (v14)
        {
          return v14;
        }

        if (sub_29AB33098(*(a3 + 160), a7, __src->i8, v9) != a7)
        {
          return 23;
        }

        v17 = *(a3 + 160);
        if (a7 > 1)
        {
          v18 = v17 + 1;
          v19 = *v17;
          do
          {
            v19 = (*v18 + v19) ^ 0xFFFFFF80;
            *v18++ = v19;
          }

          while (v18 < &v17[a7]);
        }

        if (a7 < 1)
        {
          return 0;
        }

        v20 = &v17[(a7 + 1) >> 1];
        v21 = (v8 + a7);
        v22 = v8;
        do
        {
          v23 = *v17++;
          v22->i8[0] = v23;
          v22 = (v22 + 1);
          if (v22 < v21)
          {
            v24 = *v20++;
            v22 = &v8->i16[1];
            v8->i8[1] = v24;
          }

          v12 = 0;
          v8 = v22;
        }

        while (v22 < v21);
        return v12;
      }

      return (*(a1 + 72))(a1, 3, "Compression technique 0x%02X invalid", a2);
    }

    v31 = *(a1 + 64);

    return v31();
  }
}

unint64_t sub_29AB33098(char *__b, unint64_t a2, char *a3, unint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *a3;
    if (v10 < 0)
    {
      break;
    }

    v9 += 2;
    if (v9 > a4)
    {
      return 23;
    }

    v11 = v10 + 1;
    v8 += v11;
    if (v8 > a2)
    {
      return 23;
    }

    v12 = v11;
    memset(__b, a3[1], v11);
    a3 += 2;
LABEL_10:
    __b += v12;
    if (v9 >= a4)
    {
      return v8;
    }
  }

  v9 = v9 - v10 + 1;
  if (v9 <= a4)
  {
    v8 -= v10;
    if (v8 <= a2)
    {
      v12 = -v10;
      v13 = a3 + 1;
      memcpy(__b, v13, -v10);
      a3 = &v13[v12];
      goto LABEL_10;
    }
  }

  return 23;
}

uint64_t sub_29AB33180(uint64_t a1, unsigned __int16 *a2, unint64_t a3, _BYTE *a4, unint64_t a5, void *a6)
{
  v10 = sub_29AB21010;
  if (a1)
  {
    v11 = a4;
    v12 = *(a1 + 88);
    v10 = *(a1 + 96);
  }

  else
  {
    v12 = j__malloc;
    v11 = a4;
  }

  qword_2A1B6C3E8 = v12;
  v13 = 0x2A1B6C000uLL;
  off_2A1B6C3F0 = v10;
  v14 = (v12)(11560);
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  bzero(v14, 0x2D28uLL);
  if (a3 < 6)
  {
    goto LABEL_6;
  }

  v17 = 0;
  v16 = 0;
  v19 = (a2 + 1);
  v20 = bswap32(*a2);
  if ((v20 & 0x200000) == 0 && ((v20 >> 16) & 0x80000000) == 0 && !(-31 * ((((HIWORD(v20) - ((2115 * HIWORD(v20)) >> 16)) >> 1) + ((2115 * HIWORD(v20)) >> 16)) >> 4) + HIWORD(v20)) && (HIWORD(v20) & 0xF00) == 0x800)
  {
    v106 = a2;
    v107 = a6;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = a2 + a3 - 4;
    v25 = v24 - v19;
    v26 = v11;
    v27 = &v11[a5];
    v28 = 299;
    v108 = a5;
    if (a5 < 0x12B)
    {
      v28 = a5;
    }

    v29 = &v27[-v28];
    if (v25 >= 0x19)
    {
      v25 = 25;
    }

    v30 = v24 - v25;
    v116 = a3;
    v31 = v15 + 9368;
    v32 = v11;
    v114 = v24 - v25;
    v115 = &v27[-v28];
    while (1)
    {
      if ((v24 - v19) <= 7)
      {
        v97 = v22;
        if (v22 <= 0x37u)
        {
          do
          {
            if (v19 == v24)
            {
              if (++v23 > 8)
              {
                goto LABEL_154;
              }
            }

            else
            {
              v98 = *v19++;
              v21 |= v98 << v97;
            }

            v22 += 8;
            v97 = v22;
          }

          while (v22 < 0x38u);
        }
      }

      else
      {
        v21 |= *v19 << v22;
        v19 = &v19[-((v22 >> 3) & 7) + 7];
        v22 |= 0x38u;
      }

      v33 = (v21 >> 1) & 3;
      if (v33 > 1)
      {
        if (v33 != 2)
        {
          goto LABEL_154;
        }

        v15[11552] = 0;
        v15[16] = (v21 >> 17) & 7;
        v44 = v21 >> 20;
        v45 = v22 - 20;
        if ((v24 - v19) <= 7)
        {
          v99 = v22 - 20;
          if ((v22 - 20) <= 0x37u)
          {
            do
            {
              if (v19 == v24)
              {
                if (++v23 > 8)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                v100 = *v19++;
                v44 |= v100 << v99;
              }

              v45 += 8;
              v99 = v45;
            }

            while (v45 < 0x38u);
          }
        }

        else
        {
          v44 |= *v19 << v45;
          v19 = &v19[-((v45 >> 3) & 7) + 7];
          v45 |= 0x38u;
        }

        v46 = 0;
        v112 = (v21 >> 3) + 257;
        v113 = ((v21 >> 8) & 0x1F) + 1;
        v118 = (v21 >> 13) & 0xF;
        v47 = (v21 >> 13) & 0xF;
        do
        {
          v15[*(&unk_29B6C25A8 + v46 + 1)] = v44 & 7;
          v44 >>= 3;
          ++v46;
        }

        while (v47 + 3 != v46);
        v110 = v26;
        v111 = v23;
        v109 = v21;
        if (v46 <= 0x11)
        {
          do
          {
            v15[*(&unk_29B6C25A8 + v47 + 4)] = 0;
            v48 = v47 + 4;
            ++v47;
          }

          while (v48 < 0x12);
        }

        if (!sub_29B2C1D70(v15 + 115, v15, 0x13u, dword_29B6C25BC, 7u, 7u, (v15 + 10976), 0))
        {
LABEL_162:
          v16 = 0;
          v17 = 0;
          a3 = v116;
LABEL_155:
          v13 = 0x2A1B6C000uLL;
          break;
        }

        v49 = 0;
        v50 = -3 * v118 + v45 - 9;
        v51 = v112 + v113;
        v52 = v15 + 460;
        do
        {
          v53 = v50;
          if (v50 <= 0xDu)
          {
            if ((v24 - v19) <= 7)
            {
              while (1)
              {
                if (v19 == v24)
                {
                  if (++v111 > 8)
                  {
                    goto LABEL_162;
                  }
                }

                else
                {
                  v59 = *v19++;
                  v44 |= v59 << v53;
                }

                v50 += 8;
                v53 = v50;
                if (v50 >= 0x38u)
                {
                  goto LABEL_41;
                }
              }
            }

            v44 |= *v19 << v50;
            v19 = &v19[-((v50 >> 3) & 7) + 7];
            v50 |= 0x38u;
          }

LABEL_41:
          v54 = *&v52[4 * (v44 & 0x7F)];
          v44 >>= v54;
          v50 -= v54;
          v55 = v54 >> 20;
          v56 = HIWORD(v54);
          if (v55)
          {
            if (v56 == 17)
            {
              v58 = (v44 & 7) + 3;
              v44 >>= 3;
              v50 -= 3;
              v15[v49] = 0;
              v15[v49 + 1] = 0;
              v15[v49 + 2] = 0;
              v15[v49 + 3] = 0;
              v15[v49 + 4] = 0;
              v15[v49 + 5] = 0;
              v15[v49 + 6] = 0;
              v15[v49 + 7] = 0;
              v15[v49 + 8] = 0;
              v15[v49 + 9] = 0;
            }

            else
            {
              if (v56 == 16)
              {
                if (!v49)
                {
                  goto LABEL_162;
                }

                v57 = v15[v49 - 1];
                v58 = (v44 & 3) + 3;
                v44 >>= 2;
                v50 -= 2;
                v15[v49] = v57;
                v15[v49 + 1] = v57;
                v15[v49 + 2] = v57;
                v15[v49 + 3] = v57;
                v15[v49 + 4] = v57;
                v15[v49 + 5] = v57;
              }

              else
              {
                v117 = (v44 & 0x7F) + 11;
                v44 >>= 7;
                v50 -= 7;
                bzero(&v15[v49], v117);
                v52 = v15 + 460;
                v58 = v117;
              }

              v51 = v112 + v113;
            }

            v49 += v58;
          }

          else
          {
            v15[v49++] = v56;
          }
        }

        while (v49 < v51);
        v64 = v49 == v51;
        v62 = v112;
        if (!v64)
        {
          goto LABEL_163;
        }

        v63 = sub_29B2C1D70(v15 + 2342, &v15[v112], v113, dword_29B6C2608, 8u, 0xFu, (v15 + 10976), 0);
      }

      else
      {
        if (!v33)
        {
          v34 = (v22 - 3) >> 3;
          v35 = v23 >= v34;
          v36 = v23 - v34;
          if (v36 != 0 && v35)
          {
            goto LABEL_154;
          }

          v37 = &v19[v36];
          if (v24 - v37 < 4)
          {
            goto LABEL_154;
          }

          v38 = *v37;
          if ((*(v37 + 1) ^ v38) == 0xFFFF)
          {
            v39 = (v37 + 4);
            if (v27 - v32 >= v38 && v24 - (v37 + 4) >= v38)
            {
              v41 = v21;
              v42 = v26;
              memcpy(v32, v39, v38);
              v43 = 0;
              v22 = 0;
              v23 = 0;
              v19 = &v39[v38];
              v32 += v38;
              v26 = v42;
              LOBYTE(v21) = v41;
              v29 = v115;
              a3 = v116;
              v30 = v114;
              goto LABEL_130;
            }
          }

LABEL_163:
          v16 = 0;
          v17 = 0;
          v13 = 0x2A1B6C000;
          a3 = v116;
          break;
        }

        v44 = v21 >> 3;
        v50 = v22 - 3;
        if (v15[11552])
        {
          goto LABEL_66;
        }

        v110 = v26;
        v111 = v23;
        v109 = v21;
        v15[11552] = 1;
        *&v60 = 0x808080808080808;
        *(&v60 + 1) = 0x808080808080808;
        *v15 = v60;
        *(v15 + 1) = v60;
        *(v15 + 2) = v60;
        *(v15 + 3) = v60;
        *(v15 + 4) = v60;
        *(v15 + 5) = v60;
        *(v15 + 6) = v60;
        *(v15 + 7) = v60;
        *&v61 = 0x909090909090909;
        *(&v61 + 1) = 0x909090909090909;
        *(v15 + 8) = v60;
        *(v15 + 9) = v61;
        *(v15 + 10) = v61;
        *(v15 + 11) = v61;
        *(v15 + 12) = v61;
        *(v15 + 13) = v61;
        *(v15 + 14) = v61;
        *(v15 + 15) = v61;
        memset(v15 + 256, 7, 24);
        *(v15 + 35) = 0x808080808080808;
        v62 = 288;
        *&v61 = 0x505050505050505;
        *(&v61 + 1) = 0x505050505050505;
        *(v15 + 18) = v61;
        *(v15 + 19) = v61;
        v63 = sub_29B2C1D70(v15 + 2342, v15 + 288, 0x20u, dword_29B6C2608, 8u, 0xFu, (v15 + 10976), 0);
      }

      if (!v63)
      {
        goto LABEL_163;
      }

      v65 = sub_29B2C1D70(v15, v15, v62, dword_29B6C2688, 0xBu, 0xFu, (v15 + 10976), v15 + 2889);
      LOBYTE(v21) = v109;
      v26 = v110;
      v30 = v114;
      v29 = v115;
      a3 = v116;
      v23 = v111;
      if (!v65)
      {
        goto LABEL_154;
      }

LABEL_66:
      v66 = ~(-1 << *(v15 + 2889));
      if (v19 >= v30 || v32 >= v29)
      {
        while (1)
        {
          while (1)
          {
LABEL_106:
            if ((v24 - v19) <= 7)
            {
              v94 = v50;
              if (v50 <= 0x37u)
              {
                do
                {
                  if (v19 == v24)
                  {
                    if (++v23 > 8)
                    {
                      goto LABEL_154;
                    }
                  }

                  else
                  {
                    v95 = *v19++;
                    v44 |= v95 << v94;
                  }

                  v50 += 8;
                  v94 = v50;
                }

                while (v50 < 0x38u);
              }
            }

            else
            {
              v44 |= *v19 << v50;
              v19 = &v19[-((v50 >> 3) & 7) + 7];
              v50 |= 0x38u;
            }

            v87 = *&v15[4 * (v44 & v66)];
            v88 = v44 >> v87;
            v50 -= v87;
            if ((v87 & 0x4000) != 0)
            {
              LODWORD(v87) = *&v15[4 * (v88 & ~(-1 << SBYTE1(v87))) + 4 * (v87 >> 16)];
              v43 = v88 >> v87;
              v50 -= v87;
              v44 = v88;
            }

            else
            {
              v43 = v44 >> v87;
            }

            if ((v87 & 0x80000000) == 0)
            {
              break;
            }

            if (v32 == v27)
            {
              goto LABEL_154;
            }

            *v32++ = BYTE2(v87);
            v44 = v43;
          }

          if ((v87 & 0x2000) != 0)
          {
            v22 = v50;
            goto LABEL_130;
          }

          v89 = WORD1(v87) + ((v44 & ~(-1 << v87)) >> (BYTE1(v87) & 0xDF));
          if (v27 - v32 < v89)
          {
            break;
          }

          v90 = *&v31[4 * v43];
          if ((v90 & 0x8000) != 0)
          {
            v43 >>= 8;
            v50 -= 8;
            LODWORD(v90) = *&v31[4 * (v43 & ~(-1 << SBYTE1(v90))) + 4 * (v90 >> 16)];
          }

          v91 = ((v43 & ~(-1 << v90)) >> SBYTE1(v90)) + WORD1(v90);
          if (&v32[-v26] < v91)
          {
            break;
          }

          v44 = v43 >> v90;
          v50 -= v90;
          v92 = &v32[v89];
          *v32 = v32[-v91];
          v93 = v32 + 2;
          v32[1] = v32[-v91 + 1];
          do
          {
            *v93 = v93[-v91];
            ++v93;
          }

          while (v93 < v92);
          v32 = v92;
        }

LABEL_154:
        v16 = 0;
        v17 = 0;
        goto LABEL_155;
      }

      v44 |= *v19 << v50;
      v19 = &v19[-((v50 >> 3) & 7) + 7];
      v50 |= 0x38u;
      v67 = *&v15[4 * (v44 & v66)];
      while (1)
      {
        v68 = v44 >> v67;
        v22 = v50 - v67;
        if ((v67 & 0x80000000) == 0)
        {
          v43 = v44 >> v67;
          v68 = v44;
          if ((v67 & 0x8000) != 0)
          {
            goto LABEL_88;
          }

          goto LABEL_71;
        }

        v80 = HIWORD(v67);
        v67 = *&v15[4 * (v68 & v66)];
        v81 = v68 >> v67;
        v22 -= v67;
        *v32 = v80;
        if ((v67 & 0x80000000) != 0)
        {
          break;
        }

        ++v32;
        v43 = v68 >> v67;
        if ((v67 & 0x8000) != 0)
        {
          goto LABEL_88;
        }

LABEL_71:
        v69 = v67;
        v70 = v43;
LABEL_72:
        v71 = *&v31[4 * v70];
        if ((v71 & 0x8000) != 0)
        {
          if (v22 <= 0x25u)
          {
            v70 |= *v19 << v22;
            v19 = &v19[-((v22 >> 3) & 7) + 7];
            v22 |= 0x38u;
          }

          v70 >>= 8;
          v22 -= 8;
          LODWORD(v71) = *&v31[4 * (v70 & ~(-1 << SBYTE1(v71))) + 4 * (v71 >> 16)];
        }

        else if (v22 <= 0x1Eu)
        {
          v70 |= *v19 << v22;
          v19 = &v19[-((v22 >> 3) & 7) + 7];
          v22 |= 0x38u;
        }

        v72 = ((v70 & ~(-1 << v71)) >> SBYTE1(v71)) + WORD1(v71);
        if (&v32[-v26] < v72)
        {
          goto LABEL_154;
        }

        v73 = ((v68 & ~(-1 << v69)) >> SBYTE1(v67)) + HIWORD(v67);
        v22 -= v71;
        v74 = v70 >> v71;
        v75 = &v32[-v72];
        v76 = &v32[v73];
        v67 = *&v15[4 * (v74 & v66)];
        v44 = (*v19 << v22) | v74;
        v19 = &v19[-((v22 >> 3) & 7) + 7];
        if (v72 < 8)
        {
          if (v72 == 1)
          {
            v78 = 0x101010101010101 * *v75;
            *v32 = v78;
            *(v32 + 1) = v78;
            *(v32 + 2) = v78;
            *(v32 + 3) = v78;
            if (v73 >= 0x21)
            {
              v79 = (v32 + 32);
              do
              {
                *v79 = v78;
                v79[1] = v78;
                v79[2] = v78;
                v79[3] = v78;
                v79 += 4;
              }

              while (v79 < v76);
            }
          }

          else
          {
            v82 = *v75;
            *v32 = v82;
            *&v32[v72] = v82;
            do
            {
              v83 = *&v32[v72];
              *&v32[2 * v72] = v83;
              *&v32[3 * v72] = v83;
              v32 += v72 + v72;
            }

            while (&v32[2 * v72] < v76);
          }
        }

        else
        {
          *v32 = *v75;
          *(v32 + 1) = v75[1];
          *(v32 + 2) = v75[2];
          *(v32 + 3) = v75[3];
          *(v32 + 4) = v75[4];
          if (v73 >= 0x29)
          {
            v77 = v32 + 40;
            do
            {
              *v77 = *(v77 - v72);
              v77[1] = *(v77 - v72 + 8);
              v77[2] = *(v77 - v72 + 16);
              v77[3] = *(v77 - v72 + 24);
              v77[4] = *(v77 - v72 + 32);
              v77 += 5;
            }

            while (v77 < v76);
          }
        }

        v32 = v76;
LABEL_95:
        v50 = v22 | 0x38;
        if (v19 >= v30 || v32 >= v29)
        {
          goto LABEL_106;
        }
      }

      v84 = HIWORD(v67);
      v67 = *&v15[4 * (v81 & v66)];
      v43 = v81 >> v67;
      v22 -= v67;
      v32[1] = v84;
      if ((v67 & 0x80000000) != 0)
      {
        v85 = HIWORD(v67);
        v67 = *&v15[4 * (v43 & v66)];
        v44 = (*v19 << v22) | v43;
        v19 = &v19[-((v22 >> 3) & 7) + 7];
        v32[2] = v85;
        v32 += 3;
        goto LABEL_95;
      }

      v32 += 2;
      v68 = v81;
      if ((v67 & 0x8000) == 0)
      {
        goto LABEL_71;
      }

LABEL_88:
      if ((v67 & 0x2000) != 0)
      {
        goto LABEL_130;
      }

      v67 = *&v15[4 * (v43 & ~(-1 << (BYTE1(v67) & 0x1F))) + 4 * HIWORD(v67)];
      v70 = v43 >> v67;
      v22 -= v67;
      if ((v67 & 0x80000000) != 0)
      {
        v86 = HIWORD(v67);
        v67 = *&v15[4 * (v70 & v66)];
        v44 = (*v19 << v22) | v70;
        v19 = &v19[-((v22 >> 3) & 7) + 7];
        *v32++ = v86;
        goto LABEL_95;
      }

      if ((v67 & 0x2000) == 0)
      {
        v69 = v67;
        v68 = v43;
        goto LABEL_72;
      }

      v43 >>= v67;
LABEL_130:
      v96 = v21;
      v21 = v43;
      if (v96)
      {
        v101 = v22 >> 3;
        v35 = v23 >= v101;
        v102 = v23 - v101;
        if (v102 != 0 && v35)
        {
          goto LABEL_154;
        }

        v103 = v108;
        if (v107)
        {
          v103 = &v32[-v26];
          *v107 = &v32[-v26];
          goto LABEL_151;
        }

        if (v32 != v27)
        {
          goto LABEL_154;
        }

LABEL_151:
        v104 = &v19[v102];
        v13 = 0x2A1B6C000;
        if (v26)
        {
          v105 = (off_2A1B6C3F8[0])(1, v26, v103);
        }

        else
        {
          v105 = 1;
        }

        if (v105 == bswap32(*v104))
        {
          v16 = v104 - v106 + 4;
          v17 = 1;
          break;
        }

LABEL_6:
        v16 = 0;
        v17 = 0;
        break;
      }
    }
  }

  (*(v13 + 1008))(v15);
  if ((v17 & (v16 == a3)) != 0)
  {
    return 0;
  }

  else
  {
    return 23;
  }
}

int8x16_t *sub_29AB33DC8(int8x16_t *result, int8x16_t *a2, unint64_t a3)
{
  a2->i8[0] ^= 0x80u;
  v3 = 0uLL;
  if (a3 >= 0x10)
  {
    v4 = a3 >> 4;
    v5.i64[0] = 0x8080808080808080;
    v5.i64[1] = 0x8080808080808080;
    v6.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v6.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v7 = a2;
    do
    {
      v8 = veorq_s8(*v7, v5);
      v9 = vaddq_s8(vextq_s8(0, v8, 0xFuLL), v8);
      v10 = vaddq_s8(vextq_s8(0, v9, 0xEuLL), v9);
      v11 = vaddq_s8(vextq_s8(0, v10, 0xCuLL), v10);
      v12 = vaddq_s8(vaddq_s8(v11, v3), vextq_s8(0, v11, 8uLL));
      *v7++ = v12;
      v3 = vqtbl1q_s8(v12, v6);
      --v4;
    }

    while (v4);
  }

  v13 = a3 & 0xFFFFFFFFFFFFFFF0;
  if ((a3 & 0xFFFFFFFFFFFFFFF0) != a3)
  {
    v14 = v3.u8[15];
    do
    {
      v14 = (a2->u8[v13] + v14) ^ 0xFFFFFF80;
      a2->i8[v13++] = v14;
    }

    while (v13 < a3);
  }

  v15 = a3 + 1;
  if (a3 >= 0x20)
  {
    v17 = a3 >> 5;
    v18 = v15 >> 1;
    do
    {
      v19 = *a2;
      v20 = *(a2++ + v18);
      *result = vzip1q_s8(v19, v20);
      result[1] = vzip2q_s8(v19, v20);
      result += 2;
      --v17;
    }

    while (v17);
    v16 = &a2->i8[v18];
  }

  else
  {
    v16 = &a2->i8[v15 >> 1];
  }

  v21 = a3 & 0xFFFFFFFFFFFFFFE0;
  if ((a3 & 0xFFFFFFFFFFFFFFE0) != a3)
  {
    do
    {
      if (v21)
      {
        v22 = v16;
      }

      else
      {
        v22 = a2;
      }

      v16 += v21 & 1;
      a2 = (a2 + !(v21 & 1));
      result->i8[0] = *v22;
      result = (result + 1);
      ++v21;
    }

    while (v21 < a3);
  }

  return result;
}

uint64_t sub_29AB33ED4(uint64_t a1, unsigned int *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = *(a1 + 16);
  }

  else
  {
    v10 = 0;
  }

  if (a3 > 0x13)
  {
    if (a7 == 786440)
    {
      v12 = *a2;
      v11 = 23;
      if (v12 <= 0x10000)
      {
        v13 = a2[1];
        if (v13 <= 0x10000)
        {
          v14 = a2[3];
          if (((v14 + 7) >> 3) + 20 <= a3)
          {
            v16 = (a2 + 5);
            v17 = a3 - 20;
            v48 = a6 + 524296;
            bzero((a6 + 524296), 0x40000uLL);
            bzero(a6, 0x80008uLL);
            if (v12 <= v13)
            {
              v19 = 0;
              v20 = 0;
              v21 = v13 + 1;
              v22 = v12;
              v18 = v16;
              while (1)
              {
                if (v19 <= 5)
                {
                  if (v18 - v16 >= v17)
                  {
                    goto LABEL_35;
                  }

                  v23 = *v18++;
                  v20 = v23 | (v20 << 8);
                  v19 |= 8u;
                }

                v24 = v19 - 6;
                v25 = (v20 >> (v19 - 6)) & 0x3F;
                *(a6 + 8 * v22) = v25;
                if (v25 == 63)
                {
                  if (v24 <= 7)
                  {
                    if (v18 - v16 >= v17)
                    {
                      goto LABEL_35;
                    }

                    v26 = *v18++;
                    v20 = v26 | (v20 << 8);
                    v24 = v19 + 2;
                  }

                  v24 -= 8;
                  v27 = (v20 >> v24) + 6;
                  if (v27 + v22 > v21)
                  {
                    goto LABEL_35;
                  }

                  do
                  {
                    *(a6 + 8 * v22++) = 0;
                    --v27;
                  }

                  while (v27);
                }

                else if (v25 <= 0x3A)
                {
                  ++v22;
                }

                else
                {
                  v28 = v25 - 57;
                  if (v25 - 57 + v22 > v21)
                  {
                    goto LABEL_35;
                  }

                  do
                  {
                    *(a6 + 8 * v22++) = 0;
                    --v28;
                  }

                  while (v28);
                }

                v19 = v24;
                if (v22 > v13)
                {
                  goto LABEL_34;
                }
              }
            }

            v18 = v16;
LABEL_34:
            v17 = &v16[v17] - v18;
            sub_29AB2BF10(a6);
            v16 = v18;
LABEL_35:
            if (v14 <= 8 * v17)
            {
              v29 = sub_29AB21010;
              if (v10)
              {
                v30 = *(v10 + 88);
                v29 = *(v10 + 96);
              }

              else
              {
                v30 = j__malloc;
              }

              if (v12 <= v13)
              {
                v31 = v13 + 1;
                v46 = v29;
                v47 = v30;
                do
                {
                  v32 = *(a6 + 8 * v12);
                  v33 = v32 >> 6;
                  if (v32 >> 6 >> v32)
                  {
                    goto LABEL_63;
                  }

                  v34 = v32 & 0x3F;
                  if (v34 < 0xF)
                  {
                    if (v34)
                    {
                      v41 = v48 + 16 * (v33 << (14 - v34));
                      v42 = 1 << (14 - v34);
                      while (!*v41 && !*(v41 + 8))
                      {
                        *v41 = v34;
                        *(v41 + 4) = v12;
                        v41 += 16;
                        if (!--v42)
                        {
                          goto LABEL_61;
                        }
                      }

LABEL_63:
                      v11 = 23;
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    v35 = v48 + 16 * (v33 >> (v34 - 14));
                    if (*v35)
                    {
                      goto LABEL_63;
                    }

                    v36 = *(v35 + 4) + 1;
                    *(v35 + 4) = v36;
                    v37 = *(v35 + 8);
                    if (v37)
                    {
                      v38 = (v30)(4 * v36);
                      *(v35 + 8) = v38;
                      if (v38 && *(v35 + 4) != 1)
                      {
                        v39 = 0;
                        do
                        {
                          *(v38 + 4 * v39) = v37[v39];
                          ++v39;
                        }

                        while (v39 < (*(v35 + 4) - 1));
                      }

                      v46(v37);
                      v40 = *(v35 + 8);
                    }

                    else
                    {
                      v40 = (v30)(4);
                      *(v35 + 8) = v40;
                    }

                    if (!v40)
                    {
                      v11 = 1;
                      goto LABEL_64;
                    }

                    *(v40 + 4 * (*(v35 + 4) - 1)) = v12;
                    v30 = v47;
                    v31 = v13 + 1;
                  }

LABEL_61:
                  ++v12;
                }

                while (v31 != v12);
              }

              v11 = sub_29AB342A4(a6, v48, v16, v14, v13, a5, a4);
LABEL_64:
              if (v10)
              {
                v43 = *(v10 + 96);
              }

              else
              {
                v43 = sub_29AB21010;
              }

              v44 = 0;
              v45 = a6 + 524304;
              do
              {
                if (*(v45 + v44))
                {
                  v43();
                  *(v45 + v44) = 0;
                }

                v44 += 16;
              }

              while (v44 != 0x40000);
            }

            else
            {
              return 23;
            }
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else
    {
      return 3;
    }
  }

  else if (a5)
  {
    return 3;
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t sub_29AB342A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = (a7 + 2 * a6);
  v8 = &a3[(a4 + 7) >> 3];
  if (a4)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = a7;
    do
    {
      v12 = *a3++;
      v9 = v12 | (v9 << 8);
      v13 = (v10 + 8);
      if (v10 >= 6)
      {
        while (1)
        {
          v14 = a2 + 16 * ((v9 >> (v13 - 14)) & 0x3FFF);
          v15 = *v14;
          if (*v14)
          {
            v10 = (v13 - v15);
            if (v13 < v15)
            {
              return 23;
            }

            v16 = *(v14 + 4);
            if (v16 == a5)
            {
              if (v10 <= 7)
              {
                if (a3 >= v8)
                {
                  return 1;
                }

                v17 = *a3++;
                v9 = v17 | (v9 << 8);
                LODWORD(v10) = v10 + 8;
              }

              v10 = (v10 - 8);
              v18 = v9 >> v10;
              if (&v11[(v9 >> v10)] > v7)
              {
                return 23;
              }

              if ((v11 - 1) < a7)
              {
                return 1;
              }

              if ((v9 >> v10))
              {
                v19 = *(v11 - 1);
                do
                {
                  LODWORD(v18) = v18 - 1;
                  *v11++ = v19;
                }

                while (v18);
              }
            }

            else
            {
              if (v11 >= v7)
              {
                return 23;
              }

              *v11++ = v16;
            }
          }

          else
          {
            v20 = *(v14 + 8);
            if (!v20)
            {
              return 23;
            }

            v21 = *(v14 + 4);
            if (v21)
            {
              v22 = 0;
              while (1)
              {
                v23 = *(v20 + 4 * v22);
                v24 = *(a1 + 8 * v23) & 0x3FLL;
                v25 = a3 < v8;
                for (i = v13 < v24; v13 < v24 && a3 < v8; i = v13 < v24)
                {
                  v28 = *a3++;
                  v9 = v28 | (v9 << 8);
                  LODWORD(v13) = v13 + 8;
                  v25 = a3 < v8;
                }

                if (!i)
                {
                  v29 = (v13 - v24);
                  if (((v9 >> v29) & ~(-1 << *(a1 + 8 * v23))) == *(a1 + 8 * v23) >> 6)
                  {
                    break;
                  }
                }

                if (++v22 == v21)
                {
                  return 23;
                }
              }

              if (v23 == a5)
              {
                if (v29 <= 7)
                {
                  if (!v25)
                  {
                    return 1;
                  }

                  v30 = *a3++;
                  v9 = v30 | (v9 << 8);
                  LODWORD(v29) = v29 + 8;
                }

                v13 = (v29 - 8);
                v31 = v9 >> (v29 - 8);
                if (&v11[v31] > v7)
                {
                  return 23;
                }

                if ((v11 - 1) < a7)
                {
                  return 1;
                }

                if ((v9 >> (v29 - 8)))
                {
                  v32 = *(v11 - 1);
                  do
                  {
                    LODWORD(v31) = v31 - 1;
                    *v11++ = v32;
                  }

                  while (v31);
                }
              }

              else
              {
                if (v11 >= v7)
                {
                  return 23;
                }

                *v11++ = v23;
                v13 = v29;
              }
            }

            else
            {
              LODWORD(v22) = 0;
            }

            v10 = v13;
            if (v22 == v21)
            {
              return 23;
            }
          }

          v13 = v10;
          if (v10 <= 13)
          {
            goto LABEL_48;
          }
        }
      }

      LODWORD(v10) = v10 + 8;
LABEL_48:
      ;
    }

    while (a3 < v8);
  }

  else
  {
    LODWORD(v10) = 0;
    v9 = 0;
    v11 = a7;
  }

  v33 = -a4 & 7;
  v34 = v10 - v33;
  if (v10 - v33 < 1)
  {
    return v11 != v7;
  }

  v35 = v9 >> v33;
  while (1)
  {
    v36 = (a2 + 16 * ((v35 << (14 - v34)) & 0x3FFF));
    v37 = *v36;
    if (!*v36 || v34 < v37)
    {
      break;
    }

    v34 -= v37;
    v39 = v36[1];
    if (v39 == a5)
    {
      if (v34 <= 7)
      {
        if (a3 >= v8)
        {
          return 1;
        }

        v40 = *a3++;
        v35 = v40 | (v35 << 8);
        v34 += 8;
      }

      v34 -= 8;
      v41 = v35 >> v34;
      if (&v11[(v35 >> v34)] > v7)
      {
        return 23;
      }

      if ((v11 - 1) < a7)
      {
        return 1;
      }

      if ((v35 >> v34))
      {
        v42 = *(v11 - 1);
        do
        {
          LODWORD(v41) = v41 - 1;
          *v11++ = v42;
        }

        while (v41);
      }
    }

    else
    {
      if (v11 >= v7)
      {
        return 23;
      }

      *v11++ = v39;
    }

    if (v34 <= 0)
    {
      return v11 != v7;
    }
  }

  return 23;
}

unint64_t sub_29AB34594(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = *a1 + 12;
    do
    {
      v6 = *(v4 - 4);
      v5 = *v4;
      if (*v4 <= 0)
      {
        v7 = -(-*v4 & 3);
      }

      else
      {
        v7 = *v4 & 3;
      }

      if (v7)
      {
        v5 = v5 - v7 + 4;
      }

      if (v6 <= 0)
      {
        v8 = -(-v6 & 3);
      }

      else
      {
        v8 = *(v4 - 4) & 3;
      }

      if (v8)
      {
        v6 = v6 - v8 + 4;
      }

      v3 += *(v4 + 13) * v5 * v6;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  if (v3 <= a2)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29AB34620(uint64_t a1, _BYTE *__src, unint64_t a3, char *__dst, unint64_t a5)
{
  v99 = *MEMORY[0x29EDCA608];
  LODWORD(v7) = *(a1 + 8);
  v80 = a1;
  if (v7 < 1)
  {
LABEL_53:
    v54 = *(a1 + 36);
    if (v54 < 1)
    {
      return 0;
    }

    v55 = 0;
    v56 = 0;
    while (1)
    {
      if (v7 < 1)
      {
        goto LABEL_66;
      }

      v57 = 0;
      v58 = 0;
      v59 = *(a1 + 32) + v55;
      v60 = *(a1 + 160);
      do
      {
        v61 = *a1 + v57;
        v62 = *(v61 + 25) * *(v61 + 12);
        v63 = v62 * *(v61 + 8);
        if (!v63)
        {
          goto LABEL_64;
        }

        v64 = *(v61 + 20);
        v65 = v55;
        if (v64 >= 2)
        {
          if (v59 % v64)
          {
            v60 += v63;
            goto LABEL_64;
          }

          v65 = v55 / v64;
        }

        v56 += v62;
        if (v56 > a5)
        {
          return 1;
        }

        memcpy(__dst, (v60 + v62 * v65), v62);
        a1 = v80;
        __dst += v62;
        v60 += v63;
        LOWORD(v7) = *(v80 + 8);
LABEL_64:
        ++v58;
        v57 += 48;
      }

      while (v58 < v7);
      v54 = *(a1 + 36);
LABEL_66:
      if (++v55 >= v54)
      {
        return 0;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 160);
  v12 = xmmword_29B433DF0;
  v13 = xmmword_29B433E00;
  v14 = xmmword_29B433E10;
  v15 = xmmword_29B430070;
  v16 = vdupq_n_s64(0xFuLL);
  v77 = v16;
  while (1)
  {
    v17 = *a1 + 48 * v9;
    v18 = *(v17 + 12);
    v78 = *(v17 + 8);
    v19 = v78 * v18 * *(v17 + 25);
    if (!v19)
    {
      goto LABEL_52;
    }

    if (*(v17 + 26) != 1)
    {
      break;
    }

    if (v78 >= 1)
    {
      v20 = 0;
      v70 = __dst;
      v71 = a5;
      v68 = v11;
      v69 = v9;
      v67 = v78 * v18 * *(v17 + 25);
      v75 = *a1 + 48 * v9;
      while (1)
      {
        v72 = v20;
        if (v18 >= 1)
        {
          break;
        }

LABEL_48:
        a5 = v71;
        v20 = v72 + 4;
        v9 = v69;
        __dst = v70;
        v19 = v67;
        v11 = v68;
        if (v72 + 4 >= v78)
        {
          goto LABEL_49;
        }
      }

      v21 = 0;
      v22 = &v11[2 * v20 * v18];
      v23 = &v22[2 * v18];
      v24 = &v23[2 * v18];
      v82 = &v24[2 * v18];
      v76 = v20 | 3;
      v73 = v20 | 2;
      v74 = v20 | 1;
      while (1)
      {
        if (v10 + 3 > a3)
        {
          return 1;
        }

        v25 = __src[2];
        if (v25 < 0x34)
        {
          v37 = v10 + 14;
          if (v37 > a3)
          {
            return 1;
          }

          v38 = 0;
          v39 = *__src;
          __srca = __rev16(v39);
          v40 = -32 << (v25 >> 2);
          v41 = v40 + (bswap32(v39) >> 16);
          v87 = (((__src[3] >> 4) & 0xFFFFFFCF | (16 * (v25 & 3))) << (v25 >> 2)) + v41;
          v42 = (__src[4] >> 6) & 0xFFFFFFC3 | (4 * (__src[3] & 0xF));
          v91 = (v42 << (v25 >> 2)) + v87 + v40;
          v95 = (((__src[4] & 0x3F) + v42 - 32) << (v25 >> 2)) + v87 + v40;
          v43 = __src[5];
          v84 = (v43 >> 2 << (v25 >> 2)) + v41;
          v88 = (((__src[6] >> 4) & 0xFFFFFFCF | (16 * (v43 & 3))) << (v25 >> 2)) + v87 + v40;
          v92 = v91 + v40 + (((__src[7] >> 6) & 0xFFFFFFC3 | (4 * (__src[6] & 0xF))) << (v25 >> 2));
          v96 = v95 + v40 + ((__src[7] & 0x3F) << (v25 >> 2));
          v44 = __src[8];
          v85 = v84 + v40 + (v44 >> 2 << (v25 >> 2));
          v89 = v88 + v40 + (((__src[9] >> 4) & 0xFFFFFFCF | (16 * (v44 & 3))) << (v25 >> 2));
          v93 = v92 + v40 + (((__src[10] >> 6) & 0xFFFFFFC3 | (4 * (__src[9] & 0xF))) << (v25 >> 2));
          v97 = v96 + v40 + ((__src[10] & 0x3F) << (v25 >> 2));
          v45 = __src[11];
          v86 = v85 + v40 + (v45 >> 2 << (v25 >> 2));
          v90 = v89 + v40 + (((__src[12] >> 4) & 0xFFFFFFCF | (16 * (v45 & 3))) << (v25 >> 2));
          v94 = v93 + v40 + (((__src[13] >> 6) & 0xFFFFFFC3 | (4 * (__src[12] & 0xF))) << (v25 >> 2));
          v98 = v97 + v40 + ((__src[13] & 0x3F) << (v25 >> 2));
          do
          {
            *(&__srca + v38) = vbslq_s8(vcltzq_s16(*(&__srca + v38)), (*(&__srca + v38) & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*(&__srca + v38)));
            v38 += 16;
          }

          while (v38 != 32);
          v36 = 14;
        }

        else
        {
          v26 = 0;
          v27 = _byteswap_ushort(*__src);
          v28 = v27 & 0x7FFF;
          if (((*__src << 8) & 0x8000u) == 0)
          {
            v28 = ~v27;
          }

          __srca = v28;
          v29 = &v87;
          do
          {
            v30 = vdupq_n_s64(v26);
            v31 = vorrq_s8(v30, v15);
            if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v31)), *v30.i8), *v30.i8).u8[0])
            {
              *(v29 - 3) = v28;
            }

            if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), v31)), *&v30), *&v30).i8[1])
            {
              *(v29 - 2) = v28;
            }

            if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), vorrq_s8(v30, v14)))), *&v30).i8[2])
            {
              *(v29 - 1) = v28;
              *v29 = v28;
            }

            v32 = vorrq_s8(v30, v13);
            if (vuzp1_s8(*&v30, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), v32)), *&v30)).i32[1])
            {
              v29[1] = v28;
            }

            if (vuzp1_s8(*&v30, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), v32)), *&v30)).i8[5])
            {
              v29[2] = v28;
            }

            v33 = vorrq_s8(v30, v12);
            if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), v33)))).i8[6])
            {
              v29[3] = v28;
            }

            v34 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), v33));
            v35 = vuzp1_s16(v34, v34);
            if (vuzp1_s8(v35, v35).i8[7])
            {
              v29[4] = v28;
            }

            v26 += 8;
            v29 += 8;
          }

          while (v26 != 16);
          v36 = 3;
          v37 = v10 + 3;
        }

        v81 = v37;
        if (*(v17 + 24))
        {
          v46 = 0;
          v47 = exrcore_logTable;
          do
          {
            *(&__srca + v46) = *(v47 + 2 * *(&__srca + v46));
            v46 += 2;
          }

          while (v46 != 32);
        }

        v48 = v18;
        if ((v21 | 3) >= v18)
        {
          v49 = 2 * (v18 - v21);
        }

        else
        {
          v49 = 8;
        }

        memcpy(v22, &__srca, v49);
        v50 = v78;
        if (v76 >= v78)
        {
          if (v74 < v78)
          {
            memcpy(v23, &v87, v49);
            v50 = v78;
          }

          if (v73 >= v50)
          {
            goto LABEL_47;
          }

          v51 = &v91;
          v52 = v24;
        }

        else
        {
          memcpy(v23, &v87, v49);
          memcpy(v24, &v91, v49);
          v51 = &v95;
          v52 = v82;
        }

        memcpy(v52, v51, v49);
LABEL_47:
        __src += v36;
        v22 += 8;
        v23 += 8;
        v24 += 8;
        v10 = v81;
        v82 += 8;
        v21 += 4;
        v18 = v48;
        a1 = v80;
        v13 = xmmword_29B433E00;
        v12 = xmmword_29B433DF0;
        v15 = xmmword_29B430070;
        v14 = xmmword_29B433E10;
        v16 = v77;
        v17 = v75;
        if (v21 >= v48)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_49:
    v11 += v19;
LABEL_52:
    ++v9;
    v7 = *(a1 + 8);
    if (v9 >= v7)
    {
      goto LABEL_53;
    }
  }

  v10 += v19;
  if (v10 <= a3)
  {
    v53 = v78 * v18 * *(v17 + 25);
    memcpy(v11, __src, v19);
    v16 = v77;
    v15 = xmmword_29B430070;
    v14 = xmmword_29B433E10;
    v13 = xmmword_29B433E00;
    v12 = xmmword_29B433DF0;
    a1 = v80;
    __src += v53;
    v11 += v53;
    goto LABEL_52;
  }

  return 1;
}