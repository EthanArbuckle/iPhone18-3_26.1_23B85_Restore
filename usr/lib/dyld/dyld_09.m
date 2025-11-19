char **_cryptex_spec_iterate_select_app(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = configuration(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = arguments(v9, v10, v11, v12, v13, v14, v15, v16);
  boot_get();
  if ((*(*(v9 + 6792) + 67) & 0x40) == 0)
  {
    v18 = getpid();
    dlog(-1, "libignition: %d: livefs boot; skipping app cryptex\n", v19, v20, v21, v22, v23, v24, v18);
    v32 = *(v17 + 16);
    if ((v32 - 1) >= 2)
    {
      if (v32)
      {
        dyld_halt("unreachable", v25, v26, v27, v28, v29, v30, v31, v34);
      }

      return &_cryptex_spec_app_livefs;
    }
  }

  return v8;
}

void *cryptex_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  result[1] = a3;
  result[2] = a4;
  *result = a2;
  do
  {
    v5 = &result[v4];
    v5[4] = 0;
    *(v5 + 10) = -1;
    v4 += 2;
  }

  while (v4 != 8);
  return result;
}

uint64_t cryptex_open(uint64_t **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v246 = *a1;
  v247 = -1;
  v10 = configuration(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = *a1;
  bzero(value, 0x400uLL);
  memset(v250, 0, sizeof(v250));
  v12 = *(v11 + 7);
  v249 = -1;
  v13 = openat(*(a1[1] + 4), *(v11 + 9), 0x200000);
  v251 = v13;
  if (v13 < 0)
  {
    bzero(v248, 0x400uLL);
    realpathfd(*(a1[1] + 4), v248, "rootmnt");
    v180 = boot_get();
    v181 = (*v180)[1];
    v182 = (*v180)[2];
    v183 = *__error();
    v221 = *(v11 + 9);
    v236 = *__error();
    ignition_halt(v181, v183, v182, "failed to open canonical cryptex location: root = %s, subpath = %s: %d", v184, v185, v186, v187, v248);
  }

  v14 = fgetxattr(v13, "com.apple.root.cryptex", value, 0x400uLL, 0, 0);
  v15 = __error();
  if (v14 < 0)
  {
    if (!*v15)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v16, v17, v18, v19, v20, v21, v22, "xattr_len");
    }
  }

  else
  {
    *v15 = 0;
  }

  v23 = *__error();
  if (v23 == 93)
  {
    goto LABEL_10;
  }

  if (v23)
  {
    v193 = boot_get();
    v194 = (*v193)[1];
    v195 = (*v193)[2];
    v196 = *__error();
    v197 = *(v11 + 9);
    v237 = *__error();
    ignition_halt(v194, v196, v195, "failed to read xattr: path = %s, attr = %s: %d", v198, v199, v200, v201, v197);
  }

  value[v14] = 0;
  if (!_platform_strlen(value))
  {
    v32 = getpid();
    v208 = *a1[2];
    v223 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: root xattr empty\n", v33, v34, v35, v36, v37, v38, v32);
LABEL_10:
    v39 = getpid();
    v209 = *a1[2];
    v224 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: no root xattr present\n", v40, v41, v42, v43, v44, v45, v39);
    v31 = 0;
    goto LABEL_11;
  }

  v250[0] = value;
  ++v12;
  v24 = getpid();
  v222 = **a1;
  v207 = *a1[2];
  dlog(-1, "libignition: %d: %12s: %s: found root xattr: %s\n", v25, v26, v27, v28, v29, v30, v24);
  v31 = 1;
LABEL_11:
  closefd(&v251, "canonical cryptex");
  if (v12 > 3)
  {
    v188 = boot_get();
    ignition_halt((*v188)[1], 0, (*v188)[2], "path count overflow: actual = %lu, expected <= %lu", v189, v190, v191, v192, v12);
  }

  v245 = v10;
  v46 = &v12[-v31];
  if (v12 > v31)
  {
    v47 = (v11 + 32);
    v48 = &v250[v31];
    do
    {
      v49 = *v47++;
      *v48++ = v49;
      --v46;
    }

    while (v46);
  }

  v50 = 0;
  while (1)
  {
    v51 = v250[v50];
    v52 = getpid();
    v225 = **a1;
    v210 = *a1[2];
    dlog(-1, "libignition: %d: %12s: %s: opening preboot subdirectory: %s\n", v53, v54, v55, v56, v57, v58, v52);
    v59 = openat(*(a1[1] + 6), v51, 537919488);
    v249 = v59;
    v60 = __error();
    if (v59 < 0)
    {
      if (!*v60)
      {
        dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v61, v62, v63, v64, v65, v66, v67, "pbobjdir");
      }
    }

    else
    {
      *v60 = 0;
    }

    v68 = *__error();
    if (v68 == 2)
    {
      v84 = __error();
      if (v51 == value)
      {
        dyld_halt("root object directory does not exist: %s", v77, v78, v79, v80, v81, v82, v83, v51);
      }

      v69 = *v84;
      goto LABEL_24;
    }

    if (!v68)
    {
      break;
    }

    v69 = *__error();
    v70 = getpid();
    v211 = *a1[2];
    v226 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: failed to open preboot subdirectory: %s: %d\n", v71, v72, v73, v74, v75, v76, v70);
LABEL_24:
    if (v69 == 2 && ++v50 < v12)
    {
      continue;
    }

    if (v59 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v51 == value)
  {
    strlcpy(a1 + 128, value, 0x400uLL);
    a1[144] = (a1 + 16);
  }

  v140 = getpid();
  v231 = **a1;
  v216 = *a1[2];
  dlog(-1, "libignition: %d: %12s: %s: opened preboot subdirectory: %s\n", v141, v142, v143, v144, v145, v146, v140);
  v69 = 0;
  if ((v59 & 0x80000000) == 0)
  {
LABEL_27:
    *(a1 + 6) = xferfd(&v249);
  }

LABEL_28:
  if (v69 >= 0x6B)
  {
    goto LABEL_34;
  }

  if (v69)
  {
    v85 = getpid();
    v227 = **a1;
    v212 = *a1[2];
    dlog(-1, "libignition: %d: %12s: %s: failed to open object directory: %d\n", v86, v87, v88, v89, v90, v91, v85);
    goto LABEL_31;
  }

  v94 = openat(*(a1[1] + 4), *(v246 + 9), 0x100000);
  v247 = v94;
  if ((v94 & 0x80000000) != 0)
  {
    v69 = *__error();
    v151 = getpid();
    v232 = **a1;
    v217 = *a1[2];
    dlog(-1, "libignition: %d: %12s: %s: failed to open canonical root: %d\n", v152, v153, v154, v155, v156, v157, v151);
    goto LABEL_65;
  }

  v102 = 0;
  while (2)
  {
    v103 = *(v246 + v102 + 12);
    if (!v103)
    {
      v108 = getpid();
      v228 = **a1;
      v213 = *a1[2];
      v94 = dlog(-1, "libignition: %d: %12s: %s: object spec not present: %lu\n", v109, v110, v111, v112, v113, v114, v108);
      goto LABEL_47;
    }

    v104 = configuration(v94, v95, v96, v97, v98, v99, v100, v101);
    v105 = *(v103 + 16);
    v106 = *(v103 + 12);
    LODWORD(v250[0]) = -1;
    bzero(value, 0x400uLL);
    v107 = a1[144];
    if (!v105)
    {
      v105 = (*(v103 + 24))(v103, v104, value);
    }

    *v248 = openat(*(a1 + 6), v105, v106);
    if ((*v248 & 0x80000000) == 0)
    {
      LODWORD(v250[0]) = xferfd(v248);
      goto LABEL_46;
    }

    v69 = *__error();
    if (v69 >= 0x6B)
    {
      goto LABEL_34;
    }

    if (v69 != 2)
    {
      if (v69)
      {
        v165 = getpid();
        v243 = *v103;
        v234 = **a1;
        v219 = *a1[2];
        dlog(-1, "libignition: %d: %12s: %s: failed to open object: name = %s, type = %s: %d\n", v166, v167, v168, v169, v170, v171, v165);
        goto LABEL_64;
      }

LABEL_46:
      object_setfd(v103, (a1 + 4), v250);
      v115 = getpid();
      v116 = *v103;
      v240 = *v103;
      v244 = *(v103 + 40);
      v229 = **a1;
      v214 = *a1[2];
      v94 = dlog(-1, "libignition: %d: %12s: %s: opened object: name = %s, type = %s, slot = %llu\n", v117, v118, v119, v120, v121, v122, v115);
LABEL_47:
      if (++v102 != 4)
      {
        continue;
      }

      v147 = *(v245 + 6952);
      if (v147)
      {
        v148 = *(v147 + 46);
        if ((v148 - 1) < 3)
        {
          v149 = v246;
          CatalystMacTwinPatches = dyld4::JustInTimeLoader::getCatalystMacTwinPatches(v246);
LABEL_61:
          a1[12] = CatalystMacTwinPatches;
          v158 = getpid();
          v233 = **a1;
          v238 = *a1[12];
          v218 = *a1[2];
          dlog(-1, "libignition: %d: %12s: %s: selected im4m spec: %s\n", v159, v160, v161, v162, v163, v164, v158);
          a1[13] = *(v149 + 13);
          a1[14] = *(v149 + 14);
          a1[15] = *(v149 + 15);
          *a2 = xferfd(&v247);
          goto LABEL_66;
        }

        if (v148)
        {
          v202 = boot_get();
          ignition_halt((*v202)[1], 0, (*v202)[2], "bogus secure boot level: 0x%x", v203, v204, v205, v206, v148);
        }
      }

      v149 = v246;
      CatalystMacTwinPatches = *(v246 + 12);
      goto LABEL_61;
    }

    break;
  }

  v123 = getpid();
  v241 = *v103;
  v215 = *a1[2];
  v230 = **a1;
  dlog(-1, "libignition: %d: %12s: %s: object not present: name = %s, type = %s\n", v124, v125, v126, v127, v128, v129, v123);
  v130 = (*(v103 + 32))(v103, v107, 2);
  if (!v130)
  {
    v131 = getpid();
    v132 = *a1[2];
    v133 = **a1;
    v242 = *v103;
    v94 = dlog(-1, "libignition: %d: %12s: %s: object absence permitted: name = %s, type = %s, xattr path = %s\n", v134, v135, v136, v137, v138, v139, v131);
    goto LABEL_47;
  }

  v69 = v130;
  if (v130 >= 0x6B)
  {
    goto LABEL_34;
  }

LABEL_64:
  v172 = getpid();
  v239 = *v103;
  v220 = *a1[2];
  v235 = **a1;
  dlog(-1, "libignition: %d: %12s: %s: failed to open object: %s: %d\n", v173, v174, v175, v176, v177, v178, v172);
LABEL_65:
  if (!v69)
  {
LABEL_66:
    closefd_optional(&v247, "canonical root");
    return 0;
  }

LABEL_31:
  v92 = (a1 + 4);
  v93 = 4;
  do
  {
    object_fd_close(v92);
    v92 += 16;
    --v93;
  }

  while (v93);
  closefd_optional(&v247, "canonical root");
  if (v69 >= 0x6B)
  {
LABEL_34:
    dyld_halt("error not set to valid posix code: %d", v77, v78, v79, v80, v81, v82, v83, v69);
  }

  return v69;
}

const char *cryptex_graft(uint64_t **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  arguments(a1, a2, a3, a4, a5, a6, a7, a8);
  v141[0] = -1;
  bzero(v140, 0x400uLL);
  bzero(v139, 0x400uLL);
  bzero(v138, 0x400uLL);
  bzero(v137, 0x400uLL);
  v135 = 0u;
  memset(v136, 0, sizeof(v136));
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v10 = *a1;
  v11 = *(*a1 + 5);
  v104[0] = 1;
  v104[1] = v11;
  v105 = -1;
  v106 = -1;
  v12 = v10[8];
  v103 = -1;
  v13 = a1[13];
  if (v13)
  {
    v14 = object_getfd(v13, (a1 + 4));
    v15 = object_getfd(a1[14], (a1 + 4));
    v16 = object_getfd(a1[12], (a1 + 4));
    realpathfd(v14, v140, "dmg");
    realpathfd(v15, v139, "seal im4p");
    realpathfd(v16, v137, "chosen im4m");
    v17 = openat(*(a1[1] + 5), v12, 537919488);
    v141[0] = v17;
    if (v17 < 0)
    {
      v29 = *__error();
      v44 = getpid();
      v90 = *a1[2];
      v98 = **a1;
      dlog(-1, "libignition: %d: %12s: %s: failed to open graft point: %s: %d\n", v45, v46, v47, v48, v49, v50, v44);
    }

    else
    {
      realpathfd(v17, v138, "uncovered graft point");
      v106 = v15;
      LODWORD(v105) = v16;
      *&v107 = *(*a1 + 3);
      v18 = getpid();
      v87 = *a1[2];
      v95 = **a1;
      dlog(-1, "libignition: %d: %12s: %s: grafting: method = syscall, dmg = %s, seal = %s, graft point = %s, im4m = %s\n", v19, v20, v21, v22, v23, v24, v18);
      if (graftdmg(v14, v138, *(*a1 + 2), v104, v25, v26, v27, v28))
      {
        v29 = *__error();
        v30 = getpid();
        v96 = **a1;
        v88 = *a1[2];
        dlog(-1, "libignition: %d: %12s: %s: graftdmg: %d\n", v31, v32, v33, v34, v35, v36, v30);
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v37 = getpid();
    v89 = *a1[2];
    v97 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: cryptex has no associated disk image\n", v38, v39, v40, v41, v42, v43, v37);
    v29 = 21;
  }

  v51 = ((*a1)[17])(a1, v29);
  v52 = getpid();
  v59 = *a1[2];
  v60 = **a1;
  if (v51)
  {
    v99 = **a1;
    v91 = *a1[2];
    dlog(-1, "libignition: %d: %12s: %s: graft failed: %d\n", v53, v54, v55, v56, v57, v58, v52);
  }

  else
  {
    if (v29 == 37)
    {
      v101 = **a1;
      v93 = *a1[2];
      dlog(-1, "libignition: %d: %12s: %s: cryptex content already available: dmg = %s, graft point = %s, ignored error = %d\n", v53, v54, v55, v56, v57, v58, v52);
      v103 = openat(*(a1[1] + 5), v12, 537919488);
      if (v103 < 0)
      {
        v61 = boot_get();
        v62 = (*v61)[1];
        v63 = (*v61)[2];
        v64 = *__error();
        v85 = *__error();
        ignition_halt(v62, v64, v63, "failed to open covered graft point: %d", v65, v66, v67, v68, v85);
      }
    }

    else if (v29)
    {
      v94 = *a1[2];
      v102 = **a1;
      dlog(-1, "libignition: %d: %12s: %s: cryptex not grafted; ignoring failure: dmg = %s, ignored error = %d\n", v53, v54, v55, v56, v57, v58, v52);
      v103 = open("/dev/null", 0);
      if (v103 < 0)
      {
        v77 = boot_get();
        v78 = (*v77)[1];
        v79 = (*v77)[2];
        v80 = *__error();
        v86 = *__error();
        ignition_halt(v78, v80, v79, "failed to open /dev/null for fallback: %d", v81, v82, v83, v84, v86);
      }
    }

    else
    {
      v100 = **a1;
      v92 = *a1[2];
      dlog(-1, "libignition: %d: %12s: %s: grafted cryptex: dmg = %s, graft point = %s, ignored error = %d\n", v53, v54, v55, v56, v57, v58, v52);
      v103 = xferfd(v141);
    }

    *a2 = xferfd(&v103);
  }

  closefd_optional(v141, "uncovered graft point");
  closefd_optional(&v103, "covered graft point");
  if (v51 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v69, v70, v71, v72, v73, v74, v75, v51);
  }

  return v51;
}

uint64_t cryptex_load_trust_cache(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = arguments(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = a1[2][5] + 2;
  bzero(v121, 0x400uLL);
  v119 = 0;
  v120 = 0;
  memset(v118, 0, sizeof(v118));
  v116 = 0;
  v117 = 0;
  memset(v115, 0, sizeof(v115));
  if (*v9 < v10)
  {
    v11 = getpid();
    v114 = *v9;
    v101 = *a1[2];
    v106 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: ignition level insufficient: operation = load trust cache, actual = %llu, required >= %llu\n", v12, v13, v14, v15, v16, v17, v11);
    return 0;
  }

  if (!a1[15])
  {
    v29 = getpid();
    v30 = *a1[2];
    v108 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: cryptex already available; skipping trust cache load\n", v31, v32, v33, v34, v35, v36, v29);
    return 0;
  }

  v18 = object_getfd(a1[12], (a1 + 4));
  v19 = object_getfd(a1[15], (a1 + 4));
  v20 = v19;
  if (a1[144] && v19 < 0)
  {
    v21 = getpid();
    v22 = *a1[2];
    v107 = **a1;
    dlog(-1, "libignition: %d: %12s: %s: trust cache not present in rooted cryptex\n", v23, v24, v25, v26, v27, v28, v21);
    return 0;
  }

  realpathfd(v19, v121, "trust cache");
  v39 = getpid();
  v109 = **a1;
  v102 = *a1[2];
  dlog(-1, "libignition: %d: %12s: %s: trust cache path = %s\n", v40, v41, v42, v43, v44, v45, v39);
  v46 = buff_map_fd_anon(v118, &v120, v20);
  if (v46)
  {
    v37 = v46;
    v47 = getpid();
    v110 = **a1;
    v103 = *a1[2];
    dlog(-1, "libignition: %d: %12s: %s: failed to read trust cache im4p: %d\n", v48, v49, v50, v51, v52, v53, v47);
  }

  else
  {
    v61 = buff_map_fd_anon(v115, &v117, v18);
    if (v61)
    {
      v37 = v61;
      v69 = getpid();
      v111 = **a1;
      v104 = *a1[2];
      dlog(-1, "libignition: %d: %12s: %s: failed to read manifest: %d\n", v70, v71, v72, v73, v74, v75, v69);
    }

    else
    {
      length_uint32 = buff_get_length_uint32(v120, v62, v63, v64, v65, v66, v67, v68);
      v84 = buff_get_length_uint32(v117, v77, v78, v79, v80, v81, v82, v83);
      if (!amfi_load_trust_cache)
      {
        return 78;
      }

      if (!amfi_load_trust_cache(*(*a1 + 16), *v120, length_uint32, *v117, v84, 0, 0, v85))
      {
        v93 = getpid();
        v94 = *a1[2];
        v113 = **a1;
        dlog(-1, "libignition: %d: %12s: %s: loaded cryptex trust cache\n", v95, v96, v97, v98, v99, v100, v93);
        return 0;
      }

      v37 = *__error();
      v86 = getpid();
      v112 = **a1;
      v105 = *a1[2];
      dlog(-1, "libignition: %d: %12s: %s: failed to load trust cache: %d\n", v87, v88, v89, v90, v91, v92, v86);
    }
  }

  if (v37 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v54, v55, v56, v57, v58, v59, v60, v37);
  }

  return v37;
}

void *cryptex_destroy(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    closefd_optional((v1 + 24), "object directory");
    v3 = v1 + 32;
    v4 = 4;
    do
    {
      result = object_fd_close(v3);
      v3 += 16;
      --v4;
    }

    while (v4);
    *v2 = 0;
  }

  return result;
}

uint64_t _preboot_fire(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  configuration(a1, a2, a3, a4, a5, a6, a7, a8);
  memset(v134, 0, 255);
  bzero(v133, 0x400uLL);
  v132 = 0;
  v130 = 0;
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
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  LOWORD(v111) = 1;
  v131 = 0x6300000063;
  memset(&v109, 0, sizeof(v109));
  v107 = -1;
  v108 = -1;
  v106 = -1;
  devnode_by_role = ignition_get_devnode_by_role(&dword_10, v134, v10, v11, v12, v13, v14, v15);
  v17 = getpid();
  v24 = *a1;
  if (!devnode_by_role)
  {
    v97 = *a1;
    dlog(-1, "libignition: %d: %12s: preboot device: %s\n", v18, v19, v20, v21, v22, v23, v17);
    devnode_by_role = ignition_get_mount_point_by_role(16, v133, &v132);
    v25 = getpid();
    v32 = *a1;
    if (devnode_by_role)
    {
      v98 = *a1;
      dlog(-1, "libignition: %d: %12s: failed to get preboot mount point: %d\n", v26, v27, v28, v29, v30, v31, v25);
      goto LABEL_6;
    }

    v99 = *a1;
    dlog(-1, "libignition: %d: %12s: preboot mount point: %s\n", v26, v27, v28, v29, v30, v31, v25);
    v41 = open(v132, 537919488);
    v108 = v41;
    if (v41 < 0)
    {
      v49 = getpid();
      v101 = *a1;
      dlog(-1, "libignition: %d: %12s: failed to open preboot mount point: %d\n", v50, v51, v52, v53, v54, v55, v49);
    }

    else
    {
      if (fstat64(v41, &v109))
      {
        devnode_by_role = *__error();
        v42 = getpid();
        v100 = *a1;
        dlog(-1, "libignition: %d: %12s: failed to stat preboot mount point: %d\n", v43, v44, v45, v46, v47, v48, v42);
        goto LABEL_6;
      }

      *&v110 = v134;
      v131 = *&v109.st_uid;
      v56 = getpid();
      v102 = *a1;
      dlog(-1, "libignition: %d: %12s: mounting preboot: dev = %s, uid = %u, gid = %u\n", v57, v58, v59, v60, v61, v62, v56);
      v63 = fmount_90140467("apfs", v108, 0x100000, v134);
      if (v63 == 16)
      {
        v72 = getpid();
        v104 = *a1;
        dlog(-1, "libignition: %d: %12s: preboot already mounted: device = %s, mount point = %s\n", v73, v74, v75, v76, v77, v78, v72);
        v64 = xferfd(&v108);
        v107 = v64;
      }

      else
      {
        devnode_by_role = v63;
        if (v63)
        {
          v89 = getpid();
          v105 = *a1;
          dlog(-1, "libignition: %d: %12s: failed to mount preboot: %d\n", v90, v91, v92, v93, v94, v95, v89);
          goto LABEL_6;
        }

        v64 = open(v132, 537919488);
        v107 = v64;
        if (v64 < 0)
        {
          devnode_by_role = *__error();
          v65 = getpid();
          v103 = *a1;
          dlog(-1, "libignition: %d: %12s: failed to open preboot mount: %d\n", v66, v67, v68, v69, v70, v71, v65);
          goto LABEL_6;
        }
      }

      v106 = dupfd(v64, "preboot mount");
      boot_set_root(a3, &_boot_root_preboot, &v107, v79, v80, v81, v82, v83);
      boot_set_root(a3, &_boot_root_preboot_groupdir, &v106, v84, v85, v86, v87, v88);
    }

    devnode_by_role = 0;
    goto LABEL_6;
  }

  v96 = *a1;
  dlog(-1, "libignition: %d: %12s: failed to get preboot device: %d\n", v18, v19, v20, v21, v22, v23, v17);
LABEL_6:
  closefd_optional(&v108, "mounted-over preboot");
  closefd_optional(&v107, "preboot");
  if (devnode_by_role >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v33, v34, v35, v36, v37, v38, v39, devnode_by_role);
  }

  return devnode_by_role;
}

uint64_t _cryptex1_sniff_fire(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v22, 0, sizeof(v22));
  v3 = fstatat64(*(a3 + 24), "cryptex1", &v22, 0);
  v4 = __error();
  if (v3 < 0)
  {
    if (!*v4)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v5, v6, v7, v8, v9, v10, v11, "ret");
    }
  }

  else
  {
    *v4 = 0;
  }

  result = *__error();
  if (result)
  {
    if (result != 2)
    {
      v13 = boot_get();
      v14 = (*v13)[1];
      v15 = (*v13)[2];
      v16 = *__error();
      v17 = __error();
      ignition_halt(v14, v16, v15, "failed to stat cryptex1 canary: %d", v18, v19, v20, v21, *v17);
    }

    return 8;
  }

  return result;
}

char *_derive_ticket_name(uint64_t a1, uint64_t *a2, char *a3, int a4)
{
  v7 = _simple_salloc();
  v8 = v7;
  if (a4)
  {
    if (a2)
    {
      v9 = *a2;
      _simple_sprintf(v7, "supplemental.%s.%llX.im4m");
    }

    else
    {
      _simple_sprintf(v7, "supplemental.%s.im4m");
    }
  }

  else if (a2)
  {
    v10 = *a2;
    _simple_sprintf(v7, "apticket.%s.%llX.im4m");
  }

  else
  {
    _simple_sprintf(v7, "apticket.%s.im4m");
  }

  v11 = _simple_string(v8);
  strlcpy(a3, v11, 0xFFuLL);
  _simple_sfree(v8);
  return a3;
}

uint64_t object_absence_policy_optional(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 2)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t object_absence_policy_root_optional(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return a3;
  }
}

uint64_t object_setfd(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = a2 + 16 * *(a1 + 40);
  if (*v5)
  {
    closefd((v5 + 8), "object");
  }

  *v5 = a1;
  result = xferfd(a3);
  *(v5 + 8) = result;
  return result;
}

uint64_t object_fd_close(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    result = closefd((result + 8), "object");
    *v1 = 0;
  }

  return result;
}

void ignition_halt(void *a1, int a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v13 = boot_get();
  v14 = configuration_unsafe();
  v15 = _simple_salloc();
  if (v15)
  {
    v17 = v15;
    _simple_vsprintf(v15, a4, &a9);
    v16 = _simple_string(v17);
  }

  else
  {
    v16 = "panic: [failed to allocate panic message]";
  }

  if (*(v14 + 7032) == 1)
  {
    v18 = open("/dev/console", 1);
    if ((v18 & 0x80000000) == 0)
    {
      fsync(v18);
    }

    ignition_write_BRA_blob(v13, v19, v16, a2);
  }

  abort_with_reason(&stru_20.cmd + 3, a1, v16, a3);
}

uint64_t dupfd2(int a1, int a2, const char *a3)
{
  result = dup2(a1, a2);
  if (a1 < 0)
  {
    v6 = boot_get();
    v7 = (*v6)[1];
    v8 = (*v6)[2];
    v9 = *__error();
    v14 = *__error();
    ignition_halt(v7, v9, v8, "failed to dup %s: src fd = %d, dst fd = %d: %d", v10, v11, v12, v13, a3);
  }

  return result;
}

