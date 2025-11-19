uint64_t sub_2774B3DF8(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B45DC;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B45DC;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B3E50;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B3E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  a56 = *MEMORY[0x277D85DE8];
  vars0 = a2;
  v57 = *(a2 + 8);
  v58 = *(a1 + 16);
  v59 = *(a1 + 20);
  v60 = (*(v57 + 1000) + 16 * v58 * a3);
  v61 = *(v57 + 416);
  v62 = *(v57 + 424);
  v63 = *(a1 + 8);
  v64 = *(a1 + 12);
  v65 = v64 * a3;
  v66 = *(v57 + 531);
  v67 = *(v57 + 400) + ((v61 * v65) << v66);
  v68 = *(v57 + 408) + ((v62 * v65) << v66);
  v69 = *(a1 + 32);
  v165 = *(a1 + 48);
  if (a3)
  {
    v70 = 38;
  }

  else
  {
    v70 = 2;
  }

  if (a3)
  {
    v71 = 17;
  }

  else
  {
    v71 = 1;
  }

  HIDWORD(vars8) = a3;
  v158 = v62;
  v163 = v68;
  v152 = v57;
  if (v59 - 1 <= a3)
  {
    HIDWORD(v159) = v71;
    v73 = *(v57 + 524) - v65;
  }

  else
  {
    v70 = v70 | 0x88;
    HIDWORD(v159) = v71 | 0x40;
    v72 = *(v57 + 520);
    HIDWORD(v157) = v63;
    memcpy(*(a1 + 40), (v67 + v61 * (v64 - 1)), v72);
    memcpy(*(a1 + 56), (v68 + v62 * (*(a1 + 12) - 1)), 2 * v72);
    v63 = HIDWORD(v157);
    v73 = *(a1 + 12);
    v58 = *(a1 + 16);
  }

  v164 = v73;
  v162 = a1;
  v153 = &v151;
  if (v58 < 2)
  {
    LODWORD(v156) = 0;
    v101 = 0;
    v74 = 0;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v154 = &v162[9].i64[5 * v63 + 1];
    v155 = v73;
    v156 = &v162[-3].i64[5 * v63];
    HIDWORD(v159) |= v70;
    do
    {
      v77 = sub_2774B3014(vars0, v74, HIDWORD(vars8), v70);
      v79 = *v60;
      v80 = (v79 & 1) == 0;
      if (v79)
      {
        v81 = (v79 >> 1) & 7;
        if (v81 > 4)
        {
          return result;
        }

        if (v81 == 4)
        {
          v82 = 0;
          v83 = v60[13];
          a37 = 0u;
          a38 = 0u;
          do
          {
            *(&a37 + ((v83 + v82) & 0x1F)) = v60[v82 + 1];
            ++v82;
          }

          while (v82 != 4);
        }

        else
        {
          LOWORD(a37) = *(v60 + 1);
          *(&a37 + 3) = *(v60 + 3);
          BYTE2(a37) = 0;
        }

        if ((v75 & (v164 > 0)) == 1)
        {
          v84 = (v67 - 1);
          v85 = &a41;
          v86 = v155;
          do
          {
            *v85++ = *v84;
            v84 += v61;
            --v86;
          }

          while (v86);
        }

        v87 = v77;
        (*(v156 + 8 * v81))(v67, v61, &a37);
        v77 = v87;
        LODWORD(v79) = *v60;
      }

      v88 = (v79 & 0x10) == 0;
      if ((v79 & 0x10) != 0)
      {
        if (v79 > 0x9F)
        {
          return result;
        }

        v89 = v79 >> 5;
        HIDWORD(v157) = v80;
        if (v89 == 4)
        {
          v90 = 0;
          v91 = v60[14];
          a37 = 0u;
          a38 = 0u;
          do
          {
            *(&a37 + ((v91 + v90) & 0x1F)) = v60[v90 + 5];
            ++v90;
          }

          while (v90 != 4);
          v92 = 0;
          v93 = v60[15];
          a39 = 0u;
          a40 = 0u;
          v94 = v158;
          do
          {
            *(&a39 + ((v93 + v92) & 0x1F)) = v60[v92 + 9];
            ++v92;
          }

          while (v92 != 4);
        }

        else
        {
          LOWORD(a37) = *(v60 + 5);
          *(&a37 + 3) = *(v60 + 7);
          BYTE2(a37) = 0;
          LOWORD(a39) = *(v60 + 9);
          *(&a39 + 3) = *(v60 + 11);
          BYTE2(a39) = 0;
          v94 = v158;
        }

        v95 = v88;
        if (v76 && v164 > 0)
        {
          v96 = (v163 - 2);
          v97 = &a13;
          v98 = v155;
          do
          {
            *v97 = *v96;
            v97 += 2;
            v96 = (v96 + v94);
            --v98;
          }

          while (v98);
        }

        (*(v154 + 8 * v89))(v163, v94, &a37, v77, &a13, v165, v164);
        v88 = v95;
        v80 = HIDWORD(v157);
      }

      v99 = v162->i32[3];
      v67 += v99;
      v69 += v99;
      v163 += 2 * v99;
      v165 += 2 * v99;
      v60 += 16;
      v74 = (v74 + 1);
      v75 = v80;
      v76 = v88;
      v100 = v80;
      v70 = HIDWORD(v159);
    }

    while (v74 < v162[1].i32[0] - 1);
    v101 = v100;
    LODWORD(v156) = v88;
    LOBYTE(v70) = BYTE4(v159);
  }

  v102 = sub_2774B3014(vars0, v74, HIDWORD(vars8), v70 & 0x5D);
  v103 = *(v152 + 520) - (v162[1].i32[0] - 1) * v162->i32[3];
  v104 = *v60;
  if (v104)
  {
    v105 = (v104 >> 1) & 7;
    if (v105 > 4)
    {
      return result;
    }

    if (v105 == 4)
    {
      v106 = (v60 + 1);
      v107 = v60[13];
      result = 0uLL;
      a37 = 0u;
      a38 = 0u;
      v108 = 4;
      do
      {
        v109 = *v106++;
        *(&a37 + (v107++ & 0x1F)) = v109;
        --v108;
      }

      while (v108);
    }

    else
    {
      LOWORD(a37) = *(v60 + 1);
      *(&a37 + 3) = *(v60 + 3);
      BYTE2(a37) = 0;
    }

    if (v164 > 0)
    {
      v110 = v101;
    }

    else
    {
      v110 = 0;
    }

    if (v110 == 1)
    {
      v111 = (v67 - 1);
      v112 = v164;
      v113 = &a41;
      do
      {
        *v113++ = *v111;
        v111 += v61;
        --v112;
      }

      while (v112);
    }

    if ((v102 & 4) != 0)
    {
      v114 = 34;
    }

    else
    {
      v114 = 2;
    }

    if ((v102 & 4) != 0)
    {
      v115 = 17;
    }

    else
    {
      v115 = 1;
    }

    v116 = v114 & 0xFFFFFF7F | (((v102 & 8) != 0) << 7);
    v117 = v115 & 0xFFFFFFBF | (((v102 & 8) != 0) << 6);
    LODWORD(vars0) = v103;
    v118 = v103 >> 3;
    v119 = &v162[12] + v105;
    v120 = v102;
    v121 = 4;
    HIDWORD(vars8) = v102;
    do
    {
      if ((v118 & (1 << --v121)) != 0)
      {
        v118 -= 1 << v121;
        if (v118)
        {
          v122 = v116;
        }

        else
        {
          v122 = 0;
        }

        v123 = v120 & 0xC | v117;
        (*v119)(v67, v61, &a37, v122 | v120, &a41, v69, v164);
        v67 += 8 << v121;
        v120 = v123;
        v69 += 8 << v121;
      }

      v119 -= 5;
    }

    while (v121);
    LODWORD(v104) = *v60;
    v102 = HIDWORD(vars8);
    v103 = vars0;
  }

  if ((v104 & 0x10) == 0)
  {
LABEL_93:
    result = vextq_s8(v162[2], v162[2], 8uLL);
    v150 = vextq_s8(v162[3], v162[3], 8uLL);
    v162[2] = result;
    v162[3] = v150;
    return result;
  }

  if (v104 <= 0x9F)
  {
    v124 = v104 >> 5;
    if (v124 == 4)
    {
      v125 = (v60 + 5);
      v126 = v60[14];
      a37 = 0u;
      a38 = 0u;
      v127 = 4;
      v128 = v158;
      v129 = v162;
      v130 = v163;
      v131 = v156;
      do
      {
        v132 = *v125++;
        *(&a37 + (v126++ & 0x1F)) = v132;
        --v127;
      }

      while (v127);
      v133 = (v60 + 9);
      v134 = v60[15];
      a39 = 0u;
      a40 = 0u;
      v135 = 4;
      do
      {
        v136 = *v133++;
        *(&a39 + (v134++ & 0x1F)) = v136;
        --v135;
      }

      while (v135);
    }

    else
    {
      LOWORD(a37) = *(v60 + 5);
      *(&a37 + 3) = *(v60 + 7);
      BYTE2(a37) = 0;
      LOWORD(a39) = *(v60 + 9);
      *(&a39 + 3) = *(v60 + 11);
      BYTE2(a39) = 0;
      v128 = v158;
      v129 = v162;
      v130 = v163;
      v131 = v156;
    }

    if (v164 > 0)
    {
      v137 = v131;
    }

    else
    {
      v137 = 0;
    }

    if (v137 == 1)
    {
      v138 = (v130 - 2);
      v139 = v164;
      v140 = &a13;
      do
      {
        *v140 = *v138;
        v140 += 2;
        v138 = (v138 + v128);
        --v139;
      }

      while (v139);
    }

    if ((v102 & 4) != 0)
    {
      v141 = 34;
    }

    else
    {
      v141 = 2;
    }

    if ((v102 & 4) != 0)
    {
      v142 = 17;
    }

    else
    {
      v142 = 1;
    }

    v143 = v141 & 0xFFFFFF7F | (((v102 & 8) != 0) << 7);
    v144 = v142 & 0xFFFFFFBF | (((v102 & 8) != 0) << 6);
    v145 = v103 >> 2;
    v146 = &v129[24].i64[v124 + 1];
    v147 = 5;
    do
    {
      if ((v145 & (1 << --v147)) != 0)
      {
        v145 -= 1 << v147;
        if (v145)
        {
          v148 = v143;
        }

        else
        {
          v148 = 0;
        }

        v149 = v102 & 0xC | v144;
        (*v146)(v163, v158, &a37, v148 | v102, &a13, v165, v164);
        v163 += 8 << v147;
        v102 = v149;
        v165 += 8 << v147;
      }

      v146 -= 5;
    }

    while (v147);
    goto LABEL_93;
  }

  return result;
}

