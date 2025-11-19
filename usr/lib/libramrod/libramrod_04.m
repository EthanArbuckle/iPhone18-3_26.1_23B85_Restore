uint64_t sub_451F4(const char *a1, uint64_t a2, CFStringRef *a3, _BYTE *a4)
{
  if (!strcmp(a1, "unit_test_baseline"))
  {
    if (a2 == 2)
    {
      result = 0;
      *a4 = 0;
    }

    else if (a2 == 1)
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"sample_test #%d: invalid test number", a2);
      return 2;
    }
  }

  else
  {
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"sample_test #%d: invalid category: %s", a2, a1);
    return 1;
  }

  return result;
}

void *sub_452C8(size_t __size)
{
  __memptr = 0;
  if (posix_memalign(&__memptr, 0x10uLL, __size))
  {
    ramrod_log_msg("Failed to allocate aligned crypto buffer\n", v2, v3, v4, v5, v6, v7, v8, v10);
  }

  else
  {
    bzero(__memptr, __size);
  }

  return __memptr;
}

uint64_t unit_test_checkpoint(uint64_t a1, uint64_t a2, CFStringRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if ((byte_1C6BE8 & 1) == 0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : pre_fork_delay...\n", a2, a3, a4, a5, a6, a7, a8, "unit_test_checkpoint");
    sleep(5u);
    ramrod_log_msg("\nUNIT TEST(%s) : ...pre_fork_delay\n", v11, v12, v13, v14, v15, v16, v17, "unit_test_checkpoint");
    byte_1C6BE8 = 1;
  }

  if (!sub_45F1C(a2))
  {
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"checkpoint test #%d: invalid", a2);
    v60 = 1;
    goto LABEL_124;
  }

  v182 = v8;
  byte_1C6C14 = 0;
  byte_1C6C15 = 0;
  byte_1C6C16 = 0;
  qword_1C6C18 = 0;
  dword_1C6BFC = 0;
  if (dword_1C6BF8 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  dword_1C6C20 = v18;
  v19 = &qword_1ADB20[9 * dword_1C6BEC];
  qword_1C6BF0 = *v19;
  sub_4601C();
  v27 = v19[1];
  if (v27 && *(v27 + 8))
  {
    byte_1C6C16 = 1;
  }

  qword_1C6C18 = v19[8];
  ramrod_log_msg("\nUNIT TEST(%s) : ------------------------------------------------------------------------------------------------------------------------\n", v20, v21, v22, v23, v24, v25, v26, "unit_test_setup_config");
  ramrod_log_msg("\nUNIT TEST(%s) : #%d: %s\n", v28, v29, v30, v31, v32, v33, v34, "unit_test_setup_config");
  ramrod_log_msg("\nUNIT TEST(%s) : ------------------------------------------------------------------------------------------------------------------------\n", v35, v36, v37, v38, v39, v40, v41, "unit_test_setup_config");
  v42 = &qword_1ADB20[9 * dword_1C6BEC];
  qword_1C6BF0 = *v42;
  v43 = sub_4601C();
  sub_460CC(v43, v44, v45, v46, v47, v48, v49, v50);
  sub_461B4(25, @"AAAAAAAA-1111-BBBB-2222-CCCCCCCCCCCC");
  v58 = dword_1C6BF8;
  if (dword_1C6BF8 >= 6)
  {
    sub_461B4(4, @"true");
    v58 = dword_1C6BF8;
  }

  if (v58 != 1)
  {
    if (v58 == 3)
    {
      v59 = @"true";
      goto LABEL_19;
    }

    if (v58 != 2)
    {
      goto LABEL_20;
    }

    sub_461B4(2, @"upgrade");
  }

  v59 = @"false";
LABEL_19:
  sub_461B4(1, v59);
LABEL_20:
  v61 = *(v42 + 10);
  if (dword_1C6BFC < v61)
  {
    while (1)
    {
      if (byte_1C6C00 == 1)
      {
        sub_461B4(32, @"true");
      }

      v62 = v42[2];
      if (v62 && (readwrite_ramdisk = v62(), readwrite_ramdisk) || (readwrite_ramdisk = ramrod_create_readwrite_ramdisk(), readwrite_ramdisk))
      {
        v60 = readwrite_ramdisk;
        goto LABEL_117;
      }

      v60 = (v42[3])(a3, v42[7]);
      if (!v60)
      {
        *&v216 = 0;
        LODWORD(cf[0]) = 0;
        if (dword_1C6C20 == 1)
        {
          v64 = "restore";
        }

        else
        {
          v64 = "ota";
        }

        asprintf(&v216, "%s/%s/%s_%s.%s", "/mnt5", "checkpoint", v64, "monitor", "txt");
        if (v216)
        {
          v65 = open(v216, 0);
          if (v65 == -1)
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s failed to open %s\n", v66, v67, v68, v69, v70, v71, v72, "utest_verify_readwrite_ramdisk");
            LODWORD(cf[0]) = 65;
          }

          else
          {
            v73 = v65;
            sub_4E014(v216, v65, 1, cf);
            close(v73);
          }

          free(v216);
        }

        if ((byte_1C6C16 & 1) == 0)
        {
          if (dword_1C6C20 == 1)
          {
            v74 = "restore";
          }

          else
          {
            v74 = "ota";
          }

          v75 = "patch";
          if (dword_1C6BF8 == 1)
          {
            v75 = "perform";
          }

          asprintf(&v216, "%s/%s/%s_%s.%s", "/mnt5", "checkpoint", v74, v75, "txt");
          if (v216)
          {
            v76 = open(v216, 0);
            if (v76 == -1)
            {
              ramrod_log_msg("\nUNIT TEST(%s) : %s failed to open %s\n", v77, v78, v79, v80, v81, v82, v83, "utest_verify_readwrite_ramdisk");
              LODWORD(cf[0]) = 65;
            }

            else
            {
              v84 = v76;
              sub_4E014(v216, v76, 0, cf);
              close(v84);
            }

            free(v216);
          }
        }

        v60 = LODWORD(cf[0]);
      }

      ramrod_unmount_filesystem("/mnt5");
      ramrod_eject_readwrite_ramdisk();
      if (v60)
      {
        goto LABEL_117;
      }

      cf[0] = 0;
      if (dword_1C6C20 == 1)
      {
        v86 = &off_1A9BC8;
      }

      else
      {
        v85 = @"checkpoint-nvram-unknown";
        if (dword_1C6C20 != 2)
        {
          goto LABEL_53;
        }

        v86 = &off_1A9CD0;
      }

      v85 = *(v86 + 3);
LABEL_53:
      v87 = ramrod_copy_NVRAM_variable(v85, cf);
      if (v87)
      {
        v88 = v87;
        v89 = CFGetTypeID(v87);
        if (v89 == CFDataGetTypeID())
        {
          v97 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v88, 0x8000100u);
          if (v97)
          {
            v105 = v97;
            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v238 = 0u;
            v239 = 0u;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            v227 = 0u;
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            CFStringGetCString(v97, &v216, 512, 0x8000100u);
            if (CFStringCompare(v105, @"success", 0) && CFStringCompare(v105, @"success_on_reboot_retry", 0) && CFStringCompare(v105, @"back_to_original_os", 0) && CFStringCompare(v105, @"back_to_original_os_on_reboot_retry", 0) && CFStringCompare(v105, @"fail_forward", 0) && CFStringCompare(v105, @"fail_forward_on_reboot_retry", 0) && CFStringCompare(v105, @"recovery_mode", 0))
            {
              v113 = CFStringCompare(v105, @"recovery_mode_on_reboot_retry", 0);
              v114 = v113 != kCFCompareEqualTo;
              if (v113)
              {
                v115 = "\nUNIT TEST(%s) : %s outcome (%s) continuing\n";
              }

              else
              {
                v115 = "\nUNIT TEST(%s) : %s outcome (%s) triggering end of test\n";
              }
            }

            else
            {
              v114 = 0;
              v115 = "\nUNIT TEST(%s) : %s outcome (%s) triggering end of test\n";
            }

            ramrod_log_msg(v115, v106, v107, v108, v109, v110, v111, v112, "nvram_is_stop_outcome");
            CFRelease(v105);
            goto LABEL_72;
          }

          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] unable to create string from CFData\n", v98, v99, v100, v101, v102, v103, v104, "nvram_is_stop_outcome");
        }

        else
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] is not CFData type\n", v90, v91, v92, v93, v94, v95, v96, "nvram_is_stop_outcome");
        }

        v114 = 1;
LABEL_72:
        CFRelease(v88);
        goto LABEL_73;
      }

      v114 = 1;
LABEL_73:
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v114)
      {
        v116 = dword_1C6BFC + 1;
        dword_1C6BFC = v116;
        if (v116 <= v61)
        {
          sub_4601C();
          ramrod_log_msg("\nUNIT TEST(%s) : %s >>> Just advanced the test phase [%s] <<<\n", v117, v118, v119, v120, v121, v122, v123, "utest_update_test_phase");
          v116 = dword_1C6BFC;
        }

        if (v116 < v61)
        {
          if ((dword_1C6BF8 - 6) > 2)
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s TEST ANOMALY: set reboot-retry control when not testing retry mode\n", v51, v52, v53, v54, v55, v56, v57, "utest_set_retry_boot_control");
          }

          else if (byte_1C6C74 == 1)
          {
            sub_461B4(2, @"recover");
            sub_461B4(1, @"true");
            byte_1C6C74 = 0;
          }

          else
          {
            sub_461B4(1, @"false");
            byte_1C6C74 = 1;
          }
        }

        if (dword_1C6BFC < v61)
        {
          continue;
        }
      }

      break;
    }
  }

  v124 = v42[6];
  if (!v124)
  {
    v60 = 0;
LABEL_96:
    v8 = v182;
    goto LABEL_124;
  }

  v125 = *(v124 + 8 * dword_1C6BF8);
  v8 = v182;
  if (!v125)
  {
LABEL_99:
    v60 = 0;
    goto LABEL_124;
  }

  for (i = *v125; i != 3 && *(v125 + 1); i = v127)
  {
    v127 = v125[4];
    v125 += 4;
  }

  v128 = *(v125 + 1);
  if (!v128)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s NO EXPECTED FINAL OUTCOME\n", v51, v52, v53, v54, v55, v56, v57, "unit_test_checkpoint");
    goto LABEL_99;
  }

  v183 = 0;
  if (dword_1C6C20 == 1)
  {
    v129 = &off_1A9BC8;
    goto LABEL_101;
  }

  if (dword_1C6C20 == 2)
  {
    v129 = &off_1A9CD0;
LABEL_101:
    v130 = *(v129 + 3);
    goto LABEL_103;
  }

  v130 = @"checkpoint-nvram-unknown";
LABEL_103:
  v131 = ramrod_copy_NVRAM_variable(v130, &v183);
  if (v131)
  {
    v132 = v131;
    v133 = CFGetTypeID(v131);
    if (v133 == CFDataGetTypeID())
    {
      v141 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v132, 0x8000100u);
      if (v141)
      {
        v149 = v141;
        v246 = 0u;
        v247 = 0u;
        v244 = 0u;
        v245 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        *cf = 0u;
        v185 = 0u;
        CFStringGetCString(v128, &v216, 512, 0x8000100u);
        CFStringGetCString(v149, cf, 512, 0x8000100u);
        if (!strncmp(cf, &v216, 0x200uLL))
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s FINAL OUTCOME: %s\n", v150, v151, v152, v153, v154, v155, v156, "nvram_check_final_outcome");
          v60 = 0;
        }

        else
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s FINAL OUTCOME: %s DOES NOT MATCH EXPECTED %s\n", v150, v151, v152, v153, v154, v155, v156, "nvram_check_final_outcome");
          v60 = 70;
        }

        CFRelease(v149);
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] unable to create string from CFData\n", v142, v143, v144, v145, v146, v147, v148, "nvram_check_final_outcome");
        v60 = 0;
      }
    }

    else
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [outcome] is not CFData type\n", v134, v135, v136, v137, v138, v139, v140, "nvram_check_final_outcome");
      v60 = 70;
    }

    CFRelease(v132);
  }

  else
  {
    v60 = 0;
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (!v60)
  {
    goto LABEL_96;
  }

LABEL_117:
  if (dword_1C6C20 == 1)
  {
    v157 = &off_1A9BC8;
  }

  else
  {
    if (dword_1C6C20 != 2)
    {
      v158 = @"checkpoint-nvram-unknown";
      v8 = v182;
      goto LABEL_123;
    }

    v157 = &off_1A9CD0;
  }

  v8 = v182;
  v158 = *v157;
LABEL_123:
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  *cf = 0u;
  v185 = 0u;
  CFStringGetCString(v158, &v216, 512, 0x8000100u);
  CFStringGetCString(@"BOOM", cf, 512, 0x8000100u);
  ramrod_set_NVRAM_variable_sync(v158, @"BOOM", 0, 1);
  ramrod_log_msg("\nUNIT TEST(%s) : %s NVRAM set %s=%s (%s) [sync=true]\n", v159, v160, v161, v162, v163, v164, v165, "nvram_set_test_fail");
LABEL_124:
  v166 = sub_45F1C(a2 + 1);
  if (v166)
  {
    *v8 = 1;
  }

  else
  {
    *v8 = 0;
    if (!v60)
    {
      sub_460CC(v166, v167, v168, v169, v170, v171, v172, v173);
      ramrod_sync_NVRAM(0, v174, v175, v176, v177, v178, v179, v180);
    }
  }

  return v60;
}

uint64_t sub_45F1C(int a1)
{
  dword_1C6C10 = 0;
  dword_1C6BEC = 0;
  dword_1C6BF8 = 0;
  byte_1C6C00 = 0;
  if (a1 < 1)
  {
    return 0;
  }

  v1 = 0;
  v2 = 1;
  v3 = 1;
  v4 = a1;
  while (1)
  {
    if (!v3)
    {
      goto LABEL_26;
    }

    v5 = qword_1ADB20[9 * v3 + 1];
    v6 = *(v5 + 9) == 0;
    v7 = *(v5 + 9) != 0;
    if (v2 <= 4)
    {
      v6 = 0;
    }

    if (v2 != 3)
    {
      v7 = 0;
    }

    v8 = v7 || v6;
    if ((*v5 & (1 << v2)) == 0)
    {
      v8 = 1;
    }

    if (((v1 & 1) == 0 || *(v5 + 10)) && (v8 & 1) == 0)
    {
LABEL_26:
      if (!--v4)
      {
        break;
      }
    }

    if (v2 >= 8)
    {
      if (v3 < 20)
      {
        ++v3;
      }

      else
      {
        if (v1)
        {
          return 0;
        }

        v1 = 1;
        byte_1C6C00 = 1;
        v3 = 1;
      }

      v2 = 1;
    }

    else
    {
      ++v2;
    }

    if (v4 <= 0)
    {
      return 0;
    }
  }

  dword_1C6C10 = a1;
  dword_1C6BEC = v3;
  result = 1;
  dword_1C6BF8 = v2;
  return result;
}

uint64_t sub_4601C()
{
  if (qword_1C6C08)
  {
    free(qword_1C6C08);
    qword_1C6C08 = 0;
  }

  if (byte_1C6C00)
  {
    v0 = "-LATE-NVRAM";
  }

  else
  {
    v0 = "";
  }

  return asprintf(&qword_1C6C08, "{test #%d: %s%s(%s)[%s]}", dword_1C6C10, qword_1C6BF0, v0, off_1A9DD8[dword_1C6BF8], off_1A9E20[dword_1C6BFC]);
}

void sub_460CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = dword_1C6C20;
  ramrod_log_msg("\nUNIT TEST(%s) : %s clearing NVRAM from previous test\n", a2, a3, a4, a5, a6, a7, a8, "nvram_clear");
  for (i = 1; i != 33; ++i)
  {
    for (j = 1; j != 4; ++j)
    {
      dword_1C6C20 = j;
      if (i < 3)
      {
        continue;
      }

      cf = 0;
      if (j == 1)
      {
        v12 = &off_1A9BC8;
      }

      else
      {
        v11 = @"checkpoint-nvram-unknown";
        if (j != 2)
        {
          goto LABEL_9;
        }

        v12 = &off_1A9CD0;
      }

      v11 = v12[i];
LABEL_9:
      ramrod_delete_NVRAM_variable(v11, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  dword_1C6C20 = v8;
}

void sub_461B4(int a1, const __CFString *a2)
{
  if (dword_1C6C20 == 1)
  {
    v3 = &off_1A9BC8;
  }

  else
  {
    if (dword_1C6C20 != 2)
    {
      v4 = @"checkpoint-nvram-unknown";
      goto LABEL_7;
    }

    v3 = &off_1A9CD0;
  }

  v4 = v3[a1];
LABEL_7:
  v75 = 0u;
  v74 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
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
  *buffer = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  CFStringGetCString(v4, buffer, 512, 0x8000100u);
  CFStringGetCString(a2, v12, 512, 0x8000100u);
  ramrod_set_NVRAM_variable(v4, a2, 0);
  ramrod_log_msg("\nUNIT TEST(%s) : %s NVRAM set %s=%s (%s)\n", v5, v6, v7, v8, v9, v10, v11, "nvram_set");
}

uint64_t sub_46374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v106[0] = 0;
  v106[1] = v106;
  v106[2] = 0x2020000000;
  v106[3] = "var_char";
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x2020000000;
  v105 = 287454020;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v99 = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v98 = 0;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x2020000000;
  v96 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : %s initializing engine A\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence");
  v15 = checkpoint_engine_init(dword_1C6C20, 3, 1);
  if (!v15)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context A\n", v8, v9, v10, v11, v12, v13, v14, "utest_engines_in_sequence");
    v79 = 1;
LABEL_8:
    *(v101 + 6) = v79;
    goto LABEL_9;
  }

  checkpoint_engine_notice(3, 17, "A OK", v10, v11, v12, v13, v14);
  checkpoint_engine_recorder_path("/mnt5", v16, v17, v18, v19, v20, v21, v22);
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3254779904;
  v94[2] = sub_4AD68;
  v94[3] = &unk_1AE108;
  v94[4] = v106;
  v94[5] = &v100;
  v94[6] = v104;
  v94[7] = &v107;
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3254779904;
  v93[2] = sub_4AF20;
  v93[3] = &unk_1AE108;
  v93[4] = v97;
  v93[5] = &v107;
  v93[6] = v106;
  v93[7] = v104;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3254779904;
  v92[2] = sub_4AFF0;
  v92[3] = &unk_1AE138;
  v92[4] = v106;
  v92[5] = &v100;
  v92[6] = v104;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3254779904;
  v91[2] = sub_4B16C;
  v91[3] = &unk_1AE108;
  v91[4] = v95;
  v91[5] = &v107;
  v91[6] = v106;
  v91[7] = v104;
  v89[5] = v104;
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3254779904;
  v90[2] = sub_4B240;
  v90[3] = &unk_1AE138;
  v90[4] = v106;
  v90[5] = &v100;
  v90[6] = v104;
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3254779904;
  v89[2] = sub_4B30C;
  v89[3] = &unk_1AD6E8;
  v89[4] = v106;
  bzero(&v111, 0x2A0uLL);
  v111 = 768;
  v112 = "sequence_step_1";
  v113 = v94;
  v114 = 1;
  v115 = 769;
  v116 = "sequence_step_2";
  v117 = v93;
  v118 = 1;
  v119 = 770;
  v120 = "sequence_step_3";
  v121 = v92;
  v122 = 1;
  v123 = 771;
  v124 = "sequence_step_4";
  v125 = v91;
  v126 = 1;
  v127 = 772;
  v128 = "sequence_step_5";
  v129 = v90;
  v130 = 1;
  v131 = 773;
  v132 = "sequence_step_6";
  v133 = v89;
  v134 = 1;
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence A\n", v23, v24, v25, v26, v27, v28, v29, "utest_engines_in_sequence");
  v108[3] = v15;
  checkpoint_engine_perform(v15, &v111, v101 + 6, &v99, v30, v31, v32, v33);
  checkpoint_engine_free(v15, v34, v35, v36, v37, v38, v39, v40);
  if (*(v101 + 6))
  {
    goto LABEL_9;
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s initializing engine B\n", v41, v42, v43, v44, v45, v46, v47, "utest_engines_in_sequence");
  v55 = checkpoint_engine_init(dword_1C6C20, 3, 2);
  if (!v55)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context B\n", v48, v49, v50, v51, v52, v53, v54, "utest_engines_in_sequence");
    v79 = 8;
    goto LABEL_8;
  }

  v63 = checkpoint_engine_init(dword_1C6C20, 3, 3);
  if (v63)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence B\n", v56, v57, v58, v59, v60, v61, v62, "utest_engines_in_sequence");
    v108[3] = v55;
    checkpoint_engine_perform(v55, &v111, v101 + 6, &v99, v64, v65, v66, v67);
    if (!*(v101 + 6))
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s sequence C\n", v68, v69, v70, v71, v72, v73, v74, "utest_engines_in_sequence");
      v108[3] = v63;
      checkpoint_engine_perform(v63, &v111, v101 + 6, &v99, v75, v76, v77, v78);
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context C\n", v56, v57, v58, v59, v60, v61, v62, "utest_engines_in_sequence");
    *(v101 + 6) = 9;
  }

  checkpoint_engine_free(v55, v68, v69, v70, v71, v72, v73, v74);
  if (v63)
  {
    checkpoint_engine_free(v63, v82, v83, v84, v85, v86, v87, v88);
  }

LABEL_9:
  v80 = *(v101 + 6);
  _Block_object_dispose(v95, 8);
  _Block_object_dispose(v97, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(v104, 8);
  _Block_object_dispose(v106, 8);
  _Block_object_dispose(&v107, 8);
  return v80;
}

void sub_468E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_46984()
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v36 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v46[3] = v0;
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_closure_api");
    v27 = 1;
    goto LABEL_6;
  }

  checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3254779904;
  v35[2] = sub_4B37C;
  v35[3] = &unk_1AE138;
  v35[4] = &v41;
  v35[5] = &v37;
  v35[6] = &v45;
  v33[4] = &v41;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3254779904;
  v34[2] = sub_4B420;
  v34[3] = &unk_1AE138;
  v34[4] = &v45;
  v34[5] = &v41;
  v34[6] = &v37;
  v32[6] = &v37;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3254779904;
  v33[2] = sub_4B4D0;
  v33[3] = &unk_1AD618;
  v31[5] = &v37;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3254779904;
  v32[2] = sub_4B528;
  v32[3] = &unk_1AE138;
  v32[4] = &v45;
  v32[5] = &v41;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3254779904;
  v31[2] = sub_4B61C;
  v31[3] = &unk_1AD6E8;
  v31[4] = &v41;
  bzero(&v49, 0x240uLL);
  v49 = 774;
  v50 = "closure_step_1";
  v51 = v35;
  v52 = 1;
  v53 = 775;
  v54 = "closure_step_2";
  v55 = v34;
  v56 = 1;
  v57 = 776;
  v58 = "closure_step_3";
  v59 = v33;
  v60 = 1;
  v61 = 790;
  v62 = "closure_step_4";
  v63 = v32;
  v64 = 1;
  v65 = 791;
  v66 = "closure_step_5";
  v67 = v31;
  v68 = 1;
  checkpoint_engine_perform(v46[3], &v49, v38 + 6, &v36, v8, v9, v10, v11);
  checkpoint_engine_free(v46[3], v12, v13, v14, v15, v16, v17, v18);
  v46[3] = 0;
  v26 = v38;
  if (!v38[6] && *(v42 + 6) != 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != 4\n", v19, v20, v21, v22, v23, v24, v25, "utest_closure_api");
    v27 = 6;
LABEL_6:
    v26 = v38;
    v38[6] = v27;
  }

  v28 = v46[3];
  if (v28)
  {
    checkpoint_engine_free(v28, v19, v20, v21, v22, v23, v24, v25);
    v26 = v38;
  }

  v29 = v26[6];
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  return v29;
}

