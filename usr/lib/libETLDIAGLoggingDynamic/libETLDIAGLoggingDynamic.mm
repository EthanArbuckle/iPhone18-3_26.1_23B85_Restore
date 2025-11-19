void ETLDIAGCreateQMDL2Header(uint64_t a1)
{
  insertVectorFromData<unsigned int>(a1 + 56, ((*(a1 + 16) - *(a1 + 8)) & 0xFFFFFFF0) + 47 * (*(a1 + 40) - *(a1 + 32)) + 14);
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v3 >= v2)
  {
    v5 = *(a1 + 56);
    v6 = v3 - v5;
    v7 = v3 - v5 + 1;
    if (v7 < 0)
    {
      goto LABEL_315;
    }

    v8 = v2 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = operator new(v9);
    }

    else
    {
      v10 = 0;
    }

    v10[v6] = 2;
    v4 = &v10[v6 + 1];
    memcpy(v10, v5, v6);
    *(a1 + 56) = v10;
    *(a1 + 64) = v4;
    *(a1 + 72) = &v10[v9];
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 2;
    v4 = v3 + 1;
  }

  *(a1 + 64) = v4;
  v11 = *(a1 + 72);
  if (v4 >= v11)
  {
    v13 = *(a1 + 56);
    v14 = v4 - v13;
    v15 = v4 - v13 + 1;
    if (v15 >= 0)
    {
      v16 = v11 - v13;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = operator new(v17);
      }

      else
      {
        v18 = 0;
      }

      v18[v14] = 1;
      v12 = &v18[v14 + 1];
      memcpy(v18, v13, v14);
      *(a1 + 56) = v18;
      *(a1 + 64) = v12;
      *(a1 + 72) = &v18[v17];
      if (v13)
      {
        operator delete(v13);
      }

      goto LABEL_27;
    }

LABEL_315:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  *v4 = 1;
  v12 = (v4 + 1);
