size_t axr_type_get_size(axr_type_t a1)
{
  v1 = 4;
  if (a1 == axr_type_half)
  {
    v1 = 2;
  }

  if (a1 <= axr_type_float)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

const char *__cdecl axr_level_mode_get_name(axr_level_mode_t mode)
{
  v1 = mode & 0xF;
  if (v1 >= 3)
  {
    v1 = 3;
  }

  return axr_level_mode_get_name_kLevelMode[v1];
}

uint32_t axr_get_version(void)
{
  result = axr_get_version_version;
  if (axr_get_version_version)
  {
    return result;
  }

  memset(&v14, 0, sizeof(v14));
  result = dladdr(axr_data_create, &v14);
  if (!result)
  {
    return result;
  }

  dli_fbase = v14.dli_fbase;
  if (!v14.dli_fbase)
  {
    return 0;
  }

  if (*v14.dli_fbase != -889275714 && *v14.dli_fbase != -1095041334)
  {
    goto LABEL_16;
  }

  v3 = *(v14.dli_fbase + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = bswap32(v3);
  for (i = (v14.dli_fbase + 16); *(i - 2) != 16777228; i += 5)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = *i;
  if (!v6)
  {
    return 0;
  }

  dli_fbase = v14.dli_fbase + v6;
LABEL_16:
  v8 = *(dli_fbase + 8);
  v7 = dli_fbase + 32;
  v9 = *(v7 - 3);
  v10 = v8 != 13;
  v11 = v8 != 13 && v9 >= 9;
  if (v11)
  {
    do
    {
      v12 = v7[1];
      v11 = v9 >= v12;
      v9 -= v12;
      if (!v11)
      {
        v9 = 0;
      }

      v7 = (v7 + v12);
      v10 = *v7 != 13;
    }

    while (*v7 != 13 && v9 > 8);
  }

  result = 0;
  if (v9 >= 8 && !v10)
  {
    result = v7[4];
    axr_get_version_version = result;
  }

  return result;
}

uint64_t ChunkLayout_Print(char *a1, size_t a2, unsigned int a3)
{
  if (a3 > 3)
  {
    return snprintf(a1, a2, "<unknown layout: %x>");
  }

  else
  {
    return snprintf(a1, a2, "%s");
  }
}

const char *__cdecl axr_channel_type_get_name(axr_channel_type_t type)
{
  if (type <= axr_channel_type_v)
  {
    return off_29EE51578[type];
  }

  else
  {
    return "<invalid channel type>";
  }
}

const char *__cdecl axr_line_order_get_name(axr_line_order_t line_orderType)
{
  if (line_orderType >= (axr_line_order_random_y|axr_line_order_decreasing_y))
  {
    v1 = axr_line_order_random_y|axr_line_order_decreasing_y;
  }

  else
  {
    v1 = line_orderType;
  }

  return axr_line_order_get_name_kLineOrderNames[v1];
}

void *AXRLogicalImageList::AXRLogicalImageList(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v147 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v95 = a1 + 1;
  *a1 = 0;
  a1[2] = 0;
  if (!a2)
  {
    return a1;
  }

  v8 = a2;
  v93 = *(a2 + 96);
  if (!v93)
  {
    return a1;
  }

  v117 = 0;
  AXRLogicalImageList::LoadDefaultGroups(a1, (a2 + 16), &v117, a4, a5, a6, a7, a8);
  v9 = 0;
  __dst = v115;
  v114 = 32;
  do
  {
    layer_count = axr_data_get_layer_count(v8, v9);
    memset(&v113, 0, sizeof(v113));
    axr_data_get_part_info(&v113, v8, v9, axr_part_info_current);
    if (!layer_count)
    {
      goto LABEL_160;
    }

    for (i = 0; i != layer_count; ++i)
    {
      __src[1] = 0;
      __src[0] = 0;
      *&v130 = 0;
      v17 = *(v8 + 88);
      if (v9 && v17)
      {
        v18 = 1;
        do
        {
          v17 = *(v17 + 8);
          if (v18 >= v9)
          {
            break;
          }

          ++v18;
        }

        while (v17);
      }

      if (!v17)
      {
        if (GetFlagsOnceToken == -1)
        {
          goto LABEL_181;
        }

        goto LABEL_182;
      }

      Part::GetLayerInfo(v17, i, __src);
      v19 = v130;
      if (!v130)
      {
        continue;
      }

      if (v114 < v130)
      {
        v84 = __dst;
        if (__dst == v115)
        {
          v84 = 0;
          __dst = 0;
        }

        v20 = reallocf(v84, 4 * v130);
        __dst = v20;
        v114 = v19;
        if (!v20)
        {
          continue;
        }
      }

      else
      {
        v20 = __dst;
        if (!__dst)
        {
          continue;
        }
      }

      memcpy(v20, __src[1], 4 * v130);
      v21 = __src[0];
      __s1[0] = 0;
      if (!v130)
      {
        continue;
      }

      v22 = v130;
      v23 = v117;
      if (!v117)
      {
        if (v113.view)
        {
          strncpy(__s1, v113.view, 0x100uLL);
        }

LABEL_26:
        v29 = *v95;
        if (*v95)
        {
          v28 = 0;
          do
          {
            v30 = v29;
            if (!v28)
            {
              if (*(v29 + 32))
              {
                v28 = 0;
              }

              else
              {
                v28 = v29;
              }
            }

            if (!strcmp(__s1, (v29 + 32)))
            {
              v28 = v30;
              goto LABEL_47;
            }

            v29 = *v30;
          }

          while (*v30);
          if (v23)
          {
            if (v28)
            {
              goto LABEL_36;
            }

            v32 = &unk_296B90CDB;
          }

          else
          {
            v32 = __s1;
          }
        }

        else
        {
LABEL_37:
          v30 = 0;
          if (v23)
          {
            v32 = &unk_296B90CDB;
          }

          else
          {
            v32 = __s1;
          }
        }

        v33 = malloc_type_malloc(0x120uLL, 0x102004010D29A0BuLL);
        v28 = v33;
        if (!v33)
        {
          continue;
        }

        *v33 = 0u;
        *(v33 + 1) = 0u;
        strlcpy(v33 + 32, v32, 0x100uLL);
        v34 = v95;
        if (v30)
        {
          v34 = v30;
        }

        *v34 = v28;
        ++*a1;
LABEL_47:
        strncpy(__s, v21, 0x100uLL);
        v125 = 0;
        v31 = v22;
        if (!v23)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      v24 = strrchr(__src[0], 46);
      v25 = v21;
      if (v24)
      {
        v27 = *v24;
        v26 = v24 + 1;
        if (v27)
        {
          v25 = v26;
        }

        else
        {
          v25 = v21;
        }
      }

      strncpy(__s1, v25, 0x100uLL);
      __s1[255] = 0;
      if (__s1[0])
      {
        goto LABEL_26;
      }

      v28 = *v95;
      if (!*v95)
      {
        goto LABEL_37;
      }

LABEL_36:
      strncpy(__s, v21, 0x100uLL);
      v125 = 0;
      v31 = v22;
LABEL_48:
      if (*(v28 + 32))
      {
        v35 = strrchr(__s, 46);
        v36 = v35;
        v37 = v35 ? v35 + 1 : __s;
        if (!strcmp(v37, v28 + 32))
        {
          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = __s;
          }

          *v38 = 0;
        }
      }

LABEL_57:
      if (!__s[0] && v113.name && *v113.name)
      {
        strncpy(__s, v113.name, 0x100uLL);
        v125 = 0;
      }

      v39 = 0;
      v40 = 0;
      do
      {
        v146 = 0;
        v145 = 0u;
        v144 = 0u;
        v143 = 0u;
        v142 = 0u;
        v141 = 0u;
        v140 = 0u;
        v139 = 0u;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        *__src = 0u;
        AXRData::GetChannelInfo((v8 + 16), v9, v20[v39], v12, v13, v14, v15, v16, __src);
        v40 |= 1 << SBYTE4(__src[0]);
        ++v39;
      }

      while (v31 != v39);
      v97 = v28 + 3;
      v98 = v28;
      v105 = v20;
      do
      {
        v41 = 0;
        v42 = &kColorModelInfo;
        while ((*v42 & ~v40) != 0)
        {
          ++v41;
          v42 += 2;
          if (v41 == 12)
          {
            v43 = 0;
            v44 = 0;
            goto LABEL_71;
          }
        }

        if (v41 >= 0xC)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        if (v41 >= 0xC)
        {
          v44 = 0;
        }

        else
        {
          v44 = *v42;
        }

LABEL_71:
        v123 = 0;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        memset(v118, 0, sizeof(v118));
        v45 = *(v8 + 88);
        if (v9 && v45)
        {
          v46 = 1;
          do
          {
            v45 = *(v45 + 1);
            if (v46 >= v9)
            {
              break;
            }

            ++v46;
          }

          while (v45);
        }

        if (!v45)
        {
          if (GetFlagsOnceToken == -1)
          {
LABEL_181:
            AXRLogError("Error: image index %lu out of range [0,%lu]", v10, v11, v12, v13, v14, v15, v16, v9);
            __break(1u);
          }

LABEL_182:
          AXRLogicalImageList::AXRLogicalImageList();
          goto LABEL_181;
        }

        v47 = v31;
        v48 = v8;
        Part::GetImageInfo(v45, *(v8 + 24), v118);
        if (SDWORD1(v118[0]) >= SLODWORD(v118[0]))
        {
          v49 = DWORD1(v118[0]) - LODWORD(v118[0]) + 1;
        }

        else
        {
          v49 = 0;
        }

        if (SHIDWORD(v118[0]) >= SDWORD2(v118[0]))
        {
          v50 = HIDWORD(v118[0]) - DWORD2(v118[0]) + 1;
        }

        else
        {
          v50 = 0;
        }

        v101 = v50;
        v102 = v49;
        if (!v43)
        {
          v146 = 0;
          v145 = 0u;
          v144 = 0u;
          v143 = 0u;
          v142 = 0u;
          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          v138 = 0u;
          v137 = 0u;
          v136 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          v132 = 0u;
          v131 = 0u;
          v130 = 0u;
          *__src = 0u;
          AXRData::GetChannelInfo((v8 + 16), v9, *v105, v12, v13, v14, v15, v16, __src);
          v65 = BYTE4(__src[0]);
          v66 = __src[0];
          v67 = *v105;
          v111 = v47 - 1;
          memmove(v105, v105 + 1, 4 * (v47 - 1));
          v68 = strrchr(&v130 + 8, 46);
          if (v68)
          {
            v69 = v68 + 1;
          }

          else
          {
            v69 = &v130 + 8;
          }

          if (*v69)
          {
            if (__s[0])
            {
              snprintf(__str, 0x100uLL, "%s.%s", __s, v69);
LABEL_140:
              v128 = 0;
              v78 = strlen(__str);
              if (v78 + 1 >= 2)
              {
                v79 = v78 + 1;
              }

              else
              {
                v79 = 256;
              }

              v80 = malloc_type_malloc(v79 + 80, 0x102004069052ED8uLL);
              v77 = v80;
              v81 = 1 << v65;
              if (v80)
              {
                *v80 = 0;
                *(v80 + 1) = v81;
                *(v80 + 4) = v102;
                *(v80 + 5) = v101;
                *(v80 + 6) = v66;
                *(v80 + 7) = v9;
                *(v80 + 8) = i;
                *(v80 + 36) = xmmword_296B8FAB0;
                *(v80 + 13) = v67;
                *(v80 + 7) = 0;
                *(v80 + 8) = 0;
                *(v80 + 18) = v41;
                strlcpy(v80 + 76, __str, v79);
              }

              v112 = v81;
              goto LABEL_146;
            }
          }

          else
          {
            v69 = __s;
          }

          strncpy(__str, v69, 0x100uLL);
          goto LABEL_140;
        }

        v51 = v9;
        v112 = 0;
        v52 = 0;
        v53 = 0;
        v106 = 0;
        v54 = 0;
        memset(__str, 255, sizeof(__str));
        v103 = -1;
        v55 = v31;
        v104 = v43;
        v99 = v43 + 12;
        while (v54 < v55)
        {
          v108 = v53;
          v110 = v52;
          v56 = &v105[v54];
          v57 = 4 * (~v54 + v55);
          while (1)
          {
            v146 = 0;
            v145 = 0u;
            v144 = 0u;
            v143 = 0u;
            v142 = 0u;
            v141 = 0u;
            v140 = 0u;
            v139 = 0u;
            v138 = 0u;
            v137 = 0u;
            v136 = 0u;
            v135 = 0u;
            v134 = 0u;
            v133 = 0u;
            v132 = 0u;
            v131 = 0u;
            v130 = 0u;
            *__src = 0u;
            AXRData::GetChannelInfo((v48 + 16), v51, *v56, v12, v13, v14, v15, v16, __src);
            v58 = 1 << SBYTE4(__src[0]);
            if (((1 << SBYTE4(__src[0])) & v44) != 0)
            {
              break;
            }

            ++v54;
            ++v56;
            v57 -= 4;
            if (v55 == v54)
            {
              v52 = v110;
              v53 = v108;
              v43 = v104;
              goto LABEL_113;
            }
          }

          v59 = 0;
          v52 = v110;
          v60 = v103;
          while (1)
          {
            v61 = v99[v59];
            if (v61 != -1 && HIDWORD(__src[0]) == v61)
            {
              break;
            }

            if (++v59 == 4)
            {
              goto LABEL_112;
            }
          }

          if (v103 == -1)
          {
            v60 = __src[0];
          }

          else if (v103 != LODWORD(__src[0]))
          {
            goto LABEL_109;
          }

          v103 = v60;
          if ((v58 & 0x200) == 0)
          {
            goto LABEL_111;
          }

          if (v110)
          {
            if (v110 != HIDWORD(__src[1]))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v52 = HIDWORD(__src[1]);
          }

          if (!v108)
          {
            v110 = v52;
            v108 = v130;
            goto LABEL_111;
          }

          if (v108 == v130)
          {
            v110 = v52;
LABEL_111:
            *&__str[4 * v59] = *v56;
            memmove(v56, v56 + 1, v57);
            v105[--v55] = -1;
            v44 &= ~v58;
            v112 |= v58;
            ++v106;
            v52 = v110;
            goto LABEL_112;
          }

LABEL_109:
          ++v54;
LABEL_112:
          v53 = v108;
          v43 = v104;
          if (!v44)
          {
            break;
          }
        }

LABEL_113:
        v111 = v55;
        v63 = *(v43 + 2);
        if (v112 == v40)
        {
          v9 = v51;
          v64 = v106;
        }

        else
        {
          v70 = 0;
          v71 = &dword_296B8FAC8;
          v9 = v51;
          v64 = v106;
          while ((*(v71 - 1) & ~v112) != 0)
          {
            ++v70;
            v71 += 4;
            if (v70 == 12)
            {
              goto LABEL_127;
            }
          }

          if (v70 <= 0xB)
          {
            v63 = *v71;
          }
        }

LABEL_127:
        if (v63 == 1)
        {
          if ((vminvq_u32(vandq_s8(vcgeq_f32(xmmword_296B8FA90, vabsq_f32(vmlaq_f32(xmmword_296B8FA80, xmmword_296B8FA70, v119))), vcgeq_f32(xmmword_296B8FA90, vabsq_f32(vmlaq_f32(xmmword_296B8FAA0, xmmword_296B8FA70, v120))))) & 0x80000000) == 0)
          {
            v63 = 1;
          }

          else
          {
            v63 = 7;
          }
        }

        if (v64)
        {
          v107 = v64;
          v72 = v53;
          v73 = v52;
          v109 = *__str;
          v74 = strlen(__s);
          if (v74 + 1 >= 2)
          {
            v75 = v74 + 1;
          }

          else
          {
            v75 = 256;
          }

          v76 = malloc_type_malloc(v75 + 80, 0x102004069052ED8uLL);
          v77 = v76;
          if (v76)
          {
            *v76 = 0;
            *(v76 + 1) = v112;
            *(v76 + 4) = v102;
            *(v76 + 5) = v101;
            *(v76 + 6) = v103;
            *(v76 + 7) = v9;
            *(v76 + 8) = i;
            *(v76 + 9) = v63;
            *(v76 + 10) = v73;
            *(v76 + 11) = v72;
            *(v76 + 12) = v107;
            *(v76 + 52) = v109;
            *(v76 + 17) = 0;
            *(v76 + 18) = v41;
            strlcpy(v76 + 76, __s, v75);
          }
        }

        else
        {
          v77 = 0;
        }

LABEL_146:
        v8 = v48;
        v31 = v111;
        if (!v77)
        {
          break;
        }

        *v77 = 0;
        v82 = v97;
        v83 = *v97;
        if (*v97)
        {
          do
          {
            if (*(v77 + 18) < *(v83 + 18))
            {
              break;
            }

            v82 = v83;
            v83 = *v83;
          }

          while (v83);
        }

        v40 &= ~v112;
        *v77 = v83;
        *v82 = v77;
        ++v98[1];
      }

      while (v111);
    }

LABEL_160:
    ++v9;
  }

  while (v9 != v93);
  if (v117)
  {
    v85 = *v95;
    if (*v95)
    {
      v86 = 0;
      v87 = 0;
      v88 = *v95;
      do
      {
        if (v88[32])
        {
          if (!strncmp(v88 + 32, "left", 0x100uLL))
          {
            v86 = 1;
          }

          else
          {
            v87 |= strncmp(v88 + 32, "right", 0x100uLL) == 0;
          }
        }

        v88 = *v88;
      }

      while (v88);
      if ((v87 ^ v86))
      {
        v90 = *(v85 + 32);
        v89 = (v85 + 32);
        if (!v90)
        {
          if (v87)
          {
            v91 = "right";
          }

          else
          {
            v91 = "left";
          }

          strncpy(v89, v91, 0x100uLL);
        }
      }
    }
  }

  if (__dst != v115)
  {
    free(__dst);
  }

  return a1;
}

uint64_t AXRLogicalImageList::LoadDefaultGroups(AXRLogicalImageList *this, const AXRData *a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x29EDCA608];
  v10 = *(a2 + 10) == 1;
  *a3 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(a2 + 9);
  if (!v11)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

LABEL_66:
    AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, 0);
    __break(1u);
  }

  v12 = *(v11 + 248);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = 0;
  v14 = *(v11 + 301) ? 255 : 31;
  while (1)
  {
    v15 = *(a2 + 9);
    if (!v15)
    {
      if (GetFlagsOnceToken == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }

    Part::GetImageProperty(v15, *(a2 + 1), *(a2 + 3), v13, a5, a6, a7, a8, &__dst);
    v16 = *(&__dst + 1);
    v17 = *(&v45 + 1);
    v18 = v45;
    if (!strncmp(__dst, "multiView", v14) && !strncmp(v16, "stringvector", v14))
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_12;
    }
  }

  if (!v18)
  {
LABEL_12:
    *a3 = 0;
    goto LABEL_13;
  }

  if (v18 >= 4)
  {
    v27 = (this + 8);
    do
    {
      v28 = *v17;
      v29 = v18 - 4;
      if (v28 > 0xFE || v29 < v28)
      {
        break;
      }

      v31 = v17 + 1;
      memcpy(&__dst, v17 + 1, *v17);
      *(&__dst + v28) = 0;
      v32 = *v27;
      if (*v27)
      {
        v33 = 0;
        while (1)
        {
          v34 = v32;
          if (!v33)
          {
            if (v32[32])
            {
              v33 = 0;
            }

            else
            {
              v33 = v32;
            }
          }

          if (!strcmp(&__dst, v32 + 32))
          {
            break;
          }

          v32 = *v34;
          if (!*v34)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v34 = 0;
LABEL_43:
        v35 = malloc_type_malloc(0x120uLL, 0x102004010D29A0BuLL);
        if (v35)
        {
          v36 = v35;
          *v35 = 0u;
          *(v35 + 1) = 0u;
          strlcpy(v35 + 32, &__dst, 0x100uLL);
          if (v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = (this + 8);
          }

          *v37 = v36;
          ++*this;
        }
      }

      v17 = (v31 + v28);
      v18 = v29 - v28;
    }

    while (v18 > 3);
  }

LABEL_13:
  if (*a3 || *this)
  {
    return 1;
  }

  v19 = *(a2 + 9);
  if (!v19)
  {
    if (GetFlagsOnceToken == -1)
    {
      goto LABEL_66;
    }

LABEL_74:
    AXRLogicalImageList::AXRLogicalImageList();
    goto LABEL_66;
  }

  v20 = *(v19 + 248);
  if (!v20)
  {
    return 1;
  }

  v21 = 0;
  if (*(v19 + 301))
  {
    v22 = 255;
  }

  else
  {
    v22 = 31;
  }

  while (2)
  {
    v23 = *(a2 + 9);
    if (!v23)
    {
      if (GetFlagsOnceToken == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }

    Part::GetImageProperty(v23, *(a2 + 1), *(a2 + 3), v21, a5, a6, a7, a8, &__dst);
    v24 = *(&__dst + 1);
    v25 = v45;
    if (strncmp(__dst, "view", v22) || strncmp(v24, "string", v22))
    {
      if (v20 == ++v21)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  if (v25)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    __dst = 0u;
    v45 = 0u;
    if (v25 <= 0xFF)
    {
      memcpy(&__dst, *(&v25 + 1), v25);
      *(&__dst + v25) = 0;
    }

    v38 = *(this + 1);
    if (v38)
    {
      while (1)
      {
        v39 = v38;
        if (!strcmp(&__dst, v38 + 32))
        {
          break;
        }

        v38 = *v39;
        if (!*v39)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v39 = 0;
LABEL_58:
      v40 = malloc_type_malloc(0x120uLL, 0x102004010D29A0BuLL);
      if (v40)
      {
        v41 = v40;
        *v40 = 0u;
        *(v40 + 1) = 0u;
        strlcpy(v40 + 32, &__dst, 0x100uLL);
        if (v39)
        {
          v42 = v39;
        }

        else
        {
          v42 = (this + 8);
        }

        *v42 = v41;
        ++*this;
      }
    }
  }

  return 1;
}

BOOL AXRLogicalImageList::IsEqual(AXRLogicalImageList *this, const AXRLogicalImageList *a2)
{
  if (*this != *a2)
  {
    return 0;
  }

  v2 = (a2 + 8);
  v3 = (this + 8);
  while (1)
  {
    v3 = *v3;
    v2 = *v2;
    if (!v2 || v3 == 0)
    {
      break;
    }

    if (!AXRImageGroup::IsEqual(v3, v2))
    {
      return 0;
    }
  }

  return v3 == v2;
}

BOOL AXRImageGroup::IsEqual(AXRImageGroup *this, const AXRImageGroup *a2)
{
  if (!a2 || *(this + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (a2 == this)
  {
    return 1;
  }

  v2 = *(this + 3);
  if (*(this + 1))
  {
    v3 = *(a2 + 3);
    if (v2)
    {
      goto LABEL_6;
    }

    return v3 == 0;
  }

  v3 = 0;
  if (!v2)
  {
    return v3 == 0;
  }

LABEL_6:
  while (1)
  {
    result = AXRImageLayer::IsEqual(v2, v3);
    if (!result)
    {
      break;
    }

    v2 = *v2;
    v3 = *v3;
    if (!v2)
    {
      return v3 == 0;
    }
  }

  return result;
}

size_t AXRImageGroup::GetSerializedSize(AXRImageGroup *this)
{
  v2 = strlen(this + 32) + 13;
  for (i = *(this + 3); i; i = *i)
  {
    v2 += strlen(i + 76) + 4 * *(i + 12) + 49;
  }

  return v2;
}

AXRImageGroup *AXRImageGroup::Deserialize(const void **this, const void **a2, unint64_t *a3, uint64_t a4, axr_error_t *a5, axr_error_t *a6)
{
  v7 = *a2;
  if (*a2 <= 3)
  {
    if (a5)
    {
      v8 = 0;
      v9 = axr_error_data_truncated;
LABEL_4:
      *a5 = v9;
      return v8;
    }

    return 0;
  }

  v12 = *this + 4;
  v13 = **this;
  *this = v12;
  v14 = v7 - 4;
  *a2 = v14;
  if (v13 != 1735946849)
  {
    if (a5 && *a5 == axr_error_success)
    {
      v8 = 0;
      v9 = axr_error_data_corrupted;
      goto LABEL_4;
    }

    return 0;
  }

  if (v14)
  {
    v17 = *v12 + 291;
  }

  else
  {
    v17 = 291;
  }

  v18 = malloc_type_malloc(v17, 0xA3D950CFuLL);
  if (!v18)
  {
    if (a5)
    {
      v8 = 0;
      v9 = axr_error_insufficient_memory;
      goto LABEL_4;
    }

    return 0;
  }

  v8 = v18;
  v23 = axr_error_success;
  AXRImageGroup::AXRImageGroup(v18, this, a2, a3, a4, &v23, v19, v20);
  if (v23)
  {
    for (i = *(v8 + 3); i; i = *(v8 + 3))
    {
      *(v8 + 3) = *i;
      MEMORY[0x29C25E8F0]();
    }

    free(v8);
    v8 = 0;
    if (a5)
    {
      v9 = v23;
      goto LABEL_4;
    }
  }

  return v8;
}

BOOL AXRImageGroup::Serialize(AXRImageGroup *this, void **a2, unint64_t *a3)
{
  v3 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v7 = *a2;
  *v7 = 1735946849;
  v8 = v7 + 1;
  *a2 = v8;
  *a3 = v3;
  v9 = strlen(this + 32);
  v10 = v9 >= 0xFF ? 255 : v9;
  if (v3 <= v10)
  {
    return 0;
  }

  v11 = v10 + 1;
  *v8 = v10;
  memcpy(v8 + 1, this + 32, v10);
  v12 = *a2 + v11;
  *a2 = v12;
  v13 = *a3 - v11;
  *a3 = v13;
  v14 = v13 >= 8;
  v15 = v13 - 8;
  if (!v14)
  {
    return 0;
  }

  *v12 = bswap64(*(this + 1));
  *a2 = v12 + 1;
  *a3 = v15;
  v16 = (this + 24);
  do
  {
    v16 = *v16;
    v17 = v16 == 0;
  }

  while (v16 && AXRImageLayer::Serialize(v16, a2, a3));
  return v17;
}

BOOL SerializeString(const char *a1, void **a2, unint64_t *a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = &unk_296B90CDB;
  }

  v6 = strlen(v5);
  if (v6 >= 0xFF)
  {
    v7 = 255;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a3;
  if (*a3 > v7)
  {
    v9 = *a2;
    *v9 = v7;
    memcpy(v9 + 1, v5, v7);
    *a2 = *a2 + v7 + 1;
    *a3 -= v7 + 1;
  }

  return v8 > v7;
}

BOOL AXRImageLayer::Serialize(AXRImageLayer *this, void **a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 - 4;
  if (*a3 >= 4)
  {
    v5 = *a2;
    v6 = *a2;
    *v6 = 1819441249;
    *a2 = v6 + 1;
    *a3 = v4;
    if (v4 >= 8)
    {
      *(v5 + 1) = bswap64(*(this + 1));
      *a2 = v5 + 3;
      *a3 = v3 - 12;
      if (v3 - 12 >= 4)
      {
        v5[3] = bswap32(*(this + 4));
        *a2 = v5 + 4;
        *a3 = v3 - 16;
        if (v3 - 16 >= 4)
        {
          v5[4] = bswap32(*(this + 5));
          *a2 = v5 + 5;
          *a3 = v3 - 20;
          if (v3 - 20 >= 4)
          {
            v5[5] = bswap32(*(this + 6));
            *a2 = v5 + 6;
            *a3 = v3 - 24;
            if (v3 - 24 >= 4)
            {
              v5[6] = bswap32(*(this + 7));
              *a2 = v5 + 7;
              *a3 = v3 - 28;
              if (v3 - 28 >= 4)
              {
                v5[7] = bswap32(*(this + 8));
                *a2 = v5 + 8;
                *a3 = v3 - 32;
                if (v3 - 32 >= 4)
                {
                  v5[8] = bswap32(*(this + 9));
                  *a2 = v5 + 9;
                  *a3 = v3 - 36;
                  if (v3 - 36 >= 4)
                  {
                    v5[9] = bswap32(*(this + 10));
                    *a2 = v5 + 10;
                    *a3 = v3 - 40;
                    if (v3 - 40 >= 4)
                    {
                      v5[10] = bswap32(*(this + 11));
                      *a2 = v5 + 11;
                      *a3 = v3 - 44;
                      if (v3 - 44 >= 4)
                      {
                        v5[11] = bswap32(*(this + 12));
                        v7 = v5 + 12;
                        *a2 = v7;
                        *a3 = v3 - 48;
                        if (!*(this + 12))
                        {
                          return SerializeString(this + 76, a2, a3);
                        }

                        v8 = 0;
                        for (i = v3 - 52; i < 0xFFFFFFFFFFFFFFFCLL; i -= 4)
                        {
                          *v7++ = bswap32(*(this + v8 + 13));
                          *a2 = v7;
                          *a3 = i;
                          if (++v8 >= *(this + 12))
                          {
                            return SerializeString(this + 76, a2, a3);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void AXRImageGroup::AXRImageGroup(AXRImageGroup *this, const void **a2, const void **a3, unint64_t *a4, uint64_t a5, axr_error_t *a6, uint64_t a7, uint64_t a8)
{
  *(this + 32) = 0;
  v10 = this + 32;
  *this = 0u;
  *(this + 1) = 0u;
  v11 = *a3;
  if (*a3 && ((v16 = *a2, v19 = *v16, v17 = v16 + 1, v18 = v19, *a2 = v17, v20 = v11 - 1, *a3 = v20, !v19) ? (*v10 = 0, v22 = *a3) : (v20 >= v18 ? (v21 = v18) : (v21 = v20), memcpy(this + 32, v17, v21), v10[v21] = 0, *a2 = *a2 + v21, v22 = *a3 - v21, *a3 = v22), v22 > 7))
  {
    v23 = **a2;
    *a2 = *a2 + 8;
    *a3 = v22 - 8;
    if (v23)
    {
      v24 = 0;
      v25 = bswap64(v23);
      v26 = 1;
      do
      {
        v27 = AXRImageLayer::Deserialize(a2, a3, a4, a5, a6, a6, a7, a8);
        if (!v27)
        {
          break;
        }

        v28 = v24 ? v24 : (this + 24);
        *v28 = v27;
        ++*(this + 1);
        v29 = v25 > v26++;
        v24 = v27;
      }

      while (v29);
    }
  }

  else if (a6)
  {
    *a6 = axr_error_data_truncated;
  }
}

char *AXRImageLayer::Deserialize(int **this, const void **a2, unint64_t *a3, uint64_t a4, uint64_t *a5, axr_error_t *a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x29EDCA608];
  if (a3 != 1)
  {
    v12 = a4;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v12) & 2) != 0)
    {
      AXRLogError("%s: error unhandled version (%d)", a2, a3, a4, a5, a6, a7, a8, "Deserialize");
    }

    if (a5)
    {
      result = 0;
      v11 = -3;
      goto LABEL_43;
    }

    return 0;
  }

  v9 = *a2;
  if (*a2 <= 3)
  {
    goto LABEL_3;
  }

  v13 = *this;
  v14 = *(*this)++;
  *a2 = (v9 - 4);
  if (v14 != 1819441249)
  {
    goto LABEL_41;
  }

  if (v9 - 4 <= 7)
  {
    goto LABEL_3;
  }

  v15 = bswap64(*(v13 + 1));
  *this = v13 + 3;
  *a2 = (v9 - 12);
  *&v50 = v15;
  if (v9 - 12 <= 3)
  {
    goto LABEL_3;
  }

  v16 = bswap32(v13[3]);
  *this = v13 + 4;
  *a2 = (v9 - 16);
  DWORD2(v50) = v16;
  if (v9 - 16 <= 3)
  {
    goto LABEL_3;
  }

  v17 = bswap32(v13[4]);
  *this = v13 + 5;
  *a2 = (v9 - 20);
  HIDWORD(v50) = v17;
  if (v9 - 20 <= 3)
  {
    goto LABEL_3;
  }

  v18 = bswap32(v13[5]);
  *this = v13 + 6;
  *a2 = (v9 - 24);
  LODWORD(v51) = v18;
  if (v9 - 24 <= 3)
  {
    goto LABEL_3;
  }

  v19 = bswap32(v13[6]);
  *this = v13 + 7;
  *a2 = (v9 - 28);
  DWORD1(v51) = v19;
  if (v9 - 28 <= 3)
  {
    goto LABEL_3;
  }

  v20 = bswap32(v13[7]);
  *this = v13 + 8;
  *a2 = (v9 - 32);
  DWORD2(v51) = v20;
  if (v9 - 32 <= 3)
  {
    goto LABEL_3;
  }

  v21 = bswap32(v13[8]);
  *this = v13 + 9;
  *a2 = (v9 - 36);
  HIDWORD(v51) = v21;
  if (v9 - 36 <= 3)
  {
    goto LABEL_3;
  }

  v22 = bswap32(v13[9]);
  *this = v13 + 10;
  *a2 = (v9 - 40);
  LODWORD(v52[0]) = v22;
  if (v9 - 40 <= 3)
  {
    goto LABEL_3;
  }

  v23 = bswap32(v13[10]);
  *this = v13 + 11;
  *a2 = (v9 - 44);
  DWORD1(v52[0]) = v23;
  if (v9 - 44 <= 3)
  {
    goto LABEL_3;
  }

  v24 = v13[11];
  v25 = bswap32(v24);
  v26 = (v13 + 12);
  *this = v13 + 12;
  v27 = (v9 - 48);
  *a2 = (v9 - 48);
  DWORD2(v52[0]) = v25;
  if (v18 > 2 || v21 - 8 < 0xFFFFFFF7 || v22 > v16 || v23 > v17 || v25 > 4)
  {
LABEL_41:
    if (a5)
    {
      result = 0;
      v11 = -6;
      goto LABEL_43;
    }

    return 0;
  }

  v47 = v15;
  v28 = v26;
  if (v24)
  {
    v29 = v52 + 3;
    if (v25 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v25;
    }

    v31 = (v9 - 52);
    while (v31 < 0xFFFFFFFFFFFFFFFCLL)
    {
      v32 = *v28++;
      *this = v28;
      *a2 = v31;
      *v29++ = bswap32(v32);
      v31 -= 4;
      if (!--v30)
      {
        v27 = v31 + 4;
        goto LABEL_35;
      }
    }

LABEL_3:
    if (a5)
    {
      result = 0;
      v11 = -4;
LABEL_43:
      *a5 = v11;
      return result;
    }

    return 0;
  }

LABEL_35:
  if (!v27)
  {
    if (a5)
    {
      v40 = 0;
      v46 = -4;
      goto LABEL_53;
    }

    return 0;
  }

  v35 = *v28;
  v33 = v28 + 1;
  v34 = v35;
  *this = v33;
  v36 = v27 - 1;
  *a2 = v27 - 1;
  if (v35)
  {
    v37 = v33;
    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = (v27 - 1);
    }

    memcpy(__dst, v33, v38);
    __dst[v38] = 0;
    *this = &v37[v38];
    *a2 = &v36[-v38];
  }

  else
  {
    __dst[0] = 0;
  }

  v39 = malloc_type_malloc(v34 + 81, 0x102004069052ED8uLL);
  if (v39)
  {
    v40 = v39;
    v41 = 0;
    v42 = &kColorModelInfo;
    do
    {
      v43 = *v42;
      v42 += 2;
      if ((v43 & ~v47) == 0)
      {
        break;
      }

      ++v41;
    }

    while (v41 != 12);
    *v39 = 0;
    v44 = v51;
    *(v39 + 8) = v50;
    *(v39 + 24) = v44;
    v45 = v52[1];
    *(v39 + 40) = v52[0];
    *(v39 + 56) = v45;
    *(v39 + 18) = v41;
    strlcpy(v39 + 76, __dst, v34 + 1);
    return v40;
  }

  if (!a5)
  {
    return 0;
  }

  v40 = 0;
  v46 = -5;
LABEL_53:
  *a5 = v46;
  return v40;
}

void *AXRImageGroup::GetDebugDescription(AXRImageGroup *this, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%sview: %p %s\n", a2, this, this + 32];
  snprintf(__str, 0x20uLL, "%s\t", a2);
  for (i = *(this + 3); i; i = *i)
  {
    v4 = [v4 stringByAppendingString:{AXRImageLayer::GetDebugDescription(i, __str)}];
  }

  return v4;
}

uint64_t AXRImageLayer::GetDebugDescription(AXRImageLayer *this, const char *a2)
{
  v2 = a2;
  v31 = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  if (!v4)
  {
    v6 = __str;
    v7 = 1023;
LABEL_17:
    snprintf(v6, v7, "<none>");
    goto LABEL_18;
  }

  v24 = *(this + 1);
  v5 = "{%s";
  v6 = __str;
  v7 = 1023;
  do
  {
    v8 = __clz(v4);
    v9 = v8 ^ 0x3F;
    name = axr_channel_type_get_name((v8 ^ 0x3F));
    if (name)
    {
      v11 = name;
      v12 = strstr(name, "axr_channel_type_");
      v13 = 17;
      if (v11 != v12)
      {
        v13 = 0;
      }

      v14 = &v11[v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v6, v7, v5, v14);
    if (v15 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 & ~(v16 >> 31);
    v7 -= v17;
    v6 += v17;
    v5 = " | %s";
    v18 = 1 << v9 == v4;
    v4 ^= 1 << v9;
  }

  while (!v18);
  if (!v24)
  {
    v2 = a2;
    goto LABEL_17;
  }

  snprintf(v6, v7, "}");
  v2 = a2;
LABEL_18:
  v19 = 0;
  v20 = *(this + 9);
  v21 = v26;
  do
  {
    if (v19 >= *(this + 12))
    {
      *v21 = 0;
    }

    else if (v19)
    {
      snprintf(v21, 6uLL, ", %u");
    }

    else
    {
      snprintf(v26, 6uLL, "%u");
    }

    ++v19;
    v21 += 6;
  }

  while (v19 != 4);
  if ((v20 - 8) >= 0xFFFFFFF7)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = 0;
  }

  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%simage %p %s\n%s\tchannel types: %s\n%s\tsize:          {w: %u, h: %u}\n%s\ttype:          %s\n%s\tpart index:    %u\n%s\tlayer index:   %u\n%s\tcolorspace:    %s\n%s\txChromaSampl:  %u\n%s\tyChromaSsmpl:  %u\n%s\tchannel count: %u\n%s\tchannels:      {%s%s%s%s}\n", v2, this, this + 76, v2, __str, v2, *(this + 4), *(this + 5), v2, axr_type_get_name(*(this + 6)), v2, *(this + 7), v2, *(this + 8), v2, off_29EE51628[v22], v2, *(this + 10), v2, *(this + 11), v2, *(this + 12), v2, v26, &v27, &v28, v29];
}

NSObject *AXRImageLayer::CreateDecoder(uint64_t a1, axr_data_t fileData, int a3, unint64_t levelIndex, axr_flags_t flags, double a6)
{
  v6 = flags;
  v17 = axr_decoder_create(fileData, *(a1 + 28), levelIndex, flags);
  if (!v17)
  {
    return v17;
  }

  v18 = *(a1 + 48);
  if ((v6 & 2) != 0)
  {
    if (v18 <= 3 && (*(a1 + 8) & 0x10) != 0)
    {
      AXRLogDebug("axr_logical_image_info_create_decoder: channel list already has an alpha channel but alpha parameter is numeric, indicating to add another one.", v10, v11, v12, v13, v14, v15, v16, v24);
    }

    if ((v18 - 2) >= 2)
    {
      if (v18 == 4)
      {
        v19 = "axr_logical_image_info_create_decoder: channel count = 4. Attempt to add a fifth channel (constant alpha) ignored.";
        goto LABEL_14;
      }

      if (v18 != 1)
      {
        v19 = "axr_logical_image_info_create_decoder: channel count = lu unsupported by axr_decoder_read_pixels.";
        goto LABEL_14;
      }

      if (a6 == 1.0 && *(a1 + 8) == 1024)
      {
        v19 = "axr_logical_image_info_create_decoder memory waste: Adding constant opaque alpha channel to monochrome data";
LABEL_14:
        AXRLogDebug(v19, v10, v11, v12, v13, v14, v15, v16, v24);
      }
    }
  }

  if (!((v18 > 3) | (a3 ^ 1) & 1) && axr_decoder_append_constant_value_channel(v17, a6, *(a1 + 24), axr_channel_type_alpha, axr_flags_default))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    v20 = (a1 + 52);
    v21 = v18;
    while (1)
    {
      v22 = *v20++;
      if (axr_decoder_append_channel(v17, v22, axr_flags_default))
      {
        goto LABEL_28;
      }

      if (!--v21)
      {
        if (v18 > 3)
        {
          return v17;
        }

        if (v18 == 2 && axr_decoder_append_constant_value_channel(v17, 0.0, *(a1 + 24), axr_channel_type_blue, axr_flags_default))
        {
          goto LABEL_28;
        }

        if ((a3 & 1) == 0)
        {
          goto LABEL_27;
        }

        return v17;
      }
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_27:
    if (axr_decoder_append_constant_value_channel(v17, a6, *(a1 + 24), axr_channel_type_alpha, axr_flags_default))
    {
LABEL_28:

      return 0;
    }
  }

  return v17;
}

uint64_t axr_logical_image_list_get_default_view_index(axr_logical_image_list_t list)
{
  if (!list)
  {
    axr_logical_image_list_get_default_view_index_cold_1(list, v1, v2, v3, v4, v5, v6, v7);
  }

  return 0;
}

const char *__cdecl axr_logical_image_list_get_view_name(axr_logical_image_list_t list, unint64_t viewIndex)
{
  if (list)
  {
    if (list[2].isa <= viewIndex)
    {
      goto LABEL_8;
    }

    v8 = list + 3;
    v9 = viewIndex + 1;
    do
    {
      v8 = v8->isa;
      --v9;
    }

    while (v9);
    if (v8)
    {
      return &v8[4];
    }

    else
    {
LABEL_8:
      axr_logical_image_list_get_view_name_cold_1();
      return v11;
    }
  }

  else
  {
    axr_logical_image_list_get_view_name_cold_2(0, viewIndex, v2, v3, v4, v5, v6, v7);
    return &unk_296B90CDB;
  }
}

unint64_t axr_logical_image_list_get_image_count(axr_logical_image_list_t list, unint64_t viewIndex)
{
  if (list)
  {
    if (list[2].isa <= viewIndex)
    {
      goto LABEL_8;
    }

    v8 = list + 3;
    v9 = viewIndex + 1;
    do
    {
      v8 = v8->isa;
      --v9;
    }

    while (v9);
    if (v8)
    {
      return v8[1].isa;
    }

    else
    {
LABEL_8:
      axr_logical_image_list_get_image_count_cold_1();
      return v11;
    }
  }

  else
  {
    axr_logical_image_list_get_image_count_cold_2(0, viewIndex, v2, v3, v4, v5, v6, v7);
    return 0;
  }
}

unint64_t axr_logical_image_list_get_default_image_index(axr_logical_image_list_t list, unint64_t viewIndex)
{
  if (list)
  {
    if (list[2].isa <= viewIndex)
    {
      goto LABEL_8;
    }

    v8 = list + 3;
    v9 = viewIndex + 1;
    do
    {
      v8 = v8->isa;
      --v9;
    }

    while (v9);
    if (v8)
    {
      return v8[2].isa;
    }

    else
    {
LABEL_8:
      axr_logical_image_list_get_default_image_index_cold_1();
      return v11;
    }
  }

  else
  {
    axr_logical_image_list_get_default_image_index_cold_2(0, viewIndex, v2, v3, v4, v5, v6, v7);
    return 0;
  }
}

const char *__cdecl axr_logical_image_list_get_image_name(axr_logical_image_list_t list, unint64_t viewIndex, unint64_t imageIndex)
{
  if (!list)
  {
    axr_logical_image_list_get_image_name_cold_3(0, viewIndex, imageIndex, v3, v4, v5, v6, v7);
    return &unk_296B90CDB;
  }

  if (list[2].isa <= viewIndex)
  {
    goto LABEL_12;
  }

  v8 = list + 3;
  v9 = viewIndex + 1;
  do
  {
    v8 = v8->isa;
    --v9;
  }

  while (v9);
  if (!v8)
  {
LABEL_12:
    axr_logical_image_list_get_image_name_cold_2();
    return v13;
  }

  if (v8[1].isa <= imageIndex)
  {
    goto LABEL_13;
  }

  v10 = v8 + 3;
  v11 = imageIndex + 1;
  do
  {
    v10 = v10->isa;
    --v11;
  }

  while (v11);
  if (!v10)
  {
LABEL_13:
    axr_logical_image_list_get_image_name_cold_1();
    return v13;
  }

  return &v10[9].isa + 4;
}

axr_logical_image_info_t *__cdecl axr_logical_image_list_get_image_info(axr_logical_image_info_t *__return_ptr retstr, axr_logical_image_info_t *list, unint64_t viewIndex, unint64_t imageIndex, axr_logical_image_info_struct_version_t version)
{
  if (list)
  {
    if (*&list->type <= viewIndex)
    {
      goto LABEL_12;
    }

    p_layerIndex = &list->layerIndex;
    v10 = viewIndex + 1;
    do
    {
      p_layerIndex = *p_layerIndex;
      --v10;
    }

    while (v10);
    if (p_layerIndex)
    {
      if (*(p_layerIndex + 1) <= imageIndex)
      {
        goto LABEL_13;
      }

      v11 = p_layerIndex + 6;
      v12 = imageIndex + 1;
      do
      {
        v11 = *v11;
        --v12;
      }

      while (v12);
      if (v11)
      {
        v13 = *(v11 + 2);
        v14 = *(v11 + 6);
        v15 = *(v11 + 14);
        *&retstr->xChromaSampling = *(v11 + 10);
        *&retstr->channels[1] = v15;
        *&retstr->channelMask = v13;
        *&retstr->type = v14;
      }

      else
      {
LABEL_13:
        axr_logical_image_list_get_image_info_cold_1();
      }
    }

    else
    {
LABEL_12:
      axr_logical_image_list_get_image_info_cold_2();
    }
  }

  else
  {
    axr_logical_image_list_get_image_info_cold_3(retstr, viewIndex, imageIndex, *&version, v5, v6, v7, v8);
  }

  return list;
}

axr_decoder_t axr_logical_image_list_create_decoder(axr_logical_image_list_t list, axr_data_t data, unint64_t viewIndex, unint64_t imageIndex, double alpha, BOOL isAlphaFirst, unint64_t levelIndex, axr_flags_t flags)
{
  if (!list)
  {
    axr_logical_image_list_create_decoder_cold_3(flags, &v13);
    return v13;
  }

  if (list[2].isa <= viewIndex)
  {
    goto LABEL_13;
  }

  v8 = list + 3;
  v9 = viewIndex + 1;
  do
  {
    v8 = v8->isa;
    --v9;
  }

  while (v9);
  if (!v8)
  {
LABEL_13:
    axr_logical_image_list_create_decoder_cold_2(flags, &v13);
    return v13;
  }

  if (v8[1].isa <= imageIndex)
  {
    goto LABEL_14;
  }

  v10 = v8 + 3;
  v11 = imageIndex + 1;
  do
  {
    v10 = v10->isa;
    --v11;
  }

  while (v11);
  if (!v10)
  {
LABEL_14:
    axr_logical_image_list_create_decoder_cold_1(flags, &v13);
    return v13;
  }

  return AXRImageLayer::CreateDecoder(v10, data, isAlphaFirst, levelIndex, flags, alpha);
}

size_t axr_logical_image_list_get_serialized_size(axr_logical_image_list_t list)
{
  if (!list)
  {
    return 0;
  }

  isa = list[3].isa;
  if (!isa)
  {
    return 16;
  }

  v2 = 16;
  do
  {
    v2 += AXRImageGroup::GetSerializedSize(isa);
    isa = *isa;
  }

  while (isa);
  return v2;
}

char *AXRData::GetChannelInfo@<X0>(AXRData *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(this + 9);
  if (a2 && v9)
  {
    v10 = 1;
    do
    {
      v9 = *(v9 + 1);
      if (v10 >= a2)
      {
        break;
      }

      ++v10;
    }

    while (v9);
  }

  if (!v9)
  {
    v14 = a2;
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v14);
      __break(1u);
LABEL_12:
      [OS_axr_data debugDescription];
    }
  }

  v11 = *(this + 1);
  v12 = *(this + 3);

  return Part::GetChannelInfo(v9, v11, v12, a3, a5, a6, a7, a8, a9);
}

void AXRLogicalImageList::~AXRLogicalImageList(AXRLogicalImageList *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  if (v1)
  {
    do
    {
      v2 = *v1;
      while (1)
      {
        v3 = v1[3];
        if (!v3)
        {
          break;
        }

        v1[3] = *v3;
        MEMORY[0x29C25E8F0]();
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

double OUTLINED_FUNCTION_3()
{
  result = 0.0;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ChannelDescription::Print(ChannelDescription *this, char *a2, size_t a3, char *a4, axr_flags_t a5)
{
  v8 = &a4[*this];
  name = axr_channel_type_get_name(*(this + 32));
  v10 = axr_type_get_name(*(this + 18));
  if (*(this + 132))
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  v12 = 32;
  if (*(this + 18) == 1)
  {
    v12 = 16;
  }

  return snprintf(a2, a3, "\t\tname:         %s\n\t\tchannel type: %s\n\t\tpixel type:   %s\n\t\tchannel bits: %u\n\t\tx sampling:   %d\n\t\ty sampling:   %d\n\t\tis linear:    %s\n", v8, name, v10, v12, *(this + 20), *(this + 26), v11);
}

uint64_t ChannelDescription::ConfigureChannelType(uint64_t a1, char *__s1, size_t a3, void *a4)
{
  v5 = a3;
  v8 = 0;
  v9 = __s1;
  do
  {
    if (a3 - 1 == v8)
    {
      v12 = 0;
      v11 = __s1;
      goto LABEL_9;
    }

    v10 = v9[a3 - 1];
    ++v8;
    --v9;
  }

  while (v10 != 46);
  v11 = &v9[a3 + 1];
  if (a3 + 1 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 - (v9[a3] == 46) - v8 + 1;
  }

  v5 = v8 - 1;
LABEL_9:
  v13 = *a4;
  if (*a4)
  {
    while (v13[2] != v12 || strncmp(__s1, v13[1], v12))
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v14 = malloc_type_calloc(1uLL, v12 + 41, 0x10300409A5B3759uLL);
    v13 = v14;
    if (v14)
    {
      v14[1] = v14 + 5;
      v14[2] = v12;
      memcpy(v14 + 5, __s1, v12);
    }

    *v13 = *a4;
    *a4 = v13;
  }

  v15 = v13[4];
  *(a1 + 16) = v13[3];
  v13[3] = a1;
  v13[4] = v15 + 1;
  v16 = &dword_29EE51678;
  v17 = 27;
  while (1)
  {
    result = strncasecmp(v11, *(v16 - 1), v5);
    if (!result)
    {
      break;
    }

    v16 += 4;
    if (!--v17)
    {
      return result;
    }
  }

  *(a1 + 128) = *v16;
  return result;
}

uint64_t ChannelDescription::IdentifyChannels(uint64_t a1, float32x4_t *a2)
{
  v2 = *a2;
  v2.i32[2] = a2->i32[2];
  v2.i32[3] = a2[1].i32[0];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v2, xmmword_296B8FB80)))) & 1) == 0 && a2[1].f32[1] == 1.0 && a2[1].f32[2] == 0.0 && fabsf((a2->f32[3] * 3.0) + -1.0) <= 0.001 && fabsf((a2[1].f32[3] * 3.0) + -1.0) <= 0.001)
  {
    v3 = *(a1 + 128) - 1;
    if (v3 <= 2)
    {
      *(a1 + 128) = dword_296B8FB94[v3];
    }
  }

  return 0;
}

void ChannelDescription::ParseChList(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, _DWORD *a8, uint64_t *a9)
{
  v10 = a7;
  v13 = a3;
  v15 = a9;
  *a9 = 0;
  v16 = *a7;
  if (*a7)
  {
    do
    {
      v17 = v16;
      v16 = *(v16 + 8);
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  if (a3 >= 2)
  {
    while (1)
    {
      v18 = (a2 + a1);
      v19 = strnlen((a2 + a1), v13 - 1);
      if (!v19)
      {
        return;
      }

      v27 = 0;
      v28 = v19 + 1;
      do
      {
        if (v18[v27] < 32)
        {
          return;
        }

        ++v27;
      }

      while (v19 != v27);
      v29 = v13 - v28 >= 0x10;
      v13 = v13 - v28 - 16;
      if (!v29)
      {
        break;
      }

      v48 = a6;
      v49 = v10;
      v50 = a8;
      v30 = v28 + a2;
      v31 = v28 + a2 + a1;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 12);
      if (*v31 > 2u || v33 == 0 || v34 == 0)
      {
        if (v32 < 3)
        {
          if (v33)
          {
            if (!v34)
            {
              if (GetFlagsOnceToken != -1)
              {
                [OS_axr_data debugDescription];
              }

              if (((kDefaultAXRLogFlags | a4) & 2) != 0)
              {
                v43 = "Error: y sampling rate for channel must be at least 1";
                goto LABEL_40;
              }
            }
          }

          else
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | a4) & 2) != 0)
            {
              v43 = "Error: x sampling rate for channel must be at least 1";
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (GetFlagsOnceToken != -1)
          {
            [OS_axr_data debugDescription];
          }

          if (((kDefaultAXRLogFlags | a4) & 2) != 0)
          {
            v43 = "Error: channel has unknown data type";
            goto LABEL_40;
          }
        }

LABEL_41:
        v42 = -6;
LABEL_43:
        *v15 = v42;
        return;
      }

      if (v33 >= 0xD0A7)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | a4) & 2) != 0)
        {
          AXRLogDebug("Error: x sampling rate for channel is ridiculously large at %d", v20, v21, v22, v23, v24, v25, v26, v33);
        }

        goto LABEL_41;
      }

      if (v34 >= 0xD0A7)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | a4) & 2) == 0)
        {
          goto LABEL_41;
        }

        v44 = v34;
        v43 = "Error: y sampling rate for channel is ridiculously large at %d";
LABEL_40:
        AXRLogDebug(v43, v20, v21, v22, v23, v24, v25, v26, v44);
        goto LABEL_41;
      }

      v45 = v19 + 1;
      v46 = a4;
      v47 = v15;
      v37 = *(v31 + 4);
      v38 = ChannelDescription::operator new(0x88uLL);
      if (!v38)
      {
        v42 = -5;
        goto LABEL_43;
      }

      v39 = v38;
      v40 = *v50;
      *v38 = a2;
      v38[6] = v40;
      v38[18] = v32;
      SamplingRate::SamplingRate((v38 + 20), v33);
      SamplingRate::SamplingRate((v39 + 104), v34);
      a2 = v30 + 16;
      *(v39 + 132) = v37 != 0;
      a6 = v48;
      ChannelDescription::ConfigureChannelType(v39, v18, v45, v48);
      v10 = v49;
      a8 = v50;
      if (*v49)
      {
        v41 = (v17 + 8);
      }

      else
      {
        v41 = v49;
      }

      *v41 = v39;
      ++*v50;
      v17 = v39;
      a4 = v46;
      v15 = v47;
      if (v13 <= 1)
      {
        return;
      }
    }

    v42 = -4;
    goto LABEL_43;
  }
}

char *ChannelDescription::GetChannelInfo@<X0>(ChannelDescription *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 18);
  v5 = *(this + 32);
  *a3 = v4;
  *(a3 + 4) = v5;
  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    v6 = 32;
  }

  v7 = *(this + 20);
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  *(a3 + 16) = *(this + 26);
  *(a3 + 20) = 0;
  *(a3 + 20) = *(this + 132);
  result = strncpy((a3 + 24), &a2[*this], 0x100uLL);
  *(a3 + 279) = 0;
  return result;
}

uint64_t ChannelDescription::CreateMipLevels(ChannelDescription *this, const void *a2, const Part *a3, unint64_t a4, axr_level_mode_t a5)
{
  if (*(this + 5))
  {
    return 0;
  }

  v6 = a5;
  v7 = a4;
  v9 = *(a3 + 156);
  v10 = HIDWORD(v9);
  LODWORD(v11) = (*(this + 12) + v9 * *(this + 21)) >> *(this + 22);
  HIDWORD(v11) = (*(this + 15) + HIDWORD(v9) * *(this + 27)) >> *(this + 28);
  *(this + 6) = v11;
  v12 = HIDWORD(a4);
  v45 = a5 & 0xF;
  if ((a5 & 0xF) != 0)
  {
    v32 = a5 & 0xF0;
    v33 = 63 - __clz(a4);
    if (!a4)
    {
      LODWORD(v33) = 0;
    }

    v34 = 63 - __clz(HIDWORD(a4));
    if (!HIDWORD(a4))
    {
      LODWORD(v34) = 0;
    }

    v35 = 64 - __clz(a4 - 1);
    if (a4 <= 1uLL)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    v37 = 64 - __clz(HIDWORD(a4) - 1);
    if (a4 >> 33)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v32 == 16;
    if (v32 == 16)
    {
      v40 = v36;
    }

    else
    {
      v40 = v33;
    }

    if (v39)
    {
      v41 = v38;
    }

    else
    {
      v41 = v34;
    }

    if (v40 + 1 <= (v41 + 1))
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = v40 + 1;
    }

    if (v45 == 1)
    {
      v43 = v42;
    }

    else
    {
      v43 = (v40 + 1);
    }

    if (v45 == 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = (v41 + 1);
    }

    v13 = v43 | (v44 << 32);
  }

  else
  {
    v13 = 0x100000001;
  }

  *(this + 28) = v13;
  result = malloc_type_calloc((v13 * HIDWORD(v13)), 8uLL, 0x2004093837F09uLL);
  *(this + 5) = result;
  if (!result)
  {
    return -5;
  }

  v14 = *(this + 8);
  if (v14)
  {
    v15 = 0;
    v16 = v6 >> 4;
    v17 = v7 - v16;
    v18 = v12 - v16;
    if (v9 <= 1)
    {
      LODWORD(v9) = 1;
    }

    v19 = v9 - 1;
    if (v10 <= 1)
    {
      LODWORD(v10) = 1;
    }

    v20 = v10 - 1;
    v21 = *(this + 7);
    while (!v21)
    {
LABEL_32:
      result = 0;
      if (++v15 >= v14)
      {
        return result;
      }
    }

    v22 = 0;
    while (1)
    {
      v23 = v45 == 2 ? v15 : v22;
      v24 = (v17 + (v16 << v22)) >> v22;
      v25 = v24 <= 1 ? 1 : v24;
      LODWORD(v26) = (v18 + (v16 << v23)) >> v23;
      v26 = v26 <= 1 ? 1 : v26;
      v27 = v19 + v25;
      v28 = __CFADD__(v19, v25) ? (v27 - 0xFFFFFFFF / v9 * v9) / v9 + 0xFFFFFFFF / v9 : v27 / v9;
      v29 = v20 + v26;
      v30 = v20 + v26 < v26 ? (v29 - 0xFFFFFFFF / v10 * v10) / v10 + 0xFFFFFFFF / v10 : v29 / v10;
      result = DecompressedLocations::CreateDecompressedLocations(result, v28 | (v30 << 32), v25 | (v26 << 32), ((*(this + 12) + *(this + 21) * v25) >> *(this + 22)) | (((*(this + 15) + *(this + 27) * v26) >> *(this + 28)) << 32));
      v21 = *(this + 7);
      v31 = v22 + v15 * v21;
      *(*(this + 5) + 8 * v31) = result;
      if (!*(*(this + 5) + 8 * v31))
      {
        return -5;
      }

      if (++v22 >= v21)
      {
        v14 = *(this + 8);
        goto LABEL_32;
      }
    }
  }

  return 0;
}

