uint64_t getContext(uint64_t a1)
{
  v2 = *(a1 + 680);
  v3 = *(v2 + 312);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = *(a1 + 816);
    if (v5 == *(a1 + 808))
    {
      if (!poolGrow((a1 + 792)))
      {
        return 0;
      }

      v5 = *(a1 + 816);
    }

    *(a1 + 816) = v5 + 1;
    *v5 = 61;
    v6 = *(*(v2 + 312) + 40) - (*(a1 + 900) != 0);
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(a1 + 816);
        if (v8 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            return 0;
          }

          v8 = *(a1 + 816);
        }

        v9 = *(*(*(v2 + 312) + 32) + i);
        *(a1 + 816) = v8 + 1;
        *v8 = v9;
      }
    }
  }

  v10 = *(v2 + 120);
  if (v10)
  {
    v11 = &v10[*(v2 + 136)];
  }

  else
  {
    v11 = 0;
  }

  while (v10 != v11)
  {
    v12 = v10;
    v14 = *v10++;
    v13 = v14;
    if (v14 && v13[1])
    {
      if (!v4)
      {
        v15 = *(a1 + 816);
        if (v15 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            return 0;
          }

          v15 = *(a1 + 816);
        }

        *(a1 + 816) = v15 + 1;
        *v15 = 12;
      }

      v16 = **v13;
      if (v16)
      {
        v17 = (*v13 + 1);
        do
        {
          v18 = *(a1 + 816);
          if (v18 == *(a1 + 808))
          {
            if (!poolGrow((a1 + 792)))
            {
              return 0;
            }

            v16 = *(v17 - 1);
            v18 = *(a1 + 816);
          }

          *(a1 + 816) = v18 + 1;
          *v18 = v16;
          v19 = *v17++;
          v16 = v19;
        }

        while (v19);
      }

      v20 = *(a1 + 816);
      if (v20 == *(a1 + 808))
      {
        if (!poolGrow((a1 + 792)))
        {
          return 0;
        }

        v20 = *(a1 + 816);
      }

      v4 = 0;
      v10 = v12 + 1;
      *(a1 + 816) = v20 + 1;
      *v20 = 61;
      v21 = *(v13[1] + 10) - (*(a1 + 900) != 0);
      if (v21 >= 1)
      {
        for (j = 0; j != v21; ++j)
        {
          v23 = *(a1 + 816);
          if (v23 == *(a1 + 808))
          {
            if (!poolGrow((a1 + 792)))
            {
              return 0;
            }

            v23 = *(a1 + 816);
          }

          v24 = *(*(v13[1] + 4) + j);
          *(a1 + 816) = v23 + 1;
          *v23 = v24;
        }

        v4 = 0;
      }
    }
  }

  v25 = *v2;
  if (*v2)
  {
    v26 = &v25[*(v2 + 16)];
  }

  else
  {
    v26 = 0;
  }

  while (v25 != v26)
  {
    v27 = v25;
    v29 = *v25++;
    v28 = v29;
    if (v29 && v28[56])
    {
      if (!v4)
      {
        v30 = *(a1 + 816);
        if (v30 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            return 0;
          }

          v30 = *(a1 + 816);
        }

        *(a1 + 816) = v30 + 1;
        *v30 = 12;
      }

      v4 = 0;
      v25 = v27 + 1;
      v31 = **v28;
      if (v31)
      {
        v32 = (*v28 + 1);
        do
        {
          v33 = *(a1 + 816);
          if (v33 == *(a1 + 808))
          {
            if (!poolGrow((a1 + 792)))
            {
              return 0;
            }

            v31 = *(v32 - 1);
            v33 = *(a1 + 816);
          }

          *(a1 + 816) = v33 + 1;
          *v33 = v31;
          v34 = *v32++;
          v31 = v34;
        }

        while (v34);
        v4 = 0;
      }
    }
  }

  v35 = *(a1 + 816);
  if (v35 != *(a1 + 808))
  {
    goto LABEL_59;
  }

  if (poolGrow((a1 + 792)))
  {
    v35 = *(a1 + 816);
LABEL_59:
    *(a1 + 816) = v35 + 1;
    *v35 = 0;
    return *(a1 + 824);
  }

  return 0;
}

uint64_t storeAtts(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t *a5, int a6)
{
  v143[3] = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 680);
  v13 = lookup(a1, (v12 + 40), *a4, 0);
  if (!v13)
  {
    v37 = poolCopyString((v12 + 160), *a4);
    if (!v37)
    {
      goto LABEL_182;
    }

    v38 = lookup(a1, (v12 + 40), v37, 0x28uLL);
    if (!v38)
    {
      goto LABEL_182;
    }

    v13 = v38;
    if (*(a1 + 464))
    {
      if (!setElementTypePrefix(a1, v38))
      {
        goto LABEL_182;
      }
    }
  }

  v14 = *(v13 + 6);
  v15 = (*(a2 + 72))(a2, a3, *(a1 + 728), *(a1 + 744));
  if (v15 > (v14 ^ 0x7FFFFFFF))
  {
    goto LABEL_182;
  }

  v16 = v15;
  v135 = a6;
  v17 = *(a1 + 728);
  if (v15 + v14 > v17)
  {
    if (v14 > 2147483631 || v15 > 2147483631 - v14)
    {
      goto LABEL_182;
    }

    v19 = v15 + v14 + 16;
    *(a1 + 728) = v19;
    v20 = (*(a1 + 40))(*(a1 + 24), *(a1 + 744), 32 * v19);
    if (!v20)
    {
      *(a1 + 728) = v17;
      goto LABEL_182;
    }

    *(a1 + 744) = v20;
    if (v16 > v17)
    {
      (*(a2 + 72))(a2, a3, v16, v20);
    }
  }

  v139 = a5;
  v133 = a4;
  v134 = v12;
  v21 = *(a1 + 744);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v137 = 0;
    while (1)
    {
      v24 = *(*(a1 + 744) + 32 * v22);
      v25 = (*(a2 + 56))(a2, v24);
      AttributeId = getAttributeId(a1, a2, v24, v24 + v25);
      if (!AttributeId)
      {
        break;
      }

      v27 = AttributeId;
      if (*(*AttributeId - 1))
      {
        if (*(a1 + 296) == a2)
        {
          *(a1 + 552) = *(*(a1 + 744) + 32 * v22);
        }

        goto LABEL_54;
      }

      *(*AttributeId - 1) = 1;
      v28 = v23 + 1;
      *(v21 + 8 * v23) = *AttributeId;
      v29 = *(a1 + 744) + 32 * v22;
      if (*(v29 + 24))
      {
        v30 = poolStoreString((a1 + 792), a2, *(v29 + 8), *(v29 + 16));
        *(v21 + 8 * v28) = v30;
        if (!v30)
        {
          break;
        }
      }

      else
      {
        if (*(AttributeId + 16))
        {
          v31 = v14 < 1;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
LABEL_26:
          v34 = 1;
        }

        else
        {
          v32 = (*(v13 + 4) + 8);
          v33 = v14;
          while (AttributeId != *(v32 - 1))
          {
            v32 += 24;
            if (!--v33)
            {
              goto LABEL_26;
            }
          }

          v34 = *v32;
        }

        result = storeAttributeValue(a1, a2, v34, *(v29 + 8), *(v29 + 16), (a1 + 792), v135);
        if (result)
        {
          goto LABEL_183;
        }

        *(v21 + 8 * v28) = *(a1 + 824);
      }

      *(a1 + 824) = *(a1 + 816);
      v36 = *(v27 + 8);
      if (v36)
      {
        if (*(v27 + 17))
        {
          result = addBinding(a1, v36, v27, *(v21 + 8 * v28), v139);
          if (result)
          {
            goto LABEL_183;
          }
        }

        else
        {
          v23 += 2;
          ++v137;
          *(*v27 - 1) = 2;
        }
      }

      else
      {
        v23 += 2;
      }

      if (++v22 == v16)
      {
        goto LABEL_44;
      }
    }

LABEL_182:
    result = 1;
    goto LABEL_183;
  }

  v137 = 0;
  v23 = 0;
LABEL_44:
  *(a1 + 732) = v23;
  v39 = *(v13 + 2);
  if (v39)
  {
    v40 = *v39;
    v41 = v137;
    if (*(*v39 - 1))
    {
      if (v23 < 1)
      {
        goto LABEL_58;
      }

      v42 = 0;
      while (*(v21 + 8 * v42) != v40)
      {
        v42 += 2;
        if (v23 <= v42)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      LODWORD(v42) = -1;
    }
  }

  else
  {
    LODWORD(v42) = -1;
    v41 = v137;
  }

  *(a1 + 736) = v42;
LABEL_58:
  if (v14 >= 1)
  {
    v43 = 0;
    v44 = 24 * v14;
    do
    {
      v45 = *(v13 + 4);
      v46 = *(v45 + v43);
      v47 = *v46;
      if (!*(*v46 - 1))
      {
        v48 = *(v45 + v43 + 16);
        if (v48)
        {
          v49 = *(v46 + 8);
          if (v49)
          {
            if (*(v46 + 17))
            {
              result = addBinding(a1, v49, v46, v48, v139);
              if (result)
              {
                goto LABEL_183;
              }

              goto LABEL_61;
            }

            *(v47 - 1) = 2;
            ++v41;
          }

          else
          {
            *(v47 - 1) = 1;
          }

          v50 = (v21 + 8 * v23);
          *v50 = **(v45 + v43);
          v23 += 2;
          v50[1] = *(v45 + v43 + 16);
        }
      }

LABEL_61:
      v43 += 24;
    }

    while (v44 != v43);
  }

  v51 = v23;
  *(v21 + 8 * v23) = 0;
  if (!v41)
  {
LABEL_147:
    LODWORD(v63) = 0;
LABEL_148:
    if (v63 < v51)
    {
      v109 = v63;
      do
      {
        *(*(v21 + 8 * v109) - 1) = 0;
        v109 += 2;
      }

      while (v109 < v51);
    }

    for (i = *v139; i; i = *(i + 8))
    {
      *(**(i + 24) - 1) = 0;
    }

    if (*(a1 + 464))
    {
      v111 = *(v13 + 1);
      if (v111)
      {
        v112 = *(v111 + 8);
        if (!v112)
        {
LABEL_184:
          result = 27;
          goto LABEL_183;
        }

        v113 = *v133;
        do
        {
          v114 = *v113++;
        }

        while (v114 != 58);
LABEL_161:
        v115 = **v112;
        if (*(a1 + 465))
        {
          v116 = v115 == 0;
        }

        else
        {
          v116 = 1;
        }

        if (v116)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = 0;
            ;
          }
        }

        v119 = 0;
        v120 = *(v112 + 40);
        v133[1] = v113;
        v133[2] = v115;
        *(v133 + 7) = v120;
        *(v133 + 8) = v117;
          ;
        }

        if (v120 > (v117 ^ 0x7FFFFFFF) || ((v117 + v120) ^ 0x7FFFFFFFu) <= v119 - 1)
        {
          goto LABEL_182;
        }

        v122 = v119 + v117 + v120;
        if (v122 <= *(v112 + 44))
        {
          v125 = *(v112 + 32);
        }

        else
        {
          if (v122 > 2147483623)
          {
            goto LABEL_182;
          }

          v123 = v122 + 24;
          v124 = (*(a1 + 32))(*(a1 + 24), v122 + 24);
          if (!v124)
          {
            goto LABEL_182;
          }

          v125 = v124;
          *(v112 + 44) = v123;
          memcpy(v124, *(v112 + 32), *(v112 + 40));
          v126 = *(a1 + 696);
          for (j = *(v112 + 32); v126; v126 = *v126)
          {
            if (v126[3] == j)
            {
              v126[3] = v125;
            }
          }

          (*(a1 + 48))(*(a1 + 24), j);
          *(v112 + 32) = v125;
          v120 = *(v112 + 40);
        }

        v129 = &v125[v120];
        memcpy(v129, v113, v119);
        if (v117)
        {
          v129[v119 - 1] = *(a1 + 900);
          memcpy(&v129[v119], **v112, v117);
        }

        result = 0;
        *v133 = *(v112 + 32);
        goto LABEL_183;
      }

      v112 = *(v134 + 312);
      if (v112)
      {
        v113 = *v133;
        goto LABEL_161;
      }
    }

    result = 0;
    goto LABEL_183;
  }

  v52 = *(a1 + 768);
  if (v52 > 0x1F)
  {
    goto LABEL_182;
  }

  if (!((2 * v41) >> v52))
  {
    v55 = *(a1 + 760);
    v56 = 1 << v52;
    if (v55)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  v53 = *(a1 + 768);
    ;
  }

  *(a1 + 768) = v53;
  if (v53 > 2u)
  {
    if (v53 >= 0x20u)
    {
LABEL_168:
      *(a1 + 768) = v52;
      goto LABEL_182;
    }
  }

  else
  {
    v53 = 3;
    *(a1 + 768) = 3;
  }

  v57 = (*(a1 + 40))(*(a1 + 24), *(a1 + 752), 24 << v53);
  if (!v57)
  {
    goto LABEL_168;
  }

  *(a1 + 752) = v57;
  v56 = 1 << v53;
LABEL_83:
  v58 = 0;
  v59 = vdupq_n_s64(v56 - 1);
  v60 = (*(a1 + 752) + 24 * v56 - 48);
  v55 = 0xFFFFFFFFLL;
  do
  {
    v61 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(vdupq_n_s64(v58), xmmword_1C378AF00)));
    if (v61.i8[0])
    {
      v60[3] = 0xFFFFFFFFLL;
    }

    if (v61.i8[4])
    {
      *v60 = 0xFFFFFFFFLL;
    }

    v58 += 2;
    v60 -= 6;
  }

  while (((v56 + 1) & 0xFFFFFFFFFFFFFFFELL) != v58);
LABEL_89:
  v62 = v55 - 1;
  *(a1 + 760) = v55 - 1;
  if (v51 < 1)
  {
    goto LABEL_147;
  }

  v63 = 0;
  v64 = (v56 - 1);
  v130 = ~v64;
  v131 = v56 - 1;
  v132 = v56;
  v136 = v64 >> 2;
  while (1)
  {
    v65 = *(v21 + 8 * v63);
    if (*(v65 - 1) != 2)
    {
      *(v65 - 1) = 0;
      goto LABEL_145;
    }

    v143[0] = 0;
    v66 = a1;
    do
    {
      v67 = v66;
      v66 = *(v66 + 904);
    }

    while (v66);
    v68 = *(v67 + 928);
    v140.i64[0] = 0x736F6D6570736575;
    v140.i64[1] = v68 ^ 0x646F72616E646F6DLL;
    v141 = 0x6C7967656E657261;
    v142 = v68 ^ 0x7465646279746573;
    v143[1] = v143;
    v143[2] = 0;
    *(v65 - 1) = 0;
    v69 = lookup(a1, (v134 + 80), v65, 0);
    if (!v69)
    {
      goto LABEL_182;
    }

    v70 = *(v69 + 1);
    if (!v70)
    {
      goto LABEL_182;
    }

    v71 = *(v70 + 8);
    if (!v71)
    {
      goto LABEL_184;
    }

    v72 = *(v71 + 40);
    if (v72 > 0)
    {
      v138 = v41;
      for (k = 0; k < v72; ++k)
      {
        v74 = *(*(v71 + 32) + k);
        v75 = *(a1 + 816);
        if (v75 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            goto LABEL_182;
          }

          v75 = *(a1 + 816);
        }

        *(a1 + 816) = v75 + 1;
        *v75 = v74;
        v72 = *(v71 + 40);
      }

      v41 = v138;
      v56 = v132;
    }

    sip24_update(v140.i64, *(v71 + 32), v72);
    do
    {
      v76 = *v65++;
    }

    while (v76 != 58);
    if (*v65)
    {
      v77 = 0;
      do
      {
        v78 = &v65[v77++];
      }

      while (v78[1]);
    }

    else
    {
      v77 = 0;
    }

    sip24_update(v140.i64, v65, v77);
    do
    {
      v79 = *(a1 + 816);
      if (v79 == *(a1 + 808))
      {
        if (!poolGrow((a1 + 792)))
        {
          goto LABEL_182;
        }

        v79 = *(a1 + 816);
      }

      v80 = *v65;
      *(a1 + 816) = v79 + 1;
      *v79 = v80;
    }

    while (*v65++);
    sip24_final(&v140);
    v83 = v82;
    v84 = v131 & v82;
    v85 = *(a1 + 752);
    v86 = (v85 + 24 * (v131 & v82));
    if (*v86 == v62)
    {
      break;
    }

LABEL_137:
    v102 = v84;
    if (*(a1 + 465))
    {
      *(*(a1 + 816) - 1) = *(a1 + 900);
      v103 = **v71;
      do
      {
        v104 = *(a1 + 816);
        if (v104 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            goto LABEL_182;
          }

          v104 = *(a1 + 816);
        }

        v105 = *v103;
        *(a1 + 816) = v104 + 1;
        *v104 = v105;
      }

      while (*v103++);
    }

    v107 = *(a1 + 824);
    *(a1 + 824) = *(a1 + 816);
    *(v21 + 8 * v63) = v107;
    v108 = (*(a1 + 752) + 24 * v102);
    *v108 = v62;
    v108[1] = v83;
    v108[2] = v107;
    if (!--v41)
    {
      LODWORD(v63) = v63 + 2;
      goto LABEL_148;
    }

    v56 = v132;
LABEL_145:
    v63 += 2;
    if (v51 <= v63)
    {
      goto LABEL_148;
    }
  }

  v87 = 0;
  while (1)
  {
    if (v82 == v86[1])
    {
      v88 = *(a1 + 824);
      v89 = v86[2];
      v90 = *v88 == 0;
      if (*v88)
      {
        v91 = *v88 == *v89;
      }

      else
      {
        v91 = 0;
      }

      if (v91)
      {
        v92 = v89 + 1;
        v93 = v88 + 1;
        do
        {
          v95 = *v93++;
          v94 = v95;
          v90 = v95 == 0;
          v97 = *v92++;
          v96 = v97;
          if (v94)
          {
            v98 = v94 == v96;
          }

          else
          {
            v98 = 0;
          }
        }

        while (v98);
      }

      if (v90)
      {
        break;
      }
    }

    if (!v87)
    {
      v87 = ((v82 & v130) >> (*(a1 + 768) - 1)) & v136 | 1;
    }

    v99 = __OFSUB__(v84, v87);
    v100 = v84 - v87;
    if (v100 < 0 != v99)
    {
      v101 = v56;
    }

    else
    {
      v101 = 0;
    }

    v84 = v100 + v101;
    v86 = (v85 + 24 * v84);
    if (*v86 != v62)
    {
      goto LABEL_137;
    }
  }

LABEL_54:
  result = 8;
