uint64_t sub_100000F48(uint64_t a1, int a2, char *const *a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = -1;
  v15 = a3;
  v14 = -1;
  v13 = 0;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[9]) = 0;
  sub_1000480E0();
  while (1)
  {
    v14 = getopt_long(v18, v15, *(v19 + 32), *(v19 + 40), &v13);
    if (v14 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v20[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v20, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100001130);
    }

    switch(v14)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v19 + 40) + 32 * v13));
      case '?':
        errx(64, "unknown option: %s", v17[optind - 1]);
      case 'P':
        LOBYTE(__b[9]) = 1;
        break;
      case 'S':
        __b[8] = optarg;
        break;
      case 'i':
        __b[1] = optarg;
        break;
      case 'p':
        sub_10004860C(0, 1uLL, "will create new process", v3, v4, v5, v6, v7, v9);
        __b[0] |= 1uLL;
        break;
      case 's':
        __b[7] = optarg;
        break;
      case 'v':
        __b[2] = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000128CLL);
    }
  }

  v17 += optind;
  v18 -= optind;
  if (v18 < 2)
  {
    errx(64, "both a binary to exec and a subsystem root must be provided");
  }

  __b[3] = *v17;
  __b[4] = v17[1];
  v17 += 2;
  v18 -= 2;
  if (v18 >= 1)
  {
    v11 = v18;
    v10 = v17;
    if (!strcmp(*v17, "--"))
    {
      ++v10;
      --v11;
    }

    __b[5] = v11;
    __b[6] = v10;
  }

  v16 = sub_100001400();
  return sysexit_np();
}

uint64_t sub_1000013C8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100001400()
{
  v178 = __chkstk_darwin();
  v177 = -1;
  v176 = sub_100048090();
  v175 = -1;
  v174 = 0;
  v173 = 0;
  i = 0;
  v171 = *(v178 + 32);
  v170 = 0;
  v169 = 0;
  v168 = 2;
  __argv = 0;
  v166 = 0;
  v165 = 0;
  v164 = -1;
  bzero(__value, 0x400uLL);
  bzero(v230, 0x400uLL);
  if ((*v178 & 1) == 0)
  {
    v174 |= 0x40u;
  }

  if (*(v178 + 8))
  {
    v177 = sub_100002E20(&v170, &v169, *(v178 + 32), *(v178 + 8), *(v178 + 16), *(v178 + 56));
    if (v177)
    {
      sub_10004860C(0, 1uLL, "cannot find program inside cryptex, fallback to system path: %d", v0, v1, v2, v3, v4, v177);
    }

    else
    {
      sub_10004860C(0, 1uLL, "program = %s", v0, v1, v2, v3, v4, v171);
      v171 = v170;
    }
  }

  if (*(v178 + 72))
  {
    v71 = *(v178 + 24);
    v5 = sub_10001B738();
    __snprintf_chk(__value, 0x400uLL, 0, 0x400uLL, "%s/%s", v71, v5);
    v163 = setenv("PYTHONPATH", __value, 1);
    if (v163 == -1)
    {
      v162 = 0;
      memset(&v229[16], 0, 0x50uLL);
      v160 = 0;
      v159 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v159 &= ~1u;
      }

      if (v159)
      {
        v6 = *__error();
        sub_1000013C8(v229, v6);
        v156 = _os_log_send_and_compose_impl();
        v160 = v156;
      }

      v155 = v160;
      v161 = v160;
      _os_crash_msg();
      __break(1u);
    }
  }

  v177 = posix_spawn_file_actions_init(&v166);
  v154 = v177;
  if (v177)
  {
    v153 = 0;
    memset(&v228[16], 0, 0x50uLL);
    v151 = 0;
    v150 = 3;
    v149 = &_os_log_default;
    v148 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v150 &= ~1u;
    }

    if (v150)
    {
      sub_100003098(v228, v154);
      v147 = _os_log_send_and_compose_impl();
      v151 = v147;
    }

    v146 = v151;
    v152 = v151;
    _os_crash_msg();
    __break(1u);
  }

  v177 = posix_spawn_file_actions_addinherit_np(&v166, 0);
  v145 = v177;
  if (v177)
  {
    v144 = 0;
    memset(&v227[16], 0, 0x50uLL);
    v142 = 0;
    v141 = 3;
    v140 = &_os_log_default;
    v139 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v141 &= ~1u;
    }

    if (v141)
    {
      sub_100003098(v227, v145);
      v138 = _os_log_send_and_compose_impl();
      v142 = v138;
    }

    v137 = v142;
    v143 = v142;
    _os_crash_msg();
    __break(1u);
  }

  v177 = posix_spawn_file_actions_addinherit_np(&v166, 1);
  v136 = v177;
  if (v177)
  {
    v135 = 0;
    memset(&v226[16], 0, 0x50uLL);
    v133 = 0;
    v132 = 3;
    v131 = &_os_log_default;
    v130 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v132 &= ~1u;
    }

    if (v132)
    {
      sub_100003098(v226, v136);
      v129 = _os_log_send_and_compose_impl();
      v133 = v129;
    }

    v128 = v133;
    v134 = v133;
    _os_crash_msg();
    __break(1u);
  }

  v177 = posix_spawn_file_actions_addinherit_np(&v166, 2);
  v127 = v177;
  if (v177)
  {
    v126 = 0;
    memset(&v225[16], 0, 0x50uLL);
    v124 = 0;
    v123 = 3;
    v122 = &_os_log_default;
    v121 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v123 &= ~1u;
    }

    if (v123)
    {
      sub_100003098(v225, v127);
      v120 = _os_log_send_and_compose_impl();
      v124 = v120;
    }

    v119 = v124;
    v125 = v124;
    _os_crash_msg();
    __break(1u);
  }

  v177 = posix_spawnattr_init(&v165);
  v118 = v177;
  if (v177)
  {
    v117 = 0;
    memset(&v224[16], 0, 0x50uLL);
    v115 = 0;
    v114 = 3;
    v113 = &_os_log_default;
    v112 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v114 &= ~1u;
    }

    if (v114)
    {
      sub_100003098(v224, v118);
      v111 = _os_log_send_and_compose_impl();
      v115 = v111;
    }

    v110[1] = v115;
    v116 = v115;
    _os_crash_msg();
    __break(1u);
  }

  if (*(v178 + 56))
  {
    v110[0] = sub_100026694(*(v178 + 56));
    if (!v110[0])
    {
      errx(2, "cannot find session with uuid %s", *(v178 + 56));
    }

    uid = session_get_uid();
    *__error() = 0;
    v108 = getpwuid(uid);
    if (!v108)
    {
      if (*__error())
      {
        err(71, "getpwuid");
      }

      errx(67, "session has uid %u, but that uid does not exist", uid);
    }

    v107 = 0;
    v106 = bootstrap_look_up_per_user();
    if (v106 == 144)
    {
      errx(77, "Not entitled to perform bootstrap lookup, may need to run as superuser");
    }

    v105 = v106;
    if (v106)
    {
      v104 = 0;
      memset(&v223[16], 0, 0x50uLL);
      v102 = 0;
      v101 = 3;
      v100 = &_os_log_default;
      v99 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v101 &= ~1u;
      }

      if (v101)
      {
        sub_100003098(v223, v105);
        v98 = _os_log_send_and_compose_impl();
        v102 = v98;
      }

      v97 = v102;
      v103 = v102;
      _os_crash_msg();
      __break(1u);
    }

    v177 = posix_spawnattr_setspecialport_np(&v165, v107, 4);
    v96 = v177;
    if (v177)
    {
      v95 = 0;
      memset(&v222[16], 0, 0x50uLL);
      v93 = 0;
      v92 = 3;
      v91 = &_os_log_default;
      v90 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v92 &= ~1u;
      }

      if (v92)
      {
        sub_100003098(v222, v96);
        v89 = _os_log_send_and_compose_impl();
        v93 = v89;
      }

      v88 = v93;
      v94 = v93;
      _os_crash_msg();
      __break(1u);
    }

    v87 = 0;
    v86 = 0;
    if (*(v178 + 64))
    {
      v70 = *(v178 + 64);
    }

    else
    {
      v70 = "/System/Library/Sandbox/Profiles/cryptex-session-default.sb";
    }

    v85 = v70;
    params = sandbox_create_params();
    pw_dir = v108->pw_dir;
    if (sandbox_set_param())
    {
      err(71, "sandbox_set_param: _HOME");
    }

    if (setenv("HOME", v108->pw_dir, 1))
    {
      err(71, "setenv: HOME");
    }

    pw_name = v108->pw_name;
    if (sandbox_set_param())
    {
      err(71, "sandbox_set_param: _USER");
    }

    if (setenv("USER", v108->pw_name, 1))
    {
      err(71, "setenv: USER");
    }

    if (setenv("LOGNAME", v108->pw_name, 1))
    {
      err(71, "setenv: LOGNAME");
    }

    v87 = sandbox_compile_file();
    sandbox_free_params();
    if (v87)
    {
      if (sandbox_apply())
      {
        err(71, "sandbox_apply failed.");
      }

      sandbox_free_profile();
    }

    else if (*(v178 + 64))
    {
      errc(71, 22, "sandbox_compile_file: %s", v86);
    }

    v177 = setuid(uid);
    if (v177)
    {
      err(71, "setuid");
    }

    sub_1000030D0(v110);
  }

  v177 = posix_spawnattr_setflags(&v165, v174);
  if (v177)
  {
    errc(71, v177, "posix_spawnattr_setflags");
  }

  v83 = 0;
  if (*(v178 + 24) && v169)
  {
    v82 = __snprintf_chk(v230, 0x400uLL, 0, 0x400uLL, "%s:%s", v169, *(v178 + 24));
    v196 = v82;
    v195 = 1024;
    if (v82 < 0)
    {
      v194 = 0;
      memset(&v233[16], 0, 0x50uLL);
      v192 = 0;
      v191 = 3;
      v190 = &_os_log_default;
      v189 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v191 &= ~1u;
      }

      if (v191)
      {
        v15 = __error();
        v16 = strerror(*v15);
        sub_100003120(v233, v16);
        v188 = _os_log_send_and_compose_impl();
        v192 = v188;
      }

      v187 = v192;
      v193 = v192;
      _os_crash_msg();
      __break(1u);
    }

    if (v196 > v195)
    {
      v186 = 0;
      memset(&v232[32], 0, 0x50uLL);
      v184 = 0;
      v183 = 3;
      v182 = &_os_log_default;
      v181 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v183 &= ~1u;
      }

      if (v183)
      {
        sub_100003160(v232, v196, v195);
        v180 = _os_log_send_and_compose_impl();
        v184 = v180;
      }

      v179 = v184;
      v185 = v184;
      _os_crash_msg();
      __break(1u);
    }

    v83 = v230;
  }

  else if (*(v178 + 24))
  {
    v83 = *(v178 + 24);
  }

  else if (v169)
  {
    v83 = v169;
  }

  if (v83)
  {
    sub_1000483C8(2uLL, "subsystem_root = %s", v9, v10, v11, v12, v13, v14, v83);
    v177 = posix_spawnattr_set_subsystem_root_path_np();
    if (v177)
    {
      errc(71, v177, "posix_spawnattr_set_subsystem_root_path_np");
    }
  }

  v168 += *(v178 + 40);
  v81 = 0;
  v80 = 8;
  v79 = v168;
  if (_dispatch_is_multithreaded())
  {
    v212 = v79;
    v211 = v80;
    v210 = 0;
    while (1)
    {
      v210 = malloc_type_calloc(v212, v211, 0x8A375538uLL);
      if (v210)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v81 = v210;
  }

  else
  {
    count = v79;
    size = v80;
    v81 = malloc_type_calloc(v79, v80, 0x8709206FuLL);
    v209 = "known-constant allocation";
    v208 = v81;
    v207 = v80;
    if (!v81)
    {
      v206 = 0;
      memset(&v234[32], 0, 0x50uLL);
      v204 = 0;
      v203 = 3;
      v202 = &_os_log_default;
      v201 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v203 &= ~1u;
      }

      if (v203)
      {
        v68 = v209;
        v69 = v207;
        v23 = __error();
        v24 = strerror(*v23);
        sub_1000031B0(v234, v68, v69, v24);
        v200 = _os_log_send_and_compose_impl();
        v204 = v200;
      }

      v199 = v204;
      v205 = v204;
      _os_crash_msg();
      __break(1u);
    }
  }

  v78 = v81;
  __argv = v81;
  v81[v173] = v171;
  v64 = __argv[v173];
  sub_1000483C8(2uLL, "argv[%lu] = %s", v17, v18, v19, v20, v21, v22, v173++);
  for (i = 0; i < *(v178 + 40); ++i)
  {
    __argv[v173] = *(*(v178 + 48) + 8 * i);
    if (__argv[v173])
    {
      v67 = __argv[v173];
    }

    sub_1000483C8(2uLL, "argv[%lu] = %s", v25, v26, v27, v28, v29, v30, v173++);
  }

  if (v176[1])
  {
    v77 = -1;
    v76 = 0;
    for (i = 0; i < v168 - 1; ++i)
    {
      v75 = v76;
      v74 = "";
      if (v76)
      {
        v74 = " ";
      }

      if (v75)
      {
        v66 = v75;
      }

      else
      {
        v66 = "";
      }

      v77 = asprintf(&v76, "%s%s%s", v66, v74, __argv[i]);
      v221 = v77;
      if (v77 < 0)
      {
        v220 = 0;
        memset(&v235[24], 0, 0x50uLL);
        v218 = 0;
        v217 = 3;
        v216 = &_os_log_default;
        v215 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v217 &= ~1u;
        }

        if (v217)
        {
          v31 = __error();
          v32 = strerror(*v31);
          sub_100003120(v235, v32);
          v214 = _os_log_send_and_compose_impl();
          v218 = v214;
        }

        v213 = v218;
        v219 = v218;
        _os_crash_msg();
        __break(1u);
      }

      sub_100002DE4(&v75);
    }

    sub_100002DE4(&v76);
  }

  v177 = posix_spawnp(&v175, v171, &v166, &v165, __argv, environ);
  if (v177)
  {
    warnc(v177, "posix_spawnp: %s", v171);
  }

  else
  {
    if ((v174 & 0x40) != 0)
    {
      _os_crash();
      __break(1u);
    }

    sub_10004860C(0, 1uLL, "spawned as pid %d", v33, v34, v35, v36, v37, v175);
    while (1)
    {
      v73 = waitpid(v175, &v164, 0);
      if (v73 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        err(71, "waitpid[%d]", v175);
      }

      warnx("waitpid: interrupted");
    }

    if (v73 != v175)
    {
      errx(71, "waitpid: %d != %d", v73, v175);
    }

    sub_1000483C8(2uLL, "waitpid returned", v38, v39, v40, v41, v42, v43, v62);
    if ((v164 & 0x7F) != 0)
    {
      if ((v164 & 0x7F) != 0x7F && (v164 & 0x7F) != 0)
      {
        v49 = strsignal(v164 & 0x7F);
        sub_10004860C(0, 1uLL, "child signaled: %s", v50, v51, v52, v53, v54, v49);
        exit(70);
      }

      if ((v164 & 0x7F) == 0x7F && v164 >> 8 != 19)
      {
        v55 = strsignal(v164 >> 8);
        sub_10004860C(0, 1uLL, "child stopped: %s", v56, v57, v58, v59, v60, v55);
        exit(71);
      }

      __break(1u);
    }

    else
    {
      v72 = BYTE1(v164);
      if (!BYTE1(v164))
      {
        sub_10004860C(0, 1uLL, "child exited successfully", v44, v45, v46, v47, v48, v63);
LABEL_161:
        exit(v72);
      }

      if (BYTE1(v164) != 127)
      {
        sub_10004860C(0, 1uLL, "child exited with code: %d", v44, v45, v46, v47, v48, SBYTE1(v164));
        goto LABEL_161;
      }

      v177 = 88;
      warnx("no interpreter for image");
    }
  }

  v65 = v177;
  sub_100002DE4(&__argv);
  sub_100002DE4(&v169);
  sub_100002DE4(&v170);
  return v65;
}

uint64_t sub_100002E20(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  __s2 = a4;
  v15 = a5;
  *&v14[4] = a6;
  v13 = 0;
  bzero(__s1, 0x400uLL);
  *v14 = _cryptex_copy_list();
  if (*v14 && !*&v14[4])
  {
    *v14 = _cryptex_copy_list_lossy();
  }

  if (!*v14)
  {
    *v14 = 2;
    sub_10004860C(0, 1uLL, "cannot find installed cryptex with identifier %s and version %s", v6, v7, v8, v9, v10, __s2);
  }

  v12 = *v14;
  sub_100002DE4(&v13);
  return v12;
}

uint64_t sub_100003098(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_1000030D0(void **a1)
{
  if (*a1)
  {
    os_release(*a1);
  }
}

uint64_t sub_100003120(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100003160(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_1000031B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100003218(uint64_t a1, int a2, char **a3)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = -1;
  v29 = a3;
  v28 = -1;
  v27 = 0;
  memset(__b, 0, sizeof(__b));
  i = 0;
  sub_1000480E0();
  __b[1] = 0;
  __b[2] = &__b[1];
  while (1)
  {
    v28 = getopt_long(v32, v29, *(v33 + 32), *(v33 + 40), &v27);
    if (v28 == -1)
    {
      break;
    }

    v24 = (*(v33 + 40) + 32 * v27);
    v23 = v31[optind - 1];
    if (optind < 1)
    {
      v22 = 0;
      memset(&v48[16], 0, 0x50uLL);
      v20 = 0;
      v19 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 &= ~1u;
      }

      if (v19)
      {
        sub_1000013C8(v48, optind);
        v20 = _os_log_send_and_compose_impl();
      }

      v16 = v20;
      v21 = v20;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100003418);
    }

    switch(v28)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v24);
      case '?':
        errx(64, "unknown option: %s", v23);
      case 'C':
        v14 = 24;
        v13 = 1;
        count = 1;
        size = 24;
        v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x8709206FuLL);
        v46 = "known-constant allocation";
        v45 = v15;
        v44 = 24;
        if (!v15)
        {
          v43 = 0;
          memset(&v49[40], 0, 0x50uLL);
          v41 = 0;
          v40 = 3;
          v39 = &_os_log_default;
          v38 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v40 &= ~1u;
          }

          if (v40)
          {
            v7 = v46;
            v8 = v44;
            v3 = __error();
            v4 = strerror(*v3);
            sub_1000031B0(v49, v7, v8, v4);
            v37 = _os_log_send_and_compose_impl();
            v41 = v37;
          }

          v36 = v41;
          v42 = v41;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000035F8);
        }

        v12 = v15;
        i = v15;
        *(v15 + 1) = optarg;
        v5 = __b[1];
        *i = __b[1];
        if (!v5)
        {
          __b[2] = i;
        }

        __b[1] = i;
        if (!__b[3])
        {
          __b[3] = i;
        }

        break;
      case 'K':
        __b[5] = optarg;
        break;
      case 'o':
        __b[6] = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000036E4);
    }
  }

  v31 += optind;
  v32 -= optind;
  if (v32 < 1)
  {
    errx(64, "a property list must be provided");
  }

  __b[0] = *v31;
  for (i = __b[1]; i; i = *i)
  {
    v11 = -1;
    memset(v10, 0, 0x38uLL);
    v11 = open(*(i + 1), 0);
    v47 = v11;
    if (v11 < 0)
    {
      err(66, "failed to read certificate: %s", *(i + 1));
    }

    v30 = sub_10004B524(v11, v10);
    if (v30)
    {
      errc(66, v30, "failed to read certificate: %s", *(i + 1));
    }

    v9 = sub_10003AC40(v10, 0);
    v30 = sub_10003AE8C(v9);
    if (v30)
    {
      errc(66, v30, "failed to parse certificate: %s", *(i + 1));
    }

    __b[4] += *(*(v9 + 20) + 8);
    *(i + 2) = v9;
    sub_1000038DC(&v11);
  }

  v30 = sub_100003A70(__b);
  return sysexit_np();
}

int *sub_1000038DC(int *result)
{
  if (*result != -1)
  {
    result = close(*result);
    if (result == -1)
    {
      memset(&v2[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v1 = __error();
      sub_1000013C8(v2, *v1);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100003A40);
    }
  }

  return result;
}

uint64_t sub_100003A70(const char **a1)
{
  v22 = a1;
  v21 = -1;
  v20 = sub_100048084();
  v19 = -1;
  v18 = -1;
  v17 = -1;
  __s = 0;
  memset(__b, 0, sizeof(__b));
  v15 = 0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v10[0] = v22;
  memset(v9, 0, sizeof(v9));
  v9[0] = v22;
  memset(&v9[1], 0, 116);
  v9[8].n128_u64[1] = 0;
  v8 = 0;
  xdict = 0;
  dictionary = 0;
  v5 = 0;
  __fd = -1;
  __s = basename_r(*v22, __b);
  v15 = strrchr(__s, 46);
  if (v15)
  {
    *v15 = 0;
  }

  __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s.im4m", __s);
  if (v22[6])
  {
    v14 = v22[6];
  }

  else
  {
    v14 = __s;
  }

  v17 = open(*v22, 0);
  v24 = v17;
  if (v17 < 0)
  {
    v21 = *__error();
    warn("failed to open plist: %s", *v22);
  }

  else
  {
    v21 = sub_10004B524(v17, v13);
    if (v21)
    {
      warnc(v21, "failed to read plist");
    }

    else
    {
      v8 = xpc_create_from_plist();
      if (v8)
      {
        object = v8;
        v25 = &_xpc_type_dictionary;
        type = xpc_get_type(v8);
        if (type == v25)
        {
          v27 = object;
        }

        else
        {
          v27 = 0;
        }

        xdict = v27;
        if (v27)
        {
          dictionary = xpc_dictionary_get_dictionary(xdict, "MANP");
          if (dictionary)
          {
            v5 = xpc_dictionary_get_dictionary(xdict, "OBJP");
            v10[1] = dictionary;
            v10[2] = v5;
            v21 = sub_100004044(v22, v9);
            if (!v21)
            {
              v18 = sub_10004E2F0(0, sub_1000045E0, sub_100004768, sub_100004878, v9[4].n128_u64[1], v9[8].n128_u32[0], v12, &v11, v10, v9);
              if (v18 == 100)
              {
                v12[1] = v11;
                v12[5] = j__free;
                __fd = openat(v20[584], __s, 513, 438);
                v23 = __fd;
                if (__fd < 0)
                {
                  v21 = *__error();
                  warnc(v21, "failed to write manifest");
                }

                else
                {
                  v21 = sub_10004B8CC(__fd, v12);
                  if (v21)
                  {
                    warnc(v21, "failed to write manifest");
                  }

                  else
                  {
                    v19 = renameat(v20[584], __s, -2, v14);
                    if (v19)
                    {
                      v21 = *__error();
                      warn("failed to rename manifest to final location");
                    }

                    else
                    {
                      v21 = 0;
                    }
                  }
                }
              }

              else
              {
                v21 = 92;
                warnc(92, "failed to create manifest: %d", v18);
              }
            }
          }

          else
          {
            v21 = 2;
            warnc(2, "plist does not have a MANP dictionary");
          }
        }

        else
        {
          v21 = 22;
          warnc(22, "plist root not a dictionary");
        }
      }

      else
      {
        v21 = 92;
        warnc(92, "invalid plist");
      }
    }
  }

  sub_10004C66C(v13);
  sub_10004C66C(v12);
  sub_10004C66C(&v9[4].n128_u64[1]);
  sub_10004C66C(v9[1].n128_u64);
  v3 = v21;
  sub_1000038DC(&__fd);
  sub_1000030D0(&v8);
  sub_1000038DC(&v17);
  return v3;
}

uint64_t sub_100004044(uint64_t a1, __n128 *a2)
{
  v27 = a1;
  v26 = a2;
  v25 = -1;
  memset(__b, 0, 0x38uLL);
  v23 = *(*(v27 + 24) + 16);
  i = 0;
  v21 = 0;
  v19 = *(v27 + 32);
  if (_dispatch_is_multithreaded())
  {
    v41 = v19;
    v40 = 0;
    while (1)
    {
      v40 = malloc_type_malloc(v41, 0x5C008F58uLL);
      if (v40)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v18 = v40;
  }

  else
  {
    v39 = v19;
    v18 = malloc_type_malloc(v19, 0x2F48DA65uLL);
    v38 = "known-constant allocation";
    v37 = v18;
    v36 = v19;
    if (!v18)
    {
      v35 = 0;
      memset(&v42[40], 0, 0x50uLL);
      v33 = 0;
      v32 = 3;
      v31 = &_os_log_default;
      v30 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v32 &= ~1u;
      }

      if (v32)
      {
        v15 = v38;
        v16 = v36;
        v2 = __error();
        v3 = strerror(*v2);
        sub_1000031B0(v42, v15, v16, v3);
        v29 = _os_log_send_and_compose_impl();
        v33 = v29;
      }

      v28 = v33;
      v34 = v33;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100004294);
    }
  }

  v21 = v18;
  v20 = v18;
  for (i = *(v27 + 8); i; i = *i)
  {
    v17 = *(*(i[2] + 160) + 8);
    v4 = **(i[2] + 160);
    __memcpy_chk();
    v20 += v17;
    v19 -= v17;
    if (v19 > *(v27 + 32))
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x100004390);
    }
  }

  if (*(v27 + 32) > 0xFFFFFFFFuLL)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x1000043DCLL);
  }

  v26[8].n128_u32[0] = *(v27 + 32);
  v5 = sub_100004A00(*(v27 + 40), __b, &AMSupportRsaCreatePrivateKeyFromPEMBuffer);
  v25 = v5;
  if (!v5)
  {
    if (*(*(v23 + 200) + 8) == &off_10007ED28)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha1", v6, v7, v8, v9, v10, v11, v13);
      v26[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha1;
LABEL_31:
      sub_10004C358(&v26[4].n128_u64[1], 0, j__free, v21, *(v27 + 32));
      v21 = 0;
      sub_10004C42C(v26 + 1, __b);
      v25 = 0;
      goto LABEL_32;
    }

    if (*(*(v23 + 200) + 8) == &off_10007ED38)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha2-256", v6, v7, v8, v9, v10, v11, v13);
      v26[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha256;
      goto LABEL_31;
    }

    if (*(*(v23 + 200) + 8) == &off_10007ED48)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha2-384", v6, v7, v8, v9, v10, v11, v13);
      v26[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha384;
      goto LABEL_31;
    }

    if (*(*(v23 + 200) + 8) == &off_10007ED58)
    {
      sub_1000483C8(1uLL, "leaf certificate is rsa sha2-512", v6, v7, v8, v9, v10, v11, v13);
      v26[8].n128_u64[1] = &AMSupportRsaCreateSignatureSha512;
      goto LABEL_31;
    }

    warnx("unsupported digest algorithm: output size = %lu", **(v23 + 200));
    v25 = 45;
  }