uint64_t sleep_ns(unint64_t a1)
{
  v2 = mach_absolute_time();
  if (_tbi)
  {
    v3 = *__tbi;
    v4 = *(__tbi + 4);
  }

  else
  {
    v5 = mach_timebase_info(&dword_A9200);
    if (v5)
    {
      v7 = v5;
      v8 = boot_get();
      ignition_halt((*v8)[1], v7, (*v8)[2], "mach_timebase_info: 0x%x", v9, v10, v11, v12, v7);
    }

    v3 = dword_A9200;
    __tbi = &dword_A9200;
    v4 = dword_A9204;
    *&qword_A9210 = dword_A9200 / dword_A9204;
    qword_A9208 = 0xFFFFFFFFFFFFFFFFLL / dword_A9200;
    _tbi = &__tbi;
  }

  if (v3 != v4)
  {
    a1 = a1 / v3 * v4;
  }

  return mach_wait_until(a1 + v2);
}

int fmount_90140467(const char *a1, int a2, int a3, void *a4)
{
  v5 = v4;
  if (!a4)
  {
    goto LABEL_4;
  }

  bzero(&v19, 0x878uLL);
  if (fstatfs64(a2, &v19))
  {
LABEL_5:
    v17 = *__error();
    goto LABEL_6;
  }

  if (_platform_strcmp(a4, v19.f_mntfromname))
  {
LABEL_4:
    LODWORD(v17) = fmount(a1, a2, a3, v5);
    if (!v17)
    {
      return v17;
    }

    goto LABEL_5;
  }

  v17 = 16;
LABEL_6:
  if (v17 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v10, v11, v12, v13, v14, v15, v16, v17);
  }

  return v17;
}

ssize_t ignition_write_BRA_blob(const char ***a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  HIBYTE(v16) = -86;
  strlcpy(v15 + 2, **a1, 0x18uLL);
  strlcpy(&v15[1] + 10, *a1[1], 0x18uLL);
  *(&v15[3] + 2) = a4;
  strlcpy(&v15[3] + 10, "AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE", 0x25uLL);
  strlcpy(&v15[5] + 15, a3, 0x40uLL);
  result = sysctlbyname("security.mac.img4.ignition_failure_blob", 0, 0, v15, 0xA0uLL);
  if (result)
  {
    v8 = __error();
    return _simple_dprintf(2, "failed to write BRA failure blob: %d\n", v9, v10, v11, v12, v13, v14, *v8);
  }

  return result;
}

const char *ignition_get_devnode_by_role(const char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = -86;
  v26[0] = -22014;
  v26[1] = a1;
  memset(v27, 0, sizeof(v27));
  if (a1 != 256)
  {
    if (a1 != 16)
    {
      dyld_halt("unsupported role: 0x%x", a2, a3, a4, a5, a6, a7, a8, a1);
    }

    if (fsctl("/", 0xC1044A50uLL, v26, 0))
    {
      v9 = "libignition: %d: failed to lookup preboot: %d\n";
      goto LABEL_7;
    }

LABEL_9:
    strlcpy(a2, v27, 0xFFuLL);
    return 0;
  }

  if (!fsctl("/", 0xC1044A50uLL, v26, 0))
  {
    goto LABEL_9;
  }

  v9 = "libignition: %d: failed to lookup xART device: %d\n";
LABEL_7:
  v10 = *__error();
  v11 = getpid();
  dlog(-1, v9, v12, v13, v14, v15, v16, v17, v11);
  if (v10 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v18, v19, v20, v21, v22, v23, v24, v10);
  }

  return v10;
}

uint64_t ignition_get_mount_point_by_role(int a1, char *a2, char **a3)
{
  bzero(v37, 0x938uLL);
  v36 = 2360;
  v6 = sysctlbyname("vfs.generic.apfs.edt_fstab", v37, &v36, 0, 0);
  v7 = __error();
  if (v6 < 0)
  {
    if (!*v7)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v8, v9, v10, v11, v12, v13, v14, "ret");
    }
  }

  else
  {
    *v7 = 0;
  }

  v15 = *__error();
  if (v15)
  {
    if (v15 == 12)
    {
      v36 = 0;
      sysctlbyname("vfs.generic.apfs.edt_fstab", 0, &v36, 0, 0);
      v26 = boot_get();
      ignition_halt((*v26)[1], 0, (*v26)[2], "device tree fstab buffer not large enough: actual = %lu, expected >= %lu, required DEVICE_TREE_FSTAB_COUNT >= %lu", v27, v28, v29, v30, &stru_930.dataoff);
    }

    result = *__error();
    if (result >= 0x6B)
    {
      dyld_halt("error not set to valid posix code: %d", v17, v18, v19, v20, v21, v22, v23, result);
    }
  }

  else
  {
    v24 = v36 / 0xEC;
    if (v36 % 0xEC)
    {
      v31 = boot_get();
      ignition_halt((*v31)[1], 0, (*v31)[2], "non-integral fstab buffer returned; possible mismatch between kernel and userspace structs: total = %lu, expected element size = %lu", v32, v33, v34, v35, v36);
    }

    if (v36 < 0xEC)
    {
      return 2;
    }

    else
    {
      for (i = &v38; *i != a1; i += 236)
      {
        if (!--v24)
        {
          return 2;
        }
      }

      strlcpy(a2, i - 200, 0x400uLL);
      result = 0;
      *a3 = a2;
    }
  }

  return result;
}

const char *_open_as(int a1, int *a2)
{
  v4 = 0;
  v5 = *a2;
  *a2 = -1;
  do
  {
    v6 = open("/dev/null", a1, 0);
    v7 = __error();
    if (v6 < 0)
    {
      if (!*v7)
      {
        dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v8, v9, v10, v11, v12, v13, v14, "srcfd");
      }
    }

    else
    {
      *v7 = 0;
    }

    v15 = *__error();
    if (v15)
    {
      if (v15 != 5)
      {
        v34 = v6;
        v15 = *__error();
        if (v6 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v15 = *__error();
      sleep_ns(0x2FAF080uLL);
      ++v4;
    }
  }

  while (v6 < 0 && v4 < 0xA);
  v34 = v6;
  if (v4 == 10)
  {
    *v33 = -1;
    if (pipe(v33))
    {
      v24 = boot_get();
      v25 = (*v24)[1];
      v26 = (*v24)[2];
      v27 = *__error();
      v28 = __error();
      ignition_halt(v25, v27, v26, "failed to create pipe for 88828241 workaround: %d", v29, v30, v31, v32, *v28);
    }

    v6 = v33[0];
    v34 = v33[0];
    closefd(&v33[1], "pipe write end");
    v15 = 0;
  }

  if ((v6 & 0x80000000) == 0)
  {
LABEL_16:
    *a2 = dupfd2(v6, v5, "reserved src fd");
    if (v6 == v5)
    {
      v34 = -1;
    }
  }

LABEL_18:
  closefd_optional(&v34, "reserved fd src");
  if (v15 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v16, v17, v18, v19, v20, v21, v22, v15);
  }

  return v15;
}

uint64_t _cryptex_graft_failure_app_livefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v16 = *(arguments(a1, a2, a3, a4, a5, a6, a7, a8) + 16);
  if (v16 < 2)
  {
    return 0;
  }

  if (v16 != 2)
  {
    dyld_halt("unreachable", v9, v10, v11, v12, v13, v14, v15, v18);
  }

  return v8;
}

size_t dyld_tolower_cstr(const char *a1, uint64_t a2, unint64_t a3)
{
  result = _platform_strlen(a1);
  if (result + 1 < a3)
  {
    v7 = result + 1;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v7 >= 2)
  {
    v9 = 0;
    do
    {
      v10 = a1[v9];
      strcpy(v11, "abcdefghijklmnopqrstuvwxyz");
      if ((v10 - 65) <= 0x19)
      {
        LOBYTE(v10) = v11[(v10 - 65)];
      }

      *(a2 + v9++) = v10;
    }

    while (v9 < v8);
  }

  if (v7)
  {
    *(a2 + v7 - 1) = 0;
  }

  return result;
}

const char *buff_get_length_uint32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 8);
  if (result >> 32)
  {
    dyld_halt("buffer length not expressible as unsigned 32-bit integer: %lu", a2, a3, a4, a5, a6, a7, a8, result);
  }

  return result;
}