LABEL_183:
  v128 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t freeBindings(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v3[27];
      if (v4)
      {
        result = v4(v3[1], **v2);
      }

      v6 = *v2;
      v5 = *(v2 + 8);
      *(v2 + 8) = v3[90];
      v3[90] = v2;
      v6[1] = *(v2 + 16);
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t epilogProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  *(a1 + 536) = epilogProcessor;
  *(a1 + 552) = a2;
  while (1)
  {
    v7 = (**(a1 + 296))();
    if (!accountingDiffTolerated(a1, v7, v5, 0, 0))
    {
      return 43;
    }

    *(a1 + 560) = 0;
    result = 9;
    if (v7 <= 10)
    {
      break;
    }

    switch(v7)
    {
      case 11:
        if (!reportProcessingInstruction(a1, *(a1 + 296), v5, 0))
        {
          return 1;
        }

        break;
      case 13:
        if (!reportComment(a1, *(a1 + 296), v5, 0))
        {
          return 1;
        }

        break;
      case 15:
        if (*(a1 + 168))
        {
          reportDefault(a1, *(a1 + 296), v5, 0);
        }

        break;
      default:
        return result;
    }

    v5 = 0;
    *(a1 + 552) = 0;
    v9 = *(a1 + 912);
    if (v9 == 2)
    {
      return 35;
    }

    if (v9 == 3)
    {
      goto LABEL_30;
    }
  }

  if (v7 > -3)
  {
    switch(v7)
    {
      case -2:
        if (*(a1 + 916))
        {
          return 6;
        }

        break;
      case -1:
        if (*(a1 + 916))
        {
          return 5;
        }

        break;
      case 0:
        *(a1 + 552) = 0;
        return 4;
      default:
        return result;
    }

LABEL_30:
    result = 0;
    *a4 = v5;
    return result;
  }

  if (v7 != -15)
  {
    if (v7 != -4)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (*(a1 + 168))
  {
    reportDefault(a1, *(a1 + 296), v5, 0);
    if (*(a1 + 912) == 2)
    {
      return 35;
    }
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t doCdataSection(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v13 = *a3;
  v30 = *a3;
  if (*(a1 + 296) == a2)
  {
    v14 = (a1 + 552);
    *(a1 + 552) = v13;
    v15 = (a1 + 560);
  }

  else
  {
    v14 = *(a1 + 576);
    v15 = v14 + 1;
  }

  *v14 = v13;
  *a3 = 0;
  while (1)
  {
    v29 = v13;
    v16 = (*(a2 + 16))(a2);
    if (!accountingDiffTolerated(a1, v16, v30, v29, a7))
    {
      return 43;
    }

    v17 = v29;
    *v15 = v29;
    if (v16 <= 5)
    {
      if (v16 > -2)
      {
        if (v16 != -1)
        {
          if (!v16)
          {
            *v14 = v17;
            return 4;
          }

          goto LABEL_40;
        }
      }

      else if (v16 != -4)
      {
        if (v16 != -2)
        {
          goto LABEL_40;
        }

        if (!a6)
        {
          return 6;
        }

LABEL_33:
        result = 0;
        *a5 = v30;
        return result;
      }

      if (!a6)
      {
        return 20;
      }

      goto LABEL_33;
    }

    if (v16 != 6)
    {
      break;
    }

    v27 = a6;
    v19 = a5;
    v20 = *(a1 + 128);
    if (!v20)
    {
      a5 = v19;
      a6 = v27;
      if (!*(a1 + 168))
      {
        goto LABEL_19;
      }

LABEL_18:
      reportDefault(a1, a2, v30, v17);
      goto LABEL_19;
    }

    if (*(a2 + 132))
    {
      v20(*(a1 + 8), v30, (v17 - v30));
    }

    else
    {
      while (1)
      {
        v21 = *(a1 + 104);
        v28 = *(a1 + 96);
        v22 = (*(a2 + 112))(a2, &v30, v17, &v28, v21);
        *v15 = v29;
        v20(*(a1 + 8), *(a1 + 96), v28 - *(a1 + 96));
        if (v22 <= 1)
        {
          break;
        }

        *v14 = v30;
        v17 = v29;
      }
    }

    a5 = v19;
    a6 = v27;
LABEL_19:
    v13 = v29;
    v30 = v29;
    *v14 = v29;
    v23 = *(a1 + 912);
    if (v23 == 2)
    {
      return 35;
    }

    if (v23 == 3)
    {
      result = 0;
      *a5 = v13;
      return result;
    }
  }

  if (v16 == 7)
  {
    v18 = *(a1 + 128);
    if (v18)
    {
      LOBYTE(v28) = 10;
      v18(*(a1 + 8), &v28, 1);
      goto LABEL_19;
    }

    if (*(a1 + 168))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v16 != 40)
  {
LABEL_40:
    *v14 = v17;
    return 23;
  }

  v25 = *(a1 + 160);
  if (v25)
  {
    v25(*(a1 + 8));
  }

  else if (*(a1 + 168))
  {
    reportDefault(a1, a2, v30, v17);
  }

  v26 = v29;
  *a3 = v29;
  *a5 = v26;
  if (*(a1 + 912) == 2)
  {
    return 35;
  }

  else
  {
    return 0;
  }
}

uint64_t cdataSectionProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a2;
  result = doCdataSection(a1, *(a1 + 296), &v9, a3, a4, *(a1 + 916) == 0, 0);
  if (!result)
  {
    v8 = v9;
    if (v9)
    {
      if (*(a1 + 904))
      {
        *(a1 + 536) = externalEntityContentProcessor;

        return externalEntityContentProcessor(a1, v8, a3, a4);
      }

      else
      {
        *(a1 + 536) = contentProcessor;

        return contentProcessor(a1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t setElementTypePrefix(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 680);
  v6 = *a2;
  while (1)
  {
    if (!v6[v4])
    {
      return 1;
    }

    if (v6[v4] == 58)
    {
      break;
    }

    ++v4;
  }

  for (; v4; --v4)
  {
    v7 = *(v5 + 184);
    if (v7 == *(v5 + 176))
    {
      result = poolGrow((v5 + 160));
      if (!result)
      {
        return result;
      }

      v7 = *(v5 + 184);
    }

    v9 = *v6++;
    *(v5 + 184) = v7 + 1;
    *v7 = v9;
  }

  v10 = *(v5 + 184);
  if (v10 == *(v5 + 176))
  {
    result = poolGrow((v5 + 160));
    if (!result)
    {
      return result;
    }

    v10 = *(v5 + 184);
  }

  *(v5 + 184) = v10 + 1;
  *v10 = 0;
  result = lookup(a1, (v5 + 120), *(v5 + 192), 0x10uLL);
  if (result)
  {
    v11 = *(v5 + 192);
    if (*result == v11)
    {
      *(v5 + 192) = *(v5 + 184);
    }

    else
    {
      *(v5 + 184) = v11;
    }

    *(a2 + 8) = result;
    return 1;
  }

  return result;
}

uint64_t addBinding(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  v10 = *a4;
  v11 = *a2;
  if (*a4)
  {
    if (v11)
    {
      if (*v11 != 120 || v11[1] != 109 || v11[2] != 108)
      {
LABEL_10:
        LODWORD(v11) = 0;
        v12 = 1;
        result = 40;
        goto LABEL_14;
      }

      v12 = v11[3];
      if (v11[3])
      {
        if (v12 == 110 && v11[4] == 115 && !v11[5])
        {
          return 39;
        }

        goto LABEL_10;
      }

      LODWORD(v11) = 1;
      result = 38;
    }

    else
    {
      result = 40;
      v12 = 1;
    }

LABEL_14:
    v14 = 0;
    v15 = a4 + 1;
    v16 = 1;
    v17 = 1;
    while (1)
    {
      v18 = v14;
      if (v17 && (v14 > 0x24 || v10 != addBinding_xmlNamespace[v14]))
      {
        v17 = 0;
      }

      if (v16)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == 1 && (v18 > 0x1D || v10 != addBinding_xmlnsNamespace[v18]))
      {
        v16 = 0;
      }

      if (*(a1 + 464) && v10 == *(a1 + 900) && ((v10 - 33) > 0x3E || ((1 << (v10 - 33)) & 0x57FFFFFFD7FFFFFDLL) == 0))
      {
        v20 = v10 - 97;
        if (v20 > 0x1D || ((1 << v20) & 0x23FFFFFF) == 0)
        {
          return 2;
        }
      }

      v14 = v18 + 1;
      v10 = v15[v18];
      if (!v15[v18])
      {
        v21 = v17 != 0;
        v22 = v16 != 0;
        goto LABEL_34;
      }
    }
  }

  if (v11)
  {
    return 28;
  }

  LODWORD(v14) = 0;
  v21 = 1;
  result = 40;
  v22 = 1;
LABEL_34:
  if (v14 != 36)
  {
    v21 = 0;
  }

  if (v11 == v21)
  {
    if (v14 == 29 && v22)
    {
      return 40;
    }

    if (*(a1 + 900))
    {
      v24 = (v14 + 1);
    }

    else
    {
      v24 = v14;
    }

    v25 = *(a1 + 720);
    if (v25)
    {
      if (v24 <= *(v25 + 44))
      {
        v26 = *(v25 + 32);
        goto LABEL_56;
      }

      if (v24 <= 0x7FFFFFE7)
      {
        v26 = (*(a1 + 40))(*(a1 + 24), *(v25 + 32), (v24 + 24));
        if (v26)
        {
          *(v25 + 32) = v26;
          *(v25 + 44) = v24 + 24;
LABEL_56:
          *(a1 + 720) = *(v25 + 8);
          goto LABEL_57;
        }
      }
    }

    else
    {
      v25 = (*(a1 + 32))(*(a1 + 24), 48);
      result = 1;
      if (!v25 || v24 > 0x7FFFFFE7)
      {
        return result;
      }

      v26 = (*(a1 + 32))(*(a1 + 24), (v24 + 24));
      *(v25 + 32) = v26;
      if (v26)
      {
        *(v25 + 44) = v24 + 24;
LABEL_57:
        *(v25 + 40) = v24;
        memcpy(v26, a4, v24);
        if (*(a1 + 900))
        {
          *(*(v25 + 32) + v24 - 1) = *(a1 + 900);
        }

        *v25 = a2;
        *(v25 + 16) = a2[1];
        *(v25 + 24) = a3;
        if (!*a4 && (*(a1 + 680) + 304) == a2)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        a2[1] = v27;
        *(v25 + 8) = *a5;
        *a5 = v25;
        if (a3)
        {
          v28 = *(a1 + 208);
          if (v28)
          {
            if (a2[1])
            {
              v29 = a4;
            }

            else
            {
              v29 = 0;
            }

            v28(*(a1 + 8), *a2, v29);
          }
        }

        return 0;
      }

      (*(a1 + 48))(*(a1 + 24), v25);
    }

    return 1;
  }

  return result;
}

uint64_t externalEntityContentProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = doContent(a1, 1, *(a1 + 296), a2, a3, a4, *(a1 + 916) == 0, 1);
  if (!v5 && !storeRawNames(a1))
  {
    return 1;
  }

  return v5;
}

uint64_t appendAttributeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v10 = a4;
  v14 = *(a1 + 680);
  v41 = a4;
  v15 = (*(a2 + 32))(a2, a4, a5, &v41);
  if (!accountingDiffTolerated(a1, v15, v10, v41, a7))
  {
    return 43;
  }

  while (1)
  {
    if (v15 <= 8)
    {
      if (v15 < 0)
      {
        if (v15 != -3)
        {
          if (v15 == -4)
          {
            return 0;
          }

          if (v15 == -1)
          {
            if (*(a1 + 296) == a2)
            {
              *(a1 + 552) = v10;
            }

            return 4;
          }

LABEL_75:
          if (*(a1 + 296) == a2)
          {
            *(a1 + 552) = v10;
          }

          return 23;
        }

        v41 = v10 + *(a2 + 128);
        goto LABEL_13;
      }

      if (v15 != 6)
      {
        if (v15 != 7)
        {
          if (!v15)
          {
            if (*(a1 + 296) == a2)
            {
              *(a1 + 552) = v41;
            }

            return 4;
          }

          goto LABEL_75;
        }

        goto LABEL_13;
      }

      if (!poolAppend(a6, a2, v10, v41))
      {
        return 1;
      }

      goto LABEL_63;
    }

    if (v15 == 9)
    {
      break;
    }

    if (v15 != 10)
    {
      if (v15 != 39)
      {
        goto LABEL_75;
      }

LABEL_13:
      v16 = a6[3];
      if (a3 || v16 != a6[4] && *(v16 - 1) != 32)
      {
        if (v16 == a6[2])
        {
          if (!poolGrow(a6))
          {
            return 1;
          }

          v16 = a6[3];
        }

        a6[3] = (v16 + 1);
        *v16 = 32;
      }

      goto LABEL_63;
    }

    v19 = (*(a2 + 80))(a2, v10);
    if ((v19 & 0x80000000) != 0)
    {
      if (*(a1 + 296) == a2)
      {
        *(a1 + 552) = v10;
      }

      return 14;
    }

    if (a3 || v19 != 32 || (v20 = a6[3], v20 != a6[4]) && *(v20 - 1) != 32)
    {
      v21 = XmlUtf8Encode(v19, v40);
      if (v21 >= 1)
      {
        v22 = v21;
        v23 = v40;
        do
        {
          v24 = a6[3];
          if (v24 == a6[2])
          {
            if (!poolGrow(a6))
            {
              return 1;
            }

            v24 = a6[3];
          }

          v25 = *v23++;
          a6[3] = (v24 + 1);
          *v24 = v25;
          --v22;
        }

        while (v22);
      }
    }

LABEL_63:
    v10 = v41;
    v15 = (*(a2 + 32))(a2, v41, a5, &v41);
    if (!accountingDiffTolerated(a1, v15, v10, v41, a7))
    {
      return 43;
    }
  }

  v39 = (*(a2 + 88))(a2, v10 + *(a2 + 128), v41 - *(a2 + 128));
  if (v39)
  {
    accountingDiffTolerated(a1, 9, &v39, v40, 1);
    v17 = a6[3];
    if (v17 == a6[2])
    {
      if (!poolGrow(a6))
      {
        return 1;
      }

      v17 = a6[3];
    }

    v18 = v39;
    a6[3] = (v17 + 1);
    *v17 = v18;
    goto LABEL_63;
  }

  v26 = poolStoreString((a1 + 840), a2, v10 + *(a2 + 128), v41 - *(a2 + 128));
  if (!v26)
  {
    return 1;
  }

  v27 = lookup(a1, v14, v26, 0);
  v28 = v27;
  *(a1 + 864) = *(a1 + 872);
  if ((v14 + 160) == a6)
  {
    if (*(a1 + 524))
    {
      if (*(v14 + 258))
      {
        if (!*(a1 + 576))
        {
          goto LABEL_44;
        }
      }

      else if (!*(v14 + 257))
      {
        goto LABEL_44;
      }
    }
  }

  else if (!*(v14 + 257) || *(v14 + 258))
  {
LABEL_44:
    if (!v27)
    {
      return 11;
    }

    if (!*(v27 + 58))
    {
      return 24;
    }

    goto LABEL_53;
  }

  if (!v27)
  {
    goto LABEL_63;
  }

LABEL_53:
  if (!*(v27 + 56))
  {
    if (*(v27 + 6))
    {
      v37 = *(a1 + 296);
      result = 15;
      goto LABEL_84;
    }

    v29 = *(v27 + 1);
    if (!v29)
    {
      v37 = *(a1 + 296);
      result = 16;
      goto LABEL_84;
    }

    v30 = *(v27 + 4);
    *(v27 + 56) = 1;
    v31 = a1;
    do
    {
      v32 = v31;
      v31 = v31[113];
    }

    while (v31);
    v33 = vadd_s32(v32[121], 0x100000001);
    v32[121] = v33;
    v34 = v32[122].u32[0];
    if (v33.i32[1] > v34)
    {
      v32[122].i32[0] = v34 + 1;
    }

    result = appendAttributeValue(a1, *(a1 + 448), a3, v29, v29 + v30, a6, 1);
    v35 = a1;
    do
    {
      v36 = v35;
      v35 = *(v35 + 904);
    }

    while (v35);
    --*(v36 + 972);
    *(v28 + 56) = 0;
    if (result)
    {
      return result;
    }

    goto LABEL_63;
  }

  v37 = *(a1 + 296);
  result = 12;
LABEL_84:
  if (v37 == a2)
  {
    *(a1 + 552) = v10;
  }

  return result;
}

uint64_t internalEntityProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 576);
  if (!v4)
  {
    return 23;
  }

  v9 = *(v4 + 24);
  v10 = *(v9 + 8);
  v11 = v10 + *(v9 + 20);
  v12 = v10 + *(v9 + 16);
  v22 = v11;
  if (*(v9 + 57))
  {
    v13 = (**(a1 + 448))();
    v14 = doProlog(a1, *(a1 + 448), v11, v12, v13, v22, &v22, 0, 1);
  }

  else
  {
    v14 = doContent(a1, *(v4 + 32), *(a1 + 448), v11, v12, &v22, 0, 1);
  }

  v15 = v14;
  if (!v14)
  {
    v17 = a1;
    if (v12 == v22 || (v17 = a1, *(a1 + 912) != 3))
    {
      do
      {
        v18 = v17;
        v17 = *(v17 + 904);
      }

      while (v17);
      --*(v18 + 972);
      *(v9 + 56) = 0;
      v19 = *(v4 + 16);
      *(a1 + 576) = v19;
      *(v4 + 16) = *(a1 + 584);
      *(a1 + 584) = v4;
      if (v19 && *(a1 + 912) == 3)
      {
        return 0;
      }

      else if (*(v9 + 57))
      {
        *(a1 + 536) = prologProcessor;
        v20 = (**(a1 + 296))();
        LOBYTE(v21) = 1;
        return doProlog(a1, *(a1 + 296), a2, a3, v20, v22, a4, *(a1 + 916) == 0, v21);
      }

      else
      {
        *(a1 + 536) = contentProcessor;
        v15 = doContent(a1, *(a1 + 904) != 0, *(a1 + 296), a2, a3, a4, *(a1 + 916) == 0, 0);
        if (!v15 && !storeRawNames(a1))
        {
          return 1;
        }
      }
    }

    else
    {
      v15 = 0;
      *(v9 + 20) = v22 - *(v9 + 8);
    }
  }

  return v15;
}

_BYTE *normalizeLines(_BYTE *result)
{
  while (1)
  {
    v1 = *result;
    if (!*result)
    {
      break;
    }

    if (v1 == 13)
    {
      v2 = result;
      do
      {
        if (v1 == 13)
        {
          *v2 = 10;
          v3 = *++result;
          if (v3 == 10)
          {
            ++result;
          }
        }

        else
        {
          ++result;
          *v2 = v1;
        }

        ++v2;
        v1 = *result;
      }

      while (*result);
      *v2 = 0;
      return result;
    }

    ++result;
  }

  return result;
}

uint64_t hashTableClear(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = 0;
    do
    {
      result = (*(v1[4] + 24))(*v1[4], *(*v1 + 8 * v2));
      *(*v1 + 8 * v2++) = 0;
    }

    while (v2 < v1[2]);
  }

  v1[3] = 0;
  return result;
}

uint64_t hashTableDestroy(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = 0;
    do
    {
      (*(a1[4] + 24))(*a1[4], *(*a1 + 8 * v2++));
    }

    while (v2 < a1[2]);
  }

  v3 = a1[4];
  v4 = v3[3];
  v5 = *v3;
  v6 = *a1;

  return v4(v5, v6);
}

unint64_t _INTERNAL_trim_to_complete_utf8_characters(unint64_t result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 > result)
  {
    v3 = 0;
    v4 = *a2;
    while (1)
    {
      v6 = *--v4;
      v5 = v6;
      if ((v6 & 0xF8) == 0xF0)
      {
        if ((v3 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v2 += 3;
          break;
        }
      }

      else if ((v5 & 0xF0) == 0xE0)
      {
        if ((v3 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
        {
          v2 += 2;
          break;
        }
      }

      else
      {
        if ((v5 & 0xE0) != 0xC0)
        {
          if ((v5 & 0x80) == 0)
          {
            break;
          }

          goto LABEL_12;
        }

        if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          ++v2;
          break;
        }
      }

      v3 = 0;
LABEL_12:
      ++v3;
      v2 = v4;
      if (v4 <= result)
      {
        v2 = result;
        break;
      }
    }
  }

  *a2 = v2;
  return result;
}

uint64_t XmlUtf8Encode(unsigned int a1, _BYTE *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 <= 0x7F)
  {
    *a2 = a1;
    return 1;
  }

  if (a1 <= 0x7FF)
  {
    *a2 = (a1 >> 6) | 0xC0;
    a2[1] = a1 & 0x3F | 0x80;
    return 2;
  }

  if (!HIWORD(a1))
  {
    *a2 = (a1 >> 12) | 0xE0;
    a2[1] = (a1 >> 6) & 0x3F | 0x80;
    a2[2] = a1 & 0x3F | 0x80;
    return 3;
  }

  if (HIWORD(a1) > 0x10u)
  {
    return 0;
  }

  *a2 = (a1 >> 18) | 0xF0;
  a2[1] = (a1 >> 12) & 0x3F | 0x80;
  a2[2] = (a1 >> 6) & 0x3F | 0x80;
  a2[3] = a1 & 0x3F | 0x80;
  return 4;
}