LABEL_27:
  *(a1 + 64) = v12;
  insertVectorFromData<unsigned int>(a1 + 56, (*(a1 + 16) - *(a1 + 8)) >> 4);
  v19 = *(a1 + 8);
  for (i = *(a1 + 16); v19 != i; v19 += 16)
  {
    insertVectorFromData<unsigned int>(a1 + 56, *v19);
    insertVectorFromData<unsigned short>(a1 + 56, *(v19 + 4));
    insertVectorFromData<unsigned short>(a1 + 56, *(v19 + 6));
    v21 = *(v19 + 8);
    v23 = *(a1 + 64);
    v22 = *(a1 + 72);
    if (v23 >= v22)
    {
      v25 = *(a1 + 56);
      v26 = v23 - v25;
      v27 = v23 - v25 + 1;
      if (v27 < 0)
      {
        goto LABEL_315;
      }

      v28 = v22 - v25;
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        v30 = operator new(v29);
      }

      else
      {
        v30 = 0;
      }

      v30[v26] = v21;
      v24 = &v30[v26 + 1];
      memcpy(v30, v25, v26);
      *(a1 + 56) = v30;
      *(a1 + 64) = v24;
      *(a1 + 72) = &v30[v29];
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v23 = v21;
      v24 = v23 + 1;
    }

    *(a1 + 64) = v24;
    v31 = *(v19 + 9);
    v32 = *(a1 + 72);
    if (v24 >= v32)
    {
      v34 = *(a1 + 56);
      v35 = v24 - v34;
      v36 = v24 - v34 + 1;
      if (v36 < 0)
      {
        goto LABEL_315;
      }

      v37 = v32 - v34;
      if (2 * v37 > v36)
      {
        v36 = 2 * v37;
      }

      if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        v39 = operator new(v38);
      }

      else
      {
        v39 = 0;
      }

      v39[v35] = v31;
      v33 = &v39[v35 + 1];
      memcpy(v39, v34, v35);
      *(a1 + 56) = v39;
      *(a1 + 64) = v33;
      *(a1 + 72) = &v39[v38];
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v24 = v31;
      v33 = v24 + 1;
    }

    *(a1 + 64) = v33;
    v40 = *(v19 + 10);
    v41 = *(a1 + 72);
    if (v33 >= v41)
    {
      v43 = *(a1 + 56);
      v44 = v33 - v43;
      v45 = v33 - v43 + 1;
      if (v45 < 0)
      {
        goto LABEL_315;
      }

      v46 = v41 - v43;
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        v48 = operator new(v47);
      }

      else
      {
        v48 = 0;
      }

      v48[v44] = v40;
      v42 = &v48[v44 + 1];
      memcpy(v48, v43, v44);
      *(a1 + 56) = v48;
      *(a1 + 64) = v42;
      *(a1 + 72) = &v48[v47];
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v33 = v40;
      v42 = v33 + 1;
    }

    *(a1 + 64) = v42;
    v49 = *(v19 + 11);
    v50 = *(a1 + 72);
    if (v42 >= v50)
    {
      v52 = *(a1 + 56);
      v53 = v42 - v52;
      v54 = v42 - v52 + 1;
      if (v54 < 0)
      {
        goto LABEL_315;
      }

      v55 = v50 - v52;
      if (2 * v55 > v54)
      {
        v54 = 2 * v55;
      }

      if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        v57 = operator new(v56);
      }

      else
      {
        v57 = 0;
      }

      v57[v53] = v49;
      v51 = &v57[v53 + 1];
      memcpy(v57, v52, v53);
      *(a1 + 56) = v57;
      *(a1 + 64) = v51;
      *(a1 + 72) = &v57[v56];
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v42 = v49;
      v51 = v42 + 1;
    }

    *(a1 + 64) = v51;
    v58 = *(v19 + 12);
    v59 = *(a1 + 72);
    if (v51 >= v59)
    {
      v61 = *(a1 + 56);
      v62 = v51 - v61;
      v63 = v51 - v61 + 1;
      if (v63 < 0)
      {
        goto LABEL_315;
      }

      v64 = v59 - v61;
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      if (v64 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        v66 = operator new(v65);
      }

      else
      {
        v66 = 0;
      }

      v66[v62] = v58;
      v60 = &v66[v62 + 1];
      memcpy(v66, v61, v62);
      *(a1 + 56) = v66;
      *(a1 + 64) = v60;
      *(a1 + 72) = &v66[v65];
      if (v61)
      {
        operator delete(v61);
      }
    }

    else
    {
      *v51 = v58;
      v60 = v51 + 1;
    }

    *(a1 + 64) = v60;
    v67 = *(v19 + 13);
    v68 = *(a1 + 72);
    if (v60 >= v68)
    {
      v70 = *(a1 + 56);
      v71 = v60 - v70;
      v72 = v60 - v70 + 1;
      if (v72 < 0)
      {
        goto LABEL_315;
      }

      v73 = v68 - v70;
      if (2 * v73 > v72)
      {
        v72 = 2 * v73;
      }

      if (v73 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v74 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        v75 = operator new(v74);
      }

      else
      {
        v75 = 0;
      }

      v75[v71] = v67;
      v69 = &v75[v71 + 1];
      memcpy(v75, v70, v71);
      *(a1 + 56) = v75;
      *(a1 + 64) = v69;
      *(a1 + 72) = &v75[v74];
      if (v70)
      {
        operator delete(v70);
      }
    }

    else
    {
      *v60 = v67;
      v69 = v60 + 1;
    }

    *(a1 + 64) = v69;
    v76 = *(v19 + 14);
    v77 = *(a1 + 72);
    if (v69 >= v77)
    {
      v79 = *(a1 + 56);
      v80 = v69 - v79;
      v81 = v69 - v79 + 1;
      if (v81 < 0)
      {
        goto LABEL_315;
      }

      v82 = v77 - v79;
      if (2 * v82 > v81)
      {
        v81 = 2 * v82;
      }

      if (v82 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v83 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v83 = v81;
      }

      if (v83)
      {
        v84 = operator new(v83);
      }

      else
      {
        v84 = 0;
      }

      v84[v80] = v76;
      v78 = &v84[v80 + 1];
      memcpy(v84, v79, v80);
      *(a1 + 56) = v84;
      *(a1 + 64) = v78;
      *(a1 + 72) = &v84[v83];
      if (v79)
      {
        operator delete(v79);
      }
    }

    else
    {
      *v69 = v76;
      v78 = v69 + 1;
    }

    *(a1 + 64) = v78;
    v85 = *(v19 + 15);
    v86 = *(a1 + 72);
    if (v78 < v86)
    {
      *v78 = v85;
      v20 = (v78 + 1);
    }

    else
    {
      v87 = *(a1 + 56);
      v88 = v78 - v87;
      v89 = v78 - v87 + 1;
      if (v89 < 0)
      {
        goto LABEL_315;
      }

      v90 = v86 - v87;
      if (2 * v90 > v89)
      {
        v89 = 2 * v90;
      }

      if (v90 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v91 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v91 = v89;
      }

      if (v91)
      {
        v92 = operator new(v91);
      }

      else
      {
        v92 = 0;
      }

      v92[v88] = v85;
      v20 = &v92[v88 + 1];
      memcpy(v92, v87, v88);
      *(a1 + 56) = v92;
      *(a1 + 64) = v20;
      *(a1 + 72) = &v92[v91];
      if (v87)
      {
        operator delete(v87);
      }
    }

    *(a1 + 64) = v20;
  }

  insertVectorFromData<unsigned int>(a1 + 56, *(a1 + 40) - *(a1 + 32));
  v219 = 0xAAAAAAAAAAAAAAAALL;
  v220 = 0x5AAAAAAAAAAAAAALL;
  __p = 0xAAAA006D65646F6DLL;
  v93 = *(a1 + 32);
  v94 = *(a1 + 40);
  if (v93 == v94)
  {
    return;
  }

  v217 = 0;
  v95 = *(a1 + 64);
  v215 = *(a1 + 40);
  do
  {
    v96 = *v93;
    v97 = *(a1 + 72);
    if (v95 >= v97)
    {
      v99 = *(a1 + 56);
      v100 = v95 - v99;
      v101 = v95 - v99 + 1;
      if (v101 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v102 = v97 - v99;
      if (2 * v102 > v101)
      {
        v101 = 2 * v102;
      }

      if (v102 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v103 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v103 = v101;
      }

      if (v103)
      {
        v104 = operator new(v103);
      }

      else
      {
        v104 = 0;
      }

      v104[v100] = v96;
      v98 = &v104[v100 + 1];
      memcpy(v104, v99, v100);
      *(a1 + 56) = v104;
      *(a1 + 64) = v98;
      *(a1 + 72) = &v104[v103];
      if (v99)
      {
        operator delete(v99);
      }
    }

    else
    {
      *v95 = v96;
      v98 = v95 + 1;
    }

    *(a1 + 64) = v98;
    if (v220 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v220 >= 0)
    {
      v106 = HIBYTE(v220);
    }

    else
    {
      v106 = v219;
    }

    if (v106 >= 1)
    {
      v107 = *(a1 + 72);
      if (v107 - v98 < v106)
      {
        v108 = *(a1 + 56);
        v109 = v98 - v108;
        v110 = v98 - v108 + v106;
        if (v110 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v111 = v107 - v108;
        if (2 * v111 > v110)
        {
          v110 = 2 * v111;
        }

        if (v111 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v112 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v112 = v110;
        }

        if (v112)
        {
          v113 = operator new(v112);
          v114 = &v113[v109];
          v115 = &v113[v109 + v106];
          if (v106 < 8)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v113 = 0;
          v114 = (v98 - v108);
          v115 = (v109 + v106);
          if (v106 < 8)
          {
            goto LABEL_190;
          }
        }

        if ((&v113[v98] - v108 - p_p) >= 0x20)
        {
          if (v106 >= 0x20)
          {
            v123 = v106 & 0x7FFFFFFFFFFFFFE0;
            v124 = (p_p + 16);
            v125 = &v113[v109 + 16];
            v126 = v106 & 0x7FFFFFFFFFFFFFE0;
            do
            {
              v127 = *v124;
              *(v125 - 1) = *(v124 - 1);
              *v125 = v127;
              v124 += 2;
              v125 += 32;
              v126 -= 32;
            }

            while (v126);
            if (v106 == v123)
            {
LABEL_191:
              *(a1 + 64) = v98;
              memcpy(v113, v108, v98 - v108);
              *(a1 + 56) = v113;
              *(a1 + 64) = v115;
              v98 = v115;
              *(a1 + 72) = &v113[v112];
              v94 = v215;
              if (v108)
              {
                operator delete(v108);
                v98 = *(a1 + 64);
              }

              goto LABEL_193;
            }

            if ((v106 & 0x18) == 0)
            {
              p_p += v123;
              v114 += v123;
              goto LABEL_190;
            }
          }

          else
          {
            v123 = 0;
          }

          v114 += v106 & 0x7FFFFFFFFFFFFFF8;
          v128 = &p_p[v123];
          v129 = &v113[&v98[v123] - v108];
          v130 = v123 - (v106 & 0x7FFFFFFFFFFFFFF8);
          do
          {
            v131 = *v128++;
            *v129 = v131;
            v129 += 8;
            v130 += 8;
          }

          while (v130);
          p_p += v106 & 0x7FFFFFFFFFFFFFF8;
          if (v106 == (v106 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_191;
          }
        }

        do
        {
LABEL_190:
          v132 = *p_p++;
          *v114++ = v132;
        }

        while (v114 != v115);
        goto LABEL_191;
      }

      if (v106 < 0x20 || (v98 - p_p) < 0x20)
      {
        v116 = p_p;
        v117 = v98;
      }

      else
      {
        v116 = &p_p[v106 & 0x7FFFFFFFFFFFFFE0];
        v117 = &v98[v106 & 0x7FFFFFFFFFFFFFE0];
        v118 = v98 + 16;
        v119 = (p_p + 16);
        v120 = v106 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v121 = *v119;
          *(v118 - 1) = *(v119 - 1);
          *v118 = v121;
          v118 += 2;
          v119 += 2;
          v120 -= 32;
        }

        while (v120);
        if (v106 == (v106 & 0x7FFFFFFFFFFFFFE0))
        {
          goto LABEL_176;
        }
      }

      do
      {
        v122 = *v116++;
        *v117++ = v122;
      }

      while (v116 != &p_p[v106]);
LABEL_176:
      *(a1 + 64) = v117;
      v98 = v117;
    }

LABEL_193:
    v133 = HIBYTE(v220);
    if (v220 < 0)
    {
      v133 = v219;
    }

    if (v133 != 30)
    {
      v134 = 30 - v133;
      v135 = *(a1 + 72);
      if (v135 - v98 >= v134)
      {
        bzero(v98, v134);
        *(a1 + 64) = &v98[v134];
      }

      else
      {
        v136 = *(a1 + 56);
        v137 = v98 - v136;
        v138 = v98 - v136 + v134;
        if (v138 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v139 = v135 - v136;
        if (2 * v139 > v138)
        {
          v138 = 2 * v139;
        }

        if (v139 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v140 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          v141 = operator new(v140);
        }

        else
        {
          v141 = 0;
        }

        bzero(&v141[v137], v134);
        *(a1 + 64) = v98;
        memcpy(v141, v136, v98 - v136);
        *(a1 + 56) = v141;
        *(a1 + 64) = &v141[v137 + v134];
        *(a1 + 72) = &v141[v140];
        if (v136)
        {
          operator delete(v136);
        }
      }
    }

    v142 = *(a1 + 8) + 16 * v217;
    insertVectorFromData<unsigned int>(a1 + 56, *v142);
    insertVectorFromData<unsigned short>(a1 + 56, *(v142 + 4));
    insertVectorFromData<unsigned short>(a1 + 56, *(v142 + 6));
    v143 = *(v142 + 8);
    v145 = *(a1 + 64);
    v144 = *(a1 + 72);
    if (v145 >= v144)
    {
      v147 = *(a1 + 56);
      v148 = v145 - v147;
      v149 = v145 - v147 + 1;
      if (v149 < 0)
      {
        goto LABEL_316;
      }

      v150 = v144 - v147;
      if (2 * v150 > v149)
      {
        v149 = 2 * v150;
      }

      if (v150 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v151 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v151 = v149;
      }

      if (v151)
      {
        v152 = operator new(v151);
      }

      else
      {
        v152 = 0;
      }

      v152[v148] = v143;
      v146 = &v152[v148 + 1];
      memcpy(v152, v147, v148);
      *(a1 + 56) = v152;
      *(a1 + 64) = v146;
      *(a1 + 72) = &v152[v151];
      if (v147)
      {
        operator delete(v147);
      }
    }

    else
    {
      *v145 = v143;
      v146 = v145 + 1;
    }

    *(a1 + 64) = v146;
    v153 = *(v142 + 9);
    v154 = *(a1 + 72);
    if (v146 >= v154)
    {
      v156 = *(a1 + 56);
      v157 = v146 - v156;
      v158 = v146 - v156 + 1;
      if (v158 < 0)
      {
        goto LABEL_316;
      }

      v159 = v154 - v156;
      if (2 * v159 > v158)
      {
        v158 = 2 * v159;
      }

      if (v159 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v160 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v160 = v158;
      }

      if (v160)
      {
        v161 = operator new(v160);
      }

      else
      {
        v161 = 0;
      }

      v161[v157] = v153;
      v155 = &v161[v157 + 1];
      memcpy(v161, v156, v157);
      *(a1 + 56) = v161;
      *(a1 + 64) = v155;
      *(a1 + 72) = &v161[v160];
      if (v156)
      {
        operator delete(v156);
      }
    }

    else
    {
      *v146 = v153;
      v155 = v146 + 1;
    }

    *(a1 + 64) = v155;
    v162 = *(v142 + 10);
    v163 = *(a1 + 72);
    if (v155 >= v163)
    {
      v165 = *(a1 + 56);
      v166 = v155 - v165;
      v167 = v155 - v165 + 1;
      if (v167 < 0)
      {
        goto LABEL_316;
      }

      v168 = v163 - v165;
      if (2 * v168 > v167)
      {
        v167 = 2 * v168;
      }

      if (v168 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v169 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v169 = v167;
      }

      if (v169)
      {
        v170 = operator new(v169);
      }

      else
      {
        v170 = 0;
      }

      v170[v166] = v162;
      v164 = &v170[v166 + 1];
      memcpy(v170, v165, v166);
      *(a1 + 56) = v170;
      *(a1 + 64) = v164;
      *(a1 + 72) = &v170[v169];
      if (v165)
      {
        operator delete(v165);
      }
    }

    else
    {
      *v155 = v162;
      v164 = v155 + 1;
    }

    *(a1 + 64) = v164;
    v171 = *(v142 + 11);
    v172 = *(a1 + 72);
    if (v164 >= v172)
    {
      v174 = *(a1 + 56);
      v175 = v164 - v174;
      v176 = v164 - v174 + 1;
      if (v176 < 0)
      {
        goto LABEL_316;
      }

      v177 = v172 - v174;
      if (2 * v177 > v176)
      {
        v176 = 2 * v177;
      }

      if (v177 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v178 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v178 = v176;
      }

      if (v178)
      {
        v179 = operator new(v178);
      }

      else
      {
        v179 = 0;
      }

      v179[v175] = v171;
      v173 = &v179[v175 + 1];
      memcpy(v179, v174, v175);
      *(a1 + 56) = v179;
      *(a1 + 64) = v173;
      *(a1 + 72) = &v179[v178];
      if (v174)
      {
        operator delete(v174);
      }
    }

    else
    {
      *v164 = v171;
      v173 = v164 + 1;
    }

    *(a1 + 64) = v173;
    v180 = *(v142 + 12);
    v181 = *(a1 + 72);
    if (v173 >= v181)
    {
      v183 = *(a1 + 56);
      v184 = v173 - v183;
      v185 = v173 - v183 + 1;
      if (v185 < 0)
      {
        goto LABEL_316;
      }

      v186 = v181 - v183;
      if (2 * v186 > v185)
      {
        v185 = 2 * v186;
      }

      if (v186 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v187 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v187 = v185;
      }

      if (v187)
      {
        v188 = operator new(v187);
      }

      else
      {
        v188 = 0;
      }

      v188[v184] = v180;
      v182 = &v188[v184 + 1];
      memcpy(v188, v183, v184);
      *(a1 + 56) = v188;
      *(a1 + 64) = v182;
      *(a1 + 72) = &v188[v187];
      if (v183)
      {
        operator delete(v183);
      }
    }

    else
    {
      *v173 = v180;
      v182 = v173 + 1;
    }

    *(a1 + 64) = v182;
    v189 = *(v142 + 13);
    v190 = *(a1 + 72);
    if (v182 >= v190)
    {
      v192 = *(a1 + 56);
      v193 = v182 - v192;
      v194 = v182 - v192 + 1;
      if (v194 < 0)
      {
        goto LABEL_316;
      }

      v195 = v190 - v192;
      if (2 * v195 > v194)
      {
        v194 = 2 * v195;
      }

      if (v195 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v196 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v196 = v194;
      }

      if (v196)
      {
        v197 = operator new(v196);
      }

      else
      {
        v197 = 0;
      }

      v197[v193] = v189;
      v191 = &v197[v193 + 1];
      memcpy(v197, v192, v193);
      *(a1 + 56) = v197;
      *(a1 + 64) = v191;
      *(a1 + 72) = &v197[v196];
      if (v192)
      {
        operator delete(v192);
      }
    }

    else
    {
      *v182 = v189;
      v191 = v182 + 1;
    }

    *(a1 + 64) = v191;
    v198 = *(v142 + 14);
    v199 = *(a1 + 72);
    if (v191 >= v199)
    {
      v201 = *(a1 + 56);
      v202 = v191 - v201;
      v203 = v191 - v201 + 1;
      if (v203 < 0)
      {
        goto LABEL_316;
      }

      v204 = v199 - v201;
      if (2 * v204 > v203)
      {
        v203 = 2 * v204;
      }

      if (v204 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v205 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v205 = v203;
      }

      if (v205)
      {
        v206 = operator new(v205);
      }

      else
      {
        v206 = 0;
      }

      v206[v202] = v198;
      v200 = &v206[v202 + 1];
      memcpy(v206, v201, v202);
      *(a1 + 56) = v206;
      *(a1 + 64) = v200;
      *(a1 + 72) = &v206[v205];
      if (v201)
      {
        operator delete(v201);
      }
    }

    else
    {
      *v191 = v198;
      v200 = v191 + 1;
    }

    *(a1 + 64) = v200;
    v207 = *(v142 + 15);
    v208 = *(a1 + 72);
    if (v200 < v208)
    {
      *v200 = v207;
      v95 = v200 + 1;
    }

    else
    {
      v209 = *(a1 + 56);
      v210 = v200 - v209;
      v211 = v200 - v209 + 1;
      if (v211 < 0)
      {
LABEL_316:
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v212 = v208 - v209;
      if (2 * v212 > v211)
      {
        v211 = 2 * v212;
      }

      if (v212 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v213 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v213 = v211;
      }

      if (v213)
      {
        v214 = operator new(v213);
      }

      else
      {
        v214 = 0;
      }

      v214[v210] = v207;
      v95 = &v214[v210 + 1];
      memcpy(v214, v209, v210);
      *(a1 + 56) = v214;
      *(a1 + 64) = v95;
      *(a1 + 72) = &v214[v213];
      if (v209)
      {
        operator delete(v209);
      }
    }

    ++v217;
    *(a1 + 64) = v95;
    ++v93;
  }

  while (v93 != v94);
  if (SHIBYTE(v220) < 0)
  {
    operator delete(__p);
  }
}

void sub_29775368C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void insertVectorFromData<unsigned int>(uint64_t a1, int a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      goto LABEL_54;
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
  v13 = *(a1 + 16);
  if (v6 >= v13)
  {
    v15 = *a1;
    v16 = &v6[-*a1];
    v17 = v16 + 1;
    if ((v16 + 1) < 0)
    {
      goto LABEL_54;
    }

    v18 = v13 - v15;
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      v20 = operator new(v19);
    }

    else
    {
      v20 = 0;
    }

    v20[v16] = BYTE1(a2);
    v14 = &v20[v16 + 1];
    memcpy(v20, v15, v16);
    *a1 = v20;
    *(a1 + 8) = v14;
    *(a1 + 16) = &v20[v19];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = BYTE1(a2);
    v14 = v6 + 1;
  }

  *(a1 + 8) = v14;
  v21 = *(a1 + 16);
  if (v14 >= v21)
  {
    v23 = *a1;
    v24 = &v14[-*a1];
    v25 = v24 + 1;
    if ((v24 + 1) < 0)
    {
      goto LABEL_54;
    }

    v26 = v21 - v23;
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      v28 = operator new(v27);
    }

    else
    {
      v28 = 0;
    }

    v28[v24] = BYTE2(a2);
    v22 = &v28[v24 + 1];
    memcpy(v28, v23, v24);
    *a1 = v28;
    *(a1 + 8) = v22;
    *(a1 + 16) = &v28[v27];
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v14 = BYTE2(a2);
    v22 = v14 + 1;
  }

  *(a1 + 8) = v22;
  v29 = *(a1 + 16);
  if (v22 < v29)
  {
    *v22 = HIBYTE(a2);
    v30 = (v22 + 1);
    goto LABEL_53;
  }

  v31 = *a1;
  v32 = &v22[-*a1];
  v33 = v32 + 1;
  if ((v32 + 1) < 0)
  {
LABEL_54:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v34 = v29 - v31;
  if (2 * v34 > v33)
  {
    v33 = 2 * v34;
  }

  if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = v33;
  }

  if (v35)
  {
    v36 = operator new(v35);
  }

  else
  {
    v36 = 0;
  }

  v36[v32] = HIBYTE(a2);
  v30 = &v36[v32 + 1];
  memcpy(v36, v31, v32);
  *a1 = v36;
  *(a1 + 8) = v30;
  *(a1 + 16) = &v36[v35];
  if (v31)
  {
    operator delete(v31);
  }

LABEL_53:
  *(a1 + 8) = v30;
}

void insertVectorFromData<unsigned short>(uint64_t a1, __int16 a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      goto LABEL_28;
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
  v13 = *(a1 + 16);
  if (v6 < v13)
  {
    *v6 = HIBYTE(a2);
    v14 = (v6 + 1);
    goto LABEL_27;
  }

  v15 = *a1;
  v16 = &v6[-*a1];
  v17 = v16 + 1;
  if ((v16 + 1) < 0)
  {
LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v18 = v13 - v15;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = operator new(v19);
  }

  else
  {
    v20 = 0;
  }

  v20[v16] = HIBYTE(a2);
  v14 = &v20[v16 + 1];
  memcpy(v20, v15, v16);
  *a1 = v20;
  *(a1 + 8) = v14;
  *(a1 + 16) = &v20[v19];
  if (v15)
  {
    operator delete(v15);
  }

LABEL_27:
  *(a1 + 8) = v14;
}

void ETLDIAGLoggingGetGUIDString(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  *(&a2->__r_.__value_.__s + 23) = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  if (!a1)
  {
    return;
  }

  ctu::hex0(*a1);
  v4 = SHIBYTE(v63);
  if ((SHIBYTE(v63) & 0x8000000000000000) == 0)
  {
    v5 = v62;
    if (SHIBYTE(v63) == 22)
    {
      v6 = 22;
      v7 = 23;
LABEL_8:
      v9 = 2 * v6;
      if (v7 > 2 * v6)
      {
        v9 = v7;
      }

      if ((v9 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v9 | 7) + 1;
      }

      if (v9 >= 0x17)
      {
        v8 = v10;
      }

      else
      {
        v8 = 23;
      }

      v11 = v6 == 22;
      goto LABEL_17;
    }

LABEL_23:
    *(v4 + v5) = 45;
    v15 = v4 + 1;
    if (SHIBYTE(v63) < 0)
    {
      v62[1] = v15;
    }

    else
    {
      HIBYTE(v63) = v15 & 0x7F;
    }

    v14 = &v15[v5];
    goto LABEL_27;
  }

  v4 = v62[1];
  v7 = v63 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 != v62[1])
  {
    v5 = v62[0];
    goto LABEL_23;
  }

  v8 = 0x7FFFFFFFFFFFFFF7;
  if (v7 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v62[0];
  if (v6 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_8;
  }

  v11 = 0;
LABEL_17:
  v12 = operator new(v8);
  v13 = v12;
  if (v6)
  {
    memmove(v12, v5, v6);
  }

  v13[v6] = 45;
  if (!v11)
  {
    operator delete(v5);
  }

  v62[1] = v7;
  v63 = v8 | 0x8000000000000000;
  v62[0] = v13;
  v14 = &v13[v7];
LABEL_27:
  *v14 = 0;
  v65 = v63;
  *__p = *v62;
  v62[1] = 0;
  v63 = 0;
  v62[0] = 0;
  if (v65 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v65 >= 0)
  {
    v17 = HIBYTE(v65);
  }

  else
  {
    v17 = __p[1];
  }

  std::string::append(a2, v16, v17);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((SHIBYTE(v63) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v62[0]);
LABEL_35:
  ctu::hex0(*(a1 + 2));
  v18 = SHIBYTE(v63);
  if ((SHIBYTE(v63) & 0x8000000000000000) == 0)
  {
    v19 = v62;
    if (SHIBYTE(v63) == 22)
    {
      v20 = 22;
      v21 = 23;
LABEL_43:
      v23 = 2 * v20;
      if (v21 > 2 * v20)
      {
        v23 = v21;
      }

      if ((v23 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v23 | 7) + 1;
      }

      if (v23 >= 0x17)
      {
        v22 = v24;
      }

      else
      {
        v22 = 23;
      }

      v25 = v20 == 22;
      goto LABEL_52;
    }

LABEL_58:
    *(v18 + v19) = 45;
    v29 = v18 + 1;
    if (SHIBYTE(v63) < 0)
    {
      v62[1] = v29;
    }

    else
    {
      HIBYTE(v63) = v29 & 0x7F;
    }

    v28 = &v29[v19];
    goto LABEL_62;
  }

  v18 = v62[1];
  v21 = v63 & 0x7FFFFFFFFFFFFFFFLL;
  v20 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 != v62[1])
  {
    v19 = v62[0];
    goto LABEL_58;
  }

  v22 = 0x7FFFFFFFFFFFFFF7;
  if (v21 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v62[0];
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_43;
  }

  v25 = 0;
LABEL_52:
  v26 = operator new(v22);
  v27 = v26;
  if (v20)
  {
    memmove(v26, v19, v20);
  }

  v27[v20] = 45;
  if (!v25)
  {
    operator delete(v19);
  }

  v62[1] = v21;
  v63 = v22 | 0x8000000000000000;
  v62[0] = v27;
  v28 = &v27[v21];
LABEL_62:
  *v28 = 0;
  v65 = v63;
  *__p = *v62;
  v62[1] = 0;
  v63 = 0;
  v62[0] = 0;
  if (v65 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if (v65 >= 0)
  {
    v31 = HIBYTE(v65);
  }

  else
  {
    v31 = __p[1];
  }

  std::string::append(a2, v30, v31);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }
  }

  else if ((SHIBYTE(v63) & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

  operator delete(v62[0]);
LABEL_70:
  ctu::hex0(*(a1 + 3));
  v32 = SHIBYTE(v63);
  if ((SHIBYTE(v63) & 0x8000000000000000) == 0)
  {
    v33 = v62;
    if (SHIBYTE(v63) == 22)
    {
      v34 = 22;
      v35 = 23;
LABEL_78:
      v37 = 2 * v34;
      if (v35 > 2 * v34)
      {
        v37 = v35;
      }

      if ((v37 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v37 | 7) + 1;
      }

      if (v37 >= 0x17)
      {
        v36 = v38;
      }

      else
      {
        v36 = 23;
      }

      v39 = v34 == 22;
      goto LABEL_87;
    }

LABEL_93:
    *(v32 + v33) = 45;
    v43 = v32 + 1;
    if (SHIBYTE(v63) < 0)
    {
      v62[1] = v43;
    }

    else
    {
      HIBYTE(v63) = v43 & 0x7F;
    }

    v42 = &v43[v33];
    goto LABEL_97;
  }

  v32 = v62[1];
  v35 = v63 & 0x7FFFFFFFFFFFFFFFLL;
  v34 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v34 != v62[1])
  {
    v33 = v62[0];
    goto LABEL_93;
  }

  v36 = 0x7FFFFFFFFFFFFFF7;
  if (v35 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v33 = v62[0];
  if (v34 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_78;
  }

  v39 = 0;
LABEL_87:
  v40 = operator new(v36);
  v41 = v40;
  if (v34)
  {
    memmove(v40, v33, v34);
  }

  v41[v34] = 45;
  if (!v39)
  {
    operator delete(v33);
  }

  v62[1] = v35;
  v63 = v36 | 0x8000000000000000;
  v62[0] = v41;
  v42 = &v41[v35];
LABEL_97:
  *v42 = 0;
  v65 = v63;
  *__p = *v62;
  v62[1] = 0;
  v63 = 0;
  v62[0] = 0;
  if (v65 >= 0)
  {
    v44 = __p;
  }

  else
  {
    v44 = __p[0];
  }

  if (v65 >= 0)
  {
    v45 = HIBYTE(v65);
  }

  else
  {
    v45 = __p[1];
  }

  std::string::append(a2, v44, v45);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

LABEL_171:
    operator delete(v62[0]);
    goto LABEL_105;
  }

  if (SHIBYTE(v63) < 0)
  {
    goto LABEL_171;
  }

LABEL_105:
  ctu::hex0(*(a1 + 8));
  if (v65 >= 0)
  {
    v46 = __p;
  }

  else
  {
    v46 = __p[0];
  }

  if (v65 >= 0)
  {
    v47 = HIBYTE(v65);
  }

  else
  {
    v47 = __p[1];
  }

  std::string::append(a2, v46, v47);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(*(a1 + 9));
  if (v65 >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = __p[0];
  }

  if (v65 >= 0)
  {
    v49 = HIBYTE(v65);
  }

  else
  {
    v49 = __p[1];
  }

  std::string::append(a2, v48, v49);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::append(a2, "-", 1uLL);
  ctu::hex0(*(a1 + 10));
  if (v65 >= 0)
  {
    v50 = __p;
  }

  else
  {
    v50 = __p[0];
  }

  if (v65 >= 0)
  {
    v51 = HIBYTE(v65);
  }

  else
  {
    v51 = __p[1];
  }

  std::string::append(a2, v50, v51);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(*(a1 + 11));
  if (v65 >= 0)
  {
    v52 = __p;
  }

  else
  {
    v52 = __p[0];
  }

  if (v65 >= 0)
  {
    v53 = HIBYTE(v65);
  }

  else
  {
    v53 = __p[1];
  }

  std::string::append(a2, v52, v53);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(*(a1 + 12));
  if (v65 >= 0)
  {
    v54 = __p;
  }

  else
  {
    v54 = __p[0];
  }

  if (v65 >= 0)
  {
    v55 = HIBYTE(v65);
  }

  else
  {
    v55 = __p[1];
  }

  std::string::append(a2, v54, v55);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(*(a1 + 13));
  if (v65 >= 0)
  {
    v56 = __p;
  }

  else
  {
    v56 = __p[0];
  }

  if (v65 >= 0)
  {
    v57 = HIBYTE(v65);
  }

  else
  {
    v57 = __p[1];
  }

  std::string::append(a2, v56, v57);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(*(a1 + 14));
  if (v65 >= 0)
  {
    v58 = __p;
  }

  else
  {
    v58 = __p[0];
  }

  if (v65 >= 0)
  {
    v59 = HIBYTE(v65);
  }

  else
  {
    v59 = __p[1];
  }

  std::string::append(a2, v58, v59);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(*(a1 + 15));
  if (v65 >= 0)
  {
    v60 = __p;
  }

  else
  {
    v60 = __p[0];
  }

  if (v65 >= 0)
  {
    v61 = HIBYTE(v65);
  }

  else
  {
    v61 = __p[1];
  }

  std::string::append(a2, v60, v61);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2977541C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ETLDIAGGetGUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v119 = 0xAAAAAAAAAAAAAAAALL;
  v115 = 0xAAAAAAAAAAAAAAAALL;
  v126 = v3;
  v125 = v3;
  v124 = v3;
  v123 = v3;
  v122 = v3;
  v121 = v3;
  v118 = v3;
  v117 = v3;
  v114 = v3;
  *v113 = v3;
  v112 = v3;
  v111 = v3;
  v110 = v3;
  v109 = v3;
  v120 = 0;
  v4 = MEMORY[0x29EDC95A8] + 64;
  v116 = MEMORY[0x29EDC95A8] + 64;
  v5 = *(MEMORY[0x29EDC9538] + 16);
  v108 = *(MEMORY[0x29EDC9538] + 8);
  *(&v108 + *(v108 - 24)) = v5;
  v6 = (&v108 + *(v108 - 24));
  std::ios_base::init(v6, &v109);
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v108 = v7;
  v116 = v4;
  v95 = MEMORY[0x29EDC9568] + 16;
  *&v109 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2747B0](&v109 + 8);
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v94 = MEMORY[0x29EDC9570] + 16;
  *&v109 = MEMORY[0x29EDC9570] + 16;
  v113[0] = 0;
  v113[1] = 0;
  *&v114 = 0;
  *(&v114 + 1) = v113;
  LODWORD(v115) = 16;
  std::string::append(v113, 0x16uLL, 0);
  v8 = BYTE7(v114);
  if (SBYTE7(v114) < 0)
  {
    v8 = v113[1];
  }

  *(&v111 + 1) = v113;
  *&v112 = v113;
  *(&v112 + 1) = v113 + v8;
  v105 = &v105;
  v106 = &v105;
  v107 = 0;
  v9 = operator new(0x18uLL);
  v96 = &v111 + 1;
  v9[4] = 2070;
  v105 = v9;
  v106 = v9;
  v10 = 9;
  *v9 = &v105;
  *(v9 + 1) = &v105;
  v107 = 1;
LABEL_4:
  v11 = v10;
  std::ios_base::clear((&v108 + *(v108 - 24)), 0);
  *a2 = 0;
  *(a2 + 16) = *(a2 + 8);
  *(a2 + 40) = *(a2 + 32);
  *(a2 + 64) = *(a2 + 56);
  *(a2 + 80) = 3;
  _ETLDebugPrint();
  v97 = v11;
  v12 = v106;
  v13 = a2;
  if (v106 == &v105)
  {
    goto LABEL_121;
  }

  v14 = 0;
  do
  {
    while (1)
    {
      v99 = v12;
      v15 = *(v12 + 4);
      v101 = 0;
      v102 = v15;
      v103 = *(v13 + 80);
      v104 = 0;
      ETLDiagGetSubsysCmdString();
      _ETLDebugPrint();
      _ETLDebugPrint();
      if ((ETLDiagCreateGUIDDB() & 1) == 0)
      {
        break;
      }

      std::ios_base::clear((&v108 + *(v108 - 24)), 0);
      v18 = *v101;
      ETLDiagGetSubsysCmdString();
      v91 = *v101;
      _ETLDebugPrint();
      v85 = *(v101 + 1);
      _ETLDebugPrint();
      v86 = v101[4];
      _ETLDebugPrint();
      v87 = v101[5];
      _ETLDebugPrint();
      v88 = v101[6];
      _ETLDebugPrint();
      v89 = v101[7];
      _ETLDebugPrint();
      if (*(v101 + 1))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "ETLDiagCreateGUIDDB failed with status: ", 40);
        MEMORY[0x29C274790](&v108, *(v101 + 1));
        if ((v115 & 0x10) != 0)
        {
          v64 = *(&v114 + 1);
          v65 = &v111 + 1;
          if (*(&v114 + 1) < v112)
          {
            *(&v114 + 1) = v112;
            v64 = v112;
            v65 = &v111 + 1;
          }
        }

        else
        {
          if ((v115 & 8) == 0)
          {
            v57 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            p_p = &__p;
            goto LABEL_106;
          }

          v64 = v111;
          v65 = &v110;
        }

        v68 = *v65;
        v57 = v64 - *v65;
        if (v57 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v57 >= 0x17)
        {
          if ((v57 | 7) == 0x17)
          {
            v69 = 25;
          }

          else
          {
            v69 = (v57 | 7) + 1;
          }

          p_p = operator new(v69);
          __p.__r_.__value_.__l.__size_ = v57;
          __p.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = p_p;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v64 - *v65;
          p_p = &__p;
          if (!v57)
          {
            goto LABEL_106;
          }
        }

        memmove(p_p, v68, v57);
LABEL_106:
        p_p->__r_.__value_.__s.__data_[v57] = 0;
        goto LABEL_118;
      }

      if (v103 != v101[6])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "ETLDiagCreateGUIDDB request/response version mismatch: ", 55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "request ", 8);
        v59 = MEMORY[0x29C2747A0](&v108, v103);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ", ", 2);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "response ", 9);
        MEMORY[0x29C2747A0](v61, v101[6]);
        if ((v115 & 0x10) != 0)
        {
          v66 = *(&v114 + 1);
          v67 = &v111 + 1;
          if (*(&v114 + 1) < v112)
          {
            *(&v114 + 1) = v112;
            v66 = v112;
            v67 = &v111 + 1;
          }
        }

        else
        {
          if ((v115 & 8) == 0)
          {
            v62 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v63 = &__p;
            goto LABEL_117;
          }

          v66 = v111;
          v67 = &v110;
        }

        v70 = *v67;
        v62 = v66 - *v67;
        if (v62 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v62 >= 0x17)
        {
          if ((v62 | 7) == 0x17)
          {
            v71 = 25;
          }

          else
          {
            v71 = (v62 | 7) + 1;
          }

          v63 = operator new(v71);
          __p.__r_.__value_.__l.__size_ = v62;
          __p.__r_.__value_.__r.__words[2] = v71 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v63;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v66 - *v67;
          v63 = &__p;
          if (!v62)
          {
LABEL_117:
            v63->__r_.__value_.__s.__data_[v62] = 0;
LABEL_118:
            _ETLDebugPrint();
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, " [subsystem: ", 13);
            SubsysCmdString = ETLDiagGetSubsysCmdString();
            v73 = strlen(SubsysCmdString);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, SubsysCmdString, v73);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "]", 1);