LABEL_32:
  sub_10004C66C(__b);
  v14 = v25;
  sub_100002DE4(&v21);
  return v14;
}

uint64_t sub_1000045E0(void *a1, unsigned int *a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = a3;
  v11 = 0;
  v13 = sub_10004D4E4(&v11, 1296125520);
  if (v13 != 100)
  {
    goto LABEL_2;
  }

  *(v12 + 24) = v11;
  v3 = *(v12 + 8);
  xpc_dictionary_apply_f();
  if (*(v12 + 44))
  {
    v13 = 103;
    warnc(*(v12 + 44), "failed to encode manifest");
    goto LABEL_9;
  }

  v13 = sub_10004D5EC(v11, 0x4D414E50u);
  if (v13 == 100)
  {
    v13 = sub_10004E098(v11, v16, v15);
    if (v13 == 100)
    {
      sub_1000483C8(1uLL, "finalized manifest length: %u", v4, v5, v6, v7, v8, v9, *v15);
    }

    else
    {
      warnx("failed to finalize manifest: %d", v13);
    }
  }

  else
  {
LABEL_2:
    warnx("failed to begin manifest: %d", v13);
  }

LABEL_9:
  sub_10004E028(v11);
  return v13;
}

uint64_t sub_100004768(void *a1, unsigned int *a2, uint64_t a3)
{
  v11 = 0;
  v3 = *(a3 + 16);
  xpc_dictionary_apply_f();
  if (*(a3 + 44))
  {
    v13 = 103;
    warnc(*(a3 + 44), "failed to encode manifest");
  }

  else
  {
    v11 = *(a3 + 32);
    *(a3 + 32) = 0;
    v13 = sub_10004E098(v11, a1, a2);
    if (v13 == 100)
    {
      sub_1000483C8(1uLL, "finalized object section length: %u", v4, v5, v6, v7, v8, v9, *a2);
    }

    else
    {
      warnx("failed to finalize manifest: %d", v13);
    }
  }

  sub_10004E028(v11);
  return v13;
}

uint64_t sub_100004878(int a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a6;
  v26 = -1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  sub_100049834(&v22, a2, a3);
  v19 = *(v27 + 24);
  sub_1000483C8(1uLL, "signing data: version = %d, data = %s, length = %lu, key length = %lu", v6, v7, v8, v9, v10, v11, v33);
  v25 = (*(v27 + 136))(v32, v31, *(v27 + 16), *(v27 + 24), &v24, &v23);
  if (v25)
  {
    v26 = 103;
    warnx("failed to sign manifest: %d", v25);
  }

  else
  {
    sub_100049834(&v21, v24, v23);
    sub_1000483C8(1uLL, "signed data: signature = %s, length = %lu", v12, v13, v14, v15, v16, v17, v21);
    *v30 = v24;
    *v29 = v23;
    v26 = 100;
  }

  v20 = v26;
  sub_100002DE4(&v21);
  sub_100002DE4(&v22);
  return v20;
}

uint64_t sub_100004A00(const char *a1, void *a2, uint64_t (*a3)(void, void, uint64_t *, uint64_t *))
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = -1;
  v6 = -1;
  memset(__b, 0, sizeof(__b));
  v6 = open(v10, 0);
  v11 = v6;
  if (v6 < 0)
  {
    v7 = *__error();
    warn("failed to open pem file: %s", v10);
  }

  else
  {
    v7 = sub_10004B524(v6, __b);
    if (v7 || (v7 = sub_10003AA7C(__b, v9, v8)) != 0)
    {
      warnc(v7, "failed to read pem file: %s", v10);
    }
  }

  sub_10004C66C(__b);
  v4 = v7;
  sub_1000038DC(&v6);
  return v4;
}

uint64_t sub_100004B30(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (!*(a3 + 44))
  {
    sub_1000483C8(1uLL, "adding property to manifest: %s", a3, a4, a5, a6, a7, a8, result);
    result = sub_100004BC8(*(a3 + 24), 1296125520, v10, a2);
    *(a3 + 44) = result;
  }

  return result;
}

uint64_t sub_100004BC8(_DWORD *a1, int a2, char *a3, void *a4)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = -1;
  type = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = 0xFFFFFFFFLL;
  v26 = 4;
  v25 = 0;
  v28 = strstr(a3, "_64");
  if (!v28 || v28[3])
  {
    v28 = strstr(v35, "_32");
    if (!v28 || v28[3])
    {
      v28 = strstr(v35, "_0X");
      if (!v28 || v28[3])
      {
        sub_1000483C8(1uLL, "no key extension: %s", v16, v17, v18, v19, v20, v21, v35);
        v28 = 0;
      }

      else
      {
        sub_1000483C8(1uLL, "found key extension: %s", v16, v17, v18, v19, v20, v21, v28);
        v26 = 7;
      }
    }

    else
    {
      sub_1000483C8(1uLL, "found key extension: %s", v10, v11, v12, v13, v14, v15, v28);
      v27 = 0xFFFFFFFFLL;
      v26 = 7;
    }
  }

  else
  {
    sub_1000483C8(1uLL, "found key extension: %s", v4, v5, v6, v7, v8, v9, v28);
    v27 = -1;
    v26 = 7;
  }

  if (strlen(v35) != v26)
  {
    v33 = 22;
    goto LABEL_28;
  }

  __strlcpy_chk();
  v29 = sub_10004B478(&v30);
  type = xpc_get_type(v34);
  if (type == &_xpc_type_int64)
  {
    v25 = sub_100004FA4(v35, v28, v34);
    if (!v25)
    {
      v33 = 34;
      goto LABEL_28;
    }

    v34 = v25;
    type = xpc_get_type(v25);
  }

  else if (type == &_xpc_type_string)
  {
    v25 = sub_100005004(v35, v28, v34);
    if (v25)
    {
      v34 = v25;
    }

    type = xpc_get_type(v34);
  }

  if (type == &_xpc_type_BOOL)
  {
    v33 = sub_10000511C(v37, v36, v29, v34);
  }

  else if (type == &_xpc_type_uint64)
  {
    v33 = sub_100005184(v37, v36, v29, v34, v27);
  }

  else if (type == &_xpc_type_data)
  {
    v33 = sub_1000052B0(v37, v36, v29, v34);
  }

  else
  {
    warnx("unsupported object type in property list for tag: %s", v35);
    v33 = 79;
  }

LABEL_28:
  if (v33)
  {
    v24 = 0;
    v24 = xpc_copy_description(v34);
    warnc(v33, "failed to encode value: %s => %s", v35, v24);
    sub_100002DE4(&v24);
  }

  v23 = v33;
  sub_1000030D0(&v25);
  return v23;
}

xpc_object_t sub_100004FA4(uint64_t a1, uint64_t a2, void *a3)
{
  value = xpc_int64_get_value(a3);
  if (value < 0)
  {
    return 0;
  }

  else
  {
    return xpc_uint64_create(value);
  }
}

xpc_object_t sub_100005004(uint64_t a1, const char *a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  if (!strcmp(a2, "_32") || !strcmp(a2, "_64"))
  {
    v4 = sub_100005364(a1, a3);
    if (v4)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  if (!strcmp(a2, "_0X"))
  {
    v5 = sub_100005484(a1, a3);
    if (v5)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_11:
    v6 = sub_10000553C(a1, a3);
    if (v6)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10000511C(_DWORD *a1, int a2, unsigned int a3, void *a4)
{
  value = xpc_BOOL_get_value(a4);
  v6 = sub_10004DC84(a1, a2, a3, value);
  return sub_1000055B4(v6);
}

uint64_t sub_100005184(_DWORD *a1, int a2, unsigned int a3, void *a4, unint64_t a5)
{
  value = xpc_uint64_get_value(a4);
  if (value <= a5)
  {
    if (a5 <= 0xFFFFFFFF)
    {
      sub_1000483C8(1uLL, "encoding uint value as u32: %#x", v5, v6, v7, v8, v9, v10, value);
      v19 = sub_10004DDC0(a1, a2, a3, value);
    }

    else
    {
      sub_1000483C8(1uLL, "encoding uint value as u64: %#llx", v5, v6, v7, v8, v9, v10, value);
      v19 = sub_10004DEF4(a1, a2, a3, value);
    }

    sub_1000483C8(1uLL, "encode result: %d", v11, v12, v13, v14, v15, v16, v19);
    return sub_1000055B4(v19);
  }

  else
  {
    return 34;
  }
}

uint64_t sub_1000052B0(_DWORD *a1, int a2, unsigned int a3, void *a4)
{
  bytes_ptr = xpc_data_get_bytes_ptr(a4);
  length = xpc_data_get_length(a4);
  if (length <= 0xFFFFFFFF)
  {
    v7 = sub_10004D9D8(a1, a2, a3, bytes_ptr, length);
    return sub_1000055B4(v7);
  }

  else
  {
    return 84;
  }
}

xpc_object_t sub_100005364(char a1, void *a2)
{
  v18 = 0;
  string_ptr = xpc_string_get_string_ptr(a2);
  *__error() = 0;
  v16 = strtoull(string_ptr, 0, 0);
  if (*__error())
  {
    v15 = *__error();
    sub_1000483C8(1uLL, "invalid string for unsigned integer conversion: %s => %s: %d", v2, v3, v4, v5, v6, v7, a1);
  }

  else
  {
    v18 = xpc_uint64_create(v16);
    sub_1000483C8(1uLL, "interpreting string value as unsigned integer: %s: %s => %#llx", v8, v9, v10, v11, v12, v13, a1);
  }

  return v18;
}

xpc_object_t sub_100005484(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  string_ptr = 0;
  length = 0;
  v10 = 0;
  string_ptr = xpc_string_get_string_ptr(a2);
  length = xpc_string_get_length(v13);
  sub_100049A08(&v10, &length, string_ptr);
  sub_1000483C8(1uLL, "interpreting string value as hex data: %s: cstr = %s, data length = %lu", v2, v3, v4, v5, v6, v7, v14);
  v9 = xpc_data_create(v10, length);
  sub_100002DE4(&v10);
  return v9;
}

xpc_object_t sub_10000553C(char a1, void *a2)
{
  bytes = xpc_string_get_string_ptr(a2);
  length = xpc_string_get_length(a2);
  sub_1000483C8(1uLL, "interpreting string value as data: %s: %s", v2, v3, v4, v5, v6, v7, a1);
  return xpc_data_create(bytes, length + 1);
}

uint64_t sub_1000055B4(int a1)
{
  switch(a1)
  {
    case 'd':
      return 0;
    case 'e':
      return 22;
    case 'f':
      return 12;
    case 'g':
      return 104;
    case 'h':
      return 80;
    case 'i':
      return 78;
    default:
      return 14;
  }
}

void sub_10000567C(unsigned int *a1, void *a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a3;
  v12 = 0;
  v11 = -1;
  v10 = 0;
  v9 = 0;
  if (!*(a3 + 44))
  {
    v10 = xpc_copy_description(v15);
    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      if (strlen(v16) == 4)
      {
        v9 = sub_10004B478(v16);
        if (*(v13 + 32))
        {
          v12 = *(v13 + 32);
        }

        v11 = sub_10004D4E4(&v12, v9);
        if (v11 == 100)
        {
          sub_1000483C8(1uLL, "adding object to manifest: %s => %s", v3, v4, v5, v6, v7, v8, v16);
          *(v13 + 40) = v9;
          *(v13 + 32) = v12;
          xpc_dictionary_apply_f();
        }

        else
        {
          warnx("failed to begin manifest: %d", v11);
        }
      }

      else
      {
        *(v13 + 44) = 79;
        warnx("illegal tag for object: %s => %s", v16, v10);
      }
    }

    else
    {
      *(v13 + 44) = 79;
      warnx("illegal object specifier: %s => %s", v16, v10);
    }
  }

  while (v12)
  {
    v11 = sub_10004D5EC(v12, v9);
    if (v11 == 100)
    {
      break;
    }

    warnx("failed to end %s object: %d", v16, v11);
  }

  sub_100002DE4(&v10);
}

char *sub_100005894(char *result, void *a2, uint64_t a3)
{
  v17 = result;
  v16 = a2;
  v15 = a3;
  v14 = a3;
  v13 = -1;
  v11 = 0;
  v12 = 0;
  v10 = *(a3 + 40);
  if (!*(a3 + 44))
  {
    v3 = sub_10004B484(v10, &v11);
    sub_1000483C8(1uLL, "adding property to object: %s: %s", v4, v5, v6, v7, v8, v9, v3);
    result = sub_100004BC8(*(v14 + 32), v10, v17, v16);
    *(v14 + 44) = result;
  }

  return result;
}

void sub_10000594C(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = simple_session_copy_homedir();
  v1 = simple_session_copy_name();
  fprintf(__stdoutp, "%s | %s \n", v1, v2);
  objc_storeStrong(&location, 0);
}

uint64_t sub_1000059D4(uint64_t a1, int a2, char *const *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  v14 = a3;
  v13 = -1;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[1]) = 1;
  __b[2] = 0;
  sub_1000480E0();
  while (1)
  {
    v13 = getopt_long(v17, v14, *(v18 + 32), *(v18 + 40), &v12);
    if (v13 == -1)
    {
      break;
    }

    v10 = v16[optind - 1];
    if (optind < 1)
    {
      v9 = 0;
      memset(&v20[8], 0, 0x50uLL);
      v7 = 0;
      v6 = 3;
      oslog = &_os_log_default;
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 &= ~1u;
      }

      if (v6)
      {
        sub_1000013C8(v20, optind);
        v7 = _os_log_send_and_compose_impl();
      }

      v4 = v7;
      objc_storeStrong(&oslog, 0);
      v8 = v4;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100005BC8);
    }

    switch(v13)
    {
      case '?':
        errx(64, "unknown option: %s", v10);
      case 'A':
        LOBYTE(__b[1]) = 0;
        break;
      case 'H':
        __b[0] |= 2uLL;
        break;
      case 'L':
        __b[6] = optarg;
        break;
      case 'V':
        __b[5] = optarg;
        break;
      case 'e':
        __b[7] = optarg;
        break;
      case 'l':
        __b[0] |= 4uLL;
        break;
      case 'n':
        __b[0] |= 1uLL;
        break;
      case 's':
        __b[4] = optarg;
        break;
      case 'z':
        __b[2] = strtoull(optarg, 0, 0);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100005D4CLL);
    }
  }

  v16 += optind;
  v17 -= optind;
  if (__b[0] != 1 && (__b[7] || __b[6]))
  {
    v15 = 22;
    warnx("Environment and Launchd Overrides are only applicable for sessioncreate. Exiting");
    return sysexit_np();
  }

  else
  {
    v15 = sub_100005E24(__b);
    return sysexit_np();
  }
}

uint64_t sub_100005E24(void *a1)
{
  v2 = -1;
  if ((*a1 & 4) != 0)
  {
    v2 = sub_100005EAC();
  }

  if ((*a1 & 2) != 0)
  {
    v2 = sub_100005EEC(a1);
  }

  if (*a1)
  {
    return sub_100005FB0(a1);
  }

  return v2;
}

uint64_t sub_100005EEC(uint64_t a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  if (*(a1 + 32))
  {
    v2 = sub_100026694(*(v5 + 32));
    v3 = session_stop() != 0;
    if (v3)
    {
      warn("Session stop failed", v2);
      v4 = 22;
    }

    v6 = v4;
    objc_storeStrong(&v2, 0);
  }

  else
  {
    warn("No session selected");
    v4 = 22;
    return 22;
  }

  return v6;
}

uint64_t sub_100005FB0(uint64_t a1)
{
  v59 = a1;
  v58 = 0;
  obj[1] = ((*(a1 + 8) & 1) == 0);
  obj[0] = simple_session_create();
  location = 0;
  v55 = 0;
  *(v59 + 32) = simple_session_copy_name();
  if (!*(v59 + 56))
  {
    goto LABEL_72;
  }

  v1 = sub_100006B90(*(v59 + 56), &v58);
  v2 = location;
  location = v1;
  _objc_release(v2);
  if (v58)
  {
    warnc(v58, "create_xpc_object_from_plist_path returned an error");
    goto LABEL_66;
  }

  v58 = simple_session_add_session_environment();
  if (v58)
  {
    v54 = sub_100048090();
    v35 = 1;
    if (v54[1] <= 1uLL)
    {
      v35 = v54[2] > 1uLL;
    }

    if (v35)
    {
      v3 = 999;
    }

    else
    {
      v3 = 3;
    }

    v53 = v3;
    v34 = 1;
    if (v54[1] <= 1uLL)
    {
      v34 = v54[2] > 1uLL;
    }

    v4 = 2000;
    if (!v34)
    {
      v4 = 200;
    }

    v52 = v4;
    if (v55)
    {
      v33 = sub_100017530(v55, v53, v52);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v50 = strdup("unknown error");
      v5 = strlen("unknown error");
      v95 = "known-constant allocation";
      v94 = v50;
      v93 = v5;
      if (!v50)
      {
        v92 = 0;
        memset(&v98[40], 0, 0x50uLL);
        v90 = 0;
        v89 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v89 &= ~1u;
        }

        if (v89)
        {
          v30 = v95;
          v31 = v93;
          v32 = __error();
          v29 = strerror(*v32);
          sub_1000031B0(v98, v30, v31, v29);
          v86 = _os_log_send_and_compose_impl();
          v90 = v86;
        }

        v85 = v90;
        objc_storeStrong(&oslog, 0);
        v91 = v85;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100006388);
      }

      v48 = v50;
      v33 = v50;
    }

    v51 = v33;
    warnx("session_add_session_environment returned an error\n%s", v33);
    sub_100002DE4(&v51);
  }

  else
  {
LABEL_72:
    if (*(v59 + 16) && (v6 = *(v59 + 16), (v58 = simple_session_set_homedir_size() ^ 1) != 0))
    {
      v47 = sub_100048090();
      v28 = 1;
      if (v47[1] <= 1uLL)
      {
        v28 = v47[2] > 1uLL;
      }

      if (v28)
      {
        v7 = 999;
      }

      else
      {
        v7 = 3;
      }

      v46 = v7;
      v27 = 1;
      if (v47[1] <= 1uLL)
      {
        v27 = v47[2] > 1uLL;
      }

      v8 = 2000;
      if (!v27)
      {
        v8 = 200;
      }

      v45 = v8;
      if (v55)
      {
        v26 = sub_100017530(v55, v46, v45);
      }

      else
      {
        v42 = "unknown error";
        v61 = "unknown error";
        v43 = strdup("unknown error");
        v9 = strlen("unknown error");
        v84 = "known-constant allocation";
        v83 = v43;
        v82 = v9;
        if (!v43)
        {
          v81 = 0;
          memset(&v97[32], 0, 0x50uLL);
          v79 = 0;
          v78 = 3;
          v77 = &_os_log_default;
          v76 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 &= ~1u;
          }

          if (v78)
          {
            v23 = v84;
            v24 = v82;
            v25 = __error();
            v22 = strerror(*v25);
            sub_1000031B0(v97, v23, v24, v22);
            v75 = _os_log_send_and_compose_impl();
            v79 = v75;
          }

          v74 = v79;
          objc_storeStrong(&v77, 0);
          v80 = v74;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000066D8);
        }

        v41 = v43;
        v26 = v43;
      }

      v44 = v26;
      warnx("session_set_homedir_size returned an error\n%s", v26);
      sub_100002DE4(&v44);
    }

    else
    {
      v58 = simple_session_activate() ^ 1;
      if (v58)
      {
        v40 = sub_100048090();
        v21 = 1;
        if (v40[1] <= 1uLL)
        {
          v21 = v40[2] > 1uLL;
        }

        if (v21)
        {
          v10 = 999;
        }

        else
        {
          v10 = 3;
        }

        v39 = v10;
        v20 = 1;
        if (v40[1] <= 1uLL)
        {
          v20 = v40[2] > 1uLL;
        }

        v11 = 2000;
        if (!v20)
        {
          v11 = 200;
        }

        v38 = v11;
        if (v55)
        {
          v19 = sub_100017530(v55, v39, v38);
        }

        else
        {
          v60 = "unknown error";
          v36 = strdup("unknown error");
          v12 = strlen("unknown error");
          v73 = "known-constant allocation";
          v72 = v36;
          v71 = v12;
          if (!v36)
          {
            v70 = 0;
            memset(&v96[32], 0, 0x50uLL);
            v68 = 0;
            v67 = 3;
            v66 = &_os_log_default;
            v65 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v67 &= ~1u;
            }

            if (v67)
            {
              v16 = v73;
              v17 = v71;
              v18 = __error();
              v15 = strerror(*v18);
              sub_1000031B0(v96, v16, v17, v15);
              v64 = _os_log_send_and_compose_impl();
              v68 = v64;
            }

            v63 = v68;
            objc_storeStrong(&v66, 0);
            v69 = v63;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100006A10);
          }

          v19 = v36;
        }

        v37 = v19;
        warnx("Activation error\n%s", v19);
        sub_100002DE4(&v37);
      }

      else
      {
        sub_10000594C(obj[0]);
      }
    }
  }

LABEL_66:
  v14 = v58;
  sub_100006B40(&v55);
  objc_storeStrong(&location, 0);
  objc_storeStrong(obj, 0);
  return v14;
}