int8x16_t sub_2774B45DC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{
  v62 = MEMORY[0x28223BE20](a1);
  v64 = v62;
  v65 = &v163;
  STACK[0x12238] = *MEMORY[0x277D85DE8];
  v179 = v66;
  v67 = *(v66 + 8);
  v68 = *(v62 + 16);
  v69 = *(v62 + 20);
  v70 = (*(v67 + 1000) + 16 * v68 * v63);
  v71 = *(v67 + 416);
  v72 = *(v67 + 424);
  v73 = *(v62 + 8);
  v74 = *(v62 + 12);
  v75 = v74 * v63;
  v76 = *(v67 + 531);
  v77 = *(v67 + 400) + ((v71 * v75) << v76);
  v78 = *(v67 + 408) + ((v72 * v75) << v76);
  v79 = *(v62 + 32);
  v181 = *(v62 + 48);
  v182 = v78;
  if (v63)
  {
    v80 = 38;
  }

  else
  {
    v80 = 2;
  }

  if (v63)
  {
    v81 = 17;
  }

  else
  {
    v81 = 1;
  }

  v178 = v63;
  v173 = *(v67 + 416);
  v165 = v67;
  if (v69 - 1 <= v63)
  {
    v174 = v81;
    v83 = *(v67 + 524) - v75;
  }

  else
  {
    v80 = v80 | 0x88;
    v174 = v81 | 0x40;
    v82 = *(v67 + 520);
    memcpy(*(v62 + 40), (v77 + v71 * (v74 - 1)), v82);
    memcpy(*(v64 + 56), (v78 + v72 * (*(v64 + 12) - 1)), 2 * v82);
    v83 = *(v64 + 12);
    v68 = *(v64 + 16);
  }

  v180 = v83;
  v177 = v64;
  if (v68 < 2)
  {
    vars8_4 = 0;
    v112 = 0;
    v84 = 0;
  }

  else
  {
    v169 = v72;
    v164 = &v163;
    v84 = 0;
    v85 = 0;
    LODWORD(v72) = 0;
    v166 = v64 + 40 * (v73 - 2) + 232;
    v167 = v83;
    v168 = v64 + 40 * (v73 - 3) + 72;
    vars8 = v174 | v80;
    do
    {
      v86 = sub_2774B3014(v179, v84, v178, v80);
      v88 = v86;
      v89 = *v70;
      v90 = (v89 & 1) == 0;
      v175 = v90;
      if (v89)
      {
        vars8_4 = v72;
        v72 = v79;
        v91 = v86;
        v92 = (v89 >> 1) & 7;
        if (v92 > 4)
        {
          return result;
        }

        if (v92 == 4)
        {
          v93 = 0;
          v94 = v70[13];
          a44 = 0u;
          a45 = 0u;
          v95 = v173;
          do
          {
            *(&a44 + ((v94 + v93) & 0x1F)) = v70[v93 + 1];
            ++v93;
          }

          while (v93 != 4);
        }

        else
        {
          LOWORD(a44) = *(v70 + 1);
          *(&a44 + 3) = *(v70 + 3);
          BYTE2(a44) = 0;
          v95 = v173;
        }

        if (v85 && v180 > 0)
        {
          v96 = (v77 - 1);
          v97 = &a48;
          v98 = v167;
          do
          {
            *v97++ = *v96;
            v96 += v95;
            --v98;
          }

          while (v98);
        }

        sub_27744807C(&__dst, v179, v84 << *(v64 + 8), v178 << *(v64 + 8), *(v64 + 12), v180, 0);
        v99 = *(v168 + 8 * v92);
        v88 = v91;
        v100 = v91;
        v79 = v72;
        v99(v77, v95, &a44, v100, &a48, v72, v180);
        sub_27744812C(&__dst);
        LODWORD(v89) = *v70;
        v90 = v175;
        LOBYTE(v72) = vars8_4;
      }

      v101 = (v89 & 0x10) == 0;
      if ((v89 & 0x10) != 0)
      {
        if (v89 > 0x9F)
        {
          return result;
        }

        v102 = v89 >> 5;
        vars0 = v79;
        if (v89 >> 5 == 4)
        {
          v103 = 0;
          v104 = v70[14];
          a44 = 0u;
          a45 = 0u;
          do
          {
            *(&a44 + ((v104 + v103) & 0x1F)) = v70[v103 + 5];
            ++v103;
          }

          while (v103 != 4);
          v105 = 0;
          v106 = v70[15];
          a46 = 0u;
          a47 = 0u;
          do
          {
            *(&a46 + ((v106 + v105) & 0x1F)) = v70[v105 + 9];
            ++v105;
          }

          while (v105 != 4);
        }

        else
        {
          LOWORD(a44) = *(v70 + 5);
          *(&a44 + 3) = *(v70 + 7);
          BYTE2(a44) = 0;
          LOWORD(a46) = *(v70 + 9);
          *(&a46 + 3) = *(v70 + 11);
          BYTE2(a46) = 0;
        }

        vars8_4 = v101;
        v107 = v169;
        if ((v72 & (v180 > 0)) == 1)
        {
          v108 = (v182 - 2);
          v109 = &a20;
          v110 = v167;
          do
          {
            *v109 = *v108;
            v109 += 2;
            v108 = (v108 + v107);
            --v110;
          }

          while (v110);
        }

        sub_27744807C(&__dst, v179, v84 << *(v64 + 8), v178 << *(v64 + 8), *(v64 + 12), v180, 1u);
        (*(v166 + 8 * v102))(v182, v107, &a44, v88, &a20, v181, v180);
        sub_27744812C(&__dst);
        v101 = vars8_4;
        v90 = v175;
        v79 = vars0;
      }

      v111 = *(v64 + 12);
      v77 += v111;
      v79 += v111;
      v181 += 2 * v111;
      v182 += 2 * v111;
      v70 += 16;
      v84 = (v84 + 1);
      v85 = v90;
      LODWORD(v72) = v101;
      v80 = vars8;
    }

    while (v84 < *(v64 + 16) - 1);
    v112 = v90;
    vars8_4 = v101;
    LOBYTE(v80) = vars8;
    v65 = v164;
    v72 = v169;
  }

  v176 = sub_2774B3014(v179, v84, v178, v80 & 0x5D);
  v113 = *(v165 + 520) - (*(v64 + 16) - 1) * *(v64 + 12);
  v114 = *v70;
  v115 = v65;
  if (v114)
  {
    v116 = (v114 >> 1) & 7;
    if (v116 > 4)
    {
      return result;
    }

    if (v116 == 4)
    {
      v117 = (v70 + 1);
      v118 = v70[13];
      a44 = 0u;
      a45 = 0u;
      v119 = 4;
      v121 = v173;
      do
      {
        v120 = *v117++;
        *(&a44 + (v118++ & 0x1F)) = v120;
        --v119;
      }

      while (v119);
    }

    else
    {
      LOWORD(a44) = *(v70 + 1);
      *(&a44 + 3) = *(v70 + 3);
      BYTE2(a44) = 0;
      v121 = v173;
    }

    v169 = v72;
    v164 = v115;
    if (v180 > 0 && v112)
    {
      v123 = (v77 - 1);
      v124 = v180;
      v125 = &a48;
      do
      {
        *v125++ = *v123;
        v123 += v121;
        --v124;
      }

      while (v124);
    }

    sub_27744807C(&__dst, v179, v84 << *(v64 + 8), v178 << *(v64 + 8), v113, v180, 0);
    if ((v176 & 4) != 0)
    {
      v126 = 34;
    }

    else
    {
      v126 = 2;
    }

    if ((v176 & 4) != 0)
    {
      v127 = 17;
    }

    else
    {
      v127 = 1;
    }

    v128 = v126 & 0xFFFFFF7F | (((v176 & 8) != 0) << 7);
    v129 = v127 & 0xFFFFFFBF | (((v176 & 8) != 0) << 6);
    v130 = v64;
    vars8 = v113;
    v131 = v113 >> 3;
    v132 = (v130 + 8 * v116 + 192);
    v133 = 4;
    v134 = v176;
    do
    {
      if ((v131 & (1 << --v133)) != 0)
      {
        v131 -= 1 << v133;
        if (v131)
        {
          v135 = v128;
        }

        else
        {
          v135 = 0;
        }

        v136 = v134 & 0xC | v129;
        (*v132)(v77, v173, &a44, v135 | v134, &a48, v79, v180);
        v77 += 8 << v133;
        v134 = v136;
        v79 += 8 << v133;
      }

      v132 -= 5;
    }

    while (v133);
    sub_27744812C(&__dst);
    LODWORD(v114) = *v70;
    v115 = v164;
    v64 = v177;
    v72 = v169;
    v113 = vars8;
  }

  if ((v114 & 0x10) == 0)
  {
LABEL_96:
    result = vextq_s8(*(v64 + 32), *(v64 + 32), 8uLL);
    v162 = vextq_s8(*(v64 + 48), *(v64 + 48), 8uLL);
    *(v64 + 32) = result;
    *(v64 + 48) = v162;
    return result;
  }

  if (v114 <= 0x9F)
  {
    v137 = v114 >> 5;
    if (v114 >> 5 == 4)
    {
      v138 = (v70 + 5);
      v139 = v70[14];
      a44 = 0u;
      a45 = 0u;
      v140 = 4;
      v141 = vars8_4;
      v142 = v176;
      do
      {
        v143 = *v138++;
        *(&a44 + (v139++ & 0x1F)) = v143;
        --v140;
      }

      while (v140);
      v144 = (v70 + 9);
      v145 = v70[15];
      a46 = 0u;
      a47 = 0u;
      v146 = 4;
      do
      {
        v147 = *v144++;
        *(&a46 + (v145++ & 0x1F)) = v147;
        --v146;
      }

      while (v146);
    }

    else
    {
      LOWORD(a44) = *(v70 + 5);
      *(&a44 + 3) = *(v70 + 7);
      BYTE2(a44) = 0;
      LOWORD(a46) = *(v70 + 9);
      *(&a46 + 3) = *(v70 + 11);
      BYTE2(a46) = 0;
      v141 = vars8_4;
      v142 = v176;
    }

    v164 = v115;
    if (v180 > 0 && v141)
    {
      v149 = (v182 - 2);
      v150 = v180;
      v151 = &a20;
      do
      {
        *v151 = *v149;
        v151 += 2;
        v149 = (v149 + v72);
        --v150;
      }

      while (v150);
    }

    v152 = v72;
    sub_27744807C(&__dst, v179, v84 << *(v64 + 8), v178 << *(v64 + 8), v113, v180, 1u);
    if ((v142 & 4) != 0)
    {
      v153 = 34;
    }

    else
    {
      v153 = 2;
    }

    v154 = v64;
    if ((v142 & 4) != 0)
    {
      v155 = 17;
    }

    else
    {
      v155 = 1;
    }

    v156 = v153 & 0xFFFFFF7F | (((v142 & 8) != 0) << 7);
    v157 = v155 & 0xFFFFFFBF | (((v142 & 8) != 0) << 6);
    v158 = v113 >> 2;
    v159 = (v154 + 8 * v137 + 392);
    v160 = 5;
    do
    {
      if ((v158 & (1 << --v160)) != 0)
      {
        v158 -= 1 << v160;
        if (v158)
        {
          v161 = v156;
        }

        else
        {
          v161 = 0;
        }

        (*v159)(v182, v152, &a44, v161 | v142, &a20, v181, v180);
        v142 = v142 & 0xC | v157;
        v181 += 8 << v160;
        v182 += 8 << v160;
      }

      v159 -= 5;
    }

    while (v160);
    sub_27744812C(&__dst);
    v64 = v177;
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_2774B4EB4(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B56BC;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B56BC;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B4F0C;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B4F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, __int128 a54, __int128 a55, __int128 a56, char a57)
{
  v57 = a1;
  v159 = &v157;
  STACK[0x578] = *MEMORY[0x277D85DE8];
  vars0 = a2;
  v58 = *(a2 + 8);
  v59 = *(a1 + 16);
  v60 = *(a1 + 20);
  v61 = (*(v58 + 1000) + 16 * v59 * a3);
  v62 = *(v58 + 416);
  v63 = *(v58 + 424);
  v65 = *(a1 + 8);
  v64 = *(a1 + 12);
  v66 = v64 * a3;
  v67 = *(v58 + 531);
  v68 = *(v58 + 400) + ((v62 * v66) << v67);
  v69 = *(v58 + 408) + ((v63 * v66) << v67);
  v172 = *(a1 + 48);
  v173 = *(a1 + 32);
  if (a3)
  {
    v70 = 38;
  }

  else
  {
    v70 = 2;
  }

  if (a3)
  {
    v71 = 17;
  }

  else
  {
    v71 = 1;
  }

  HIDWORD(vars8) = a3;
  v165 = v62;
  if (v60 - 1 <= a3)
  {
    v73 = *(v58 + 524) - v66;
  }

  else
  {
    v70 = v70 | 0x88;
    v71 |= 0x40u;
    v72 = 2 * *(v58 + 520);
    memcpy(*(a1 + 40), (v68 + 2 * v62 * (v64 - 1)), v72);
    memcpy(v57[3].i64[1], (v69 + 2 * v63 * (v57->i32[3] - 1)), v72 & 0x7FFFFFFFFFFFFFFELL);
    v73 = v57->u32[3];
    v59 = v57[1].i32[0];
  }

  v171 = v73;
  v166 = v57;
  v163 = v63;
  if (v59 < 2)
  {
    LODWORD(v162) = 0;
    v104 = 0;
    v74 = 0;
  }

  else
  {
    v158 = v58;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = &v57->i8[40 * v65];
    v160 = v77 + 112;
    v161 = v73;
    v162 = v77 - 48;
    HIDWORD(v164) = v71 | v70;
    v78 = 2 * v165;
    do
    {
      v169 = v76;
      v79 = sub_2774B3014(vars0, v74, HIDWORD(vars8), v70);
      v81 = *v61;
      v82 = (v81 & 1) == 0;
      if (v81)
      {
        v83 = (v81 >> 1) & 7;
        if (v83 > 4)
        {
          return result;
        }

        if (v83 == 4)
        {
          v84 = 0;
          v85 = v61[13];
          a53 = 0u;
          a54 = 0u;
          do
          {
            *(&a53 + ((v85 + v84) & 0x1F)) = v61[v84 + 1];
            ++v84;
          }

          while (v84 != 4);
        }

        else
        {
          LOWORD(a53) = *(v61 + 1);
          *(&a53 + 3) = *(v61 + 3);
          BYTE2(a53) = 0;
        }

        v86 = v82;
        if (v75 && v171 > 0)
        {
          v87 = (v68 - 2);
          v88 = &a57;
          v89 = v161;
          do
          {
            *v88 = *v87;
            v88 += 2;
            v87 = (v87 + v78);
            --v89;
          }

          while (v89);
        }

        v90 = v79;
        (*&v162[8 * v83])(v68, v165, &a53);
        v79 = v90;
        LODWORD(v81) = *v61;
        v82 = v86;
      }

      v91 = (v81 & 0x10) == 0;
      v92 = v69;
      if ((v81 & 0x10) != 0)
      {
        if (v81 > 0x9F)
        {
          return result;
        }

        v93 = v81 >> 5;
        if (v93 == 4)
        {
          v94 = 0;
          v95 = v61[14];
          a53 = 0u;
          a54 = 0u;
          do
          {
            *(&a53 + ((v95 + v94) & 0x1F)) = v61[v94 + 5];
            ++v94;
          }

          while (v94 != 4);
          v96 = 0;
          v97 = v61[15];
          a55 = 0u;
          a56 = 0u;
          do
          {
            *(&a55 + ((v97 + v96) & 0x1F)) = v61[v96 + 9];
            ++v96;
          }

          while (v96 != 4);
        }

        else
        {
          LOWORD(a53) = *(v61 + 5);
          *(&a53 + 3) = *(v61 + 7);
          BYTE2(a53) = 0;
          LOWORD(a55) = *(v61 + 9);
          *(&a55 + 3) = *(v61 + 11);
          BYTE2(a55) = 0;
        }

        v98 = v82;
        v99 = v91;
        if (v169 && v171 > 0)
        {
          v100 = (v92 - 4);
          v101 = &a13;
          v102 = v161;
          do
          {
            *v101 = *v100;
            v101 += 4;
            v100 = (v100 + 2 * v63);
            --v102;
          }

          while (v102);
        }

        (*&v160[8 * v93])(v92, v163, &a53, v79, &a13, v172, v171);
        v91 = v99;
        v82 = v98;
      }

      v103 = v166->i32[3];
      v68 += 2 * v103;
      v69 = v92 + 2 * v103;
      v172 += 2 * v103;
      v173 += 2 * v103;
      v61 += 16;
      v74 = (v74 + 1);
      v75 = v82;
      v76 = v91;
      v70 = HIDWORD(v164);
    }

    while (v74 < v166[1].i32[0] - 1);
    v104 = v82;
    LODWORD(v162) = v91;
    LOBYTE(v70) = BYTE4(v164);
    v57 = v166;
    v58 = v158;
  }

  v170 = v69;
  HIDWORD(vars8) = sub_2774B3014(vars0, v74, HIDWORD(vars8), v70 & 0x5D);
  v105 = *(v58 + 520) - (v57[1].i32[0] - 1) * v57->i32[3];
  v106 = *v61;
  if (v106)
  {
    v107 = (v106 >> 1) & 7;
    if (v107 > 4)
    {
      return result;
    }

    if (v107 == 4)
    {
      v108 = (v61 + 1);
      v109 = v61[13];
      result = 0uLL;
      a53 = 0u;
      a54 = 0u;
      v110 = 4;
      do
      {
        v111 = *v108++;
        *(&a53 + (v109++ & 0x1F)) = v111;
        --v110;
      }

      while (v110);
    }

    else
    {
      LOWORD(a53) = *(v61 + 1);
      *(&a53 + 3) = *(v61 + 3);
      BYTE2(a53) = 0;
    }

    if (v171 > 0 && v104)
    {
      v113 = (v68 - 2);
      v114 = 2 * v165;
      v115 = &a57;
      v116 = v171;
      do
      {
        *v115 = *v113;
        v115 += 2;
        v113 = (v113 + v114);
        --v116;
      }

      while (v116);
    }

    v117 = v68;
    if ((vars8 & 0x400000000) != 0)
    {
      v118 = 34;
    }

    else
    {
      v118 = 2;
    }

    if ((vars8 & 0x400000000) != 0)
    {
      v119 = 17;
    }

    else
    {
      v119 = 1;
    }

    v120 = v118 & 0xFFFFFF7F | (((vars8 & 0x800000000) != 0) << 7);
    v121 = v119 & 0xFFFFFFBF | (((vars8 & 0x800000000) != 0) << 6);
    LODWORD(vars0) = v105;
    v122 = v105 >> 3;
    v123 = &v57[12] + v107;
    v124 = 4;
    v125 = HIDWORD(vars8);
    do
    {
      if ((v122 & (1 << --v124)) != 0)
      {
        v122 -= 1 << v124;
        if (v122)
        {
          v126 = v120;
        }

        else
        {
          v126 = 0;
        }

        v127 = v125 & 0xC | v121;
        (*v123)(v117, v165, &a53, v126 | v125, &a57, v173, v171);
        v117 += 2 * (8 << v124);
        v125 = v127;
        v173 += 2 * (8 << v124);
      }

      v123 -= 5;
    }

    while (v124);
    LODWORD(v106) = *v61;
    v105 = vars0;
  }

  v128 = HIDWORD(vars8);
  if ((v106 & 0x10) == 0)
  {
LABEL_93:
    v155 = v166;
    result = vextq_s8(v166[2], v166[2], 8uLL);
    v156 = vextq_s8(v166[3], v166[3], 8uLL);
    v166[2] = result;
    v155[3] = v156;
    return result;
  }

  if (v106 <= 0x9F)
  {
    v129 = v106 >> 5;
    if (v129 == 4)
    {
      v130 = (v61 + 5);
      v131 = v61[14];
      a53 = 0u;
      a54 = 0u;
      v132 = 4;
      v133 = v166;
      v134 = v163;
      v135 = v170;
      v136 = v162;
      do
      {
        v137 = *v130++;
        *(&a53 + (v131++ & 0x1F)) = v137;
        --v132;
      }

      while (v132);
      v138 = (v61 + 9);
      v139 = v61[15];
      a55 = 0u;
      a56 = 0u;
      v140 = 4;
      do
      {
        v141 = *v138++;
        *(&a55 + (v139++ & 0x1F)) = v141;
        --v140;
      }

      while (v140);
    }

    else
    {
      LOWORD(a53) = *(v61 + 5);
      *(&a53 + 3) = *(v61 + 7);
      BYTE2(a53) = 0;
      LOWORD(a55) = *(v61 + 9);
      *(&a55 + 3) = *(v61 + 11);
      BYTE2(a55) = 0;
      v133 = v166;
      v134 = v163;
      v135 = v170;
      v136 = v162;
    }

    if (v171 > 0)
    {
      v142 = v136;
    }

    else
    {
      v142 = 0;
    }

    if (v142 == 1)
    {
      v143 = (v135 - 4);
      v144 = &a13;
      v145 = v171;
      do
      {
        *v144 = *v143;
        v144 += 4;
        v143 = (v143 + 2 * v134);
        --v145;
      }

      while (v145);
    }

    if ((v128 & 4) != 0)
    {
      v146 = 34;
    }

    else
    {
      v146 = 2;
    }

    if ((v128 & 4) != 0)
    {
      v147 = 17;
    }

    else
    {
      v147 = 1;
    }

    v148 = v146 & 0xFFFFFF7F | (((v128 & 8) != 0) << 7);
    v149 = v147 & 0xFFFFFFBF | (((v128 & 8) != 0) << 6);
    v150 = v105 >> 3;
    v151 = &v133[24].i64[v129 + 1];
    v152 = 5;
    do
    {
      if ((v150 & (1 << --v152)) != 0)
      {
        v150 -= 1 << v152;
        if (v150)
        {
          v153 = v148;
        }

        else
        {
          v153 = 0;
        }

        v154 = v128;
        v128 = v128 & 0xC | v149;
        (*v151)(v170, v163, &a53, v153 | v154, &a13, v172, v171);
        v170 += 2 * (8 << v152);
        v172 += 2 * (8 << v152);
      }

      v151 -= 5;
    }

    while (v152);
    goto LABEL_93;
  }

  return result;
}

int8x16_t sub_2774B56BC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t __dst)
{
  v19 = MEMORY[0x28223BE20](a1);
  v21 = &v118;
  STACK[0x122F8] = *MEMORY[0x277D85DE8];
  v134 = v22;
  v23 = *(v22 + 8);
  v24 = *(v19 + 16);
  v25 = *(v19 + 20);
  v26 = (*(v23 + 1000) + 16 * v24 * v20);
  v27 = *(v23 + 416);
  v28 = *(v23 + 424);
  v30 = *(v19 + 8);
  v29 = *(v19 + 12);
  v31 = v29 * v20;
  v32 = *(v23 + 531);
  v33 = *(v23 + 400) + ((v27 * v31) << v32);
  v34 = *(v23 + 408) + ((v28 * v31) << v32);
  v136 = *(v19 + 48);
  v137 = *(v19 + 32);
  if (v20)
  {
    v35 = 38;
  }

  else
  {
    v35 = 2;
  }

  if (v20)
  {
    v36 = 17;
  }

  else
  {
    v36 = 1;
  }

  v133 = v20;
  v129 = *(v23 + 416);
  v130 = v19;
  vars0 = *(v23 + 424);
  v138 = v33;
  v120 = v23;
  if (v25 - 1 <= v20)
  {
    v39 = v34;
    v40 = *(v23 + 524) - v31;
  }

  else
  {
    v37 = v19;
    v35 = v35 | 0x88;
    v36 |= 0x40u;
    v38 = 2 * *(v23 + 520);
    memcpy(*(v19 + 40), (v33 + 2 * v27 * (v29 - 1)), v38);
    v39 = v34;
    memcpy(*(v37 + 56), (v34 + 2 * v28 * (*(v37 + 12) - 1)), v38 & 0x7FFFFFFFFFFFFFFELL);
    v40 = *(v37 + 12);
    v24 = *(v37 + 16);
  }

  v135 = v40;
  if (v24 < 2)
  {
    vars8_4 = 0;
    v67 = 0;
    v41 = 0;
  }

  else
  {
    v119 = &v118;
    v41 = 0;
    v42 = 0;
    LODWORD(v43) = 0;
    v44 = &v130->i8[40 * v30];
    v121 = v44 + 112;
    v122 = v40;
    v123 = v44 - 48;
    vars8 = v36 | v35;
    v45 = 2 * vars0;
    do
    {
      v46 = sub_2774B3014(v134, v41, v133, v35);
      v48 = v46;
      v49 = *v26;
      v50 = (v49 & 1) == 0;
      v131 = v50;
      if (v49)
      {
        vars8_4 = v43;
        v43 = v46;
        v51 = (v49 >> 1) & 7;
        if (v51 > 4)
        {
          return result;
        }

        if (v51 == 4)
        {
          v52 = 0;
          v53 = v26[13];
          *&STACK[0x12200] = 0u;
          *&STACK[0x12210] = 0u;
          do
          {
            *(&STACK[0x12200] + ((v53 + v52) & 0x1F)) = v26[v52 + 1];
            ++v52;
          }

          while (v52 != 4);
        }

        else
        {
          LOWORD(STACK[0x12200]) = *(v26 + 1);
          LOWORD(STACK[0x12203]) = *(v26 + 3);
          LOBYTE(STACK[0x12202]) = 0;
        }

        if (v42 && v135 > 0)
        {
          v54 = (v138 - 2);
          v55 = &STACK[0x12240];
          v56 = v122;
          do
          {
            *v55 = *v54;
            v55 = (v55 + 2);
            v54 += v129;
            --v56;
          }

          while (v56);
        }

        sub_277449FEC(&__dst, v134, v41 << v130->i32[2], v133 << v130->i32[2], v130->i32[3], v135, 0);
        v57 = *&v123[8 * v51];
        v48 = v43;
        v57(v138, v129, &STACK[0x12200], v43, &STACK[0x12240], v137, v135);
        sub_27744A0A4(&__dst);
        LODWORD(v49) = *v26;
        v50 = v131;
        LOBYTE(v43) = vars8_4;
      }

      v58 = (v49 & 0x10) == 0;
      if ((v49 & 0x10) != 0)
      {
        if (v49 > 0x9F)
        {
          return result;
        }

        HIDWORD(v124) = v49 >> 5;
        if (v49 >> 5 == 4)
        {
          v59 = 0;
          v60 = v26[14];
          *&STACK[0x12200] = 0u;
          *&STACK[0x12210] = 0u;
          do
          {
            *(&STACK[0x12200] + ((v60 + v59) & 0x1F)) = v26[v59 + 5];
            ++v59;
          }

          while (v59 != 4);
          v61 = 0;
          v62 = v26[15];
          *&STACK[0x12220] = 0u;
          *&STACK[0x12230] = 0u;
          do
          {
            *(&STACK[0x12220] + ((v62 + v61) & 0x1F)) = v26[v61 + 9];
            ++v61;
          }

          while (v61 != 4);
        }

        else
        {
          LOWORD(STACK[0x12200]) = *(v26 + 5);
          LOWORD(STACK[0x12203]) = *(v26 + 7);
          LOBYTE(STACK[0x12202]) = 0;
          LOWORD(STACK[0x12220]) = *(v26 + 9);
          LOWORD(STACK[0x12223]) = *(v26 + 11);
          LOBYTE(STACK[0x12222]) = 0;
        }

        LODWORD(v125) = v48;
        vars8_4 = v58;
        if ((v43 & (v135 > 0)) == 1)
        {
          v63 = (v39 - 4);
          v64 = &STACK[0x120C0];
          v65 = v122;
          do
          {
            *v64 = *v63;
            v64 = (v64 + 4);
            v63 = (v63 + v45);
            --v65;
          }

          while (v65);
        }

        sub_277449FEC(&__dst, v134, v41 << v130->i32[2], v133 << v130->i32[2], v130->i32[3], v135, 1u);
        (*&v121[8 * HIDWORD(v124)])(v39, vars0, &STACK[0x12200], v125, &STACK[0x120C0], v136, v135);
        sub_27744A0A4(&__dst);
        v58 = vars8_4;
        v50 = v131;
      }

      v66 = v130->i32[3];
      v137 += 2 * v66;
      v138 += 2 * v66;
      v39 += 2 * v66;
      v136 += 2 * v66;
      v26 += 16;
      v41 = (v41 + 1);
      v42 = v50;
      LODWORD(v43) = v58;
      v35 = vars8;
    }

    while (v41 < v130[1].i32[0] - 1);
    v67 = v50;
    vars8_4 = v58;
    LOBYTE(v35) = vars8;
    v21 = v119;
  }

  v132 = sub_2774B3014(v134, v41, v133, v35 & 0x5D);
  v68 = *(v120 + 520) - (v130[1].i32[0] - 1) * v130->i32[3];
  v69 = *v26;
  if (v69)
  {
    v70 = (v69 >> 1) & 7;
    if (v70 > 4)
    {
      return result;
    }

    if (v70 == 4)
    {
      v71 = (v26 + 1);
      v72 = v26[13];
      *&STACK[0x12200] = 0u;
      *&STACK[0x12210] = 0u;
      v73 = 4;
      do
      {
        v74 = *v71++;
        *(&STACK[0x12200] + (v72++ & 0x1F)) = v74;
        --v73;
      }

      while (v73);
    }

    else
    {
      LOWORD(STACK[0x12200]) = *(v26 + 1);
      LOWORD(STACK[0x12203]) = *(v26 + 3);
      LOBYTE(STACK[0x12202]) = 0;
    }

    vars8 = v68;
    v125 = v39;
    v119 = v21;
    if (v135 > 0 && v67)
    {
      v76 = (v138 - 2);
      v77 = &STACK[0x12240];
      v78 = v135;
      do
      {
        *v77 = *v76;
        v77 = (v77 + 2);
        v76 += v129;
        --v78;
      }

      while (v78);
    }

    v79 = vars8;
    sub_277449FEC(&__dst, v134, v41 << v130->i32[2], v133 << v130->i32[2], vars8, v135, 0);
    if ((v132 & 4) != 0)
    {
      v80 = 34;
    }

    else
    {
      v80 = 2;
    }

    if ((v132 & 4) != 0)
    {
      v81 = 17;
    }

    else
    {
      v81 = 1;
    }

    v82 = v80 & 0xFFFFFF7F | (((v132 & 8) != 0) << 7);
    v83 = v81 & 0xFFFFFFBF | (((v132 & 8) != 0) << 6);
    v84 = v79 >> 3;
    v85 = &v130[12] + v70;
    v86 = 4;
    v87 = v132;
    do
    {
      if ((v84 & (1 << --v86)) != 0)
      {
        v84 -= 1 << v86;
        if (v84)
        {
          v88 = v82;
        }

        else
        {
          v88 = 0;
        }

        v89 = v87 & 0xC | v83;
        (*v85)(v138, v129, &STACK[0x12200], v88 | v87, &STACK[0x12240], v137, v135);
        v87 = v89;
        v137 += 2 * (8 << v86);
        v138 += 2 * (8 << v86);
      }

      v85 -= 5;
    }

    while (v86);
    sub_27744A0A4(&__dst);
    LODWORD(v69) = *v26;
    v21 = v119;
    v39 = v125;
    v68 = vars8;
  }

  if ((v69 & 0x10) == 0)
  {
LABEL_96:
    result = vextq_s8(v130[2], v130[2], 8uLL);
    v117 = vextq_s8(v130[3], v130[3], 8uLL);
    v130[2] = result;
    v130[3] = v117;
    return result;
  }

  if (v69 <= 0x9F)
  {
    v90 = v69 >> 5;
    if (v69 >> 5 == 4)
    {
      v91 = (v26 + 5);
      v92 = v26[14];
      *&STACK[0x12200] = 0u;
      *&STACK[0x12210] = 0u;
      v93 = 4;
      v94 = vars8_4;
      do
      {
        v95 = *v91++;
        *(&STACK[0x12200] + (v92++ & 0x1F)) = v95;
        --v93;
      }

      while (v93);
      v96 = (v26 + 9);
      v97 = v26[15];
      *&STACK[0x12220] = 0u;
      *&STACK[0x12230] = 0u;
      v98 = 4;
      do
      {
        v99 = *v96++;
        *(&STACK[0x12220] + (v97++ & 0x1F)) = v99;
        --v98;
      }

      while (v98);
    }

    else
    {
      LOWORD(STACK[0x12200]) = *(v26 + 5);
      LOWORD(STACK[0x12203]) = *(v26 + 7);
      LOBYTE(STACK[0x12202]) = 0;
      LOWORD(STACK[0x12220]) = *(v26 + 9);
      LOWORD(STACK[0x12223]) = *(v26 + 11);
      LOBYTE(STACK[0x12222]) = 0;
      v94 = vars8_4;
    }

    v100 = v68;
    v119 = v21;
    if (v135 > 0 && v94)
    {
      v102 = (v39 - 4);
      v103 = 2 * vars0;
      v104 = &STACK[0x120C0];
      v105 = v135;
      do
      {
        *v104 = *v102;
        v104 = (v104 + 4);
        v102 = (v102 + v103);
        --v105;
      }

      while (v105);
    }

    v106 = v39;
    sub_277449FEC(&__dst, v134, v41 << v130->i32[2], v133 << v130->i32[2], v68, v135, 1u);
    v107 = v132;
    if ((v132 & 4) != 0)
    {
      v108 = 34;
    }

    else
    {
      v108 = 2;
    }

    if ((v132 & 4) != 0)
    {
      v109 = 17;
    }

    else
    {
      v109 = 1;
    }

    v110 = v108 & 0xFFFFFF7F | (((v132 & 8) != 0) << 7);
    v111 = v109 & 0xFFFFFFBF | (((v132 & 8) != 0) << 6);
    v112 = v100 >> 3;
    v113 = &v130[24].i64[v90 + 1];
    v114 = 5;
    do
    {
      if ((v112 & (1 << --v114)) != 0)
      {
        v112 -= 1 << v114;
        if (v112)
        {
          v115 = v110;
        }

        else
        {
          v115 = 0;
        }

        v116 = v107;
        v107 = v107 & 0xC | v111;
        (*v113)(v106, vars0, &STACK[0x12200], v115 | v116, &STACK[0x120C0], v136, v135);
        v106 += 2 * (8 << v114);
        v136 += 2 * (8 << v114);
      }

      v113 -= 5;
    }

    while (v114);
    sub_27744A0A4(&__dst);
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_2774B5FFC(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B67CC;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B67CC;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B6054;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B6054(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  a56 = *MEMORY[0x277D85DE8];
  vars0 = a2;
  v57 = *(a2 + 8);
  v58 = *(a1 + 16);
  v59 = *(a1 + 20);
  v60 = (*(v57 + 1000) + 16 * v58 * a3);
  v61 = *(v57 + 416);
  v62 = *(v57 + 424);
  v64 = *(a1 + 8);
  v63 = *(a1 + 12);
  v65 = v63 * a3;
  v66 = *(v57 + 531);
  v67 = *(v57 + 400) + ((v61 * v65) << v66);
  v68 = *(v57 + 408) + ((v62 * v65) << v66);
  v69 = *(a1 + 32);
  v167 = *(a1 + 48);
  if (a3)
  {
    v70 = 38;
  }

  else
  {
    v70 = 2;
  }

  if (a3)
  {
    v71 = 17;
  }

  else
  {
    v71 = 1;
  }

  HIDWORD(vars8) = a3;
  v160 = v62;
  v154 = v57;
  v155 = &v153;
  v165 = v68;
  if (v59 - 1 <= a3)
  {
    HIDWORD(v161) = v71;
    v74 = *(v57 + 524) - v65;
  }

  else
  {
    v70 = v70 | 0x88;
    HIDWORD(v161) = v71 | 0x40;
    v72 = *(v57 + 520);
    v73 = v64;
    memcpy(*(a1 + 40), (v67 + v61 * (v63 - 1)), v72);
    memcpy(*(a1 + 56), (v68 + v62 * (*(a1 + 12) - 1)), v72 & 0x7FFFFFFFFFFFFFFFLL);
    v64 = v73;
    v74 = *(a1 + 12);
    v58 = *(a1 + 16);
  }

  v166 = v74;
  v164 = a1;
  if (v58 < 2)
  {
    LODWORD(v158) = 0;
    v103 = 0;
    v75 = 0;
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &v164->i8[40 * v64];
    v156 = v78 + 112;
    v157 = v74;
    v158 = v78 - 48;
    HIDWORD(v161) |= v70;
    do
    {
      v79 = sub_2774B3014(vars0, v75, HIDWORD(vars8), v70);
      v81 = *v60;
      v82 = (v81 & 1) == 0;
      if (v81)
      {
        v83 = (v81 >> 1) & 7;
        if (v83 > 4)
        {
          return result;
        }

        if (v83 == 4)
        {
          v84 = 0;
          v85 = v60[13];
          a37 = 0u;
          a38 = 0u;
          do
          {
            *(&a37 + ((v85 + v84) & 0x1F)) = v60[v84 + 1];
            ++v84;
          }

          while (v84 != 4);
        }

        else
        {
          LOWORD(a37) = *(v60 + 1);
          *(&a37 + 3) = *(v60 + 3);
          BYTE2(a37) = 0;
        }

        if ((v76 & (v166 > 0)) == 1)
        {
          v86 = (v67 - 1);
          v87 = &a41;
          v88 = v157;
          do
          {
            *v87++ = *v86;
            v86 += v61;
            --v88;
          }

          while (v88);
        }

        v89 = v79;
        (*&v158[8 * v83])(v67, v61, &a37);
        v79 = v89;
        LODWORD(v81) = *v60;
      }

      v90 = (v81 & 0x10) == 0;
      if ((v81 & 0x10) != 0)
      {
        if (v81 > 0x9F)
        {
          return result;
        }

        v91 = v81 >> 5;
        HIDWORD(v159) = v82;
        if (v91 == 4)
        {
          v92 = 0;
          v93 = v60[14];
          a37 = 0u;
          a38 = 0u;
          do
          {
            *(&a37 + ((v93 + v92) & 0x1F)) = v60[v92 + 5];
            ++v92;
          }

          while (v92 != 4);
          v94 = 0;
          v95 = v60[15];
          a39 = 0u;
          a40 = 0u;
          v96 = v160;
          do
          {
            *(&a39 + ((v95 + v94) & 0x1F)) = v60[v94 + 9];
            ++v94;
          }

          while (v94 != 4);
        }

        else
        {
          LOWORD(a37) = *(v60 + 5);
          *(&a37 + 3) = *(v60 + 7);
          BYTE2(a37) = 0;
          LOWORD(a39) = *(v60 + 9);
          *(&a39 + 3) = *(v60 + 11);
          BYTE2(a39) = 0;
          v96 = v160;
        }

        v97 = v90;
        if (v77 && v166 > 0)
        {
          v98 = (v165 - 2);
          v99 = &a13;
          v100 = v157;
          do
          {
            *v99 = *v98;
            v99 += 2;
            v98 = (v98 + v96);
            --v100;
          }

          while (v100);
        }

        (*&v156[8 * v91])(v165, v96, &a37, v79, &a13, v167, v166);
        v90 = v97;
        v82 = HIDWORD(v159);
      }

      v101 = v164->i32[3];
      v67 += v101;
      v69 += v101;
      v165 += v101;
      v167 += v101;
      v60 += 16;
      v75 = (v75 + 1);
      v76 = v82;
      v77 = v90;
      v102 = v82;
      v70 = HIDWORD(v161);
    }

    while (v75 < v164[1].i32[0] - 1);
    v103 = v102;
    LODWORD(v158) = v90;
    LOBYTE(v70) = BYTE4(v161);
  }

  v104 = sub_2774B3014(vars0, v75, HIDWORD(vars8), v70 & 0x5D);
  v105 = *(v154 + 520) - (v164[1].i32[0] - 1) * v164->i32[3];
  v106 = *v60;
  if (v106)
  {
    v107 = (v106 >> 1) & 7;
    if (v107 > 4)
    {
      return result;
    }

    if (v107 == 4)
    {
      v108 = (v60 + 1);
      v109 = v60[13];
      result = 0uLL;
      a37 = 0u;
      a38 = 0u;
      v110 = 4;
      do
      {
        v111 = *v108++;
        *(&a37 + (v109++ & 0x1F)) = v111;
        --v110;
      }

      while (v110);
    }

    else
    {
      LOWORD(a37) = *(v60 + 1);
      *(&a37 + 3) = *(v60 + 3);
      BYTE2(a37) = 0;
    }

    if (v166 > 0)
    {
      v112 = v103;
    }

    else
    {
      v112 = 0;
    }

    if (v112 == 1)
    {
      v113 = (v67 - 1);
      v114 = v166;
      v115 = &a41;
      do
      {
        *v115++ = *v113;
        v113 += v61;
        --v114;
      }

      while (v114);
    }

    if ((v104 & 4) != 0)
    {
      v116 = 34;
    }

    else
    {
      v116 = 2;
    }

    if ((v104 & 4) != 0)
    {
      v117 = 17;
    }

    else
    {
      v117 = 1;
    }

    v118 = v116 & 0xFFFFFF7F | (((v104 & 8) != 0) << 7);
    v119 = v117 & 0xFFFFFFBF | (((v104 & 8) != 0) << 6);
    LODWORD(vars0) = v105;
    v120 = v105 >> 3;
    v121 = &v164[12] + v107;
    v122 = v104;
    v123 = 4;
    HIDWORD(vars8) = v104;
    do
    {
      if ((v120 & (1 << --v123)) != 0)
      {
        v120 -= 1 << v123;
        if (v120)
        {
          v124 = v118;
        }

        else
        {
          v124 = 0;
        }

        v125 = v122 & 0xC | v119;
        (*v121)(v67, v61, &a37, v124 | v122, &a41, v69, v166);
        v67 += 8 << v123;
        v122 = v125;
        v69 += 8 << v123;
      }

      v121 -= 5;
    }

    while (v123);
    LODWORD(v106) = *v60;
    v104 = HIDWORD(vars8);
    v105 = vars0;
  }

  if ((v106 & 0x10) == 0)
  {
LABEL_93:
    result = vextq_s8(v164[2], v164[2], 8uLL);
    v152 = vextq_s8(v164[3], v164[3], 8uLL);
    v164[2] = result;
    v164[3] = v152;
    return result;
  }

  if (v106 <= 0x9F)
  {
    v126 = v106 >> 5;
    if (v126 == 4)
    {
      v127 = (v60 + 5);
      v128 = v60[14];
      a37 = 0u;
      a38 = 0u;
      v129 = 4;
      v130 = v160;
      v131 = v164;
      v132 = v165;
      v133 = v158;
      do
      {
        v134 = *v127++;
        *(&a37 + (v128++ & 0x1F)) = v134;
        --v129;
      }

      while (v129);
      v135 = (v60 + 9);
      v136 = v60[15];
      a39 = 0u;
      a40 = 0u;
      v137 = 4;
      do
      {
        v138 = *v135++;
        *(&a39 + (v136++ & 0x1F)) = v138;
        --v137;
      }

      while (v137);
    }

    else
    {
      LOWORD(a37) = *(v60 + 5);
      *(&a37 + 3) = *(v60 + 7);
      BYTE2(a37) = 0;
      LOWORD(a39) = *(v60 + 9);
      *(&a39 + 3) = *(v60 + 11);
      BYTE2(a39) = 0;
      v130 = v160;
      v131 = v164;
      v132 = v165;
      v133 = v158;
    }

    if (v166 > 0)
    {
      v139 = v133;
    }

    else
    {
      v139 = 0;
    }

    if (v139 == 1)
    {
      v140 = (v132 - 2);
      v141 = v166;
      v142 = &a13;
      do
      {
        *v142 = *v140;
        v142 += 2;
        v140 = (v140 + v130);
        --v141;
      }

      while (v141);
    }

    if ((v104 & 4) != 0)
    {
      v143 = 34;
    }

    else
    {
      v143 = 2;
    }

    if ((v104 & 4) != 0)
    {
      v144 = 17;
    }

    else
    {
      v144 = 1;
    }

    v145 = v143 & 0xFFFFFF7F | (((v104 & 8) != 0) << 7);
    v146 = v144 & 0xFFFFFFBF | (((v104 & 8) != 0) << 6);
    v147 = v105 >> 3;
    v148 = &v131[24].i64[v126 + 1];
    v149 = 5;
    do
    {
      if ((v147 & (1 << --v149)) != 0)
      {
        v147 -= 1 << v149;
        if (v147)
        {
          v150 = v145;
        }

        else
        {
          v150 = 0;
        }

        v151 = v104 & 0xC | v146;
        (*v148)(v165, v160, &a37, v150 | v104, &a13, v167, v166);
        v165 += 8 << v149;
        v104 = v151;
        v167 += 8 << v149;
      }

      v148 -= 5;
    }

    while (v149);
    goto LABEL_93;
  }

  return result;
}

int8x16_t sub_2774B67CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{
  v63 = MEMORY[0x28223BE20](a1);
  v64 = &v166;
  STACK[0x9238] = *MEMORY[0x277D85DE8];
  v183 = v65;
  v66 = *(v65 + 8);
  v67 = *(v63 + 16);
  v68 = *(v63 + 20);
  v69 = (*(v66 + 1000) + 16 * v67 * v62);
  v70 = *(v66 + 416);
  v71 = *(v66 + 424);
  v72 = *(v63 + 8);
  v73 = *(v63 + 12);
  v74 = v73 * v62;
  v75 = *(v66 + 531);
  v76 = *(v66 + 400) + ((v70 * v74) << v75);
  v77 = *(v66 + 408) + ((v71 * v74) << v75);
  v78 = *(v63 + 32);
  v185 = *(v63 + 48);
  v186 = v77;
  if (v62)
  {
    v79 = 38;
  }

  else
  {
    v79 = 2;
  }

  if (v62)
  {
    v80 = 17;
  }

  else
  {
    v80 = 1;
  }

  v182 = v62;
  v176 = *(v66 + 416);
  v168 = v66;
  if (v68 - 1 <= v62)
  {
    v82 = v71;
    v177 = v80;
    v83 = *(v66 + 524) - v74;
  }

  else
  {
    v79 = v79 | 0x88;
    v177 = v80 | 0x40;
    v81 = *(v66 + 520);
    v180 = v72;
    memcpy(*(v63 + 40), (v76 + v70 * (v73 - 1)), v81);
    v82 = v71;
    memcpy(*(v63 + 56), (v77 + v71 * (*(v63 + 12) - 1)), v81 & 0x7FFFFFFFFFFFFFFFLL);
    v72 = v180;
    v83 = *(v63 + 12);
    v67 = *(v63 + 16);
  }

  v184 = v83;
  v181 = v63;
  if (v67 < 2)
  {
    vars8_4 = 0;
    v114 = 0;
    v84 = 0;
    v115 = v82;
  }

  else
  {
    v167 = &v166;
    v84 = 0;
    v85 = 0;
    LODWORD(v86) = 0;
    v87 = v63 + 40 * v72;
    v171 = v87 - 48;
    v172 = v82;
    v169 = v87 + 112;
    v170 = v83;
    vars8 = v177 | v79;
    do
    {
      v88 = sub_2774B3014(v183, v84, v182, v79);
      v90 = v88;
      v91 = *v69;
      v92 = (v91 & 1) == 0;
      v178 = v92;
      if (v91)
      {
        vars8_4 = v86;
        v86 = v78;
        v93 = v88;
        v94 = (v91 >> 1) & 7;
        if (v94 > 4)
        {
          return result;
        }

        if (v94 == 4)
        {
          v95 = 0;
          v96 = v69[13];
          a44 = 0u;
          a45 = 0u;
          v97 = v176;
          do
          {
            *(&a44 + ((v96 + v95) & 0x1F)) = v69[v95 + 1];
            ++v95;
          }

          while (v95 != 4);
        }

        else
        {
          LOWORD(a44) = *(v69 + 1);
          *(&a44 + 3) = *(v69 + 3);
          BYTE2(a44) = 0;
          v97 = v176;
        }

        if (v85 && v184 > 0)
        {
          v98 = (v76 - 1);
          v99 = &a48;
          v100 = v170;
          do
          {
            *v99++ = *v98;
            v98 += v97;
            --v100;
          }

          while (v100);
        }

        sub_27744B808(&__dst, v183, v84 << *(v63 + 8), v182 << *(v63 + 8), *(v63 + 12), v184, 0);
        v101 = *(v171 + 8 * v94);
        v90 = v93;
        v102 = v93;
        v78 = v86;
        v101(v76, v97, &a44, v102, &a48, v86, v184);
        sub_27744B8B8(&__dst);
        LODWORD(v91) = *v69;
        v92 = v178;
        LOBYTE(v86) = vars8_4;
      }

      v103 = (v91 & 0x10) == 0;
      if ((v91 & 0x10) != 0)
      {
        if (v91 > 0x9F)
        {
          return result;
        }

        v104 = v91 >> 5;
        vars0 = v78;
        if (v91 >> 5 == 4)
        {
          v105 = 0;
          v106 = v69[14];
          a44 = 0u;
          a45 = 0u;
          do
          {
            *(&a44 + ((v106 + v105) & 0x1F)) = v69[v105 + 5];
            ++v105;
          }

          while (v105 != 4);
          v107 = 0;
          v108 = v69[15];
          a46 = 0u;
          a47 = 0u;
          do
          {
            *(&a46 + ((v108 + v107) & 0x1F)) = v69[v107 + 9];
            ++v107;
          }

          while (v107 != 4);
        }

        else
        {
          LOWORD(a44) = *(v69 + 5);
          *(&a44 + 3) = *(v69 + 7);
          BYTE2(a44) = 0;
          LOWORD(a46) = *(v69 + 9);
          *(&a46 + 3) = *(v69 + 11);
          BYTE2(a46) = 0;
        }

        vars8_4 = v103;
        v109 = v172;
        if (v86 && v184 > 0)
        {
          v110 = (v186 - 2);
          v111 = &a20;
          v112 = v170;
          do
          {
            *v111 = *v110;
            v111 += 2;
            v110 = (v110 + v109);
            --v112;
          }

          while (v112);
        }

        sub_27744B808(&__dst, v183, v84 << *(v63 + 8), v182 << *(v63 + 8), *(v63 + 12), v184, 1u);
        (*(v169 + 8 * v104))(v186, v109, &a44, v90, &a20, v185, v184);
        sub_27744B8B8(&__dst);
        v103 = vars8_4;
        v92 = v178;
        v78 = vars0;
      }

      v113 = *(v63 + 12);
      v76 += v113;
      v78 += v113;
      v186 += v113;
      v185 += v113;
      v69 += 16;
      v84 = (v84 + 1);
      v85 = v92;
      LODWORD(v86) = v103;
      v79 = vars8;
    }

    while (v84 < *(v63 + 16) - 1);
    v114 = v92;
    vars8_4 = v103;
    LOBYTE(v79) = vars8;
    v64 = v167;
    v115 = v172;
  }

  v179 = sub_2774B3014(v183, v84, v182, v79 & 0x5D);
  v116 = *(v168 + 520) - (*(v63 + 16) - 1) * *(v63 + 12);
  v117 = *v69;
  v118 = v64;
  if (v117)
  {
    v119 = (v117 >> 1) & 7;
    if (v119 > 4)
    {
      return result;
    }

    if (v119 == 4)
    {
      v120 = (v69 + 1);
      v121 = v69[13];
      a44 = 0u;
      a45 = 0u;
      v122 = 4;
      v124 = v176;
      do
      {
        v123 = *v120++;
        *(&a44 + (v121++ & 0x1F)) = v123;
        --v122;
      }

      while (v122);
    }

    else
    {
      LOWORD(a44) = *(v69 + 1);
      *(&a44 + 3) = *(v69 + 3);
      BYTE2(a44) = 0;
      v124 = v176;
    }

    v172 = v115;
    v167 = v118;
    if (v184 > 0 && v114)
    {
      v126 = (v76 - 1);
      v127 = v184;
      v128 = &a48;
      do
      {
        *v128++ = *v126;
        v126 += v124;
        --v127;
      }

      while (v127);
    }

    sub_27744B808(&__dst, v183, v84 << *(v63 + 8), v182 << *(v63 + 8), v116, v184, 0);
    if ((v179 & 4) != 0)
    {
      v129 = 34;
    }

    else
    {
      v129 = 2;
    }

    if ((v179 & 4) != 0)
    {
      v130 = 17;
    }

    else
    {
      v130 = 1;
    }

    v131 = v129 & 0xFFFFFF7F | (((v179 & 8) != 0) << 7);
    v132 = v130 & 0xFFFFFFBF | (((v179 & 8) != 0) << 6);
    v133 = v63;
    vars8 = v116;
    v134 = v116 >> 3;
    v135 = (v133 + 8 * v119 + 192);
    v136 = 4;
    v137 = v179;
    do
    {
      if ((v134 & (1 << --v136)) != 0)
      {
        v134 -= 1 << v136;
        if (v134)
        {
          v138 = v131;
        }

        else
        {
          v138 = 0;
        }

        v139 = v137 & 0xC | v132;
        (*v135)(v76, v176, &a44, v138 | v137, &a48, v78, v184);
        v76 += 8 << v136;
        v137 = v139;
        v78 += 8 << v136;
      }

      v135 -= 5;
    }

    while (v136);
    sub_27744B8B8(&__dst);
    LODWORD(v117) = *v69;
    v118 = v167;
    v63 = v181;
    v115 = v172;
    v116 = vars8;
  }

  if ((v117 & 0x10) == 0)
  {
LABEL_96:
    result = vextq_s8(*(v63 + 32), *(v63 + 32), 8uLL);
    v165 = vextq_s8(*(v63 + 48), *(v63 + 48), 8uLL);
    *(v63 + 32) = result;
    *(v63 + 48) = v165;
    return result;
  }

  if (v117 <= 0x9F)
  {
    v140 = v117 >> 5;
    if (v117 >> 5 == 4)
    {
      v141 = (v69 + 5);
      v142 = v69[14];
      a44 = 0u;
      a45 = 0u;
      v143 = 4;
      v144 = vars8_4;
      v145 = v179;
      do
      {
        v146 = *v141++;
        *(&a44 + (v142++ & 0x1F)) = v146;
        --v143;
      }

      while (v143);
      v147 = (v69 + 9);
      v148 = v69[15];
      a46 = 0u;
      a47 = 0u;
      v149 = 4;
      do
      {
        v150 = *v147++;
        *(&a46 + (v148++ & 0x1F)) = v150;
        --v149;
      }

      while (v149);
    }

    else
    {
      LOWORD(a44) = *(v69 + 5);
      *(&a44 + 3) = *(v69 + 7);
      BYTE2(a44) = 0;
      LOWORD(a46) = *(v69 + 9);
      *(&a46 + 3) = *(v69 + 11);
      BYTE2(a46) = 0;
      v144 = vars8_4;
      v145 = v179;
    }

    v167 = v118;
    if (v184 > 0 && v144)
    {
      v152 = (v186 - 2);
      v153 = v184;
      v154 = &a20;
      do
      {
        *v154 = *v152;
        v154 += 2;
        v152 = (v152 + v115);
        --v153;
      }

      while (v153);
    }

    v155 = v115;
    sub_27744B808(&__dst, v183, v84 << *(v63 + 8), v182 << *(v63 + 8), v116, v184, 1u);
    if ((v145 & 4) != 0)
    {
      v156 = 34;
    }

    else
    {
      v156 = 2;
    }

    v157 = v63;
    if ((v145 & 4) != 0)
    {
      v158 = 17;
    }

    else
    {
      v158 = 1;
    }

    v159 = v156 & 0xFFFFFF7F | (((v145 & 8) != 0) << 7);
    v160 = v158 & 0xFFFFFFBF | (((v145 & 8) != 0) << 6);
    v161 = v116 >> 3;
    v162 = (v157 + 8 * v140 + 392);
    v163 = 5;
    do
    {
      if ((v161 & (1 << --v163)) != 0)
      {
        v161 -= 1 << v163;
        if (v161)
        {
          v164 = v159;
        }

        else
        {
          v164 = 0;
        }

        (*v162)(v186, v155, &a44, v164 | v145, &a20, v185, v184);
        v145 = v145 & 0xC | v160;
        v185 += 8 << v163;
        v186 += 8 << v163;
      }

      v162 -= 5;
    }

    while (v163);
    sub_27744B8B8(&__dst);
    v63 = v181;
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_2774B70A8(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B78B4;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B78B4;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B7100;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B7100(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = a1;
  v169 = &v167;
  a68 = *MEMORY[0x277D85DE8];
  v69 = *(a2 + 8);
  v70 = *(a1 + 16);
  v71 = (*(v69 + 1000) + 16 * v70 * a3);
  v72 = *(v69 + 416);
  v73 = *(v69 + 424);
  v75 = *(a1 + 8);
  v74 = *(a1 + 12);
  v76 = v74 * a3;
  v77 = *(v69 + 531);
  v78 = *(v69 + 408) + ((v73 * (v76 >> 1)) << v77);
  v184 = *(a1 + 48);
  v185 = *(a1 + 32);
  if (a3)
  {
    v79 = 38;
  }

  else
  {
    v79 = 2;
  }

  if (a3)
  {
    v80 = 17;
  }

  else
  {
    v80 = 1;
  }

  v177 = *(v69 + 416);
  v186 = *(v69 + 400) + ((v72 * v76) << v77);
  if (*(a1 + 20) - 1 <= a3)
  {
    v82 = *(v69 + 524) - v76;
  }

  else
  {
    v79 = v79 | 0x88;
    v80 |= 0x40u;
    v81 = 2 * *(v69 + 520);
    memcpy(*(a1 + 40), (*(v69 + 400) + ((v72 * v76) << v77) + 2 * v72 * (v74 - 1)), v81);
    memcpy(v68[3].i64[1], (v78 + 2 * v73 * ((v68->i32[3] >> 1) - 1)), v81 & 0x7FFFFFFFFFFFFFFELL);
    v82 = v68->i32[3];
    v70 = v68[1].i32[0];
  }

  v183 = (v82 >> 1);
  v178 = v68;
  HIDWORD(vars8) = v82;
  v174 = v73;
  if (v70 < 2)
  {
    LODWORD(v172) = 0;
    v114 = 0;
    v83 = 0;
  }

  else
  {
    v168 = v69;
    v83 = 0;
    v84 = v68;
    v85 = 0;
    v86 = v73;
    v87 = 0;
    v88 = &v84->i64[5 * v75];
    v171 = v88 + 14;
    v172 = v88 - 6;
    v170 = v82;
    LODWORD(vars0) = v80 | v79;
    v89 = 2 * v86;
    do
    {
      v90 = sub_2774B3014(a2, v83, a3, v79);
      v92 = *v71;
      v93 = (v92 & 1) == 0;
      if (v92)
      {
        v94 = (v92 >> 1) & 7;
        if (v94 > 4)
        {
          return result;
        }

        if (v94 == 4)
        {
          v95 = 0;
          v96 = v71[13];
          a41 = 0u;
          a42 = 0u;
          v97 = HIDWORD(vars8);
          do
          {
            *(&a41 + ((v96 + v95) & 0x1F)) = v71[v95 + 1];
            ++v95;
          }

          while (v95 != 4);
        }

        else
        {
          LOWORD(a41) = *(v71 + 1);
          *(&a41 + 3) = *(v71 + 3);
          BYTE2(a41) = 0;
          v97 = HIDWORD(vars8);
        }

        if ((v85 & (v97 > 0)) == 1)
        {
          v98 = (v186 - 2);
          v99 = &a45;
          v100 = v170;
          do
          {
            *v99 = *v98;
            v99 += 2;
            v98 += v177;
            --v100;
          }

          while (v100);
        }

        v101 = v90;
        (v172[v94])(v186, v177, &a41);
        v90 = v101;
        LODWORD(v92) = *v71;
      }

      v102 = (v92 & 0x10) == 0;
      if ((v92 & 0x10) != 0)
      {
        if (v92 > 0x9F)
        {
          return result;
        }

        v103 = v92 >> 5;
        HIDWORD(v173) = v93;
        if (v103 == 4)
        {
          v104 = 0;
          v105 = v71[14];
          a41 = 0u;
          a42 = 0u;
          do
          {
            *(&a41 + ((v105 + v104) & 0x1F)) = v71[v104 + 5];
            ++v104;
          }

          while (v104 != 4);
          v106 = v102;
          v107 = 0;
          v108 = v71[15];
          a43 = 0u;
          a44 = 0u;
          do
          {
            *(&a43 + ((v108 + v107) & 0x1F)) = v71[v107 + 9];
            ++v107;
          }

          while (v107 != 4);
        }

        else
        {
          v106 = v102;
          LOWORD(a41) = *(v71 + 5);
          *(&a41 + 3) = *(v71 + 7);
          BYTE2(a41) = 0;
          LOWORD(a43) = *(v71 + 9);
          *(&a43 + 3) = *(v71 + 11);
          BYTE2(a43) = 0;
        }

        if (v87 && v183 > 0)
        {
          v109 = (v78 - 4);
          v110 = &a17;
          v111 = v183;
          do
          {
            *v110 = *v109;
            v110 += 4;
            v109 = (v109 + v89);
            --v111;
          }

          while (v111);
        }

        (v171[v103])(v78, v174, &a41, v90, &a17, v184, v183);
        v102 = v106;
        v93 = HIDWORD(v173);
      }

      v112 = v178->i32[3];
      v185 += 2 * v112;
      v186 += 2 * v112;
      v78 += 2 * v112;
      v184 += 2 * v112;
      v71 += 16;
      v83 = (v83 + 1);
      v85 = v93;
      v87 = v102;
      v113 = v93;
      v79 = vars0;
    }

    while (v83 < v178[1].i32[0] - 1);
    v114 = v113;
    LODWORD(v172) = v102;
    LOBYTE(v79) = vars0;
    v68 = v178;
    v69 = v168;
  }

  vars0 = v78;
  v182 = sub_2774B3014(a2, v83, a3, v79 & 0x5D);
  v115 = *(v69 + 520) - (v68[1].i32[0] - 1) * v68->i32[3];
  v116 = *v71;
  if (v116)
  {
    v117 = (v116 >> 1) & 7;
    if (v117 > 4)
    {
      return result;
    }

    if (v117 == 4)
    {
      v118 = (v71 + 1);
      v119 = v71[13];
      result = 0uLL;
      a41 = 0u;
      a42 = 0u;
      v120 = 4;
      v122 = HIDWORD(vars8);
      v123 = v182;
      do
      {
        v121 = *v118++;
        *(&a41 + (v119++ & 0x1F)) = v121;
        --v120;
      }

      while (v120);
    }

    else
    {
      LOWORD(a41) = *(v71 + 1);
      *(&a41 + 3) = *(v71 + 3);
      BYTE2(a41) = 0;
      v122 = HIDWORD(vars8);
      v123 = v182;
    }

    if (v122 > 0)
    {
      v124 = v114;
    }

    else
    {
      v124 = 0;
    }

    if (v124 == 1)
    {
      v125 = (v186 - 2);
      v126 = &a45;
      v127 = v122;
      do
      {
        *v126 = *v125;
        v126 += 2;
        v125 += v177;
        --v127;
      }

      while (v127);
    }

    if ((v123 & 4) != 0)
    {
      v128 = 34;
    }

    else
    {
      v128 = 2;
    }

    if ((v123 & 4) != 0)
    {
      v129 = 17;
    }

    else
    {
      v129 = 1;
    }

    v130 = v128 & 0xFFFFFF7F | (((v123 & 8) != 0) << 7);
    v131 = v129 & 0xFFFFFFBF | (((v123 & 8) != 0) << 6);
    v180 = v115;
    v132 = v115 >> 3;
    v133 = &v68[12] + v117;
    v134 = v123;
    v135 = 4;
    do
    {
      if ((v132 & (1 << --v135)) != 0)
      {
        v132 -= 1 << v135;
        if (v132)
        {
          v136 = v130;
        }

        else
        {
          v136 = 0;
        }

        v137 = v134 & 0xC | v131;
        (*v133)(v186, v177, &a41, v136 | v134, &a45, v185, HIDWORD(vars8));
        v134 = v137;
        v185 += 2 * (8 << v135);
        v186 += 2 * (8 << v135);
      }

      v133 -= 5;
    }

    while (v135);
    LODWORD(v116) = *v71;
    v115 = v180;
  }

  v138 = v182;
  if ((v116 & 0x10) == 0)
  {
LABEL_93:
    result = vextq_s8(v178[2], v178[2], 8uLL);
    v166 = vextq_s8(v178[3], v178[3], 8uLL);
    v178[2] = result;
    v178[3] = v166;
    return result;
  }

  if (v116 <= 0x9F)
  {
    v139 = v116 >> 5;
    if (v139 == 4)
    {
      v140 = (v71 + 5);
      v141 = v71[14];
      a41 = 0u;
      a42 = 0u;
      v142 = 4;
      v143 = v178;
      v144 = v174;
      v145 = vars0;
      v146 = v172;
      do
      {
        v147 = *v140++;
        *(&a41 + (v141++ & 0x1F)) = v147;
        --v142;
      }

      while (v142);
      v148 = (v71 + 9);
      v149 = v71[15];
      a43 = 0u;
      a44 = 0u;
      v150 = 4;
      do
      {
        v151 = *v148++;
        *(&a43 + (v149++ & 0x1F)) = v151;
        --v150;
      }

      while (v150);
    }

    else
    {
      LOWORD(a41) = *(v71 + 5);
      *(&a41 + 3) = *(v71 + 7);
      BYTE2(a41) = 0;
      LOWORD(a43) = *(v71 + 9);
      *(&a43 + 3) = *(v71 + 11);
      BYTE2(a43) = 0;
      v143 = v178;
      v144 = v174;
      v145 = vars0;
      v146 = v172;
    }

    if (v183 > 0)
    {
      v152 = v146;
    }

    else
    {
      v152 = 0;
    }

    if (v152 == 1)
    {
      v153 = (v145 - 4);
      v154 = &a17;
      v155 = v183;
      do
      {
        *v154 = *v153;
        v154 += 4;
        v153 = (v153 + 2 * v144);
        --v155;
      }

      while (v155);
    }

    if ((v182 & 4) != 0)
    {
      v156 = 34;
    }

    else
    {
      v156 = 2;
    }

    if ((v182 & 4) != 0)
    {
      v157 = 17;
    }

    else
    {
      v157 = 1;
    }

    v158 = v156 & 0xFFFFFF7F | (((v182 & 8) != 0) << 7);
    v159 = v157 & 0xFFFFFFBF | (((v182 & 8) != 0) << 6);
    v160 = v115 >> 3;
    v161 = &v143[24].i64[v139 + 1];
    v162 = 5;
    do
    {
      if ((v160 & (1 << --v162)) != 0)
      {
        v160 -= 1 << v162;
        if (v160)
        {
          v163 = v158;
        }

        else
        {
          v163 = 0;
        }

        v164 = v138;
        v138 = v138 & 0xC | v159;
        v165 = vars0;
        (*v161)(vars0, v174, &a41, v163 | v164, &a17, v184, v183);
        vars0 = v165 + 2 * (8 << v162);
        v184 += 2 * (8 << v162);
      }

      v161 -= 5;
    }

    while (v162);
    goto LABEL_93;
  }

  return result;
}

int8x16_t sub_2774B78B4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t __dst)
{
  v20 = MEMORY[0x28223BE20](a1);
  v21 = &v122;
  STACK[0x12278] = *MEMORY[0x277D85DE8];
  v139 = v22;
  v23 = *(v22 + 8);
  v24 = *(v20 + 16);
  v25 = *(v20 + 20);
  v26 = (*(v23 + 1000) + 16 * v24 * v19);
  v27 = *(v23 + 416);
  v28 = *(v23 + 424);
  v30 = *(v20 + 8);
  v29 = *(v20 + 12);
  v31 = v29 * v19;
  v32 = *(v23 + 531);
  v33 = *(v23 + 400) + ((v27 * v31) << v32);
  v34 = *(v23 + 408) + ((v28 * (v31 >> 1)) << v32);
  v141 = v34;
  v142 = *(v20 + 32);
  v140 = *(v20 + 48);
  if (v19)
  {
    v35 = 38;
  }

  else
  {
    v35 = 2;
  }

  if (v19)
  {
    v36 = 17;
  }

  else
  {
    v36 = 1;
  }

  v138 = v19;
  vars8 = *(v23 + 416);
  v124 = v23;
  if (v25 - 1 <= v19)
  {
    v38 = *(v23 + 524) - v31;
  }

  else
  {
    v35 = v35 | 0x88;
    v36 |= 0x40u;
    v37 = 2 * *(v23 + 520);
    memcpy(*(v20 + 40), (v33 + 2 * v27 * (v29 - 1)), v37);
    memcpy(*(v20 + 56), (v34 + 2 * v28 * ((*(v20 + 12) >> 1) - 1)), v37 & 0x7FFFFFFFFFFFFFFELL);
    v38 = *(v20 + 12);
    v24 = *(v20 + 16);
  }

  v128 = v28;
  v134 = v20;
  v135 = (v38 >> 1);
  v133 = v38;
  if (v24 < 2)
  {
    vars0 = 0;
    v70 = 0;
    v39 = 0;
  }

  else
  {
    v123 = &v122;
    v39 = 0;
    v40 = v20;
    v41 = 0;
    LODWORD(v42) = 0;
    v43 = v40 + 40 * v30;
    v126 = v43 + 112;
    v127 = v43 - 48;
    v125 = v38;
    vars0_4 = v36 | v35;
    v44 = 2 * vars8;
    v45 = 2 * v128;
    do
    {
      v46 = sub_2774B3014(v139, v39, v138, v35);
      v48 = v46;
      v49 = *v26;
      v50 = (v49 & 1) == 0;
      v136 = v50;
      if (v49)
      {
        vars0 = v42;
        v42 = v46;
        v51 = (v49 >> 1) & 7;
        if (v51 > 4)
        {
          return result;
        }

        if (v51 == 4)
        {
          v52 = 0;
          v53 = v26[13];
          *&STACK[0x12180] = 0u;
          *&STACK[0x12190] = 0u;
          v54 = v133;
          do
          {
            *(&STACK[0x12180] + ((v53 + v52) & 0x1F)) = v26[v52 + 1];
            ++v52;
          }

          while (v52 != 4);
        }

        else
        {
          LOWORD(STACK[0x12180]) = *(v26 + 1);
          LOWORD(STACK[0x12183]) = *(v26 + 3);
          LOBYTE(STACK[0x12182]) = 0;
          v54 = v133;
        }

        if (v41 && v54 > 0)
        {
          v55 = (v33 - 2);
          v56 = &STACK[0x121C0];
          v57 = v125;
          do
          {
            *v56 = *v55;
            v56 = (v56 + 2);
            v55 = (v55 + v44);
            --v57;
          }

          while (v57);
        }

        v58 = v54;
        sub_27744D844(&__dst, v139, v39 << v134[2], v138 << v134[2], v134[3], v54, 0);
        v59 = *(v127 + 8 * v51);
        v48 = v42;
        v59(v33, vars8, &STACK[0x12180], v42, &STACK[0x121C0], v142, v58);
        sub_277450E9C(&__dst);
        LODWORD(v49) = *v26;
        v50 = v136;
        LOBYTE(v42) = vars0;
      }

      v60 = (v49 & 0x10) == 0;
      if ((v49 & 0x10) != 0)
      {
        if (v49 > 0x9F)
        {
          return result;
        }

        HIDWORD(v129) = v48;
        vars0 = v49 >> 5;
        if (v49 >> 5 == 4)
        {
          v61 = 0;
          v62 = v26[14];
          *&STACK[0x12180] = 0u;
          *&STACK[0x12190] = 0u;
          do
          {
            *(&STACK[0x12180] + ((v62 + v61) & 0x1F)) = v26[v61 + 5];
            ++v61;
          }

          while (v61 != 4);
          v63 = 0;
          v64 = v26[15];
          *&STACK[0x121A0] = 0u;
          *&STACK[0x121B0] = 0u;
          do
          {
            *(&STACK[0x121A0] + ((v64 + v63) & 0x1F)) = v26[v63 + 9];
            ++v63;
          }

          while (v63 != 4);
        }

        else
        {
          LOWORD(STACK[0x12180]) = *(v26 + 5);
          LOWORD(STACK[0x12183]) = *(v26 + 7);
          LOBYTE(STACK[0x12182]) = 0;
          LOWORD(STACK[0x121A0]) = *(v26 + 9);
          LOWORD(STACK[0x121A3]) = *(v26 + 11);
          LOBYTE(STACK[0x121A2]) = 0;
        }

        v65 = v60;
        if ((v42 & (v135 > 0)) == 1)
        {
          v66 = (v141 - 4);
          v67 = &STACK[0x120C0];
          v68 = v135;
          do
          {
            *v67 = *v66;
            v67 = (v67 + 4);
            v66 = (v66 + v45);
            --v68;
          }

          while (v68);
        }

        sub_27744D844(&__dst, v139, v39 << v134[2], v138 << v134[2], v134[3], v133, 1u);
        (*(v126 + 8 * vars0))(v141, v128, &STACK[0x12180], HIDWORD(v129), &STACK[0x120C0], v140, v135);
        sub_277450E9C(&__dst);
        v60 = v65;
        v50 = v136;
      }

      v69 = v134[3];
      v33 += 2 * v69;
      v141 += 2 * v69;
      v142 += 2 * v69;
      v140 += 2 * v69;
      v26 += 16;
      v39 = (v39 + 1);
      v41 = v50;
      LODWORD(v42) = v60;
      v35 = vars0_4;
    }

    while (v39 < v134[4] - 1);
    v70 = v50;
    vars0 = v60;
    LOBYTE(v35) = vars0_4;
    v21 = v123;
    v20 = v134;
  }

  v137 = sub_2774B3014(v139, v39, v138, v35 & 0x5D);
  v71 = *(v124 + 520) - (*(v20 + 16) - 1) * *(v20 + 12);
  v72 = *v26;
  if (v72)
  {
    v73 = (v72 >> 1) & 7;
    if (v73 > 4)
    {
      return result;
    }

    if (v73 == 4)
    {
      v74 = (v26 + 1);
      v75 = v26[13];
      *&STACK[0x12180] = 0u;
      *&STACK[0x12190] = 0u;
      v76 = 4;
      v78 = v133;
      v79 = vars8;
      do
      {
        v77 = *v74++;
        *(&STACK[0x12180] + (v75++ & 0x1F)) = v77;
        --v76;
      }

      while (v76);
    }

    else
    {
      LOWORD(STACK[0x12180]) = *(v26 + 1);
      LOWORD(STACK[0x12183]) = *(v26 + 3);
      LOBYTE(STACK[0x12182]) = 0;
      v78 = v133;
      v79 = vars8;
    }

    v123 = v21;
    if (v78 > 0 && v70)
    {
      v81 = (v33 - 2);
      v82 = &STACK[0x121C0];
      v83 = v78;
      do
      {
        *v82 = *v81;
        v82 = (v82 + 2);
        v81 += v79;
        --v83;
      }

      while (v83);
    }

    sub_27744D844(&__dst, v139, v39 << *(v20 + 8), v138 << *(v20 + 8), v71, v78, 0);
    if ((v137 & 4) != 0)
    {
      v84 = 34;
    }

    else
    {
      v84 = 2;
    }

    if ((v137 & 4) != 0)
    {
      v85 = 17;
    }

    else
    {
      v85 = 1;
    }

    v86 = v84 & 0xFFFFFF7F | (((v137 & 8) != 0) << 7);
    v87 = v85 & 0xFFFFFFBF | (((v137 & 8) != 0) << 6);
    vars0_4 = v71;
    v88 = v71 >> 3;
    v89 = (v20 + 8 * v73 + 192);
    v90 = 4;
    v91 = v137;
    do
    {
      if ((v88 & (1 << --v90)) != 0)
      {
        v88 -= 1 << v90;
        if (v88)
        {
          v92 = v86;
        }

        else
        {
          v92 = 0;
        }

        v93 = v91 & 0xC | v87;
        (*v89)(v33, vars8, &STACK[0x12180], v92 | v91, &STACK[0x121C0], v142, v133);
        v33 += 2 * (8 << v90);
        v91 = v93;
        v142 += 2 * (8 << v90);
      }

      v89 -= 5;
    }

    while (v90);
    sub_277450E9C(&__dst);
    LODWORD(v72) = *v26;
    v21 = v123;
    v20 = v134;
    v71 = vars0_4;
  }

  if ((v72 & 0x10) == 0)
  {
LABEL_96:
    result = vextq_s8(*(v20 + 32), *(v20 + 32), 8uLL);
    v121 = vextq_s8(*(v20 + 48), *(v20 + 48), 8uLL);
    *(v20 + 32) = result;
    *(v20 + 48) = v121;
    return result;
  }

  if (v72 <= 0x9F)
  {
    v94 = v72 >> 5;
    if (v72 >> 5 == 4)
    {
      v95 = (v26 + 5);
      v96 = v26[14];
      *&STACK[0x12180] = 0u;
      *&STACK[0x12190] = 0u;
      v97 = 4;
      v98 = v133;
      v99 = vars0;
      do
      {
        v100 = *v95++;
        *(&STACK[0x12180] + (v96++ & 0x1F)) = v100;
        --v97;
      }

      while (v97);
      v101 = (v26 + 9);
      v102 = v26[15];
      *&STACK[0x121A0] = 0u;
      *&STACK[0x121B0] = 0u;
      v103 = 4;
      do
      {
        v104 = *v101++;
        *(&STACK[0x121A0] + (v102++ & 0x1F)) = v104;
        --v103;
      }

      while (v103);
    }

    else
    {
      LOWORD(STACK[0x12180]) = *(v26 + 5);
      LOWORD(STACK[0x12183]) = *(v26 + 7);
      LOBYTE(STACK[0x12182]) = 0;
      LOWORD(STACK[0x121A0]) = *(v26 + 9);
      LOWORD(STACK[0x121A3]) = *(v26 + 11);
      LOBYTE(STACK[0x121A2]) = 0;
      v98 = v133;
      v99 = vars0;
    }

    v123 = v21;
    if (v135 > 0)
    {
      v105 = v99;
    }

    else
    {
      v105 = 0;
    }

    if (v105 == 1)
    {
      v106 = (v141 - 4);
      v107 = 2 * v128;
      v108 = &STACK[0x120C0];
      v109 = v135;
      do
      {
        *v108 = *v106;
        v108 = (v108 + 4);
        v106 = (v106 + v107);
        --v109;
      }

      while (v109);
    }

    sub_27744D844(&__dst, v139, v39 << v134[2], v138 << v134[2], v71, v98, 1u);
    v110 = v137;
    if ((v137 & 4) != 0)
    {
      v111 = 34;
    }

    else
    {
      v111 = 2;
    }

    if ((v137 & 4) != 0)
    {
      v112 = 17;
    }

    else
    {
      v112 = 1;
    }

    v113 = v111 & 0xFFFFFF7F | (((v137 & 8) != 0) << 7);
    v114 = v112 & 0xFFFFFFBF | (((v137 & 8) != 0) << 6);
    v115 = v71 >> 3;
    v116 = &v134[2 * v94 + 98];
    v117 = 5;
    v118 = v128;
    do
    {
      if ((v115 & (1 << --v117)) != 0)
      {
        v115 -= 1 << v117;
        if (v115)
        {
          v119 = v113;
        }

        else
        {
          v119 = 0;
        }

        v120 = v110;
        v110 = v110 & 0xC | v114;
        (*v116)(v141, v118, &STACK[0x12180], v119 | v120, &STACK[0x120C0], v140, v135);
        v140 += 2 * (8 << v117);
        v141 += 2 * (8 << v117);
      }

      v116 -= 10;
    }

    while (v117);
    sub_277450E9C(&__dst);
    v20 = v134;
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_2774B81EC(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B89BC;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B89BC;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B8244;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B8244(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v48 = a1;
  v149 = &v147;
  a48 = *MEMORY[0x277D85DE8];
  vars8 = a2;
  v49 = *(a2 + 8);
  v50 = *(a1 + 16);
  v51 = *(a1 + 20);
  v52 = (*(v49 + 1000) + 16 * (v50 * a3));
  v54 = *(v49 + 416);
  v53 = *(v49 + 424);
  v56 = *(a1 + 8);
  v55 = *(a1 + 12);
  v57 = v55 * a3;
  v58 = *(v49 + 531);
  v59 = *(v49 + 400) + ((v54 * v57) << v58);
  v60 = *(v49 + 408) + ((v53 * (v57 >> 1)) << v58);
  v61 = *(a1 + 32);
  v162 = v60;
  v163 = *(a1 + 48);
  if (a3)
  {
    v62 = 38;
  }

  else
  {
    v62 = 2;
  }

  if (a3)
  {
    v63 = 17;
  }

  else
  {
    v63 = 1;
  }

  v148 = *(a2 + 8);
  if (v51 - 1 <= a3)
  {
    v155 = v63;
    v65 = *(v49 + 524) - v57;
  }

  else
  {
    v62 = v62 | 0x88;
    v155 = v63 | 0x40;
    v64 = *(v49 + 520);
    memcpy(*(a1 + 40), (v59 + v54 * (v55 - 1)), v64);
    memcpy(v48[3].i64[1], (v60 + v53 * ((v48->i32[3] >> 1) - 1)), v64 & 0x7FFFFFFFFFFFFFFFLL);
    v65 = v48->i32[3];
    v50 = v48[1].i32[0];
  }

  v161 = (v65 >> 1);
  vars0 = v48;
  v154 = v53;
  v156 = v65;
  if (v50 < 2)
  {
    LODWORD(v152) = 0;
    v95 = 0;
    v66 = 0;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = &v48->i8[40 * v56];
    v151 = v69 + 112;
    v152 = v69 - 48;
    v150 = v65;
    v155 |= v62;
    do
    {
      v70 = sub_2774B3014(vars8, v66, a3, v62);
      v72 = *v52;
      v73 = (v72 & 1) == 0;
      if (v72)
      {
        v74 = (v72 >> 1) & 7;
        if (v74 > 4)
        {
          return result;
        }

        if (v74 == 4)
        {
          v75 = 0;
          v76 = v52[13];
          a29 = 0u;
          a30 = 0u;
          v77 = v156;
          do
          {
            *(&a29 + ((v76 + v75) & 0x1F)) = v52[v75 + 1];
            ++v75;
          }

          while (v75 != 4);
        }

        else
        {
          LOWORD(a29) = *(v52 + 1);
          *(&a29 + 3) = *(v52 + 3);
          BYTE2(a29) = 0;
          v77 = v156;
        }

        if ((v67 & (v77 > 0)) == 1)
        {
          v78 = (v59 - 1);
          v79 = &a33;
          v80 = v150;
          do
          {
            *v79++ = *v78;
            v78 += v54;
            --v80;
          }

          while (v80);
        }

        v81 = v70;
        (*&v152[8 * v74])(v59, v54, &a29);
        v70 = v81;
        LODWORD(v72) = *v52;
      }

      v82 = (v72 & 0x10) == 0;
      if ((v72 & 0x10) != 0)
      {
        if (v72 > 0x9F)
        {
          return result;
        }

        v83 = v72 >> 5;
        HIDWORD(v153) = v73;
        if (v83 == 4)
        {
          v84 = 0;
          v85 = v52[14];
          a29 = 0u;
          a30 = 0u;
          do
          {
            *(&a29 + ((v85 + v84) & 0x1F)) = v52[v84 + 5];
            ++v84;
          }

          while (v84 != 4);
          v86 = 0;
          v87 = v52[15];
          a31 = 0u;
          a32 = 0u;
          v88 = v154;
          do
          {
            *(&a31 + ((v87 + v86) & 0x1F)) = v52[v86 + 9];
            ++v86;
          }

          while (v86 != 4);
        }

        else
        {
          LOWORD(a29) = *(v52 + 5);
          *(&a29 + 3) = *(v52 + 7);
          BYTE2(a29) = 0;
          LOWORD(a31) = *(v52 + 9);
          *(&a31 + 3) = *(v52 + 11);
          BYTE2(a31) = 0;
          v88 = v154;
        }

        v89 = v82;
        if (v68 && v161 > 0)
        {
          v90 = (v162 - 2);
          v91 = &a13;
          v92 = v161;
          do
          {
            *v91 = *v90;
            v91 += 2;
            v90 = (v90 + v88);
            --v92;
          }

          while (v92);
        }

        (*&v151[8 * v83])(v162, v88, &a29, v70, &a13, v163, v161);
        v82 = v89;
        v73 = HIDWORD(v153);
      }

      v93 = vars0->i32[3];
      v59 += v93;
      v61 += v93;
      v162 += v93;
      v163 += v93;
      v52 += 16;
      v66 = (v66 + 1);
      v67 = v73;
      v68 = v82;
      v94 = v73;
      v62 = v155;
    }

    while (v66 < vars0[1].i32[0] - 1);
    v95 = v94;
    LODWORD(v152) = v82;
    LOBYTE(v62) = v155;
    v48 = vars0;
  }

  v96 = sub_2774B3014(vars8, v66, a3, v62 & 0x5D);
  v97 = *(v148 + 520) - (v48[1].i32[0] - 1) * v48->i32[3];
  v98 = *v52;
  if (v98)
  {
    v99 = (v98 >> 1) & 7;
    if (v99 > 4)
    {
      return result;
    }

    if (v99 == 4)
    {
      v100 = (v52 + 1);
      v101 = v52[13];
      result = 0uLL;
      a29 = 0u;
      a30 = 0u;
      v102 = 4;
      v104 = v156;
      do
      {
        v103 = *v100++;
        *(&a29 + (v101++ & 0x1F)) = v103;
        --v102;
      }

      while (v102);
    }

    else
    {
      LOWORD(a29) = *(v52 + 1);
      *(&a29 + 3) = *(v52 + 3);
      BYTE2(a29) = 0;
      v104 = v156;
    }

    if (v104 > 0)
    {
      v105 = v95;
    }

    else
    {
      v105 = 0;
    }

    if (v105 == 1)
    {
      v106 = (v59 - 1);
      v107 = v104;
      v108 = &a33;
      do
      {
        *v108++ = *v106;
        v106 += v54;
        --v107;
      }

      while (v107);
    }

    if ((v96 & 4) != 0)
    {
      v109 = 34;
    }

    else
    {
      v109 = 2;
    }

    if ((v96 & 4) != 0)
    {
      v110 = 17;
    }

    else
    {
      v110 = 1;
    }

    v111 = v109 & 0xFFFFFF7F | (((v96 & 8) != 0) << 7);
    v112 = v110 & 0xFFFFFFBF | (((v96 & 8) != 0) << 6);
    LODWORD(vars8) = v97;
    v113 = v97 >> 3;
    v114 = &v48[12] + v99;
    v115 = v96;
    v116 = 4;
    v160 = v96;
    do
    {
      if ((v113 & (1 << --v116)) != 0)
      {
        v113 -= 1 << v116;
        if (v113)
        {
          v117 = v111;
        }

        else
        {
          v117 = 0;
        }

        v118 = v115 & 0xC | v112;
        (*v114)(v59, v54, &a29, v117 | v115, &a33, v61, v156);
        v59 += 8 << v116;
        v115 = v118;
        v61 += 8 << v116;
      }

      v114 -= 5;
    }

    while (v116);
    LODWORD(v98) = *v52;
    v96 = v160;
    v97 = vars8;
  }

  if ((v98 & 0x10) == 0)
  {
LABEL_93:
    v145 = vars0;
    result = vextq_s8(vars0[2], vars0[2], 8uLL);
    v146 = vextq_s8(vars0[3], vars0[3], 8uLL);
    vars0[2] = result;
    v145[3] = v146;
    return result;
  }

  if (v98 <= 0x9F)
  {
    v119 = v98 >> 5;
    if (v119 == 4)
    {
      v120 = (v52 + 5);
      v121 = v52[14];
      a29 = 0u;
      a30 = 0u;
      v122 = 4;
      v123 = vars0;
      v124 = v154;
      v125 = v162;
      v126 = v152;
      do
      {
        v127 = *v120++;
        *(&a29 + (v121++ & 0x1F)) = v127;
        --v122;
      }

      while (v122);
      v128 = (v52 + 9);
      v129 = v52[15];
      a31 = 0u;
      a32 = 0u;
      v130 = 4;
      do
      {
        v131 = *v128++;
        *(&a31 + (v129++ & 0x1F)) = v131;
        --v130;
      }

      while (v130);
    }

    else
    {
      LOWORD(a29) = *(v52 + 5);
      *(&a29 + 3) = *(v52 + 7);
      BYTE2(a29) = 0;
      LOWORD(a31) = *(v52 + 9);
      *(&a31 + 3) = *(v52 + 11);
      BYTE2(a31) = 0;
      v123 = vars0;
      v124 = v154;
      v125 = v162;
      v126 = v152;
    }

    if (v161 > 0)
    {
      v132 = v126;
    }

    else
    {
      v132 = 0;
    }

    if (v132 == 1)
    {
      v133 = (v125 - 2);
      v134 = &a13;
      v135 = v161;
      do
      {
        *v134 = *v133;
        v134 += 2;
        v133 = (v133 + v124);
        --v135;
      }

      while (v135);
    }

    if ((v96 & 4) != 0)
    {
      v136 = 34;
    }

    else
    {
      v136 = 2;
    }

    if ((v96 & 4) != 0)
    {
      v137 = 17;
    }

    else
    {
      v137 = 1;
    }

    v138 = v136 & 0xFFFFFF7F | (((v96 & 8) != 0) << 7);
    v139 = v137 & 0xFFFFFFBF | (((v96 & 8) != 0) << 6);
    v140 = v97 >> 3;
    v141 = &v123[24].i64[v119 + 1];
    v142 = 5;
    do
    {
      if ((v140 & (1 << --v142)) != 0)
      {
        v140 -= 1 << v142;
        if (v140)
        {
          v143 = v138;
        }

        else
        {
          v143 = 0;
        }

        v144 = v96 & 0xC | v139;
        (*v141)(v162, v154, &a29, v143 | v96, &a13, v163, v161);
        v96 = v144;
        v162 += 8 << v142;
        v163 += 8 << v142;
      }

      v141 -= 5;
    }

    while (v142);
    goto LABEL_93;
  }

  return result;
}

int8x16_t sub_2774B89BC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, int a12, int a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t __dst)
{
  v54 = MEMORY[0x28223BE20](a1);
  v56 = v54;
  v57 = &v164;
  STACK[0x91F8] = *MEMORY[0x277D85DE8];
  v182 = v58;
  v59 = *(v58 + 8);
  v60 = *(v54 + 16);
  v61 = *(v54 + 20);
  v62 = (*(v59 + 1000) + 16 * v60 * v55);
  v63 = *(v59 + 416);
  v64 = *(v59 + 424);
  v66 = *(v54 + 8);
  v65 = *(v54 + 12);
  v67 = v65 * v55;
  v68 = *(v59 + 531);
  v69 = *(v59 + 400) + ((v63 * v67) << v68);
  v70 = *(v59 + 408) + ((v64 * (v67 >> 1)) << v68);
  v71 = *(v54 + 32);
  v183 = v70;
  v184 = *(v54 + 48);
  if (v55)
  {
    v72 = 38;
  }

  else
  {
    v72 = 2;
  }

  if (v55)
  {
    v73 = 17;
  }

  else
  {
    v73 = 1;
  }

  v181 = v55;
  vars8 = *(v59 + 416);
  v166 = v59;
  if (v61 - 1 <= v55)
  {
    v177 = v73;
    v76 = *(v59 + 524) - v67;
  }

  else
  {
    v72 = v72 | 0x88;
    v177 = v73 | 0x40;
    v74 = v70;
    v75 = *(v59 + 520);
    memcpy(*(v54 + 40), (v69 + v63 * (v65 - 1)), v75);
    memcpy(*(v56 + 56), (v74 + v64 * ((*(v56 + 12) >> 1) - 1)), v75 & 0x7FFFFFFFFFFFFFFFLL);
    v76 = *(v56 + 12);
    v60 = *(v56 + 16);
  }

  v176 = (v76 >> 1);
  v180 = v56;
  v175 = v76;
  if (v60 < 2)
  {
    vars0 = 0;
    v109 = 0;
    v77 = 0;
  }

  else
  {
    v170 = v64;
    v165 = &v164;
    v77 = 0;
    v78 = 0;
    LODWORD(v64) = 0;
    v79 = v56 + 40 * v66;
    v168 = v79 + 112;
    v169 = v79 - 48;
    v167 = v76;
    vars0_4 = v177 | v72;
    do
    {
      v80 = sub_2774B3014(v182, v77, v181, v72);
      v82 = v80;
      v83 = *v62;
      v84 = (v83 & 1) == 0;
      v178 = v84;
      if (v83)
      {
        vars0 = v64;
        v64 = v71;
        v85 = v80;
        v86 = (v83 >> 1) & 7;
        if (v86 > 4)
        {
          return result;
        }

        if (v86 == 4)
        {
          v87 = 0;
          v88 = v62[13];
          a36 = 0u;
          a37 = 0u;
          v89 = v175;
          v90 = vars8;
          do
          {
            *(&a36 + ((v88 + v87) & 0x1F)) = v62[v87 + 1];
            ++v87;
          }

          while (v87 != 4);
        }

        else
        {
          LOWORD(a36) = *(v62 + 1);
          *(&a36 + 3) = *(v62 + 3);
          BYTE2(a36) = 0;
          v89 = v175;
          v90 = vars8;
        }

        if (v78 && v89 > 0)
        {
          v91 = (v69 - 1);
          v92 = &a40;
          v93 = v167;
          do
          {
            *v92++ = *v91;
            v91 += v90;
            --v93;
          }

          while (v93);
        }

        v94 = v89;
        sub_27744F124(&__dst, v182, v77 << *(v56 + 8), v181 << *(v56 + 8), *(v56 + 12), v89, 0);
        v95 = *(v169 + 8 * v86);
        v82 = v85;
        v96 = v85;
        v71 = v64;
        v95(v69, v90, &a36, v96, &a40, v64, v94);
        sub_2774520D0(&__dst);
        LODWORD(v83) = *v62;
        v84 = v178;
        LOBYTE(v64) = vars0;
      }

      v97 = (v83 & 0x10) == 0;
      if ((v83 & 0x10) != 0)
      {
        if (v83 > 0x9F)
        {
          return result;
        }

        v98 = v83 >> 5;
        HIDWORD(v171) = v82;
        if (v83 >> 5 == 4)
        {
          v99 = 0;
          v100 = v62[14];
          a36 = 0u;
          a37 = 0u;
          do
          {
            *(&a36 + ((v100 + v99) & 0x1F)) = v62[v99 + 5];
            ++v99;
          }

          while (v99 != 4);
          v101 = 0;
          v102 = v62[15];
          a38 = 0u;
          a39 = 0u;
          do
          {
            *(&a38 + ((v102 + v101) & 0x1F)) = v62[v101 + 9];
            ++v101;
          }

          while (v101 != 4);
        }

        else
        {
          LOWORD(a36) = *(v62 + 5);
          *(&a36 + 3) = *(v62 + 7);
          BYTE2(a36) = 0;
          LOWORD(a38) = *(v62 + 9);
          *(&a38 + 3) = *(v62 + 11);
          BYTE2(a38) = 0;
        }

        v103 = v97;
        v104 = v170;
        if ((v64 & (v176 > 0)) == 1)
        {
          v105 = (v183 - 2);
          v106 = &a20;
          v107 = v176;
          do
          {
            *v106 = *v105;
            v106 += 2;
            v105 = (v105 + v104);
            --v107;
          }

          while (v107);
        }

        sub_27744F124(&__dst, v182, v77 << *(v56 + 8), v181 << *(v56 + 8), *(v56 + 12), v175, 1u);
        (*(v168 + 8 * v98))(v183, v104, &a36, HIDWORD(v171), &a20, v184, v176);
        sub_2774520D0(&__dst);
        v97 = v103;
        v84 = v178;
      }

      v108 = *(v56 + 12);
      v69 += v108;
      v71 += v108;
      v183 += v108;
      v184 += v108;
      v62 += 16;
      v77 = (v77 + 1);
      v78 = v84;
      LODWORD(v64) = v97;
      v72 = vars0_4;
    }

    while (v77 < *(v56 + 16) - 1);
    v109 = v84;
    vars0 = v97;
    LOBYTE(v72) = vars0_4;
    v57 = v165;
    v64 = v170;
  }

  v179 = sub_2774B3014(v182, v77, v181, v72 & 0x5D);
  v110 = *(v166 + 520) - (*(v56 + 16) - 1) * *(v56 + 12);
  v111 = *v62;
  v112 = v57;
  if (v111)
  {
    v113 = (v111 >> 1) & 7;
    if (v113 > 4)
    {
      return result;
    }

    if (v113 == 4)
    {
      v114 = (v62 + 1);
      v115 = v62[13];
      a36 = 0u;
      a37 = 0u;
      v116 = 4;
      v118 = v175;
      v119 = vars8;
      do
      {
        v117 = *v114++;
        *(&a36 + (v115++ & 0x1F)) = v117;
        --v116;
      }

      while (v116);
    }

    else
    {
      LOWORD(a36) = *(v62 + 1);
      *(&a36 + 3) = *(v62 + 3);
      BYTE2(a36) = 0;
      v118 = v175;
      v119 = vars8;
    }

    v170 = v64;
    v165 = v112;
    if (v118 > 0 && v109)
    {
      v121 = (v69 - 1);
      v122 = v118;
      v123 = &a40;
      do
      {
        *v123++ = *v121;
        v121 += v119;
        --v122;
      }

      while (v122);
    }

    sub_27744F124(&__dst, v182, v77 << *(v56 + 8), v181 << *(v56 + 8), v110, v118, 0);
    if ((v179 & 4) != 0)
    {
      v124 = 34;
    }

    else
    {
      v124 = 2;
    }

    if ((v179 & 4) != 0)
    {
      v125 = 17;
    }

    else
    {
      v125 = 1;
    }

    v126 = v124 & 0xFFFFFF7F | (((v179 & 8) != 0) << 7);
    v127 = v125 & 0xFFFFFFBF | (((v179 & 8) != 0) << 6);
    v128 = v56;
    vars0_4 = v110;
    v129 = v110 >> 3;
    v130 = (v128 + 8 * v113 + 192);
    v131 = 4;
    v132 = v179;
    do
    {
      if ((v129 & (1 << --v131)) != 0)
      {
        v129 -= 1 << v131;
        if (v129)
        {
          v133 = v126;
        }

        else
        {
          v133 = 0;
        }

        v134 = v132 & 0xC | v127;
        (*v130)(v69, vars8, &a36, v133 | v132, &a40, v71, v175);
        v69 += 8 << v131;
        v132 = v134;
        v71 += 8 << v131;
      }

      v130 -= 5;
    }

    while (v131);
    sub_2774520D0(&__dst);
    LODWORD(v111) = *v62;
    v112 = v165;
    v56 = v180;
    v64 = v170;
    v110 = vars0_4;
  }

  if ((v111 & 0x10) == 0)
  {
LABEL_96:
    result = vextq_s8(*(v56 + 32), *(v56 + 32), 8uLL);
    v163 = vextq_s8(*(v56 + 48), *(v56 + 48), 8uLL);
    *(v56 + 32) = result;
    *(v56 + 48) = v163;
    return result;
  }

  if (v111 <= 0x9F)
  {
    v135 = v111 >> 5;
    if (v111 >> 5 == 4)
    {
      v136 = (v62 + 5);
      v137 = v62[14];
      a36 = 0u;
      a37 = 0u;
      v138 = 4;
      v139 = v175;
      v140 = vars0;
      v141 = v64;
      do
      {
        v142 = *v136++;
        *(&a36 + (v137++ & 0x1F)) = v142;
        --v138;
      }

      while (v138);
      v143 = (v62 + 9);
      v144 = v62[15];
      a38 = 0u;
      a39 = 0u;
      v145 = 4;
      do
      {
        v146 = *v143++;
        *(&a38 + (v144++ & 0x1F)) = v146;
        --v145;
      }

      while (v145);
    }

    else
    {
      LOWORD(a36) = *(v62 + 5);
      *(&a36 + 3) = *(v62 + 7);
      BYTE2(a36) = 0;
      LOWORD(a38) = *(v62 + 9);
      *(&a38 + 3) = *(v62 + 11);
      BYTE2(a38) = 0;
      v139 = v175;
      v140 = vars0;
      v141 = v64;
    }

    v165 = v112;
    v147 = v176 > 0 && v140;
    v148 = v179;
    if (v147)
    {
      v149 = (v183 - 2);
      v150 = &a20;
      v151 = v176;
      do
      {
        *v150 = *v149;
        v150 += 2;
        v149 = (v149 + v141);
        --v151;
      }

      while (v151);
    }

    sub_27744F124(&__dst, v182, v77 << *(v56 + 8), v181 << *(v56 + 8), v110, v139, 1u);
    if ((v179 & 4) != 0)
    {
      v152 = 34;
    }

    else
    {
      v152 = 2;
    }

    v153 = v56;
    if ((v179 & 4) != 0)
    {
      v154 = 17;
    }

    else
    {
      v154 = 1;
    }

    v155 = v152 & 0xFFFFFF7F | (((v179 & 8) != 0) << 7);
    v156 = v154 & 0xFFFFFFBF | (((v179 & 8) != 0) << 6);
    v157 = v110 >> 3;
    v158 = (v153 + 8 * v135 + 392);
    v159 = 5;
    v160 = v183;
    do
    {
      if ((v157 & (1 << --v159)) != 0)
      {
        v157 -= 1 << v159;
        if (v157)
        {
          v161 = v155;
        }

        else
        {
          v161 = 0;
        }

        v162 = v148;
        v148 = v148 & 0xC | v156;
        (*v158)(v160, v141, &a36, v161 | v162, &a20, v184, v176);
        v160 += 8 << v159;
        v184 += 8 << v159;
      }

      v158 -= 5;
    }

    while (v159);
    sub_2774520D0(&__dst);
    v56 = v180;
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_2774B9290(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B96FC;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B96FC;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B92E8;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B92E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a38 = *MEMORY[0x277D85DE8];
  v101 = a2;
  v39 = *(a2 + 8);
  v40 = *(a1 + 16);
  v41 = *(a1 + 20);
  v42 = (*(v39 + 1000) + 16 * v40 * a3);
  v43 = *(v39 + 416);
  v45 = *(a1 + 8);
  v44 = *(a1 + 12);
  v46 = v44 * a3;
  v47 = *(v39 + 400) + ((v43 * v46) << *(v39 + 531));
  v48 = *(a1 + 32);
  if (a3)
  {
    v49 = 38;
  }

  else
  {
    v49 = 2;
  }

  if (a3)
  {
    v50 = 17;
  }

  else
  {
    v50 = 1;
  }

  HIDWORD(v102) = a3;
  v96 = v39;
  if (v41 - 1 <= a3)
  {
    v51 = *(v39 + 524) - v46;
  }

  else
  {
    v49 = v49 | 0x88;
    v50 |= 0x40u;
    memcpy(*(a1 + 40), (v47 + 2 * v43 * (v44 - 1)), 2 * *(v39 + 520));
    v51 = *(a1 + 12);
    v40 = *(a1 + 16);
  }

  HIDWORD(vars8) = v51;
  v97 = &v95;
  vars0 = a1;
  v100 = v43;
  if (v40 < 2)
  {
    v59 = 0;
    v52 = 0;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v98 = HIDWORD(vars8);
    v99 = a1 + 40 * v45 - 48;
    v54 = v50 | v49;
    v55 = 2 * v43;
    do
    {
      v56 = sub_2774B3014(v101, v52, HIDWORD(v102), v49);
      v58 = *v42;
      v59 = (v58 & 1) == 0;
      if (v58)
      {
        v60 = (v58 >> 1) & 7;
        if (v60 > 4)
        {
          return result;
        }

        if (v60 == 4)
        {
          v61 = 0;
          v62 = v42[13];
          a9 = 0u;
          a10 = 0u;
          do
          {
            *(&a9 + ((v62 + v61) & 0x1F)) = v42[v61 + 1];
            ++v61;
          }

          while (v61 != 4);
        }

        else
        {
          LOWORD(a9) = *(v42 + 1);
          *(&a9 + 3) = *(v42 + 3);
          BYTE2(a9) = 0;
        }

        if (v53 && SHIDWORD(vars8) > 0)
        {
          v63 = (v47 - 2);
          v64 = &a15;
          v65 = v98;
          do
          {
            *v64 = *v63;
            v64 += 2;
            v63 = (v63 + v55);
            --v65;
          }

          while (v65);
        }

        (*(v99 + 8 * v60))(v47, v100, &a9, v56, &a15, v48, HIDWORD(vars8));
      }

      v66 = vars0->i32[3];
      v47 += 2 * v66;
      v48 += 2 * v66;
      v42 += 16;
      v52 = (v52 + 1);
      v53 = v59;
      v49 = v54;
    }

    while (v52 < vars0[1].i32[0] - 1);
    LOBYTE(v49) = v54;
  }

  v67 = sub_2774B3014(v101, v52, HIDWORD(v102), v49 & 0x5D);
  v68 = *v42;
  if ((v68 & 1) == 0)
  {
    goto LABEL_52;
  }

  v69 = vars0;
  v70 = vars0[1].i32[0] - 1;
  v71 = (v68 >> 1) & 7;
  if (v71 <= 4)
  {
    v72 = *(v96 + 520);
    v73 = vars0->i32[3];
    if (v71 == 4)
    {
      v74 = (v42 + 1);
      v75 = v42[13];
      a9 = 0u;
      a10 = 0u;
      v76 = 4;
      v78 = v100;
      do
      {
        v77 = *v74++;
        *(&a9 + (v75++ & 0x1F)) = v77;
        --v76;
      }

      while (v76);
    }

    else
    {
      LOWORD(a9) = *(v42 + 1);
      *(&a9 + 3) = *(v42 + 3);
      BYTE2(a9) = 0;
      v78 = v100;
    }

    v79 = v72 - v70 * v73;
    if (SHIDWORD(vars8) > 0 && v59)
    {
      v81 = (v47 - 2);
      v82 = &a15;
      v83 = HIDWORD(vars8);
      do
      {
        *v82 = *v81;
        v82 += 2;
        v81 += v78;
        --v83;
      }

      while (v83);
    }

    if ((v67 & 4) != 0)
    {
      v84 = 34;
    }

    else
    {
      v84 = 2;
    }

    if ((v67 & 4) != 0)
    {
      v85 = 17;
    }

    else
    {
      v85 = 1;
    }

    v86 = v84 & 0xFFFFFF7F | (((v67 & 8) != 0) << 7);
    v87 = v85 & 0xFFFFFFBF | (((v67 & 8) != 0) << 6);
    v88 = v79 >> 3;
    v89 = &v69[12] + v71;
    v90 = 4;
    do
    {
      if ((v88 & (1 << --v90)) != 0)
      {
        v88 -= 1 << v90;
        if (v88)
        {
          v91 = v86;
        }

        else
        {
          v91 = 0;
        }

        v92 = v67 & 0xC | v87;
        (*v89)(v47, v78, &a9, v91 | v67, &a15, v48, HIDWORD(vars8));
        v47 += 2 * (8 << v90);
        v67 = v92;
        v48 += 2 * (8 << v90);
      }

      v89 -= 5;
    }

    while (v90);
LABEL_52:
    v93 = vars0;
    result = vextq_s8(vars0[2], vars0[2], 8uLL);
    v94 = vextq_s8(vars0[3], vars0[3], 8uLL);
    vars0[2] = result;
    v93[3] = v94;
  }

  return result;
}

int8x16_t sub_2774B96FC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t __dst)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v76;
  STACK[0x12178] = *MEMORY[0x277D85DE8];
  v81 = v12;
  v13 = *(v12 + 8);
  v14 = *(v9 + 16);
  v15 = *(v9 + 20);
  v16 = (*(v13 + 1000) + 16 * v14 * v10);
  v17 = *(v13 + 416);
  v19 = *(v9 + 8);
  v18 = *(v9 + 12);
  v20 = v18 * v10;
  v21 = *(v13 + 400) + ((v17 * v20) << *(v13 + 531));
  v22 = *(v9 + 32);
  if (v10)
  {
    v23 = 38;
  }

  else
  {
    v23 = 2;
  }

  if (v10)
  {
    v24 = 17;
  }

  else
  {
    v24 = 1;
  }

  vars8_4 = v10;
  v82 = v9;
  v77 = v13;
  if (v15 - 1 <= v10)
  {
    v26 = *(v13 + 524) - v20;
  }

  else
  {
    v25 = v9;
    v23 = v23 | 0x88;
    v24 |= 0x40u;
    memcpy(*(v9 + 40), (v21 + 2 * v17 * (v18 - 1)), 2 * *(v13 + 520));
    v26 = *(v25 + 12);
    v14 = *(v25 + 16);
  }

  vars8 = v26;
  v84 = v17;
  if (v14 < 2)
  {
    v50 = 0;
    v27 = 0;
    v32 = v81;
    v30 = v82;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = &v82->i8[40 * v19];
    v30 = v82;
    v80 = v29 - 48;
    v78 = &v76;
    v79 = vars8;
    HIDWORD(vars0) = v24 | v23;
    v31 = 2 * v17;
    v32 = v81;
    do
    {
      v33 = sub_2774B3014(v32, v27, vars8_4, v23);
      v35 = *v16;
      v36 = (v35 & 1) == 0;
      if (v35)
      {
        v37 = (v35 >> 1) & 7;
        if (v37 > 4)
        {
          return result;
        }

        v38 = v33;
        HIDWORD(v83) = (v35 & 1) == 0;
        if (v37 == 4)
        {
          v39 = 0;
          v40 = v16[13];
          *&STACK[0x12080] = 0u;
          *&STACK[0x12090] = 0u;
          do
          {
            *(&STACK[0x12080] + ((v40 + v39) & 0x1F)) = v16[v39 + 1];
            ++v39;
          }

          while (v39 != 4);
        }

        else
        {
          LOWORD(STACK[0x12080]) = *(v16 + 1);
          LOWORD(STACK[0x12083]) = *(v16 + 3);
          LOBYTE(STACK[0x12082]) = 0;
        }

        if ((v28 & (vars8 > 0)) == 1)
        {
          v41 = (v21 - 2);
          v42 = &STACK[0x120C0];
          v43 = v79;
          do
          {
            *v42 = *v41;
            v42 = (v42 + 2);
            v41 = (v41 + v31);
            --v43;
          }

          while (v43);
        }

        v44 = v82;
        v45 = v32;
        v46 = vars8;
        sub_277450DF8(&__dst, v45, v27 << v82->i32[2], vars8_4 << v82->i32[2], v82->i32[3], vars8);
        v47 = *&v80[8 * v37];
        v30 = v44;
        v48 = v46;
        v32 = v81;
        v47(v21, v84, &STACK[0x12080], v38, &STACK[0x120C0], v22, v48);
        sub_277450E9C(&__dst);
        v36 = HIDWORD(v83);
      }

      v49 = v30->i32[3];
      v21 += 2 * v49;
      v22 += 2 * v49;
      v16 += 16;
      v27 = (v27 + 1);
      v28 = v36;
      v23 = HIDWORD(vars0);
    }

    while (v27 < v30[1].i32[0] - 1);
    v50 = v36;
    LOBYTE(v23) = BYTE4(vars0);
    v11 = v78;
  }

  v51 = sub_2774B3014(v32, v27, vars8_4, v23 & 0x5D);
  v52 = *v16;
  if ((v52 & 1) == 0)
  {
    goto LABEL_54;
  }

  v53 = (v52 >> 1) & 7;
  if (v53 <= 4)
  {
    v54 = v51;
    v55 = *(v77 + 520) - (v30[1].i32[0] - 1) * v30->i32[3];
    if (v53 == 4)
    {
      v56 = (v16 + 1);
      v57 = v16[13];
      *&STACK[0x12080] = 0u;
      *&STACK[0x12090] = 0u;
      v58 = 4;
      do
      {
        v59 = *v56++;
        *(&STACK[0x12080] + (v57++ & 0x1F)) = v59;
        --v58;
      }

      while (v58);
    }

    else
    {
      LOWORD(STACK[0x12080]) = *(v16 + 1);
      LOWORD(STACK[0x12083]) = *(v16 + 3);
      LOBYTE(STACK[0x12082]) = 0;
    }

    v78 = v11;
    if (vars8 > 0)
    {
      v60 = v50;
    }

    else
    {
      v60 = 0;
    }

    if (v60 == 1)
    {
      v61 = (v21 - 2);
      v62 = 2 * v84;
      v63 = &STACK[0x120C0];
      v64 = vars8;
      do
      {
        *v63 = *v61;
        v63 = (v63 + 2);
        v61 = (v61 + v62);
        --v64;
      }

      while (v64);
    }

    v65 = v55;
    sub_277450DF8(&__dst, v32, v27 << v30->i32[2], vars8_4 << v30->i32[2], v55, vars8);
    if ((v54 & 4) != 0)
    {
      v66 = 34;
    }

    else
    {
      v66 = 2;
    }

    v67 = v30;
    if ((v54 & 4) != 0)
    {
      v68 = 17;
    }

    else
    {
      v68 = 1;
    }

    v69 = v66 & 0xFFFFFF7F | (((v54 & 8) != 0) << 7);
    v70 = v68 & 0xFFFFFFBF | (((v54 & 8) != 0) << 6);
    v71 = v65 >> 3;
    v72 = &v67[12] + v53;
    v73 = 4;
    do
    {
      if ((v71 & (1 << --v73)) != 0)
      {
        v71 -= 1 << v73;
        if (v71)
        {
          v74 = v69;
        }

        else
        {
          v74 = 0;
        }

        (*v72)(v21, v84, &STACK[0x12080], v74 | v54, &STACK[0x120C0], v22, vars8);
        v21 += 2 * (8 << v73);
        v54 = v54 & 0xC | v70;
        v22 += 2 * (8 << v73);
      }

      v72 -= 5;
    }

    while (v73);
    sub_277450E9C(&__dst);
    v30 = v82;
LABEL_54:
    result = vextq_s8(v30[2], v30[2], 8uLL);
    v75 = vextq_s8(v30[3], v30[3], 8uLL);
    v30[2] = result;
    v30[3] = v75;
  }

  return result;
}

uint64_t sub_2774B9C08(uint64_t result, uint64_t a2)
{
  v2 = sub_2774BA05C;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774BA05C;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B9C60;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B9C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  a30 = *MEMORY[0x277D85DE8];
  v90 = a2;
  v31 = *(a2 + 8);
  v32 = *(a1 + 16);
  v33 = *(a1 + 20);
  v34 = (*(v31 + 1000) + 16 * v32 * a3);
  v35 = *(v31 + 416);
  v37 = *(a1 + 8);
  v36 = *(a1 + 12);
  v38 = v36 * a3;
  v39 = *(v31 + 400) + ((v35 * v38) << *(v31 + 531));
  v40 = *(a1 + 32);
  if (a3)
  {
    v41 = 38;
  }

  else
  {
    v41 = 2;
  }

  if (a3)
  {
    v42 = 17;
  }

  else
  {
    v42 = 1;
  }

  HIDWORD(v91) = a3;
  v86 = v31;
  if (v33 - 1 <= a3)
  {
    v43 = *(v31 + 524) - v38;
  }

  else
  {
    v41 = v41 | 0x88;
    v42 |= 0x40u;
    memcpy(*(a1 + 40), (v39 + v35 * (v36 - 1)), *(v31 + 520));
    v43 = *(a1 + 12);
    v32 = *(a1 + 16);
  }

  HIDWORD(vars8) = v43;
  v87 = &v85;
  vars0 = a1;
  if (v32 < 2)
  {
    v50 = 0;
    v44 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v88 = HIDWORD(vars8);
    v89 = a1 + 40 * v37 - 48;
    v46 = v42 | v41;
    do
    {
      v47 = sub_2774B3014(v90, v44, HIDWORD(v91), v41);
      v49 = *v34;
      v50 = (v49 & 1) == 0;
      if (v49)
      {
        v51 = (v49 >> 1) & 7;
        if (v51 > 4)
        {
          return result;
        }

        if (v51 == 4)
        {
          v52 = 0;
          v53 = v34[13];
          a9 = 0u;
          a10 = 0u;
          do
          {
            *(&a9 + ((v53 + v52) & 0x1F)) = v34[v52 + 1];
            ++v52;
          }

          while (v52 != 4);
        }

        else
        {
          LOWORD(a9) = *(v34 + 1);
          *(&a9 + 3) = *(v34 + 3);
          BYTE2(a9) = 0;
        }

        if (v45 && SHIDWORD(vars8) > 0)
        {
          v54 = (v39 - 1);
          v55 = &a15;
          v56 = v88;
          do
          {
            *v55++ = *v54;
            v54 += v35;
            --v56;
          }

          while (v56);
        }

        (*(v89 + 8 * v51))(v39, v35, &a9, v47, &a15, v40, HIDWORD(vars8));
      }

      v57 = vars0->i32[3];
      v39 += v57;
      v40 += v57;
      v34 += 16;
      v44 = (v44 + 1);
      v45 = v50;
      v41 = v46;
    }

    while (v44 < vars0[1].i32[0] - 1);
    LOBYTE(v41) = v46;
  }

  v58 = sub_2774B3014(v90, v44, HIDWORD(v91), v41 & 0x5D);
  v59 = *v34;
  if ((v59 & 1) == 0)
  {
    goto LABEL_52;
  }

  v60 = vars0;
  v61 = vars0[1].i32[0] - 1;
  v62 = (v59 >> 1) & 7;
  if (v62 <= 4)
  {
    v63 = *(v86 + 520);
    v64 = vars0->i32[3];
    if (v62 == 4)
    {
      v65 = (v34 + 1);
      v66 = v34[13];
      a9 = 0u;
      a10 = 0u;
      v67 = 4;
      do
      {
        v68 = *v65++;
        *(&a9 + (v66++ & 0x1F)) = v68;
        --v67;
      }

      while (v67);
    }

    else
    {
      LOWORD(a9) = *(v34 + 1);
      *(&a9 + 3) = *(v34 + 3);
      BYTE2(a9) = 0;
    }

    v69 = v63 - v61 * v64;
    if (SHIDWORD(vars8) > 0 && v50)
    {
      v71 = (v39 - 1);
      v72 = HIDWORD(vars8);
      v73 = &a15;
      do
      {
        *v73++ = *v71;
        v71 += v35;
        --v72;
      }

      while (v72);
    }

    if ((v58 & 4) != 0)
    {
      v74 = 34;
    }

    else
    {
      v74 = 2;
    }

    if ((v58 & 4) != 0)
    {
      v75 = 17;
    }

    else
    {
      v75 = 1;
    }

    v76 = v74 & 0xFFFFFF7F | (((v58 & 8) != 0) << 7);
    v77 = v75 & 0xFFFFFFBF | (((v58 & 8) != 0) << 6);
    v78 = v69 >> 3;
    v79 = &v60[12] + v62;
    v80 = 4;
    do
    {
      if ((v78 & (1 << --v80)) != 0)
      {
        v78 -= 1 << v80;
        if (v78)
        {
          v81 = v76;
        }

        else
        {
          v81 = 0;
        }

        v82 = v58 & 0xC | v77;
        (*v79)(v39, v35, &a9, v81 | v58, &a15, v40, HIDWORD(vars8));
        v39 += 8 << v80;
        v58 = v82;
        v40 += 8 << v80;
      }

      v79 -= 5;
    }

    while (v80);
LABEL_52:
    v83 = vars0;
    result = vextq_s8(vars0[2], vars0[2], 8uLL);
    v84 = vextq_s8(vars0[3], vars0[3], 8uLL);
    vars0[2] = result;
    v83[3] = v84;
  }

  return result;
}

int8x16_t sub_2774BA05C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t __dst)
{
  v29 = MEMORY[0x28223BE20](a1);
  STACK[0x9138] = *MEMORY[0x277D85DE8];
  v96 = v31;
  v32 = *(v31 + 8);
  v33 = *(v29 + 16);
  v34 = *(v29 + 20);
  v35 = (*(v32 + 1000) + 16 * v33 * v30);
  v36 = *(v32 + 416);
  v38 = *(v29 + 8);
  v37 = *(v29 + 12);
  v39 = v37 * v30;
  v40 = *(v32 + 400) + ((v36 * v39) << *(v32 + 531));
  v41 = *(v29 + 32);
  if (v30)
  {
    v42 = 38;
  }

  else
  {
    v42 = 2;
  }

  if (v30)
  {
    v43 = 17;
  }

  else
  {
    v43 = 1;
  }

  vars8_4 = v30;
  v97 = v29;
  v92 = v32;
  if (v34 - 1 <= v30)
  {
    v45 = *(v32 + 524) - v39;
  }

  else
  {
    v44 = v29;
    v42 = v42 | 0x88;
    v43 |= 0x40u;
    memcpy(*(v29 + 40), (v40 + v36 * (v37 - 1)), *(v32 + 520));
    v45 = *(v44 + 12);
    v33 = *(v44 + 16);
  }

  vars8 = v45;
  v93 = &v91;
  if (v33 < 2)
  {
    vars0_4 = 0;
    v46 = 0;
    v50 = v96;
    v49 = v97;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = &v97->i8[40 * v38];
    v49 = v97;
    v94 = vars8;
    v95 = v48 - 48;
    vars0 = v43 | v42;
    v50 = v96;
    do
    {
      v51 = sub_2774B3014(v50, v46, vars8_4, v42);
      v53 = *v35;
      v54 = (v53 & 1) == 0;
      if (v53)
      {
        v55 = (v53 >> 1) & 7;
        if (v55 > 4)
        {
          return result;
        }

        v56 = v51;
        vars0_4 = (v53 & 1) == 0;
        if (v55 == 4)
        {
          v57 = 0;
          v58 = v35[13];
          a9 = 0u;
          a10 = 0u;
          do
          {
            *(&a9 + ((v58 + v57) & 0x1F)) = v35[v57 + 1];
            ++v57;
          }

          while (v57 != 4);
        }

        else
        {
          LOWORD(a9) = *(v35 + 1);
          *(&a9 + 3) = *(v35 + 3);
          BYTE2(a9) = 0;
        }

        if (v47 && vars8 > 0)
        {
          v59 = (v40 - 1);
          v60 = &a15;
          v61 = v94;
          do
          {
            *v60++ = *v59;
            v59 += v36;
            --v61;
          }

          while (v61);
        }

        v62 = v97;
        v63 = v50;
        v64 = vars8;
        sub_277452034(&__dst, v63, v46 << v97->i32[2], vars8_4 << v97->i32[2], v97->i32[3], vars8);
        v65 = *&v95[8 * v55];
        v49 = v62;
        v66 = v64;
        v50 = v96;
        v65(v40, v36, &a9, v56, &a15, v41, v66);
        sub_2774520D0(&__dst);
        v54 = vars0_4;
      }

      v67 = v49->i32[3];
      v40 += v67;
      v41 += v67;
      v35 += 16;
      v46 = (v46 + 1);
      v47 = v54;
      v42 = vars0;
    }

    while (v46 < v49[1].i32[0] - 1);
    vars0_4 = v54;
    LOBYTE(v42) = vars0;
  }

  v68 = sub_2774B3014(v50, v46, vars8_4, v42 & 0x5D);
  v69 = *v35;
  if ((v69 & 1) == 0)
  {
    goto LABEL_52;
  }

  v70 = (v69 >> 1) & 7;
  if (v70 <= 4)
  {
    v71 = v68;
    v72 = *(v92 + 520) - (v49[1].i32[0] - 1) * v49->i32[3];
    if (v70 == 4)
    {
      v73 = (v35 + 1);
      v74 = v35[13];
      a9 = 0u;
      a10 = 0u;
      v75 = 4;
      do
      {
        v76 = *v73++;
        *(&a9 + (v74++ & 0x1F)) = v76;
        --v75;
      }

      while (v75);
    }

    else
    {
      LOWORD(a9) = *(v35 + 1);
      *(&a9 + 3) = *(v35 + 3);
      BYTE2(a9) = 0;
    }

    v77 = vars0_4;
    if (vars8 <= 0)
    {
      v77 = 0;
    }

    if (v77)
    {
      v78 = (v40 - 1);
      v79 = vars8;
      v80 = &a15;
      do
      {
        *v80++ = *v78;
        v78 += v36;
        --v79;
      }

      while (v79);
    }

    sub_277452034(&__dst, v50, v46 << v49->i32[2], vars8_4 << v49->i32[2], v72, vars8);
    if ((v71 & 4) != 0)
    {
      v81 = 34;
    }

    else
    {
      v81 = 2;
    }

    v82 = v49;
    if ((v71 & 4) != 0)
    {
      v83 = 17;
    }

    else
    {
      v83 = 1;
    }

    v84 = v81 & 0xFFFFFF7F | (((v71 & 8) != 0) << 7);
    v85 = v83 & 0xFFFFFFBF | (((v71 & 8) != 0) << 6);
    v86 = v72 >> 3;
    v87 = &v82[12] + v70;
    v88 = 4;
    do
    {
      if ((v86 & (1 << --v88)) != 0)
      {
        v86 -= 1 << v88;
        if (v86)
        {
          v89 = v84;
        }

        else
        {
          v89 = 0;
        }

        (*v87)(v40, v36, &a9, v89 | v71, &a15, v41, vars8);
        v40 += 8 << v88;
        v71 = v71 & 0xC | v85;
        v41 += 8 << v88;
      }

      v87 -= 5;
    }

    while (v88);
    sub_2774520D0(&__dst);
    v49 = v97;
LABEL_52:
    result = vextq_s8(v49[2], v49[2], 8uLL);
    v90 = vextq_s8(v49[3], v49[3], 8uLL);
    v49[2] = result;
    v49[3] = v90;
  }

  return result;
}

void sub_2774BA50C(int *a1, uint64_t a2, int a3, int *a4)
{
  v7 = *(a2 + 8);
  if (a3)
  {
    if (a1[1])
    {
      if (dword_280B9A880 < 3)
      {
        return;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "SAO enabled partway through processing frame\n";
      v10 = "SAO enabled partway through processing frame\n";
      v11 = 45;
LABEL_9:
      fwrite(v10, v11, 1uLL, v8);
      syslog(27, v9);
      return;
    }

    v12 = *a1;
    v13 = *a4;
    if (*a4 >= *(*(a2 + 16) + 208))
    {
      v15 = a1[5];
    }

    else
    {
      v14 = a1[2];
      v15 = v13 >> v14;
      *a4 = v13 >> v14 << v14;
    }

    *a1 = v15;
    if (v12 >= v15)
    {
LABEL_22:
      if (*(v7 + 534) == 1)
      {
        v21 = a1[3];
        v22 = v21 * v12;
        v23 = v21 * v15;
        if (*(v7 + 524) >= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = *(v7 + 524);
        }

        sub_2774BA6E0(a1, v7, v22, v24);
      }
    }

    else
    {
      v17 = v12;
      while (1)
      {
        v18 = *(a1 + 56);
        v19 = *(a1 + 57);
        v20 = (a1 + (v19 >> 1));
        if (v19)
        {
          v18 = *(*v20 + v18);
        }

        if (v18(v20, a2, v17))
        {
          break;
        }

        v17 = (v17 + 1);
        if (v15 == v17)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    if (*(v7 + 534) != 1)
    {
      return;
    }

    if (*a1)
    {
      if (dword_280B9A880 < 3)
      {
        return;
      }

      v8 = *MEMORY[0x277D85DF8];
      v9 = "SAO disabled partway through processing frame\n";
      v10 = "SAO disabled partway through processing frame\n";
      v11 = 46;
      goto LABEL_9;
    }

    v16 = *a4;
    if (v16 < *(*(a2 + 16) + 208))
    {
      v16 &= 0xFFFFFFF8;
      *a4 = v16;
    }

    sub_2774BA6E0(a1, v7, a1[1], v16);
    a1[1] = *a4;
  }
}

uint64_t sub_2774BA6E0(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a4 != a3)
  {
    v6 = result;
    result = (*(result + 432))(*(a2 + 400) + ((*(a2 + 416) * a3) << *(a2 + 531)));
    if (*(a2 + 532))
    {
      v7 = *(v6 + 440);
      v8 = *(a2 + 408) + ((*(a2 + 424) * (a3 >> (*(a2 + 532) == 1))) << *(a2 + 531));

      return v7(v8);
    }
  }

  return result;
}

double sub_2774BA7BC(uint64_t a1, char a2, int a3, double a4, double a5, double a6)
{
  if (*(a1 + 92))
  {
    if (a6 <= 0.0)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = v7 / a6;
    v10 = 1.0;
    if (v6)
    {
      v9 = 1.0;
    }

    *(a1 + 40) = a6;
    if (a3)
    {
      if (a6 > 0.0)
      {
        v10 = v8 / a6;
      }

      return v10 * a4;
    }

    if (a2)
    {
      v10 = v9;
      return v10 * a4;
    }

    v26 = *(a1 + 52);
    if (v26 > 6 * *(a1 + 116))
    {
      if (a5 <= 0.04)
      {
        v27 = *(a1 + 80);
      }

      else
      {
        v27 = *(a1 + 80);
        if (v27 <= v26)
        {
LABEL_46:
          v18 = v27 <= v26;
          v28 = v27 - v26;
          if (v18)
          {
            v32 = (a5 + -0.04) * a6;
          }

          else
          {
            v29 = v26 / v28;
            v30 = 2.0;
            if (v29 < 2.0)
            {
              v30 = v26 / v28;
            }

            if (v29 <= 0.5)
            {
              v31 = 0.5;
            }

            else
            {
              v31 = v30;
            }

            v32 = (a5 + -0.04) * a6 * v31;
          }

          v33 = 1.0;
          if (v7 > 0.0)
          {
            v33 = (v8 * 0.7 + v7 * 0.3) / v7;
          }

          if (v32 < a6)
          {
            v34 = a6 / (a6 - v32);
            if (v33 < v34)
            {
              if (v33 <= 1.0)
              {
                v33 = v34 - (1.0 - v33);
              }

              else
              {
                v33 = v34;
              }
            }
          }

          goto LABEL_67;
        }
      }

      if (v27 >= 1 && v26 * a5 / (v27 + 0.01) > 0.04)
      {
        goto LABEL_46;
      }
    }

    if (v8 / v7 >= 0.8)
    {
      v33 = 1.0;
      if (v7 <= 0.0 || v8 / v7 <= 1.3)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v33 = 1.0;
      if (v7 <= 0.0)
      {
        goto LABEL_67;
      }
    }

    v33 = (v8 * 0.7 + v7 * 0.3) / v7;
LABEL_67:
    v35 = 2.0;
    if (v33 < 2.0)
    {
      v35 = v33;
    }

    if (v33 <= 0.5)
    {
      v36 = 0.5;
    }

    else
    {
      v36 = v35;
    }

    v10 = v9 * v36;
    return v10 * a4;
  }

  v11 = *(a1 + 16);
  if (a5 > 0.01 && *(a1 + 24) > v11 * 1.5)
  {
    ++*(a1 + 68);
  }

  v12 = *(a1 + 104);
  v10 = v11 / a6;
  if (v12 < a5 && (a2 & 1) == 0 && *(a1 + 60) >= 5)
  {
    v13 = *(a1 + 80);
    v14 = *(a1 + 52);
    if (v13 <= v14 || v12 < v14 / v13 * a5)
    {
      v15 = a6;
      if (*(a1 + 96))
      {
        v15 = *(a1 + 40);
      }

      v16 = 12.5;
      v17 = 12.5;
      v18 = v13 <= v14;
      v19 = v13 - v14;
      if (!v18)
      {
        v17 = v14 / v19;
      }

      if (v17 <= 12.5)
      {
        v16 = v17;
      }

      if (*(a1 + 88))
      {
        v16 = v17;
      }

      v20 = (a5 - v12) * v15 * v16;
      v21 = a6 + -1.0;
      if (a6 + -1.0 >= v20)
      {
        v21 = v20;
      }

      v22 = *(a1 + 24);
      v23 = 1.0;
      if (v22 > v11)
      {
        v23 = (v11 + v22) * 0.5 / v11;
        v24 = v22 / v11;
        if (*(a1 + 72) > 0.03)
        {
          v23 = v24;
        }
      }

      v25 = a6 / (a6 - v21);
      if (v23 < v25)
      {
        v23 = v25;
        if (v25 > 2.0)
        {
          v23 = 2.0;
        }
      }

      if (v23 > 1.0)
      {
        v10 = v10 * v23;
      }
    }
  }

  return v10 * a4;
}

uint64_t sub_2774BAAEC(uint64_t result, unint64_t a2, double a3, double a4)
{
  v4 = *(result + 52);
  *(result + 52) = v4 + 1;
  v5 = *(result + 60);
  *(result + 60) = v5 + 1;
  if (a4 >= 10.0)
  {
    v6 = a2 * a3 / a4;
    v7 = v6 + *result;
    *result = v7;
    v8 = *(result + 56);
    if (v4 >= v8)
    {
      *(result + 16) = v7 / (v4 + 1 - v8);
    }

    if (*(result + 92) == 1)
    {
      v9 = *(result + 32);
      v10 = *(result + 116);
      v11 = result + 120 + 32 * (v9 % v10);
      *(v11 + 16) = a3;
      *(v11 + 8) = a2;
      *v11 = a4;
      *(v11 + 24) = a2 - *(result + 40);
      if (v10 <= 0)
      {
        *(result + 48) = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        if (v9 >= -1)
        {
          v14 = -1;
        }

        else
        {
          v14 = v9;
        }

        v15 = (v9 - v14);
        v16 = 0.0;
        v17 = &qword_277533500;
        v18 = v10;
        v19 = v9;
        v20 = 0.0;
        do
        {
          if (!v15)
          {
            break;
          }

          v21 = result + 120 + 32 * (v19 % v10);
          if (*v21 >= 10.0)
          {
            v20 = v20 + *v17 * (*(v21 + 16) * *(v21 + 8) / *v21);
            v16 = v16 + *v17;
            v12 += *(v21 + 24);
            ++v13;
          }

          --v19;
          ++v17;
          --v15;
          --v18;
        }

        while (v18);
        *(result + 48) = v12 / v13;
        if (v16 > 0.0)
        {
          *(result + 24) = v20 / v16;
        }
      }

      *(result + 32) = v9 + 1;
    }

    else if ((v5 & 0x80000000) == 0)
    {
      v22 = v6 + *(result + 8);
      *(result + 8) = v22;
      *(result + 24) = v22 / (v5 + 1 - *(result + 64));
    }
  }

  else
  {
    ++*(result + 56);
    ++*(result + 64);
  }

  return result;
}

uint64_t sub_2774BAC94(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 328) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0xBFF0000000000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  memset_pattern16((a1 + 408), &unk_27750D870, 0x18uLL);
  *(a1 + 1760) = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1780) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 1784) = 0xFFFFFFFFLL;
  *(a1 + 1792) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1808) = 0;
  return a1;
}

uint64_t sub_2774BAD24(uint64_t a1, uint64_t a2)
{
  *(a1 + 1688) = a2;
  *(a1 + 1624) = 0;
  *(a1 + 1608) = 0;
  v4 = *(a2 + 472);
  *(a1 + 1616) = v4;
  *(a1 + 1628) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 1644) = 0;
  *(a1 + 1652) = 0;
  v5 = *(a2 + 456);
  *(a1 + 1696) = v5;
  v6 = *(a2 + 552);
  *(a1 + 1697) = v6;
  v7 = *(a2 + 488);
  *(a1 + 1698) = v7;
  *(a1 + 1700) = v7;
  *(a1 + 1702) = *(a2 + 489);
  *(a1 + 1704) = v4;
  v8 = *(a2 + 548);
  *(a1 + 1712) = v8;
  *(a1 + 1716) = 1;
  v9 = *(a2 + 512);
  if (v9 == 0x7FFFFFFF)
  {
    v10 = 300;
  }

  else
  {
    v10 = *(a2 + 512);
  }

  *(a1 + 1720) = v10;
  v11 = v9 != 0x7FFFFFFF;
  *(a1 + 1724) = v11;
  *(a1 + 1725) = 0;
  if (dword_280B9A880 < 7)
  {
    v13 = v5;
    v14 = 1;
    v12 = a2;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "\n========================\n\nSinglepassRatecontroller()\n\nrc_option_ (bps, fps, frames) = (%d, %f, %d)\n\n========================\n\n", v8, v4, v10);
    syslog(31, "\n========================\n\nSinglepassRatecontroller()\n\nrc_option_ (bps, fps, frames) = (%d, %f, %d)\n\n========================\n\n", *(a1 + 1712), *(a1 + 1704), *(a1 + 1720));
    v12 = *(a1 + 1688);
    v13 = *(a1 + 1696);
    v6 = *(a1 + 1697);
    v7 = *(a1 + 1698);
    v4 = *(a1 + 1704);
    v8 = *(a1 + 1712);
    v10 = *(a1 + 1720);
    v11 = *(a1 + 1724);
    v5 = *(v12 + 456);
    v14 = *(a1 + 1716) != 0;
  }

  *(a1 + 1672) = *(a2 + 688);
  *(a1 + 1680) = 0;
  *(a1 + 1727) = 0;
  *(a1 + 1728) = vdup_n_s32(0x47C35000u);
  *(a1 + 1736) = 0x80000000800000;
  *(a1 + 1744) = 2;
  v15 = *(v12 + 34);
  *(a1 + 1748) = v15 != 255;
  v16 = *(a2 + 447);
  *(a1 + 1749) = v16;
  *(a1 + 1752) = 1;
  *(a1 + 312) = v5;
  v17 = v8;
  *(a1 + 512) = v8;
  *(a1 + 520) = 0x402E000000000000;
  *(a1 + 528) = 0;
  v18 = 15.0;
  *(a1 + 536) = v8 / 15.0;
  *(a1 + 544) = 0x3F847AE147AE147BLL;
  *(a1 + 552) = 0u;
  v19 = v7;
  *a1 = v6;
  *(a1 + 576) = v19;
  *(a1 + 584) = v19;
  *(a1 + 592) = v19;
  *(a1 + 616) = 120;
  *(a1 + 1768) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 652) = 2;
  *(a1 + 655) = 0;
  *(a1 + 656) = 0;
  *(a1 + 624) = 0;
  *(a1 + 568) = 0;
  v20 = v13 == 1;
  *(a1 + 712) = v20;
  v21 = *(v12 + 466);
  *(a1 + 500) = v21;
  v22 = *(v12 + 468);
  *(a1 + 502) = v22;
  *(a1 + 504) = v21 < v22;
  if (v21 >= v22)
  {
    v23 = v22;
    v22 = v21;
  }

  else
  {
    *(a1 + 500) = v22;
    *(a1 + 502) = v21;
    v23 = v21;
  }

  *(a1 + 676) = 0;
  *(a1 + 680) = 0x20000000;
  *(a1 + 708) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  if (v4 > 0.0 && v4 < 241.0)
  {
    *(a1 + 520) = v4;
    v18 = v4;
  }

  if (v8)
  {
    *(a1 + 512) = v17;
  }

  *(a1 + 651) = v14;
  *(a1 + 528) = v10;
  *(a1 + 532) = v11;
  *(a1 + 654) = v13 != 1;
  v24 = v4;
  *(a1 + 616) = (v24 * 100000.0);
  v25 = *(a1 + 1696);
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v26 = v17 / v18;
  *(a1 + 760) = v26;
  *(a1 + 800) = v10;
  *(a1 + 808) = v11;
  *(a1 + 752) = 0;
  *(a1 + 832) = 0xA00000000;
  *(a1 + 768) = xmmword_27750D660;
  *(a1 + 784) = 0u;
  *(a1 + 812) = v20;
  v27 = qword_27750D670[v25 == 0];
  *(a1 + 816) = v25;
  *(a1 + 824) = v27;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1200) = v26;
  *(a1 + 1240) = v10;
  *(a1 + 1248) = v11;
  *(a1 + 1192) = 0;
  *(a1 + 1272) = 0xA00000000;
  *(a1 + 1208) = xmmword_27750D660;
  *(a1 + 1224) = 0u;
  *(a1 + 1252) = v20;
  *(a1 + 1256) = v25;
  *(a1 + 1264) = v27;
  *(a1 + 1600) = 0;
  if (v16)
  {
    if (v15 == 255)
    {
      *(a1 + 1660) = 6;
      *(a1 + 240) = xmmword_277533D48;
      *(a1 + 256) = unk_277533D58;
      *(a1 + 272) = xmmword_277533D68;
      *(a1 + 288) = unk_277533D78;
      *(a1 + 176) = xmmword_277533D08;
      *(a1 + 192) = unk_277533D18;
      *(a1 + 208) = xmmword_277533D28;
      *(a1 + 224) = unk_277533D38;
      *(a1 + 112) = xmmword_277533CC8;
      *(a1 + 128) = unk_277533CD8;
      *(a1 + 144) = xmmword_277533CE8;
      *(a1 + 160) = unk_277533CF8;
      *(a1 + 48) = xmmword_277533C88;
      *(a1 + 64) = unk_277533C98;
      *(a1 + 80) = xmmword_277533CA8;
      *(a1 + 96) = unk_277533CB8;
    }

    else
    {
      if (fabsf((v22 / v23) + -1.33) < fabsf((v22 / v23) + -1.77))
      {
        v28 = 2;
      }

      else
      {
        v28 = 3;
      }

      *(a1 + 1660) = v28;
      v29 = sub_2774BB928(a1);
      if (v29)
      {
        return v29;
      }
    }
  }

  v30 = *(a1 + 1672);
  if (v30 != -1)
  {
    goto LABEL_47;
  }

  if (*(a1 + 1748) != 1)
  {
    goto LABEL_46;
  }

  v30 = 0;
  v31 = *(a1 + 500);
  if (v31 <= 0x27F)
  {
    if (v31 == 320)
    {
      v30 = 0;
      for (i = (a1 + 52); *i > 0xC0u || *(i - 1) > 4.0; i += 2)
      {
        ++v30;
      }

      v40 = *(a1 + 512);
      if (v40 <= 30000.0)
      {
        goto LABEL_47;
      }

      if (v40 <= 100000.0)
      {
        v65 = (v30 + (v40 + -30000.0) / -70000.0 * v30);
        if (v65 < v30)
        {
          v30 = (v30 + (v40 + -30000.0) / -70000.0 * v30);
        }

        if (v65 <= 0)
        {
          v30 = 0;
        }

        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (v31 == 480)
    {
      v36 = *(a1 + 512);
      v33 = 300000.0;
      if (v36 <= 300000.0)
      {
        v34 = 300000.0 - v36;
        v35 = 14.0;
        goto LABEL_39;
      }

LABEL_46:
      v30 = 0;
    }
  }

  else
  {
    switch(v31)
    {
      case 0x280u:
        v37 = *(a1 + 512);
        v33 = 420000.0;
        if (v37 <= 420000.0)
        {
          v34 = 420000.0 - v37;
          v35 = 15.0;
          goto LABEL_39;
        }

        goto LABEL_46;
      case 0x400u:
        v38 = *(a1 + 512);
        v33 = 660000.0;
        if (v38 <= 660000.0)
        {
          v34 = 660000.0 - v38;
          v35 = 21.0;
          goto LABEL_39;
        }

        goto LABEL_46;
      case 0x500u:
        v32 = *(a1 + 512);
        v33 = 650000.0;
        if (v32 <= 650000.0)
        {
          v34 = 650000.0 - v32;
          v35 = 22.0;
LABEL_39:
          v30 = (v34 * v35 / v33 + 1.0);
          break;
        }

        goto LABEL_46;
    }
  }

LABEL_47:
  if (v30 >= 31)
  {
    v30 = 31;
  }

  *(a1 + 44) = v30;
  v41 = *(v12 + 608);
  *(a1 + 496) = v41;
  v42 = (4 * v41) & 0x3FFFFFFF0;
  *(a1 + 600) = &unk_277533568 + v42;
  *(a1 + 608) = &unk_277533598 + v42;
  *(a1 + 328) = v41;
  if (*(a2 + 456))
  {
    goto LABEL_50;
  }

  if (!v41)
  {
    if (dword_280B9A880 >= 3)
    {
      v43 = *MEMORY[0x277D85DF8];
      v44 = "SinglepassRatecontroller RefStruct: gop size must be >= 1\n";
      v45 = "SinglepassRatecontroller RefStruct: gop size must be >= 1\n";
      v46 = 58;
      goto LABEL_101;
    }

    return 4294954394;
  }

  if (*(a1 + 712))
  {
    if (dword_280B9A880 >= 3)
    {
      v43 = *MEMORY[0x277D85DF8];
      v44 = "SinglepassRatecontroller RefStruct: only supports RC_MODE_FILESIZE_CONTROL\n";
      v45 = "SinglepassRatecontroller RefStruct: only supports RC_MODE_FILESIZE_CONTROL\n";
      v46 = 75;
      goto LABEL_101;
    }

    return 4294954394;
  }

  if (*(a2 + 604) >= 2)
  {
    if (dword_280B9A880 > 2)
    {
      v43 = *MEMORY[0x277D85DF8];
      v44 = "SinglepassRatecontroller RefStruct: only supports up to 1 gop\n";
      v45 = "SinglepassRatecontroller RefStruct: only supports up to 1 gop\n";
      v46 = 62;
      goto LABEL_101;
    }

    return 4294954394;
  }

  v60 = *(a2 + 600);
  if (v60 < 1)
  {
LABEL_50:
    if (*(a1 + 1696) == 1)
    {
      operator new();
    }

    v47 = *(a1 + 1760);
    *(a1 + 1760) = 0;
    if (v47)
    {
      MEMORY[0x277CAD370](v47, 0x1000C409380FD32);
    }

    if (*(a1 + 1748))
    {
      v48 = 32;
    }

    else
    {
      v48 = 34;
    }

    if (*(a1 + 1748))
    {
      v49 = 34;
    }

    else
    {
      v49 = 36;
    }

    *(a1 + 1664) = v48;
    *(a1 + 1668) = v49;
    v50 = *(a2 + 544);
    *(a1 + 1776) = (v50 & 2) != 0;
    if ((v50 & 2) == 0)
    {
      return 0;
    }

    if (*(a1 + 496))
    {
      *(a1 + 1784) = 0xFFFFFFFFLL;
      *(a1 + 1792) = 0;
      *(a1 + 1780) = 2;
      v51 = *(a1 + 1808);
      v52 = *(a1 + 1800);
      v53 = (v51 - v52) >> 3;
      if (v53 > 1)
      {
        if (v51 - v52 == 16)
        {
          goto LABEL_87;
        }

        v59 = v52 + 16;
      }

      else
      {
        v54 = 2 - v53;
        v55 = *(a1 + 1816);
        if (v54 > (v55 - v51) >> 3)
        {
          v56 = v55 - v52;
          v57 = v56 >> 2;
          if ((v56 >> 2) <= 2)
          {
            v57 = 2;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF8)
          {
            v58 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v57;
          }

          if (!(v58 >> 61))
          {
            operator new();
          }

          sub_2773C5248();
        }

        bzero(*(a1 + 1808), 8 * v54);
        v59 = v51 + 8 * v54;
      }

      *(a1 + 1808) = v59;
LABEL_87:
      if (*(a1 + 1780) >= 1)
      {
        operator new();
      }

      return 0;
    }

    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "mpt_rc: Invalid gop_size: %d\n", 0);
      syslog(27, "mpt_rc: Invalid gop_size: %d\n", *(a1 + 496));
      v29 = 4294954394;
      if (dword_280B9A880 >= 3)
      {
        v44 = "Failed to initialize mpt rate controller.\n";
        fwrite("Failed to initialize mpt rate controller.\n", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
        goto LABEL_102;
      }

      return v29;
    }

    return 4294954394;
  }

  v61 = 0;
  v62 = (a2 + 957);
  v63 = 108 * v60;
  while (v61)
  {
    if (v62[v61] != 82)
    {
      goto LABEL_99;
    }

LABEL_97:
    v61 += 108;
    if (v63 == v61)
    {
      goto LABEL_50;
    }
  }

  if (*v62 == 76)
  {
    goto LABEL_97;
  }

LABEL_99:
  if (dword_280B9A880 < 3)
  {
    return 4294954394;
  }

  v43 = *MEMORY[0x277D85DF8];
  v44 = "SinglepassRatecontroller RefStruct: only supports frame type 'L':1 and 'R':0+\n";
  v45 = "SinglepassRatecontroller RefStruct: only supports frame type 'L':1 and 'R':0+\n";
  v46 = 78;
LABEL_101:
  fwrite(v45, v46, 1uLL, v43);
  v29 = 4294954394;
LABEL_102:
  syslog(27, v44);
  return v29;
}

uint64_t sub_2774BB928(uint64_t a1)
{
  v2 = 0;
  for (i = (&unk_277533688 + 256 * *(a1 + 1660)); *(i + 2) > *(a1 + 500); i += 2)
  {
    if (v2 > 0x1F)
    {
      goto LABEL_9;
    }

LABEL_7:
    ++v2;
  }

  if (v2 <= 0x1F && *(a1 + 1704) < *i)
  {
    goto LABEL_7;
  }

  if (v2 >= 0x20)
  {
LABEL_9:
    if (dword_280B9A880 >= 3)
    {
      fwrite("Resolution and Frame rate is not supported in Quality table", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Resolution and Frame rate is not supported in Quality table");
    }

    return 4294954386;
  }

  memcpy((a1 + 48), i, 256 - 8 * v2);
  if (v2)
  {
    v5 = &unk_277533688 + 256 * *(a1 + 1660);
    v6 = *(v5 + 126);
    v7 = *(v5 + 127);
    v8 = (32 - v2) - 1;
    v9 = (a1 + 8 * (32 - v2) + 54);
    do
    {
      *(v9 - 3) = 1036831949;
      *(v9 - 1) = v6;
      *v9 = v7;
      v9 += 4;
      ++v8;
    }

    while (v8 < 0x1F);
  }

  return 0;
}

double sub_2774BBA58(uint64_t a1, uint64_t a2)
{
  *(a1 + 676) = *(a2 + 12);
  v3 = *(a2 + 20);
  v2 = *(a2 + 24);
  *(a1 + 688) = v2;
  *(a1 + 708) = v3 > 0;
  result = *(a1 + 512) / *(a1 + 520);
  *(a1 + 536) = result;
  if (*(a1 + 712) == 1)
  {
    v5 = *(a1 + 684);
    if (v5 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v3 / v5;
    }

    *(a1 + 696) = v6;
    v7 = v6 + 1.0;
    if (v2 >= (result * 0.5 / (v7 + 0.5)))
    {
      v2 = (result * 0.5 / (v7 + 0.5));
    }

    *(a1 + 704) = v2;
    result = (result - v2) / v7;
    *(a1 + 536) = result;
  }

  return result;
}

void sub_2774BBAF4(uint64_t a1)
{
  if (*(a1 + 32) >= 0x2AAuLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 341;
  }
}

void *sub_2774BBB48(void *result, uint64_t *a2)
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
    v6 = 341 * ((v4 - v5) >> 3) - 1;
  }

  v7 = result[4];
  v8 = result[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x155)
    {
      v9 = result[3];
      v10 = v9 - *result;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_27743C088(v12);
    }

    result[4] = v7 - 341;
    v15 = *v5;
    result[1] = v5 + 8;
    result = sub_27743BF84(result, &v15);
    v5 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v13 = *&v5[8 * (v8 / 0x155)] - 4092 * (v8 / 0x155) + 12 * v8;
  v14 = *a2;
  *(v13 + 8) = *(a2 + 2);
  *v13 = v14;
  ++v3[5];
  return result;
}

void sub_2774BC044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2774BC074(uint64_t result, int a2)
{
  v2 = result;
  v3 = 0;
  LODWORD(result) = 0;
  v4 = *(v2 + 1616);
  v5 = *(v2 + 8 * a2 + 48);
  v6 = &word_2775335CA;
  v7 = 1.0e20;
  do
  {
    v8 = vabdd_f64(v4 * (*(v6 - 1) / *v6), v5);
    if (v8 >= v7)
    {
      result = result;
    }

    else
    {
      result = v3;
    }

    if (v8 < v7)
    {
      v7 = v8;
    }

    ++v3;
    v6 += 2;
  }

  while (v3 != 23);
  return result;
}

void sub_2774BC0DC(double *a1, double a2)
{
  v4 = sub_2774BC458(a1, 1, 1, a1[67], 3.0, 4.0);
  a1[40] = v4;
  v5 = a2 * 100000.0 / v4;
  a1[79] = v5;
  v6 = log(v5 / 0.850000024) * 6.0 / 0.693147181 + 12.0;
  v7 = 30.0;
  if (v6 < 30.0)
  {
    v7 = v6;
  }

  if (v6 <= 12.0)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = v7;
  }

  a1[72] = v8;
}