void sub_46D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_46D4C()
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v48[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3254779904;
    v33[2] = sub_4B680;
    v33[3] = &unk_1AD6E8;
    v33[4] = &v47;
    v33[5] = &v43;
    v31[5] = &v43;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3254779904;
    v32[2] = sub_4B71C;
    v32[3] = &unk_1AD618;
    v32[4] = &v43;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3254779904;
    v31[2] = sub_4B774;
    v31[3] = &unk_1AD6E8;
    v31[4] = &v47;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = sub_4B820;
    v30[3] = &unk_1AE138;
    v30[4] = &v43;
    v30[5] = &v35;
    v30[6] = &v39;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3254779904;
    v29[2] = sub_4B8C0;
    v29[3] = &unk_1AD618;
    v29[4] = &v43;
    bzero(&v51, 0x240uLL);
    v51 = 774;
    v52 = "closure_step_1";
    v53 = v33;
    v54 = 1;
    v55 = 775;
    v56 = "closure_step_2";
    v57 = v32;
    v58 = 1;
    v59 = 776;
    v60 = "closure_step_3";
    v61 = v31;
    v62 = 1;
    v63 = 790;
    v64 = "closure_step_4";
    v65 = v30;
    v66 = 1;
    v67 = 791;
    v68 = "closure_step_5";
    v69 = v29;
    v70 = 1;
    checkpoint_engine_perform(v48[3], &v51, v36 + 6, &v34, v8, v9, v10, v11);
    checkpoint_engine_free(v48[3], v12, v13, v14, v15, v16, v17, v18);
    v48[3] = 0;
    if (v36[6])
    {
      if (*(v44 + 6) == *(v40 + 6))
      {
        v36[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", v19, v20, v21, v22, v23, v24, v25, "utest_checkpoint_fail");
        v36[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_checkpoint_fail");
  }

  v26 = v48[3];
  if (v26)
  {
    checkpoint_engine_free(v26, v19, v20, v21, v22, v23, v24, v25);
  }

  v27 = v36[6];
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  return v27;
}

void sub_47108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47144()
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 7;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v54[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3254779904;
    v36[2] = sub_4B918;
    v36[3] = &unk_1AD618;
    v36[4] = &v49;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3254779904;
    v35[2] = sub_4B970;
    v35[3] = &unk_1AD618;
    v35[4] = &v49;
    v33[5] = &v49;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3254779904;
    v34[2] = sub_4B9C8;
    v34[3] = &unk_1AD6E8;
    v34[4] = &v49;
    v34[5] = &v53;
    v32[4] = &v49;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3254779904;
    v33[2] = sub_4BA3C;
    v33[3] = &unk_1AD6E8;
    v33[4] = &v53;
    v31[5] = &v49;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3254779904;
    v32[2] = sub_4BADC;
    v32[3] = &unk_1AD618;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3254779904;
    v31[2] = sub_4BB34;
    v31[3] = &unk_1AD6E8;
    v31[4] = &v53;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = sub_4BBF0;
    v30[3] = &unk_1AE108;
    v30[4] = &v49;
    v30[5] = &v37;
    v30[6] = &v41;
    v30[7] = &v45;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3254779904;
    v29[2] = sub_4BD70;
    v29[3] = &unk_1AD618;
    v29[4] = &v49;
    bzero(&v57, 0x360uLL);
    v57 = 768;
    v58 = "sequence_step_1";
    v59 = v36;
    v60 = 1;
    v61 = 769;
    v62 = "sequence_step_2";
    v63 = v35;
    v64 = 1;
    v65 = 770;
    v66 = "sequence_step_3";
    v67 = v34;
    v68 = 1;
    v69 = 771;
    v70 = "sequence_step_4";
    v71 = v33;
    v72 = 1;
    v73 = 772;
    v74 = "sequence_step_5";
    v75 = v32;
    v76 = 1;
    v77 = 773;
    v78 = "sequence_step_6";
    v79 = v31;
    v80 = 1;
    v81 = 788;
    v82 = "sequence_step_7";
    v83 = v30;
    v84 = 1;
    v85 = 789;
    v86 = "sequence_step_8";
    v87 = v29;
    v88 = 1;
    checkpoint_engine_perform(v54[3], &v57, v42 + 6, (v38 + 3), v8, v9, v10, v11);
    checkpoint_engine_free(v54[3], v12, v13, v14, v15, v16, v17, v18);
    v54[3] = 0;
    if (v42[6])
    {
      if (*(v50 + 6) == *(v46 + 6))
      {
        v42[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", v19, v20, v21, v22, v23, v24, v25, "utest_checkpoint_fail_error");
        v42[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_checkpoint_fail_error");
  }

  v26 = v54[3];
  if (v26)
  {
    checkpoint_engine_free(v26, v19, v20, v21, v22, v23, v24, v25);
  }

  v27 = v42[6];
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  return v27;
}

void sub_47630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47678()
{
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  if (v0)
  {
    v8 = v0;
    v26 = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    memset(v23, 0, sizeof(v23));
    checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
    dword_1C6C70 = 0;
    v9 = v24;
    v10 = v23;
    v11 = -8;
    v12 = v23;
    do
    {
      *v12++ = v11 + 9;
      pthread_create(v9++, 0, sub_4BDC8, v10);
      v10 = v12;
    }

    while (!__CFADD__(v11++, 1));
    for (i = 0; i != 8; ++i)
    {
      pthread_join(v24[i], 0);
    }

    checkpoint_engine_free(v8, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create outer engine context\n", v1, v2, v3, v4, v5, v6, v7, "utest_concurrent_engines");
    dword_1C6C70 = 1;
  }

  return dword_1C6C70;
}

uint64_t sub_477B4()
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31 = 0;
  v7 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  if (!v7)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create outer engine\n", v0, v1, v2, v3, v4, v5, v6, "utest_nested_engines");
    v26 = 1;
    goto LABEL_7;
  }

  checkpoint_engine_recorder_path("/mnt5", v0, v1, v2, v3, v4, v5, v6);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3254779904;
  v30[2] = sub_4C678;
  v30[3] = &unk_1AD6E8;
  v30[4] = &v36;
  v30[5] = &v32;
  v28[5] = &v32;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3254779904;
  v29[2] = sub_4C6E8;
  v29[3] = &unk_1AD6E8;
  v29[4] = &v36;
  v29[5] = &v32;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3254779904;
  v28[2] = sub_4C75C;
  v28[3] = &unk_1AD6E8;
  v28[4] = &v36;
  v40[1] = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 775;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 776;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v40[0] = 774;
  v41 = "outer_step_1";
  *&v42 = v30;
  BYTE8(v42) = 1;
  v48 = "outer_step_2";
  *&v49 = v29;
  BYTE8(v49) = 1;
  v55 = "outer_step_3";
  *&v56 = v28;
  BYTE8(v56) = 1;
  checkpoint_engine_perform(v7, v40, v33 + 6, &v31, v8, v9, v10, v11);
  checkpoint_engine_free(v7, v12, v13, v14, v15, v16, v17, v18);
  v26 = v33[6];
  if (!v26)
  {
    if (*(v37 + 6) == 3)
    {
      v26 = 0;
      goto LABEL_8;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s (outer) last_step(%d) != 3\n", v19, v20, v21, v22, v23, v24, v25, "utest_nested_engines");
    v26 = 5;
LABEL_7:
    v33[6] = v26;
  }

LABEL_8:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return v26;
}

void sub_47A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s not running any engine; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_engine_finished_result): checkpoint chassis not initialized\n++++++++++\n\n", a2, a3, a4, a5, a6, a7, a8, "utest_no_engine");
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s not running any engine; so expecting:\nCHECKPOINT ANOMALY: outcome=initial_monitor_no_return(pre_existing_set_by_monitor)\n++++++++++\n\n", v8, v9, v10, v11, v12, v13, v14, "utest_no_engine");
  return 193;
}

uint64_t sub_47AF4()
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32 = 0;
  v31 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v34[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = sub_4CBC4;
    v30[3] = &unk_1AD618;
    v30[4] = &v33;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3254779904;
    v29[2] = sub_4CCD8;
    v29[3] = &unk_1AD618;
    v29[4] = &v33;
    v37[3] = 1;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v37[0] = 774;
    v37[1] = "closure_step_1";
    v37[2] = v30;
    v42 = 775;
    v43 = "closure_step_2";
    v44 = &stru_1AE168;
    v45 = 1;
    v50 = 776;
    v51 = "closure_step_3";
    v52 = v29;
    v53 = 1;
    checkpoint_engine_perform(v34[3], v37, &v32, &v31, v8, v9, v10, v11);
    checkpoint_engine_free(v34[3], v12, v13, v14, v15, v16, v17, v18);
    v34[3] = 0;
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_closure_shutdown");
    v32 = 1;
    v26 = v34[3];
    if (v26)
    {
      checkpoint_engine_free(v26, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  v27 = v32;
  _Block_object_dispose(&v33, 8);
  return v27;
}

void sub_47D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47D30()
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v35 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v45[3] = v0;
  if (!v0)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_immed_retry");
    v27 = 1;
    goto LABEL_6;
  }

  checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3254779904;
  v34[2] = sub_4CD8C;
  v34[3] = &unk_1AD6E8;
  v34[4] = &v44;
  v34[5] = &v40;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3254779904;
  v33[2] = sub_4CE64;
  v33[3] = &unk_1AD618;
  v33[4] = &v44;
  v31[4] = &v40;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3254779904;
  v32[2] = sub_4CF0C;
  v32[3] = &unk_1AD6E8;
  v32[4] = &v40;
  v32[5] = &v36;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3254779904;
  v31[2] = sub_4CF88;
  v31[3] = &unk_1AD618;
  bzero(&v48, 0x240uLL);
  v48 = 774;
  v49 = "closure_step_1";
  v50 = v34;
  v52 = 775;
  v51 = 1;
  v53 = "closure_step_2";
  v54 = &stru_1AE188;
  v55 = 1;
  v56 = 776;
  v57 = "closure_step_3";
  v58 = v33;
  v59 = 1;
  v60 = 790;
  v61 = "closure_step_4";
  v62 = v32;
  v63 = 1;
  v64 = 5;
  v65 = 791;
  v66 = "closure_step_5";
  v67 = v31;
  v68 = 1;
  checkpoint_engine_perform(v45[3], &v48, v37 + 6, &v35, v8, v9, v10, v11);
  checkpoint_engine_free(v45[3], v12, v13, v14, v15, v16, v17, v18);
  v45[3] = 0;
  v26 = v37;
  if (!v37[6] && *(v41 + 6) != 5)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != 5\n", v19, v20, v21, v22, v23, v24, v25, "utest_immed_retry");
    v27 = 2;
LABEL_6:
    v26 = v37;
    v37[6] = v27;
  }

  v28 = v45[3];
  if (v28)
  {
    checkpoint_engine_free(v28, v19, v20, v21, v22, v23, v24, v25);
    v26 = v37;
  }

  v29 = v26[6];
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v29;
}

void sub_48080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_480B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v43 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s trying more times than supported; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_nvram_store_lost): {checkpoint_nvram_store_by_id_try_int} tracking information lost on store [dest_store == NULL]\n++++++++++\n\n", a2, a3, a4, a5, a6, a7, a8, "utest_excessive_retries");
  v8 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v55[3] = v8;
  if (!v8)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v9, v10, v11, v12, v13, v14, v15, "utest_excessive_retries");
    v35 = 1;
    goto LABEL_6;
  }

  checkpoint_engine_recorder_path("/mnt5", v9, v10, v11, v12, v13, v14, v15);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3254779904;
  v42[2] = sub_4CFE0;
  v42[3] = &unk_1AD6E8;
  v42[4] = &v54;
  v42[5] = &v50;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3254779904;
  v41[2] = sub_4D0B8;
  v41[3] = &unk_1AD618;
  v41[4] = &v54;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3254779904;
  v40[2] = sub_4D160;
  v40[3] = &unk_1AE108;
  v40[4] = &v50;
  v40[5] = v48;
  v40[6] = &v54;
  v40[7] = &v44;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3254779904;
  v39[2] = sub_4D224;
  v39[3] = &unk_1AD618;
  v39[4] = &v50;
  bzero(&v58, 0x240uLL);
  v58 = 774;
  v59 = "closure_step_1";
  v60 = v42;
  v62 = 775;
  v61 = 1;
  v63 = "closure_step_2";
  v64 = &stru_1AE1A8;
  v65 = 1;
  v66 = 776;
  v67 = "closure_step_3";
  v68 = v41;
  v69 = 1;
  v70 = 790;
  v71 = "closure_step_4";
  v72 = v40;
  v73 = 1;
  v74 = 10;
  v75 = 791;
  v76 = "closure_step_5";
  v77 = v39;
  v78 = 1;
  checkpoint_engine_perform(v55[3], &v58, v45 + 6, &v43, v16, v17, v18, v19);
  checkpoint_engine_free(v55[3], v20, v21, v22, v23, v24, v25, v26);
  v55[3] = 0;
  v34 = v45;
  if (!v45[6] && *(v51 + 6) != 5)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != 5\n", v27, v28, v29, v30, v31, v32, v33, "utest_excessive_retries");
    v35 = 2;
LABEL_6:
    v34 = v45;
    v45[6] = v35;
  }

  v36 = v55[3];
  if (v36)
  {
    checkpoint_engine_free(v36, v27, v28, v29, v30, v31, v32, v33);
    v34 = v45;
  }

  v37 = v34[6];
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  return v37;
}

void sub_48440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 1;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v48 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s trying more times than supported; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_nvram_store_lost): {checkpoint_nvram_store_by_id_try_int} tracking information lost on store [dest_store == NULL]\n++++++++++\n\n", a2, a3, a4, a5, a6, a7, a8, "utest_many_retry_steps");
  v8 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v58[3] = v8;
  if (v8)
  {
    checkpoint_engine_recorder_path("/mnt5", v9, v10, v11, v12, v13, v14, v15);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3254779904;
    v47[2] = sub_4D27C;
    v47[3] = &unk_1AE108;
    v47[4] = v53;
    v47[5] = &v57;
    v47[6] = v55;
    v47[7] = &v49;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3254779904;
    v46[2] = sub_4D368;
    v46[3] = &unk_1AE138;
    v46[4] = v53;
    v46[5] = v55;
    v46[6] = &v49;
    v44[6] = &v49;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3254779904;
    v45[2] = sub_4D3B8;
    v45[3] = &unk_1AD618;
    v45[4] = &v57;
    v43[6] = &v49;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3254779904;
    v44[2] = sub_4D460;
    v44[3] = &unk_1AE138;
    v44[4] = v53;
    v44[5] = v55;
    v42[6] = &v49;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3254779904;
    v43[2] = sub_4D4B0;
    v43[3] = &unk_1AE138;
    v43[4] = v53;
    v43[5] = v55;
    v41[6] = &v49;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3254779904;
    v42[2] = sub_4D500;
    v42[3] = &unk_1AE138;
    v42[4] = v53;
    v42[5] = v55;
    v40[6] = &v49;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3254779904;
    v41[2] = sub_4D550;
    v41[3] = &unk_1AE138;
    v41[4] = v53;
    v41[5] = v55;
    v39[6] = &v49;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3254779904;
    v40[2] = sub_4D5A0;
    v40[3] = &unk_1AE138;
    v40[4] = v53;
    v40[5] = v55;
    v38[6] = &v49;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3254779904;
    v39[2] = sub_4D5F0;
    v39[3] = &unk_1AE138;
    v39[4] = v53;
    v39[5] = v55;
    v37[6] = &v49;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3254779904;
    v38[2] = sub_4D640;
    v38[3] = &unk_1AE138;
    v38[4] = v53;
    v38[5] = v55;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3254779904;
    v37[2] = sub_4D690;
    v37[3] = &unk_1AE138;
    v37[4] = v53;
    v37[5] = v55;
    bzero(&v61, 0x480uLL);
    v61 = 774;
    v62 = "closure_step_1";
    v63 = v47;
    v65 = 1;
    v66 = 775;
    v64 = 1;
    v67 = "closure_step_2";
    v68 = v46;
    v69 = 1;
    v70 = 2;
    v71 = 776;
    v72 = "closure_step_3";
    v73 = v45;
    v74 = 1;
    v75 = 3;
    v76 = 790;
    v77 = "closure_step_4";
    v78 = v44;
    v79 = 1;
    v80 = 4;
    v81 = 791;
    v82 = "closure_step_5";
    v83 = v43;
    v84 = 1;
    v85 = 5;
    v86 = 768;
    v87 = "sequence_step_1";
    v88 = v42;
    v89 = 1;
    v90 = 6;
    v91 = 769;
    v92 = "sequence_step_2";
    v93 = v41;
    v94 = 1;
    v95 = 7;
    v96 = 770;
    v97 = "sequence_step_3";
    v98 = v40;
    v99 = 1;
    v100 = 8;
    v101 = 771;
    v102 = "sequence_step_4";
    v103 = v39;
    v104 = 1;
    v105 = 9;
    v106 = 772;
    v107 = "sequence_step_5";
    v108 = v38;
    v109 = 1;
    v110 = 10;
    v111 = 773;
    v112 = "sequence_step_6";
    v113 = v37;
    v114 = 1;
    v115 = 11;
    checkpoint_engine_perform(v58[3], &v61, v50 + 6, &v48, v16, v17, v18, v19);
    checkpoint_engine_free(v58[3], v20, v21, v22, v23, v24, v25, v26);
    v58[3] = 0;
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v9, v10, v11, v12, v13, v14, v15, "utest_many_retry_steps");
    v50[6] = 1;
    v34 = v58[3];
    if (v34)
    {
      checkpoint_engine_free(v34, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  v35 = v50[6];
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v57, 8);
  return v35;
}