LABEL_121:
            if (!v97)
            {
              if ((v115 & 0x10) != 0)
              {
                v76 = *(&v114 + 1);
                if (*(&v114 + 1) < v112)
                {
                  *(&v114 + 1) = v112;
                  v76 = v112;
                }
              }

              else
              {
                if ((v115 & 8) == 0)
                {
                  v74 = 0;
                  *(&__p.__r_.__value_.__s + 23) = 0;
                  v75 = &__p;
                  goto LABEL_138;
                }

                v76 = v111;
                v96 = &v110;
              }

              v77 = *v96;
              v74 = v76 - *v96;
              if (v74 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v74 >= 0x17)
              {
                if ((v74 | 7) == 0x17)
                {
                  v78 = 25;
                }

                else
                {
                  v78 = (v74 | 7) + 1;
                }

                v75 = operator new(v78);
                __p.__r_.__value_.__l.__size_ = v74;
                __p.__r_.__value_.__r.__words[2] = v78 | 0x8000000000000000;
                __p.__r_.__value_.__r.__words[0] = v75;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v76 - *v96;
                v75 = &__p;
                if (!v74)
                {
LABEL_138:
                  v75->__r_.__value_.__s.__data_[v74] = 0;
                  if (*(a3 + 23) < 0)
                  {
                    operator delete(*a3);
                  }

                  v79 = 0;
                  *a3 = __p;
                  *a2 = 0;
                  if (v107)
                  {
                    goto LABEL_144;
                  }

                  goto LABEL_146;
                }
              }

              memmove(v75, v77, v74);
              goto LABEL_138;
            }

            usleep(0x7A120u);
            v10 = v97 - 1;
            goto LABEL_4;
          }
        }

        memmove(v63, v70, v62);
        goto LABEL_117;
      }

      v90 = *(v101 + 17);
      _ETLDebugPrint();
      v19 = v101;
      if (*(v101 + 17))
      {
        v20 = 0;
        v21 = 0;
        v22 = 20;
        do
        {
          v23 = *(v19 + 9);
          v25 = *(v13 + 16);
          v24 = *(v13 + 24);
          if (v25 >= v24)
          {
            v27 = *(v13 + 8);
            v28 = v25 - v27;
            v29 = (v25 - v27) >> 4;
            v30 = v29 + 1;
            if ((v29 + 1) >> 60)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v31 = v24 - v27;
            if (v31 >> 3 > v30)
            {
              v30 = v31 >> 3;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF0)
            {
              v32 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              if (v32 >> 60)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v33 = operator new(16 * v32);
            }

            else
            {
              v33 = 0;
            }

            v34 = &v33[16 * v29];
            *v34 = *(v23 + v20);
            v26 = v34 + 16;
            memcpy(v33, v27, v28);
            *(a2 + 8) = v33;
            *(a2 + 16) = v26;
            *(a2 + 24) = &v33[16 * v32];
            v13 = a2;
            if (v27)
            {
              operator delete(v27);
              v19 = v101;
            }
          }

          else
          {
            *v25 = *(v23 + v20);
            v26 = v25 + 16;
          }

          *(v13 + 16) = v26;
          ETLDIAGLoggingGetGUIDString((*(v19 + 9) + v20), &__p);
          _ETLDebugPrint();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v19 = v101;
            if (v101[6] == 3)
            {
LABEL_32:
              v35 = *(v19 + 9);
              v37 = *(v13 + 40);
              v36 = *(v13 + 48);
              if (v37 >= v36)
              {
                v39 = *(v13 + 32);
                v40 = v37 - v39;
                v41 = v37 - v39 + 1;
                if (v41 < 0)
                {
                  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                }

                v42 = v36 - v39;
                if (2 * v42 > v41)
                {
                  v41 = 2 * v42;
                }

                if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v43 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v43 = v41;
                }

                if (v43)
                {
                  v44 = operator new(v43);
                }

                else
                {
                  v44 = 0;
                }

                v44[v40] = *(v35 + v22);
                v38 = &v44[v40 + 1];
                memcpy(v44, v39, v40);
                *(a2 + 32) = v44;
                *(a2 + 40) = v38;
                *(a2 + 48) = &v44[v43];
                v13 = a2;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v37 = *(v35 + v22);
                v38 = (v37 + 1);
              }

              *(v13 + 40) = v38;
              v92 = *(*(v101 + 9) + v22);
              _ETLDebugPrint();
              v19 = v101;
              v13 = a2;
            }
          }

          else
          {
            v19 = v101;
            if (v101[6] == 3)
            {
              goto LABEL_32;
            }
          }

          ++v21;
          v22 += 21;
          v20 += 20;
        }

        while (v21 < *(v19 + 17));
      }

      ETLDiagReleaseGUIDDB();
      v12 = v99[1];
      v14 = 1;
      if (v12 == &v105)
      {
        goto LABEL_49;
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, " ", 1);
    v16 = ETLDiagGetSubsysCmdString();
    v17 = strlen(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, v16, v17);
    ETLDiagGetSubsysCmdString();
    _ETLDebugPrint();
    v12 = v99[1];
  }

  while (v12 != &v105);
  if ((v14 & 1) == 0)
  {
    goto LABEL_121;
  }