uint64_t sub_2774BC17C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (dword_280B9A880 >= 3)
    {
      v15 = *MEMORY[0x277D85DF8];
      v16 = "{CollectRefInfo} NULL pointer error\n";
      v17 = "{CollectRefInfo} NULL pointer error\n";
      v18 = 36;
      goto LABEL_16;
    }

    return 4294954394;
  }

  *(a1 + 673) = 0;
  v4 = *(a1 + 480);
  v5 = v4;
  if (*(a2 + 648) != 5)
  {
    v5 = *(a1 + 488) + v4 - 1;
  }

  v6 = *(a1 + 456);
  v7 = *(v6 + 8 * (v5 / 0x155)) - 4092 * (v5 / 0x155) + 12 * v5;
  *(a1 + 660) = *v7;
  v8 = *(a2 + 652) - *(v7 + 4);
  if (v8 < 0)
  {
    v8 = *(v7 + 4) - *(a2 + 652);
  }

  *(a1 + 668) = v8;
  *(a1 + 670) = *(v7 + 8);
  *(a1 + 672) = 1;
  if (*(a2 + 648) == 5)
  {
    v9 = *(v7 + 4);
    v10 = *(v6 + 8 * ((*(a1 + 488) + v4 - 1) / 0x155)) - 4092 * ((*(a1 + 488) + v4 - 1) / 0x155) + 12 * (*(a1 + 488) + v4 - 1);
    v11 = *v10;
    v12 = *(a2 + 652) - *(v10 + 4);
    if (v12 < 0)
    {
      v12 = *(v10 + 4) - *(a2 + 652);
    }

    *(a1 + 669) = v12;
    *(a1 + 671) = *(v10 + 8);
    *(a1 + 673) = 1;
    v13 = *(v10 + 4);
    *(a1 + 664) = v11;
    if (dword_280B9A880 >= 7)
    {
      v14 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "=== [%2d, %2d] ===\n", v9, v13);
      syslog(31, "=== [%2d, %2d] ===\n", v9, v13);
      if ((*(a1 + 672) & 1) == 0)
      {
        if ((*(a1 + 673) & 1) == 0)
        {
          if (dword_280B9A880 >= 3)
          {
            v15 = *v14;
            v16 = "{CollectRefInfo} No Reference Stats Found\n";
            v17 = "{CollectRefInfo} No Reference Stats Found\n";
            v18 = 42;
LABEL_16:
            fwrite(v17, v18, 1uLL, v15);
            syslog(27, v16);
            return 4294954394;
          }

          return 4294954394;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
    *(a1 + 669) = 0;
    *(a1 + 671) = -1;
    *(a1 + 664) = 0;
  }

  if (*(a1 + 673) != 1)
  {
LABEL_27:
    v21 = *(a1 + 660);
    goto LABEL_28;
  }

  v20 = *(a1 + 671);
  if (*(a1 + 670) > 2u)
  {
    if (v20 <= 2 || *(a1 + 669) >= 1)
    {
LABEL_25:
      v21 = *(a1 + 664);
      goto LABEL_28;
    }

    if (*(a1 + 668) < 1)
    {
      v22 = 0.0;
      if (dword_280B9A880 >= 6)
      {
        fwrite("{BframeRc} Wrong ref frame info!!!!!\n", 0x25uLL, 1uLL, *MEMORY[0x277D85E08]);
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v21 = *(a1 + 660);
  if (v20 > 2)
  {
LABEL_28:
    v22 = v21;
    goto LABEL_29;
  }

  v22 = (v21 + *(a1 + 664)) * 0.5 + 2.91256094;
LABEL_29:
  result = 0;
  *(a1 + 576) = v22 + *(*(a1 + 600) + 4 * *(a2 + 656));
  return result;
}

double sub_2774BC458(uint64_t a1, int a2, int a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 1688);
  v7 = *(v6 + 876);
  v8 = *(v6 + 880);
  if (v7 || v8 != 0.0)
  {
    if (v7 <= 0)
    {
      v7 = 0x7FFFFFFF;
    }

    if (v8 <= 0.0)
    {
      v9 = 0x7FFFFFFF;
    }

    else
    {
      v9 = (*(a1 + 520) * v8 + 0.5);
    }

    if (v9 < v7)
    {
      v7 = v9;
    }

    if (v7)
    {
      goto LABEL_12;
    }
  }

  v7 = *(v6 + 874);
  if (*(v6 + 874))
  {
LABEL_12:
    v10 = 1;
    v11 = (v7 + *(a1 + 496) - 2) / *(a1 + 496);
  }

  else
  {
    v10 = 0;
    v7 = *(a1 + 496);
    v11 = 1;
  }

  v12 = v11 * a6 + (v7 - (v11 + v10));
  v13 = v7;
  if (v10 && !a3 && a2 && !*(a1 + 712))
  {
    *(a1 + 1768) = v13 / ((4 * v10) * a6 + v12) * a4 * a6 * 4.0;
  }

  v14 = v13 / (v10 * a5 * a6 + v12) * a4;
  v15 = v14 * a5;
  if (a2)
  {
    v14 = v15;
  }

  return v14 * a6;
}

uint64_t sub_2774BC558(uint64_t result, uint64_t a2)
{
  if ((*(result + 1776) & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 1688);
    v5 = *(a2 + 648);
    if (v5 <= 4)
    {
      *(result + 400) = 0;
      *(result + 368) = 0u;
      *(result + 384) = 0u;
      *(result + 336) = 0u;
      *(result + 352) = 0u;
      LODWORD(v16) = *(a2 + 6516);
      DWORD1(v16) = *(a2 + 652);
      BYTE8(v16) = *(a2 + 648);
      if (*(result + 488) == 2)
      {
        ++*(result + 480);
        *(result + 488) = 1;
        sub_2774BBAF4(result + 448);
      }

      result = sub_2774BBB48((v3 + 448), &v16);
      LOBYTE(v5) = *(a2 + 648);
    }

    *(v3 + 8 * v5 + 336) += *(a2 + 128);
    ++*(v3 + 4 * v5 + 384);
    if (*v3 == 1)
    {
      if (*(v3 + 1696) == 1 && *(a2 + 6497) >= 2u)
      {
        v16 = *(a2 + 6720);
        v17 = *(a2 + 6736);
        v6 = &v16;
        v7 = v3;
        v8 = a2;
      }

      else
      {
        v7 = v3;
        v8 = a2;
        v6 = 0;
      }

      result = sub_2774BC814(v7, v8, v6);
    }

    if (*(v3 + 1696) == 1)
    {
      v9 = *(v3 + 1760);
      if (v9)
      {
        if (*a2)
        {
          v9[8] += (*(v3 + 512) / *(v3 + 520));
        }

        else
        {
          if (v9[12] == 2)
          {
            v9[3] += *(a2 + 6544) + *(a2 + 6704) + *(a2 + 6540);
          }

          v9[8] = 0;
        }
      }
    }

    if (*(v4 + 447) == 1)
    {
      if (*a2 == 1)
      {
        *(v3 + 1628) = *(v3 + 1629);
        v10 = *(v3 + 1760);
        v11 = *(v3 + 512) * *(v10 + 20) / 1000.0;
        if ((*(v10 + 12) / v11) > 2.0 || *(v3 + 1653) == 1)
        {
          ++*(v3 + 1640);
        }

        if (*(v3 + 1656))
        {
          v12 = *(&unk_2775335C8 + 2 * *(v3 + 1608) + 1);
        }

        else
        {
          v12 = *(v3 + 1648);
          if (v12 <= 1)
          {
            v12 = 1;
          }
        }

        v14 = v12 - 1;
        goto LABEL_31;
      }

      *(v3 + *(*(a2 + 632) + 1024) % 5 + 1601) = *(a2 + 6516);
      ++*(v3 + 1644);
      *(v3 + 1640) = 0;
      v13 = *(v3 + 1656);
      if (v13 >= 1)
      {
        *(v3 + 1648) = 0;
        return result;
      }

      if (v13 < 0)
      {
        v15 = (&unk_2775335C8 + 4 * *(v3 + 1608));
        v14 = v15[1] - *v15;
LABEL_31:
        *(v3 + 1648) = v14;
      }
    }
  }

  return result;
}

uint64_t sub_2774BC814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 6704);
  v7 = *(a2 + 6712);
  v8 = *(a2 + 648);
  v9 = *(a2 + 652);
  v10 = *(a2 + 6336);
  v11 = *(a2 + 6516);
  v12 = exp2((v11 + -12.0) / 6.0);
  v13 = *(*(a1 + 608) + 4 * *(a2 + 656));
  v14 = *(a1 + 656);
  if (v14 >= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + 656);
  }

  *(a1 + 624) = (*(a1 + 624) * v15 + v11) / (v15 + 1);
  *(a1 + 640) += v6 - *(a1 + 536);
  *(a1 + 656) = v14 + 1;
  if ((*a2 & 1) == 0)
  {
    if (*(a1 + 708))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a1 + 684);
    }

    *(a1 + 684) = v16 + v6;
  }

  v17 = *(a1 + 654);
  if (v17 == 1)
  {
    __asm { FMOV            V3.2D, #1.0 }

    _Q3.f64[1] = (v6 - v7);
    v23 = vaddq_f64(vmulq_f64(*(a1 + 544), vdupq_n_s64(0x3FEE666666666666uLL)), _Q3);
    *(a1 + 544) = v23;
    *(a1 + 560) = *&vdivq_f64(vdupq_laneq_s64(v23, 1), v23);
    v6 = v7;
  }

  v24 = v12 * 0.850000024;
  if (v8 > 4)
  {
    v24 = v24 / v13;
    if (a3)
    {
LABEL_22:
      v28 = *(a1 + 652);
      v29 = exp2((*(a3 + 16) + -12.0) / 6.0) * 0.850000024;
      if (v28 >= 5)
      {
        v29 = v29 / v13;
      }

      v30 = 8;
      if (!v17)
      {
        v30 = 0;
      }

      v31 = (v24 + v29) * 0.5;
      v32 = (*(a3 + v30) + v6) >> 1;
      v33 = a1 + 720;
      v34 = v10;
      goto LABEL_31;
    }
  }

  else
  {
    v25 = *(a1 + 652);
    _CF = v25 >= 3;
    v26 = v25 - 3;
    if (_CF)
    {
      if (v26 > 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a1 + 653);
      }
    }

    else
    {
      v27 = 1;
    }

    *(a1 + 649) = v27 & 1;
    if (*(a1 + 712) != 1 && *(a1 + 312) | v9)
    {
      *(a1 + 584) = *(a1 + 576);
      if (a3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *(a1 + 584) = v11;
      if (a3)
      {
        goto LABEL_22;
      }
    }
  }

  v35 = *(a1 + 1600);
  result = sub_2774BAAEC(a1 + 720, v6, v24, v10);
  if (v35 != 1 || v9 > 1)
  {
    return result;
  }

  v33 = a1 + 1160;
  v31 = v24;
  v34 = v10;
  v32 = v6;
LABEL_31:

  return sub_2774BAAEC(v33, v32, v31, v34);
}