void sub_48A88(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_48AC4()
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 4;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v50[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3254779904;
    v33[2] = sub_4D6E0;
    v33[3] = &unk_1AD6E8;
    v33[4] = &v49;
    v33[5] = &v45;
    v31[5] = &v45;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3254779904;
    v32[2] = sub_4D774;
    v32[3] = &unk_1AD618;
    v32[4] = &v45;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3254779904;
    v31[2] = sub_4D7CC;
    v31[3] = &unk_1AD6E8;
    v31[4] = &v49;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = sub_4D87C;
    v30[3] = &unk_1AE108;
    v30[4] = &v45;
    v30[5] = v39;
    v30[6] = &v35;
    v30[7] = &v41;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3254779904;
    v29[2] = sub_4D940;
    v29[3] = &unk_1AD618;
    v29[4] = &v45;
    bzero(&v53, 0x240uLL);
    v53 = 774;
    v54 = "closure_step_1";
    v55 = v33;
    v57 = 775;
    v56 = 1;
    v58 = "closure_step_2";
    v59 = v32;
    v60 = 1;
    v61 = 776;
    v62 = "closure_step_3";
    v63 = v31;
    v64 = 1;
    v65 = 790;
    v66 = "closure_step_4";
    v67 = v30;
    v68 = 1;
    v69 = 5;
    v70 = 791;
    v71 = "closure_step_5";
    v72 = v29;
    v73 = 1;
    checkpoint_engine_perform(v50[3], &v53, v36 + 6, &v34, v8, v9, v10, v11);
    checkpoint_engine_free(v50[3], v12, v13, v14, v15, v16, v17, v18);
    v50[3] = 0;
    if (v36[6])
    {
      if (*(v46 + 6) == *(v42 + 6))
      {
        v36[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", v19, v20, v21, v22, v23, v24, v25, "utest_immed_no_use");
        v36[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_immed_no_use");
  }

  v26 = v50[3];
  if (v26)
  {
    checkpoint_engine_free(v26, v19, v20, v21, v22, v23, v24, v25);
  }

  v27 = v36[6];
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  return v27;
}

void sub_48EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_48F18()
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37 = 0;
  v36 = 0;
  if (dword_1C6BFC)
  {
    v0 = dword_1C6BF8 <= 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  v2 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v43[3] = v2;
  if (!v2)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v3, v4, v5, v6, v7, v8, v9, "utest_sim_failure");
    goto LABEL_12;
  }

  checkpoint_engine_recorder_path("/mnt5", v3, v4, v5, v6, v7, v8, v9);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3254779904;
  v35[2] = sub_4DA18;
  v35[3] = &unk_1AD618;
  v35[4] = &v42;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3254779904;
  v34[2] = sub_4DA64;
  v34[3] = &unk_1AD618;
  v34[4] = &v42;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3254779904;
  v33[2] = sub_4DB3C;
  v33[3] = &unk_1AD6E8;
  v33[4] = &v42;
  v33[5] = &v38;
  v31[4] = &v38;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3254779904;
  v32[2] = sub_4DBEC;
  v32[3] = &unk_1AD618;
  v32[4] = &v38;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3254779904;
  v31[2] = sub_4DC44;
  v31[3] = &unk_1AD618;
  bzero(&v46, 0x2A0uLL);
  v46 = 768;
  v47 = "seqence_step_1";
  v48 = v35;
  v50 = 769;
  v49 = 1;
  v51 = "seqence_step_2";
  v52 = v34;
  v53 = 1;
  v54 = 770;
  v55 = "seqence_step_3";
  v56 = &stru_1AE1C8;
  v57 = 1;
  v58 = 774;
  v59 = "closure_step_1";
  v60 = v33;
  v61 = 1;
  v62 = 775;
  v63 = "closure_step_2";
  v64 = v32;
  v65 = 1;
  v66 = 776;
  v67 = "closure_step_3";
  v68 = v31;
  v69 = 1;
  checkpoint_engine_perform(v43[3], &v46, &v37, &v36, v10, v11, v12, v13);
  checkpoint_engine_free(v43[3], v14, v15, v16, v17, v18, v19, v20);
  v43[3] = 0;
  if (!v37)
  {
LABEL_12:
    v28 = 0;
    goto LABEL_14;
  }

  if (*(v39 + 6) == v1)
  {
    v28 = 41;
    v37 = 41;
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", v21, v22, v23, v24, v25, v26, v27, "utest_sim_failure");
    v28 = 0;
    v37 = 0;
  }

LABEL_14:
  v29 = v43[3];
  if (v29)
  {
    checkpoint_engine_free(v29, v21, v22, v23, v24, v25, v26, v27);
    v28 = v37;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  return v28;
}

void sub_492BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_493BC()
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v43 = 0;
  if (dword_1C6BFC)
  {
    v0 = dword_1C6BF8 <= 7;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  v2 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v55[3] = v2;
  if (v2)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ++++++++++\n%s trying more times than supported; so expecting:\nCHECKPOINT_INTERNAL_ERROR(checkpoint_nvram_store_lost): {checkpoint_nvram_store_by_id_try_int} tracking information lost on store [dest_store == NULL]\n++++++++++\n\n", v3, v4, v5, v6, v7, v8, v9, "utest_sim_failure_exercise");
    checkpoint_engine_recorder_path("/mnt5", v10, v11, v12, v13, v14, v15, v16);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3254779904;
    v42[2] = sub_4DC9C;
    v42[3] = &unk_1AD618;
    v42[4] = &v54;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3254779904;
    v41[2] = sub_4DD00;
    v41[3] = &unk_1AD618;
    v41[4] = &v54;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3254779904;
    v40[2] = sub_4DDD8;
    v40[3] = &unk_1AD6E8;
    v40[4] = &v54;
    v40[5] = &v50;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3254779904;
    v39[2] = sub_4DE88;
    v39[3] = &unk_1AE138;
    v39[4] = v44;
    v39[5] = &v46;
    v39[6] = &v50;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3254779904;
    v38[2] = sub_4DF4C;
    v38[3] = &unk_1AD618;
    v38[4] = &v50;
    bzero(&v58, 0x2A0uLL);
    v58 = 768;
    v59 = "seqence_step_1";
    v60 = v42;
    v61 = 1;
    v62 = 769;
    v63 = "seqence_step_2";
    v64 = v41;
    v65 = 1;
    v66 = 770;
    v67 = "seqence_step_3";
    v68 = &stru_1AE1E8;
    v69 = 1;
    v70 = 774;
    v71 = "closure_step_1";
    v72 = v40;
    v73 = 1;
    v74 = 775;
    v75 = "closure_step_2";
    v76 = v39;
    v77 = 1;
    v78 = 776;
    v79 = "closure_step_3";
    v80 = v38;
    v81 = 1;
    checkpoint_engine_perform(v55[3], &v58, v47 + 6, &v43, v17, v18, v19, v20);
    checkpoint_engine_free(v55[3], v21, v22, v23, v24, v25, v26, v27);
    v55[3] = 0;
    if (v47[6])
    {
      if (*(v51 + 6) == v1)
      {
        v47[6] = 41;
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s last_step(%d) != expected_last_step(%d)\n", v28, v29, v30, v31, v32, v33, v34, "utest_sim_failure_exercise");
        v47[6] = 0;
      }
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v3, v4, v5, v6, v7, v8, v9, "utest_sim_failure_exercise");
  }

  v35 = v55[3];
  if (v35)
  {
    checkpoint_engine_free(v35, v28, v29, v30, v31, v32, v33, v34);
  }

  v36 = v47[6];
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  return v36;
}

void sub_497C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_49804()
{
  off_1AD4D0();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30 = 0;
  v29 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, 0);
  v36[3] = v0;
  if (v0)
  {
    checkpoint_engine_recorder_path("/mnt5", v1, v2, v3, v4, v5, v6, v7);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3254779904;
    v27[2] = sub_4DF60;
    v27[3] = &unk_1AE208;
    v28 = 0;
    v27[4] = &v31;
    v27[5] = &v35;
    bzero(&v39, 0x3060uLL);
    v15 = 0;
    v202 = 1;
    v206 = 1;
    v210 = 1;
    v39 = 777;
    v40 = "closure_step_512";
    v41 = v27;
    v42 = 1;
    v43 = 777;
    v44 = "closure_step_512";
    v45 = v27;
    v46 = 1;
    v47 = 777;
    v48 = "closure_step_512";
    v49 = v27;
    v50 = 1;
    v51 = 777;
    v52 = "closure_step_512";
    v53 = v27;
    v54 = 1;
    v55 = 777;
    v56 = "closure_step_512";
    v57 = v27;
    v58 = 1;
    v59 = 777;
    v60 = "closure_step_512";
    v61 = v27;
    v62 = 1;
    v63 = 777;
    v64 = "closure_step_512";
    v65 = v27;
    v66 = 1;
    v67 = 777;
    v68 = "closure_step_512";
    v69 = v27;
    v70 = 1;
    v71 = 777;
    v72 = "closure_step_512";
    v73 = v27;
    v74 = 1;
    v75 = 777;
    v76 = "closure_step_512";
    v77 = v27;
    v78 = 1;
    v79 = 777;
    v80 = "closure_step_512";
    v81 = v27;
    v82 = 1;
    v83 = 777;
    v84 = "closure_step_512";
    v85 = v27;
    v86 = 1;
    v87 = 777;
    v88 = "closure_step_512";
    v89 = v27;
    v90 = 1;
    v91 = 777;
    v92 = "closure_step_512";
    v93 = v27;
    v94 = 1;
    v95 = 777;
    v96 = "closure_step_512";
    v97 = v27;
    v98 = 1;
    v99 = 777;
    v100 = "closure_step_512";
    v101 = v27;
    v102 = 1;
    v103 = 777;
    v104 = "closure_step_512";
    v105 = v27;
    v106 = 1;
    v107 = 777;
    v108 = "closure_step_512";
    v109 = v27;
    v110 = 1;
    v111 = 777;
    v112 = "closure_step_512";
    v113 = v27;
    v114 = 1;
    v115 = 777;
    v116 = "closure_step_512";
    v117 = v27;
    v118 = 1;
    v119 = 777;
    v120 = "closure_step_512";
    v121 = v27;
    v122 = 1;
    v123 = 777;
    v124 = "closure_step_512";
    v125 = v27;
    v126 = 1;
    v127 = 777;
    v128 = "closure_step_512";
    v129 = v27;
    v130 = 1;
    v131 = 777;
    v132 = "closure_step_512";
    v133 = v27;
    v134 = 1;
    v135 = 777;
    v136 = "closure_step_512";
    v137 = v27;
    v138 = 1;
    v139 = 777;
    v140 = "closure_step_512";
    v141 = v27;
    v142 = 1;
    v143 = 777;
    v144 = "closure_step_512";
    v145 = v27;
    v146 = 1;
    v147 = 777;
    v148 = "closure_step_512";
    v149 = v27;
    v150 = 1;
    v151 = 777;
    v152 = "closure_step_512";
    v153 = v27;
    v154 = 1;
    v155 = 777;
    v156 = "closure_step_512";
    v157 = v27;
    v158 = 1;
    v159 = 777;
    v160 = "closure_step_512";
    v161 = v27;
    v162 = 1;
    v163 = 777;
    v164 = "closure_step_512";
    v165 = v27;
    v166 = 1;
    v167 = 777;
    v168 = "closure_step_512";
    v169 = v27;
    v170 = 1;
    v171 = 777;
    v172 = "closure_step_512";
    v173 = v27;
    v174 = 1;
    v175 = 777;
    v176 = "closure_step_512";
    v177 = v27;
    v178 = 1;
    v179 = 777;
    v180 = "closure_step_512";
    v181 = v27;
    v182 = 1;
    v183 = 777;
    v184 = "closure_step_512";
    v185 = v27;
    v186 = 1;
    v187 = 777;
    v188 = "closure_step_512";
    v189 = v27;
    v190 = 1;
    v191 = 777;
    v192 = "closure_step_512";
    v193 = v27;
    v194 = 1;
    v195 = 777;
    v196 = "closure_step_512";
    v197 = v27;
    v198 = 1;
    v199 = 777;
    v200 = "closure_step_512";
    v201 = v27;
    v203 = 777;
    v204 = "closure_step_512";
    v205 = v27;
    v207 = 777;
    v208 = "closure_step_512";
    v209 = v27;
    v211 = 777;
    v212 = "closure_step_512";
    v213 = v27;
    v214 = 1;
    v215 = 777;
    v216 = "closure_step_512";
    v217 = v27;
    v218 = 1;
    v219 = 777;
    v220 = "closure_step_512";
    v221 = v27;
    v222 = 1;
    v223 = 777;
    v224 = "closure_step_512";
    v225 = v27;
    v226 = 1;
    v227 = 777;
    v228 = "closure_step_512";
    v229 = v27;
    v230 = 1;
    v231 = 777;
    v232 = "closure_step_512";
    v233 = v27;
    v234 = 1;
    v235 = 777;
    v236 = "closure_step_512";
    v237 = v27;
    v238 = 1;
    v239 = 777;
    v240 = "closure_step_512";
    v241 = v27;
    v242 = 1;
    v243 = 777;
    v244 = "closure_step_512";
    v245 = v27;
    v246 = 1;
    v247 = 777;
    v248 = "closure_step_512";
    v249 = v27;
    v250 = 1;
    v251 = 777;
    v252 = "closure_step_512";
    v253 = v27;
    v254 = 1;
    v255 = 777;
    v256 = "closure_step_512";
    v257 = v27;
    v258 = 1;
    v259 = 777;
    v260 = "closure_step_512";
    v261 = v27;
    v262 = 1;
    v263 = 777;
    v264 = "closure_step_512";
    v265 = v27;
    v266 = 1;
    v267 = 777;
    v268 = "closure_step_512";
    v269 = v27;
    v270 = 1;
    v271 = 777;
    v272 = "closure_step_512";
    v273 = v27;
    v274 = 1;
    v275 = 777;
    v276 = "closure_step_512";
    v277 = v27;
    v278 = 1;
    v279 = 777;
    v280 = "closure_step_512";
    v281 = v27;
    v282 = 1;
    v283 = 777;
    v284 = "closure_step_512";
    v285 = v27;
    v286 = 1;
    v287 = 777;
    v288 = "closure_step_512";
    v291 = 777;
    v292 = "closure_step_512";
    v293 = v27;
    v294 = 1;
    v295 = 777;
    v289 = v27;
    v290 = 1;
    v296 = "closure_step_512";
    v297 = v27;
    v298 = 1;
    v299 = 777;
    v300 = "closure_step_512";
    v301 = v27;
    v302 = 1;
    v303 = 777;
    v304 = "closure_step_512";
    v305 = v27;
    v306 = 1;
    v307 = 777;
    v308 = "closure_step_512";
    v309 = v27;
    v310 = 1;
    v311 = 777;
    v312 = "closure_step_512";
    v313 = v27;
    v314 = 1;
    v315 = 777;
    v316 = "closure_step_512";
    v317 = v27;
    v318 = 1;
    v319 = 777;
    v320 = "closure_step_512";
    v321 = v27;
    v322 = 1;
    v323 = 777;
    v324 = "closure_step_512";
    v325 = v27;
    v326 = 1;
    v327 = 777;
    v328 = "closure_step_512";
    v329 = v27;
    v330 = 1;
    v331 = 777;
    v332 = "closure_step_512";
    v333 = v27;
    v334 = 1;
    v335 = 777;
    v336 = "closure_step_512";
    v337 = v27;
    v338 = 1;
    v339 = 777;
    v340 = "closure_step_512";
    v341 = v27;
    v342 = 1;
    v343 = 777;
    v344 = "closure_step_512";
    v345 = v27;
    v346 = 1;
    v347 = 777;
    v348 = "closure_step_512";
    v349 = v27;
    v350 = 1;
    v351 = 777;
    v352 = "closure_step_512";
    v353 = v27;
    v354 = 1;
    v355 = 777;
    v356 = "closure_step_512";
    v357 = v27;
    v358 = 1;
    v359 = 777;
    v360 = "closure_step_512";
    v361 = v27;
    v362 = 1;
    v363 = 777;
    v364 = "closure_step_512";
    v365 = v27;
    v366 = 1;
    v367 = 777;
    v368 = "closure_step_512";
    v369 = v27;
    v370 = 1;
    v371 = 777;
    v372 = "closure_step_512";
    v373 = v27;
    v374 = 1;
    v375 = 777;
    v376 = "closure_step_512";
    v377 = v27;
    v378 = 1;
    v379 = 777;
    v380 = "closure_step_512";
    v381 = v27;
    v382 = 1;
    v383 = 777;
    v384 = "closure_step_512";
    v385 = v27;
    v386 = 1;
    v387 = 777;
    v388 = "closure_step_512";
    v389 = v27;
    v390 = 1;
    v391 = 777;
    v392 = "closure_step_512";
    v393 = v27;
    v394 = 1;
    v395 = 777;
    v396 = "closure_step_512";
    v397 = v27;
    v398 = 1;
    v399 = 777;
    v400 = "closure_step_512";
    v401 = v27;
    v402 = 1;
    v403 = 777;
    v404 = "closure_step_512";
    v405 = v27;
    v406 = 1;
    v407 = 777;
    v408 = "closure_step_512";
    v409 = v27;
    v410 = 1;
    v411 = 777;
    v412 = "closure_step_512";
    v413 = v27;
    v414 = 1;
    v415 = 777;
    v416 = "closure_step_512";
    v417 = v27;
    v418 = 1;
    v419 = 777;
    v420 = "closure_step_512";
    v421 = v27;
    v422 = 1;
    v423 = 777;
    v424 = "closure_step_512";
    v425 = v27;
    v426 = 1;
    v427 = 777;
    v428 = "closure_step_512";
    v429 = v27;
    v430 = 1;
    v431 = 777;
    v432 = "closure_step_512";
    v433 = v27;
    v434 = 1;
    v435 = 777;
    v436 = "closure_step_512";
    v437 = v27;
    v438 = 1;
    v439 = 777;
    v440 = "closure_step_512";
    v441 = v27;
    v442 = 1;
    v443 = 777;
    v444 = "closure_step_512";
    v445 = v27;
    v446 = 1;
    v447 = 777;
    v448 = "closure_step_512";
    v449 = v27;
    v450 = 1;
    v451 = 777;
    v452 = "closure_step_512";
    v453 = v27;
    v454 = 1;
    v455 = 777;
    v456 = "closure_step_512";
    v457 = v27;
    v458 = 1;
    v459 = 777;
    v460 = "closure_step_512";
    v461 = v27;
    v462 = 1;
    v463 = 777;
    v464 = "closure_step_512";
    v465 = v27;
    v466 = 1;
    v467 = 777;
    v468 = "closure_step_512";
    v469 = v27;
    v470 = 1;
    v471 = 777;
    v472 = "closure_step_512";
    v473 = v27;
    v474 = 1;
    v475 = 777;
    v476 = "closure_step_512";
    v477 = v27;
    v478 = 1;
    v479 = 777;
    v480 = "closure_step_512";
    v481 = v27;
    v482 = 1;
    v483 = 777;
    v484 = "closure_step_512";
    v485 = v27;
    v486 = 1;
    v487 = 777;
    v488 = "closure_step_512";
    v489 = v27;
    v490 = 1;
    v491 = 777;
    v492 = "closure_step_512";
    v493 = v27;
    v494 = 1;
    v495 = 777;
    v496 = "closure_step_512";
    v497 = v27;
    v498 = 1;
    v499 = 777;
    v500 = "closure_step_512";
    v501 = v27;
    v502 = 1;
    v503 = 777;
    v504 = "closure_step_512";
    v505 = v27;
    v506 = 1;
    v507 = 777;
    v508 = "closure_step_512";
    v509 = v27;
    v510 = 1;
    v511 = 777;
    v512 = "closure_step_512";
    v513 = v27;
    v514 = 1;
    v515 = 777;
    v516 = "closure_step_512";
    v517 = v27;
    v518 = 1;
    v519 = 777;
    v520 = "closure_step_512";
    v521 = v27;
    v522 = 1;
    v523 = 777;
    v524 = "closure_step_512";
    v525 = v27;
    v526 = 1;
    v527 = 777;
    v528 = "closure_step_512";
    v529 = v27;
    v530 = 1;
    v531 = 777;
    v532 = "closure_step_512";
    v533 = v27;
    v534 = 1;
    v535 = 777;
    v536 = "closure_step_512";
    v537 = v27;
    v538 = 1;
    v539 = 777;
    v540 = "closure_step_512";
    v541 = v27;
    v542 = 1;
    v543 = 777;
    v544 = "closure_step_512";
    v545 = v27;
    v546 = 1;
    v547 = 777;
    v548 = "closure_step_512";
    v549 = v27;
    v550 = 1;
    v551 = 0;
    while (!v30 && v15 <= 3)
    {
      ++v15;
      checkpoint_engine_perform(v36[3], &v39, &v30, &v29, v11, v12, v13, v14);
    }

    checkpoint_engine_free(v36[3], v8, v9, v10, v11, v12, v13, v14);
    v36[3] = 0;
    if (*(v32 + 6) != 512)
    {
      v30 = 3;
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create checkpoint control context\n", v1, v2, v3, v4, v5, v6, v7, "utest_512_checkpoint_steps");
    v30 = 1;
    v24 = v36[3];
    if (v24)
    {
      checkpoint_engine_free(v24, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v25 = v30;
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  return v25;
}

void sub_4A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4A238(CFStringRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_1C6C14 = a2;
  byte_1C6C15 = a3;
  ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process forking checkpoint monitor process\n", a2, a3, a4, a5, a6, a7, a8, "spawn_monitor");
  v10 = fork();
  v18 = v10;
  if (v10 < 1)
  {
    if (v10)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process failed to fork monitor process\n", v11, v12, v13, v14, v15, v16, v17, "spawn_monitor");
      *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"checkpoint_test #%d: fork of monitor failed (pid=%d)", dword_1C6C10, v18);
      return 55;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process starting\n", v11, v12, v13, v14, v15, v16, v17, "spawn_monitor");
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process starting\n", v57, v58, v59, v60, v61, v62, v63, "monitor_process_begin_test");
    ramrod_log_msg("\nUNIT TEST(%s) : ########################################################################################################################\n", v64, v65, v66, v67, v68, v69, v70, "monitor_process");
    ramrod_log_msg("\nUNIT TEST(%s) : %s\n", v71, v72, v73, v74, v75, v76, v77, "monitor_process");
    ramrod_log_msg("\nUNIT TEST(%s) : ########################################################################################################################\n", v78, v79, v80, v81, v82, v83, v84, "monitor_process");
    checkpoint_monitor_init(dword_1C6C20, v85, v86, v87, v88, v89, v90, v91);
    checkpoint_monitor_step(787, "unit_test_monitor_start", 0, 0, v92, v93, v94, v95);
    checkpoint_monitor_recorder_path("/mnt5", v96, v97, v98, v99, v100, v101, v102);
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process forking checkpoint engine process\n", v103, v104, v105, v106, v107, v108, v109, "monitor_process");
    v110 = fork();
    v118 = v110;
    if (v110 < 1)
    {
      if (!v110)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s engine process starting\n", v111, v112, v113, v114, v115, v116, v117, "engine_process");
        v154 = dword_1C6BEC;
        if ((dword_1C6BEC - 21) <= 0xFFFFFFEB)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : CHILD ERROR: invalid unit_test_number: %d\n", v147, v148, v149, v150, v151, v152, v153, "engine_process");
          exit(56);
        }

        ramrod_log_msg("\nUNIT TEST(%s) : %s CHILD: performing unit test\n", v147, v148, v149, v150, v151, v152, v153, "engine_process");
        v193 = (qword_1ADB20[9 * v154 + 4])();
        if (v193)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s CHILD ERROR: child return: %d(0x%X)\n", v186, v187, v188, v189, v190, v191, v192, "engine_process");
        }

        v194 = checkpoint_engine_finished_result(v193, v186, v187, v188, v189, v190, v191, v192);
        exit(v194);
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s engine process failed to fork monitor process\n", v111, v112, v113, v114, v115, v116, v117, "monitor_process");
      checkpoint_monitor_engine_failure(1u, v118, v173, v174, v175, v176, v177, v178);
      ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR: return\n", v179, v180, v181, v182, v183, v184, v185, "monitor_process");
      v146 = 39;
      goto LABEL_44;
    }

    v253 = 0;
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process waiting until engine process terminates\n", v111, v112, v113, v114, v115, v116, v117, "monitor_process");
    if (waitpid(v118, &v253, 0) == -1)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process unable to wait for engine process\n", v119, v120, v121, v122, v123, v124, v125, "monitor_process");
      checkpoint_monitor_engine_failure(2u, v253, v126, v127, v128, v129, v130, v131);
      ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR: return\n", v132, v133, v134, v135, v136, v137, v138, "monitor_process");
      v146 = 33;
LABEL_44:
      v252 = v146;
      goto LABEL_45;
    }

    v155 = v253;
    ramrod_log_msg("\nUNIT TEST(%s) : %s monitor process executing (engine process has terminated)\n", v119, v120, v121, v122, v123, v124, v125, "monitor_after_child_terminated");
    v163 = v155 & 0x7F;
    if (v163 == 127)
    {
      if (!v155)
      {
        if (byte_1C6C14)
        {
          checkpoint_monitor_engine_failure(5u, 0, v157, v158, v159, v160, v161, v162);
          v172 = 38;
          goto LABEL_131;
        }

        goto LABEL_51;
      }

      checkpoint_monitor_engine_failure(5u, v155, v157, v158, v159, v160, v161, v162);
      if (!byte_1C6C14)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s unexpected failure\n", v165, v166, v167, v168, v169, v170, v171, "monitor_after_child_terminated");
        v172 = 36;
        goto LABEL_131;
      }
    }

    else
    {
      if ((v155 & 0x7F) == 0)
      {
        v163 = BYTE1(v155);
        if (BYTE1(v155))
        {
          checkpoint_monitor_engine_failure(4u, BYTE1(v155), v157, v158, v159, v160, v161, v162);
          if (!byte_1C6C14 || (v252 = 41, dword_1C6BF8 >= 8) && dword_1C6BFC)
          {
            v172 = 34;
LABEL_131:
            v252 = v172;
            goto LABEL_132;
          }

          goto LABEL_62;
        }

LABEL_51:
        v195 = checkpoint_monitor_success(v156, v163, v157, v158, v159, v160, v161, v162);
        if (byte_1C6C15)
        {
          if (!v195)
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s expecting indication to shutdown instead of reboot\n", v165, v166, v167, v168, v169, v170, v171, "monitor_after_child_terminated");
            v172 = 47;
            goto LABEL_131;
          }
        }

        else if (v195)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s expecting indication to reboot instead of shutdown\n", v165, v166, v167, v168, v169, v170, v171, "monitor_after_child_terminated");
          v172 = 48;
          goto LABEL_131;
        }

        v252 = 0;
        goto LABEL_62;
      }

      checkpoint_monitor_engine_failure(3u, v163, v157, v158, v159, v160, v161, v162);
      if (!byte_1C6C14)
      {
        v172 = 35;
        goto LABEL_131;
      }
    }

    v252 = 41;
LABEL_62:
    ramrod_log_msg("\nUNIT TEST(%s) : %s checking NVRAM after phase completed\n", v165, v166, v167, v168, v169, v170, v171, "nvram_check_phase_completed");
    v196 = 1;
    while (dword_1C6C20 != 1)
    {
      v197 = @"checkpoint-nvram-unknown";
      if (dword_1C6C20 == 2)
      {
        v198 = &off_1A9CD0;
LABEL_67:
        v197 = v198[v196];
      }

      cf = 0;
      v257 = 0u;
      v258 = 0u;
      *buffer = 0u;
      v256 = 0u;
      CFStringGetCString(v197, buffer, 64, 0x8000100u);
      v199 = ramrod_copy_NVRAM_variable(v197, &cf);
      v200 = v199;
      if (!a4 || (v201 = *(a4 + 8 * dword_1C6BFC)) == 0 || (v202 = *(v201 + 8 * dword_1C6BF8)) == 0)
      {
        if (v199)
        {
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      if ((v196 - 2) > 0x1E)
      {
        v203 = 0;
      }

      else
      {
        v203 = *&aAptk_0[4 * v196 + 4];
      }

      v204 = *v202;
      if (v204 == 33)
      {
LABEL_77:
        if (v200)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] (exists when not expected)\n", v165, v166, v167, v168, v169, v170, v171, "nvram_check_expected");
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      do
      {
        if (dword_1C6C20 == 1)
        {
          v206 = &off_1A9BC8;
        }

        else
        {
          v205 = @"checkpoint-nvram-unknown";
          if (dword_1C6C20 != 2)
          {
            goto LABEL_84;
          }

          v206 = &off_1A9CD0;
        }

        v205 = v206[v196];
LABEL_84:
        if (dword_1C6C20 == 1)
        {
          v208 = &off_1A9BC8;
        }

        else
        {
          v207 = @"checkpoint-nvram-unknown";
          if (dword_1C6C20 != 2)
          {
            goto LABEL_89;
          }

          v208 = &off_1A9CD0;
        }

        v207 = v208[v204];
LABEL_89:
        if (CFStringCompare(v205, v207, 0) == kCFCompareEqualTo)
        {
          v209 = v202;
          goto LABEL_110;
        }

        v209 = 0;
        if (dword_1C6BFC >= 2 && v203 != v196)
        {
          if (dword_1C6C20 == 1)
          {
            v211 = &off_1A9BC8;
LABEL_96:
            v210 = v211[v203];
          }

          else
          {
            v210 = @"checkpoint-nvram-unknown";
            if (dword_1C6C20 == 2)
            {
              v211 = &off_1A9CD0;
              goto LABEL_96;
            }
          }

          if (dword_1C6C20 == 1)
          {
            v213 = &off_1A9BC8;
LABEL_101:
            v212 = v213[*v202];
          }

          else
          {
            v212 = @"checkpoint-nvram-unknown";
            if (dword_1C6C20 == 2)
            {
              v213 = &off_1A9CD0;
              goto LABEL_101;
            }
          }

          if (CFStringCompare(v210, v212, 0))
          {
            v209 = 0;
          }

          else
          {
            v209 = v202;
          }
        }

        if (v209)
        {
          break;
        }

        v214 = v202[4];
        v202 += 4;
        v204 = v214;
      }

      while (v214 != 33);
      if (!v209)
      {
        goto LABEL_77;
      }

LABEL_110:
      if (v200)
      {
        if (dword_1C6C20 == 1)
        {
          v216 = &off_1A9BC8;
LABEL_116:
          v215 = v216[v196];
        }

        else
        {
          v215 = @"checkpoint-nvram-unknown";
          if (dword_1C6C20 == 2)
          {
            v216 = &off_1A9CD0;
            goto LABEL_116;
          }
        }

        v217 = *(v209 + 1);
        memset(v291, 0, sizeof(v291));
        CFStringGetCString(v215, v291, 64, 0x8000100u);
        v218 = CFGetTypeID(v200);
        if (v218 == CFDataGetTypeID())
        {
          v226 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v200, 0x8000100u);
          if (v226)
          {
            v234 = v226;
            v289 = 0u;
            v290 = 0u;
            v287 = 0u;
            v288 = 0u;
            v285 = 0u;
            v286 = 0u;
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v271 = 0u;
            v272 = 0u;
            v269 = 0u;
            v270 = 0u;
            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            v263 = 0u;
            v264 = 0u;
            v261 = 0u;
            v262 = 0u;
            *v259 = 0u;
            v260 = 0u;
            CFStringGetCString(v226, v259, 512, 0x8000100u);
            if (CFStringCompare(v234, v217, 0))
            {
              v242 = "\nUNIT TEST(%s) : %s ERROR: checkpoint NVRAM [%s] unexpected value [%s]\n";
            }

            else
            {
              v242 = "\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] expected value [%s]\n";
            }

            ramrod_log_msg(v242, v235, v236, v237, v238, v239, v240, v241, "nvram_check_ref_match");
            CFRelease(v234);
          }

          else
          {
            ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] unable to create string from CFData\n", v227, v228, v229, v230, v231, v232, v233, "nvram_check_ref_match");
          }
        }

        else
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] is not CFData type\n", v219, v220, v221, v222, v223, v224, v225, "nvram_check_ref_match");
        }

LABEL_125:
        CFRelease(v200);
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s checkpoint NVRAM [%s] (required but doesn't exist)\n", v165, v166, v167, v168, v169, v170, v171, "nvram_check_expected");
      }

LABEL_126:
      v164 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (++v196 == 33)
      {
LABEL_132:
        checkpoint_monitor_final_result(v164, v165, v166, v167, v168, v169, v170, v171);
        ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR: return\n", v243, v244, v245, v246, v247, v248, v249, "monitor_process");
        if (!v252)
        {
          exit(0);
        }

LABEL_45:
        ramrod_log_msg("\nUNIT TEST(%s) : %s MONITOR ERROR: monitor return: %d(0x%X)\n", v139, v140, v141, v142, v143, v144, v145, "monitor_process_begin_test");
        exit(v252);
      }
    }

    v198 = &off_1A9BC8;
    goto LABEL_67;
  }

  *v259 = 0;
  ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process waiting until monitor process terminates\n", v11, v12, v13, v14, v15, v16, v17, "spawn_monitor");
  if (waitpid(v18, v259, 0) == -1)
  {
    v251 = qword_1C6C08;
    ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process unable to wait for monitor process\n", v19, v20, v21, v22, v23, v24, v25, "spawn_monitor");
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s failed waiting monitor termination", qword_1C6C08, v251);
    return 49;
  }

  v26 = *v259;
  v250 = qword_1C6C08;
  ramrod_log_msg("\nUNIT TEST(%s) : %s unit test process executing (monitor process has terminated)\n", v19, v20, v21, v22, v23, v24, v25, "after_monitor_terminated");
  if ((v26 & 0x7F) != 0x7F)
  {
    if ((v26 & 0x7F) != 0)
    {
      *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor terminated by signal %d", qword_1C6C08, v26 & 0x7F);
      if (!byte_1C6C14)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s terminated with signal(%d)\n", v43, v44, v45, v46, v47, v48, v49, "after_monitor_terminated");
        return 51;
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [WIFSIGNALED])\n", v43, v44, v45, v46, v47, v48, v49, "after_monitor_terminated");
      return 0;
    }

    v27 = BYTE1(v26);
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor exited with status %d(0x%X)", qword_1C6C08, v27, v27);
    if (!byte_1C6C14 || dword_1C6BF8 >= 8 && dword_1C6BFC)
    {
      if (v27)
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s returned status(%d,0x%X) when not expecting failure\n", v28, v29, v30, v31, v32, v33, v34, "after_monitor_terminated");
        return 52;
      }

      return 0;
    }

    if (v27 == 41)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [WIFEXITED])\n", v28, v29, v30, v31, v32, v33, v34, "after_monitor_terminated");
      return 0;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s returned status(%d,0x%X) when expected: EXPECTED_FAILURE(0x%X)\n", v28, v29, v30, v31, v32, v33, v34, "after_monitor_terminated");
    return 53;
  }

  if (!v26)
  {
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor returned SUCCESS", qword_1C6C08, v250);
    if (byte_1C6C14)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [monitor terminated SUCCESS])\n", v50, v51, v52, v53, v54, v55, v56, "after_monitor_terminated");
      return 54;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS\n", v50, v51, v52, v53, v54, v55, v56, "after_monitor_terminated");
    return 0;
  }

  *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s monitor returned status %d(0x%X)", qword_1C6C08, v26, v26);
  if (!byte_1C6C14)
  {
    return 52;
  }

  if (v26 != 41)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s exit status(%d,0x%X) when expected: EXPECTED_FAILURE(0x%X)\n", v36, v37, v38, v39, v40, v41, v42, "after_monitor_terminated");
    return 53;
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s SUCCESS (expected failure [exit status])\n", v36, v37, v38, v39, v40, v41, v42, "after_monitor_terminated");
  return 0;
}

void sub_4AD68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke");
  if (strcmp(*(*(a1[4] + 8) + 24), "var_char"))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1: var_char mismatch\n", v9, v10, v11, v12, v13, v14, v15, "utest_engines_in_sequence_block_invoke");
    *(*(a1[5] + 8) + 24) = 2;
  }

  if (*(*(a1[6] + 8) + 24) != 287454020)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1: var_uint32 mismatch\n", v9, v10, v11, v12, v13, v14, v15, "utest_engines_in_sequence_block_invoke");
    *(*(a1[5] + 8) + 24) = 3;
  }

  v16 = *(*(a1[7] + 8) + 24);

  checkpoint_closure_nvram_available(v16, v9, v10, v11, v12, v13, v14, v15);
}

void sub_4AE54(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v4 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v4, 8);
}

void sub_4AEC4(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_4AF20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke");
  }

  else if (!*(*(a1[4] + 8) + 24))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(a1[5] + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
    *(*(a1[4] + 8) + 24) = 1;
  }

  *(*(a1[6] + 8) + 24) = "step2_name";
  *(*(a1[7] + 8) + 24) = 572662306;
}

void sub_4AFF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke_2");
  if (strcmp(*(*(a1[4] + 8) + 24), "step2_name"))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3: var_char mismatch\n", v9, v10, v11, v12, v13, v14, v15, "utest_engines_in_sequence_block_invoke_2");
    *(*(a1[5] + 8) + 24) = 4;
  }

  if (*(*(a1[6] + 8) + 24) != 572662306)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3: var_uint32 mismatch\n", v9, v10, v11, v12, v13, v14, v15, "utest_engines_in_sequence_block_invoke_2");
    *(*(a1[5] + 8) + 24) = 5;
  }
}

void sub_4B0BC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_4B11C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_4B16C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    if (!*(*(a1[4] + 8) + 24))
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke");
      checkpoint_closure_point_of_fail_forward(*(*(a1[5] + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
      *(*(a1[4] + 8) + 24) = 1;
    }
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke");
  }

  *(*(a1[6] + 8) + 24) = "step4_name";
  *(*(a1[7] + 8) + 24) = 1145324612;
}

void sub_4B240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_5\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke_2");
  if (strcmp(*(*(a1[4] + 8) + 24), "step4_name"))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4: var_char mismatch\n", v9, v10, v11, v12, v13, v14, v15, "utest_engines_in_sequence_block_invoke_2");
    *(*(a1[5] + 8) + 24) = 6;
  }

  if (*(*(a1[6] + 8) + 24) != 1145324612)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4: var_uint32 mismatch\n", v9, v10, v11, v12, v13, v14, v15, "utest_engines_in_sequence_block_invoke_2");
    *(*(a1[5] + 8) + 24) = 7;
  }
}

void sub_4B30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_6\n", a2, a3, a4, a5, a6, a7, a8, "utest_engines_in_sequence_block_invoke_3");
  *(*(*(a1 + 32) + 8) + 24) = "var_char";
  *(*(*(a1 + 40) + 8) + 24) = 287454020;
}

void sub_4B37C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_api_block_invoke");
  v16 = *(a1[4] + 8);
  if (*(v16 + 24))
  {
    *(*(a1[5] + 8) + 24) = 2;
  }

  else
  {
    *(v16 + 24) = 1;
    v17 = *(*(a1[6] + 8) + 24);

    checkpoint_closure_warning(v17, "warning from closure_step_1", v10, v11, v12, v13, v14, v15, a9);
  }
}