uint64_t buff_map_fd_anon(void *a1, void *a2, int a3)
{
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v6;
  *v19.st_qspare = v6;
  v19.st_birthtimespec = v6;
  *&v19.st_size = v6;
  v19.st_mtimespec = v6;
  v19.st_ctimespec = v6;
  *&v19.st_uid = v6;
  v19.st_atimespec = v6;
  *&v19.st_dev = v6;
  if (fstat64(a3, &v19))
  {
    return *__error();
  }

  st_size = v19.st_size;
  if (v19.st_size < 0)
  {
    dyld_halt("value not representable as size_t", v7, v8, v9, v10, v11, v12, v13, *&v19.st_dev);
  }

  v16 = mmap(0, v19.st_size, 3, 4098, -1, 0);
  if (v16 == -1)
  {
    return *__error();
  }

  v17 = v16;
  while (1)
  {
    v18 = pread(a3, v17, st_size, 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    result = *__error();
    if (result != 4)
    {
      goto LABEL_13;
    }
  }

  if (v18 == st_size)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

LABEL_13:
  *a1 = v17;
  a1[1] = st_size;
  a1[2] = 0;
  if (a2)
  {
    *a2 = a1;
  }

  return result;
}

uint64_t os_log_simple_type_from_asl(int a1)
{
  v1 = a1 & ~(a1 >> 31);
  if (v1 >= 7)
  {
    v1 = 7;
  }

  return os_log_simple_type_from_asl__level2ostype[v1];
}

uint64_t __os_log_simple_offset(uint64_t a1, char *a2, const void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = mach_continuous_time();
  v13 = getpid();
  *&v25 = v13;
  if (proc_pidinfo(v13, 17, 0, buffer, 56) == 56)
  {
    *(&v25 + 1) = v32;
    *&v26 = v33;
    memmove(&v28 + 8, buffer, 0x10uLL);
  }

  if (a1)
  {
    if (*(a1 + 24) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = a4;
    }

    *&v27 = a5 - v14;
    v15 = a2;
  }

  else
  {
    v15 = &v28 + 8;
  }

  memmove(&v27 + 8, v15, 0x10uLL);
  memmove(&v29 + 8, a3, 0x10uLL);
  return _os_log_simple_send(v24, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t _os_log_simple_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  fd = _simple_asl_get_fd(a1, a2, a3, a4, a5, a6, a7, a8);
  if (fd < 0)
  {
    return 9;
  }

  if ((MEMORY[0xFFFFFC105] & 4) != 0)
  {
    return 0;
  }

  v10 = fd;
  v11 = _platform_strlen(*(a1 + 16)) + 1;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = _platform_strlen(v12) + 1;
  }

  else
  {
    v13 = 0;
  }

  v15 = v13 + v11 + 104;
  v16 = __CFADD__(v13, v11 + 104);
  result = 84;
  if (v11 < 0xFFFFFFFFFFFFFF98 && !v16)
  {
    if (v15 <= 0x800)
    {
      v18[0] = v11;
      v18[1] = v13;
      v19 = *a1;
      v20 = *(a1 + 24);
      v21 = *(a1 + 40);
      v22 = *(a1 + 56);
      memmove(&v23, (a1 + 72), 0x10uLL);
      memmove(&v24, (a1 + 88), 0x10uLL);
      memmove(&v25, (a1 + 104), 0x10uLL);
      _platform_strlcpy(v26, *(a1 + 16), v11);
      if (v13)
      {
        _platform_strlcpy(&v26[v11], *(a1 + 8), v13);
      }

      v17 = sendto(v10, v18, v15, 0, 0, 0);
      if ((v17 & 0x8000000000000000) != 0)
      {
        return *__error();
      }

      else if (v17 >= v15)
      {
        return 0;
      }

      else
      {
        return 40;
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t _simple_asl_connect()
{
  v0 = socket(1, 2, 0);
  v1 = v0;
  if (v0 != -1)
  {
    fcntl(v0, 2, 1);
    v5.sa_family = 1;
    v2 = _platform_strlen("/var/run/syslog");
    if (v2 + 1 < 0x68)
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = 104;
    }

    memmove(v5.sa_data, "/var/run/syslog", v3);
    if (connect(v1, &v5, 0x6Au) == -1)
    {
      close(v1);
      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

uint64_t _simple_asl_get_fd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_A8840 == -1)
  {
    v8 = qword_A8848;
  }

  else
  {
    v8 = _os_alloc_once(&qword_A8840, 32, _simple_asl_init_context, a4, a5, a6, a7, a8);
  }

  if (*v8 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v8 + 24) != -1)
  {
    _simple_asl_get_fd_cold_1((v8 + 24), a2, a3, a4, a5, a6, a7, a8);
  }

  return *(v8 + 16);
}

void _simple_asl_connect_once(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_A8840 == -1)
  {
    v8 = qword_A8848;
  }

  else
  {
    v8 = _os_alloc_once(&qword_A8840, 32, _simple_asl_init_context, a4, a5, a6, a7, a8);
  }

  if (*(v8 + 16) == -1)
  {
    *(v8 + 16) = _simple_asl_connect();
  }
}

uint64_t _simple_asl_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1;
  if (qword_A8840 != -1)
  {
    _simple_asl_log_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = os_log_simple_type_from_asl(v10);

  return _os_log_simple_shim(v11, a2, a3);
}

uint64_t _simple_asl_init_context(uint64_t result)
{
  *(result + 8) = "unknown";
  *(result + 16) = -1;
  return result;
}

ssize_t _simple_vdprintf(int a1, char *__s, const char **a3)
{
  v6 = a1;
  v5[0] = v4;
  v5[1] = v4;
  v5[2] = v5;
  v7 = _flush_reset;
  __simple_bprintf(v5, 0, __s, a3);
  return _flush(v5);
}

uint64_t _flush_reset(void *a1)
{
  _flush(a1);
  a1[1] = *a1;
  return 1;
}

ssize_t _flush(ssize_t result)
{
  v1 = *result;
  v2 = *(result + 8) - *result;
  if (v2 >= 1)
  {
    v3 = result;
    while (1)
    {
      while (1)
      {
        result = write(*(v3 + 24), v1, v2);
        if (result < 0)
        {
          break;
        }

        v4 = v2 <= result;
        v2 -= result;
        v1 += v2;
        if (v4)
        {
          return result;
        }
      }

      if (*__error() != 4)
      {
        result = __error();
        if (*result != 35)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t _enlarge(uint64_t a1)
{
  v2 = (a1 + 16);
  address = *(a1 + 16) + 1;
  if (vm_allocate(mach_task_self_, &address, vm_page_size, 0))
  {
    v3 = *(a1 + 16) - *a1 + 1;
    v4 = (v3 + vm_page_size) & -vm_page_size;
    v5 = vm_allocate(mach_task_self_, &address, v4, 1);
    if (v5)
    {
      _enlarge_cold_1(v5);
    }

    v6 = address - *a1;
    memmove(address, *a1, v3);
    v7 = *a1;
    if (((vm_page_size - 1) & *a1) != 0)
    {
      v3 &= -vm_page_size;
      v7 = (v7 + vm_page_size) & -vm_page_size;
      *a1 = v7;
      v8 = v4 + address - 1;
    }

    else
    {
      v8 = *v2 + v6 + vm_page_size;
    }

    *v2 = v8;
    if (v3)
    {
      vm_deallocate(mach_task_self_, v7, v3);
    }

    *a1 = address;
    v2 = (a1 + 8);
  }

  else
  {
    v6 = vm_page_size;
  }

  *v2 += v6;
  return 1;
}

uint64_t _simple_sprintf(uint64_t a1, char *__s, ...)
{
  va_start(va, __s);
  __simple_bprintf(a1, 0, __s, va);
  return 0;
}

uint64_t _simple_vsnprintf(unint64_t a1, unint64_t a2, char *a3, const char **a4)
{
  if (a2 - 0x7FFFFFFF < 0xFFFFFFFF80000002)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a1;
  v10 = a1;
  v11 = a1 + a2 - 1;
  v12 = 0;
  v13 = _snprintf_out_of_space;
  __simple_bprintf(&v9, 0, a3, a4);
  v7 = &v10[-a1];
  if (v10 < a1 || v7 >= a2)
  {
    _simple_vsnprintf_cold_1(v7);
  }

  *v10 = 0;
  if (&v10[v12 - v9] >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return &v10[v12 - v9];
  }
}

uint64_t _snprintf_out_of_space(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != 0x7FFFFFFF)
  {
    *(a1 + 24) = v1 + 1;
  }

  return 0;
}

std::ios_base *__cdecl dec(std::ios_base *__str)
{
  v5 = v1;
  v7 = (v2 >> 63) + v3;
  v8 = v2 >> 63;
  v39 = 0;
  if (v2)
  {
    v9 = &v39;
    if (v2 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = -v2;
    }

    do
    {
      *--v9 = (v10 % 0xA) | 0x30;
      v11 = v10 >= 0xA;
      v10 /= 0xAuLL;
    }

    while (v11);
    v12 = v4 != 0;
    if ((v2 & 0x8000000000000000) == 0 || !v4)
    {
      goto LABEL_24;
    }

    if (v1)
    {
      v13 = v1(45);
      if (v13)
      {
        LODWORD(v8) = *v13;
        if (*v13)
        {
          v14 = v13 + 1;
          while (1)
          {
            v15 = *&__str->__fmtflags_;
            if (v15 < __str->__precision_)
            {
              goto LABEL_15;
            }

            if ((*&__str->__rdstate_)(__str))
            {
              break;
            }

LABEL_16:
            v16 = *v14++;
            LODWORD(v8) = v16;
            if (!v16)
            {
              goto LABEL_23;
            }
          }

          v15 = *&__str->__fmtflags_;
LABEL_15:
          *&__str->__fmtflags_ = v15 + 1;
          *v15 = v8;
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    v17 = *&__str->__fmtflags_;
    if (v17 >= __str->__precision_)
    {
      if (!(*&__str->__rdstate_)(__str))
      {
        LODWORD(v8) = 0;
        goto LABEL_23;
      }

      v17 = *&__str->__fmtflags_;
    }

    LODWORD(v8) = 0;
    *&__str->__fmtflags_ = v17 + 1;
    *v17 = 45;
LABEL_23:
    v12 = 1;
    goto LABEL_24;
  }

  v9 = &v38;
  v38 = 48;
  v12 = v4 != 0;
LABEL_24:
  result = _platform_strlen(v9);
  v19 = v7 - result;
  if (v19 >= 1)
  {
    if (v12)
    {
      v20 = 48;
    }

    else
    {
      v20 = 32;
    }

    do
    {
      if (v5 && (result = v5(v20)) != 0)
      {
        v21 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v22 = &result->__vftable + 1;
          while (1)
          {
            v23 = *&__str->__fmtflags_;
            if (v23 < __str->__precision_)
            {
              goto LABEL_35;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_36:
            v24 = *v22++;
            v21 = v24;
            if (!v24)
            {
              goto LABEL_42;
            }
          }

          v23 = *&__str->__fmtflags_;
LABEL_35:
          *&__str->__fmtflags_ = v23 + 1;
          *v23 = v21;
          goto LABEL_36;
        }
      }

      else
      {
        v25 = *&__str->__fmtflags_;
        if (v25 < __str->__precision_)
        {
          goto LABEL_41;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v25 = *&__str->__fmtflags_;
LABEL_41:
          *&__str->__fmtflags_ = v25 + 1;
          *v25 = v20;
        }
      }

LABEL_42:
      ;
    }

    while (v19-- > 1);
  }

  if (!v8)
  {
    goto LABEL_74;
  }

  if (v5)
  {
    result = v5(45);
    if (result)
    {
      v27 = result->__vftable;
      if (!LOBYTE(result->__vftable))
      {
        goto LABEL_74;
      }

      v28 = &result->__vftable + 1;
      while (1)
      {
        v29 = *&__str->__fmtflags_;
        if (v29 < __str->__precision_)
        {
          goto LABEL_52;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          break;
        }

LABEL_53:
        v30 = *v28++;
        v27 = v30;
        if (!v30)
        {
          goto LABEL_74;
        }
      }

      v29 = *&__str->__fmtflags_;
LABEL_52:
      *&__str->__fmtflags_ = v29 + 1;
      *v29 = v27;
      goto LABEL_53;
    }
  }

  v31 = *&__str->__fmtflags_;
  if (v31 >= __str->__precision_)
  {
    result = (*&__str->__rdstate_)(__str);
    if (!result)
    {
      goto LABEL_74;
    }

    v31 = *&__str->__fmtflags_;
  }

  *&__str->__fmtflags_ = v31 + 1;
  *v31 = 45;
LABEL_74:
  while (1)
  {
    v37 = *v9;
    if (!*v9)
    {
      return result;
    }

    if (v5 && (result = v5(*v9)) != 0)
    {
      v32 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v33 = &result->__vftable + 1;
        while (1)
        {
          v34 = *&__str->__fmtflags_;
          if (v34 < __str->__precision_)
          {
            goto LABEL_66;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_67:
          v35 = *v33++;
          v32 = v35;
          if (!v35)
          {
            goto LABEL_73;
          }
        }

        v34 = *&__str->__fmtflags_;
LABEL_66:
        *&__str->__fmtflags_ = v34 + 1;
        *v34 = v32;
        goto LABEL_67;
      }
    }

    else
    {
      v36 = *&__str->__fmtflags_;
      if (v36 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_73;
        }

        v36 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v36 + 1;
      *v36 = v37;
    }

LABEL_73:
    ++v9;
  }
}

std::ios_base *__cdecl oct(std::ios_base *__str)
{
  v5 = v4;
  v6 = v1;
  v27 = 0;
  if (v2)
  {
    v8 = &v27;
    do
    {
      *--v8 = v2 & 7 | 0x30;
      v9 = v2 >= 8;
      v2 >>= 3;
    }

    while (v9);
  }

  else
  {
    v8 = &v26;
    v26 = 48;
  }

  v10 = v3;
  result = _platform_strlen(v8);
  v12 = v10 - result;
  if (v12 >= 1)
  {
    if (v5)
    {
      v13 = 48;
    }

    else
    {
      v13 = 32;
    }

    do
    {
      if (v6 && (result = v6(v13)) != 0)
      {
        v14 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v15 = &result->__vftable + 1;
          while (1)
          {
            v16 = *&__str->__fmtflags_;
            if (v16 < __str->__precision_)
            {
              goto LABEL_17;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_18:
            v17 = *v15++;
            v14 = v17;
            if (!v17)
            {
              goto LABEL_24;
            }
          }

          v16 = *&__str->__fmtflags_;
LABEL_17:
          *&__str->__fmtflags_ = v16 + 1;
          *v16 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = *&__str->__fmtflags_;
        if (v18 < __str->__precision_)
        {
          goto LABEL_23;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v18 = *&__str->__fmtflags_;
LABEL_23:
          *&__str->__fmtflags_ = v18 + 1;
          *v18 = v13;
        }
      }

LABEL_24:
      ;
    }

    while (v12-- > 1);
  }

  while (1)
  {
    v25 = *v8;
    if (!*v8)
    {
      return result;
    }

    if (v6 && (result = v6(*v8)) != 0)
    {
      v20 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v21 = &result->__vftable + 1;
        while (1)
        {
          v22 = *&__str->__fmtflags_;
          if (v22 < __str->__precision_)
          {
            goto LABEL_34;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_35:
          v23 = *v21++;
          v20 = v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        v22 = *&__str->__fmtflags_;
LABEL_34:
        *&__str->__fmtflags_ = v22 + 1;
        *v22 = v20;
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *&__str->__fmtflags_;
      if (v24 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_41;
        }

        v24 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v24 + 1;
      *v24 = v25;
    }

LABEL_41:
    ++v8;
  }
}

_BYTE *udec(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3, int a4, int a5)
{
  v27 = 0;
  if (a3)
  {
    v8 = &v27;
    do
    {
      *--v8 = (a3 % 0xA) | 0x30;
      v9 = a3 >= 0xA;
      a3 /= 0xAuLL;
    }

    while (v9);
  }

  else
  {
    v8 = &v26;
    v26 = 48;
  }

  v10 = a4;
  result = _platform_strlen(v8);
  v12 = v10 - result;
  if (v12 >= 1)
  {
    if (a5)
    {
      v13 = 48;
    }

    else
    {
      v13 = 32;
    }

    do
    {
      if (a2 && (result = a2(v13)) != 0)
      {
        v14 = *result;
        if (*result)
        {
          v15 = result + 1;
          while (1)
          {
            v16 = *(a1 + 8);
            if (v16 < *(a1 + 16))
            {
              goto LABEL_17;
            }

            result = (*(a1 + 32))(a1);
            if (result)
            {
              break;
            }

LABEL_18:
            v17 = *v15++;
            v14 = v17;
            if (!v17)
            {
              goto LABEL_24;
            }
          }

          v16 = *(a1 + 8);
LABEL_17:
          *(a1 + 8) = v16 + 1;
          *v16 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = *(a1 + 8);
        if (v18 < *(a1 + 16))
        {
          goto LABEL_23;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          v18 = *(a1 + 8);
LABEL_23:
          *(a1 + 8) = v18 + 1;
          *v18 = v13;
        }
      }

LABEL_24:
      ;
    }

    while (v12-- > 1);
  }

  while (1)
  {
    v25 = *v8;
    if (!*v8)
    {
      return result;
    }

    if (a2 && (result = a2(*v8)) != 0)
    {
      v20 = *result;
      if (*result)
      {
        v21 = result + 1;
        while (1)
        {
          v22 = *(a1 + 8);
          if (v22 < *(a1 + 16))
          {
            goto LABEL_34;
          }

          result = (*(a1 + 32))(a1);
          if (result)
          {
            break;
          }

LABEL_35:
          v23 = *v21++;
          v20 = v23;
          if (!v23)
          {
            goto LABEL_41;
          }
        }

        v22 = *(a1 + 8);
LABEL_34:
        *(a1 + 8) = v22 + 1;
        *v22 = v20;
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *(a1 + 8);
      if (v24 >= *(a1 + 16))
      {
        result = (*(a1 + 32))(a1);
        if (!result)
        {
          goto LABEL_41;
        }

        v24 = *(a1 + 8);
      }

      *(a1 + 8) = v24 + 1;
      *v24 = v25;
    }

LABEL_41:
    ++v8;
  }
}

_BYTE *ydec(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3, int a4, int a5)
{
  if (a3 >= 0xA00000)
  {
    result = udec(a1, a2, (a3 + 0x80000) >> 20, a4, a5);
    v8 = 0;
    v9 = 77;
    while (1)
    {
      if (a2 && (result = a2(v9)) != 0)
      {
        v10 = *result;
        if (*result)
        {
          v11 = result + 1;
          while (1)
          {
            v12 = *(a1 + 8);
            if (v12 < *(a1 + 16))
            {
              goto LABEL_10;
            }

            result = (*(a1 + 32))(a1);
            if (result)
            {
              break;
            }

LABEL_11:
            v13 = *v11++;
            v10 = v13;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          v12 = *(a1 + 8);
LABEL_10:
          *(a1 + 8) = v12 + 1;
          *v12 = v10;
          goto LABEL_11;
        }
      }

      else
      {
        v14 = *(a1 + 8);
        if (v14 < *(a1 + 16))
        {
          goto LABEL_16;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          v14 = *(a1 + 8);
LABEL_16:
          *(a1 + 8) = v14 + 1;
          *v14 = v9;
        }
      }

LABEL_17:
      v9 = aMb[++v8];
      if (v8 == 2)
      {
        return result;
      }
    }
  }

  if (a3 >> 11 >= 5)
  {
    result = udec(a1, a2, (a3 + 512) >> 10, a4, a5);
    v15 = 0;
    v16 = 75;
    while (1)
    {
      if (a2 && (result = a2(v16)) != 0)
      {
        v17 = *result;
        if (*result)
        {
          v18 = result + 1;
          while (1)
          {
            v19 = *(a1 + 8);
            if (v19 < *(a1 + 16))
            {
              goto LABEL_28;
            }

            result = (*(a1 + 32))(a1);
            if (result)
            {
              break;
            }

LABEL_29:
            v20 = *v18++;
            v17 = v20;
            if (!v20)
            {
              goto LABEL_35;
            }
          }

          v19 = *(a1 + 8);
LABEL_28:
          *(a1 + 8) = v19 + 1;
          *v19 = v17;
          goto LABEL_29;
        }
      }

      else
      {
        v21 = *(a1 + 8);
        if (v21 < *(a1 + 16))
        {
          goto LABEL_34;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          v21 = *(a1 + 8);
LABEL_34:
          *(a1 + 8) = v21 + 1;
          *v21 = v16;
        }
      }

LABEL_35:
      v16 = aKb[++v15];
      if (v15 == 2)
      {
        return result;
      }
    }
  }

  result = udec(a1, a2, a3, a4, a5);
  if (a2 && (result = a2(98)) != 0)
  {
    v22 = *result;
    if (*result)
    {
      v23 = result + 1;
      while (1)
      {
        v24 = *(a1 + 8);
        if (v24 < *(a1 + 16))
        {
          goto LABEL_44;
        }

        result = (*(a1 + 32))(a1);
        if (result)
        {
          break;
        }

LABEL_45:
        v25 = *v23++;
        v22 = v25;
        if (!v25)
        {
          return result;
        }
      }

      v24 = *(a1 + 8);
LABEL_44:
      *(a1 + 8) = v24 + 1;
      *v24 = v22;
      goto LABEL_45;
    }
  }

  else
  {
    v26 = *(a1 + 8);
    if (v26 >= *(a1 + 16))
    {
      result = (*(a1 + 32))(a1);
      if (!result)
      {
        return result;
      }

      v26 = *(a1 + 8);
    }

    *(a1 + 8) = v26 + 1;
    *v26 = 98;
  }

  return result;
}

atomic_uint *os_unfair_lock_lock_with_options(atomic_uint *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v8 = 0;
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v8, v9, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, v9, a5, a6, a7, a8);
  }

  return result;
}

void os_unfair_lock_unlock(os_unfair_lock_t lock)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = atomic_exchange_explicit(lock, 0, memory_order_release);
  if (v7 != v6)
  {
    _os_unfair_lock_unlock_slow(lock, v6, v7, v1, v2, v3, v4, v5);
  }
}

uint64_t _os_unfair_lock_unlock_slow(void *a1, int a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = a3 | 1;
  if (result != a2)
  {
    _os_unfair_lock_unowned_abort(result);
  }

  if (a3)
  {
    qword_A82F8 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
    qword_A8328 = a3;
    __break(0xB001u);
LABEL_9:
    qword_A82F8 = "BUG IN LIBPLATFORM: ulock_wake failure";
    qword_A8328 = -result;
    __break(0xB001u);
  }

  else
  {
    while (1)
    {
      result = __ulock_wake(0x1000002, a1, 0, a4, a5, a6, a7, a8);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (result != -4)
      {
        if (result != -2)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t _os_once_gate_broadcast(void *a1, unsigned int a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = a2 | 1;
  if (result != a3)
  {
    _os_once_gate_unowned_abort(result);
  }

  if (a2)
  {
    qword_A82F8 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
    qword_A8328 = a2;
    __break(0xB001u);
LABEL_9:
    qword_A82F8 = "BUG IN LIBPLATFORM: ulock_wake failure";
    qword_A8328 = -result;
    __break(0xB001u);
  }

  else
  {
    while (1)
    {
      result = __ulock_wake(0x1000102, a1, 0, a4, a5, a6, a7, a8);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (result != -4)
      {
        if (result != -2)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

atomic_ullong *_os_once(atomic_ullong *result, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  explicit = atomic_load_explicit(result, memory_order_acquire);
  if ((explicit & 3) != 1)
  {
    return _os_once_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
  }

  if (4 * MEMORY[0xFFFFFC180] - explicit - 15 <= 0xFFFFFFFFFFFFFFEFLL)
  {
    *result = -1;
  }

  return result;
}

uint64_t _os_once_callout(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(uint64_t), int a4)
{
  result = a3(a2);
  v12 = atomic_exchange_explicit(a1, (4 * MEMORY[0xFFFFFC180]) | 1, memory_order_release);
  if (v12 != a4)
  {

    return _os_once_gate_broadcast(a1, v12, a4, v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t _os_once_gate_wait(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t), unsigned int a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *result;
  if (*result != -1)
  {
    v12 = result;
    v13 = a4;
    while ((v8 & 3) != 1)
    {
      if (v8)
      {
        v14 = v8;
        if ((v8 & 0xFFFFFFFFFFFFFFFELL) == v8 || (v15 = v8, atomic_compare_exchange_strong_explicit(v12, &v15, v8 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed), v14 = v8 & 0xFFFFFFFE, v15 == v8))
        {
          if ((v8 | 1) == a4)
          {
            _os_once_gate_recursive_abort(a4);
          }

          result = __ulock_wait(0x1000002, v12, v14, 0, a5, a6, a7, a8);
          if ((result & 0x80000000) != 0 && result != -14 && result != -4)
          {
            if (result == -105)
            {
              _os_once_gate_corruption_abort(v8);
            }

            qword_A82F8 = "BUG IN LIBPLATFORM: ulock_wait failure";
            qword_A8328 = -result;
            __break(0xB001u);
            return result;
          }

          v8 = *v12;
        }

        else
        {
          v8 = v15;
        }
      }

      else
      {
        v16 = 0;
        atomic_compare_exchange_strong_explicit(v12, &v16, v13, memory_order_relaxed, memory_order_relaxed);
        if (!v16)
        {
          __dmb(9u);

          return _os_once_callout(v12, a2, a3, a4);
        }

        v8 = v16;
      }

      if (v8 == -1)
      {
        return result;
      }
    }

    __dmb(9u);
    if ((4 * MEMORY[0xFFFFFC180] - v8 - 15) <= 0xFFFFFFFFFFFFFFEFLL)
    {
      *v12 = -1;
    }
  }

  return result;
}

atomic_ullong _os_alloc_once(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  _os_once(a1, v10, _os_alloc, a4, a5, a6, a7, a8);
  return a1[1];
}

uint64_t _os_alloc(uint64_t a1)
{
  v1 = (*(a1 + 8) + 15) & 0xFFFFFFF0;
  if (v1 - 1 >= 2 * vm_page_size - 16)
  {
    _os_alloc_cold_1((*(a1 + 8) + 15) & 0xFFFFFFF0);
  }

  v3 = _os_alloc_heap[0];
  if (_os_alloc_heap[0] && (add_explicit = atomic_fetch_add_explicit(_os_alloc_heap[0], v1, memory_order_relaxed), add_explicit + v1 <= 2 * vm_page_size - 16))
  {
    result = v3 + add_explicit + 16;
  }

  else
  {
    result = _os_alloc_slow(v3, v1);
  }

  *(*a1 + 8) = result;
  v6 = *(a1 + 16);
  if (v6)
  {

    return v6();
  }

  return result;
}

uint64_t _os_alloc_slow(atomic_ullong *a1, unint64_t a2)
{
  v4 = vm_page_size;
  while (1)
  {
    address = v4;
    result = mach_vm_map(mach_task_self_, &address, 2 * v4, 0, 1224736769, 0, 0, 0, 3, 7, 1u);
    if (result)
    {
      break;
    }

    v6 = address;
    v7 = a1;
    atomic_compare_exchange_strong_explicit(_os_alloc_heap, &v7, address, memory_order_relaxed, memory_order_relaxed);
    if (v7 == a1)
    {
      *(v6 + 8) = a1;
      a1 = v6;
LABEL_6:
      add_explicit = atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
      v4 = vm_page_size;
      if (add_explicit + a2 <= 2 * vm_page_size - 16)
      {
        return a1 + add_explicit + 16;
      }
    }

    else
    {
      mach_vm_deallocate(mach_task_self_, v6, 2 * vm_page_size);
      a1 = _os_alloc_heap[0];
      if (_os_alloc_heap[0])
      {
        goto LABEL_6;
      }

      v4 = vm_page_size;
    }
  }

  qword_A82F8 = "BUG IN LIBPLATFORM: Failed to allocate in os_alloc_once";
  qword_A8328 = result;
  __break(0xB001u);
  return result;
}

uint64_t _os_semaphore_dispose(semaphore_t semaphore)
{
  result = semaphore_destroy(mach_task_self_, semaphore);
  if (result)
  {
    _os_semaphore_dispose_cold_1(result);
  }

  return result;
}

char *__cdecl strcpy(char *__dst, const char *__src)
{
  v4 = _platform_strlen(__src);
  memmove(__dst, __src, v4 + 1);
  return __dst;
}

void _pthread_exit(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  __disable_threadsignal(&dword_0 + 1, a2, a3, a4, a5, a6, a7, a8);
  _pthread_setcancelstate_exit(a1);
  for (i = *(a1 + 8); i; *(a1 + 8) = i)
  {
    (*i)(*(i + 8));
    i = *(i + 16);
  }

  ignition_test_BRA(a1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 72);
  *(StatusReg + 72) = 0;
  if (v18)
  {
    goto LABEL_5;
  }

  while (1)
  {
    LODWORD(v18) = _pthread_terminate_invoke(a1, a2, v11, v12, v13, v14, v15, v16);
LABEL_5:
    _os_semaphore_dispose(v18);
  }
}

uint64_t _pthread_joiner_wake(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  do
  {
    result = __ulock_wake(0x1000002, (a1 + 52), 0, a4, a5, a6, a7, a8);
  }

  while (result == -4);
  if (result != -2)
  {
    if (result)
    {
      _pthread_joiner_wake_cold_1(result);
    }
  }

  return result;
}

void pthread_exit(void *a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if ((*(StatusReg - 146) & 0x400) != 0)
  {
    qword_A82F8 = "BUG IN CLIENT OF LIBPTHREAD: pthread_exit() called from a thread not created by pthread_create()";
    __break(0xB001u);
  }

  else if ((_pthread_ptr_munge_token ^ *(StatusReg - 224)) == StatusReg - 224)
  {
    _pthread_exit(StatusReg - 224, a1, v1, v2, v3, v4, v5, v6);
  }

  abort_with_reason(&dword_10 + 2, &dword_4, "pthread_t was corrupted", 0);
}

uint64_t _pthread_terminate_invoke(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (((&vars0 ^ a1) & -vm_page_size) == 0)
  {
    bzero(&v19, 0x3000uLL);
  }

  v10 = _pthread_terminate(a1, a2, a3, a4, a5, a6, a7, a8);
  return _pthread_terminate(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t _pthread_terminate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (_pthread_introspection_hook)
  {
    _pthread_introspection_hook_callout_thread_terminate(a1);
  }

  v10 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v10 < a1 && &v11[v10] > a1)
  {
    v14 = ((a1 - v10) & -vm_page_size);
    *(a1 + 192) = &v14[v10];
    *(a1 + 200) = v11 - v14;
  }

  else if (a1 == &_main_thread)
  {
    v13 = qword_ADEF0 - unk_ADEF8;
    if (qword_ADEF0 == unk_ADEF8)
    {
      v13 = 0x80000;
    }

    v10 = qword_ADEF0 - v13;
    v14 = ((_pthread_current_stack_address() & -vm_page_size) - v10);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 248);
  v16 = *(a1 + 288);
  if (v16)
  {
    *(a1 + 288) = 0;
    thread_destruct_special_reply_port(v16, 0);
  }

  v17 = *(a1 + 240);
  if (v17)
  {
    mig_dealloc_reply_port(v17);
  }

  os_unfair_lock_lock_with_options(&_pthread_list_lock, 327680, a3, a4, a5, a6, a7, a8);
  *(a1 + 52) = -1;
  *(a1 + 40) = a2;
  v18 = _pthread_count--;
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = _pthread_joiner_prepost_wake(a1);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 49);
  v22 = v21 & 1;
  if (v21)
  {
    *(a1 + 49) = v21 | 2;
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    v25 = (v23 + 24);
    if (!v23)
    {
      v25 = &off_A81C0;
    }

    *v25 = v24;
    *v24 = v23;
  }

  os_unfair_lock_unlock(&_pthread_list_lock);
  if (v19)
  {
    _pthread_joiner_wake(a1, v26, v27, v28, v29, v30, v31, v32);
    os_unfair_lock_lock_with_options(&_pthread_list_lock, 327680, v33, v34, v35, v36, v37, v38);
    if (*(a1 + 32))
    {
      *(a1 + 49) |= 2u;
      v22 = 1;
    }

    os_unfair_lock_unlock(&_pthread_list_lock);
  }

  if (a1 != &_main_thread && (v22 & 1) == 0)
  {
    if (_pthread_introspection_hook)
    {
      _pthread_introspection_hook_callout_thread_destroy(a1);
    }

    v14 = v11;
  }

  if (v18 <= 1)
  {
    _exit(0);
  }

  if (v14)
  {
    v39 = v10;
  }

  else
  {
    v39 = 0;
  }

  result = __bsdthread_terminate(v39, v14, v15, v20, v29, v30, v31, v32);
  qword_A82F8 = "BUG IN LIBPTHREAD: thread didn't terminate";
  qword_A8328 = a1;
  __break(0xB001u);
  return result;
}

uint64_t _pthread_introspection_hook_callout_thread_terminate(uint64_t a1)
{
  if (a1 == &_main_thread)
  {
    v2 = qword_ADEF0 - unk_ADEF8 + qword_ADF10;
    v1 = unk_ADEF8 - qword_ADF10;
  }

  else
  {
    v1 = *(a1 + 192);
    v2 = *(a1 + 200) - (~vm_page_mask & (vm_page_mask + 4320));
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg - 174);
  *(StatusReg - 174) = 3;
  result = _pthread_introspection_hook(3, a1, v1, v2);
  *(StatusReg - 174) = v4;
  return result;
}

uint64_t _pthread_introspection_hook_callout_thread_destroy(uint64_t a1)
{
  v1 = vm_page_mask + 4320;
  v2 = ~vm_page_mask;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg - 174);
  *(StatusReg - 174) = 4;
  result = _pthread_introspection_hook(4, a1, a1, v2 & v1);
  *(StatusReg - 174) = v4;
  return result;
}

void _pthread_joiner_wake_cold_1(int a1)
{
  qword_A82F8 = "BUG IN LIBPTHREAD: pthread_join() wake failure";
  qword_A8328 = -a1;
  __break(0xB001u);
}

uint64_t _pthread_joiner_prepost_wake(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 49))
  {
    v2 = *(v1 + 20);
    *(a1 + 49) &= ~1u;
  }

  else
  {
    v2 = 0;
    *(v1 + 24) = 1;
    *(a1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  if (v4)
  {
    _pthread_joiner_prepost_wake_cold_1(a1, v3);
  }

  return v2;
}

void OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, void *a3)
{

  abort_with_reason(&dword_10 + 2, &dword_4, a3, 0);
}

uint64_t _pthread_joiner_prepost_wake_cold_1(uint64_t result, uint64_t **a2)
{
  v2 = atomic_load((result + 166));
  if ((~v2 & 0x11) != 0)
  {
    v3 = *(result + 40);
  }

  else
  {
    v3 = 1;
  }

  **a2 = v3;
  return result;
}

BOOL mutex_seq_atomic_cmpxchgv_relaxed(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_relaxed, memory_order_relaxed);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

BOOL mutex_seq_atomic_cmpxchgv_acquire(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_acquire, memory_order_acquire);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

BOOL mutex_seq_atomic_cmpxchgv_release(atomic_ullong *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v4, *a3, memory_order_release, memory_order_relaxed);
  result = v4 == v3;
  *a2 = v4;
  return result;
}

vm_address_t *sandbox_warn(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  v10 = _simple_salloc();
  _simple_vsprintf(v10, a1, &a9);
  v11 = _simple_string(v10);
  _simple_asl_log(2, "com.apple.libsystem.sandbox", v11, v12, v13, v14, v15, v16);
  v17 = _simple_string(v10);
  _simple_dprintf(2, "%s\n", v18, v19, v20, v21, v22, v23, v17);
  return _simple_sfree(v10);
}

uint64_t *AccelerateCrypto_SHA512_compress(uint64_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v3 = a3 + 8;
    v5 = vrev64q_s8(v4);
    v6 = vrev64q_s8(v3[-7]);
    v7 = vrev64q_s8(v3[-6]);
    v8 = vrev64q_s8(v3[-5]);
    v9 = vrev64q_s8(v3[-4]);
    v10 = vrev64q_s8(v3[-3]);
    v11 = vrev64q_s8(v3[-2]);
    v12 = vrev64q_s8(v3[-1]);
    i8 = &xmmword_8DF80;
    v240 = vaddq_s64(sha512_K, v5);
    v241 = vaddq_s64(unk_8DF10, v6);
    v242 = vaddq_s64(unk_8DF20, v7);
    v243 = vaddq_s64(unk_8DF30, v8);
    v244 = vaddq_s64(xmmword_8DF40, v9);
    v245 = vaddq_s64(unk_8DF50, v10);
    v246 = vaddq_s64(unk_8DF60, v11);
    v247 = vaddq_s64(unk_8DF70, v12);
    while (1)
    {
      v14 = *result;
      v15 = result[1];
      v16 = result[2];
      v17 = result[3];
      v18 = result[4];
      v19 = result[5];
      v20 = result[6];
      v21 = result[7];
      v22 = 4;
      do
      {
        v23 = vextq_s8(v5, v6, 8uLL);
        v24 = vshrq_n_u64(v12, 0x13uLL);
        v25 = vshlq_n_s64(v12, 3uLL);
        v26 = v21 + v240.i64[0] + (__ROR8__(v18, 14) ^ __ROR8__(v18, 18) ^ __ROR8__(v18, 41)) + ((v19 ^ v20) & v18 ^ v20);
        v27 = vshrq_n_u64(v23, 1uLL);
        v28 = vshlq_n_s64(v23, 0x38uLL);
        v29 = v17 + v26;
        v30 = v26 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 ^ v16) & v14 ^ v15 & v16);
        v31 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v12, 6uLL), v24), v25), vshrq_n_u64(v24, 0x2AuLL));
        v32 = *i8;
        v33 = (i8 + 1);
        v5 = vaddq_s64(vaddq_s64(vaddq_s64(v5, vextq_s8(v9, v10, 8uLL)), veorq_s8(v31, vshlq_n_s64(v25, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v23, 7uLL), v27), v28), vshrq_n_u64(v27, 7uLL)), vshlq_n_s64(v28, 7uLL)));
        v34 = v20 + v240.i64[1] + (__ROR8__(v29, 14) ^ __ROR8__(v29, 18) ^ __ROR8__(v29, 41)) + ((v18 ^ v19) & v29 ^ v19);
        v35 = v16 + v34;
        v36 = v34 + (__ROR8__(v30, 28) ^ __ROR8__(v30, 34) ^ __ROR8__(v30, 39)) + ((v14 ^ v15) & v30 ^ v14 & v15);
        v240 = vaddq_s64(v32, v5);
        v37 = vextq_s8(v6, v7, 8uLL);
        v38 = vshrq_n_u64(v5, 0x13uLL);
        v39 = vshlq_n_s64(v5, 3uLL);
        v40 = v19 + v241.i64[0] + (__ROR8__(v35, 14) ^ __ROR8__(v35, 18) ^ __ROR8__(v35, 41)) + ((v29 ^ v18) & v35 ^ v18);
        v41 = vshrq_n_u64(v37, 1uLL);
        v42 = vshlq_n_s64(v37, 0x38uLL);
        v43 = v15 + v40;
        v44 = v40 + (__ROR8__(v36, 28) ^ __ROR8__(v36, 34) ^ __ROR8__(v36, 39)) + ((v30 ^ v14) & v36 ^ v30 & v14);
        v45 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v5, 6uLL), v38), v39), vshrq_n_u64(v38, 0x2AuLL));
        v46 = *v33++;
        v6 = vaddq_s64(vaddq_s64(vaddq_s64(v6, vextq_s8(v10, v11, 8uLL)), veorq_s8(v45, vshlq_n_s64(v39, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v37, 7uLL), v41), v42), vshrq_n_u64(v41, 7uLL)), vshlq_n_s64(v42, 7uLL)));
        v47 = v18 + v241.i64[1] + (__ROR8__(v43, 14) ^ __ROR8__(v43, 18) ^ __ROR8__(v43, 41)) + ((v35 ^ v29) & v43 ^ v29);
        v48 = v14 + v47;
        v49 = v47 + (__ROR8__(v44, 28) ^ __ROR8__(v44, 34) ^ __ROR8__(v44, 39)) + ((v36 ^ v30) & v44 ^ v36 & v30);
        v241 = vaddq_s64(v46, v6);
        v50 = vextq_s8(v7, v8, 8uLL);
        v51 = vshrq_n_u64(v6, 0x13uLL);
        v52 = vshlq_n_s64(v6, 3uLL);
        v53 = v29 + v242.i64[0] + (__ROR8__(v48, 14) ^ __ROR8__(v48, 18) ^ __ROR8__(v48, 41)) + ((v43 ^ v35) & v48 ^ v35);
        v54 = vshrq_n_u64(v50, 1uLL);
        v55 = vshlq_n_s64(v50, 0x38uLL);
        v56 = v30 + v53;
        v57 = v53 + (__ROR8__(v49, 28) ^ __ROR8__(v49, 34) ^ __ROR8__(v49, 39)) + ((v44 ^ v36) & v49 ^ v44 & v36);
        v58 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v6, 6uLL), v51), v52), vshrq_n_u64(v51, 0x2AuLL));
        v59 = *v33++;
        v7 = vaddq_s64(vaddq_s64(vaddq_s64(v7, vextq_s8(v11, v12, 8uLL)), veorq_s8(v58, vshlq_n_s64(v52, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v50, 7uLL), v54), v55), vshrq_n_u64(v54, 7uLL)), vshlq_n_s64(v55, 7uLL)));
        v60 = v35 + v242.i64[1] + (__ROR8__(v56, 14) ^ __ROR8__(v56, 18) ^ __ROR8__(v56, 41)) + ((v48 ^ v43) & v56 ^ v43);
        v61 = v36 + v60;
        v62 = v60 + (__ROR8__(v57, 28) ^ __ROR8__(v57, 34) ^ __ROR8__(v57, 39)) + ((v49 ^ v44) & v57 ^ v49 & v44);
        v242 = vaddq_s64(v59, v7);
        v63 = vextq_s8(v8, v9, 8uLL);
        v64 = vshrq_n_u64(v7, 0x13uLL);
        v65 = vshlq_n_s64(v7, 3uLL);
        v66 = v43 + v243.i64[0] + (__ROR8__(v61, 14) ^ __ROR8__(v61, 18) ^ __ROR8__(v61, 41)) + ((v56 ^ v48) & v61 ^ v48);
        v67 = vshrq_n_u64(v63, 1uLL);
        v68 = vshlq_n_s64(v63, 0x38uLL);
        v69 = v44 + v66;
        v70 = v66 + (__ROR8__(v62, 28) ^ __ROR8__(v62, 34) ^ __ROR8__(v62, 39)) + ((v57 ^ v49) & v62 ^ v57 & v49);
        v71 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v7, 6uLL), v64), v65), vshrq_n_u64(v64, 0x2AuLL));
        v72 = *v33++;
        v8 = vaddq_s64(vaddq_s64(vaddq_s64(v8, vextq_s8(v12, v5, 8uLL)), veorq_s8(v71, vshlq_n_s64(v65, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v63, 7uLL), v67), v68), vshrq_n_u64(v67, 7uLL)), vshlq_n_s64(v68, 7uLL)));
        v73 = v48 + v243.i64[1] + (__ROR8__(v69, 14) ^ __ROR8__(v69, 18) ^ __ROR8__(v69, 41)) + ((v61 ^ v56) & v69 ^ v56);
        v74 = v49 + v73;
        v75 = v73 + (__ROR8__(v70, 28) ^ __ROR8__(v70, 34) ^ __ROR8__(v70, 39)) + ((v62 ^ v57) & v70 ^ v62 & v57);
        v243 = vaddq_s64(v72, v8);
        v76 = vextq_s8(v9, v10, 8uLL);
        v77 = vshrq_n_u64(v8, 0x13uLL);
        v78 = vshlq_n_s64(v8, 3uLL);
        v79 = v56 + v244.i64[0] + (__ROR8__(v74, 14) ^ __ROR8__(v74, 18) ^ __ROR8__(v74, 41)) + ((v69 ^ v61) & v74 ^ v61);
        v80 = vshrq_n_u64(v76, 1uLL);
        v81 = vshlq_n_s64(v76, 0x38uLL);
        v82 = v57 + v79;
        v83 = v79 + (__ROR8__(v75, 28) ^ __ROR8__(v75, 34) ^ __ROR8__(v75, 39)) + ((v70 ^ v62) & v75 ^ v70 & v62);
        v84 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v8, 6uLL), v77), v78), vshrq_n_u64(v77, 0x2AuLL));
        v85 = *v33++;
        v9 = vaddq_s64(vaddq_s64(vaddq_s64(v9, vextq_s8(v5, v6, 8uLL)), veorq_s8(v84, vshlq_n_s64(v78, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v76, 7uLL), v80), v81), vshrq_n_u64(v80, 7uLL)), vshlq_n_s64(v81, 7uLL)));
        v86 = v61 + v244.i64[1] + (__ROR8__(v82, 14) ^ __ROR8__(v82, 18) ^ __ROR8__(v82, 41)) + ((v74 ^ v69) & v82 ^ v69);
        v87 = v62 + v86;
        v88 = v86 + (__ROR8__(v83, 28) ^ __ROR8__(v83, 34) ^ __ROR8__(v83, 39)) + ((v75 ^ v70) & v83 ^ v75 & v70);
        v244 = vaddq_s64(v85, v9);
        v89 = vextq_s8(v10, v11, 8uLL);
        v90 = vshrq_n_u64(v9, 0x13uLL);
        v91 = vshlq_n_s64(v9, 3uLL);
        v92 = v69 + v245.i64[0] + (__ROR8__(v87, 14) ^ __ROR8__(v87, 18) ^ __ROR8__(v87, 41)) + ((v82 ^ v74) & v87 ^ v74);
        v93 = vshrq_n_u64(v89, 1uLL);
        v94 = vshlq_n_s64(v89, 0x38uLL);
        v95 = v70 + v92;
        v96 = v92 + (__ROR8__(v88, 28) ^ __ROR8__(v88, 34) ^ __ROR8__(v88, 39)) + ((v83 ^ v75) & v88 ^ v83 & v75);
        v97 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v9, 6uLL), v90), v91), vshrq_n_u64(v90, 0x2AuLL));
        v98 = *v33++;
        v10 = vaddq_s64(vaddq_s64(vaddq_s64(v10, vextq_s8(v6, v7, 8uLL)), veorq_s8(v97, vshlq_n_s64(v91, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v89, 7uLL), v93), v94), vshrq_n_u64(v93, 7uLL)), vshlq_n_s64(v94, 7uLL)));
        v99 = v74 + v245.i64[1] + (__ROR8__(v95, 14) ^ __ROR8__(v95, 18) ^ __ROR8__(v95, 41)) + ((v87 ^ v82) & v95 ^ v82);
        v100 = v75 + v99;
        v101 = v99 + (__ROR8__(v96, 28) ^ __ROR8__(v96, 34) ^ __ROR8__(v96, 39)) + ((v88 ^ v83) & v96 ^ v88 & v83);
        v245 = vaddq_s64(v98, v10);
        v102 = vextq_s8(v11, v12, 8uLL);
        v103 = vshrq_n_u64(v10, 0x13uLL);
        v104 = vshlq_n_s64(v10, 3uLL);
        v105 = v82 + v246.i64[0] + (__ROR8__(v100, 14) ^ __ROR8__(v100, 18) ^ __ROR8__(v100, 41)) + ((v95 ^ v87) & v100 ^ v87);
        v106 = vshrq_n_u64(v102, 1uLL);
        v107 = vshlq_n_s64(v102, 0x38uLL);
        v21 = v83 + v105;
        v17 = v105 + (__ROR8__(v101, 28) ^ __ROR8__(v101, 34) ^ __ROR8__(v101, 39)) + ((v96 ^ v88) & v101 ^ v96 & v88);
        v108 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v10, 6uLL), v103), v104), vshrq_n_u64(v103, 0x2AuLL));
        v109 = *v33++;
        v11 = vaddq_s64(vaddq_s64(vaddq_s64(v11, vextq_s8(v7, v8, 8uLL)), veorq_s8(v108, vshlq_n_s64(v104, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v102, 7uLL), v106), v107), vshrq_n_u64(v106, 7uLL)), vshlq_n_s64(v107, 7uLL)));
        v110 = v87 + v246.i64[1] + (__ROR8__(v21, 14) ^ __ROR8__(v21, 18) ^ __ROR8__(v21, 41)) + ((v100 ^ v95) & v21 ^ v95);
        v20 = v88 + v110;
        v16 = v110 + (__ROR8__(v17, 28) ^ __ROR8__(v17, 34) ^ __ROR8__(v17, 39)) + ((v101 ^ v96) & v17 ^ v101 & v96);
        v246 = vaddq_s64(v109, v11);
        v111 = vextq_s8(v12, v5, 8uLL);
        v112 = vshrq_n_u64(v11, 0x13uLL);
        v113 = vshlq_n_s64(v11, 3uLL);
        v114 = v95 + v247.i64[0] + (__ROR8__(v20, 14) ^ __ROR8__(v20, 18) ^ __ROR8__(v20, 41)) + ((v21 ^ v100) & v20 ^ v100);
        v115 = vshrq_n_u64(v111, 1uLL);
        v116 = vshlq_n_s64(v111, 0x38uLL);
        v19 = v96 + v114;
        v15 = v114 + (__ROR8__(v16, 28) ^ __ROR8__(v16, 34) ^ __ROR8__(v16, 39)) + ((v17 ^ v101) & v16 ^ v17 & v101);
        v117 = veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v11, 6uLL), v112), v113), vshrq_n_u64(v112, 0x2AuLL));
        v118 = *v33;
        i8 = v33[1].i8;
        v12 = vaddq_s64(vaddq_s64(vaddq_s64(v12, vextq_s8(v8, v9, 8uLL)), veorq_s8(v117, vshlq_n_s64(v113, 0x2AuLL))), veorq_s8(veorq_s8(veorq_s8(veorq_s8(vshrq_n_u64(v111, 7uLL), v115), v116), vshrq_n_u64(v115, 7uLL)), vshlq_n_s64(v116, 7uLL)));
        v119 = v100 + v247.i64[1] + (__ROR8__(v19, 14) ^ __ROR8__(v19, 18) ^ __ROR8__(v19, 41)) + ((v20 ^ v21) & v19 ^ v21);
        v18 = v101 + v119;
        v14 = v119 + (__ROR8__(v15, 28) ^ __ROR8__(v15, 34) ^ __ROR8__(v15, 39)) + ((v16 ^ v17) & v15 ^ v16 & v17);
        v247 = vaddq_s64(v118, v12);
        v120 = __OFSUB__(v22--, 1);
      }

      while (!((v22 < 0) ^ v120 | (v22 == 0)));
      v121 = i8 - 40;
      if (!--a2)
      {
        break;
      }

      v123 = *v3;
      v122 = v3 + 1;
      v124 = v21 + v240.i64[0] + (__ROR8__(v18, 14) ^ __ROR8__(v18, 18) ^ __ROR8__(v18, 41)) + ((v19 ^ v20) & v18 ^ v20);
      v126 = *v121;
      v125 = (v121 + 1);
      v127 = v17 + v124;
      v128 = v124 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 ^ v16) & v14 ^ v15 & v16);
      v5 = vrev64q_s8(v123);
      v129 = v20 + v240.i64[1] + (__ROR8__(v127, 14) ^ __ROR8__(v127, 18) ^ __ROR8__(v127, 41)) + ((v18 ^ v19) & v127 ^ v19);
      v130 = v16 + v129;
      v240 = vaddq_s64(v126, v5);
      v131 = v129 + (__ROR8__(v128, 28) ^ __ROR8__(v128, 34) ^ __ROR8__(v128, 39)) + ((v14 ^ v15) & v128 ^ v14 & v15);
      v132 = *v122++;
      v133 = v19 + v241.i64[0] + (__ROR8__(v130, 14) ^ __ROR8__(v130, 18) ^ __ROR8__(v130, 41)) + ((v127 ^ v18) & v130 ^ v18);
      v134 = *v125++;
      v135 = v15 + v133;
      v136 = v133 + (__ROR8__(v131, 28) ^ __ROR8__(v131, 34) ^ __ROR8__(v131, 39)) + ((v128 ^ v14) & v131 ^ v128 & v14);
      v6 = vrev64q_s8(v132);
      v137 = v18 + v241.i64[1] + (__ROR8__(v135, 14) ^ __ROR8__(v135, 18) ^ __ROR8__(v135, 41)) + ((v130 ^ v127) & v135 ^ v127);
      v138 = v14 + v137;
      v241 = vaddq_s64(v134, v6);
      v139 = v137 + (__ROR8__(v136, 28) ^ __ROR8__(v136, 34) ^ __ROR8__(v136, 39)) + ((v131 ^ v128) & v136 ^ v131 & v128);
      v140 = *v122++;
      v141 = v127 + v242.i64[0] + (__ROR8__(v138, 14) ^ __ROR8__(v138, 18) ^ __ROR8__(v138, 41)) + ((v135 ^ v130) & v138 ^ v130);
      v142 = *v125++;
      v143 = v128 + v141;
      v144 = v141 + (__ROR8__(v139, 28) ^ __ROR8__(v139, 34) ^ __ROR8__(v139, 39)) + ((v136 ^ v131) & v139 ^ v136 & v131);
      v7 = vrev64q_s8(v140);
      v145 = v130 + v242.i64[1] + (__ROR8__(v143, 14) ^ __ROR8__(v143, 18) ^ __ROR8__(v143, 41)) + ((v138 ^ v135) & v143 ^ v135);
      v146 = v131 + v145;
      v242 = vaddq_s64(v142, v7);
      v147 = v145 + (__ROR8__(v144, 28) ^ __ROR8__(v144, 34) ^ __ROR8__(v144, 39)) + ((v139 ^ v136) & v144 ^ v139 & v136);
      v148 = *v122++;
      v149 = v135 + v243.i64[0] + (__ROR8__(v146, 14) ^ __ROR8__(v146, 18) ^ __ROR8__(v146, 41)) + ((v143 ^ v138) & v146 ^ v138);
      v150 = *v125++;
      v151 = v136 + v149;
      v152 = v149 + (__ROR8__(v147, 28) ^ __ROR8__(v147, 34) ^ __ROR8__(v147, 39)) + ((v144 ^ v139) & v147 ^ v144 & v139);
      v8 = vrev64q_s8(v148);
      v153 = v138 + v243.i64[1] + (__ROR8__(v151, 14) ^ __ROR8__(v151, 18) ^ __ROR8__(v151, 41)) + ((v146 ^ v143) & v151 ^ v143);
      v154 = v139 + v153;
      v243 = vaddq_s64(v150, v8);
      v155 = v153 + (__ROR8__(v152, 28) ^ __ROR8__(v152, 34) ^ __ROR8__(v152, 39)) + ((v147 ^ v144) & v152 ^ v147 & v144);
      v156 = *v122++;
      v157 = v143 + v244.i64[0] + (__ROR8__(v154, 14) ^ __ROR8__(v154, 18) ^ __ROR8__(v154, 41)) + ((v151 ^ v146) & v154 ^ v146);
      v158 = *v125++;
      v159 = v144 + v157;
      v160 = v157 + (__ROR8__(v155, 28) ^ __ROR8__(v155, 34) ^ __ROR8__(v155, 39)) + ((v152 ^ v147) & v155 ^ v152 & v147);
      v9 = vrev64q_s8(v156);
      v161 = v146 + v244.i64[1] + (__ROR8__(v159, 14) ^ __ROR8__(v159, 18) ^ __ROR8__(v159, 41)) + ((v154 ^ v151) & v159 ^ v151);
      v162 = v147 + v161;
      v244 = vaddq_s64(v158, v9);
      v163 = v161 + (__ROR8__(v160, 28) ^ __ROR8__(v160, 34) ^ __ROR8__(v160, 39)) + ((v155 ^ v152) & v160 ^ v155 & v152);
      v164 = *v122++;
      v165 = v151 + v245.i64[0] + (__ROR8__(v162, 14) ^ __ROR8__(v162, 18) ^ __ROR8__(v162, 41)) + ((v159 ^ v154) & v162 ^ v154);
      v166 = *v125++;
      v167 = v152 + v165;
      v168 = v165 + (__ROR8__(v163, 28) ^ __ROR8__(v163, 34) ^ __ROR8__(v163, 39)) + ((v160 ^ v155) & v163 ^ v160 & v155);
      v10 = vrev64q_s8(v164);
      v169 = v154 + v245.i64[1] + (__ROR8__(v167, 14) ^ __ROR8__(v167, 18) ^ __ROR8__(v167, 41)) + ((v162 ^ v159) & v167 ^ v159);
      v170 = v155 + v169;
      v245 = vaddq_s64(v166, v10);
      v171 = v169 + (__ROR8__(v168, 28) ^ __ROR8__(v168, 34) ^ __ROR8__(v168, 39)) + ((v163 ^ v160) & v168 ^ v163 & v160);
      v172 = *v122++;
      v173 = v159 + v246.i64[0] + (__ROR8__(v170, 14) ^ __ROR8__(v170, 18) ^ __ROR8__(v170, 41)) + ((v167 ^ v162) & v170 ^ v162);
      v174 = *v125++;
      v175 = v160 + v173;
      v176 = v173 + (__ROR8__(v171, 28) ^ __ROR8__(v171, 34) ^ __ROR8__(v171, 39)) + ((v168 ^ v163) & v171 ^ v168 & v163);
      v11 = vrev64q_s8(v172);
      v177 = v162 + v246.i64[1] + (__ROR8__(v175, 14) ^ __ROR8__(v175, 18) ^ __ROR8__(v175, 41)) + ((v170 ^ v167) & v175 ^ v167);
      v178 = v163 + v177;
      v246 = vaddq_s64(v174, v11);
      v179 = v177 + (__ROR8__(v176, 28) ^ __ROR8__(v176, 34) ^ __ROR8__(v176, 39)) + ((v171 ^ v168) & v176 ^ v171 & v168);
      v180 = *v122;
      v3 = v122 + 1;
      v181 = v167 + v247.i64[0] + (__ROR8__(v178, 14) ^ __ROR8__(v178, 18) ^ __ROR8__(v178, 41)) + ((v175 ^ v170) & v178 ^ v170);
      v182 = *v125;
      i8 = v125[1].i8;
      v183 = v168 + v181;
      v184 = v181 + (__ROR8__(v179, 28) ^ __ROR8__(v179, 34) ^ __ROR8__(v179, 39)) + ((v176 ^ v171) & v179 ^ v176 & v171);
      v12 = vrev64q_s8(v180);
      v185 = v170 + v247.i64[1] + (__ROR8__(v183, 14) ^ __ROR8__(v183, 18) ^ __ROR8__(v183, 41)) + ((v178 ^ v175) & v183 ^ v175);
      v247 = vaddq_s64(v182, v12);
      v186 = result[1] + v184;
      *result += v185 + (__ROR8__(v184, 28) ^ __ROR8__(v184, 34) ^ __ROR8__(v184, 39)) + ((v179 ^ v176) & v184 ^ v179 & v176);
      result[1] = v186;
      v187 = result[3] + v176;
      result[2] += v179;
      result[3] = v187;
      v188 = result[5] + v183;
      result[4] += v171 + v185;
      result[5] = v188;
      v189 = result[7] + v175;
      result[6] += v178;
      result[7] = v189;
    }

    v190 = v21 + v240.i64[0] + (__ROR8__(v18, 14) ^ __ROR8__(v18, 18) ^ __ROR8__(v18, 41)) + ((v19 ^ v20) & v18 ^ v20);
    v191 = v17 + v190;
    v192 = v190 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 ^ v16) & v14 ^ v15 & v16);
    v193 = v20 + v240.i64[1] + (__ROR8__(v191, 14) ^ __ROR8__(v191, 18) ^ __ROR8__(v191, 41)) + ((v18 ^ v19) & v191 ^ v19);
    v194 = v16 + v193;
    v195 = v193 + (__ROR8__(v192, 28) ^ __ROR8__(v192, 34) ^ __ROR8__(v192, 39)) + ((v14 ^ v15) & v192 ^ v14 & v15);
    v196 = v19 + v241.i64[0] + (__ROR8__(v194, 14) ^ __ROR8__(v194, 18) ^ __ROR8__(v194, 41)) + ((v191 ^ v18) & v194 ^ v18);
    v197 = v15 + v196;
    v198 = v196 + (__ROR8__(v195, 28) ^ __ROR8__(v195, 34) ^ __ROR8__(v195, 39)) + ((v192 ^ v14) & v195 ^ v192 & v14);
    v199 = v18 + v241.i64[1] + (__ROR8__(v197, 14) ^ __ROR8__(v197, 18) ^ __ROR8__(v197, 41)) + ((v194 ^ v191) & v197 ^ v191);
    v200 = v14 + v199;
    v201 = v199 + (__ROR8__(v198, 28) ^ __ROR8__(v198, 34) ^ __ROR8__(v198, 39)) + ((v195 ^ v192) & v198 ^ v195 & v192);
    v202 = v191 + v242.i64[0] + (__ROR8__(v200, 14) ^ __ROR8__(v200, 18) ^ __ROR8__(v200, 41)) + ((v197 ^ v194) & v200 ^ v194);
    v203 = v192 + v202;
    v204 = v202 + (__ROR8__(v201, 28) ^ __ROR8__(v201, 34) ^ __ROR8__(v201, 39)) + ((v198 ^ v195) & v201 ^ v198 & v195);
    v205 = v194 + v242.i64[1] + (__ROR8__(v203, 14) ^ __ROR8__(v203, 18) ^ __ROR8__(v203, 41)) + ((v200 ^ v197) & v203 ^ v197);
    v206 = v195 + v205;
    v207 = v205 + (__ROR8__(v204, 28) ^ __ROR8__(v204, 34) ^ __ROR8__(v204, 39)) + ((v201 ^ v198) & v204 ^ v201 & v198);
    v208 = v197 + v243.i64[0] + (__ROR8__(v206, 14) ^ __ROR8__(v206, 18) ^ __ROR8__(v206, 41)) + ((v203 ^ v200) & v206 ^ v200);
    v209 = v198 + v208;
    v210 = v208 + (__ROR8__(v207, 28) ^ __ROR8__(v207, 34) ^ __ROR8__(v207, 39)) + ((v204 ^ v201) & v207 ^ v204 & v201);
    v211 = v200 + v243.i64[1] + (__ROR8__(v209, 14) ^ __ROR8__(v209, 18) ^ __ROR8__(v209, 41)) + ((v206 ^ v203) & v209 ^ v203);
    v212 = v201 + v211;
    v213 = v211 + (__ROR8__(v210, 28) ^ __ROR8__(v210, 34) ^ __ROR8__(v210, 39)) + ((v207 ^ v204) & v210 ^ v207 & v204);
    v214 = v203 + v244.i64[0] + (__ROR8__(v212, 14) ^ __ROR8__(v212, 18) ^ __ROR8__(v212, 41)) + ((v209 ^ v206) & v212 ^ v206);
    v215 = v204 + v214;
    v216 = v214 + (__ROR8__(v213, 28) ^ __ROR8__(v213, 34) ^ __ROR8__(v213, 39)) + ((v210 ^ v207) & v213 ^ v210 & v207);
    v217 = v206 + v244.i64[1] + (__ROR8__(v215, 14) ^ __ROR8__(v215, 18) ^ __ROR8__(v215, 41)) + ((v212 ^ v209) & v215 ^ v209);
    v218 = v207 + v217;
    v219 = v217 + (__ROR8__(v216, 28) ^ __ROR8__(v216, 34) ^ __ROR8__(v216, 39)) + ((v213 ^ v210) & v216 ^ v213 & v210);
    v220 = v209 + v245.i64[0] + (__ROR8__(v218, 14) ^ __ROR8__(v218, 18) ^ __ROR8__(v218, 41)) + ((v215 ^ v212) & v218 ^ v212);
    v221 = v210 + v220;
    v222 = v220 + (__ROR8__(v219, 28) ^ __ROR8__(v219, 34) ^ __ROR8__(v219, 39)) + ((v216 ^ v213) & v219 ^ v216 & v213);
    v223 = v212 + v245.i64[1] + (__ROR8__(v221, 14) ^ __ROR8__(v221, 18) ^ __ROR8__(v221, 41)) + ((v218 ^ v215) & v221 ^ v215);
    v224 = v213 + v223;
    v225 = v223 + (__ROR8__(v222, 28) ^ __ROR8__(v222, 34) ^ __ROR8__(v222, 39)) + ((v219 ^ v216) & v222 ^ v219 & v216);
    v226 = v215 + v246.i64[0] + (__ROR8__(v224, 14) ^ __ROR8__(v224, 18) ^ __ROR8__(v224, 41)) + ((v221 ^ v218) & v224 ^ v218);
    v227 = v216 + v226;
    v228 = v226 + (__ROR8__(v225, 28) ^ __ROR8__(v225, 34) ^ __ROR8__(v225, 39)) + ((v222 ^ v219) & v225 ^ v222 & v219);
    v229 = v218 + v246.i64[1] + (__ROR8__(v227, 14) ^ __ROR8__(v227, 18) ^ __ROR8__(v227, 41)) + ((v224 ^ v221) & v227 ^ v221);
    v230 = v219 + v229;
    v231 = v229 + (__ROR8__(v228, 28) ^ __ROR8__(v228, 34) ^ __ROR8__(v228, 39)) + ((v225 ^ v222) & v228 ^ v225 & v222);
    v232 = v221 + v247.i64[0] + (__ROR8__(v230, 14) ^ __ROR8__(v230, 18) ^ __ROR8__(v230, 41)) + ((v227 ^ v224) & v230 ^ v224);
    v233 = v222 + v232;
    v234 = v232 + (__ROR8__(v231, 28) ^ __ROR8__(v231, 34) ^ __ROR8__(v231, 39)) + ((v228 ^ v225) & v231 ^ v228 & v225);
    v235 = v224 + v247.i64[1] + (__ROR8__(v233, 14) ^ __ROR8__(v233, 18) ^ __ROR8__(v233, 41)) + ((v230 ^ v227) & v233 ^ v227);
    v236 = result[1] + v234;
    *result += v235 + (__ROR8__(v234, 28) ^ __ROR8__(v234, 34) ^ __ROR8__(v234, 39)) + ((v231 ^ v228) & v234 ^ v231 & v228);
    result[1] = v236;
    v237 = result[3] + v228;
    result[2] += v231;
    result[3] = v237;
    v238 = result[5] + v233;
    result[4] += v225 + v235;
    result[5] = v238;
    v239 = result[7] + v227;
    result[6] += v230;
    result[7] = v239;
  }

  return result;
}