uint64_t sub_2774BCAB4(uint64_t a1, int a2)
{
  v4 = a1 + 8 * *(a1 + 44);
  v5 = (v4 + 54);
  v6 = (v4 + 52);
  if (*(a1 + 504))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  if (*(a1 + 504))
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = *v9;
  v11 = *(a1 + 520);
  *(a1 + 1660) = a2;
  if (sub_2774BB928(a1) && dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Can't switch table from index %d to index %d\n", *(a1 + 1660), a2);
    syslog(27, "Can't switch table from index %d to index %d\n", *(a1 + 1660), a2);
  }

  v12 = (a1 + 54);
  v13 = -1;
  while (v13 != 31)
  {
    v14 = (*(v12 - 3) * (*v12 * *(v12 - 1)));
    ++v13;
    v12 += 4;
    if (v11 * (v10 * v8) >= v14)
    {
      goto LABEL_15;
    }
  }

  LODWORD(v13) = 32;
LABEL_15:
  *(a1 + 44) = v13;
  *(a1 + 1624) = v13;
  result = sub_2774BC074(a1, v13);
  *(a1 + 1608) = result;
  return result;
}

uint64_t sub_2774BCBDC(uint64_t a1, char *__s1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!__s1)
  {
    result = 0;
    *(a1 + 32) = 0;
    return result;
  }

  *(a1 + 32) = 1;
  v4 = strnlen(__s1, 0x63uLL) + 1;
  *(a1 + 24) = v4;
  if (v4 >= 0x64)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Negotiation detail string too long (%lu > %u)\n!", v4, 100);