void sub_100006B10(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_100006B40(CFTypeRef *a1)
{
  if (*a1)
  {
    CFRelease(*a1);
  }
}

id sub_100006B90(const char *a1, int *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  memset(__b, 0, sizeof(__b));
  v9 = open(v13, 0);
  v14 = v9;
  if (v9 < 0)
  {
    v7 = __error();
    v8 = *v7;
    warnc(*v7, "Could not open file at %s.", v13);
  }

  else
  {
    v8 = sub_10004B524(v9, __b);
    if (v8)
    {
      warnc(v8, "Unable to read plist: %s", v13);
    }

    else
    {
      v6 = xpc_create_from_plist();
      v2 = v11;
      v11 = v6;
      _objc_release(v2);
      if (!v11)
      {
        v8 = 212;
        warnc(212, "Failed to parse plist: %s", v13);
      }
    }
  }

  sub_10004C66C(__b);
  *v12 = v8;
  v5 = v11;
  sub_100006D80(&v9);
  objc_storeStrong(&v11, 0);
  v3 = v5;
  return v5;
}

int *sub_100006D80(int *result)
{
  v10 = result;
  v9 = *result;
  if (v9 != -1)
  {
    result = close(v9);
    v8 = result;
    if (result == -1)
    {
      v7 = 0;
      memset(&v11[8], 0, 0x50uLL);
      v5 = 0;
      v4 = 3;
      oslog = &_os_log_default;
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v4 &= ~1u;
      }

      if (v4)
      {
        v1 = __error();
        sub_1000013C8(v11, *v1);
        v5 = _os_log_send_and_compose_impl();
      }

      v2 = v5;
      objc_storeStrong(&oslog, 0);
      v6 = v2;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100006EFCLL);
    }
  }

  return result;
}

BOOL sub_100006F2C()
{
  v8 = __chkstk_darwin();
  v7 = -1;
  v6 = 0;
  bzero(&v12, 0x848uLL);
  image_asset = 0;
  v4 = 0;
  __s1 = 0;
  bzero(v11, 0x400uLL);
  bzero(v10, 0x400uLL);
  v2 = 0;
  v0 = *(v8 + 48);
  image_asset = cryptex_core_get_image_asset();
  v12 = *(image_asset + 16);
  v15 = *(v8 + 32);
  v7 = sub_100009F44(&v12, &v4);
  if (v7)
  {
    v6 = "failed to attach dmg";
  }

  else
  {
    v7 = sub_10000AD54(&v12, v4, &__s1, v11, v10);
    if (v7)
    {
      v6 = "failed to find attached dmg";
    }

    else
    {
      v13 = open(v11, 0);
      v9 = v13;
      if (v13 < 0)
      {
        v7 = *__error();
        v6 = "failed to open device handle";
      }

      else
      {
        if (ioctl(v13, 0x20006415uLL))
        {
          warn("failed to detach virtual device: %s (not fatal)", v14);
        }

        v2 = strcmp(__s1, "apfs") == 0;
      }
    }
  }

  if (v7)
  {
    errc(71, v7, "%s", v6);
  }

  sub_100006B40(&v4);
  return v2;
}

uint64_t sub_100007174()
{
  v88 = __chkstk_darwin();
  v87 = v0;
  v86 = v1;
  v85 = -1;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = sub_100048084();
  v79 = -1;
  v78 = -1;
  v77 = -1;
  v76 = -1;
  v75 = -1;
  memset(__b, 0, sizeof(__b));
  memset(v73, 0, sizeof(v73));
  memcpy(v131, "seal.XXXXXX", sizeof(v131));
  bzero(v130, 0x400uLL);
  bzero(v129, 0x400uLL);
  bzero(v128, 0x400uLL);
  bzero(v127, 0x400uLL);
  bzero(v126, 0x400uLL);
  v2 = *(v88 + 48);
  if (cryptex_core_is_cryptex1())
  {
    v85 = sub_10004B3B0(v80[584], v131, &v79);
    if (v85)
    {
      v69 = *(v88 + 16);
      if (!v69)
      {
        v69 = "[anonymous]";
      }

      v68 = *__error();
      v67 = *(v88 + 32);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v124, v69, v85);
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}s: failed to create temp dir: %{darwin.errno}d", v124, 0x12u);
      }

      *__error() = v68;
    }

    else
    {
      v85 = realpath_np();
      if (v85)
      {
        v66 = *(v88 + 16);
        if (!v66)
        {
          v66 = "[anonymous]";
        }

        v65 = *__error();
        v64 = *(v88 + 32);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v123, v66, v85);
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}s: failed to get temp dir path: %{darwin.errno}d", v123, 0x12u);
        }

        *__error() = v65;
      }

      else
      {
        __snprintf_chk(v128, 0x400uLL, 0, 0x400uLL, "%s/sealed.dmg", v130);
        __snprintf_chk(v127, 0x400uLL, 0, 0x400uLL, "%s/sealed.dmg.roothash.data", v130);
        __snprintf_chk(v126, 0x400uLL, 0, 0x400uLL, "%s/sealed.dmg.roothash.im4p", v130);
        v3 = *(v88 + 48);
        v83 = cryptex_core_pop_asset();
        if (v83)
        {
          v78 = *(v83 + 16);
          v85 = realpath_np();
          if (v85)
          {
            v60 = *(v88 + 16);
            if (!v60)
            {
              v60 = "[anonymous]";
            }

            v59 = *__error();
            v58 = *(v88 + 32);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              sub_100009614(v121, v60, v85);
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}s: failed to get image path: %{darwin.errno}d", v121, 0x12u);
            }

            *__error() = v59;
          }

          else
          {
            v85 = sub_100009668(v129, v128, v127, *(v88 + 32), v87 & 1);
            if (v85)
            {
              v57 = *(v88 + 16);
              if (!v57)
              {
                v57 = "[anonymous]";
              }

              v56 = *__error();
              v55 = *(v88 + 32);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                sub_100009614(v120, v57, v85);
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%{public}s: failed to seal cryptex: %{darwin.errno}d", v120, 0x12u);
              }

              *__error() = v56;
            }

            else
            {
              v76 = open(v127, 256);
              v92 = v76;
              if (v76 < 0)
              {
                v85 = *__error();
                if (v85)
                {
                  v51 = *(v88 + 16);
                  if (!v51)
                  {
                    v51 = "[anonymous]";
                  }

                  v50 = *__error();
                  v49 = *(v88 + 32);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    sub_100009DCC(v118, v51, v127, v85);
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}s: failed to open volume hash data file: %{public}s: %{darwin.errno}d", v118, 0x1Cu);
                  }

                  *__error() = v50;
                }

                else
                {
                  v54 = *(v88 + 16);
                  if (!v54)
                  {
                    v54 = "[anonymous]";
                  }

                  v53 = *__error();
                  v52 = *(v88 + 32);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100009D7C(v119, v54, v127);
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%{public}s: failed to open volume hash data file: %{public}s: success", v119, 0x16u);
                  }

                  *__error() = v53;
                }
              }

              else
              {
                v85 = sub_10004B524(v76, __b);
                if (v85)
                {
                  v85 = *__error();
                  if (v85)
                  {
                    v45 = *(v88 + 16);
                    if (!v45)
                    {
                      v45 = "[anonymous]";
                    }

                    v44 = *__error();
                    v43 = *(v88 + 32);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      sub_100009DCC(v116, v45, v127, v85);
                      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}s: failed to read volume hash data file: %{public}s: %{darwin.errno}d", v116, 0x1Cu);
                    }

                    *__error() = v44;
                  }

                  else
                  {
                    v48 = *(v88 + 16);
                    if (!v48)
                    {
                      v48 = "[anonymous]";
                    }

                    v47 = *__error();
                    v46 = *(v88 + 32);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100009D7C(v117, v48, v127);
                      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}s: failed to read volume hash data file: %{public}s: success", v117, 0x16u);
                    }

                    *__error() = v47;
                  }
                }

                else
                {
                  v94 = 1;
                  v93 = 1024;
                  v42 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
                  v105 = "known-constant allocation";
                  v104 = v42;
                  v103 = 1024;
                  if (!v42)
                  {
                    v102 = 0;
                    memset(&v132[40], 0, 0x50uLL);
                    v100 = 0;
                    v99 = 3;
                    v98 = &_os_log_default;
                    v97 = OS_LOG_TYPE_ERROR;
                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      v99 &= ~1u;
                    }

                    if (v99)
                    {
                      v10 = v105;
                      v11 = v103;
                      v4 = __error();
                      v5 = strerror(*v4);
                      sub_1000031B0(v132, v10, v11, v5);
                      v96 = _os_log_send_and_compose_impl();
                      v100 = v96;
                    }

                    v95 = v100;
                    v101 = v100;
                    _os_crash_msg();
                    __break(1u);
                    JUMPOUT(0x10000863CLL);
                  }

                  sub_10004C358(v73, 0, j__free, v42, 1024);
                  v84 = sub_10004E124(v86, "0", __b[0], __b[1], 0, 0, v73, &v73[1]);
                  if (v84 == 100)
                  {
                    v75 = open(v126, 513, 438);
                    v91 = v75;
                    if (v75 < 0)
                    {
                      v85 = *__error();
                      if (v85)
                      {
                        v35 = *(v88 + 16);
                        if (!v35)
                        {
                          v35 = "[anonymous]";
                        }

                        v34 = *__error();
                        v33 = *(v88 + 32);
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                        {
                          sub_100009614(v113, v35, v85);
                          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}s: failed to create volume root hash: %{darwin.errno}d", v113, 0x12u);
                        }

                        *__error() = v34;
                      }

                      else
                      {
                        v38 = *(v88 + 16);
                        if (!v38)
                        {
                          v38 = "[anonymous]";
                        }

                        v37 = *__error();
                        v36 = *(v88 + 32);
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                        {
                          sub_1000095D4(v114, v38);
                          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%{public}s: failed to create volume root hash: success", v114, 0xCu);
                        }

                        *__error() = v37;
                      }
                    }

                    else
                    {
                      v85 = sub_10004B8CC(v75, v73);
                      if (v85)
                      {
                        v32 = *(v88 + 16);
                        if (!v32)
                        {
                          v32 = "[anonymous]";
                        }

                        v31 = *__error();
                        v30 = *(v88 + 32);
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                        {
                          sub_100009614(v112, v32, v85);
                          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s: failed to write volume root hash: %{darwin.errno}d", v112, 0x12u);
                        }

                        *__error() = v31;
                      }

                      else
                      {
                        close(v75);
                        v75 = open(v126, 256);
                        v90 = v75;
                        if (v75 < 0)
                        {
                          v85 = *__error();
                          if (v85)
                          {
                            v26 = *(v88 + 16);
                            if (!v26)
                            {
                              v26 = "[anonymous]";
                            }

                            v25 = *__error();
                            v24 = *(v88 + 32);
                            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                            {
                              sub_100009614(v110, v26, v85);
                              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: failed to open volume root hash: %{darwin.errno}d", v110, 0x12u);
                            }

                            *__error() = v25;
                          }

                          else
                          {
                            v29 = *(v88 + 16);
                            if (!v29)
                            {
                              v29 = "[anonymous]";
                            }

                            v28 = *__error();
                            v27 = *(v88 + 32);
                            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                            {
                              sub_1000095D4(v111, v29);
                              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s: failed to open volume root hash: success", v111, 0xCu);
                            }

                            *__error() = v28;
                          }
                        }

                        else
                        {
                          v77 = open(v128, 256);
                          v89 = v77;
                          if (v77 < 0)
                          {
                            v85 = *__error();
                            if (v85)
                            {
                              v20 = *(v88 + 16);
                              if (!v20)
                              {
                                v20 = "[anonymous]";
                              }

                              v19 = *__error();
                              v18 = *(v88 + 32);
                              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                              {
                                sub_100009614(v108, v20, v85);
                                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: failed to open sealed dmg: %{darwin.errno}d", v108, 0x12u);
                              }

                              *__error() = v19;
                            }

                            else
                            {
                              v23 = *(v88 + 16);
                              if (!v23)
                              {
                                v23 = "[anonymous]";
                              }

                              v22 = *__error();
                              v21 = *(v88 + 32);
                              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                              {
                                sub_1000095D4(v109, v23);
                                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: failed to open sealed dmg: success", v109, 0xCu);
                              }

                              *__error() = v22;
                            }
                          }

                          else
                          {
                            v82 = cryptex_asset_new();
                            if (v82)
                            {
                              v81 = cryptex_asset_new();
                              if (v81)
                              {
                                v6 = *(v88 + 48);
                                cryptex_core_set_asset();
                                v7 = *(v88 + 48);
                                cryptex_core_set_asset();
                              }

                              else
                              {
                                v85 = 12;
                                v14 = *(v88 + 16);
                                if (!v14)
                                {
                                  v14 = "[anonymous]";
                                }

                                v13 = *__error();
                                v12 = *(v88 + 32);
                                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                                {
                                  sub_100009614(v106, v14, v85);
                                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: failed to create cryptex asset for volume root hash: %{darwin.errno}d", v106, 0x12u);
                                }

                                *__error() = v13;
                              }
                            }

                            else
                            {
                              v85 = 12;
                              v17 = *(v88 + 16);
                              if (!v17)
                              {
                                v17 = "[anonymous]";
                              }

                              v16 = *__error();
                              v15 = *(v88 + 32);
                              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                              {
                                sub_100009614(v107, v17, v85);
                                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: failed to create cryptex asset for sealed dmg: %{darwin.errno}d", v107, 0x12u);
                              }

                              *__error() = v16;
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    switch(v84)
                    {
                      case 'e':
                        v85 = 22;
                        break;
                      case 'f':
                        v85 = 12;
                        break;
                      case 'g':
                        v85 = 104;
                        break;
                      case 'h':
                        v85 = 14;
                        break;
                      case 'i':
                        v85 = 78;
                        break;
                      default:
                        v85 = 104;
                        break;
                    }

                    v41 = *(v88 + 16);
                    if (!v41)
                    {
                      v41 = "[anonymous]";
                    }

                    v40 = *__error();
                    v39 = *(v88 + 32);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      sub_100009E38(v115, v41, v84, v85);
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s: failed to wrap volume hash as im4p. Img4 error: %d: %{darwin.errno}d", v115, 0x18u);
                    }

                    *__error() = v40;
                  }
                }
              }
            }
          }
        }

        else
        {
          v85 = 2;
          v63 = *(v88 + 16);
          if (!v63)
          {
            v63 = "[anonymous]";
          }

          v62 = *__error();
          v61 = *(v88 + 32);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_100009614(v122, v63, v85);
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}s: failed to remove current cryptex dmg asset: %{darwin.errno}d", v122, 0x12u);
          }

          *__error() = v62;
        }
      }
    }
  }

  else
  {
    v85 = 22;
    v72 = *(v88 + 16);
    if (!v72)
    {
      v72 = "[anonymous]";
    }

    v71 = *__error();
    v70 = *(v88 + 32);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v125, v72, v85);
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%{public}s: Sealing requires a Cryptex-formatted cryptex.: %{darwin.errno}d", v125, 0x12u);
    }

    *__error() = v71;
  }

  cryptex_asset_destroy();
  v83 = 0;
  v9 = v85;
  sub_1000038DC(&v75);
  sub_1000038DC(&v76);
  sub_1000038DC(&v77);
  sub_1000038DC(&v79);
  return v9;
}

uint64_t sub_1000095D4(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100009614(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100009668(uint64_t a1, const char *a2, const char *a3, NSObject *a4, char a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = -1;
  v21 = -1;
  memset(&__b, 0, sizeof(__b));
  v35[0] = "-S";
  v35[1] = v25;
  v35[2] = "-i";
  v35[3] = v27;
  v35[4] = "-o";
  v35[5] = v26;
  v22 = sub_100020044(aBinZshSetEIfCr, 0x1207uLL, v35, 6uLL, &v21);
  if (v22)
  {
    v17 = *__error();
    v16 = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v33, v26, v22);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "sealing %s: %{darwin.errno}d", v33, 0x12u);
    }

    *__error() = v17;
  }

  else
  {
    v19 = *__error();
    oslog = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100003120(v34, v26);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "sealing %s [no error]", v34, 0xCu);
    }

    *__error() = v19;
  }

  if (v21)
  {
    v22 = -1;
    v15 = *__error();
    v14 = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100009EF8(v32, v21, v22);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "sealing script exit status: %d: %{darwin.errno}d", v32, 0xEu);
    }

    *__error() = v15;
  }

  else if (stat(v26, &__b))
  {
    v22 = *__error();
    if (v22)
    {
      v11 = *__error();
      v10 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100009EA4(v30, v26, v22);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "unable to stat %s: %{darwin.errno}d", v30, 0x12u);
      }

      *__error() = v11;
    }

    else
    {
      v13 = *__error();
      v12 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v31, v26);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "unable to stat %s [no error]", v31, 0xCu);
      }

      *__error() = v13;
    }
  }

  else if (stat(v25, &__b))
  {
    v22 = *__error();
    if (v22)
    {
      v7 = *__error();
      v6 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100009EA4(v28, v25, v22);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unable to stat %s: %{darwin.errno}d", v28, 0x12u);
      }

      *__error() = v7;
    }

    else
    {
      v9 = *__error();
      v8 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v29, v25);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "unable to stat %s [no error]", v29, 0xCu);
      }

      *__error() = v9;
    }
  }

  return v22;
}

uint64_t sub_100009D7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 34;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100009DCC(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 34;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100009E38(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_100009EA4(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100009EF8(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_100009F44(unsigned int *a1, CFTypeRef *a2)
{
  v42 = a1;
  v41 = a2;
  v40 = -1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  Data = 0;
  v31 = 5;
  v30 = -536870212;
  MatchingService = 0;
  connect = 0;
  memset(__b, 0, sizeof(__b));
  __b[0] = 0x1BEEFFEEDLL;
  outputStruct = 0;
  outputStructCnt = 4;
  bzero(v70, 0x400uLL);
  v39 = sub_100018434();
  sub_1000173C8(v39, "CFMutableDictionary");
  if (*(v42 + 2))
  {
    v37 = sub_100018314(*(v42 + 2));
  }

  else
  {
    v38 = CFUUIDCreate(0);
    sub_1000173C8(v38, "CFUUID");
    v37 = CFUUIDCreateString(0, v38);
    sub_1000173C8(v37, "CFString");
  }

  CFDictionarySetValue(v39, @"hdik-unique-identifier", v37);
  CFDictionarySetValue(v39, @"autodiskmount", kCFBooleanFalse);
  if ((v42[8] & 1) == 0)
  {
    CFDictionarySetValue(v39, @"write-protected", kCFBooleanTrue);
LABEL_13:
    v4 = *v42;
    v40 = realpath_np();
    if (v40)
    {
      v21 = *__error();
      v20 = *(v42 + 261);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v66, v40);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "realpath_np hdi_dmgfd: %{darwin.errno}d", v66, 8u);
      }

      *__error() = v21;
    }

    else
    {
      v5 = strlen(v70);
      v35 = CFDataCreate(0, v70, v5);
      sub_1000173C8(v35, "CFData");
      CFDictionarySetValue(v39, @"image-path", v35);
      v36 = sub_10001810C(*v42);
      sub_1000173C8(v36, "CFNumber");
      CFDictionarySetValue(v39, @"image-fd", v36);
      v19 = *__error();
      v18 = *(v42 + 261);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10000ACC8(v65, v39);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "attach args = %@", v65, 0xCu);
      }

      *__error() = v19;
      Data = CFPropertyListCreateData(0, v39, kCFPropertyListXMLFormat_v1_0, 0, 0);
      sub_1000173C8(Data, "CFData");
      BytePtr = CFDataGetBytePtr(Data);
      v34 = BytePtr;
      Length = CFDataGetLength(Data);
      if (Length < 0)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000A5B8);
      }

      v33 = Length;
      __b[1] = v34;
      __b[2] = Length;
      v6 = IOServiceMatching("IOHDIXController");
      MatchingService = IOServiceGetMatchingService(0, v6);
      if (MatchingService)
      {
        v30 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
        if (v30)
        {
          v15 = *__error();
          v14 = *(v42 + 261);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000013C8(v63, v31);
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "IOServiceOpen: %{mach.errno}x", v63, 8u);
          }

          *__error() = v15;
          v40 = 61;
        }

        else
        {
          v31 = IOConnectCallStructMethod(connect, 0, __b, 0x100uLL, &outputStruct, &outputStructCnt);
          if (v31)
          {
            v40 = 83;
            v13 = *__error();
            v12 = *(v42 + 261);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_1000013C8(v62, v31);
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "kIOHDIXControllerCreateDriveMethod: %{mach.errno}x", v62, 8u);
            }

            *__error() = v13;
          }

          else
          {
            if (outputStructCnt != 4)
            {
              memset(&v61[32], 0, 0x50uLL);
              os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              sub_10000AD08(v61, outputStructCnt, 4);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x10000A9A4);
            }

            v11 = *__error();
            v10 = *(v42 + 261);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              sub_1000013C8(v60, outputStruct);
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "drive number: %d", v60, 8u);
            }

            *__error() = v11;
            *v41 = CFRetain(v37);
            v40 = 0;
          }
        }
      }

      else
      {
        v17 = *__error();
        oslog = *(v42 + 261);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100003120(v64, "IOHDIXController");
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "could not find %s", v64, 0xCu);
        }

        *__error() = v17;
        v40 = 78;
      }
    }

    goto LABEL_38;
  }

  bzero(__s, 0x400uLL);
  v2 = **(v42 + 1);
  v40 = realpath_np();
  if (!v40)
  {
    __snprintf_chk(__s, 0x400uLL, 0, 0x400uLL, "%s/%s", __s, "shadow");
    v23 = *__error();
    v22 = *(v42 + 261);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100003120(v67, __s);
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "shdwpath = %s", v67, 0xCu);
    }

    *__error() = v23;
    v3 = strlen(__s);
    v35 = CFDataCreate(0, __s, v3);
    sub_1000173C8(v35, "CFData");
    CFDictionarySetValue(v39, @"shadow-path", v35);
    goto LABEL_13;
  }

  v25 = *__error();
  v24 = *(v42 + 261);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1000013C8(v68, v40);
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "realpath_np shdwfd: %{darwin.errno}d", v68, 8u);
  }

  *__error() = v25;
LABEL_38:
  v54 = connect;
  v53 = 5;
  if (connect)
  {
    v53 = IOServiceClose(v54);
    if (v53)
    {
      v52 = 0;
      memset(&v72[8], 0, 0x50uLL);
      v50 = 0;
      v49 = 3;
      v48 = &_os_log_default;
      v47 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v49 &= ~1u;
      }

      if (v49)
      {
        sub_1000013C8(v72, v53);
        v46 = _os_log_send_and_compose_impl();
        v50 = v46;
      }

      v45 = v50;
      v51 = v50;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000ABD0);
    }
  }

  v56 = MatchingService;
  v57 = MatchingService;
  v58 = MatchingService;
  v55 = MatchingService;
  v59 = MatchingService;
  v9 = 0;
  if (MatchingService)
  {
    v9 = v59 != -1;
  }

  if (v9)
  {
    mach_right_send_release();
  }

  v8 = v40;
  sub_100006B40(&Data);
  sub_100006B40(&v35);
  sub_100006B40(&v36);
  sub_100006B40(&v37);
  sub_100006B40(&v38);
  sub_100006B40(&v39);
  return v8;
}