void *XmlInitUnknownEncoding(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(a1, latin1_encoding, 0x1D0uLL);
  for (i = 0; i != 128; ++i)
  {
    if (*(&latin1_encoding[17] + i))
    {
      v9 = *(&latin1_encoding[17] + i) == 28;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && i != *(a2 + 4 * i))
    {
      return 0;
    }
  }

  v10 = 0;
  v11 = 993;
  do
  {
    v12 = *(a2 + 4 * v10);
    if (v12 == -1)
    {
      *(a1 + v10 + 136) = 1;
      goto LABEL_25;
    }

    if ((v12 & 0x80000000) != 0)
    {
      result = 0;
      if (!a3 || v12 < 0xFFFFFFFC)
      {
        return result;
      }

      *(a1 + v10 + 136) = 3 - v12;
      *(a1 + v11 - 1) = 0;
      *(a1 + v10 + 240) = 0;
      goto LABEL_38;
    }

    if (v12 > 0x7F)
    {
      if ((checkCharRefNumber(*(a2 + 4 * v10)) & 0x80000000) == 0)
      {
        if (WORD1(v12))
        {
          return 0;
        }

        v19 = v12 >> 5;
        if ((namingBitmap[v19 | (8 * nmstrtPages[v12 >> 8])] & (1 << v12)) != 0)
        {
          v20 = a1 + v10;
          v21 = 22;
        }

        else
        {
          v20 = a1 + v10;
          if ((namingBitmap[v19 | (8 * namePages[v12 >> 8])] & (1 << v12)) != 0)
          {
            v21 = 26;
          }

          else
          {
            v21 = 28;
          }
        }

        v20[136] = v21;
        *(a1 + v11 - 1) = XmlUtf8Encode(v12, a1 + v11);
        *(a1 + v10 + 240) = v12;
        goto LABEL_38;
      }

      *(a1 + v10 + 136) = 0;
LABEL_25:
      *(a1 + v10 + 240) = -1;
      *(a1 + v11 - 1) = 1;
      goto LABEL_38;
    }

    v13 = *(&latin1_encoding[17] + v12);
    if (*(&latin1_encoding[17] + v12))
    {
      v14 = v13 == 28;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v10 != v12)
    {
      return 0;
    }

    *(a1 + v10 + 136) = v13;
    v16 = a1 + v11;
    *(v16 - 1) = 1;
    *v16 = v12;
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = -1;
    }

    *(a1 + v10 + 240) = v17;
LABEL_38:
    ++v10;
    v11 += 4;
  }

  while (v10 != 256);
  a1[58] = a3;
  a1[59] = a4;
  if (a3)
  {
    a1[49] = unknown_isName;
    a1[50] = unknown_isName;
    a1[51] = unknown_isName;
    a1[52] = unknown_isNmstrt;
    a1[53] = unknown_isNmstrt;
    a1[54] = unknown_isNmstrt;
    a1[55] = unknown_isInvalid;
    a1[56] = unknown_isInvalid;
    a1[57] = unknown_isInvalid;
  }

  a1[14] = unknown_toUtf8;
  a1[15] = unknown_toUtf16;
  return a1;
}

uint64_t checkCharRefNumber(uint64_t result)
{
  v1 = result >> 8;
  if (((result >> 8) - 216) < 8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 == 255)
  {
    if (result >> 1 == 0x7FFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!v1 && !*(&latin1_encoding[17] + result))
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t unknown_isName(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (HIWORD(v1))
  {
    return 0;
  }

  else
  {
    return namingBitmap[(v1 >> 5) | (8 * namePages[v1 >> 8])] & (1 << v1);
  }
}

uint64_t unknown_isNmstrt(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (HIWORD(v1))
  {
    return 0;
  }

  else
  {
    return namingBitmap[(v1 >> 5) | (8 * nmstrtPages[v1 >> 8])] & (1 << v1);
  }
}

uint64_t unknown_isInvalid(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (WORD1(v1))
  {
    return 1;
  }

  else
  {
    return checkCharRefNumber(v1) >> 31;
  }
}

uint64_t unknown_toUtf8(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, void **a4, uint64_t a5)
{
  v6 = *a2;
  if (v6 == a3)
  {
    return 0;
  }

  v11 = a1 + 992;
  v12 = a1 + 136;
  while (1)
  {
    v13 = (v11 + 4 * *v6);
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (!v16)
    {
      break;
    }

    if (a5 - *a4 < v15)
    {
      return 2;
    }

    v17 = (v6 + 1);
LABEL_8:
    *a2 = v17;
    memcpy(*a4, v14, v15);
    *a4 = *a4 + v15;
    v6 = *a2;
    if (*a2 == a3)
    {
      return 0;
    }
  }

  v18 = (*(a1 + 464))(*(a1 + 472));
  v19 = XmlUtf8Encode(v18, v21);
  if (a5 - *a4 >= v19)
  {
    v15 = v19;
    v17 = *a2 + *(v12 + **a2) - 3;
    v14 = v21;
    goto LABEL_8;
  }

  return 2;
}

uint64_t unknown_toUtf16(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, _WORD *a5)
{
  v6 = *a2;
  if (v6 >= a3)
  {
    return 0;
  }

  v11 = a1 + 480;
  v12 = a1 + 136;
  v13 = *a4;
  while (v13 < a5)
  {
    v14 = *(v11 + 2 * *v6);
    if (v14)
    {
      v15 = (v6 + 1);
    }

    else
    {
      v14 = (*(a1 + 464))(*(a1 + 472));
      v15 = *a2 + *(v12 + **a2) - 3;
    }

    *a2 = v15;
    v16 = *a4;
    *v16 = v14;
    v13 = v16 + 1;
    *a4 = v13;
    v6 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }
  }

  if (v13 == a5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t XmlInitEncoding(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  EncodingIndex = getEncodingIndex(a3);
  if (EncodingIndex == -1)
  {
    return 0;
  }

  *(a1 + 133) = EncodingIndex;
  *a1 = initScanProlog;
  *(a1 + 8) = initScanContent;
  *(a1 + 96) = initUpdatePosition;
  *(a1 + 136) = a2;
  *a2 = a1;
  return 1;
}

uint64_t getEncodingIndex(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = 0;
  while (!streqci(a1, getEncodingIndex_encodingNames[v2]))
  {
    if (++v2 == 6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t doParseXmlDecl(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void *a8, uint64_t *a9, void *a10, int *a11)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v17 = *(a3 + 128);
  v37 = a4 + 5 * v17;
  v18 = a5 - 2 * v17;
  v19 = parsePseudoAttribute(a3, v37, v18, &v35, &v34, &v36, &v37);
  i = v35;
  if (v19)
  {
    v21 = v35 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_6;
  }

  v23 = v34;
  if ((*(a3 + 48))(a3, v35, v34, "version"))
  {
    if (a7)
    {
      *a7 = v36;
    }

    v25 = v37;
    if (a8)
    {
      *a8 = v37;
    }

    if (!parsePseudoAttribute(a3, v25, v18, &v35, &v34, &v36, &v37))
    {
      goto LABEL_6;
    }

    i = v35;
    if (!v35)
    {
      if (!a2)
      {
        return 1;
      }

LABEL_6:
      i = v37;
      goto LABEL_7;
    }

    v23 = v34;
  }

  else if (!a2)
  {
    goto LABEL_7;
  }

  if (!(*(a3 + 48))(a3, i, v23, "encoding"))
  {
LABEL_27:
    v27 = (*(a3 + 48))(a3, i, v23, "standalone");
    if (a2 || !v27)
    {
      goto LABEL_7;
    }

    i = v36;
    v28 = v37;
    if ((*(a3 + 48))(a3, v36, v37 - *(a3 + 128), "yes"))
    {
      if (!a11)
      {
LABEL_38:
        for (i = v28; ; i += *(a3 + 128))
        {
          v40 = i;
          v38 = &v39;
          (*(a3 + 112))(a3, &v40, v18, &v38, &v40);
          v30 = v38 == &v39 ? -1 : v39;
          v31 = v30 > 0x20;
          v32 = (1 << v30) & 0x100002600;
          if (v31 || v32 == 0)
          {
            break;
          }
        }

        if (i == v18)
        {
          return 1;
        }

LABEL_7:
        result = 0;
        *a6 = i;
        return result;
      }

      v29 = 1;
    }

    else
    {
      if (!(*(a3 + 48))(a3, i, v28 - *(a3 + 128), "no"))
      {
        goto LABEL_7;
      }

      if (!a11)
      {
        goto LABEL_38;
      }

      v29 = 0;
    }

    *a11 = v29;
    goto LABEL_38;
  }

  i = v36;
  v40 = v36;
  v38 = &v39;
  (*(a3 + 112))(a3, &v40, v18, &v38, &v40);
  if (v38 == &v39 || (v39 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_7;
  }

  if (a9)
  {
    *a9 = i;
  }

  v26 = v37;
  if (a10)
  {
    *a10 = a1(a3, i, v37 - *(a3 + 128));
  }

  if (!parsePseudoAttribute(a3, v26, v18, &v35, &v34, &v36, &v37))
  {
    goto LABEL_6;
  }

  i = v35;
  if (v35)
  {
    v23 = v34;
    goto LABEL_27;
  }

  return 1;
}

uint64_t (**findEncoding(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = a1;
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = v10;
  v9 = a2;
  (*(a1 + 112))(a1, &v9, a3, &v8, &v11 + 15);
  if (v9 == a3)
  {
    *v8 = 0;
    if (!streqci(v10, "UTF-16") || *(v4 + 32) != 2)
    {
      v7 = 0;
      while (!streqci(v10, getEncodingIndex_encodingNames[v7]))
      {
        if (++v7 == 6)
        {
          goto LABEL_2;
        }
      }

      v4 = encodings[v7];
    }
  }

  else
  {
LABEL_2:
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t XmlInitEncodingNS(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  EncodingIndex = getEncodingIndex(a3);
  if (EncodingIndex == -1)
  {
    return 0;
  }

  *(a1 + 133) = EncodingIndex;
  *a1 = initScanPrologNS;
  *(a1 + 8) = initScanContentNS;
  *(a1 + 96) = initUpdatePosition;
  *(a1 + 136) = a2;
  *a2 = a1;
  return 1;
}

uint64_t (**findEncodingNS(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = a1;
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = v10;
  v9 = a2;
  (*(a1 + 112))(a1, &v9, a3, &v8, &v11 + 15);
  if (v9 == a3)
  {
    *v8 = 0;
    if (!streqci(v10, "UTF-16") || *(v4 + 32) != 2)
    {
      v7 = 0;
      while (!streqci(v10, getEncodingIndex_encodingNames[v7]))
      {
        if (++v7 == 6)
        {
          goto LABEL_2;
        }
      }

      v4 = encodingsNS[v7];
    }
  }

  else
  {
LABEL_2:
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void *XmlInitUnknownEncodingNS(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = XmlInitUnknownEncoding(a1, a2, a3, a4);
  if (result)
  {
    *(result + 194) = 23;
  }

  return result;
}

uint64_t normal_prologTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v5 = a2;
  v7 = a1 + 136;
  v9 = 18;
  v10 = 1;
  switch(*(a1 + 136 + *a2))
  {
    case 2:
      v18 = a2 + 1;
      if ((a3 - (a2 + 1)) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v23 = *(v7 + *v18);
      if (v23 > 0x1D)
      {
        goto LABEL_138;
      }

      if (((1 << v23) & 0x214000E0) != 0)
      {
        *a4 = a2;
        return 29;
      }

      if (v23 == 15)
      {
        v32 = a2 + 2;

        return normal_scanPi(a1, v32, a3, a4);
      }

      else
      {
        if (v23 != 16)
        {
          goto LABEL_138;
        }

        v31 = a2 + 2;

        return normal_scanDecl(a1, v31, a3, a4);
      }

    case 4:
      v24 = a2 + 1;
      v25 = a3 - (a2 + 1);
      if (v25 < 1)
      {
        return 4294967270;
      }

      if (*v24 != 93)
      {
        goto LABEL_129;
      }

      if (v25 == 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (a2[2] == 62)
      {
        *a4 = a2 + 3;
        return 34;
      }

      else
      {
LABEL_129:
        *a4 = v24;
        return 26;
      }

    case 5:
      if ((a3 - a2) < 2)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 416))(a1, v5))
      {
        goto LABEL_121;
      }

      if (!(*(a1 + 392))(a1, v5))
      {
        goto LABEL_111;
      }

      v9 = 19;
LABEL_121:
      v10 = 2;
      goto LABEL_4;
    case 6:
      if ((a3 - a2) < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 424))(a1, v5))
      {
        goto LABEL_75;
      }

      if (!(*(a1 + 400))(a1, v5))
      {
        goto LABEL_111;
      }

      v9 = 19;
LABEL_75:
      v10 = 3;
      goto LABEL_4;
    case 7:
      if ((a3 - a2) < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 432))(a1, v5))
      {
        goto LABEL_88;
      }

      if (!(*(a1 + 408))(a1, v5))
      {
LABEL_111:
        v9 = 0;
LABEL_112:
        *a4 = v5;
        return v9;
      }

      v9 = 19;
LABEL_88:
      v10 = 4;
LABEL_4:
      v5 += v10;
      v11 = a3 - v5;
      if ((a3 - v5) < 1)
      {
        return -v9;
      }

      break;
    case 9:
      if (a2 + 1 != a3)
      {
        goto LABEL_95;
      }

      *a4 = a3;
      return 4294967281;
    case 0xA:
    case 0x15:
LABEL_95:
      v26 = a2 + 1;
      v27 = a3 - (a2 + 1);
      if (v27 < 1)
      {
        goto LABEL_106;
      }

      do
      {
        v28 = *(v7 + *v26);
        if (v28 != 21 && v28 != 10 && (v28 != 9 || v26 + 1 == a3))
        {
          goto LABEL_106;
        }

        ++v26;
        --v27;
      }

      while (v27 > 0);
      v26 = a3;
LABEL_106:
      *a4 = v26;
      return 15;
    case 0xB:
      *a4 = a2 + 1;
      return 17;
    case 0xC:
      v20 = a2 + 1;
      v21 = 12;
      goto LABEL_66;
    case 0xD:
      v20 = a2 + 1;
      v21 = 13;
LABEL_66:

      return normal_scanLit(v21, a1, v20, a3, a4);
    case 0x13:
      v17 = a2 + 1;

      return normal_scanPoundName(a1, v17, a3, a4);
    case 0x14:
      *a4 = a2 + 1;
      return 25;
    case 0x16:
    case 0x18:
      goto LABEL_4;
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
      v9 = 19;
      v10 = 1;
      goto LABEL_4;
    case 0x1E:
      v22 = a2 + 1;

      return normal_scanPercent(a1, v22, a3, a4);
    case 0x1F:
      *a4 = a2 + 1;
      return 23;
    case 0x20:
      v18 = a2 + 1;
      if ((a3 - (a2 + 1)) < 1)
      {
        return 4294967272;
      }

      v19 = *(v7 + *v18);
      if (v19 > 0x24)
      {
        goto LABEL_116;
      }

      if (((1 << v19) & 0x1900200000) != 0)
      {
        goto LABEL_117;
      }

      if (v19 == 33)
      {
        *a4 = a2 + 2;
        return 36;
      }

      else
      {
        if (v19 == 34)
        {
          *a4 = a2 + 2;
          return 37;
        }

LABEL_116:
        if ((v19 - 9) >= 3)
        {
          if (v19 == 15)
          {
            *a4 = a2 + 2;
            return 35;
          }

          else
          {
LABEL_138:
            v9 = 0;
            *a4 = v18;
          }
        }

        else
        {
LABEL_117:
          *a4 = v18;
          return 24;
        }
      }

      return v9;
    case 0x23:
      *a4 = a2 + 1;
      return 38;
    case 0x24:
      *a4 = a2 + 1;
      return 21;
    default:
      goto LABEL_111;
  }

  while (2)
  {
    switch(*(v7 + *v5))
    {
      case 5:
        if (v11 == 1)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, v5) || !(*(a1 + 392))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 2;
        goto LABEL_7;
      case 6:
        if (v11 < 3)
        {
          return 4294967294;
        }

        if ((*(a1 + 448))(a1, v5) || !(*(a1 + 400))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 3;
        goto LABEL_7;
      case 7:
        if (v11 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v5) || !(*(a1 + 408))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 4;
        goto LABEL_7;
      case 9:
      case 0xA:
      case 0xB:
      case 0x14:
      case 0x15:
      case 0x1E:
      case 0x20:
      case 0x23:
      case 0x24:
        goto LABEL_112;
      case 0xF:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 30;
      case 0x16:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
        v12 = v5 + 1;
        goto LABEL_7;
      case 0x17:
        v12 = v5 + 1;
        if (v9 == 41)
        {
          v9 = 19;
          goto LABEL_7;
        }

        if (v9 != 18)
        {
          goto LABEL_7;
        }

        v13 = a3 - v12;
        if ((a3 - v12) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = *(v7 + *v12);
        v9 = 19;
        if (v14 > 0x15)
        {
          if (v14 - 24 >= 4 && v14 != 22)
          {
            if (v14 == 29)
            {
              goto LABEL_49;
            }

            goto LABEL_7;
          }

          v12 = v5 + 2;
          goto LABEL_47;
        }

        if (v14 != 5)
        {
          if (v14 == 6)
          {
            if (v13 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 448))(a1, v5 + 1) || !(*(a1 + 400))(a1, v5 + 1))
            {
              goto LABEL_49;
            }

            v12 = v5 + 4;
          }

          else
          {
            if (v14 != 7)
            {
              goto LABEL_7;
            }

            if (v13 < 4)
            {
              return 4294967294;
            }

            if ((*(a1 + 456))(a1, v5 + 1) || !(*(a1 + 408))(a1, v5 + 1))
            {
              goto LABEL_49;
            }

            v12 = v5 + 5;
          }

LABEL_47:
          v9 = 41;
LABEL_7:
          v11 = a3 - v12;
          v5 = v12;
          if ((a3 - v12) <= 0)
          {
            return -v9;
          }

          continue;
        }

        if (v13 == 1)
        {
          return 4294967294;
        }

        if (!(*(a1 + 440))(a1, v5 + 1) && (*(a1 + 392))(a1, v5 + 1))
        {
          v12 = v5 + 3;
          goto LABEL_47;
        }

LABEL_49:
        v9 = 0;
        *a4 = v12;
        break;
      case 0x21:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 31;
      case 0x22:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 32;
      default:
        goto LABEL_111;
    }

    return v9;
  }
}

uint64_t normal_contentTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v6 = a2;
  v8 = a1 + 136;
  v9 = *(a1 + 136 + *a2);
  if (v9 > 5)
  {
    if (*(a1 + 136 + *a2) > 7u)
    {
      switch(v9)
      {
        case 8u:
          goto LABEL_128;
        case 9u:
          v23 = a2 + 1;
          if ((a3 - (a2 + 1)) < 1)
          {
            return 4294967293;
          }

          if (*(v8 + a2[1]) == 10)
          {
            v23 = a2 + 2;
          }

          break;
        case 0xAu:
          v23 = a2 + 1;
          break;
        default:
          goto LABEL_97;
      }

      *a4 = v23;
      return 7;
    }

    if (v9 == 6)
    {
      if ((a3 - a2) < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2))
      {
        goto LABEL_128;
      }

      v24 = v6 + 3;
      goto LABEL_98;
    }

    if (v9 == 7)
    {
      if ((a3 - a2) < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2))
      {
        goto LABEL_128;
      }

      v24 = v6 + 4;
      goto LABEL_98;
    }

LABEL_97:
    v24 = a2 + 1;
    goto LABEL_98;
  }

  if (*(a1 + 136 + *a2) > 2u)
  {
    switch(v9)
    {
      case 3u:
        v26 = a2 + 1;

        return normal_scanRef(a1, v26, a3, a4);
      case 4u:
        v24 = a2 + 1;
        if ((a3 - (a2 + 1)) < 1)
        {
          return 4294967291;
        }

        if (*v24 != 93)
        {
          goto LABEL_98;
        }

        v25 = a2 + 2;
        if ((a3 - (a2 + 2)) < 1)
        {
          return 4294967291;
        }

        if (*v25 == 62)
        {
          goto LABEL_93;
        }

LABEL_98:
        v27 = a3 - v24;
        if ((a3 - v24) >= 1)
        {
          while (1)
          {
            v28 = *(v8 + *v24);
            if (v28 > 5)
            {
              if (v28 == 6)
              {
                if (v27 < 3 || (*(a1 + 448))(a1, v24))
                {
LABEL_123:
                  *a4 = v24;
                  return 6;
                }

                v29 = v24 + 3;
              }

              else if (v28 == 7)
              {
                if (v27 < 4 || (*(a1 + 456))(a1, v24))
                {
                  goto LABEL_123;
                }

                v29 = v24 + 4;
              }

              else
              {
                if (v28 - 8 < 3)
                {
                  goto LABEL_123;
                }

                v29 = v24 + 1;
              }
            }

            else if (v28 == 4)
            {
              if (v27 == 1)
              {
                goto LABEL_123;
              }

              v29 = v24 + 1;
              if (v24[1] == 93)
              {
                if (v27 < 3)
                {
                  goto LABEL_123;
                }

                if (v24[2] == 62)
                {
                  result = 0;
                  v25 = v24 + 2;
                  goto LABEL_187;
                }
              }
            }

            else
            {
              if (v28 != 5 || v27 == 1 || (*(a1 + 440))(a1, v24))
              {
                goto LABEL_123;
              }

              v29 = v24 + 2;
            }

            v27 = a3 - v29;
            v24 = v29;
            if ((a3 - v29) <= 0)
            {
              goto LABEL_125;
            }
          }
        }

        v29 = v24;
LABEL_125:
        *a4 = v29;
        return 6;
      case 5u:
        if ((a3 - a2) < 2)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, a2))
        {
          goto LABEL_128;
        }

        v24 = v6 + 2;
        goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v9 < 2)
  {
    goto LABEL_128;
  }

  v10 = a2 + 1;
  v11 = a3 - (a2 + 1);
  if (v11 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v8 + *v10);
  if (v12 <= 0xF)
  {
    if (*(v8 + *v10) > 6u)
    {
      if (v12 != 7)
      {
        if (v12 == 15)
        {
          v30 = a2 + 2;

          return normal_scanPi(a1, v30, a3, a4);
        }

        goto LABEL_180;
      }

      if (v11 < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2 + 1) || !(*(a1 + 432))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 4;
    }

    else if (v12 == 5)
    {
      if (v11 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2 + 1) || !(*(a1 + 416))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 2;
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_180;
      }

      if (v11 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2 + 1) || !(*(a1 + 424))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 3;
    }

LABEL_14:
    v6 = &v10[v14];
    v15 = a3 - &v10[v14];
    if (v15 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = 0;
    while (1)
    {
      v17 = *(v8 + *v6);
      if (v17 <= 0x16)
      {
        if (*(v8 + *v6) <= 6u)
        {
          if (v17 == 5)
          {
            if (v15 == 1)
            {
              return 4294967294;
            }

            if ((*(a1 + 440))(a1, v6) || !(*(a1 + 392))(a1, v6))
            {
              goto LABEL_128;
            }

LABEL_55:
            v18 = 2;
            goto LABEL_56;
          }

          if (v17 != 6)
          {
            goto LABEL_128;
          }

          if (v15 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6) || !(*(a1 + 400))(a1, v6))
          {
            goto LABEL_128;
          }

          goto LABEL_31;
        }

        if (*(v8 + *v6) <= 0x10u)
        {
          if (v17 != 7)
          {
            if (v17 - 9 >= 2)
            {
              if (v17 == 11)
              {
LABEL_203:
                *a4 = v6 + 1;
                return 2;
              }

              goto LABEL_128;
            }

            goto LABEL_206;
          }

          if (v15 < 4)
          {
            return 4294967294;
          }

          if ((*(a1 + 456))(a1, v6) || !(*(a1 + 408))(a1, v6))
          {
            goto LABEL_128;
          }

          goto LABEL_25;
        }

        v18 = 1;
        if (v17 != 22)
        {
          if (v17 == 17)
          {
            goto LABEL_252;
          }

          if (v17 != 21)
          {
            goto LABEL_128;
          }

LABEL_206:
          v42 = a3 - ++v6;
          if ((a3 - v6) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0xFFFFFFFFLL;
          while (1)
          {
            v43 = *(v8 + *v6);
            if (v43 > 0xA)
            {
              if (*(v8 + *v6) > 0x15u)
              {
                if (v43 != 22 && v43 != 24)
                {
                  goto LABEL_128;
                }

                v46 = 2;
                goto LABEL_246;
              }

              if (v43 != 21)
              {
                if (v43 == 11)
                {
                  goto LABEL_203;
                }

                if (v43 == 17)
                {
LABEL_252:
                  v25 = v6 + 1;
                  if ((a3 - (v6 + 1)) >= 1)
                  {
                    if (*v25 == 62)
                    {
                      *a4 = v6 + 2;
                      return 4;
                    }

LABEL_93:
                    result = 0;
                    goto LABEL_187;
                  }

                  return 0xFFFFFFFFLL;
                }

LABEL_128:
                result = 0;
LABEL_129:
                *a4 = v6;
                return result;
              }
            }

            else if (*(v8 + *v6) <= 8u)
            {
              switch(v43)
              {
                case 5u:
                  if (v42 == 1)
                  {
                    return 4294967294;
                  }

                  if ((*(a1 + 440))(a1, v6) || !(*(a1 + 416))(a1, v6))
                  {
                    goto LABEL_128;
                  }

                  v46 = 3;
                  break;
                case 6u:
                  if (v42 < 3)
                  {
                    return 4294967294;
                  }

                  if ((*(a1 + 448))(a1, v6) || !(*(a1 + 424))(a1, v6))
                  {
                    goto LABEL_128;
                  }

                  v46 = 4;
                  break;
                case 7u:
                  if (v42 >= 4)
                  {
                    if ((*(a1 + 456))(a1, v6) || !(*(a1 + 432))(a1, v6))
                    {
                      goto LABEL_128;
                    }

                    v46 = 5;
                    break;
                  }

                  return 4294967294;
                default:
                  goto LABEL_128;
              }

LABEL_246:

              return normal_scanAtts(a1, &v6[v46 - 1], a3, a4);
            }

            ++v6;
            if (--v42 <= 0)
            {
              return result;
            }
          }
        }
      }

      else if (v17 - 24 >= 4)
      {
        if (v17 != 23 || v16)
        {
          goto LABEL_128;
        }

        v10 = v6 + 1;
        v19 = a3 - (v6 + 1);
        if (v19 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        v20 = *(v8 + *v10);
        if (v20 > 0x15)
        {
          if (v20 != 22 && v20 != 24)
          {
            goto LABEL_180;
          }

          v16 = 1;
          goto LABEL_55;
        }

        if (v20 == 5)
        {
          if (v19 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v6 + 1) || !(*(a1 + 416))(a1, v6 + 1))
          {
            goto LABEL_180;
          }

          v16 = 1;
LABEL_31:
          v18 = 3;
          goto LABEL_56;
        }

        if (v20 == 6)
        {
          if (v19 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6 + 1) || !(*(a1 + 424))(a1, v6 + 1))
          {
            goto LABEL_180;
          }

          v16 = 1;
LABEL_25:
          v18 = 4;
          goto LABEL_56;
        }

        if (v20 != 7)
        {
          goto LABEL_180;
        }

        if (v19 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v6 + 1) || !(*(a1 + 432))(a1, v6 + 1))
        {
          goto LABEL_180;
        }

        v16 = 1;
        v18 = 5;
      }

      else
      {
        v18 = 1;
      }

LABEL_56:
      v6 += v18;
      v15 = a3 - v6;
      result = 0xFFFFFFFFLL;
      if ((a3 - v6) <= 0)
      {
        return result;
      }
    }
  }

  if (*(v8 + *v10) > 0x15u)
  {
    if (v12 != 22 && v12 != 24)
    {
      goto LABEL_180;
    }

    v14 = 1;
    goto LABEL_14;
  }

  if (v12 == 16)
  {
    v25 = a2 + 2;
    if ((a3 - (a2 + 2)) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v37 = *(v8 + *v25);
    if (v37 == 20)
    {
      v25 = a2 + 3;
      if ((a3 - (a2 + 3)) >= 6)
      {
        v39 = &big2_scanCdataSection_CDATA_LSQB;
        v40 = 6;
        do
        {
          v41 = *v39++;
          if (*v25 != v41)
          {
            goto LABEL_93;
          }

          ++v25;
          --v40;
        }

        while (v40);
        result = 8;
        v25 = a2 + 9;
LABEL_187:
        *a4 = v25;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      if (v37 != 27)
      {
        goto LABEL_93;
      }

      v38 = a2 + 3;

      return normal_scanComment(a1, v38, a3, a4);
    }
  }

  if (v12 != 17)
  {
LABEL_180:
    result = 0;
    *a4 = v10;
    return result;
  }

  v6 = a2 + 2;
  v31 = a3 - (a2 + 2);
  if (v31 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v32 = *(v8 + *v6);
  if (v32 <= 6)
  {
    if (v32 == 5)
    {
      if (v31 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2 + 2))
      {
        goto LABEL_128;
      }

      result = (*(a1 + 416))(a1, v6);
      if (!result)
      {
        goto LABEL_129;
      }

      v33 = 2;
    }

    else
    {
      if (v32 != 6)
      {
        goto LABEL_129;
      }

      if (v31 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2 + 2))
      {
        goto LABEL_128;
      }

      result = (*(a1 + 424))(a1, v6);
      if (!result)
      {
        goto LABEL_129;
      }

      v33 = 3;
    }
  }

  else if (v32 == 7)
  {
    if (v31 < 4)
    {
      return 4294967294;
    }

    if ((*(a1 + 456))(a1, a2 + 2))
    {
      goto LABEL_128;
    }

    result = (*(a1 + 432))(a1, v6);
    if (!result)
    {
      goto LABEL_129;
    }

    v33 = 4;
  }

  else
  {
    v33 = 1;
    if (v32 != 22 && v32 != 24)
    {
      goto LABEL_129;
    }
  }

  v6 += v33;
  v34 = a3 - v6;
  if ((a3 - v6) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    v35 = *(v8 + *v6);
    if (v35 <= 8)
    {
      switch(v35)
      {
        case 5u:
          if (v34 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 392))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 2;
          break;
        case 6u:
          if (v34 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 400))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 3;
          break;
        case 7u:
          if (v34 < 4)
          {
            return 4294967294;
          }

          if ((*(a1 + 456))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 408))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 4;
          break;
        default:
          goto LABEL_128;
      }
    }

    else
    {
      if (v35 > 0x1B)
      {
        goto LABEL_128;
      }

      if (((1 << v35) & 0xFC00000) == 0)
      {
        if (((1 << v35) & 0x200600) != 0)
        {
          v44 = a3 - ++v6;
          if ((a3 - v6) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0xFFFFFFFFLL;
          while (1)
          {
            v35 = *(v8 + *v6);
            if (v35 - 9 >= 2 && v35 != 21)
            {
              break;
            }

            ++v6;
            if (--v44 <= 0)
            {
              return result;
            }
          }
        }

        if (v35 != 11)
        {
          goto LABEL_128;
        }

        ++v6;
        result = 5;
        goto LABEL_129;
      }

      v36 = 1;
    }

    v6 += v36;
    v34 = a3 - v6;
    result = 0xFFFFFFFFLL;
  }

  while ((a3 - v6) > 0);
  return result;
}