void *DecompressedLocations::CreateDecompressedLocations(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = (a3 >> 29) & 0x7FFFFFFF8;
  result = malloc_type_malloc(v8 * a2 + 8 * a2 + 24, 0x1000040504FFAC1uLL);
  if (result)
  {
    result[1] = a3;
    result[2] = a4;
    *result = a2;
    if (v7)
    {
      v10 = (v7 + 1) & 0x1FFFFFFFELL;
      v11 = vdupq_n_s64(v7 - 1);
      v12 = &result[v7 + 3];
      v13 = xmmword_296B8F100;
      v14 = result + 4;
      v15 = vdupq_n_s64(2uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (v16.i8[0])
        {
          *(v14 - 1) = v12;
        }

        if (v16.i8[4])
        {
          *v14 = v8 + v12;
        }

        v13 = vaddq_s64(v13, v15);
        v12 += (a3 >> 28) & 0xFFFFFFFF0;
        v14 += 2;
        v10 -= 2;
      }

      while (v10);
    }
  }

  return result;
}

void SamplingRate::SamplingRate(SamplingRate *this, unsigned int a2)
{
  v2 = a2 - 1;
  v3 = 64 - __clz(v2);
  if (a2 <= 1)
  {
    LODWORD(v3) = 0;
  }

  v4 = v3 + 31;
  *this = a2;
  *(this + 1) = (v2 + (1 << v4)) / a2;
  *(this + 2) = v4;
  *(this + 2) = ~(-1 << v4);
}