int32x4_t *AccelerateCrypto_SHA1_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    v4 = a3 + 4;
    v10 = *result;
    v9 = result + 1;
    v11 = v10;
    v10.i32[0] = v9->i32[0];
    v12 = v9 - 1;
    v3.i32[0] = v10.i32[0];
    _Q1 = vrev32q_s8(v6);
    _Q2 = vrev32q_s8(v7);
    _Q3 = vrev32q_s8(v8);
    _Q4 = vaddq_s32(vrev32q_s8(v5), *K_XMM_AR);
    _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
    _Q19 = v3;
    _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
    _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = v11.i32[0];
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_830D0);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, loc_830D0);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, loc_830D0);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, loc_830D0);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_830D0);
    v105 = a2 <= 1;
    for (i = a2 - 1; !v105; --i)
    {
      v107 = *v4;
      v108 = v4[1];
      v109 = v4[2];
      v110 = v4[3];
      v4 += 4;
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
      }

      _Q4 = vaddq_s32(vrev32q_s8(v107), *K_XMM_AR);
      _Q1 = vrev32q_s8(v108);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
      }

      _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
      _Q2 = vrev32q_s8(v109);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
      }

      _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
      _Q3 = vrev32q_s8(v110);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
      }

      _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
      _Q19 = vaddq_s32(v3, _Q19);
      v11 = vaddq_s32(v11, _Q18);
      v3 = _Q19;
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = v11.i32[0];
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_830D0);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, loc_830D0);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, loc_830D0);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, loc_830D0);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_830D0);
      v105 = i <= 1;
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
    }

    *v12 = vaddq_s32(v11, _Q18);
    result = v12 + 1;
    result->i32[0] = vaddq_s32(v3, _Q19).u32[0];
  }

  return result;
}

uint64_t ccsha512_final(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = v7 + 8 + v6;
  v10 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v11, v10);
  memmove(v11, a2, v9 + 4);
  v12 = v11 + v7 + 8;
  v13 = *&v12[v6];
  *v11 += (8 * v13);
  *&v12[v6] = v13 + 1;
  v12[v13] = 0x80;
  v14 = *&v12[v6];
  if (v6 - 16 < v14)
  {
    while (v6 > v14)
    {
      *&v12[v6] = v14 + 1;
      v12[v14] = 0;
      v14 = *&v12[v6];
    }

    (*(a1 + 48))(v11 + 1, 1);
    LODWORD(v14) = 0;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(v11 + v7 + v6 + 8) = 0;
  }

  v15 = v11 + v7 + 8;
  v16 = (v15 + v6);
  if (v6 - 8 > v14)
  {
    v17 = v14;
    do
    {
      *v16 = v14 + 1;
      *(v15 + v17) = 0;
      v17 = *v16;
      LODWORD(v14) = *v16;
    }

    while (v6 - 8 > v17);
  }

  *(v16 - 1) = bswap64(*v11);
  (*(a1 + 48))(v11 + 1, 1);
  if (*a1 >= 8uLL)
  {
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      *(a3 + v18) = bswap64(v11[v19 + 1]);
      v19 = v20++;
      v18 += 8;
    }

    while (v19 < *a1 >> 3);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v11);
}

void *ccsha384_di()
{
  if (MEMORY[0xFFFFFC010] < 0)
  {
    return &ccsha384_vng_arm_hw_di;
  }

  else
  {
    return &ccsha384_vng_arm_di;
  }
}

int8x8_t mach_o::Architecture::Architecture(int8x8_t *this, const fat_arch *a2)
{
  result = vrev32_s8(*&a2->cputype);
  *this = result;
  return result;
}

void *mach_o::Error::message(mach_o::Error *this)
{
  v1 = *this;
  if (v1)
  {
    return _simple_string(v1);
  }

  else
  {
    return &unk_91735;
  }
}

void mach_o::Error::~Error(vm_address_t **this)
{
  v2 = *this;
  if (v2)
  {
    _simple_sfree(v2);
  }

  *this = 0;
}