LABEL_49:
  if (*(v13 + 8) == *(v13 + 16))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "All subsystems returned empty GUID", 34);
    if ((v115 & 0x10) != 0)
    {
      v51 = *(&v114 + 1);
      v52 = &v111 + 1;
      if (*(&v114 + 1) < v112)
      {
        *(&v114 + 1) = v112;
        v51 = v112;
        v52 = &v111 + 1;
      }
    }

    else
    {
      if ((v115 & 8) == 0)
      {
        v47 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v48 = &__p;
        goto LABEL_83;
      }

      v51 = v111;
      v52 = &v110;
    }

    v55 = *v52;
    v47 = v51 - *v52;
    if (v47 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v47 >= 0x17)
    {
      if ((v47 | 7) == 0x17)
      {
        v56 = 25;
      }

      else
      {
        v56 = (v47 | 7) + 1;
      }

      v48 = operator new(v56);
      __p.__r_.__value_.__l.__size_ = v47;
      __p.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v48;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v51 - *v52;
      v48 = &__p;
      if (!v47)
      {
        goto LABEL_83;
      }
    }

    memmove(v48, v55, v47);
LABEL_83:
    v48->__r_.__value_.__s.__data_[v47] = 0;
LABEL_84:
    _ETLDebugPrint();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_121;
  }

  if (*(v13 + 80) != 3)
  {
    goto LABEL_143;
  }

  if (*(v13 + 32) == *(v13 + 40))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "All subsystems returned empty DIAG ID", 37);
    if ((v115 & 0x10) != 0)
    {
      v49 = *(&v114 + 1);
      v50 = &v111 + 1;
      if (*(&v114 + 1) < v112)
      {
        *(&v114 + 1) = v112;
        v49 = v112;
        v50 = &v111 + 1;
      }
    }

    else
    {
      if ((v115 & 8) == 0)
      {
        v45 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v46 = &__p;
        goto LABEL_72;
      }

      v49 = v111;
      v50 = &v110;
    }

    v53 = *v50;
    v45 = v49 - *v50;
    if (v45 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v45 >= 0x17)
    {
      if ((v45 | 7) == 0x17)
      {
        v54 = 25;
      }

      else
      {
        v54 = (v45 | 7) + 1;
      }

      v46 = operator new(v54);
      __p.__r_.__value_.__l.__size_ = v45;
      __p.__r_.__value_.__r.__words[2] = v54 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v46;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v49 - *v50;
      v46 = &__p;
      if (!v45)
      {
        goto LABEL_72;
      }
    }

    memmove(v46, v53, v45);