axr_error_t axr_introspect_data(const void *fileData, size_t fileSize, axr_flags_t flags)
{
  v8 = flags;
  v9 = flags & 0xF8;
  if ((flags & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    if (fileSize < 8)
    {
      return -4;
    }

    axr_introspect_data__Assert_file_exists_and_nonnull(fileData, fileSize);
    axr_introspect_data__Assert_file_header_is_as_big_as_claimed(fileData, fileSize);
    axr_introspect_data__Assert_file_data_is_as_big_as_claimed(fileData, fileSize);
    if (*fileData != 20000630)
    {
      return -2;
    }

    v20 = *(fileData + 1);
    if ((v20 & 0x800) != 0)
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) == 0)
      {
        return -3;
      }

      v21 = "This version of AppleEXR does not support deep tile or deep scanline images.";
    }

    else
    {
      if ((v20 & 0xFFFFE100) == 0 && *(fileData + 1) < 3u)
      {
        return 0;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) == 0)
      {
        return -3;
      }

      v21 = "File format too new.";
    }

    AXRLogDebug(v21, v13, v14, v15, v16, v17, v18, v19, v22);
    return -3;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogError("Invalid flag bit 0x%16llx passed to axr_is_recognizable_file.", fileSize, flags, v3, v4, v5, v6, v7, v9);
  }

  return -1;
}

void AXRData::~AXRData(AXRData *this)
{
  *this = &unk_2A1DE9318;
  v2 = *(this + 4);
  if (v2)
  {
    (*(v2 + 16))(v2, *(this + 1), *(this + 2));
    _Block_release(*(this + 4));
    *(this + 4) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 1);
      Part::~Part(v3);
      free(v5);
      v3 = v4;
    }

    while (v4);
  }
}

{
  AXRData::~AXRData(this);

  JUMPOUT(0x29C25E8F0);
}

void Part::Destroy(Part *this)
{
  Part::~Part(this);

  free(v1);
}

size_t AXRData::DebugDescription(AXRData *this, char *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v19 = *MEMORY[0x29EDCA608];
  axr_flags_get_name(buf, 0x2000uLL, *(v2 + 24));
  v8 = *(v7 + 8);
  v9 = v8[1];
  v10 = "YES";
  if ((v9 & 0x400) != 0)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if ((v9 & 0x800) != 0)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  if ((v9 & 0x1000) == 0)
  {
    v10 = "NO";
  }

  v13 = snprintf(v6, v4, "fileData:        %p\nfile size:       %lu bytes\ncreation flags:  %s\ndata destructor: %p\nfile version:    %u\nlong names:      %s\nnon-image parts: %s\nmultipart file:  %s\nreserved bits:   0x%8.8x  (should be 0)\npart count:      %lu\n", v8, *(v7 + 16), buf, *(v7 + 32), v8[1], v11, v12, v10, v9 & 0xFFFFE100, *(v7 + 80));
  if (v13 < v4)
  {
    if (*(v7 + 80))
    {
      v14 = 0;
      v15 = (v7 + 72);
      while (v4 > v13)
      {
        v16 = *v15;
        if (!*v15)
        {
          break;
        }

        v13 += snprintf(&v6[v13], v4 - v13, "\nPart %lu:\n", v14);
        if (v4 <= v13)
        {
          break;
        }

        v13 += Part::Print(v16, &v6[v13], v4 - v13, *(v7 + 8), 2uLL);
        v15 = (v16 + 8);
        if (++v14 >= *(v7 + 80))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      if (v4 > v13)
      {
        v13 += snprintf(&v6[v13], v4 - v13, "\n");
      }
    }
  }

  return v13;
}

double AXRData::GetHash(AXRData *this)
{
  v1 = veorq_s8(*(this + 56), *(this + 40));
  *&result = veorq_s8(vdupq_laneq_s64(v1, 1), v1).u64[0];
  return result;
}

void *AXRData::AXRData(void *a1, char *a2, unint64_t a3, axr_flags_t a4, void *aBlock)
{
  *a1 = &unk_2A1DE9318;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = 0;
  if (aBlock)
  {
    a1[4] = _Block_copy(aBlock);
  }

  v9 = 0;
  v20 = 8;
  v10 = (a1 + 9);
  while (1)
  {
    if (v20 >= a3)
    {
      goto LABEL_14;
    }

    if ((a2[5] & 0x10) != 0 && !*(v20 + a1[1]))
    {
      break;
    }

    v11 = Part::operator new(0x130uLL);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    v13 = Part::Init(v11, a2, a3, &v20, a4);
    if (v13)
    {
      v18 = v13;
      Part::Destroy(v12);
      goto LABEL_20;
    }

    v14 = (v9 + 8);
    if (!v9)
    {
      v14 = (a1 + 9);
    }

    *v14 = v12;
    ++a1[10];
    v9 = v12;
    if ((a2[5] & 0x10) == 0)
    {
      goto LABEL_14;
    }
  }

  ++v20;
LABEL_14:
  v15 = *v10;
  if (*v10)
  {
    while (1)
    {
      inited = Part::InitOffsets(v15, a2, a3, &v20, a4);
      if (inited)
      {
        break;
      }

      v15 = v15[1];
      if (!v15)
      {
        return a1;
      }
    }

    v18 = inited;
LABEL_20:
    exception = __cxa_allocate_exception(8uLL);
    *exception = v18;
  }

  return a1;
}

axr_error_t AXRData::ReadPixels(AXRData *this, axr_decoder *a2, _BYTE *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 10);
  v9 = *(this + 9);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 1;
    do
    {
      v9 = *(v9 + 1);
      if (v11 >= v8)
      {
        break;
      }

      ++v11;
    }

    while (v9);
  }

  if (!v9)
  {
    v13 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v13);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::ReadPixels(v9, a2, a3, a4, a5, a6, a7, a8);
}

void AXRData::GetReadPixelsInfo(AXRData *this@<X0>, axr_decoder *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a2 + 10);
  v10 = *(this + 9);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = 1;
    do
    {
      v10 = *(v10 + 8);
      if (v12 >= v9)
      {
        break;
      }

      ++v12;
    }

    while (v10);
  }

  if (!v10)
  {
    v13 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v13);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  Part::GetReadPixelsInfo(a2, a9);
}

uint64_t AXRData::ReadRGBAPixels(AXRData *this, axr_decoder *a2, void *a3, unint64_t a4, double a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a2 + 10);
  v10 = *(this + 9);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = 1;
    do
    {
      v10 = *(v10 + 1);
      if (v12 >= v9)
      {
        break;
      }

      ++v12;
    }

    while (v10);
  }

  if (!v10)
  {
    v14 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a6, a7, a8, a9, v14);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::ReadRGBAPixels(v10, a2, a3, a4, a5, a6);
}

void AXRData::GetReadRGBAPixelsInfo(AXRData *this@<X0>, axr_decoder *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *(a2 + 10);
  v11 = *(this + 9);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = 1;
    do
    {
      v11 = *(v11 + 8);
      if (v13 >= v10)
      {
        break;
      }

      ++v13;
    }

    while (v11);
  }

  if (!v11)
  {
    v14 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v14);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  Part::GetReadRGBAPixelsInfo(a2, a9);
}

unint64_t AXRData::ReadPlanes(AXRData *this, axr_decoder *a2, axr_pixel_data_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, axr_flags_t a11, axr_error_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v40 = *(a2 + 10);
  v41 = *(this + 9);
  if (v40)
  {
    v42 = v41 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = 1;
    do
    {
      v41 = *(v41 + 1);
      if (v43 >= v40)
      {
        break;
      }

      ++v43;
    }

    while (v41);
  }

  if (!v41)
  {
    v45 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a3, a4, a5, a6, a7, a8, v45);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  return Part::ReadPlanes(v41, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void AXRData::GetReadPlanesInfo(AXRData *this@<X0>, axr_decoder *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a2 + 10);
  v10 = *(this + 9);
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = 1;
    do
    {
      v10 = *(v10 + 8);
      if (v12 >= v9)
      {
        break;
      }

      ++v12;
    }

    while (v10);
  }

  if (!v10)
  {
    v13 = *(a2 + 10);
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      AXRLogError("Error: image index %lu out of range [0,%lu]", a2, a4, a3, a5, a6, a7, a8, v13);
      __break(1u);
LABEL_14:
      [OS_axr_data debugDescription];
    }
  }

  Part::GetReadPlanesInfo(a2, a4, a9);
}

unint64_t axr_data_get_part_count(unint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

unint64_t axr_data_get_channel_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v8 = *(fileData + 88);
    if (partIndex && v8)
    {
      v9 = 1;
      do
      {
        v8 = *(v8 + 8);
        if (v9 >= partIndex)
        {
          break;
        }

        ++v9;
      }

      while (v8);
    }

    if (!v8)
    {
      v10 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, v2, v3, v4, v5, v6, v7, v10);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return *(v8 + 32);
  }

  return fileData;
}

axr_channel_info_t *__cdecl axr_data_get_channel_info(axr_channel_info_t *__return_ptr retstr, axr_channel_info_t *fileData, unint64_t partIndex, unint64_t channelIndex, axr_channel_info_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    v9 = *&fileData->name[64];
    if (partIndex && v9)
    {
      v10 = 1;
      do
      {
        v9 = *(v9 + 1);
        if (v10 >= partIndex)
        {
          break;
        }

        ++v10;
      }

      while (v9);
    }

    if (!v9)
    {
      v15 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v14 = v15;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_channel_info_current")
      {
        AXRLogError(i, partIndex, channelIndex, *&version, v5, v6, v7, v8, v14);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    v11 = *fileData->name;
    v12 = *&fileData->name[16];

    return Part::GetChannelInfo(v9, v11, v12, channelIndex, v5, v6, v7, v8, retstr);
  }

  else
  {
    *&retstr->name[252] = 0;
    *&retstr->name[220] = 0u;
    *&retstr->name[204] = 0u;
    *&retstr->name[188] = 0u;
    *&retstr->name[172] = 0u;
    *&retstr->name[156] = 0u;
    *&retstr->name[140] = 0u;
    *&retstr->name[124] = 0u;
    *&retstr->name[108] = 0u;
    *&retstr->name[92] = 0u;
    *&retstr->name[76] = 0u;
    *&retstr->name[60] = 0u;
    *&retstr->name[44] = 0u;
    *&retstr->name[28] = 0u;
    *&retstr->name[12] = 0u;
    *&retstr->pLinear = 0u;
    *&retstr->channelType = 0u;
    *&retstr->name[236] = 0u;
    retstr->sampleType = -1;
  }

  return fileData;
}

axr_part_info_t *__cdecl axr_data_get_part_info(axr_part_info_t *__return_ptr retstr, axr_part_info_t *fileData, unint64_t partIndex, axr_part_info_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    v9 = *&fileData->chromaticities.y.blue;
    if (partIndex && v9)
    {
      v10 = 1;
      do
      {
        v9 = *(v9 + 1);
        if (v10 >= partIndex)
        {
          break;
        }

        ++v10;
      }

      while (v9);
    }

    if (!v9)
    {
      v14 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v13 = v14;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_part_info_current")
      {
        AXRLogError(i, partIndex, *&version, v4, v5, v6, v7, v8, v13);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    v11 = *&fileData->displayWindow.yMin;

    Part::GetImageInfo(v9, v11, retstr);
  }

  else
  {
    *&retstr->levelMode = 0;
    retstr->preview = 0u;
    *&retstr->name = 0u;
    retstr->chromaticities.x = 0u;
    retstr->chromaticities.y = 0u;
    *&retstr->tileSize.width = 0u;
    *&retstr->pixelAspectRatio = 0u;
    retstr->dataWindow = 0u;
    retstr->displayWindow = 0u;
  }

  return fileData;
}

unint64_t axr_data_get_property_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v8 = *(fileData + 88);
    if (partIndex && v8)
    {
      v9 = 1;
      do
      {
        v8 = *(v8 + 8);
        if (v9 >= partIndex)
        {
          break;
        }

        ++v9;
      }

      while (v8);
    }

    if (!v8)
    {
      v10 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, v2, v3, v4, v5, v6, v7, v10);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return *(v8 + 248);
  }

  return fileData;
}

axr_property_t *__cdecl axr_data_get_property(axr_property_t *__return_ptr retstr, axr_property_t *fileData, unint64_t partIndex, unint64_t propertyIndex, axr_property_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    type = fileData[2].type;
    if (partIndex && type)
    {
      v10 = 1;
      do
      {
        type = *(type + 1);
        if (v10 >= partIndex)
        {
          break;
        }

        ++v10;
      }

      while (type);
    }

    if (!type)
    {
      v15 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v14 = v15;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_property_current")
      {
        AXRLogError(i, partIndex, propertyIndex, *&version, v5, v6, v7, v8, v14);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    value = fileData->value;
    name = fileData[1].name;

    return Part::GetImageProperty(type, value, name, propertyIndex, v5, v6, v7, v8, retstr);
  }

  else
  {
    retstr->flags = axr_property_flags_unhandled;
    *&retstr->name = 0u;
    *&retstr->size = 0u;
  }

  return fileData;
}

unint64_t axr_data_get_layer_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v8 = *(fileData + 88);
    if (partIndex && v8)
    {
      v9 = 1;
      do
      {
        v8 = *(v8 + 8);
        if (v9 >= partIndex)
        {
          break;
        }

        ++v9;
      }

      while (v8);
    }

    if (!v8)
    {
      v10 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, v2, v3, v4, v5, v6, v7, v10);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return *(v8 + 152);
  }

  return fileData;
}

axr_layer_info_t *__cdecl axr_data_get_layer_info(axr_layer_info_t *__return_ptr retstr, axr_layer_info_t *fileData, unint64_t partIndex, unint64_t layerIndex, axr_layer_info_struct_version_t version)
{
  if (version >= 2)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (fileData)
  {
    channelCount = fileData[3].channelCount;
    if (partIndex && channelCount)
    {
      v10 = 1;
      do
      {
        channelCount = *(channelCount + 8);
        if (v10 >= partIndex)
        {
          break;
        }

        ++v10;
      }

      while (channelCount);
    }

    if (!channelCount)
    {
      v13 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      v12 = v13;
      for (i = "Error: image index %lu out of range [0,%lu]"; ; i = "Error: version must be axr_layer_info_current")
      {
        AXRLogError(i, partIndex, layerIndex, *&version, v5, v6, v7, v8, v12);
        __break(1u);
LABEL_19:
        [OS_axr_data debugDescription];
LABEL_14:
        ;
      }
    }

    return Part::GetLayerInfo(channelCount, layerIndex, retstr);
  }

  else
  {
    retstr->name = 0;
    retstr->channels = 0;
    retstr->channelCount = 0;
  }

  return fileData;
}