uint64_t mach_o::GradedArchitectures::hasCompatibleSlice(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unsigned int *a5)
{
  if (*(a1 + 12) == 1 && a4 == 0)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  while (!a3)
  {
LABEL_12:
    result = 0;
    if (++v11 >= v7)
    {
      return result;
    }
  }

  v12 = 0;
  v13 = 0;
  while (!mach_o::Architecture::operator==((a2 + 8 * v12), *(*a1 + 8 * v11)))
  {
    v12 = ++v13;
    if (a3 <= v13)
    {
      v7 = *(a1 + 8);
      goto LABEL_12;
    }
  }

  *a5 = v13;
  return 1;
}

uint64_t mach_o::GradedArchitectures::forEachArch(uint64_t result, int a2, uint64_t a3)
{
  if (*(result + 12) != 1 || a2 != 0)
  {
    v9[5] = v3;
    v9[6] = v4;
    v6 = result;
    if (*(result + 8))
    {
      v8 = 0;
      do
      {
        v9[0] = **(*v6 + 8 * v8);
        result = (*(a3 + 16))(a3, v9);
        ++v8;
      }

      while (v8 < *(v6 + 8));
    }
  }

  return result;
}

BOOL mach_o::Header::uses16KPages(mach_o::Header *this)
{
  v1 = *(this + 1);
  if (v1 == 33554444 || v1 == 16777228)
  {
    return 1;
  }

  if (v1 == 12)
  {
    return *(this + 2) == 12;
  }

  return 0;
}

BOOL mach_o::Header::isArch(mach_header *this, const char *a2)
{
  mach_o::Architecture::Architecture(&v5, this);
  v3 = mach_o::Architecture::name(&v5);
  return _platform_strcmp(a2, v3) == 0;
}

__n128 __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t mach_o::Header::isStaticExecutable(mach_o::Header *this)
{
  if (*(this + 3) == 2)
  {
    return mach_o::Header::hasLoadCommand(this, 14) ^ 1;
  }

  else
  {
    return 0;
  }
}

double __Block_byref_object_copy__63(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__64(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

uint64_t mach_o::Header::validSegment<segment_command,section>@<X0>(mach_o::Policy *this@<X1>, uint64_t result@<X0>, unint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 36);
  v9 = __CFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9 || v10 > a3)
  {
    return mach_o::Error::Error(a5, "segment '%s' load command content extends beyond end of file");
  }

  v12 = result;
  v13 = *(result + 12);
  if (v13 != 1)
  {
    v14 = *(a4 + 28);
    if (v8 > v14)
    {
      if (v14 || *(a4 + 44))
      {
        return mach_o::Error::Error(a5, "segment '%s' filesize exceeds vmsize");
      }

LABEL_36:
      *a5 = 0;
      return result;
    }
  }

  if (*(a4 + 44) >= 8u)
  {
    return mach_o::Error::Error(a5, "%s segment permissions has invalid bits set (0x%08X)");
  }

  if ((v13 == 8 || v13 == 6 || v13 == 2 && (*(result + 24) & 4) != 0) && mach_o::Policy::enforceTextSegmentPermissions(this) && !_platform_strcmp((a4 + 8), "__TEXT") && *(a4 + 44) != 5)
  {
    v18 = "__TEXT segment permissions is not 'r-x'";
    goto LABEL_53;
  }

  result = mach_o::Policy::enforceReadOnlyLinkedit(this);
  if (result)
  {
    result = _platform_strcmp((a4 + 8), "__LINKEDIT");
    if (!result && *(a4 + 44) != 1)
    {
      v18 = "__LINKEDIT segment permissions is not 'r--'";
      goto LABEL_53;
    }
  }

  if (*(v12 + 3) == 9)
  {
    goto LABEL_25;
  }

  result = mach_o::Policy::useProtectedStack(this);
  if (!result)
  {
    goto LABEL_25;
  }

  if (!_platform_strcmp((a4 + 8), "__DATA") && *(a4 + 44) != 3)
  {
    v18 = "__DATA segment permissions is not 'rw-'";
    goto LABEL_53;
  }

  result = _platform_strcmp((a4 + 8), "__DATA_CONST");
  if (!result)
  {
    if (*(a4 + 44) == 3)
    {
      if ((*(a4 + 52) & 0x10) == 0)
      {
        if ((v22 = 0, v19 = *(v12 + 3), v19 != 9) && v19 != 6 || (result = mach_o::Header::hasSplitSegInfo(v12, &v22), !result) || v22)
        {
          if ((*(v12 + 6) & 0x80000000) == 0)
          {
            if (*(v12 + 3) != 2 || (result = mach_o::Header::hasLoadCommand(v12, 14), result))
            {
              result = mach_o::Policy::enforceDataConstSegmentPermissions(this);
              if (result)
              {
                return mach_o::Error::Error(a5, "__DATA_CONST segment missing SG_READ_ONLY flag");
              }
            }
          }
        }
      }

      goto LABEL_25;
    }

    v18 = "__DATA_CONST segment permissions is not 'rw-'";
LABEL_53:

    return mach_o::Error::Error(a5, v18);
  }

LABEL_25:
  if (__CFADD__(*(a4 + 24), *(a4 + 28)))
  {
    return mach_o::Error::Error(a5, "'%s' segment vm range wraps");
  }

  if (*(v12 + 3) == 9)
  {
    goto LABEL_36;
  }

  v15 = *(a4 + 48);
  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = a4 + 68 * v15 + 56;
  v17 = a4 + 56;
  while (1)
  {
    if (*(v17 + 32) < *(a4 + 24))
    {
      v20 = *(v17 + 32);
      return mach_o::Error::Error(a5, "section '%s' start address 0x%lX is before containing segment's address 0x%0lX");
    }

    result = mach_o::Policy::enforceSectionsInSegment(this);
    if (result)
    {
      if (*(v17 + 36) + *(v17 + 32) > (*(a4 + 28) + *(a4 + 24)))
      {
        break;
      }
    }

    v17 += 68;
    if (v17 >= v16)
    {
      goto LABEL_36;
    }
  }

  v21 = (*(v17 + 36) + *(v17 + 32));
  return mach_o::Error::Error(a5, "section '%s' end address 0x%lX is beyond containing segment's end address 0x%0lX");
}