LABEL_72:
    v46->__r_.__value_.__s.__data_[v45] = 0;
    goto LABEL_84;
  }

  ETLDIAGCreateQMDL2Header(v13);
LABEL_143:
  v79 = 1;
  *a2 = 1;
  if (v107)
  {
LABEL_144:
    v80 = v106;
    v81 = *(v105 + 1);
    v82 = *v106;
    *(v82 + 8) = v81;
    *v81 = v82;
    v107 = 0;
    if (v80 != &v105)
    {
      do
      {
        v83 = v80[1];
        operator delete(v80);
        v80 = v83;
      }

      while (v83 != &v105);
    }
  }

LABEL_146:
  v108 = *MEMORY[0x29EDC9538];
  *(&v108 + *(v108 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *&v109 = v94;
  if (SBYTE7(v114) < 0)
  {
    operator delete(v113[0]);
  }

  *&v109 = v95;
  std::locale::~locale(&v109 + 1);
  std::ostream::~ostream();
  MEMORY[0x29C274800](&v116);
  return v79;
}

void sub_297755128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  std::list<ETLDiagQueryGUIDSubSysCMDCode>::~list(&a29);
  std::ostringstream::~ostringstream(&a32);
  MEMORY[0x29C274800](a14);
  _Unwind_Resume(a1);
}

uint64_t ETLDIAGLoggingConfigure(uint64_t *a1, std::string::size_type *a2)
{
  v130 = *MEMORY[0x29EDCA608];
  v3 = *(*a1 + 56);
  if (!v3 || (v3() ? (v5 = a1[1] == 0) : (v5 = 1), v5))
  {
LABEL_118:
    result = 0;
    v67 = *MEMORY[0x29EDCA608];
    return result;
  }

  _ETLDebugPrint();
  if ((*(a1 + 4) | 2) == 2)
  {
    LODWORD(v98[0]) = 0;
    LODWORD(v94.__r_.__value_.__l.__data_) = 0;
    v6 = 1;
    for (i = 1; i != 11; ++i)
    {
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        a2[1] = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint();
      if ((*(a1 + 20) & 1) == 0)
      {
        v8 = *a1;
        ETLFlushResponseFull();
      }

      v9 = *a1;
      if (ETLMaverickSetFlags())
      {
        break;
      }

      std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
      v6 = i < 0xA;
    }

    if (!v6)
    {
      goto LABEL_96;
    }
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v100 = v10;
  v101 = v10;
  *v98 = v10;
  v99 = v10;
  v11 = a1[1];
  EnabledEquipIDs = ETLDMCLogGetEnabledEquipIDs();
  if (!EnabledEquipIDs)
  {
    std::string::__assign_external(a2, "No log equip ID found in DMC file", 0x21uLL);
    goto LABEL_96;
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    v13 = *a1;
    v14 = EnabledEquipIDs;
    ETLFlushResponseFull();
    EnabledEquipIDs = v14;
  }

  v15 = 0;
  v16 = EnabledEquipIDs;
  do
  {
    v94.__r_.__value_.__r.__words[0] = 0;
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v17 = *(v98 + v15);
    ETLLOGEquipIDAsString();
    v85 = *(v98 + v15);
    _ETLDebugPrint();
    v18 = a1[1];
    v19 = *(v98 + v15);
    if ((ETLDMCLogGetMask() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to get log mask from DMC", 0x1FuLL);
      goto LABEL_96;
    }

    v20 = *a1;
    v21 = *(v98 + v15);
    if ((ETLLOGSetMaskWithRetry() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to set log masks", 0x17uLL);
      goto LABEL_96;
    }

    ++v15;
  }

  while (v16 != v15);
  v22 = a1[1];
  NumRanges = ETLDMCEventGetNumRanges();
  if (!NumRanges)
  {
    std::string::__assign_external(a2, "No event ranges found in DMC file", 0x21uLL);
    goto LABEL_96;
  }

  _ETLDebugPrint();
  v24 = 1;
  while (1)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      a2[1] = 0;
      if (*(a1 + 20))
      {
        goto LABEL_32;
      }

LABEL_31:
      v25 = *a1;
      ETLFlushResponseFull();
      goto LABEL_32;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_32:
    _ETLDebugPrint();
    v26 = *a1;
    if (ETLEVENTEnable())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to enable events", 0x17uLL);
LABEL_26:
    if (++v24 == 4)
    {
      goto LABEL_96;
    }
  }

  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v128 = v27;
  v129 = v27;
  v126 = v27;
  v127 = v27;
  v124 = v27;
  v125 = v27;
  v122 = v27;
  v123 = v27;
  v120 = v27;
  v121 = v27;
  v118 = v27;
  v119 = v27;
  v116 = v27;
  v117 = v27;
  v114 = v27;
  v115 = v27;
  v112 = v27;
  v113 = v27;
  v110 = v27;
  v111 = v27;
  v108 = v27;
  v109 = v27;
  v106 = v27;
  v107 = v27;
  v104 = v27;
  v105 = v27;
  v102 = v27;
  v103 = v27;
  v100 = v27;
  v101 = v27;
  *v98 = v27;
  v99 = v27;
  v96 = 0;
  v28 = *a1;
  if ((ETLEVENTGetMask() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to get current event mask", 0x20uLL);
    goto LABEL_26;
  }

  if (v96 > 0x1000)
  {
    if (*(a2 + 23) < 0)
    {
      a2[1] = 22;
      v69 = *a2;
    }

    else
    {
      *(a2 + 23) = 22;
      v69 = a2;
    }

    v54 = 0;
    v70 = "Invalid event bit mask";
LABEL_125:
    *v69 = *v70;
    *(v69 + 14) = *(v70 + 14);
    *(v69 + 22) = 0;
    goto LABEL_97;
  }

  bzero(v98, (v96 + 7) >> 3);
  v29 = 0;
  while (2)
  {
    __val = -1431655766;
    v30 = a1[1];
    if ((ETLDMCEventGetRange() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to get event range from DMC", 0x22uLL);
      goto LABEL_26;
    }

    if (v96 < HIWORD(__val))
    {
      std::to_string(&v92, HIWORD(__val));
      v33 = std::string::insert(&v92, 0, "Invalid event range: event range last (from DMC): ", 0x32uLL);
      v34 = *&v33->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        v37 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v37 - __p.__r_.__value_.__l.__size_ < 0x18)
        {
          v39 = 0x7FFFFFFFFFFFFFF7;
          v90 = __p.__r_.__value_.__l.__size_ + 24;
          if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 24 - v37)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          __src = __p.__r_.__value_.__r.__words[0];
          if (v37 > 0x3FFFFFFFFFFFFFF2)
          {
            v88 = 0;
LABEL_63:
            v42 = v39;
            v43 = operator new(v39);
            v44 = v43;
            if (size)
            {
              memmove(v43, __src, size);
            }

            qmemcpy((v44 + size), ", maskBits (from BBFW): ", 24);
            if (!v88)
            {
              operator delete(__src);
            }

            __p.__r_.__value_.__r.__words[0] = v44;
            __p.__r_.__value_.__l.__size_ = v90;
            __p.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            v45 = (v44 + v90);
LABEL_74:
            *v45 = 0;
            v94 = __p;
            memset(&__p, 0, sizeof(__p));
            std::to_string(&v91, v96);
            if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v91;
            }

            else
            {
              v48 = v91.__r_.__value_.__r.__words[0];
            }

            if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v91.__r_.__value_.__l.__size_;
            }

            v50 = std::string::append(&v94, v48, v49);
            v51 = v50->__r_.__value_.__r.__words[0];
            v97[0] = v50->__r_.__value_.__l.__size_;
            *(v97 + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
            v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            v53 = v97[0];
            *a2 = v51;
            a2[1] = v53;
            *(a2 + 15) = *(v97 + 7);
            *(a2 + 23) = v52;
            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_84:
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_85;
                }

                goto LABEL_89;
              }
            }

            else if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_84;
            }

            operator delete(v94.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_85:
              if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_26;
              }

LABEL_90:
              operator delete(v92.__r_.__value_.__l.__data_);
              goto LABEL_26;
            }

LABEL_89:
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_90;
          }

          v36 = __p.__r_.__value_.__l.__size_ + 24;