LABEL_9:
      syslog(27, "Negotiation detail string too long (%lu > %u)\n!", *(a1 + 24), 100);
      return 4294954386;
    }

    return 4294954386;
  }

  MEMORY[0x277CAD120](a1, __s1);
  v6 = *(a1 + 24);
  if (v6 >= 0x65)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Negotiation detail string too long (%lu > %u)\n!", *(a1 + 24), 100);
      goto LABEL_9;
    }

    return 4294954386;
  }

  __lasts = 0;
  v7 = a1;
  if (*(a1 + 23) < 0)
  {
    v7 = *a1;
  }

  v8 = strncpy(__dst, v7, v6);
  v9 = strtok_r(v8, ";", &__lasts);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = __str;
    while (1)
    {
      v13 = strlen(v10);
      if (v13 > 0x13)
      {
        return 4294954387;
      }

      v14 = v11 + 1;
      memcpy(v12, v10, v13 + 1);
      v15 = strtok_r(0, ";", &__lasts);
      if (v15)
      {
        v10 = v15;
        v12 += 20;
        if (v11++ < 0x63)
        {
          continue;
        }
      }

      v17 = __str;
      while (1)
      {
        v18 = strtok_r(v17, ":", &__lasts);
        if (v18)
        {
          v19 = v18;
          if (*v18 == 76 && v18[1] == 70 && !v18[2])
          {
            *(a1 + 40) = 1;
          }

          else
          {
            v20 = strtok_r(0, ":", &__lasts);
            if (v20)
            {
              v21 = atoi(v20);
              if (v21 <= 0x63)
              {
                v22 = v21;
                if (!strcmp(v19, "RVRA1"))
                {
                  *(a1 + 34) = v22;
                }

                else
                {
                  v23 = *v19;
                  if (v23 == 67)
                  {
                    v24 = v19[1];
                    if (v24 == 70)
                    {
                      if (v19[2])
                      {
                        goto LABEL_42;
                      }

                      *(a1 + 39) = v22;
                    }

                    else if (v24 == 72)
                    {
                      if (v19[2])
                      {
                        goto LABEL_42;
                      }

                      *(a1 + 36) = v22;
                    }

                    else
                    {
                      if (v24 != 82 || v19[2])
                      {
LABEL_42:
                        if (dword_280B9A880 >= 3)
                        {
                          fprintf(*MEMORY[0x277D85DF8], "Unknown negotiation string option: %s\n", v19);
                          syslog(27, "Unknown negotiation string option: %s\n", v19);
                        }

                        goto LABEL_44;
                      }

                      *(a1 + 38) = v22;
                    }
                  }

                  else
                  {
                    if (v23 != 81 || v19[1] != 83 || v19[2])
                    {
                      goto LABEL_42;
                    }

                    *(a1 + 35) = v22;
                  }
                }
              }
            }
          }
        }

LABEL_44:
        v17 += 20;
        if (!--v14)
        {
          goto LABEL_47;
        }
      }
    }
  }

  else
  {
LABEL_47:
    v25 = *(a1 + 34) != 255 || *(a1 + 35) != 255 || *(a1 + 36) != -1 || *(a1 + 38) != 255 || *(a1 + 39) != 255;
    result = 0;
    *(a1 + 33) = v25;
  }

  return result;
}

