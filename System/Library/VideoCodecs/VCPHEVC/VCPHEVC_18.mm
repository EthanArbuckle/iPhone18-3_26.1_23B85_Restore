uint64_t sub_2774AB1FC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AA8C0(a1, a2, a3, a4, a5, a6, 32, a7);

  return sub_2774AA8C0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 32, a7);
}

uint64_t sub_2774AB288(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AAD60(a1, a2, a3, a4, a5, a6, 0x20u, a7);

  return sub_2774AAD60(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x20u, a7);
}

uint64_t sub_2774AB314(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AA8C0(a1, a2, a3, a4, a5, a6, 16, a7);

  return sub_2774AA8C0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 16, a7);
}

uint64_t sub_2774AB3A0(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AAD60(a1, a2, a3, a4, a5, a6, 0x10u, a7);

  return sub_2774AAD60(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x10u, a7);
}

uint64_t sub_2774AB42C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AA8C0(a1, a2, a3, a4, a5, a6, 8, a7);

  return sub_2774AA8C0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 8, a7);
}

uint64_t sub_2774AB4B8(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AAD60(a1, a2, a3, a4, a5, a6, 8u, a7);

  return sub_2774AAD60(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8u, a7);
}

__int16 *sub_2774AB544(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  sub_2774AA83C(a1, a2, a3, a5, 4u, a7);

  return sub_2774AA83C(a1 + 1, a2, a3 + 32, a5 + 1, 4u, a7);
}

uint64_t sub_2774AB5BC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AA8C0(a1, a2, a3, a4, a5, a6, 4, a7);

  return sub_2774AA8C0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 4, a7);
}

uint64_t sub_2774AB648(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AAD60(a1, a2, a3, a4, a5, a6, 4u, a7);

  return sub_2774AAD60(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4u, a7);
}

void *sub_2774AB6D4(void *result)
{
  result[9] = sub_2773DB1D4;
  result[10] = sub_2773DB104;
  result[11] = sub_2773DAF98;
  result[12] = sub_2773DAE3C;
  result[13] = sub_2773DADF0;
  result[14] = sub_2773DACFC;
  result[15] = sub_2773DAC04;
  result[16] = sub_2773DAA54;
  result[17] = sub_2773DA8B4;
  result[18] = sub_2773DA854;
  result[19] = sub_2773DA6E8;
  result[20] = sub_2773DA570;
  result[21] = sub_2773DA330;
  result[22] = sub_2773DA108;
  result[23] = sub_2773DA07C;
  result[24] = sub_2773D9DFC;
  result[25] = sub_2773D9B50;
  result[26] = sub_2773D97D0;
  result[27] = sub_2773D945C;
  result[28] = sub_2773D9374;
  result[54] = sub_2773D92EC;
  return result;
}