uint64_t sub_10000ACC8(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_10000AD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_10000AD54(uint64_t a1, const void *a2, const char **a3, char *a4, char *a5)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = -1;
  v28 = 5;
  notification = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v29 = IONotificationPortCreate(0);
  if (!v29)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x10000ADE8);
  }

  notifyPort = v29;
  v5 = IOServiceMatching("IOMedia");
  v28 = IOServiceAddMatchingNotification(notifyPort, "IOServiceMatched", v5, 0, 0, &notification);
  if (v28)
  {
    v23 = *__error();
    oslog = *(v35 + 2088);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v40, v28);
      _os_log_impl(&_mh_execute_header, oslog, type, "IOServiceAddMatchingNotification: %{mach.errno}x", v40, 8u);
    }

    *__error() = v23;
  }

  else
  {
    v20 = *__error();
    v19 = *(v35 + 2088);
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10000ACC8(v39, v34);
      _os_log_impl(&_mh_execute_header, v19, v18, "looking for drive: %@", v39, 0xCu);
    }

    *__error() = v20;
    v30 = 2;
    while (1)
    {
      v26 = IOIteratorNext(notification);
      if (!v26)
      {
        break;
      }

      entry = v26;
      cf2 = 0;
      memset(__b, 0, sizeof(__b));
      cf2 = IORegistryEntrySearchCFProperty(v26, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (cf2)
      {
        v14 = *__error();
        v13 = *(v35 + 2088);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10000ACC8(v37, cf2);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "found property: %@", v37, 0xCu);
        }

        *__error() = v14;
        if (CFEqual(v34, cf2))
        {
          if (IOObjectConformsTo(entry, "AppleAPFSVolume") || IOObjectConformsTo(entry, "AppleAPFSMedia") || IOObjectConformsTo(entry, "AppleAPFSContainerScheme") || IOObjectConformsTo(entry, "AppleAPFSContainer"))
          {
            v15 = 9;
          }

          else
          {
            v30 = sub_10000B574(*(v35 + 2088), v26, v33, &v25, &v24);
            if (v30)
            {
              v10 = *__error();
              v9 = *(v35 + 2088);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                sub_1000013C8(v36, v30);
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to get device nodes: %{darwin.errno}d", v36, 8u);
              }

              *__error() = v10;
              v15 = 0;
            }

            else
            {
              v11 = sub_100018348(v25, __b, 0xFFuLL);
              if (!v11)
              {
                _os_crash();
                __break(1u);
                JUMPOUT(0x10000B1A4);
              }

              __snprintf_chk(v32, 0x400uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s", "/dev/", v11);
              v12 = sub_100018348(v24, __b, 0xFFuLL);
              if (!v12)
              {
                _os_crash();
                __break(1u);
                JUMPOUT(0x10000B21CLL);
              }

              __snprintf_chk(v31, 0x400uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s", "/dev/", v12);
              v30 = 0;
              v15 = 10;
            }
          }
        }

        else
        {
          v15 = 9;
        }
      }

      else
      {
        v15 = 9;
      }

      sub_100006B40(&cf2);
      sub_10000B3D8(&entry);
      if (v15)
      {
        if (v15 != 9)
        {
          break;
        }
      }
    }
  }

  if (v29)
  {
    IONotificationPortDestroy(v29);
  }

  v7 = v30;
  sub_100006B40(&v24);
  sub_100006B40(&v25);
  return v7;
}

io_object_t *sub_10000B3D8(io_object_t *result)
{
  if (*result)
  {
    result = IOObjectRelease(*result);
    v1 = result;
    if (result)
    {
      memset(&v2[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v2, v1);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000B540);
    }
  }

  return result;
}

uint64_t sub_10000B574(NSObject *a1, io_object_t a2, const char **a3, uint64_t *a4, uint64_t *a5)
{
  v65 = a1;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  v61 = a5;
  v60 = -1;
  ParentEntry = 5;
  v83 = a2;
  v82 = IOObjectRetain(a2);
  if (v82)
  {
    v81 = 0;
    memset(&v94[8], 0, 0x50uLL);
    v79 = 0;
    v78 = 3;
    v77 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v78 &= ~1u;
    }

    if (v78)
    {
      sub_1000013C8(v94, v82);
      v79 = _os_log_send_and_compose_impl();
    }

    v75 = v79;
    v80 = v79;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000B724);
  }

  parent = v83;
  v74 = v83;
  v73 = IOObjectRetain(v83);
  if (v73)
  {
    v72 = 0;
    memset(&v93[16], 0, 0x50uLL);
    v70 = 0;
    v69 = 3;
    v68 = &_os_log_default;
    v67 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v69 &= ~1u;
    }

    if (v69)
    {
      sub_1000013C8(v93, v73);
      v70 = _os_log_send_and_compose_impl();
    }

    v66 = v70;
    v71 = v70;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000B878);
  }

  v57 = v74;
  v56 = parent;
  v55 = 0;
  CFProperty = 0;
  v53 = 0;
  v52 = "hfs";
  if (!sub_100037760(&v57, "AppleAPFSContainerScheme") && !sub_100037760(&v57, "AppleAPFSMedia") && !sub_100037760(&v57, "AppleAPFSContainer") && !sub_100037760(&v57, "AppleAPFSVolume"))
  {
    v52 = "apfs";
    v56 = v57;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v56, @"BSD Name", kCFAllocatorDefault, 0);
  v51 = 0;
  if (CFProperty)
  {
    v89 = CFProperty;
    v88 = &CFStringGetTypeID;
    v21 = CFGetTypeID(CFProperty);
    if (v21 == (v88)())
    {
      v51 = CFProperty;
    }
  }

  v50 = v51;
  v53 = v51;
  if (!v51)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x10000B9E4);
  }

  v49 = *__error();
  v48 = v65;
  v47 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ACC8(v92, v53);
    _os_log_impl(&_mh_execute_header, v48, v47, "subdevice node = %@", v92, 0xCu);
  }

  *__error() = v49;
  do
  {
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v45 = IORegistryEntryCreateCFProperty(parent, @"Whole", kCFAllocatorDefault, 0);
    v43 = 0;
    if (v45)
    {
      v87 = v45;
      v86 = &CFBooleanGetTypeID;
      v20 = CFGetTypeID(v45);
      if (v20 == (v86)())
      {
        v43 = v45;
      }
    }

    v42 = v43;
    v44 = v43;
    if (v43 == kCFBooleanTrue)
    {
      v41 = 0;
      v40 = *__error();
      v39 = v65;
      v38 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v18 = v39;
        v19 = v38;
        sub_10000DC54(v37);
        _os_log_impl(&_mh_execute_header, v18, v19, "found whole disk node", v37, 2u);
      }

      v17 = v40;
      *__error() = v17;
      v41 = IORegistryEntryCreateCFProperty(parent, @"BSD Name", kCFAllocatorDefault, 0);
      v36 = 0;
      if (v41)
      {
        v85 = v41;
        v84 = &CFStringGetTypeID;
        v16 = CFGetTypeID(v41);
        if (v16 == (v84)())
        {
          v36 = v41;
        }
      }

      v35 = v36;
      v55 = v36;
      if (!v62)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000BCC8);
      }

      v34 = *__error();
      oslog = v65;
      v32 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v14 = oslog;
        v15 = v32;
        sub_10000ACC8(v91, v55);
        _os_log_impl(&_mh_execute_header, v14, v15, "devnode = %@", v91, 0xCu);
      }

      v13 = v34;
      *__error() = v13;
      v46 = parent;
      v60 = 0;
    }

    else
    {
      v31 = *__error();
      v30 = v65;
      v29 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v11 = v30;
        v12 = v29;
        sub_10000DC54(v28);
        _os_log_impl(&_mh_execute_header, v11, v12, "not whole disk node", v28, 2u);
      }

      v10 = v31;
      *__error() = v10;
      v60 = 35;
      v46 = parent;
      ParentEntry = IORegistryEntryGetParentEntry(parent, "IOService", &parent);
      if (ParentEntry == -536870208)
      {
        v27 = *__error();
        v26 = v65;
        v25 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v8 = v26;
          v9 = v25;
          sub_10000DC54(v24);
          _os_log_impl(&_mh_execute_header, v8, v9, "found root node, stopping", v24, 2u);
        }

        v7 = v27;
        *__error() = v7;
        v60 = 2;
      }

      else if (ParentEntry)
      {
        v23 = *__error();
        v22 = v65;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1000013C8(v90, ParentEntry);
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentEntry: %{mach.errno}x", v90, 8u);
        }

        *__error() = v23;
        v60 = 83;
      }
    }

    sub_100006B40(&v45);
    sub_10000B3D8(&v46);
  }

  while (v60 == 35);
  if (!v60)
  {
    if (v63)
    {
      *v63 = v52;
    }

    *v62 = v55;
    *v61 = v53;
  }

  v6 = v60;
  sub_10000B3D8(&v57);
  return v6;
}

uint64_t sub_10000C09C(int *a1, int a2, unsigned int *a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = -1;
  v23 = *a1;
  v22 = -1;
  v21 = os_log_create("com.apple.libcryptex", "hdi");
  if (!*(v25 + 261))
  {
    *(v25 + 261) = v21;
  }

  v29 = *v25;
  if ((v29 & 0x80000000) == 0)
  {
    v24 = sub_10000C930(v23, v26, v25);
    if (v24)
    {
      v20 = *__error();
      v19 = *(v25 + 261);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v37, v24);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "hdi_mount_slow: %{darwin.errno}d", v37, 8u);
      }

      *__error() = v20;
      goto LABEL_33;
    }

    v18 = *__error();
    v17 = *(v25 + 261);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100003120(v36, v25 + 1057);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "attached as: %s", v36, 0xCu);
    }

    *__error() = v18;
    v22 = v25[1];
  }

  if (!*(v25 + 3))
  {
    v24 = 22;
    v16 = *__error();
    v15 = *(v25 + 261);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v35, v24);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "FS type not specified: %{darwin.errno}d", v35, 8u);
    }

    *__error() = v16;
    goto LABEL_33;
  }

  if (!strcmp(*(v25 + 3), "hfs"))
  {
    v24 = sub_10000CC58(v23, v26, v25);
    if (v24)
    {
      v14 = *__error();
      oslog = *(v25 + 261);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v34, v24);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "mount hfs failed: %{darwin.errno}d", v34, 8u);
      }

      *__error() = v14;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (!strcmp(*(v25 + 3), "apfs"))
  {
    v24 = sub_10000D680(v23, v26, v25);
    if (!v24)
    {
LABEL_30:
      if (close(v23) == -1)
      {
        memset(&v31[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v3 = __error();
        sub_1000013C8(v31, *v3);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10000C77CLL);
      }

      *v27 = -1;
      v24 = 0;
      goto LABEL_33;
    }

    v12 = *__error();
    v11 = *(v25 + 261);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v33, v24);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "mount apfs failed: %{darwin.errno}d", v33, 8u);
    }

    *__error() = v12;
  }

  else
  {
    v24 = 22;
    v10 = *__error();
    v9 = *(v25 + 261);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v32, *(v25 + 3), v24);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid FS type: %s: %{darwin.errno}d", v32, 0x12u);
    }

    *__error() = v10;
  }

LABEL_33:
  if (v24)
  {
    v28 = v22;
    if ((v22 & 0x80000000) == 0)
    {
      if (ioctl(v22, 0x20006415uLL))
      {
        v8 = *__error();
        v7 = *(v25 + 261);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v4 = __error();
          sub_1000013C8(v30, *v4);
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to clean up device: %{darwin.errno}d", v30, 8u);
        }

        *__error() = v8;
      }

      *(v25 + 33) = 0;
      *(v25 + 1057) = 0;
      v25[1] = -1;
    }
  }

  if (*(v25 + 261) == v21)
  {
    *(v25 + 261) = 0;
  }

  v6 = v24;
  sub_1000030D0(&v21);
  return v6;
}

uint64_t sub_10000C930(int a1, int a2, unsigned int *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v13 = 0;
  bzero(v22, 0x400uLL);
  v14 = sub_100009F44(v15, &v13);
  if (v14)
  {
    v12 = *__error();
    oslog = *(v15 + 261);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v21, v14);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "attach failed: %{darwin.errno}d", v21, 8u);
    }

    *__error() = v12;
  }

  else
  {
    v14 = sub_10000AD54(v15, v13, v15 + 3, v22, v15 + 1057);
    if (v14)
    {
      v10 = *__error();
      v9 = *(v15 + 261);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v20, v14);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "could not find attached media: %{darwin.errno}d", v20, 8u);
      }

      *__error() = v10;
    }

    else
    {
      v3 = open(v22, 0);
      v15[1] = v3;
      v18 = v15[1];
      if ((v18 & 0x80000000) != 0)
      {
        v8 = *__error();
        v7 = *(v15 + 261);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v4 = __error();
          sub_1000013C8(v19, *v4);
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "open: %{darwin.errno}d", v19, 8u);
        }

        *__error() = v8;
        v14 = *__error();
      }

      else
      {
        __strlcpy_chk();
        v14 = 0;
      }
    }
  }

  v6 = v14;
  sub_100006B40(&v13);
  return v6;
}

uint64_t sub_10000CC58(int a1, int a2, uint64_t a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = -1;
  v27 = -1;
  bzero(v51, 0x400uLL);
  memset(__b, 0, sizeof(__b));
  __b[0] = v29 + 1057;
  LODWORD(__b[1]) = getuid();
  HIDWORD(__b[1]) = getgid();
  LOWORD(__b[2]) = 511;
  HIDWORD(__b[2]) = 0;
  __b[3] = 0;
  __b[4] = 4;
  __b[5] = 0;
  v30 |= 0x100001u;
  v25 = *__error();
  v24 = *(v29 + 2088);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_100003120(v50, v29 + 1057);
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "mounting device = %s", v50, 0xCu);
  }

  *__error() = v25;
  if (os_log_type_enabled(*(v29 + 2088), OS_LOG_TYPE_DEBUG))
  {
    v28 = realpath_np();
    if (!v28)
    {
      v23 = *__error();
      oslog = *(v29 + 2088);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v49, v51);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "mount point = %s", v49, 0xCu);
      }

      *__error() = v23;
    }
  }

  v27 = gettimeofday(0, &__b[3]);
  if (v27 == -1)
  {
    memset(&v48[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v3 = *__error();
    sub_1000013C8(v48, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000CFE0);
  }

  v28 = sub_10000DC70(v29, (v29 + 1057), &__b[2] + 1);
  if (v28)
  {
    v21 = *__error();
    v20 = *(v29 + 2088);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v47, v28);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "could not get encoding: %{darwin.errno}d", v47, 8u);
    }

    *__error() = v21;
  }

  else
  {
    v19 = *__error();
    v18 = *(v29 + 2088);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E0C4(v46, *(v29 + 24), v31, v30);
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "mount args: fs = %s, fd = %d, flags = %#x", v46, 0x18u);
    }

    *__error() = v19;
    v44 = *(v29 + 2088);
    v43 = "mntfd";
    v42 = v31;
    v41 = 0;
    bzero(v54, 0x400uLL);
    memset(&v40, 0, sizeof(v40));
    v39 = -1;
    v38 = 0;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v39 = fstat(v42, &v40);
      if (v39 == -1)
      {
        v37 = *__error();
        v36 = v44;
        v35 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v14 = v36;
          v15 = v35;
          v12 = v43;
          v13 = v42;
          v4 = *__error();
          sub_10000E0C4(v53, v12, v13, v4);
          _os_log_impl(&_mh_execute_header, v14, v15, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v53, 0x18u);
        }

        v11 = v37;
        *__error() = v11;
      }

      else
      {
        v39 = fcntl(v42, 50, v54);
        if (v39)
        {
          v5 = __error();
          v6 = strerror(*v5);
          __snprintf_chk(v54, 0x400uLL, 0, 0x400uLL, "[%s]", v6);
        }

        switch(v40.st_mode & 0xF000)
        {
          case 24576:
            v41 = "S_IFBLK";
            break;
          case 8192:
            v41 = "S_IFCHR";
            break;
          case 16384:
            v41 = "S_IFDIR";
            break;
          case 4096:
            v41 = "S_IFIFO";
            break;
          case 32768:
            v41 = "S_IFREG";
            break;
          case 40960:
            v41 = "S_IFLNK";
            break;
          case 49152:
            v41 = "S_IFSOCK";
            break;
          default:
            v41 = "[unknown]";
            break;
        }

        v38 = os_flagset_copy_string();
        v34 = *__error();
        v33 = v44;
        v32 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v9 = v33;
          v10 = v32;
          sub_10000EBF8(v52, v43, v42, v41, v40.st_size, v38, v54);
          _os_log_impl(&_mh_execute_header, v9, v10, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v52, 0x3Au);
        }

        v8 = v34;
        *__error() = v8;
        free(v38);
      }
    }

    v27 = fmount("hfs", v31, v30, __b);
    if (v27)
    {
      v28 = *__error();
      v17 = *__error();
      v16 = *(v29 + 2088);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v45, v28);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", v45, 8u);
      }

      *__error() = v17;
    }

    else
    {
      return 0;
    }
  }

  return v28;
}

uint64_t sub_10000D680(int a1, int a2, uint64_t a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = -1;
  bzero(&v30, 0x14CuLL);
  v19 = *(v22 + 2108);
  v18 = *(v22 + 2100);
  v17 = *(v22 + 2104);
  v16 = *(v22 + 2112);
  memset(__b, 0, sizeof(__b));
  memset(v14, 0, sizeof(v14));
  v23 |= 0x100000u;
  if ((*(v22 + 32) & 1) == 0)
  {
    v23 |= 1u;
  }

  v30 = v22 + 1057;
  v39 = getuid();
  v40 = getgid();
  v32 = 1;
  v31 = v23;
  if (*(v22 + 2096))
  {
    v21 = sub_10004B524(v19, __b);
    if (v21)
    {
      v13 = *__error();
      oslog = *(v22 + 2088);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v29, v21);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to read im4m.: %{darwin.errno}d", v29, 8u);
      }

      *__error() = v13;
      goto LABEL_21;
    }

    v21 = sub_10004B524(v18, v14);
    if (v21)
    {
      v11 = *__error();
      v10 = *(v22 + 2088);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000013C8(v28, v21);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to read root volume hash.: %{darwin.errno}d", v28, 8u);
      }

      *__error() = v11;
      goto LABEL_21;
    }

    v9 = *__error();
    v8 = *(v22 + 2088);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100003098(v27, __b[1]);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "im4m len: %lu", v27, 0xCu);
    }

    *__error() = v9;
    v7 = *__error();
    v6 = *(v22 + 2088);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100003098(v26, v14[1]);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "im4p len: %lu", v26, 0xCu);
    }

    *__error() = v7;
    v32 = 8;
    v37 = v17;
    v38 = v16;
    v35 = __b[0];
    v36 = __b[1];
    v33 = v14[0];
    v34 = v14[1];
  }

  v20 = fmount("apfs", v24, v23, &v30);
  if (v20)
  {
    v21 = *__error();
    v5 = *__error();
    v4 = *(v22 + 2088);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v25, v21);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "fmount: %{darwin.errno}d", v25, 8u);
    }

    *__error() = v5;
  }

LABEL_21:
  sub_10004C66C(__b);
  sub_10004C66C(v14);
  return v21;
}

uint64_t sub_10000DC04(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

_BYTE *sub_10000DC54(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_10000DC70(uint64_t a1, char *a2, _DWORD *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  bzero(__buf, 0x200uLL);
  v14 = 0;
  v13 = 0;
  v12 = -1;
  __fd = open(v17, 4);
  if (__fd < 0)
  {
    v15 = *__error();
  }

  else
  {
    v14 = pread(__fd, __buf, 0x200uLL, 1024);
    if ((v14 & 0x8000000000000000) != 0 || (v19 = v14, v14 < 0xA2))
    {
      v15 = 96;
    }

    else
    {
      v13 = __buf;
      __buf[0] = sub_10000E130(__buf[0]);
      v24 = sub_10000E130(v24);
      v23 = sub_10000E154(v23);
      if (__buf[0] == 18475 || *v13 == 18520)
      {
        if ((*(v13 + 27) & 0xFFFFFF00) == 0x656E6300)
        {
          v5 = *(v13 + 108);
        }

        else
        {
          v5 = -1;
        }

        v12 = v5;
        if (v5 == -1)
        {
          v12 = sub_10000E174();
          if (!v12 || v12 == -1)
          {
            v12 = sub_10000E4F4(v18);
          }
        }

        v15 = 79;
        for (i = 0; i < 0x26; ++i)
        {
          if (*&aArabic[24 * i + 16] == v12)
          {
            v15 = 0;
            break;
          }
        }

        if (v15 == 79)
        {
          v7 = *__error();
          v6 = *(v18 + 2088);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1000013C8(v20, v12);
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unsupported encoding: %u", v20, 8u);
          }

          *__error() = v7;
        }

        else
        {
          *v16 = v12;
        }
      }

      else
      {
        v9 = *__error();
        oslog = *(v18 + 2088);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_100009EF8(v21, *v13, v13[62]);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "filesystem unsupported or corrupt: drSigWord = %#hx, drEmbedSigWord = %#hx", v21, 0xEu);
        }

        *__error() = v9;
        v15 = 92;
      }
    }
  }

  v4 = v15;
  sub_1000038DC(&__fd);
  return v4;
}

uint64_t sub_10000E0C4(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_10000E174()
{
  *v10 = 3;
  v11 = 1;
  memset(&__b, 0, sizeof(__b));
  v5 = -1;
  v4 = 4;
  v6 = getvfsbyname("hfs", &__b);
  if (v6 == -1)
  {
    memset(&v8[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v0 = __error();
    sub_1000013C8(v8, *v0);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000E310);
  }

  v10[1] = __b.vfc_typenum;
  v6 = sysctl(v10, 3u, &v5, &v4, 0, 0);
  if ((v6 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v2 = *__error();
  if (v2)
  {
    if (v2 != 45)
    {
      v3 = *__error();
      if (v3)
      {
        memset(&v7[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        sub_100003098(v7, v3);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10000E4ACLL);
      }
    }
  }

  return v5;
}

uint64_t sub_10000E4F4(uint64_t a1)
{
  v38 = a1;
  v37 = 0;
  bzero(__str, 0x400uLL);
  v35 = -1;
  v34 = -1;
  v36 = getpwuid(0);
  if (!v36)
  {
    v33 = 0;
    memset(&v43[8], 0, 0x50uLL);
    v31 = 0;
    v30 = 3;
    v29 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v30 &= ~1u;
    }

    if (v30)
    {
      v1 = __error();
      sub_1000013C8(v43, *v1);
      v31 = _os_log_send_and_compose_impl();
    }

    v27 = v31;
    v32 = v31;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10000E690);
  }

  __snprintf_chk(__str, 0x400uLL, 0, 0x400uLL, "%s/%s", v36->pw_dir, "/.CFUserTextEncoding");
  v35 = open(__str, 0);
  if ((v35 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v8 = *__error();
  if (v8)
  {
    if (v8 == 2 || v8 == 4 || v8 == 13)
    {
      goto LABEL_33;
    }

    v26 = *__error();
    if (v26)
    {
      v25 = 0;
      memset(&v42[16], 0, 0x50uLL);
      v23 = 0;
      v22 = 3;
      oslog = &_os_log_default;
      v20 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v22 &= ~1u;
      }

      if (v22)
      {
        sub_100003098(v42, v26);
        v23 = _os_log_send_and_compose_impl();
      }

      v19 = v23;
      v24 = v23;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000E890);
    }
  }

  v34 = read(v35, __str, 0x400uLL);
  if (v34)
  {
    if (v34 < 0)
    {
      v14 = *__error();
      v13 = *(v38 + 2088);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v2 = __error();
        sub_1000013C8(v41, *v2);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "error reading encoding file: %{darwin.errno}d", v41, 8u);
      }

      *__error() = v14;
    }

    else
    {
      __str[v34] = 0;
      v12 = *__error();
      v11 = *(v38 + 2088);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100003120(v40, __str);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "read encoding: %s", v40, 0xCu);
      }

      *__error() = v12;
      v37 = strtol(__str, 0, 0);
    }
  }

  else
  {
    v18 = *__error();
    v17 = *(v38 + 2088);
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      v7 = v16;
      sub_10000DC54(v15);
      _os_log_impl(&_mh_execute_header, log, v7, "encoding file empty", v15, 2u);
    }

    v5 = v18;
    *__error() = v5;
  }

LABEL_33:
  v10 = *__error();
  v9 = *(v38 + 2088);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000013C8(v39, v37);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "returning encoding: %u", v39, 8u);
  }

  *__error() = v10;
  v4 = v37;
  sub_1000038DC(&v35);
  return v4;
}

uint64_t sub_10000EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 32;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 32;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t sub_10000ECA0(uint64_t a1, int a2, char *const *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = -1;
  v16 = a3;
  v15 = -1;
  v14 = 0;
  __endptr = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1000480E0();
  while (1)
  {
    v15 = getopt_long(v19, v16, *(v20 + 32), *(v20 + 40), &v14);
    if (v15 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v21[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v21, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10000EE84);
    }

    switch(v15)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v20 + 40) + 32 * v14));
      case '?':
        errx(64, "unknown option: %s", v18[optind - 1]);
      case 'c':
        DWORD2(v12) = strtoul(optarg, &__endptr, 0);
        if (!DWORD2(v12) && __endptr == optarg)
        {
          errx(64, "Invalid nonce domain provided.");
        }

        *&v12 = img4_nonce_domain_get_from_handle();
        break;
      case 'd':
        if (!strcmp(optarg, "pdi"))
        {
          *&v12 = &_img4_nonce_domain_pdi;
        }

        else if (!strcmp(optarg, "research"))
        {
          *&v12 = &_img4_nonce_domain_cryptex;
        }

        else if (!strcmp(optarg, "diavlo"))
        {
          *&v12 = &_img4_nonce_domain_pdi;
        }

        else
        {
          if (strcmp(optarg, "ddi"))
          {
            errx(64, "invalid nonce domain: %s", optarg);
          }

          *&v12 = &_img4_nonce_domain_ddi;
        }

        break;
      case 'g':
        *&v11 = v11 | 2;
        break;
      case 'r':
        *&v11 = v11 | 1;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10000F0BCLL);
    }
  }

  v18 += optind;
  v19 -= optind;
  if ((v11 & 2) == 0)
  {
    if (v19 < 1)
    {
      errx(64, "a cryptex identifier must be provided");
    }

    sub_10004860C(0, 1uLL, "using cryptex identifier: %s", v5, v6, v7, v8, v9, SBYTE8(v11));
    *(&v11 + 1) = v18[1];
  }

  if (!v12)
  {
    errx(64, "a valid nonce domain is required, must be provided through either the domain or cryptex1-ndom argument.");
  }

  v17 = sub_10000F1B4(&v11, v3, v4, v5, v6, v7, v8, v9);
  return sysexit_np();
}