char *sub_2774BCF5C(char *result)
{
  v1 = *result;
  if (v1 != -1)
  {
    *&result[4 * v1 + 56] = 2;
  }

  v2 = result[3];
  if (v2 != -1)
  {
    *&result[4 * v2 + 56] = 4;
  }

  v3 = result[2];
  if (v3 != -1)
  {
    *&result[4 * v3 + 56] = 2;
  }

  v4 = result[1];
  if (v4 != -1)
  {
    *&result[4 * v4 + 56] = 1;
  }

  v5 = 0;
  *(result + 22) = 0;
  v6 = result + 92;
  v7 = 7;
  do
  {
    v5 += *(v6 - 9);
    *v6++ = v5;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t sub_2774BCFE4(_DWORD *a1, int a2, int a3, int a4)
{
  v4 = a1[9];
  if (v4 <= a2 && a1[11] <= a3 && a4 - 1 + a2 <= a1[10] && a4 - 1 + a3 <= a1[12])
  {
    return 2;
  }

  v5 = a4 + a2 <= v4 || a1[10] < a2;
  v6 = 1;
  if (a4 + a3 > a1[11])
  {
    v6 = a1[12] < a3;
  }

  return !v5 && !v6;
}

uint64_t sub_2774BD078(uint64_t a1, int a2, char a3, int a4, int a5, unsigned int a6, int a7, int a8, uint64_t a9)
{
  v10 = a6;
  if (a4 == 8)
  {
    *a1 = sub_2774BEF88;
    *(a1 + 8) = sub_2774BEEDC;
    *(a1 + 536) = sub_2774BEE90;
    *(a1 + 224) = sub_2774EB454;
    *(a1 + 232) = sub_2774EB3CC;
    *(a1 + 240) = sub_2774EB2C4;
    *(a1 + 248) = sub_2774EB184;
    *(a1 + 256) = sub_2774EB184;
    *(a1 + 416) = sub_2774EB3CC;
    *(a1 + 424) = sub_2774EB2C4;
    *(a1 + 432) = sub_2774EB17C;
    *(a1 + 440) = sub_2774EB17C;
    *(a1 + 184) = sub_2774EB0FC;
    *(a1 + 192) = sub_2774EAFDC;
    *(a1 + 200) = sub_2774EAEC0;
    *(a1 + 208) = sub_2774EAEC0;
    *(a1 + 216) = sub_2774EAEC0;
    *(a1 + 384) = sub_2774EAFDC;
    *(a1 + 392) = sub_2774EAEB8;
    *(a1 + 400) = sub_2774EAEB8;
    *(a1 + 408) = sub_2774EAEB8;
    *(a1 + 544) = sub_2774EAE2C;
    *(a1 + 552) = sub_2774EAC6C;
    *(a1 + 560) = sub_2774EAD68;
    *(a1 + 568) = sub_2774EAB38;
    v12 = sub_2774EA7FC;
    *(a1 + 264) = sub_2774EA7FC;
    v13 = sub_2774EA5D8;
    *(a1 + 272) = sub_2774EA5D8;
    v14 = sub_2774EA3F0;
    *(a1 + 280) = sub_2774EA3F0;
    v15 = sub_2774E9FF4;
    *(a1 + 288) = sub_2774E9FF4;
    v16 = sub_2774E9D68;
    *(a1 + 448) = sub_2774E9D68;
    v17 = sub_2774E9A1C;
    *(a1 + 456) = sub_2774E9A1C;
    v18 = sub_2774E971C;
    *(a1 + 464) = sub_2774E971C;
    *(a1 + 304) = sub_2774EA7FC;
    *(a1 + 312) = sub_2774EA5D8;
    *(a1 + 480) = sub_2774E9D68;
    *(a1 + 488) = sub_2774E9A1C;
    *(a1 + 512) = sub_2774E9508;
    *(a1 + 520) = sub_2774E9344;
    *(a1 + 528) = sub_2774E8E70;
    v19 = sub_2774E8C24;
  }

  else
  {
    if (a4 > 16)
    {
      return 4294954386;
    }

    *a1 = sub_2774BED38;
    *(a1 + 8) = sub_2774BEB68;
    *(a1 + 512) = sub_2774BEA98;
    *(a1 + 520) = sub_2774BE94C;
    *(a1 + 528) = sub_2774BDBDC;
    *(a1 + 536) = sub_2774BDB98;
    *(a1 + 224) = sub_2774ED770;
    *(a1 + 232) = sub_2774ED39C;
    *(a1 + 240) = sub_2774ED5EC;
    *(a1 + 248) = sub_2774ED5EC;
    *(a1 + 256) = sub_2774ED5EC;
    *(a1 + 416) = sub_2774ED39C;
    *(a1 + 424) = sub_2774ED5E4;
    *(a1 + 432) = sub_2774ED5E4;
    *(a1 + 440) = sub_2774ED5E4;
    *(a1 + 184) = sub_2774E8954;
    *(a1 + 192) = sub_2774E8818;
    *(a1 + 200) = sub_2774E86C0;
    *(a1 + 208) = sub_2774E86C0;
    *(a1 + 216) = sub_2774E86C0;
    *(a1 + 384) = sub_2774E8818;
    *(a1 + 392) = sub_2774ED488;
    *(a1 + 400) = sub_2774ED488;
    *(a1 + 408) = sub_2774ED488;
    *(a1 + 544) = sub_2774ED360;
    *(a1 + 552) = sub_2774ED140;
    *(a1 + 560) = sub_2774ED294;
    *(a1 + 568) = sub_2774ECFF4;
    v12 = sub_2774ECC48;
    *(a1 + 264) = sub_2774ECC48;
    v13 = sub_2774ECA14;
    *(a1 + 272) = sub_2774ECA14;
    v14 = sub_2774EC658;
    *(a1 + 280) = sub_2774EC658;
    v15 = sub_2774EC1E4;
    *(a1 + 288) = sub_2774EC1E4;
    v16 = sub_2774EBF20;
    *(a1 + 448) = sub_2774EBF20;
    v17 = sub_2774EBB10;
    *(a1 + 456) = sub_2774EBB10;
    v18 = sub_2774EB778;
    *(a1 + 464) = sub_2774EB778;
    *(a1 + 304) = sub_2774ECC48;
    *(a1 + 312) = sub_2774ECA14;
    *(a1 + 480) = sub_2774EBF20;
    *(a1 + 488) = sub_2774EBB10;
    v19 = sub_2774EB4CC;
  }

  *(a1 + 576) = v19;
  *(a1 + 16) = sub_2774E89FC;
  *(a1 + 344) = sub_2774E8954;
  *(a1 + 352) = sub_2774E8818;
  *(a1 + 360) = sub_2774E86C0;
  *(a1 + 368) = sub_2774E86C0;
  *(a1 + 376) = sub_2774E86C0;
  if (a2 <= 7)
  {
    *(a1 + 272) = v12;
LABEL_8:
    *(a1 + 280) = v12;
    *(a1 + 456) = v16;
    v14 = v12;
LABEL_9:
    *(a1 + 288) = v14;
    *(a1 + 464) = v16;
    v18 = v16;
    v15 = v14;
    goto LABEL_10;
  }

  v12 = v13;
  if (a2 <= 0xF)
  {
    goto LABEL_8;
  }

  v16 = v17;
  if (a2 <= 0x1F)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(a1 + 296) = v15;
  *(a1 + 472) = v18;
  *(a1 + 320) = v13;
  *(a1 + 328) = v13;
  *(a1 + 336) = v13;
  *(a1 + 496) = v17;
  *(a1 + 504) = v17;
  v20 = a3 ^ 1;
  if (a7 < 4)
  {
    v20 = 1;
  }

  *(a1 + 176) = v20;
  v21 = a7 - 2;
  if (a7 <= 2)
  {
    v21 = 0;
  }

  v69 = v21;
  if (v21 == 3 && a4 == 10)
  {
    v21 = 4;
  }

  *(a1 + 178) = v21;
  *(a1 + 177) = v21;
  if (a5 == 1 && v21 == 2)
  {
    *(a1 + 177) = 1;
  }

  v70 = a4;
  if (*(a1 + 179) != a6 || *(a1 + 180) != a4)
  {
    *(a1 + 96) = *(a1 + 88);
    *(a1 + 120) = *(a1 + 112);
    *(a1 + 144) = *(a1 + 136);
    *(a1 + 179) = a6;
    v68 = (a1 + 88);
    *(a1 + 180) = a4;
    goto LABEL_28;
  }

  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  *(a1 + 179) = a6;
  v68 = (a1 + 88);
  *(a1 + 180) = a4;
  if (v24 == v23 || *(a1 + 120) == *(a1 + 112))
  {
LABEL_28:
    sub_2774BD9D8((a1 + 88));
    sub_2774BD9D8((a1 + 112));
    v25 = 0;
    v26 = v10;
    v27 = *(a1 + 88);
    v28 = *(a1 + 112);
    v29 = -v10;
    v30 = -12;
    do
    {
      for (i = 0; i != 52; ++i)
      {
        if (v30 + i >= 57)
        {
          v32 = 57;
        }

        else
        {
          v32 = v30 + i;
        }

        if (v30 + i <= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v32;
        }

        if (v33 >= 30)
        {
          if (v33 >= 0x39)
          {
            v33 = 57;
          }

          v33 = byte_27753C740[v33 - 30];
        }

        v34 = (exp2((i - v33) / 3.0) * 256.0 + 0.5);
        *(v27 + 2 * i) = v34;
        *(v28 + 2 * i) = vcvtd_n_s64_f64(sqrt(v34), 4uLL);
      }

      ++v25;
      ++v30;
      v28 += 104;
      v27 += 104;
    }

    while (v25 != 25);
    v10 = v26;
    a4 = v70;
  }

  v35 = *(a1 + 136);
  v36 = *(a1 + 144);
  if (v36 == v35)
  {
    v39 = 64;
    if (a4 == 8)
    {
      v39 = 52;
    }

    v74 = v39;
    v67 = a8;
    if ((*(a1 + 152) - v36) >> 9 < 0x19uLL)
    {
      operator new();
    }

    bzero(v36, 0x3200uLL);
    *(a1 + 144) = v36 + 12800;
    v40 = 0;
    v41 = v10 - 12;
    v42 = *(a1 + 136);
    v43 = -v10;
    v73 = -12 - v10;
    v71 = -12 - v10;
    v66 = v42;
    do
    {
      v44 = 0;
      v45 = dbl_27750D690[v40 == 0];
      v46 = v71;
      v72 = v42;
      do
      {
        v75 = v46;
        v47 = v73;
        v48 = v42;
        v49 = v74;
        do
        {
          v50 = v44 + v47;
          if (v44 + v47 >= 57)
          {
            v50 = 57;
          }

          if (v46 <= v43)
          {
            v50 = v43;
          }

          if (v50 >= 30)
          {
            if (v50 >= 0x39)
            {
              v50 = 57;
            }

            v50 = byte_27753C740[v50 - 30];
          }

          v51 = v47 / 6.0;
          if (v51 < 4.0)
          {
            v52 = v47 / 6.0;
          }

          else
          {
            v52 = 4.0;
          }

          if (v51 <= 2.0)
          {
            v53 = 2.0;
          }

          else
          {
            v53 = v52;
          }

          v54 = v53;
          if (v40 == 3)
          {
            v55 = v54;
          }

          else
          {
            v55 = 1.0;
          }

          v56 = v45 * exp2((v41 + v50) / 3.0) * v55;
          v57 = v56 + 0.5;
          if (v57 < 65535.0)
          {
            v58 = v57;
          }

          else
          {
            v58 = 65535.0;
          }

          if (v57 <= 1.0)
          {
            v59 = 1.0;
          }

          else
          {
            v59 = v58;
          }

          *v48 = v59;
          v48 += 2;
          ++v47;
          ++v46;
          --v49;
        }

        while (v49);
        ++v44;
        v42 += 512;
        v46 = v75 + 1;
      }

      while (v44 != 25);
      ++v40;
      v42 = v72 + 128;
    }

    while (v40 != 4);
    a4 = v70;
    v35 = v66;
    if (v67)
    {
      goto LABEL_45;
    }
  }

  else if (a8)
  {
LABEL_45:
    result = 0;
    *(a1 + 40) = &unk_277533EEA;
    *(a1 + 48) = &unk_277533F52;
    *(a1 + 56) = &unk_277533EEA;
    *(a1 + 64) = &unk_277533F52;
    v38 = &unk_277533FBA + 1024 * (a4 == 10) + 128 * v69 + 512;
    *(a1 + 72) = v38;
    *(a1 + 80) = v38;
    return result;
  }

  v60 = 0;
  v61 = *(a1 + 112);
  v62 = 1;
  do
  {
    v63 = v62;
    v64 = *(a9 + v60) + 12;
    v65 = (a1 + 40 + 16 * v60);
    *v65 = *v68 + 104 * v64;
    v65[1] = v61 + 104 * v64;
    *(a1 + 72 + 8 * v60) = &v35[128 * (v69 + 4 * v64)];
    v60 = 1;
    v62 = 0;
  }

  while ((v63 & 1) != 0);
  return 0;
}

void sub_2774BD9D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0x4EC4EC4EC4EC4EC5 * (v4 >> 3);
  if (v5 > 0x18)
  {
    if (v4 == 2600)
    {
      return;
    }

    v11 = v2 + 2600;
  }

  else
  {
    v6 = 25 - v5;
    v7 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v7 - v3) >> 3) < v6)
    {
      v8 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v2) >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= 0x19)
      {
        v9 = 25;
      }

      if (v8 >= 0x13B13B13B13B13BLL)
      {
        v10 = 0x276276276276276;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x276276276276276)
      {
        operator new();
      }

      sub_2773C5248();
    }

    bzero(a1[1], 104 * ((2496 - v4) / 0x68uLL) + 104);
    v11 = v3 + 104 * ((2496 - v4) / 0x68uLL) + 104;
  }

  a1[1] = v11;
}