unint64_t axr_data_get_level_count(unint64_t fileData, unint64_t partIndex)
{
  if (fileData)
  {
    v8 = *(fileData + 88);
    if (partIndex && v8)
    {
      v9 = 1;
      do
      {
        v8 = *(v8 + 8);
        if (v9 >= partIndex)
        {
          break;
        }

        ++v9;
      }

      while (v8);
    }

    if (!v8)
    {
      v10 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_12;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, v2, v3, v4, v5, v6, v7, v10);
        __break(1u);
LABEL_12:
        [OS_axr_data debugDescription];
      }
    }

    return (*(v8 + 288) * *(v8 + 292));
  }

  return fileData;
}

axr_size_t axr_data_get_level_size(axr_data_t fileData, unint64_t partIndex, unint64_t levelIndex)
{
  if (fileData)
  {
    isa = fileData[11].isa;
    if (partIndex && isa)
    {
      v9 = 1;
      do
      {
        isa = *(isa + 1);
        if (v9 >= partIndex)
        {
          break;
        }

        ++v9;
      }

      while (isa);
    }

    if (!isa)
    {
      v11 = partIndex;
      if (GetFlagsOnceToken != -1)
      {
        goto LABEL_14;
      }

      while (1)
      {
        AXRLogError("Error: image index %lu out of range [0,%lu]", partIndex, levelIndex, v3, v4, v5, v6, v7, v11);
        __break(1u);
LABEL_14:
        [OS_axr_data debugDescription];
      }
    }

    v10 = fileData[5].isa;

    return Part::GetImageSize(isa, levelIndex, v10, v3, v4, v5, v6, v7);
  }

  return fileData;
}

axr_error_t axr_decoder_read_pixels(axr_decoder_t decoder, void *destination, unint64_t destinationRowBytes, axr_flags_t flags)
{
  v8 = flags;
  isa = decoder[4].isa;
  if ((isa - 1) < 2 || isa == 4)
  {
    v12 = (decoder[2].isa + 16);

    return AXRData::ReadPixels(v12, decoder, destination, destinationRowBytes, flags, v5, v6, v7);
  }

  else
  {
    if (isa)
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) != 0)
      {
        AXRLogError("decoder %p must request either 1, 2 or 4 channels to be decoded for axr_decoder_read_pixels.", destination, destinationRowBytes, flags, v4, v5, v6, v7, decoder);
      }
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) != 0)
      {
        AXRLogError("decoder %p requests 0 channels to be decoded", destination, destinationRowBytes, flags, v4, v5, v6, v7, decoder);
      }
    }

    return -1;
  }
}

axr_decoder_read_info_t *__cdecl axr_decoder_get_read_pixels_info(axr_decoder_read_info_t *__return_ptr retstr, axr_decoder_read_info_t *decoder, axr_flags_t flags, axr_decoder_read_info_struct_version_t version)
{
  if (version == axr_decoder_read_info_current)
  {
    v11 = decoder;
    v12 = (*&decoder->bitsPerChannel + 16);

    AXRData::GetReadPixelsInfo(v12, v11, flags, v4, v5, v6, v7, v8, retstr);
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("%s: struct version (%d) invalid", flags, *&version, v4, v5, v6, v7, v8, "axr_decoder_get_read_pixels_info");
    }

    *&retstr->size.width = 0u;
    *&retstr->bitsPerChannel = 0u;
  }

  return decoder;
}

axr_error_t axr_decoder_read_rgba_pixels(axr_decoder_t decoder, void *destination, unint64_t destinationRowBytes, double alphaVal, axr_flags_t flags)
{
  v9 = flags;
  isa = decoder[4].isa;
  if (!isa)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v9) & 2) != 0)
    {
      AXRLogError("decoder %p requests 0 channels to be decoded", destination, destinationRowBytes, flags, v5, v6, v7, v8, decoder);
    }

    return -1;
  }

  if (isa >= 5)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v9) & 2) != 0)
    {
      AXRLogError("decoder %p must request 1-4 channels to be used for axr_decoder_read_rgba_pixels.", destination, destinationRowBytes, flags, v5, v6, v7, v8, decoder);
    }

    return -1;
  }

  v13 = (decoder[2].isa + 16);

  return AXRData::ReadRGBAPixels(v13, decoder, destination, destinationRowBytes, alphaVal, flags, v6, v7, v8);
}

axr_decoder_read_info_t *__cdecl axr_decoder_get_read_rgba_pixels_info(axr_decoder_read_info_t *__return_ptr retstr, axr_decoder_read_info_t *decoder, double alphaVal, axr_flags_t flags, axr_decoder_read_info_struct_version_t version)
{
  if (version == axr_decoder_read_info_current)
  {
    v12 = decoder;
    v13 = (*&decoder->bitsPerChannel + 16);

    AXRData::GetReadRGBAPixelsInfo(v13, v12, flags, v5, v6, v7, v8, v9, retstr);
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("%s: struct version (%d) invalid", flags, *&version, v5, v6, v7, v8, v9, "axr_decoder_get_read_rgba_pixels_info");
    }

    *&retstr->size.width = 0u;
    *&retstr->bitsPerChannel = 0u;
  }

  return decoder;
}

axr_error_t axr_decoder_read_planes(axr_decoder_t decoder, axr_pixel_data_t *destinationPlaneList, axr_flags_t flags, axr_pixel_data_struct_version_t structVersion)
{
  if (structVersion)
  {
    v9 = structVersion;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("struct version (%d) invalid", destinationPlaneList, flags, *&structVersion, v4, v5, v6, v7, v9);
    }

    return -1;
  }

  else
  {
    v13 = (decoder[2].isa + 16);

    return AXRData::ReadPlanes(v13, decoder, destinationPlaneList, flags, v4, v5, v6, v7, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }
}

axr_decoder_read_info_t *__cdecl axr_decoder_get_read_planes_info(axr_decoder_read_info_t *__return_ptr retstr, axr_decoder_read_info_t *decoder, unint64_t planeIndex, axr_flags_t flags, axr_decoder_read_info_struct_version_t version)
{
  if (version == axr_decoder_read_info_current)
  {
    v12 = decoder;
    v13 = (*&decoder->bitsPerChannel + 16);

    AXRData::GetReadPlanesInfo(v13, v12, flags, planeIndex, v5, v6, v7, v8, retstr);
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("%s: struct version (%d) invalid", planeIndex, flags, *&version, v5, v6, v7, v8, "axr_decoder_get_read_planes_info");
    }

    *&retstr->size.width = 0u;
    *&retstr->bitsPerChannel = 0u;
  }

  return decoder;
}

axr_size_t axr_part_get_rip_level_counts(axr_part_t part)
{
  v1 = part + 2;
  if (!part)
  {
    v1 = 0;
  }

  return *(&v1[27].isa + 4);
}

void axr_part_set_chromaticities(axr_part_t part, int32_t cgColorSpaceModel, float whiteLuminance, float *x, float *y)
{
  if (part)
  {
    v13 = part + 2;
  }

  else
  {
    v13 = 0;
  }

  isa = v13[1].isa;
  if (whiteLuminance >= 0.0)
  {
    v15 = whiteLuminance;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    v15 = 1.0;
    if (((kDefaultAXRLogFlags | isa) & 2) != 0)
    {
      v19 = whiteLuminance;
      AXRLogError("axr_part_set_chromaticities: invalid white luminance: %f", *&cgColorSpaceModel, x, y, v5, v6, v7, v8, SLOBYTE(v19));
    }
  }

  v16 = xmmword_296B8FBC0;
  if (!cgColorSpaceModel)
  {
    v17 = xmmword_296B8FBB0;
    goto LABEL_20;
  }

  if (cgColorSpaceModel == 7)
  {
    v17 = xmmword_296B8FBD0;
    v16 = xmmword_296B8FBE0;
    goto LABEL_20;
  }

  if (cgColorSpaceModel != 1)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | isa) & 2) != 0)
      {
        AXRLogError("axr_part_set_chromaticities: invalid colorspace model %d", *&cgColorSpaceModel, x, y, v5, v6, v7, v8, cgColorSpaceModel);
      }

      __break(1u);
LABEL_27:
      [OS_axr_data debugDescription];
    }
  }

  if (!x)
  {
    v17 = xmmword_296B8FBB0;
    if (!y)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v17 = *x;
  if (y)
  {
LABEL_19:
    v16 = *y;
  }

LABEL_20:
  *&v13[14].isa = v17;
  *&v13[16].isa = v16;
  HIDWORD(v13[18].isa) = cgColorSpaceModel;
  *&v13[18].isa = v15;
  for (i = v13[26].isa; i; i = *i)
  {
    EncoderLayer::SetColorSpaceModel(i, SHIDWORD(v13[18].isa));
  }
}

void axr_part_set_preview(axr_part_t part, const uint8_t *data, uint32_t width, uint32_t height, size_t rowBytes, uintptr_t userData, axr_user_data_destructor_t dataDestructor)
{
  if (part)
  {
    v13 = part + 2;
  }

  else
  {
    v13 = 0;
  }

  isa = v13[22].isa;
  if (isa)
  {
    isa(v13[19].isa, v13[21].isa);
  }

  v13[19].isa = data;
  v13[20].isa = rowBytes;
  v13[21].isa = userData;
  v13[22].isa = dataDestructor;
  LODWORD(v13[23].isa) = width;
  HIDWORD(v13[23].isa) = height;
}

axr_error_t axr_part_append_attribute(axr_part_t part, const char *attributeName, const char *attributeType, size_t attributeSize, const uint8_t *attributeBytes, uintptr_t userData, axr_user_data_destructor_t dataDestructor)
{
  if (part)
  {
    v7 = &part[2];
  }

  else
  {
    v7 = 0;
  }

  return EncoderPart::AppendAttribute(v7, attributeName, attributeType, attributeSize, attributeBytes, userData, dataDestructor);
}

uint64_t EncoderPart::AppendAttribute(EncoderPart *this, char *__s, const char *a3, const char *a4, const unsigned __int8 *a5, const unsigned __int8 *a6, void (*a7)(const void *, unint64_t))
{
  v14 = strlen(__s);
  v15 = strlen(a3);
  v23 = v15;
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    if (v14 >= 0x100)
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v24) & 2) != 0)
      {
        AXRLogError("axr_part_append_attribute error:  The name %s must be less than 255 characters.", v16, v17, v18, v19, v20, v21, v22, __s);
      }

      return -5;
    }

    if (v14)
    {
      if (v15 >= 0x100)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | v24) & 2) != 0)
        {
          AXRLogError("axr_part_append_attribute error:  The type %s must be less than 255 characters.", v16, v17, v18, v19, v20, v21, v22, a3);
        }

        return -5;
      }

      if (v15)
      {
        v40 = *(this + 1);
        for (i = 0; i != 16; ++i)
        {
          if (!strcmp(__s, off_29EE51820[i]))
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | v40) & 2) != 0)
            {
              AXRLogError("axr_part_append_attribute error:  The name %s is already set as a standard part of axr_encoder_append_part() and may not be used again.", v27, v28, v29, v30, v31, v32, v33, __s);
            }

            return -9;
          }
        }

        if (!strcmp(a3, "chromaticities") || !strcmp(__s, "whiteLuminance"))
        {
          if (GetFlagsOnceToken != -1)
          {
            [OS_axr_data debugDescription];
          }

          if (((kDefaultAXRLogFlags | v40) & 2) != 0)
          {
            v25 = "axr_part_append_attribute error:  Use axr_part_set_chromaticities() to set chromaticities and luminance.";
            goto LABEL_44;
          }
        }

        else
        {
          if (strcmp(a3, "preview"))
          {
            goto LABEL_24;
          }

          if (GetFlagsOnceToken != -1)
          {
            [OS_axr_data debugDescription];
          }

          if (((kDefaultAXRLogFlags | v40) & 2) != 0)
          {
            v25 = "axr_part_append_attribute error:  Use axr_part_set_preview() to add a preview image.";
            goto LABEL_44;
          }
        }

        return -9;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v24) & 2) == 0)
      {
        return -9;
      }

      v25 = "axr_part_append_attribute error:  The attribute must have a type name.";
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v24) & 2) == 0)
      {
        return -9;
      }

      v25 = "axr_part_append_attribute error:  The attribute must have a name.";
    }

LABEL_44:
    AXRLogError(v25, v16, v17, v18, v19, v20, v21, v22, v39);
    return -9;
  }

LABEL_24:
  AttributeListNode = AttributeListNode::CreateAttributeListNode(__s, a3, a4, a5, a6, a7, v21);
  if (!AttributeListNode)
  {
    return -5;
  }

  v35 = AttributeListNode;
  result = 0;
  if (v14 <= v23)
  {
    v37 = v23;
  }

  else
  {
    v37 = v14;
  }

  v38 = *(this + 25);
  *v35 = *(this + 24);
  if (v38 > v37)
  {
    v37 = v38;
  }

  *(this + 24) = v35;
  *(this + 25) = v37;
  return result;
}

void *__cdecl axr_part_create_colorspace(axr_part_t part, axr_flags_t flags, void *options)
{
  if (part)
  {
    v6 = &part[2];
  }

  else
  {
    v6 = 0;
  }

  return EncoderPart::CreateColorSpace(v6, flags, options, 0, v3, v4, v5);
}

uint64_t EncoderPart::CreateColorSpace(EncoderPart *this, axr_flags_t a2, const __CFDictionary *a3, int a4, double a5, double a6, __n128 a7)
{
  v7 = *(this + 37);
  if (v7 > 7 || (v7 - 2) < 5)
  {
    return 0;
  }

  v9 = *(this + 7);
  v10 = *(this + 8);
  a7.n128_u32[0] = *(this + 36);
  v11 = vandq_s8(vceqq_f32(v10, xmmword_296B8FBC0), vceqq_f32(v9, xmmword_296B8FBB0));
  v11.i32[0] = vminvq_u32(v11);
  return AXRCreateColorSpace(v9, v10, a7, v11, v11.i32[0] >> 31, EncoderPart::CreateColorSpace(axr_flags_t,__CFDictionary const*,BOOL)::kChannelTypeMask[v7], a3, a2, a4);
}

void axr_part_append_channels(axr_part_t part, const char *layerName, axr_type_t channelType, uint32_t xSampling, uint32_t ySampling, BOOL perceptuallyLinear, const axr_channel_type_t *channelList, const char **channelNames, unint64_t channelCount, axr_data_provider_read_t readFunc, axr_data_provider_release_t releaseFunc, uintptr_t userInfo)
{
  if (part)
  {
    v12 = &part[2];
  }

  else
  {
    v12 = 0;
  }

  EncoderPart::AppendChannels(v12, layerName, *&channelType, xSampling, *&ySampling, perceptuallyLinear, channelList, channelNames, channelCount, *&readFunc, userInfo);
}

void EncoderPart::AppendChannels(EncoderPart *this, EncoderLayer *a2, const char *a3, unsigned int a4, uint64_t a5, uint64_t a6, const axr_channel_type_t *a7, axr_channel_type_t *a8, char **a9, __int128 a10, unint64_t a11)
{
  v13 = *(&a10 + 1);
  v14 = a9;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = &unk_296B90CDB;
  }

  if (!a9)
  {
    goto LABEL_44;
  }

  v16 = *(this + 1);
  if (a4 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a4;
  }

  if (a5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a5;
  }

  if ((v16 & 1) == 0)
  {
    if (a3 >= 3)
    {
      if (GetFlagsOnceToken != -1)
      {
        v24 = a3;
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
        a3 = v24;
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v25 = a3;
      v19 = "axr_part_append_channels error: channel type %u out of bounds. Operation ignored.";
      goto LABEL_42;
    }

    if (a9 > 4 || (v20 = vcnt_s8(a9), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] >= 2uLL))
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
        v14 = a9;
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v25 = v14;
      v19 = "axr_part_append_channels error: channels (%lu) must be 1, 2 or 4. Operation ignored.";
    }

    else if (a7)
    {
      if (a10)
      {
        goto LABEL_21;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v19 = "axr_part_append_channels error: readFunc may not be NULL. Operation ignored.";
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
        v13 = *(&a10 + 1);
      }

      if (((kDefaultAXRLogFlags | v16) & 2) == 0)
      {
        goto LABEL_44;
      }

      v19 = "axr_part_append_channels error: channel list may not be NULL. Operation ignored.";
    }

LABEL_42:
    v27 = v13;
    goto LABEL_43;
  }

LABEL_21:
  LODWORD(v26) = *(this + 37);
  EncoderLayer::CreateEncoderLayer(v15, a3, v17, v18, a6, a7, a8, a9, a10, v26, a11, v16, *(&a10 + 1));
  if (v21)
  {
    v22 = *(this + 26);
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
      *v23 = v21;
    }

    else
    {
      *(this + 26) = v21;
    }

    return;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  v13 = v27;
  if (((kDefaultAXRLogFlags | v16) & 2) != 0)
  {
    v19 = "axr_part_append_channels error: Layer operation failed to allocate. Memory low. Operation ignored.";
LABEL_43:
    AXRLogError(v19, a2, a3, v18, a5, a6, a7, v14, v25);
    v13 = v27;
  }

LABEL_44:
  if (v13)
  {

    v13(a11);
  }
}

axr_size_t axr_part_get_tile_size(axr_part_t part)
{
  v1 = &part[2];
  if (!part)
  {
    v1 = 0;
  }

  return v1[11];
}

char *AttributeListNode::CreateAttributeListNode(AttributeListNode *this, const char *a2, const char *a3, uint64_t a4, const unsigned __int8 *a5, uint64_t a6, void (*a7)(const void *, unint64_t))
{
  v13 = strlen(this);
  v14 = strlen(a2);
  v15 = malloc_type_malloc((v13 + v14 + 81) & 0xFFFFFFFFFFFFFFF0, 0x452D08BBuLL);
  v16 = v15;
  if (v15)
  {
    *(v15 + 4) = a3;
    *(v15 + 5) = a4;
    *(v15 + 6) = a5;
    *(v15 + 7) = a6;
    v17 = v15 + 64;
    *v15 = 0;
    *(v15 + 1) = v15 + 64;
    v18 = stpcpy(v15 + 64, this) + 1;
    *(v16 + 2) = v18;
    *(v16 + 3) = stpcpy(v18, a2) - v17;
  }

  return v16;
}

uint64_t EncoderPart::CreateEncoderPart(EncoderPart *this, const char *a2, const char *a3, uint64_t a4, axr_box2i a5, axr_box2i a6, float a7, float a8, float a9, float a10, float a11, axr_line_order_t a12, unsigned int a13, unsigned int a14, axr_level_mode_t a15, axr_flags_t a16)
{
  yMin = a6.yMin;
  v17 = a4;
  v18 = a3;
  v24 = a13;
  if (SHIDWORD(a4) >= a4)
  {
    v26 = (HIDWORD(a4) - a4 + 1);
  }

  else
  {
    v26 = 0;
  }

  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = &unk_296B90CDB;
  }

  if (a3 <= 7 && ((1 << a3) & 0xF6) != 0)
  {
    if (a13 <= 0x10)
    {
      v24 = 16;
    }

    if ((a14 & 0xF) == 0)
    {
      v24 = 16;
      a12 = v26;
    }

    v18 = 3;
    goto LABEL_14;
  }

  if (a3 <= 7)
  {
LABEL_14:
    v28 = 0;
    v29 = GetDefaultCompressionMethodTileSize(axr_compression_t)::kCompressionMethodTileSizes[v18];
    goto LABEL_15;
  }

  v29 = 0;
  v28 = 1;
LABEL_15:
  v30 = a14 & 0xF0;
  if (v29 == -1)
  {
    v31 = v26;
  }

  else
  {
    v31 = v29;
  }

  v32 = HIDWORD(v29);
  if (a12)
  {
    v31 = a12;
  }

  if (v24)
  {
    v33 = v24;
  }

  else
  {
    v33 = v32;
  }

  v35 = (a14 & 0xF) != 0 || v33 != v32;
  if (a16)
  {
    goto LABEL_78;
  }

  if (!this)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) == 0)
    {
      return 0;
    }

    v36 = "axr_encoder_append_part: partName may not be NULL";
    goto LABEL_56;
  }

  if (v28)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: compression mode %u invalid", a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, v18);
    }

    return 0;
  }

  if (SHIDWORD(a4) < a4 || a5.xMax < a5.xMin)
  {
    if (GetFlagsOnceToken == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_109;
  }

  if (a5.yMin > a5.yMax || a6.xMin > a6.xMax)
  {
    if (GetFlagsOnceToken == -1)
    {
LABEL_54:
      if (((kDefaultAXRLogFlags | a16) & 2) == 0)
      {
        return 0;
      }

      v59 = v17;
      v36 = "axr_encoder_append_part: dataWindow {x:[%d,%d],y:[%d,%d]} invalid";
LABEL_56:
      AXRLogError(v36, a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, v59);
      return 0;
    }

LABEL_109:
    [OS_axr_data debugDescription];
    goto LABEL_54;
  }

  if (a6.yMin >= 3u)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: lineOrder %u invalid", a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, yMin);
    }

    return 0;
  }

  if (a7 < 0.0)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      v60 = a7;
      AXRLogError("axr_encoder_append_part: pixel aspect ratio %f invalid", a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, SLOBYTE(v60));
    }

    return 0;
  }

  if ((a14 & 0xFFFFFF00) != 0)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: level mode contains unhandled bits %x", a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, 0);
    }

    return 0;
  }

  if ((a14 & 0xF) >= 3)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: illegal level format %8.8x", a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, a14 & 0xF);
    }

    return 0;
  }

  if (v30 >= 0x11)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
      LOBYTE(v30) = a14 & 0xF0;
    }

    if (((kDefaultAXRLogFlags | a16) & 2) != 0)
    {
      AXRLogError("axr_encoder_append_part: illegal level rounding mode %8.8x", a2, a3, a4, *&a5.xMin, *&a5.yMin, *&a6.xMin, *&a6.yMin, v30);
    }

    return 0;
  }

LABEL_78:
  v62 = v31;
  v64 = v35;
  v61 = v26;
  v65 = *&a5.yMin;
  v66 = *&a6.xMin;
  v67 = a6.yMin;
  v68 = a14 & 0xF;
  xMax = a5.xMax;
  v39 = *&a5.xMin;
  v41 = v27;
  v42 = strnlen(this, 0xFFuLL) + 1;
  v43 = strnlen(v41, 0xFFuLL);
  objc_opt_class();
  v44 = _os_object_alloc();
  v37 = v44;
  if (v44)
  {
    v45 = v43 + 1;
    *(v44 + 24) = a16;
    *(v44 + 32) = v44 + 272;
    strncpy((v44 + 272), v41, v45);
    v46 = (v45 + *(v37 + 32));
    *(v37 + 40) = v46;
    strncpy(v46, this, v42);
    *(v37 + 48) = v18;
    *(v37 + 52) = a4;
    *(v37 + 60) = v39;
    *(v37 + 68) = v65;
    *(v37 + 76) = v66;
    *(v37 + 84) = v67;
    *(v37 + 88) = a7;
    *(v37 + 92) = a8;
    *(v37 + 96) = a9;
    *(v37 + 100) = a10;
    *(v37 + 104) = v62;
    *(v37 + 108) = v33;
    *(v37 + 112) = a14;
    *(v37 + 116) = a11;
    *(v37 + 128) = xmmword_296B8FBB0;
    *(v37 + 144) = xmmword_296B8FBC0;
    *(v37 + 160) = 0x13F800000;
    *(v37 + 168) = 0;
    v47 = (xMax - v39 + 1);
    if (xMax < v39)
    {
      v47 = 0;
    }

    *(v37 + 200) = 0u;
    *(v37 + 184) = 0u;
    if ((a14 & 0xF) != 0)
    {
      v51 = 63 - __clz(v61);
      if (!v61)
      {
        LODWORD(v51) = 0;
      }

      v52 = 63 - __clz(v47);
      if (!v47)
      {
        LODWORD(v52) = 0;
      }

      v53 = 64 - __clz(v61 - 1);
      if (v61 <= 1)
      {
        LODWORD(v53) = 0;
      }

      v54 = 64 - __clz(v47 - 1);
      if (v47 <= 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = v54;
      }

      if ((a14 & 0xF0) == 0x10)
      {
        LODWORD(v51) = v53;
      }

      else
      {
        v55 = v52;
      }

      if (v51 + 1 <= (v55 + 1))
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = v51 + 1;
      }

      if (v68 == 1)
      {
        v57 = v56;
      }

      else
      {
        v57 = (v51 + 1);
      }

      if (v68 == 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = (v55 + 1);
      }

      v48 = v57 | (v58 << 32);
    }

    else
    {
      v48 = 0x100000001;
    }

    *(v37 + 236) = v48;
    *(v37 + 232) = HIDWORD(v48) * v48;
    v49 = "tiledimage";
    if (!v64)
    {
      v49 = "scanlineimage";
    }

    *(v37 + 248) = v49;
  }

  return v37;
}