void sub_4B420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_api_block_invoke_2");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_api_block_invoke_2");
    checkpoint_closure_point_of_no_return(*(*(a1[4] + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(a1[5] + 8);
  if (*(v16 + 24) == 1)
  {
    v17 = 2;
  }

  else
  {
    v16 = *(a1[6] + 8);
    v17 = 3;
  }

  *(v16 + 24) = v17;
}

void sub_4B528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_api_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_api_block_invoke");
    checkpoint_closure_point_of_fail_forward(*(*(a1[4] + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  v22 = *(a1[5] + 8);
  if (*(v22 + 24) == 3)
  {
    *(v22 + 24) = 4;
    checkpoint_closure_warning(*(*(a1[4] + 8) + 24), "closure_step_4 terminating", v16, v17, v18, v19, v20, v21, v31);
    v30 = *(*(a1[4] + 8) + 24);

    checkpoint_closure_terminate(v30, v23, v24, v25, v26, v27, v28, v29);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 4;
  }
}

void sub_4B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_5\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_api_block_invoke_2");
  *(*(*(a1 + 32) + 8) + 24) = 5;
  *(*(*(a1 + 40) + 8) + 24) = 5;
}

void sub_4B680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(*(a1 + 40) + 8);
  if (!*(v16 + 24))
  {
    *(v16 + 24) = 1;
  }
}

void sub_4B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_block_invoke_3");
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_block_invoke_3");
  }

  v17 = *(*(a1 + 40) + 8);
  if (*(v17 + 24) == 2)
  {
    *(v17 + 24) = 3;
  }
}

void sub_4B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_block_invoke_4");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 3)
  {
    *(v9 + 24) = 4;
    v10 = dword_1C6BF8 < 8 || dword_1C6BFC == 0;
    v11 = 48;
    if (v10)
    {
      v11 = 40;
      v12 = 192;
    }

    else
    {
      v12 = 5;
    }

    *(*(*(a1 + v11) + 8) + 24) = v12;
  }
}

void sub_4B9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_error_block_invoke_3");
  *(*(*(a1 + 32) + 8) + 24) = 3;
  v16 = *(*(*(a1 + 40) + 8) + 24);

  checkpoint_closure_nvram_available(v16, v9, v10, v11, v12, v13, v14, v15);
}

void sub_4BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_error_block_invoke_4");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_4 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_error_block_invoke_4");
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(*(a1 + 40) + 8);
  if (*(v16 + 24) == 3)
  {
    *(v16 + 24) = 4;
  }
}

void sub_4BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v9 = dword_1C6BFC == 0) : (v9 = 1), v9))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_6\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_error_block_invoke_6");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_6 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_error_block_invoke_6");
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = *(*(a1 + 40) + 8);
  if (*(v17 + 24) == 5)
  {
    *(v17 + 24) = 6;
  }
}

void sub_4BBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_7\n", a2, a3, a4, a5, a6, a7, a8, "utest_checkpoint_fail_error_block_invoke_7");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 6)
  {
    *(v9 + 24) = 7;
    if (dword_1C6BF8 >= 8 && dword_1C6BFC != 0)
    {
      v14 = 8;
      v15 = 56;
LABEL_11:
      *(*(*(a1 + v15) + 8) + 24) = v14;
      return;
    }

    v11 = *(*(a1 + 40) + 8);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      CFDictionaryAddValue(Mutable, kCFErrorDescriptionKey, @"closure error message");
      CFDictionaryAddValue(v13, kCFErrorLocalizedRecoverySuggestionKey, @"recovery");
      CFDictionaryAddValue(v13, kCFErrorLocalizedDescriptionKey, @"localized");
      CFDictionaryAddValue(v13, kCFErrorLocalizedFailureReasonKey, @"reason");
      *(v11 + 24) = CFErrorCreate(kCFAllocatorDefault, @"CheckpointUnitTestErrorDomain", 191, v13);
      CFRelease(v13);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v14 = 192;
      v15 = 48;
      goto LABEL_11;
    }
  }
}

uint64_t sub_4BDC8()
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30 = 0;
  v28 = off_1AD4D0();
  v29 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v0 = checkpoint_engine_init(dword_1C6C20, 3, *v28);
  v32[3] = v0;
  if (v0)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3254779904;
    v22[2] = sub_4C5D4;
    v22[3] = &unk_1AE138;
    v22[4] = v23;
    v22[5] = &v31;
    v22[6] = &v25;
    v8 = &v291;
    bzero(&v291, 0x360uLL);
    v291 = 779;
    v292 = "multi_thread_1_step";
    v293 = v22;
    v294 = 1;
    v295 = 779;
    v296 = "multi_thread_1_step";
    v297 = v22;
    v298 = 1;
    v299 = 779;
    v300 = "multi_thread_1_step";
    v301 = v22;
    v302 = 1;
    v303 = 779;
    v304 = "multi_thread_1_step";
    v305 = v22;
    v306 = 1;
    v307 = 779;
    v308 = "multi_thread_1_step";
    v309 = v22;
    v310 = 1;
    v311 = 779;
    v312 = "multi_thread_1_step";
    v313 = v22;
    v314 = 1;
    v315 = 779;
    v316 = "multi_thread_1_step";
    v317 = v22;
    v318 = 1;
    v319 = 779;
    v320 = "multi_thread_1_step";
    v321 = v22;
    v322 = 1;
    bzero(&v259, 0x360uLL);
    v259 = 780;
    v260 = "multi_thread_2_step";
    v261 = v22;
    v262 = 1;
    v263 = 780;
    v264 = "multi_thread_2_step";
    v265 = v22;
    v266 = 1;
    v267 = 780;
    v268 = "multi_thread_2_step";
    v269 = v22;
    v270 = 1;
    v271 = 780;
    v272 = "multi_thread_2_step";
    v273 = v22;
    v274 = 1;
    v275 = 780;
    v276 = "multi_thread_2_step";
    v277 = v22;
    v278 = 1;
    v279 = 780;
    v280 = "multi_thread_2_step";
    v281 = v22;
    v282 = 1;
    v283 = 780;
    v284 = "multi_thread_2_step";
    v285 = v22;
    v286 = 1;
    v287 = 780;
    v288 = "multi_thread_2_step";
    v289 = v22;
    v290 = 1;
    bzero(&v227, 0x360uLL);
    v227 = 781;
    v228 = "multi_thread_3_step";
    v229 = v22;
    v230 = 1;
    v231 = 781;
    v232 = "multi_thread_3_step";
    v233 = v22;
    v234 = 1;
    v235 = 781;
    v236 = "multi_thread_3_step";
    v237 = v22;
    v238 = 1;
    v239 = 781;
    v240 = "multi_thread_3_step";
    v241 = v22;
    v242 = 1;
    v243 = 781;
    v244 = "multi_thread_3_step";
    v245 = v22;
    v246 = 1;
    v247 = 781;
    v248 = "multi_thread_3_step";
    v249 = v22;
    v250 = 1;
    v251 = 781;
    v252 = "multi_thread_3_step";
    v253 = v22;
    v254 = 1;
    v255 = 781;
    v256 = "multi_thread_3_step";
    v257 = v22;
    v258 = 1;
    bzero(&v195, 0x360uLL);
    v195 = 782;
    v196 = "multi_thread_4_step";
    v197 = v22;
    v198 = 1;
    v199 = 782;
    v200 = "multi_thread_4_step";
    v201 = v22;
    v202 = 1;
    v203 = 782;
    v204 = "multi_thread_4_step";
    v205 = v22;
    v206 = 1;
    v207 = 782;
    v208 = "multi_thread_4_step";
    v209 = v22;
    v210 = 1;
    v211 = 782;
    v212 = "multi_thread_4_step";
    v213 = v22;
    v214 = 1;
    v215 = 782;
    v216 = "multi_thread_4_step";
    v217 = v22;
    v218 = 1;
    v219 = 782;
    v220 = "multi_thread_4_step";
    v221 = v22;
    v222 = 1;
    v223 = 782;
    v224 = "multi_thread_4_step";
    v225 = v22;
    v226 = 1;
    bzero(&v163, 0x360uLL);
    v163 = 783;
    v164 = "multi_thread_5_step";
    v165 = v22;
    v166 = 1;
    v167 = 783;
    v168 = "multi_thread_5_step";
    v169 = v22;
    v170 = 1;
    v171 = 783;
    v172 = "multi_thread_5_step";
    v173 = v22;
    v174 = 1;
    v175 = 783;
    v176 = "multi_thread_5_step";
    v177 = v22;
    v178 = 1;
    v179 = 783;
    v180 = "multi_thread_5_step";
    v181 = v22;
    v182 = 1;
    v183 = 783;
    v184 = "multi_thread_5_step";
    v185 = v22;
    v186 = 1;
    v187 = 783;
    v188 = "multi_thread_5_step";
    v189 = v22;
    v190 = 1;
    v191 = 783;
    v192 = "multi_thread_5_step";
    v193 = v22;
    v194 = 1;
    bzero(&v131, 0x360uLL);
    v131 = 784;
    v132 = "multi_thread_6_step";
    v133 = v22;
    v134 = 1;
    v135 = 784;
    v136 = "multi_thread_6_step";
    v137 = v22;
    v138 = 1;
    v139 = 784;
    v140 = "multi_thread_6_step";
    v141 = v22;
    v142 = 1;
    v143 = 784;
    v144 = "multi_thread_6_step";
    v145 = v22;
    v146 = 1;
    v147 = 784;
    v148 = "multi_thread_6_step";
    v149 = v22;
    v150 = 1;
    v151 = 784;
    v152 = "multi_thread_6_step";
    v153 = v22;
    v154 = 1;
    v155 = 784;
    v156 = "multi_thread_6_step";
    v157 = v22;
    v158 = 1;
    v159 = 784;
    v160 = "multi_thread_6_step";
    v161 = v22;
    v162 = 1;
    bzero(&v99, 0x360uLL);
    v99 = 785;
    v100 = "multi_thread_7_step";
    v101 = v22;
    v102 = 1;
    v103 = 785;
    v104 = "multi_thread_7_step";
    v105 = v22;
    v106 = 1;
    v107 = 785;
    v108 = "multi_thread_7_step";
    v109 = v22;
    v110 = 1;
    v111 = 785;
    v112 = "multi_thread_7_step";
    v113 = v22;
    v114 = 1;
    v115 = 785;
    v116 = "multi_thread_7_step";
    v117 = v22;
    v118 = 1;
    v119 = 785;
    v120 = "multi_thread_7_step";
    v121 = v22;
    v122 = 1;
    v123 = 785;
    v124 = "multi_thread_7_step";
    v125 = v22;
    v126 = 1;
    v127 = 785;
    v128 = "multi_thread_7_step";
    v129 = v22;
    v130 = 1;
    bzero(&v67, 0x360uLL);
    v67 = 786;
    v68 = "multi_thread_8_step";
    v69 = v22;
    v70 = 1;
    v71 = 786;
    v72 = "multi_thread_8_step";
    v73 = v22;
    v74 = 1;
    v75 = 786;
    v76 = "multi_thread_8_step";
    v77 = v22;
    v78 = 1;
    v79 = 786;
    v80 = "multi_thread_8_step";
    v81 = v22;
    v82 = 1;
    v83 = 786;
    v84 = "multi_thread_8_step";
    v85 = v22;
    v86 = 1;
    v87 = 786;
    v88 = "multi_thread_8_step";
    v89 = v22;
    v90 = 1;
    v91 = 786;
    v92 = "multi_thread_8_step";
    v93 = v22;
    v94 = 1;
    v95 = 786;
    v96 = "multi_thread_8_step";
    v97 = v22;
    v98 = 1;
    bzero(&v35, 0x360uLL);
    v35 = 778;
    v36 = "multi_thread_step";
    v37 = v22;
    v38 = 1;
    v39 = 778;
    v40 = "multi_thread_step";
    v41 = v22;
    v42 = 1;
    v43 = 778;
    v44 = "multi_thread_step";
    v45 = v22;
    v46 = 1;
    v47 = 778;
    v48 = "multi_thread_step";
    v49 = v22;
    v50 = 1;
    v51 = 778;
    v52 = "multi_thread_step";
    v53 = v22;
    v54 = 1;
    v55 = 778;
    v56 = "multi_thread_step";
    v57 = v22;
    v58 = 1;
    v59 = 778;
    v60 = "multi_thread_step";
    v61 = v22;
    v62 = 1;
    v63 = 778;
    v64 = "multi_thread_step";
    v65 = v22;
    v66 = 1;
    v13 = *v26[3];
    if (v13 > 4)
    {
      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v8 = &v163;
        }

        else
        {
          v8 = &v131;
        }

        goto LABEL_20;
      }

      if (v13 == 7)
      {
        v8 = &v99;
        goto LABEL_20;
      }

      if (v13 == 8)
      {
        v8 = &v67;
        goto LABEL_20;
      }
    }

    else
    {
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v8 = &v227;
        }

        else
        {
          v8 = &v195;
        }

        goto LABEL_20;
      }

      if (v13 == 1)
      {
LABEL_20:
        checkpoint_engine_perform(v32[3], v8, &v30, &v29, v9, v10, v11, v12);
        checkpoint_engine_free(v32[3], v14, v15, v16, v17, v18, v19, v20);
        v32[3] = 0;
        goto LABEL_21;
      }

      if (v13 == 2)
      {
        v8 = &v259;
        goto LABEL_20;
      }
    }

    v8 = &v35;
    goto LABEL_20;
  }

  ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create engine context for thread %d\n", v1, v2, v3, v4, v5, v6, v7, "utest_thread_engine");
  v30 = 2;
LABEL_21:
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  return 0;
}

void sub_4C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_4C5D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++*(*(a1[4] + 8) + 24);
  checkpoint_closure_info(*(*(a1[5] + 8) + 24), "thread %d performing step %d", a3, a4, a5, a6, a7, a8, **(*(a1[6] + 8) + 24));
  checkpoint_closure_warning(*(*(a1[5] + 8) + 24), "thread %d performing step %d", v9, v10, v11, v12, v13, v14, **(*(a1[6] + 8) + 24));
}

void sub_4C678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s outer_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_nested_engines_block_invoke");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24))
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(v9 + 24) = v10;
}

void sub_4C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s outer_step_2\n", a2, a3, a4, a5, a6, a7, a8, "utest_nested_engines_block_invoke_2");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 1)
  {
    v10 = 2;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 3;
  }

  *(v9 + 24) = v10;
}

void sub_4C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s outer_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_nested_engines_block_invoke_3");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 2)
  {
    *(v9 + 24) = 3;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 100;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v37 = 0;
    v10 = checkpoint_engine_init(dword_1C6C20, 3, 0);
    v18 = v10;
    if (v10)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3254779904;
      v36[2] = sub_4CA68;
      v36[3] = &unk_1AD6E8;
      v36[4] = &v42;
      v36[5] = &v38;
      v34[5] = &v38;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3254779904;
      v35[2] = sub_4CADC;
      v35[3] = &unk_1AD6E8;
      v35[4] = &v42;
      v35[5] = &v38;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3254779904;
      v34[2] = sub_4CB50;
      v34[3] = &unk_1AD6E8;
      v34[4] = &v42;
      v46[1] = 0;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 769;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 770;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v46[0] = 768;
      v47 = "inner_step_1";
      *&v48 = v36;
      BYTE8(v48) = 1;
      v54 = "inner_step_2";
      *&v55 = v35;
      BYTE8(v55) = 1;
      v61 = "inner_step_3";
      *&v62 = v34;
      BYTE8(v62) = 1;
      checkpoint_engine_perform(v10, v46, v39 + 6, &v37, v14, v15, v16, v17);
      checkpoint_engine_free(v18, v19, v20, v21, v22, v23, v24, v25);
      v33 = v39[6];
      if (v33)
      {
LABEL_10:
        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);
        goto LABEL_11;
      }

      if (*(v43 + 6) == 103)
      {
        v33 = 0;
        goto LABEL_10;
      }

      ramrod_log_msg("\nUNIT TEST(%s) : %s (inner) last_step(%d) != 103\n", v26, v27, v28, v29, v30, v31, v32, "utest_nested_inner_engine");
      v33 = 5;
    }

    else
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s unable to create inner engine\n", v11, v12, v13, v14, v15, v16, v17, "utest_nested_inner_engine");
      v33 = 1;
    }

    v39[6] = v33;
    goto LABEL_10;
  }

  v33 = 4;
LABEL_11:
  *(*(*(a1 + 40) + 8) + 24) = v33;
}

void sub_4CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_4CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s inner_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_nested_inner_engine_block_invoke");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 100)
  {
    v10 = 101;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 2;
  }

  *(v9 + 24) = v10;
}

void sub_4CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s inner_step_2\n", a2, a3, a4, a5, a6, a7, a8, "utest_nested_inner_engine_block_invoke_2");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 101)
  {
    v10 = 102;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 3;
  }

  *(v9 + 24) = v10;
}

void sub_4CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s inner_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_nested_inner_engine_block_invoke_3");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 102)
  {
    v10 = 103;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = 4;
  }

  *(v9 + 24) = v10;
}

void sub_4CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3 || dword_1C6BF8 == 4 || dword_1C6BF8 == 7)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_shutdown_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_shutdown_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24), v13, v14, v15, v16, v17, v18, v19);
  }

  if (dword_1C6BF8 != 4 && dword_1C6BF8 != 7)
  {
    v12 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_shutdown(v12, "utest_closure_shutdown: child triggered shutdown", v20, v21, v22, v23, v24, v25);
  }
}

void sub_4CCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_shutdown_block_invoke_3");
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_closure_shutdown_block_invoke_3");
  }

  v23 = *(*(*(a1 + 32) + 8) + 24);

  checkpoint_closure_shutdown(v23, "utest_closure_shutdown: child triggered shutdown", v17, v18, v19, v20, v21, v22);
}

void sub_4CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_retry_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_retry_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(*(a1 + 40) + 8);
  if (!*(v16 + 24))
  {
    *(v16 + 24) = 1;
  }
}

void sub_4CE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_retry_block_invoke_3");
    v17 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_fail_forward(v17, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_retry_block_invoke_3");
  }
}

void sub_4CF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_retry_block_invoke_4");
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 24) == 3)
  {
    *(v9 + 24) = 4;
    v10 = 192;
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v10;
}

void sub_4CFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_excessive_retries_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_excessive_retries_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = *(*(a1 + 40) + 8);
  if (!*(v16 + 24))
  {
    *(v16 + 24) = 1;
  }
}

void sub_4D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_excessive_retries_block_invoke_3");
    v17 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_fail_forward(v17, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_excessive_retries_block_invoke_3");
  }
}

void sub_4D160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_excessive_retries_block_invoke_4");
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 24);
  if (v16 == 3)
  {
    *(v15 + 24) = 4;
    v16 = *(*(a1[4] + 8) + 24);
  }

  if (v16 == 4)
  {
    v17 = *(a1[5] + 8);
    v18 = *(v17 + 24);
    if (v18 > 8)
    {
      v19 = 0;
    }

    else
    {
      *(v17 + 24) = v18 + 1;
      checkpoint_closure_warning(*(*(a1[6] + 8) + 24), "warn", v9, v10, v11, v12, v13, v14, v20);
      v19 = 192;
    }

    *(*(a1[7] + 8) + 24) = v19;
  }
}

void sub_4D27C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3 || *(*(a1[4] + 8) + 24))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_many_retry_steps_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_many_retry_steps_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(a1[5] + 8) + 24), v13, v14, v15, v16, v17, v18, v19);
  }

  v9 = *(a1[4] + 8);
  v10 = *(v9 + 24);
  if (v10 >= *(*(a1[6] + 8) + 24))
  {
    *(v9 + 24) = 0;
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 24) + 1;
  }

  else
  {
    *(v9 + 24) = v10 + 1;
    v11 = *(a1[7] + 8);
    v12 = 192;
  }

  *(v11 + 24) = v12;
}

void *sub_4D368(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void sub_4D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 == 7 || dword_1C6BF8 == 4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_many_retry_steps_block_invoke_3");
    v17 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_fail_forward(v17, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_many_retry_steps_block_invoke_3");
  }
}

void *sub_4D460(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D4B0(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D500(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D550(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D5A0(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D5F0(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D640(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void *sub_4D690(void *result)
{
  v1 = *(result[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(*(result[5] + 8) + 24))
  {
    *(v1 + 24) = 0;
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24) + 1;
  }

  else
  {
    *(v1 + 24) = v2 + 1;
    v3 = *(result[6] + 8);
    v4 = 192;
  }

  *(v3 + 24) = v4;
  return result;
}

void sub_4D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_no_use_block_invoke");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_no_use_block_invoke");
    checkpoint_closure_point_of_no_return(*(*(*(a1 + 32) + 8) + 24), v9, v10, v11, v12, v13, v14, v15);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_4D7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v9 = dword_1C6BFC == 0) : (v9 = 1), v9))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_no_use_block_invoke_3");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_3 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_no_use_block_invoke_3");
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
  }

  *(*(*(a1 + 40) + 8) + 24) = 3;
}

void sub_4D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_4\n", a2, a3, a4, a5, a6, a7, a8, "utest_immed_no_use_block_invoke_4");
  *(*(*(a1 + 32) + 8) + 24) = 4;
  ++*(*(*(a1 + 40) + 8) + 24);
  v9 = 192;
  if (dword_1C6BF8 < 8 || dword_1C6BFC == 0)
  {
    v11 = 48;
  }

  else
  {
    v11 = 56;
    if (*(*(*(a1 + 40) + 8) + 24) >= 5)
    {
      v9 = 5;
    }

    else
    {
      v11 = 48;
      v9 = 192;
    }
  }

  *(*(*(a1 + v11) + 8) + 24) = v9;
}

void sub_4D998(const __CFString *a1, const __CFString *a2)
{
  if (dword_1C6BF8 < 8 || dword_1C6BFC == 0)
  {
    sub_461B4(26, a1);
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = @"0";
    }

    sub_461B4(27, v5);

    sub_461B4(28, @"closure_step_2");
  }
}

void sub_4DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_block_invoke_2");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_block_invoke_2");
    v16 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_no_return(v16, v9, v10, v11, v12, v13, v14, v15);
  }
}

void sub_4DB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v9 = dword_1C6BFC == 0) : (v9 = 1), v9))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_block_invoke_4");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_block_invoke_4");
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_4DC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke");
  v16 = *(*(*(a1 + 32) + 8) + 24);

  checkpoint_closure_nvram_available(v16, v9, v10, v11, v12, v13, v14, v15);
}

void sub_4DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 < 3)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke_2");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s sequence_step_2 [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke_2");
    v16 = *(*(*(a1 + 32) + 8) + 24);

    checkpoint_closure_point_of_no_return(v16, v9, v10, v11, v12, v13, v14, v15);
  }
}

void sub_4DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_1C6BF8 != 4 && (dword_1C6BF8 >= 7 ? (v9 = dword_1C6BFC == 0) : (v9 = 1), v9))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke_4");
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_1 [point-of-fail-forward]\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke_4");
    checkpoint_closure_point_of_fail_forward(*(*(*(a1 + 32) + 8) + 24), v10, v11, v12, v13, v14, v15, v16);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_4DE88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (++*(*(a1[4] + 8) + 24) < 0x29u)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2 (exercised count = %u)\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke_5");
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 57;
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_2 (failing at exercise count = %u)\n", a2, a3, a4, a5, a6, a7, a8, "utest_sim_failure_exercise_block_invoke_5");
  }

  *(*(a1[6] + 8) + 24) = 2;
}

void sub_4DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  if (dword_1C6BF8 >= 3 && *(a1 + 48) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 137;
    ramrod_log_msg("\nUNIT TEST(%s) : %s closure_step_512 (step 37) [point-of-no-return]\n", a2, a3, a4, a5, a6, a7, a8, "utest_512_checkpoint_steps_block_invoke");
    v16 = *(*(*(a1 + 40) + 8) + 24);

    checkpoint_closure_point_of_no_return(v16, v9, v10, v11, v12, v13, v14, v15);
  }
}

void sub_4E014(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v53 = a4;
  v51 = 0;
  v5 = 0;
  v50 = 0;
LABEL_2:
  bzero(v54, 0x800uLL);
  v6 = read(a2, &v54[v5], 2048 - v5);
  v14 = v6;
  if (!v6)
  {
    v15 = 0;
    goto LABEL_6;
  }

  if (v6 != -1)
  {
    v14 = v6 + v5;
    v15 = 1;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (!v14)
      {
LABEL_48:
        __memcpy_chk();
        if (v15)
        {
          v5 = v14;
          goto LABEL_2;
        }

        if (v14)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s %s partial last line\n", v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_file");
          v40 = 0;
          v41 = 67;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v17 = ~v16;
      v18 = 1 - v14;
      v19 = &v54[v16];
      while (*v19 != 10)
      {
        --v17;
        ++v18;
        ++v19;
        if (v18 == 1)
        {
          goto LABEL_48;
        }
      }

      v20 = 0;
      *v19 = 0;
      v21 = &v54[v16];
      do
      {
        v22 = aGmt[v20];
        v23 = v21[v20];
        if (v22 == 32)
        {
          if ((v23 - 48) >= 0xA)
          {
            goto LABEL_34;
          }
        }

        else if (v22 != v23)
        {
LABEL_34:
          ramrod_log_msg("\nUNIT TEST(%s) : %s history line with bad fixed_of_hdr >>> %s\n", v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_line");
LABEL_35:
          *v53 = 68;
          goto LABEL_37;
        }

        ++v20;
      }

      while (v20 != 20);
      v24 = a2;
      v25 = 0;
      v27 = v21 + 20;
      v26 = v21[20];
      v28 = 1;
      do
      {
        if (v25)
        {
          if (v26 == 125)
          {
            v29 = 0;
            goto LABEL_27;
          }
        }

        else if (v26 == 62)
        {
          v29 = 1;
          v25 = 1;
          goto LABEL_27;
        }

        if ((v26 - 48) >= 0xA)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s history line with bad pids >>> %s\n", v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_line");
          v28 = 0;
          *v53 = 68;
        }

        v29 = 1;
LABEL_27:
        v26 = v27[1];
        if (!v26)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s history line missing pid(s) >>> %s\n", v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_line");
          *v53 = 68;
          a2 = v24;
          goto LABEL_37;
        }

        if (!v28)
        {
          v29 = 0;
        }

        ++v27;
      }

      while ((v29 & 1) != 0);
      a2 = v24;
      if (!v28)
      {
        goto LABEL_37;
      }

      if (strncmp(v27, " CHECKPOINT ", 0xCuLL))
      {
        ramrod_log_msg("\nUNIT TEST(%s) : %s history line missing CHECKPOINT >>> %s\n", v30, v31, v32, v33, v34, v35, v36, "utest_verify_history_line");
        goto LABEL_35;
      }

      if (!strncmp(v27 + 12, "NOTICE: Pre-existing NVRAM variable: ota-uuid=AAAAAAAA-1111-BBBB-2222-CCCCCCCCCCCC", 0x52uLL) || !strncmp(v27 + 12, "NOTICE: Post-engines NVRAM variable: ota-uuid=AAAAAAAA-1111-BBBB-2222-CCCCCCCCCCCC", 0x52uLL))
      {
        v51 = 1;
      }

      if (a3)
      {
        v37 = v27 + 12;
        v38 = "FINAL-MONITOR";
        v39 = 13;
LABEL_46:
        if (!strncmp(v37, v38, v39))
        {
          ramrod_log_msg("\nUNIT TEST(%s) : %s history end found >>> %s\n", v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_line");
          v50 = 1;
        }
      }

      else if (qword_1C6C18)
      {
        v39 = strlen(qword_1C6C18);
        v37 = v27 + 12;
        v38 = qword_1C6C18;
        goto LABEL_46;
      }

LABEL_37:
      v16 = -v17;
      v14 = -v18;
      if (!v18)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_2;
      }
    }
  }

  __error();
  ramrod_log_msg("\nUNIT TEST(%s) : %s %s read failed: %d\n", v42, v43, v44, v45, v46, v47, v48, "utest_verify_history_file");
  v40 = 1;
  v41 = 66;