float sub_2774BDB98(uint16x4_t *a1, uint64_t a2, uint16x4_t *a3, uint64_t a4)
{
  v4 = 0.0;
  v5 = 4;
  do
  {
    result = COERCE_FLOAT(vaddvq_s32(vabal_u16(LODWORD(v4), *a1, *a3)));
    v4 = result;
    a3 = (a3 + 2 * a4);
    a1 = (a1 + 2 * a2);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_2774BDBDC(uint16x4_t *a1, uint64_t a2, uint16x4_t *a3, uint64_t a4, _DWORD *a5)
{
  *a5 = sub_2774BDDA4();
  v10 = a5 + 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = sub_2774BDE88();
      v13 = 0;
      *v10++ = v15;
    }

    while ((v14 & 1) != 0);
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  v16 = 0;
  v17 = a1;
  v30 = a3;
  v18 = a3;
  do
  {
    v19 = -8;
    v20 = v17;
    v21 = v18;
    do
    {
      *v10++ = sub_2774BDF6C(8, 8, v20, a2, v21, a4);
      v19 += 8;
      ++v21;
      ++v20;
    }

    while (v19 < 0x18);
    v18 += a4;
    v17 += a2;
    v22 = v16 >= 0x18;
    v16 += 8;
  }

  while (!v22);
  v23 = 0;
  v24 = v30;
  do
  {
    v25 = 0;
    v26 = a1;
    v27 = v24;
    do
    {
      result = sub_2774BE0C4(4, 4, v26, a2, v24, a4);
      v10[v25] = result;
      v29 = v25 * 4 + 4;
      ++v24;
      ++v26;
      v22 = v25++ >= 7;
    }

    while (!v22);
    v10 = (v10 + v29);
    v24 = &v27[a4];
    a1 += a2;
    v22 = v23 >= 0x1C;
    v23 += 4;
  }

  while (!v22);
  return result;
}

uint64_t sub_2774BDDA4()
{
  v0 = MEMORY[0x28223BE20]();
  v12 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  if (v1 >= 1)
  {
    v6 = 0;
    v7 = v11;
    do
    {
      if (v0 >= 1)
      {
        for (i = 0; i != v0; ++i)
        {
          v7[i] = *(v2 + 2 * i) - *(v4 + 2 * i);
        }
      }

      ++v6;
      v7 += 64;
      v4 += 2 * v5;
      v2 += 2 * v3;
    }

    while (v6 != v1);
  }

  return sub_2774BE5B0(v0, v1, v11, 0x20u, v10, 1);
}

uint64_t sub_2774BDE88()
{
  v0 = MEMORY[0x28223BE20]();
  v12 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  if (v1 >= 1)
  {
    v6 = 0;
    v7 = v11;
    do
    {
      if (v0 >= 1)
      {
        for (i = 0; i != v0; ++i)
        {
          v7[i] = *(v2 + 2 * i) - *(v4 + 2 * i);
        }
      }

      ++v6;
      v7 += 64;
      v4 += 2 * v5;
      v2 += 2 * v3;
    }

    while (v6 != v1);
  }

  return sub_2774BE5B0(v0, v1, v11, 0x10u, v10, 1);
}

uint64_t sub_2774BDF6C(int a1, int a2, uint16x8_t *a3, uint64_t a4, uint16x8_t *a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2 * a4;
  v21 = a6;
  v22 = 16 * a4;
  v12 = 2 * a6;
  do
  {
    v24 = a5;
    if (a1 >= 1)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        v15 = 0;
        v16 = a5;
        v17 = v14;
        do
        {
          v18 = vsubl_high_u16(*v17, *v16);
          v19 = &v25[v15];
          *v19 = vsubl_u16(*v17->i8, *v16->i8);
          v19[1] = v18;
          v15 += 32;
          v17 = (v17 + v11);
          v16 = (v16 + v12);
        }

        while (v15 != 256);
        sub_2774BE3A0(v25, v26);
        sub_2774BE3A0(v26, v25);
        v10 = sub_2774BE47C(v25) + v10;
        v13 += 8;
        ++v14;
        ++a5;
      }

      while (v13 < a1);
    }

    v9 += 8;
    a3 = (a3 + v22);
    a5 = &v24[v21];
  }

  while (v9 < a2);
  return v10;
}

uint64_t sub_2774BE0C4(int a1, int a2, uint16x4_t *a3, uint64_t a4, uint16x4_t *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2 * a4;
  v19 = a6;
  v20 = 8 * a4;
  v12 = 2 * a6;
  do
  {
    v22 = a5;
    if (a1 >= 1)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        v15 = 0;
        v16 = a5;
        v17 = v14;
        do
        {
          *&v23[v15] = vsubl_u16(*v17, *v16);
          v15 += 16;
          v17 = (v17 + v11);
          v16 = (v16 + v12);
        }

        while (v15 != 64);
        sub_2774BE214(v23, v24);
        sub_2774BE214(v24, v23);
        v10 = sub_2774BE280(v23) + v10;
        v13 += 4;
        ++v14;
        ++a5;
      }

      while (v13 < a1);
    }

    v9 += 4;
    a3 = (a3 + v20);
    a5 = &v22[v19];
  }

  while (v9 < a2);
  return v10;
}