uint64_t sub_10000F1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 2) != 0)
  {
    sub_10004860C(0, 1uLL, "operating on global nonce", a4, a5, a6, a7, a8, v9);
    v10 = sub_10000F260(a1);
  }

  else
  {
    v10 = 78;
    warnx("individual cryptex nonces not yet implemented");
  }

  if (v10 == 45)
  {
    warnx("nonce management is not available on this platform");
  }

  return v10;
}

uint64_t sub_10000F260(void *a1)
{
  if (*a1)
  {
    v1 = a1[2];
    v15 = img4_nonce_domain_roll_nonce();
    if (v15)
    {
      if (v15 == 45)
      {
        warnx("nonce management not supported on this platform");
      }

      else
      {
        warnc(v15, "failed to roll nonce");
      }
    }

    else
    {
      sub_10004860C(0, 1uLL, "nonce has been rolled; new value will not be generated until next boot", v2, v3, v4, v5, v6, v14);
    }
  }

  else
  {
    memset(__str, 0, sizeof(__str));
    v7 = a1[2];
    v15 = img4_nonce_domain_copy_nonce();
    if (v15)
    {
      if (v15 == 45)
      {
        warnx("nonce management not supported on this platform");
      }

      else if (v15 == 70)
      {
        warnx("nonce has been rolled; new value will not be available until next reboot");
      }

      else
      {
        warnc(v15, "failed to copy nonce");
      }
    }

    else
    {
      sub_100049764(__str, &__str[99], *&__str[149]);
      sub_10004860C(__stdoutp, 0, "%s", v8, v9, v10, v11, v12, __str);
    }
  }

  return v15;
}

CFErrorRef sub_10000F434(int a1, int a2, NSObject *a3)
{
  v126 = a1;
  v125 = a2;
  v124 = a3;
  v123 = 0;
  v122 = -1;
  MatchingService = 0;
  v120 = 0;
  v119 = -536870212;
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  v114 = 5;
  v113 = 16;
  v112 = -1;
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  if (!a3)
  {
    v107 = os_log_create("com.apple.libcryptex", "amfi");
    v124 = v107;
  }

  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(0, v3);
  if (MatchingService)
  {
    v122 = sub_10004B524(v125, v115);
    if (v122)
    {
      v90 = 0;
      v89 = v122;
      if (v124)
      {
        v88 = 0;
        v87 = 3;
        v86 = v124;
        v85 = 16;
        if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          v87 &= ~1u;
        }

        if (v87)
        {
          sub_1000013C8(v153, v122);
          v84 = _os_log_send_and_compose_impl();
          v88 = v84;
        }

        v83 = v88;
        v90 = v88;
      }

      else
      {
        v82 = 0;
        v81 = 2;
        v80 = &_os_log_default;
        v79 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v81 &= ~1u;
        }

        if (v81)
        {
          sub_1000013C8(v152, v122);
          v78 = _os_log_send_and_compose_impl();
          v82 = v78;
        }

        v77 = v82;
        v90 = v82;
      }

      if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
      {
        v11 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
      }

      v76 = sub_1000185D8("_amfi_load_trust_cache", v11, 48, "com.apple.security.cryptex.posix", v89, 0, v90);
      sub_100002DE4(&v90);
      v123 = v76;
    }

    else
    {
      v122 = sub_10004B524(v126, v117);
      if (v122)
      {
        v75 = 0;
        v74 = v122;
        if (v124)
        {
          v73 = 0;
          v72 = 3;
          v71 = v124;
          v70 = 16;
          if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            v72 &= ~1u;
          }

          if (v72)
          {
            sub_1000013C8(v151, v122);
            v69 = _os_log_send_and_compose_impl();
            v73 = v69;
          }

          v68 = v73;
          v75 = v73;
        }

        else
        {
          v67 = 0;
          v66 = 2;
          v65 = &_os_log_default;
          v64 = 16;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v66 &= ~1u;
          }

          if (v66)
          {
            sub_1000013C8(v150, v122);
            v63 = _os_log_send_and_compose_impl();
            v67 = v63;
          }

          v62 = v67;
          v75 = v67;
        }

        if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
        {
          v10 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
        }

        else
        {
          v10 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
        }

        v61 = sub_1000185D8("_amfi_load_trust_cache", v10, 54, "com.apple.security.cryptex.posix", v74, 0, v75);
        sub_100002DE4(&v75);
        v123 = v61;
      }

      else
      {
        v119 = IOServiceOpen(MatchingService, mach_task_self_, 0, &v120);
        if (v119)
        {
          v60 = 0;
          v59 = 34;
          if (v124)
          {
            v58 = 0;
            v57 = 3;
            v56 = v124;
            v55 = 16;
            if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              v57 &= ~1u;
            }

            if (v57)
            {
              sub_1000013C8(v149, v119);
              v54 = _os_log_send_and_compose_impl();
              v58 = v54;
            }

            v53 = v58;
            v60 = v58;
          }

          else
          {
            v52 = 0;
            v51 = 2;
            v50 = &_os_log_default;
            v49 = 16;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v51 &= ~1u;
            }

            if (v51)
            {
              sub_1000013C8(v148, v119);
              v48 = _os_log_send_and_compose_impl();
              v52 = v48;
            }

            v47 = v52;
            v60 = v52;
          }

          if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
          {
            v9 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
          }

          else
          {
            v9 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
          }

          v46 = sub_1000185D8("_amfi_load_trust_cache", v9, 60, "com.apple.security.cryptex", v59, 0, v60);
          sub_100002DE4(&v60);
          v123 = v46;
        }

        else
        {
          v113 += *(&v115[0] + 1) + *(&v117[0] + 1);
          v112 = mmap(0, v113, 3, 4098, -1, 0);
          if (v112 == -1)
          {
            v122 = *__error();
            v45 = 0;
            v44 = v122;
            if (v124)
            {
              v43 = 0;
              v42 = 3;
              v41 = v124;
              v40 = 16;
              if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                v42 &= ~1u;
              }

              if (v42)
              {
                sub_1000013C8(&v147, v122);
                v39 = _os_log_send_and_compose_impl();
                v43 = v39;
              }

              v38 = v43;
              v45 = v43;
            }

            else
            {
              v37 = 0;
              v36 = 2;
              v35 = &_os_log_default;
              v34 = 16;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v36 &= ~1u;
              }

              if (v36)
              {
                sub_1000013C8(&v146, v122);
                v33 = _os_log_send_and_compose_impl();
                v37 = v33;
              }

              v32 = v37;
              v45 = v37;
            }

            if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
            {
              v8 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
            }

            else
            {
              v8 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
            }

            v31 = sub_1000185D8("_amfi_load_trust_cache", v8, 76, "com.apple.security.cryptex.posix", v44, 0, v45);
            sub_100002DE4(&v45);
            v123 = v31;
          }

          else
          {
            *v112 = *(&v115[0] + 1);
            *(v112 + 8) = *(&v117[0] + 1);
            sub_10004C358(v110, 0, sub_10004C2F8, v112, v113);
            v109 = sub_10004C5C0(v110, "rw", 0x10uLL);
            v108 = fwrite(*&v115[0], *(&v115[0] + 1), 1uLL, v109);
            v30 = fcheck_np();
            if (v30)
            {
              v29 = 0;
              memset(&v145[16], 0, 80);
              v27 = 0;
              v26 = 3;
              v25 = &_os_log_default;
              v24 = 16;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v26 &= ~1u;
              }

              if (v26)
              {
                sub_100003098(v145, v30);
                v27 = _os_log_send_and_compose_impl();
              }

              v23 = v27;
              v28 = v27;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x100010864);
            }

            v108 = fwrite(*&v117[0], *(&v117[0] + 1), 1uLL, v109);
            v22 = fcheck_np();
            if (v22)
            {
              v21 = 0;
              memset(&v144[16], 0, 80);
              v19 = 0;
              v18 = 3;
              v17 = &_os_log_default;
              v16 = 16;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v18 &= ~1u;
              }

              if (v18)
              {
                sub_100003098(v144, v22);
                v19 = _os_log_send_and_compose_impl();
              }

              v15[1] = v19;
              v20 = v19;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x1000109B8);
            }

            v114 = IOConnectCallMethod(v120, 7u, 0, 0, v112, v113, 0, 0, 0, 0);
            if (v114)
            {
              v122 = sub_1000372A8(v114);
              v15[0] = 0;
              v14 = v122;
              if (v124)
              {
                os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);
                sub_100009EF8(&v143, v114, v122);
              }

              else
              {
                os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                sub_100009EF8(&v142, v114, v122);
              }

              v15[0] = _os_log_send_and_compose_impl();
              if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
              {
                v7 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
              }

              else
              {
                v7 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
              }

              v13 = sub_1000185D8("_amfi_load_trust_cache", v7, 106, "com.apple.security.cryptex.posix", v14, 0, v15[0]);
              sub_100002DE4(v15);
              v123 = v13;
            }
          }
        }
      }
    }
  }

  else
  {
    v122 = 78;
    v105 = 0;
    v104 = 78;
    if (v124)
    {
      v103 = 0;
      v102 = 3;
      v101 = v124;
      v100 = 16;
      if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        v102 &= ~1u;
      }

      if (v102)
      {
        sub_1000013C8(v155, v122);
        v99 = _os_log_send_and_compose_impl();
        v103 = v99;
      }

      v98 = v103;
      v105 = v103;
    }

    else
    {
      v97 = 0;
      v96 = 2;
      v95 = &_os_log_default;
      v94 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v96 &= ~1u;
      }

      if (v96)
      {
        sub_1000013C8(v154, v122);
        v93 = _os_log_send_and_compose_impl();
        v97 = v93;
      }

      v92 = v97;
      v105 = v97;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47))
    {
      v12 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c", 47) + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/amfi.c";
    }

    v91 = sub_1000185D8("_amfi_load_trust_cache", v12, 42, "com.apple.security.cryptex.posix", v104, 0, v105);
    sub_100002DE4(&v105);
    v123 = v91;
  }

  if (!v119)
  {
    v136 = v120;
    v135 = 5;
    if (v120)
    {
      v135 = IOServiceClose(v136);
      if (v135)
      {
        v134 = 0;
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v132 = 0;
        v131 = 3;
        v130 = &_os_log_default;
        v129 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v131 &= ~1u;
        }

        if (v131)
        {
          sub_1000013C8(v156, v135);
          v128 = _os_log_send_and_compose_impl();
          v132 = v128;
        }

        v127 = v132;
        v133 = v132;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100010EC8);
      }
    }

    v138 = MatchingService;
    v139 = MatchingService;
    v140 = MatchingService;
    v137 = MatchingService;
    v141 = MatchingService;
    v6 = 0;
    if (MatchingService)
    {
      v6 = v141 != -1;
    }

    if (v6)
    {
      mach_right_send_release();
    }
  }

  sub_10004C66C(v110);
  sub_10004C66C(v117);
  sub_10004C66C(v115);
  v5 = v123;
  sub_100002DE4(&v106);
  sub_1000030D0(&v107);
  sub_100010FB4(&v109);
  return v5;
}

int *sub_100010FB4(int *result)
{
  if (*result)
  {
    result = fclose(*result);
    if (result == -1)
    {
      result = __error();
      v1 = *result;
      if (*result)
      {
        memset(&v2[24], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        sub_100003098(v2, v1);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100011138);
      }
    }
  }

  return result;
}

char *sub_100011170(__n128 *a1, uint64_t a2)
{
  v5 = malloc_type_calloc(1uLL, 0x70uLL, 0x8709206FuLL);
  if (!v5)
  {
    memset(&v8[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v2 = __error();
    v3 = strerror(*v2);
    sub_1000031B0(v8, "known-constant allocation", 112, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100011324);
  }

  *(v5 + 3) = a2;
  sub_10004C42C((v5 + 40), a1);
  *(v5 + 12) = v5 + 40;
  sub_1000496F4(v5, "com.apple.security.cryptexctl", "dyld-cache");
  *(v5 + 13) = sub_1000216E4(*(v5 + 2));
  **(v5 + 13) |= 1uLL;
  return v5;
}

uint64_t sub_1000113E0(uint64_t a1)
{
  v25 = a1;
  v24 = -1;
  v23 = 0;
  bzero(v34, 0x228uLL);
  v22 = 0;
  v21 = xmmword_10005B500;
  v32 = 0;
  v33 = 0;
  v23 = sub_10004C5C0(*(v25 + 96), "rb", 0);
  v22 = fread(v34, 0x228uLL, 1uLL, v23);
  v24 = sub_10004887C("dyld cache header", v23, 1, 92, *(v25 + 16));
  if (!v24)
  {
    v32 = 0;
    v33 = 0;
    __strlcpy_chk();
    if (strstr(v34, "AotCache") == v34)
    {
      v24 = 45;
      v20 = *v25;
      if (!*v25)
      {
        v20 = "[anonymous]";
      }

      v19 = *__error();
      v18 = *(v25 + 16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100009614(v31, v20, v24);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: aot shared cache not yet supported: %{darwin.errno}d", v31, 0x12u);
      }

      *__error() = v19;
    }

    else if (strstr(v34, "dyld_v") == v34)
    {
      v14 = *v25;
      if (!*v25)
      {
        v14 = "[anonymous]";
      }

      v13 = *__error();
      oslog = *(v25 + 16);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100011BEC(v29, v14, &v32);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: hdr.magic: %s", v29, 0x16u);
      }

      *__error() = v13;
      v11 = *v25;
      if (!*v25)
      {
        v11 = "[anonymous]";
      }

      v10 = *__error();
      v9 = *(v25 + 16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100011C40(v28, v11, v35);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: hdr.codeSignatureOffset: %#llx", v28, 0x16u);
      }

      *__error() = v10;
      v8 = *v25;
      if (!*v25)
      {
        v8 = "[anonymous]";
      }

      v7 = *__error();
      v6 = *(v25 + 16);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100011C40(v27, v8, v36);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: hdr.codeSignatureSize: %#llx", v27, 0x16u);
      }

      *__error() = v7;
      if (v35 > 0xFFFFFFFF || v36 > 0xFFFFFFFF)
      {
        v24 = 84;
        v5 = *v25;
        if (!*v25)
        {
          v5 = "[anonymous]";
        }

        v4 = *__error();
        v3 = *(v25 + 16);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100011C90(v26, v5, v35, v36, v24);
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s: bad code signature offset or size: offset = %llu, size = %llu: %{darwin.errno}d", v26, 0x26u);
        }

        *__error() = v4;
      }

      else
      {
        *(&v21 + 1) = __PAIR64__(v36, v35);
        v24 = sub_100021918(*(v25 + 104), 0, v23, &v21);
      }
    }

    else
    {
      v24 = 88;
      v17 = *v25;
      if (!*v25)
      {
        v17 = "[anonymous]";
      }

      v16 = *__error();
      v15 = *(v25 + 16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100011B7C(v30, v17, &v32, v24);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: not a dyld shared cache: %s: %{darwin.errno}d", v30, 0x1Cu);
      }

      *__error() = v16;
    }
  }

  v2 = v24;
  sub_100010FB4(&v23);
  return v2;
}

uint64_t sub_100011B7C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100011BEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100011C40(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100011C90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

void sub_100011D0C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    sub_10004C66C(*(v1 + 12));
    sub_100049728(v1);
    sub_100023DE0(v1 + 13);
    free(v1);
    *a1 = 0;
  }
}

char *sub_100011D7C(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x8709206FuLL);
  if (!v6)
  {
    memset(&v10[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v3 = __error();
    v4 = strerror(*v3);
    sub_1000031B0(v10, "known-constant allocation", 432, v4);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100011F34);
  }

  *(v6 + 3) = a3;
  *(v6 + 4) = a1;
  if (a2)
  {
    *(v6 + 20) = *a2;
  }

  else
  {
    v6[40] = 0;
    v6[41] = -1;
  }

  sub_1000493EC(v6 + 120);
  *(v6 + 11) = 0;
  *(v6 + 12) = v6 + 88;
  *(v6 + 13) = 0;
  *(v6 + 14) = v6 + 104;
  uuid_generate(v6 + 72);
  sub_1000496F4(v6, "com.apple.security.cryptexctl", "trust-cache");
  return v6;
}

uint64_t sub_100012044(const char **a1, char *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = 0;
  v38 = 0;
  v52[0] = a2;
  v52[1] = 0;
  v37 = 85;
  v36 = *a1;
  if (!v36)
  {
    v36 = "[anonymous]";
  }

  v35 = *__error();
  oslog = v43[2];
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100011BEC(v51, v36, v42);
    _os_log_impl(&_mh_execute_header, oslog, type, "%{public}s: building trust cache from: %s", v51, 0x16u);
  }

  *__error() = v35;
  v39 = fts_open(v52, 85, 0);
  if (!v39)
  {
    v32 = 0;
    memset(&v50[16], 0, 0x50uLL);
    v30 = 0;
    v29 = 3;
    v28 = &_os_log_default;
    v27 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v29 &= ~1u;
    }

    if (v29)
    {
      v4 = __error();
      sub_1000013C8(v50, *v4);
      v30 = _os_log_send_and_compose_impl();
    }

    v26 = v30;
    v31 = v30;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001228CLL);
  }

  while (1)
  {
    v38 = fts_read(v39);
    if (!v38)
    {
      break;
    }

    v25 = -1;
    bzero(v49, 0x400uLL);
    v24 = -1;
    memset(v23, 0, sizeof(v23));
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    if (v38->fts_info == 8)
    {
      fts_path = v38->fts_path;
      __strlcpy_chk();
      v20 = *v43;
      if (!*v43)
      {
        v20 = "[anonymous]";
      }

      v19 = *__error();
      v18 = v43[2];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100011BEC(v48, v20, v49);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}s: found regular file: %s", v48, 0x16u);
      }

      *__error() = v19;
      v24 = open(v39->fts_path, 0);
      if ((v24 & 0x80000000) == 0)
      {
        *__error() = 0;
      }

      if (*__error())
      {
        v25 = *__error();
        v17 = *v43;
        if (!*v43)
        {
          v17 = "[anonymous]";
        }

        v16 = *__error();
        v15 = v43[2];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100011B7C(v47, v17, v49, v25);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s: open: %s: %{darwin.errno}d", v47, 0x1Cu);
        }

        *__error() = v16;
      }

      else
      {
        v6 = sub_100012990(v43, v24, v38->fts_statp, v23);
        v25 = v6;
        if (v6)
        {
          v14 = *v43;
          if (!*v43)
          {
            v14 = "[anonymous]";
          }

          v13 = *__error();
          v12 = v43[2];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100009614(v46, v14, v25);
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: failed to map file; skipping: %{darwin.errno}d", v46, 0x12u);
          }

          *__error() = v13;
        }

        else
        {
          v22 = sub_10001C334(v23, 0);
          v25 = sub_10001C58C(v22);
          if (v25)
          {
            if (v25 == 79)
            {
              sub_10004C42C(v21, *(v22 + 14));
              sub_100012E20(v43, v21, v49, v42, v41, v40);
            }

            else if (v25 == 92)
            {
              sub_100013110(v43, v23, v49, v42, v41, v40);
            }

            else
            {
              v11 = *v43;
              if (!*v43)
              {
                v11 = "[anonymous]";
              }

              v10 = *__error();
              v9 = v43[2];
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                sub_100011B7C(v45, v11, v49, v25);
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: failed to init mach header: %s: %{darwin.errno}d", v45, 0x1Cu);
              }

              *__error() = v10;
              v40(v43, v49, 0, v25, v42, v41);
            }
          }

          else
          {
            sub_100012CCC(v43, &v22, v49, v42, v41, v40);
          }

          sub_10001E9CC(&v22);
        }
      }
    }

    sub_1000038DC(&v24);
  }

  result = fts_close(v39);
  if (result == -1)
  {
    memset(&v44[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v8 = __error();
    sub_1000013C8(v44, *v8);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001295CLL);
  }

  return result;
}

uint64_t sub_100012990(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v12 = *(a3 + 96);
  if ((v12 & 0x8000000000000000) != 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100012A0CLL);
  }

  v8 = mmap(0, v12, 1, 1, a2, 0);
  if (v8 == -1)
  {
    v9 = *__error();
    v7 = *a1;
    if (!*a1)
    {
      v7 = "[anonymous]";
    }

    v6 = *__error();
    oslog = *(a1 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v13, v7, v9);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: mmap: %{darwin.errno}d", v13, 0x12u);
    }

    *__error() = v6;
  }

  else
  {
    sub_10004C358(a4, 0, sub_10004C2F8, v8, v12);
    return 0;
  }

  return v9;
}

uint64_t sub_100012CCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = -1;
  v10 = *a2;
  i = 0;
  v8 = 0;
  result = sub_10001D244(v10);
  v11 = result;
  if (!result)
  {
    for (i = *(v10 + 40); ; i = v8)
    {
      v7 = 0;
      if (i)
      {
        v8 = *(i + 8);
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        break;
      }

      result = sub_1000149F8(v17, &i);
    }

    *(v10 + 24) = 0;
    **(v17 + 96) = v10;
    *(v17 + 96) = v10 + 24;
    *v16 = 0;
    v11 = 0;
  }

  if (v12)
  {
    if (v11)
    {
      v10 = 0;
    }

    return v12(v17, v15, v10, v11, v14, v13);
  }

  return result;
}

void sub_100012E20(const char **a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v14 = 0;
  v13 = 0;
  v15 = sub_1000423F4(a2, 0);
  v16 = sub_10004263C(v15);
  if (v16)
  {
    v12 = *v22;
    if (!*v22)
    {
      v12 = "[anonymous]";
    }

    v11 = *__error();
    oslog = v22[2];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v24, v12, v16);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: failed to init fat header: %{darwin.errno}d", v24, 0x12u);
    }

    *__error() = v11;
  }

  else
  {
    while (1)
    {
      v14 = sub_100042B70(v15, v13);
      if (!v14)
      {
        break;
      }

      v9 = v14;
      v16 = sub_10001C58C(v14);
      if (v16)
      {
        v8 = *v22;
        if (!*v22)
        {
          v8 = "[anonymous]";
        }

        v7 = *__error();
        v6 = v22[2];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v23, v8, v16);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: failed to init mach object header: %{darwin.errno}d", v23, 0x12u);
        }

        *__error() = v7;
      }

      else
      {
        sub_100012CCC(v22, &v14, v20, v19, v18, v17);
      }

      sub_100043B30(v15, v9);
      sub_10001E9CC(&v14);
      ++v13;
    }
  }

  sub_100043B68(&v15);
}

void sub_100013110(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v12 = 0;
  v13 = sub_100011170(a2, 0);
  v14 = sub_1000113E0(v13);
  if (v14)
  {
    if (v14 == 88 || v14 == 92)
    {
      v11 = *v20;
      if (!*v20)
      {
        v11 = "[anonymous]";
      }

      v10 = *__error();
      oslog = *(v20 + 16);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v22, v11);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: not a shared cache", v22, 0xCu);
      }

      *__error() = v10;
    }

    else
    {
      v8 = *v20;
      if (!*v20)
      {
        v8 = "[anonymous]";
      }

      v7 = *__error();
      v6 = *(v20 + 16);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v21, v8, v14);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: failed to read shared cache: %{darwin.errno}d", v21, 0x12u);
      }

      *__error() = v7;
    }
  }

  else
  {
    v12 = *(v13 + 13);
    sub_1000149F8(v20, &v12);
    *(v13 + 4) = 0;
    **(v20 + 112) = v13;
    *(v20 + 112) = v13 + 32;
    v13 = 0;
  }

  sub_100011D0C(&v13);
}