uint64_t normal_cdataSectionTok(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v6 = a2;
  result = 0;
  v9 = a1 + 136;
  v10 = a1[*a2 + 136];
  if (v10 > 6)
  {
    if (a1[*a2 + 136] > 8u)
    {
      if (v10 == 9)
      {
        if ((a3 - (a2 + 1)) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v9[a2[1]] == 10)
        {
          v6 = a2 + 2;
        }

        else
        {
          v6 = a2 + 1;
        }
      }

      else
      {
        if (v10 != 10)
        {
          goto LABEL_34;
        }

        v6 = a2 + 1;
      }

      result = 7;
      goto LABEL_62;
    }

    if (v10 != 7)
    {
      if (v10 == 8)
      {
        goto LABEL_62;
      }

      goto LABEL_34;
    }

    if ((a3 - a2) >= 4)
    {
      if (!(*(a1 + 57))(a1, a2))
      {
        v11 = v6 + 4;
        goto LABEL_35;
      }

      goto LABEL_61;
    }

    return 4294967294;
  }

  if (a1[*a2 + 136] > 4u)
  {
    if (v10 == 5)
    {
      if ((a3 - a2) >= 2)
      {
        if (!(*(a1 + 55))(a1, a2))
        {
          v11 = v6 + 2;
          goto LABEL_35;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_34;
      }

      if ((a3 - a2) >= 3)
      {
        if (!(*(a1 + 56))(a1, a2))
        {
          v11 = v6 + 3;
          goto LABEL_35;
        }

LABEL_61:
        result = 0;
        goto LABEL_62;
      }
    }

    return 4294967294;
  }

  if (v10 >= 2)
  {
    if (v10 == 4)
    {
      v11 = a2 + 1;
      if ((a3 - (a2 + 1)) >= 1)
      {
        if (*v11 != 93)
        {
          goto LABEL_35;
        }

        if ((a3 - (a2 + 2)) >= 1)
        {
          if (a2[2] == 62)
          {
            v6 = a2 + 3;
            result = 40;
            goto LABEL_62;
          }

LABEL_35:
          v12 = a3 - v11;
          if ((a3 - v11) >= 1)
          {
            do
            {
              v13 = v9[*v11];
              result = 6;
              if (v13 > 5)
              {
                if (v13 == 6)
                {
                  if (v12 < 3)
                  {
                    goto LABEL_58;
                  }

                  if ((*(a1 + 56))(a1, v11))
                  {
                    break;
                  }

                  v14 = 3;
                }

                else if (v13 == 7)
                {
                  if (v12 < 4)
                  {
                    goto LABEL_58;
                  }

                  if ((*(a1 + 57))(a1, v11))
                  {
                    break;
                  }

                  v14 = 4;
                }

                else
                {
                  v14 = 1;
                  if (v13 - 8 < 3)
                  {
                    goto LABEL_58;
                  }
                }
              }

              else if (v13 == 5)
              {
                if (v12 == 1)
                {
                  goto LABEL_58;
                }

                if ((*(a1 + 55))(a1, v11))
                {
                  break;
                }

                v14 = 2;
              }

              else
              {
                v15 = v13 < 2 || v13 == 4;
                v14 = 1;
                if (v15)
                {
                  goto LABEL_58;
                }
              }

              v11 += v14;
              v12 = a3 - v11;
            }

            while ((a3 - v11) > 0);
          }

          result = 6;
LABEL_58:
          v6 = v11;
          goto LABEL_62;
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_34:
    v11 = a2 + 1;
    goto LABEL_35;
  }

LABEL_62:
  *a4 = v6;
  return result;
}

uint64_t normal_ignoreSectionTok(unsigned int (**a1)(void, void), unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = 0;
  v10 = (a1 + 17);
  while (1)
  {
    v11 = v10[*v7];
    if (v11 > 4)
    {
      break;
    }

    if (v11 == 2)
    {
      v12 = v7 + 1;
      if (a3 - (v7 + 1) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v12 == 33)
      {
        v12 = v7 + 2;
        if (a3 - (v7 + 2) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (*v12 == 91)
        {
          v12 = v7 + 3;
          ++v9;
        }
      }

      goto LABEL_35;
    }

    if (v11 != 4)
    {
      if (v11 < 2)
      {
        goto LABEL_38;
      }

LABEL_34:
      v12 = v7 + 1;
      goto LABEL_35;
    }

    v12 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    if (*v12 == 93)
    {
      v12 = v7 + 2;
      if (a3 - (v7 + 2) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v12 == 62)
      {
        v12 = v7 + 3;
        if (!v9)
        {
          result = 42;
          v7 += 3;
          goto LABEL_39;
        }

        --v9;
      }
    }

LABEL_35:
    v4 = a3 - v12;
    v7 = v12;
    if (a3 - v12 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v10[*v7] > 6u)
  {
    if (v11 != 7)
    {
      if (v11 == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (v4 < 4)
    {
      return 4294967294;
    }

    if ((a1)[57](a1, v7))
    {
LABEL_38:
      result = 0;
LABEL_39:
      *a4 = v7;
      return result;
    }

    v12 = v7 + 4;
    goto LABEL_35;
  }

  if (v11 != 5)
  {
    if (v11 != 6)
    {
      goto LABEL_34;
    }

    if (v4 < 3)
    {
      return 4294967294;
    }

    if ((a1)[56](a1, v7))
    {
      goto LABEL_38;
    }

    v12 = v7 + 3;
    goto LABEL_35;
  }

  if (v4 != 1)
  {
    if ((a1)[55](a1, v7))
    {
      goto LABEL_38;
    }

    v12 = v7 + 2;
    goto LABEL_35;
  }

  return 4294967294;
}

uint64_t normal_attributeValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 + *v5);
    if (v6 > 6)
    {
      break;
    }

    if (*(v4 + *v5) > 5u)
    {
      v7 = 3;
      goto LABEL_19;
    }

    if (v6 != 5)
    {
      if (v6 == 2)
      {
        result = 0;
        *a4 = v5;
        return result;
      }

      if (v6 == 3)
      {
        if (v5 == a2)
        {
          return normal_scanRef(a1, a2 + 1, a3, a4);
        }

LABEL_20:
        *a4 = v5;
        return 6;
      }

      goto LABEL_18;
    }

    v7 = 2;
LABEL_19:
    v5 += v7;
    if ((a3 - v5) <= 0)
    {
      goto LABEL_20;
    }
  }

  if (*(v4 + *v5) <= 8u)
  {
    if (v6 != 7)
    {
      goto LABEL_18;
    }

    v7 = 4;
    goto LABEL_19;
  }

  if (v6 == 9)
  {
    if (v5 != a2)
    {
      goto LABEL_20;
    }

    v9 = a2 + 1;
    if ((a3 - (a2 + 1)) < 1)
    {
      return 4294967293;
    }

    if (*(v4 + a2[1]) == 10)
    {
      v9 = a2 + 2;
    }

LABEL_34:
    *a4 = v9;
    return 7;
  }

  if (v6 == 10)
  {
    if (v5 != a2)
    {
      goto LABEL_20;
    }

    v9 = a2 + 1;
    goto LABEL_34;
  }

  if (v6 != 21)
  {
LABEL_18:
    v7 = 1;
    goto LABEL_19;
  }

  if (v5 != a2)
  {
    goto LABEL_20;
  }

  *a4 = a2 + 1;
  return 39;
}

uint64_t normal_entityValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 + *v5);
    if (v6 <= 6)
    {
      break;
    }

    if (*(v4 + *v5) > 8u)
    {
      switch(v6)
      {
        case 9u:
          if (v5 != a2)
          {
            goto LABEL_19;
          }

          v9 = a2 + 1;
          if ((a3 - (a2 + 1)) < 1)
          {
            return 4294967293;
          }

          if (*(v4 + a2[1]) == 10)
          {
            v9 = a2 + 2;
          }

LABEL_29:
          *a4 = v9;
          return 7;
        case 0xAu:
          if (v5 != a2)
          {
            goto LABEL_19;
          }

          v9 = a2 + 1;
          goto LABEL_29;
        case 0x1Eu:
          if (v5 == a2)
          {
            LODWORD(result) = normal_scanPercent(a1, a2 + 1, a3, a4);
            if (result == 22)
            {
              return 0;
            }

            else
            {
              return result;
            }
          }

LABEL_19:
          *a4 = v5;
          return 6;
      }

      goto LABEL_17;
    }

    if (v6 != 7)
    {
      goto LABEL_17;
    }

    v7 = 4;
LABEL_18:
    v5 += v7;
    if ((a3 - v5) <= 0)
    {
      goto LABEL_19;
    }
  }

  if (v6 == 5)
  {
    v7 = 2;
    goto LABEL_18;
  }

  if (v6 == 6)
  {
    v7 = 3;
    goto LABEL_18;
  }

  if (v6 != 3)
  {
LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  if (v5 != a2)
  {
    goto LABEL_19;
  }

  v10 = a2 + 1;

  return normal_scanRef(a1, v10, a3, a4);
}

BOOL normal_nameMatchesAscii(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return a2 == a3;
  }

  v5 = a4 + 1;
  v6 = a3 - a2;
  while (1)
  {
    v7 = v6-- < 1;
    if (v7 || *a2 != v4)
    {
      break;
    }

    ++a2;
    v8 = *v5++;
    v4 = v8;
    if (!v8)
    {
      return a2 == a3;
    }
  }

  return 0;
}

uint64_t normal_nameLength(uint64_t a1, unsigned __int8 *a2)
{
  for (i = a2; ; i += qword_1C37AB418[(*(a1 + 136 + *i) - 5)])
  {
    v3 = *(a1 + 136 + *i) - 5;
    if (v3 >= 0x19 || ((0x17E0007u >> v3) & 1) == 0)
    {
      break;
    }
  }

  return (i - a2);
}

unsigned __int8 *normal_skipS(uint64_t a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *(a1 + 136 + *a2);
    v3 = v2 > 0x15;
    v4 = (1 << v2) & 0x200600;
    if (v3 || v4 == 0)
    {
      break;
    }

    ++a2;
  }

  return a2;
}

uint64_t normal_getAtts(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 0;
  v6 = 0;
  v7 = a1 + 136;
  v8 = 1;
  while (2)
  {
    v9 = a2;
    v11 = *++a2;
    v10 = v11;
    v12 = v8;
    switch(*(v7 + v11))
    {
      case 3:
        if (result < a3)
        {
          *(a4 + 32 * result + 24) = 0;
        }

        continue;
      case 5:
        if (!v8)
        {
          v12 = 1;
          if (result < a3)
          {
            v19 = a4 + 32 * result;
            *v19 = a2;
            *(v19 + 24) = 1;
          }
        }

        a2 = v9 + 2;
        v8 = v12;
        continue;
      case 6:
        if (!v8)
        {
          v12 = 1;
          if (result < a3)
          {
            v17 = a4 + 32 * result;
            *v17 = a2;
            *(v17 + 24) = 1;
          }
        }

        a2 = v9 + 3;
        v8 = v12;
        continue;
      case 7:
        if (!v8)
        {
          v12 = 1;
          if (result < a3)
          {
            v18 = a4 + 32 * result;
            *v18 = a2;
            *(v18 + 24) = 1;
          }
        }

        a2 = v9 + 4;
        v8 = v12;
        continue;
      case 9:
      case 0xA:
        v8 = 0;
        if (v12 != 1)
        {
          v8 = v12;
          if (v12 == 2 && result < a3)
          {
            *(a4 + 32 * result + 24) = 0;
            v8 = 2;
          }
        }

        continue;
      case 0xB:
      case 0x11:
        v8 = 2;
        if (v12 == 2)
        {
          continue;
        }

        return result;
      case 0xC:
        if (v8 == 2)
        {
          v8 = 2;
          if (v6 == 12)
          {
            if (result < a3)
            {
              *(a4 + 32 * result + 16) = a2;
            }

            v8 = 0;
            result = (result + 1);
            v6 = 12;
          }
        }

        else
        {
          v6 = 12;
          v8 = 2;
          if (result < a3)
          {
            *(a4 + 32 * result + 8) = v9 + 2;
            v6 = 12;
            v8 = 2;
          }
        }

        continue;
      case 0xD:
        if (v8 == 2)
        {
          v8 = 2;
          if (v6 == 13)
          {
            if (result < a3)
            {
              *(a4 + 32 * result + 16) = a2;
            }

            v8 = 0;
            result = (result + 1);
            v6 = 13;
          }
        }

        else
        {
          v6 = 13;
          v8 = 2;
          if (result < a3)
          {
            *(a4 + 32 * result + 8) = v9 + 2;
            v6 = 13;
            v8 = 2;
          }
        }

        continue;
      case 0x15:
        v8 = 0;
        if (v12 != 1)
        {
          v8 = v12;
          if (v12 == 2 && result < a3)
          {
            v14 = a4 + 32 * result;
            v8 = 2;
            if (*(v14 + 24))
            {
              if (v10 != 32 || a2 == *(v14 + 8) || (v15 = *(v9 + 2), v15 == 32) || (v16 = *(v7 + v15), v8 = 2, v6 == v16))
              {
                *(v14 + 24) = 0;
                v8 = 2;
              }
            }
          }
        }

        continue;
      case 0x16:
      case 0x18:
      case 0x1D:
        if (!v8)
        {
          v8 = 1;
          if (result < a3)
          {
            v13 = a4 + 32 * result;
            *v13 = a2;
            *(v13 + 24) = 1;
          }
        }

        continue;
      default:
        continue;
    }
  }
}

uint64_t normal_charRefNumber(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2);
  if (v2 == 59)
  {
    v3 = 0;
    return checkCharRefNumber(v3);
  }

  else
  {
    if (v2 == 120)
    {
      v3 = 0;
      for (i = (a2 + 3); ; ++i)
      {
        v5 = *i;
        if (v5 > 0x40)
        {
          break;
        }

        if (v5 - 48 < 0xA)
        {
          v3 = (v5 - 48) | (16 * v3);
LABEL_11:
          if (v3 >= 1114112)
          {
            return 0xFFFFFFFFLL;
          }

          continue;
        }

        if (v5 == 59)
        {
          return checkCharRefNumber(v3);
        }

LABEL_12:
        ;
      }

      if (v5 - 65 < 6)
      {
        v3 = (v5 + 16 * v3 - 55);
      }

      else
      {
        if (v5 - 97 >= 6)
        {
          goto LABEL_12;
        }

        v3 = (v5 + 16 * v3 - 87);
      }

      goto LABEL_11;
    }

    LODWORD(v3) = 0;
    for (j = (a2 + 3); ; ++j)
    {
      v3 = (10 * v3 + v2 - 48);
      if (v3 >= 1114112)
      {
        break;
      }

      v7 = *j;
      LOBYTE(v2) = v7;
      if (v7 == 59)
      {
        return checkCharRefNumber(v3);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t normal_predefinedEntityName(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 - a2 == 4)
  {
    v7 = *a2;
    if (v7 == 97)
    {
      if (a2[1] == 112 && a2[2] == 111 && a2[3] == 115)
      {
        return 39;
      }
    }

    else if (v7 == 113 && a2[1] == 117 && a2[2] == 111 && a2[3] == 116)
    {
      return 34;
    }

    return 0;
  }

  if (v3 == 3)
  {
    if (*a2 == 97 && a2[1] == 109 && a2[2] == 112)
    {
      return 38;
    }

    return 0;
  }

  if (v3 != 2 || a2[1] != 116)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 == 103)
  {
    v5 = 62;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 108)
  {
    return 60;
  }

  else
  {
    return v5;
  }
}

uint64_t normal_updatePosition(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 >= 1)
  {
    v4 = result + 136;
    while (1)
    {
      v5 = *(v4 + *a2);
      if (v5 <= 6)
      {
        break;
      }

      if (v5 == 7)
      {
        a2 += 4;
        goto LABEL_18;
      }

      if (v5 == 9)
      {
        ++*a4;
        if (a3 - (a2 + 1) < 1)
        {
          ++a2;
        }

        else if (*(v4 + a2[1]) == 10)
        {
          a2 += 2;
        }

        else
        {
          ++a2;
        }

        a4[1] = 0;
        goto LABEL_21;
      }

      if (v5 != 10)
      {
        goto LABEL_17;
      }

      ++*a4;
      a4[1] = 0;
      ++a2;
LABEL_21:
      if (a3 - a2 <= 0)
      {
        return result;
      }
    }

    if (v5 == 5)
    {
      a2 += 2;
    }

    else if (v5 == 6)
    {
      a2 += 3;
    }

    else
    {
LABEL_17:
      ++a2;
    }

LABEL_18:
    ++a4[1];
    goto LABEL_21;
  }

  return result;
}

uint64_t normal_isPublicId(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 1);
  v5 = ~(a2 + 1) + a3;
  if (v5 >= 1)
  {
    do
    {
      v6 = *v4;
      v7 = *(a1 + 136 + *v4);
      if (v7 <= 0x23)
      {
        if (((1 << v7) & 0xFCB8FE600) != 0)
        {
          goto LABEL_4;
        }

        if (((1 << v7) & 0x4400000) != 0)
        {
          if ((v6 & 0x80) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (v7 == 21)
        {
          if (v6 == 9)
          {
            goto LABEL_14;
          }

          goto LABEL_4;
        }
      }

      if (v6 != 64 && v6 != 36)
      {
LABEL_14:
        result = 0;
        *a4 = v4;
        return result;
      }

LABEL_4:
      ++v4;
      --v5;
    }

    while (v5 > 0);
  }

  return 1;
}

uint64_t latin1_toUtf8(uint64_t a1, char **a2, char *a3, _BYTE **a4, _BYTE *a5)
{
  while (2)
  {
    for (i = *a2; ; *a2 = i)
    {
      if (i == a3)
      {
        return 0;
      }

      v6 = *i;
      v7 = *a4;
      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      if (a5 - v7 < 2)
      {
        return 2;
      }

      *a4 = v7 + 1;
      *v7 = (v6 >> 6) | 0xC0;
      v8 = v6 & 0xBF;
      v9 = (*a4)++;
      *v9 = v8;
      i = *a2 + 1;
    }

    if (v7 != a5)
    {
      *a2 = i + 1;
      v10 = *i;
      v11 = (*a4)++;
      *v11 = v10;
      continue;
    }

    break;
  }

  return 2;
}

uint64_t latin1_toUtf16(uint64_t a1, unint64_t *a2, unint64_t a3, void *a4, _WORD *a5)
{
  v5 = *a2;
  if (*a2 >= a3)
  {
    return 0;
  }

  v6 = *a4;
  while (v6 < a5)
  {
    *a2 = (v5 + 1);
    v7 = *a4;
    *v7 = *v5;
    v6 = v7 + 1;
    *a4 = v6;
    v5 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }
  }

  if (v6 == a5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t normal_scanLit(int a1, unsigned int (**a2)(void, void), unsigned __int8 *a3, uint64_t a4, void *a5)
{
  v5 = a4 - a3;
  if (a4 - a3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  v11 = (a2 + 17);
  while (1)
  {
    v12 = v11[*v8];
    if (v12 > 6)
    {
      break;
    }

    if (v12 == 5)
    {
      if (v5 == 1)
      {
        return 4294967294;
      }

      if ((a2)[55](a2, v8))
      {
        goto LABEL_26;
      }

      v8 += 2;
    }

    else
    {
      if (v12 != 6)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_22:
        ++v8;
        goto LABEL_23;
      }

      if (v5 < 3)
      {
        return 4294967294;
      }

      if ((a2)[56](a2, v8))
      {
        goto LABEL_26;
      }

      v8 += 3;
    }

LABEL_23:
    v5 = a4 - v8;
    if (a4 - v8 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v12 - 12 >= 2)
  {
    if (v12 != 7)
    {
      if (v12 == 8)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v5 < 4)
    {
      return 4294967294;
    }

    if ((a2)[57](a2, v8))
    {
LABEL_26:
      result = 0;
      *a5 = v8;
      return result;
    }

    v8 += 4;
    goto LABEL_23;
  }

  ++v8;
  if (v12 != a1)
  {
    goto LABEL_23;
  }

  if (a4 - v8 < 1)
  {
    return 4294967269;
  }

  *a5 = v8;
  v14 = v11[*v8];
  v15 = v14 > 0x1E;
  v16 = (1 << v14) & 0x40300E00;
  if (v15 || v16 == 0)
  {
    return 0;
  }

  else
  {
    return 27;
  }
}

uint64_t normal_scanDecl(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a1[*a2 + 136];
  if (v5 > 0x17)
  {
    if (v5 != 24)
    {
      if (v5 == 27)
      {
        return normal_scanComment(a1, a2 + 1, a3, a4);
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v5 == 20)
    {
      *a4 = a2 + 1;
      return 33;
    }

    if (v5 != 22)
    {
LABEL_14:
      result = 0;
      *a4 = a2;
      return result;
    }
  }

  v7 = a2 + 1;
  v8 = a3 - (a2 + 1);
  if (v8 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v9 = v4[*v7];
    if (v9 > 0x1E)
    {
      goto LABEL_25;
    }

    if (((1 << v9) & 0x1400000) == 0)
    {
      break;
    }

    ++v7;
    if (--v8 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((1 << v9) & 0x200600) != 0)
  {
LABEL_17:
    *a4 = v7;
    return 16;
  }

  if (v9 == 30)
  {
    if (v8 == 1)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v4[v7[1]];
    v11 = v10 > 0x1E;
    v12 = (1 << v10) & 0x40200600;
    if (v11 || v12 == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_25:
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t normal_scanPi(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v6 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = v4;
  v28 = v5;
  v9 = a2;
  v11 = a1 + 136;
  v12 = a1[*a2 + 136];
  if (v12 > 0x15)
  {
    if (v12 == 22 || v12 == 24)
    {
      v13 = 1;
      goto LABEL_17;
    }

    goto LABEL_45;
  }

  if (v12 == 5)
  {
    if (v6 == 1)
    {
      return 4294967294;
    }

    if (!(*(a1 + 55))(a1, a2) && (*(a1 + 52))(a1, v9))
    {
      v13 = 2;
      goto LABEL_17;
    }

LABEL_45:
    result = 0;
    *a4 = v9;
    return result;
  }

  if (v12 == 6)
  {
    if (v6 < 3)
    {
      return 4294967294;
    }

    if (!(*(a1 + 56))(a1, a2) && (*(a1 + 53))(a1, v9))
    {
      v13 = 3;
      goto LABEL_17;
    }

    goto LABEL_45;
  }

  if (v12 != 7)
  {
    goto LABEL_45;
  }

  if (v6 < 4)
  {
    return 4294967294;
  }

  if ((*(a1 + 57))(a1, a2) || !(*(a1 + 54))(a1, v9))
  {
    goto LABEL_45;
  }

  v13 = 4;
LABEL_17:
  v16 = &v9[v13];
  v17 = a3 - &v9[v13];
  if (v17 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = 0;
  while (1)
  {
    v18 = v11[*v16];
    if (v18 > 0x15)
    {
      break;
    }

    if (v11[*v16] > 6u)
    {
      if (v11[*v16] > 8u)
      {
        if (v18 - 9 < 2)
        {
          goto LABEL_58;
        }

        if (v18 == 15)
        {
          result = normal_checkPiTarget(v9, v16, &v26);
          if (!result)
          {
            goto LABEL_89;
          }

          v24 = v16 + 1;
          if (a3 - (v16 + 1) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          if (*v24 == 62)
          {
            v25 = v16 + 2;
LABEL_92:
            *a4 = v25;
            return v26;
          }
        }

        else
        {
          if (v18 == 21)
          {
LABEL_58:
            result = normal_checkPiTarget(v9, v16, &v26);
            if (!result)
            {
              goto LABEL_89;
            }

            v9 = v16 + 1;
            v21 = a3 - (v16 + 1);
            if (v21 >= 1)
            {
              while (2)
              {
                v22 = v11[*v9];
                if (v22 > 6)
                {
                  switch(v22)
                  {
                    case 7u:
                      if (v21 < 4)
                      {
                        return 4294967294;
                      }

                      if ((*(a1 + 57))(a1, v9))
                      {
                        goto LABEL_45;
                      }

                      v23 = v9 + 4;
                      goto LABEL_81;
                    case 0xFu:
                      v23 = v9 + 1;
                      if (a3 - (v9 + 1) < 1)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      if (*v23 == 62)
                      {
                        v25 = v9 + 2;
                        goto LABEL_92;
                      }

                      goto LABEL_81;
                    case 8u:
                      goto LABEL_45;
                  }
                }

                else
                {
                  if (v22 == 5)
                  {
                    if (v21 == 1)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 55))(a1, v9))
                    {
                      goto LABEL_45;
                    }

                    v23 = v9 + 2;
                    goto LABEL_81;
                  }

                  if (v22 == 6)
                  {
                    if (v21 < 3)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 56))(a1, v9))
                    {
                      goto LABEL_45;
                    }

                    v23 = v9 + 3;
                    goto LABEL_81;
                  }

                  if (v22 < 2)
                  {
                    goto LABEL_45;
                  }
                }

                v23 = v9 + 1;
LABEL_81:
                v21 = a3 - v23;
                result = 0xFFFFFFFFLL;
                v9 = v23;
                if (a3 - v23 <= 0)
                {
                  return result;
                }

                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

LABEL_90:
          v24 = v16;
        }

        result = 0;
        *a4 = v24;
        return result;
      }

      if (v18 != 7)
      {
        goto LABEL_90;
      }

      if (v17 < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 57))(a1, v16) || !(*(a1 + 51))(a1, v16))
      {
        goto LABEL_88;
      }

      v19 = 4;
    }

    else if (v18 == 5)
    {
      if (v17 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 55))(a1, v16) || !(*(a1 + 49))(a1, v16))
      {
        goto LABEL_88;
      }

      v19 = 2;
    }

    else
    {
      if (v18 != 6)
      {
        goto LABEL_90;
      }

      if (v17 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 56))(a1, v16) || !(*(a1 + 50))(a1, v16))
      {
        goto LABEL_88;
      }

      v19 = 3;
    }

LABEL_43:
    v16 += v19;
    v17 = a3 - v16;
    if (a3 - v16 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v18 - 24 < 4 || v18 == 22)
  {
    v19 = 1;
    goto LABEL_43;
  }

  if (v18 != 29)
  {
    goto LABEL_90;
  }

LABEL_88:
  result = 0;
LABEL_89:
  *a4 = v16;
  return result;
}

uint64_t normal_scanPercent(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = a1 + 136;
  v10 = *(a1 + 136 + *a2);
  if (v10 > 0x1E)
  {
    goto LABEL_37;
  }

  v11 = 1;
  if (((1 << v10) & 0x40200600) != 0)
  {
    result = 22;
    goto LABEL_47;
  }

  if (((1 << v10) & 0x1400000) != 0)
  {
    goto LABEL_7;
  }

  if (v10 != 7)
  {
LABEL_37:
    if (v10 == 6)
    {
      if (v4 >= 3)
      {
        if ((*(a1 + 448))(a1, a2))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 424))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v11 = 3;
        goto LABEL_7;
      }
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_46;
      }

      if (v4 != 1)
      {
        if ((*(a1 + 440))(a1, a2))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 416))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v11 = 2;
        goto LABEL_7;
      }
    }

    return 4294967294;
  }

  if (v4 < 4)
  {
    return 4294967294;
  }

  if ((*(a1 + 456))(a1, a2))
  {
    goto LABEL_46;
  }

  result = (*(a1 + 432))(a1, v7);
  if (!result)
  {
    goto LABEL_47;
  }

  v11 = 4;