LABEL_54:
          v40 = 2 * v37;
          v90 = v36;
          if (v36 > 2 * v37)
          {
            v40 = v36;
          }

          if ((v40 | 7) == 0x17)
          {
            v41 = 25;
          }

          else
          {
            v41 = (v40 | 7) + 1;
          }

          if (v40 >= 0x17)
          {
            v39 = v41;
          }

          else
          {
            v39 = 23;
          }

          v88 = v37 == 22;
          goto LABEL_63;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0x17)
        {
          v36 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 24;
          __src = &__p;
          v37 = 22;
          goto LABEL_54;
        }

        p_p = &__p;
      }

      qmemcpy(p_p + size, ", maskBits (from BBFW): ", sizeof(std::string));
      v47 = size + 24;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = size + 24;
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = v47 & 0x7F;
      }

      v45 = p_p + v47;
      goto LABEL_74;
    }

    v31 = __val;
    if (__val <= HIWORD(__val))
    {
      v32 = HIWORD(__val) + 1;
      do
      {
        *(v98 + (v31 >> 3)) |= 1 << (v31 & 7);
        ++v31;
      }

      while (v32 != v31);
    }

    if (++v29 != NumRanges)
    {
      continue;
    }

    break;
  }

  v38 = *a1;
  if ((ETLEVENTSetMask() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to set event masks", 0x19uLL);
    goto LABEL_26;
  }

  if (_MergedGlobals)
  {
LABEL_127:
    v71 = a1[1];
    v72 = ETLDMCMessageGetNumRanges();
    if (v72)
    {
      _ETLDebugPrint();
      LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
      v94.__r_.__value_.__r.__words[0] = 0;
      v73 = a1[1];
      if (ETLDMCMessageGetRangeAndMasks())
      {
        v74 = 0;
        while (1)
        {
          _ETLDebugPrint();
          v75 = _MergedGlobals;
          if (_MergedGlobals)
          {
            v76 = &word_2A18CB3AE;
            while (*&__p.__r_.__value_.__s.__data_[2] > *v76 || LOWORD(__p.__r_.__value_.__l.__data_) < *(v76 - 1))
            {
              v76 += 2;
              if (!--v75)
              {
                ETLDMCDebugGetMessageRange();
                _ETLDebugPrint();
                if (SBYTE7(v99) < 0)
                {
                  operator delete(v98[0]);
                }

                if (++v74 == v72)
                {
                  goto LABEL_96;
                }

                goto LABEL_143;
              }
            }
          }

          if ((*(a1 + 20) & 1) == 0)
          {
            v77 = *a1;
            ETLFlushResponseFull();
          }

          v78 = *a1;
          if ((ETLMESSAGESetSubsystemRuntimeMasksWithRetry() & 1) == 0)
          {
            break;
          }

          if (++v74 == v72)
          {
            goto LABEL_148;
          }

LABEL_143:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v94.__r_.__value_.__r.__words[0] = 0;
          v79 = a1[1];
          if ((ETLDMCMessageGetRangeAndMasks() & 1) == 0)
          {
            goto LABEL_144;
          }
        }

        std::string::__assign_external(a2, "Failed to configure message range", 0x21uLL);
      }

      else
      {
LABEL_144:
        std::string::__assign_external(a2, "Failed to get event range from DMC file", 0x27uLL);
      }

      goto LABEL_96;
    }

    _ETLDebugPrint();
LABEL_148:
    v81 = a1[1];
    if (*(_ETLDMCGetView() + 48))
    {
      v82 = *a1;
      if ((ETLQtraceSend() & 1) == 0)
      {
        if (*(a2 + 23) < 0)
        {
          a2[1] = 22;
          v69 = *a2;
        }

        else
        {
          *(a2 + 23) = 22;
          v69 = a2;
        }

        v54 = 0;
        v70 = "Failed to send QTraces";
        goto LABEL_125;
      }
    }

    else
    {
      _ETLDebugPrint();
    }

    v54 = 1;
  }

  else
  {
    v80 = *a1;
    ETLMESSAGEGetSubsystemIDRanges();
    if (_MergedGlobals < 0x81)
    {
      _ETLDebugPrint();
      if (_MergedGlobals)
      {
        v83 = 0;
        v84 = &word_2A18CB3AE;
        do
        {
          v86 = *(v84 - 1);
          v87 = *v84;
          _ETLDebugPrint();
          ++v83;
          v84 += 2;
        }

        while (v83 < _MergedGlobals);
      }

      goto LABEL_127;
    }

    std::string::__assign_external(a2, "Received more message ranges than expected", 0x2AuLL);
LABEL_96:
    v54 = 0;
  }

LABEL_97:
  if ((*(a1 + 23) & 1) == 0)
  {
    v55 = *(a1 + 21);
    if ((v54 & v55) == 1)
    {
      v56 = *a1;
      v57 = ETLMaverickADPLEnable();
      LOBYTE(v54) = (*(a1 + 22) ^ 1) & v57;
      if ((*(a1 + 22) ^ 1))
      {
        goto LABEL_104;
      }

LABEL_102:
      if (v57)
      {
        v58 = *a1;
        LOBYTE(v54) = ETLMaverickQDSSEnable();
      }
    }

    else
    {
      v57 = v54 & (v55 ^ 1);
      LOBYTE(v54) = (*(a1 + 22) ^ 1) & v57;
      if (((*(a1 + 22) ^ 1) & 1) == 0)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_104:
  v59 = *(a1 + 4);
  if (v59 <= 1 && (v54 & 1) != 0)
  {
    LODWORD(v98[0]) = 0;
    LODWORD(v94.__r_.__value_.__l.__data_) = 0;
    v60 = 1;
    for (j = 1; j != 11; ++j)
    {
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        a2[1] = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint();
      if ((*(a1 + 20) & 1) == 0)
      {
        v62 = *a1;
        ETLFlushResponseFull();
      }

      v63 = *a1;
      if (ETLMaverickSetFlags())
      {
        break;
      }

      std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
      v60 = j < 0xA;
    }

    v64 = *(a1 + 4);
    if (!v60)
    {
LABEL_115:
      if (*(a2 + 23) < 0)
      {
        v65 = *a2;
      }

      _ETLDebugPrint();
      goto LABEL_118;
    }
  }

  else if (((v59 > 1) & v54) != 1)
  {
    goto LABEL_115;
  }

  _ETLDebugPrint();
  result = 1;
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297755E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL _ETLDIAGLoggingMSGSwitch(uint64_t *a1, uint64_t a2)
{
  v4 = 1;
  for (i = 1; i != 11; ++i)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      _ETLDebugPrint();
      if (*(a1 + 20))
      {
        goto LABEL_5;
      }

LABEL_4:
      v6 = *a1;
      ETLFlushResponseFull();
      goto LABEL_5;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    _ETLDebugPrint();
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_5:
    v7 = *a1;
    if (ETLMaverickSetFlags())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
    v4 = i < 0xA;
  }

  return v4;
}

uint64_t ETLDIAGLoggingUnconfigure(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v3 = *(*a1 + 56);
  if (!v3)
  {
    goto LABEL_88;
  }

  if (!v3() || a1[1] == 0)
  {
    goto LABEL_88;
  }

  _ETLDebugPrint();
  v6 = 1;
  for (i = 1; i != 11; ++i)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      _ETLDebugPrint();
      if (*(a1 + 20))
      {
        goto LABEL_10;
      }

LABEL_9:
      v8 = *a1;
      ETLFlushResponseFull();
      goto LABEL_10;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    _ETLDebugPrint();
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_10:
    v9 = *a1;
    if (ETLMaverickSetFlags())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
    v6 = i < 0xA;
  }

  if (!v6)
  {
    goto LABEL_70;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  _ETLDebugPrint();
  if ((*(a1 + 20) & 1) == 0)
  {
    v10 = *a1;
    ETLFlushResponseFull();
  }

  v11 = *a1;
  if ((ETLMESSAGESetAllSubsystemRunTimeMasks() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to clear message masks", 0x1DuLL);
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    _ETLDebugPrint();
    if ((*(a1 + 20) & 1) == 0)
    {
      v12 = *a1;
      ETLFlushResponseFull();
    }

    v13 = *a1;
    if ((ETLMESSAGESetAllSubsystemRunTimeMasks() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to clear message masks", 0x1DuLL);
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        *(a2 + 8) = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint();
      if ((*(a1 + 20) & 1) == 0)
      {
        v14 = *a1;
        ETLFlushResponseFull();
      }

      v15 = *a1;
      if ((ETLMESSAGESetAllSubsystemRunTimeMasks() & 1) == 0)
      {
        v23 = "Failed to clear message masks";
        v24 = a2;
        v25 = 29;
        goto LABEL_69;
      }
    }
  }

  v16 = a1[1];
  if (!ETLDMCLogGetEnabledEquipIDs())
  {
    v17 = "No log equip ID found in DMC file";
    v18 = a2;
    v19 = 33;
LABEL_38:
    std::string::__assign_external(v18, v17, v19);
    v20 = *a1;
    ETLLOGDisable();
    goto LABEL_70;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  _ETLDebugPrint();
  if ((*(a1 + 20) & 1) == 0)
  {
    v21 = *a1;
    ETLFlushResponseFull();
  }

  v22 = *a1;
  if ((ETLLOGClearAllEnabledMasksWithRetry() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to clear log masks", 0x19uLL);
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    _ETLDebugPrint();
    if ((*(a1 + 20) & 1) == 0)
    {
      v26 = *a1;
      ETLFlushResponseFull();
    }

    v27 = *a1;
    if ((ETLLOGClearAllEnabledMasksWithRetry() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to clear log masks", 0x19uLL);
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        *(a2 + 8) = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint();
      if ((*(a1 + 20) & 1) == 0)
      {
        v28 = *a1;
        ETLFlushResponseFull();
      }

      v29 = *a1;
      if ((ETLLOGClearAllEnabledMasksWithRetry() & 1) == 0)
      {
        v17 = "Failed to clear log masks";
        v18 = a2;
        v19 = 25;
        goto LABEL_38;
      }
    }
  }

  v30 = *a1;
  ETLLOGDisable();
  v31 = 1;
  for (j = 1; j != 11; ++j)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      _ETLDebugPrint();
      if (*(a1 + 20))
      {
        goto LABEL_60;
      }

LABEL_59:
      v33 = *a1;
      ETLFlushResponseFull();
      goto LABEL_60;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    _ETLDebugPrint();
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_60:
    v34 = *a1;
    if (ETLEVENTEnable())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to clear event masks", 0x1BuLL);
    v31 = j < 0xA;
  }

  if (v31)
  {
    v35 = *a1;
    if (ETLQtraceClearSend())
    {
      v36 = _ETLDIAGLoggingMSGSwitch(a1, a2);
      goto LABEL_71;
    }

    v23 = "Failed to send to clear QTraces";
    v24 = a2;
    v25 = 31;
LABEL_69:
    std::string::__assign_external(v24, v23, v25);
  }

LABEL_70:
  v36 = 0;
LABEL_71:
  if ((*(a1 + 20) & 1) == 0)
  {
    v37 = *a1;
    ETLFlushResponseFull();
  }

  if (*(a1 + 23))
  {
    v38 = v36;
    goto LABEL_75;
  }

  if ((*(a1 + 21) & 1) != 0 || *(a1 + 22) == 1)
  {
    usleep(0x55730u);
    v40 = *(a1 + 21);
    if (v40 & v36)
    {
      v41 = *a1;
      LOBYTE(v36) = ETLMaverickADPLEnable();
    }

    else
    {
      LOBYTE(v36) = (v40 ^ 1) & v36;
    }
  }

  v38 = (*(a1 + 22) ^ 1) & v36;
  if (((*(a1 + 22) ^ 1) & 1) != 0 || (v36 & 1) == 0)
  {
LABEL_75:
    if ((v38 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

  v42 = *a1;
  if (ETLMaverickQDSSEnable())
  {
LABEL_76:
    _ETLDebugPrint();
    result = 1;
    goto LABEL_89;
  }

LABEL_85:
  if (*(a2 + 23) < 0)
  {
    v43 = *a2;
  }

  _ETLDebugPrint();
LABEL_88:
  result = 0;
LABEL_89:
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t **ETLDIAGLoggingCreateHash(uint64_t *a1)
{
  v86[72] = *MEMORY[0x29EDCA608];
  v2 = operator new(0x18uLL);
  v2[1] = 0;
  v2[2] = 0;
  v77 = (v2 + 1);
  v78 = v2;
  *v2 = v2 + 1;
  memset(&v86[1], 170, 0x238uLL);
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v86[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  v86[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v86[0] = *(MEMORY[0x29EDC9518] + 8);
  *(v86 + *(v86[0] - 24)) = v5;
  v86[1] = 0;
  v6 = (v86 + *(v86[0] - 24));
  std::ios_base::init(v6, &v86[2]);
  v7 = MEMORY[0x29EDC9558] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v86[0] = v7;
  v86[53] = v4;
  MEMORY[0x29C274720](&v86[2]);
  v8 = v78;
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v86 + *(v86[0] - 24)), *(&v86[4] + *(v86[0] - 24)) | 4);
  }

  v9 = (v86 + *(v86[0] - 24));
  if (!v9->__rdstate_)
  {
    v10 = operator new(0x130uLL);
    *v10 = 0;
    v85 = xmmword_2977583E0;
    __str = v10;
    v11 = v9;
    while (1)
    {
      std::ios_base::getloc(v11);
      v14 = std::locale::use_facet(&v79, MEMORY[0x29EDC93D0]);
      v15 = (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v79);
      LOBYTE(v79.__locale_) = -86;
      MEMORY[0x29C274740](&v79, v86, 1);
      if (LOBYTE(v79.__locale_) != 1)
      {
        goto LABEL_9;
      }

      if (SHIBYTE(v85) < 0)
      {
        *__str = 0;
        *&v85 = 0;
      }

      else
      {
        LOBYTE(__str) = 0;
        HIBYTE(v85) = 0;
      }

      v17 = 0;
      v18 = v15;
      while (1)
      {
        v20 = *(&v86[5] + *(v86[0] - 24));
        v21 = v20[3];
        if (v21 == v20[4])
        {
          break;
        }

        v20[3] = v21 + 1;
        v22 = *v21;
LABEL_24:
        if (v18 == v22)
        {
          v12 = 0;
          goto LABEL_8;
        }

        v24 = HIBYTE(v85);
        if (SHIBYTE(v85) < 0)
        {
          v26 = (*(&v85 + 1) & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v85 == v26)
          {
            if ((*(&v85 + 1) & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            p_str = __str;
            if (v26 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
              v29 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_31:
              if (v26 + 1 > 2 * v26)
              {
                v27 = v26 + 1;
              }

              else
              {
                v27 = 2 * v26;
              }

              if ((v27 | 7) == 0x17)
              {
                v28 = 25;
              }

              else
              {
                v28 = (v27 | 7) + 1;
              }

              if (v27 >= 0x17)
              {
                v29 = v28;
              }

              else
              {
                v29 = 23;
              }

              v30 = v26 == 22;
            }

            v31 = operator new(v29);
            v32 = v31;
            if (v26)
            {
              memmove(v31, p_str, v26);
            }

            if (!v30)
            {
              operator delete(p_str);
            }

            __str = v32;
            *(&v85 + 1) = v29 | 0x8000000000000000;
            goto LABEL_47;
          }

          v32 = __str;
          v26 = v85;
LABEL_47:
          *&v85 = v26 + 1;
          v33 = &v32[v26];
          *v33 = v22;
          v33[1] = 0;
          --v17;
          if (SHIBYTE(v85) < 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (HIBYTE(v85) == 22)
          {
            p_str = &__str;
            v26 = 22;
            goto LABEL_31;
          }

          HIBYTE(v85) = (HIBYTE(v85) + 1) & 0x7F;
          v19 = &__str + v24;
          *v19 = v22;
          v19[1] = 0;
          --v17;
          if (SHIBYTE(v85) < 0)
          {
LABEL_20:
            if (v85 == 0x7FFFFFFFFFFFFFF7)
            {
              v12 = 4;
              goto LABEL_8;
            }
          }
        }
      }

      v23 = (*(*v20 + 80))(v20);
      v22 = v23;
      if (v23 != -1)
      {
        goto LABEL_24;
      }

      if (v17)
      {
        v12 = 2;
      }

      else
      {
        v12 = 6;
      }

LABEL_8:
      v8 = v78;
      std::ios_base::clear((v86 + *(v86[0] - 24)), *(&v86[4] + *(v86[0] - 24)) | v12);
LABEL_9:
      v13 = v86[0];
      if ((*(&v86[4] + *(v86[0] - 24)) & 5) == 0)
      {
        if (SHIBYTE(v85) < 0)
        {
          v16 = __str;
          if (*__str - 58 < 0xFFFFFFF6)
          {
            goto LABEL_10;
          }

          __lasts = 0xAAAAAAAAAAAAAAAALL;
        }

        else
        {
          if (__str - 58 < 0xFFFFFFF6)
          {
            goto LABEL_10;
          }

          __lasts = 0xAAAAAAAAAAAAAAAALL;
          v16 = &__str;
        }

        memset(__dst, 170, sizeof(__dst));
        v34 = strtok_r(v16, ":", &__lasts);
        v35 = strlen(v34);
        if (v35 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v36 = v35;
        if (v35 >= 0x17)
        {
          if ((v35 | 7) == 0x17)
          {
            v40 = 25;
          }

          else
          {
            v40 = (v35 | 7) + 1;
          }

          v37 = operator new(v40);
          __dst[1] = v36;
          __dst[2] = (v40 | 0x8000000000000000);
          __dst[0] = v37;
        }

        else
        {
          HIBYTE(__dst[2]) = v35;
          v37 = __dst;
          if (!v35)
          {
            LOBYTE(__dst[0]) = 0;
            v38 = SHIBYTE(__dst[2]);
            if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
            {
              goto LABEL_57;
            }

LABEL_64:
            if (!__dst[1])
            {
              goto LABEL_117;
            }

            v39 = __dst[0];
LABEL_66:
            locale = atoll(v39);
            memset(&v81, 170, sizeof(v81));
            v42 = strtok_r(0, "\n", &__lasts);
            v43 = strlen(v42);
            if (v43 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v44 = v43;
            if (v43 >= 0x17)
            {
              if ((v43 | 7) == 0x17)
              {
                v47 = 25;
              }

              else
              {
                v47 = (v43 | 7) + 1;
              }

              v45 = operator new(v47);
              v81.__r_.__value_.__l.__size_ = v44;
              v81.__r_.__value_.__r.__words[2] = v47 | 0x8000000000000000;
              v81.__r_.__value_.__r.__words[0] = v45;
            }

            else
            {
              *(&v81.__r_.__value_.__s + 23) = v43;
              v45 = &v81;
              if (!v43)
              {
                v81.__r_.__value_.__s.__data_[0] = 0;
                v46 = SHIBYTE(v81.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_70;
                }

LABEL_80:
                v48 = v81.__r_.__value_.__r.__words[0];
                if (v81.__r_.__value_.__l.__size_)
                {
                  v79.__locale_ = locale;
                  std::string::__init_copy_ctor_external(&__p, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
                  locale = v79.__locale_;
                  goto LABEL_82;
                }

LABEL_121:
                operator delete(v48);
                if (SHIBYTE(__dst[2]) < 0)
                {
LABEL_117:
                  operator delete(__dst[0]);
                }

LABEL_118:
                v13 = v86[0];
                goto LABEL_10;
              }
            }

            memmove(v45, v42, v44);
            v45->__r_.__value_.__s.__data_[v44] = 0;
            v46 = SHIBYTE(v81.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_80;
            }

LABEL_70:
            if (v46)
            {
              v79.__locale_ = locale;
              __p = v81;
LABEL_82:
              v49 = v77;
              while (1)
              {
                v50 = *v49;
                v51 = v49;
                if (!*v49)
                {
                  break;
                }

                while (1)
                {
                  v49 = v50;
                  v52 = *(v50 + 4);
                  if (locale < v52)
                  {
                    break;
                  }

                  if (v52 >= locale)
                  {
                    goto LABEL_114;
                  }

                  v50 = v49[1];
                  if (!v50)
                  {
                    v51 = v49 + 1;
                    goto LABEL_88;
                  }
                }
              }

LABEL_88:
              v53 = operator new(0x40uLL);
              *(v53 + 4) = locale;
              *(v53 + 40) = __p;
              memset(&__p, 0, sizeof(__p));
              *v53 = 0;
              *(v53 + 1) = 0;
              *(v53 + 2) = v49;
              *v51 = v53;
              v54 = **v78;
              if (v54)
              {
                *v78 = v54;
              }

              v55 = *v77;
              v56 = v53 == *v77;
              v53[24] = v56;
              if (!v56)
              {
                do
                {
                  v58 = *(v53 + 2);
                  if (v58[3])
                  {
                    break;
                  }

                  v59 = v58[2];
                  v60 = *v59;
                  if (*v59 == v58)
                  {
                    v63 = *(v59 + 1);
                    if (!v63 || (v64 = *(v63 + 24), v57 = (v63 + 24), v64 == 1))
                    {
                      if (*v58 != v53)
                      {
                        v65 = v58[1];
                        v66 = *v65;
                        v58[1] = *v65;
                        v67 = v58;
                        if (v66)
                        {
                          *(v66 + 16) = v58;
                          v59 = v58[2];
                          v67 = *v59;
                        }

                        v65[2] = v59;
                        *&v59[8 * (v67 != v58)] = v65;
                        *v65 = v58;
                        v58[2] = v65;
                        v59 = v65[2];
                        v60 = *v59;
                        v58 = v65;
                      }

                      *(v58 + 24) = 1;
                      v59[24] = 0;
                      v68 = *(v60 + 1);
                      *v59 = v68;
                      if (v68)
                      {
                        *(v68 + 16) = v59;
                      }

                      v69 = *(v59 + 2);
                      *(v60 + 2) = v69;
                      v69[*v69 != v59] = v60;
                      *(v60 + 1) = v59;
                      *(v59 + 2) = v60;
                      break;
                    }
                  }

                  else
                  {
                    if (!v60 || (v62 = v60[24], v61 = v60 + 24, v62 == 1))
                    {
                      v70 = *v58;
                      if (*v58 == v53)
                      {
                        v74 = v70[1];
                        *v58 = v74;
                        if (v74)
                        {
                          *(v74 + 16) = v58;
                          v59 = v58[2];
                        }

                        v70[2] = v59;
                        *&v59[8 * (*v59 != v58)] = v70;
                        v70[1] = v58;
                        v58[2] = v70;
                        v59 = v70[2];
                        *(v70 + 24) = 1;
                        v59[24] = 0;
                        v71 = *(v59 + 1);
                        v72 = *v71;
                        *(v59 + 1) = *v71;
                        if (v72)
                        {
LABEL_111:
                          *(v72 + 16) = v59;
                        }
                      }

                      else
                      {
                        *(v58 + 24) = 1;
                        v59[24] = 0;
                        v71 = *(v59 + 1);
                        v72 = *v71;
                        *(v59 + 1) = *v71;
                        if (v72)
                        {
                          goto LABEL_111;
                        }
                      }

                      v73 = *(v59 + 2);
                      v71[2] = v73;
                      v73[*v73 != v59] = v71;
                      *v71 = v59;
                      *(v59 + 2) = v71;
                      break;
                    }

                    v57 = v61;
                  }

                  *(v58 + 24) = 1;
                  v53 = v59;
                  v59[24] = v59 == v55;
                  *v57 = 1;
                }

                while (v59 != v55);
              }

              v78[2] = (v78[2] + 1);
LABEL_114:
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                v8 = v78;
                if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_116;
                }

LABEL_120:
                v48 = v81.__r_.__value_.__r.__words[0];
                goto LABEL_121;
              }

              operator delete(__p.__r_.__value_.__l.__data_);
              v8 = v78;
              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_120;
              }
            }

LABEL_116:
            if (SHIBYTE(__dst[2]) < 0)
            {
              goto LABEL_117;
            }

            goto LABEL_118;
          }
        }

        memmove(v37, v34, v36);
        *(v36 + v37) = 0;
        v38 = SHIBYTE(__dst[2]);
        if (SHIBYTE(__dst[2]) < 0)
        {
          goto LABEL_64;
        }

LABEL_57:
        if (v38)
        {
          v39 = __dst;
          goto LABEL_66;
        }

        goto LABEL_118;
      }

LABEL_10:
      v11 = (v86 + *(v13 - 24));
      if ((v11->__rdstate_ & 2) != 0)
      {
        if (!std::filebuf::close())
        {
          std::ios_base::clear((v86 + *(v86[0] - 24)), *(&v86[4] + *(v86[0] - 24)) | 4);
        }

        if (SHIBYTE(v85) < 0)
        {
          operator delete(__str);
        }

        break;
      }
    }
  }

  v86[0] = *MEMORY[0x29EDC9518];
  *(v86 + *(v86[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C274730](&v86[2]);
  std::istream::~istream();
  MEMORY[0x29C274800](&v86[53]);
  v75 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2977571FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38)
{
  __cxa_end_catch();
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a38);
  MEMORY[0x29C274800](a11);
  _Unwind_Resume(a1);
}

uint64_t ETLDIAGLoggingGetStringForKey(unint64_t a1, const char **a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  *a2 = "notfound.c:--WRONG HASH FILE--";
  v5 = a3[1];
  v3 = (a3 + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 == v3 || *(v6 + 4) > a1)
  {
    return 0;
  }

  v11 = v6 + 40;
  if (v6[63] < 0)
  {
    v11 = *v11;
  }

  *a2 = v11;
  return 1;
}

void ETLDIAGLoggingGetAvailableDMCNames(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = operator new(0x48uLL);
  v3 = 0;
  v2[8] = 0x1100000010;
  *v2 = xmmword_2977583F0;
  *(v2 + 1) = unk_297758400;
  *(v2 + 2) = xmmword_297758410;
  *(v2 + 3) = unk_297758420;
  do
  {
    while (1)
    {
      v4 = *(v2 + v3);
      v5 = ETLDMCKeyword();
      v6 = strlen(v5);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = v6;
      if (v6 < 0x17)
      {
        break;
      }

      if ((v6 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v6 | 7) + 1;
      }

      p_dst = operator new(v11);
      *(&__dst + 1) = v7;
      v23 = v11 | 0x8000000000000000;
      *&__dst = p_dst;
LABEL_12:
      memmove(p_dst, v5, v7);
      *(p_dst + v7) = 0;
      v10 = a1[1];
      v9 = a1[2];
      if (v10 >= v9)
      {
        goto LABEL_13;
      }

LABEL_2:
      *v10 = __dst;
      *(v10 + 2) = v23;
      a1[1] = v10 + 24;
      v3 += 4;
      if (v3 == 72)
      {
        goto LABEL_26;
      }
    }

    HIBYTE(v23) = v6;
    p_dst = &__dst;
    if (v6)
    {
      goto LABEL_12;
    }

    LOBYTE(__dst) = 0;
    v10 = a1[1];
    v9 = a1[2];
    if (v10 < v9)
    {
      goto LABEL_2;
    }

LABEL_13:
    v12 = *a1;
    v13 = v10 - *a1;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = operator new(24 * v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[8 * (v13 >> 3)];
    v19 = &v17[24 * v16];
    *v18 = __dst;
    *(v18 + 2) = v23;
    v20 = v18 + 24;
    v21 = &v18[-v13];
    memcpy(&v18[-v13], v12, v13);
    *a1 = v21;
    a1[2] = v19;
    if (v12)
    {
      operator delete(v12);
    }

    a1[1] = v20;
    v3 += 4;
  }

  while (v3 != 72);
LABEL_26:

  operator delete(v2);
}

void sub_2977575D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    operator delete(v16);
    std::vector<std::string>::~vector[abi:ne200100](v15);
    _Unwind_Resume(a1);
  }

  operator delete(v16);
  std::vector<std::string>::~vector[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6DCE8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t *std::list<ETLDiagQueryGUIDSubSysCMDCode>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v6 = 22;
    v7 = this;
LABEL_6:
    v9 = 2 * v6;
    if (__n > 2 * v6)
    {
      v9 = __n;
    }

    v10 = v9 | 7;
    if (v10 == 23)
    {
      v11 = 25;
    }

    else
    {
      v11 = v10 + 1;
    }

    v12 = operator new(v11);
    memcpy(v12, __s, __n);
    if (v6 != 22)
    {
      operator delete(v7);
    }

    this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    this->__r_.__value_.__r.__words[0] = v12;
    goto LABEL_14;
  }

  v8 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v6 = v8 - 1;
  if (__n > v8 - 1)
  {
    if (0x7FFFFFFFFFFFFFF7 - v8 < __n - (v8 - 1))
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = this->__r_.__value_.__r.__words[0];
    goto LABEL_6;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  memmove(this->__r_.__value_.__l.__data_, __s, __n);
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
    goto LABEL_15;
  }

LABEL_14:
  this->__r_.__value_.__l.__size_ = __n;
LABEL_15:
  *(v12 + __n) = 0;
  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C274730](a1 + 2);

  return std::istream::~istream();
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C274760](v23, a1);
  if (LOBYTE(v23[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v9 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
      v10 = a2 + a3;
      if ((v8 & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = a2 + a3;
      if ((*(v6 + 2) & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v11 - a2 < 1 || (*(*v7 + 96))(v7, a2, v11 - a2) == v11 - a2)
    {
      if (v16 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __b[1].__locale_ = v16;
          __b[2].__locale_ = (v18 | 0x8000000000000000);
          __b[0].__locale_ = v17;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v16;
          v17 = __b;
        }

        memset(v17, v9, v16);
        *(v17 + v16) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v20 = (*(*v7 + 96))(v7, locale, v16);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v21 = v20;
          operator delete(__b[0].__locale_);
          if (v21 != v16)
          {
            goto LABEL_35;
          }
        }

        else if (v20 != v16)
        {
          goto LABEL_35;
        }
      }

      if (v10 - v11 < 1 || (*(*v7 + 96))(v7, v11, v10 - v11) == v10 - v11)
      {
        *(v6 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x29C274770](v23);
  return a1;
}

void sub_297757E8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C274770](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x297757E60);
}

uint64_t ctu::hex0(ctu *this)
{
  return MEMORY[0x2A1C6F350](this);
}

{
  return MEMORY[0x2A1C6F358](this);
}

{
  return MEMORY[0x2A1C6F360](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}