LABEL_55:
  *v53 = v41;
  if ((v40 & 1) == 0)
  {
LABEL_56:
    if (!v51 && qword_1C6C18)
    {
      ramrod_log_msg("\nUNIT TEST(%s) : %s %s file with no ota-uuid\n", v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_file");
      *v53 = 69;
    }

    if (a3)
    {
      if (v50)
      {
        return;
      }

      v49 = "\nUNIT TEST(%s) : %s %s monitor file with no FINAL\n";
      goto LABEL_66;
    }

    if ((byte_1C6C16 & 1) == 0 && qword_1C6C18 && !v50)
    {
      v49 = "\nUNIT TEST(%s) : %s %s engines file with no FINISHED\n";
LABEL_66:
      ramrod_log_msg(v49, v7, v8, v9, v10, v11, v12, v13, "utest_verify_history_file");
      *v53 = 69;
    }
  }
}

void sub_4E50C(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

void ramrod_create_error_internal(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, char *cStr, ...)
{
  va_start(va, cStr);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  sub_4E50C(a1, a2, a3, a4, v9, va);
  CFRelease(v9);
}

uint64_t sub_4ED94(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D9BC4(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_4EF1C(char *a1, const __CFString *a2)
{
  v4 = sub_4F81C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &unk_10AE0C, Length)))
    {
      v9 = 0;
      v10 = "NO";
    }

    else
    {
      v9 = 1;
      v10 = "YES";
    }

    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, v10, v5);
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, "NO", 0);
    return 0;
  }

  return v9;
}

BOOL sub_4F06C(const __CFString *a1)
{
  v2 = sub_4F81C("IODeviceTree:/defaults", a1);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  ramrod_log_msg_cf(@"Boot Firmware Updater: property_exists(%s, %@) = %s\n", "IODeviceTree:/defaults", a1, v4);
  return v3 != 0;
}

uint64_t sub_4F680(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

CFTypeRef sub_4F81C(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t MSUBootFirmwareFindNamespace(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  IOServiceWaitQuiet(a1, 0);
  v11[0] = @"IOParentMatch";
  v4 = IORegistryEntryIDMatching(entryID);
  v11[1] = @"IOPropertyMatch";
  v12[0] = v4;
  v9 = a2;
  v10 = [NSNumber numberWithBool:1];
  v12[1] = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  return IOServiceGetMatchingService(kIOMasterPortDefault, v6);
}

void sub_513C0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t ramrod_filemanger_path_exists(const char *a1, BOOL *a2)
{
  memset(&v11, 0, sizeof(v11));
  if (lstat(a1, &v11))
  {
    __error();
    ramrod_log_msg("%s: Failed to stat file with error: %d\n", v3, v4, v5, v6, v7, v8, v9, "Boolean ramrod_filemanger_path_exists(const char *, Boolean *)");
    return 0;
  }

  else
  {
    if (a2)
    {
      *a2 = (v11.st_mode & 0x4000) != 0;
    }

    return 1;
  }
}

uint64_t ramrod_filemanger_path_exists_cf(const __CFString *a1, BOOL *a2)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  return ramrod_filemanger_path_exists(buffer, a2);
}

uint64_t ramrod_filemanger_create_directory(const char *a1, int a2, uint64_t a3, int *a4)
{
  if (a2)
  {

    return _ramrod_filemanger_create_directory_recursive(a1, a3, a4);
  }

  else if (mkdir(a1, a3))
  {
    if (a4)
    {
      v6 = __error();
      result = 0;
      *a4 = *v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t _ramrod_filemanger_create_directory_recursive(const char *a1, uint64_t a2, int *a3)
{
  bzero(v8, 0x400uLL);
  if (!dirname_r(a1, v8))
  {
    return 1;
  }

  if (ramrod_filemanger_path_exists(v8, 0) || (result = _ramrod_filemanger_create_directory_recursive(v8, a2, a3), result))
  {
    if (mkdir(a1, a2))
    {
      if (!a3)
      {
        return 0;
      }

      v7 = __error();
      result = 0;
      *a3 = *v7;
      return result;
    }

    return 1;
  }

  return result;
}

uint64_t ramrod_filemanger_create_directory_cf(const __CFString *a1, int a2, uint64_t a3, CFErrorRef *a4)
{
  bzero(code_4, 0x400uLL);
  code = 0;
  CFStringGetCString(a1, code_4, 1024, 0x8000100u);
  v8 = ramrod_filemanger_create_directory(code_4, a2, a3, &code);
  v9 = v8;
  if (a4 && !v8)
  {
    *a4 = CFErrorCreate(0, kCFErrorDomainPOSIX, code, 0);
  }

  return v9;
}

uint64_t ramrod_load_png(const char *a1, void *a2, unint64_t *a3, void *a4)
{
  v7 = a1;
  memset(&v56, 0, sizeof(v56));
  v54 = 0;
  v55 = 0;
  __p = 0;
  v52 = 0;
  v53 = 0;
  v8 = open(a1, 0);
  v9 = v8;
  if (v8 < 0)
  {
    v20 = __error();
    strerror(*v20);
    ramrod_log_msg("unable to open image '%s': %s\n", v21, v22, v23, v24, v25, v26, v27, v7);
    return 0;
  }

  if (fstat(v8, &v56))
  {
    v10 = __error();
    strerror(*v10);
    v18 = "unable to stat image '%s': %s\n";
LABEL_4:
    ramrod_log_msg(v18, v11, v12, v13, v14, v15, v16, v17, v7);
    v19 = 0;
    goto LABEL_14;
  }

  st_size = v56.st_size;
  v29 = mmap(0, v56.st_size, 1, 2, v9, 0);
  if (v29 == -1)
  {
    v37 = __error();
    strerror(*v37);
    v18 = "unable to mmap image '%s': %s\n";
    goto LABEL_4;
  }

  if (picoPNG::decodePNG(&__p, &v55, &v54, v29, st_size, 1))
  {
    ramrod_log_msg("unable to decode image '%s'\n", v30, v31, v32, v33, v34, v35, v36, v7);
  }

  else
  {
    v38 = __p;
    v39 = v52 - __p;
    v40 = malloc(v52 - __p);
    if (v40)
    {
      v48 = v40;
      memcpy(v40, v38, v39);
      v49 = v54;
      *a2 = v55;
      *a3 = v49;
      *a4 = v48;
      v19 = 1;
      goto LABEL_13;
    }

    ramrod_log_msg("unable to malloc destination image buffer\n", v41, v42, v43, v44, v45, v46, v47, 0);
  }

  v19 = 0;
LABEL_13:
  munmap(v29, st_size);
LABEL_14:
  close(v9);
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  return v19;
}

void sub_51900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ramrod_ticket_sprint_hex(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= 2 * a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v4 = result;
    LODWORD(result) = 0;
    v5 = 1;
    do
    {
      v6 = *v4++;
      v7 = result + 1;
      *(a3 + result) = a0123456789abcd_0[v6 >> 4];
      result = (result + 2);
      *(a3 + v7) = a0123456789abcd_0[v6 & 0xF];
      v8 = v5++;
    }

    while (v8 < a2);
  }

  else
  {
    result = 0;
  }

  *(a3 + result) = 0;
  return result;
}

const __CFString *ramrod_ticket_copy_hash_data(const void *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_copy_hash_data");
  if (a1)
  {
    v13 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
    if (v13)
    {
      v17 = v13;
      v18 = sub_51A6C(a1, v13, a2);
      IOObjectRelease(v17);
      return v18;
    }

    ramrod_create_error_cf(a2, kCFErrorDomainMach, -536870911, 0, @"%s: uanble to find chosen node", v14, v15, v16, "ramrod_ticket_copy_hash_data");
  }

  else
  {
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 8, 0, @"%s: no ticket available", v10, v11, v12, "ramrod_ticket_copy_hash_data");
  }

  return 0;
}

const __CFString *sub_51A6C(const void *a1, io_registry_entry_t a2, CFErrorRef *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFDataGetTypeID())
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 3, 0, @"%s: root ticket type mismatch", v7, v8, v9, "_ticket_copy_hash_data_internal");
    return 0;
  }

  v55 = 0u;
  v56 = 0u;
  *md = 0u;
  *buffer = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  CFProperty = IORegistryEntryCreateCFProperty(a2, @"crypto-hash-method", kCFAllocatorDefault, 0);
  v18 = CFProperty;
  if (CFProperty)
  {
    if (*CFDataGetBytePtr(CFProperty) != 828467315)
    {
      if (*CFDataGetBytePtr(v18) != 0x3438332D32616873)
      {
        v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"img4CryptoHashMethodData not recognized: %@", v18);
        if (CFStringGetCString(v26, buffer, 128, 0x8000100u))
        {
          ramrod_log_msg("%s\n", v27, v28, v29, v30, v31, v32, v33, buffer);
          v34 = @"%s: %s";
        }

        else
        {
          v34 = @"%s: img4CryptoHashMethodData not recognized (unable to convert to c string)";
        }

        ramrod_create_error_cf(a3, @"RamrodErrorDomain", 4, 0, v34, v31, v32, v33, "_ticket_copy_hash_data_internal");
        if (v26)
        {
          CFRelease(v26);
          v26 = 0;
        }

LABEL_19:
        CFRelease(v18);
        return v26;
      }

      ramrod_log_msg("crypto-hash-method found. Using SHA2-384\n", v19, v20, v21, v22, v23, v24, v25, v45);
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      CC_SHA384(BytePtr, Length, md);
      v38 = 48;
      goto LABEL_11;
    }

    v35 = "crypto-hash-method found. Using SHA1\n";
  }

  else
  {
    v35 = "crypto-hash-method not found, defaulting to SHA1\n";
  }

  ramrod_log_msg(v35, v11, v12, v13, v14, v15, v16, v17, v45);
  v36 = CFDataGetBytePtr(a1);
  v37 = CFDataGetLength(a1);
  CC_SHA1(v36, v37, md);
  v38 = 20;
LABEL_11:
  v26 = CFDataCreate(kCFAllocatorDefault, md, v38);
  if (!v26)
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFData of ticket hash", v39, v40, v41, "_ticket_copy_hash_data_internal");
  }

  if (v18)
  {
    goto LABEL_19;
  }

  return v26;
}

const __CFString *ramrod_ticket_copy_hash_string(const void *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ramrod_ticket_copy_hash_data(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v10 = result;
    v11 = sub_51D6C(result, a2);
    CFRelease(v10);
    return v11;
  }

  return result;
}

CFStringRef sub_51D6C(const __CFData *a1, CFErrorRef *a2)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *cStr = 0u;
  v12 = 0u;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  ramrod_ticket_sprint_hex(BytePtr, Length, cStr, 0x80uLL);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v9)
  {
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFString of ticket hash", v6, v7, v8, "_ticket_copy_hash_hex_string_internal");
  }

  return v9;
}

uint64_t ramrod_ticket_update_verify(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_update_verify");
  if (qword_1C6C78)
  {
    v15 = v8 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: attempt to update ticket more than once", v12, v13, v14, "ramrod_ticket_update_verify");
    return 0;
  }

  v16 = a2(a3);
  if (!v16)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: no ticket available", v17, v18, v19, "ramrod_ticket_update_verify");
    return 0;
  }

  v20 = v16;
  v21 = CFGetTypeID(v16);
  if (v21 != CFDataGetTypeID())
  {
    CFRelease(v20);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: root ticket type mismatch", v65, v66, v67, "ramrod_ticket_update_verify");
    return 0;
  }

  v22 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v22)
  {
    ramrod_create_error_cf(a4, kCFErrorDomainMach, -536870911, 0, @"%s: uanble to find chosen node", v27, v28, v29, "ramrod_ticket_update_verify");
    CFRelease(v20);
    return 0;
  }

  v30 = v22;
  ramrod_log_msg("looking up boot manifest hash\n", v23, v24, v25, v26, v27, v28, v29, v86);
  CFProperty = IORegistryEntryCreateCFProperty(v30, @"boot-manifest-hash", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: missing root ticket hash", v32, v33, v34, "ramrod_ticket_update_verify");
    CFRelease(v20);
    IOObjectRelease(v30);
    return 0;
  }

  v35 = CFProperty;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  *buffer = 0u;
  v89 = 0u;
  v36 = CFGetTypeID(CFProperty);
  if (v36 != CFDataGetTypeID())
  {
    v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v35);
    if (CFStringGetCString(v70, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("device tree ticket-hash type mismatch: %s\n", v71, v72, v73, v74, v75, v76, v77, buffer);
    }

    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: device tree ticket-hash type mismatch: %s", v75, v76, v77, "ramrod_ticket_update_verify");
    CFRelease(v70);
    v68 = 0;
    v47 = 0;
    goto LABEL_27;
  }

  BytePtr = CFDataGetBytePtr(v35);
  Length = CFDataGetLength(v35);
  ramrod_ticket_sprint_hex(BytePtr, Length, buffer, 0x80uLL);
  ramrod_log_msg("device tree ticket_hash: %s\n", v39, v40, v41, v42, v43, v44, v45, buffer);
  v46 = sub_51A6C(v20, v30, a4);
  v47 = v46;
  if (!v46)
  {
    v68 = 0;
LABEL_27:
    v49 = 0;
    goto LABEL_35;
  }

  v87 = CFDataGetLength(v46);
  v48 = sub_51D6C(v47, a4);
  v49 = v48;
  if (v48)
  {
    if (CFStringGetCString(v48, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("computed ticket_hash   : %s\n", v50, v51, v52, v53, v54, v55, v56, buffer);
      v57 = CFDataGetLength(v35);
      if (v57 == v87)
      {
        if (!v8 || (v61 = v57, v62 = CFDataGetBytePtr(v35), v63 = CFDataGetBytePtr(v47), !memcmp(v62, v63, v61)))
        {
          v78 = CFDataGetLength(v20);
          ramrod_log_msg("received valid ticket (%lu bytes)\n", v79, v80, v81, v82, v83, v84, v85, v78);
          if (qword_1C6C78)
          {
            CFRelease(qword_1C6C78);
          }

          qword_1C6C78 = CFRetain(v20);
          v68 = 1;
          goto LABEL_35;
        }

        v64 = @"%s: invalid ticket";
      }

      else
      {
        v64 = @"%s: root ticket hash of unexpected length";
      }

      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, v64, v58, v59, v60, "ramrod_ticket_update_verify");
    }

    else
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 5, 0, @"%s: (unable to convert ticket hash to c string)", v54, v55, v56, "ramrod_ticket_update_verify");
    }
  }

  v68 = 0;
LABEL_35:
  CFRelease(v20);
  CFRelease(v35);
  IOObjectRelease(v30);
  if (v47)
  {
    CFRelease(v47);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v68;
}

uint64_t ramrod_recovery_os_ticket_update_verify(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_recovery_os_ticket_update_verify");
  if (qword_1C6C80)
  {
    v15 = v8 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: attempt to update ticket more than once", v12, v13, v14, "ramrod_recovery_os_ticket_update_verify");
    return 0;
  }

  v16 = a2(a3);
  if (!v16)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: no ticket available", v17, v18, v19, "ramrod_recovery_os_ticket_update_verify");
    return 0;
  }

  v20 = v16;
  v21 = CFGetTypeID(v16);
  if (v21 != CFDataGetTypeID())
  {
    CFRelease(v20);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: root ticket type mismatch", v65, v66, v67, "ramrod_recovery_os_ticket_update_verify");
    return 0;
  }

  v22 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v22)
  {
    ramrod_create_error_cf(a4, kCFErrorDomainMach, -536870911, 0, @"%s: uanble to find chosen node", v27, v28, v29, "ramrod_recovery_os_ticket_update_verify");
    CFRelease(v20);
    return 0;
  }

  v30 = v22;
  ramrod_log_msg("looking up boot manifest hash\n", v23, v24, v25, v26, v27, v28, v29, v86);
  CFProperty = IORegistryEntryCreateCFProperty(v30, @"boot-manifest-hash", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: missing root ticket hash", v32, v33, v34, "ramrod_recovery_os_ticket_update_verify");
    CFRelease(v20);
    IOObjectRelease(v30);
    return 0;
  }

  v35 = CFProperty;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  *buffer = 0u;
  v89 = 0u;
  v36 = CFGetTypeID(CFProperty);
  if (v36 != CFDataGetTypeID())
  {
    v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v35);
    if (CFStringGetCString(v70, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("device tree ticket-hash type mismatch: %s\n", v71, v72, v73, v74, v75, v76, v77, buffer);
    }

    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: device tree ticket-hash type mismatch: %s", v75, v76, v77, "ramrod_recovery_os_ticket_update_verify");
    CFRelease(v70);
    v68 = 0;
    v47 = 0;
    goto LABEL_27;
  }

  BytePtr = CFDataGetBytePtr(v35);
  Length = CFDataGetLength(v35);
  ramrod_ticket_sprint_hex(BytePtr, Length, buffer, 0x80uLL);
  ramrod_log_msg("device tree ticket_hash: %s\n", v39, v40, v41, v42, v43, v44, v45, buffer);
  v46 = sub_51A6C(v20, v30, a4);
  v47 = v46;
  if (!v46)
  {
    v68 = 0;
LABEL_27:
    v49 = 0;
    goto LABEL_35;
  }

  v87 = CFDataGetLength(v46);
  v48 = sub_51D6C(v47, a4);
  v49 = v48;
  if (v48)
  {
    if (CFStringGetCString(v48, buffer, 128, 0x8000100u))
    {
      ramrod_log_msg("computed ticket_hash   : %s\n", v50, v51, v52, v53, v54, v55, v56, buffer);
      v57 = CFDataGetLength(v35);
      if (v57 == v87)
      {
        if (!v8 || (v61 = v57, v62 = CFDataGetBytePtr(v35), v63 = CFDataGetBytePtr(v47), !memcmp(v62, v63, v61)))
        {
          v78 = CFDataGetLength(v20);
          ramrod_log_msg("received valid ticket (%lu bytes)\n", v79, v80, v81, v82, v83, v84, v85, v78);
          if (qword_1C6C80)
          {
            CFRelease(qword_1C6C80);
          }

          qword_1C6C80 = CFRetain(v20);
          v68 = 1;
          goto LABEL_35;
        }

        v64 = @"%s: invalid ticket";
      }

      else
      {
        v64 = @"%s: root ticket hash of unexpected length";
      }

      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, v64, v58, v59, v60, "ramrod_recovery_os_ticket_update_verify");
    }

    else
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 5, 0, @"%s: (unable to convert ticket hash to c string)", v54, v55, v56, "ramrod_recovery_os_ticket_update_verify");
    }
  }

  v68 = 0;
LABEL_35:
  CFRelease(v20);
  CFRelease(v35);
  IOObjectRelease(v30);
  if (v47)
  {
    CFRelease(v47);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v68;
}

uint64_t ramrod_ticket_write_explicit(uint64_t a1, const __CFData *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_write_explicit");
  if (!a2)
  {
    v37 = "AP ticket not found, exiting";
LABEL_10:
    ramrod_log_msg(v37, v10, v11, v12, v13, v14, v15, v16, v63);
    return 1;
  }

  bzero(v65, 0x400uLL);
  memset(&v64, 0, sizeof(v64));
  __strlcpy_chk();
  __strlcat_chk();
  if (stat(v65, &v64) == -1)
  {
    v63 = v65;
    v37 = "%s does not exist, skipping ticket installation\n";
    goto LABEL_10;
  }

  __strlcat_chk();
  if (!lstat(v65, &v64))
  {
    unlink(v65);
  }

  v17 = open(v65, 1537, 420);
  if (v17 == -1)
  {
    v38 = __error();
    v39 = strerror(*v38);
    ramrod_log_msg("open error: %s\n", v40, v41, v42, v43, v44, v45, v46, v39);
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 11, 0, @"%s: failed to open file for writing", v47, v48, v49, "ramrod_ticket_write_explicit");
    return 0;
  }

  else
  {
    v25 = v17;
    ramrod_log_msg("writing ticket to %s\n", v18, v19, v20, v21, v22, v23, v24, v65);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v28 = write(v25, BytePtr, Length);
    if (v28 == -1)
    {
      v50 = __error();
      v51 = strerror(*v50);
      ramrod_log_msg("write error: %s\n", v52, v53, v54, v55, v56, v57, v58, v51);
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, 0, @"%s: failed to write ticket", v59, v60, v61, "ramrod_ticket_write_explicit");
      v36 = 0;
    }

    else
    {
      ramrod_log_msg("Wrote %zu bytes to %s\n", v29, v30, v31, v32, v33, v34, v35, v28);
      v36 = 1;
    }

    close(v25);
  }

  return v36;
}

uint64_t ramrod_recovery_os_ticket_write(const char *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_recovery_os_ticket_write");
  if (qword_1C6C80)
  {
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s/%s", a1, "apticket.der");
    v17 = open(__str, 1537, 420);
    if (v17 == -1)
    {
      v37 = __error();
      v38 = strerror(*v37);
      ramrod_log_msg("open error: %s\n", v39, v40, v41, v42, v43, v44, v45, v38);
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 11, 0, @"%s: failed to open file for writing", v46, v47, v48, "ramrod_recovery_os_ticket_write");
      return 0;
    }

    else
    {
      v25 = v17;
      ramrod_log_msg("writing recovery OS ticket to %s\n", v18, v19, v20, v21, v22, v23, v24, __str);
      BytePtr = CFDataGetBytePtr(qword_1C6C80);
      Length = CFDataGetLength(qword_1C6C80);
      v28 = write(v25, BytePtr, Length);
      if (v28 == -1)
      {
        v49 = __error();
        v50 = strerror(*v49);
        ramrod_log_msg("write error: %s\n", v51, v52, v53, v54, v55, v56, v57, v50);
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 7, 0, @"%s: failed to write ticket", v58, v59, v60, "ramrod_recovery_os_ticket_write");
        v36 = 0;
      }

      else
      {
        ramrod_log_msg("Wrote %zu bytes to %s\n", v29, v30, v31, v32, v33, v34, v35, v28);
        v36 = 1;
      }

      close(v25);
    }
  }

  else
  {
    ramrod_log_msg("AP recovery OS ticket not found, exiting", v10, v11, v12, v13, v14, v15, v16, v62);
    return 1;
  }

  return v36;
}

CFTypeRef ramrod_ticket_copy()
{
  result = qword_1C6C78;
  if (qword_1C6C78)
  {
    return CFRetain(qword_1C6C78);
  }

  return result;
}

CFTypeRef ramrod_recovery_os_ticket_copy()
{
  result = qword_1C6C80;
  if (qword_1C6C80)
  {
    return CFRetain(qword_1C6C80);
  }

  return result;
}

const __CFString *ramrod_ticket_copy_nsih(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a1(a2);
LABEL_5:
    v15 = v8;
    v16 = ramrod_ticket_copy_hash_string(v8, 0, v9, v10, v11, v12, v13, v14);
    if (v15)
    {
      CFRelease(v15);
    }

    return v16;
  }

  if (qword_1C6C78)
  {
    v8 = CFRetain(qword_1C6C78);
    goto LABEL_5;
  }

  return ramrod_ticket_copy_hash_string(0, 0, a3, a4, a5, a6, a7, a8);
}

uint64_t ramrod_ticket_has_BOOLean_entitlement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1C6C78)
  {
    CFDataGetBytePtr(qword_1C6C78);
    CFDataGetLength(qword_1C6C78);
    if (Img4DecodeInitManifest())
    {
      ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_ticket_has_BOOLean_entitlement");
    }

    else
    {
      Img4DecodeGetBooleanFromSection();
    }
  }

  else
  {
    ramrod_log_msg("%s: no ticket\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_has_BOOLean_entitlement");
  }

  return 0;
}

CFDataRef ramrod_copy_manifest_digest_data_from_img4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("%s: no img4Data\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_copy_manifest_digest_data_from_img4");
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    v34 = "img4Data not CFData\n";
    goto LABEL_14;
  }

  v17 = MGCopyAnswer();
  if (v17)
  {
    v25 = v17;
    if (CFStringCompare(v17, @"sha1", 1uLL))
    {
      v26 = 48;
    }

    else
    {
      v26 = 20;
    }

    CFRelease(v25);
  }

  else
  {
    ramrod_log_msg("%s: unable to get img4 hash method, assuming SHA-384\n", v18, v19, v20, v21, v22, v23, v24, "ramrod_copy_manifest_digest_data_from_img4");
    v26 = 48;
  }

  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *bytes = 0u;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (Img4DecodeInit())
  {
    ramrod_log_msg("%s: failed to parse img4Data as Img4\n", v27, v28, v29, v30, v31, v32, v33, "ramrod_copy_manifest_digest_data_from_img4");
    return 0;
  }

  if (Img4DecodeCopyManifestDigest())
  {
    v43 = "ramrod_copy_manifest_digest_data_from_img4";
    v34 = "%s: failed to get manifest from Img4 derstat=%d\n";
LABEL_14:
    ramrod_log_msg(v34, v10, v11, v12, v13, v14, v15, v16, v43);
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, bytes, v26);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated property data\n", v36, v37, v38, v39, v40, v41, v42, "ramrod_copy_manifest_digest_data_from_img4");
    return 0;
  }

  return result;
}

uint64_t sub_53004(const void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v9 = "data is NULL\n";
LABEL_13:
    ramrod_log_msg(v9, a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v9 = "length is 0\n";
    goto LABEL_13;
  }

  if (!a3)
  {
    v9 = "digestBuffer is NULL\n";
    goto LABEL_13;
  }

  if (!a5)
  {
    v9 = "implementation is NULL\n";
    goto LABEL_13;
  }

  if (a4 != 48)
  {
    v9 = "digestBufferLength != CC_SHA384_DIGEST_LENGTH\n";
    goto LABEL_13;
  }

  CC_SHA384(a1, a2, a3);
  return 0;
}