LABEL_7:
  v7 += v11;
  v13 = a3 - v7;
  if (a3 - v7 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v14 = *(v9 + *v7);
    if (v14 > 0x11)
    {
      break;
    }

    switch(v14)
    {
      case 5u:
        if (v13 == 1)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, v7))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 392))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v15 = 2;
        break;
      case 6u:
        if (v13 < 3)
        {
          return 4294967294;
        }

        if ((*(a1 + 448))(a1, v7))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 400))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v15 = 3;
        break;
      case 7u:
        if (v13 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v7))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 408))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v15 = 4;
        break;
      default:
        goto LABEL_46;
    }

LABEL_30:
    v7 += v15;
    v13 = a3 - v7;
    if (a3 - v7 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v14 - 24 < 4 || v14 == 22)
  {
    v15 = 1;
    goto LABEL_30;
  }

  if (v14 != 18)
  {
LABEL_46:
    result = 0;
    goto LABEL_47;
  }

  ++v7;
  result = 28;
LABEL_47:
  *a4 = v7;
  return result;
}

uint64_t normal_scanPoundName(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  result = 0;
  v10 = *(a1 + 136 + *a2);
  if (v10 > 6)
  {
    if (v10 != 7)
    {
      if (v10 != 22 && v10 != 24)
      {
        goto LABEL_49;
      }

      v12 = 1;
      goto LABEL_10;
    }

    if (v4 >= 4)
    {
      if (!(*(a1 + 456))(a1, a2))
      {
        result = (*(a1 + 432))(a1, v7);
        if (!result)
        {
          goto LABEL_49;
        }

        v12 = 4;
LABEL_10:
        v7 += v12;
        v13 = a3 - v7;
        if (a3 - v7 < 1)
        {
          return 4294967276;
        }

        while (1)
        {
          v14 = *(a1 + 136 + *v7);
          if (v14 <= 0x24)
          {
            if (((1 << v14) & 0xF400000) != 0)
            {
              v15 = 1;
              goto LABEL_14;
            }

            if (v14 == 7)
            {
              if (v13 < 4)
              {
                return 4294967294;
              }

              if ((*(a1 + 456))(a1, v7))
              {
                goto LABEL_47;
              }

              result = (*(a1 + 408))(a1, v7);
              if (!result)
              {
                goto LABEL_49;
              }

              v15 = 4;
              goto LABEL_14;
            }

            if (((1 << v14) & 0x1140200E00) != 0)
            {
              result = 20;
              goto LABEL_49;
            }
          }

          if (v14 == 6)
          {
            if (v13 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 448))(a1, v7))
            {
              goto LABEL_47;
            }

            result = (*(a1 + 400))(a1, v7);
            if (!result)
            {
              goto LABEL_49;
            }

            v15 = 3;
          }

          else
          {
            if (v14 != 5)
            {
              goto LABEL_47;
            }

            if (v13 == 1)
            {
              return 4294967294;
            }

            if ((*(a1 + 440))(a1, v7))
            {
              goto LABEL_47;
            }

            result = (*(a1 + 392))(a1, v7);
            if (!result)
            {
              goto LABEL_49;
            }

            v15 = 2;
          }

LABEL_14:
          v7 += v15;
          v13 = a3 - v7;
          if (a3 - v7 <= 0)
          {
            return 4294967276;
          }
        }
      }

      goto LABEL_47;
    }

    return 4294967294;
  }

  if (v10 != 5)
  {
    if (v10 != 6)
    {
      goto LABEL_49;
    }

    if (v4 >= 3)
    {
      if (!(*(a1 + 448))(a1, a2))
      {
        result = (*(a1 + 424))(a1, v7);
        if (!result)
        {
          goto LABEL_49;
        }

        v12 = 3;
        goto LABEL_10;
      }

LABEL_47:
      result = 0;
      goto LABEL_49;
    }

    return 4294967294;
  }

  if (v4 == 1)
  {
    return 4294967294;
  }

  if ((*(a1 + 440))(a1, a2))
  {
    goto LABEL_47;
  }

  result = (*(a1 + 416))(a1, v7);
  if (result)
  {
    v12 = 2;
    goto LABEL_10;
  }