unint64_t EncoderPart::Print(EncoderPart *this, char *__str, size_t __size)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = snprintf(__str, __size, "\tpart name:            %s\n", *(this + 3));
  v7 = v6;
  if (__size > v6)
  {
    v7 = v6 + snprintf(&__str[v6], __size - v6, "\tview name:            %s\n", *(this + 2));
    if (__size > v7)
    {
      name = axr_compression_get_name(*(this + 8));
      v7 += snprintf(&__str[v7], __size - v7, "\tcompression:          %s\n", name);
      if (__size > v7)
      {
        v7 += snprintf(&__str[v7], __size - v7, "\ttype:                 %s\n", *(this + 29));
        if (__size > v7)
        {
          v7 += snprintf(&__str[v7], __size - v7, "\tdata window:          x:[%d, %d], y:[%d, %d]\n", *(this + 9), *(this + 10), *(this + 11), *(this + 12));
          if (__size > v7)
          {
            v7 += snprintf(&__str[v7], __size - v7, "\tdisplay window:       x:[%d, %d], y:[%d, %d]\n", *(this + 13), *(this + 14), *(this + 15), *(this + 16));
            if (__size > v7)
            {
              v9 = axr_line_order_get_name(*(this + 17));
              v7 += snprintf(&__str[v7], __size - v7, "\tline order:           %s\n", v9);
              if (__size > v7)
              {
                v7 += snprintf(&__str[v7], __size - v7, "\tpixel aspect ratio:   %f\n", *(this + 18));
                if (__size > v7)
                {
                  v7 += snprintf(&__str[v7], __size - v7, "\tscreen window center: {%f, %f}\n", *(this + 19), *(this + 20));
                  if (__size > v7)
                  {
                    v7 += snprintf(&__str[v7], __size - v7, "\tscreen window width:  {%f, %f}\n", *(this + 19), *(this + 20));
                    if (__size > v7)
                    {
                      v7 += snprintf(&__str[v7], __size - v7, "\ttile size:            {w:%u, h:%u}\n", *(this + 22), *(this + 23));
                      if (__size > v7)
                      {
                        v10 = axr_level_mode_get_name(*(this + 24));
                        v7 += snprintf(&__str[v7], __size - v7, "\tlevel mode:           %s\n", v10);
                        if (__size > v7)
                        {
                          v11 = *(this + 24);
                          if ((v11 & 0xF) != 0)
                          {
                            v7 += snprintf(&__str[v7], __size - v7, "\tlevel count:          %u\n", *(this + 54));
                            if (v7 >= __size)
                            {
                              return v7;
                            }

                            v11 = *(this + 24);
                          }

                          if ((v11 & 0xF) != 2 || (v7 += snprintf(&__str[v7], __size - v7, "\trip levels:           x: %u, y: %u\n", *(this + 55), *(this + 56)), v7 < __size))
                          {
                            v12 = *(this + 26);
                            if (v12)
                            {
                              for (i = 0; i < 0x800; i += v14)
                              {
                                v14 = EncoderLayer::PrintChannels(v12, &v16[i], 2048 - i, *(this + 37));
                                v12 = *v12;
                                if (!v12)
                                {
                                  break;
                                }
                              }
                            }

                            else
                            {
                              strcpy(v16, "<no channels>");
                            }

                            v7 += snprintf(&__str[v7], __size - v7, "\tchannels:               %s\n", v16);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t EncoderPart::EncodeChannelList(EncoderPart *this, EncoderStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x29EDCA608];
  v9 = *(this + 26);
  if (v9)
  {
    v11 = 1;
    do
    {
      v12 = *(v9 + 2);
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v14 = *(v9 + 3);
          EncodedNameForChannel = EncoderLayer::GetEncodedNameForChannel(v9, i, v9[17]);
          snprintf(__str, 0x100uLL, "%s%s", v14, EncodedNameForChannel);
          v11 += strlen(__str) + 17;
        }
      }

      v9 = *v9;
    }

    while (v9);
    v16 = EncoderStream::GetBytes<char>(a2, (v11 + 20));
    if (v16)
    {
      v17 = stpcpy(v16, "channels");
      v18 = stpcpy(v17 + 1, "chlist");
      *(v18 + 1) = v11;
      v19 = v18 + 5;
      for (j = *(this + 26); j; j = *j)
      {
        v21 = j[2];
        if (v21)
        {
          for (k = 0; k != v21; ++k)
          {
            v23 = 0;
            v24 = (j[1] + 12);
            while (1)
            {
              v25 = *v24;
              v24 += 4;
              if (k == v25)
              {
                break;
              }

              if (v21 == ++v23)
              {
                return -13;
              }
            }

            v26 = j[3];
            v27 = EncoderLayer::GetEncodedNameForChannel(j, v23, *(j + 17));
            snprintf(__str, 0x100uLL, "%s%s", v26, v27);
            v28 = stpcpy(v19, __str);
            v29 = *(j + 60);
            *(v28 + 1) = *(j + 14) | (*(j + 72) << 32);
            *(v28 + 9) = v29;
            v19 = v28 + 17;
          }
        }
      }

      result = 0;
      *v19 = 0;
    }

    else
    {
      return -5;
    }
  }

  else
  {
    v30 = a3;
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | v30) & 2) != 0)
    {
      AXRLogError("axr_encoder_compress:  part %p has no channels", a2, a3, a4, a5, a6, a7, a8, this);
    }

    return -11;
  }

  return result;
}

char *EncoderStream::GetBytes<char>(void *a1, EncoderBuffer *a2)
{
  v4 = a1[8];
  if (v4 && (v6 = *(v4 + 24), v5 = *(v4 + 32), v7 = a2 + v5, a2 + v5 <= v6) && (v8 = v5 + v4, *(v4 + 32) = v7, v9 = (v8 - v6), v8 != v6))
  {
    a1[7] += a2;
  }

  else
  {
    if (a1[6] <= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = a1[6];
    }

    EncoderBuffer::GetEncoderBuffer(v10);
    if (v11 && (v12 = a1[7], v11[2] = a1[8], a1[7] = a2 + v12, a1[8] = v11, v14 = v11[3], v13 = v11[4], v15 = a2 + v13, a2 + v13 <= v14))
    {
      v9 = v11 + v13 - v14;
      v11[4] = v15;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t EncoderPart::EncodeTileDesc(EncoderPart *this, EncoderStream *a2, axr_flags_t a3)
{
  v3 = *(this + 11);
  v4 = *(this + 24);
  v5 = EncoderStream::GetBytes<char>(a2, 0x1F);
  if (!v5)
  {
    return -5;
  }

  v6 = stpcpy(v5, "tiles");
  v7 = stpcpy(v6 + 1, "tiledesc");
  result = 0;
  *(v7 + 1) = 12;
  *(v7 + 5) = v3;
  v7[13] = v4;
  return result;
}

uint64_t EncodeAttribute(EncoderStream *a1, const char *__s, const char *a3, size_t a4, const void *a5)
{
  v10 = strlen(__s);
  v11 = strlen(a3);
  v12 = EncoderStream::GetBytes<char>(a1, (a4 + v10 + v11 + 6));
  if (!v12)
  {
    return -5;
  }

  v13 = stpcpy(v12, __s);
  v14 = stpcpy(v13 + 1, a3);
  *(v14 + 1) = a4;
  memcpy(v14 + 5, a5, a4);
  return 0;
}

uint64_t EncoderPart::EncodePreview(EncoderPart *this, EncoderStream *a2, axr_flags_t a3)
{
  if (!*(this + 19))
  {
    return 0;
  }

  v4 = 4 * *(this + 46);
  v5 = EncoderStream::GetBytes<char>(a2, (v4 * *(this + 47) + 28));
  if (!v5)
  {
    return -5;
  }

  v6 = stpcpy(v5, "preview");
  v7 = stpcpy(v6 + 1, "preview");
  *(v7 + 1) = 20;
  *(v7 + 5) = *(this + 46);
  *(v7 + 9) = *(this + 47);
  if (*(this + 47))
  {
    v8 = 0;
    v9 = *(this + 19);
    v10 = v7 + 13;
    do
    {
      memcpy(v10, v9, v4);
      v9 += *(this + 20);
      v10 += v4;
      ++v8;
    }

    while (v8 < *(this + 47));
  }

  v11 = *(this + 22);
  if (v11)
  {
    v11(*(this + 19), *(this + 21));
  }

  result = 0;
  *(this + 22) = 0;
  *(this + 19) = 0;
  return result;
}

uint64_t EncoderPart::EncodeHeader(uint64_t a1, EncoderStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *(a1 + 32);
  v50 = *(a1 + 68);
  v13 = *(a1 + 192);
  v14 = EncoderPart::EncodeChannelList(a1, a2, a4, a4, a5, a6, a7, a8);
  if (v14)
  {
    return v14;
  }

  v16 = EncoderStream::GetBytes<char>(a2, 0x1D);
  if (!v16)
  {
    return -5;
  }

  v17 = stpcpy(v16, "compression");
  v18 = stpcpy(v17 + 1, "compression");
  *(v18 + 1) = 1;
  v18[5] = v12;
  v19 = *(a1 + 36);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = EncoderStream::GetBytes<char>(a2, 0x25);
  if (!v22)
  {
    return -5;
  }

  v23 = stpcpy(v22, "dataWindow");
  v24 = stpcpy(v23 + 1, "box2i");
  *(v24 + 1) = 16;
  *(v24 + 5) = v19;
  *(v24 + 9) = vrev64_s32(v20);
  *(v24 + 17) = v21;
  v25 = *(a1 + 52);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = EncoderStream::GetBytes<char>(a2, 0x28);
  if (!v28)
  {
    return -5;
  }

  v29 = stpcpy(v28, "displayWindow");
  v30 = stpcpy(v29 + 1, "box2i");
  *(v30 + 1) = 16;
  *(v30 + 5) = v25;
  *(v30 + 9) = vrev64_s32(v26);
  *(v30 + 17) = v27;
  v14 = EncodeAttribute(a2, "lineOrder", "lineOrder", 1uLL, &v50);
  if (v14)
  {
    return v14;
  }

  LODWORD(v51[0]) = *(a1 + 72);
  v14 = EncodeAttribute(a2, "pixelAspectRatio", "float", 4uLL, v51);
  if (v14)
  {
    return v14;
  }

  v51[0] = *(a1 + 76);
  v14 = EncodeAttribute(a2, "screenWindowCenter", "v2f", 8uLL, v51);
  if (v14)
  {
    return v14;
  }

  LODWORD(v51[0]) = *(a1 + 84);
  v14 = EncodeAttribute(a2, "screenWindowWidth", "float", 4uLL, v51);
  if (v14)
  {
    return v14;
  }

  LODWORD(v51[0]) = *(a1 + 100);
  v14 = EncodeAttribute(a2, "xDensity", "float", 4uLL, v51);
  if (v14)
  {
    return v14;
  }

  v32 = *(a3 + 4);
  LOWORD(v33) = v32;
  if ((v32 & 0x200) != 0)
  {
    v14 = EncoderPart::EncodeTileDesc(a1, a2, v31);
    if (v14)
    {
      return v14;
    }

    v33 = *(a3 + 4);
  }

  if ((v33 & 0x1000) != 0)
  {
    v34 = *(a1 + 16);
    if (*v34)
    {
      v35 = strlen(*(a1 + 16));
      v14 = EncodeAttribute(a2, "view", "string", v35, v34);
      if (v14)
      {
        return v14;
      }

      v33 = *(a3 + 4);
    }
  }

  if ((v33 & 0x1800) != 0)
  {
    v36 = strlen(*(a1 + 24));
    v14 = EncodeAttribute(a2, "name", "string", v36, *(a1 + 24));
    if (v14)
    {
      return v14;
    }

    v37 = strlen(*(a1 + 232));
    v14 = EncodeAttribute(a2, "type", "string", v37, *(a1 + 232));
    if (v14)
    {
      return v14;
    }

    LODWORD(v51[0]) = EncoderPart::GetChunkCount(a1);
    v14 = EncodeAttribute(a2, "chunkCount", "int", 4uLL, v51);
    if (v14)
    {
      return v14;
    }

    if ((v32 & 0x200) == 0 && (*(a1 + 240) & 2) != 0)
    {
      v14 = EncoderPart::EncodeTileDesc(a1, a2, v31);
      if (v14)
      {
        return v14;
      }
    }
  }

  if ((*(a3 + 5) & 8) == 0)
  {
    v15 = 0;
    goto LABEL_35;
  }

  LODWORD(v51[0]) = 1;
  v14 = EncodeAttribute(a2, "version", "int", 4uLL, v51);
  if (v14)
  {
    return v14;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogError("axr_encoder_compress error:  AppleEXR doesn't support deep scanline or deep tile formats currently", v39, v31, v40, v41, v42, v43, v44, v49);
  }

  v15 = -3;
LABEL_35:
  if (*(a1 + 144) == 1.0 || (LODWORD(v51[0]) = *(a1 + 144), (v15 = EncodeAttribute(a2, "whiteLuminance", "float", 4uLL, v51)) == 0))
  {
    v45 = *(a1 + 112);
    v46 = *(a1 + 128);
    if ((vminvq_u32(vandq_s8(vceqq_f32(v46, xmmword_296B8FBC0), vceqq_f32(v45, xmmword_296B8FBB0))) & 0x80000000) != 0 || (v47 = v51, vst2q_f32(v47, *v45.f32), (v15 = EncodeAttribute(a2, "chromaticities", "chromaticities", 0x20uLL, v51)) == 0))
    {
      if (!*(a1 + 152) || (v15 = EncoderPart::EncodePreview(a1, a2, v31)) == 0)
      {
        *(a1 + 192) = 0;
        while (v13)
        {
          v48 = v13;
          v13 = *v13;
          v15 = AttributeListNode::Encode(v48, a2);
          AttributeListNode::Destroy(v48);
          if (v15)
          {
            *(a1 + 192) = v13;
            return v15;
          }
        }
      }
    }
  }

  return v15;
}

uint64_t EncoderPart::GetChunkCount(EncoderPart *this)
{
  v2 = *(this + 9);
  v1 = *(this + 10);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v4 < 0 != v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 + 1;
  }

  v7 = *(this + 11);
  v6 = *(this + 12);
  v3 = __OFSUB__(v6, v7);
  v8 = v6 - v7;
  if (v8 < 0 != v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = *(this + 22);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = v5 + v10 - 1;
  if (v11 < v5)
  {
    v12 = (v11 - 0xFFFFFFFF / v10 * v10) / v10 + 0xFFFFFFFF / v10;
  }

  else
  {
    v12 = v11 / v10;
  }

  v13 = *(this + 23);
  if (v13 <= 1)
  {
    v13 = 1;
  }

  v14 = v9 + v13 - 1;
  if (v14 < v9)
  {
    v15 = (v14 - 0xFFFFFFFF / v13 * v13) / v13 + 0xFFFFFFFF / v13;
  }

  else
  {
    v15 = v14 / v13;
  }

  return (v15 * v12);
}

uint64_t AttributeListNode::Encode(AttributeListNode *this, EncoderStream *a2)
{
  v3 = EncoderStream::GetBytes<char>(a2, (*(this + 3) + *(this + 4) + 4));
  if (!v3)
  {
    return -5;
  }

  v4 = v3;
  memcpy(v3, this + 64, *(this + 3));
  v6 = *(this + 3);
  v5 = *(this + 4);
  *&v4[v6] = v5;
  memcpy(&v4[v6 + 4], *(this + 5), v5);
  return 0;
}

void AttributeListNode::Destroy(AttributeListNode *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v2(*(this + 5), *(this + 6));
  }

  free(this);
}

uint64_t EncoderPart::ReserveOffsets(EncoderPart *this, EncoderStream *a2)
{
  v4 = *(this + 9);
  v3 = *(this + 10);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v6 < 0 != v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  v9 = *(this + 11);
  v8 = *(this + 12);
  v5 = __OFSUB__(v8, v9);
  v10 = v8 - v9;
  if (v10 < 0 != v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = *(this + 22);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = v7 + v12 - 1;
  if (v13 < v7)
  {
    v14 = (v13 - 0xFFFFFFFF / v12 * v12) / v12 + 0xFFFFFFFF / v12;
  }

  else
  {
    v14 = v13 / v12;
  }

  v15 = *(this + 23);
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = v11 + v15 - 1;
  if (v16 < v11)
  {
    v17 = (v16 - 0xFFFFFFFF / v15 * v15) / v15 + 0xFFFFFFFF / v15;
  }

  else
  {
    v17 = v16 / v15;
  }

  v18 = EncoderStream::GetBytes<char>(a2, (8 * (v17 * v14)));
  *(this + 31) = v18;
  if (v18)
  {
    return 0;
  }

  else
  {
    return -5;
  }
}

uint64_t EncoderPart::EncodeChunks(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 208);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v10[2];
      v12 += v13;
      v11 += axr_type_get_size(*(v10 + 14)) * v13;
      v10 = *v10;
    }

    while (v10);
    v14 = *(a1 + 208);
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 44);
  v17 = *(a1 + 32);
  v18 = *(a1 + 36);
  v19 = __OFSUB__(v15, v18);
  v20 = v15 - v18;
  if (v20 < 0 != v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(a1 + 48);
  v19 = __OFSUB__(v22, v16);
  v23 = v22 - v16;
  if (v23 < 0 != v19)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 + 1;
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v67 = 0;
  v68 = v11;
  v25 = *(a1 + 92);
  v63 = *(a1 + 88);
  v64 = v25;
  v65 = 0;
  v66 = 0;
  v69 = v12;
  v70 = v14;
  v71 = a5;
  v26 = *(a1 + 240);
  v27 = *a4;
  v73 = *a4;
  v72 = v26;
  v74 = a3;
  v28 = *(a1 + 248);
  v75 = *(a2 + 56);
  v76 = v28;
  v29 = 20;
  if (v26 != 1)
  {
    v29 = 0;
  }

  v30 = v26 == 0;
  v31 = 8;
  if (!v30)
  {
    v31 = v29;
  }

  v77 = 0;
  v78 = 0;
  v79 = v31 + ((v27 >> 42) & 4);
  v81 = 0uLL;
  v82 = 0uLL;
  v80 = 0uLL;
  if (!v17)
  {
    v57 = a2;
    v58 = a1;
    v32 = &unk_2A1DE95F8;
    goto LABEL_20;
  }

  if (v17 == 3)
  {
    v57 = a2;
    v58 = a1;
    v32 = &unk_2A1DE9648;
LABEL_20:
    v56 = v32;
    v59 = &v56;
  }

  HIDWORD(v66) = 0;
  v33 = *(a1 + 224);
  if (!v33)
  {
LABEL_56:
    v53 = 0;
    goto LABEL_57;
  }

  v34 = 0;
  v35 = 0;
  v36 = *(a1 + 220);
  v37 = v36;
  while (1)
  {
    LODWORD(v66) = 0;
    if (v37)
    {
      break;
    }

LABEL_55:
    HIDWORD(v66) = ++v34;
    if (v34 >= v33)
    {
      goto LABEL_56;
    }
  }

  while (1)
  {
    v38 = *(a1 + 88);
    v62 = __PAIR64__(v25, v38);
    DWORD1(v61) = 0;
    v39 = v66;
    v40 = *(a1 + 96);
    v41 = HIDWORD(v66);
    if ((v40 & 0xF) != 2)
    {
      LOBYTE(v41) = v66;
    }

    v42 = v40 >> 4;
    LODWORD(v43) = (v21 - v42 + (v42 << v66)) >> v66;
    if (v43 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v43;
    }

    LODWORD(v44) = (v24 - v42 + (v42 << v41)) >> v41;
    if (v44 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v44;
    }

    *(&v61 + 1) = v43 | (v44 << 32);
    if (v38 <= 1)
    {
      v38 = 1;
    }

    v45 = v38 - 1 + v43;
    v46 = __CFADD__(v38 - 1, v43) ? (v45 - 0xFFFFFFFF / v38 * v38) / v38 + 0xFFFFFFFF / v38 : v45 / v38;
    v47 = v25 <= 1 ? 1 : v25;
    v48 = __CFADD__(v47 - 1, v44);
    v49 = v47 - 1 + v44;
    if (v48)
    {
      break;
    }

    v50 = v49 / v47;
    if (v49 / v47)
    {
      goto LABEL_41;
    }

LABEL_50:
    LODWORD(v66) = v39 + 1;
    if (v39 + 1 >= v36)
    {
      v34 = HIDWORD(v66);
      v33 = *(a1 + 224);
      v37 = v36;
      goto LABEL_55;
    }
  }

  v50 = (v49 - 0xFFFFFFFF / v47 * v47) / v47 + 0xFFFFFFFF / v47;
  if (!v50)
  {
    goto LABEL_50;
  }

LABEL_41:
  v51 = 0;
  while (1)
  {
    *&v60 = v35;
    *(&v60 + 1) = __PAIR64__(v50, v46);
    HIDWORD(v65) = v51;
    v77 = 0;
    *&v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v52 = HIDWORD(v61) - v25 * v51;
    if (HIDWORD(v62) < v52)
    {
      v52 = HIDWORD(v62);
    }

    LODWORD(v61) = 0;
    HIDWORD(v62) = v52;
    v53 = (*(*v59 + 3))(v59, &v60);
    if (v53)
    {
      break;
    }

    v53 = (*(*v59 + 4))(v59, &v60);
    if (v53)
    {
      break;
    }

    (*(*v59 + 5))(v59, &v60);
    v25 = *(a1 + 92);
    v54 = DWORD1(v61) + v25;
    DWORD1(v61) = v54;
    if (v54 + v25 > v24)
    {
      HIDWORD(v62) = v24 - v54;
    }

    v35 += v46;
    if (v50 == ++v51)
    {
      v39 = v66;
      v36 = *(a1 + 220);
      goto LABEL_50;
    }
  }

LABEL_57:
  (*(*v59 + 2))(v59);
  return v53;
}

void EncoderLayer::SetColorSpaceModel(EncoderLayer *this, CGColorSpaceModel a2)
{
  v17[63] = *MEMORY[0x29EDCA608];
  if (*(this + 17) != a2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      operator new[]();
    }

    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = xmmword_296B8F0F0;
      v8 = xmmword_296B8F100;
      v9 = v17;
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = v5;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = v5 + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = v5 + 2;
          v9[1] = v5 + 3;
        }

        v5 += 4;
        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        v9 += 4;
      }

      while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    }

    qsort_r(v16, v4, 4uLL, this, EncoderLayer::CompareNames);
    v12 = *(this + 2);
    if (v12)
    {
      v13 = (*(this + 1) + 12);
      v14 = v16;
      do
      {
        v15 = *v14++;
        *v13 = v15;
        v13 += 4;
        --v12;
      }

      while (v12);
    }

    *(this + 17) = a2;
  }
}

uint64_t EncoderLayer::CompareNames(EncoderLayer *this, unsigned int *a2, unsigned int *a3, const void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = *(this + 3);
  EncodedNameForChannel = EncoderLayer::GetEncodedNameForChannel(this, *a2, *(this + 17));
  snprintf(__str, 0x100uLL, "%s%s", v6, EncodedNameForChannel);
  v8 = *a3;
  v9 = *(this + 3);
  v10 = EncoderLayer::GetEncodedNameForChannel(this, v8, *(this + 17));
  snprintf(__s2, 0x100uLL, "%s%s", v9, v10);
  return strcmp(__str, __s2);
}

void EncoderPart::~EncoderPart(EncoderPart *this)
{
  v2 = *(this + 24);
  *(this + 24) = 0;
  while (v2)
  {
    v3 = *v2;
    AttributeListNode::Destroy(v2);
    v2 = v3;
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  while (v4)
  {
    v5 = *v4;
    EncoderLayer::Destroy(v4);
    v4 = v5;
  }

  v6 = *(this + 22);
  if (v6)
  {
    v6(*(this + 19), *(this + 21));
    *(this + 22) = 0;
  }

  *(this + 23) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
}

void EncoderLayer::Destroy(EncoderLayer *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v2(*(this + 6));
  }

  free(this);
}

uint64_t AXRCreateColorSpace(int8x16_t a1, __n128 a2, __n128 a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v13 = a3.n128_f32[0];
  v94[1] = *MEMORY[0x29EDCA608];
  v80 = a2;
  v81 = a1;
  if (AXRCreateColorSpace::CGFunctionsInitialized == -1)
  {
    v14 = a1;
    if (!a7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    AXRCreateColorSpace_cold_1();
    a2 = v80;
    v14 = v81;
    if (!a7)
    {
      goto LABEL_4;
    }
  }

  TypeID = cfGetTypeID(a7, a1, a2, a3, a4, v14);
  v16 = cfDictionaryGetTypeID();
  a2 = v80;
  v14 = v81;
  if (TypeID != v16)
  {
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_99;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | a8) & 2) != 0)
      {
        AXRLogError("Error: options dictionary pointer is not a CFDictionary", v17, v18, v19, v20, v21, v22, v23, v78);
      }

      __break(1u);
LABEL_99:
      [OS_axr_data debugDescription];
    }
  }

LABEL_4:
  v24 = a6 & 0xFFFFFFFFFFFFFF0FLL;
  if (a9)
  {
    v25 = 14;
    if (v24 <= 8 && ((1 << v24) & 0x114) != 0 || v24 == 1024)
    {
      goto LABEL_15;
    }

    if (v24 && (a6 & 0xFFFFFFFFFFFFFF01) == 0)
    {
      v25 = 14;
      goto LABEL_15;
    }
  }

  if (v24 == 1792)
  {
    v25 = a6;
  }

  else
  {
    v25 = a6;
    if (v24 != 14)
    {
      goto LABEL_16;
    }
  }

LABEL_15:
  a3 = xmmword_296B8FA90;
  a4 = vmlaq_f32(xmmword_296B8FAA0, xmmword_296B8FA70, a2);
  a1 = vandq_s8(vcgeq_f32(xmmword_296B8FA90, vabsq_f32(a4)), vcgeq_f32(xmmword_296B8FA90, vabsq_f32(vmlaq_f32(xmmword_296B8FA80, xmmword_296B8FA70, v14))));
  a1.i32[0] = vminvq_u32(a1);
  a6 = v25;
  if (a1.i32[0] < 0)
  {
    goto LABEL_56;
  }

LABEL_16:
  v26 = 0;
  v27 = a6 & 0xFFFFFFFFFFFFFF0FLL;
  if ((a6 & 0xFFFFFFFFFFFFFF0FLL) <= 13)
  {
    if (v27 != 2 && v27 != 4 && v27 != 8)
    {
      return v26;
    }

    goto LABEL_24;
  }

  if (v27 <= 1791)
  {
    if (v27 != 14)
    {
      if (v27 != 1024)
      {
        return v26;
      }

LABEL_24:
      v83 = v13;
      Mutable = cfDictionaryCreateMutable(0, 0, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks, a1, a2, a3, a4, v14);
      if (Mutable)
      {
        v61 = Mutable;
        cfDictionaryAddValue(Mutable, @"profileVersion", @"4.3.0");
        cfDictionaryAddValue(v61, @"profileType", @"calGray");
        cfDictionaryAddValue(v61, @"description", @"AppleEXR grayscale linear extended");
        v82 = 1065353216;
        v62 = cfNumberCreate(0, 12, &v82);
        if (v62)
        {
          v63 = v62;
          cfDictionaryAddValue(v61, @"kGamma", v62);
          cfRelease(v63);
        }

        v64 = cfNumberCreate(0, 12, &v83);
        if (v64)
        {
          v65 = v64;
          cfDictionaryAddValue(v61, @"luminance", v64);
          cfRelease(v65);
        }

        *&v91 = v81.f32[3] / *&v80.i32[3];
        HIDWORD(v91) = 1065353216;
        *&v92 = (1.0 - (v81.f32[3] + *&v80.i32[3])) / *&v80.i32[3];
        v66 = cfNumberCreate(0, 12, &v91);
        v84 = v66;
        v67 = cfNumberCreate(0, 12, &v91 + 4);
        v85 = v67;
        v68 = cfNumberCreate(0, 12, &v92);
        v69 = 0;
        v86 = v68;
        if (v66 && v67 && v68)
        {
          v69 = cfArrayCreate(0, &v84, 3, kcfTypeArrayCallBacks);
          v66 = v84;
        }

        if (v66)
        {
          cfRelease(v66);
        }

        if (v85)
        {
          cfRelease(*&v85);
        }

        if (v86)
        {
          cfRelease(v86);
        }

        if (v69)
        {
          cfDictionaryAddValue(v61, @"wtpt", v69);
          cfRelease(v69);
        }

        Profile = colorsyncMakeProfile(v61);
        cfRelease(v61);
        if (Profile)
        {
          if (a7)
          {
            v70 = cfDictionaryCreateMutableCopy;
            Count = cfDictionaryGetCount(a7);
            v55 = v70(0, Count + 1, a7);
            v56 = v55;
            if (v55)
            {
LABEL_55:
              cfDictionaryAddValue(v55, @"kCGColorSpaceExtendedRange", kcfBooleanTrue);
            }
          }

          else
          {
            v84 = @"kCGColorSpaceExtendedRange";
            v94[0] = kcfBooleanTrue;
            v56 = cfDictionaryCreate(0, &v84, v94, 1, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks);
          }

          goto LABEL_91;
        }
      }

      return 0;
    }

    goto LABEL_27;
  }

  if (v27 == 7168)
  {
LABEL_56:
    v57 = colorsyncProfileCreateWithName(kcolorsyncGenericXYZProfile);
    MutableCopy = colorsyncProfileCreateMutableCopy();
    cfRelease(v57);
    v84 = 542792024;
    v85.i32[0] = 0;
    if (v13 >= 65536.0)
    {
      v59 = 0x7FFFFFFF;
    }

    else if (v13 >= -65536.0)
    {
      v59 = rintf(v13 * 65536.0);
    }

    else
    {
      v59 = -1;
    }

    v85.i32[1] = bswap32(v59);
    LODWORD(v86) = 0;
    v72 = cfDataCreate(0, &v84, 20);
    colorsyncProfileSetTag(MutableCopy, @"lumi", v72);
    cfRelease(v72);
    colorsyncProfileRemoveTag(MutableCopy, @"dscm");
    colorsyncProfileSetDescriptionTag(MutableCopy, @"AppleEXR XYZ linear extended", 0);
    if (a7)
    {
      v73 = cfDictionaryCreateMutableCopy;
      v74 = cfDictionaryGetCount(a7);
      v75 = v73(0, v74 + 1, a7);
      v76 = v75;
      if (v75)
      {
        cfDictionaryAddValue(v75, @"kCGColorSpaceExtendedRange", kcfBooleanTrue);
      }
    }

    else
    {
      v84 = @"kCGColorSpaceExtendedRange";
      v91 = kcfBooleanTrue;
      v76 = cfDictionaryCreate(0, &v84, &v91, 1, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks);
    }

    v26 = cgColorSpaceCreateWithColorSyncProfile(MutableCopy, v76);
    cfRelease(v76);
    cfRelease(MutableCopy);
    return v26;
  }

  if (v27 != 1792)
  {
    return v26;
  }

LABEL_27:
  v83 = v13;
  v28 = cfDictionaryCreateMutable(0, 0, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks, a1, a2, a3, a4, v14);
  if (!v28)
  {
    return 0;
  }

  v29 = v28;
  cfDictionaryAddValue(v28, @"profileVersion", @"4.3.0");
  cfDictionaryAddValue(v29, @"profileType", @"calRGB");
  cfDictionaryAddValue(v29, @"description", @"AppleEXR RGB linear");
  v82 = 1065353216;
  v30 = cfNumberCreate(0, 12, &v82);
  if (v30)
  {
    v31 = v30;
    cfDictionaryAddValue(v29, @"rGamma", v30);
    cfDictionaryAddValue(v29, @"gGamma", v31);
    cfDictionaryAddValue(v29, @"bGamma", v31);
    cfRelease(v31);
  }

  v79 = a7;
  v32 = cfNumberCreate(0, 12, &v83);
  if (v32)
  {
    v33 = v32;
    cfDictionaryAddValue(v29, @"luminance", v32);
    cfRelease(v33);
  }

  v34 = 0;
  v35 = v81;
  v36 = vextq_s8(v35, v35, 8uLL).u64[0];
  v37 = vextq_s8(v80, v80, 8uLL).u64[0];
  v38 = vsub_f32(*&vextq_s8(v35, v35, 4uLL), __PAIR64__(v81.u32[0], v36.u32[0]));
  v39 = vmul_f32(*v80.i8, vmla_laneq_f32(vmla_f32(vmul_laneq_f32(vsub_f32(*&vextq_s8(v35, v35, 0xCuLL), vzip2_s32(*v81.f32, v36)), v80, 2), vrev64_s32(*v80.i8), vsub_f32(v36, vrev64_s32(v36))), v38, v80, 3));
  v40 = vmul_f32(*v80.i8, v38);
  v41 = vdup_lane_s32(v40, 0);
  v41.f32[0] = (v81.f32[1] - v81.f32[3]) * *v80.i32;
  v40.i32[0] = vmuls_lane_f32(v81.f32[3] - v81.f32[0], *v80.i8, 1);
  v42 = vmul_f32(v37, vadd_f32(vrev64_s32(vmul_n_f32(v37, v81.f32[0] - v81.f32[1])), vadd_f32(v41, v40)));
  v43 = vdup_lane_s32(v42, 1);
  v44 = vdiv_f32(v39, v43);
  *v42.i32 = vdiv_f32(v42, v43).f32[0];
  *&v84 = vmuls_n_f32(v81.f32[0], v44.f32[0]) / *v80.i32;
  HIDWORD(v84) = v44.i32[0];
  v43.i32[1] = v81.i32[1];
  v43.f32[0] = 1.0 - vaddq_f32(v81, v80).f32[0];
  v85 = vdiv_f32(vmul_f32(v43, v44), *v80.i8);
  LODWORD(v86) = v44.i32[1];
  *(&v86 + 1) = vmuls_lane_f32(1.0 - (v81.f32[1] + *&v80.i32[1]), v44, 1) / *&v80.i32[1];
  v87 = __PAIR64__(v42.u32[0], vmuls_lane_f32(*v42.i32, v81, 2) / *&v80.i32[2]);
  *v36.i32 = (1.0 - (v81.f32[2] + *&v80.i32[2])) * *v42.i32;
  v88 = vdiv_f32(v36, v37);
  v89 = 1065353216;
  v90 = (1.0 - (v81.f32[3] + *&v80.i32[3])) / *&v80.i32[3];
  v45 = _ZZL19CreateRGBColorSpaceDv4_fS_fPK14__CFDictionary11axr_flags_tE10colorNames;
  do
  {
    v46 = cfNumberCreate(0, 12, &v84 + v34);
    v91 = v46;
    v47 = cfNumberCreate(0, 12, &v84 + v34 + 4);
    v92 = v47;
    v48 = cfNumberCreate(0, 12, &v84 + v34 + 8);
    v93 = v48;
    if (v46)
    {
      v49 = v47 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (!v49 && v48 != 0)
    {
      v51 = cfArrayCreate(0, &v91, 3, kcfTypeArrayCallBacks);
      v46 = v91;
      if (!v91)
      {
        goto LABEL_45;
      }

LABEL_44:
      cfRelease(v46);
      goto LABEL_45;
    }

    v51 = 0;
    if (v46)
    {
      goto LABEL_44;
    }

LABEL_45:
    if (v92)
    {
      cfRelease(v92);
    }

    if (v93)
    {
      cfRelease(v93);
    }

    if (v51)
    {
      cfDictionaryAddValue(v29, *v45, v51);
      cfRelease(v51);
    }

    v34 += 12;
    ++v45;
  }

  while (v34 != 48);
  Profile = colorsyncMakeProfile(v29);
  cfRelease(v29);
  if (!Profile)
  {
    return 0;
  }

  if (v79)
  {
    v53 = cfDictionaryCreateMutableCopy;
    v54 = cfDictionaryGetCount(v79);
    v55 = v53(0, v54 + 1, v79);
    v56 = v55;
    if (v55)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v91 = @"kCGColorSpaceExtendedRange";
    v94[0] = kcfBooleanTrue;
    v56 = cfDictionaryCreate(0, &v91, v94, 1, kcfDictionaryKeyCallBacks, kcfDictionaryValueCallBacks);
  }

LABEL_91:
  v26 = cgColorSpaceCreateWithColorSyncProfile(Profile, v56);
  cfRelease(v56);
  cfRelease(Profile);
  return v26;
}

void InitCGFunctions(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = dlopen("/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation", 261);
  if (v9)
  {
    v17 = v9;
    cfGetTypeID = dlsym(v9, "CFGetTypeID");
    cfDictionaryGetTypeID = dlsym(v17, "CFDictionaryGetTypeID");
    cfRelease = dlsym(v17, "CFRelease");
    cfDictionaryCreateMutable = dlsym(v17, "CFDictionaryCreateMutable");
    cfDictionaryAddValue = dlsym(v17, "CFDictionaryAddValue");
    cfNumberCreate = dlsym(v17, "CFNumberCreate");
    cfArrayCreate = dlsym(v17, "CFArrayCreate");
    cfDataCreate = dlsym(v17, "CFDataCreate");
    cfDictionaryCreate = dlsym(v17, "CFDictionaryCreate");
    cfDictionaryCreateMutableCopy = dlsym(v17, "CFDictionaryCreateMutableCopy");
    cfDictionaryGetCount = dlsym(v17, "CFDictionaryGetCount");
    kcfDictionaryKeyCallBacks = dlsym(v17, "kCFTypeDictionaryKeyCallBacks");
    kcfDictionaryValueCallBacks = dlsym(v17, "kCFTypeDictionaryValueCallBacks");
    kcfTypeArrayCallBacks = dlsym(v17, "kCFTypeArrayCallBacks");
    v18 = dlsym(v17, "kCFBooleanTrue");
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    kcfBooleanTrue = v19;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogDebug("AppleEXR: internal error -- failed to locate CoreFoundation", v10, v11, v12, v13, v14, v15, v16, v46);
  }

  v20 = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 261);
  if (v20)
  {
    v28 = v20;
    cgColorSpaceCreateWithName = dlsym(v20, "CGColorSpaceCreateWithName");
    cgColorSpaceCreateWithColorSyncProfile = dlsym(v28, "CGColorSpaceCreateWithColorSyncProfile");
    v29 = dlsym(v28, "kCGColorSpaceExtendedLinearSRGB");
    if (v29)
    {
      v30 = *v29;
    }

    else
    {
      v30 = 0;
    }

    kcgColorSpaceExtendedLinearSRGB = v30;
    v31 = dlsym(v28, "kCGColorSpaceGenericXYZ");
    if (v31)
    {
      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    kcgColorSpaceGenericXYZ = v32;
    v33 = dlsym(v28, "kCGColorSpaceExtendedLinearGray");
    if (v33)
    {
      v34 = *v33;
    }

    else
    {
      v34 = 0;
    }

    kcgColorSpaceExtendedLinearGray = v34;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogDebug("AppleEXR: internal error -- failed to locate CoreGraphics", v21, v22, v23, v24, v25, v26, v27, v46);
  }

  v35 = dlopen("/System/Library/PrivateFrameworks/ColorSync.framework/ColorSync", 261);
  if (v35)
  {
    v43 = v35;
    colorsyncMakeProfile = dlsym(v35, "ColorSyncMakeProfile");
    colorsyncProfileCreateWithName = dlsym(v43, "ColorSyncProfileCreateWithName");
    colorsyncProfileCreateMutableCopy = dlsym(v43, "ColorSyncProfileCreateMutableCopy");
    colorsyncProfileSetTag = dlsym(v43, "ColorSyncProfileSetTag");
    colorsyncProfileRemoveTag = dlsym(v43, "ColorSyncProfileRemoveTag");
    colorsyncProfileSetDescriptionTag = dlsym(v43, "ColorSyncProfileSetDescriptionTag");
    v44 = dlsym(v43, "kColorSyncGenericXYZProfile");
    if (v44)
    {
      v45 = *v44;
    }

    else
    {
      v45 = 0;
    }

    kcolorsyncGenericXYZProfile = v45;
  }

  else
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    AXRLogDebug("AppleEXR: internal error -- failed to locate ColorSync", v36, v37, v38, v39, v40, v41, v42, a9);
  }
}

const char *GetEXRNameForChannelType(unsigned int a1, int a2)
{
  if (a1 > 0xF)
  {
    return &unk_296B90CDB;
  }

  if (a1 == 10 && a2 == 7)
  {
    return "G";
  }

  return *(&GetEXRNameForChannelType::kDefaultChannelNames + a1);
}

void AXRLogDebug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x2A1C7C4A8](a1, a2);
  v15 = *MEMORY[0x29EDCA608];
  v10 = vsnprintf(__str, 0x1000uLL, v9, &a9);
  if (qword_2A1396628 != -1)
  {
    AXRLogDebug_cold_1(v10);
  }

  v11 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = __str;
    _os_log_impl(&dword_296AD3000, v11, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }
}