uint64_t sub_2774BE214(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 32);
  v3 = (result + 8);
  v4 = 4;
  do
  {
    v5 = *(v3 - 2);
    *(v2 - 8) = v5;
    v6 = *(v3 - 1);
    *(v2 - 4) = v6;
    v7 = *v3;
    *v2 = *v3;
    v8 = v3[1];
    v9 = v6 + v5;
    v10 = v5 - v6;
    v11 = v8 + v7;
    v12 = v7 - v8;
    *(v2 - 8) = v11 + v9;
    *v2 = v9 - v11;
    *(v2 - 4) = v12 + v10;
    v2[4] = v10 - v12;
    v3 += 4;
    ++v2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_2774BE280(uint64_t a1)
{
  v1 = 0x280A71000uLL;
  if ((atomic_load_explicit(&qword_280A712C8, memory_order_acquire) & 1) == 0)
  {
    v10 = a1;
    v6 = __cxa_guard_acquire(&qword_280A712C8);
    v1 = 0x280A71000uLL;
    v7 = v6;
    a1 = v10;
    if (v7)
    {
      dword_280A712C0 = 1;
      __cxa_guard_release(&qword_280A712C8);
      v1 = 0x280A71000;
      a1 = v10;
    }
  }

  v2 = 0x280A71000uLL;
  if ((atomic_load_explicit(&qword_280A712D8, memory_order_acquire) & 1) == 0)
  {
    v11 = a1;
    v8 = __cxa_guard_acquire(&qword_280A712D8);
    v2 = 0x280A71000uLL;
    v1 = 0x280A71000uLL;
    v9 = v8;
    a1 = v11;
    if (v9)
    {
      dword_280A712D0 = 1 << (dword_280A712C0 - 1);
      __cxa_guard_release(&qword_280A712D8);
      v2 = 0x280A71000;
      v1 = 0x280A71000;
      a1 = v11;
    }
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 = vaddvq_s32(vaddq_s32(vabsq_s32(*(a1 + v3)), v4));
    v3 += 16;
  }

  while (v3 != 64);
  return ((*(v2 + 720) + v4) >> *(v1 + 704));
}

uint64_t sub_2774BE3A0(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 128);
  v3 = (a1 + 16);
  v4 = 8;
  do
  {
    v5 = *(v3 - 4);
    *(v2 - 32) = v5;
    v6 = *(v3 - 3);
    *(v2 - 24) = v6;
    v7 = *(v3 - 2);
    *(v2 - 16) = v7;
    v8 = *(v3 - 1);
    *(v2 - 8) = v8;
    v9 = *v3;
    *v2 = *v3;
    v10 = v3[1];
    v2[8] = v10;
    v11 = v3[2];
    v2[16] = v11;
    v12 = v6 + v5;
    v13 = v5 - v6;
    v14 = v8 + v7;
    v15 = v7 - v8;
    v16 = v14 + v12;
    v17 = v12 - v14;
    result = (v15 + v13);
    v19 = v3[3];
    v20 = v13 - v15;
    v21 = v10 + v9;
    v22 = v9 - v10;
    v23 = v19 + v11;
    v24 = v11 - v19;
    v25 = v23 + v21;
    v26 = v21 - v23;
    v27 = v24 + v22;
    v28 = v22 - v24;
    *(v2 - 32) = v25 + v16;
    *v2 = v16 - v25;
    *(v2 - 24) = v27 + result;
    v2[8] = result - v27;
    *(v2 - 16) = v26 + v17;
    v2[16] = v17 - v26;
    *(v2 - 8) = v28 + v20;
    v2[24] = v20 - v28;
    v3 += 8;
    ++v2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_2774BE47C(uint64_t a1)
{
  v1 = 0x280A71000uLL;
  if ((atomic_load_explicit(&qword_280A712E8, memory_order_acquire) & 1) == 0)
  {
    v12 = a1;
    v8 = __cxa_guard_acquire(&qword_280A712E8);
    v1 = 0x280A71000uLL;
    v9 = v8;
    a1 = v12;
    if (v9)
    {
      dword_280A712E0 = 2;
      __cxa_guard_release(&qword_280A712E8);
      v1 = 0x280A71000;
      a1 = v12;
    }
  }

  v2 = 0x280A71000uLL;
  if ((atomic_load_explicit(&qword_280A712F8, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v10 = __cxa_guard_acquire(&qword_280A712F8);
    v2 = 0x280A71000uLL;
    v1 = 0x280A71000uLL;
    v11 = v10;
    a1 = v13;
    if (v11)
    {
      dword_280A712F0 = 1 << (dword_280A712E0 - 1);
      __cxa_guard_release(&qword_280A712F8);
      v2 = 0x280A71000;
      v1 = 0x280A71000;
      a1 = v13;
    }
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = 0;
    v6 = v4;
    do
    {
      v6 = vaddq_s32(vabsq_s32(*(a1 + v5)), v6);
      v5 += 16;
    }

    while (v5 != 32);
    v4 = vaddvq_s32(v6);
    ++v3;
    a1 += 32;
  }

  while (v3 != 8);
  return ((*(v2 + 752) + v4) >> *(v1 + 736));
}

uint64_t sub_2774BE5B0(int a1, int a2, int *a3, unsigned int a4, void *a5, int a6)
{
  *a5 = 0;
  a5[1] = 0;
  v74 = a1;
  v66 = a2;
  v6 = __clz(__rbit32(a4));
  v61 = a6;
  v57 = v6;
  v58 = a2 >> v6;
  if (a4 == 32)
  {
    v7 = a6;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 == 0;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = -2;
  }

  if (v8)
  {
    v10 = -3;
  }

  else
  {
    v10 = -1;
  }

  v55 = v10 + v6;
  v56 = a1 >> v6;
  v11 = 1;
  v54 = 1 << (v6 + v9 - 2);
  v12 = a4;
  v13 = -1;
  do
  {
    v64 = v13;
    v14 = (v61 & 1) == 0 && a4 == 32 && v11 == 8;
    v65 = 2 * v11;
    if (a2 >= 1)
    {
      v16 = 0;
      v73 = &a3[65 * v11];
      v68 = v65 << 8;
      v17 = 4 * v65;
      v71 = a3;
      v72 = &a3[v11];
      v70 = &a3[64 * v11];
      do
      {
        v69 = v16;
        if (a1 >= 1)
        {
          v18 = 0;
          v19 = v70;
          v20 = v71;
          v21 = v72;
          v22 = v73;
          do
          {
            if (v11 >= 1)
            {
              v23 = 0;
              v24 = v20;
              v25 = v19;
              v26 = v21;
              v27 = v22;
              do
              {
                v28 = v24;
                v29 = v25;
                v30 = v26;
                v31 = v27;
                v32 = v11;
                do
                {
                  v33 = *v29 + *v28;
                  v34 = *v28 - *v29;
                  v35 = *v31 + *v30;
                  v36 = *v30 - *v31;
                  if (v14)
                  {
                    v37 = v34 + 1;
                    v38 = v35 + 1;
                    v39 = v36 + 1;
                    *v28 = (v38 >> 1) + ((v33 + 1) >> 1);
                    *v29 = (v39 >> 1) + (v37 >> 1);
                    *v30 = ((v33 + 1) >> 1) - (v38 >> 1);
                    *v31 = (v37 >> 1) - (v39 >> 1);
                    *v28 >>= 1;
                    *v29 >>= 1;
                    v40 = *v30 >> 1;
                    v41 = *v31 >> 1;
                  }

                  else
                  {
                    *v28 = v35 + v33;
                    *v29 = v36 + v34;
                    v40 = v33 - v35;
                    v41 = v34 - v36;
                  }

                  *v30++ = v40;
                  *v31++ = v41;
                  ++v29;
                  ++v28;
                  --v32;
                }

                while (v32);
                ++v23;
                v27 += 64;
                v26 += 64;
                v25 += 64;
                v24 += 64;
              }

              while (v23 != v11);
            }

            v18 += v65;
            v22 = (v22 + v17);
            v21 = (v21 + v17);
            v19 = (v19 + v17);
            v20 = (v20 + v17);
          }

          while (v18 < v74);
        }

        v16 += v65;
        v73 = (v73 + v68);
        v72 = (v72 + v68);
        v70 = (v70 + v68);
        v71 = (v71 + v68);
      }

      while (v69 + v65 < v66);
    }

    if ((v64 & 0x80000000) == 0)
    {
      if (v58 < 1)
      {
        v43 = 0;
      }

      else
      {
        v42 = 0;
        v43 = 0;
        do
        {
          if (v56 >= 1)
          {
            for (i = 0; i != v56; ++i)
            {
              v45 = 0;
              v46 = 0;
              v47 = &a3[64 * (v42 << v57) + (i << v57)];
              do
              {
                v48 = v47;
                v49 = v12;
                do
                {
                  v51 = *v48++;
                  v50 = v51;
                  if (v51 < 0)
                  {
                    v50 = -v50;
                  }

                  v46 += v50;
                  --v49;
                }

                while (v49);
                ++v45;
                v47 += 256;
              }

              while (v45 != v12);
              v52 = (v46 + v54) >> v55;
              if (!v55)
              {
                v52 = v46;
              }

              v43 += v52;
            }
          }

          ++v42;
        }

        while (v42 != v58);
      }

      *(a5 + v64) = v43;
    }

    v13 = v64 + 1;
    v11 *= 2;
  }

  while (v65 < a4);
  return *(a5 + v13 - 1);
}

uint64_t sub_2774BE94C(uint16x4_t *a1, uint64_t a2, uint16x4_t *a3, uint64_t a4, _DWORD *a5)
{
  v10 = sub_2774BDE88();
  v11 = 0;
  *a5 = v10;
  v12 = a5 + 1;
  v13 = 1;
  do
  {
    v14 = 0;
    v15 = v13;
    v16 = a1 + 2 * v11 * a2;
    v17 = a3 + 2 * v11 * a4;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = sub_2774BDF6C(8, 8, &v16[2 * v14], a2, &v17[2 * v14], a4);
      v18 = 0;
      *v12++ = v20;
      v14 = 8;
    }

    while ((v19 & 1) != 0);
    v13 = 0;
    v11 = 8;
  }

  while ((v15 & 1) != 0);
  v21 = 0;
  do
  {
    v22 = 0;
    v23 = a1;
    v24 = a3;
    do
    {
      result = sub_2774BE0C4(4, 4, v23, a2, v24, a4);
      v12[v22] = result;
      v26 = v22 * 4 + 4;
      ++v24;
      ++v23;
      v27 = v22++ >= 3;
    }

    while (!v27);
    v12 = (v12 + v26);
    a3 += a4;
    a1 += a2;
    v27 = v21 >= 0xC;
    v21 += 4;
  }

  while (!v27);
  return result;
}

uint64_t sub_2774BEA98(uint16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, _DWORD *a5)
{
  v10 = sub_2774BDF6C(8, 8, a1, a2, a3, a4);
  v11 = 0;
  *a5 = v10;
  v12 = a5 + 1;
  v13 = 1;
  do
  {
    v14 = 0;
    v15 = v13;
    v16 = &a1->i8[2 * v11 * a2];
    v17 = &a3->i8[2 * v11 * a4];
    v18 = 1;
    do
    {
      v19 = v18;
      result = sub_2774BE0C4(4, 4, &v16[2 * v14], a2, &v17[2 * v14], a4);
      v18 = 0;
      *v12++ = result;
      v14 = 4;
    }

    while ((v19 & 1) != 0);
    v13 = 0;
    v11 = 4;
  }

  while ((v15 & 1) != 0);
  return result;
}

int *sub_2774BEB68(uint16x8_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v10 = *MEMORY[0x277D85DE8];
  do
  {
    v5 = vmovl_high_u16(*a1);
    v6 = &v8[v4];
    *v6 = vmovl_u16(*a1->i8);
    *(v6 + 1) = v5;
    v4 += 8;
    a1 = (a1 + 2 * a2);
  }

  while (v4 != 64);
  sub_2774BE3A0(v8, v9);
  sub_2774BE3A0(v9, v8);
  return sub_2774BEC10(v8, a3);
}

int *sub_2774BEC10(int *result, uint64_t a2)
{
  v2 = 0x280A71000uLL;
  if ((atomic_load_explicit(&qword_280A71308, memory_order_acquire) & 1) == 0)
  {
    v23 = a2;
    v24 = result;
    v21 = __cxa_guard_acquire(&qword_280A71308);
    v2 = 0x280A71000uLL;
    v22 = v21;
    a2 = v23;
    result = v24;
    if (v22)
    {
      dword_280A71300 = 0;
      __cxa_guard_release(&qword_280A71308);
      v2 = 0x280A71000;
      a2 = v23;
      result = v24;
    }
  }

  v3 = 0;
  v4 = *a2 << *(v2 + 768);
  v5 = *result;
  for (i = 1; i != 8; ++i)
  {
    v7 = result[i];
    if (v7 >= 0)
    {
      v8 = result[i];
    }

    else
    {
      v8 = -v7;
    }

    LODWORD(v9) = v7 * v7;
    if (v8 <= v4)
    {
      v9 = v9;
    }

    else
    {
      v9 = 0;
    }

    v3 += v9;
  }

  v10 = vdupq_n_s32(v4);
  v11 = result + 8;
  for (j = 1; j != 8; ++j)
  {
    v13 = 0;
    v14 = 0uLL;
    v15 = v3;
    do
    {
      v16 = vbicq_s8(vmulq_s32(*&v11[v13], *&v11[v13]), vcgtq_s32(vabsq_s32(*&v11[v13]), v10));
      v14 = vaddw_high_u32(v14, v16);
      v15 = vaddw_u32(v15, *v16.i8);
      v13 += 4;
    }

    while (v13 != 8);
    v17 = vaddvq_s64(vaddq_s64(v15, v14));
    v3 = v17;
    v11 += 8;
  }

  if (v5 >= 0)
  {
    v18 = *result;
  }

  else
  {
    v18 = -v5;
  }

  v19 = v5 * v5;
  if (v18 <= v4)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *a2 = v20;
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_2774BED38(uint16x8_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  do
  {
    v5 = vmovl_high_u16(*a1);
    v6 = &v22[v4];
    *v6 = vmovl_u16(*a1->i8);
    v6[1] = v5;
    v4 += 32;
    a1 = (a1 + 2 * a2);
  }

  while (v4 != 256);
  v7 = v22;
  sub_2774BE3A0(v22, v23);
  result = sub_2774BE3A0(v23, v22);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = vdupq_n_s64(7uLL);
  v13 = vdupq_n_s64(4uLL);
  do
  {
    v14 = 0;
    v15 = v10;
    v16 = v11;
    v17 = vdupq_n_s64(v9);
    v18 = xmmword_27750D320;
    v19 = xmmword_27750D310;
    do
    {
      v20 = vuzp1q_s32(vcgtq_u64(v12, vaddq_s64(v18, v17)), vcgtq_u64(v12, vaddq_s64(v19, v17)));
      v21 = vabsq_s32(*&v7[v14]);
      v16 = vaddq_s32(vbicq_s8(v21, v20), v16);
      v15 = vaddq_s32(vandq_s8(v21, v20), v15);
      v19 = vaddq_s64(v19, v13);
      v18 = vaddq_s64(v18, v13);
      v14 += 16;
    }

    while (v14 != 32);
    v10 = vaddvq_s32(v15);
    v11 = vaddvq_s32(v16);
    ++v9;
    v7 += 32;
  }

  while (v9 != 8);
  *a3 = v10;
  a3[1] = v11;
  return result;
}

float sub_2774BEE90(unsigned __int32 *a1, uint64_t a2, unsigned __int32 *a3, uint64_t a4, double a5, uint32x4_t a6, uint32x4_t a7)
{
  v7 = 0.0;
  v8 = 4;
  do
  {
    a6.i32[0] = *a1;
    a6 = vmovl_u16(*&vmovl_u8(*a6.i8));
    a7.i32[0] = *a3;
    a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
    result = COERCE_FLOAT(vaddvq_s32(vabaq_u32(LODWORD(v7), a6, a7)));
    v7 = result;
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    --v8;
  }

  while (v8);
  return result;
}

int *sub_2774BEEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v5 = v8;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      v5[i] = *(a1 + i);
    }

    ++v4;
    a1 += a2;
    v5 += 8;
  }

  while (v4 != 8);
  sub_2774BE3A0(v8, v9);
  sub_2774BE3A0(v9, v8);
  return sub_2774BEC10(v8, a3);
}

uint64_t sub_2774BEF88(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v5 = v22;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      *&v5[4 * i] = *(a1 + i);
    }

    ++v4;
    a1 += a2;
    v5 += 32;
  }

  while (v4 != 8);
  v7 = v22;
  sub_2774BE3A0(v22, v23);
  result = sub_2774BE3A0(v23, v22);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = vdupq_n_s64(7uLL);
  v13 = vdupq_n_s64(4uLL);
  do
  {
    v14 = 0;
    v15 = v10;
    v16 = v11;
    v17 = vdupq_n_s64(v9);
    v18 = xmmword_27750D320;
    v19 = xmmword_27750D310;
    do
    {
      v20 = vuzp1q_s32(vcgtq_u64(v12, vaddq_s64(v18, v17)), vcgtq_u64(v12, vaddq_s64(v19, v17)));
      v21 = vabsq_s32(*&v7[v14]);
      v16 = vaddq_s32(vbicq_s8(v21, v20), v16);
      v15 = vaddq_s32(vandq_s8(v21, v20), v15);
      v19 = vaddq_s64(v19, v13);
      v18 = vaddq_s64(v18, v13);
      v14 += 16;
    }

    while (v14 != 32);
    v10 = vaddvq_s32(v15);
    v11 = vaddvq_s32(v16);
    ++v9;
    v7 += 32;
  }

  while (v9 != 8);
  *a3 = v10;
  a3[1] = v11;
  return result;
}

uint64_t sub_2774BF0E4(uint64_t result, int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  if (a2 > 51)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if ((a3 + a2) >= 0x3F)
    {
      v6 = 63;
    }

    else
    {
      v6 = a3 + a2;
    }

    if (a3 + a2 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = dword_2775347BC[70 * *(result + 178) + v7];
    v9 = *(*(result + 72) + 2 * v7);
    v10 = *(*(result + 80) + 2 * v7);
    v11 = a2 & ~(a2 >> 31);
    v12 = *(*(result + 40) + 2 * v11);
    v13 = *(*(result + 56) + 2 * v11);
  }

  *a4 = v8;
  *a5 = v9;
  a5[1] = v10;
  *a6 = v12;
  a6[1] = v13;
  return result;
}

uint64_t sub_2774BF164(uint64_t result, int a2, int a3)
{
  if ((a3 + a2) >= 0x3F)
  {
    v3 = 63;
  }

  else
  {
    v3 = a3 + a2;
  }

  if (a3 + a2 <= 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = dword_2775347BC[70 * *(result + 178) + v4];
  *(result + 160) = v5;
  v6 = (&unk_277534D34 + 700 * *(result + 176) + 2 * v4);
  v7 = v6[70 * *(result + 177)];
  *(result + 162) = v7;
  v8 = *v6;
  *(result + 164) = *v6;
  *(result + 166) = v6[70];
  if (a2 >= 0x33)
  {
    v9 = 51;
  }

  else
  {
    v9 = a2;
  }

  if (a2 <= 0)
  {
    v9 = 0;
  }

  v10 = *(result + 48);
  *(result + 168) = *(*(result + 40) + 2 * v9);
  v11 = *(result + 64);
  *(result + 172) = *(*(result + 56) + 2 * v9);
  *(result + 170) = *(v10 + 2 * v9);
  *(result + 174) = *(v11 + 2 * v9);
  *(result + 26) = v7;
  *(result + 28) = v7;
  *(result + 30) = v7;
  *(result + 24) = v5;
  *(result + 32) = v8;
  return result;
}

uint64_t sub_2774BF278(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = *(result + 9464);
  v8 = *(*(result + 9472) + 2113);
  *(result + 32) = v7;
  v9 = v8 - a5;
  *result = v9;
  *(result + 4) = a6;
  *(result + 8) = a7;
  if (a6 == 1)
  {
    if (a7)
    {
      v10 = *(*(v7 + 16) + 273) + 1;
    }

    else
    {
      v10 = *(*(v7 + 16) + 273);
    }

    v11 = 662;
  }

  else
  {
    v12 = *(v7 + 16);
    v13 = (v9 - *(v12 + 2114)) & ~((v9 - *(v12 + 2114)) >> 31);
    v10 = *(v12 + 272);
    if (v13 < v10)
    {
      v10 = v13;
    }

    v11 = 664;
  }

  *(result + 12) = v10;
  *(result + 6344) = 0;
  *(result + 6264) = 0u;
  *(result + 6280) = 0u;
  *(result + 6296) = 0u;
  *(result + 6312) = 0u;
  *(result + 6328) = 0u;
  *(result + 9488) = a2;
  *(result + 9512) = a3;
  *(result + 9516) = a4;
  *(result + 9520) = a5;
  *(result + 9496) = a2 + 1000;
  *(result + 9504) = *(a2 + 8);
  *(result + 9569) = *(*(v7 + 5320) + v11) != 0;
  return result;
}

uint64_t sub_2774BF330(uint64_t a1, __int16 *a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33)
{
  v33 = a5;
  a33 = *MEMORY[0x277D85DE8];
  v38 = a4;
  v94 = a4 - 2;
  result = (*(a1 + 8 * v94 + 9432))(a3, a5, &a31, &a13);
  v40 = result;
  if ((result & 0x80000000) == 0)
  {
    v91 = v38;
    v41 = *(*(a1 + 9488) + 944);
    v95 = v41 + 48;
    vars0 = v41;
    LODWORD(vars8) = *(v41 + 228);
    v42 = *(a3 + 2 * ((a32 << a4) + a31));
    if (v42 < 0)
    {
      v42 = -v42;
    }

    a9 = v42;
    v43 = v42 > 1;
    v44 = *a2;
    if (v33 == 2)
    {
      v45 = a31;
    }

    else
    {
      v45 = a32;
    }

    if (v33 == 2)
    {
      v46 = a32;
    }

    else
    {
      v46 = a31;
    }

    sub_2774BF920(&v95, v46, a4, a6, v41 + 91);
    sub_2774BF920(&v95, v45, a4, a6, v95 + 61);
    if (v46 >= 4)
    {
      LODWORD(vars8) = vars8 + (byte_277535805[v46 - 4] << 8);
    }

    if (v45 <= 3)
    {
      v47 = vars8;
    }

    else
    {
      v47 = vars8 + (byte_277535805[v45 - 4] << 8);
    }

    v48 = 0;
    v49 = 27;
    if (a6 <= 0)
    {
      v49 = 0;
    }

    v50 = 4 * v33;
    if (a4 != 3)
    {
      v50 = 0;
    }

    v51 = (v44 & 0x100) == 0;
    v86 = v95 + 16 * (a6 > 0) + 127;
    v87 = v95 + 2 * (a6 > 0) + 79;
    v85 = v95 + 4 * (a6 > 0) + 151;
    v52 = v95 + v49 + 83;
    v93 = *(&off_27A716BD8 + v94) + v50;
    v53 = v40 & 0xF;
    v54 = *(*(*(a1 + 9464) + 32) + 5);
    if (!v51)
    {
      v54 = 0;
    }

    v88 = v54;
    v55 = &unk_27753DEE0 + 384 * (a6 > 0) + 128 * v91 - 384;
    if (v33)
    {
      v55 = &unk_27753DE60;
    }

    v92 = v55;
    v56 = (1 << v94) - 1;
    v90 = 4 << a4;
    v57 = &byte_27753D160[64 * v33 + 16 * a4];
    v58 = v40 >> 4;
    LODWORD(v55) = 1;
    v59 = 1;
    while (1)
    {
      v60 = v93[v58];
      result = v60 >> v94;
      if ((v56 & v60) >= v56)
      {
        v61 = 0;
      }

      else
      {
        v61 = (v48 >> v60) & 2;
      }

      v62 = (v48 >> ((1 << v94) + v60)) & 1;
      if (result >= v56)
      {
        LODWORD(v62) = 0;
      }

      v63 = v62 | v61;
      v64 = *(&a13 + v58);
      if (v58 != v40 >> 4 && v58)
      {
        v65 = (v63 ? v87 + 1 : v87);
        v47 += dword_27753C4AC[(*v65 ^ (v64 != 0))];
        if (!*(&a13 + v58))
        {
          goto LABEL_105;
        }
      }

      v66 = (v92 + 32 * v63 + 16 * (v58 != 0));
      result = result * v90 + 4 * (v60 & ~(-1 << v94));
      if (v53 > 1)
      {
        v67 = v53 - 1;
        do
        {
          if ((v64 >> v67))
          {
            v68 = *(a3 + 2 * (result + v57[v67 - 32]));
            if (v68 < 0)
            {
              v68 = -v68;
            }

            *(&a9 + v55) = v68;
            v43 += (v68 > 1) << v55;
            LODWORD(v55) = v55 + 1;
          }

          v47 += dword_27753C4AC[*(v52 + v66[byte_27753D160[64 * v33 + v67]]) ^ (v64 >> v67) & 1];
          v69 = v67-- + 1;
        }

        while (v69 > 2);
      }

      v48 |= 1 << v60;
      if (v53 >= 1)
      {
        if (v58 && v55 < 1)
        {
          if (v64)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v47 += dword_27753C4AC[*(v52 + *v66) ^ v64 & 1];
          if (v64)
          {
LABEL_49:
            v70 = *(a3 + 2 * result);
            if (v70 < 0)
            {
              v70 = -v70;
            }

            *(&a9 + v55) = v70;
            v43 += (v70 > 1) << v55;
            LODWORD(v55) = v55 + 1;
            goto LABEL_52;
          }
        }
      }

      if (!v64)
      {
        goto LABEL_104;
      }

LABEL_52:
      if (__clz(v64) + __clz(__rbit32(v64)) < 0x1C)
      {
        v71 = v88;
      }

      else
      {
        v71 = 0;
      }

      if (v58)
      {
        v72 = a6 <= 0;
      }

      else
      {
        v72 = 0;
      }

      if (v72)
      {
        v73 = 2;
      }

      else
      {
        v73 = 0;
      }

      if (v59)
      {
        result = v73;
      }

      else
      {
        result = v73 + 1;
      }

      if (v55 >= 8)
      {
        v74 = 8;
      }

      else
      {
        v74 = v55;
      }

      if (v55 >= 1)
      {
        v75 = 1;
        v76 = v43;
        do
        {
          if ((v75 - 1) >= 2)
          {
            v59 = v75;
          }

          else
          {
            v59 = v75 + 1;
          }

          v77 = *(v86 + 4 * result + v75);
          if (v76)
          {
            v75 = 0;
          }

          else
          {
            v75 = v59;
          }

          v47 += dword_27753C4AC[(v77 ^ v76 & 1)];
          v76 >>= 1;
          --v74;
        }

        while (v74);
        if (v75)
        {
          v47 += (v55 - v71) << 8;
          if (v55 < 9)
          {
LABEL_103:
            LODWORD(v55) = 0;
            v43 = 0;
LABEL_104:
            v53 = 16;
            goto LABEL_105;
          }
        }

        else
        {
          v59 = 0;
          v47 += dword_27753C4AC[(*(v85 + result) ^ (*(&a9 + __clz(__rbit32(v43))) > 2u))] + ((v55 - v71) << 8);
        }

        v78 = 0;
        LODWORD(result) = 0;
        if (v55 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = v55;
        }

        v79 = 3;
        do
        {
          v80 = *(&a9 + v78);
          v81 = v47 - ((__clz(v80 - v79 + (-2 << result)) << 9) + (result << 8)) + 16896;
          if (v80 - v79 < 3 << result)
          {
            v82 = v47 + ((result + ((v80 - v79) >> result)) << 8) + 256;
          }

          else
          {
            v82 = v81;
          }

          if (3 << result >= v80)
          {
            v83 = result;
          }

          else
          {
            v83 = result + 1;
          }

          if (v83 >= 4)
          {
            v83 = 4;
          }

          if (v80 < v79)
          {
            result = result;
          }

          else
          {
            v47 = v82;
            result = v83;
          }

          if (v80 <= 1)
          {
            v84 = v79;
          }

          else
          {
            v84 = 2;
          }

          if (v78 > 6)
          {
            v79 = 1;
          }

          else
          {
            v79 = v84;
          }

          ++v78;
        }

        while (v55 != v78);
        goto LABEL_103;
      }

      v43 = 0;
      v47 += (v55 - v71) << 8;
      v53 = 16;
      v59 = 1;
      LODWORD(v55) = 0;
LABEL_105:
      v72 = v58-- <= 0;
      if (v72)
      {
        *(vars0 + 228) = v47;
        return result;
      }
    }
  }

  return result;
}