uint64_t sub_1000133D0(uint64_t a1, int a2)
{
  v87 = a1;
  v86 = a2;
  v85 = -1;
  memset(__b, 0, sizeof(__b));
  v83 = 0;
  v82 = 0;
  i = 0;
  v80 = 6;
  bzero(v107, 0x1C8uLL);
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v85 = sub_10004B524(v86, __b);
  if (v85)
  {
    v76 = *v87;
    if (!v76)
    {
      v76 = "[anonymous]";
    }

    v75 = *__error();
    v74 = *(v87 + 16);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v106, v76, v85);
      _os_log_impl(&_mh_execute_header, v74, type, "%{public}s: failed to read trust cache: %{darwin.errno}d", v106, 0x12u);
    }

    *__error() = v75;
    goto LABEL_117;
  }

  sub_10004EEEC(__b[0], __b[1], v107);
  v80 = v2;
  if (v2)
  {
    sub_10004EFD4(__b[0], __b[1], v107);
    v80 = v3;
    if (v3)
    {
      if (v3 != 2)
      {
        v85 = 92;
        v64 = *v87;
        if (!v64)
        {
          v64 = "[anonymous]";
        }

        v63 = *__error();
        v62 = *(v87 + 16);
        v61 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          sub_100009614(v103, v64, v80);
          _os_log_impl(&_mh_execute_header, v62, v61, "%{public}s: DER decode error: %u", v103, 0x12u);
        }

        *__error() = v63;
        goto LABEL_117;
      }

      v83 = sub_10004C5C0(__b, "r", 0);
      v79 = 1852796517;
      v68 = *v87;
      if (!v68)
      {
        v68 = "[anonymous]";
      }

      v67 = *__error();
      v66 = *(v87 + 16);
      v65 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v104, v68);
        _os_log_impl(&_mh_execute_header, v66, v65, "%{public}s: not Image4-wrapped", v104, 0xCu);
      }

      *__error() = v67;
    }

    else
    {
      v72 = *v87;
      if (!v72)
      {
        v72 = "[anonymous]";
      }

      v71 = *__error();
      v70 = *(v87 + 16);
      v69 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v105, v72);
        _os_log_impl(&_mh_execute_header, v70, v69, "%{public}s: Image4-wrapped", v105, 0xCu);
      }

      *__error() = v71;
    }
  }

  else
  {
    v60 = *v87;
    if (!v60)
    {
      v60 = "[anonymous]";
    }

    v59 = *__error();
    v58 = *(v87 + 16);
    v57 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v102, v60);
      _os_log_impl(&_mh_execute_header, v58, v57, "%{public}s: Image4 manifest + payload", v102, 0xCu);
    }

    *__error() = v59;
  }

  if (v83)
  {
    goto LABEL_78;
  }

  v55 = 0;
  v56 = 0;
  v80 = sub_10004ED54(v107, &v55);
  if (v80)
  {
    v85 = 92;
    v54 = *v87;
    if (!v54)
    {
      v54 = "[anonymous]";
    }

    v53 = *__error();
    v52 = *(v87 + 16);
    v51 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v101, v54, v80);
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s: DER decode error: %u", v101, 0x12u);
    }

    *__error() = v53;
    goto LABEL_117;
  }

  v83 = fmemopen(v55, v56, "r");
  if (!v83)
  {
    v50 = 0;
    memset(&v100[16], 0, 0x50uLL);
    v48 = 0;
    v47 = 3;
    v46 = &_os_log_default;
    v45 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v47 &= ~1u;
    }

    if (v47)
    {
      v4 = __error();
      sub_1000013C8(v100, *v4);
      v48 = _os_log_send_and_compose_impl();
    }

    v44 = v48;
    v49 = v48;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100013C28);
  }

  v80 = sub_10004ED98(v107, (v87 + 68));
  if (v80)
  {
    v85 = 92;
    v43 = *v87;
    if (!v43)
    {
      v43 = "[anonymous]";
    }

    v42 = *__error();
    v41 = *(v87 + 16);
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v99, v43, v80);
      _os_log_impl(&_mh_execute_header, v41, v40, "%{public}s: DER decode error: %u", v99, 0x12u);
    }

    *__error() = v42;
    goto LABEL_117;
  }

  v79 = *(v87 + 68);
  if (v79 == 1651733603 || v79 == 1651798643 || v79 == 1685353075 || v79 == 1735680868 || v79 == 1819570803 || v79 == 1920234339 || v79 == 1953653346 || v79 == 1953653601 || v79 == 1953653881 || v79 == 1953654126 || v79 == 1953654628 || v79 == 1953655137 || v79 == 1953656932 || v79 == 1953657443 || v79 == 1953657716 || v79 == 1953658210)
  {
    goto LABEL_78;
  }

  if (*(v87 + 24))
  {
    v39 = *v87;
    if (!v39)
    {
      v39 = "[anonymous]";
    }

    v38 = *__error();
    v37 = *(v87 + 16);
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_10004B484(v79, &v77);
      sub_100011BEC(v98, v39, v5);
      _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s: unknown trust cache tag; proceeding with caution: %s", v98, 0x16u);
    }

    *__error() = v38;
LABEL_78:
    v82 = fread((v87 + 42), 0x18uLL, 1uLL, v83);
    v85 = sub_10004887C("read header", v83, 1, 88, *(v87 + 16));
    if (!v85)
    {
      v31 = *v87;
      if (!v31)
      {
        v31 = "[anonymous]";
      }

      v30 = *__error();
      v29 = *(v87 + 16);
      v28 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v7 = sub_10004B484(v79, &v77);
        sub_100011BEC(v96, v31, v7);
        _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s: type = %s", v96, 0x16u);
      }

      *__error() = v30;
      v27 = *v87;
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v26 = *__error();
      v25 = *(v87 + 16);
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100009614(v95, v27, *(v87 + 42));
        _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s: version = %u", v95, 0x12u);
      }

      *__error() = v26;
      v23 = *v87;
      if (!v23)
      {
        v23 = "[anonymous]";
      }

      v22 = *__error();
      oslog = *(v87 + 16);
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000148C0(v94, v23, 16, v87 + 46);
        _os_log_impl(&_mh_execute_header, oslog, v20, "%{public}s: uuid = %{uuid_t}.16P", v94, 0x1Cu);
      }

      *__error() = v22;
      v19 = *v87;
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      v18 = *__error();
      v17 = *(v87 + 16);
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100009614(v93, v19, *(v87 + 62));
        _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s: entries cnt = %u", v93, 0x12u);
      }

      *__error() = v18;
      if (*(v87 + 42) <= 2u)
      {
        if (*(v87 + 62))
        {
          for (i = 0; i < *(v87 + 62); ++i)
          {
            __ptr = 0uLL;
            v92 = 0;
            v89 = 0uLL;
            v90 = 0;
            __size = 0;
            v14 = 0;
            v10 = *(v87 + 42);
            if (v10)
            {
              __size = v10 == 1 ? 22 : 24;
            }

            else
            {
              __size = 20;
            }

            v82 = fread(&__ptr, __size, 1uLL, v83);
            v85 = sub_10004887C("read entry", v83, v82, 88, *(v87 + 16));
            if (v85)
            {
              break;
            }

            if (*(v87 + 42))
            {
              if (*(v87 + 42) == 1)
              {
                v89 = __ptr;
                LODWORD(v90) = v92;
                HIDWORD(v90) = WORD2(v92);
              }

              else
              {
                v89 = __ptr;
                v90 = v92;
              }
            }

            else
            {
              v89 = __ptr;
              LODWORD(v90) = v92;
              WORD2(v90) = 0;
            }

            v13 = *v87;
            if (!*v87)
            {
              v13 = "[anonymous]";
            }

            v12 = *__error();
            v11 = *(v87 + 16);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              sub_100014934(v88, v13, *(v87 + 42), BYTE4(v90), BYTE5(v90), BYTE6(v90), 20, &v89);
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: read trust cache entry: version = %#x, hash type = %hx, flags = %#x, cc = %#x, hash = %.*P", v88, 0x34u);
            }

            *__error() = v12;
            v14 = sub_1000216E4(*(v87 + 16));
            sub_100023874(v14, v87 + 42, &v89);
            sub_1000149F8(v87, &v14);
            sub_100023DE0(&v14);
          }
        }

        else
        {
          v85 = 0;
        }
      }

      else
      {
        v85 = 45;
      }
    }

    goto LABEL_117;
  }

  v85 = 79;
  v35 = *v87;
  if (!v35)
  {
    v35 = "[anonymous]";
  }

  v34 = *__error();
  v33 = *(v87 + 16);
  v32 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_10004B484(v79, &v77);
    sub_100011BEC(v97, v35, v6);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s: unknown trust cache tag: %s ", v97, 0x16u);
  }

  *__error() = v34;
LABEL_117:
  v9 = v85;
  sub_100010FB4(&v83);
  return v9;
}

uint64_t sub_1000148C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 16;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 48;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_100014934(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  *(result + 36) = 16;
  *(result + 37) = 4;
  *(result + 38) = a7;
  *(result + 42) = 48;
  *(result + 43) = 8;
  *(result + 44) = a8;
  return result;
}

_DWORD *sub_1000149F8(uint64_t a1, uint64_t *a2)
{
  v13 = *a2;
  v12 = *a2 + 16;
  if (sub_100049564(a1 + 120, v12))
  {
    v11 = *a1;
    if (!*a1)
    {
      v11 = "[anonymous]";
    }

    v10 = *__error();
    oslog = *(a1 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v18, v11);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: cdhash already exists", v18, 0xCu);
    }

    result = __error();
    *result = v10;
  }

  else if (*(v13 + 104) >= *(a1 + 40))
  {
    if (*(v13 + 104) <= *(a1 + 41))
    {
      result = sub_100049430(a1 + 120, v12);
      ++*(a1 + 424);
      *a2 = 0;
    }

    else
    {
      v5 = *a1;
      if (!*a1)
      {
        v5 = "[anonymous]";
      }

      v4 = *__error();
      v3 = *(a1 + 16);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_100009E38(v16, v5, *(v13 + 104), *(a1 + 41));
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s: cdhash exceeds maximum: %u > %u", v16, 0x18u);
      }

      result = __error();
      *result = v4;
    }
  }

  else
  {
    v8 = *a1;
    if (!*a1)
    {
      v8 = "[anonymous]";
    }

    v7 = *__error();
    v6 = *(a1 + 16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100009E38(v17, v8, *(v13 + 104), *(a1 + 40));
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: cdhash does not meet minimum: %u < %u", v17, 0x18u);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

uint64_t sub_100014D78(uint64_t a1, int a2)
{
  v45 = a1;
  v44 = a2;
  v43 = -1;
  v42 = -1;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  __ptr[0] = 1;
  __ptr[1] = 0;
  v70 = 0;
  v10 = __ptr + 5;
  do
  {
    *v10++ = 0;
  }

  while (v10 != &v70 + 4);
  HIDWORD(v70) = *(v45 + 424);
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  memset(__b, 0, sizeof(__b));
  v33 = 0;
  v9 = *(v45 + 32);
  if (v9)
  {
    switch(v9)
    {
      case 1:
        v37 = "rtsc";
        break;
      case 2:
        v37 = "btrs";
        break;
      case 3:
        v37 = "ltrs";
        break;
      case 4:
        v37 = "dtrs";
        break;
      case 5:
        v37 = "gtcd";
        break;
    }
  }

  else
  {
    v37 = "trst";
  }

  uuid_copy(__ptr + 4, (v45 + 72));
  v41 += 24;
  v41 += 22 * *(v45 + 424);
  v30 = v41;
  if (_dispatch_is_multithreaded())
  {
    v59 = v30;
    v58 = 0;
    while (1)
    {
      v58 = malloc_type_malloc(v59, 0x5C008F58uLL);
      if (v58)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v31 = v58;
  }

  else
  {
    v57 = v30;
    v31 = malloc_type_malloc(v30, 0x2F48DA65uLL);
    v56 = "known-constant allocation";
    v55 = v31;
    v54 = v30;
    if (!v31)
    {
      v53 = 0;
      memset(&v71[40], 0, 0x50uLL);
      v51 = 0;
      v50 = 3;
      v49 = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v50 &= ~1u;
      }

      if (v50)
      {
        v7 = v56;
        v8 = v54;
        v2 = __error();
        v3 = strerror(*v2);
        sub_1000031B0(v71, v7, v8, v3);
        v47 = _os_log_send_and_compose_impl();
        v51 = v47;
      }

      v46 = v51;
      v52 = v51;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001511CLL);
    }
  }

  v40 = v31;
  v39 = fmemopen(v31, v41, "rw");
  if (!v39)
  {
    memset(&v68[8], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v4 = __error();
    sub_1000013C8(v68, *v4);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000152D4);
  }

  v38 = fwrite(__ptr, 0x18uLL, 1uLL, v39);
  v43 = sub_10004887C("write module", v39, v38, 88, *(v45 + 16));
  if (v43)
  {
    v29 = *v45;
    if (!*v45)
    {
      v29 = "[anonymous]";
    }

    v28 = *__error();
    v27 = *(v45 + 16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v67, v29, v43);
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: failed to write trust cache module: %{darwin.errno}d", v67, 0x12u);
    }

    *__error() = v28;
  }

  else
  {
    v26 = *v45;
    if (!*v45)
    {
      v26 = "[anonymous]";
    }

    v25 = *__error();
    v24 = *(v45 + 16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000148C0(v66, v26, 24, __ptr);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: wrote module header: %.*P", v66, 0x1Cu);
    }

    *__error() = v25;
    v33 = sub_100015C98(v45);
    for (i = 0; i < *(v45 + 424); ++i)
    {
      v23 = v33[i];
      *v65 = 0;
      *&v65[8] = 0;
      *&v65[14] = 0;
      v65[20] = *(v23 + 104);
      v65[21] = *(v23 + 120);
      if (*(v23 + 112) < 0x14uLL)
      {
        memset(&v64[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        sub_100003098(v64, *(v23 + 112));
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x1000156C0);
      }

      *v65 = *(v23 + 56);
      *&v65[16] = *(v23 + 72);
      v38 = fwrite(v65, 0x16uLL, 1uLL, v39);
      v43 = sub_10004887C("write entry", v39, v38, 88, *(v45 + 16));
      if (v43)
      {
        v22 = *v45;
        if (!*v45)
        {
          v22 = "[anonymous]";
        }

        v21 = *__error();
        oslog = *(v45 + 16);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10001601C(v63, v22, 20, v65, v43);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: failed to write trust cache entry: %.*P: %{darwin.errno}d", v63, 0x22u);
        }

        *__error() = v21;
        goto LABEL_80;
      }

      v19 = *v45;
      if (!*v45)
      {
        v19 = "[anonymous]";
      }

      v18 = *__error();
      v17 = *(v45 + 16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000148C0(v62, v19, 20, v65);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: wrote cdhash: %.*P", v62, 0x1Cu);
      }

      *__error() = v18;
    }

    v42 = sub_10004E124(v37, "cptx", v40, v41, 0, 0, &v36, &v35);
    switch(v42)
    {
      case 'd':
        v43 = 0;
        break;
      case 'e':
        v43 = 22;
        break;
      case 'f':
        v43 = 12;
        break;
      case 'g':
        v43 = 104;
        break;
      case 'h':
        v43 = 14;
        break;
      case 'i':
        v43 = 78;
        break;
    }

    if (v43)
    {
      v16 = *v45;
      if (!*v45)
      {
        v16 = "[anonymous]";
      }

      v15 = *__error();
      v14 = *(v45 + 16);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100009E38(v61, v16, v42, v43);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: failed to wrap trust cache: %d: %{darwin.errno}d", v61, 0x18u);
      }

      *__error() = v15;
    }

    else
    {
      sub_10004C358(__b, 0, 0, v36, v35);
      v43 = sub_10004B8CC(v44, __b);
      if (v43)
      {
        v13 = *v45;
        if (!*v45)
        {
          v13 = "[anonymous]";
        }

        v12 = *__error();
        v11 = *(v45 + 16);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v60, v13, v43);
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: failed to write im4p: %{darwin.errno}d", v60, 0x12u);
        }

        *__error() = v12;
      }
    }
  }

LABEL_80:
  v6 = v43;
  sub_100002DE4(&v33);
  sub_100002DE4(&v36);
  sub_100010FB4(&v39);
  sub_100002DE4(&v40);
  return v6;
}

void *sub_100015C98(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  v8 = *(a1 + 424);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v13 = malloc_type_calloc(v8, 8uLL, 0x8A375538uLL);
      if (v13)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v9 = v13;
  }

  else
  {
    v9 = malloc_type_calloc(v8, 8uLL, 0x8709206FuLL);
    if (!v9)
    {
      memset(&v14[40], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v1 = __error();
      v2 = strerror(*v1);
      sub_1000031B0(v14, "known-constant allocation", 8, v2);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100015E74);
    }
  }

  v5 = 0;
  v7 = 0;
  while (v5 < 0x25)
  {
    for (i = *(a1 + 120 + 8 * v5); ; i = v7)
    {
      v4 = 0;
      if (i)
      {
        v7 = *(i + 8);
        v11 = i - 16;
        v4 = 1;
      }

      if ((v4 & 1) == 0)
      {
        break;
      }

      v9[v10++] = v11;
    }

    ++v5;
  }

  qsort(v9, *(a1 + 424), 8uLL, sub_1000160A0);
  return v9;
}

uint64_t sub_10001601C(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 16;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 48;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void sub_1000160F8(void **a1)
{
  v19 = a1;
  v18 = *a1;
  v17 = 0;
  j = 0;
  v15 = 0;
  m = 0;
  v13 = 0;
  v10 = 0;
  v12 = 0;
  while (v10 < 0x25)
  {
    for (i = v18[v10 + 15]; ; i = v12)
    {
      v7 = 0;
      if (i)
      {
        v12 = *(i + 8);
        v17 = (i - 16);
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        break;
      }

      sub_100049570((v18 + 15), (v17 + 2));
      --*(v18 + 106);
      if ((*v17 & 1) == 0)
      {
        sub_100023DE0(&v17);
      }
    }

    ++v10;
  }

  for (j = v18[11]; ; j = v15)
  {
    v6 = 0;
    if (j)
    {
      v15 = j[3];
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    if (v18[11] == j)
    {
      v1 = *(v18[11] + 24);
      v18[11] = v1;
      if (!v1)
      {
        v18[12] = v18 + 11;
      }
    }

    else
    {
        ;
      }

      v2 = *(*(k + 24) + 24);
      *(k + 24) = v2;
      if (!v2)
      {
        v18[12] = k + 24;
      }
    }

    sub_10001E9CC(&j);
  }

  for (m = v18[13]; ; m = v13)
  {
    v5 = 0;
    if (m)
    {
      v13 = m[4];
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      break;
    }

    if (v18[13] == m)
    {
      v3 = *(v18[13] + 32);
      v18[13] = v3;
      if (!v3)
      {
        v18[14] = v18 + 13;
      }
    }

    else
    {
        ;
      }

      v4 = *(*(n + 32) + 32);
      *(n + 32) = v4;
      if (!v4)
      {
        v18[14] = n + 32;
      }
    }

    sub_100011D0C(&m);
  }

  sub_100049728(v18);
  free(v18);
  *v19 = 0;
}