void AXRLogError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x2A1C7C4A8]();
  v15 = *MEMORY[0x29EDCA608];
  v10 = vsnprintf(__str, 0x1000uLL, v9, &a9);
  if (qword_2A1396628 != -1)
  {
    AXRLogDebug_cold_1(v10);
  }

  v11 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = __str;
    _os_log_impl(&dword_296AD3000, v11, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }
}

char *InitializeDefaultFlags(void *a1)
{
  result = getenv("AXR_PRINT_DEBUG_INFO");
  if (result)
  {
    v3 = result;
    __endptr = result;
    result = strtoull(result, &__endptr, 0);
    if (__endptr != v3 && result != 0)
    {
      *a1 |= 2uLL;
    }
  }

  return result;
}

os_log_t GetOSLog(os_log_t *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  bzero(category, 0x800uLL);
  v3 = 2047;
  if (sysctlbyname("kern.procname", category, &v3, 0, 0))
  {
    category[0] = 0;
  }

  result = os_log_create("com.apple.AppleEXR", category);
  *a1 = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 1, a2, GetOSLog);
}

axr_encoder_t axr_encoder_create(axr_flags_t flags)
{
  objc_opt_class();
  result = _os_object_alloc();
  if (result)
  {
    result[2].isa = flags;
    result[3].isa = 0;
  }

  return result;
}

axr_part_t axr_encoder_append_part(axr_encoder_t encoder, const char *partName, const char *viewName, axr_compression_t compression, axr_box2i_t dataWindow, axr_box2i_t displayWindow, axr_line_order_t lineOrder, float pixelAspectRatio, float screenWindowCenterX, float screenWindowCenterY, float screenWindowWidth, float xDensity, uint32_t tileWidth, uint32_t tileHeight, axr_level_mode_t levelMode)
{
  if (!encoder)
  {
    v24 = kDefaultAXRLogFlags;
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | v24) & 2) != 0)
      {
        AXRLogError("axr_encoder_append_part:  encoder may not be NULL", partName, viewName, *&compression, *&dataWindow.xMin, *&dataWindow.yMin, *&displayWindow.xMin, *&displayWindow.yMin, v25);
      }

      __break(1u);
LABEL_12:
      [OS_axr_data debugDescription];
    }
  }

  isa = encoder[2].isa;
  v18 = *&compression;
  v19 = *&dataWindow.xMin;
  *&v28.xMin = *&dataWindow.yMin;
  *&v28.yMin = *&displayWindow.xMin;
  *&v29.xMin = *&displayWindow.yMin;
  *&v29.yMin = lineOrder;
  result = EncoderPart::CreateEncoderPart(partName, viewName, v18, v19, v28, v29, pixelAspectRatio, screenWindowCenterX, screenWindowCenterY, screenWindowWidth, xDensity, tileWidth, tileHeight, levelMode, v26, isa);
  if (result)
  {
    v21 = &result[2];
    v22 = encoder[3].isa;
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
      *v23 = v21;
    }

    else
    {
      encoder[3].isa = v21;
    }
  }

  return result;
}

axr_error_t axr_encoder_compress(axr_encoder_t encoder, axr_encoder_storage_t storage, axr_encoder_write_proc_t writeProc, axr_encoder_seek_proc_t seekProc, axr_encoder_storage_destroy_proc_t destroyProc, axr_flags_t flags)
{
  v8 = flags;
  if (encoder)
  {
    if (storage)
    {
      if (writeProc)
      {
        isa = encoder[3].isa;
        if (isa)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          do
          {
            v11 |= *(isa + 25) > 0x1FuLL;
            v12 = (v12 | (*(isa + 60) >> 1)) & 1;
            ++v10;
            isa = *isa;
          }

          while (isa);
          operator new();
        }

        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | v8) & 2) != 0)
        {
          AXRLogError("axr_encoder_compress: no parts. Did you forget to call axr_encoder_append_part?", storage, writeProc, seekProc, destroyProc, flags, v6, v7, v16);
        }

        return -11;
      }

      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) == 0)
      {
        return -1;
      }

      v14 = "axr_encoder_compress: writeProc may not be NULL";
    }

    else
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | v8) & 2) == 0)
      {
        return -1;
      }

      v14 = "axr_encoder_compress: storage may not be NULL";
    }

    AXRLogError(v14, storage, writeProc, seekProc, destroyProc, flags, v6, v7, v16);
    return -1;
  }

  if (GetFlagsOnceToken != -1)
  {
    [OS_axr_data debugDescription];
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogDebug("axr_encoder_compress:warning: called with NULL encoder.  Ignored.", storage, writeProc, seekProc, destroyProc, flags, v6, v7, v16);
  }

  return 0;
}

void axr_encoder::~axr_encoder(axr_encoder *this)
{
  for (i = *(this + 3); i; i = v2)
  {
    v2 = *i;
  }
}

void EncoderStream::~EncoderStream(EncoderStream *this)
{
  EncoderStream::~EncoderStream(this);

  JUMPOUT(0x29C25E8F0);
}

{
  *this = &unk_2A1DE9698;
  v2 = *(this + 5);
  if (v2)
  {
    v2(*(this + 2));
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    do
    {
      v4 = *(v3 + 16);
      if (atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        (**v3)(v3);
      }

      v3 = v4;
    }

    while (v4);
  }
}

float Part::GetImageInfo@<S0>(Part *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = vuzp1q_s32(*(this + 56), vrev64q_s32(*(this + 56)));
  *a3 = vuzp1q_s32(*(this + 40), vrev64q_s32(*(this + 40)));
  *(a3 + 16) = v3;
  *(a3 + 32) = *(this + 156);
  v3.i32[0] = *(this + 23);
  *(a3 + 48) = *(this + 22);
  *(a3 + 52) = *(this + 10);
  v4 = *(this + 26);
  v5 = *(this + 27);
  *(a3 + 60) = v3.i32[0];
  *(a3 + 64) = v4;
  v3.i32[0] = *(this + 29);
  v6 = *(this + 30);
  v7 = *(this + 31);
  *(a3 + 68) = *(this + 28);
  *(a3 + 72) = v6;
  v8 = *(this + 33);
  *(a3 + 76) = *(this + 32);
  *(a3 + 80) = v5;
  v9 = *(this + 164);
  v10 = *(this + 18);
  *(a3 + 40) = *(this + 9);
  *(a3 + 44) = v10;
  *(a3 + 84) = v3.i32[0];
  *(a3 + 88) = v7;
  *(a3 + 92) = v8;
  v11 = *(this + 66);
  v12 = *(this + 67);
  *(a3 + 96) = v11;
  *(a3 + 100) = v12;
  if (v12 * v11)
  {
    v13 = &a2[*(this + 34)];
  }

  else
  {
    v13 = 0;
  }

  *(a3 + 104) = v13;
  *(a3 + 112) = vextq_s8(*(this + 184), *(this + 184), 8uLL);
  *(a3 + 128) = v9;
  result = *(this + 24) * *(this + 25);
  *(a3 + 132) = result;
  return result;
}

char *Part::GetChannelInfo@<X0>(Part *this@<X0>, const char *a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  Channel = Part::GetChannel(this, a4, a3, a3, a5, a6, a7, a8);

  return ChannelDescription::GetChannelInfo(Channel, a2, a9);
}

uint64_t Part::GetChannel(Part *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 8) <= a2 || (v8 = *(this + 3)) == 0)
  {
    Part::GetChannel(a3, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(v8 + 8 * a2);
}

uint64_t Part::GetProperty(Part *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(this + 30);
  if (result)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = 1;
    do
    {
      result = *(result + 40);
      if (result)
      {
        v11 = v10 >= a2;
      }

      else
      {
        v11 = 1;
      }

      ++v10;
    }

    while (!v11);
  }

  if (!result)
  {
    Part::GetProperty(a3, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t Part::GetLayerInfo@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(this + 152) <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v3 = *(this + 144) + 24 * a2;
    *a3 = *v3;
    a3[2] = *(v3 + 16);
  }

  return this;
}

uint64_t AppleEXRDestinationNotBigEnough(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a4)
    {
      *(result + (a3 - 1) * a2 + a5 * a4 - 1) = 0;
    }
  }

  return result;
}

axr_error_t Part::ReadPixels(Part *this, axr_decoder *a2, _BYTE *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 14);
  if (!v8)
  {
    return 0;
  }

  v10 = *(a2 + 15);
  if (!v10 || !*(a2 + 3))
  {
    return 0;
  }

  v14 = *(this + 12);
  v13 = *(this + 13);
  v16 = *(this + 10);
  v15 = *(this + 11);
  v17 = __OFSUB__(v14, v16);
  v18 = v14 - v16;
  if (v18 < 0 != v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (v13 >= v15)
  {
    v20 = v13 - v15 + 1;
  }

  else
  {
    v20 = 0;
  }

  if (v8 > v19 || v10 > v20)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      AXRLogError("region extent {%d, %d} lies outside the data window (size = {%d, %d})\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 14));
    }

    return -1;
  }

  AppleEXRDestinationNotWritable(a3);
  v29 = *(a2 + 3);
  if (v29)
  {
    while (*(v29 + 24))
    {
      v29 = *(v29 + 8);
      if (!v29)
      {
        goto LABEL_17;
      }
    }

    if (*(v29 + 16) == 1)
    {
      v30 = 2;
    }

    else
    {
      v30 = 4;
    }
  }

  else
  {
LABEL_17:
    v30 = 0;
  }

  v31 = v30 * *(a2 + 8);
  v32 = *(a2 + 14);
  if (v31 * v32 > a4)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      AXRLogError("%s error: expected rowBytes for channel size (%lu) x channel count (%u) x width (%u) = %lu bytes\n\tThe provided destination row bytes is only %lu and the data will not fit.\n\tSkipping operation.", v24, v25, v32, v31, v26, v27, v28, "ReadPixels");
    }

    return -1;
  }

  AppleEXRDestinationNotBigEnough(a3, a4, *(a2 + 15), v32, v31);
  v45 = axr_error_success;
  TileDecoder_storage::Init(&vars0, *(this + 9), a2, this, a5, &v45, v34, v35);
  IsInterleavedValid = v45;
  if (v45 == axr_error_success)
  {
    v42 = v36;
    *v44 = 0;
    IsInterleavedValid = TileDecoder::IsInterleavedValid(v36, &v44[1], v44, v37, v38, v39, v40, v41);
    v45 = IsInterleavedValid;
    if (IsInterleavedValid == axr_error_success)
    {
      IsInterleavedValid = TileDecoder::ReadPixels(v42, v44[1], v44[0], a3, a4);
    }
  }

  (*vars0)(&vars0);
  return IsInterleavedValid;
}