uint64_t sub_5307C(const void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v9 = "data is NULL\n";
LABEL_13:
    ramrod_log_msg(v9, a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v9 = "length is 0\n";
    goto LABEL_13;
  }

  if (!a3)
  {
    v9 = "digestBuffer is NULL\n";
    goto LABEL_13;
  }

  if (!a5)
  {
    v9 = "implementation is NULL\n";
    goto LABEL_13;
  }

  if (a4 != 20)
  {
    v9 = "digestBufferLength != CC_SHA1_DIGEST_LENGTH\n";
    goto LABEL_13;
  }

  CC_SHA1(a1, a2, a3);
  return 0;
}

const __CFData *ramrod_copy_manifest_digest_from_img4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ramrod_copy_manifest_digest_data_from_img4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v9 = result;
    v10 = sub_51D6C(result, 0);
    CFRelease(v9);
    return v10;
  }

  return result;
}

CFDataRef ramrod_ticket_copy_data_object_property_from_ticket_data(const __CFData *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("%s: no ticket\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_copy_data_object_property_from_ticket_data");
    return 0;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_ticket_copy_data_object_property_from_ticket_data");
    return 0;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    ramrod_log_msg("%s: failed to get data property from Img4 manifest\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_ticket_copy_data_object_property_from_ticket_data");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, 0, 0);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated digest data\n", v24, v25, v26, v27, v28, v29, v30, "ramrod_ticket_copy_data_object_property_from_ticket_data");
    return 0;
  }

  return result;
}

CFDataRef ramrod_recovery_os_ticket_copy_data_object_property(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_1C6C80)
  {
    ramrod_log_msg("%s: no ticket\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_recovery_os_ticket_copy_data_object_property");
    return 0;
  }

  CFDataGetBytePtr(qword_1C6C80);
  CFDataGetLength(qword_1C6C80);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_recovery_os_ticket_copy_data_object_property");
    return 0;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    ramrod_log_msg("%s: failed to get data property from Img4 manifest\n", v15, v16, v17, v18, v19, v20, v21, "ramrod_recovery_os_ticket_copy_data_object_property");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, 0, 0);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated digest data\n", v23, v24, v25, v26, v27, v28, v29, "ramrod_recovery_os_ticket_copy_data_object_property");
    return 0;
  }

  return result;
}

uint64_t ramrod_ticket_copy_BOOLean_object_property(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1C6C78)
  {
    CFDataGetBytePtr(qword_1C6C78);
    CFDataGetLength(qword_1C6C78);
    if (Img4DecodeInitManifest())
    {
      ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_ticket_copy_BOOLean_object_property");
    }

    else if (Img4DecodeGetObjectPropertyBoolean())
    {
      ramrod_log_msg("%s: failed to get data property from Img4 manifest\n", v15, v16, v17, v18, v19, v20, v21, "ramrod_ticket_copy_BOOLean_object_property");
    }
  }

  else
  {
    ramrod_log_msg("%s: no ticket\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_copy_BOOLean_object_property");
  }

  return 0;
}

CFDataRef ramrod_ticket_copy_data_manifest_property(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_1C6C78)
  {
    ramrod_log_msg("%s: no ticket\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_copy_data_manifest_property");
    return 0;
  }

  CFDataGetBytePtr(qword_1C6C78);
  CFDataGetLength(qword_1C6C78);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_ticket_copy_data_manifest_property");
    return 0;
  }

  if (Img4DecodeGetDataFromSection())
  {
    ramrod_log_msg("%s: failed to get data manifest property from Img4 manifest\n", v15, v16, v17, v18, v19, v20, v21, "ramrod_ticket_copy_data_manifest_property");
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, 0, 0);
  if (!result)
  {
    ramrod_log_msg("%s: failed to allocated digest data\n", v23, v24, v25, v26, v27, v28, v29, "ramrod_ticket_copy_data_manifest_property");
    return 0;
  }

  return result;
}

CFDataRef ramrod_ticket_copy_manifest_signature_certificate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_1C6C78)
  {
    ramrod_log_msg("%s: no ticket\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_ticket_copy_manifest_signature_certificate");
    return 0;
  }

  CFDataGetBytePtr(qword_1C6C78);
  CFDataGetLength(qword_1C6C78);
  if (Img4DecodeInitManifest())
  {
    ramrod_log_msg("%s: failed to parse AP ticket as Img4 manifest\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_ticket_copy_manifest_signature_certificate");
    return 0;
  }

  BytePtr = CFDataGetBytePtr(qword_1C6C78);
  Length = CFDataGetLength(qword_1C6C78);
  result = CFDataCreate(kCFAllocatorDefault, 0, &BytePtr[Length]);
  if (!result)
  {
    ramrod_log_msg("%s: failed to create sigCertData\n", v18, v19, v20, v21, v22, v23, v24, "ramrod_ticket_copy_manifest_signature_certificate");
    return 0;
  }

  return result;
}

uint64_t ramrod_clear_ap_nonce(CFErrorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *mainPort = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_clear_ap_nonce");
  v9 = IOMasterPort(0, &mainPort[1]);
  if (v9)
  {
    v13 = v9;
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 9, 0, @"%s: IOMasterPort failed: 0x%X", v10, v11, v12, "ramrod_clear_ap_nonce");
  }

  else
  {
    v14 = IOServiceMatching("AppleMobileApNonce");
    if (v14)
    {
      MatchingService = IOServiceGetMatchingService(mainPort[1], v14);
      if (MatchingService)
      {
        v22 = MatchingService;
        v23 = IOServiceOpen(MatchingService, mach_task_self_, 0, mainPort);
        if (v23)
        {
          v13 = v23;
          ramrod_create_error_cf(a1, @"RamrodErrorDomain", 11, 0, @"%s: IOServiceOpen for class %s failed: 0x%X", v24, v25, v26, "ramrod_clear_ap_nonce");
        }

        else
        {
          v13 = IOConnectCallStructMethod(mainPort[0], 0xC9u, 0, 0, 0, 0);
          if (v13)
          {
            ramrod_create_error_cf(a1, @"RamrodErrorDomain", 12, 0, @"%s: Clear Nonce failed: 0x%X", v27, v28, v29, "ramrod_clear_ap_nonce");
          }

          if (IOServiceClose(mainPort[0]))
          {
            ramrod_log_msg("IOServiceClose for class %s failed: 0x%X\n", v30, v31, v32, v33, v34, v35, v36, "AppleMobileApNonce");
          }
        }

        IOObjectRelease(v22);
      }

      else
      {
        v13 = 3758097136;
        ramrod_create_error_cf(a1, @"RamrodErrorDomain", 4, 0, @"%s: IOServiceGetMatchingService for class %s failed", v19, v20, v21, "ramrod_clear_ap_nonce");
      }
    }

    else
    {
      v13 = 3758097136;
      ramrod_create_error_cf(a1, @"RamrodErrorDomain", 10, 0, @"%s: IOServiceMatching(%s) failed", v15, v16, v17, "ramrod_clear_ap_nonce");
    }

    mach_port_deallocate(mach_task_self_, mainPort[1]);
  }

  return v13;
}

RamrodOSMessagePlist *ramrod_message_plist_create(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v5 = [[RamrodOSMessagePlist alloc] initWithPropertyList:a1 error:&v8];
  v6 = v8;
  if (a2 && v5)
  {
    *a2 = [(RamrodOSMessagePlist *)v5 length];
  }

  if (a3 && v6)
  {
    *a3 = v6;
  }

  return v5;
}

uint64_t debugserver_status()
{
  result = access(DEBUGSERVER_PATH, 1);
  if (result)
  {
    return *__error();
  }

  return result;
}

void debugserver_wait_for_attach(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  *v19 = 0xE00000001;
  v20 = 1;
  v21 = a1;
  ramrod_log_msg("waiting for debugger (PID %d)...\n", a2, a3, a4, a5, a6, a7, a8, a1);
  bzero(v17, 0x288uLL);
  v16 = 648;
  sysctl(v19, 4u, v17, &v16, 0, 0);
  while ((v18 & 8) == 0)
  {
    usleep(0x186A0u);
    bzero(v17, 0x288uLL);
    v16 = 648;
    sysctl(v19, 4u, v17, &v16, 0, 0);
  }

  ramrod_log_msg("debugger attached to PID %d, continuing\n", v9, v10, v11, v12, v13, v14, v15, v8);
}

void debugserver_start_listener(__int16 a1, int a2, NSObject *a3)
{
  v6 = DEBUGSERVER_PATH;
  v7 = strrchr(DEBUGSERVER_PATH, 47);
  if (v7)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v6;
  }

  v31 = a1;
  v9 = create_listen_socket_sigpipe(&v31, 1);
  if (v9 == -1)
  {
    ramrod_log_msg("%s could not listen on port %hd\n", v10, v11, v12, v13, v14, v15, v16, v8);
  }

  else
  {
    v17 = v9;
    v18 = dispatch_source_create(&_dispatch_source_type_read, v9, 0, a3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3254779904;
    handler[2] = sub_54090;
    handler[3] = &unk_1AE268;
    v30 = v17;
    handler[4] = v18;
    dispatch_source_set_cancel_handler(v18, handler);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3254779904;
    v26[2] = sub_540CC;
    v26[3] = &unk_1AE2C8;
    v27 = v17;
    v28 = a2;
    v26[4] = a3;
    v26[5] = v6;
    v26[6] = v8;
    dispatch_source_set_event_handler(v18, v26);
    ramrod_log_msg("%s listening on port %hd (PID %d)\n", v19, v20, v21, v22, v23, v24, v25, v8);
    dispatch_activate(v18);
  }
}

void sub_54090(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void sub_540CC(uint64_t a1)
{
  v2 = accept_socket_connection(*(a1 + 56), 2, 0);
  if (v2 != -1)
  {
    v3 = v2;
    *__str = 0u;
    v47 = 0u;
    snprintf(__str, 0x20uLL, "--attach=%d", *(a1 + 60));
    __argv[0] = *(a1 + 40);
    __argv[1] = "--fd=0";
    if (*(a1 + 60) <= 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = __str;
    }

    __argv[2] = v4;
    __argv[3] = 0;
    v42 = 0;
    posix_spawn_file_actions_init(&v42);
    posix_spawn_file_actions_adddup2(&v42, v3, 0);
    posix_spawn_file_actions_addinherit_np(&v42, 1);
    posix_spawn_file_actions_addinherit_np(&v42, 2);
    v41 = 0;
    posix_spawnattr_init(&v41);
    posix_spawnattr_setflags(&v41, 16518);
    if (sub_D5200(2, 16, 0, 0))
    {
      posix_spawnattr_set_crash_behavior_np();
    }

    v5 = *(a1 + 40);
    v44 = -1;
    v6 = mmap(0, 8uLL, 3, 4097, -1, 0);
    if (v6)
    {
      v7 = v6;
      v8 = fork();
      if (v8 == -1)
      {
        v11 = *__error();
        v10 = -1;
      }

      else
      {
        v9 = v8;
        if (!v8)
        {
          *v7 = posix_spawn(&v44, v5, &v42, &v41, __argv, 0);
          v7[1] = v44;
          _exit(0);
        }

        v43 = -1;
          ;
        }

        if (v43)
        {
          v10 = -1;
          v11 = -1;
        }

        else
        {
          v11 = *v7;
          v10 = v7[1];
        }
      }

      munmap(v7, 8uLL);
      if (v11)
      {
        close_socket_with_result(v3, 0, v11, v17, v18, v19, v20, v21);
        goto LABEL_21;
      }

      close_socket_with_result(v3, 0, 0, v17, v18, v19, v20, v21);
    }

    else
    {
      v11 = *__error();
      close_socket_with_result(v3, 0, v11, v12, v13, v14, v15, v16);
      if (v11)
      {
LABEL_21:
        v22 = *(a1 + 40);
        strerror(v11);
        ramrod_log_msg("failed to spawn %s: %s (%d)\n", v23, v24, v25, v26, v27, v28, v29, v22);
        return;
      }

      v10 = 0;
    }

    v30 = dispatch_source_create(&_dispatch_source_type_proc, v10, 0x80000000uLL, *(a1 + 32));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3254779904;
    handler[2] = sub_543DC;
    handler[3] = &unk_1AE298;
    v31 = *(a1 + 48);
    v40 = v10;
    handler[4] = v30;
    handler[5] = v31;
    dispatch_source_set_event_handler(v30, handler);
    dispatch_activate(v30);
    ramrod_log_msg("%s[%d] started\n", v32, v33, v34, v35, v36, v37, v38, *(a1 + 48));
    kill(v10, 19);
  }
}

void sub_543DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s[%d] exited\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 40));
  dispatch_source_cancel(*(a1 + 32));
  v9 = *(a1 + 32);

  dispatch_release(v9);
}

uint64_t ramrod_sync_readwrite_ramdisk()
{
  v0 = off_1AD4D8();
  v1 = objc_autoreleasePoolPush();
  memset(v380, 0, sizeof(v380));
  bzero(v379, 0x400uLL);
  bzero(&v378, 0x878uLL);
  v364 = 0;
  v10 = ramrod_wait_for_internal_media(v2, v3, v4, v5, v6, v7, v8, v9);
  if (!v10)
  {
    sub_2A03C(@"Data volume access is restricted..Checking for path on update volume to sync read/write ramdisk\n\n", v11, v12, v13, v14, v15, v16, v17, v330);
    if (!ramrod_get_update_partition_device_node(v380, 0x20uLL))
    {
      v18 = @"Unable to find update partition and data volume access is restricted. Nothing to sync the ramdisk to!!\n\n";
      goto LABEL_3;
    }

    sub_2A03C(@"Read/Write ramdisk will be synced to the Update partition\n\n", v11, v12, v13, v14, v15, v16, v17, v331);
    if (ramrod_get_mount_path(v380, v379, 0x400uLL))
    {
      sub_2A03C(@"Update partition is not mounted..Attempting to mount\n\n", v21, v22, v23, v24, v25, v26, v27, v332);
      cf[0] = 0;
      if (ramrod_mount_filesystem_no_fsck_opt_err(v380, "/mnt4", 0, cf))
      {
        sub_2A03C(@"Failed to mount update partition and data volume access is restricted. Nothing to sync the ramdisk to!!\n\n", v28, v29, v30, v31, v32, v33, v34, v333);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_4;
      }

      v35 = @"/mnt4";
      sub_2A03C(@"Successfully found/mounted Update partition at %@!\n\n", v28, v29, v30, v31, v32, v33, v34, @"/mnt4");
    }

    else
    {
      sub_2A03C(@"Update partition(%s) is already mounted at %s.\n\n", v21, v22, v23, v24, v25, v26, v27, v380);
      v35 = [NSString stringWithCString:v379 encoding:4];
    }

    if (statfs(v0, &v378) || (v378.f_flags & 0x4000) != 0)
    {
      sub_2A03C(@"Notice: There is no ram disk mounted at %s\n", v36, v37, v38, v39, v40, v41, v42, v0);
    }

    v43 = [NSString stringWithCString:v0 encoding:4];
    v44 = +[NSFileManager defaultManager];
    v351 = v43;
    obj = [(NSFileManager *)v44 contentsOfDirectoryAtPath:v43 error:&v364];
    v45 = [(__CFString *)v35 stringByAppendingPathComponent:@"/mobile/Library/Logs/CrashReporter"];
    if (ramrod_get_update_partition_device_node(v380, 0x20uLL) == 1)
    {
      if (ramrod_get_mount_path(v380, v379, 0x400uLL))
      {
        sub_2A03C(@"Update partition is not yet mounted..Attempting to mount\n", v53, v54, v55, v56, v57, v58, v59, v334);
        err = 0;
        if (ramrod_mount_filesystem_no_fsck_opt_err(v380, "/mnt4", 0, &err))
        {
          bzero(cf, 0x400uLL);
          if (err)
          {
            v67 = CFErrorCopyDescription(err);
            if (v67)
            {
              v68 = v67;
              CFStringGetCString(v67, cf, 1024, 0x8000100u);
              Code = CFErrorGetCode(err);
              sub_2A03C(@"unable to mount update partition: %ld, %s..Skipping sync of lastOTA contents\n\n", v70, v71, v72, v73, v74, v75, v76, Code);
              CFRelease(v68);
            }

            else
            {
              v322 = CFErrorGetCode(err);
              sub_2A03C(@"unable to mount update partition: %ld..Skipping sync of lastOTA contents\n\n", v323, v324, v325, v326, v327, v328, v329, v322);
            }

            CFRelease(err);
            goto LABEL_25;
          }

          v77 = @"Failed to mount update partition..Skipping sync of lastOTA dir contents\n\n";
LABEL_24:
          sub_2A03C(v77, v46, v47, v48, v49, v50, v51, v52, v334);
LABEL_25:
          v78 = 0;
          goto LABEL_29;
        }

        sub_2A03C(@"Update partition successfully mounted\n\n", v60, v61, v62, v63, v64, v65, v66, v334);
        v79 = "/mnt4";
      }

      else
      {
        sub_2A03C(@"Update Partition(%s) is mounted at %s.\n", v53, v54, v55, v56, v57, v58, v59, v380);
        v79 = v379;
      }

      v78 = [[NSString stringWithCString:4 encoding:?], "stringByAppendingPathComponent:", @"/lastOTA"];
LABEL_29:
      v362 = 0;
      if ([(NSFileManager *)v44 fileExistsAtPath:v45 isDirectory:&v362]&& (v362 & 1) != 0)
      {
        sub_2A03C(@"CrashReporter folder already exists at %@\n\n", v80, v81, v82, v83, v84, v85, v86, v45);
      }

      else
      {
        v375[0] = NSFileOwnerAccountName;
        v375[1] = NSFileGroupOwnerAccountName;
        v376[0] = @"mobile";
        v376[1] = @"mobile";
        v375[2] = NSFilePosixPermissions;
        v376[2] = [NSNumber numberWithInt:493];
        if ([(NSFileManager *)v44 createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v376 forKeys:v375 count:3], &v364])
        {
          sub_2A03C(@"Successfully created CrashReporter folder at %@\n\n", v94, v95, v96, v97, v98, v99, v100, v45);
        }

        else
        {
          sub_2A03C(@"Failed to create CrashReporter folder at %@\n\n", v94, v95, v96, v97, v98, v99, v100, v45);
        }
      }

      if (v78)
      {
        sub_2A03C(@"lastOTA log dir will be saved to %@\n\n", v87, v88, v89, v90, v91, v92, v93, v78);
        if (![(NSFileManager *)v44 fileExistsAtPath:v78])
        {
          v373[0] = NSFileOwnerAccountName;
          v373[1] = NSFileGroupOwnerAccountName;
          v374[0] = @"mobile";
          v374[1] = @"mobile";
          v373[2] = NSFilePosixPermissions;
          v374[2] = [NSNumber numberWithInt:493];
          if (![(NSFileManager *)v44 createDirectoryAtPath:v78 withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v374 forKeys:v373 count:3], &v364])
          {
            sub_2A03C(@"%@ does not exist and could not be created: %@\n", v101, v102, v103, v104, v105, v106, v107, v78);
          }
        }
      }

      v348 = v45;
      v341 = v1;
      v340 = objc_alloc_init(RamrodFileManagerDelegate);
      [(NSFileManager *)v44 setDelegate:?];
      sub_2A03C(@"Searching %@ for crash logs\n", v108, v109, v110, v111, v112, v113, v114, v351);
      v360 = 0u;
      v361 = 0u;
      v358 = 0u;
      v359 = 0u;
      v115 = [(NSArray *)obj countByEnumeratingWithState:&v358 objects:v372 count:16];
      v353 = v78;
      if (v115)
      {
        v123 = v115;
        v124 = 0;
        v125 = 0;
        v126 = *v359;
        LODWORD(v127) = 0;
        v344 = *v359;
        do
        {
          v342 = v127;
          v128 = 0;
          v346 = v123;
          do
          {
            if (*v359 != v126)
            {
              objc_enumerationMutation(obj);
            }

            v129 = *(*(&v358 + 1) + 8 * v128);
            if ([objc_msgSend(v129 "pathExtension")])
            {
              v130 = [(NSString *)v351 stringByAppendingPathComponent:v129];
              v131 = [v348 stringByAppendingPathComponent:{objc_msgSend(v129, "lastPathComponent")}];
              [NSString stringWithContentsOfFile:v130 usedEncoding:0 error:&v364];
              v132 = -[NSString stringByAppendingPathComponent:](v78, "stringByAppendingPathComponent:", [v129 lastPathComponent]);
              sub_2A03C(@"Copying %@ to %@ and %@\n", v133, v134, v135, v136, v137, v138, v139, v129);
              sub_2A03C(@"------- %@ -------\n%@------- END LOG -------\n\n", v140, v141, v142, v143, v144, v145, v146, v130);
              v370[0] = NSFileOwnerAccountName;
              v370[1] = NSFileGroupOwnerAccountName;
              v371[0] = @"mobile";
              v371[1] = @"mobile";
              v370[2] = NSFilePosixPermissions;
              v371[2] = [NSNumber numberWithInt:420];
              v147 = [NSDictionary dictionaryWithObjects:v371 forKeys:v370 count:3];
              if ([(NSString *)v132 isEqualToString:v131])
              {
                v148 = 0;
                v78 = v353;
              }

              else if ([(NSFileManager *)v44 copyItemAtPath:v130 toPath:v132 error:&v364])
              {
                if (![(NSFileManager *)v44 setAttributes:v147 ofItemAtPath:v132 error:&v364])
                {
                  sub_2A03C(@"Setting posix attributes on %@ failed : %@\n\n", v171, v172, v173, v174, v175, v176, v177, v131);
                }

                v148 = 1;
                v78 = v353;
              }

              else
              {
                sub_2A03C(@"Unable to copy crash log to lastOTA dir : %@\n\n", v164, v165, v166, v167, v168, v169, v170, v364);
                v148 = 0;
                v78 = v353;
              }

              v126 = v344;
              v200 = [(NSFileManager *)v44 copyItemAtPath:v130 toPath:v131 error:&v364];
              if (v200)
              {
                if (![(NSFileManager *)v44 setAttributes:v147 ofItemAtPath:v131 error:&v364])
                {
                  sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v201, v202, v203, v204, v205, v206, v207, v131);
                }
              }

              else
              {
                sub_2A03C(@"Copy failed: %@\n", v193, v194, v195, v196, v197, v198, v199, v364);
              }

              v124 = v124 + (v148 | v200);
              v125 = (v125 + 1);
              v123 = v346;
            }

            else if ([objc_msgSend(v129 "lastPathComponent")])
            {
              v149 = [(NSString *)v351 stringByAppendingPathComponent:v129];
              v337 = [(NSString *)v78 stringByAppendingPathComponent:@"mtree_remap.xml"];
              sub_2A03C(@"Copying %@ to %@\n", v150, v151, v152, v153, v154, v155, v156, v129);
              if (![(NSFileManager *)v44 copyItemAtPath:v149 toPath:v337 error:&v364])
              {
                sub_2A03C(@"Unable to copy mtree output to lastOTA dir : %@\n\n", v157, v158, v159, v160, v161, v162, v163, v364);
              }
            }

            else if ([objc_msgSend(v129 "lastPathComponent")])
            {
              v178 = [(NSString *)v351 stringByAppendingPathComponent:v129];
              v338 = -[NSString stringByAppendingPathComponent:](v78, "stringByAppendingPathComponent:", [v129 lastPathComponent]);
              sub_2A03C(@"Copying %@ to %@\n", v179, v180, v181, v182, v183, v184, v185, v129);
              if (![(NSFileManager *)v44 copyItemAtPath:v178 toPath:v338 error:&v364])
              {
                v335 = [v129 lastPathComponent];
                sub_2A03C(@"Unable to copy apfs migrator log %@ to lastOTA dir : %@\n\n", v186, v187, v188, v189, v190, v191, v192, v335);
              }
            }

            else if ([objc_msgSend(v129 "lastPathComponent")])
            {
              v215 = [(NSString *)v351 stringByAppendingPathComponent:v129];
              v339 = -[NSString stringByAppendingPathComponent:](v78, "stringByAppendingPathComponent:", [v129 lastPathComponent]);
              sub_2A03C(@"Copying %@ to %@\n", v216, v217, v218, v219, v220, v221, v222, v129);
              if (![(NSFileManager *)v44 copyItemAtPath:v215 toPath:v339 error:&v364])
              {
                v336 = [v129 lastPathComponent];
                sub_2A03C(@"Unable to copy apfs converter log %@ to lastOTA dir : %@\n\n", v223, v224, v225, v226, v227, v228, v229, v336);
              }
            }

            else
            {
              sub_2A03C(@"Skipping unrecognized file %@\n", v208, v209, v210, v211, v212, v213, v214, v129);
            }

            v128 = v128 + 1;
          }

          while (v123 != v128);
          v127 = (v342 + v123);
          v230 = [(NSArray *)obj countByEnumeratingWithState:&v358 objects:v372 count:16];
          v123 = v230;
        }

        while (v230);
      }

      else
      {
        v124 = 0;
        v125 = 0;
        v127 = 0;
      }

      sub_2A03C(@"Total files: %4d Crash logs: %4d Files copied: %4d\n", v116, v117, v118, v119, v120, v121, v122, v127);
      v231 = [NSString stringWithFormat:@"%@/checkpoint", v351, v125, v124];
      v232 = [(NSFileManager *)v44 contentsOfDirectoryAtPath:v231 error:&v364];
      v347 = v231;
      sub_2A03C(@"Searching %@ for checkpoint history and tolerated files\n", v233, v234, v235, v236, v237, v238, v239, v231);
      v356 = 0u;
      v357 = 0u;
      v354 = 0u;
      v355 = 0u;
      v345 = v232;
      v352 = [(NSArray *)v232 countByEnumeratingWithState:&v354 objects:v369 count:16];
      if (!v352)
      {
        v247 = 0;
        goto LABEL_108;
      }

      v343 = 0;
      v247 = 0;
      v248 = 0;
      v249 = 0;
      obja = *v355;
      while (1)
      {
        for (i = 0; i != v352; i = i + 1)
        {
          if (*v355 != obja)
          {
            objc_enumerationMutation(v345);
          }

          v251 = *(*(&v354 + 1) + 8 * i);
          if (([objc_msgSend(v251 "pathExtension")] & 1) != 0 || objc_msgSend(objc_msgSend(v251, "pathExtension"), "isEqualToString:", @"plist"))
          {
            v259 = [(NSString *)v347 stringByAppendingPathComponent:v251];
            v267 = [objc_msgSend(v251 "pathExtension")];
            if (v267)
            {
              if (!v78)
              {
                sub_2A03C(@"Skipping save of %@ since dstOTALogDir is not set\n\n", v260, v261, v262, v263, v264, v265, v266, v251);
                continue;
              }

              v268 = [v251 lastPathComponent];
              v269 = v78;
            }

            else
            {
              v268 = [v251 lastPathComponent];
              v269 = v348;
            }

            v270 = [(NSString *)v269 stringByAppendingPathComponent:v268];
            if ([(NSFileManager *)v44 fileExistsAtPath:v270])
            {
              if ([(NSFileManager *)v44 removeItemAtPath:v270 error:&v364])
              {
                sub_2A03C(@"Removed old file %@\n", v278, v279, v280, v281, v282, v283, v284, v270);
                goto LABEL_86;
              }

              sub_2A03C(@"Unable to remove %@: %@\n", v278, v279, v280, v281, v282, v283, v284, v270);
            }

            else
            {
LABEL_86:
              sub_2A03C(@"Copying %@ to %@\n", v271, v272, v273, v274, v275, v276, v277, v251);
              if ([(NSFileManager *)v44 copyItemAtPath:v259 toPath:v270 error:&v364])
              {
                v367[0] = NSFileOwnerAccountName;
                v367[1] = NSFileGroupOwnerAccountName;
                v368[0] = @"mobile";
                v368[1] = @"mobile";
                v367[2] = NSFilePosixPermissions;
                v368[2] = [NSNumber numberWithInt:420];
                if (![(NSFileManager *)v44 setAttributes:[NSDictionary dictionaryWithObjects:v367 forKeys:3 count:?], v270, &v364])
                {
                  sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v292, v293, v294, v295, v296, v297, v298, v270);
                }

                ++v343;
              }

              else
              {
                sub_2A03C(@"Copy failed: %@\n", v285, v286, v287, v288, v289, v290, v291, v364);
              }
            }

            v299 = -[NSString stringByAppendingPathComponent:](v78, "stringByAppendingPathComponent:", [v251 lastPathComponent]);
            if (v299)
            {
              v300 = v299;
              if (![(NSString *)v299 isEqualToString:v270])
              {
                if ([(NSFileManager *)v44 fileExistsAtPath:v300])
                {
                  [(NSFileManager *)v44 removeItemAtPath:v300 error:&v364];
                }

                sub_2A03C(@"Copying %@ to %@\n", v301, v302, v303, v304, v305, v306, v307, v251);
                if ([(NSFileManager *)v44 copyItemAtPath:v259 toPath:v300 error:&v364])
                {
                  v365[0] = NSFileOwnerAccountName;
                  v365[1] = NSFileGroupOwnerAccountName;
                  v366[0] = @"mobile";
                  v366[1] = @"mobile";
                  v365[2] = NSFilePosixPermissions;
                  v366[2] = [NSNumber numberWithInt:420];
                  if (![(NSFileManager *)v44 setAttributes:[NSDictionary dictionaryWithObjects:v365 forKeys:3 count:?], v300, &v364])
                  {
                    sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v315, v316, v317, v318, v319, v320, v321, v300);
                  }
                }

                else
                {
                  sub_2A03C(@"Copy failed: %@\n", v308, v309, v310, v311, v312, v313, v314, v364);
                }
              }
            }

            v248 += v267 ^ 1;
            v249 += v267;
            v78 = v353;
            goto LABEL_103;
          }

          sub_2A03C(@"Skipping unrecognized file|directory %@\n", v252, v253, v254, v255, v256, v257, v258, v251);