BOOL sub_1000164C0(const char *a1)
{
  if (a1)
  {
    v2 = 1;
    if (strcmp(a1, "before"))
    {
      v2 = 1;
      if (strcmp(a1, "after"))
      {
        v2 = 1;
        if (strcmp(a1, "none"))
        {
          return strcmp(a1, "both") == 0;
        }
      }
    }

    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001659C(uint64_t a1, int a2, char **a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = -1;
  v7 = a3;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  sub_1000480E0();
  v6 = getopt_long(v10, v7, *(v11 + 32), *(v11 + 40), &v5);
  if (v6 != -1)
  {
    if (optind < 1)
    {
      memset(&v12[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v12, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100016774);
    }

    if (v6 != 58)
    {
      if (v6 != 63)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000167F0);
      }

      errx(64, "unknown option: %s", v9[optind - 1]);
    }

    errx(64, "missing argument for option: %s", *(*(v11 + 40) + 32 * v5));
  }

  v9 += optind;
  v10 -= optind;
  if (v10 < 1)
  {
    errx(64, "a dev node must be provided");
  }

  v4 = *v9;
  v8 = sub_10001689C(&v4);
  return sysexit_np();
}

uint64_t sub_10001689C(const char **a1)
{
  v20 = a1;
  v19 = -1;
  v18 = -1;
  bzero(__s1, 0x400uLL);
  __s = 0;
  v16 = -1;
  if (**v20 == 47)
  {
    v1 = *v20;
    __strlcpy_chk();
  }

  else
  {
    __snprintf_chk(__s1, 0x400uLL, 0, 0x400uLL, "%s%s", "/dev/", *v20);
  }

  __s = strstr(__s1, "disk");
  if (__s)
  {
    __s += 4;
  }

  while (1)
  {
    sub_10004860C(0, 1uLL, "attempting to detach: %s", v2, v3, v4, v5, v6, __s1);
    v16 = open(__s1, 0);
    v21 = v16;
    if (v16 < 0)
    {
      v19 = *__error();
      warn("open: %s", *v20);
      goto LABEL_18;
    }

    v18 = ioctl(v16, 0x20006415uLL);
    if ((v18 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v14 = *__error();
    if (v14)
    {
      break;
    }

    sub_10004860C(0, 1uLL, "detached: %s", v7, v8, v9, v10, v11, __s1);
    v19 = 0;
LABEL_17:
    if (v19 != 25)
    {
      goto LABEL_18;
    }
  }

  if (v14 == 25)
  {
    v19 = *__error();
    if (!__s)
    {
      goto LABEL_18;
    }

    v15 = strrchr(__s, 115);
    if (v15)
    {
      *v15 = 0;
    }

    goto LABEL_17;
  }

  v19 = *__error();
LABEL_18:
  if (v19)
  {
    warn("failed to detach: %s", *v20);
  }

  v13 = v19;
  sub_1000038DC(&v16);
  return v13;
}

uint64_t sub_100016B84(uint64_t a1, int a2, char *const *a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = -1;
  v23 = a3;
  v22 = -1;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  sub_1000480E0();
  v20 = img4_chip_select_personalized_ap();
  while (1)
  {
    v22 = getopt_long(v26, v23, *(v27 + 32), *(v27 + 40), &v21);
    if (v22 == -1)
    {
      break;
    }

    v17 = (*(v27 + 40) + 32 * v21);
    v16 = v25[optind - 1];
    if (optind < 1)
    {
      memset(&v28[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v28, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100016D6CLL);
    }

    sub_1000483C8(1uLL, "parsing: %c", v3, v4, v5, v6, v7, v8, v22);
    switch(v22)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v17);
      case '?':
        errx(64, "unknown option: %s", v16);
      case 'm':
        v19 = optarg;
        sub_1000483C8(1uLL, "will write trust cache to: %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 't':
        if (!strcmp(optarg, "personalized"))
        {
          v20 = img4_chip_select_personalized_ap();
        }

        else if (!strcmp(optarg, "global-ff00"))
        {
          v20 = &_img4_chip_ap_software_ff00;
        }

        else
        {
          if (strcmp(optarg, "global-ff01"))
          {
            errx(64, "invalid trust cache type: %s", optarg);
          }

          v20 = &_img4_chip_ap_software_ff00;
        }

        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100016F10);
    }
  }

  v25 += optind;
  v26 -= optind;
  if (v26 < 1)
  {
    errx(64, "a directory path is required");
  }

  v18 = *v25;
  if (!v19)
  {
    v19 = v18;
  }

  v24 = sub_100016FD4(&v18);
  return sysexit_np();
}

uint64_t sub_100016FD4(const char **a1)
{
  v20 = a1;
  v19 = 0;
  v18 = -1;
  v17 = -1;
  v16 = -1;
  v17 = open(*a1, 0);
  v22 = v17;
  if (v17 < 0)
  {
    v18 = *__error();
    warnc(v18, "open");
  }

  else
  {
    v16 = open(v20[1], 0);
    v21 = v17;
    v19 = sub_10000F434(v17, v16, 0);
    if (v19)
    {
      v18 = sub_100018A78(v19);
      v15 = sub_100048090();
      v12 = 1;
      if (v15[1] <= 1uLL)
      {
        v12 = v15[2] > 1uLL;
      }

      if (v12)
      {
        v6 = 999;
      }

      else
      {
        v6 = 3;
      }

      v14 = v6;
      v11 = 1;
      if (v15[1] <= 1uLL)
      {
        v11 = v15[2] > 1uLL;
      }

      v7 = 2000;
      if (!v11)
      {
        v7 = 200;
      }

      v13[1] = v7;
      v13[0] = sub_100017530(v19, v14, v7);
      warnx("failed to load trust cache\n%s", v13[0]);
      sub_100002DE4(v13);
    }

    else
    {
      sub_10004860C(0, 1uLL, "loaded trust cache", v1, v2, v3, v4, v5, v9);
    }
  }

  v10 = v18;
  sub_1000038DC(&v16);
  sub_1000038DC(&v17);
  sub_100006B40(&v19);
  return v10;
}

uint64_t sub_1000173C8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    memset(&v3[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003120(v3, a2);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100017500);
  }

  return result;
}

char *sub_100017530(__CFError *a1, unsigned int a2, CFIndex a3)
{
  err = a1;
  v43 = a2;
  v42 = a3;
  v40 = 0;
  v39 = 0;
  Mutable = CFStringCreateMutable(0, 0);
  while (err)
  {
    theDict = CFErrorCopyUserInfo(err);
    theString = CFErrorCopyDescription(err);
    MutableCopy = 0;
    cf1 = CFErrorGetDomain(err);
    appendedString = 0;
    Value = 0;
    v32 = 0;
    v31 = &stru_1000822B0;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, kCFErrorUnderlyingErrorKey);
    }

    if (theString)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
      if (MutableCopy)
      {
        if ((v42 & 0x8000000000000000) == 0)
        {
          v25 = MutableCopy;
          v26 = v42;
          if (v26 >= CFStringGetLength(MutableCopy))
          {
            length = CFStringGetLength(MutableCopy);
            CFStringPad(v25, 0, length, 0);
          }

          else
          {
            CFStringPad(v25, 0, v42, 0);
          }
        }
      }
    }

    if (CFEqual(cf1, @"com.apple.security.cryptex"))
    {
      Code = CFErrorGetCode(err);
      v4 = sub_100017CB8(Code);
      asprintf(&v32, " (%s)", v4);
    }

    else if (CFEqual(cf1, @"com.apple.security.cryptex.posix"))
    {
      v5 = CFErrorGetCode(err);
      v6 = strerror(v5);
      asprintf(&v32, " (%s)", v6);
    }

    else
    {
      __s1 = "";
      v30 = strdup("");
      v7 = strlen("");
      v68 = "known-constant allocation";
      v67 = v30;
      v66 = v7;
      if (!v30)
      {
        v65 = 0;
        memset(&v70[40], 0, 0x50uLL);
        v63 = 0;
        v62 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v62 &= ~1u;
        }

        if (v62)
        {
          v22 = v68;
          v23 = v66;
          v8 = __error();
          v9 = strerror(*v8);
          sub_1000031B0(v70, v22, v23, v9);
          v59 = _os_log_send_and_compose_impl();
          v63 = v59;
        }

        v58 = v63;
        v64 = v63;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100017884);
      }

      v32 = v30;
    }

    if (os_variant_allows_internal_security_policies())
    {
      v20 = CFDictionaryGetValue(theDict, @"FileName");
      v21 = CFDictionaryGetValue(theDict, @"LineNumber");
      v10 = CFDictionaryGetValue(theDict, @"FunctionName");
      v31 = CFStringCreateWithFormat(0, 0, @"  Source: %@:%@ (%@)", v20, v21, v10);
    }

    Domain = CFErrorGetDomain(err);
    v11 = CFErrorGetCode(err);
    appendedString = CFStringCreateWithFormat(0, 0, @"Error Domain: %@  Code: %ld%s%@  Detail: %@\n", Domain, v11, v32, v31, MutableCopy);
    if (v39 >= v43 && Value)
    {
      if (v39 == v43)
      {
        for (i = 0; i < v39; ++i)
        {
          CFStringAppend(Mutable, @"    ");
        }

        CFStringAppend(Mutable, @"...\n");
        ++v39;
      }
    }

    else
    {
      if (v39)
      {
        for (j = 0; j < v39 - 1; ++j)
        {
          CFStringAppend(Mutable, @"    ");
        }

        CFStringAppend(Mutable, @" ╰─ ");
      }

      CFStringAppend(Mutable, appendedString);
      ++v39;
    }

    err = Value;
    sub_100006B40(&v31);
    sub_100002DE4(&v32);
    sub_100006B40(&appendedString);
    sub_100006B40(&MutableCopy);
    sub_100006B40(&theString);
    sub_100006B40(&theDict);
  }

  v40 = sub_100018014(Mutable);
  if (!v40)
  {
    v45 = "[CFString translation failure]";
    v27 = strdup("[CFString translation failure]");
    v12 = strlen("[CFString translation failure]");
    v57 = "known-constant allocation";
    v56 = v27;
    v55 = v12;
    if (!v27)
    {
      v54 = 0;
      memset(&v69[32], 0, 0x50uLL);
      v52 = 0;
      v51 = 3;
      v50 = &_os_log_default;
      v49 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v51 &= ~1u;
      }

      if (v51)
      {
        v17 = v57;
        v18 = v55;
        v13 = __error();
        v14 = strerror(*v13);
        sub_1000031B0(v69, v17, v18, v14);
        v48 = _os_log_send_and_compose_impl();
        v52 = v48;
      }

      v47 = v52;
      v53 = v52;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100017C5CLL);
    }

    v40 = v27;
  }

  v16 = v40;
  sub_100006B40(&Mutable);
  return v16;
}

const char *sub_100017CB8(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = "No error";
      break;
    case 1:
      v2 = "The cryptex is already mounted to the filesystem";
      break;
    case 2:
      v2 = "Mount/unmount failed";
      break;
    case 3:
      v2 = "Encountered an error processing an XPC event";
      break;
    case 4:
      v2 = "The cryptex failed to uninstall";
      break;
    case 5:
      v2 = "The cryptex failed to personalize";
      break;
    case 6:
      v2 = "Failed to read the cryptex bundle";
      break;
    case 7:
      v2 = "Failed to write the cryptex bundle";
      break;
    case 8:
      v2 = "No matching cryptex found";
      break;
    case 9:
      v2 = "Failed to initialize cryptex identity";
      break;
    case 10:
      v2 = "The requested operation is not supported";
      break;
    case 11:
      v2 = "Invalid input to libcryptex API";
      break;
    case 12:
      v2 = "Failed to authenticate cryptex asset";
      break;
    case 14:
      v2 = "Failed to install cryptex";
      break;
    case 15:
      v2 = "Cryptex is not valid";
      break;
    case 16:
      v2 = "Daemon failed a request";
      break;
    case 17:
      v2 = "Cryptex already exists";
      break;
    case 18:
      v2 = "Request already satisfied; nothing to do.";
      break;
    case 19:
      v2 = "Failed to communicate with remote device.";
      break;
    case 20:
      v2 = "Developer mode is required and not currently enabled.";
      break;
    case 21:
      v2 = "Failed to attach launch agents.";
      break;
    case 22:
      v2 = "Image format is unsupported.";
      break;
    case 23:
      v2 = "Failed to connect to local cryptexd daemon.";
      break;
    case 24:
      v2 = "Failed to allocate memory.";
      break;
    case 25:
      v2 = "Failed to acquire lock on upgrade interface.";
      break;
    case 26:
      v2 = "Failed to release lock on upgrade interface.";
      break;
    case 27:
      v2 = "The cryptex upgrade was interrupted.";
      break;
    case 28:
      v2 = "App termination assertion failed.";
      break;
    case 29:
      v2 = "Upgrade for this cryptex is already in progress.";
      break;
    case 30:
      v2 = "Failed to stage cryptex for upgrade.";
      break;
    case 31:
      v2 = "Failed to commit cryptex(es) for upgrade.";
      break;
    case 32:
      v2 = "Failed to abort cryptex upgrade.";
      break;
    case 33:
      v2 = "Failed to register service(s) with watchdog.";
      break;
    case 34:
      v2 = "Failed to load cryptex trust cache.";
      break;
    case 35:
      v2 = "Failed to configure vproc.";
      break;
    case 36:
      v2 = "Failed to lock cryptex signature.";
      break;
    case 37:
      v2 = "Failed to bootstrap cryptex contents.";
      break;
    case 38:
      v2 = "Failed to unload cryptex trust cache.";
      break;
    default:
      v2 = "Unknown error";
      break;
  }

  return v2;
}

char *sub_100018014(const __CFString *a1)
{
  v2 = 0;
  Length = CFStringGetLength(a1);
  bufferSize = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
  if (bufferSize < 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100018084);
  }

  buffer = malloc_type_calloc(1uLL, bufferSize, 0x55514AAEuLL);
  if (!buffer)
  {
    goto LABEL_7;
  }

  v2 = buffer;
  if (!CFStringGetCString(a1, buffer, bufferSize, 0x8000100u))
  {
    buffer = 0;
LABEL_7:
    free(v2);
    return buffer;
  }

  free(0);
  return buffer;
}

uint64_t sub_10001813C(const __CFNumber *a1)
{
  valuePtr[1] = a1;
  valuePtr[0] = -1;
  if (!CFNumberGetValue(a1, kCFNumberSInt64Type, valuePtr))
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x1000181A4);
  }

  if (valuePtr[0] > 0xFFFFFFFFLL || valuePtr[0] < 0)
  {
    memset(&v3[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v3, valuePtr[0]);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000182CCLL);
  }

  return valuePtr[0];
}

char *sub_100018348(const __CFString *a1, char *a2, unint64_t a3)
{
  v4 = 0;
  if (a3 > 0x7FFFFFFFFFFFFFFFLL)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100018398);
  }

  if (CFStringGetCString(a1, a2, a3, 0x8000100u))
  {
    return a2;
  }

  return v4;
}

CFMutableArrayRef sub_1000183E8()
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  sub_1000173C8(Mutable, "CFMutableArray");
  return Mutable;
}

CFMutableDictionaryRef sub_100018434()
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1000173C8(Mutable, "CFMutableDictionary");
  return Mutable;
}

void sub_100018488(__CFDictionary *a1, const void *a2, char a3)
{
  if (a3)
  {
    v3 = kCFBooleanTrue;
  }

  else
  {
    v3 = kCFBooleanFalse;
  }

  CFDictionarySetValue(a1, a2, v3);
}

void sub_1000184FC(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a1;
  v4 = a2;
  value[1] = a3;
  value[0] = 0;
  value[0] = CFStringCreateWithCString(0, a3, 0x8000100u);
  sub_1000173C8(value[0], "CFString");
  CFDictionarySetValue(v5, v4, value[0]);
  sub_100006B40(value);
}

void sub_100018570(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a1;
  v4 = a2;
  value[1] = a3;
  value[0] = 0;
  value[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_1000173C8(value[0], "CFString");
  CFDictionarySetValue(v5, v4, value[0]);
  sub_100006B40(value);
}

CFErrorRef sub_1000185D8(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, const char *a7)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v14 = CFStringCreateWithCString(0, a7, 0x8000100u);
  value = CFStringCreateWithCString(0, v20, 0x8000100u);
  domain = CFStringCreateWithCString(0, a4, 0x8000100u);
  cf = CFStringCreateWithCString(0, v19, 0x8000100u);
  v9 = CFNumberCreate(0, kCFNumberIntType, &v18);
  theDict = sub_100018434();
  CFDictionarySetValue(theDict, kCFErrorLocalizedDescriptionKey, v14);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(theDict, @"FunctionName", value);
    CFDictionarySetValue(theDict, @"FileName", cf);
    CFDictionarySetValue(theDict, @"LineNumber", v9);
  }

  if (a6)
  {
    CFDictionarySetValue(theDict, kCFErrorUnderlyingErrorKey, a6);
  }

  v13 = CFErrorCreate(0, domain, a5, theDict);
  CFRelease(theDict);
  CFRelease(v14);
  CFRelease(value);
  CFRelease(domain);
  CFRelease(cf);
  CFRelease(v9);
  return v13;
}

uint64_t sub_1000187A0(const void *a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0;
  v14 = 32;
  v15 = 0;
  v4 = _NSConcreteStackBlock;
  v5 = 0x40000000;
  v6 = 0;
  v7 = sub_1000189E4;
  v8 = &unk_10007A168;
  v10 = a2;
  v9 = &v11;
  sub_100018868(a1, &v4);
  v3 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v3;
}

void sub_100018868(const void *a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 1;
  v8 = 0;
  if (a1)
  {
    v5 = CFGetTypeID(v11);
    if (v5 == CFErrorGetTypeID())
    {
      v8 = sub_100018E24(v11);
      while (1)
      {
        v4 = 0;
        if (v8)
        {
          v4 = v9;
        }

        if ((v4 & 1) == 0)
        {
          break;
        }

        theDict = 0;
        v9 = (*(v10 + 16))(v10, v8);
        theDict = CFErrorCopyUserInfo(v8);
        v12 = &v8;
        if (&v8 && *v12)
        {
          CFRelease(*v12);
          *v12 = 0;
        }

        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, kCFErrorUnderlyingErrorKey);
          v3 = sub_100018E24(Value);
        }

        else
        {
          v3 = 0;
        }

        v8 = v3;
        sub_100006B40(&theDict);
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  sub_100006B40(&v8);
}

uint64_t sub_1000189E4(uint64_t a1, __CFError *a2)
{
  Domain = CFErrorGetDomain(a2);
  if (CFEqual(Domain, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100018A78(__CFError *a1)
{
  v6 = a1;
  err = 0;
  if (a1)
  {
    err = sub_1000187A0(v6, @"com.apple.security.cryptex.posix");
    if (err && (v1 = CFErrorGetDomain(err), CFEqual(v1, @"com.apple.security.cryptex.posix")))
    {
      Code = CFErrorGetCode(err);
    }

    else
    {
      Domain = CFErrorGetDomain(v6);
      if (CFEqual(Domain, @"com.apple.security.cryptex"))
      {
        v3 = CFErrorGetCode(v6);
        Code = sub_100018B68(v3);
      }

      else
      {
        Code = -1;
      }
    }
  }

  else
  {
    Code = 0;
  }

  sub_100006B40(&err);
  return Code;
}

uint64_t sub_100018B68(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = 0;
      break;
    case 1:
      v2 = 17;
      break;
    case 2:
      v2 = 16;
      break;
    case 3:
      v2 = 94;
      break;
    case 4:
      v2 = 16;
      break;
    case 5:
      v2 = 80;
      break;
    case 6:
      v2 = 9;
      break;
    case 7:
      v2 = 9;
      break;
    case 8:
      v2 = 3;
      break;
    case 9:
      v2 = 22;
      break;
    case 10:
      v2 = 45;
      break;
    case 11:
      v2 = 22;
      break;
    case 12:
      v2 = 80;
      break;
    case 14:
      v2 = 28;
      break;
    case 15:
      v2 = 70;
      break;
    case 16:
      v2 = -1;
      break;
    case 17:
      v2 = 17;
      break;
    case 18:
      v2 = 17;
      break;
    case 19:
      v2 = 83;
      break;
    case 20:
      v2 = 13;
      break;
    case 21:
      v2 = 84;
      break;
    case 22:
      v2 = 22;
      break;
    case 23:
      v2 = 54;
      break;
    case 24:
      v2 = 12;
      break;
    case 25:
      v2 = 16;
      break;
    case 26:
      v2 = -1;
      break;
    case 27:
      v2 = 4;
      break;
    case 28:
      v2 = -1;
      break;
    case 29:
      v2 = 37;
      break;
    case 30:
      v2 = -1;
      break;
    case 31:
      v2 = -1;
      break;
    case 32:
      v2 = -1;
      break;
    case 33:
      v2 = -1;
      break;
    case 34:
      v2 = 80;
      break;
    case 35:
      v2 = 84;
      break;
    case 36:
      v2 = 80;
      break;
    case 37:
      v2 = 22;
      break;
    case 38:
      v2 = 80;
      break;
    default:
      v2 = -1;
      break;
  }

  return v2;
}

CFTypeRef sub_100018E24(const void *a1)
{
  if (a1)
  {
    return CFRetain(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018E70(uint64_t a1, int a2, char *const *a3)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = -1;
  v25 = a3;
  v24 = -1;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  __b[3] = off_100084100;
  sub_1000480E0();
  while (1)
  {
    v24 = getopt_long(v28, v25, *(v29 + 32), *(v29 + 40), &v23);
    if (v24 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v30[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v30, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001907CLL);
    }

    switch(v24)
    {
      case '4':
        if (strlen(optarg) != 4)
        {
          errx(64, "4cc must be 4 character long");
        }

        LODWORD(__b[1]) = sub_10004B478(optarg);
        __b[2] = optarg;
        break;
      case ':':
        errx(64, "missing argument for option: %s", *(*(v29 + 40) + 32 * v23));
      case '?':
        errx(64, "unknown option: %s", v27[optind - 1]);
      case 'c':
        __b[3] = sub_1000192F0(optarg);
        if (!__b[3])
        {
          errx(64, "invalid crypto chain: %s", optarg);
        }

        sub_1000483C8(1uLL, "crypto chain: %s", v9, v10, v11, v12, v13, v14, optarg);
        sub_1000483C8(1uLL, "digest length = %lu", v15, v16, v17, v18, v19, v20, **(*__b[3] + 32));
        break;
      case 'r':
        __b[4] = optarg;
        sub_1000483C8(1uLL, "root certificate: %s", v3, v4, v5, v6, v7, v8, optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100019244);
    }
  }

  v27 += optind;
  v28 -= optind;
  if (v28 < 1)
  {
    errx(64, "a path to an Image4 file must be provided");
  }

  __b[0] = *v27;
  v26 = sub_100019390(__b);
  return sysexit_np();
}

uint64_t (**sub_1000192F0(const char *a1))()
{
  for (i = 0; i < 0x10; ++i)
  {
    if (!strcmp(*(&off_10007A3A8 + 2 * i + 1), a1))
    {
      return &off_10007A3A8 + 2 * i;
    }
  }

  return 0;
}

uint64_t sub_100019390(const char **a1)
{
  v20 = a1;
  v19 = -1;
  v18 = -1;
  bzero(v24, 0x1C8uLL);
  v17 = 6;
  memset(__b, 0, sizeof(__b));
  i = 0;
  v14 = 0;
  v13 = 0;
  v13 = sub_1000411D0(*v20[3]);
  v18 = open(*v20, 0);
  v23 = v18;
  if (v18 < 0)
  {
    v19 = *__error();
    warn("open: %s", *v20);
  }

  else
  {
    v19 = sub_10004B524(v18, __b);
    if (v19)
    {
      warnc(v19, "failed to read file");
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v12 = 4;
        if (i >= 4)
        {
          break;
        }

        v14 = &unk_10007A4A8 + 24 * i;
        v17 = (*(v14 + 1))(__b[0], __b[1], v24);
        sub_1000483C8(2uLL, "%s -> %d", v1, v2, v3, v4, v5, v6, *(v14 + 2));
        if (!v17)
        {
          break;
        }
      }

      if (v17)
      {
        v19 = 79;
        warnx("file is not Image4");
      }

      else
      {
        if (!v20[4])
        {
          goto LABEL_32;
        }

        v11 = -1;
        memset(v10, 0, 0x38uLL);
        v9 = 0;
        v11 = open(v20[4], 0);
        v22 = v11;
        if (v11 < 0)
        {
          v19 = *__error();
          warn("open: %s", v20[4]);
        }

        else
        {
          v19 = sub_10004B524(v11, v10);
          if (v19)
          {
            warnc(v19, "failed to read: %s", v20[4]);
          }

          else
          {
            v9 = sub_10003AC40(v10, 0);
            v19 = sub_10003AE8C(v9);
            if (v19)
            {
              warnc(v19, "failed to parse root: %s", v20[4]);
            }

            else
            {
              v19 = sub_100041404(v13, &v9);
              if (v19)
              {
                warnc(v19, "failed to set root: %s", v20[4]);
              }
            }
          }
        }

        sub_10004C66C(v10);
        sub_10003BF44(&v9);
        v8 = v19 ? 2 : 0;
        sub_1000038DC(&v11);
        if (!v8)
        {
LABEL_32:
          if (((*v14 & 1) == 0 || (v19 = sub_100019820(v20, v24, v13)) == 0) && ((*v14 & 2) == 0 || (v19 = sub_10001A0D0(v20, v24, v13)) == 0))
          {
            v19 = 0;
          }
        }
      }
    }
  }

  sub_10004230C(&v13);
  sub_10004C66C(__b);
  v21 = v19;
  sub_1000038DC(&v18);
  return v21;
}

uint64_t sub_100019820(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a1;
  __src = a2;
  v51 = a3;
  v50 = 35;
  v46 = a1;
  v47 = 0;
  v48 = 0;
  bzero(v59, 0x1C8uLL);
  memcpy(v59, __src, sizeof(v59));
  v45[0] = 0;
  v45[1] = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v49 = sub_10004EBEC(__src, __src + 40, __src + 56);
  if (v49)
  {
    v50 = sub_10004C9A8(v49);
    v41 = sub_10004C9DC(v49);
    warnx("failed to parse manifest properties: [%d %s]", v49, v41);
  }

  else
  {
    v49 = sub_100051400(__src + 5, v45);
    if (v49)
    {
      v50 = sub_10004C9A8(v49);
      v40 = sub_10004C9DC(v49);
      warnx("failed to init sequence: [%d %s]", v49, v40);
    }

    else
    {
      v43 = sub_1000419D8(v51, &v46);
      v42 = *v43[4];
      v44 = 0;
      while (v50 == 35)
      {
        memset(v39, 0, sizeof(v39));
        v37 = 0;
        v38 = 0;
        bzero(v58, 0x1C8uLL);
        memcpy(v58, v59, sizeof(v58));
        v49 = sub_10005142C(v45, v39);
        if (v49)
        {
          if (v49 == 1)
          {
            v50 = 0;
          }

          else
          {
            v50 = sub_10004C9A8(v49);
            v31 = sub_10004C9DC(v49);
            warnx("failed to decode item at index %lu: [%d %s]", v44, v49, v31);
          }
        }

        else
        {
          v35 = v39[0];
          v36 = sub_10004B484(v39[0], &v37);
          sub_1000483C8(1uLL, "decoded: idx = %lu, tag = %llx, 4cc = %s", v3, v4, v5, v6, v7, v8, v44);
          if (!*(v53 + 16) || v35 == *(v53 + 8))
          {
            if (v35 == 1296125520)
            {
              sub_10004860C(0, 1uLL, "skipping %s", v9, v10, v11, v12, v13, v36);
            }

            else
            {
              HIDWORD(v47) = v35;
              v48 = v36;
              if ((v47 & 1) == 0)
              {
                memset(__b, 0, sizeof(__b));
                memset(__str, 0, sizeof(__str));
                if (v42 > 0x40)
                {
                  memset(&v55[23], 0, 0x50uLL);
                  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                  sub_10001ADE8(v55, *(*(v53 + 24) + 8), v42);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  JUMPOUT(0x100019C84);
                }

                sub_1000483C8(1uLL, "digest length = %lu", v14, v15, v16, v17, v18, v19, v42);
                if (v42 > 0x30)
                {
                  v50 = 45;
                  warnx("Image4 max digest length is 384 bits/64 bytes");
                  goto LABEL_37;
                }

                v49 = sub_1000579B0(__src, __b, v42, v43);
                if (v49)
                {
                  v50 = sub_10004C9A8(v49);
                  v34 = sub_10004C9DC(v49);
                  warnx("failed to compute manifest digest: [%d %s]", v49, v34);
                  goto LABEL_37;
                }

                sub_100049764(__str, __b, v42);
                sub_10004860C(__stdoutp, 0, "manifest digest = %s", v20, v21, v22, v23, v24, __str);
                if (qword_100084858)
                {
                  sub_10004860C(__stdoutp, 0, "tss server version = %s", v25, v26, v27, v28, v29, qword_100084858);
                }
              }

              v49 = sub_10004F1C0(v35, v58, sub_10001AE38, v43, *(v51 + 168));
              if (v49 == -1)
              {
                v50 = 80;
                v33 = sub_10004C9DC(-1);
                if (*(v51 + 160))
                {
                  warnx("manifest failed trust evaluation: ct error = %#x: [%d %s]", *(*(v51 + 160) + 32), v49, v33);
                }

                else
                {
                  warnx("manifest failed trust evaluation: ct error = %#x: [%d %s]", -1431655766, v49, v33);
                }

                goto LABEL_37;
              }

              if (v49)
              {
                if (v49 == 1)
                {
                  memset(&v54[16], 0, 0x50uLL);
                  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                  sub_100003120(v54, v36);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  JUMPOUT(0x100019F1CLL);
                }

                v32 = sub_10004C9DC(v49);
                warnx("Img4DecodePerformTrustEvaluation: [%d %s]", v49, v32);
                goto LABEL_37;
              }

              LOWORD(v47) = 1;
            }
          }

          else
          {
            sub_10004860C(0, 1uLL, "object not %s; skipping", v9, v10, v11, v12, v13, *(v53 + 16));
          }
        }

        ++v44;
      }

      if ((v47 & 1) == 0)
      {
        v50 = 2;
        warnx("manifest does not contain object: %s", *(v53 + 16));
      }
    }
  }

LABEL_37:
  sub_10004212C(v51, v43);
  return v50;
}

uint64_t sub_10001A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v80 = a2;
  v79 = a3;
  v78 = 35;
  v77 = 6;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  memset(__b, 0, sizeof(__b));
  memset(__str, 0, sizeof(__str));
  v67 = sub_1000419D8(v79, 0);
  v66 = **(*(v79 + 32) + 32);
  if (v66 > 0x30)
  {
    memset(&v98[31], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_10001ADE8(v98, *(*(v81 + 24) + 8), v66);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001A2A8);
  }

  v77 = sub_10004ED98(v80, &v76);
  if (v77)
  {
    v78 = sub_10004C9A8(v77);
    v65 = sub_10004C9DC(v77);
    warnx("failed to get payload type: [%d %s]", v77, v65);
  }

  else
  {
    v73 = sub_10004B484(v76, &v74);
    sub_1000483C8(2uLL, "%#x -> %s", v3, v4, v5, v6, v7, v8, v76);
    if (!*(v81 + 16) || v76 == *(v81 + 8))
    {
      v77 = sub_10004EDF8(v80, &v71);
      if (v77)
      {
        v78 = sub_10004C9A8(v77);
        v64 = sub_10004C9DC(v77);
        warnx("failed to get payload version: [%d %s]", v77, v64);
      }

      else
      {
        sub_1000483C8(2uLL, "%s version length = %lu", v9, v10, v11, v12, v13, v14, v73);
        v62 = v72 + 1;
        if (_dispatch_is_multithreaded())
        {
          v97 = 1;
          v96 = v62;
          v95 = 0;
          while (1)
          {
            v95 = malloc_type_calloc(v97, v96, 0x8A375538uLL);
            if (v95)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v63 = v95;
        }

        else
        {
          count = 1;
          size = v62;
          v63 = malloc_type_calloc(1uLL, v62, 0x8709206FuLL);
          v94 = "known-constant allocation";
          v93 = v63;
          v92 = v62;
          if (!v63)
          {
            v91 = 0;
            memset(&v101[40], 0, 0x50uLL);
            v89 = 0;
            v88 = 3;
            v87 = &_os_log_default;
            v86 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v88 &= ~1u;
            }

            if (v88)
            {
              v58 = v94;
              v59 = v92;
              v15 = __error();
              v16 = strerror(*v15);
              sub_1000031B0(v101, v58, v59, v16);
              v85 = _os_log_send_and_compose_impl();
              v89 = v85;
            }

            v84 = v89;
            v90 = v89;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x10001A5C8);
          }
        }

        v70 = v63;
        __strlcpy_chk();
        sub_1000483C8(2uLL, "%s version = %s", v17, v18, v19, v20, v21, v22, v73);
        v77 = sub_10004ED54(v80, &v68);
        if (v77)
        {
          v78 = sub_10004C9A8(v77);
          v61 = sub_10004C9DC(v77);
          warnx("failed to get payload: [%d %s]", v77, v61);
        }

        else
        {
          sub_1000483C8(2uLL, "%s length = %lu", v23, v24, v25, v26, v27, v28, v73);
          sub_1000578B0(v80, __b, v66, **(v81 + 24));
          v77 = v29;
          if (v29)
          {
            v78 = sub_10004C9A8(v77);
            v60 = sub_10004C9DC(v77);
            warnx("failed to compute payload hash: [%d %s]", v77, v60);
          }

          else
          {
            sub_100049764(__str, __b, v66);
            sub_1000483C8(2uLL, "%s digest = %s", v30, v31, v32, v33, v34, v35, v73);
            sub_10004860C(__stdoutp, 0, "payload digest = %s", v36, v37, v38, v39, v40, __str);
            sub_10004860C(__stdoutp, 0, "    4cc = %s", v41, v42, v43, v44, v45, v73);
            sub_10004860C(__stdoutp, 0, "    version = %s", v46, v47, v48, v49, v50, v70);
            sub_10004860C(__stdoutp, 0, "    length = %lu", v51, v52, v53, v54, v55, v69);
            v78 = 0;
          }
        }
      }
    }

    else
    {
      v78 = 79;
      warnx("payload not of type: %s", *(v81 + 16));
    }
  }

  sub_10004212C(v79, v67);
  v57 = v78;
  sub_100002DE4(&v70);
  return v57;
}

uint64_t sub_10001A898(const UInt8 *a1, unint64_t a2, uint64_t a3)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  v45 = 6;
  v44 = 0;
  v43 = a2;
  v42 = 0;
  format = 0;
  v40 = 0;
  error = 0;
  v38 = 0;
  Value = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  i = 0;
  v32 = 0;
  if (a2 <= 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = CFDataCreate(0, v48, v43);
    sub_1000173C8(v44, "CFData");
    v42 = CFPropertyListCreateWithData(0, v44, v40, &format, &error);
    if (v42)
    {
      v29 = 0;
      v55 = v42;
      v54 = &CFDictionaryGetTypeID;
      v24 = CFGetTypeID(v42);
      if (v24 == (v54)())
      {
        v29 = v42;
      }

      v38 = v29;
      if (v29)
      {
        v42 = 0;
        Value = CFDictionaryGetValue(v38, @"ApImg4Ticket");
        if (Value)
        {
          v28 = 0;
          v53 = Value;
          v52 = &CFDataGetTypeID;
          v23 = CFGetTypeID(Value);
          if (v23 == (v52)())
          {
            v28 = Value;
          }

          v36 = v28;
          if (v28)
          {
            Value = 0;
            for (i = 0; i < 4; ++i)
            {
              v32 = (&unk_10007A4A8 + 24 * i);
              if (v32[1] != sub_10001A898)
              {
                BytePtr = CFDataGetBytePtr(v36);
                Length = CFDataGetLength(v36);
                if (Length < 0)
                {
                  _os_crash();
                  __break(1u);
                  JUMPOUT(0x10001AC28);
                }

                v26 = Length;
                sub_1000483C8(2uLL, "ApImg4Ticket length = %lu", v9, v10, v11, v12, v13, v14, Length);
                v45 = v32[1](BytePtr, v26, v46);
                sub_1000483C8(2uLL, "%s -> %d", v15, v16, v17, v18, v19, v20, v32[2]);
                if (!v45)
                {
                  break;
                }
              }
            }

            if (v45)
            {
              v45 = 3;
              warnx("ApImg4Ticket is not Image4 data");
            }

            else
            {
              qword_100084850 = CFRetain(v36);
              v35 = CFDictionaryGetValue(v38, @"@ServerVersion");
              if (v35)
              {
                v25 = 0;
                v51 = v35;
                v50 = &CFStringGetTypeID;
                v22 = CFGetTypeID(v35);
                if (v22 == (v50)())
                {
                  v25 = v35;
                }

                v34 = v25;
                if (v25)
                {
                  qword_100084858 = sub_100018014(v34);
                }
              }
            }
          }

          else
          {
            v45 = 3;
            warnx("ApImg4Ticket is not a data object");
          }
        }

        else
        {
          v45 = 3;
          warnx("plist has no ApImg4Ticket");
        }
      }

      else
      {
        v45 = 3;
        warnx("plist root must be a dictionary");
      }
    }

    else
    {
      v31 = 0;
      v30 = 0;
      v31 = CFErrorCopyDescription(error);
      sub_1000173C8(v31, "CFString");
      v30 = sub_100018014(v31);
      v45 = 3;
      sub_1000483C8(1uLL, "could not decode as plist: %s", v3, v4, v5, v6, v7, v8, v30);
      sub_100002DE4(&v30);
      sub_100006B40(&v31);
    }
  }

  else
  {
    v45 = 7;
  }

  v49 = v45;
  sub_100006B40(&v38);
  sub_100006B40(&error);
  sub_100006B40(&v42);
  sub_100006B40(&v44);
  return v49;
}

uint64_t sub_10001ADE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_10001AE38(unsigned int a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    return sub_10001AFAC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_10001AEB0(a1, a2, 0, a4);
  }
}