uint64_t mach_o::Header::entryAddrFromThreadCmd(mach_o::Header *this, const thread_command *a2, unint64_t *a3)
{
  result = 0;
  cmd = a2[1].cmd;
  v6 = *(this + 1);
  if (v6 <= 16777222)
  {
    if (v6 == 7)
    {
      if (cmd == 1)
      {
        cmdsize = a2[7].cmd;
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 != 12)
      {
        return result;
      }

      if (cmd == 1)
      {
        cmdsize = a2[9].cmdsize;
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (v6 == 16777223)
  {
    if (cmd == 4)
    {
      cmdsize = a2[18];
      goto LABEL_18;
    }

    return 0;
  }

  if (v6 == 16777228 || v6 == 33554444)
  {
    if (cmd == 6)
    {
      cmdsize = a2[34];
LABEL_18:
      *a3 = cmdsize;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t __copy_helper_block_8_40c22_ZTSN6mach_o8PlatformE(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t mach_o::Header::allowsAlternatePlatform(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header23allowsAlternatePlatformEv_block_invoke;
  v3[3] = &unk_A5148;
  v3[4] = &v4;
  mach_o::Header::forEachSection(this, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL ___ZNK6mach_o6Header23allowsAlternatePlatformEv_block_invoke(_BOOL8 result, void *a2, _BYTE *a3)
{
  if (a2[1] == 16 && **a2 == 0x5F776F6C6C615F5FLL && *(*a2 + 8) == 0x74616C705F746C61)
  {
    v5 = result;
    result = std::string_view::starts_with[abi:nn200100](a2 + 2, "__DATA");
    if (result)
    {
      *(*(*(v5 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t mach_o::Header::linkedDylibLoadPath(mach_o::Header *this, int a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header19linkedDylibLoadPathEj_block_invoke;
  v4[3] = &unk_A51C0;
  v5 = a2;
  v4[4] = v10;
  v4[5] = &v6;
  mach_o::Header::forEachLoadCommand(this, v4, &v12);
  mach_o::Error::~Error(&v12);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header19linkedDylibLoadPathEj_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 + 2147483624) <= 0xB && ((1 << (*a2 - 24)) & 0x881) != 0 || *a2 == 12)
  {
    v4 = *(*(result + 32) + 8);
    v5 = *(v4 + 24);
    if (v5 == *(result + 48))
    {
      *(*(*(result + 40) + 8) + 24) = a2 + a2[2];
      v4 = *(*(result + 32) + 8);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
  }

  return result;
}

uint64_t mach_o::Header::hasSplitSegInfo(mach_o::Header *this, BOOL *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header15hasSplitSegInfoERb_block_invoke;
  v4[3] = &unk_A52B0;
  v4[4] = &v5;
  v4[5] = a2;
  mach_o::Header::forEachLoadCommand(this, v4, &v9);
  mach_o::Error::~Error(&v9);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header15hasSplitSegInfoERb_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 30)
  {
    **(result + 40) = a2[3] == 0;
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

BOOL mach_o::Header::hasFunctionsVariantTable(mach_o::Header *this, unint64_t *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header24hasFunctionsVariantTableERy_block_invoke;
  v6[3] = &unk_A52D8;
  v6[4] = &v7;
  mach_o::Header::forEachLoadCommand(this, v6, &v11);
  mach_o::Error::~Error(&v11);
  v4 = *(v8 + 6);
  if (v4)
  {
    *a2 = mach_o::Header::zerofillExpansionAmount(this) + v4;
  }

  _Block_object_dispose(&v7, 8);
  return v4 != 0;
}

uint64_t ___ZNK6mach_o6Header24hasFunctionsVariantTableERy_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 55)
  {
    *(*(*(result + 32) + 8) + 24) = a2[2];
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::zerofillExpansionAmount(mach_o::Header *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header23zerofillExpansionAmountEv_block_invoke;
  v3[3] = &unk_A54F0;
  v3[4] = v4;
  v3[5] = &v5;
  mach_o::Header::forEachLoadCommand(this, v3, &v9);
  mach_o::Error::~Error(&v9);
  v1 = v6[3];
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(&v5, 8);
  return v1;
}

void mach_o::Header::forEachSingletonPatch(mach_o::Header *a1, uint64_t a2)
{
  if (*a1 == -17958193)
  {
    v3 = 16;
  }

  else
  {
    v3 = 8;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header21forEachSingletonPatchEU13block_pointerFvyE_block_invoke;
  v4[3] = &unk_A5388;
  v5 = v3;
  v4[4] = a2;
  v4[5] = mach_o::Header::preferredLoadAddress(a1);
  mach_o::Header::forEachSection(a1, v4);
}

uint64_t ___ZNK6mach_o6Header21forEachSingletonPatchEU13block_pointerFvyE_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == 14 && **a2 == 0x5F74736E6F635F5FLL && *(*a2 + 6) == 0x326A626F66635F74)
  {
    v5 = result;
    *a3 = 1;
    v6 = *(a2 + 64);
    v7 = *(result + 48);
    if (v6 % v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a2 + 88) == v7;
    }

    if (v8 && v6 != 0)
    {
      v10 = 0;
      do
      {
        v11 = *(a2 + 56) + v10 - *(v5 + 40);
        result = (*(*(v5 + 32) + 16))();
        v10 += *(v5 + 48);
      }

      while (v10 != *(a2 + 64));
    }
  }

  return result;
}

uint64_t mach_o::Header::hasObjCMessageReferences(mach_o::Header *this)
{
  v2 = 0;
  v3 = 0;
  return mach_o::Header::findObjCDataSection(this, "__objc_msgrefs", 14, &v3, &v2);
}

uint64_t mach_o::Header::findObjCDataSection(mach_o::Header *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK6mach_o6Header19findObjCDataSectionE7CStringRyS2__block_invoke;
  v9[3] = &unk_A53B0;
  v9[4] = &v10;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  v9[8] = mach_o::Header::preferredLoadAddress(a1);
  v9[9] = a5;
  mach_o::Header::forEachSection(a1, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t ___ZNK6mach_o6Header19findObjCDataSectionE7CStringRyS2__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = std::string_view::starts_with[abi:nn200100]((a2 + 16), "__DATA");
  if (result)
  {
    v7 = *(a2 + 8);
    if (v7 == *(a1 + 48))
    {
      result = _platform_memcmp(*a2, *(a1 + 40), v7);
      if (!result)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        **(a1 + 56) = *(a2 + 56) - *(a1 + 64);
        **(a1 + 72) = *(a2 + 64);
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t mach_o::Header::segmentVmAddr(mach_o::Header *this, int a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header13segmentVmAddrEj_block_invoke;
  v4[3] = &unk_A5428;
  v5 = a2;
  v4[4] = v6;
  v4[5] = &v8;
  mach_o::Header::forEachSegment(this, v4);
  v2 = v9[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header13segmentVmAddrEj_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  if (*(result + 48) == v4)
  {
    *(*(*(result + 40) + 8) + 24) = *(a2 + 16);
    *a3 = 1;
    v3 = *(*(result + 32) + 8);
    v4 = *(v3 + 24);
  }

  *(v3 + 24) = v4 + 1;
  return result;
}

__n128 __Block_byref_object_copy__294(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

mach_o::Header *mach_o::Header::computeLinkEditBias(mach_o::Header *this, int a2)
{
  v2 = this;
  if (a2)
  {
    return (this + mach_o::Header::zerofillExpansionAmount(this));
  }

  return v2;
}

uint64_t ___ZNK6mach_o6Header23zerofillExpansionAmountEv_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    result = _platform_strcmp((a2 + 8), "__TEXT");
    if (result)
    {
      result = _platform_strcmp((a2 + 8), "__LINKEDIT");
      if (result)
      {
        return result;
      }

      v6 = *(a2 + 24);
      v7 = *(v5 + 40);
      v8 = *(*(*(v5 + 32) + 8) + 24);
      v9 = *(a2 + 32);
      goto LABEL_9;
    }

    v10 = *(a2 + 24);
  }

  else
  {
    if (*a2 != 25)
    {
      return result;
    }

    result = _platform_strcmp((a2 + 8), "__TEXT");
    if (result)
    {
      result = _platform_strcmp((a2 + 8), "__LINKEDIT");
      if (result)
      {
        return result;
      }

      v6 = *(a2 + 24);
      v7 = *(v5 + 40);
      v8 = *(*(*(v5 + 32) + 8) + 24);
      v9 = *(a2 + 40);
LABEL_9:
      *(*(v7 + 8) + 24) = v6 - v9 - v8;
      *a3 = 1;
      return result;
    }

    v10 = *(a2 + 24);
  }

  *(*(*(v5 + 32) + 8) + 24) = v10;
  return result;
}

uint64_t mach_o::Header::hasInterposingTuples(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header20hasInterposingTuplesEv_block_invoke;
  v3[3] = &unk_A5540;
  v3[4] = &v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK6mach_o6Header25forEachInterposingSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke;
  v8[3] = &unk_A5568;
  v8[4] = v3;
  mach_o::Header::forEachSection(this, v8);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t ___ZNK6mach_o6Header20hasInterposingTuplesEv_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t mach_o::warning(uint64_t this, const void *a2, const char *a3, ...)
{
  va_start(va, a3);
  if (mach_o::sHandler)
  {
    return mach_o::sHandler(this, a2, va);
  }

  return this;
}

const char *mach_o::Platform::name(mach_o::Platform *this)
{
  v1 = *this;
  if (*this)
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24);
  }

  else if (*(this + 2))
  {
    return "future";
  }

  else
  {
    return "unknown";
  }

  return result;
}

uint64_t mach_o::Platform::isSimulator(mach_o::Platform *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 54);
  }

  return v1 & 1;
}

uint64_t mach_o::Platform::isExclaveCore(mach_o::Platform *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 55);
  }

  return v1 & 1;
}

uint64_t mach_o::Platform::isKernelKit(mach_o::Platform *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 57);
  }

  return v1 & 1;
}

const char *mach_o::Platform::libSystemDir(mach_o::Platform *this)
{
  v1 = *this;
  if (*this == &mach_o::PlatformInfo_sepOS::singleton || v1 == &mach_o::PlatformInfo_firmware::singleton)
  {
    if (!*(this + 2))
    {
      return &unk_91735;
    }
  }

  else if (!v1)
  {
    return "/usr/lib/system/";
  }

  if (*(v1 + 55) & 1) != 0 || (*(v1 + 57))
  {
    return &unk_91735;
  }

  if (v1 != &mach_o::PlatformInfo_driverKit::singleton || *(this + 2))
  {
    if (*(v1 + 56))
    {
      return "/System/ExclaveKit/usr/lib/system/";
    }

    return "/usr/lib/system/";
  }

  return "/System/DriverKit/usr/lib/system/";
}

uint64_t mach_o::PlatformInfo_macOS::yearForVersion(uint64_t a1, unsigned int a2, _WORD *a3, BOOL *a4)
{
  if (a2 >= 0xB0000)
  {
    return mach_o::PlatformInfo::yearForMajorVersion(a1, a2, a3, a4);
  }

  v4 = (a2 + 16121856) >> 8;
  *a3 = v4 + 2004;
  *a4 = (a2 & 0xFC) != 0;
  if ((a2 & 0xFC) != 0)
  {
    *a3 = v4 + 2003;
  }

  return a1;
}

uint64_t mach_o::PlatformInfo_macOS::minorVersionForSpring(mach_o::PlatformInfo_macOS *this, unsigned int a2)
{
  if (a2 < 0xE)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t mach_o::PlatformInfo_bridgeOS::minorVersionForSpring(mach_o::PlatformInfo_bridgeOS *this, unsigned int a2)
{
  if (a2 < 9)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t mach_o::PlatformInfo_visionOS::minorVersionForSpring(mach_o::PlatformInfo_visionOS *this, int a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

void *mach_o::FunctionStarts::FunctionStarts(void *this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = a2;
  this[1] = &a2[a3];
  return this;
}

double mach_o::CompactUnwind::CompactUnwind(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  result = *a2;
  *a1 = *a2;
  a1[1] = a3;
  a1[2] = a4;
  return result;
}

BOOL mach_o::Policy::enforceHasUUID(mach_o::Policy *this)
{
  v1 = *(this + 12);
  if (v1 == 1)
  {
    return 0;
  }

  if (v1 == 2)
  {
    v2 = &mach_o::Platform::Epoch::fall2025;
  }

  else
  {
    v2 = &mach_o::Platform::Epoch::fall2021;
  }

  return *(this + 1) >= *v2;
}

void *mach_o::ChainedFixups::ChainedFixups(void *this, const dyld_chained_fixups_header *a2, uint64_t a3)
{
  *this = a2;
  this[1] = 0;
  this[2] = a3;
  return this;
}

uint64_t (***mach_o::ChainedFixups::forEachFixupChainStartLocation(uint64_t (***result)(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E *__hidden this), uint64_t a2, unint64_t a3, uint64_t a4))(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E *__hidden this)
{
  v19 = result;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*v19 + *(*v19 + 1));
      if (*v7 > v6)
      {
        v8 = v7[v5 + 1];
        if (v8)
        {
          v9 = v7 + v8;
          result = mach_o::ChainedFixups::PointerFormat::make(*(v7 + v8 + 6));
          v10 = *(v9 + 10);
          if (v10)
          {
            v11 = 0;
            v12 = v9 + 22;
            v13 = a2 + 56 * v5;
            do
            {
              v14 = *&v12[2 * v11];
              if (v14 != 0xFFFF)
              {
                if ((v14 & 0x8000) != 0)
                {
                  v15 = v14 & 0x7FFF;
                  do
                  {
                    v16 = *&v12[2 * v15];
                    result = (*(a4 + 16))(a4, *(v13 + 24) + v11 * *(v9 + 2) + (v16 & 0x7FFF), v6, v11);
                    ++v15;
                  }

                  while ((v16 & 0x8000) == 0);
                }

                else
                {
                  result = (*(a4 + 16))(a4, *(v13 + 24) + v11 * *(v9 + 2) + v14, v6, v11);
                }

                v10 = *(v9 + 10);
              }

              ++v11;
            }

            while (v11 < v10);
          }
        }
      }

      v5 = (v6 + 1);
      v6 = v5;
    }

    while (a3 > v5);
  }

  return result;
}

uint64_t (***mach_o::ChainedFixups::PointerFormat::make(mach_o::ChainedFixups::PointerFormat *this))(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E *__hidden this)
{
  if ((this - 2) > 0xC)
  {
    return &mach_o::p1;
  }

  else
  {
    return off_A6B90[(this - 2)];
  }
}

uint64_t mach_o::ChainedFixups::PointerFormat::forEachFixupLocationInChain(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9)
{
  v13 = a2;
  v14 = result;
  v22 = 0;
  if (a4)
  {
    v15 = *(a4 + 24) + a8 * a7;
    v16 = v15 + a8;
    if (v15 > a2 || v16 < a2)
    {
      return result;
    }
  }

  else
  {
    v16 = 0;
  }

  do
  {
    if (!v13 || (v22 & 1) != 0)
    {
      break;
    }

    v18 = (*(*v14 + 104))(v14, v13);
    (*(*v14 + 112))(v21, v14, v13, a4, a3, a5, a6);
    result = (*(a9 + 16))(a9, v21, &v22);
    v19 = !v18 || v16 == 0;
    v20 = !v19 && v18 > v16;
    v13 = v18;
  }

  while (!v20);
  return result;
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE::writeChainEntry(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  if (*(a1 + 22) != 1)
  {
    v3 = *a1;
    v4 = a2 - *a1;
    if (!a2)
    {
      v4 = 0;
    }

    v5 = *v3;
    v6 = (v4 / 8) << 52;
    if (*(a1 + 16) == 1)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFLL | v6 | 0x8000000000000000;
      *v3 = v7;
      v8 = v7 & 0xFFF7FFFFFFFFFFFFLL | (((*(a1 + 18) & 3) != 0) << 51);
      *v3 = v8;
      v9 = v8 & 0xFFFBFFFFFFFFFFFFLL | (((*(a1 + 18) & 4) != 0) << 50);
      *v3 = v9;
      v10 = v9 & 0xFFFC0003FFFFFFFFLL | (*(a1 + 20) << 34);
      *v3 = v10;
      v11 = *(a1 + 24);
      *v3 = v10 & 0xFFFFFFFC00000000 | v11 & 0x3FFFFFFFFLL;
      if (8 * ((v4 / 8) & 0x7FF) == v4)
      {
        v12 = v11 & 0x3FFFFFFFFLL;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = v6 & 0x7FF0000000000000;
      v14 = v6 & 0x7FF0000000000000 | v5 & 0x3FFFFFFFFFFLL;
      *v3 = v14;
      v15 = *(a1 + 24);
      *v3 = (v15 >> 22) & 0x3FC00000000 | v14 & 0xFFF00003FFFFFFFFLL;
      v16 = *(a1 + 24);
      *v3 = v13 & 0xFFFFFC0000000000 | (v15 >> 22) & 0xFFFFFFFC00000000 | v16 & 0x3FFFFFFFFLL;
      if (8 * ((v4 / 8) & 0x7FF) == v4)
      {
        v12 = v16 & 0x3FFFFFFFFLL | v15 & 0xFF00000000000000;
LABEL_12:
        if (v12 == *(a1 + 24))
        {
          *a3 = 0;
        }

        else
        {
          v18 = *(a1 + 8);
          v22 = v18[4];
          v24 = *a1 - v18[3];
          v20 = v18[5];
          mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
        }

        return;
      }
    }

    v17 = *(a1 + 8);
    v21 = v17[4];
    v23 = *a1 - v17[3];
    v19 = v17[5];
    mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
    return;
  }

  mach_o::Error::Error(a3, "shared cache fixup formate does not support binds");
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED *this, void *a2)
{
  v2 = (*a2 >> 51) & 0xFFFLL;
  if (v2)
  {
    return a2 + (*(*this + 136))(this) * v2;
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a3 + 8 * (*a1 >> 28));
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v6 = HIDWORD(v4);
    *a4 = a1;
    *(a4 + 8) = a2;
    v8 = *(a4 + 18) & 0xF8;
    *(a4 + 16) = 1;
    v7 = (v4 >> 46) & 4 | (v4 >> 49) & 3 | v8;
  }

  else
  {
    LOWORD(v6) = 0;
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    LOBYTE(v7) = *(a4 + 18) & 0xF8;
  }

  *(a4 + 18) = v7;
  *(a4 + 20) = v6;
  *(a4 + 22) = 0;
  *(a4 + 24) = v5 + (v4 & 0xFFFFFFF);
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED::writeChainEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, mach_o::Error *a6@<X8>)
{
  v7 = *a2;
  if (a3)
  {
    v8 = a3 - *a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 22) == 1)
  {
    v9 = "firmware format does not support binds";
LABEL_12:

    return mach_o::Error::Error(a6, v9);
  }

  if (!a5)
  {
LABEL_11:
    v9 = "target vm address not in any segment";
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  v14 = *(a2 + 24);
  v15 = 8 * a5;
  while (1)
  {
    v16 = *(a4 + 8 * v12);
    v17 = v14 - *v16;
    if (v14 >= *v16 && v16[1] + *v16 >= v14)
    {
      break;
    }

    v13 += 0x10000000;
    ++v12;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  v19 = *v7;
  if (*(a2 + 16) == 1)
  {
    *v7 = v19 | 0x8000000000000000;
    v20 = v8 / (*(*a1 + 136))(a1);
    v21 = *v7 & 0x8007FFFFFFFFFFFFLL | ((v20 & 0xFFF) << 51);
    *v7 = v21;
    v22 = v21 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
    *v7 = v22;
    v23 = v22 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
    *v7 = v23;
    v24 = v23 & 0xFFFF000000000000 | (*(a2 + 20) << 32) | v13 | v17 & 0xFFFFFFF;
  }

  else
  {
    *v7 = v19 & 0x7FFFFFFFFFFFFFFFLL;
    v20 = v8 / (*(*a1 + 136))(a1);
    v24 = v17 & 0xFFFFFFF | v13 | ((v20 & 0xFFF) << 51) | *v7 & 0x8000000000000000;
  }

  *v7 = v24;
  v25 = v20 & 0xFFF;
  result = (*(*a1 + 136))(a1);
  if (v8 == result * v25)
  {
    if (v12 == *v7 >> 28 && (*v7 & 0xFFFFFFF) == v17)
    {
      *a6 = 0;
    }

    else
    {
      v27 = *(a2 + 8);
      v32 = v27[4];
      v33 = *a2 - v27[3];
      v30 = v27[5];
      return mach_o::Error::Error(a6, "segIndex (%d) and segOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v26 = *(a2 + 8);
    v29 = v26[4];
    v31 = *a2 - v26[3];
    v28 = v26[5];
    return mach_o::Error::Error(a6, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_Generic_arm64e::bindMaxEmbeddableAddend(mach_o::PointerFormat_Generic_arm64e *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0x3FFFFLL;
  }
}

uint64_t mach_o::PointerFormat_Generic_arm64e::bindMinEmbeddableAddend(mach_o::PointerFormat_Generic_arm64e *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294705153;
  }
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE *this, void *a2)
{
  v2 = (*a2 >> 52) & 0x7FFLL;
  if (v2)
  {
    return a2 + (*(*this + 136))(this) * v2;
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = v3 & 0x3FFFFFFFFLL;
    v4 = v3 >> 34;
    *a3 = a1;
    *(a3 + 8) = a2;
    v6 = *(a3 + 18) & 0xF8;
    *(a3 + 16) = 1;
    LODWORD(v3) = HIWORD(v3) & 4 | (v3 >> 50) & 2 | v6;
  }

  else
  {
    LOWORD(v4) = 0;
    v5 = v3 & 0x3FFFFFFFFLL | ((v3 >> 34) << 56);
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    LOBYTE(v3) = *(a3 + 18) & 0xF8;
  }

  *(a3 + 18) = v3;
  *(a3 + 20) = v4;
  *(a3 + 22) = 0;
  *(a3 + 24) = v5;
}

uint64_t mach_o::PointerFormat_Generic_arm64e::maxRebaseTargetOffset(mach_o::PointerFormat_Generic_arm64e *this, int a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0x7FFFFFFFFFFLL;
  }
}

uint64_t mach_o::PointerFormat_Generic_arm64e::nextLocation(mach_o::PointerFormat_Generic_arm64e *this, void *a2)
{
  v2 = (*a2 >> 51) & 0x7FFLL;
  if (v2)
  {
    return a2 + (*(*this + 136))(this) * v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mach_o::PointerFormat_Generic_arm64e::parseChainEntry@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  if ((*a2 & 0x4000000000000000) != 0)
  {
    result = (*(*result + 128))(result);
    v8 = *a2;
    if (result == 24)
    {
      v12 = *a2 & 0xFFFFFF;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_8:
        *a5 = a2;
        *(a5 + 8) = a3;
        *(a5 + 16) = 0;
        *(a5 + 18) &= 0xF8u;
        *(a5 + 20) = 0x10000;
        *(a5 + 24) = v12;
        *(a5 + 28) = HIDWORD(v8) & 0x7FFFF;
        return result;
      }
    }

    else
    {
      LODWORD(v12) = *a2;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    v13 = (v8 >> 49) & 3;
    v14 = HIDWORD(v8);
    *a5 = a2;
    *(a5 + 8) = a3;
    v15 = *(a5 + 18) & 0xF8;
    *(a5 + 22) = 1;
    *(a5 + 24) = v12;
    *(a5 + 28) = 0;
    *(a5 + 16) = 1;
LABEL_12:
    *(a5 + 18) = (v8 >> 46) & 4 | v13 | v15;
    *(a5 + 20) = v14;
    return result;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    v13 = (v8 >> 49) & 3;
    v14 = HIDWORD(v8);
    *a5 = a2;
    *(a5 + 8) = a3;
    v15 = *(a5 + 18) & 0xF8;
    *(a5 + 22) = 0;
    *(a5 + 24) = v8;
    *(a5 + 16) = 1;
    goto LABEL_12;
  }

  result = (*(*result + 144))(result);
  v10 = *a2 & 0x7FFFFFFFFFFLL;
  if (result)
  {
    v10 -= a4;
  }

  v11 = (*a2 << 13) & 0xFF00000000000000 | v10;
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = 0;
  *(a5 + 18) &= 0xF8u;
  *(a5 + 20) = 0;
  *(a5 + 24) = v11;
  return result;
}

mach_o::Error *mach_o::PointerFormat_Generic_arm64e::writeChainEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v8 = *a2;
  if (a3)
  {
    v9 = a3 - *a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 22) != 1)
  {
    if (*(a2 + 16) == 1)
    {
      *v8 = *v8 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v22 = (*(*a1 + 136))(a1);
      v23 = *v8 & 0xC007FFFFFFFFFFFFLL | (((v9 / v22) & 0x7FF) << 51);
      *v8 = v23;
      v24 = v23 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
      *v8 = v24;
      v25 = v24 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
      *v8 = v25;
      v26 = v25 & 0xFFFF0000FFFFFFFFLL | (*(a2 + 20) << 32);
      *v8 = v26;
      *v8 = v26 & 0xFFFFFFFF00000000 | *(a2 + 24);
      v27 = (v9 / v22) & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 != result * v27)
      {
        goto LABEL_40;
      }

      if (*v8 == *(a2 + 24))
      {
        goto LABEL_39;
      }
    }

    else
    {
      v36 = *(a2 + 24);
      *v8 &= 0x3FFFFFFFFFFFFFFFuLL;
      *(&v37 + 1) = v9 / (*(*a1 + 136))(a1);
      *&v37 = v36;
      *v8 = *v8 & 0xC00007FFFFFFFFFFLL | ((((v37 >> 13) >> 43) & 0x7FFFF) << 43);
      if ((*(*a1 + 144))(a1))
      {
        v38 = a4;
      }

      else
      {
        v38 = 0;
      }

      v39 = (*v8 >> 51) & 0x7FF;
      *v8 = *v8 & 0xFFFFF80000000000 | (v38 + v36) & 0x7FFFFFFFFFFLL;
      if (v9 != (*(*a1 + 136))(a1) * v39)
      {
        goto LABEL_40;
      }

      v40 = *v8 & 0x7FFFFFFFFFFLL;
      result = (*(*a1 + 144))(a1);
      if (result)
      {
        v41 = a4;
      }

      else
      {
        v41 = 0;
      }

      if (v40 == v41 + (v36 & 0xFFFFFFFFFFFFFFLL))
      {
        goto LABEL_39;
      }

      v42 = (*(*a1 + 144))(a1);
      v43 = *(a2 + 24);
      if (v42)
      {
        v44 = *(a2 + 8);
        v69 = v44[4];
        v75 = *a2 - v44[3];
        v63 = v44[5];
        return mach_o::Error::Error(a5, "vmAddress (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
      }
    }

    v59 = *(a2 + 8);
    v72 = v59[4];
    v78 = *a2 - v59[3];
    v66 = v59[5];
    return mach_o::Error::Error(a5, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
  }

  v10 = (*(*a1 + 128))(a1);
  v11 = *(a2 + 16);
  v12 = *a2;
  v13 = **a2;
  if (v10 != 24)
  {
    if (*(a2 + 16))
    {
      *v12 = v13 | 0xC000000000000000;
      v28 = (*(*a1 + 136))(a1);
      v29 = *v12 & 0xC007FFFFFFFFFFFFLL | (((v9 / v28) & 0x7FF) << 51);
      *v12 = v29;
      v30 = v29 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
      *v12 = v30;
      v31 = v30 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
      *v12 = v31;
      v32 = v31 & 0xFFFF00000000FFFFLL | (*(a2 + 20) << 32);
      *v12 = v32;
      *v12 = v32 & 0xFFFFFFFF00000000 | *(a2 + 24);
      v33 = (v9 / v28) & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 == result * v33)
      {
        v21 = *v12;
        goto LABEL_16;
      }

LABEL_40:
      v57 = *(a2 + 8);
      v70 = v57[4];
      v76 = *a2 - v57[3];
      v64 = v57[5];
      return mach_o::Error::Error(a5, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
    }

    *v12 = v13 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
    v52 = v9 / (*(*a1 + 136))(a1);
    v53 = *v12 & 0xC007FFFFFFFFFFFFLL | ((v52 & 0x7FF) << 51);
    *v12 = v53;
    v54 = *(a2 + 28) & 0x7FFFF;
    v55 = v53 & 0xFFF800000000FFFFLL | (v54 << 32);
    *v12 = v55;
    *v12 = v55 & 0xFFFFFFFF00000000 | *(a2 + 24);
    if (v54 == *(a2 + 28))
    {
      v56 = v52 & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 != result * v56)
      {
        goto LABEL_40;
      }

      v51 = *v12;
      goto LABEL_38;
    }

LABEL_41:
    v58 = *(a2 + 8);
    v71 = v58[4];
    v77 = *a2 - v58[3];
    v65 = v58[5];
    return mach_o::Error::Error(a5, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
  }

  if (!*(a2 + 16))
  {
    *v12 = v13 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
    v45 = v9 / (*(*a1 + 136))(a1);
    v46 = *v12 & 0xC007FFFFFFFFFFFFLL | ((v45 & 0x7FF) << 51);
    *v12 = v46;
    v47 = *(a2 + 28);
    v48 = v46 & 0xFFF8000000FFFFFFLL | ((*&v47 & 0x7FFFFLL) << 32);
    *v12 = v48;
    *v12 = v48 & 0xFFFFFFFF00000000 | *(a2 + 24) & 0xFFFFFFLL;
    if ((v47 & 0x7FFFFu) >= 0x40000)
    {
      v49 = -262144;
    }

    else
    {
      v49 = 0;
    }

    if ((v49 & 0xFFFFFFFFFFFC0000 | *&v47 & 0x3FFFFLL) == *(a2 + 28))
    {
      v50 = v45 & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 != result * v50)
      {
        goto LABEL_40;
      }

      v51 = *v12 & 0xFFFFFF;
LABEL_38:
      if (v51 == *(a2 + 24))
      {
        goto LABEL_39;
      }

      return mach_o::ChainedFixups::PointerFormat::badBindOrdinal(a2, a5);
    }

    goto LABEL_41;
  }

  *v12 = v13 | 0xC000000000000000;
  v14 = (*(*a1 + 136))(a1);
  v15 = *v12 & 0xC007FFFFFFFFFFFFLL | (((v9 / v14) & 0x7FF) << 51);
  *v12 = v15;
  v16 = v15 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
  *v12 = v16;
  v17 = v16 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
  *v12 = v17;
  v18 = v17 & 0xFFFF000000FFFFFFLL | (*(a2 + 20) << 32);
  *v12 = v18;
  *v12 = v18 & 0xFFFFFFFF00000000 | *(a2 + 24) & 0xFFFFFFLL;
  v19 = (v9 / v14) & 0x7FF;
  result = (*(*a1 + 136))(a1);
  if (v9 != result * v19)
  {
    goto LABEL_40;
  }

  v21 = *v12 & 0xFFFFFF;
LABEL_16:
  if (v21 == *(a2 + 24))
  {
    if (*(a2 + 28))
    {
      v34 = *(a2 + 8);
      v68 = v34[4];
      v74 = *a2 - v34[3];
      v61 = *(a2 + 28);
      v62 = v34[5];
      return mach_o::Error::Error(a5, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
    }

LABEL_39:
    *a5 = 0;
    return result;
  }

  v60 = *(a2 + 8);
  v73 = v60[4];
  v79 = *a2 - v60[3];
  v67 = v60[5];
  return mach_o::Error::Error(a5, "bind ordinal (%u) too large in fixup at %.*s+0x%0lX");
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_64::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_64 *this, void *a2)
{
  if (((*a2 >> 51) & 0xFFF) != 0)
  {
    return a2 + 4 * ((*a2 >> 51) & 0xFFF);
  }

  else
  {
    return 0;
  }
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_64::parseChainEntry@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  if (*a2 < 0)
  {
    *a5 = a2;
    *(a5 + 8) = a3;
    *(a5 + 16) = 0;
    *(a5 + 18) &= 0xF8u;
    *(a5 + 20) = 0x10000;
    *(a5 + 24) = v8 & 0xFFFFFF;
    *(a5 + 28) = BYTE3(v8);
  }

  else
  {
    result = (*(*result + 128))(result);
    v10 = *a2 & 0xFFFFFFFFFLL;
    if (result)
    {
      v10 -= a4;
    }

    v11 = (*a2 << 20) & 0xFF00000000000000 | v10;
    *a5 = a2;
    *(a5 + 8) = a3;
    *(a5 + 16) = 0;
    *(a5 + 18) &= 0xF8u;
    *(a5 + 20) = 0;
    *(a5 + 24) = v11;
  }

  return result;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_64::writeChainEntry@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v7 = *a2;
  if (a3)
  {
    v8 = a3 - *a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 22) == 1)
  {
    v9 = *v7 | ((v8 / 4) << 51) | 0x8000000000000000;
    *v7 = v9;
    v10 = *(a2 + 28);
    v11 = v9 & 0xFFF8000000FFFFFFLL | (v10 << 24);
    *v7 = v11;
    v12 = *(a2 + 24) & 0xFFFFFF;
    *v7 = v11 & 0xFFFFFFFFFF000000 | v12;
    if (*(a2 + 28) != v10)
    {
      v21 = *(a2 + 8);
      v32 = v21[4];
      v37 = *a2 - v21[3];
      v27 = v21[5];
      return mach_o::Error::Error(a5, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
    }

    if (4 * ((v8 / 4) & 0xFFF) == v8)
    {
      if (v12 != *(a2 + 24))
      {
        v13 = *(a2 + 8);
        v30 = v13[4];
        v35 = *a2 - v13[3];
        v25 = v13[5];
        return mach_o::Error::Error(a5, "bind ordinal (%u) too large in fixup at %.*s+0x%0lX");
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = (*(*result + 128))(result);
  v15 = *a2;
  v16 = *(a2 + 24);
  if (result)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFLL;
    v18 = v8 + 3;
    if (v8 >= 0)
    {
      v18 = v8;
    }

    *v15 = (v18 << 49) & 0x7FF8000000000000 | (v16 >> 20) & 0x7FF80FF000000000 | (v17 + a4) & 0xFFFFFFFFFLL;
    if ((v18 & 0x3FFC) == v8)
    {
      if ((v17 + a4) >> 36)
      {
        v19 = *(a2 + 24) + a4;
        v20 = *(a2 + 8);
        v31 = v20[4];
        v36 = *a2 - v20[3];
        v26 = v20[5];
        return mach_o::Error::Error(a5, "vmAddress (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v22 = v8 + 3;
  if (v8 >= 0)
  {
    v22 = v8;
  }

  *v15 = (v22 << 49) & 0x7FF8000000000000 | (v16 >> 20) & 0x7FF80FF000000000 | v16 & 0xFFFFFFFFFLL;
  if ((v22 & 0x3FFC) != v8)
  {
LABEL_21:
    v23 = *(a2 + 8);
    v33 = v23[4];
    v38 = *a2 - v23[3];
    v28 = v23[5];
    return mach_o::Error::Error(a5, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  if (v16 == *(a2 + 24))
  {
LABEL_20:
    *a5 = 0;
    return result;
  }

  v24 = *(a2 + 8);
  v34 = v24[4];
  v39 = *a2 - v24[3];
  v29 = v24[5];
  return mach_o::Error::Error(a5, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
}

unsigned int *mach_o::PointerFormat_DYLD_CHAINED_PTR_32::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_32 *this, unsigned int *a2)
{
  v2 = (*a2 >> 26) & 0x1F;
  if (v2)
  {
    return &a2[v2];
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_32::parseChainEntry(unsigned int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) != 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    *(a3 + 18) &= 0xF8u;
    *(a3 + 24) = v3 & 0xFFFFF;
    *(a3 + 28) = (v3 >> 20) & 0x3F;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    *(a3 + 18) &= 0xF8u;
    *(a3 + 24) = v3 & 0x3FFFFFF;
  }

  *(a3 + 20) = 0;
  *(a3 + 22) = v4;
  *(a3 + 23) = 0;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_32::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, mach_o::Error *a4@<X8>)
{
  v4 = *a1;
  v5 = a2 - *a1;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = *v4;
  v7 = (v5 / 4) << 26;
  if (*(a1 + 22) == 1)
  {
    v8 = v6 & 0x3FFFFFF | v7 | 0x80000000;
    *v4 = v8;
    v9 = *(a1 + 28);
    v10 = v8 & 0xFC0FFFFF | ((v9 & 0x3F) << 20);
    *v4 = v10;
    v11 = *(a1 + 24);
    *v4 = v10 & 0xFFF00000 | v11 & 0xFFFFF;
    if (4 * ((v5 / 4) & 0x1F) == v5)
    {
      if ((v9 & 0x3F) == *(a1 + 28))
      {
        if ((v11 & 0xFFFFF) != *(a1 + 24))
        {
          v12 = *(a1 + 8);
          v24 = v12[4];
          v28 = *a1 - v12[3];
          v20 = v12[5];
          return mach_o::Error::Error(a4, "bind ordinal (%u) too large in fixup at %.*s+0x%0lX");
        }

        goto LABEL_10;
      }

      v17 = *(a1 + 8);
      v26 = v17[4];
      v30 = *a1 - v17[3];
      v22 = v17[5];
      return mach_o::Error::Error(a4, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
    }

LABEL_11:
    v16 = *(a1 + 8);
    v25 = v16[4];
    v29 = *a1 - v16[3];
    v21 = v16[5];
    return mach_o::Error::Error(a4, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  v14 = v7 & 0x7C000000;
  *v4 = v14 & 0xFC000000 | v6 & 0x3FFFFFF;
  v15 = *(a1 + 24) + a3;
  *v4 = v14 & 0xFC000000 | v15 & 0x3FFFFFF;
  if (4 * ((v5 / 4) & 0x1F) != v5)
  {
    goto LABEL_11;
  }

  if (!(v15 >> 26))
  {
LABEL_10:
    *a4 = 0;
    return result;
  }

  v18 = *(a1 + 8);
  v27 = v18[4];
  v31 = *a1 - v18[3];
  v19 = *(a1 + 24);
  v23 = v18[5];
  return mach_o::Error::Error(a4, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE *this, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >> 30)
  {
    return a2 + ((v2 >> 28) & 0xC);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE::parseChainEntry(_DWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1 & 0x3FFFFFFF;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 18) &= 0xF8u;
  *(a3 + 20) = 0;
  *(a3 + 24) = v3;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v3 = *a1;
  v4 = a2 - *a1;
  if (!a2)
  {
    v4 = 0;
  }

  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 3;
  }

  *v3 = *v3 & 0x3FFFFFFF | ((v5 >> 2) << 30);
  v6 = *(a1 + 24);
  *v3 = v6 & 0x3FFFFFFF | ((v5 >> 2) << 30);
  if ((v5 & 0xC) == v4)
  {
    if ((v6 & 0x3FFFFFFF) == *(a1 + 24))
    {
      *a3 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
      v13 = v9[4];
      v15 = *a1 - v9[3];
      v11 = v9[5];
      return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v12 = v7[4];
    v14 = *a1 - v7[3];
    v10 = v7[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE *this, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >> 26)
  {
    return a2 + ((v2 >> 24) & 0xFC);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE::parseChainEntry(_DWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = (*a1 & 0x3FFFFFF) - a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 18) &= 0xF8u;
  *(a4 + 20) = 0;
  *(a4 + 24) = v4;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v3 = *a1;
  v4 = a2 - *a1;
  if (!a2)
  {
    v4 = 0;
  }

  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 3;
  }

  *v3 = *v3 & 0x3FFFFFF | ((v5 >> 2) << 26);
  v6 = *(a1 + 24);
  *v3 = v6 & 0x3FFFFFF | ((v5 >> 2) << 26);
  if ((v5 & 0xFC) == v4)
  {
    if ((v6 & 0x3FFFFFF) == *(a1 + 24))
    {
      *a3 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
      v13 = v9[4];
      v15 = *a1 - v9[3];
      v11 = v9[5];
      return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v12 = v7[4];
    v14 = *a1 - v7[3];
    v10 = v7[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE *this, void *a2)
{
  if (((*a2 >> 51) & 0xFFF) != 0)
  {
    return a2 + 4 * ((*a2 >> 51) & 0xFFF);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = HIDWORD(v3);
    *a3 = a1;
    *(a3 + 8) = a2;
    v6 = *(a3 + 18) & 0xF8;
    *(a3 + 16) = 1;
    v5 = (v3 >> 46) & 4 | (v3 >> 49) & 3 | v6;
  }

  else
  {
    LOWORD(v4) = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    LOBYTE(v5) = *(a3 + 18) & 0xF8;
  }

  *(a3 + 18) = v5;
  *(a3 + 20) = v4;
  *(a3 + 22) = 0;
  *(a3 + 24) = v3 & 0x3FFFFFFF;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v4 = *a1;
  v5 = a2 - *a1;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = *v4 & 0x7FFFFFFFFFFFFLL | (*(a1 + 16) << 63) | (((v5 / 4) & 0xFFF) << 51);
  *v4 = v6;
  v7 = v6 & 0xFFF9FFFFFFFFFFFFLL | ((*(a1 + 18) & 3) << 49);
  *v4 = v7;
  v8 = v7 & 0xFFFEFFFFFFFFFFFFLL | (((*(a1 + 18) & 4) != 0) << 48);
  *v4 = v8;
  v9 = v8 & 0xFFFF00003FFFFFFFLL | (*(a1 + 20) << 32);
  *v4 = v9;
  v10 = *(a1 + 24);
  *v4 = v9 & 0xFFFFFFFF00000000 | v10 & 0x3FFFFFFF;
  if ((v3 & 0x3FFC) == v5)
  {
    if ((v10 & 0x3FFFFFFF) == *(a1 + 24))
    {
      *a3 = 0;
    }

    else
    {
      v13 = *(a1 + 8);
      v17 = v13[4];
      v19 = *a1 - v13[3];
      v15 = v13[5];
      return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v16 = v11[4];
    v18 = *a1 - v11[3];
    v14 = v11[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE *this, void *a2)
{
  if ((*a2 & 0x7FF8000000000000) != 0)
  {
    return a2 + ((*a2 >> 51) & 0xFFFLL);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = HIDWORD(v3);
    *a3 = a1;
    *(a3 + 8) = a2;
    v6 = *(a3 + 18) & 0xF8;
    *(a3 + 16) = 1;
    v5 = (v3 >> 46) & 4 | (v3 >> 49) & 3 | v6;
  }

  else
  {
    LOWORD(v4) = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    LOBYTE(v5) = *(a3 + 18) & 0xF8;
  }

  *(a3 + 18) = v5;
  *(a3 + 20) = v4;
  *(a3 + 22) = 0;
  *(a3 + 24) = v3 & 0x3FFFFFFF;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v3 = *a1;
  v4 = a2 - *a1;
  if (!a2)
  {
    v4 = 0;
  }

  *v3 = *v3 & 0x3FFFFFFF | ((v4 & 0xFFF) << 51);
  v5 = *(a1 + 24) & 0x3FFFFFFFLL;
  *v3 = v5 | ((v4 & 0xFFF) << 51);
  if (v4 >= 0x1000)
  {
    v6 = *(a1 + 8);
    v11 = v6[4];
    v13 = *a1 - v6[3];
    v9 = v6[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  else if (v5 == *(a1 + 24))
  {
    *a3 = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    v12 = v8[4];
    v14 = *a1 - v8[3];
    v10 = v8[5];
    return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::BindOpcodes::BindOpcodes(uint64_t this, const unsigned __int8 *a2, uint64_t a3, int a4)
{
  *this = off_A6C08;
  *(this + 8) = a2;
  *(this + 16) = &a2[a3];
  if (a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  *(this + 24) = v4;
  return this;
}

uint64_t mach_o::RebaseOpcodes::RebaseOpcodes(uint64_t this, const unsigned __int8 *a2, uint64_t a3, int a4)
{
  *this = a2;
  *(this + 8) = &a2[a3];
  if (a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  *(this + 16) = v4;
  return this;
}

uint64_t mach_o::NListSymbolTable::NListSymbolTable(uint64_t this, unsigned int a2, const nlist *a3, int a4, const char *a5, int a6, int a7, int a8, unsigned int a9)
{
  *this = a2;
  *(this + 8) = a5;
  *(this + 16) = a3;
  *(this + 24) = 0;
  *(this + 32) = a6;
  *(this + 36) = a4;
  *(this + 40) = a7;
  *(this + 44) = a8;
  *(this + 48) = a9;
  return this;
}

uint64_t mach_o::NListSymbolTable::NListSymbolTable(uint64_t this, uint64_t a2, const nlist_64 *a3, int a4, const char *a5, int a6, int a7, int a8, unsigned int a9)
{
  *this = a2;
  *(this + 8) = a5;
  *(this + 16) = 0;
  *(this + 24) = a3;
  *(this + 32) = a6;
  *(this + 36) = a4;
  *(this + 40) = a7;
  *(this + 44) = a8;
  *(this + 48) = a9;
  return this;
}

uint64_t mach_o::DebugNoteFileInfo::dump(const char **this)
{
  fprintf(__stdoutp, "scrDir:      %s\n", this[1]);
  fprintf(__stdoutp, "scrName:     %s\n", this[3]);
  fprintf(__stdoutp, "objPath:     %s\n", this[5]);
  fprintf(__stdoutp, "objModTime:  0x%08X\n", *this);
  fprintf(__stdoutp, "objSubType:  0X%02X\n", *(this + 4));
  if (this[8])
  {
    v2 = this[7];
  }

  else
  {
    v2 = "N/A";
  }

  fprintf(__stdoutp, "libPath:     %s\n", v2);
  if (this[10])
  {
    v3 = this[9];
  }

  else
  {
    v3 = "N/A";
  }

  return fprintf(__stdoutp, "origlibPath: %s\n", v3);
}

void mach_o::Universal::valid(mach_o::Universal *this@<X0>, unint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  v4 = *this;
  if ((*this | 0x1000000) != 0xBFBAFECA)
  {
    v6 = "file does not start with FAT_MAGIC";
    goto LABEL_7;
  }

  v5 = 28;
  if (v4 == -1078264118)
  {
    v5 = 40;
  }

  if (v5 > a2)
  {
    v6 = "fat file too short";
LABEL_7:

    mach_o::Error::Error(a3, v6);
    return;
  }

  v7 = bswap32(*(this + 1));
  if (v7 >= 0x11)
  {
    mach_o::Error::Error(a3, "fat file has too many slices (%d)", v7);
    return;
  }

  v8 = 32 * v7;
  v9 = 20 * v7 + 20;
  if (v4 == -1078264118)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if ((v10 + 8) > a2)
  {
    v6 = "slice headers extend beyond end of file";
    goto LABEL_7;
  }

  memset(v36, 0, sizeof(v36));
  v30 = 0;
  v31 = &v30;
  v32 = 0x3002000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__13;
  v35 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v29[3] = v5;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2000000000;
  v28[3] = v36;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = v37;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = ___ZNK6mach_o9Universal5validEy_block_invoke;
  v19[3] = &unk_A6C40;
  v19[4] = &v24;
  v19[5] = &v30;
  v19[6] = v29;
  v19[7] = &v20;
  v19[10] = a2;
  v19[11] = v36;
  v19[8] = v28;
  v19[9] = this;
  mach_o::Universal::forEachSlice(this, v19);
  if (v31[5])
  {
    mach_o::Error::Error(a3, v31 + 5);
  }

  else
  {
    if ((v21[3] & 1) == 0)
    {
      v11 = v25[3];
      v12 = v11 - v37;
      if (v11 != v37)
      {
        v13 = 0;
        v14 = v12 >> 4;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        while (2)
        {
          v15 = v14;
          v16 = v13;
          v17 = &v38;
          v18 = &v37[16 * v13];
          do
          {
            if (v16 && *(v17 - 1) < v18[1] && *v17 > *v18)
            {
              mach_o::Error::Error(a3, "overlapping slices");
              goto LABEL_31;
            }

            v17 += 2;
            --v16;
            --v15;
          }

          while (v15);
          if (++v13 != v14)
          {
            continue;
          }

          break;
        }
      }
    }

    *a3 = 0;
  }

LABEL_31:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);
  mach_o::Error::~Error(&v35);
}

uint64_t mach_o::Universal::forEachSlice(uint64_t result, uint64_t a2)
{
  v21 = 0;
  v3 = *(result + 4);
  v4 = bswap32(v3);
  if (*result == -1078264118)
  {
    if (v3)
    {
      v15 = (result + 24);
      v16 = 1;
      do
      {
        mach_o::Architecture::Architecture(&v20, (v15 - 2));
        v17 = bswap64(*(v15 - 1));
        v18 = bswap64(*v15);
        v19 = v20;
        result = (*(a2 + 16))(a2, &v19, v17, v18, &v21);
        if (v16 >= v4)
        {
          break;
        }

        v15 += 4;
        ++v16;
      }

      while ((v21 & 1) == 0);
    }
  }

  else if (*result == -1095041334)
  {
    v5 = result + 8;
    if (v3)
    {
      v6 = (result + 20);
      v7 = 1;
      do
      {
        mach_o::Architecture::Architecture(&v20, (v6 - 3));
        v8 = *(v6 - 1);
        v9 = *v6;
        if (mach_o::Architecture::operator==(&v20, mach_o::Architecture::arm64e_old))
        {
          v10 = 16777228;
          v20 = 0x800000020100000CLL;
          v11 = -2147483646;
        }

        else
        {
          v10 = v20;
          v11 = HIDWORD(v20);
        }

        v19 = __PAIR64__(v11, v10);
        (*(a2 + 16))(a2, &v19, bswap32(v8), bswap32(v9), &v21);
        if (v7 >= v4)
        {
          break;
        }

        v6 += 5;
        ++v7;
      }

      while ((v21 & 1) == 0);
    }

    v12 = (v5 + 20 * v4);
    mach_o::Architecture::Architecture(&v20, v12);
    result = mach_o::Architecture::operator==(&v20, mach_o::Architecture::arm64);
    if (result)
    {
      v13 = bswap32(v12->offset);
      v14 = bswap32(v12->size);
      v19 = v20;
      return (*(a2 + 16))(a2, &v19, v13, v14, &v21);
    }
  }

  return result;
}

void ___ZNK6mach_o9Universal5validEy_block_invoke(void *a1, mach_o::Architecture *this, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  v8 = a1[9];
  v9 = a4 + a3;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v11 + 2;
  *v11 = a3;
  v11[1] = a4 + a3;
  if (__CFADD__(a3, a4) || a3 + a4 > a1[10])
  {
    mach_o::Architecture::name(this);
    mach_o::Error::Error(&v18, "%s slice extends beyond end of file");
LABEL_14:
    mach_o::Error::operator=((*(a1[5] + 8) + 40), &v18);
    mach_o::Error::~Error(&v18);
    *a5 = 1;
  }

  else
  {
    if (*(*(a1[6] + 8) + 24) > a3)
    {
      *(*(a1[7] + 8) + 24) = 0;
    }

    for (i = a1[11]; ; i += 2)
    {
      v15 = *(a1[8] + 8);
      v16 = *(v15 + 24);
      if (i >= v16)
      {
        break;
      }

      if (mach_o::Architecture::operator==(this, i))
      {
        mach_o::Architecture::name(this);
        mach_o::Error::Error(&v18, "duplicate %s slices");
        goto LABEL_14;
      }
    }

    *(v15 + 24) = v16 + 1;
    *v16 = *this;
    v17 = *this;
    mach_o::Universal::validSlice(v8, &v17, a3, a4, &v18);
    mach_o::Error::operator=((*(a1[5] + 8) + 40), &v18);
    mach_o::Error::~Error(&v18);
    if (*(*(a1[5] + 8) + 40))
    {
      *a5 = 1;
    }

    *(*(a1[6] + 8) + 24) = v9;
  }
}

mach_o::Header *mach_o::Universal::validSlice@<X0>(uint64_t a1@<X0>, mach_o::Architecture *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  result = mach_o::Header::isMachO((a1 + a3), a4);
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  if (mach_o::Header::uses16KPages(result))
  {
    isObjectFile = mach_o::Header::isObjectFile(v9);
    v11 = 0x3FFFLL;
    if (isObjectFile)
    {
      v11 = 4095;
    }
  }

  else
  {
    v11 = 4095;
  }

  if ((v11 & a3) == 0)
  {
    mach_o::Header::arch(v9, &v14);
    result = mach_o::Architecture::operator==(&v14, a2);
    if ((result & 1) == 0)
    {
      v12 = mach_o::Architecture::name(&v14);
      v13 = mach_o::Architecture::name(a2);
      return mach_o::Error::Error(a5, "cpu type/subtype in slice (%s) does not match fat header (%s)", v12, v13);
    }

LABEL_12:
    *a5 = 0;
    return result;
  }

  return mach_o::Error::Error(a5, "slice is not page aligned");
}

uint64_t ___ZNK6mach_o9Universal12forEachSliceEU13block_pointerFvNS0_5SliceERbE_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v8 = *a2;
  v9 = v5 + a3;
  v10 = a4;
  return (*(v4 + 16))();
}

char *mach_o::Universal::archNames(mach_o::Universal *this, char *a2)
{
  *a2 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o9Universal9archNamesEPc_block_invoke;
  v4[3] = &unk_A6C90;
  v4[4] = v5;
  v4[5] = a2;
  mach_o::Universal::forEachSlice(this, v4);
  _Block_object_dispose(v5, 8);
  return a2;
}

size_t ___ZNK6mach_o9Universal9archNamesEPc_block_invoke(uint64_t a1, mach_o::Architecture *this)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    strlcat(*(a1 + 40), ",", 0x100uLL);
  }

  v4 = *(a1 + 40);
  v5 = mach_o::Architecture::name(this);
  result = strlcat(v4, v5, 0x100uLL);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t mach_o::Universal::bestSlice(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  memset(v17, 0, 384);
  memset(v16, 0, sizeof(v16));
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZNK6mach_o9Universal9bestSliceERKNS_19GradedArchitecturesEbRNS0_5SliceE_block_invoke;
  v10[3] = &unk_A6CB8;
  v10[4] = &v11;
  v10[5] = v16;
  v10[6] = v17;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = ___ZNK6mach_o9Universal12forEachSliceEU13block_pointerFvNS0_5SliceERbE_block_invoke;
  v15[3] = &unk_A6C68;
  v15[4] = v10;
  v15[5] = a1;
  mach_o::Universal::forEachSlice(a1, v15);
  LODWORD(v15[0]) = 0;
  hasCompatibleSlice = mach_o::GradedArchitectures::hasCompatibleSlice(a2, v16, *(v12 + 6), a3, v15);
  if (hasCompatibleSlice)
  {
    v8 = &v17[3 * LODWORD(v15[0])];
    *a4 = *v8;
    *(a4 + 16) = v8[2];
  }

  _Block_object_dispose(&v11, 8);
  return hasCompatibleSlice;
}

__n128 ___ZNK6mach_o9Universal9bestSliceERKNS_19GradedArchitecturesEbRNS0_5SliceE_block_invoke(void *a1, void *a2)
{
  *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = *a2;
  v2 = (a1[6] + 24 * *(*(a1[4] + 8) + 24));
  result = *a2;
  v2[1].n128_u64[0] = a2[2];
  *v2 = result;
  ++*(*(a1[4] + 8) + 24);
  return result;
}

void mach_o::Image::makeExportsTrie(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image15makeExportsTrieEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_61_0;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeSymbolTable(dyld3::MachOFile **this)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v2 = *this;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZN6mach_o5Image15makeSymbolTableEv_block_invoke;
  v10[3] = &unk_A6D00;
  v10[4] = &v16;
  v10[5] = &v12;
  mach_o::Header::forEachLoadCommand(v2, v10, &v11);
  mach_o::Error::~Error(&v11);
  if (v17[3])
  {
    v3 = v13[3];
    if (v3)
    {
      v4 = v3[3];
      v5 = v3[5];
      v6 = v3[7];
    }

    else
    {
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    v7 = dyld3::MachOFile::is64(*this);
    Address = mach_o::Header::preferredLoadAddress(*this);
    if (v7)
    {
      v9 = mach_o::NListSymbolTable::NListSymbolTable((this + 18), Address, (this[2] + *(v17[3] + 8)), *(v17[3] + 12), this[2] + *(v17[3] + 16), *(v17[3] + 20), v4, v5, v6);
    }

    else
    {
      v9 = mach_o::NListSymbolTable::NListSymbolTable((this + 18), Address, (this[2] + *(v17[3] + 8)), *(v17[3] + 12), this[2] + *(v17[3] + 16), *(v17[3] + 20), v4, v5, v6);
    }

    this[5] = v9;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void mach_o::Image::makeRebaseOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image17makeRebaseOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_63_1;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeBindOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image15makeBindOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_64_2;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeLazyBindOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image19makeLazyBindOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_65_4;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeWeakBindOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image19makeWeakBindOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_66_3;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeChainedFixups(dyld3::MachOFile **this)
{
  v2 = *this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_67_0;
  v5[4] = this;
  mach_o::Header::forEachLoadCommand(v2, v5, &v6);
  mach_o::Error::~Error(&v6);
  if ((dyld3::MachOFile::isPreload(*this) || mach_o::Header::isStaticExecutable(*this)) && !this[10])
  {
    v3 = *this;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke_2;
    v4[3] = &__block_descriptor_tmp_70;
    v4[4] = this;
    mach_o::Header::forEachSection(v3, v4);
  }
}

void mach_o::Image::makeFunctionStarts(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image18makeFunctionStartsEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_71_0;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeSplitSegInfo(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image16makeSplitSegInfoEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_74_2;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeFunctionVariants(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image20makeFunctionVariantsEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_75_0;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

void mach_o::Image::makeFunctionVariantFixups(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image25makeFunctionVariantFixupsEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_76_1;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

mach_o::Image *mach_o::Image::Image(mach_o::Image *this, mach_header *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 12) = 258;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 2) = mach_o::Header::computeLinkEditBias(a2, 1);
  mach_o::Image::makeExportsTrie(this);
  mach_o::Image::makeSymbolTable(this);
  mach_o::Image::makeRebaseOpcodes(this);
  mach_o::Image::makeBindOpcodes(this);
  mach_o::Image::makeLazyBindOpcodes(this);
  mach_o::Image::makeWeakBindOpcodes(this);
  mach_o::Image::makeChainedFixups(this);
  mach_o::Image::makeFunctionStarts(this);
  v3 = *this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN6mach_o5Image17makeCompactUnwindEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_73_2;
  v5[4] = this;
  mach_o::Header::forEachSection(v3, v5);
  mach_o::Image::makeSplitSegInfo(this);
  mach_o::Image::makeFunctionVariants(this);
  mach_o::Image::makeFunctionVariantFixups(this);
  return this;
}

uint64_t mach_o::Image::segmentCount(mach_o::Error **this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v1 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o5Image12segmentCountEv_block_invoke;
  v4[3] = &unk_A6E88;
  v4[4] = &v6;
  mach_o::Header::forEachLoadCommand(v1, v4, &v5);
  mach_o::Error::~Error(&v5);
  v2 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void mach_o::Image::segment(mach_o::Error **this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x6002000000;
  v16 = __Block_byref_object_copy__78_0;
  v18 = 0;
  v19 = 0;
  v17 = __Block_byref_object_dispose__79_0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  v4 = *this;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK6mach_o5Image7segmentEj_block_invoke;
  v7[3] = &unk_A6EB0;
  v7[4] = v10;
  v7[5] = v11;
  v8 = a2;
  v7[6] = &v13;
  v7[7] = this;
  mach_o::Header::forEachLoadCommand(v4, v7, &v9);
  mach_o::Error::~Error(&v9);
  v5 = v14;
  v6 = *(v14 + 7);
  *a3 = *(v14 + 5);
  *(a3 + 16) = v6;
  *(a3 + 32) = *(v5 + 9);
  *(a3 + 48) = v5[11];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
}

void *___ZN6mach_o5Image15makeExportsTrieEv_block_invoke(void *result, int *a2)
{
  v2 = result[4];
  v3 = *a2;
  if (*a2 == -2147483614 || v3 == 34)
  {
    v4 = a2[10];
    if (!v4)
    {
      return result;
    }

    v5 = 11;
    goto LABEL_8;
  }

  if (v3 == -2147483597)
  {
    v4 = a2[2];
    if (v4)
    {
      v5 = 3;
LABEL_8:
      result = mach_o::FunctionStarts::FunctionStarts(v2 + 16, (v2[2] + v4), a2[v5]);
      v2[4] = result;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image15makeSymbolTableEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v2 = 32;
  }

  else
  {
    if (*a2 != 11)
    {
      return result;
    }

    v2 = 40;
  }

  *(*(*(result + v2) + 8) + 24) = a2;
  return result;
}

uint64_t ___ZN6mach_o5Image17makeRebaseOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[3];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[2];
      v6 = dyld3::MachOFile::is64(*v3);
      result = mach_o::RebaseOpcodes::RebaseOpcodes(v3 + 200, (v4 + v5), v2, v6);
      *(v3 + 48) = v3 + 200;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image15makeBindOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[5];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[4];
      v6 = dyld3::MachOFile::is64(*v3);
      result = mach_o::BindOpcodes::BindOpcodes(v3 + 224, (v4 + v5), v2, v6);
      *(v3 + 56) = v3 + 224;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image19makeLazyBindOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[9];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[8];
      v6 = dyld3::MachOFile::is64(*v3);
      result = mach_o::BindOpcodes::BindOpcodes(v3 + 256, (v4 + v5), v2, v6);
      *(v3 + 256) = off_A6C28;
      *(v3 + 64) = v3 + 256;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image19makeWeakBindOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[7];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[6];
      v6 = dyld3::MachOFile::is64(*v3);
      result = mach_o::BindOpcodes::BindOpcodes(v3 + 288, (v4 + v5), v2, v6);
      *(v3 + 72) = v3 + 288;
    }
  }

  return result;
}

void *___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == -2147483596)
  {
    v4 = a2[3];
    if (v4)
    {
      v5 = result[4];
      result = mach_o::ChainedFixups::ChainedFixups(v5 + 40, (v5[2] + a2[2]), v4);
      v5[10] = result;
      *a3 = 1;
    }
  }

  return result;
}

void *___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke_2(void *result, uint64_t a2)
{
  if (*(a2 + 8) == 14)
  {
    v2 = **a2 == 0x5F6E696168635F5FLL && *(*a2 + 6) == 0x7370757869665F6ELL;
    v3 = !v2;
    if (!v3 && *(a2 + 24) == 6)
    {
      v5 = *(a2 + 16);
      v6 = *v5;
      v7 = *(v5 + 2);
      if (v6 == 1163157343 && v7 == 21592)
      {
        v9 = result[4];
        result = mach_o::ChainedFixups::ChainedFixups(v9 + 40, (*v9 + *(a2 + 72)), *(a2 + 64));
        v9[10] = result;
      }
    }
  }

  return result;
}

void *___ZN6mach_o5Image18makeFunctionStartsEv_block_invoke(void *result, _DWORD *a2)
{
  if (*a2 == 38)
  {
    v2 = a2[3];
    if (v2)
    {
      v3 = result[4];
      result = mach_o::FunctionStarts::FunctionStarts(v3 + 43, (v3[2] + a2[2]), v2);
      v3[11] = result;
    }
  }

  return result;
}

void ___ZN6mach_o5Image17makeCompactUnwindEv_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == 13)
  {
    v11[7] = v3;
    v11[8] = v4;
    if (**a2 == 0x646E69776E755F5FLL && *(*a2 + 5) == 0x6F666E695F646E69)
    {
      v8 = *(a1 + 32);
      if (std::string_view::starts_with[abi:nn200100]((a2 + 16), "__TEXT"))
      {
        v9 = *v8;
        v10 = *(a2 + 72);
        mach_o::Header::arch(*v8, v11);
        mach_o::CompactUnwind::CompactUnwind((v8 + 360), v11, v9 + v10, *(a2 + 64));
        *(v8 + 96) = v8 + 360;
        *a3 = 1;
      }
    }
  }
}

void *___ZN6mach_o5Image16makeSplitSegInfoEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 30)
  {
    v4 = result[4];
    result = mach_o::FunctionStarts::FunctionStarts(v4 + 48, (v4[2] + a2[2]), a2[3]);
    v4[13] = result;
    *a3 = 1;
  }

  return result;
}

void ___ZN6mach_o5Image20makeFunctionVariantsEv_block_invoke(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 55)
  {
    v4 = *(a1 + 32);
    FileIdTuple::FileIdTuple((v4 + 50), v4[2] + a2[2], a2[3]);
    v4[14] = v5;
    *a3 = 1;
  }
}

void *___ZN6mach_o5Image25makeFunctionVariantFixupsEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 56)
  {
    v4 = result[4];
    result = mach_o::FunctionVariantFixups::FunctionVariantFixups(v4 + 52, v4[2] + a2[2], a2[3]);
    v4[15] = result;
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZNK6mach_o5Image12segmentCountEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 25 || *a2 == 1)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

__n128 __Block_byref_object_copy__78_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

size_t ___ZNK6mach_o5Image7segmentEj_block_invoke(size_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(result + 56);
  if (*a2 == 1)
  {
    v7 = (a2 + 8);
    result = _platform_strcmp((a2 + 8), "__TEXT");
    if (!result)
    {
      *(*(*(v5 + 32) + 8) + 24) = *(a2 + 24);
    }

    v8 = v5 + 40;
    v9 = *(*(v5 + 40) + 8);
    v10 = *(v9 + 24);
    if (v10 != *(v5 + 64))
    {
      goto LABEL_18;
    }

    v15 = *(a2 + 24);
    v12 = v5 + 48;
    *(*(*(v5 + 48) + 8) + 40) = v15 - *(*(*(v5 + 32) + 8) + 24);
    v16 = *v6;
    if (*(v6 + 25) == 1)
    {
      *(*(*(v5 + 48) + 8) + 64) = v16 + v15 - *(*(*(v5 + 32) + 8) + 24);
      v14 = *(a2 + 32);
    }

    else
    {
      v14 = *(a2 + 32);
      *(*(*v12 + 8) + 64) = v16 + v14;
    }

    v17 = *(a2 + 28);
    v18 = 44;
    goto LABEL_17;
  }

  if (*a2 != 25)
  {
    return result;
  }

  v7 = (a2 + 8);
  result = _platform_strcmp((a2 + 8), "__TEXT");
  if (!result)
  {
    *(*(*(v5 + 32) + 8) + 24) = *(a2 + 24);
  }

  v8 = v5 + 40;
  v9 = *(*(v5 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 == *(v5 + 64))
  {
    v11 = *(a2 + 24);
    v12 = v5 + 48;
    *(*(*(v5 + 48) + 8) + 40) = v11 - *(*(*(v5 + 32) + 8) + 24);
    v13 = *v6;
    if (*(v6 + 25) == 1)
    {
      *(*(*(v5 + 48) + 8) + 64) = v13 + v11 - *(*(*(v5 + 32) + 8) + 24);
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = *(a2 + 40);
      *(*(*v12 + 8) + 64) = v13 + v14;
    }

    v17 = *(a2 + 32);
    v18 = 60;
LABEL_17:
    *(*(*v12 + 8) + 48) = v17;
    *(*(*v12 + 8) + 56) = v14;
    result = _platform_strlen(v7);
    v19 = *(*v12 + 8);
    v20 = *(a2 + v18);
    *(v19 + 72) = v7;
    *(v19 + 80) = result;
    *(*(*v12 + 8) + 88) = v20 & 1;
    *(*(*v12 + 8) + 89) = (v20 & 2) != 0;
    *(*(*v12 + 8) + 90) = (v20 & 4) != 0;
    *a3 = 1;
    v9 = *(*v8 + 8);
    v10 = *(v9 + 24);
  }

LABEL_18:
  *(v9 + 24) = v10 + 1;
  return result;
}

uint64_t mach_o::Image::withSegments(mach_o::Error **a1, uint64_t a2)
{
  v4 = mach_o::Image::segmentCount(a1);
  v5 = v4;
  v6 = __chkstk_darwin(v4);
  v8 = v15 - v7;
  if (v6)
  {
    v9 = v8 + 32;
    v10 = 56 * v5;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9 += 7;
      v10 -= 56;
    }

    while (v10);
    v11 = 0;
    v12 = v8;
    do
    {
      mach_o::Image::segment(a1, v11, v15);
      v13 = v15[1];
      *v12 = v15[0];
      *(v12 + 1) = v13;
      *(v12 + 2) = *v16;
      *(v12 + 47) = *&v16[15];
      ++v11;
      v12 += 56;
    }

    while (v5 != v11);
  }

  return (*(a2 + 16))(a2, v8, v5);
}

uint64_t mach_o::FunctionVariants::count(mach_o::FunctionVariants *this)
{
  if (*(this + 1) >= 4uLL && *this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

void *mach_o::FunctionVariantFixups::FunctionVariantFixups(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3 >> 3;
  return result;
}

uint64_t mach_o::FunctionVariantFixups::forEachFixup(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = *result;
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      result = (*(a2 + 16))(a2, v6);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

char *mach_o::Version32::toString(mach_o::Version32 *this, char *a2)
{
  v8 = a2;
  mach_o::appendNumber(&v8, *(this + 1));
  v4 = v8;
  *v8 = 46;
  v8 = v4 + 1;
  mach_o::appendNumber(&v8, *(this + 1));
  v5 = *this;
  if (*this)
  {
    v6 = v8;
    *v8 = 46;
    v8 = v6 + 1;
    mach_o::appendNumber(&v8, v5);
  }

  *v8 = 0;
  return a2;
}

void *mach_o::appendNumber(void *this, char **a2)
{
  if (a2 >> 4 >= 0x271)
  {
    v2 = (*this)++;
    *v2 = a2 / 0x2710 + 48;
    LODWORD(a2) = a2 % 0x2710;
    if (a2 < 0x3E8)
    {
      v3 = (*this)++;
      *v3 = 48;
      goto LABEL_10;
    }

LABEL_9:
    v5 = (*this)++;
    *v5 = a2 / 0x3E8 + 48;
    LODWORD(a2) = a2 % 0x3E8;
LABEL_10:
    if (a2 < 0x64)
    {
      v6 = (*this)++;
      *v6 = 48;
      goto LABEL_13;
    }

LABEL_12:
    v7 = (*this)++;
    *v7 = a2 / 0x64 + 48;
    LODWORD(a2) = a2 % 0x64;
LABEL_13:
    if (a2 < 0xA)
    {
      v8 = (*this)++;
      *v8 = 48;
      if (!a2)
      {
        goto LABEL_8;
      }

LABEL_17:
      v4 = a2 + 48;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (a2 >= 0x3E8)
  {
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    goto LABEL_12;
  }

  if (a2 >= 0xA)
  {
LABEL_16:
    v9 = (*this)++;
    *v9 = a2 / 0xA + 48;
    LODWORD(a2) = a2 % 0xA;
    if (a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_17;
  }

LABEL_8:
  v4 = 48;
LABEL_18:
  v10 = (*this)++;
  *v10 = v4;
  return this;
}

int64_t rosetta_dyld_get_aot_size(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9[1] = a2;
  v9[0] = a1;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  return _crossarch_trap(0, 0, &dword_0 + 2, v9, a5, a6, a7, a8);
}

int64_t rosetta_dyld_map_aot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  return _crossarch_trap(0, 0, &dword_0 + 3, v9, a5, a6, a7, a8);
}

uint64_t mach_continuous_time(void)
{
  if (MEMORY[0xFFFFFC091])
  {
    if (MEMORY[0xFFFFFC090] == 3)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
    }

    else if (MEMORY[0xFFFFFC090] == 2)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
    }

    else
    {
      __isb(0xFu);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
    }

    v1 = MEMORY[0xFFFFFC0A8];
  }

  else
  {
    do
    {
      v4 = MEMORY[0xFFFFFC098];
      v3 = mach_absolute_time();
    }

    while (v4 != MEMORY[0xFFFFFC098]);
    StatusReg = v3;
    v1 = v4;
  }

  return v1 + StatusReg;
}

void mig_dealloc_reply_port(mach_port_t reply_port)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 16);
  if (v2 && _task_reply_port != v2)
  {
    *(StatusReg + 16) = _task_reply_port;
    mach_port_mod_refs(mach_task_self_, v2, 1u, -1);
    if (v2 != reply_port)
    {
      mach_port_deallocate(mach_task_self_, reply_port);
    }

    *(StatusReg + 16) = 0;
  }
}

int chmod(const char *a1, mode_t a2)
{
  result = __chmod(a1, a2);
  if (result < 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 8);
    if (!v6)
    {
      v6 = &errno;
    }

    v7 = a2 & 0xC00;
    if (*v6 == 1 && v7 != 0)
    {
      if ((a2 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      result = __chmod(a1, a2 & 0xFBFF);
      if (result < 0)
      {
        v9 = *(StatusReg + 8);
        if (!v9)
        {
          v9 = &errno;
        }

        if (*v9 == 1)
        {
LABEL_24:
          if ((a2 & 0x800) == 0)
          {
            goto LABEL_12;
          }

          result = __chmod(a1, a2 & 0xF7FF);
          if (result < 0)
          {
            v10 = *(StatusReg + 8);
            if (!v10)
            {
              v10 = &errno;
            }

            if (*v10 == 1)
            {
LABEL_12:
              if (v7 == 3072)
              {

                return __chmod(a1, a2 & 0xF3FF);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int fchmod(int a1, mode_t a2)
{
  result = __fchmod(a1, a2);
  if (result < 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 8);
    if (!v6)
    {
      v6 = &errno;
    }

    v7 = a2 & 0xC00;
    if (*v6 == 1 && v7 != 0)
    {
      if ((a2 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      result = __fchmod(a1, a2 & 0xFBFF);
      if (result < 0)
      {
        v9 = *(StatusReg + 8);
        if (!v9)
        {
          v9 = &errno;
        }

        if (*v9 == 1)
        {
LABEL_24:
          if ((a2 & 0x800) == 0)
          {
            goto LABEL_12;
          }

          result = __fchmod(a1, a2 & 0xF7FF);
          if (result < 0)
          {
            v10 = *(StatusReg + 8);
            if (!v10)
            {
              v10 = &errno;
            }

            if (*v10 == 1)
            {
LABEL_12:
              if (v7 == 3072)
              {

                return __fchmod(a1, a2 & 0xF3FF);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int ioctl(int a1, unint64_t a2, ...)
{
  va_start(va, a2);
  v3 = va_arg(va, void *);
  return __ioctl(a1, a2, v3);
}

kern_return_t mach_timebase_info(mach_timebase_info_t info)
{
  v2 = mach_timebase_info_cached_info;
  if (mach_timebase_info_cached_info)
  {
    v3 = HIDWORD(mach_timebase_info_cached_info) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = mach_timebase_info_trap(&mach_timebase_info_cached_info);
    if (result)
    {
      return result;
    }

    v2 = mach_timebase_info_cached_info;
  }

  result = 0;
  *info = v2;
  return result;
}

int unlink(const char *a1)
{
  result = __unlink(a1);
  if (!result)
  {
    atomic_fetch_add(__remove_counter, 1u);
  }

  return result;
}

void rename(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::error_code *__ec)
{
  __rename(__from, __to, __ec);
  if (!v3)
  {
    atomic_fetch_add(__remove_counter, 1u);
  }
}

int open_dprotected_np(const char *a1, int a2, int a3, int a4, ...)
{
  if ((a4 & 4) == 0)
  {
    return __open_dprotected_np(a1, a2, a3, a4);
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (!v4)
  {
    v4 = &errno;
  }

  *v4 = 22;
  return -1;
}

kern_return_t mach_port_deallocate(ipc_space_t task, mach_port_name_t name)
{
  v4 = _kernelrpc_mach_port_deallocate_trap(task, name);
  if (v4 == 268435459)
  {
    v12 = 0;
    v10 = 0x100000000;
    v11 = name;
    reply_port = mig_get_reply_port();
    *&v9.msgh_bits = 0x2400001513;
    *&v9.msgh_remote_port = __PAIR64__(reply_port, task);
    *&v9.msgh_voucher_port = 0xC8600000000;
    v6 = mach_msg2_internal(&v9, 0x200000003, 0x2400001513, __PAIR64__(reply_port, task), 0xC8600000000, (reply_port << 32), &stru_20.segname[4], 0);
    v4 = v6;
    if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
    {
      if (v6)
      {
        mig_dealloc_reply_port(v9.msgh_local_port);
        return v4;
      }

      if (v9.msgh_id == 71)
      {
        v4 = -308;
      }

      else if (v9.msgh_id == 3306)
      {
        v4 = -300;
        if ((v9.msgh_bits & 0x80000000) == 0 && *&v9.msgh_size == 36)
        {
          v4 = v11;
          if (!v11)
          {
            return v4;
          }
        }
      }

      else
      {
        v4 = -301;
      }

      mach_msg_destroy(&v9);
    }
  }

  return v4;
}

kern_return_t mach_port_destruct(ipc_space_t task, mach_port_name_t name, mach_port_delta_t srdelta, mach_port_context_t guard)
{
  v8 = _kernelrpc_mach_port_destruct_trap(task, name, srdelta, guard);
  if (v8 == 268435459)
  {
    v14 = 0x100000000;
    v15 = name;
    v16 = srdelta;
    v17 = guard;
    reply_port = mig_get_reply_port();
    *&v13.msgh_bits = 0x3000001513;
    *&v13.msgh_remote_port = __PAIR64__(reply_port, task);
    *&v13.msgh_voucher_port = 0xCA000000000;
    v10 = mach_msg2_internal(&v13, 0x200000003, 0x3000001513, __PAIR64__(reply_port, task), 0xCA000000000, (reply_port << 32), &stru_20.segname[4], 0);
    v8 = v10;
    if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
    {
      if (v10)
      {
        mig_dealloc_reply_port(v13.msgh_local_port);
        return v8;
      }

      if (v13.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v13.msgh_id == 3332)
      {
        v8 = -300;
        if ((v13.msgh_bits & 0x80000000) == 0 && *&v13.msgh_size == 36)
        {
          v8 = v15;
          if (!v15)
          {
            return v8;
          }
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v13);
    }
  }

  return v8;
}

uint64_t thread_destruct_special_reply_port(mach_port_name_t name, int a2)
{
  switch(a2)
  {
    case 2:
      return mach_port_deallocate(mach_task_self_, name);
    case 1:
      v3 = mach_task_self_;
      v4 = name;
      v5 = 0;
      return mach_port_destruct(v3, v4, v5, 0);
    case 0:
      v3 = mach_task_self_;
      v4 = name;
      v5 = -1;
      return mach_port_destruct(v3, v4, v5, 0);
  }

  return 4;
}

kern_return_t semaphore_destroy(task_t task, semaphore_t semaphore)
{
  v11 = 0x11000000000000;
  v9 = 1;
  v10 = semaphore;
  v12 = 0;
  reply_port = mig_get_reply_port();
  *&v8.msgh_bits = 0x2880001513;
  *&v8.msgh_remote_port = __PAIR64__(reply_port, task);
  *&v8.msgh_voucher_port = 0xD5B00000000;
  v4 = mach_msg2_internal(&v8, 0x200000003, 0x2880001513, __PAIR64__(reply_port, task), 0xD5B00000000, ((reply_port << 32) | 1), &stru_20.segname[4], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_reply_port(v8.msgh_local_port);
      return v5;
    }

    if (v8.msgh_id == 71)
    {
      v5 = -308;
    }

    else if (v8.msgh_id == 3519)
    {
      v5 = -300;
      if ((v8.msgh_bits & 0x80000000) == 0 && *&v8.msgh_size == 36)
      {
        v5 = v11;
        if (!v11)
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = -301;
    }

    mach_msg_destroy(&v8);
  }

  return v5;
}

void __stackAllocatorInternal()
{
  __assert_rtn("__stackAllocatorInternal", "Allocator.h", 1050, "0 && Count not create aligned buffer");
}

{
  __assert_rtn("__stackAllocatorInternal", "Allocator.h", 1056, "0 && Count not create aligned buffer");
}

{
  __assert_rtn("__stackAllocatorInternal", "Allocator.h", 1062, "0 && Count not create aligned buffer");
}

void dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(int8x16_t *a1, uint64_t *a2)
{
  v3 = OUTLINED_FUNCTION_0(a1, a2, "OverflowSafeArray failed to allocate 0x");
  OUTLINED_FUNCTION_2(v3, " bytes, vm_allocate returned: 0x");
  v5 = OUTLINED_FUNCTION_1(v4);
  OUTLINED_FUNCTION_2(v5, "\n");
  qword_A82F8 = a1;
  __assert_rtn("growTo", "Array.h", 196, "0");
}

void dyld4::PseudoDylib::create()
{
  __assert_rtn("create", "DyldRuntimeState.cpp", 124, "identifier > addr && (identifier - size) < addr && identifier is not embedded within image?");
}

{
  __assert_rtn("create", "DyldRuntimeState.cpp", 122, "callbacks && callbacks cannot be null");
}

{
  __assert_rtn("create", "DyldRuntimeState.cpp", 121, "addr && addr cannot be null");
}

void dyld4::PseudoDylib::lookupSymbols()
{
  __assert_rtn("lookupSymbols", "DyldRuntimeState.cpp", 159, "names.size() == addrs.size() && array sizes should match");
}

{
  __assert_rtn("lookupSymbols", "DyldRuntimeState.cpp", 160, "names.size() == flags.size() && array sizes should match");
}

void dyld4::PseudoDylib::findUnwindSections()
{
  __assert_rtn("findUnwindSections", "DyldRuntimeState.cpp", 177, "info && info cannot be null");
}

{
  __assert_rtn("findUnwindSections", "DyldRuntimeState.cpp", 176, "found && found cannot be null");
}

void dyld4::RuntimeState::appLoadAddress()
{
  __assert_rtn("appLoadAddress", "DyldRuntimeState.cpp", 370, "index < _processPrebuiltLoaderSet->loaderCount()");
}

{
  __assert_rtn("appLoadAddress", "DyldRuntimeState.cpp", 369, "_processPrebuiltLoaderSet != nullptr");
}

void dyld4::RuntimeState::setAppLoadAddress()
{
  __assert_rtn("setAppLoadAddress", "DyldRuntimeState.cpp", 377, "index < _processPrebuiltLoaderSet->loaderCount()");
}

{
  __assert_rtn("setAppLoadAddress", "DyldRuntimeState.cpp", 376, "_processPrebuiltLoaderSet != nullptr");
}

void dyld4::Loader::applyCachePatchesToOverride()
{
  __assert_rtn("applyCachePatchesToOverride", "Loader.cpp", 3645, "(patchVersion == 2) || (patchVersion == 3) || (patchVersion == 4)");
}

{
  __assert_rtn("applyCachePatchesToOverride", "Loader.cpp", 3732, "cachePatch->overrideOffsetOfImpl == DylibPatch::endOfPatchTable");
}

void dyld4::JustInTimeLoader::dependentAttrs()
{
  __assert_rtn("dependentAttrs", "JustInTimeLoader.cpp", 576, "depIndex < this->depCount");
}

{
  __assert_rtn("dependentAttrs", "JustInTimeLoader.cpp", 577, "!this->allDepsAreNormal");
}

void dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef()
{
  __assert_rtn("BindTargetRef", "PrebuiltLoader.cpp", 108, "_funcVariant.variantIndex == targetSymbol.variantIndex && too many function variants in image");
}

{
  __assert_rtn("BindTargetRef", "PrebuiltLoader.cpp", 109, "_funcVariant.fvTableOffset == fvTableOffset && zerofill padding placed function variants table too far from mach_header");
}

{
  __assert_rtn("BindTargetRef", "PrebuiltLoader.cpp", 118, "(offset() == targetSymbol.targetRuntimeOffset) && large offset not support");
}

{
  __assert_rtn("BindTargetRef", "PrebuiltLoader.cpp", 102, "targetSymbol.targetLoader != nullptr");
}

{
  __assert_rtn("BindTargetRef", "PrebuiltLoader.cpp", 215, "unpackAbsoluteValue() == absoluteValue && unencodeable absolute symbol value");
}

{
  __assert_rtn("BindTargetRef", "PrebuiltLoader.cpp", 226, "(offset() == bindTarget.runtimeOffset) && large offset not support");
}

void dyld4::PrebuiltLoader::serialize()
{
  __assert_rtn("serialize", "PrebuiltLoader.cpp", 1330, "depAttrs[depIndex].weakLink");
}

{
  __assert_rtn("serialize", "PrebuiltLoader.cpp", 1375, "p->fileValidationOffset == off && uint16_t fileValidationOffset overflow");
}

{
  __assert_rtn("serialize", "PrebuiltLoader.cpp", 1434, "p->bindTargetRefsOffset == off && uint16_t bindTargetRefsOffset overflow");
}

void dyld4::BumpAllocator::zeroFill()
{
  __assert_rtn("zeroFill", "PrebuiltLoader.cpp", 2550, "(uint8_t*)_usageEnd + reqSize <= (uint8_t*)_vmAllocationStart + _vmAllocationSize");
}

{
  __assert_rtn("zeroFill", "PrebuiltLoader.cpp", 2540, "newAllocationAddr != 0");
}

void lsl::MemoryManager::vm_allocate_bytes(char *a1, uint64_t a2, uint64_t *a3, __int32 a4, double a5, int8x16_t a6)
{
  strcpy(a1, "Could not vm_allocate 0x");
  appended = appendHexToString<unsigned long long>(a1, a2, 0x400uLL, *" vm_allocate 0x", a6);
  v10 = OUTLINED_FUNCTION_0_0(appended, "\n\tRequested size: 0x");
  v13 = OUTLINED_FUNCTION_1_0(v11, v12, v10, a3[8]);
  v14 = OUTLINED_FUNCTION_0_0(v13, "\n\tRequested allgnment: 0x");
  v17 = OUTLINED_FUNCTION_1_0(v15, v16, v14, a3[7]);
  v18 = OUTLINED_FUNCTION_0_0(v17, "\n\tRequested target size: 0x");
  v21 = OUTLINED_FUNCTION_1_0(v19, v20, v18, a3[10]);
  v22 = OUTLINED_FUNCTION_0_0(v21, "\n\tRequested target allgnment: 0x");
  v25 = OUTLINED_FUNCTION_1_0(v23, v24, v22, a3[9]);
  OUTLINED_FUNCTION_0_0(v25, "\n\tkern return: 0x");
  appendHexToString<int>(a1, a4, 0x400uLL, v26);
  qword_A8310 = a1;
  __assert_rtn("vm_allocate_bytes", "Allocator.cpp", 553, "0 && vm_allocate failed");
}

void lsl::MemoryManager::Buffer::consumeSpace()
{
  __assert_rtn("consumeSpace", "Allocator.cpp", 654, "consumedSpace%16==0");
}

{
  __assert_rtn("consumeSpace", "Allocator.cpp", 653, "consumedSpace <= size");
}

void lsl::Allocator::setInitialPool()
{
  __assert_rtn("setInitialPool", "Allocator.cpp", 732, "_firstPool == nullptr");
}

{
  __assert_rtn("setInitialPool", "Allocator.cpp", 733, "_currentPool == nullptr");
}

void lsl::Allocator::Pool::aligned_alloc_best_fit()
{
  __assert_rtn("markAllocated", "Allocator.cpp", 1326, "!allocated()");
}

{
  __assert_rtn("aligned_alloc_best_fit", "Allocator.cpp", 1048, "(uint64_t)result != (uint64_t)this");
}

void lsl::Allocator::Pool::aligned_alloc()
{
  __assert_rtn("aligned_alloc", "Allocator.cpp", 939, "_lastFreeMetadata->pool() == this");
}

{
  __assert_rtn("aligned_alloc", "Allocator.cpp", 989, "(uint64_t)result != (uint64_t)this");
}

void lsl::ProtectedStack::withProtectedStack()
{
  __assert_rtn("withProtectedStack", "Allocator.cpp", 1576, "this->nextTPROStackAddr == this->topOfStack");
}

{
  __assert_rtn("withProtectedStack", "Allocator.cpp", 1577, "this->nextRegularStackAddr == nullptr");
}

{
  __assert_rtn("withProtectedStack", "Allocator.cpp", 1578, "this->threadId == nullptr");
}

{
  __assert_rtn("withProtectedStack", "Allocator.cpp", 1586, "this->nextTPROStackAddr == this->topOfStack");
}

{
  __assert_rtn("withProtectedStack", "Allocator.cpp", 1587, "this->nextRegularStackAddr == nullptr");
}

void lsl::ProtectedStack::withNestedProtectedStack()
{
  __assert_rtn("withNestedProtectedStack", "Allocator.cpp", 1594, "!onStackInCurrentFrame()");
}

{
  __assert_rtn("withNestedProtectedStack", "Allocator.cpp", 1593, "enabled()");
}

void lsl::ProtectedStack::withNestedRegularStack()
{
  __assert_rtn("withNestedRegularStack", "Allocator.cpp", 1604, "onStackInCurrentFrame()");
}

{
  __assert_rtn("withNestedRegularStack", "Allocator.cpp", 1603, "enabled()");
}

void dyld4::PrebuiltObjC::make()
{
  __assert_rtn("getPreoptimizedHeaderROIndex", "OptimizerObjC.h", 906, "hinfoRW->entsize == sizeof(header_info_rw<PointerType>)");
}

{
  __assert_rtn("getPreoptimizedHeaderROIndex", "OptimizerObjC.h", 895, "hinfoRW->entsize == sizeof(header_info_rw<PointerType>)");
}

{
  __assert_rtn("getPreoptimizedHeaderROIndex", "OptimizerObjC.h", 885, "headerInfoRW != nullptr");
}

{
  __assert_rtn("getPreoptimizedHeaderROIndex", "OptimizerObjC.h", 884, "headerInfoRO != nullptr");
}

void dyld4::PrebuiltObjC::serializeFixups()
{
  __assert_rtn("serializeFixups", "PrebuiltObjC.cpp", 1420, "fixups.protocolISAFixups.count() == fixups.binaryInfo.protocolListCount");
}

{
  __assert_rtn("serializeFixups", "PrebuiltObjC.cpp", 1402, "jitLoader.ref.app");
}

void DyldSharedCache::forEachPatchableUseOfExportInImage()
{
  __assert_rtn("forEachPatchableUseOfExportInImage", "DyldSharedCache.cpp", 821, "!dataRanges.empty()");
}

{
  __assert_rtn("forEachPatchableUseOfExportInImage", "DyldSharedCache.cpp", 820, "userDylibImageIndex != ~0U");
}

{
  __assert_rtn("forEachPatchableUseOfExportInImage", "DyldSharedCache.cpp", 819, "userDylib != nullptr");
}

void ___ZNK15DyldSharedCache34forEachPatchableUseOfExportInImageEjjjU13block_pointerFvjN5dyld39MachOFile15PointerMetaDataEybE_block_invoke_2_cold_1(int8x16_t *a1, uint64_t *a2, __int32 a3)
{
  v5 = OUTLINED_FUNCTION_0(a1, a2, "OverflowSafeArray failed to allocate 0x");
  OUTLINED_FUNCTION_2(v5, " bytes, vm_allocate returned: 0x");
  appended = appendHexToString<int>(a1->i8, a3, 0x100uLL, v6);
  OUTLINED_FUNCTION_2(appended, "\n");
  qword_A82F8 = a1;
  __assert_rtn("growTo", "Array.h", 196, "0");
}

void objc_visitor::MethodList::getMethod()
{
  __assert_rtn("getMethod", "ObjCVisitor.cpp", 1049, "methodListPos.has_value()");
}

{
  __assert_rtn("getMethod", "ObjCVisitor.cpp", 1054, "methodList != nullptr");
}

void objc_visitor::Method::getNameField()
{
  __assert_rtn("getNameField", "ObjCVisitor.cpp", 1100, "0");
}

{
  __assert_rtn("getNameField", "ObjCVisitor.cpp", 1097, "0");
}

void objc_visitor::Method::getNameSelRefVMAddr()
{
  __assert_rtn("getNameSelRefVMAddr", "ObjCVisitor.cpp", 1322, "0");
}

{
  __assert_rtn("getNameSelRefVMAddr", "ObjCVisitor.cpp", 1319, "0");
}

void objc_visitor::ProtocolList::getProtocolField()
{
  __assert_rtn("getProtocolField", "ObjCVisitor.cpp", 1561, "this->protocolListPos.has_value()");
}

{
  __assert_rtn("getProtocolField", "ObjCVisitor.cpp", 1562, "i < this->numProtocols(objcVisitor)");
}

{
  __assert_rtn("getProtocolField", "ObjCVisitor.cpp", 1566, "protocolList != nullptr");
}

void mach_o::ChainedFixupPointerOnDisk::Arm64e::unpackTarget()
{
  __assert_rtn("unpackTarget", "MachOLayout.cpp", 1967, "this->authBind.bind == 0");
}

{
  __assert_rtn("unpackTarget", "MachOLayout.cpp", 1968, "this->authBind.auth == 0");
}

void mach_o::ChainedFixupPointerOnDisk::Arm64e::signExtendedAddend()
{
  __assert_rtn("signExtendedAddend", "MachOLayout.cpp", 1975, "this->authBind.auth == 0");
}

{
  __assert_rtn("signExtendedAddend", "MachOLayout.cpp", 1974, "this->authBind.bind == 1");
}

void mach_o::ChainedFixupPointerOnDisk::Cache64e::signPointer()
{
  __assert_rtn("signPointer", "MachOLayout.cpp", 2087, "0 && invalid signing key");
}

{
  __assert_rtn("signPointer", "MachOLayout.cpp", 2096, "this->auth.auth == 1");
}

void Diagnostics::error()
{
  __assert_rtn("error", "Diagnostics.cpp", 147, "kr == KERN_SUCCESS");
}

{
  __assert_rtn("error", "Diagnostics.cpp", 153, "(actualSize + 1) == expectedSize");
}

{
  __assert_rtn("error", "Diagnostics.cpp", 152, "actualSize >= 0");
}

{
  __assert_rtn("error", "Diagnostics.cpp", 140, "expectedSize >= 0");
}

void Diagnostics::appendError()
{
  __assert_rtn("appendError", "Diagnostics.cpp", 219, "kr == KERN_SUCCESS");
}

{
  __assert_rtn("appendError", "Diagnostics.cpp", 237, "(actualSize + 1) == expectedSize");
}

{
  __assert_rtn("appendError", "Diagnostics.cpp", 236, "actualSize >= 0");
}

{
  __assert_rtn("appendError", "Diagnostics.cpp", 209, "expectedSize >= 0");
}

void lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert()
{
  __assert_rtn("insert", "BTree.h", 148, "index != capacity()");
}

{
  __assert_rtn("insert", "BTree.h", 147, "size() != capacity()");
}

void lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild()
{
  __assert_rtn("splitChild", "BTree.h", 166, "size() < capacity() && There must be room in this node for an additional child");
}

{
  __assert_rtn("splitChild", "BTree.h", 167, "children()[index]->full() && The child being split must be full");
}

{
  __assert_rtn("splitChild", "BTree.h", 201, "!newChild->full() && !child->full() && After split the child nodes should be full");
}

{
  __assert_rtn("splitChild", "BTree.h", 165, "!leaf() && Leaf nodes do not have children to split");
}

void dyld4::Atlas::ProcessSnapshot::addSharedCacheImage()
{
  __assert_rtn("addSharedCacheImage", "ProcessAtlas.cpp", 1740, "i != images.end()");
}

{
  __assert_rtn("addSharedCacheImage", "ProcessAtlas.cpp", 1732, "mh->flags & MH_DYLIB_IN_CACHE");
}

void dyld4::Atlas::ProcessSnapshot::Serializer::emitMappedFileInfo()
{
  __assert_rtn("emitMappedFileInfo", "ProcessAtlas.cpp", 1890, "*i == file.volume()");
}

{
  __assert_rtn("emitMappedFileInfo", "ProcessAtlas.cpp", 1889, "i != _volumeUUIDs.end()");
}

void _enlarge_cold_1(int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Failed to allocate memory for buffer";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _simple_vsnprintf_cold_1(uint64_t a1)
{
  qword_A82F8 = "BUG IN LIBPLATFORM: Overflow in _simple_snprintf";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_recursive_abort(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_unfair_lock";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_unowned_abort(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Unlock of an os_unfair_lock not owned by current thread";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_corruption_abort(unsigned int a1)
{
  if (a1 - 512 <= 0x3FE00)
  {
    qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: os_unfair_lock is corrupt, or owner thread exited without unlocking";
    qword_A8328 = a1;
    __break(0xB001u);
  }

  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: os_unfair_lock is corrupt";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_once_gate_recursive_abort(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_once_t";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_once_gate_unowned_abort(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Unlock of an os_once_t not owned by current thread";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_once_gate_corruption_abort(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: os_once_t is corrupt";
  qword_A8328 = a1;
  __break(0xB001u);
}

void os_unfair_lock_assert_owner_cold_1(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Assertion failed: Lock unexpectedly not owned by current thread";
  qword_A8328 = a1;
  __break(0xB001u);
}

void os_unfair_lock_assert_not_owner_cold_1(unsigned int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Assertion failed: Lock unexpectedly owned by current thread";
  qword_A8328 = a1;
  __break(0xB001u);
}

uint64_t _os_once_cold_1(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0;
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v8, v9, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    return _os_once_gate_wait(a1, a2, a3, v9, a5, a6, a7, a8);
  }

  else
  {
    return _os_once_callout(a1, a2, a3, v9);
  }
}

void _os_alloc_cold_1(uint64_t a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Requested allocation size is invalid";
  qword_A8328 = a1;
  __break(0xB001u);
}

void _os_semaphore_dispose_cold_1(int a1)
{
  qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Destroying semaphore failed";
  qword_A8328 = a1;
  __break(0xB001u);
}

uint64_t _pthread_setcancelstate_exit(uint64_t result)
{
  v1 = *(result + 166);
  v2 = v1;
  do
  {
    atomic_compare_exchange_strong_explicit((result + 166), &v2, v1 & 0xFFDC | 0x22, memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v1;
    v1 = v2;
  }

  while (!v3);
  return result;
}

void dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::push_back(char *a1, void *a2, int a3)
{
  snprintf(a1, 0x100uLL, "OverflowSafeArray failed to allocate %llu bytes, vm_allocate returned: %d\n", *a2, a3);
  qword_A82F8 = a1;
  __assert_rtn("growTo", "Array.h", 196, "0");
}

void abort_with_payload_wrapper_internal(void *a1, void *a2, void *a3, void *a4, void *a5, unint64_t a6)
{
  v15 = 32;
  sigprocmask(2, &v15, 0);
  __abort_with_payload(a1, a2, a3, a4, a5, a6, v12, v13);
  v14 = getpid();
  terminate_with_payload(v14, a1, a2, a3, a4, a5, a6 | 0x200);
  __break(1u);
}