LABEL_103:
          v247 = (v247 + 1);
        }

        v352 = [(NSArray *)v345 countByEnumeratingWithState:&v354 objects:v369 count:16];
        if (!v352)
        {
LABEL_108:
          sub_2A03C(@"Total files|directories: %4d History files: %4d Status files: %4d Files copied: %4d\n", v240, v241, v242, v243, v244, v245, v246, v247);
          [(NSFileManager *)v44 setDelegate:0];

          v19 = 0;
          v1 = v341;
          goto LABEL_5;
        }
      }
    }

    v77 = @"Permanent update partition in use but dev node not found..Skipping sync of lastOTA dir contents\n\n";
    goto LABEL_24;
  }

  v331 = v10;
  v18 = @"error %d waiting for internal media\n";
LABEL_3:
  sub_2A03C(v18, v11, v12, v13, v14, v15, v16, v17, v331);
LABEL_4:
  v19 = 1;
LABEL_5:
  objc_autoreleasePoolPop(v1);
  return v19;
}

CFStringRef ramrod_copy_data_volume_path()
{
  v0 = objc_autoreleasePoolPush();
  memset(v13, 0, sizeof(v13));
  bzero(cStr, 0x400uLL);
  if (sub_55394() && !ramrod_get_data_partition_device_node(v13, 0x20uLL))
  {
    v8 = @"unable to find data volume dev node to get its mount path\n\n";
    goto LABEL_7;
  }

  sub_2A03C(@"Located data volume dev node(%s). Attempting to locate mount point\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  if (ramrod_get_mount_path(v13, cStr, 0x400uLL))
  {
    v8 = @"Unable to get mount path for data volume or it is not mounted\n\n";
LABEL_7:
    sub_2A03C(v8, v1, v2, v3, v4, v5, v6, v7, v11);
    v9 = 0;
    goto LABEL_8;
  }

  sub_2A03C(@"Data volume(%s) is mounted at %s.\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
LABEL_8:
  objc_autoreleasePoolPop(v0);
  return v9;
}

uint64_t sub_55394()
{
  if (!ramrod_device_has_sep())
  {
    return 1;
  }

  v11 = *off_1A9E40;
  v12 = 0;
  v0 = ramrod_execute_command(&v11);
  v8 = v0 == 0;
  if (v0)
  {
    v9 = @"SEP OS is not booted\n";
  }

  else
  {
    v9 = @"SEP OS is booted\n";
  }

  sub_2A03C(v9, v1, v2, v3, v4, v5, v6, v7, v11);
  return v8;
}

CFStringRef ramrod_copy_user_volume_path()
{
  v0 = objc_autoreleasePoolPush();
  memset(v13, 0, sizeof(v13));
  bzero(cStr, 0x400uLL);
  if (sub_55394() && !ramrod_get_user_partition_device_node(v13, 0x20uLL))
  {
    v8 = @"unable to find data volume dev node to get its mount path\n\n";
    goto LABEL_7;
  }

  sub_2A03C(@"Located user volume dev node(%s). Attempting to locate mount point\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  if (ramrod_get_mount_path(v13, cStr, 0x400uLL))
  {
    v8 = @"Unable to get mount path for user volume or it is not mounted\n\n";
LABEL_7:
    sub_2A03C(v8, v1, v2, v3, v4, v5, v6, v7, v11);
    v9 = 0;
    goto LABEL_8;
  }

  sub_2A03C(@"User volume(%s) is mounted at %s.\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
LABEL_8:
  objc_autoreleasePoolPop(v0);
  return v9;
}

CFStringRef ramrod_copy_mobile_dir_path()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ramrod_copy_user_volume_path();
  if (!v1)
  {
    v2 = ramrod_copy_data_volume_path();
    if (v2)
    {
      v3 = v2;
      v1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/mobile", v2);
      CFRelease(v3);
    }

    else
    {
      v1 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

CFStringRef ramrod_copy_update_volume_path()
{
  v0 = objc_autoreleasePoolPush();
  memset(v13, 0, sizeof(v13));
  bzero(cStr, 0x400uLL);
  if (ramrod_get_update_partition_device_node(v13, 0x20uLL))
  {
    sub_2A03C(@"Located update volume dev node(%s). Attempting to locate mount point\n\n", v1, v2, v3, v4, v5, v6, v7, v13);
    if (!ramrod_get_mount_path(v13, cStr, 0x400uLL))
    {
      sub_2A03C(@"%s is mounted at %s.\n", v1, v2, v3, v4, v5, v6, v7, v13);
      v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      goto LABEL_7;
    }

    v8 = @"Unable to get mount path for update volume or it is not mounted\n\n";
  }

  else
  {
    v8 = @"Unable to find update volume dev node to get it's mount path\n\n";
  }

  sub_2A03C(v8, v1, v2, v3, v4, v5, v6, v7, v11);
  v9 = 0;
LABEL_7:
  objc_autoreleasePoolPop(v0);
  return v9;
}

CFStringRef ramrod_copy_log_storage_dir_path()
{
  v0 = objc_autoreleasePoolPush();
  updated = ramrod_copy_update_volume_path();
  if (updated)
  {
    v9 = @"Log storage dir found on update volume\n\n";
  }

  else
  {
    v9 = @"Permanent update volume in use but no mounted update partition found..\n\n";
  }

  sub_2A03C(v9, v1, v2, v3, v4, v5, v6, v7, v11);
  objc_autoreleasePoolPop(v0);
  return updated;
}

uint64_t ramrod_write_ota_log_from_patchd_logs_to_log_dir(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_write_ota_log_from_patchd_logs_to_log_dir");
  context = objc_autoreleasePoolPush();
  v243 = 0;
  if (!a2 || !a3)
  {
    sub_2A03C(@"Null value passed for source/destination patchd log directory..returning\n", v12, v13, v14, v15, v16, v17, v18, v212);
LABEL_18:
    v49 = 1;
    goto LABEL_19;
  }

  if (a4)
  {
    v19 = [NSString stringWithCString:a4 encoding:4];
  }

  else
  {
    v19 = @"/mobile/Library/Logs/CrashReporter";
  }

  v219 = v19;
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"SaveLogToAbsolutePath"))
    {
      sub_2A03C(@"Patchd logs will be saved to absolute path: %s\n", v20, v21, v22, v23, v24, v25, v26, a3);
      v225 = 1;
    }

    else
    {
      v225 = 0;
    }

    if (CFDictionaryContainsKey(a1, @"SaveLogUnconditionally"))
    {
      sub_2A03C(@"Saving all patchd logs\n", v27, v28, v29, v30, v31, v32, v33, v212);
      v224 = 0;
      v221 = 1;
      goto LABEL_16;
    }

    v221 = 0;
  }

  else
  {
    v221 = 0;
    v225 = 0;
  }

  v224 = 1;
LABEL_16:
  v34 = [NSString stringWithCString:a2 encoding:4];
  v220 = [NSString stringWithCString:a3 encoding:4];
  v229 = +[NSFileManager defaultManager];
  obj = [(NSArray *)[(NSFileManager *)v229 contentsOfDirectoryAtPath:v34 error:&v243] sortedArrayUsingSelector:"compare:"];
  sub_2A03C(@"Searching %@ for patchd logs\n", v35, v36, v37, v38, v39, v40, v41, v34);
  v228 = [NSRegularExpression regularExpressionWithPattern:@"patchd-([[:digit:]]+)\\.log" options:0 error:&v243];
  if (v243)
  {
    sub_2A03C(@"Error %@ constructing patchd.log regex\n", v42, v43, v44, v45, v46, v47, v48, v213);
    goto LABEL_18;
  }

  v222 = [NSMutableString stringWithCapacity:0];
  if (!v222)
  {
    sub_2A03C(@"Could not allocate mutable string for log concatenation\n", v58, v59, v60, v61, v62, v63, v64, v213);
    goto LABEL_18;
  }

  v65 = [NSMutableDictionary dictionaryWithCapacity:0];
  v66 = MGCopyAnswer();
  if (v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = @"Unknown";
  }

  [(NSMutableDictionary *)v65 setObject:v67 forKey:@"itunes_version"];
  [(NSMutableDictionary *)v65 setObject:@"Unknown" forKey:@"restore_payload_version"];
  [(NSMutableDictionary *)v65 setObject:@"OTAUpdate" forKey:@"restore_type"];
  [(NSMutableDictionary *)v65 setObject:@"iPhoneRestore" forKey:@"name"];
  [(NSMutableDictionary *)v65 setObject:v67 forKey:@"os_version"];
  [(NSMutableDictionary *)v65 setObject:@"183" forKey:@"bug_type"];
  v68 = [NSJSONSerialization dataWithJSONObject:v65 options:0 error:&v243];
  if (v243)
  {
    sub_2A03C(@"Error %@ serializing JSON data for ips header for dictionary %@\n", v69, v70, v71, v72, v73, v74, v75, v243);
    goto LABEL_18;
  }

  if (!v68)
  {
    v211 = @"Error serializing JSON data for ips header - nil data\n";
LABEL_88:
    sub_2A03C(v211, v69, v70, v71, v72, v73, v74, v75, v213);
    goto LABEL_18;
  }

  v70 = [[NSString alloc] initWithData:v68 encoding:4];
  if (!v70)
  {
    v211 = @"Error converting JSON data to UTF8 string - nil string\n";
    goto LABEL_88;
  }

  [(NSMutableString *)v222 appendString:v70];
  [(NSMutableString *)v222 appendFormat:@"\n\n"];
  v218 = [NSMutableArray arrayWithCapacity:[(NSArray *)obj count]];
  v217 = [NSMutableArray arrayWithCapacity:[(NSArray *)obj count]];
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v83 = [(NSArray *)obj countByEnumeratingWithState:&v239 objects:v261 count:16];
  if (!v83)
  {
    goto LABEL_90;
  }

  v84 = 0;
  LODWORD(v85) = 0;
  v223 = 0;
  v86 = *v240;
  v216 = @"recently";
  while (2)
  {
    for (i = 0; i != v83; i = i + 1)
    {
      if (*v240 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v88 = *(*(&v239 + 1) + 8 * i);
      v96 = -[NSRegularExpression firstMatchInString:options:range:](v228, "firstMatchInString:options:range:", v88, 0, 0, [v88 length]);
      if (v96)
      {
        sub_2A03C(@"Found %@\n", v89, v90, v91, v92, v93, v94, v95, v88);
        v97 = [(NSTextCheckingResult *)v96 rangeAtIndex:1];
        v99 = [v88 substringWithRange:{v97, v98}];
        v100 = -[NSString stringByAppendingPathComponent:](v34, "stringByAppendingPathComponent:", [@".patchd-saved-" stringByAppendingString:v99]);
        if (![(NSFileManager *)v229 fileExistsAtPath:v100]|| (sub_2A03C(@"File is tagged saved\n", v101, v102, v103, v104, v105, v106, v107, v214), v223 = 1, (v224 & 1) == 0))
        {
          v108 = -[NSString stringByAppendingPathComponent:](v34, "stringByAppendingPathComponent:", [@".patchd-dirty-" stringByAppendingString:v99]);
          if ([(NSFileManager *)v229 fileExistsAtPath:v108])
          {
            sub_2A03C(@"File is tagged dirty\n", v109, v110, v111, v112, v113, v114, v115, v214);
            v223 = 1;
          }

          if (!v225)
          {
            [(NSMutableArray *)v218 addObject:v100];
            [(NSMutableArray *)v217 addObject:v108];
          }

          if (v84)
          {
            sub_2A03C(@"bootTimeDate is not nil\n", v109, v110, v111, v112, v113, v114, v115, v214);
          }

          else
          {
            v123 = objc_alloc_init(NSNumberFormatter);
            if (!v123)
            {
              sub_2A03C(@"Could not allocate number formatter for boottime in patchd log file name\n", v116, v117, v118, v119, v120, v121, v122, v214);
              goto LABEL_18;
            }

            [v123 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
            v124 = [v123 numberFromString:v99];
            if (![(NSNumber *)v124 longValue])
            {
              sub_2A03C(@"Converting bootTimeString=%@ directly\n", v125, v126, v127, v128, v129, v130, v131, v99);
              v124 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", strtol([v99 UTF8String], 0, 0));
            }

            sub_2A03C(@"bootTimeNumber=%@\n", v125, v126, v127, v128, v129, v130, v131, v124);
            [(NSNumber *)v124 doubleValue];
            v84 = [NSDate dateWithTimeIntervalSince1970:?];
            v260 = 0;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            *v248 = 0u;
            v249 = 0u;
            v238 = 0;
            v238 = [(NSNumber *)v124 longValue];
            v139 = localtime(&v238);
            if (!v139)
            {
              sub_2A03C(@"localtime failed\n", v132, v133, v134, v135, v136, v137, v138, v215);
            }

            if (strftime(v248, 0xC8uLL, "%F-%H-%M-%S", v139))
            {
              v216 = [NSString stringWithUTF8String:v248];
              sub_2A03C(@"t=%ld formattedBootTimeDateString=%@\n", v147, v148, v149, v150, v151, v152, v153, v238);
            }

            else
            {
              sub_2A03C(@"strftime failed\n", v140, v141, v142, v143, v144, v145, v146, v215);
            }
          }

          v154 = [NSString stringWithContentsOfFile:[(NSString *)v34 stringByAppendingPathComponent:v88] encoding:4 error:&v243];
          v85 = (v85 + 1);
          if (v243)
          {
            sub_2A03C(@"Eror %@ creating string with contents of %@\n", v155, v156, v157, v158, v159, v160, v161, v88);
          }

          else
          {
            [(NSMutableString *)v222 appendFormat:@"------- patchd boot attempt %d -------\n%@", v85, v154];
          }
        }
      }
    }

    v83 = [(NSArray *)obj countByEnumeratingWithState:&v239 objects:v261 count:16];
    if (v83)
    {
      continue;
    }

    break;
  }

  if (v85 < 1)
  {
LABEL_90:
    sub_2A03C(@"No patchd logs were found on %@\n", v76, v77, v78, v79, v80, v81, v82, v34);
LABEL_91:
    v49 = 0;
    goto LABEL_19;
  }

  v169 = [NSString stringWithFormat:@"OTAUpdate-%@.ips"];
  if (v223)
  {
    v170 = 1;
  }

  else
  {
    v170 = v221;
  }

  if ((v170 & 1) == 0 && ![(NSFileManager *)v229 fileExistsAtPath:[(NSString *)v34 stringByAppendingPathComponent:@".patchd-dirty"]])
  {
    sub_2A03C(@"------- patchd exited cleanly but patchd logs were left -------\n%@------- END LOG -------\n\n", v162, v163, v164, v165, v166, v167, v168, v222);
    goto LABEL_91;
  }

  if (v221)
  {
    v171 = @"Unconditionally saving patchd logs\n";
  }

  else
  {
    v171 = @"Patchd logs were not properly saved\n";
  }

  sub_2A03C(v171, v162, v163, v164, v165, v166, v167, v168, v216);
  v172 = sub_56234(v222);
  if (v225 != 1)
  {
    v220 = [(NSString *)v220 stringByAppendingPathComponent:v219];
  }

  v173 = [(NSString *)v220 stringByAppendingPathComponent:v169];
  if (![v172 writeToFile:v173 atomically:1 encoding:4 error:&v243])
  {
    sub_2A03C(@"------- Error %@ saving %@ -------\n%@------- END LOG -------\n\n", v174, v175, v176, v177, v178, v179, v180, v243);
    goto LABEL_91;
  }

  sub_2A03C(@"Successfully saved %@\n", v174, v175, v176, v177, v178, v179, v180, v173);
  v246[0] = NSFileOwnerAccountName;
  v246[1] = NSFileGroupOwnerAccountName;
  v247[0] = @"mobile";
  v247[1] = @"mobile";
  v246[2] = NSFilePosixPermissions;
  v247[2] = [NSNumber numberWithInt:420];
  v181 = [NSDictionary dictionaryWithObjects:v247 forKeys:v246 count:3];
  if (![(NSFileManager *)v229 setAttributes:v181 ofItemAtPath:v173 error:&v243])
  {
    sub_2A03C(@"Setting posix attributes on %@ failed : %@\n", v182, v183, v184, v185, v186, v187, v188, v173);
    goto LABEL_91;
  }

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v189 = [(NSMutableArray *)v218 countByEnumeratingWithState:&v234 objects:v245 count:16];
  if (v189)
  {
    v190 = *v235;
    do
    {
      for (j = 0; j != v189; j = j + 1)
      {
        if (*v235 != v190)
        {
          objc_enumerationMutation(v218);
        }

        v192 = *(*(&v234 + 1) + 8 * j);
        [(NSFileManager *)v229 createFileAtPath:v192 contents:0 attributes:v181];
        sub_2A03C(@"Creating saved file tag %@\n", v193, v194, v195, v196, v197, v198, v199, v192);
      }

      v189 = [(NSMutableArray *)v218 countByEnumeratingWithState:&v234 objects:v245 count:16];
    }

    while (v189);
  }

  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v200 = [(NSMutableArray *)v217 countByEnumeratingWithState:&v230 objects:v244 count:16];
  if (!v200)
  {
    goto LABEL_91;
  }

  v201 = *v231;
  do
  {
    for (k = 0; k != v200; k = k + 1)
    {
      if (*v231 != v201)
      {
        objc_enumerationMutation(v217);
      }

      v203 = *(*(&v230 + 1) + 8 * k);
      if ([(NSFileManager *)v229 fileExistsAtPath:v203])
      {
        sub_2A03C(@"Removing dirty file tag %@\n", v204, v205, v206, v207, v208, v209, v210, v203);
        [(NSFileManager *)v229 removeItemAtPath:v203 error:0];
      }
    }

    v200 = [(NSMutableArray *)v217 countByEnumeratingWithState:&v230 objects:v244 count:16];
    v49 = 0;
  }

  while (v200);
LABEL_19:
  objc_autoreleasePoolPop(context);
  ramrod_log_msg("%s complete\n", v50, v51, v52, v53, v54, v55, v56, "ramrod_write_ota_log_from_patchd_logs_to_log_dir");
  return v49;
}

id sub_56234(void *a1)
{
  v50 = @"MEID";
  v51 = @"IMEI";
  v67 = @"[0-9a-fA-F]{14}";
  v68 = @"[0-9]{15}";
  v52 = @"UDID";
  v53 = @"ICCID19";
  v69 = @"[0-9a-fA-F]{40}";
  v70 = @"[0-9a-fA-F]{19}";
  v54 = @"ICCID20";
  v55 = @"UNEXPECTED_FILE";
  v71 = @"[0-9a-fA-F]{20}";
  v72 = @"'[^\n]*' has been added";
  v56 = @"VERIFY_FAILED";
  v57 = @"VERIFY_EXCEPTION";
  v73 = @"verify_callback: '[^\n]*' did not verify and is not on the exception list.";
  v74 = @"'[^\n]*' is on the exception list";
  v58 = @"BBCHIPID";
  v59 = @"ECID";
  v75 = @"ChipSerialNo[^\n]*bytes = 0x[0-9a-fA-F]*\\}";
  v76 = @"ecid=0x[0-9a-fA-F]*,";
  v60 = @"ECID2";
  v61 = @"BBSNUM";
  v77 = @"ApECID[^\n]*value = [+-][0-9<>IMEI]*";
  v78 = @"snum=0x[0-9a-fA-F]*,";
  v62 = @"BBSNUM2";
  v63 = @"FDR_KEY_1A";
  v79 = @"BbSNUM[^\n]*";
  v80 = @"[:-][0-9a-fA-F]{8}";
  v64 = @"FDR_KEY_1B";
  v65 = @"FDR_KEY_2";
  v81 = @"[:-] [0-9a-fA-F]{8}";
  v82 = @"[:-] [a-zA-Z0-9]{18}\\b";
  v66 = @"FDR_KEY_3";
  v83 = @"[:-][a-zA-Z0-9]{8}[:-][a-zA-Z0-9]{16}";
  v1 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:&v67];
  v50 = @"MEID";
  v51 = @"IMEI";
  v67 = @"<<<<<MEID>>>>>";
  v68 = @"<<<<<IMEI>>>>>>";
  v52 = @"UDID";
  v53 = @"ICCID19";
  v69 = @"<<<<<<<<<<<<<<<<<<UDID>>>>>>>>>>>>>>>>>>";
  v70 = @"<<<<<<<ICCID>>>>>>>";
  v54 = @"ICCID20";
  v55 = @"UNEXPECTED_FILE";
  v71 = @"<<<<<<<<ICCID>>>>>>>";
  v72 = @"'<<File name>>' has been added ";
  v56 = @"VERIFY_FAILED";
  v57 = @"VERIFY_EXCEPTION";
  v73 = @"verify_callback: '<<File name>>' did not verify and is not on the exception list.";
  v74 = @"''<<File name>>' is on the exception list";
  v58 = @"BBCHIPID";
  v59 = @"ECID";
  v75 = @"ChipSerialNo ";
  v76 = @"ecid=0xXXXXXXXXXXX";
  v60 = @"ECID2";
  v61 = @"BBSNUM";
  v77 = @"ApECID} = X {X";
  v78 = @"snum=0xXXXXXXXX";
  v62 = @"BBSNUM2";
  v63 = @"FDR_KEY_1A";
  v79 = @"BbSNUM} = 0xXXXXXXXX }";
  v80 = @"XXXX";
  v64 = @"FDR_KEY_1B";
  v65 = @"FDR_KEY_2";
  v81 = @"XXXX";
  v82 = @"XXXX";
  v66 = @"FDR_KEY_3";
  v83 = @"XXXX";
  v42 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:&v67];
  v44 = [a1 mutableCopy];
  v67 = @"UNEXPECTED_FILE";
  v68 = @"VERIFY_FAILED";
  v69 = @"VERIFY_EXCEPTION";
  v70 = @"FDR_KEY_1A";
  v71 = @"FDR_KEY_1B";
  v72 = @"FDR_KEY_2";
  v73 = @"FDR_KEY_3";
  v74 = @"UDID";
  v75 = @"ICCID19";
  v76 = @"ICCID20";
  v77 = @"IMEI";
  v78 = @"ECID";
  v79 = @"ECID2";
  v80 = @"MEID";
  v81 = @"BBCHIPID";
  v82 = @"BBSNUM";
  v83 = @"BBSNUM2";
  v2 = [NSArray arrayWithObjects:&v67 count:17];
  if (!v2)
  {
    v2 = [v1 allKeys];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v46;
    v6 = &classRef_NSError;
    v41 = *v46;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v67 = 0;
        v17 = [v1 objectForKey:v8];
        if (!v17)
        {
          sub_2A03C(@"Skipping replacement of %@.  No corresponding regex found in PII pattern dictionary.\n", v10, v11, v12, v13, v14, v15, v16, v8);
        }

        v18 = [v6[29] regularExpressionWithPattern:v17 options:1 error:&v67];
        if (v67)
        {
          sub_2A03C(@"Error %@ constructing regular expression for %@\n", v19, v20, v21, v22, v23, v24, v25, v67);
        }

        else
        {
          v26 = v18;
          v27 = [v42 objectForKey:v8];
          v28 = v1;
          v29 = v6;
          v30 = v2;
          if (v27)
          {
            v31 = v27;
          }

          else
          {
            v31 = @"<<<<PII>>>>";
          }

          v32 = [v26 replaceMatchesInString:v44 options:0 range:0 withTemplate:{objc_msgSend(v44, "length"), v31}];
          v2 = v30;
          v6 = v29;
          v1 = v28;
          v5 = v41;
          sub_2A03C(@"Replaced %lu occurrences of %@ with %@\n", v33, v34, v35, v36, v37, v38, v39, v32);
        }

        objc_autoreleasePoolPop(v9);
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v4);
  }

  return v44;
}

NSDictionary *_copy_network_device_matching_dict()
{
  v6 = @"IOPropertyExistsMatch";
  v4 = @"if-restore-bringup";
  v0 = [NSNumber numberWithBool:1];
  v5 = v0;
  v1 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v7 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v2;
}

NSDictionary *_copy_network_interface_matching_dict(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedLongLong:a1];
  v6 = v1;
  v7[0] = @"IOParentMatch";
  v5 = @"IORegistryEntryID";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v7[1] = @"IOProviderClass";
  v8[0] = v2;
  v8[1] = @"IONetworkInterface";
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v3;
}

BOOL restored_enable_network_interfaces()
{
  mainPort[0] = 0;
  existing[1] = 0;
  if (sub_D5200(2, 15, 0, 0))
  {
    v0 = IOMainPort(bootstrap_port, mainPort);
  }

  else
  {
    v0 = IOMasterPort(bootstrap_port, mainPort);
  }

  if (v0)
  {
    ramrod_log_msg("failed to create mach port to IOKit: 0x%x\n", v1, v2, v3, v4, v5, v6, v7, v0);
LABEL_16:
    v50 = 0;
    network_config_succeeded = 0;
    goto LABEL_17;
  }

  v8 = mainPort[0];
  LODWORD(v206[0]) = 0;
  connect[0] = 0;
  v9 = IOServiceMatching("IONetworkStack");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  v18 = MatchingService;
  LODWORD(v206[0]) = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find IONetworkStack service\n", v11, v12, v13, v14, v15, v16, v17, v195);
LABEL_15:
    ramrod_log_msg("failed to copy network stack service\n", v27, v28, v29, v30, v31, v32, v33, v195);
    goto LABEL_16;
  }

  v19 = IOServiceOpen(MatchingService, mach_task_self_, 0, connect);
  if (v19)
  {
    ramrod_log_msg("unable to open IONetworkStack service: 0x%x\n", v20, v21, v22, v23, v24, v25, v26, v19);
  }

  v197 = connect[0];
  v34 = IOObjectRelease(v18);
  if (v34)
  {
    v205[0] = 0;
    v210 = 0u;
    v211 = 0u;
    v209 = 0u;
    *connect = 0u;
    v208 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *v203 = 67109120;
    *&v203[4] = v34;
    _os_log_send_and_compose_impl();
    v194 = _os_crash_msg();
    sub_D9E64(v194);
  }

  if (!v197)
  {
    goto LABEL_15;
  }

  v35 = _copy_network_device_matching_dict();
  if (v35)
  {
    MatchingServices = IOServiceGetMatchingServices(mainPort[0], v35, &existing[1]);
    if (MatchingServices)
    {
      ramrod_log_msg("IOServiceGetMatchingServices IONetworkInterface returned 0x%x\n", v43, v44, v45, v46, v47, v48, v49, MatchingServices);
      goto LABEL_21;
    }

    v53 = 0;
LABEL_23:
    v54 = IOIteratorNext(existing[1]);
    v62 = v54;
    v50 = v54 == 0;
    if (!v54)
    {
      if ((v53 & 1) == 0)
      {
        ramrod_log_msg("no device required to enable network interface, skipping\n", v55, v56, v57, v58, v59, v60, v61, v195);
      }

      goto LABEL_70;
    }

    v63 = mainPort[0];
    object = 0;
    entryID = 0;
    RegistryEntryID = IORegistryEntryGetRegistryEntryID(v54, &entryID);
    v71 = "failed to get device registry id: 0x%x";
    if (RegistryEntryID || (v72 = _copy_network_interface_matching_dict(entryID), RegistryEntryID = IOServiceGetMatchingServices(v63, v72, &object), v71 = "failed to get matching services: 0x%x", RegistryEntryID))
    {
      ramrod_log_msg(v71, v71, v65, v66, v67, v68, v69, v70, RegistryEntryID);
      goto LABEL_27;
    }

    v84 = 0;
    while (1)
    {
      v85 = IOIteratorNext(object);
      v93 = v85;
      if (!v85)
      {
        if (v84)
        {
          v73 = 1;
          goto LABEL_28;
        }

        ramrod_log_msg("failed to find any IONetworkInterface for device\n", v86, v87, v88, v89, v90, v91, v92, v195);
LABEL_27:
        v73 = 0;
LABEL_28:
        if (object)
        {
          v74 = IOObjectRelease(object);
          if (v74)
          {
            v205[0] = 0;
            v210 = 0u;
            v211 = 0u;
            v209 = 0u;
            *connect = 0u;
            v208 = 0u;
            os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            *v203 = 67109120;
            *&v203[4] = v74;
            _os_log_send_and_compose_impl();
            v193 = _os_crash_msg();
            sub_D9E64(v193);
          }
        }

        if ((v73 & 1) == 0)
        {
          v75 = sub_57554(v62);
          ramrod_log_msg("failed to enable network interface for device: %s\n", v76, v77, v78, v79, v80, v81, v82, v75);
          free(v75);
        }

        v83 = IOObjectRelease(v62);
        if (v83)
        {
          v205[0] = 0;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          *connect = 0u;
          v208 = 0u;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          *v203 = 67109120;
          *&v203[4] = v83;
          _os_log_send_and_compose_impl();
          v192 = _os_crash_msg();
          sub_D9E64(v192);
        }

        v53 = 1;
        if ((v73 & 1) == 0)
        {
LABEL_70:
          v52 = v62 == 0;
          goto LABEL_71;
        }

        goto LABEL_23;
      }

      mainPort[1] = v85;
      *v203 = 0;
      v204 = 0;
      v202 = -1;
      v206[0] = 0;
      v101 = IORegistryEntryGetRegistryEntryID(v85, v206);
      v102 = "IORegistryEntryGetRegistryEntryID interface failed\n";
      if (v101)
      {
        goto LABEL_38;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v93, @"IOInterfaceUnit", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        ramrod_log_msg("interface has already been named, skipping\n", v123, v124, v125, v126, v127, v128, v129, v195);
        v131 = 0;
        v103 = 0;
        v104 = 0;
        v105 = 0;
      }

      else
      {
        v104 = IORegistryEntryCreateCFProperty(v93, @"IOInterfaceNamePrefix", kCFAllocatorDefault, 0);
        if (!v104)
        {
          v102 = "can't get interface prefix\n";
LABEL_38:
          ramrod_log_msg(v102, v94, v95, v96, v97, v98, v99, v100, v195);
          v103 = 0;
          v104 = 0;
          v105 = 0;
LABEL_39:

          ramrod_log_msg("failed to name network interface\n", v106, v107, v108, v109, v110, v111, v112, v196);
          goto LABEL_40;
        }

        v105 = [[NSData alloc] initWithBytes:v206 length:8];
        v205[0] = @"IONetworkStackUserCommand";
        v152 = [NSNumber numberWithInt:1];
        *connect = v152;
        *&connect[2] = v105;
        v205[1] = @"IORegistryEntryID";
        v205[2] = @"IOInterfaceUnit";
        v153 = [NSNumber numberWithInt:0];
        *&v208 = v153;
        v154 = [NSDictionary dictionaryWithObjects:connect forKeys:v205 count:3];

        v155 = IOConnectSetCFProperties(v197, v154);
        if (v155)
        {
          ramrod_log_msg("IOConnectSetCFProperties failed: 0x%x\n", v156, v157, v158, v159, v160, v161, v162, v155);
          v103 = 0;
          goto LABEL_39;
        }

        v103 = IORegistryEntryCreateCFProperty(v93, @"IOInterfaceUnit", kCFAllocatorDefault, 0);
        if (!v103)
        {
          ramrod_log_msg("can't get new interface unit\n", v163, v164, v165, v166, v167, v168, v169, v195);
          goto LABEL_39;
        }

        v170 = v104;
        if (__snprintf_chk(v203, 0x10uLL, 0, 0x10uLL, "%s%lu", [v104 UTF8String], objc_msgSend(v103, "unsignedLongValue")) >= 16)
        {
          v171 = v104;
          v172 = [v104 UTF8String];
          [v103 unsignedLongValue];
          ramrod_log_msg("interface name [%s%lu] too long\n", v173, v174, v175, v176, v177, v178, v179, v172);
          goto LABEL_39;
        }

        v131 = sub_57554(v93);
        ramrod_log_msg("named interface for service %s as %s\n", v180, v181, v182, v183, v184, v185, v186, v131);
      }

      free(v131);

      v132 = sub_57A60();
      v140 = v132;
      v202 = v132;
      if (v132 < 0)
      {
        ramrod_log_msg("failed to create dgram socket\n", v133, v134, v135, v136, v137, v138, v139, v195);
        if (v140 == -1)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v148 = sub_57BC4(v132, v203);
        v149 = "failed to configure link local address for %s\n";
        if (v148)
        {
          v150 = sub_57AB8(v140, v203);
          v149 = "failed to bring up %s\n";
          if (v150)
          {
            v151 = 1;
            goto LABEL_56;
          }
        }

        ramrod_log_msg(v149, v141, v142, v143, v144, v145, v146, v147, v203);
      }

      v151 = 0;
LABEL_56:
      if (close(v140) == -1)
      {
        v205[0] = 0;
        v210 = 0u;
        v211 = 0u;
        v209 = 0u;
        *connect = 0u;
        v208 = 0u;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v189 = *__error();
        LODWORD(v206[0]) = 67109120;
        HIDWORD(v206[0]) = v189;
        _os_log_send_and_compose_impl();
        v190 = _os_crash_msg();
        sub_D9E64(v190);
      }

      if (v151)
      {
        v121 = 1;
        goto LABEL_41;
      }

LABEL_40:
      v113 = sub_57554(v93);
      ramrod_log_msg("failed to enable network interface for service %s\n", v114, v115, v116, v117, v118, v119, v120, v113);
      free(v113);
      v121 = 0;
LABEL_41:
      v122 = IOObjectRelease(v93);
      if (v122)
      {
        v205[0] = 0;
        v210 = 0u;
        v211 = 0u;
        v209 = 0u;
        *connect = 0u;
        v208 = 0u;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        *v203 = 67109120;
        *&v203[4] = v122;
        _os_log_send_and_compose_impl();
        v191 = _os_crash_msg();
        sub_D9E64(v191);
      }

      v84 = 1;
      if ((v121 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  ramrod_log_msg("failed to copy network device matching dict\n", 0, v36, v37, v38, v39, v40, v41, v195);
LABEL_21:
  v52 = 0;
  v50 = 0;
LABEL_71:
  network_config_succeeded = v52;
  v187 = IOServiceClose(v197);
  if (v187)
  {
    v205[0] = 0;
    v210 = 0u;
    v211 = 0u;
    v209 = 0u;
    *connect = 0u;
    v208 = 0u;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    *v203 = 67109120;
    *&v203[4] = v187;
    _os_log_send_and_compose_impl();
    v188 = _os_crash_msg();
    sub_D9E64(v188);
  }

LABEL_17:
  if (existing[1] && IOObjectRelease(existing[1]))
  {
    sub_D9E68(v205, connect);
  }

  return v50;
}

void sub_57390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, unsigned int a15)
{
  sub_57484(&a13);
  sub_574EC(&a14);
  sub_57484(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_57484(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D9F00(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_574EC(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      sub_D9F84(&v2, v3);
    }
  }

  return result;
}

char *sub_57554(io_registry_entry_t a1)
{
  memset(path, 0, 512);
  v1 = IORegistryEntryGetPath(a1, "IOService", path);
  if (v1)
  {
    ramrod_log_msg("failed to get path for service: 0x%x\n", v2, v3, v4, v5, v6, v7, v8, v1);
    return 0;
  }

  else if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(path);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(path);
    if (!result)
    {
      sub_DA008(path, &v10, v12);
    }
  }

  return result;
}

BOOL restored_create_vlan(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *__s1 = 0;
  v76 = 0;
  if (!a3)
  {
    ramrod_log_msg("invalid argument: vlan_ifname_out\n", a2, 0, a4, a5, a6, a7, a8, v73);
    return 0;
  }

  v9 = a2;
  v17 = sub_57A60();
  if (v17 < 0)
  {
    ramrod_log_msg("failed to create dgram socket\n", v10, v11, v12, v13, v14, v15, v16, v73);
    goto LABEL_7;
  }

  v80 = 0u;
  v81 = 0u;
  __strlcpy_chk();
  if (!ioctl(v17, 0xC0206978uLL, &v80))
  {
    __strlcpy_chk();
    ramrod_log_msg("created interface %s\n", v34, v35, v36, v37, v38, v39, v40, __s1);
    if (!sub_57AB8(v17, __s1))
    {
      v63 = "failed to bring up %s\n";
      goto LABEL_13;
    }

    v80 = 0u;
    v81 = 0u;
    memset(v77, 0, 18);
    __strlcpy_chk();
    *&v81 = v77;
    __strlcpy_chk();
    *&v77[16] = v9;
    if (ioctl(v17, 0x8020697EuLL, &v80))
    {
      v55 = __error();
      ramrod_log_msg("ioctl(SIOCSIFVLAN): %d\n", v56, v57, v58, v59, v60, v61, v62, *v55);
      v63 = "failed to setup vlan %s\n";
LABEL_13:
      ramrod_log_msg(v63, v41, v42, v43, v44, v45, v46, v47, __s1);
      goto LABEL_14;
    }

    ramrod_log_msg("succeeded setting vlan %s with [parent = %s, tag = %d]\n", v48, v49, v50, v51, v52, v53, v54, __s1);
    if (!sub_57BC4(v17, __s1))
    {
      v63 = "failed to configure link local address for %s\n";
      goto LABEL_13;
    }

    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v65 = strdup(__s1);
        if (v65)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }

      v66 = v65;
    }

    else
    {
      v66 = strdup(__s1);
      v67 = strlen(__s1);
      if (!v66)
      {
        v68 = v67;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v80 = 0u;
        v69 = &_os_log_default;
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v70 = __error();
        v71 = strerror(*v70);
        *v77 = 136315650;
        *&v77[4] = "known-constant allocation";
        *&v77[12] = 2048;
        *&v77[14] = v68;
        v78 = 2080;
        v79 = v71;
        _os_log_send_and_compose_impl();

        v72 = _os_crash_msg();
        sub_D9E64(v72);
      }
    }

    *a3 = v66;
LABEL_7:
    v33 = v17 >= 0;
    if (v17 == -1)
    {
      return v33;
    }

    goto LABEL_15;
  }

  v18 = __error();
  ramrod_log_msg("ioctl(SIOCIFCREATE): %d\n", v19, v20, v21, v22, v23, v24, v25, *v18);
  ramrod_log_msg("failed to create vlan interface\n", v26, v27, v28, v29, v30, v31, v32, v74);
LABEL_14:
  v33 = 0;
LABEL_15:
  if (close(v17) == -1)
  {
    sub_DA0D8(v77, &v80);
  }

  return v33;
}

uint64_t sub_579F4(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      sub_DA19C(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_57A60()
{
  v0 = socket(30, 2, 0);
  if ((v0 & 0x80000000) != 0)
  {
    v1 = __error();
    ramrod_log_msg("failed to create socket: %d\n", v2, v3, v4, v5, v6, v7, v8, *v1);
  }

  return v0;
}

uint64_t sub_57AB8(int a1, char a2)
{
  v28 = 0u;
  v29 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC0206911uLL, &v28))
  {
    v26 = *__error();
    ramrod_log_msg("ioctl(SIOCGIFFLAGS): %d\n", v11, v12, v13, v14, v15, v16, v17, v26);
    return 0;
  }

  if ((v29 & 1) == 0)
  {
    LOWORD(v29) = v29 | 1;
    if (ioctl(a1, 0x80206910uLL, &v28))
    {
      v27 = *__error();
      ramrod_log_msg("ioctl(SIOCSIFFLAGS): %d\n", v19, v20, v21, v22, v23, v24, v25, v27);
      return 0;
    }
  }

  ramrod_log_msg("enabled %s\n", v4, v5, v6, v7, v8, v9, v10, a2);
  return 1;
}

BOOL sub_57BC4(int a1, char a2)
{
  memset(v21, 0, sizeof(v21));
  __strlcpy_chk();
  v11 = ioctl(a1, 0xC0806982uLL, v21);
  if (v11)
  {
    v20 = *__error();
    ramrod_log_msg("ioctl(SIOCLL_START): %d\n", v12, v13, v14, v15, v16, v17, v18, v20);
  }

  else
  {
    ramrod_log_msg("configured link local address for %s\n", v4, v5, v6, v7, v8, v9, v10, a2);
  }

  return v11 == 0;
}

uint64_t sub_57C98()
{

  return _os_log_send_and_compose_impl();
}

uint64_t ramrod_load_tga(const char *a1, void *a2, unint64_t *a3, void *a4)
{
  v7 = a1;
  memset(&v78, 0, sizeof(v78));
  v8 = open(a1, 0, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    if (fstat(v8, &v78))
    {
      v10 = __error();
      strerror(*v10);
      ramrod_log_msg("unable to stat image '%s': %s\n", v11, v12, v13, v14, v15, v16, v17, v7);
LABEL_4:
      v18 = 0;
LABEL_25:
      close(v9);
      return v18;
    }

    st_size = v78.st_size;
    v28 = mmap(0, v78.st_size, 1, 2, v9, 0);
    if (v28 == -1)
    {
      v41 = __error();
      strerror(*v41);
      ramrod_log_msg("unable to mmap image '%s': %s\n", v42, v43, v44, v45, v46, v47, v48, v7);
      goto LABEL_4;
    }

    v36 = v28;
    if (st_size >= 0x13 && v28[1] <= 1u && ((v37 = v28[2], v37 <= 0xB) ? (v38 = ((1 << v37) & 0xE0E) == 0) : (v38 = 1), !v38 && v28[7] <= 0x20u && (v28[12] || v28[13]) && (v28[14] || v28[15]) && (v39 = v28[16], (((v39 - 8) >> 3) | (32 * (v39 - 8))) <= 3u) && v28[17] < 0x40u))
    {
      if (!v28[1] && v37 >= 0xA)
      {
        v49 = *(v28 + 6);
        if (*(v28 + 6))
        {
          if (*(v28 + 7) && (v39 == 24 || v39 == 32))
          {
            v50 = 4 * v49;
            v51 = *(v28 + 7);
            v77 = v28[17];
            v76 = *v28;
            v52 = malloc((4 * v49) * v51);
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = v51 - 1;
            if (v77 >= 0x20)
            {
              v60 = 0;
            }

            v61 = &v52[v60 * v50];
            v62 = st_size - v76 - 18;
            v63 = &v36[v76 + 18];
            v64 = v49 - 1;
            while (1)
            {
              if (!v62)
              {
LABEL_69:
                if (v52)
                {
                  free(v52);
                }

                goto LABEL_23;
              }

              v66 = *v63++;
              v65 = v66;
              v67 = v66;
              --v62;
              v68 = v66 - 127;
              if (v66 >= 0)
              {
                v69 = v65 + 1;
              }

              else
              {
                v69 = v68;
              }

              if (v39 == 24)
              {
                if (v69)
                {
                  v73 = 0;
                  v74 = &v61[4 * v59 + 1];
                  do
                  {
                    if ((v67 & 0x80000000) == 0 || !v73)
                    {
                      v72 = v62 >= 3;
                      v62 -= 3;
                      if (!v72)
                      {
                        goto LABEL_69;
                      }

                      v55 = *v63;
                      v56 = v63[1];
                      v57 = v63[2];
                      v63 += 3;
                    }

                    *(v74 - 1) = v55;
                    *v74 = v56;
                    v74[1] = v57;
                    v74[2] = -1;
                    if (v64 == v59)
                    {
                      goto LABEL_64;
                    }

                    ++v73;
                    v74 += 4;
                    ++v59;
                  }

                  while (v69 > v73);
                }
              }

              else if (v69)
              {
                v70 = 0;
                v71 = &v61[4 * v59 + 1];
                while (1)
                {
                  if ((v67 & 0x80000000) == 0 || !v70)
                  {
                    v72 = v62 >= 4;
                    v62 -= 4;
                    if (!v72)
                    {
                      goto LABEL_69;
                    }

                    v54 = v63[3];
                    if (v54)
                    {
                      v55 = *v63;
                      v56 = v63[1];
                      v57 = v63[2];
                    }

                    else
                    {
                      v57 = 0;
                      v56 = 0;
                      v55 = 0;
                    }

                    v63 += 4;
                  }

                  *(v71 - 1) = v57;
                  *v71 = v56;
                  v71[1] = v55;
                  v71[2] = v54;
                  if (v64 == v59)
                  {
                    break;
                  }

                  ++v70;
                  v71 += 4;
                  ++v59;
                  if (v69 <= v70)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_64:
                v59 = 0;
                v75 = v51 - 2 + v53;
                if (v77 >= 0x20)
                {
                  v75 = v58 + 1;
                }

                ++v58;
                v61 = &v52[v75 * v50];
              }

LABEL_67:
              v53 = -v58;
              if (v58 >= v51)
              {
                *a2 = v49;
                *a3 = v51;
                v18 = 1;
                *a4 = v52;
                goto LABEL_24;
              }
            }
          }
        }
      }

      ramrod_log_msg("image '%s' is an unsupported TGA\n", v29, v30, v31, v32, v33, v34, v35, v7);
    }

    else
    {
      ramrod_log_msg("image '%s' is not a TGA\n", v29, v30, v31, v32, v33, v34, v35, v7);
    }

LABEL_23:
    v18 = 0;
LABEL_24:
    munmap(v36, st_size);
    goto LABEL_25;
  }

  v19 = __error();
  strerror(*v19);
  ramrod_log_msg("unable to open image '%s': %s\n", v20, v21, v22, v23, v24, v25, v26, v7);
  return 0;
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", v9, v10, v11, v12, v13, v14, v15, CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

uint64_t wait_for_io_service_matching_resource_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOResources");
  if (!v4)
  {
    ramrod_log_msg("unable to create matching dictionary for resource '%s'\n", v5, v6, v7, v8, v9, v10, v11, a1);
    return 0;
  }

  v12 = v4;
  v13 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
  if (!v13)
  {
    ramrod_log_msg("unable to convert resource name to CFString\n", v14, v15, v16, v17, v18, v19, v20, v23);
    return 0;
  }

  v21 = v13;
  CFDictionarySetValue(v12, @"IOResourceMatch", v13);
  CFRelease(v21);

  return wait_for_io_service_matching_dict(v12, a2);
}

uint64_t wait_for_io_service_matching_class_with_timeout(const char *a1, unsigned int a2)
{
  v3 = a1;
  v4 = IOServiceMatching(a1);
  if (v4)
  {

    return wait_for_io_service_matching_dict(v4, a2);
  }

  else
  {
    ramrod_log_msg("unable to create matching dictionary for class '%s'\n", v5, v6, v7, v8, v9, v10, v11, v3);
    return 0;
  }
}

uint64_t wait_for_io_service_matching_name(const char *a1)
{
  v1 = a1;
  v2 = IOServiceNameMatching(a1);
  if (v2)
  {

    return wait_for_io_service_matching_dict(v2, 0xFFFFFFFF);
  }

  else
  {
    ramrod_log_msg("unable to create matching dictionary for service '%s'\n", v3, v4, v5, v6, v7, v8, v9, v1);
    return 0;
  }
}

__CFDictionary *create_embedded_storage_service_query_dict(char *cStr)
{
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionaryAddValue(Mutable, v2, kCFBooleanTrue);
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (v5)
    {
      CFDictionaryAddValue(v5, @"IOPropertyMatch", v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
    v4 = v2;
  }

  CFRelease(v4);
  return v6;
}

uint64_t sub_59624(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 65))
  {
    *(v2 + 65) = v1;
    *(*(result + 32) + 64) = 1;
  }

  return result;
}

void sub_59C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_59C88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_59CA0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 88) + 8) + 40) recordCount];
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v41;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v41 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(*(a1 + 88) + 8) + 40) encodeCNAME:*(*(&v40 + 1) + 8 * i) target:*(a1 + 40)];
        }

        v6 = [v4 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v6);
    }

    [*(a1 + 48) count];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = *(a1 + 48);
    v9 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v32 = *v37;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * j);
          v13 = [*(a1 + 48) objectForKeyedSubscript:v12];
          v14 = [*(a1 + 56) objectForKeyedSubscript:v12];
          v15 = v14;
          if (!v14)
          {
            v14 = *(a1 + 64);
          }

          v16 = v14;

          v17 = [*(a1 + 72) objectForKeyedSubscript:v12];
          v18 = [v13 unsignedShortValue];
          v19 = [NSString stringWithFormat:@"%@.%@.", v12, *(a1 + 80)];
          v20 = [NSString stringWithFormat:@"%@.%@.%@.", v16, v12, *(a1 + 80)];
          [*(*(*(a1 + 88) + 8) + 40) encodePTR:v19 target:v20];
          [*(*(*(a1 + 88) + 8) + 40) encodeTXT:v20 strings:v17];
          [*(*(*(a1 + 88) + 8) + 40) encodeSRV:v20 priority:0 weight:0 port:v18 target:*(a1 + 40)];
        }

        v10 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v10);
    }

    v34 = 0xFB00000000000000;
    v33 = xmmword_10AE34;
    v21 = *(a1 + 88);
    v35 = *(*(*(a1 + 96) + 8) + 24);
    if (sendto(*(a1 + 120), [*(*(v21 + 8) + 40) bytes], objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "length"), 0, &v33, 0x1Cu) == -1)
    {
      v22 = __error();
      v23 = *(*(*(a1 + 104) + 8) + 24);
      strerror(*v22);
      ramrod_log_msg("mDNS [%-6s]: %lu addresses + %lu services failed: %s (%d)\n", v24, v25, v26, v27, v28, v29, v30, v23);
    }

    else
    {
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }
  }
}