void Part::GetReadPixelsInfo(axr_decoder *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = *(a1 + 7);
    v5 = *(a1 + 3);
    if (v5)
    {
      while (*(v5 + 24))
      {
        v5 = *(v5 + 8);
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v7 = *(v5 + 16);
      if (v7 == 1)
      {
        v6 = 16;
      }

      else
      {
        v6 = 32;
      }
    }

    else
    {
LABEL_5:
      v6 = 0;
      v7 = 1;
    }

    v8 = *(a1 + 8) * v6;
    *a2 = v4;
    *(a2 + 8) = (v8 * v4) >> 3;
    *(a2 + 16) = v6;
    *(a2 + 20) = v8;
    *(a2 + 24) = v7;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t AXRDecoderExtractChannel(axr_decoder *a1, axr_channel_type_t a2)
{
  v4 = (a1 + 24);
  result = *(a1 + 3);
  if (result)
  {
    if (*(result + 20) == a2)
    {
      v5 = 0;
LABEL_6:
      if (v5)
      {
        v4 = (v5 + 8);
      }

      *v4 = *(result + 8);
      *(result + 8) = 0;
      --*(a1 + 8);
    }

    else
    {
      while (1)
      {
        v5 = result;
        result = *(result + 8);
        if (!result)
        {
          break;
        }

        if (*(result + 20) == a2)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

void Part::GetReadRGBAPixelsInfo(axr_decoder *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v5 = *(a1 + 7);
    v6 = *(a1 + 3);
    if (v6)
    {
      while (*(v6 + 24))
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v8 = *(v6 + 16);
      if (v8 == 1)
      {
        v7 = 16;
      }

      else
      {
        v7 = 32;
      }
    }

    else
    {
LABEL_5:
      v7 = 0;
      v8 = 1;
    }

    *a2 = v5;
    *(a2 + 8) = ((4 * v7) * v5) >> 3;
    *(a2 + 16) = v7;
    *(a2 + 20) = 4 * v7;
    *(a2 + 24) = v8;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

unint64_t Part::ReadPlanes(Part *this, axr_decoder *a2, axr_pixel_data_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, axr_flags_t a11, axr_error_t a12, void (**a13)(void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a40 = *MEMORY[0x29EDCA608];
  v40 = *(a2 + 14);
  if (!v40)
  {
    return 0;
  }

  if (!*(a2 + 15))
  {
    return 0;
  }

  v42 = *(a2 + 3);
  if (!v42)
  {
    return 0;
  }

  v43 = a3;
  if (*(a2 + 8))
  {
    v45 = 0;
    p_rowBytes = &a3->rowBytes;
    while (*(p_rowBytes - 1))
    {
      v47 = v42[4];
      if (v47 == 1)
      {
        v48 = 2;
      }

      else
      {
        v48 = 4;
      }

      v49 = *(a2 + 14);
      v50 = *(a2 + 15);
      if (!*(v42 + 24))
      {
        Channel = Part::GetChannel(this, *v42, a4, a4, a5, a6, a7, a8);
        v53 = *(Channel + 80);
        if (v53 >= 2)
        {
          v54 = this;
          v55 = *(Channel + 104);
          if (*(a2 + 13) % v55)
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | a4) & 2) != 0)
            {
              AXRLogError("axr_decoder_read_planes error: the y origin of the region of interest (%u) is\n\tnot aligned with the sampling rate for the channel %lu, (%u)\tSkipping operation.", v52, a3, a4, a5, a6, a7, a8, *(a2 + 13));
            }

            return -1;
          }

          if (*(a2 + 12) % v53)
          {
            if (GetFlagsOnceToken != -1)
            {
              [OS_axr_data debugDescription];
            }

            if (((kDefaultAXRLogFlags | a4) & 2) != 0)
            {
              AXRLogError("axr_decoder_read_planes error: the x origin of the region of interest (%u) is\n\tnot aligned with the sampling rate for the channel %lu, (%u)\tSkipping operation.", v52, a3, a4, a5, a6, a7, a8, *(a2 + 12));
            }

            return -1;
          }

          v50 = (v50 + v55 - 1) / v55;
          v49 = (v49 + v53 - 1) / v53;
          this = v54;
        }
      }

      v56 = 1;
      if (v47 != 1)
      {
        v56 = 2;
      }

      v57 = *p_rowBytes;
      if (v49 << v56 > *p_rowBytes)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        if (((kDefaultAXRLogFlags | a4) & 2) != 0)
        {
          AXRLogError("axr_decoder_read_planes error: expected rowBytes for channel size (%lu) x width (%u) = %lu bytes\n\tThe provided destination row bytes for plane %lu is only %lu and the data will not fit.\n\tSkipping operation.", v57, a3, a4, a5, a6, a7, a8, v48);
        }

        return -1;
      }

      AppleEXRDestinationNotBigEnough(*(p_rowBytes - 1), v57, v50, v49, v48);
      v42 = *(v42 + 1);
      ++v45;
      p_rowBytes += 2;
      if (v45 >= *(a2 + 8))
      {
        v40 = *(a2 + 14);
        v43 = a3;
        goto LABEL_20;
      }
    }

    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
    }

    if (((kDefaultAXRLogFlags | a4) & 2) != 0)
    {
      AXRLogError("axr_decoder_read_planes error: destinationPlaneList[%lu].data = NULL", a2, a3, a4, a5, a6, a7, a8, v45);
    }

    return -7;
  }

  else
  {
LABEL_20:
    v58 = v40 + *(a2 + 12);
    v59 = *(this + 12);
    v60 = *(this + 10);
    v61 = __OFSUB__(v59, v60);
    v62 = v59 - v60;
    if (v62 < 0 != v61)
    {
      v63 = 0;
    }

    else
    {
      v63 = v62 + 1;
    }

    if (v58 > v63 || ((v64 = *(this + 13), v65 = *(this + 11), v61 = __OFSUB__(v64, v65), v66 = v64 - v65, v66 < 0 == v61) ? (v67 = v66 + 1) : (v67 = 0), *(a2 + 15) + *(a2 + 13) > v67))
    {
      if (GetFlagsOnceToken != -1)
      {
        [OS_axr_data debugDescription];
      }

      if (((kDefaultAXRLogFlags | a4) & 2) != 0)
      {
        AXRLogError("region extent {%d, %d} lies outside the data window (size = {%d, %d})\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 14));
      }

      return -1;
    }

    else
    {
      a12 = axr_error_success;
      TileDecoder_storage::Init(&a13, *(this + 9), a2, this, a4, &a12, a7, a8);
      Planes = a12;
      if (a12 == axr_error_success)
      {
        Planes = TileDecoder::ReadPlanes(v68, v43, v69, v70, v71, v72, v73, v74);
      }

      (*a13)(&a13);
    }
  }

  return Planes;
}

void Part::GetReadPlanesInfo(axr_decoder *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v5 = *(a1 + 7);
  v6 = *(a1 + 3);
  if (v6)
  {
    v7 = a2 + 1;
    while (--v7)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    if (!*(v6 + 24))
    {
      v8 = *(v6 + 16);
      if (v8 == 1)
      {
        LODWORD(v6) = 16;
      }

      else
      {
        LODWORD(v6) = 32;
      }

      goto LABEL_11;
    }

    LODWORD(v6) = 0;
  }

LABEL_10:
  v8 = 1;
LABEL_11:
  *a3 = v5;
  *(a3 + 8) = (v6 * v5) >> 3;
  *(a3 + 16) = v6;
  *(a3 + 20) = v6;
  *(a3 + 24) = v8;
}

uint64_t Part::Init(Part *this, char *a2, unint64_t a3, unint64_t *a4, axr_flags_t a5)
{
  *(this + 16) = 0x3EA872B03EA01A37;
  *(this + 53) = 1;
  *this = a3;
  *(this + 34) = 1120403456;
  *(this + 6) = xmmword_296B8FCC0;
  *(this + 7) = xmmword_296B8FCB0;
  v10 = *(a2 + 1);
  if ((v10 & 0x200) != 0 && (v10 & 0x1800) != 0)
  {
    return -6;
  }

  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  v12 = Attribute::Init(&v130, a2, a3, *a4);
  *a4 = v12;
  if (v130 == *(&v131 + 1))
  {
    *a4 = v12 + 1;
    return -6;
  }

  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  do
  {
    result = Part::AbsorbAttribute(this, a2, &v130, &v129, a5);
    if (result)
    {
      return result;
    }

    v13 = *(&v131 + 1);
    v14 = v130;
    if (v130 == *(&v131 + 1))
    {
      v15 = 0;
    }

    else
    {
      v15 = &a2[v130];
    }

    if (*(&v130 + 1) >= v130)
    {
      v16 = *(&v130 + 1) - v130;
    }

    else
    {
      v16 = 0;
    }

    if (!strncmp(v15, "compression", v16) && (v14 != v13 ? (v17 = &a2[*(&v14 + 1)]) : (v17 = 0), v13 >= *(&v14 + 1) ? (v18 = v13 - *(&v14 + 1)) : (v18 = 0), !strncmp(v17, "compression", v18)))
    {
      ++v127;
    }

    else if (!strncmp(v15, "channels", v16) && (v14 != v13 ? (v19 = &a2[*(&v14 + 1)]) : (v19 = 0), v13 >= *(&v14 + 1) ? (v20 = v13 - *(&v14 + 1)) : (v20 = 0), !strncmp(v19, "chlist", v20)))
    {
      ++v125;
    }

    else if (!strncmp(v15, "dataWindow", v16) && (v14 != v13 ? (v21 = &a2[*(&v14 + 1)]) : (v21 = 0), v13 >= *(&v14 + 1) ? (v22 = v13 - *(&v14 + 1)) : (v22 = 0), !strncmp(v21, "box2i", v22)))
    {
      ++v124;
    }

    else if (!strncmp(v15, "displayWindow", v16))
    {
      if (v14 == v13)
      {
        v23 = 0;
      }

      else
      {
        v23 = &a2[*(&v14 + 1)];
      }

      if (v13 >= *(&v14 + 1))
      {
        v24 = v13 - *(&v14 + 1);
      }

      else
      {
        v24 = 0;
      }

      v25 = strncmp(v23, "box2i", v24);
      v26 = v126;
      if (!v25)
      {
        v26 = v126 + 1;
      }

      v126 = v26;
    }

    v27 = Attribute::Init(&v130, a2, a3, *a4);
    *a4 = v27;
  }

  while (v130 != *(&v131 + 1));
  *a4 = v27 + 1;
  result = -6;
  if (!v127 || !v125 || !v124 || !v126)
  {
    return result;
  }

  v35 = *(this + 30);
  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = v35;
      v35 = *(v35 + 40);
      *(v37 + 40) = v36;
      v36 = v37;
    }

    while (v35);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(this + 120);
  v39 = *(this + 104);
  v40 = vextq_s8(v39, v39, 8uLL).u64[0];
  v41 = vextq_s8(v38, v38, 8uLL).u64[0];
  v42 = v128;
  vst4_f32(v42->f32, *(&v38 - 1));
  *(this + 30) = v37;
  for (i = *(this + 2); i; i = *(i + 8))
  {
    result = ChannelDescription::IdentifyChannels(i, v128);
    if (result)
    {
      return result;
    }
  }

  *(this + 38) = 0;
  v44 = *(this + 18);
  if (v44)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = v44;
      v48 += v44[2] + 1;
      v47 += v44[4];
      v44 = *v44;
      *v49 = v46;
      --v45;
      v46 = v49;
    }

    while (v44);
    *(this + 38) = -v45;
    if (v45)
    {
      v50 = malloc_type_malloc(v48 + 4 * v47 + 24 * -v45, 0x1050040670DD226uLL);
      if (!v50)
      {
        do
        {
          v70 = *v49;
          free(v49);
          v49 = v70;
        }

        while (v70);
        return -5;
      }

      v51 = v50;
      v52 = 0;
      v53 = &v50[24 * *(this + 38)];
      v54 = &v53[4 * v47];
      do
      {
        v55 = *v49;
        memcpy(v54, v49[1], v49[2]);
        v54[v49[2]] = 0;
        v56 = &v51[24 * v52];
        *v56 = v54;
        *(v56 + 1) = v53;
        *(v56 + 2) = 0;
        v57 = v49[3];
        v58 = v49[2];
        v53 += 4 * v49[4];
        if (v57)
        {
          v59 = 0;
          v60 = v53 - 4;
          do
          {
            *v60 = *(v57 + 24);
            v60 -= 4;
            ++v59;
            v57 = *(v57 + 16);
          }

          while (v57);
          *(v56 + 2) = v59;
        }

        v54 += v58 + 1;
        free(v49);
        ++v52;
        v49 = v55;
      }

      while (v55);
      *(this + 18) = v51;
    }
  }

  *(this + 300) = (*(a2 + 1) & 0x1000) != 0;
  *(this + 301) = (*(a2 + 1) & 0x400) != 0;
  v61 = *(a2 + 1);
  v62 = 255;
  if ((v61 & 0x1800) != 0)
  {
    v62 = 2047;
  }

  v63 = *(this + 52);
  if ((v63 & 2) != 0)
  {
    v62 = 6143;
  }

  if (*(a2 + 1) & 0x200 | *(this + 52) & 1)
  {
    v64 = v62 | 0x2000;
  }

  else
  {
    v64 = v62;
  }

  v65 = *(this + 29);
  v66 = v64 & ~v65;
  if (v66)
  {
    v67 = &kExpectedAttributes;
    v68 = 1;
    v69 = 1;
    do
    {
      if ((v69 & v66) != 0)
      {
        if (GetFlagsOnceToken != -1)
        {
          AXRLogicalImageList::AXRLogicalImageList();
        }

        if (((kDefaultAXRLogFlags | a5) & 2) != 0)
        {
          AXRLogError("EXR file missing required header field: %s", v28, v29, v30, v31, v32, v33, v34, *v67);
        }
      }

      v69 = 1 << v68;
      v67 += 2;
      ++v68;
    }

    while (v69 <= v64);
    return -4;
  }

  if ((v65 & 0x200) == 0)
  {
    v63 = (v61 >> 9) & 1;
    *(this + 52) = v63;
  }

  v71 = *(this + 12);
  v72 = *(this + 10);
  if (v71 + 1 == v72)
  {
    return -6;
  }

  v73 = *(this + 13);
  v74 = *(this + 11);
  if (v73 + 1 == v74)
  {
    return -6;
  }

  if (v71 >= v72)
  {
    v75 = (v71 + 1 - v72);
  }

  else
  {
    v75 = 0;
  }

  if (v73 >= v74)
  {
    v76 = (v73 + 1 - v74);
  }

  else
  {
    v76 = 0;
  }

  if (*(this + 39) >= v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = *(this + 39);
  }

  if (*(this + 40) >= v76)
  {
    v78 = v76;
  }

  else
  {
    v78 = *(this + 40);
  }

  *(this + 39) = v77;
  *(this + 40) = v78;
  if ((v65 & 0x2000) != 0)
  {
    if (v77 <= 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = v77;
    }

    v81 = v75 + v80 - 1;
    if (v81 < v75)
    {
      v82 = (v81 - 0xFFFFFFFF / v80 * v80) / v80 + 0xFFFFFFFF / v80;
    }

    else
    {
      v82 = v81 / v80;
    }

    *(this + 42) = v82;
    if (v78 <= 1)
    {
      v83 = 1;
    }

    else
    {
      v83 = v78;
    }
  }

  else
  {
    v79 = *(this + 9);
    if (v79 > 7 || (v118 = GetDefaultCompressionMethodTileSize(axr_compression_t)::kCompressionMethodTileSizes[v79], (v119 = HIDWORD(v118)) == 0) || !v118)
    {
      if (GetFlagsOnceToken != -1)
      {
        AXRLogicalImageList::AXRLogicalImageList();
      }

      if (((kDefaultAXRLogFlags | a5) & 2) != 0)
      {
        AXRLogDebug("Compression method %u out of bounds", v28, v29, v30, v31, v32, v33, v34, *(this + 9));
      }

      return -3;
    }

    if (v118 == -1 || (v63 | 2) == 2)
    {
      LODWORD(v118) = v75;
    }

    *(this + 39) = v118;
    *(this + 40) = v119;
    *(this + 164) = 0;
    if (v118 <= 1)
    {
      v120 = 1;
    }

    else
    {
      v120 = v118;
    }

    v121 = v75 + v120 - 1;
    if (v121 < v75)
    {
      v122 = (v121 - 0xFFFFFFFF / v120 * v120) / v120 + 0xFFFFFFFF / v120;
    }

    else
    {
      v122 = v121 / v120;
    }

    *(this + 42) = v122;
    if (v119 <= 1)
    {
      v83 = 1;
    }

    else
    {
      v83 = v119;
    }
  }

  v84 = v76 + v83 - 1;
  if (v84 < v76)
  {
    v85 = (v84 - 0xFFFFFFFF / v83 * v83) / v83 + 0xFFFFFFFF / v83;
  }

  else
  {
    v85 = v84 / v83;
  }

  *(this + 43) = v85;
  *(this + 28) = 0;
  v86 = malloc_type_malloc(8 * *(this + 8), 0x2004093837F09uLL);
  *(this + 3) = v86;
  if (!v86)
  {
    return -5;
  }

  v87 = *(this + 164);
  RipLevelCount = GetRipLevelCount(v75 | (v76 << 32), v87);
  *(this + 36) = RipLevelCount;
  v89 = malloc_type_calloc((RipLevelCount * HIDWORD(RipLevelCount)), 8uLL, 0x2004093837F09uLL);
  *(this + 35) = v89;
  if (!v89)
  {
    return -5;
  }

  v97 = *(this + 73);
  if (v97)
  {
    v98 = 0;
    v99 = 0;
    v100 = v87 & 0xF;
    v101 = v87 >> 4;
    v102 = *(this + 72);
    v103 = v75 - (v87 >> 4);
    v104 = v76 - (v87 >> 4);
    while (!v102)
    {
LABEL_156:
      if (++v98 >= v97)
      {
        goto LABEL_172;
      }
    }

    v105 = 0;
    while (1)
    {
      if (v100 == 2)
      {
        v106 = v98;
      }

      else
      {
        v106 = v105;
      }

      LODWORD(v107) = (v103 + (v101 << v105)) >> v105;
      if (v107 <= 1)
      {
        v107 = 1;
      }

      else
      {
        v107 = v107;
      }

      LODWORD(v108) = (v104 + (v101 << v106)) >> v106;
      if (v108 <= 1)
      {
        v108 = 1;
      }

      else
      {
        v108 = v108;
      }

      v109 = *(this + 39);
      if (v109 <= 1)
      {
        v109 = 1;
      }

      v110 = v107 + v109 - 1;
      if (v110 < v107)
      {
        v111 = (v110 - 0xFFFFFFFF / v109 * v109) / v109 + 0xFFFFFFFF / v109;
      }

      else
      {
        v111 = v110 / v109;
      }

      v112 = *(this + 40);
      if (v112 <= 1)
      {
        v112 = 1;
      }

      v113 = v108 + v112 - 1;
      v114 = v113 < v108 ? (v113 - 0xFFFFFFFF / v112 * v112) / v112 + 0xFFFFFFFF / v112 : v113 / v112;
      v133.width = v111;
      v133.height = v114;
      MipTileInfo = MipTileInfo::CreateMipTileInfo((v107 | (v108 << 32)), v133, v91);
      v102 = *(this + 72);
      v116 = v105 + v98 * v102;
      *(*(this + 35) + 8 * v116) = MipTileInfo;
      v117 = *(*(this + 35) + 8 * v116);
      if (!v117)
      {
        return -5;
      }

      v99 += *v117;
      if (++v105 >= v102)
      {
        v97 = *(this + 73);
        goto LABEL_156;
      }
    }
  }

  v99 = 0;
LABEL_172:
  if ((*(this + 233) & 4) != 0)
  {
    if (v99 > *(this + 44))
    {
      if (GetFlagsOnceToken != -1)
      {
        AXRLogicalImageList::AXRLogicalImageList();
      }

      if (((kDefaultAXRLogFlags | a5) & 2) != 0)
      {
        AXRLogError("axr_decoder_create: EXR file corruption: declared chunks < expected chunks", v90, *&v91, v92, v93, v94, v95, v96, v123);
      }

      return -6;
    }
  }

  else
  {
    *(this + 44) = v99;
  }

  if ((a2[5] & 8) != 0)
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

uint64_t Part::AbsorbAttribute(Part *this, char *a2, Attribute *a3, unint64_t *a4, axr_flags_t a5)
{
  v5 = *a4;
  v6 = *a3;
  if (*a4 >= 0x12)
  {
    v8 = *(a3 + 3);
    v11 = *(a3 + 1);
    v9 = &a2[v6];
    if (v11 >= v6)
    {
      v13 = v11 - v6;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v7 = (&kExpectedAttributes)[2 * v5];
    v8 = *(a3 + 3);
    v9 = &a2[v6];
    if (v6 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = &a2[v6];
    }

    v11 = *(a3 + 1);
    v12 = strlen((&kExpectedAttributes)[2 * v5]);
    if (v11 >= v6)
    {
      v13 = v11 - v6;
    }

    else
    {
      v13 = 0;
    }

    if (v11 > v6 && v12 <= v13 && *v7 == *v10)
    {
      v15 = v12;
      if (strlen(v10) == v12 && (v15 == 1 || !strncmp(v10 + 1, v7 + 1, v15 - 1)))
      {
        result = ((&kExpectedAttributes)[2 * v5 + 1])(a2, this, a3, a5);
        v17 = *a4;
        *(this + 29) |= (result == 0) << *a4;
        *a4 = v17 + 1;
        if (!result)
        {
          goto LABEL_99;
        }

        return result;
      }
    }
  }

  v18 = 0;
  if (v6 == v8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v9;
  }

  v20 = &off_2A1DE98D8;
  do
  {
    if (v5 != v18)
    {
      v21 = *(v20 - 1);
      v22 = strlen(v21);
      if (v11 > v6)
      {
        v23 = v22;
        if (v22 <= v13 && *v21 == *v19 && strlen(v19) == v22 && (v23 == 1 || !strncmp(v19 + 1, v21 + 1, v23 - 1)))
        {
          result = (*v20)(a2, this, a3, a5);
          *(this + 29) |= (result == 0) << v18;
          *a4 = v18 + 1;
          if (!result)
          {
            goto LABEL_99;
          }

          return result;
        }
      }
    }

    ++v18;
    v20 += 2;
  }

  while (v18 != 18);
  if (v6 == v8)
  {
    v24 = 0;
  }

  else
  {
    v24 = &a2[v11];
  }

  if (v8 >= v11)
  {
    v25 = v8 - v11;
  }

  else
  {
    v25 = 0;
  }

  if (v8 <= v11 || v25 < 0xE || *v24 != 99 || strlen(v24) != 14 || strncmp(v24 + 1, "hromaticities", 0xDuLL))
  {
    v33 = this;
    if (v8 > v11 && v25 >= 7 && *v24 == 112 && strlen(v24) == 7 && !strncmp(v24 + 1, "review", 6uLL))
    {
      v34 = *(a3 + 2);
      v35 = v34 - 8;
      if (v34 >= 8)
      {
        v60 = &a2[v8];
        if (v6 == v8)
        {
          v60 = 0;
        }

        v61 = *v60;
        *(this + 66) = v61;
        v62 = *(v60 + 1);
        *(this + 67) = v62;
        *(this + 34) = 0;
        if (4 * v61 * v62 > v35)
        {
          v63 = v35 / (4 * v61);
          *(this + 67) = v63;
          LODWORD(v62) = v63;
          if (!v63)
          {
            LODWORD(v62) = 1;
            *(this + 67) = 1;
            v64 = (v34 + 0x3FFFFFFF8) >> 2;
            *(this + 66) = v64;
            LODWORD(v61) = v64;
            if (!v64)
            {
              LODWORD(v62) = 0;
              *(this + 67) = 0;
            }
          }
        }

        *(a3 + 4) = 1;
        result = 0;
        if (v61 * v62)
        {
          *(this + 34) = v8 + 8;
        }

        v36 = 0x20000;
      }

      else
      {
        v36 = 0;
        result = -4;
      }

      goto LABEL_98;
    }

    goto LABEL_99;
  }

  if (*(a3 + 2) < 0x20uLL)
  {
    v36 = 0;
    result = -4;
    v33 = this;
    goto LABEL_98;
  }

  if (v6 == v8)
  {
    v37 = 0;
  }

  else
  {
    v37 = &a2[v8];
  }

  v38 = *v37;
  v39 = *v37;
  v40 = v37[2];
  v41 = v37[4];
  v42 = *(v37 + 6);
  v43 = fabsf(*v37);
  v44 = fabsf(v40);
  v46 = fabsf(v41) < 8388600.0 && v44 < 8388600.0 && v43 < 8388600.0;
  v47 = fabsf(v37[6]);
  v48 = !v46 && v47 < 8388600.0;
  v33 = this;
  if (v48)
  {
    if (GetFlagsOnceToken != -1)
    {
      v71 = *v37;
      [OS_axr_data debugDescription];
      v39 = v71;
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      v65 = v39;
      AXRLogDebug("x Chromaticity too large. {%f, %f, %f, %f} Float can't represent less than integer precision above 2^23. chromaticity tag ignored.", v26, v27, v28, v29, v30, v31, v32, SLOBYTE(v65));
    }
  }

  else
  {
    v49 = v37[1];
    v50 = v49;
    v51 = v37[3];
    v52 = v37[5];
    v53 = v37[7];
    v54 = fabsf(v49);
    v55 = fabsf(v51);
    v57 = fabsf(v52) < 8388600.0 && v55 < 8388600.0 && v54 < 8388600.0;
    v58 = fabsf(v53);
    if (v57 || v58 >= 8388600.0)
    {
      result = 0;
      *(this + 26) = v38;
      *(this + 27) = v49;
      *(this + 28) = v40;
      *(this + 29) = v51;
      *(this + 30) = v41;
      *(this + 31) = v52;
      *(this + 32) = v42;
      *(this + 33) = v53;
      v36 = 0x10000;
      *(a3 + 4) = 1;
      goto LABEL_98;
    }

    if (GetFlagsOnceToken != -1)
    {
      v72 = v49;
      [OS_axr_data debugDescription];
      v50 = v72;
    }

    if (((kDefaultAXRLogFlags | a5) & 2) != 0)
    {
      v66 = v50;
      AXRLogDebug("y Chromaticity too large. {%f, %f, %f, %f} Float can't represent less than integer precision above 2^23. chromaticity tag ignored.", v26, v27, v28, v29, v30, v31, v32, SLOBYTE(v66));
    }
  }

  result = 0;
  v36 = 0x10000;
LABEL_98:
  *(v33 + 29) |= v36;
  if (!result)
  {
LABEL_99:
    operator new();
  }

  return result;
}

uint64_t GetRipLevelCount(unint64_t a1, axr_level_mode_t a2)
{
  v2 = a2 & 0xF;
  if ((a2 & 0xF) == 0)
  {
    return 0x100000001;
  }

  v4 = a2 & 0xF0;
  v5 = 63 - __clz(a1);
  if (!a1)
  {
    LODWORD(v5) = 0;
  }

  v6 = 63 - __clz(HIDWORD(a1));
  if (!HIDWORD(a1))
  {
    LODWORD(v6) = 0;
  }

  v7 = 64 - __clz(a1 - 1);
  if (a1 <= 1uLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = 64 - __clz(HIDWORD(a1) - 1);
  v10 = 0;
  if (a1 >> 33)
  {
    v10 = v9;
  }

  v11 = v4 == 16;
  if (v4 == 16)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (!v11)
  {
    v10 = v6;
  }

  if (v12 + 1 <= (v10 + 1))
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = v2 == 1;
  if (v2 == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = (v12 + 1);
  }

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = (v10 + 1);
  }

  return v15 | (v16 << 32);
}

void *MipTileInfo::CreateMipTileInfo(MipTileInfo *this, axr_size_t a2, axr_size_t a3)
{
  v4 = a2.width * a2.height;
  if (v4 >> 61)
  {
    return 0;
  }

  v5 = 8 * v4;
  v6 = 8 * v4 + 40;
  if (8 * v4 >= 0xFFFFFFFFFFFFFFD8 || __CFADD__(v6, v5))
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, v6 + v5, 0x1010040B121F656uLL);
  if (result)
  {
    result[3] = this;
    result[4] = a2;
    *result = v4;
    result[1] = result + 5;
    result[2] = &result[v5 / 8 + 5];
  }

  return result;
}

uint64_t Part::InitOffsets(int32x2_t *this, unsigned int *a2, unint64_t a3, unint64_t *a4, axr_flags_t a5)
{
  this[28] = *a4;
  if (a3 < 8)
  {
    return -6;
  }

  v5 = a2;
  if (*a2 != 20000630)
  {
    return -6;
  }

  v6 = a4;
  v7 = a3;
  v190 = a5;
  v9 = this[19].u32[1];
  v10 = this[20].u32[0];
  v11 = this[2];
  v12 = vbic_s8(vadd_s32(vsub_s32(this[6], this[5]), 0x100000001), vcgt_s32(this[5], this[6]));
  this[37].i32[0] = 0;
  v13 = v12.u32[1];
  if (this[4].i32[0])
  {
    v14 = v9;
    v15 = 0;
    v196 = v12;
    v16 = v12.u32[0];
    v17 = v12;
    do
    {
      result = ChannelDescription::CreateMipLevels(*&v11, v5, this, v17, this[20].u8[4]);
      if (result)
      {
        return result;
      }

      *(*&this[3] + 8 * v15) = v11;
      this[37].i32[0] += axr_type_get_size(*(*&v11 + 72));
      v11 = *(*&v11 + 8);
      ++v15;
    }

    while (v15 < this[4].u32[0]);
    v9 = v14;
    v12 = v196;
  }

  else
  {
    v16 = v12.u32[0];
  }

  v19 = this[4].u32[1];
  v20 = Part::InitOffsets(void const*,unsigned long,unsigned long &,axr_flags_t)::kRowSizeProcs[v19];
  v21 = 0;
  v203 = 0u;
  v199 = 0u;
  v200 = v9;
  v201 = v10;
  v202 = 0;
  *&v203 = 0;
  v204 = v20;
  v22 = this[20].u8[4];
  v23 = v22 & 0xF;
  if ((v22 & 0xF) != 0)
  {
    if ((v22 & 0xF0) == 0x10)
    {
      v141 = 64 - __clz(v16 - 1);
      if (v12.i32[0] <= 1u)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = v141;
      }

      v143 = 64 - __clz(v13 - 1);
      if (v13 <= 1)
      {
        LODWORD(v143) = 0;
      }
    }

    else
    {
      v21 = vceqz_s32(v12);
      v142 = 63 - __clz(v16);
      if (v21.i8[0])
      {
        LODWORD(v142) = 0;
      }

      v143 = 63 - __clz(v13);
      if (v21.i8[4])
      {
        LODWORD(v143) = 0;
      }
    }

    if (v142 + 1 <= (v143 + 1))
    {
      v144 = v143 + 1;
    }

    else
    {
      v144 = v142 + 1;
    }

    if (v23 == 1)
    {
      v145 = v144;
    }

    else
    {
      v145 = (v142 + 1);
    }

    if (v23 == 1)
    {
      v146 = 1;
    }

    else
    {
      v146 = (v143 + 1);
    }

    v24 = v145 | (v146 << 32);
  }

  else
  {
    v24 = 0x100000001;
  }

  v25 = v19 < 6;
  v26 = this[28];
  v27 = this[22].u32[0];
  if (*&v26 + 8 * v27 >= v7)
  {
    return -4;
  }

  v28 = v5 + *&v26;
  v29 = (v7 - *&v26) >> 3;
  if (v29 >= v27)
  {
    v30 = this[22].u32[0];
  }

  else
  {
    v30 = v29;
  }

  v31 = (v5[1] >> 10) & 4;
  v32 = this[26].i32[0];
  result = -6;
  if (v32 > 1)
  {
    if (v32 == 4)
    {
      return result;
    }

    if (v32 == 3)
    {
      v33 = 32;
      goto LABEL_58;
    }

    if (v32 != 2)
    {
      goto LABEL_24;
    }

    v34 = 20;
  }

  else
  {
    if (v32 == 0x80000000)
    {
      return result;
    }

    if (v32)
    {
      if (v32 == 1)
      {
        v33 = 20;
LABEL_58:
        v187 = v33;
        v181 = v23 == 2;
LABEL_59:
        v185 = v28;
        v166 = v19 < 6;
        v168 = v19;
        v170 = this[20].u8[4];
        v162 = v24;
        v194 = v20;
        v164 = v6;
        if (v30)
        {
          v53 = 0;
          v173 = 8 * v30;
          v192 = v10;
          v182 = v9;
          v197 = v12.i32[0];
          v179 = v30;
          v175 = (v5[1] >> 10) & 4;
          while (v53 + *&this[28] + 8 <= v7)
          {
            v54 = *&v185[v53] + v31;
            if (v54 >= v7)
            {
              return -6;
            }

            if (v54 + v187 >= v7)
            {
              break;
            }

            result = v5 + v54;
            v55 = this[26].u32[0];
            if (v55 > 4)
            {
              if (v55 == 0x80000000)
              {
LABEL_259:
                __break(1u);
                return result;
              }
            }

            else
            {
              if (((1 << v55) & 0xA) == 0)
              {
                goto LABEL_259;
              }

              v21 = *(result + 8);
            }

            v56 = v21.u32[0];
            if (v181)
            {
              v57 = this[36].u32[0];
              if (v21.i32[0] >= v57 || v21.i32[1] >= this[36].i32[1])
              {
LABEL_211:
                if ((v190 & 2) != 0)
                {
                  if (GetFlagsOnceToken != -1)
                  {
                    [OS_axr_data debugDescription];
                  }

                  AXRLogError("EXR File corrupted: tile reports mip level %u,%u outside of expected range %u,%u", v55, a3, v30, v20, v24, v9, v22, v56);
                }

                return -6;
              }

              v58 = v5;
              v59 = v7;
              v56 = v57 * v21.i32[1] + v21.u32[0];
            }

            else
            {
              if (v21.i32[0] != v21.i32[1])
              {
                if ((v190 & 2) != 0)
                {
                  if (GetFlagsOnceToken != -1)
                  {
                    [OS_axr_data debugDescription];
                  }

                  AXRLogError("EXR File corrupted: tile reports different x&y mip levels though not a ripmap", v55, a3, v30, v20, v24, v9, v22, v147);
                }

                return -6;
              }

              if (v21.i32[0] >= this[36].i32[0])
              {
                goto LABEL_211;
              }

              v58 = v5;
              v59 = v7;
            }

            v60 = *(*&this[35] + 8 * v56);
            v62 = *(v60 + 32);
            v61 = *(v60 + 36);
            AXRChunkHeader::GetTilePosition(result, v55);
            v63 = v21.i8[0];
            if (v21.i32[1] >= v61 || v21.i32[0] >= v62)
            {
              if ((v190 & 2) == 0)
              {
                return -6;
              }

              if (GetFlagsOnceToken != -1)
              {
                v198 = v21.i8[0];
                [OS_axr_data debugDescription];
                v21.i8[0] = v198;
              }

              v139 = v21.i8[0];
              goto LABEL_219;
            }

            v65 = v21.i32[0] + v21.i32[1] * v62;
            v66 = *(v60 + 16);
            if (*(v66 + 8 * v65))
            {
              if ((v190 & 2) != 0)
              {
                if (GetFlagsOnceToken != -1)
                {
                  [OS_axr_data debugDescription];
                }

                AXRLogError("EXR File corrupted: tile at %u,%u appears more than once", v49, a3, v30, v20, v24, v9, v22, v63);
              }

              return -6;
            }

            *(v66 + 8 * v65) = v54;
            v53 += 8;
            v31 = v175;
            v7 = v59;
            v5 = v58;
            v10 = v192;
            v9 = v182;
            v12.i32[0] = v197;
            v30 = v179;
            if (v173 == v53)
            {
              goto LABEL_81;
            }
          }

          return -4;
        }

LABEL_81:
        v177 = v5;
        v178 = v7;
        v140 = v31 | (8 * v30);
        v24 = v162;
        v6 = v164;
        v20 = v194;
        LODWORD(v22) = v170;
        LOBYTE(v19) = v168;
        v25 = v166;
LABEL_83:
        v160 = HIDWORD(v24);
        if (HIDWORD(v24))
        {
          v67 = 0;
          v176 = v25 & (0x2Fu >> v19);
          v68 = v22 >> 4;
          if (v9 <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = v9;
          }

          v70 = v69 - 1;
          if (v10 <= 1)
          {
            v71 = 1;
          }

          else
          {
            v71 = v10;
          }

          v72 = v71 - 1;
          v74 = v20 == CalculateB44RowSize || v20 == CalculateB44aRowSize;
          v152 = v24;
          v75 = v12.i32[0] - (v22 >> 4);
          v76 = v13 - (v22 >> 4);
          v148 = 0xFFFFFFFF / v69;
          v165 = v6;
          v193 = v10;
          v195 = v20;
          v163 = v24;
          v149 = v140;
          v156 = v69;
          v157 = v22 >> 4;
          v154 = v71;
          v155 = v69 - 1;
          v153 = v71 - 1;
          v150 = v76;
          v151 = v75;
          do
          {
            if (v24)
            {
              v77 = 0;
              v78 = v67 * v24;
              v158 = v67 * v24;
              v159 = v67;
              do
              {
                DWORD2(v203) = v78 + v77;
                if (v181)
                {
                  v79 = v67;
                }

                else
                {
                  v79 = v77;
                }

                if ((v75 + (v68 << v77)) >> v77 <= 1)
                {
                  v80 = 1;
                }

                else
                {
                  v80 = (v75 + (v68 << v77)) >> v77;
                }

                v81 = (v76 + (v68 << v79)) >> v79;
                if (v81 <= 1)
                {
                  v81 = 1;
                }

                v183 = v81;
                v167 = v80;
                v82 = v70 + v80;
                if (__CFADD__(v70, v80))
                {
                  v83 = (v82 - v148 * v69) / v69 + v148;
                }

                else
                {
                  v83 = v82 / v69;
                }

                v84 = v72 + v183;
                v161 = v77;
                if (__CFADD__(v72, v183))
                {
                  v85 = (v84 - 0xFFFFFFFF / v71 * v71) / v71 + 0xFFFFFFFF / v71;
                }

                else
                {
                  v85 = v84 / v71;
                }

                v169 = v85;
                if (v83)
                {
                  v86 = 0;
                  v171 = *(*&this[35] + 8 * (v78 + v77));
                  v174 = v83;
                  do
                  {
                    v87 = v200;
                    if (v200 >= v167 - v200 * v86)
                    {
                      v87 = v167 - v200 * v86;
                    }

                    DWORD1(v203) = v86;
                    LODWORD(v202) = v87;
                    if (v169)
                    {
                      v88 = 0;
                      v89 = 0;
                      v90 = v10;
                      v180 = v86;
                      do
                      {
                        v191 = v90;
                        if (v183 >= v90)
                        {
                          v91 = v90;
                        }

                        else
                        {
                          v91 = v183;
                        }

                        v92 = v183 - v201 * v88;
                        v93 = (v86 + v83 * v88);
                        v189 = v88 + 1;
                        v94 = (v88 + 1) * v10;
                        if (v94 >= v183)
                        {
                          v95 = v183;
                        }

                        else
                        {
                          v95 = v94;
                        }

                        if (v201 >= v92)
                        {
                          v96 = v92;
                        }

                        else
                        {
                          v96 = v201;
                        }

                        HIDWORD(v202) = v96;
                        v186 = v93;
                        Chunk = Part::GetChunk(this, v177, v178, DWORD2(v203), v93, &v199 + 1);
                        if (!Chunk)
                        {
                          return -4;
                        }

                        v98 = Chunk;
                        *&v199 = AXRChunkHeader::GetCompressedDataPtr(Chunk, this[26].i32[0], *(&v199 + 1));
                        if (!v199)
                        {
                          return -4;
                        }

                        CompressedDataSize = AXRChunkHeader::GetCompressedDataSize(v98, this[26].i32[0], 0xFFFFFFFFFFFFFFFFLL);
                        if (!CompressedDataSize)
                        {
                          return -6;
                        }

                        v100 = CompressedDataSize == HIDWORD(v202) * v202 * this[37].i32[0];
                        v101 = v195;
                        if (CompressedDataSize == HIDWORD(v202) * v202 * this[37].i32[0])
                        {
                          v101 = 0;
                        }

                        v204 = v101;
                        v102 = v176;
                        if (v100)
                        {
                          v102 = 1;
                        }

                        if (v102)
                        {
                          if (v89 >= v95)
                          {
                            LODWORD(v103) = 0;
                            v95 = v89;
                          }

                          else
                          {
                            v103 = 0;
                            v104 = 0;
                            v105 = this[4].u32[0];
                            v106 = v105;
                            do
                            {
                              LODWORD(v203) = v89;
                              if (v106)
                              {
                                v107 = 0;
                                do
                                {
                                  v108 = this[3];
                                  if (v74)
                                  {
                                    if (*(*(*&v108 + 8 * v107) + 72) == 1)
                                    {
                                      v109 = v195;
                                    }

                                    else
                                    {
                                      v109 = 0;
                                    }

                                    v204 = v109;
                                  }

                                  v110 = *(*&v108 + 8 * v107);
                                  v111 = v203;
                                  v112 = *(v110 + 104);
                                  if (v112 < 2 || (v111 = (*(v110 + 108) * v203) >> *(v110 + 112), v203 == v112 * v111))
                                  {
                                    v113 = v202;
                                    if (*(v110 + 80) >= 2u)
                                    {
                                      v113 = (*(v110 + 96) + *(v110 + 84) * v202) >> *(v110 + 88);
                                    }

                                    v114 = *(*(v110 + 40) + 8 * DWORD2(v203));
                                    v115 = *(v110 + 72);
                                    if (v204)
                                    {
                                      v116 = (v204)(&v199, v103, v111, v113, v115);
                                    }

                                    else
                                    {
                                      if (v115 == 1)
                                      {
                                        v117 = 2;
                                      }

                                      else
                                      {
                                        v117 = 4;
                                      }

                                      v118 = v113 * v117;
                                      v119 = 0x100000000;
                                      if ((v118 & 0xFFFFFFFF00000000) == 0)
                                      {
                                        v119 = 0;
                                      }

                                      v116 = v119 | v118;
                                    }

                                    v120 = (*(v114 + 8 * DWORD1(v203) + 24) + 8 * v111);
                                    *v120 = v103;
                                    v120[1] = v116;
                                    v121 = HIDWORD(v116) & 1;
                                    v41 = __CFADD__(v103, v116);
                                    v103 = (v103 + v116);
                                    if (v41)
                                    {
                                      LOBYTE(v121) = 1;
                                    }

                                    v104 |= v121;
                                    v105 = this[4].u32[0];
                                  }

                                  ++v107;
                                  v106 = v105;
                                }

                                while (v107 < v105);
                              }

                              LODWORD(v89) = v89 + 1;
                            }

                            while (v89 != v91);
                            v95 = v91;
LABEL_192:
                            v10 = v193;
                            if (v104)
                            {
                              return -14;
                            }
                          }
                        }

                        else
                        {
                          v122 = this[4].u32[0];
                          if (v122)
                          {
                            v123 = 0;
                            v103 = 0;
                            v104 = 0;
                            while (1)
                            {
                              if (v74)
                              {
                                v124 = v195;
                                if (*(*(*&this[3] + 8 * v123) + 72) != 1)
                                {
                                  v124 = 0;
                                }

                                v204 = v124;
                              }

                              v125 = v89;
                              if (v89 < v95)
                              {
                                break;
                              }

LABEL_191:
                              if (++v123 >= v122)
                              {
                                goto LABEL_192;
                              }
                            }

                            while (2)
                            {
                              LODWORD(v203) = v125;
                              v126 = *(*&this[3] + 8 * v123);
                              v127 = *(v126 + 104);
                              if (v127 <= 1)
                              {
                                v128 = v125;
                              }

                              else
                              {
                                v128 = (v125 * *(v126 + 108)) >> *(v126 + 112);
                                if (v125 != v127 * v128)
                                {
                                  goto LABEL_189;
                                }
                              }

                              v129 = v202;
                              if (*(v126 + 80) >= 2u)
                              {
                                v129 = (*(v126 + 96) + *(v126 + 84) * v202) >> *(v126 + 88);
                              }

                              v130 = *(*(v126 + 40) + 8 * DWORD2(v203));
                              v131 = *(v126 + 72);
                              if (v204)
                              {
                                v132 = (v204)(&v199, v103, v128, v129, v131);
                              }

                              else
                              {
                                if (v131 == 1)
                                {
                                  v133 = 2;
                                }

                                else
                                {
                                  v133 = 4;
                                }

                                v134 = v129 * v133;
                                v135 = 0x100000000;
                                if ((v134 & 0xFFFFFFFF00000000) == 0)
                                {
                                  v135 = 0;
                                }

                                v132 = v135 | v134;
                              }

                              v136 = (*(v130 + 8 * DWORD1(v203) + 24) + 8 * v128);
                              *v136 = v103;
                              v136[1] = v132;
                              v137 = HIDWORD(v132) & 1;
                              v41 = __CFADD__(v103, v132);
                              v103 = (v103 + v132);
                              if (v41)
                              {
                                LOBYTE(v137) = 1;
                              }

                              v104 |= v137;
LABEL_189:
                              if (++v125 >= v95)
                              {
                                v122 = this[4].u32[0];
                                goto LABEL_191;
                              }

                              continue;
                            }
                          }

                          LODWORD(v103) = 0;
                        }

                        v138 = this[32];
                        if (v138 <= v103)
                        {
                          v138 = v103;
                        }

                        this[32] = v138;
                        *(*(v171 + 8) + 8 * v186) = v103;
                        v90 = v191 + v10;
                        v89 = v95;
                        v88 = v189;
                        v83 = v174;
                        v86 = v180;
                      }

                      while (v189 != v169);
                    }

                    ++v86;
                  }

                  while (v86 != v83);
                }

                LODWORD(v24) = v163;
                v77 = v161 + 1;
                v6 = v165;
                v78 = v158;
                v67 = v159;
                v69 = v156;
                v68 = v157;
                v71 = v154;
                v70 = v155;
                v72 = v153;
                v76 = v150;
                v75 = v151;
              }

              while (v161 + 1 != v152);
            }

            ++v67;
            v140 = v149;
          }

          while (v67 != v160);
        }

        result = 0;
        *v6 += v140;
        return result;
      }

LABEL_24:
      v181 = v23 == 2;
      v187 = v7;
      v34 = v7;
      if (v32)
      {
        goto LABEL_59;
      }

      goto LABEL_28;
    }

    v34 = 8;
  }

  v181 = v23 == 2;
LABEL_28:
  v35 = (this[36].i32[0] * this[36].i32[1]);
  if (!v35)
  {
    v177 = v5;
    v178 = v7;
    v140 = 0;
    goto LABEL_83;
  }

  v36 = 0;
  v37 = 0;
  v38 = this[35];
  v172 = v38;
  while (1)
  {
    v39 = *(*&v38 + 8 * v37);
    v40 = *v39;
    v41 = !*v39 || v36 >= v30;
    if (!v41)
    {
      break;
    }

LABEL_35:
    if (++v37 == v35)
    {
      v177 = v5;
      v178 = v7;
      v140 = 8 * v36;
      goto LABEL_83;
    }
  }

  v42 = 0;
  v188 = *(v39 + 6);
  v184 = *(v39 + 7);
  v43 = 8 * v36;
  v44 = v36 + 1;
  while (1)
  {
    if (v43 + *&this[28] + 8 > v7)
    {
      return -4;
    }

    v45 = *&v28[v43] + v31;
    if (v45 >= v7)
    {
      return -6;
    }

    if (v45 + v34 >= v7)
    {
      return -4;
    }

    v46 = this[9].u32[0];
    v47 = v42;
    if (v46 == 2)
    {
      break;
    }

LABEL_51:
    if (v47 >= v40)
    {
      if ((v190 & 2) != 0)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        AXRLogError("EXR File corrupted: tile reports index %lu larger than expected number of tiles %lu", v46, a3, v30, v20, v24, v9, v22, v47);
      }

      return -6;
    }

    v51 = v39[2];
    a3 = *(v51 + 8 * v47);
    if (a3)
    {
      if ((v190 & 2) != 0)
      {
        if (GetFlagsOnceToken != -1)
        {
          [OS_axr_data debugDescription];
        }

        AXRLogError("EXR File corrupted: tile at %lu appears more than once", v51, a3, v30, v20, v24, v9, v22, v47);
      }

      return -6;
    }

    *(v51 + 8 * v47) = v45;
    ++v42;
    v52 = v44 + 1;
    if (v42 < v40)
    {
      v43 += 8;
      v41 = v44++ >= v30;
      if (!v41)
      {
        continue;
      }
    }

    v36 = v52 - 1;
    v38 = v172;
    goto LABEL_35;
  }

  v48 = 0;
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (!v32)
  {
LABEL_45:
    HIDWORD(v48) = *(v5 + v45);
  }

LABEL_46:
  v49 = 0;
  if (HIDWORD(v48) < v184 && v188 != 0)
  {
    v46 = 0 / v9;
    a3 = *(v39 + 8);
    v47 = v46 + a3 * (HIDWORD(v48) / v10);
    goto LABEL_51;
  }

  if ((v190 & 2) != 0)
  {
    if (GetFlagsOnceToken != -1)
    {
      [OS_axr_data debugDescription];
      LOBYTE(v48) = 0;
    }

    v139 = v48;
LABEL_219:
    AXRLogError("EXR File corrupted: tile reports position %u,%u outside of valid region %u,%u", v49, a3, v30, v20, v24, v9, v22, v139);
  }

  return -6;
}