LABEL_49:
  *a4 = v7;
  return result;
}

uint64_t normal_scanComment(unsigned int (**a1)(void, void), unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2;
  if (*a2 != 45)
  {
LABEL_28:
    result = 0;
    goto LABEL_29;
  }

  v5 = a2 + 1;
  v7 = a3 - (a2 + 1);
  if (v7 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (a1 + 17);
  while (1)
  {
    v10 = v9[*v5];
    if (v10 > 6)
    {
      break;
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        if (v7 < 3)
        {
          return 4294967294;
        }

        if ((a1)[56](a1, v5))
        {
          goto LABEL_28;
        }

        v11 = v5 + 3;
        goto LABEL_26;
      }

      if (v10 < 2)
      {
        goto LABEL_28;
      }

LABEL_25:
      v11 = v5 + 1;
      goto LABEL_26;
    }

    if (v7 == 1)
    {
      return 4294967294;
    }

    if ((a1)[55](a1, v5))
    {
      goto LABEL_28;
    }

    v11 = v5 + 2;
LABEL_26:
    v7 = a3 - v11;
    v5 = v11;
    if (a3 - v11 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v10 == 7)
  {
    if (v7 < 4)
    {
      return 4294967294;
    }

    if ((a1)[57](a1, v5))
    {
      goto LABEL_28;
    }

    v11 = v5 + 4;
    goto LABEL_26;
  }

  if (v10 != 27)
  {
    if (v10 == 8)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v11 = v5 + 1;
  if (a3 - (v5 + 1) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v11 != 45)
  {
    goto LABEL_26;
  }

  if (a3 - (v5 + 2) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v5[2];
  if (v13 == 62)
  {
    v5 += 3;
  }

  else
  {
    v5 += 2;
  }

  if (v13 == 62)
  {
    result = 13;
  }

  else
  {
    result = 0;
  }

LABEL_29:
  *a4 = v5;
  return result;
}

BOOL normal_checkPiTarget(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 11;
  if (a2 - a1 != 3)
  {
    return 1;
  }

  v3 = *a1;
  if (v3 == 120)
  {
    v4 = 0;
  }

  else
  {
    if (v3 != 88)
    {
      return 1;
    }

    v4 = 1;
  }

  v5 = a1[1];
  if (v5 != 109)
  {
    if (v5 != 77)
    {
      return 1;
    }

    v4 = 1;
  }

  v6 = a1[2];
  if (v6 != 108)
  {
    return v6 != 76;
  }

  if (v4)
  {
    return 0;
  }

  *a3 = 12;
  return 1;
}

uint64_t normal_scanRef(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  result = 0;
  v10 = a1 + 136;
  v11 = *(a1 + 136 + *a2);
  if (v11 <= 0x12)
  {
    switch(v11)
    {
      case 5u:
        if (v4 != 1)
        {
          if ((*(a1 + 440))(a1, a2))
          {
            goto LABEL_59;
          }

          result = (*(a1 + 416))(a1, v7);
          if (!result)
          {
            goto LABEL_60;
          }

          v12 = 2;
          goto LABEL_18;
        }

        break;
      case 6u:
        if (v4 >= 3)
        {
          if ((*(a1 + 448))(a1, a2))
          {
            goto LABEL_59;
          }

          result = (*(a1 + 424))(a1, v7);
          if (!result)
          {
            goto LABEL_60;
          }

          v12 = 3;
          goto LABEL_18;
        }

        break;
      case 7u:
        if (v4 >= 4)
        {
          if ((*(a1 + 456))(a1, a2))
          {
            goto LABEL_59;
          }

          result = (*(a1 + 432))(a1, v7);
          if (!result)
          {
            goto LABEL_60;
          }

          v12 = 4;
LABEL_18:
          v7 += v12;
          v14 = a3 - v7;
          if (a3 - v7 >= 1)
          {
            while (1)
            {
              v15 = *(v10 + *v7);
              if (v15 > 0x11)
              {
                if (v15 - 24 >= 4 && v15 != 22)
                {
                  if (v15 == 18)
                  {
                    ++v7;
                    result = 9;
                    goto LABEL_60;
                  }

LABEL_59:
                  result = 0;
                  goto LABEL_60;
                }

                v16 = 1;
              }

              else
              {
                switch(v15)
                {
                  case 5u:
                    if (v14 == 1)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 440))(a1, v7))
                    {
                      goto LABEL_59;
                    }

                    result = (*(a1 + 392))(a1, v7);
                    if (!result)
                    {
                      goto LABEL_60;
                    }

                    v16 = 2;
                    break;
                  case 6u:
                    if (v14 < 3)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 448))(a1, v7))
                    {
                      goto LABEL_59;
                    }

                    result = (*(a1 + 400))(a1, v7);
                    if (!result)
                    {
                      goto LABEL_60;
                    }

                    v16 = 3;
                    break;
                  case 7u:
                    if (v14 < 4)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 456))(a1, v7))
                    {
                      goto LABEL_59;
                    }

                    result = (*(a1 + 408))(a1, v7);
                    if (!result)
                    {
                      goto LABEL_60;
                    }

                    v16 = 4;
                    break;
                  default:
                    goto LABEL_59;
                }
              }

              v7 += v16;
              v14 = a3 - v7;
              if (a3 - v7 <= 0)
              {
                return 0xFFFFFFFFLL;
              }
            }
          }

          return 0xFFFFFFFFLL;
        }

        break;
      default:
        goto LABEL_60;
    }

    return 4294967294;
  }

  if (v11 != 19)
  {
    if (v11 == 22 || v11 == 24)
    {
      v12 = 1;
      goto LABEL_18;
    }

LABEL_60:
    *a4 = v7;
    return result;
  }

  if (a3 - (a2 + 1) >= 1)
  {
    v18 = a2[1];
    if (v18 != 120)
    {
      if (*(v10 + v18) != 25)
      {
        result = 0;
        v7 = a2 + 1;
        goto LABEL_60;
      }

      v7 = a2 + 2;
      v21 = v4 - 2;
      while (v21-- >= 1)
      {
        v23 = *v7++;
        v24 = *(v10 + v23);
        if (v24 != 25)
        {
          if (v24 != 18)
          {
            result = 0;
            --v7;
            goto LABEL_60;
          }

          goto LABEL_77;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a3 - (a2 + 2) >= 1)
    {
      if ((*(v10 + a2[2]) & 0xFE) != 0x18)
      {
        result = 0;
        v7 = a2 + 2;
        goto LABEL_60;
      }

      v7 = a2 + 3;
      v19 = a3 - (a2 + 3);
      if (v19 >= 1)
      {
        result = 0xFFFFFFFFLL;
        while (1)
        {
          v20 = *(v10 + *v7);
          if ((v20 - 24) >= 2)
          {
            break;
          }

          ++v7;
          if (--v19 <= 0)
          {
            return result;
          }
        }

        if (v20 != 18)
        {
          goto LABEL_59;
        }

        ++v7;
LABEL_77:
        result = 10;
        goto LABEL_60;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t normal_scanAtts(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v35 = a2;
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = 0;
  v10 = a1 + 136;
  v11 = a3 - 2;
  while (2)
  {
    result = 0;
    v13 = *(v10 + *v7);
    if (v13 > 0x14)
    {
      if (*(v10 + *v7) > 0x17u)
      {
        if (v13 - 24 <= 3)
        {
LABEL_6:
          ++v7;
          goto LABEL_7;
        }

        goto LABEL_134;
      }

      if (v13 != 21)
      {
        if (v13 == 22)
        {
          goto LABEL_6;
        }

        if (v13 != 23)
        {
LABEL_134:
          v14 = v7;
          goto LABEL_135;
        }

        if (!v9)
        {
          v14 = v7 + 1;
          v35 = v7 + 1;
          v15 = a3 - (v7 + 1);
          if (v15 < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0;
          v16 = *(v10 + *v14);
          if (v16 <= 6)
          {
            if (v16 == 5)
            {
              if (v15 == 1)
              {
                return 4294967294;
              }

              if ((*(a1 + 440))(a1, v7 + 1))
              {
                goto LABEL_153;
              }

              result = (*(a1 + 416))(a1, v7 + 1);
              if (!result)
              {
                goto LABEL_135;
              }

              v7 += 3;
            }

            else
            {
              if (v16 != 6)
              {
                goto LABEL_135;
              }

              if (v15 < 3)
              {
                return 4294967294;
              }

              if ((*(a1 + 448))(a1, v7 + 1))
              {
                goto LABEL_153;
              }

              result = (*(a1 + 424))(a1, v7 + 1);
              if (!result)
              {
                goto LABEL_135;
              }

              v7 += 4;
            }

LABEL_101:
            v35 = v7;
            v9 = 1;
            goto LABEL_8;
          }

          if (v16 != 7)
          {
            if (v16 != 24 && v16 != 22)
            {
              goto LABEL_135;
            }

            v7 += 2;
            goto LABEL_101;
          }

          if (v15 >= 4)
          {
            if ((*(a1 + 456))(a1, v7 + 1))
            {
              goto LABEL_153;
            }

            result = (*(a1 + 432))(a1, v7 + 1);
            if (!result)
            {
              goto LABEL_135;
            }

            v7 += 5;
            goto LABEL_101;
          }

          return 4294967294;
        }

LABEL_133:
        result = 0;
        goto LABEL_134;
      }

LABEL_32:
      v18 = a3 - ++v7;
      if (a3 - v7 < 1)
      {
        return 0xFFFFFFFFLL;
      }

      while (1)
      {
        v19 = *(v10 + *v7);
        if ((v19 - 9) >= 2 && v19 != 21)
        {
          break;
        }

        ++v7;
        if (--v18 <= 0)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (v19 != 14)
      {
        goto LABEL_133;
      }

      v35 = v7;
      goto LABEL_43;
    }

    if (*(v10 + *v7) <= 8u)
    {
      switch(v13)
      {
        case 5u:
          if (v4 == 1)
          {
            return 4294967294;
          }

          if (!(*(a1 + 440))(a1, v7))
          {
            result = (*(a1 + 392))(a1, v7);
            if (result)
            {
              v7 += 2;
              goto LABEL_7;
            }

            goto LABEL_134;
          }

          break;
        case 6u:
          if (v4 < 3)
          {
            return 4294967294;
          }

          if (!(*(a1 + 448))(a1, v7))
          {
            result = (*(a1 + 400))(a1, v7);
            if (result)
            {
              v7 += 3;
              goto LABEL_7;
            }

            goto LABEL_134;
          }

          break;
        case 7u:
          if (v4 < 4)
          {
            return 4294967294;
          }

          if (!(*(a1 + 456))(a1, v7))
          {
            result = (*(a1 + 408))(a1, v7);
            if (result)
            {
LABEL_17:
              v7 += 4;
              goto LABEL_7;
            }

            goto LABEL_134;
          }

          break;
        default:
          goto LABEL_134;
      }

      goto LABEL_133;
    }

    if (v13 - 9 < 2)
    {
      goto LABEL_32;
    }

    v14 = v7;
    if (v13 != 14)
    {
      goto LABEL_135;
    }

LABEL_43:
    v21 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v22 = *(v10 + *v21);
    if ((v22 & 0xFE) != 0xC)
    {
      v23 = v11 - v7;
      do
      {
        v7 = v21;
        if (v22 > 0x15 || ((1 << v22) & 0x200600) == 0)
        {
          goto LABEL_133;
        }

        if (v23 <= 0)
        {
          return 0xFFFFFFFFLL;
        }

        ++v21;
        v22 = *(v10 + v7[1]);
        --v23;
      }

      while ((v22 & 0xFE) != 0xC);
    }

    v7 += 2;
    v35 = v7;
    v24 = a3 - v7;
    if (a3 - v7 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      v25 = *(v10 + *v7);
      if (v25 == v22)
      {
        break;
      }

      if (*(v10 + *v7) > 5u)
      {
        switch(v25)
        {
          case 6u:
            if (v24 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 448))(a1, v7))
            {
              goto LABEL_133;
            }

            v7 += 3;
            goto LABEL_72;
          case 7u:
            if (v24 < 4)
            {
              return 4294967294;
            }

            if ((*(a1 + 456))(a1, v7))
            {
              goto LABEL_133;
            }

            v7 += 4;
            goto LABEL_72;
          case 8u:
            goto LABEL_133;
        }

        goto LABEL_71;
      }

      if (v25 != 3)
      {
        if (v25 == 5)
        {
          if (v24 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v7))
          {
            goto LABEL_133;
          }

          v7 += 2;
          goto LABEL_72;
        }

        if (v25 < 3)
        {
          goto LABEL_133;
        }

LABEL_71:
        ++v7;
LABEL_72:
        v35 = v7;
        goto LABEL_73;
      }

      result = normal_scanRef(a1, v7 + 1, a3, &v35);
      if (result < 1)
      {
        if (!result)
        {
          v14 = v35;
          goto LABEL_135;
        }

        return result;
      }

      v7 = v35;
LABEL_73:
      v24 = a3 - v7;
      if (a3 - v7 <= 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v14 = v7 + 1;
    v35 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v26 = *(v10 + *v14);
    if (v26 <= 0xA)
    {
      if (v26 - 9 >= 2)
      {
        goto LABEL_135;
      }

LABEL_103:
      v14 = v7 + 2;
      if (a3 - (v7 + 2) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v27 = 0;
      v28 = a3 - v7;
      v29 = 2;
      while (2)
      {
        v30 = *(v10 + v7[v29]);
        if (v30 > 0xA)
        {
          if (*(v10 + v7[v29]) <= 0x14u)
          {
            if (v30 == 11)
            {
              v14 = &v7[-v27 + 2];
              goto LABEL_152;
            }

            if (v30 == 17)
            {
              v14 = &v7[-v27 + 2];
              goto LABEL_140;
            }

            goto LABEL_154;
          }

          if (v30 != 21)
          {
            if (v30 == 24 || v30 == 22)
            {
              v9 = 0;
              v7 = &v7[-v27 + 3];
              goto LABEL_7;
            }

            goto LABEL_154;
          }

LABEL_110:
          ++v14;
          --v27;
          ++v29;
          result = 0xFFFFFFFFLL;
          if (v28 + v27 - 2 <= 0)
          {
            return result;
          }

          continue;
        }

        break;
      }

      if (*(v10 + v7[v29]) > 8u)
      {
        goto LABEL_110;
      }

      if (v30 == 5)
      {
        if (v28 + v27 == 3)
        {
          return 4294967294;
        }

        v7 -= v27;
        if (!(*(a1 + 440))(a1, v7 + 2))
        {
          result = (*(a1 + 416))(a1, v7 + 2);
          if (!result)
          {
            goto LABEL_135;
          }

          v9 = 0;
          goto LABEL_17;
        }

LABEL_153:
        result = 0;
        goto LABEL_135;
      }

      if (v30 != 6)
      {
        if (v30 != 7)
        {
LABEL_154:
          result = 0;
          v14 = &v7[-v27 + 2];
          goto LABEL_135;
        }

        if ((v28 + v27 - 2) < 4)
        {
          return 4294967294;
        }

        v31 = &v7[-v27];
        if (!(*(a1 + 456))(a1, v31 + 2))
        {
          result = (*(a1 + 432))(a1, v31 + 2);
          if (!result)
          {
            goto LABEL_135;
          }

          v9 = 0;
          v7 = v31 + 6;
          goto LABEL_7;
        }

        result = 0;
        v14 = v31 + 2;
        goto LABEL_135;
      }

      if ((v28 + v27 - 2) < 3)
      {
        return 4294967294;
      }

      v33 = &v7[-v27];
      if ((*(a1 + 448))(a1, v33 + 2))
      {
        goto LABEL_153;
      }

      result = (*(a1 + 424))(a1, v33 + 2);
      if (!result)
      {
        goto LABEL_135;
      }

      v9 = 0;
      v7 = v33 + 5;
LABEL_7:
      v35 = v7;
LABEL_8:
      v4 = a3 - v7;
      if (a3 - v7 <= 0)
      {
        return 0xFFFFFFFFLL;
      }

      continue;
    }

    break;
  }

  switch(v26)
  {
    case 0x15u:
      goto LABEL_103;
    case 0xBu:
LABEL_152:
      ++v14;
      result = 1;
      break;
    case 0x11u:
LABEL_140:
      v35 = v14 + 1;
      if (a3 - (v14 + 1) >= 1)
      {
        v34 = v14[1];
        if (v34 == 62)
        {
          v14 += 2;
        }

        else
        {
          ++v14;
        }

        if (v34 == 62)
        {
          result = 3;
        }

        else
        {
          result = 0;
        }

        break;
      }

      return 0xFFFFFFFFLL;
  }

LABEL_135:
  *a4 = v14;
  return result;
}

uint64_t utf8_toUtf8(uint64_t a1, const void **a2, unint64_t a3, void **a4, uint64_t a5)
{
  v6 = a3;
  v15 = a3;
  v8 = *a2;
  v9 = a3 - *a2;
  v10 = *a4;
  v11 = a5 - *a4;
  if (v9 > v11)
  {
    v6 = v8 + v11;
    v15 = v8 + v11;
  }

  _INTERNAL_trim_to_complete_utf8_characters(v8, &v15);
  v12 = v15 < v6;
  v13 = v15 - v8;
  memcpy(v10, v8, v15 - v8);
  *a2 = *a2 + v13;
  *a4 = *a4 + v13;
  if (v9 <= v11)
  {
    return v12;
  }

  else
  {
    return 2;
  }
}

uint64_t utf8_toUtf16(uint64_t a1, unint64_t *a2, unint64_t a3, _WORD **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a2;
  v7 = *a2 < a3;
  if (*a2 < a3 && v5 < a5)
  {
    do
    {
      v10 = *v6;
      v11 = *(a1 + 136 + v10);
      switch(v11)
      {
        case 7:
          if ((a5 - v5) < 3)
          {
            result = 2;
            goto LABEL_25;
          }

          if ((a3 - v6) < 4)
          {
LABEL_23:
            result = 1;
            goto LABEL_25;
          }

          v12 = v6[2];
          v13 = v6[3] & 0x3F;
          *v5 = (((((v6[1] & 0x3F) << 12) & 0xFFE3F03F | ((*v6 & 7) << 18) | ((v12 & 0x3F) << 6)) + 16711680) >> 10) | 0xD800;
          v5[1] = v13 & 0xF03F | ((v12 & 0x3F) << 6) | 0xDC00;
          v5 += 2;
          v6 += 4;
          break;
        case 6:
          if ((a3 - v6) < 3)
          {
            goto LABEL_23;
          }

          *v5++ = (v10 << 12) | ((v6[1] & 0x3F) << 6) | v6[2] & 0x3F;
          v6 += 3;
          break;
        case 5:
          if ((a3 - v6) < 2)
          {
            goto LABEL_23;
          }

          *v5++ = v6[1] & 0x3F | ((v10 & 0x1F) << 6);
          v6 += 2;
          break;
        default:
          ++v6;
          *v5++ = v10;
          break;
      }

      v7 = v6 < a3;
    }

    while (v6 < a3 && v5 < a5);
  }

  if (v7)
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

LABEL_25:
  *a2 = v6;
  *a4 = v5;
  return result;
}

BOOL utf8_isInvalid2(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 < 0xC2u)
  {
    return 1;
  }

  if ((a2[1] & 0x80u) != 0)
  {
    return a2[1] > 0xBFu;
  }

  return 1;
}

BOOL utf8_isInvalid3(uint64_t a1, unsigned __int8 *a2)
{
  if ((a2[2] & 0x80000000) == 0)
  {
    return 1;
  }

  v3 = a2[2];
  v4 = *a2;
  if (v4 != 239)
  {
    if (v3 > 0xBF)
    {
      return 1;
    }

    v5 = a2[1];
    if (v4 == 224)
    {
      return (v5 + 64) < 0xE0u;
    }

    goto LABEL_11;
  }

  v5 = a2[1];
  if (v5 != 191)
  {
    if (v3 > 0xBF)
    {
      return 1;
    }

LABEL_11:
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_12;
    }

    return 1;
  }

  if (v3 > 0xBD)
  {
    return 1;
  }

  v5 = 191;
LABEL_12:
  if (v4 == 237)
  {
    v6 = 159;
  }

  else
  {
    v6 = 191;
  }

  return v5 > v6;
}

uint64_t utf8_isInvalid4(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[3] > -65 || a2[2] > -65)
  {
    return 1;
  }

  v3 = *a2;
  v4 = a2[1];
  if (v3 == 244)
  {
    v5 = 143;
  }

  else
  {
    v5 = 191;
  }

  v6 = v4 > v5;
  v7 = (v4 & 0x80) == 0 || v6;
  v8 = (v4 + 64) < 0xD0u;
  if (v3 == 240)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t little2_contentTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v4 = a3 - a2;
  v5 = (a3 - a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    v6 = ((a3 - a2) & 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    a3 = &a2[v5];
  }

  if ((v4 & 1) != 0 && !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[1];
  if (v9 > 0xDB)
  {
    if (v9 - 220 < 4 || v9 == 255 && *a2 > 0xFDu)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if (v9 - 216 < 4)
  {
LABEL_14:
    if ((a3 - a2) < 4)
    {
      return 4294967294;
    }

    v10 = a2 + 4;
    goto LABEL_31;
  }

  if (!a2[1])
  {
    v11 = a1 + 136;
    v12 = *(a1 + 136 + *a2);
    if (v12 > 5)
    {
      if (*(a1 + 136 + *a2) <= 7u)
      {
        if (v12 == 6)
        {
          if ((a3 - a2) < 3)
          {
            return 4294967294;
          }

          v10 = a2 + 3;
          goto LABEL_31;
        }

        if (v12 == 7)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }

      switch(v12)
      {
        case 8u:
          goto LABEL_17;
        case 9u:
          v21 = a2 + 2;
          if ((a3 - (a2 + 2)) < 2)
          {
            return 4294967293;
          }

          if (!a2[3] && *(v11 + a2[2]) == 10)
          {
            v21 = a2 + 4;
          }

          break;
        case 0xAu:
          v21 = a2 + 2;
          break;
        default:
          goto LABEL_30;
      }

      *a4 = v21;
      return 7;
    }

    if (*(a1 + 136 + *a2) <= 2u)
    {
      if (v12 >= 2)
      {
        v13 = a2 + 2;
        v14 = a3 - (a2 + 2);
        if (v14 < 2)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = a2[3];
        if (v15 > 0xDB)
        {
          if (v15 - 220 < 4)
          {
            goto LABEL_97;
          }

          if (v15 == 255)
          {
            LODWORD(v22) = *v13;
            if (v22 > 0xFD)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v15 - 216 < 4)
          {
            goto LABEL_26;
          }

          if (!a2[3])
          {
            v22 = *v13;
            v23 = *(v11 + v22);
            if (v23 <= 0xF)
            {
              if (*(v11 + v22) <= 6u)
              {
                if (v23 != 6 || v14 != 2)
                {
                  goto LABEL_97;
                }

                return 4294967294;
              }

              if (v23 != 7)
              {
                if (v23 != 15)
                {
                  goto LABEL_97;
                }

                return little2_scanPi(a1, a2 + 4, a3, a4);
              }

LABEL_26:
              if (v14 >= 4)
              {
                goto LABEL_97;
              }

              return 4294967294;
            }

            if (*(v11 + v22) > 0x15u)
            {
              if (v23 == 22 || v23 == 24)
              {
LABEL_111:
                v13 = a2 + 4;
                v24 = a3 - (a2 + 4);
                if (v24 < 2)
                {
                  return 0xFFFFFFFFLL;
                }

                v25 = 0;
                while (1)
                {
                  v26 = v13[1];
                  if (v26 > 0xDB)
                  {
                    break;
                  }

                  if (v13[1])
                  {
                    if (v26 - 216 < 4)
                    {
                      goto LABEL_176;
                    }

LABEL_126:
                    LODWORD(v27) = *v13;
LABEL_127:
                    if (((namingBitmap[(v27 >> 5) | (8 * namePages[v13[1]])] >> v27) & 1) == 0)
                    {
                      goto LABEL_97;
                    }

LABEL_128:
                    v29 = 2;
                    goto LABEL_129;
                  }

                  v27 = *v13;
                  v28 = *(v11 + v27);
                  if (v28 <= 0x16)
                  {
                    if (*(v11 + v27) <= 0x10u)
                    {
                      if (*(v11 + v27) <= 8u)
                      {
                        if (v28 == 5)
                        {
                          goto LABEL_97;
                        }

                        if (v28 == 6)
                        {
                          if (v24 != 2)
                          {
                            goto LABEL_97;
                          }

                          return 4294967294;
                        }

                        if (v28 != 7)
                        {
                          goto LABEL_97;
                        }

LABEL_176:
                        if (v24 >= 4)
                        {
                          goto LABEL_97;
                        }

                        return 4294967294;
                      }

                      if (v28 - 9 >= 2)
                      {
                        if (v28 != 11)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_180;
                      }

LABEL_187:
                      v13 += 2;
                      v35 = a3 - v13;
                      if ((a3 - v13) < 2)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      while (1)
                      {
                        v39 = v13[1];
                        if (v13[1])
                        {
                          if ((v39 - 216) < 4)
                          {
                            goto LABEL_165;
                          }

                          if ((v39 - 220) < 4)
                          {
                            goto LABEL_97;
                          }

                          if (v39 == 255)
                          {
                            v40 = *v13;
                            if (v40 > 0xFD)
                            {
                              goto LABEL_97;
                            }

                            v39 = 0xFFu;
                          }

                          else
                          {
                            v40 = *v13;
                          }

LABEL_256:
                          if (((namingBitmap[(v40 >> 5) | (8 * nmstrtPages[v39])] >> v40) & 1) == 0)
                          {
                            goto LABEL_97;
                          }

                          return little2_scanAtts(a1, v13 + 2, a3, a4);
                        }

                        v40 = *v13;
                        v41 = *(v11 + *v13);
                        if (v41 > 0xA)
                        {
                          if (*(v11 + *v13) > 0x15u)
                          {
                            if (v41 != 22 && v41 != 24)
                            {
                              if (v41 != 29)
                              {
                                goto LABEL_97;
                              }

                              v39 = 0;
                              goto LABEL_256;
                            }

                            return little2_scanAtts(a1, v13 + 2, a3, a4);
                          }

                          if (v41 != 21)
                          {
                            if (v41 != 11)
                            {
                              if (v41 == 17)
                              {
LABEL_262:
                                v20 = v13 + 2;
                                if ((a3 - (v13 + 2)) >= 2)
                                {
                                  if (!v13[3] && *v20 == 62)
                                  {
                                    *a4 = v13 + 4;
                                    return 4;
                                  }

LABEL_266:
                                  v7 = 0;
                                  goto LABEL_61;
                                }

                                return 0xFFFFFFFFLL;
                              }

                              goto LABEL_97;
                            }

LABEL_180:
                            *a4 = v13 + 2;
                            return 2;
                          }
                        }

                        else if (*(v11 + *v13) <= 8u)
                        {
                          if (v41 == 5)
                          {
                            goto LABEL_97;
                          }

                          if (v41 != 6)
                          {
                            if (v41 == 7)
                            {
                              goto LABEL_165;
                            }

                            goto LABEL_97;
                          }

LABEL_258:
                          if (v35 != 2)
                          {
                            goto LABEL_97;
                          }

                          return 4294967294;
                        }

                        v13 += 2;
                        v35 -= 2;
                        v7 = 0xFFFFFFFFLL;
                        if (v35 <= 1)
                        {
                          return v7;
                        }
                      }
                    }

                    v29 = 2;
                    if (v28 != 22)
                    {
                      if (v28 == 17)
                      {
                        goto LABEL_262;
                      }

                      if (v28 != 21)
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_187;
                    }
                  }

                  else
                  {
                    if (v28 - 24 < 4)
                    {
                      goto LABEL_128;
                    }

                    if (v28 != 23)
                    {
                      if (v28 != 29)
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_127;
                    }

                    if (v25)
                    {
                      goto LABEL_97;
                    }

                    v30 = v13 + 2;
                    v31 = a3 - (v13 + 2);
                    if (v31 < 2)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v32 = v13[3];
                    if (v32 > 0xDB)
                    {
                      if (v32 == 255)
                      {
                        LODWORD(v33) = *v30;
                        if (v33 > 0xFD)
                        {
                          goto LABEL_241;
                        }

                        goto LABEL_150;
                      }

                      if (v32 - 220 < 4)
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_149;
                    }

                    if (v13[3])
                    {
                      if (v32 - 216 < 4)
                      {
                        goto LABEL_199;
                      }

LABEL_149:
                      LODWORD(v33) = *v30;
LABEL_150:
                      if (((namingBitmap[(v33 >> 5) | (8 * nmstrtPages[v13[3]])] >> v33) & 1) == 0)
                      {
                        goto LABEL_241;
                      }

                      v25 = 1;
LABEL_152:
                      v29 = 4;
                      goto LABEL_129;
                    }

                    v33 = *v30;
                    v34 = *(v11 + v33);
                    if (v34 <= 0x15)
                    {
                      if (v34 != 5)
                      {
                        if (v34 == 6)
                        {
                          if (v31 == 2)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v34 == 7)
                        {
LABEL_199:
                          if (v31 < 4)
                          {
                            return 4294967294;
                          }
                        }
                      }

LABEL_241:
                      v7 = 0;
                      *a4 = v30;
                      return v7;
                    }

                    v25 = 1;
                    if (v34 == 22)
                    {
                      goto LABEL_152;
                    }

                    v29 = 4;
                    if (v34 != 24)
                    {
                      if (v34 != 29)
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_150;
                    }
                  }

LABEL_129:
                  v13 += v29;
                  v24 = a3 - v13;
                  v7 = 0xFFFFFFFFLL;
                  if ((a3 - v13) <= 1)
                  {
                    return v7;
                  }
                }

                if (v26 == 255)
                {
                  LODWORD(v27) = *v13;
                  if (v27 > 0xFD)
                  {
                    goto LABEL_97;
                  }

                  goto LABEL_127;
                }

                if (v26 - 220 < 4)
                {
                  goto LABEL_97;
                }

                goto LABEL_126;
              }

              if (v23 != 29)
              {
                goto LABEL_97;
              }

LABEL_110:
              if (((namingBitmap[(v22 >> 5) | (8 * nmstrtPages[a2[3]])] >> v22) & 1) == 0)
              {
                goto LABEL_97;
              }

              goto LABEL_111;
            }

            if (v23 == 16)
            {
              v13 = a2 + 4;
              if ((a3 - (a2 + 4)) < 2)
              {
                return 0xFFFFFFFFLL;
              }

              if (a2[5])
              {
                goto LABEL_97;
              }

              v37 = *(v11 + *v13);
              if (v37 == 20)
              {
                v20 = a2 + 6;
                if ((a3 - (a2 + 6)) >= 12)
                {
                  for (i = 0; i != 6; ++i)
                  {
                    if (v20[1] || *v20 != big2_scanCdataSection_CDATA_LSQB[i])
                    {
                      goto LABEL_266;
                    }

                    v20 += 2;
                  }

                  v7 = 8;
                  v20 = a2 + 18;
LABEL_61:
                  *a4 = v20;
                  return v7;
                }

                return 0xFFFFFFFFLL;
              }

              if (v37 != 27)
              {
LABEL_97:
                v7 = 0;
                goto LABEL_98;
              }

              return little2_scanComment(a1, a2 + 6, a3, a4);
            }

            if (v23 != 17)
            {
              goto LABEL_97;
            }

            v13 = a2 + 4;
            v35 = a3 - (a2 + 4);
            if (v35 < 2)
            {
              return 0xFFFFFFFFLL;
            }

            v36 = a2[5];
            if (v36 > 0xDB)
            {
              if (v36 - 220 < 4)
              {
                goto LABEL_97;
              }

              if (v36 == 255)
              {
                LODWORD(v38) = *v13;
                if (v38 > 0xFD)
                {
                  goto LABEL_97;
                }

                goto LABEL_221;
              }
            }

            else
            {
              if (v36 - 216 < 4)
              {
                goto LABEL_165;
              }

              if (!a2[5])
              {
                v7 = 0;
                v38 = *v13;
                v42 = *(v11 + v38);
                if (v42 <= 0x15)
                {
                  if (v42 == 6)
                  {
                    goto LABEL_258;
                  }

                  if (v42 != 7)
                  {
                    goto LABEL_98;
                  }

LABEL_165:
                  if (v35 >= 4)
                  {
                    goto LABEL_97;
                  }

                  return 4294967294;
                }

                if (v42 == 22 || v42 == 24)
                {
                  goto LABEL_222;
                }

                if (v42 != 29)
                {
                  goto LABEL_98;
                }

LABEL_221:
                if (((namingBitmap[(v38 >> 5) | (8 * nmstrtPages[a2[5]])] >> v38) & 1) == 0)
                {
                  goto LABEL_97;
                }

LABEL_222:
                v44 = a3 - a2;
                if ((a3 - a2 - 6) < 2)
                {
                  return 0xFFFFFFFFLL;
                }

                v45 = 0;
                for (j = 6; ; j += 2)
                {
                  v47 = &a2[j];
                  v48 = a2[j + 1];
                  if (v48 > 0xDB)
                  {
                    break;
                  }

                  if (a2[j + 1])
                  {
                    if (v48 - 216 < 4)
                    {
                      goto LABEL_270;
                    }

                    goto LABEL_236;
                  }

                  v47 = *v47;
                  v49 = *(v11 + v47);
                  if ((v49 - 22) >= 6)
                  {
                    if (*(v11 + v47) <= 0xAu)
                    {
                      if ((v49 - 9) >= 2)
                      {
                        if (v49 == 6)
                        {
                          if (v44 + v45 == 8)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v49 == 7)
                        {
LABEL_270:
                          if (v44 + v45 - 6 < 4)
                          {
                            return 4294967294;
                          }
                        }

                        goto LABEL_271;
                      }

LABEL_274:
                      v51 = v44 + v45 - 8;
                      if (v51 < 2)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      v13 = &a2[-v45 + 8];
                      while (1)
                      {
                        if (v13[1])
                        {
                          goto LABEL_97;
                        }

                        v52 = *(v11 + *v13);
                        if ((v52 - 9) >= 2 && v52 != 21)
                        {
                          break;
                        }

                        v13 += 2;
                        v51 -= 2;
                        v7 = 0xFFFFFFFFLL;
                        if (v51 <= 1)
                        {
                          return v7;
                        }
                      }

                      if (v52 != 11)
                      {
                        goto LABEL_97;
                      }

                      v13 += 2;
                      goto LABEL_289;
                    }

                    if (v49 != 29)
                    {
                      if (v49 != 11)
                      {
                        if (v49 == 21)
                        {
                          goto LABEL_274;
                        }

LABEL_271:
                        v7 = 0;
                        v13 = &a2[-v45 + 6];
LABEL_98:
                        *a4 = v13;
                        return v7;
                      }

                      v13 = &a2[-v45 + 8];
LABEL_289:
                      v7 = 5;
                      goto LABEL_98;
                    }

                    goto LABEL_237;
                  }

LABEL_238:
                  v45 -= 2;
                  v7 = 0xFFFFFFFFLL;
                  if ((v44 + v45 - 6) <= 1)
                  {
                    return v7;
                  }
                }

                if (v48 == 255)
                {
                  LODWORD(v47) = *v47;
                  if (v47 > 0xFD)
                  {
                    goto LABEL_271;
                  }
                }

                else
                {
                  if (v48 - 220 < 4)
                  {
                    goto LABEL_271;
                  }

LABEL_236:
                  LODWORD(v47) = *v47;
                }

LABEL_237:
                if (((namingBitmap[(v47 >> 5) | (8 * namePages[a2[j + 1]])] >> v47) & 1) == 0)
                {
                  goto LABEL_271;
                }

                goto LABEL_238;
              }
            }

            LODWORD(v38) = *v13;
            goto LABEL_221;
          }
        }

        LODWORD(v22) = *v13;
        goto LABEL_110;
      }

LABEL_17:
      v7 = 0;
      *a4 = a2;
      return v7;
    }

    if (v12 == 3)
    {
      return little2_scanRef(a1, a2 + 2, a3, a4);
    }

    if (v12 == 4)
    {
      v10 = a2 + 2;
      if ((a3 - (a2 + 2)) >= 2)
      {
        if (a2[3] || *v10 != 93)
        {
          goto LABEL_31;
        }

        v13 = a2 + 4;
        if ((a3 - (a2 + 4)) >= 2)
        {
          if (!a2[5] && *v13 == 62)
          {
            goto LABEL_97;
          }

          goto LABEL_31;
        }
      }

      return 4294967291;
    }

    if (v12 == 5 && (a3 - a2) < 2)
    {
      return 4294967294;
    }
  }

LABEL_30:
  v10 = a2 + 2;
LABEL_31:
  v16 = a3 - v10;
  if ((a3 - v10) >= 2)
  {
    while (1)
    {
      v17 = v10[1];
      if (v17 > 0xDB)
      {
        if (v17 == 255)
        {
          if (*v10 > 0xFDu)
          {
            goto LABEL_64;
          }
        }

        else if (v17 - 220 < 4)
        {
          goto LABEL_64;
        }

        goto LABEL_45;
      }

      if (v17 - 216 < 4)
      {
        goto LABEL_34;
      }

      if (v10[1])
      {
        goto LABEL_45;
      }

      v19 = *(a1 + 136 + *v10);
      if (v19 > 5)
      {
        if (v19 != 6)
        {
          if (v19 != 7)
          {
            if (v19 - 8 < 3)
            {
              goto LABEL_64;
            }

            goto LABEL_45;
          }

LABEL_34:
          if (v16 <= 3)
          {
            goto LABEL_64;
          }

          v18 = v10 + 4;
          goto LABEL_46;
        }

        if (v16 == 2)
        {
          goto LABEL_64;
        }

        v18 = v10 + 3;
      }

      else
      {
        if (v19 != 4)
        {
          if (v19 < 4)
          {
            goto LABEL_64;
          }

LABEL_45:
          v18 = v10 + 2;
          goto LABEL_46;
        }

        if (v16 < 4)
        {
          goto LABEL_64;
        }

        v18 = v10 + 2;
        if (!v10[3] && *v18 == 93)
        {
          if (v16 < 6)
          {
LABEL_64:
            *a4 = v10;
            return 6;
          }

          if (!v10[5] && v10[4] == 62)
          {
            v7 = 0;
            v20 = v10 + 4;
            goto LABEL_61;
          }
        }
      }

LABEL_46:
      v16 = a3 - v18;
      v10 = v18;
      if ((a3 - v18) <= 1)
      {
        goto LABEL_63;
      }
    }
  }

  v18 = v10;
LABEL_63:
  *a4 = v18;
  return 6;
}

uint64_t little2_cdataSectionTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v4 = (a3 - a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v4)
  {
    v5 = ((a3 - a2) & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = &a2[v4];
  if (v5)
  {
    v6 = a3;
  }

  if (((a3 - a2) & 1) == 0 || v4)
  {
    v7 = a2[1];
    if (a2[1] > 0xDBu)
    {
      if ((v7 - 220) >= 4 && (v7 != 255 || *a2 <= 0xFDu))
      {
        goto LABEL_32;
      }

      v7 = 0;
    }

    else
    {
      if ((v7 - 216) < 4)
      {
LABEL_13:
        if (v6 - a2 < 4)
        {
          return 4294967294;
        }

        v8 = a2 + 4;
        goto LABEL_33;
      }

      if (a2[1])
      {
        goto LABEL_32;
      }

      v9 = *(a1 + 136 + *a2);
      if (v9 > 6)
      {
        if (*(a1 + 136 + *a2) <= 8u)
        {
          if (v9 == 7)
          {
            goto LABEL_13;
          }

          if (v9 == 8)
          {
            goto LABEL_54;
          }

          goto LABEL_32;
        }

        if (v9 == 9)
        {
          v8 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          if (a2[3])
          {
            v7 = 7;
LABEL_53:
            a2 = v8;
            goto LABEL_54;
          }

          if (*(a1 + 136 + a2[2]) == 10)
          {
            a2 += 4;
          }

          else
          {
            a2 += 2;
          }
        }

        else
        {
          if (v9 != 10)
          {
            goto LABEL_32;
          }

          a2 += 2;
        }

        v7 = 7;
        goto LABEL_54;
      }

      if (*(a1 + 136 + *a2) > 4u)
      {
        if (v9 == 5)
        {
          if (v6 - a2 < 2)
          {
            return 4294967294;
          }
        }

        else if (v9 == 6)
        {
          if (v6 - a2 < 3)
          {
            return 4294967294;
          }

          v8 = a2 + 3;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v9 >= 2)
      {
        if (v9 == 4)
        {
          v8 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          if (!a2[3] && *v8 == 93)
          {
            if (v6 - (a2 + 4) < 2)
            {
              return 0xFFFFFFFFLL;
            }

            if (!a2[5] && a2[4] == 62)
            {
              a2 += 6;
              v7 = 40;
              goto LABEL_54;
            }
          }

LABEL_33:
          v10 = v6 - v8;
          if (v6 - v8 >= 2)
          {
            while (1)
            {
              v11 = v8[1];
              if (v11 > 0xDB)
              {
                break;
              }

              if (v11 - 216 < 4)
              {
                goto LABEL_36;
              }

              v12 = 2;
              if (!v8[1])
              {
                v13 = *(a1 + 136 + *v8);
                if (v13 <= 0xA)
                {
                  if (v13 == 6)
                  {
                    if (v10 == 2)
                    {
                      goto LABEL_52;
                    }

                    v12 = 3;
                    goto LABEL_51;
                  }

                  if (v13 != 7)
                  {
                    v12 = 2;
                    if (((1 << v13) & 0x713) != 0)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_51;
                  }

LABEL_36:
                  if (v10 < 4)
                  {
                    goto LABEL_52;
                  }

                  v12 = 4;
                  goto LABEL_51;
                }

                goto LABEL_40;
              }

LABEL_51:
              v8 += v12;
              v10 = v6 - v8;
              if (v6 - v8 <= 1)
              {
                goto LABEL_52;
              }
            }

            if (v11 != 255)
            {
              v12 = 2;
              if (v11 - 220 < 4)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            if (*v8 > 0xFDu)
            {
              goto LABEL_52;
            }

LABEL_40:
            v12 = 2;
            goto LABEL_51;
          }

LABEL_52:
          v7 = 6;
          goto LABEL_53;
        }

LABEL_32:
        v8 = a2 + 2;
        goto LABEL_33;
      }
    }

LABEL_54:
    *a4 = a2;
    return v7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t little2_ignoreSectionTok(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  if ((a3 - a2))
  {
    v4 = &a2[(a3 - a2) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - a2;
  if (v4 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = a1 + 136;
  while (1)
  {
    v8 = a2[1];
    if (v8 > 0xDB)
    {
      if (v8 == 255)
      {
        if (*a2 > 0xFDu)
        {
          goto LABEL_44;
        }
      }

      else if (v8 - 220 < 4)
      {
        goto LABEL_44;
      }

LABEL_20:
      v9 = a2 + 2;
      goto LABEL_21;
    }

    if (v8 - 216 < 4)
    {
      goto LABEL_8;
    }

    if (a2[1])
    {
      goto LABEL_20;
    }

    v10 = *(v7 + *a2);
    if (v10 > 4)
    {
      break;
    }

    if (v10 == 2)
    {
      v9 = a2 + 2;
      if (v4 - (a2 + 2) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!a2[3] && *v9 == 33)
      {
        v9 = a2 + 4;
        if (v4 - (a2 + 4) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!a2[5] && *v9 == 91)
        {
          ++v6;
          v9 = a2 + 6;
        }
      }
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 < 2)
        {
LABEL_44:
          result = 0;
LABEL_45:
          *a4 = a2;
          return result;
        }

        goto LABEL_20;
      }

      v9 = a2 + 2;
      if (v4 - (a2 + 2) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!a2[3] && *v9 == 93)
      {
        v9 = a2 + 4;
        if (v4 - (a2 + 4) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!a2[5] && *v9 == 62)
        {
          v9 = a2 + 6;
          if (!v6)
          {
            result = 42;
            a2 += 6;
            goto LABEL_45;
          }

          --v6;
        }
      }
    }

LABEL_21:
    v5 = v4 - v9;
    a2 = v9;
    if (v4 - v9 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v7 + *a2) > 6u)
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    }

LABEL_8:
    if (v5 < 4)
    {
      return 4294967294;
    }

    v9 = a2 + 4;
    goto LABEL_21;
  }

  if (v10 != 6)
  {
    goto LABEL_20;
  }

  if (v5 != 2)
  {
    v9 = a2 + 3;
    goto LABEL_21;
  }

  return 4294967294;
}

uint64_t little2_attributeValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    if (v5[1] - 216 < 4)
    {
      goto LABEL_5;
    }

    if (v5[1])
    {
      v6 = 2;
      goto LABEL_6;
    }

    v7 = *(v4 + *v5);
    if (v7 <= 6)
    {
      if (v7 == 6)
      {
        v6 = 3;
      }

      else
      {
        if (v7 == 2)
        {
          result = 0;
          *a4 = v5;
          return result;
        }

        v6 = 2;
        if (v7 == 3)
        {
          if (v5 == a2)
          {
            return little2_scanRef(a1, a2 + 2, a3, a4);
          }

          goto LABEL_36;
        }
      }

      goto LABEL_6;
    }

    if (*(v4 + *v5) <= 8u)
    {
      v6 = 2;
      if (v7 != 7)
      {
        goto LABEL_6;
      }

LABEL_5:
      v6 = 4;
      goto LABEL_6;
    }

    if (v7 == 9)
    {
      break;
    }

    if (v7 == 10)
    {
      if (v5 != a2)
      {
        goto LABEL_36;
      }

      v9 = a2 + 2;
      goto LABEL_38;
    }

    v6 = 2;
    if (v7 == 21)
    {
      if (v5 == a2)
      {
        *a4 = a2 + 2;
        return 39;
      }

      goto LABEL_36;
    }

LABEL_6:
    v5 += v6;
    if ((a3 - v5) <= 1)
    {
      goto LABEL_36;
    }
  }

  if (v5 != a2)
  {
LABEL_36:
    *a4 = v5;
    return 6;
  }

  v9 = a2 + 2;
  if ((a3 - (a2 + 2)) >= 2)
  {
    if (!a2[3] && *(v4 + a2[2]) == 10)
    {
      v9 = a2 + 4;
    }

LABEL_38:
    *a4 = v9;
    return 7;
  }

  return 4294967293;
}

uint64_t little2_entityValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    if (v5[1] - 216 < 4)
    {
      goto LABEL_5;
    }

    if (v5[1])
    {
      v6 = 2;
      goto LABEL_6;
    }

    v7 = *(v4 + *v5);
    if (v7 <= 6)
    {
      break;
    }

    if (*(v4 + *v5) <= 8u)
    {
      v6 = 2;
      if (v7 != 7)
      {
        goto LABEL_6;
      }

LABEL_5:
      v6 = 4;
      goto LABEL_6;
    }

    if (v7 == 9)
    {
      if (v5 != a2)
      {
        goto LABEL_37;
      }

      v9 = a2 + 2;
      if ((a3 - (a2 + 2)) < 2)
      {
        return 4294967293;
      }

      if (!a2[3] && *(v4 + a2[2]) == 10)
      {
        v9 = a2 + 4;
      }

      *a4 = v9;
      return 7;
    }

    if (v7 == 10)
    {
      if (v5 != a2)
      {
        goto LABEL_37;
      }

      *a4 = a2 + 2;
      return 7;
    }

    v6 = 2;
    if (v7 == 30)
    {
      if (v5 == a2)
      {
        LODWORD(result) = little2_scanPercent(a1, a2 + 2, a3, a4);
        if (result == 22)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

LABEL_37:
      *a4 = v5;
      return 6;
    }

LABEL_6:
    v5 += v6;
    if ((a3 - v5) <= 1)
    {
      goto LABEL_37;
    }
  }

  if (v7 == 6)
  {
    v6 = 3;
    goto LABEL_6;
  }

  v6 = 2;
  if (v7 != 3)
  {
    goto LABEL_6;
  }

  if (v5 != a2)
  {
    goto LABEL_37;
  }

  v10 = a2 + 2;

  return little2_scanRef(a1, v10, a3, a4);
}

BOOL little2_nameMatchesAscii(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return a2 == a3;
  }

  v5 = a4 + 1;
  v6 = a3 - a2;
  while (1)
  {
    v7 = v6 < 2;
    v6 -= 2;
    if (v7 || a2[1] || *a2 != v4)
    {
      break;
    }

    a2 += 2;
    v8 = *v5++;
    v4 = v8;
    if (!v8)
    {
      return a2 == a3;
    }
  }

  return 0;
}

uint64_t little2_nameLength(uint64_t a1, unsigned __int8 *a2)
{
  for (i = a2; ; i += v4)
  {
    v3 = i[1];
    if (v3 > 0xDB)
    {
      if (v3 == 255)
      {
        if (*i > 0xFDu)
        {
          return (i - a2);
        }

        v4 = 2;
      }

      else
      {
        v4 = 2;
        if (v3 - 220 < 4)
        {
          return (i - a2);
        }
      }

      continue;
    }

    if (v3 - 216 < 4)
    {
      v4 = 4;
      continue;
    }

    v4 = 2;
    if (!i[1])
    {
      break;
    }

LABEL_5:
    ;
  }

  v5 = *(a1 + 136 + *i) - 5;
  if (v5 < 0x19 && ((0x17E0007u >> v5) & 1) != 0)
  {
    v4 = qword_1C37AB4E0[(*(a1 + 136 + *i) - 5)];
    goto LABEL_5;
  }

  return (i - a2);
}

unsigned __int8 *little2_skipS(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2[1])
  {
    v3 = a1 + 136;
    while (1)
    {
      v4 = *(v3 + *a2);
      v5 = v4 > 0x15;
      v6 = (1 << v4) & 0x200600;
      if (v5 || v6 == 0)
      {
        break;
      }

      result = a2 + 2;
      v8 = a2[3];
      a2 += 2;
      if (v8)
      {
        return result;
      }
    }
  }

  return a2;
}

uint64_t little2_getAtts(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  result = 0;
  v6 = 0;
  v7 = a1 + 136;
  v8 = 1;
  while (1)
  {
    while (1)
    {
      v9 = v8;
      v11 = a2 + 3;
      v10 = a2[3];
      v12 = a2 + 2;
      if (v10 > 0xDB)
      {
        break;
      }

      v13 = a2;
      if (v10 - 216 >= 4)
      {
        if (a2[3])
        {
          goto LABEL_16;
        }

        v15 = *v12;
        a2 += 2;
        switch(*(v7 + v15))
        {
          case 3:
            a2 = v12;
            if (result < a3)
            {
              *(a4 + 32 * result + 24) = 0;
              a2 = v12;
            }

            continue;
          case 5:
          case 0x16:
          case 0x18:
          case 0x1D:
            goto LABEL_16;
          case 6:
            a2 = v11;
            if (!v8)
            {
              v8 = 1;
              a2 = v11;
              if (result < a3)
              {
                v18 = a4 + 32 * result;
                *v18 = v12;
                *(v18 + 24) = 1;
                a2 = v11;
              }
            }

            continue;
          case 7:
            goto LABEL_4;
          case 9:
          case 0xA:
            v8 = 0;
            a2 = v12;
            if (v9 == 1)
            {
              continue;
            }

            a2 = v12;
            v8 = v9;
            if (v9 != 2)
            {
              continue;
            }

            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 24) = 0;
            goto LABEL_66;
          case 0xB:
          case 0x11:
            v8 = 2;
            a2 = v12;
            if (v9 == 2)
            {
              continue;
            }

            return result;
          case 0xC:
            if (v8 == 2)
            {
              v8 = 2;
              a2 = v12;
              if (v6 == 12)
              {
                if (result < a3)
                {
                  *(a4 + 32 * result + 16) = v12;
                }

                v8 = 0;
                result = (result + 1);
                v6 = 12;
                a2 = v12;
              }

              continue;
            }

            v6 = 12;
            v8 = 2;
            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 8) = v13 + 4;
            v6 = 12;
            goto LABEL_66;
          case 0xD:
            if (v8 == 2)
            {
              v8 = 2;
              a2 = v12;
              if (v6 == 13)
              {
                if (result < a3)
                {
                  *(a4 + 32 * result + 16) = v12;
                }

                v8 = 0;
                result = (result + 1);
                v6 = 13;
                a2 = v12;
              }

              continue;
            }

            v6 = 13;
            v8 = 2;
            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 8) = v13 + 4;
            v6 = 13;
            goto LABEL_66;
          case 0x15:
            v8 = 0;
            a2 = v12;
            if (v9 == 1)
            {
              continue;
            }

            a2 = v12;
            v8 = v9;
            if (v9 != 2)
            {
              continue;
            }

            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            v19 = a4 + 32 * result;
            v8 = 2;
            a2 = v12;
            if (!*(v19 + 24))
            {
              continue;
            }

            if (v12 == *(v19 + 8) || v15 != 32)
            {
              goto LABEL_65;
            }

            v20 = v13[5];
            if (v20 > 0xDB)
            {
              if (v20 - 220 < 4)
              {
                v21 = 8;
                goto LABEL_64;
              }

              if (v20 == 255 && v13[4] > 0xFDu)
              {
                v21 = 0;
                goto LABEL_64;
              }

LABEL_63:
              v21 = 29;
              goto LABEL_64;
            }

            if (v20 - 216 < 4)
            {
              v21 = 7;
              goto LABEL_64;
            }

            if (v13[5])
            {
              goto LABEL_63;
            }

            v22 = v13[4];
            if (v22 == 32)
            {
              goto LABEL_65;
            }

            v21 = *(v7 + v22);
LABEL_64:
            v8 = 2;
            a2 = v12;
            if (v21 != v6)
            {
              continue;
            }

LABEL_65:
            *(v19 + 24) = 0;
LABEL_66:
            v8 = 2;
            a2 = v12;
            break;
          default:
            continue;
        }
      }

      else
      {
LABEL_4:
        if (!v8)
        {
          v9 = 1;
          if (result < a3)
          {
            v17 = a4 + 32 * result;
            *v17 = v12;
            *(v17 + 24) = 1;
          }
        }

        a2 = v13 + 4;
        v8 = v9;
      }
    }

    a2 += 2;
    if (v10 - 220 >= 4)
    {
      if (v10 == 255)
      {
        v14 = *v12 <= 0xFDu && v8 == 0;
        a2 = v12;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_16:
        a2 = v12;
        if (!v8)
        {
LABEL_17:
          v8 = 1;
          a2 = v12;
          if (result < a3)
          {
            v16 = a4 + 32 * result;
            *v16 = v12;
            *(v16 + 24) = 1;
            a2 = v12;
          }
        }
      }
    }
  }
}