void sub_5A074(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  v11 = *(a2 + 112);

  _Block_object_assign((a1 + 112), v11, 8);
}

void sub_5A11C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);

  v2 = *(a1 + 32);
}

id sub_5A334(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedShort:*(a1 + 64)];
  [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v3 = [*(a1 + 48) copy];
  [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v4 = [NSArray arrayWithArray:*(a1 + 56)];
  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _resetTimerAndFire:1];
}

id sub_5A3F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);

  return v6;
}

void sub_5A444(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_5A530(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetTimerAndFire:1];
}

id sub_5A598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);

  return v4;
}

void sub_5A5D4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id sub_5A6B0(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetTimerAndFire:1];
}

id sub_5A794(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _resetTimerAndFire:1];
}

void sub_5AB0C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 length])
  {
    v8 = [v6 stringByAppendingFormat:@"=%@", v7];
    [v5 addObject:v8];
  }
}

void sub_5ABC0(void *a1, id a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v10 = 0;
    v7 = a2;
    v8 = a1;
    [a3 getBytes:&v10 length:4];
    v9 = sub_5ACC4(v7, v10, a4);

    [v8 addObject:v9];
  }
}

id sub_5ACC4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = __ROR8__(a3, 1);
  if (v6 >= 9 || ((0x131u >> v6) & 1) == 0)
  {
    abort();
  }

  v7 = v5;
  v8 = [v5 stringByAppendingFormat:off_1A9E58[v6], a2];

  return v8;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_5BA90(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_5AFA8(a2, a3, a4, a5, a6, 3);

  return sub_5AE34(a1, v7);
}

uint64_t sub_5AE34(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 20);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 24), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        sub_5BA90(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 24);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(*(v2 + 8), v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *sub_5AFA8(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
}