uint64_t sub_10001AEB0(unsigned int a1, uint64_t *a2, int a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v27 = a4;
  v29 = a4;
  v28 = a4;
  v26 = *(a4 + 40);
  v20 = *(v26 + 176);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  if ((*(v20 + 8) & 1) == 0)
  {
    v17 = sub_10004B484(v24, &v18);
    v16 = sub_10001B0CC(v23, v24, v4, v5, v6, v7, v8, v9);
    sub_10004860C(__stdoutp, 0, "    %s = %s", v10, v11, v12, v13, v14, v17);
  }

  v25 = 0;
  sub_100002DE4(&v16);
  return v25;
}

uint64_t sub_10001AFAC(unsigned int a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v30 = a4;
  v32 = a4;
  v31 = a4;
  v29 = *(a4 + 40);
  v24 = *(v29 + 176);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  if ((*(v24 + 9) & 1) == 0)
  {
    sub_10004860C(__stdoutp, 0, "    %s =", a4, a5, a6, a7, a8, *(v24 + 16));
    *(v24 + 9) = 1;
  }

  v21 = sub_10004B484(v28, &v22);
  v20 = sub_10001B0CC(v27, v28, v8, v9, v10, v11, v12, v13);
  sub_10004860C(__stdoutp, 0, "        %s = %s", v14, v15, v16, v17, v18, v21);
  sub_100002DE4(&v20);
  return 0;
}

char *sub_10001B0CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v26 = 0;
  v25 = -1;
  v24 = 6;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = a1[2];
  switch(v18)
  {
    case 1:
      v24 = sub_100057AFC(v28, v27, &v23);
      if (!v24)
      {
        v25 = asprintf(&v26, "%#x", v23 & 1);
        v64 = v25;
        if (v25 < 0)
        {
          v63 = 0;
          memset(&v68[24], 0, 0x50uLL);
          v61 = 0;
          v60 = 3;
          oslog = &_os_log_default;
          type = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v60 &= ~1u;
          }

          if (v60)
          {
            v8 = __error();
            v9 = strerror(*v8);
            sub_100003120(v68, v9);
            v57 = _os_log_send_and_compose_impl();
            v61 = v57;
          }

          v56 = v61;
          v62 = v61;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001B2B4);
        }
      }

      break;
    case 2:
      v24 = sub_100057A98(v28, v27, &v22, a4, a5, a6, a7, a8);
      if (!v24)
      {
        v25 = asprintf(&v26, "%#llx", v22);
        v55 = v25;
        if (v25 < 0)
        {
          v54 = 0;
          memset(&v67[16], 0, 0x50uLL);
          v52 = 0;
          v51 = 3;
          v50 = &_os_log_default;
          v49 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v51 &= ~1u;
          }

          if (v51)
          {
            v10 = __error();
            v11 = strerror(*v10);
            sub_100003120(v67, v11);
            v48 = _os_log_send_and_compose_impl();
            v52 = v48;
          }

          v47 = v52;
          v53 = v52;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001B41CLL);
        }
      }

      break;
    case 4:
      v24 = sub_10004EE3C(v28, v27, &v21, &v20);
      if (!v24)
      {
        v19 = 0;
        sub_100049834(&v19, v21, v20);
        v25 = asprintf(&v26, "%s", v19);
        v46 = v25;
        if (v25 < 0)
        {
          v45 = 0;
          memset(&v66[16], 0, 0x50uLL);
          v43 = 0;
          v42 = 3;
          v41 = &_os_log_default;
          v40 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v42 &= ~1u;
          }

          if (v42)
          {
            v12 = __error();
            v13 = strerror(*v12);
            sub_100003120(v66, v13);
            v39 = _os_log_send_and_compose_impl();
            v43 = v39;
          }

          v38 = v43;
          v44 = v43;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001B5A0);
        }

        sub_100002DE4(&v19);
      }

      break;
    default:
      v14 = asprintf(&v26, "[unsupported type %#llx]", v28[2]);
      v25 = v14;
      v37 = v14;
      if (v14 < 0)
      {
        v36 = 0;
        memset(&v65[16], 0, 0x50uLL);
        v34 = 0;
        v33 = 3;
        v32 = &_os_log_default;
        v31 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v33 &= ~1u;
        }

        if (v33)
        {
          v15 = __error();
          v16 = strerror(*v15);
          sub_100003120(v65, v16);
          v30 = _os_log_send_and_compose_impl();
          v34 = v30;
        }

        v29 = v34;
        v35 = v34;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10001B6F4);
      }

      break;
  }

  return v26;
}

void *sub_10001B738()
{
  predicate = &unk_100084860;
  block = 0;
  objc_storeStrong(&block, &stru_10007A528);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return &unk_100084868;
}

uint64_t sub_10001B814(uint64_t a1, int a2, char *const *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  v14 = a3;
  v13 = -1;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  sub_1000480E0();
  while (1)
  {
    v13 = getopt_long(v17, v14, *(v18 + 32), *(v18 + 40), &v12);
    if (v13 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v19[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v19, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001B9F0);
    }

    switch(v13)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v18 + 40) + 32 * v12));
      case '?':
        errx(64, "unknown option: %s", v16[optind - 1]);
      case 'f':
        if (strcmp(optarg, "plist") && strcmp(optarg, "json"))
        {
          errx(64, "invalid output format: %s", optarg);
        }

        v11 = optarg;
        sub_1000483C8(1uLL, "output format: %s", v3, v4, v5, v6, v7, v8, optarg);
        break;
      case 'l':
        v10 |= 1uLL;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10001BB30);
    }
  }

  v16 += optind;
  v17 -= optind;
  v15 = sub_10001BBB0(&v10);
  return sysexit_np();
}

uint64_t sub_10001BBB0(void *a1)
{
  v3 = sub_100048090();
  v2 = "";
  if (v3[4])
  {
    return sub_10001BE3C(a1, v3[4]);
  }

  else
  {
    if (*a1)
    {
      v2 = "lossy ";
    }

    v4 = cryptex_copy_list_4MSM();
    if (v4)
    {
      warnc(v4, "failed to copy %scryptex list", v2);
    }

    return v4;
  }
}

uint64_t sub_10001BE3C(uint64_t a1, void *a2)
{
  v25 = a1;
  v24[1] = a2;
  v24[0] = 0;
  v23 = -1;
  v22 = 0;
  v21 = 0;
  count = 0;
  v2 = a2[1];
  if (cryptex_remote_service_copy_installed2())
  {
    count = cryptex_remote_array_get_count();
    if (!count)
    {
      goto LABEL_23;
    }

    v21 = malloc_type_malloc(32 * count, 0x50040BBB33FCDuLL);
    if (!v21)
    {
      v23 = *__error();
      warn("malloc");
      goto LABEL_24;
    }

    cryptex_remote_array_apply();
    v23 = sub_100049044(v21, count, *(v25 + 8), v7, v8, v9, v10, v11);
    if (v23)
    {
      warnc(v23, "failed to print cryptex information");
    }

    else
    {
LABEL_23:
      v23 = 0;
    }
  }

  else
  {
    v19 = sub_100048090();
    v15 = 1;
    if (v19[1] <= 1uLL)
    {
      v15 = v19[2] > 1uLL;
    }

    if (v15)
    {
      v3 = 999;
    }

    else
    {
      v3 = 3;
    }

    v18 = v3;
    v14 = 1;
    if (v19[1] <= 1uLL)
    {
      v14 = v19[2] > 1uLL;
    }

    v4 = 2000;
    if (!v14)
    {
      v4 = 200;
    }

    v17[1] = v4;
    v26 = "unknown error";
    v16 = strdup("unknown error");
    v36 = "known-constant allocation";
    v35 = v16;
    v34 = strlen("unknown error");
    if (!v16)
    {
      v33 = 0;
      memset(&v37[40], 0, 0x50uLL);
      v31 = 0;
      v30 = 3;
      v29 = &_os_log_default;
      v28 = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v30 &= ~1u;
      }

      if (v30)
      {
        v5 = __error();
        v6 = strerror(*v5);
        sub_1000031B0(v37, v36, v34, v6);
        v31 = _os_log_send_and_compose_impl();
      }

      v27 = v31;
      v32 = v31;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001C0E4);
    }

    v17[0] = v16;
    warnx("failed to copy installed cryptexes from remote device\n%s", v16);
    sub_100002DE4(v17);
    v23 = sub_100018A78(v24[0]);
  }

LABEL_24:
  if (v21)
  {
    free(v21);
  }

  v13 = v23;
  sub_1000030D0(&v22);
  sub_100006B40(v24);
  return v13;
}

uint64_t sub_10001C2A4(uint64_t a1, uint64_t a2)
{
  *&v5 = cryptex_remote_cryptex_get_identifier();
  *(&v5 + 1) = cryptex_remote_cryptex_get_version_string();
  v2 = (*(a1 + 32) + 32 * a2);
  *v2 = v5;
  v2[1] = 0uLL;
  return 1;
}

char *sub_10001C334(__n128 *a1, uint64_t a2)
{
  v5 = malloc_type_calloc(1uLL, 0x98uLL, 0x8709206FuLL);
  if (!v5)
  {
    memset(&v8[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v2 = __error();
    v3 = strerror(*v2);
    sub_1000031B0(v8, "known-constant allocation", 152, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001C4E8);
  }

  *(v5 + 4) = a2;
  *(v5 + 5) = 0;
  sub_10004C42C((v5 + 56), a1);
  *(v5 + 14) = v5 + 56;
  sub_1000496F4(v5, "com.apple.security.cryptexctl", "mach-object");
  return v5;
}

uint64_t sub_10001C58C(uint64_t a1)
{
  v29 = a1;
  v28 = -1;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  memset(v24, 0, 32);
  v27 = sub_10004C5C0(*(a1 + 112), "rb", 0);
  v26 = fread(&v25, 4uLL, 1uLL, v27);
  v28 = sub_10004887C("mach-o magic", v27, v26, 88, *(v29 + 16));
  if (v28 && v28 != 84)
  {
    v22 = *v29;
    if (!*v29)
    {
      v22 = "[anonymous]";
    }

    v21 = *__error();
    v20 = *(v29 + 16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100009614(v34, v22, v28);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: failed to read magic number: %{darwin.errno}d", v34, 0x12u);
    }

    *__error() = v21;
  }

  else
  {
    if (v25 == -1095041334)
    {
LABEL_22:
      v28 = 79;
      v19 = *v29;
      if (!*v29)
      {
        v19 = "[anonymous]";
      }

      v18 = *__error();
      v17 = *(v29 + 16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100009E38(v33, v19, v25, v28);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: fat file: %#x: %{darwin.errno}d", v33, 0x18u);
      }

      *__error() = v18;
      goto LABEL_64;
    }

    if (v25 != -1091568946)
    {
      switch(v25)
      {
        case 0xBFBAFECA:
        case 0xCAFEBABF:
        case 0xCAFEBABE:
          goto LABEL_22;
        case 0xCEFAEDFE:
        case 0xCEFAEFBE:
        case 0xCFFAEDFE:
          *(v29 + 32) |= 1uLL;
          v25 = sub_10000E154(v25);
          break;
        case 0xFEEDFACF:
        case 0xFEEDFACE:
          break;
        default:
          v28 = 92;
          v16 = *v29;
          if (!*v29)
          {
            v16 = "[anonymous]";
          }

          v15 = *__error();
          oslog = *(v29 + 16);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_100009E38(v32, v16, v25, v28);
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: not a mach binary: %#x: %{darwin.errno}d", v32, 0x18u);
          }

          *__error() = v15;
          goto LABEL_64;
      }
    }

    if (v25 == -17958193 || v25 == -1091568946)
    {
      *(v29 + 32) |= 2uLL;
      v23 = 32;
      if (v25 == -1091568946)
      {
        *(v29 + 32) |= 4uLL;
        *(v29 + 48) = 2;
      }
    }

    else
    {
      v23 = 28;
    }

    rewind(v27);
    v26 = fread(v24, v23, 1uLL, v27);
    v28 = sub_10004887C("mach-o header", v27, v26, 88, *(v29 + 16));
    if (!v28)
    {
      if (*(v29 + 32))
      {
        if ((*(v29 + 32) & 2) != 0)
        {
          v1 = *&v24[1];
          if ((v24[1] & 0x80000000) != 0 || (v24[2] & 0x80000000) != 0)
          {
            v28 = 84;
            goto LABEL_64;
          }

          v24[0] = sub_10000E154(v24[0]);
          v24[1] = sub_10000E154(v1);
          v24[2] = sub_10000E154(HIDWORD(v1));
          v24[3] = sub_10000E154(v24[3]);
          v24[4] = sub_10000E154(v24[4]);
          v24[5] = sub_10000E154(v24[5]);
          v24[6] = sub_10000E154(v24[6]);
          v2 = v29;
          *(v29 + 120) = *v24;
          *(v2 + 136) = *&v24[4];
        }

        else
        {
          v3 = *&v24[1];
          if ((v24[1] & 0x80000000) != 0 || (v24[2] & 0x80000000) != 0)
          {
            v28 = 84;
            goto LABEL_64;
          }

          v24[0] = sub_10000E154(v24[0]);
          v24[1] = sub_10000E154(v3);
          v24[2] = sub_10000E154(HIDWORD(v3));
          v24[3] = sub_10000E154(v24[3]);
          v24[4] = sub_10000E154(v24[4]);
          v24[5] = sub_10000E154(v24[5]);
          v24[6] = sub_10000E154(v24[6]);
          v4 = v29;
          *(v29 + 120) = *v24;
          *(v4 + 132) = *&v24[3];
        }
      }

      else
      {
        v5 = v29;
        if ((*(v29 + 32) & 2) != 0)
        {
          *(v29 + 120) = *v24;
          *(v5 + 136) = *&v24[4];
        }

        else
        {
          *(v29 + 120) = *v24;
          *(v5 + 132) = *&v24[3];
        }
      }

      if ((*(v29 + 32) & 2) != 0)
      {
        v13 = *v29;
        if (!*v29)
        {
          v13 = "[anonymous]";
        }

        v12 = *__error();
        v11 = *(v29 + 16);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_10001D174(v31, v13, *(v29 + 120), *(v29 + 124), *(v29 + 128), *(v29 + 132), *(v29 + 136), *(v29 + 140), *(v29 + 144));
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: initialized header:\n    magic = %#x\n    cpu type = %#x\n    cpu subtype = %#x\n    file type = %#x\n    ncmds = %u\n    sizeofcmds = %u\n    flags = %#x", v31, 0x36u);
        }

        *__error() = v12;
      }

      else
      {
        v10 = *v29;
        if (!*v29)
        {
          v10 = "[anonymous]";
        }

        v9 = *__error();
        v8 = *(v29 + 16);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_10001D174(v30, v10, *(v29 + 120), *(v29 + 124), *(v29 + 128), *(v29 + 132), *(v29 + 136), *(v29 + 140), *(v29 + 144));
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s: initialized header:\n    magic = %#x\n    cpu type = %#x\n    cpu subtype = %#x\n    file type = %#x\n    ncmds = %u\n    sizeofcmds = %u\n    flags = %#x", v30, 0x36u);
        }

        *__error() = v9;
      }

      v28 = 0;
    }
  }

LABEL_64:
  v7 = v28;
  sub_100010FB4(&v27);
  return v7;
}