void *sub_2774AB828(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, int a7, int a8)
{
  v12 = a4;
  v133 = *MEMORY[0x277D85DE8];
  v16 = (a4 >> 1) & 1;
  v127 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * a7 - 2];
    v18 = a8;
    v19 = __srca;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v128 = 2 * a2;
  v20 = ~a4 & 5;
  __n = 2 * (v16 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[1];
    v23 = *__src;
    v24 = *(a6 + 2);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0x7FF)
    {
      v32 = 2047;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = &__src[2 * (a7 - 1)];
    v35 = *&v34[2 * a2 - 2];
    v36 = *v34;
    v37 = *(a6 + 2 * (a7 - 1) + 2);
    v25 = __OFSUB__(v36, v37);
    v38 = v36 - v37;
    if ((v38 < 0) ^ v25 | (v38 == 0))
    {
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 | (v38 >> 31);
    v25 = __OFSUB__(v36, v35);
    v41 = v36 - v35;
    if ((v41 < 0) ^ v25 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + (v42 | (v41 >> 31)) + v40 + 2) + v36;
    if (v43 >= 0x7FF)
    {
      v44 = 2047;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = (a7 - 1);
  if ((v12 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (a6 + 4);
    v49 = __src;
    do
    {
      v50 = v49[a2];
      v52 = v49[1];
      ++v49;
      v51 = v52;
      v53 = *v48++;
      v54 = (v51 > v53) | ((v51 - v53) >> 31);
      v25 = __OFSUB__(v51, v50);
      v55 = v51 - v50;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = *(a3 + (v56 | (v55 >> 31)) + v54 + 2) + v51;
      if (v57 >= 0x7FF)
      {
        v58 = 2047;
      }

      else
      {
        v58 = v57;
      }

      if (v57 <= 0)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      *v49 = v59;
      --v47;
    }

    while (v47);
  }

  v60 = &__src[2 * a2];
  v123 = a8;
  v121 = a5;
  v122 = a7 - 1;
  v129 = a2;
  if (a8 < 3)
  {
    v71 = __dst;
  }

  else
  {
    v61 = &v131;
    LODWORD(v62) = v46 - (v16 ^ 1);
    v63 = !(v12 & 1);
    if (v62 <= v63)
    {
      v62 = !(v12 & 1);
    }

    else
    {
      v62 = v62;
    }

    v64 = v62 - v63 + 1;
    v65 = 2 * !(v12 & 1);
    v124 = v65 + 2;
    v125 = a5 + 1;
    v66 = &__src[v128 + v65];
    v67 = &__src[(v65 | (4 * a2)) - 2];
    v68 = -v63;
    v69 = __dst;
    v70 = 1;
    do
    {
      v71 = v61;
      result = memcpy(v61, v60, __n);
      v72 = 0;
      v73 = v67;
      v60 += v129;
      do
      {
        if (v68 == v72)
        {
          v74 = &v125[v70];
        }

        else
        {
          v74 = v73;
        }

        v75 = *v74;
        v76 = *&v66[2 * v72];
        v77 = *(&v69[v72] + v124);
        v25 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = v79 | (v78 >> 31);
        v25 = __OFSUB__(v76, v75);
        v81 = v76 - v75;
        if ((v81 < 0) ^ v25 | (v81 == 0))
        {
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *(a3 + (v82 | (v81 >> 31)) + v80 + 2) + v76;
        if (v83 >= 0x7FF)
        {
          v84 = 2047;
        }

        else
        {
          v84 = v83;
        }

        if (v83 <= 0)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        *&v66[2 * v72++] = v85;
        v73 += 2;
      }

      while (v64 != v72);
      ++v70;
      v66 += v128;
      v67 += v128;
      v61 = v69;
      v69 = v71;
    }

    while (v70 != v127);
  }

  if ((v12 & 0x40) != 0)
  {
    v86 = v60[v129 - 1];
    v87 = *v60;
    v88 = v71[1];
    v25 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v90 | (v89 >> 31);
    v25 = __OFSUB__(v87, v86);
    v92 = v87 - v86;
    if ((v92 < 0) ^ v25 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = *(a3 + (v93 | (v92 >> 31)) + v91 + 2) + v87;
    if (v94 >= 0x7FF)
    {
      v95 = 2047;
    }

    else
    {
      v95 = v94;
    }

    if (v94 <= 0)
    {
      v96 = 0;
    }

    else
    {
      v96 = v95;
    }

    *v60 = v96;
  }

  if ((v12 & 0xA) == 0xA)
  {
    v97 = &v60[v122];
    v98 = v97[v129 - 1];
    v99 = *v97;
    v100 = v71[v122 + 1];
    v25 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = v102 | (v101 >> 31);
    v25 = __OFSUB__(v99, v98);
    v104 = v99 - v98;
    if ((v104 < 0) ^ v25 | (v104 == 0))
    {
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(a3 + (v105 | (v104 >> 31)) + v103 + 2) + v99;
    if (v106 >= 0x7FF)
    {
      v107 = 2047;
    }

    else
    {
      v107 = v106;
    }

    if (v106 <= 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    *v97 = v108;
  }

  if ((v12 & 8) != 0)
  {
    v109 = v122 - 1;
    v110 = (v71 + 2);
    do
    {
      v111 = v60[v129];
      v113 = v60[1];
      ++v60;
      v112 = v113;
      v114 = *v110++;
      v115 = (v112 > v114) | ((v112 - v114) >> 31);
      v25 = __OFSUB__(v112, v111);
      v116 = v112 - v111;
      if ((v116 < 0) ^ v25 | (v116 == 0))
      {
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = *(a3 + (v117 | (v116 >> 31)) + v115 + 2) + v112;
      if (v118 >= 0x7FF)
      {
        v119 = 2047;
      }

      else
      {
        v119 = v118;
      }

      if (v118 <= 0)
      {
        v120 = 0;
      }

      else
      {
        v120 = v119;
      }

      *v60 = v120;
      --v109;
    }

    while (v109);
  }

  if (v123 >= 1)
  {
    return memcpy(v121, __srca, (2 * v123));
  }

  return result;
}

void *sub_2774ABCA4(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v125 = *MEMORY[0x277D85DE8];
  v14 = v122;
  v15 = 2 * a2;
  v119 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * a7 - 2];
    v17 = a8;
    v18 = __srca;
    do
    {
      *v18++ = *v16;
      v16 += v15;
      --v17;
    }

    while (v17);
  }

  v19 = a4 & 6;
  __n = 2 * a7;
  result = memcpy(v122, __src, __n);
  v121 = *a5;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 1);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[1];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0x7FF)
    {
      v32 = 2047;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v19 == 6)
  {
    v34 = &__src[2 * a7 - 2];
    v35 = *v34;
    v36 = a6[a7 - 2];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * a2 + 2];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0x7FF)
    {
      v44 = 2047;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = __src + 4;
    do
    {
      v49 = *(v48 - 1);
      v50 = *a6++;
      v51 = (v49 > v50) | ((v49 - v50) >> 31);
      v52 = *&v48[2 * a2];
      v24 = __OFSUB__(v49, v52);
      v53 = v49 - v52;
      if ((v53 < 0) ^ v24 | (v53 == 0))
      {
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(a3 + v51 + (v54 | (v53 >> 31)) + 2) + v49;
      if (v55 >= 0x7FF)
      {
        v56 = 2047;
      }

      else
      {
        v56 = v55;
      }

      if (v55 <= 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *(v48 - 1) = v57;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  v112 = a4 & 9;
  v115 = a8;
  v114 = a4;
  v113 = a7 - 1;
  if (a8 < 3)
  {
    v67 = &__src[2 * a2];
  }

  else
  {
    v58 = __src;
    v59 = &v123;
    v60 = 1;
    v61 = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    if (v61 <= !(a4 & 1))
    {
      v62 = !(a4 & 1);
    }

    else
    {
      v62 = v61;
    }

    v63 = v62 + 1;
    v117 = !(a4 & 1);
    v64 = &v58[((2 * v117) | (4 * a2)) + 2];
    do
    {
      v65 = v14;
      v14 = v59;
      v66 = (v65 - 1);
      v59 = v65;
      result = memcpy(v14, v21, __n);
      *(v14 - 1) = a5[v60];
      v67 = &v21[v15 / 2];
      v68 = v64;
      v69 = v117;
      do
      {
        v70 = v21[v69];
        v71 = *&v66[2 * v69];
        v24 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if ((v72 < 0) ^ v24 | (v72 == 0))
        {
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = *v68++;
        v75 = *(a3 + (v73 | (v72 >> 31)) + ((v70 > v74) | ((v70 - v74) >> 31)) + 2) + v70;
        if (v75 >= 0x7FF)
        {
          v76 = 2047;
        }

        else
        {
          v76 = v75;
        }

        if (v75 <= 0)
        {
          v77 = 0;
        }

        else
        {
          v77 = v76;
        }

        v21[v69++] = v77;
      }

      while (v63 != v69);
      ++v60;
      v64 += v15;
      v21 = (v21 + v15);
    }

    while (v60 != v119);
  }

  if (v112 == 9)
  {
    v78 = *v67;
    v79 = *(v14 - 1);
    v24 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if ((v80 < 0) ^ v24 | (v80 == 0))
    {
      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v82 = v81 | (v80 >> 31);
    v83 = v67[a2 + 1];
    v24 = __OFSUB__(v78, v83);
    v84 = v78 - v83;
    if ((v84 < 0) ^ v24 | (v84 == 0))
    {
      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = *(a3 + v82 + (v85 | (v84 >> 31)) + 2) + v78;
    if (v86 >= 0x7FF)
    {
      v87 = 2047;
    }

    else
    {
      v87 = v86;
    }

    if (v86 <= 0)
    {
      v88 = 0;
    }

    else
    {
      v88 = v87;
    }

    *v67 = v88;
  }

  if (v114 < 0)
  {
    v89 = &v67[v113];
    v90 = *v89;
    v91 = v14[v113 - 1];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[a2 + 1];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0x7FF)
    {
      v99 = 2047;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((v114 & 8) != 0)
  {
    v101 = v113 - 1;
    v102 = v67 + 2;
    do
    {
      v103 = *(v102 - 1);
      v104 = *v14++;
      v105 = (v103 > v104) | ((v103 - v104) >> 31);
      v106 = v102[a2];
      v24 = __OFSUB__(v103, v106);
      v107 = v103 - v106;
      if ((v107 < 0) ^ v24 | (v107 == 0))
      {
        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = *(a3 + v105 + (v108 | (v107 >> 31)) + 2) + v103;
      if (v109 >= 0x7FF)
      {
        v110 = 2047;
      }

      else
      {
        v110 = v109;
      }

      if (v109 <= 0)
      {
        v111 = 0;
      }

      else
      {
        v111 = v110;
      }

      *(v102++ - 1) = v111;
      --v101;
    }

    while (v101);
  }

  if (v115 >= 1)
  {
    return memcpy(a5, __srca, (2 * v115));
  }

  return result;
}

void *sub_2774AC118(void *result)
{
  result[33] = sub_2774ACFC4;
  result[29] = sub_2773E4020;
  result[30] = sub_2773E3F38;
  result[31] = sub_2773E3DBC;
  result[32] = sub_2773E3C50;
  result[34] = sub_2773E3B50;
  result[35] = sub_2773E3A44;
  result[36] = sub_2773E3888;
  result[37] = sub_2773E36DC;
  result[39] = sub_2773E3564;
  result[40] = sub_2773E33D8;
  result[41] = sub_2773E318C;
  result[42] = sub_2773E2F58;
  result[44] = sub_2773E2B00;
  result[45] = sub_2773E2790;
  result[46] = sub_2773E2348;
  result[47] = sub_2773E1F0C;
  result[38] = sub_2773E2E9C;
  result[43] = sub_2773E2D8C;
  result[48] = sub_2773E1C5C;
  result[49] = sub_2773E2A50;
  result[50] = sub_2773E26D0;
  result[51] = sub_2773E2288;
  result[52] = sub_2773E1E4C;
  result[53] = sub_2773E1BF4;
  result[55] = sub_2773D7354;
  return result;
}

__int16 *sub_2774AC2BC(__int16 *result, uint64_t a2, uint64_t a3, __int16 *a4, unsigned int a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = &result[2 * a5 - 2];
    v7 = a6;
    v8 = 2 * a2;
    do
    {
      *a4 = *v6;
      a4 += 2;
      v6 = (v6 + v8);
      --v7;
    }

    while (v7);
    for (i = 0; i != a6; ++i)
    {
      v10 = result;
      v11 = a5;
      do
      {
        v12 = *(a3 + (*v10 >> 5)) + *v10;
        if (v12 >= 0x3FF)
        {
          v13 = 1023;
        }

        else
        {
          v13 = *(a3 + (*v10 >> 5)) + *v10;
        }

        if (v12 <= 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        *v10 = v14;
        v10 += 2;
        --v11;
      }

      while (v11);
      result = (result + v8);
    }
  }

  return result;
}

uint64_t sub_2774AC340(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7, int a8)
{
  v130 = *MEMORY[0x277D85DE8];
  v14 = (a4 >> 1) & 1;
  v15 = 2 * a7;
  v125 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * v15 - 4];
    v17 = a8;
    v18 = v129;
    do
    {
      *v18++ = *v16;
      v16 += 2 * a2;
      --v17;
    }

    while (v17);
  }

  v123 = a4;
  v19 = ~a4 & 5;
  __n = 4 * (v14 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v19)
  {
    v21 = a5[2];
    v22 = *__src;
    v23 = *(a6 + 4);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v24 = __OFSUB__(v22, v21);
    v28 = v22 - v21;
    if ((v28 < 0) ^ v24 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + (v29 | (v28 >> 31)) + v27 + 2) + v22;
    if (v30 >= 0x3FF)
    {
      v31 = 1023;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  v33 = &__src[2 * a2];
  if ((v123 & 0x20) != 0)
  {
    v34 = *&v33[2 * v15 - 8];
    v35 = *&__src[2 * v15 - 4];
    v36 = *(a6 + 2 * v15);
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v24 = __OFSUB__(v35, v34);
    v40 = v35 - v34;
    if ((v40 < 0) ^ v24 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + (v41 | (v40 >> 31)) + v39 + 2) + v35;
    if (v42 >= 0x3FF)
    {
      v43 = 1023;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *&__src[2 * v15 - 4] = v44;
  }

  if ((v123 & 4) != 0)
  {
    v46 = 0;
    v45 = (a7 - 1);
    v47 = v45 - 1;
    v48 = 4;
    do
    {
      v49 = *&v33[v46 >> 31];
      v50 = *&__src[2 * v48 - 4];
      v51 = *(a6 + 2 * v48);
      v24 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if ((v52 < 0) ^ v24 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 | (v52 >> 31);
      v24 = __OFSUB__(v50, v49);
      v55 = v50 - v49;
      if ((v55 < 0) ^ v24 | (v55 == 0))
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      v56 = *(a3 + ((result | (v55 >> 31)) + v54 + 2)) + v50;
      if (v56 >= 0x3FF)
      {
        v57 = 1023;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *&__src[2 * v48 - 4] = v58;
      v48 += 2;
      v46 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v122 = v45;
  if (a8 < 3)
  {
    v67 = __dst;
  }

  else
  {
    v59 = &v128;
    v60 = v45 - (v14 ^ 1);
    v61 = !(v123 & 1);
    if (v60 <= v61)
    {
      v62 = !(v123 & 1);
    }

    else
    {
      v62 = v60;
    }

    v63 = v62 + 1;
    v64 = __dst;
    v65 = 1;
    v66 = &__src[2 * a2];
    do
    {
      v67 = v59;
      result = memcpy(v59, v66, __n);
      v33 = &v66[2 * a2];
      v68 = v61;
      v69 = !(v123 & 1);
      do
      {
        v70 = &v33[1 * v68 - 4];
        if (!v69)
        {
          v70 = &a5[2 * v65 + 2];
        }

        v71 = *&v66[1 * v68];
        v72 = *v70;
        v73 = LOWORD(v64[v68 + 1]);
        v24 = __OFSUB__(v71, v73);
        v74 = v71 - v73;
        if ((v74 < 0) ^ v24 | (v74 == 0))
        {
          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = v75 | (v74 >> 31);
        v24 = __OFSUB__(v71, v72);
        v77 = v71 - v72;
        if ((v77 < 0) ^ v24 | (v77 == 0))
        {
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = *(a3 + (v78 | (v77 >> 31)) + v76 + 2) + v71;
        if (v79 >= 0x3FF)
        {
          v80 = 1023;
        }

        else
        {
          v80 = v79;
        }

        if (v79 <= 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = v80;
        }

        *&v66[1 * v68] = v81;
        ++v69;
        ++v68;
      }

      while (v63 != v69);
      ++v65;
      v66 += 2 * a2;
      v59 = v64;
      v64 = v67;
    }

    while (v65 != v125);
  }

  v82 = &v33[2 * a2];
  if ((v123 & 0x40) != 0)
  {
    v83 = *(v82 - 2);
    v84 = *v33;
    v85 = *(v67 + 2);
    v24 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if ((v86 < 0) ^ v24 | (v86 == 0))
    {
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87 | (v86 >> 31);
    v24 = __OFSUB__(v84, v83);
    v89 = v84 - v83;
    if ((v89 < 0) ^ v24 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(a3 + (v90 | (v89 >> 31)) + v88 + 2) + v84;
    if (v91 >= 0x3FF)
    {
      v92 = 1023;
    }

    else
    {
      v92 = v91;
    }

    if (v91 <= 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    *v33 = v93;
  }

  if ((v123 & 0xA) == 0xA)
  {
    v94 = &v33[4 * v122];
    v95 = v94[a2 - 2];
    v96 = LOWORD(v67[v122 + 1]);
    v97 = *v94;
    v24 = __OFSUB__(v97, v96);
    v98 = v97 - v96;
    if ((v98 < 0) ^ v24 | (v98 == 0))
    {
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = v99 | (v98 >> 31);
    v24 = __OFSUB__(v97, v95);
    v101 = v97 - v95;
    if ((v101 < 0) ^ v24 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *(a3 + (v102 | (v101 >> 31)) + v100 + 2) + v97;
    if (v103 >= 0x3FF)
    {
      v104 = 1023;
    }

    else
    {
      v104 = v103;
    }

    if (v103 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }

    *v94 = v105;
  }

  if ((v123 & 8) != 0)
  {
    v106 = 0;
    v107 = v122 - 1;
    v108 = 2;
    do
    {
      v109 = *&v82[v106 >> 31];
      v110 = *&v33[1 * v108 - 4];
      v111 = LOWORD(v67[v108]);
      v24 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if ((v112 < 0) ^ v24 | (v112 == 0))
      {
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      result = v113 | (v112 >> 31);
      v24 = __OFSUB__(v110, v109);
      v114 = v110 - v109;
      if ((v114 < 0) ^ v24 | (v114 == 0))
      {
        v115 = 0;
      }

      else
      {
        v115 = 1;
      }

      v116 = *(a3 + (v115 | (v114 >> 31)) + result + 2) + v110;
      if (v116 >= 0x3FF)
      {
        v117 = 1023;
      }

      else
      {
        v117 = v116;
      }

      if (v116 <= 0)
      {
        v118 = 0;
      }

      else
      {
        v118 = v117;
      }

      *&v33[1 * v108++ - 4] = v118;
      v106 += 0x200000000;
      --v107;
    }

    while (v107);
  }

  if (a8 >= 1)
  {
    v119 = a8;
    v120 = v129;
    do
    {
      v121 = *v120++;
      *a5 = v121;
      a5 += 2;
      --v119;
    }

    while (v119);
  }

  return result;
}

uint64_t sub_2774AC7E0(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v15 = v125;
  v16 = 2 * a7;
  v122 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * v16 - 4];
    v18 = a8;
    v19 = v127;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v123 = a2;
  v20 = a4 & 6;
  __n = 4 * a7;
  memcpy(v125, __src, __n);
  v124 = *a5;
  v118 = a2;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 2);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[2];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0x3FF)
    {
      v32 = 1023;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v20 == 6)
  {
    v34 = &__src[2 * v16];
    v35 = *(v34 - 2);
    v36 = a6[v16 - 4];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * v118];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0x3FF)
    {
      v44 = 1023;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *(v34 - 2) = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (__src + 4);
    v49 = 0x400000000;
    do
    {
      v50 = *v48;
      v51 = *a6;
      a6 += 2;
      v52 = (v50 > v51) | ((v50 - v51) >> 31);
      v53 = *(v21 + (v49 >> 31));
      v24 = __OFSUB__(v50, v53);
      v54 = v50 - v53;
      if ((v54 < 0) ^ v24 | (v54 == 0))
      {
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = *(a3 + v52 + (v55 | (v54 >> 31)) + 2) + v50;
      if (v56 >= 0x3FF)
      {
        v57 = 1023;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *v48 = v58;
      v48 += 2;
      v49 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  v117 = a8;
  v116 = a7 - 1;
  if (a8 < 3)
  {
    v64 = v125;
    v65 = v21;
  }

  else
  {
    v59 = &v126;
    v60 = 1;
    LODWORD(v61) = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v61 = !(a4 & 1);
    }

    else
    {
      v61 = v61;
    }

    v120 = v61 - v62 + 1;
    v63 = (v62 << 33) + 0x200000000;
    do
    {
      v64 = v59;
      memcpy(v59, v21, __n);
      *(v64 - 2) = a5[2 * v60];
      v65 = &v21[v123];
      v66 = 2 * !(a4 & 1);
      v67 = v63;
      v68 = v120;
      do
      {
        v69 = v21[v66];
        v70 = v15[v66 - 2];
        v24 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if ((v71 < 0) ^ v24 | (v71 == 0))
        {
          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        v73 = *(a3 + (v72 | (v71 >> 31)) + ((v69 > *(v65 + (v67 >> 31))) | ((v69 - *(v65 + (v67 >> 31))) >> 31)) + 2) + v69;
        if (v73 >= 0x3FF)
        {
          v74 = 1023;
        }

        else
        {
          v74 = v73;
        }

        if (v73 <= 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = v74;
        }

        v21[v66] = v75;
        v67 += 0x200000000;
        v66 += 2;
        --v68;
      }

      while (v68);
      ++v60;
      v21 = (v21 + v123 * 2);
      v59 = v15;
      v15 = v64;
    }

    while (v60 != v122);
  }

  v76 = &v65[v118];
  if ((a4 & 9) == 9)
  {
    v77 = *v65;
    v78 = *(v64 - 2);
    v24 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if ((v79 < 0) ^ v24 | (v79 == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v80 | (v79 >> 31);
    v82 = v76[2];
    v24 = __OFSUB__(v77, v82);
    v83 = v77 - v82;
    if ((v83 < 0) ^ v24 | (v83 == 0))
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(a3 + v81 + (v84 | (v83 >> 31)) + 2) + v77;
    if (v85 >= 0x3FF)
    {
      v86 = 1023;
    }

    else
    {
      v86 = v85;
    }

    if (v85 <= 0)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    *v65 = v87;
  }

  result = v117;
  if ((a4 & 0x80) != 0)
  {
    v89 = &v65[2 * v116];
    v90 = *v89;
    v91 = v64[2 * v116 - 2];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[v118 + 2];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0x3FF)
    {
      v99 = 1023;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((a4 & 8) != 0)
  {
    v101 = v116 - 1;
    v102 = (v65 + 2);
    v103 = 0x400000000;
    do
    {
      v104 = *v102;
      v105 = *v64;
      v64 += 2;
      v106 = (v104 > v105) | ((v104 - v105) >> 31);
      v107 = *(v76 + (v103 >> 31));
      v24 = __OFSUB__(v104, v107);
      v108 = v104 - v107;
      if ((v108 < 0) ^ v24 | (v108 == 0))
      {
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(a3 + v106 + (v109 | (v108 >> 31)) + 2) + v104;
      if (v110 >= 0x3FF)
      {
        v111 = 1023;
      }

      else
      {
        v111 = v110;
      }

      if (v110 <= 0)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }

      *v102 = v112;
      v102 += 2;
      v103 += 0x200000000;
      --v101;
    }

    while (v101);
  }

  if (v117 >= 1)
  {
    v113 = v117;
    v114 = v127;
    do
    {
      v115 = *v114++;
      *a5 = v115;
      a5 += 2;
      --v113;
    }

    while (v113);
  }

  return result;
}

uint64_t sub_2774ACC7C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AC340(a1, a2, a3, a4, a5, a6, 32, a7);

  return sub_2774AC340(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 32, a7);
}

uint64_t sub_2774ACD08(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AC7E0(a1, a2, a3, a4, a5, a6, 0x20u, a7);

  return sub_2774AC7E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x20u, a7);
}

uint64_t sub_2774ACD94(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AC340(a1, a2, a3, a4, a5, a6, 16, a7);

  return sub_2774AC340(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 16, a7);
}

uint64_t sub_2774ACE20(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AC7E0(a1, a2, a3, a4, a5, a6, 0x10u, a7);

  return sub_2774AC7E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x10u, a7);
}

uint64_t sub_2774ACEAC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AC340(a1, a2, a3, a4, a5, a6, 8, a7);

  return sub_2774AC340(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 8, a7);
}

uint64_t sub_2774ACF38(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AC7E0(a1, a2, a3, a4, a5, a6, 8u, a7);

  return sub_2774AC7E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8u, a7);
}

__int16 *sub_2774ACFC4(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  sub_2774AC2BC(a1, a2, a3, a5, 4u, a7);

  return sub_2774AC2BC(a1 + 1, a2, a3 + 32, a5 + 1, 4u, a7);
}

uint64_t sub_2774AD03C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AC340(a1, a2, a3, a4, a5, a6, 4, a7);

  return sub_2774AC340(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 4, a7);
}

uint64_t sub_2774AD0C8(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AC7E0(a1, a2, a3, a4, a5, a6, 4u, a7);

  return sub_2774AC7E0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4u, a7);
}

void *sub_2774AD154(void *result)
{
  result[9] = sub_2773D923C;
  result[10] = sub_2773D916C;
  result[11] = sub_2773D9000;
  result[12] = sub_2773D8EA4;
  result[13] = sub_2773D8E58;
  result[14] = sub_2773D8D64;
  result[15] = sub_2773D8C6C;
  result[16] = sub_2773D8ABC;
  result[17] = sub_2773D891C;
  result[18] = sub_2773D88BC;
  result[19] = sub_2773D8750;
  result[20] = sub_2773D85D8;
  result[21] = sub_2773D8398;
  result[22] = sub_2773D8170;
  result[23] = sub_2773D80E4;
  result[24] = sub_2773D7E64;
  result[25] = sub_2773D7BB8;
  result[26] = sub_2773D7838;
  result[27] = sub_2773D74C4;
  result[28] = sub_2773D73DC;
  result[54] = sub_2773D7354;
  return result;
}

void *sub_2774AD2A8(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, int a7, int a8)
{
  v12 = a4;
  v133 = *MEMORY[0x277D85DE8];
  v16 = (a4 >> 1) & 1;
  v127 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * a7 - 2];
    v18 = a8;
    v19 = __srca;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v128 = 2 * a2;
  v20 = ~a4 & 5;
  __n = 2 * (v16 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[1];
    v23 = *__src;
    v24 = *(a6 + 2);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0x3FF)
    {
      v32 = 1023;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = &__src[2 * (a7 - 1)];
    v35 = *&v34[2 * a2 - 2];
    v36 = *v34;
    v37 = *(a6 + 2 * (a7 - 1) + 2);
    v25 = __OFSUB__(v36, v37);
    v38 = v36 - v37;
    if ((v38 < 0) ^ v25 | (v38 == 0))
    {
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 | (v38 >> 31);
    v25 = __OFSUB__(v36, v35);
    v41 = v36 - v35;
    if ((v41 < 0) ^ v25 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + (v42 | (v41 >> 31)) + v40 + 2) + v36;
    if (v43 >= 0x3FF)
    {
      v44 = 1023;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = (a7 - 1);
  if ((v12 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (a6 + 4);
    v49 = __src;
    do
    {
      v50 = v49[a2];
      v52 = v49[1];
      ++v49;
      v51 = v52;
      v53 = *v48++;
      v54 = (v51 > v53) | ((v51 - v53) >> 31);
      v25 = __OFSUB__(v51, v50);
      v55 = v51 - v50;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = *(a3 + (v56 | (v55 >> 31)) + v54 + 2) + v51;
      if (v57 >= 0x3FF)
      {
        v58 = 1023;
      }

      else
      {
        v58 = v57;
      }

      if (v57 <= 0)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      *v49 = v59;
      --v47;
    }

    while (v47);
  }

  v60 = &__src[2 * a2];
  v123 = a8;
  v121 = a5;
  v122 = a7 - 1;
  v129 = a2;
  if (a8 < 3)
  {
    v71 = __dst;
  }

  else
  {
    v61 = &v131;
    LODWORD(v62) = v46 - (v16 ^ 1);
    v63 = !(v12 & 1);
    if (v62 <= v63)
    {
      v62 = !(v12 & 1);
    }

    else
    {
      v62 = v62;
    }

    v64 = v62 - v63 + 1;
    v65 = 2 * !(v12 & 1);
    v124 = v65 + 2;
    v125 = a5 + 1;
    v66 = &__src[v128 + v65];
    v67 = &__src[(v65 | (4 * a2)) - 2];
    v68 = -v63;
    v69 = __dst;
    v70 = 1;
    do
    {
      v71 = v61;
      result = memcpy(v61, v60, __n);
      v72 = 0;
      v73 = v67;
      v60 += v129;
      do
      {
        if (v68 == v72)
        {
          v74 = &v125[v70];
        }

        else
        {
          v74 = v73;
        }

        v75 = *v74;
        v76 = *&v66[2 * v72];
        v77 = *(&v69[v72] + v124);
        v25 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = v79 | (v78 >> 31);
        v25 = __OFSUB__(v76, v75);
        v81 = v76 - v75;
        if ((v81 < 0) ^ v25 | (v81 == 0))
        {
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *(a3 + (v82 | (v81 >> 31)) + v80 + 2) + v76;
        if (v83 >= 0x3FF)
        {
          v84 = 1023;
        }

        else
        {
          v84 = v83;
        }

        if (v83 <= 0)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        *&v66[2 * v72++] = v85;
        v73 += 2;
      }

      while (v64 != v72);
      ++v70;
      v66 += v128;
      v67 += v128;
      v61 = v69;
      v69 = v71;
    }

    while (v70 != v127);
  }

  if ((v12 & 0x40) != 0)
  {
    v86 = v60[v129 - 1];
    v87 = *v60;
    v88 = v71[1];
    v25 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v90 | (v89 >> 31);
    v25 = __OFSUB__(v87, v86);
    v92 = v87 - v86;
    if ((v92 < 0) ^ v25 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = *(a3 + (v93 | (v92 >> 31)) + v91 + 2) + v87;
    if (v94 >= 0x3FF)
    {
      v95 = 1023;
    }

    else
    {
      v95 = v94;
    }

    if (v94 <= 0)
    {
      v96 = 0;
    }

    else
    {
      v96 = v95;
    }

    *v60 = v96;
  }

  if ((v12 & 0xA) == 0xA)
  {
    v97 = &v60[v122];
    v98 = v97[v129 - 1];
    v99 = *v97;
    v100 = v71[v122 + 1];
    v25 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = v102 | (v101 >> 31);
    v25 = __OFSUB__(v99, v98);
    v104 = v99 - v98;
    if ((v104 < 0) ^ v25 | (v104 == 0))
    {
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(a3 + (v105 | (v104 >> 31)) + v103 + 2) + v99;
    if (v106 >= 0x3FF)
    {
      v107 = 1023;
    }

    else
    {
      v107 = v106;
    }

    if (v106 <= 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    *v97 = v108;
  }

  if ((v12 & 8) != 0)
  {
    v109 = v122 - 1;
    v110 = (v71 + 2);
    do
    {
      v111 = v60[v129];
      v113 = v60[1];
      ++v60;
      v112 = v113;
      v114 = *v110++;
      v115 = (v112 > v114) | ((v112 - v114) >> 31);
      v25 = __OFSUB__(v112, v111);
      v116 = v112 - v111;
      if ((v116 < 0) ^ v25 | (v116 == 0))
      {
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = *(a3 + (v117 | (v116 >> 31)) + v115 + 2) + v112;
      if (v118 >= 0x3FF)
      {
        v119 = 1023;
      }

      else
      {
        v119 = v118;
      }

      if (v118 <= 0)
      {
        v120 = 0;
      }

      else
      {
        v120 = v119;
      }

      *v60 = v120;
      --v109;
    }

    while (v109);
  }

  if (v123 >= 1)
  {
    return memcpy(v121, __srca, (2 * v123));
  }

  return result;
}

void *sub_2774AD724(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v125 = *MEMORY[0x277D85DE8];
  v14 = v122;
  v15 = 2 * a2;
  v119 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * a7 - 2];
    v17 = a8;
    v18 = __srca;
    do
    {
      *v18++ = *v16;
      v16 += v15;
      --v17;
    }

    while (v17);
  }

  v19 = a4 & 6;
  __n = 2 * a7;
  result = memcpy(v122, __src, __n);
  v121 = *a5;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 1);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[1];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0x3FF)
    {
      v32 = 1023;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v19 == 6)
  {
    v34 = &__src[2 * a7 - 2];
    v35 = *v34;
    v36 = a6[a7 - 2];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * a2 + 2];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0x3FF)
    {
      v44 = 1023;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = __src + 4;
    do
    {
      v49 = *(v48 - 1);
      v50 = *a6++;
      v51 = (v49 > v50) | ((v49 - v50) >> 31);
      v52 = *&v48[2 * a2];
      v24 = __OFSUB__(v49, v52);
      v53 = v49 - v52;
      if ((v53 < 0) ^ v24 | (v53 == 0))
      {
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(a3 + v51 + (v54 | (v53 >> 31)) + 2) + v49;
      if (v55 >= 0x3FF)
      {
        v56 = 1023;
      }

      else
      {
        v56 = v55;
      }

      if (v55 <= 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *(v48 - 1) = v57;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  v112 = a4 & 9;
  v115 = a8;
  v114 = a4;
  v113 = a7 - 1;
  if (a8 < 3)
  {
    v67 = &__src[2 * a2];
  }

  else
  {
    v58 = __src;
    v59 = &v123;
    v60 = 1;
    v61 = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    if (v61 <= !(a4 & 1))
    {
      v62 = !(a4 & 1);
    }

    else
    {
      v62 = v61;
    }

    v63 = v62 + 1;
    v117 = !(a4 & 1);
    v64 = &v58[((2 * v117) | (4 * a2)) + 2];
    do
    {
      v65 = v14;
      v14 = v59;
      v66 = (v65 - 1);
      v59 = v65;
      result = memcpy(v14, v21, __n);
      *(v14 - 1) = a5[v60];
      v67 = &v21[v15 / 2];
      v68 = v64;
      v69 = v117;
      do
      {
        v70 = v21[v69];
        v71 = *&v66[2 * v69];
        v24 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if ((v72 < 0) ^ v24 | (v72 == 0))
        {
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = *v68++;
        v75 = *(a3 + (v73 | (v72 >> 31)) + ((v70 > v74) | ((v70 - v74) >> 31)) + 2) + v70;
        if (v75 >= 0x3FF)
        {
          v76 = 1023;
        }

        else
        {
          v76 = v75;
        }

        if (v75 <= 0)
        {
          v77 = 0;
        }

        else
        {
          v77 = v76;
        }

        v21[v69++] = v77;
      }

      while (v63 != v69);
      ++v60;
      v64 += v15;
      v21 = (v21 + v15);
    }

    while (v60 != v119);
  }

  if (v112 == 9)
  {
    v78 = *v67;
    v79 = *(v14 - 1);
    v24 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if ((v80 < 0) ^ v24 | (v80 == 0))
    {
      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v82 = v81 | (v80 >> 31);
    v83 = v67[a2 + 1];
    v24 = __OFSUB__(v78, v83);
    v84 = v78 - v83;
    if ((v84 < 0) ^ v24 | (v84 == 0))
    {
      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = *(a3 + v82 + (v85 | (v84 >> 31)) + 2) + v78;
    if (v86 >= 0x3FF)
    {
      v87 = 1023;
    }

    else
    {
      v87 = v86;
    }

    if (v86 <= 0)
    {
      v88 = 0;
    }

    else
    {
      v88 = v87;
    }

    *v67 = v88;
  }

  if (v114 < 0)
  {
    v89 = &v67[v113];
    v90 = *v89;
    v91 = v14[v113 - 1];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[a2 + 1];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0x3FF)
    {
      v99 = 1023;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((v114 & 8) != 0)
  {
    v101 = v113 - 1;
    v102 = v67 + 2;
    do
    {
      v103 = *(v102 - 1);
      v104 = *v14++;
      v105 = (v103 > v104) | ((v103 - v104) >> 31);
      v106 = v102[a2];
      v24 = __OFSUB__(v103, v106);
      v107 = v103 - v106;
      if ((v107 < 0) ^ v24 | (v107 == 0))
      {
        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = *(a3 + v105 + (v108 | (v107 >> 31)) + 2) + v103;
      if (v109 >= 0x3FF)
      {
        v110 = 1023;
      }

      else
      {
        v110 = v109;
      }

      if (v109 <= 0)
      {
        v111 = 0;
      }

      else
      {
        v111 = v110;
      }

      *(v102++ - 1) = v111;
      --v101;
    }

    while (v101);
  }

  if (v115 >= 1)
  {
    return memcpy(a5, __srca, (2 * v115));
  }

  return result;
}

void *sub_2774ADB98(void *result)
{
  result[33] = sub_2774AEA44;
  result[29] = sub_2773E1B34;
  result[30] = sub_2773E1A4C;
  result[31] = sub_2773E18D0;
  result[32] = sub_2773E1764;
  result[34] = sub_2773E1664;
  result[35] = sub_2773E1558;
  result[36] = sub_2773E139C;
  result[37] = sub_2773E11F0;
  result[39] = sub_2773E1078;
  result[40] = sub_2773E0EEC;
  result[41] = sub_2773E0CA0;
  result[42] = sub_2773E0A6C;
  result[44] = sub_2773E0614;
  result[45] = sub_2773E02A4;
  result[46] = sub_2773DFE5C;
  result[47] = sub_2773DFA20;
  result[38] = sub_2773E09B0;
  result[43] = sub_2773E08A0;
  result[48] = sub_2773DF770;
  result[49] = sub_2773E0564;
  result[50] = sub_2773E01E4;
  result[51] = sub_2773DFD9C;
  result[52] = sub_2773DF960;
  result[53] = sub_2773DF708;
  result[55] = sub_2773D53BC;
  return result;
}

__int16 *sub_2774ADD3C(__int16 *result, uint64_t a2, uint64_t a3, __int16 *a4, unsigned int a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = &result[2 * a5 - 2];
    v7 = a6;
    v8 = 2 * a2;
    do
    {
      *a4 = *v6;
      a4 += 2;
      v6 = (v6 + v8);
      --v7;
    }

    while (v7);
    for (i = 0; i != a6; ++i)
    {
      v10 = result;
      v11 = a5;
      do
      {
        v12 = *(a3 + (*v10 >> 4)) + *v10;
        if (v12 >= 0x1FF)
        {
          v13 = 511;
        }

        else
        {
          v13 = *(a3 + (*v10 >> 4)) + *v10;
        }

        if (v12 <= 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        *v10 = v14;
        v10 += 2;
        --v11;
      }

      while (v11);
      result = (result + v8);
    }
  }

  return result;
}

uint64_t sub_2774ADDC0(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7, int a8)
{
  v130 = *MEMORY[0x277D85DE8];
  v14 = (a4 >> 1) & 1;
  v15 = 2 * a7;
  v125 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * v15 - 4];
    v17 = a8;
    v18 = v129;
    do
    {
      *v18++ = *v16;
      v16 += 2 * a2;
      --v17;
    }

    while (v17);
  }

  v123 = a4;
  v19 = ~a4 & 5;
  __n = 4 * (v14 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v19)
  {
    v21 = a5[2];
    v22 = *__src;
    v23 = *(a6 + 4);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v24 = __OFSUB__(v22, v21);
    v28 = v22 - v21;
    if ((v28 < 0) ^ v24 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + (v29 | (v28 >> 31)) + v27 + 2) + v22;
    if (v30 >= 0x1FF)
    {
      v31 = 511;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  v33 = &__src[2 * a2];
  if ((v123 & 0x20) != 0)
  {
    v34 = *&v33[2 * v15 - 8];
    v35 = *&__src[2 * v15 - 4];
    v36 = *(a6 + 2 * v15);
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v24 = __OFSUB__(v35, v34);
    v40 = v35 - v34;
    if ((v40 < 0) ^ v24 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + (v41 | (v40 >> 31)) + v39 + 2) + v35;
    if (v42 >= 0x1FF)
    {
      v43 = 511;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *&__src[2 * v15 - 4] = v44;
  }

  if ((v123 & 4) != 0)
  {
    v46 = 0;
    v45 = (a7 - 1);
    v47 = v45 - 1;
    v48 = 4;
    do
    {
      v49 = *&v33[v46 >> 31];
      v50 = *&__src[2 * v48 - 4];
      v51 = *(a6 + 2 * v48);
      v24 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if ((v52 < 0) ^ v24 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 | (v52 >> 31);
      v24 = __OFSUB__(v50, v49);
      v55 = v50 - v49;
      if ((v55 < 0) ^ v24 | (v55 == 0))
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      v56 = *(a3 + ((result | (v55 >> 31)) + v54 + 2)) + v50;
      if (v56 >= 0x1FF)
      {
        v57 = 511;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *&__src[2 * v48 - 4] = v58;
      v48 += 2;
      v46 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v122 = v45;
  if (a8 < 3)
  {
    v67 = __dst;
  }

  else
  {
    v59 = &v128;
    v60 = v45 - (v14 ^ 1);
    v61 = !(v123 & 1);
    if (v60 <= v61)
    {
      v62 = !(v123 & 1);
    }

    else
    {
      v62 = v60;
    }

    v63 = v62 + 1;
    v64 = __dst;
    v65 = 1;
    v66 = &__src[2 * a2];
    do
    {
      v67 = v59;
      result = memcpy(v59, v66, __n);
      v33 = &v66[2 * a2];
      v68 = v61;
      v69 = !(v123 & 1);
      do
      {
        v70 = &v33[1 * v68 - 4];
        if (!v69)
        {
          v70 = &a5[2 * v65 + 2];
        }

        v71 = *&v66[1 * v68];
        v72 = *v70;
        v73 = LOWORD(v64[v68 + 1]);
        v24 = __OFSUB__(v71, v73);
        v74 = v71 - v73;
        if ((v74 < 0) ^ v24 | (v74 == 0))
        {
          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = v75 | (v74 >> 31);
        v24 = __OFSUB__(v71, v72);
        v77 = v71 - v72;
        if ((v77 < 0) ^ v24 | (v77 == 0))
        {
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = *(a3 + (v78 | (v77 >> 31)) + v76 + 2) + v71;
        if (v79 >= 0x1FF)
        {
          v80 = 511;
        }

        else
        {
          v80 = v79;
        }

        if (v79 <= 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = v80;
        }

        *&v66[1 * v68] = v81;
        ++v69;
        ++v68;
      }

      while (v63 != v69);
      ++v65;
      v66 += 2 * a2;
      v59 = v64;
      v64 = v67;
    }

    while (v65 != v125);
  }

  v82 = &v33[2 * a2];
  if ((v123 & 0x40) != 0)
  {
    v83 = *(v82 - 2);
    v84 = *v33;
    v85 = *(v67 + 2);
    v24 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if ((v86 < 0) ^ v24 | (v86 == 0))
    {
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87 | (v86 >> 31);
    v24 = __OFSUB__(v84, v83);
    v89 = v84 - v83;
    if ((v89 < 0) ^ v24 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(a3 + (v90 | (v89 >> 31)) + v88 + 2) + v84;
    if (v91 >= 0x1FF)
    {
      v92 = 511;
    }

    else
    {
      v92 = v91;
    }

    if (v91 <= 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    *v33 = v93;
  }

  if ((v123 & 0xA) == 0xA)
  {
    v94 = &v33[4 * v122];
    v95 = v94[a2 - 2];
    v96 = LOWORD(v67[v122 + 1]);
    v97 = *v94;
    v24 = __OFSUB__(v97, v96);
    v98 = v97 - v96;
    if ((v98 < 0) ^ v24 | (v98 == 0))
    {
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = v99 | (v98 >> 31);
    v24 = __OFSUB__(v97, v95);
    v101 = v97 - v95;
    if ((v101 < 0) ^ v24 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *(a3 + (v102 | (v101 >> 31)) + v100 + 2) + v97;
    if (v103 >= 0x1FF)
    {
      v104 = 511;
    }

    else
    {
      v104 = v103;
    }

    if (v103 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }

    *v94 = v105;
  }

  if ((v123 & 8) != 0)
  {
    v106 = 0;
    v107 = v122 - 1;
    v108 = 2;
    do
    {
      v109 = *&v82[v106 >> 31];
      v110 = *&v33[1 * v108 - 4];
      v111 = LOWORD(v67[v108]);
      v24 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if ((v112 < 0) ^ v24 | (v112 == 0))
      {
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      result = v113 | (v112 >> 31);
      v24 = __OFSUB__(v110, v109);
      v114 = v110 - v109;
      if ((v114 < 0) ^ v24 | (v114 == 0))
      {
        v115 = 0;
      }

      else
      {
        v115 = 1;
      }

      v116 = *(a3 + (v115 | (v114 >> 31)) + result + 2) + v110;
      if (v116 >= 0x1FF)
      {
        v117 = 511;
      }

      else
      {
        v117 = v116;
      }

      if (v116 <= 0)
      {
        v118 = 0;
      }

      else
      {
        v118 = v117;
      }

      *&v33[1 * v108++ - 4] = v118;
      v106 += 0x200000000;
      --v107;
    }

    while (v107);
  }

  if (a8 >= 1)
  {
    v119 = a8;
    v120 = v129;
    do
    {
      v121 = *v120++;
      *a5 = v121;
      a5 += 2;
      --v119;
    }

    while (v119);
  }

  return result;
}

uint64_t sub_2774AE260(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v15 = v125;
  v16 = 2 * a7;
  v122 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * v16 - 4];
    v18 = a8;
    v19 = v127;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v123 = a2;
  v20 = a4 & 6;
  __n = 4 * a7;
  memcpy(v125, __src, __n);
  v124 = *a5;
  v118 = a2;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 2);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[2];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0x1FF)
    {
      v32 = 511;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v20 == 6)
  {
    v34 = &__src[2 * v16];
    v35 = *(v34 - 2);
    v36 = a6[v16 - 4];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * v118];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0x1FF)
    {
      v44 = 511;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *(v34 - 2) = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (__src + 4);
    v49 = 0x400000000;
    do
    {
      v50 = *v48;
      v51 = *a6;
      a6 += 2;
      v52 = (v50 > v51) | ((v50 - v51) >> 31);
      v53 = *(v21 + (v49 >> 31));
      v24 = __OFSUB__(v50, v53);
      v54 = v50 - v53;
      if ((v54 < 0) ^ v24 | (v54 == 0))
      {
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = *(a3 + v52 + (v55 | (v54 >> 31)) + 2) + v50;
      if (v56 >= 0x1FF)
      {
        v57 = 511;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *v48 = v58;
      v48 += 2;
      v49 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  v117 = a8;
  v116 = a7 - 1;
  if (a8 < 3)
  {
    v64 = v125;
    v65 = v21;
  }

  else
  {
    v59 = &v126;
    v60 = 1;
    LODWORD(v61) = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v61 = !(a4 & 1);
    }

    else
    {
      v61 = v61;
    }

    v120 = v61 - v62 + 1;
    v63 = (v62 << 33) + 0x200000000;
    do
    {
      v64 = v59;
      memcpy(v59, v21, __n);
      *(v64 - 2) = a5[2 * v60];
      v65 = &v21[v123];
      v66 = 2 * !(a4 & 1);
      v67 = v63;
      v68 = v120;
      do
      {
        v69 = v21[v66];
        v70 = v15[v66 - 2];
        v24 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if ((v71 < 0) ^ v24 | (v71 == 0))
        {
          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        v73 = *(a3 + (v72 | (v71 >> 31)) + ((v69 > *(v65 + (v67 >> 31))) | ((v69 - *(v65 + (v67 >> 31))) >> 31)) + 2) + v69;
        if (v73 >= 0x1FF)
        {
          v74 = 511;
        }

        else
        {
          v74 = v73;
        }

        if (v73 <= 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = v74;
        }

        v21[v66] = v75;
        v67 += 0x200000000;
        v66 += 2;
        --v68;
      }

      while (v68);
      ++v60;
      v21 = (v21 + v123 * 2);
      v59 = v15;
      v15 = v64;
    }

    while (v60 != v122);
  }

  v76 = &v65[v118];
  if ((a4 & 9) == 9)
  {
    v77 = *v65;
    v78 = *(v64 - 2);
    v24 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if ((v79 < 0) ^ v24 | (v79 == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v80 | (v79 >> 31);
    v82 = v76[2];
    v24 = __OFSUB__(v77, v82);
    v83 = v77 - v82;
    if ((v83 < 0) ^ v24 | (v83 == 0))
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(a3 + v81 + (v84 | (v83 >> 31)) + 2) + v77;
    if (v85 >= 0x1FF)
    {
      v86 = 511;
    }

    else
    {
      v86 = v85;
    }

    if (v85 <= 0)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    *v65 = v87;
  }

  result = v117;
  if ((a4 & 0x80) != 0)
  {
    v89 = &v65[2 * v116];
    v90 = *v89;
    v91 = v64[2 * v116 - 2];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[v118 + 2];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0x1FF)
    {
      v99 = 511;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((a4 & 8) != 0)
  {
    v101 = v116 - 1;
    v102 = (v65 + 2);
    v103 = 0x400000000;
    do
    {
      v104 = *v102;
      v105 = *v64;
      v64 += 2;
      v106 = (v104 > v105) | ((v104 - v105) >> 31);
      v107 = *(v76 + (v103 >> 31));
      v24 = __OFSUB__(v104, v107);
      v108 = v104 - v107;
      if ((v108 < 0) ^ v24 | (v108 == 0))
      {
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(a3 + v106 + (v109 | (v108 >> 31)) + 2) + v104;
      if (v110 >= 0x1FF)
      {
        v111 = 511;
      }

      else
      {
        v111 = v110;
      }

      if (v110 <= 0)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }

      *v102 = v112;
      v102 += 2;
      v103 += 0x200000000;
      --v101;
    }

    while (v101);
  }

  if (v117 >= 1)
  {
    v113 = v117;
    v114 = v127;
    do
    {
      v115 = *v114++;
      *a5 = v115;
      a5 += 2;
      --v113;
    }

    while (v113);
  }

  return result;
}

uint64_t sub_2774AE6FC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774ADDC0(a1, a2, a3, a4, a5, a6, 32, a7);

  return sub_2774ADDC0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 32, a7);
}

uint64_t sub_2774AE788(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AE260(a1, a2, a3, a4, a5, a6, 0x20u, a7);

  return sub_2774AE260(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x20u, a7);
}

uint64_t sub_2774AE814(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774ADDC0(a1, a2, a3, a4, a5, a6, 16, a7);

  return sub_2774ADDC0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 16, a7);
}

uint64_t sub_2774AE8A0(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AE260(a1, a2, a3, a4, a5, a6, 0x10u, a7);

  return sub_2774AE260(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x10u, a7);
}

uint64_t sub_2774AE92C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774ADDC0(a1, a2, a3, a4, a5, a6, 8, a7);

  return sub_2774ADDC0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 8, a7);
}

uint64_t sub_2774AE9B8(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AE260(a1, a2, a3, a4, a5, a6, 8u, a7);

  return sub_2774AE260(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8u, a7);
}

__int16 *sub_2774AEA44(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  sub_2774ADD3C(a1, a2, a3, a5, 4u, a7);

  return sub_2774ADD3C(a1 + 1, a2, a3 + 32, a5 + 1, 4u, a7);
}

uint64_t sub_2774AEABC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774ADDC0(a1, a2, a3, a4, a5, a6, 4, a7);

  return sub_2774ADDC0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 4, a7);
}

uint64_t sub_2774AEB48(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AE260(a1, a2, a3, a4, a5, a6, 4u, a7);

  return sub_2774AE260(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4u, a7);
}

void *sub_2774AEBD4(void *result)
{
  result[9] = sub_2773D72A4;
  result[10] = sub_2773D71D4;
  result[11] = sub_2773D7068;
  result[12] = sub_2773D6F0C;
  result[13] = sub_2773D6EC0;
  result[14] = sub_2773D6DCC;
  result[15] = sub_2773D6CD4;
  result[16] = sub_2773D6B24;
  result[17] = sub_2773D6984;
  result[18] = sub_2773D6924;
  result[19] = sub_2773D67B8;
  result[20] = sub_2773D6640;
  result[21] = sub_2773D6400;
  result[22] = sub_2773D61D8;
  result[23] = sub_2773D614C;
  result[24] = sub_2773D5ECC;
  result[25] = sub_2773D5C20;
  result[26] = sub_2773D58A0;
  result[27] = sub_2773D552C;
  result[28] = sub_2773D5444;
  result[54] = sub_2773D53BC;
  return result;
}

void *sub_2774AED28(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, int a7, int a8)
{
  v12 = a4;
  v133 = *MEMORY[0x277D85DE8];
  v16 = (a4 >> 1) & 1;
  v127 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * a7 - 2];
    v18 = a8;
    v19 = __srca;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v128 = 2 * a2;
  v20 = ~a4 & 5;
  __n = 2 * (v16 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[1];
    v23 = *__src;
    v24 = *(a6 + 2);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0x1FF)
    {
      v32 = 511;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = &__src[2 * (a7 - 1)];
    v35 = *&v34[2 * a2 - 2];
    v36 = *v34;
    v37 = *(a6 + 2 * (a7 - 1) + 2);
    v25 = __OFSUB__(v36, v37);
    v38 = v36 - v37;
    if ((v38 < 0) ^ v25 | (v38 == 0))
    {
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 | (v38 >> 31);
    v25 = __OFSUB__(v36, v35);
    v41 = v36 - v35;
    if ((v41 < 0) ^ v25 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + (v42 | (v41 >> 31)) + v40 + 2) + v36;
    if (v43 >= 0x1FF)
    {
      v44 = 511;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = (a7 - 1);
  if ((v12 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (a6 + 4);
    v49 = __src;
    do
    {
      v50 = v49[a2];
      v52 = v49[1];
      ++v49;
      v51 = v52;
      v53 = *v48++;
      v54 = (v51 > v53) | ((v51 - v53) >> 31);
      v25 = __OFSUB__(v51, v50);
      v55 = v51 - v50;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = *(a3 + (v56 | (v55 >> 31)) + v54 + 2) + v51;
      if (v57 >= 0x1FF)
      {
        v58 = 511;
      }

      else
      {
        v58 = v57;
      }

      if (v57 <= 0)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      *v49 = v59;
      --v47;
    }

    while (v47);
  }

  v60 = &__src[2 * a2];
  v123 = a8;
  v121 = a5;
  v122 = a7 - 1;
  v129 = a2;
  if (a8 < 3)
  {
    v71 = __dst;
  }

  else
  {
    v61 = &v131;
    LODWORD(v62) = v46 - (v16 ^ 1);
    v63 = !(v12 & 1);
    if (v62 <= v63)
    {
      v62 = !(v12 & 1);
    }

    else
    {
      v62 = v62;
    }

    v64 = v62 - v63 + 1;
    v65 = 2 * !(v12 & 1);
    v124 = v65 + 2;
    v125 = a5 + 1;
    v66 = &__src[v128 + v65];
    v67 = &__src[(v65 | (4 * a2)) - 2];
    v68 = -v63;
    v69 = __dst;
    v70 = 1;
    do
    {
      v71 = v61;
      result = memcpy(v61, v60, __n);
      v72 = 0;
      v73 = v67;
      v60 += v129;
      do
      {
        if (v68 == v72)
        {
          v74 = &v125[v70];
        }

        else
        {
          v74 = v73;
        }

        v75 = *v74;
        v76 = *&v66[2 * v72];
        v77 = *(&v69[v72] + v124);
        v25 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = v79 | (v78 >> 31);
        v25 = __OFSUB__(v76, v75);
        v81 = v76 - v75;
        if ((v81 < 0) ^ v25 | (v81 == 0))
        {
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *(a3 + (v82 | (v81 >> 31)) + v80 + 2) + v76;
        if (v83 >= 0x1FF)
        {
          v84 = 511;
        }

        else
        {
          v84 = v83;
        }

        if (v83 <= 0)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        *&v66[2 * v72++] = v85;
        v73 += 2;
      }

      while (v64 != v72);
      ++v70;
      v66 += v128;
      v67 += v128;
      v61 = v69;
      v69 = v71;
    }

    while (v70 != v127);
  }

  if ((v12 & 0x40) != 0)
  {
    v86 = v60[v129 - 1];
    v87 = *v60;
    v88 = v71[1];
    v25 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v90 | (v89 >> 31);
    v25 = __OFSUB__(v87, v86);
    v92 = v87 - v86;
    if ((v92 < 0) ^ v25 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = *(a3 + (v93 | (v92 >> 31)) + v91 + 2) + v87;
    if (v94 >= 0x1FF)
    {
      v95 = 511;
    }

    else
    {
      v95 = v94;
    }

    if (v94 <= 0)
    {
      v96 = 0;
    }

    else
    {
      v96 = v95;
    }

    *v60 = v96;
  }

  if ((v12 & 0xA) == 0xA)
  {
    v97 = &v60[v122];
    v98 = v97[v129 - 1];
    v99 = *v97;
    v100 = v71[v122 + 1];
    v25 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = v102 | (v101 >> 31);
    v25 = __OFSUB__(v99, v98);
    v104 = v99 - v98;
    if ((v104 < 0) ^ v25 | (v104 == 0))
    {
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(a3 + (v105 | (v104 >> 31)) + v103 + 2) + v99;
    if (v106 >= 0x1FF)
    {
      v107 = 511;
    }

    else
    {
      v107 = v106;
    }

    if (v106 <= 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    *v97 = v108;
  }

  if ((v12 & 8) != 0)
  {
    v109 = v122 - 1;
    v110 = (v71 + 2);
    do
    {
      v111 = v60[v129];
      v113 = v60[1];
      ++v60;
      v112 = v113;
      v114 = *v110++;
      v115 = (v112 > v114) | ((v112 - v114) >> 31);
      v25 = __OFSUB__(v112, v111);
      v116 = v112 - v111;
      if ((v116 < 0) ^ v25 | (v116 == 0))
      {
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = *(a3 + (v117 | (v116 >> 31)) + v115 + 2) + v112;
      if (v118 >= 0x1FF)
      {
        v119 = 511;
      }

      else
      {
        v119 = v118;
      }

      if (v118 <= 0)
      {
        v120 = 0;
      }

      else
      {
        v120 = v119;
      }

      *v60 = v120;
      --v109;
    }

    while (v109);
  }

  if (v123 >= 1)
  {
    return memcpy(v121, __srca, (2 * v123));
  }

  return result;
}

void *sub_2774AF1A4(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v125 = *MEMORY[0x277D85DE8];
  v14 = v122;
  v15 = 2 * a2;
  v119 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * a7 - 2];
    v17 = a8;
    v18 = __srca;
    do
    {
      *v18++ = *v16;
      v16 += v15;
      --v17;
    }

    while (v17);
  }

  v19 = a4 & 6;
  __n = 2 * a7;
  result = memcpy(v122, __src, __n);
  v121 = *a5;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 1);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[1];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0x1FF)
    {
      v32 = 511;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v19 == 6)
  {
    v34 = &__src[2 * a7 - 2];
    v35 = *v34;
    v36 = a6[a7 - 2];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * a2 + 2];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0x1FF)
    {
      v44 = 511;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = __src + 4;
    do
    {
      v49 = *(v48 - 1);
      v50 = *a6++;
      v51 = (v49 > v50) | ((v49 - v50) >> 31);
      v52 = *&v48[2 * a2];
      v24 = __OFSUB__(v49, v52);
      v53 = v49 - v52;
      if ((v53 < 0) ^ v24 | (v53 == 0))
      {
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(a3 + v51 + (v54 | (v53 >> 31)) + 2) + v49;
      if (v55 >= 0x1FF)
      {
        v56 = 511;
      }

      else
      {
        v56 = v55;
      }

      if (v55 <= 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *(v48 - 1) = v57;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  v112 = a4 & 9;
  v115 = a8;
  v114 = a4;
  v113 = a7 - 1;
  if (a8 < 3)
  {
    v67 = &__src[2 * a2];
  }

  else
  {
    v58 = __src;
    v59 = &v123;
    v60 = 1;
    v61 = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    if (v61 <= !(a4 & 1))
    {
      v62 = !(a4 & 1);
    }

    else
    {
      v62 = v61;
    }

    v63 = v62 + 1;
    v117 = !(a4 & 1);
    v64 = &v58[((2 * v117) | (4 * a2)) + 2];
    do
    {
      v65 = v14;
      v14 = v59;
      v66 = (v65 - 1);
      v59 = v65;
      result = memcpy(v14, v21, __n);
      *(v14 - 1) = a5[v60];
      v67 = &v21[v15 / 2];
      v68 = v64;
      v69 = v117;
      do
      {
        v70 = v21[v69];
        v71 = *&v66[2 * v69];
        v24 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if ((v72 < 0) ^ v24 | (v72 == 0))
        {
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = *v68++;
        v75 = *(a3 + (v73 | (v72 >> 31)) + ((v70 > v74) | ((v70 - v74) >> 31)) + 2) + v70;
        if (v75 >= 0x1FF)
        {
          v76 = 511;
        }

        else
        {
          v76 = v75;
        }

        if (v75 <= 0)
        {
          v77 = 0;
        }

        else
        {
          v77 = v76;
        }

        v21[v69++] = v77;
      }

      while (v63 != v69);
      ++v60;
      v64 += v15;
      v21 = (v21 + v15);
    }

    while (v60 != v119);
  }

  if (v112 == 9)
  {
    v78 = *v67;
    v79 = *(v14 - 1);
    v24 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if ((v80 < 0) ^ v24 | (v80 == 0))
    {
      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v82 = v81 | (v80 >> 31);
    v83 = v67[a2 + 1];
    v24 = __OFSUB__(v78, v83);
    v84 = v78 - v83;
    if ((v84 < 0) ^ v24 | (v84 == 0))
    {
      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = *(a3 + v82 + (v85 | (v84 >> 31)) + 2) + v78;
    if (v86 >= 0x1FF)
    {
      v87 = 511;
    }

    else
    {
      v87 = v86;
    }

    if (v86 <= 0)
    {
      v88 = 0;
    }

    else
    {
      v88 = v87;
    }

    *v67 = v88;
  }

  if (v114 < 0)
  {
    v89 = &v67[v113];
    v90 = *v89;
    v91 = v14[v113 - 1];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[a2 + 1];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0x1FF)
    {
      v99 = 511;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((v114 & 8) != 0)
  {
    v101 = v113 - 1;
    v102 = v67 + 2;
    do
    {
      v103 = *(v102 - 1);
      v104 = *v14++;
      v105 = (v103 > v104) | ((v103 - v104) >> 31);
      v106 = v102[a2];
      v24 = __OFSUB__(v103, v106);
      v107 = v103 - v106;
      if ((v107 < 0) ^ v24 | (v107 == 0))
      {
        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = *(a3 + v105 + (v108 | (v107 >> 31)) + 2) + v103;
      if (v109 >= 0x1FF)
      {
        v110 = 511;
      }

      else
      {
        v110 = v109;
      }

      if (v109 <= 0)
      {
        v111 = 0;
      }

      else
      {
        v111 = v110;
      }

      *(v102++ - 1) = v111;
      --v101;
    }

    while (v101);
  }

  if (v115 >= 1)
  {
    return memcpy(a5, __srca, (2 * v115));
  }

  return result;
}

void *sub_2774AF618(void *result)
{
  result[33] = sub_2774B04C4;
  result[29] = sub_2773DF648;
  result[30] = sub_2773DF560;
  result[31] = sub_2773DF3E4;
  result[32] = sub_2773DF278;
  result[34] = sub_2773DF178;
  result[35] = sub_2773DF06C;
  result[36] = sub_2773DEEB0;
  result[37] = sub_2773DED04;
  result[39] = sub_2773DEB8C;
  result[40] = sub_2773DEA00;
  result[41] = sub_2773DE7B4;
  result[42] = sub_2773DE580;
  result[44] = sub_2773DE128;
  result[45] = sub_2773DDDB8;
  result[46] = sub_2773DD970;
  result[47] = sub_2773DD534;
  result[38] = sub_2773DE4C4;
  result[43] = sub_2773DE3B4;
  result[48] = sub_2773DD284;
  result[49] = sub_2773DE078;
  result[50] = sub_2773DDCF8;
  result[51] = sub_2773DD8B0;
  result[52] = sub_2773DD474;
  result[53] = sub_2773DD21C;
  result[55] = sub_2773D3424;
  return result;
}

__int16 *sub_2774AF7BC(__int16 *result, uint64_t a2, uint64_t a3, __int16 *a4, unsigned int a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = &result[2 * a5 - 2];
    v7 = a6;
    v8 = 2 * a2;
    do
    {
      *a4 = *v6;
      a4 += 2;
      v6 = (v6 + v8);
      --v7;
    }

    while (v7);
    for (i = 0; i != a6; ++i)
    {
      v10 = result;
      v11 = a5;
      do
      {
        v12 = *(a3 + (*v10 >> 3)) + *v10;
        if (v12 >= 0xFF)
        {
          v13 = 255;
        }

        else
        {
          v13 = *(a3 + (*v10 >> 3)) + *v10;
        }

        if (v12 <= 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        *v10 = v14;
        v10 += 2;
        --v11;
      }

      while (v11);
      result = (result + v8);
    }
  }

  return result;
}

uint64_t sub_2774AF840(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7, int a8)
{
  v130 = *MEMORY[0x277D85DE8];
  v14 = (a4 >> 1) & 1;
  v15 = 2 * a7;
  v125 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * v15 - 4];
    v17 = a8;
    v18 = v129;
    do
    {
      *v18++ = *v16;
      v16 += 2 * a2;
      --v17;
    }

    while (v17);
  }

  v123 = a4;
  v19 = ~a4 & 5;
  __n = 4 * (v14 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v19)
  {
    v21 = a5[2];
    v22 = *__src;
    v23 = *(a6 + 4);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v24 = __OFSUB__(v22, v21);
    v28 = v22 - v21;
    if ((v28 < 0) ^ v24 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + (v29 | (v28 >> 31)) + v27 + 2) + v22;
    if (v30 >= 0xFF)
    {
      v31 = 255;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  v33 = &__src[2 * a2];
  if ((v123 & 0x20) != 0)
  {
    v34 = *&v33[2 * v15 - 8];
    v35 = *&__src[2 * v15 - 4];
    v36 = *(a6 + 2 * v15);
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v24 = __OFSUB__(v35, v34);
    v40 = v35 - v34;
    if ((v40 < 0) ^ v24 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + (v41 | (v40 >> 31)) + v39 + 2) + v35;
    if (v42 >= 0xFF)
    {
      v43 = 255;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *&__src[2 * v15 - 4] = v44;
  }

  if ((v123 & 4) != 0)
  {
    v46 = 0;
    v45 = (a7 - 1);
    v47 = v45 - 1;
    v48 = 4;
    do
    {
      v49 = *&v33[v46 >> 31];
      v50 = *&__src[2 * v48 - 4];
      v51 = *(a6 + 2 * v48);
      v24 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if ((v52 < 0) ^ v24 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 | (v52 >> 31);
      v24 = __OFSUB__(v50, v49);
      v55 = v50 - v49;
      if ((v55 < 0) ^ v24 | (v55 == 0))
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      v56 = *(a3 + ((result | (v55 >> 31)) + v54 + 2)) + v50;
      if (v56 >= 0xFF)
      {
        v57 = 255;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *&__src[2 * v48 - 4] = v58;
      v48 += 2;
      v46 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v122 = v45;
  if (a8 < 3)
  {
    v67 = __dst;
  }

  else
  {
    v59 = &v128;
    v60 = v45 - (v14 ^ 1);
    v61 = !(v123 & 1);
    if (v60 <= v61)
    {
      v62 = !(v123 & 1);
    }

    else
    {
      v62 = v60;
    }

    v63 = v62 + 1;
    v64 = __dst;
    v65 = 1;
    v66 = &__src[2 * a2];
    do
    {
      v67 = v59;
      result = memcpy(v59, v66, __n);
      v33 = &v66[2 * a2];
      v68 = v61;
      v69 = !(v123 & 1);
      do
      {
        v70 = &v33[1 * v68 - 4];
        if (!v69)
        {
          v70 = &a5[2 * v65 + 2];
        }

        v71 = *&v66[1 * v68];
        v72 = *v70;
        v73 = LOWORD(v64[v68 + 1]);
        v24 = __OFSUB__(v71, v73);
        v74 = v71 - v73;
        if ((v74 < 0) ^ v24 | (v74 == 0))
        {
          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = v75 | (v74 >> 31);
        v24 = __OFSUB__(v71, v72);
        v77 = v71 - v72;
        if ((v77 < 0) ^ v24 | (v77 == 0))
        {
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = *(a3 + (v78 | (v77 >> 31)) + v76 + 2) + v71;
        if (v79 >= 0xFF)
        {
          v80 = 255;
        }

        else
        {
          v80 = v79;
        }

        if (v79 <= 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = v80;
        }

        *&v66[1 * v68] = v81;
        ++v69;
        ++v68;
      }

      while (v63 != v69);
      ++v65;
      v66 += 2 * a2;
      v59 = v64;
      v64 = v67;
    }

    while (v65 != v125);
  }

  v82 = &v33[2 * a2];
  if ((v123 & 0x40) != 0)
  {
    v83 = *(v82 - 2);
    v84 = *v33;
    v85 = *(v67 + 2);
    v24 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if ((v86 < 0) ^ v24 | (v86 == 0))
    {
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87 | (v86 >> 31);
    v24 = __OFSUB__(v84, v83);
    v89 = v84 - v83;
    if ((v89 < 0) ^ v24 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(a3 + (v90 | (v89 >> 31)) + v88 + 2) + v84;
    if (v91 >= 0xFF)
    {
      v92 = 255;
    }

    else
    {
      v92 = v91;
    }

    if (v91 <= 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    *v33 = v93;
  }

  if ((v123 & 0xA) == 0xA)
  {
    v94 = &v33[4 * v122];
    v95 = v94[a2 - 2];
    v96 = LOWORD(v67[v122 + 1]);
    v97 = *v94;
    v24 = __OFSUB__(v97, v96);
    v98 = v97 - v96;
    if ((v98 < 0) ^ v24 | (v98 == 0))
    {
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = v99 | (v98 >> 31);
    v24 = __OFSUB__(v97, v95);
    v101 = v97 - v95;
    if ((v101 < 0) ^ v24 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *(a3 + (v102 | (v101 >> 31)) + v100 + 2) + v97;
    if (v103 >= 0xFF)
    {
      v104 = 255;
    }

    else
    {
      v104 = v103;
    }

    if (v103 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }

    *v94 = v105;
  }

  if ((v123 & 8) != 0)
  {
    v106 = 0;
    v107 = v122 - 1;
    v108 = 2;
    do
    {
      v109 = *&v82[v106 >> 31];
      v110 = *&v33[1 * v108 - 4];
      v111 = LOWORD(v67[v108]);
      v24 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if ((v112 < 0) ^ v24 | (v112 == 0))
      {
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      result = v113 | (v112 >> 31);
      v24 = __OFSUB__(v110, v109);
      v114 = v110 - v109;
      if ((v114 < 0) ^ v24 | (v114 == 0))
      {
        v115 = 0;
      }

      else
      {
        v115 = 1;
      }

      v116 = *(a3 + (v115 | (v114 >> 31)) + result + 2) + v110;
      if (v116 >= 0xFF)
      {
        v117 = 255;
      }

      else
      {
        v117 = v116;
      }

      if (v116 <= 0)
      {
        v118 = 0;
      }

      else
      {
        v118 = v117;
      }

      *&v33[1 * v108++ - 4] = v118;
      v106 += 0x200000000;
      --v107;
    }

    while (v107);
  }

  if (a8 >= 1)
  {
    v119 = a8;
    v120 = v129;
    do
    {
      v121 = *v120++;
      *a5 = v121;
      a5 += 2;
      --v119;
    }

    while (v119);
  }

  return result;
}

uint64_t sub_2774AFCE0(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v15 = v125;
  v16 = 2 * a7;
  v122 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * v16 - 4];
    v18 = a8;
    v19 = v127;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v123 = a2;
  v20 = a4 & 6;
  __n = 4 * a7;
  memcpy(v125, __src, __n);
  v124 = *a5;
  v118 = a2;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 2);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[2];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0xFF)
    {
      v32 = 255;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v20 == 6)
  {
    v34 = &__src[2 * v16];
    v35 = *(v34 - 2);
    v36 = a6[v16 - 4];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * v118];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *(v34 - 2) = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (__src + 4);
    v49 = 0x400000000;
    do
    {
      v50 = *v48;
      v51 = *a6;
      a6 += 2;
      v52 = (v50 > v51) | ((v50 - v51) >> 31);
      v53 = *(v21 + (v49 >> 31));
      v24 = __OFSUB__(v50, v53);
      v54 = v50 - v53;
      if ((v54 < 0) ^ v24 | (v54 == 0))
      {
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = *(a3 + v52 + (v55 | (v54 >> 31)) + 2) + v50;
      if (v56 >= 0xFF)
      {
        v57 = 255;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      *v48 = v58;
      v48 += 2;
      v49 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  v117 = a8;
  v116 = a7 - 1;
  if (a8 < 3)
  {
    v64 = v125;
    v65 = v21;
  }

  else
  {
    v59 = &v126;
    v60 = 1;
    LODWORD(v61) = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v61 = !(a4 & 1);
    }

    else
    {
      v61 = v61;
    }

    v120 = v61 - v62 + 1;
    v63 = (v62 << 33) + 0x200000000;
    do
    {
      v64 = v59;
      memcpy(v59, v21, __n);
      *(v64 - 2) = a5[2 * v60];
      v65 = &v21[v123];
      v66 = 2 * !(a4 & 1);
      v67 = v63;
      v68 = v120;
      do
      {
        v69 = v21[v66];
        v70 = v15[v66 - 2];
        v24 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if ((v71 < 0) ^ v24 | (v71 == 0))
        {
          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        v73 = *(a3 + (v72 | (v71 >> 31)) + ((v69 > *(v65 + (v67 >> 31))) | ((v69 - *(v65 + (v67 >> 31))) >> 31)) + 2) + v69;
        if (v73 >= 0xFF)
        {
          v74 = 255;
        }

        else
        {
          v74 = v73;
        }

        if (v73 <= 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = v74;
        }

        v21[v66] = v75;
        v67 += 0x200000000;
        v66 += 2;
        --v68;
      }

      while (v68);
      ++v60;
      v21 = (v21 + v123 * 2);
      v59 = v15;
      v15 = v64;
    }

    while (v60 != v122);
  }

  v76 = &v65[v118];
  if ((a4 & 9) == 9)
  {
    v77 = *v65;
    v78 = *(v64 - 2);
    v24 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if ((v79 < 0) ^ v24 | (v79 == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v80 | (v79 >> 31);
    v82 = v76[2];
    v24 = __OFSUB__(v77, v82);
    v83 = v77 - v82;
    if ((v83 < 0) ^ v24 | (v83 == 0))
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(a3 + v81 + (v84 | (v83 >> 31)) + 2) + v77;
    if (v85 >= 0xFF)
    {
      v86 = 255;
    }

    else
    {
      v86 = v85;
    }

    if (v85 <= 0)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    *v65 = v87;
  }

  result = v117;
  if ((a4 & 0x80) != 0)
  {
    v89 = &v65[2 * v116];
    v90 = *v89;
    v91 = v64[2 * v116 - 2];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[v118 + 2];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0xFF)
    {
      v99 = 255;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((a4 & 8) != 0)
  {
    v101 = v116 - 1;
    v102 = (v65 + 2);
    v103 = 0x400000000;
    do
    {
      v104 = *v102;
      v105 = *v64;
      v64 += 2;
      v106 = (v104 > v105) | ((v104 - v105) >> 31);
      v107 = *(v76 + (v103 >> 31));
      v24 = __OFSUB__(v104, v107);
      v108 = v104 - v107;
      if ((v108 < 0) ^ v24 | (v108 == 0))
      {
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(a3 + v106 + (v109 | (v108 >> 31)) + 2) + v104;
      if (v110 >= 0xFF)
      {
        v111 = 255;
      }

      else
      {
        v111 = v110;
      }

      if (v110 <= 0)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }

      *v102 = v112;
      v102 += 2;
      v103 += 0x200000000;
      --v101;
    }

    while (v101);
  }

  if (v117 >= 1)
  {
    v113 = v117;
    v114 = v127;
    do
    {
      v115 = *v114++;
      *a5 = v115;
      a5 += 2;
      --v113;
    }

    while (v113);
  }

  return result;
}

uint64_t sub_2774B017C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AF840(a1, a2, a3, a4, a5, a6, 32, a7);

  return sub_2774AF840(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 32, a7);
}

uint64_t sub_2774B0208(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AFCE0(a1, a2, a3, a4, a5, a6, 0x20u, a7);

  return sub_2774AFCE0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x20u, a7);
}

uint64_t sub_2774B0294(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AF840(a1, a2, a3, a4, a5, a6, 16, a7);

  return sub_2774AF840(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 16, a7);
}

uint64_t sub_2774B0320(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AFCE0(a1, a2, a3, a4, a5, a6, 0x10u, a7);

  return sub_2774AFCE0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x10u, a7);
}

uint64_t sub_2774B03AC(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AF840(a1, a2, a3, a4, a5, a6, 8, a7);

  return sub_2774AF840(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 8, a7);
}

uint64_t sub_2774B0438(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AFCE0(a1, a2, a3, a4, a5, a6, 8u, a7);

  return sub_2774AFCE0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8u, a7);
}

__int16 *sub_2774B04C4(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  sub_2774AF7BC(a1, a2, a3, a5, 4u, a7);

  return sub_2774AF7BC(a1 + 1, a2, a3 + 32, a5 + 1, 4u, a7);
}

uint64_t sub_2774B053C(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, uint64_t a6, int a7)
{
  sub_2774AF840(a1, a2, a3, a4, a5, a6, 4, a7);

  return sub_2774AF840(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 2, 4, a7);
}

uint64_t sub_2774B05C8(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  sub_2774AFCE0(a1, a2, a3, a4, a5, a6, 4u, a7);

  return sub_2774AFCE0(a1 + 2, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4u, a7);
}

void *sub_2774B0654(void *result)
{
  result[9] = sub_2773D530C;
  result[10] = sub_2773D523C;
  result[11] = sub_2773D50D0;
  result[12] = sub_2773D4F74;
  result[13] = sub_2773D4F28;
  result[14] = sub_2773D4E34;
  result[15] = sub_2773D4D3C;
  result[16] = sub_2773D4B8C;
  result[17] = sub_2773D49EC;
  result[18] = sub_2773D498C;
  result[19] = sub_2773D4820;
  result[20] = sub_2773D46A8;
  result[21] = sub_2773D4468;
  result[22] = sub_2773D4240;
  result[23] = sub_2773D41B4;
  result[24] = sub_2773D3F34;
  result[25] = sub_2773D3C88;
  result[26] = sub_2773D3908;
  result[27] = sub_2773D3594;
  result[28] = sub_2773D34AC;
  result[54] = sub_2773D3424;
  return result;
}

void *sub_2774B07A8(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, int a7, int a8)
{
  v12 = a4;
  v133 = *MEMORY[0x277D85DE8];
  v16 = (a4 >> 1) & 1;
  v127 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * a7 - 2];
    v18 = a8;
    v19 = __srca;
    do
    {
      *v19++ = *v17;
      v17 += 2 * a2;
      --v18;
    }

    while (v18);
  }

  v128 = 2 * a2;
  v20 = ~a4 & 5;
  __n = 2 * (v16 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[1];
    v23 = *__src;
    v24 = *(a6 + 2);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0xFF)
    {
      v32 = 255;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = &__src[2 * (a7 - 1)];
    v35 = *&v34[2 * a2 - 2];
    v36 = *v34;
    v37 = *(a6 + 2 * (a7 - 1) + 2);
    v25 = __OFSUB__(v36, v37);
    v38 = v36 - v37;
    if ((v38 < 0) ^ v25 | (v38 == 0))
    {
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 | (v38 >> 31);
    v25 = __OFSUB__(v36, v35);
    v41 = v36 - v35;
    if ((v41 < 0) ^ v25 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + (v42 | (v41 >> 31)) + v40 + 2) + v36;
    if (v43 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = (a7 - 1);
  if ((v12 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (a6 + 4);
    v49 = __src;
    do
    {
      v50 = v49[a2];
      v52 = v49[1];
      ++v49;
      v51 = v52;
      v53 = *v48++;
      v54 = (v51 > v53) | ((v51 - v53) >> 31);
      v25 = __OFSUB__(v51, v50);
      v55 = v51 - v50;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = *(a3 + (v56 | (v55 >> 31)) + v54 + 2) + v51;
      if (v57 >= 0xFF)
      {
        v58 = 255;
      }

      else
      {
        v58 = v57;
      }

      if (v57 <= 0)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      *v49 = v59;
      --v47;
    }

    while (v47);
  }

  v60 = &__src[2 * a2];
  v123 = a8;
  v121 = a5;
  v122 = a7 - 1;
  v129 = a2;
  if (a8 < 3)
  {
    v71 = __dst;
  }

  else
  {
    v61 = &v131;
    LODWORD(v62) = v46 - (v16 ^ 1);
    v63 = !(v12 & 1);
    if (v62 <= v63)
    {
      v62 = !(v12 & 1);
    }

    else
    {
      v62 = v62;
    }

    v64 = v62 - v63 + 1;
    v65 = 2 * !(v12 & 1);
    v124 = v65 + 2;
    v125 = a5 + 1;
    v66 = &__src[v128 + v65];
    v67 = &__src[(v65 | (4 * a2)) - 2];
    v68 = -v63;
    v69 = __dst;
    v70 = 1;
    do
    {
      v71 = v61;
      result = memcpy(v61, v60, __n);
      v72 = 0;
      v73 = v67;
      v60 += v129;
      do
      {
        if (v68 == v72)
        {
          v74 = &v125[v70];
        }

        else
        {
          v74 = v73;
        }

        v75 = *v74;
        v76 = *&v66[2 * v72];
        v77 = *(&v69[v72] + v124);
        v25 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = v79 | (v78 >> 31);
        v25 = __OFSUB__(v76, v75);
        v81 = v76 - v75;
        if ((v81 < 0) ^ v25 | (v81 == 0))
        {
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *(a3 + (v82 | (v81 >> 31)) + v80 + 2) + v76;
        if (v83 >= 0xFF)
        {
          v84 = 255;
        }

        else
        {
          v84 = v83;
        }

        if (v83 <= 0)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        *&v66[2 * v72++] = v85;
        v73 += 2;
      }

      while (v64 != v72);
      ++v70;
      v66 += v128;
      v67 += v128;
      v61 = v69;
      v69 = v71;
    }

    while (v70 != v127);
  }

  if ((v12 & 0x40) != 0)
  {
    v86 = v60[v129 - 1];
    v87 = *v60;
    v88 = v71[1];
    v25 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v90 | (v89 >> 31);
    v25 = __OFSUB__(v87, v86);
    v92 = v87 - v86;
    if ((v92 < 0) ^ v25 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = *(a3 + (v93 | (v92 >> 31)) + v91 + 2) + v87;
    if (v94 >= 0xFF)
    {
      v95 = 255;
    }

    else
    {
      v95 = v94;
    }

    if (v94 <= 0)
    {
      v96 = 0;
    }

    else
    {
      v96 = v95;
    }

    *v60 = v96;
  }

  if ((v12 & 0xA) == 0xA)
  {
    v97 = &v60[v122];
    v98 = v97[v129 - 1];
    v99 = *v97;
    v100 = v71[v122 + 1];
    v25 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = v102 | (v101 >> 31);
    v25 = __OFSUB__(v99, v98);
    v104 = v99 - v98;
    if ((v104 < 0) ^ v25 | (v104 == 0))
    {
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(a3 + (v105 | (v104 >> 31)) + v103 + 2) + v99;
    if (v106 >= 0xFF)
    {
      v107 = 255;
    }

    else
    {
      v107 = v106;
    }

    if (v106 <= 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    *v97 = v108;
  }

  if ((v12 & 8) != 0)
  {
    v109 = v122 - 1;
    v110 = (v71 + 2);
    do
    {
      v111 = v60[v129];
      v113 = v60[1];
      ++v60;
      v112 = v113;
      v114 = *v110++;
      v115 = (v112 > v114) | ((v112 - v114) >> 31);
      v25 = __OFSUB__(v112, v111);
      v116 = v112 - v111;
      if ((v116 < 0) ^ v25 | (v116 == 0))
      {
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = *(a3 + (v117 | (v116 >> 31)) + v115 + 2) + v112;
      if (v118 >= 0xFF)
      {
        v119 = 255;
      }

      else
      {
        v119 = v118;
      }

      if (v118 <= 0)
      {
        v120 = 0;
      }

      else
      {
        v120 = v119;
      }

      *v60 = v120;
      --v109;
    }

    while (v109);
  }

  if (v123 >= 1)
  {
    return memcpy(v121, __srca, (2 * v123));
  }

  return result;
}

void *sub_2774B0C24(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, unsigned __int16 *a6, unsigned int a7, int a8)
{
  v125 = *MEMORY[0x277D85DE8];
  v14 = v122;
  v15 = 2 * a2;
  v119 = (a8 - 1);
  if (a8 >= 1)
  {
    v16 = &__src[2 * a7 - 2];
    v17 = a8;
    v18 = __srca;
    do
    {
      *v18++ = *v16;
      v16 += v15;
      --v17;
    }

    while (v17);
  }

  v19 = a4 & 6;
  __n = 2 * a7;
  result = memcpy(v122, __src, __n);
  v121 = *a5;
  v21 = &__src[2 * a2];
  if ((a4 & 0x10) != 0)
  {
    v22 = *__src;
    v23 = *(a6 - 1);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if ((v25 < 0) ^ v24 | (v25 == 0))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (v25 >> 31);
    v28 = v21[1];
    v24 = __OFSUB__(v22, v28);
    v29 = v22 - v28;
    if ((v29 < 0) ^ v24 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + v27 + (v30 | (v29 >> 31)) + 2) + v22;
    if (v31 >= 0xFF)
    {
      v32 = 255;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if (v19 == 6)
  {
    v34 = &__src[2 * a7 - 2];
    v35 = *v34;
    v36 = a6[a7 - 2];
    v24 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v24 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v40 = *&v34[2 * a2 + 2];
    v24 = __OFSUB__(v35, v40);
    v41 = v35 - v40;
    if ((v41 < 0) ^ v24 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + v39 + (v42 | (v41 >> 31)) + 2) + v35;
    if (v43 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v34 = v45;
  }

  v46 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = __src + 4;
    do
    {
      v49 = *(v48 - 1);
      v50 = *a6++;
      v51 = (v49 > v50) | ((v49 - v50) >> 31);
      v52 = *&v48[2 * a2];
      v24 = __OFSUB__(v49, v52);
      v53 = v49 - v52;
      if ((v53 < 0) ^ v24 | (v53 == 0))
      {
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(a3 + v51 + (v54 | (v53 >> 31)) + 2) + v49;
      if (v55 >= 0xFF)
      {
        v56 = 255;
      }

      else
      {
        v56 = v55;
      }

      if (v55 <= 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *(v48 - 1) = v57;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  v112 = a4 & 9;
  v115 = a8;
  v114 = a4;
  v113 = a7 - 1;
  if (a8 < 3)
  {
    v67 = &__src[2 * a2];
  }

  else
  {
    v58 = __src;
    v59 = &v123;
    v60 = 1;
    v61 = (__PAIR64__(v46, (a4 >> 1) & 1) - 1) >> 32;
    if (v61 <= !(a4 & 1))
    {
      v62 = !(a4 & 1);
    }

    else
    {
      v62 = v61;
    }

    v63 = v62 + 1;
    v117 = !(a4 & 1);
    v64 = &v58[((2 * v117) | (4 * a2)) + 2];
    do
    {
      v65 = v14;
      v14 = v59;
      v66 = (v65 - 1);
      v59 = v65;
      result = memcpy(v14, v21, __n);
      *(v14 - 1) = a5[v60];
      v67 = &v21[v15 / 2];
      v68 = v64;
      v69 = v117;
      do
      {
        v70 = v21[v69];
        v71 = *&v66[2 * v69];
        v24 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if ((v72 < 0) ^ v24 | (v72 == 0))
        {
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = *v68++;
        v75 = *(a3 + (v73 | (v72 >> 31)) + ((v70 > v74) | ((v70 - v74) >> 31)) + 2) + v70;
        if (v75 >= 0xFF)
        {
          v76 = 255;
        }

        else
        {
          v76 = v75;
        }

        if (v75 <= 0)
        {
          v77 = 0;
        }

        else
        {
          v77 = v76;
        }

        v21[v69++] = v77;
      }

      while (v63 != v69);
      ++v60;
      v64 += v15;
      v21 = (v21 + v15);
    }

    while (v60 != v119);
  }

  if (v112 == 9)
  {
    v78 = *v67;
    v79 = *(v14 - 1);
    v24 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if ((v80 < 0) ^ v24 | (v80 == 0))
    {
      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v82 = v81 | (v80 >> 31);
    v83 = v67[a2 + 1];
    v24 = __OFSUB__(v78, v83);
    v84 = v78 - v83;
    if ((v84 < 0) ^ v24 | (v84 == 0))
    {
      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = *(a3 + v82 + (v85 | (v84 >> 31)) + 2) + v78;
    if (v86 >= 0xFF)
    {
      v87 = 255;
    }

    else
    {
      v87 = v86;
    }

    if (v86 <= 0)
    {
      v88 = 0;
    }

    else
    {
      v88 = v87;
    }

    *v67 = v88;
  }

  if (v114 < 0)
  {
    v89 = &v67[v113];
    v90 = *v89;
    v91 = v14[v113 - 1];
    v24 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v24 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[a2 + 1];
    v24 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v24 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0xFF)
    {
      v99 = 255;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((v114 & 8) != 0)
  {
    v101 = v113 - 1;
    v102 = v67 + 2;
    do
    {
      v103 = *(v102 - 1);
      v104 = *v14++;
      v105 = (v103 > v104) | ((v103 - v104) >> 31);
      v106 = v102[a2];
      v24 = __OFSUB__(v103, v106);
      v107 = v103 - v106;
      if ((v107 < 0) ^ v24 | (v107 == 0))
      {
        v108 = 0;
      }

      else
      {
        v108 = 1;
      }

      v109 = *(a3 + v105 + (v108 | (v107 >> 31)) + 2) + v103;
      if (v109 >= 0xFF)
      {
        v110 = 255;
      }

      else
      {
        v110 = v109;
      }

      if (v109 <= 0)
      {
        v111 = 0;
      }

      else
      {
        v111 = v110;
      }

      *(v102++ - 1) = v111;
      --v101;
    }

    while (v101);
  }

  if (v115 >= 1)
  {
    return memcpy(a5, __srca, (2 * v115));
  }

  return result;
}

char *sub_2774B109C(char *result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = &result[2 * a5 - 2];
    v7 = a6;
    do
    {
      *a4 = *v6;
      a4 += 2;
      v6 += a2;
      --v7;
    }

    while (v7);
    for (i = 0; i != a6; ++i)
    {
      v9 = result;
      v10 = a5;
      do
      {
        v11 = *(a3 + (*v9 >> 3)) + *v9;
        if (v11 >= 0xFF)
        {
          v12 = -1;
        }

        else
        {
          v12 = *(a3 + (*v9 >> 3)) + *v9;
        }

        if (v11 <= 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        *v9 = v13;
        v9 += 2;
        --v10;
      }

      while (v10);
      result += a2;
    }
  }

  return result;
}

uint64_t sub_2774B111C(unsigned __int8 *__src, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, uint64_t a6, int a7, int a8)
{
  v131 = *MEMORY[0x277D85DE8];
  v15 = (a4 >> 1) & 1;
  v16 = (2 * a7);
  v126 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[v16 - 2];
    v18 = a8;
    v19 = v130;
    do
    {
      *v19++ = *v17;
      v17 += a2;
      --v18;
    }

    while (v18);
  }

  v124 = a4;
  v20 = ~a4 & 5;
  __n = 2 * (v15 + a7);
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[2];
    v23 = *__src;
    v24 = *(a6 + 2);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0xFF)
    {
      v32 = -1;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v124 & 0x20) != 0)
  {
    v34 = __src[a2 + (v16 - 4)];
    v35 = __src[(v16 - 2)];
    v36 = *(a6 + v16);
    v25 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if ((v37 < 0) ^ v25 | (v37 == 0))
    {
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 | (v37 >> 31);
    v25 = __OFSUB__(v35, v34);
    v40 = v35 - v34;
    if ((v40 < 0) ^ v25 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + (v41 | (v40 >> 31)) + v39 + 2) + v35;
    if (v42 >= 0xFF)
    {
      v43 = -1;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    __src[(v16 - 2)] = v44;
  }

  if ((v124 & 4) != 0)
  {
    v46 = 0;
    v45 = (a7 - 1);
    v47 = v45 - 1;
    v48 = 4;
    do
    {
      v49 = __src[a2 + (v46 >> 32)];
      v50 = __src[v48 - 2];
      v51 = *(a6 + v48);
      v25 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if ((v52 < 0) ^ v25 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53 | (v52 >> 31);
      v25 = __OFSUB__(v50, v49);
      v55 = v50 - v49;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      v56 = *(a3 + ((result | (v55 >> 31)) + v54 + 2)) + v50;
      if (v56 >= 0xFF)
      {
        v57 = -1;
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= 0)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      __src[v48 - 2] = v58;
      v48 += 2;
      v46 += 0x200000000;
      --v47;
    }

    while (v47);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v127 = a2;
  v59 = &__src[a2];
  v123 = a8;
  v122 = v45;
  if (a8 < 3)
  {
    v68 = __dst;
  }

  else
  {
    v60 = &v129;
    v61 = v45 - (v15 ^ 1);
    v62 = !(v124 & 1);
    if (v61 <= v62)
    {
      v63 = !(v124 & 1);
    }

    else
    {
      v63 = v61;
    }

    v64 = v63 + 1;
    v65 = __dst;
    v66 = 1;
    v67 = v59;
    do
    {
      v68 = v60;
      result = memcpy(v60, v67, __n);
      v59 = &v67[v127];
      v69 = 2 * v62;
      v70 = !(v124 & 1);
      do
      {
        v71 = &v59[v69 - 2];
        if (!v70)
        {
          v71 = &a5[2 * v66 + 2];
        }

        v72 = v67[v69];
        v73 = *v71;
        v74 = LOBYTE(v65[v69 / 2u + 1]);
        v25 = __OFSUB__(v72, v74);
        v75 = v72 - v74;
        if ((v75 < 0) ^ v25 | (v75 == 0))
        {
          v76 = 0;
        }

        else
        {
          v76 = 1;
        }

        v77 = v76 | (v75 >> 31);
        v25 = __OFSUB__(v72, v73);
        v78 = v72 - v73;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = *(a3 + (v79 | (v78 >> 31)) + v77 + 2) + v72;
        if (v80 >= 0xFF)
        {
          v81 = -1;
        }

        else
        {
          v81 = v80;
        }

        if (v80 <= 0)
        {
          v82 = 0;
        }

        else
        {
          v82 = v81;
        }

        v67[v69] = v82;
        ++v70;
        v69 += 2;
      }

      while (v64 != v70);
      ++v66;
      v67 += v127;
      v60 = v65;
      v65 = v68;
    }

    while (v66 != v126);
  }

  if ((v124 & 0x40) != 0)
  {
    v83 = v59[v127 - 2];
    v84 = *v59;
    v85 = *(v68 + 2);
    v25 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if ((v86 < 0) ^ v25 | (v86 == 0))
    {
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87 | (v86 >> 31);
    v25 = __OFSUB__(v84, v83);
    v89 = v84 - v83;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(a3 + (v90 | (v89 >> 31)) + v88 + 2) + v84;
    if (v91 >= 0xFF)
    {
      v92 = -1;
    }

    else
    {
      v92 = v91;
    }

    if (v91 <= 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    *v59 = v93;
  }

  if ((v124 & 0xA) == 0xA)
  {
    v94 = &v59[2 * v122];
    v95 = v94[v127 - 2];
    v96 = *v94;
    v97 = LOBYTE(v68[(v122 & 0x7FFFFFFF) + 1]);
    v25 = __OFSUB__(v96, v97);
    v98 = v96 - v97;
    if ((v98 < 0) ^ v25 | (v98 == 0))
    {
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = v99 | (v98 >> 31);
    v25 = __OFSUB__(v96, v95);
    v101 = v96 - v95;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *(a3 + (v102 | (v101 >> 31)) + v100 + 2) + v96;
    if (v103 >= 0xFF)
    {
      v104 = -1;
    }

    else
    {
      v104 = v103;
    }

    if (v103 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }

    *v94 = v105;
  }

  if ((v124 & 8) != 0)
  {
    v106 = 0;
    v107 = v122 - 1;
    v108 = 2;
    do
    {
      v109 = v59[v127 + (v106 >> 32)];
      v110 = v59[v108 * 2 - 2];
      v111 = LOBYTE(v68[v108]);
      v25 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if ((v112 < 0) ^ v25 | (v112 == 0))
      {
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }

      result = v113 | (v112 >> 31);
      v25 = __OFSUB__(v110, v109);
      v114 = v110 - v109;
      if ((v114 < 0) ^ v25 | (v114 == 0))
      {
        v115 = 0;
      }

      else
      {
        v115 = 1;
      }

      v116 = *(a3 + (v115 | (v114 >> 31)) + result + 2) + v110;
      if (v116 >= 0xFF)
      {
        v117 = -1;
      }

      else
      {
        v117 = v116;
      }

      if (v116 <= 0)
      {
        v118 = 0;
      }

      else
      {
        v118 = v117;
      }

      v59[v108 * 2 - 2] = v118;
      ++v108;
      v106 += 0x200000000;
      --v107;
    }

    while (v107);
  }

  if (v123 >= 1)
  {
    v119 = v123;
    v120 = v130;
    do
    {
      v121 = *v120++;
      *a5 = v121;
      a5 += 2;
      --v119;
    }

    while (v119);
  }

  return result;
}

uint64_t sub_2774B15C4(unsigned __int8 *__src, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unsigned __int8 *a6, unsigned int a7, int a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v16 = v125;
  v123 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[2 * a7 - 2];
    v18 = a8;
    v19 = v127;
    do
    {
      *v19++ = *v17;
      v17 += a2;
      --v18;
    }

    while (v18);
  }

  v20 = a4 & 6;
  __n = 2 * a7;
  memcpy(v125, __src, __n);
  v124 = *a5;
  if ((a4 & 0x10) != 0)
  {
    v21 = *__src;
    v22 = *(a6 - 2);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if ((v24 < 0) ^ v23 | (v24 == 0))
    {
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = v25 | (v24 >> 31);
    v27 = __src[a2 + 2];
    v23 = __OFSUB__(v21, v27);
    v28 = v21 - v27;
    if ((v28 < 0) ^ v23 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + v26 + (v29 | (v28 >> 31)) + 2) + v21;
    if (v30 >= 0xFF)
    {
      v31 = -1;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  if (v20 == 6)
  {
    v33 = &__src[2 * a7];
    v34 = *(v33 - 2);
    v35 = a6[2 * a7 - 4];
    v23 = __OFSUB__(v34, v35);
    v36 = v34 - v35;
    if ((v36 < 0) ^ v23 | (v36 == 0))
    {
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = v37 | (v36 >> 31);
    v39 = v33[a2];
    v23 = __OFSUB__(v34, v39);
    v40 = v34 - v39;
    if ((v40 < 0) ^ v23 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + v38 + (v41 | (v40 >> 31)) + 2) + v34;
    if (v42 >= 0xFF)
    {
      v43 = -1;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *(v33 - 2) = v44;
  }

  if ((a4 & 4) != 0)
  {
    v45 = a7 - 1;
    v46 = v45 - 1;
    v47 = (__src + 2);
    v48 = 0x400000000;
    do
    {
      v49 = *v47;
      v50 = *a6;
      a6 += 2;
      v51 = (v49 > v50) | ((v49 - v50) >> 31);
      v52 = __src[a2 + (v48 >> 32)];
      v23 = __OFSUB__(v49, v52);
      v53 = v49 - v52;
      if ((v53 < 0) ^ v23 | (v53 == 0))
      {
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(a3 + v51 + (v54 | (v53 >> 31)) + 2) + v49;
      if (v55 >= 0xFF)
      {
        v56 = -1;
      }

      else
      {
        v56 = v55;
      }

      if (v55 <= 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *v47 = v57;
      v47 += 2;
      v48 += 0x200000000;
      --v46;
    }

    while (v46);
  }

  else
  {
    LODWORD(v45) = a7 - 1;
  }

  v117 = a4 & 9;
  v58 = &__src[a2];
  v119 = a4;
  v120 = a8;
  v118 = v45;
  if (a8 < 3)
  {
    v65 = v125;
    v66 = v58;
  }

  else
  {
    v59 = &v126;
    v60 = 1;
    LODWORD(v61) = (__PAIR64__(v45, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v61 = !(a4 & 1);
    }

    else
    {
      v61 = v61;
    }

    v121 = v61 - v62 + 1;
    v63 = (v62 << 33) + 0x200000000;
    v64 = 2 * v62;
    do
    {
      v65 = v59;
      memcpy(v59, v58, __n);
      *(v65 - 2) = a5[2 * v60];
      v66 = &v58[a2];
      v67 = v64;
      v68 = v63;
      v69 = v121;
      do
      {
        v70 = v58[v67];
        v71 = v16[v67 - 2];
        v23 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if ((v72 < 0) ^ v23 | (v72 == 0))
        {
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = *(a3 + (v73 | (v72 >> 31)) + ((v70 > v66[v68 >> 32]) | ((v70 - v66[v68 >> 32]) >> 31)) + 2) + v70;
        if (v74 >= 0xFF)
        {
          v75 = -1;
        }

        else
        {
          v75 = v74;
        }

        if (v74 <= 0)
        {
          v76 = 0;
        }

        else
        {
          v76 = v75;
        }

        v58[v67] = v76;
        v68 += 0x200000000;
        v67 += 2;
        --v69;
      }

      while (v69);
      ++v60;
      v58 += a2;
      v59 = v16;
      v16 = v65;
    }

    while (v60 != v123);
  }

  if (v117 == 9)
  {
    v77 = *v66;
    v78 = *(v65 - 2);
    v23 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if ((v79 < 0) ^ v23 | (v79 == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v80 | (v79 >> 31);
    v82 = v66[a2 + 2];
    v23 = __OFSUB__(v77, v82);
    v83 = v77 - v82;
    if ((v83 < 0) ^ v23 | (v83 == 0))
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(a3 + v81 + (v84 | (v83 >> 31)) + 2) + v77;
    if (v85 >= 0xFF)
    {
      v86 = -1;
    }

    else
    {
      v86 = v85;
    }

    if (v85 <= 0)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    *v66 = v87;
  }

  result = v120;
  if (v119 < 0)
  {
    v89 = &v66[2 * v118];
    v90 = *v89;
    v91 = v65[2 * v118 - 2];
    v23 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if ((v92 < 0) ^ v23 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v93 | (v92 >> 31);
    v95 = v89[a2 + 2];
    v23 = __OFSUB__(v90, v95);
    v96 = v90 - v95;
    if ((v96 < 0) ^ v23 | (v96 == 0))
    {
      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = *(a3 + v94 + (v97 | (v96 >> 31)) + 2) + v90;
    if (v98 >= 0xFF)
    {
      v99 = -1;
    }

    else
    {
      v99 = v98;
    }

    if (v98 <= 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    *v89 = v100;
  }

  if ((v119 & 8) != 0)
  {
    v101 = &v66[a2];
    v102 = v118 - 1;
    v103 = v66 + 2;
    v104 = 0x400000000;
    do
    {
      v105 = *v103;
      v106 = *v65;
      v65 += 2;
      v107 = (v105 > v106) | ((v105 - v106) >> 31);
      v108 = v101[v104 >> 32];
      v23 = __OFSUB__(v105, v108);
      v109 = v105 - v108;
      if ((v109 < 0) ^ v23 | (v109 == 0))
      {
        v110 = 0;
      }

      else
      {
        v110 = 1;
      }

      v111 = *(a3 + v107 + (v110 | (v109 >> 31)) + 2) + v105;
      if (v111 >= 0xFF)
      {
        v112 = -1;
      }

      else
      {
        v112 = v111;
      }

      if (v111 <= 0)
      {
        v113 = 0;
      }

      else
      {
        v113 = v112;
      }

      *v103 = v113;
      v103 += 2;
      v104 += 0x200000000;
      --v102;
    }

    while (v102);
  }

  if (v120 >= 1)
  {
    v114 = v120;
    v115 = v127;
    do
    {
      v116 = *v115++;
      *a5 = v116;
      a5 += 2;
      --v114;
    }

    while (v114);
  }

  return result;
}

uint64_t sub_2774B1A64(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, uint64_t a6, int a7)
{
  sub_2774B111C(a1, a2, a3, a4, a5, a6, 32, a7);

  return sub_2774B111C(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 32, a7);
}

uint64_t sub_2774B1AF0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  sub_2774B15C4(a1, a2, a3, a4, a5, a6, 0x20u, a7);

  return sub_2774B15C4(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x20u, a7);
}

uint64_t sub_2774B1B7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, uint64_t a6, int a7)
{
  sub_2774B111C(a1, a2, a3, a4, a5, a6, 16, a7);

  return sub_2774B111C(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 16, a7);
}

uint64_t sub_2774B1C08(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  sub_2774B15C4(a1, a2, a3, a4, a5, a6, 0x10u, a7);

  return sub_2774B15C4(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 0x10u, a7);
}

uint64_t sub_2774B1C94(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, uint64_t a6, int a7)
{
  sub_2774B111C(a1, a2, a3, a4, a5, a6, 8, a7);

  return sub_2774B111C(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8, a7);
}

uint64_t sub_2774B1D20(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  sub_2774B15C4(a1, a2, a3, a4, a5, a6, 8u, a7);

  return sub_2774B15C4(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 8u, a7);
}

char *sub_2774B1DAC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7)
{
  sub_2774B109C(a1, a2, a3, a5, 4u, a7);

  return sub_2774B109C(a1 + 1, a2, a3 + 32, a5 + 1, 4u, a7);
}

uint64_t sub_2774B1E24(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, uint64_t a6, int a7)
{
  sub_2774B111C(a1, a2, a3, a4, a5, a6, 4, a7);

  return sub_2774B111C(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4, a7);
}

uint64_t sub_2774B1EB0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  sub_2774B15C4(a1, a2, a3, a4, a5, a6, 4u, a7);

  return sub_2774B15C4(a1 + 1, a2, a3 + 32, a4, a5 + 1, a6 + 1, 4u, a7);
}

void *sub_2774B1F3C(unsigned __int8 *__src, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, int a7, int a8)
{
  v12 = a4;
  v132 = *MEMORY[0x277D85DE8];
  v16 = (a4 >> 1) & 1;
  __n = (v16 + a7);
  v127 = (a8 - 1);
  if (a8 >= 1)
  {
    v17 = &__src[a7 - 1];
    v18 = __srca;
    v19 = a8;
    do
    {
      *v18++ = *v17;
      v17 += a2;
      --v19;
    }

    while (v19);
  }

  v121 = a8;
  v20 = ~a4 & 5;
  result = memcpy(__dst, __src, __n);
  if (!v20)
  {
    v22 = a5[1];
    v23 = *__src;
    v24 = *(a6 + 1);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 | (v26 >> 31);
    v25 = __OFSUB__(v23, v22);
    v29 = v23 - v22;
    if ((v29 < 0) ^ v25 | (v29 == 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(a3 + (v30 | (v29 >> 31)) + v28 + 2) + v23;
    if (v31 >= 0xFF)
    {
      v32 = -1;
    }

    else
    {
      v32 = v31;
    }

    if (v31 <= 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    *__src = v33;
  }

  if ((v12 & 0x20) != 0)
  {
    v34 = (a7 - 1);
    v35 = &__src[v34];
    v36 = __src[v34 - 1 + a2];
    v37 = __src[v34];
    LODWORD(v34) = *(a6 + v34 + 1);
    v25 = __OFSUB__(v37, v34);
    v38 = v37 - v34;
    if ((v38 < 0) ^ v25 | (v38 == 0))
    {
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 | (v38 >> 31);
    v25 = __OFSUB__(v37, v36);
    v41 = v37 - v36;
    if ((v41 < 0) ^ v25 | (v41 == 0))
    {
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *(a3 + (v42 | (v41 >> 31)) + v40 + 2) + v37;
    if (v43 >= 0xFF)
    {
      v44 = -1;
    }

    else
    {
      v44 = v43;
    }

    if (v43 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *v35 = v45;
  }

  v46 = (a7 - 1);
  if ((v12 & 4) != 0)
  {
    v47 = v46 - 1;
    v48 = (a6 + 2);
    v49 = __src;
    do
    {
      v50 = v49[a2];
      v52 = *++v49;
      v51 = v52;
      v53 = *v48++;
      v54 = (v51 > v53) | ((v51 - v53) >> 31);
      v25 = __OFSUB__(v51, v50);
      v55 = v51 - v50;
      if ((v55 < 0) ^ v25 | (v55 == 0))
      {
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = *(a3 + (v56 | (v55 >> 31)) + v54 + 2) + v51;
      if (v57 >= 0xFF)
      {
        v58 = -1;
      }

      else
      {
        v58 = v57;
      }

      if (v57 <= 0)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      *v49 = v59;
      --v47;
    }

    while (v47);
  }

  v60 = &__src[a2];
  v124 = v12;
  v125 = a8;
  v122 = a5;
  v123 = a7 - 1;
  if (a8 < 3)
  {
    v69 = __dst;
  }

  else
  {
    v61 = &v130;
    v62 = v46 - (v16 ^ 1);
    v63 = !(v12 & 1);
    v126 = a5 + 1;
    if (v62 <= v63)
    {
      v64 = !(v12 & 1);
    }

    else
    {
      v64 = v62;
    }

    v65 = ~v64 + v63;
    v66 = &__src[2 * a2 - 1];
    v67 = __dst;
    v68 = 1;
    do
    {
      v69 = v61;
      v70 = v60;
      result = memcpy(v61, v60, __n);
      v71 = 0;
      v72 = v67 + 1;
      v60 = &v70[a2];
      v73 = v66;
      do
      {
        v74 = &v73[v63];
        if (!(v63 + v71))
        {
          v74 = &v126[v68];
        }

        v75 = v70[v63];
        v76 = v72[v63];
        v77 = *v74;
        v25 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if ((v78 < 0) ^ v25 | (v78 == 0))
        {
          v79 = 0;
        }

        else
        {
          v79 = 1;
        }

        v80 = v79 | (v78 >> 31);
        v25 = __OFSUB__(v75, v77);
        v81 = v75 - v77;
        if ((v81 < 0) ^ v25 | (v81 == 0))
        {
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *(a3 + (v82 | (v81 >> 31)) + v80 + 2) + v75;
        if (v83 >= 0xFF)
        {
          v84 = -1;
        }

        else
        {
          v84 = v83;
        }

        if (v83 <= 0)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        v70[v63] = v85;
        ++v71;
        ++v72;
        ++v70;
        ++v73;
      }

      while (v65 + v71);
      ++v68;
      v66 += a2;
      v61 = v67;
      v67 = v69;
    }

    while (v68 != v127);
  }

  if ((v124 & 0x40) != 0)
  {
    v86 = v60[a2 - 1];
    v87 = *v60;
    v88 = v69[1];
    v25 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if ((v89 < 0) ^ v25 | (v89 == 0))
    {
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v90 | (v89 >> 31);
    v25 = __OFSUB__(v87, v86);
    v92 = v87 - v86;
    if ((v92 < 0) ^ v25 | (v92 == 0))
    {
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = *(a3 + (v93 | (v92 >> 31)) + v91 + 2) + v87;
    if (v94 >= 0xFF)
    {
      v95 = -1;
    }

    else
    {
      v95 = v94;
    }

    if (v94 <= 0)
    {
      v96 = 0;
    }

    else
    {
      v96 = v95;
    }

    *v60 = v96;
  }

  if ((v124 & 0xA) == 0xA)
  {
    v97 = &v60[v123];
    v98 = v97[a2 - 1];
    v99 = *v97;
    v100 = v69[v123 + 1];
    v25 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if ((v101 < 0) ^ v25 | (v101 == 0))
    {
      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = v102 | (v101 >> 31);
    v25 = __OFSUB__(v99, v98);
    v104 = v99 - v98;
    if ((v104 < 0) ^ v25 | (v104 == 0))
    {
      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(a3 + (v105 | (v104 >> 31)) + v103 + 2) + v99;
    if (v106 >= 0xFF)
    {
      v107 = -1;
    }

    else
    {
      v107 = v106;
    }

    if (v106 <= 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    *v97 = v108;
  }

  if ((v124 & 8) != 0)
  {
    v109 = v123 - 1;
    v110 = (v69 + 2);
    do
    {
      v111 = v60[a2];
      v113 = *++v60;
      v112 = v113;
      v114 = *v110++;
      v115 = (v112 > v114) | ((v112 - v114) >> 31);
      v25 = __OFSUB__(v112, v111);
      v116 = v112 - v111;
      if ((v116 < 0) ^ v25 | (v116 == 0))
      {
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = *(a3 + (v117 | (v116 >> 31)) + v115 + 2) + v112;
      if (v118 >= 0xFF)
      {
        v119 = -1;
      }

      else
      {
        v119 = v118;
      }

      if (v118 <= 0)
      {
        v120 = 0;
      }

      else
      {
        v120 = v119;
      }

      *v60 = v120;
      --v109;
    }

    while (v109);
  }

  if (v125 >= 1)
  {
    return memcpy(v122, __srca, v121);
  }

  return result;
}

void *sub_2774B2398(char *__src, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, unsigned __int8 *a6, unsigned int a7, int a8)
{
  v124 = *MEMORY[0x277D85DE8];
  v15 = v121;
  v117 = (a8 - 1);
  __n = a7;
  if (a8 >= 1)
  {
    v16 = &__src[a7 - 1];
    v17 = __srca;
    v18 = a8;
    do
    {
      *v17++ = *v16;
      v16 += a2;
      --v18;
    }

    while (v18);
  }

  v113 = a8;
  v19 = a4 & 6;
  result = memcpy(v121, __src, a7);
  v120 = *a5;
  if ((a4 & 0x10) != 0)
  {
    v21 = *__src;
    v22 = *(a6 - 1);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if ((v24 < 0) ^ v23 | (v24 == 0))
    {
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = v25 | (v24 >> 31);
    v27 = __src[a2 + 1];
    v23 = __OFSUB__(v21, v27);
    v28 = v21 - v27;
    if ((v28 < 0) ^ v23 | (v28 == 0))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = *(a3 + v26 + (v29 | (v28 >> 31)) + 2) + v21;
    if (v30 >= 0xFF)
    {
      v31 = -1;
    }

    else
    {
      v31 = v30;
    }

    if (v30 <= 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    *__src = v32;
  }

  if (v19 == 6)
  {
    v33 = a7 - 1;
    v34 = &__src[v33];
    v35 = __src[v33];
    LODWORD(v33) = a6[v33 - 1];
    v23 = __OFSUB__(v35, v33);
    v36 = v35 - v33;
    if ((v36 < 0) ^ v23 | (v36 == 0))
    {
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = v37 | (v36 >> 31);
    v39 = v34[a2 + 1];
    v23 = __OFSUB__(v35, v39);
    v40 = v35 - v39;
    if ((v40 < 0) ^ v23 | (v40 == 0))
    {
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *(a3 + v38 + (v41 | (v40 >> 31)) + 2) + v35;
    if (v42 >= 0xFF)
    {
      v43 = -1;
    }

    else
    {
      v43 = v42;
    }

    if (v42 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *v34 = v44;
  }

  v45 = a7 - 1;
  if ((a4 & 4) != 0)
  {
    v46 = v45 - 1;
    v47 = __src + 2;
    do
    {
      v48 = *(v47 - 1);
      v49 = *a6++;
      v50 = (v48 > v49) | ((v48 - v49) >> 31);
      v51 = v47[a2];
      v23 = __OFSUB__(v48, v51);
      v52 = v48 - v51;
      if ((v52 < 0) ^ v23 | (v52 == 0))
      {
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = *(a3 + v50 + (v53 | (v52 >> 31)) + 2) + v48;
      if (v54 >= 0xFF)
      {
        v55 = -1;
      }

      else
      {
        v55 = v54;
      }

      if (v54 <= 0)
      {
        v56 = 0;
      }

      else
      {
        v56 = v55;
      }

      *(v47++ - 1) = v56;
      --v46;
    }

    while (v46);
  }

  v57 = &__src[a2];
  v115 = a8;
  v114 = v45;
  if (a8 < 3)
  {
    v67 = &__src[a2];
  }

  else
  {
    v58 = __src;
    v59 = &v122;
    v60 = 1;
    v61 = (__PAIR64__(v45, (a4 >> 1) & 1) - 1) >> 32;
    v62 = !(a4 & 1);
    if (v61 <= v62)
    {
      v63 = !(a4 & 1);
    }

    else
    {
      v63 = v61;
    }

    v116 = v63 - v62 + 1;
    v64 = &v58[(v62 | (2 * a2)) + 1];
    do
    {
      v65 = v15;
      v15 = v59;
      v66 = (v65 - 1);
      v59 = v65;
      result = memcpy(v15, v57, __n);
      *(v15 - 1) = a5[v60];
      v67 = &v57[a2];
      v68 = v64;
      v69 = v116;
      v70 = !(a4 & 1);
      do
      {
        v71 = v57[v70];
        v72 = v66[v70];
        v23 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if ((v73 < 0) ^ v23 | (v73 == 0))
        {
          v74 = 0;
        }

        else
        {
          v74 = 1;
        }

        v75 = *v68++;
        v76 = *(a3 + (v74 | (v73 >> 31)) + ((v71 > v75) | ((v71 - v75) >> 31)) + 2) + v71;
        if (v76 >= 0xFF)
        {
          v77 = -1;
        }

        else
        {
          v77 = v76;
        }

        if (v76 <= 0)
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        v57[v70++] = v78;
        --v69;
      }

      while (v69);
      ++v60;
      v64 += a2;
      v57 += a2;
    }

    while (v60 != v117);
  }

  if ((a4 & 9) == 9)
  {
    v79 = *v67;
    v80 = *(v15 - 1);
    v23 = __OFSUB__(v79, v80);
    v81 = v79 - v80;
    if ((v81 < 0) ^ v23 | (v81 == 0))
    {
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = v82 | (v81 >> 31);
    v84 = v67[a2 + 1];
    v23 = __OFSUB__(v79, v84);
    v85 = v79 - v84;
    if ((v85 < 0) ^ v23 | (v85 == 0))
    {
      v86 = 0;
    }

    else
    {
      v86 = 1;
    }

    v87 = *(a3 + v83 + (v86 | (v85 >> 31)) + 2) + v79;
    if (v87 >= 0xFF)
    {
      v88 = -1;
    }

    else
    {
      v88 = v87;
    }

    if (v87 <= 0)
    {
      v89 = 0;
    }

    else
    {
      v89 = v88;
    }

    *v67 = v89;
  }

  if ((a4 & 0x80) != 0)
  {
    v90 = &v67[v114];
    v91 = *v90;
    v92 = v15[v114 - 1];
    v23 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if ((v93 < 0) ^ v23 | (v93 == 0))
    {
      v94 = 0;
    }

    else
    {
      v94 = 1;
    }

    v95 = v94 | (v93 >> 31);
    v96 = v90[a2 + 1];
    v23 = __OFSUB__(v91, v96);
    v97 = v91 - v96;
    if ((v97 < 0) ^ v23 | (v97 == 0))
    {
      v98 = 0;
    }

    else
    {
      v98 = 1;
    }

    v99 = *(a3 + v95 + (v98 | (v97 >> 31)) + 2) + v91;
    if (v99 >= 0xFF)
    {
      v100 = -1;
    }

    else
    {
      v100 = v99;
    }

    if (v99 <= 0)
    {
      v101 = 0;
    }

    else
    {
      v101 = v100;
    }

    *v90 = v101;
  }

  if ((a4 & 8) != 0)
  {
    v102 = v114 - 1;
    v103 = v67 + 2;
    do
    {
      v104 = *(v103 - 1);
      v105 = *v15++;
      v106 = (v104 > v105) | ((v104 - v105) >> 31);
      v107 = v103[a2];
      v23 = __OFSUB__(v104, v107);
      v108 = v104 - v107;
      if ((v108 < 0) ^ v23 | (v108 == 0))
      {
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(a3 + v106 + (v109 | (v108 >> 31)) + 2) + v104;
      if (v110 >= 0xFF)
      {
        v111 = -1;
      }

      else
      {
        v111 = v110;
      }

      if (v110 <= 0)
      {
        v112 = 0;
      }

      else
      {
        v112 = v111;
      }

      *(v103++ - 1) = v112;
      --v102;
    }

    while (v102);
  }

  if (v115 >= 1)
  {
    return memcpy(a5, __srca, v113);
  }

  return result;
}

uint64_t sub_2774B2800(uint64_t result, uint64_t a2)
{
  v2 = sub_2774B34B0;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_2774B34B0;
    if (!*(*(a2 + 16) + 283))
    {
      v2 = sub_2774B2858;
    }
  }

  *(result + 448) = v2;
  *(result + 456) = 0;
  return result;
}

int8x16_t sub_2774B2858(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, __int128 a54, __int128 a55, __int128 a56, char a57)
{
  v57 = a1;
  v158 = &v156;
  STACK[0x578] = *MEMORY[0x277D85DE8];
  vars0 = a2;
  v58 = *(a2 + 8);
  v59 = *(a1 + 16);
  v60 = *(a1 + 20);
  v61 = (*(v58 + 1000) + 16 * v59 * a3);
  v62 = *(v58 + 416);
  v63 = *(v58 + 424);
  v64 = *(a1 + 8);
  v65 = *(a1 + 12);
  v66 = v65 * a3;
  v67 = *(v58 + 531);
  v68 = *(v58 + 400) + ((v62 * v66) << v67);
  v69 = *(v58 + 408) + ((v63 * v66) << v67);
  v171 = *(a1 + 48);
  v172 = *(a1 + 32);
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
  v164 = v62;
  if (v60 - 1 <= a3)
  {
    v73 = *(v58 + 524) - v66;
  }

  else
  {
    v70 = v70 | 0x88;
    v71 |= 0x40u;
    v72 = *(v58 + 520);
    memcpy(*(a1 + 40), (v68 + 2 * v62 * (v65 - 1)), 2 * v72);
    memcpy(v57[3].i64[1], (v69 + 2 * v63 * (v57->i32[3] - 1)), 4 * v72);
    v73 = v57->u32[3];
    v59 = v57[1].i32[0];
  }

  v170 = v73;
  v165 = v57;
  v162 = v63;
  if (v59 < 2)
  {
    LODWORD(v161) = 0;
    v103 = 0;
    v74 = 0;
  }

  else
  {
    v157 = v58;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v159 = &v57[9].i64[5 * v64 + 1];
    v160 = v73;
    v161 = &v57[-3].i64[5 * v64];
    HIDWORD(v163) = v71 | v70;
    v77 = 2 * v164;
    do
    {
      v168 = v76;
      v78 = sub_2774B3014(vars0, v74, HIDWORD(vars8), v70);
      v80 = *v61;
      v81 = (v80 & 1) == 0;
      if (v80)
      {
        v82 = (v80 >> 1) & 7;
        if (v82 > 4)
        {
          return result;
        }

        if (v82 == 4)
        {
          v83 = 0;
          v84 = v61[13];
          a53 = 0u;
          a54 = 0u;
          do
          {
            *(&a53 + ((v84 + v83) & 0x1F)) = v61[v83 + 1];
            ++v83;
          }

          while (v83 != 4);
        }

        else
        {
          LOWORD(a53) = *(v61 + 1);
          *(&a53 + 3) = *(v61 + 3);
          BYTE2(a53) = 0;
        }

        v85 = v81;
        if (v75 && v170 > 0)
        {
          v86 = (v68 - 2);
          v87 = &a57;
          v88 = v160;
          do
          {
            *v87 = *v86;
            v87 += 2;
            v86 = (v86 + v77);
            --v88;
          }

          while (v88);
        }

        v89 = v78;
        (*(v161 + 8 * v82))(v68, v164, &a53);
        v78 = v89;
        LODWORD(v80) = *v61;
        v81 = v85;
      }

      v90 = (v80 & 0x10) == 0;
      v91 = v69;
      if ((v80 & 0x10) != 0)
      {
        if (v80 > 0x9F)
        {
          return result;
        }

        v92 = v80 >> 5;
        if (v92 == 4)
        {
          v93 = 0;
          v94 = v61[14];
          a53 = 0u;
          a54 = 0u;
          do
          {
            *(&a53 + ((v94 + v93) & 0x1F)) = v61[v93 + 5];
            ++v93;
          }

          while (v93 != 4);
          v95 = 0;
          v96 = v61[15];
          a55 = 0u;
          a56 = 0u;
          do
          {
            *(&a55 + ((v96 + v95) & 0x1F)) = v61[v95 + 9];
            ++v95;
          }

          while (v95 != 4);
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

        v97 = v81;
        v98 = v90;
        if (v168 && v170 > 0)
        {
          v99 = (v91 - 4);
          v100 = &a13;
          v101 = v160;
          do
          {
            *v100 = *v99;
            v100 += 4;
            v99 = (v99 + 2 * v63);
            --v101;
          }

          while (v101);
        }

        (*(v159 + 8 * v92))(v91, v162, &a53, v78, &a13, v171, v170);
        v90 = v98;
        v81 = v97;
      }

      v102 = v165->i32[3];
      v68 += 2 * v102;
      v69 = v91 + 4 * v102;
      v171 += 4 * v102;
      v172 += 2 * v102;
      v61 += 16;
      v74 = (v74 + 1);
      v75 = v81;
      v76 = v90;
      v70 = HIDWORD(v163);
    }

    while (v74 < v165[1].i32[0] - 1);
    v103 = v81;
    LODWORD(v161) = v90;
    LOBYTE(v70) = BYTE4(v163);
    v57 = v165;
    v58 = v157;
  }

  v169 = v69;
  HIDWORD(vars8) = sub_2774B3014(vars0, v74, HIDWORD(vars8), v70 & 0x5D);
  v104 = *(v58 + 520) - (v57[1].i32[0] - 1) * v57->i32[3];
  v105 = *v61;
  if (v105)
  {
    v106 = (v105 >> 1) & 7;
    if (v106 > 4)
    {
      return result;
    }

    if (v106 == 4)
    {
      v107 = (v61 + 1);
      v108 = v61[13];
      result = 0uLL;
      a53 = 0u;
      a54 = 0u;
      v109 = 4;
      do
      {
        v110 = *v107++;
        *(&a53 + (v108++ & 0x1F)) = v110;
        --v109;
      }

      while (v109);
    }

    else
    {
      LOWORD(a53) = *(v61 + 1);
      *(&a53 + 3) = *(v61 + 3);
      BYTE2(a53) = 0;
    }

    if (v170 > 0 && v103)
    {
      v112 = (v68 - 2);
      v113 = 2 * v164;
      v114 = &a57;
      v115 = v170;
      do
      {
        *v114 = *v112;
        v114 += 2;
        v112 = (v112 + v113);
        --v115;
      }

      while (v115);
    }

    v116 = v68;
    if ((vars8 & 0x400000000) != 0)
    {
      v117 = 34;
    }

    else
    {
      v117 = 2;
    }

    if ((vars8 & 0x400000000) != 0)
    {
      v118 = 17;
    }

    else
    {
      v118 = 1;
    }

    v119 = v117 & 0xFFFFFF7F | (((vars8 & 0x800000000) != 0) << 7);
    v120 = v118 & 0xFFFFFFBF | (((vars8 & 0x800000000) != 0) << 6);
    LODWORD(vars0) = v104;
    v121 = v104 >> 3;
    v122 = &v57[12] + v106;
    v123 = 4;
    v124 = HIDWORD(vars8);
    do
    {
      if ((v121 & (1 << --v123)) != 0)
      {
        v121 -= 1 << v123;
        if (v121)
        {
          v125 = v119;
        }

        else
        {
          v125 = 0;
        }

        v126 = v124 & 0xC | v120;
        (*v122)(v116, v164, &a53, v125 | v124, &a57, v172, v170);
        v116 += 2 * (8 << v123);
        v124 = v126;
        v172 += 2 * (8 << v123);
      }

      v122 -= 5;
    }

    while (v123);
    LODWORD(v105) = *v61;
    v104 = vars0;
  }

  v127 = HIDWORD(vars8);
  if ((v105 & 0x10) == 0)
  {
LABEL_93:
    v154 = v165;
    result = vextq_s8(v165[2], v165[2], 8uLL);
    v155 = vextq_s8(v165[3], v165[3], 8uLL);
    v165[2] = result;
    v154[3] = v155;
    return result;
  }

  if (v105 <= 0x9F)
  {
    v128 = v105 >> 5;
    if (v128 == 4)
    {
      v129 = (v61 + 5);
      v130 = v61[14];
      a53 = 0u;
      a54 = 0u;
      v131 = 4;
      v132 = v165;
      v133 = v162;
      v134 = v169;
      v135 = v161;
      do
      {
        v136 = *v129++;
        *(&a53 + (v130++ & 0x1F)) = v136;
        --v131;
      }

      while (v131);
      v137 = (v61 + 9);
      v138 = v61[15];
      a55 = 0u;
      a56 = 0u;
      v139 = 4;
      do
      {
        v140 = *v137++;
        *(&a55 + (v138++ & 0x1F)) = v140;
        --v139;
      }

      while (v139);
    }

    else
    {
      LOWORD(a53) = *(v61 + 5);
      *(&a53 + 3) = *(v61 + 7);
      BYTE2(a53) = 0;
      LOWORD(a55) = *(v61 + 9);
      *(&a55 + 3) = *(v61 + 11);
      BYTE2(a55) = 0;
      v132 = v165;
      v133 = v162;
      v134 = v169;
      v135 = v161;
    }

    if (v170 > 0)
    {
      v141 = v135;
    }

    else
    {
      v141 = 0;
    }

    if (v141 == 1)
    {
      v142 = (v134 - 4);
      v143 = &a13;
      v144 = v170;
      do
      {
        *v143 = *v142;
        v143 += 4;
        v142 = (v142 + 2 * v133);
        --v144;
      }

      while (v144);
    }

    if ((v127 & 4) != 0)
    {
      v145 = 34;
    }

    else
    {
      v145 = 2;
    }

    if ((v127 & 4) != 0)
    {
      v146 = 17;
    }

    else
    {
      v146 = 1;
    }

    v147 = v145 & 0xFFFFFF7F | (((v127 & 8) != 0) << 7);
    v148 = v146 & 0xFFFFFFBF | (((v127 & 8) != 0) << 6);
    v149 = v104 >> 2;
    v150 = &v132[24].i64[v128 + 1];
    v151 = 5;
    do
    {
      if ((v149 & (1 << --v151)) != 0)
      {
        v149 -= 1 << v151;
        if (v149)
        {
          v152 = v147;
        }

        else
        {
          v152 = 0;
        }

        v153 = v127;
        v127 = v127 & 0xC | v148;
        (*v150)(v169, v162, &a53, v152 | v153, &a13, v171, v170);
        v169 += 2 * (8 << v151);
        v171 += 2 * (8 << v151);
      }

      v150 -= 5;
    }

    while (v151);
    goto LABEL_93;
  }

  return result;
}

uint64_t sub_2774B3014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 20);
  if (v11 == 1)
  {
    v12 = *(v10 + 1744);
    if (v12 > a2)
    {
      v11 = *(v10 + 1748);
      if (v11 > a3)
      {
        if (*(v10 + 1752) == 1)
        {
          v13 = *(v10 + 1696) + 12 * a2;
          v5 = *(v13 + 4);
          v12 = *(v13 + 8);
          v14 = *(v10 + 1720) + 12 * a3;
          v4 = *(v14 + 4);
          v11 = *(v14 + 8);
        }

        else
        {
          v4 = 0;
          v5 = 0;
        }
      }
    }

    if (*(v10 + 27))
    {
      v17 = *(a1 + 1600);
      v19 = v12 - 1 == a2 && v4 < a3;
      v20 = v11 - 1;
      v22 = v5 == a2 && v20 > a3;
      v15 = v17 == 1 && v22;
      v16 = v17 == 1 && v19;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v23 = a4 & 0xFFFFFFAE;
      if (v5 != a2)
      {
        v23 = a4;
      }

      v24 = v12 - 1 == a2;
      v25 = v23 & 0xFFFFFF5D;
      if (!v24)
      {
        v25 = v23;
      }

      if (v4 == a3)
      {
        v25 &= 0xFFFFFFCB;
      }

      if (v11 - 1 == a3)
      {
        v6 = v25 & 0xFFFFFF37;
      }

      else
      {
        v6 = v25;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (*(a1 + 1600) == 1)
  {
    v26 = (**a1)(a1, a2, a3);
    v27 = *(v26 + 648);
    if (*(v26 + 567))
    {
LABEL_57:
      if ((v6 & 2) != 0)
      {
        v30 = (**a1)(a1, (a2 + 1), a3);
        if (*(v30 + 648) != v27)
        {
          if (*(v30 + 567))
          {
            v6 = v6;
          }

          else
          {
            v6 = v6 & 0xFFFFFFFD;
          }
        }
      }

      if ((v6 & 8) != 0)
      {
        v31 = (**a1)(a1, a2, (a3 + 1));
        if (*(v31 + 648) != v27)
        {
          if (*(v31 + 567))
          {
            v6 = v6;
          }

          else
          {
            v6 = v6 & 0xFFFFFFF7;
          }
        }
      }

      if ((v6 & 0x80) != 0)
      {
        v32 = (**a1)(a1, (a2 + 1), (a3 + 1));
        if (*(v32 + 648) != v27)
        {
          if (*(v32 + 567))
          {
            v6 = v6;
          }

          else
          {
            v6 = v6 & 0xFFFFFF7F;
          }
        }
      }

      if ((v6 & 0x40) != 0)
      {
        v33 = v15;
      }

      else
      {
        v33 = 1;
      }

      if ((v33 & 1) == 0)
      {
        v34 = (**a1)(a1, (a2 - 1), (a3 + 1));
        if (*(v34 + 648) != v27)
        {
          if (*(v34 + 567))
          {
            v6 = v6;
          }

          else
          {
            v6 = v6 & 0xFFFFFFBF;
          }
        }
      }

      v35 = v16 ^ 1;
      if ((v6 & 0x20) == 0)
      {
        v35 = 1;
      }

      if ((v35 & 1) == 0)
      {
        v36 = (**a1)(a1, (a2 + 1), (a3 - 1));
        if (*(v36 + 648) != v27)
        {
          if (*(v36 + 567))
          {
            return v6;
          }

          else
          {
            return v6 & 0xFFFFFFDF;
          }
        }
      }

      return v6;
    }

    if (v6)
    {
      if (*((**a1)(a1, (a2 - 1), a3) + 648) == v27)
      {
        v6 = v6;
      }

      else
      {
        v6 = v6 & 0xFFFFFFFE;
      }

      if ((v6 & 4) == 0)
      {
LABEL_40:
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_40;
    }

    if (*((**a1)(a1, a2, (a3 - 1)) + 648) == v27)
    {
      v6 = v6;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFB;
    }

    if ((v6 & 0x10) == 0)
    {
      goto LABEL_44;
    }

LABEL_41:
    if (*((**a1)(a1, (a2 - 1), (a3 - 1)) + 648) == v27)
    {
      v6 = v6;
    }

    else
    {
      v6 = v6 & 0xFFFFFFEF;
    }

LABEL_44:
    if ((v6 & 0x20) != 0)
    {
      v28 = v16;
    }

    else
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
      if (*((**a1)(a1, (a2 + 1), (a3 - 1)) + 648) == v27)
      {
        v6 = v6;
      }

      else
      {
        v6 = v6 & 0xFFFFFFDF;
      }
    }

    v29 = v15 ^ 1;
    if ((v6 & 0x40) == 0)
    {
      v29 = 1;
    }

    if ((v29 & 1) == 0)
    {
      if (*((**a1)(a1, (a2 - 1), (a3 + 1)) + 648) == v27)
      {
        v6 = v6;
      }

      else
      {
        v6 = v6 & 0xFFFFFFBF;
      }
    }

    goto LABEL_57;
  }

  return v6;
}

int8x16_t sub_2774B34B0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t __dst)
{
  v19 = MEMORY[0x28223BE20](a1);
  v21 = &v116;
  STACK[0x242F8] = *MEMORY[0x277D85DE8];
  v132 = v22;
  v23 = *(v22 + 8);
  v24 = *(v19 + 16);
  v25 = *(v19 + 20);
  v26 = (*(v23 + 1000) + 16 * v24 * v20);
  v28 = *(v23 + 416);
  v27 = *(v23 + 424);
  v29 = *(v19 + 8);
  v30 = *(v19 + 12);
  v31 = v30 * v20;
  v32 = *(v23 + 531);
  v33 = *(v23 + 400) + ((v28 * v31) << v32);
  v34 = *(v23 + 408) + ((v27 * v31) << v32);
  v135 = v34;
  v136 = *(v19 + 32);
  v134 = *(v19 + 48);
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

  v131 = v20;
  v128 = v19;
  vars0 = *(v23 + 424);
  v118 = v23;
  if (v25 - 1 <= v20)
  {
    v39 = v19;
    v40 = *(v23 + 524) - v31;
  }

  else
  {
    v35 = v35 | 0x88;
    v36 |= 0x40u;
    v37 = *(v23 + 520);
    memcpy(*(v19 + 40), (v33 + 2 * v28 * (v30 - 1)), 2 * v37);
    v38 = 4 * v37;
    v39 = v128;
    memcpy(*(v128 + 56), (v34 + 2 * v27 * (*(v128 + 12) - 1)), v38);
    v40 = *(v128 + 12);
    v24 = *(v128 + 16);
  }

  v133 = v40;
  v127 = v28;
  if (v24 < 2)
  {
    vars8_4 = 0;
    v67 = 0;
    v41 = 0;
  }

  else
  {
    v117 = &v116;
    v41 = 0;
    v42 = v39;
    v43 = 0;
    LODWORD(v44) = 0;
    v119 = &v42[9].i64[5 * v29 + 1];
    v120 = v40;
    v121 = &v42[-3].i64[5 * v29];
    vars8 = v36 | v35;
    v45 = 2 * vars0;
    do
    {
      v46 = sub_2774B3014(v132, v41, v131, v35);
      v48 = v46;
      v49 = *v26;
      v50 = (v49 & 1) == 0;
      v129 = v50;
      if (v49)
      {
        vars8_4 = v44;
        v44 = v46;
        v51 = (v49 >> 1) & 7;
        if (v51 > 4)
        {
          return result;
        }

        if (v51 == 4)
        {
          v52 = 0;
          v53 = v26[13];
          *&STACK[0x24200] = 0u;
          *&STACK[0x24210] = 0u;
          do
          {
            *(&STACK[0x24200] + ((v53 + v52) & 0x1F)) = v26[v52 + 1];
            ++v52;
          }

          while (v52 != 4);
        }

        else
        {
          LOWORD(STACK[0x24200]) = *(v26 + 1);
          LOWORD(STACK[0x24203]) = *(v26 + 3);
          LOBYTE(STACK[0x24202]) = 0;
        }

        if (v43 && v133 > 0)
        {
          v54 = (v33 - 2);
          v55 = &STACK[0x24240];
          v56 = v120;
          do
          {
            *v55 = *v54;
            v55 = (v55 + 2);
            v54 += v127;
            --v56;
          }

          while (v56);
        }

        sub_2774467E4(&__dst, v132, v41 << *(v128 + 8), v131 << *(v128 + 8), *(v128 + 12), v133, 0);
        v57 = *(v121 + 8 * v51);
        v48 = v44;
        v57(v33, v127, &STACK[0x24200], v44, &STACK[0x24240], v136, v133);
        sub_27744689C(&__dst);
        LODWORD(v49) = *v26;
        v50 = v129;
        LOBYTE(v44) = vars8_4;
      }

      v58 = (v49 & 0x10) == 0;
      if ((v49 & 0x10) != 0)
      {
        if (v49 > 0x9F)
        {
          return result;
        }

        v122 = v49 >> 5;
        if (v49 >> 5 == 4)
        {
          v59 = 0;
          v60 = v26[14];
          *&STACK[0x24200] = 0u;
          *&STACK[0x24210] = 0u;
          do
          {
            *(&STACK[0x24200] + ((v60 + v59) & 0x1F)) = v26[v59 + 5];
            ++v59;
          }

          while (v59 != 4);
          v61 = 0;
          v62 = v26[15];
          *&STACK[0x24220] = 0u;
          *&STACK[0x24230] = 0u;
          do
          {
            *(&STACK[0x24220] + ((v62 + v61) & 0x1F)) = v26[v61 + 9];
            ++v61;
          }

          while (v61 != 4);
        }

        else
        {
          LOWORD(STACK[0x24200]) = *(v26 + 5);
          LOWORD(STACK[0x24203]) = *(v26 + 7);
          LOBYTE(STACK[0x24202]) = 0;
          LOWORD(STACK[0x24220]) = *(v26 + 9);
          LOWORD(STACK[0x24223]) = *(v26 + 11);
          LOBYTE(STACK[0x24222]) = 0;
        }

        v123 = v48;
        vars8_4 = v58;
        if ((v44 & (v133 > 0)) == 1)
        {
          v63 = (v135 - 4);
          v64 = &STACK[0x240C0];
          v65 = v120;
          do
          {
            *v64 = *v63;
            v64 = (v64 + 4);
            v63 = (v63 + v45);
            --v65;
          }

          while (v65);
        }

        sub_2774467E4(&__dst, v132, v41 << *(v128 + 8), v131 << *(v128 + 8), *(v128 + 12), v133, 1u);
        (*(v119 + 8 * v122))(v135, vars0, &STACK[0x24200], v123, &STACK[0x240C0], v134, v133);
        sub_27744689C(&__dst);
        v58 = vars8_4;
        v50 = v129;
      }

      v66 = *(v128 + 12);
      v33 += 2 * v66;
      v135 += 4 * v66;
      v136 += 2 * v66;
      v134 += 4 * v66;
      v26 += 16;
      v41 = (v41 + 1);
      v43 = v50;
      LODWORD(v44) = v58;
      v35 = vars8;
    }

    while (v41 < *(v128 + 16) - 1);
    v67 = v50;
    vars8_4 = v58;
    LOBYTE(v35) = vars8;
    v21 = v117;
    v39 = v128;
  }

  v130 = sub_2774B3014(v132, v41, v131, v35 & 0x5D);
  v68 = *(v118 + 520) - (v39[1].i32[0] - 1) * v39->i32[3];
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
      *&STACK[0x24200] = 0u;
      *&STACK[0x24210] = 0u;
      v73 = 4;
      do
      {
        v74 = *v71++;
        *(&STACK[0x24200] + (v72++ & 0x1F)) = v74;
        --v73;
      }

      while (v73);
    }

    else
    {
      LOWORD(STACK[0x24200]) = *(v26 + 1);
      LOWORD(STACK[0x24203]) = *(v26 + 3);
      LOBYTE(STACK[0x24202]) = 0;
    }

    v117 = v21;
    if (v133 > 0 && v67)
    {
      v76 = (v33 - 2);
      v77 = &STACK[0x24240];
      v78 = v133;
      do
      {
        *v77 = *v76;
        v77 = (v77 + 2);
        v76 += v127;
        --v78;
      }

      while (v78);
    }

    sub_2774467E4(&__dst, v132, v41 << v39->i32[2], v131 << v39->i32[2], v68, v133, 0);
    v79 = v39;
    if ((v130 & 4) != 0)
    {
      v80 = 34;
    }

    else
    {
      v80 = 2;
    }

    if ((v130 & 4) != 0)
    {
      v81 = 17;
    }

    else
    {
      v81 = 1;
    }

    v82 = v80 & 0xFFFFFF7F | (((v130 & 8) != 0) << 7);
    v83 = v81 & 0xFFFFFFBF | (((v130 & 8) != 0) << 6);
    vars8 = v68;
    v84 = v68 >> 3;
    v85 = &v79[12] + v70;
    v86 = 4;
    v87 = v130;
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
        (*v85)(v33, v127, &STACK[0x24200], v88 | v87, &STACK[0x24240], v136, v133);
        v33 += 2 * (8 << v86);
        v87 = v89;
        v136 += 2 * (8 << v86);
      }

      v85 -= 5;
    }

    while (v86);
    sub_27744689C(&__dst);
    LODWORD(v69) = *v26;
    v21 = v117;
    v39 = v128;
    v68 = vars8;
  }

  if ((v69 & 0x10) == 0)
  {
LABEL_96:
    result = vextq_s8(v39[2], v39[2], 8uLL);
    v115 = vextq_s8(v39[3], v39[3], 8uLL);
    v39[2] = result;
    v39[3] = v115;
    return result;
  }

  if (v69 <= 0x9F)
  {
    v90 = v69 >> 5;
    if (v69 >> 5 == 4)
    {
      v91 = (v26 + 5);
      v92 = v26[14];
      *&STACK[0x24200] = 0u;
      *&STACK[0x24210] = 0u;
      v93 = 4;
      v94 = vars8_4;
      do
      {
        v95 = *v91++;
        *(&STACK[0x24200] + (v92++ & 0x1F)) = v95;
        --v93;
      }

      while (v93);
      v96 = (v26 + 9);
      v97 = v26[15];
      *&STACK[0x24220] = 0u;
      *&STACK[0x24230] = 0u;
      v98 = 4;
      do
      {
        v99 = *v96++;
        *(&STACK[0x24220] + (v97++ & 0x1F)) = v99;
        --v98;
      }

      while (v98);
    }

    else
    {
      LOWORD(STACK[0x24200]) = *(v26 + 5);
      LOWORD(STACK[0x24203]) = *(v26 + 7);
      LOBYTE(STACK[0x24202]) = 0;
      LOWORD(STACK[0x24220]) = *(v26 + 9);
      LOWORD(STACK[0x24223]) = *(v26 + 11);
      LOBYTE(STACK[0x24222]) = 0;
      v94 = vars8_4;
    }

    v117 = v21;
    if (v133 > 0 && v94)
    {
      v101 = (v135 - 4);
      v102 = 2 * vars0;
      v103 = &STACK[0x240C0];
      v104 = v133;
      do
      {
        *v103 = *v101;
        v103 = (v103 + 4);
        v101 = (v101 + v102);
        --v104;
      }

      while (v104);
    }

    sub_2774467E4(&__dst, v132, v41 << v39->i32[2], v131 << v39->i32[2], v68, v133, 1u);
    v105 = v130;
    if ((v130 & 4) != 0)
    {
      v106 = 34;
    }

    else
    {
      v106 = 2;
    }

    if ((v130 & 4) != 0)
    {
      v107 = 17;
    }

    else
    {
      v107 = 1;
    }

    v108 = v106 & 0xFFFFFF7F | (((v130 & 8) != 0) << 7);
    v109 = v107 & 0xFFFFFFBF | (((v130 & 8) != 0) << 6);
    v110 = v68 >> 2;
    v111 = &v39[24].i64[v90 + 1];
    v112 = 5;
    do
    {
      if ((v110 & (1 << --v112)) != 0)
      {
        v110 -= 1 << v112;
        if (v110)
        {
          v113 = v108;
        }

        else
        {
          v113 = 0;
        }

        v114 = v105;
        v105 = v105 & 0xC | v109;
        (*v111)(v135, vars0, &STACK[0x24200], v113 | v114, &STACK[0x240C0], v134, v133);
        v134 += 2 * (8 << v112);
        v135 += 2 * (8 << v112);
      }

      v111 -= 5;
    }

    while (v112);
    sub_27744689C(&__dst);
    v39 = v128;
    goto LABEL_96;
  }

  return result;
}