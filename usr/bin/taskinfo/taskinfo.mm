uint64_t start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v406 = 0;
  v405 = 0;
  default_set = 0;
  set = 0;
  v481 = 0;
  v480 = 0;
  *&size[1] = 0;
  v538.name = "threads";
  v538.flag = &v480 + 1;
  v538.has_arg = 0;
  v538.val = 1;
  v539 = "dq";
  v541 = &v480;
  v540 = 0;
  v542 = 1;
  v543 = "boosts";
  v545 = &size[2];
  v544 = 0;
  v546 = 1;
  v547 = "coalitions-only";
  v549 = &size[1];
  v548 = 0;
  v550 = 1;
  v551 = "xpcinfo";
  v553 = 0;
  v552 = 2;
  v554 = 6;
  v555 = "responsibility";
  v557 = 0;
  v556 = 2;
  v558 = 7;
  v559 = "precise";
  v561 = 0;
  v560 = 2;
  v562 = 5;
  v563 = "threadcounts";
  v565 = 0;
  v564 = 2;
  v566 = 1;
  v567 = "vouchers";
  v568 = 2;
  v569 = 0;
  v570 = 2;
  v571 = "coalitions";
  v403 = 1;
  v572 = 1;
  v573 = 0;
  v574 = 4;
  v575 = "verbose";
  v576 = 0;
  v577 = 0;
  v578 = 3;
  v579 = "all";
  v580 = 0;
  v581 = 0;
  v582 = 8;
  v583 = "help";
  v584 = 0;
  v585 = 0;
  v586 = 104;
  v588 = 0u;
  v587 = 0u;
  qword_1000100D0 = &v538;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = getopt_long(v3, v2, "h", &v538, &dword_1000100C8);
          if (v5 > 3)
          {
            break;
          }

          if (v5 > 1)
          {
            if (v5 == 2)
            {
              v403 = 1;
              if (optarg)
              {
                v403 = sub_100005274() != 0;
              }
            }

            else
            {
              v480 = 0x100000001;
              size[2] = 1;
              v406 = 1;
              byte_100010000 = 1;
            }
          }

          else if (v5)
          {
            if (v5 != 1)
            {
              if (v5 != -1)
              {
                goto LABEL_72;
              }

              if (v4)
              {
                v8 = 1;
              }

              else
              {
                v8 = size[1] == 0;
              }

              if (v8)
              {
                v9 = v4;
              }

              else
              {
                v9 = 2;
              }

              v382 = v9;
              if (optind >= v3)
              {
                v385 = 0;
                v386 = 0;
                __s1 = 0;
              }

              else
              {
                v10 = v2[optind];
                __endptr[0] = 0;
                v11 = strtoul(v10, __endptr, 10);
                __s1 = v10;
                v386 = v11 >> 31 == 0 && v10 != __endptr[0];
                if (v386)
                {
                  v12 = v11;
                }

                else
                {
                  v12 = 0;
                }

                v385 = v12;
              }

              if (geteuid())
              {
                sub_100006198();
              }

              if (sub_1000052D4("kern.development"))
              {
                v13 = sub_100005358("kern.development") != 0;
              }

              else
              {
                v13 = 0;
              }

              byte_100010001 = v13;
              if (sub_1000052D4("kern.thread_groups_supported"))
              {
                v14 = sub_100005358("kern.thread_groups_supported") != 0;
              }

              else
              {
                v14 = 0;
              }

              byte_100010002 = v14;
              if (sub_1000052D4("kern.monotonic.supported"))
              {
                v15 = sub_100005358("kern.monotonic.supported") != 0;
              }

              else
              {
                v15 = 0;
              }

              byte_100010003 = v15;
              if (qword_100010018 != -1)
              {
                sub_1000061CC();
              }

              v390 = dword_100010020;
              size[0] = 0;
              *v589 = 0x800000001;
              v481 = 4;
              if (sysctl(v589, 2u, size, &v481, 0, 0))
              {
                sub_1000061F4();
              }

              v383 = malloc_type_malloc(size[0], 0x9CFE35B2uLL);
              if (!v383)
              {
                sub_100006420();
              }

              v16 = mach_timebase_info(&dword_100010004);
              if (v16)
              {
                v375 = v16;
                v376 = "mach_timebase_info";
              }

              else
              {
                v17 = mach_host_self();
                v18 = processor_set_default(v17, &default_set);
                if (v18)
                {
                  v375 = v18;
                  v376 = "processor_set_default";
                }

                else
                {
                  v19 = mach_host_self();
                  v20 = host_processor_set_priv(v19, default_set, &set);
                  if (v20)
                  {
                    v375 = v20;
                    v376 = "host_processor_set_priv";
                  }

                  else
                  {
                    task_list = 0;
                    task_listCnt = 0;
                    if (v403 || v480 != 0)
                    {
                      v21 = processor_set_tasks_with_flavor(set, 1u, &task_list, &task_listCnt);
                      if (v21)
                      {
                        mach_error("processor_set_tasks_with_flavor(TASK_FLAVOR_READ)", v21);
                      }

                      v22 = task_listCnt;
                      if (task_listCnt)
                      {
LABEL_64:
                        if (!__s1)
                        {
                          printf("num tasks: %u\n\n", v22);
                        }

                        if (size[2])
                        {
                          v24 = stackshot_config_create();
                          if (v24)
                          {
                            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
                            if (Mutable)
                            {
                              cf = Mutable;
                              if (stackshot_config_set_flags())
                              {
                                v26 = __stderrp;
                                v27 = "stackshot_config_set_flags failure\n";
                                v28 = 35;
                                goto LABEL_79;
                              }

                              if (stackshot_config_set_pid())
                              {
                                v26 = __stderrp;
                                v27 = "stackshot_config_set_pid failure\n";
                                v28 = 33;
                                goto LABEL_79;
                              }

                              if (stackshot_capture_with_config())
                              {
                                v26 = __stderrp;
                                v27 = "stackshot_capture_with_config failure\n";
                                v28 = 38;
LABEL_79:
                                fwrite(v27, v28, 1uLL, v26);
LABEL_80:
                                stackshot_config_dealloc();
                                CFRelease(cf);
                                goto LABEL_81;
                              }

                              stackshot_buffer = stackshot_config_get_stackshot_buffer();
                              v350 = stackshot_buffer + stackshot_config_get_stackshot_size();
                              v351 = stackshot_buffer + 16;
                              if (stackshot_buffer + 16 > v350)
                              {
LABEL_82:
                                v29 = malloc_type_calloc(4uLL, task_listCnt, 0xDCA693A2uLL);
                                v387 = v29;
                                if (task_listCnt)
                                {
                                  v30 = 0;
                                  v31 = v29;
                                  do
                                  {
                                    v32 = pid_for_task(task_list[v30], v31);
                                    if (v32)
                                    {
                                      mach_error("pid_for_task", v32);
                                    }

                                    ++v30;
                                    ++v31;
                                  }

                                  while (v30 < task_listCnt);
                                  v33 = size[1] == 0;
                                  v34 = task_listCnt;
                                  if (task_listCnt)
                                  {
                                    v35 = v387;
                                    if (!size[1])
                                    {
                                      v36 = 0;
                                      v380 = dispatch_queue_offsets[1];
                                      do
                                      {
                                        v37 = v35[v36];
                                        task_info_outCnt = 0;
                                        memset(&basic_info, 0, sizeof(basic_info));
                                        v473 = 0u;
                                        v474 = 0u;
                                        v472 = 0;
                                        task_info_out = 0u;
                                        v471 = 0u;
                                        v468 = 0;
                                        v469 = 0;
                                        v467 = 0;
                                        v465 = 0u;
                                        v466 = 0u;
                                        v463 = 0u;
                                        v464 = 0u;
                                        v461 = 0u;
                                        v462 = 0u;
                                        v459 = 0u;
                                        v460 = 0u;
                                        v536 = 0u;
                                        v537 = 0u;
                                        v534 = 0u;
                                        v535 = 0u;
                                        v457 = 0;
                                        v458 = 0;
                                        v455 = 0u;
                                        v456 = 0u;
                                        policy_info = 0u;
                                        v454 = 0u;
                                        v533 = 0;
                                        v532 = 0u;
                                        memset(v531, 0, sizeof(v531));
                                        v529 = 0u;
                                        v530 = 0u;
                                        buffer = 0u;
                                        v528 = 0u;
                                        v451 = 0;
                                        v452 = 0;
                                        memset(v450, 0, sizeof(v450));
                                        v526 = 0;
                                        v524 = 0u;
                                        v525 = 0u;
                                        uu = 0u;
                                        v448 = 0;
                                        v449 = 0;
                                        v447 = 0;
                                        v521 = 0u;
                                        v522 = 0u;
                                        v519 = 0u;
                                        v520 = 0u;
                                        v517 = 0u;
                                        v518 = 0u;
                                        v515 = 0u;
                                        v516 = 0u;
                                        v513 = 0u;
                                        v514 = 0u;
                                        v511 = 0u;
                                        v512 = 0u;
                                        memset(v510, 0, sizeof(v510));
                                        v508 = 0u;
                                        v509 = 0u;
                                        v506 = 0u;
                                        v507 = 0u;
                                        v504 = 0u;
                                        v505 = 0u;
                                        v502 = 0u;
                                        v503 = 0u;
                                        v500 = 0u;
                                        v501 = 0u;
                                        v498 = 0u;
                                        v499 = 0u;
                                        v496 = 0u;
                                        v497 = 0u;
                                        v495 = 0u;
                                        flags = 0;
                                        act_list = 0;
                                        *x = 0;
                                        if (pid_for_task(task_list[v36], x))
                                        {
                                          fprintf(__stderrp, "pid %d no longer active, skipping\n", v35[v36]);
                                          goto LABEL_891;
                                        }

                                        if (x[0] != v35[v36])
                                        {
                                          fprintf(__stderrp, "task %u pid changed? from %d to %d\n", task_list[v36], v35[v36], x[0]);
                                        }

                                        if (proc_pidinfo(v37, 3, 0, &buffer, 136) <= 135)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDTBSDINFO ...)");
                                        }

                                        if (proc_pidinfo(v37, 19, 0, &v452, 8) <= 7)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDARCHINFO ...)");
                                        }

                                        if (proc_pidinfo(v37, 30, 0, &v447, 4) <= 3)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDPLATFORMINFO ...)");
                                        }

                                        *__error() = 0;
                                        if (proc_pidinfo(v37, 12, 0, &v448, 16) <= 15)
                                        {
                                          if (*__error() == 3)
                                          {
                                            v409 = 0;
                                            if (!v37)
                                            {
                                              goto LABEL_103;
                                            }

                                            goto LABEL_110;
                                          }

                                          if (!v37 && *__error() == 22)
                                          {
                                            v38 = 0;
                                            v409 = 0;
                                            goto LABEL_107;
                                          }

                                          perror("proc_pidinfo(, ... PROC_PIDWORKQUEUEINFO ...)");
                                        }

                                        v409 = 1;
                                        if (!v37)
                                        {
LABEL_103:
                                          v38 = 0;
LABEL_107:
                                          v39 = "kernel_task";
                                          goto LABEL_113;
                                        }

LABEL_110:
                                        *v589 = 0x3100000001;
                                        v589[2] = v37;
                                        v481 = size[0];
                                        if (sysctl(v589, 3u, v383, &v481, 0, 0))
                                        {
                                          perror("sysctl(... KERN_PROCARGS2 ...)");
                                          if (v531[0])
                                          {
                                            v39 = v531;
                                          }

                                          else
                                          {
                                            v39 = &v530;
                                          }
                                        }

                                        else
                                        {
                                          v39 = basename(v383 + 4);
                                        }

                                        v38 = 1;
LABEL_113:
                                        if (__s1)
                                        {
                                          if (v39)
                                          {
                                            if (strncmp(__s1, v39, 0x20uLL) && (!v386 || v385 != v37))
                                            {
                                              goto LABEL_891;
                                            }
                                          }

                                          else if (!v386 || v385 != v37)
                                          {
                                            goto LABEL_891;
                                          }
                                        }

                                        task_info_outCnt = 10;
                                        v40 = task_info(task_list[v36], 0x12u, &task_info_out, &task_info_outCnt);
                                        if (v40)
                                        {
                                          mach_error("task_info(... TASK_BASIC_INFO ...)", v40);
                                        }

                                        task_info_outCnt = 4;
                                        v41 = task_info(task_list[v36], 3u, &v468, &task_info_outCnt);
                                        if (v41)
                                        {
                                          mach_error("task_info(... TASK_THREAD_TIMES_INFO ...)", v41);
                                        }

                                        task_info_outCnt = 26;
                                        v42 = task_info(task_list[v36], 0x1Au, &v461, &task_info_outCnt);
                                        if (v42)
                                        {
                                          mach_error("task_info(... TASK_POWER_INFO_V2 ...)", v42);
                                        }

                                        task_info_outCnt = 8;
                                        v43 = task_info(task_list[v36], 2u, &v459, &task_info_outCnt);
                                        if (v43)
                                        {
                                          mach_error("task_info(... TASK_EVENTS_INFO ...)", v43);
                                        }

                                        task_info_outCnt = 16;
                                        v44 = task_info(task_list[v36], 0x13u, &v534, &task_info_outCnt);
                                        if (v44)
                                        {
                                          mach_error("task_info(... TASK_EXTMOD_INFO ...)", v44);
                                        }

                                        task_info_outCnt = 4;
                                        v45 = task_info(task_list[v36], 0x10u, &v457, &task_info_outCnt);
                                        if (v45)
                                        {
                                          mach_error("task_info(... TASK_AFFINITY_TAG_INFO ...)", v45);
                                        }

                                        task_info_outCnt = 8;
                                        v46 = task_info(task_list[v36], 0xFu, &v473, &task_info_outCnt);
                                        if (v46)
                                        {
                                          mach_error("task_info(... TASK_AUDIT_TOKEN ...)", v46);
                                        }

                                        v47 = mach_port_space_basic_info(task_list[v36], &basic_info);
                                        if (v47)
                                        {
                                          mach_error("mach_port_space_basic_info()", v47);
                                        }

                                        if (v38)
                                        {
                                          LODWORD(__endptr[0]) = 0;
                                          task_info_outCnt = 16;
                                          v48 = task_policy_get(task_list[v36], 4u, &policy_info, &task_info_outCnt, __endptr);
                                          if (v48)
                                          {
                                            mach_error("task_policy_get(... TASK_POLICY_STATE ...)", v48);
                                          }
                                        }

                                        if (proc_pidinfo(v37, 20, 0, v450, 40) <= 39)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDCOALITIONINFO ...)");
                                        }

                                        if (proc_pidinfo(v37, 17, 0, &uu, 56) <= 55)
                                        {
                                          perror("proc_pidinfo(... PROC_PIDUNIQIDENTIFIERINFO ...)");
                                        }

                                        if (proc_pid_rusage(v37, 6, &v495))
                                        {
                                          perror("proc_pid_rusage");
                                        }

                                        if (proc_get_dirty(v37, &flags))
                                        {
                                          perror("proc_get_dirty");
                                        }

                                        v443 = 0;
                                        if (csops())
                                        {
                                          perror("csops_audittoken");
                                        }

                                        __nel = v38;
                                        if (HIDWORD(v480))
                                        {
                                          v49 = task_threads(task_list[v36], &act_list, &x[1]);
                                          if (v49)
                                          {
                                            mach_error("task_threads", v49);
                                          }
                                        }

                                        v442 = 0;
                                        v441 = 0u;
                                        v440 = 0u;
                                        v439 = 0u;
                                        v50 = proc_pidinfo(v37, 1, 0, 0, 0);
                                        v51 = v50;
                                        if (v50 <= 0)
                                        {
                                          v52 = 0;
                                          if (v50 != -1)
                                          {
                                            goto LABEL_162;
                                          }

                                          v57 = "proc_pidinfo(PROC_PIDLISTFDS)";
LABEL_897:
                                          perror(v57);
                                          goto LABEL_162;
                                        }

                                        v52 = malloc_type_malloc(v50, 0x100004000313F17uLL);
                                        v53 = proc_pidinfo(v37, 1, 0, v52, v51);
                                        if (v53 <= 0)
                                        {
                                          if (v53 != -1)
                                          {
                                            goto LABEL_162;
                                          }

                                          v57 = "proc_pidinfo(PROC_PIDLISTFDS, fds)";
                                          goto LABEL_897;
                                        }

                                        v54 = v53 >> 3;
                                        LODWORD(v439) = v53 >> 3;
                                        if (v53 >= 8)
                                        {
                                          v55 = 4;
                                          do
                                          {
                                            v56 = *&v52[v55];
                                            if (v56 >= 0xC)
                                            {
                                              v56 = 12;
                                            }

                                            ++*(&v439 + v56 + 1);
                                            v55 += 8;
                                            --v54;
                                          }

                                          while (v54);
                                        }

LABEL_162:
                                        free(v52);
                                        printf("process: %s [%d]\n", v39, v37);
                                        printf("unique ID/version: %llu / %d, parent: %u / %llu / %d\n", v524, v525, v528, *(&v524 + 1), DWORD1(v525));
                                        printf("audit: { auid %d uid %u gid %u ruid %u rgid %u pid %u asid %u version %u}\n", v473, DWORD1(v473), DWORD2(v473), HIDWORD(v473), v474, DWORD1(v474), DWORD2(v474), HIDWORD(v474));
                                        memset(out, 0, 37);
                                        uuid_unparse(&uu, out);
                                        printf("executable uuid: %s\n", out);
                                        switch(v452)
                                        {
                                          case 7:
                                            v58 = "i386";
                                            break;
                                          case 0x1000007:
                                            v58 = "x86_64";
                                            break;
                                          case 0x100000C:
                                            v58 = "arm64";
                                            if ((HIDWORD(v452) & 0xFFFFFF) == 2)
                                            {
                                              v58 = "arm64e";
                                            }

                                            break;
                                          default:
                                            v58 = "arm";
                                            if (v452 != 12)
                                            {
                                              v58 = "???";
                                            }

                                            break;
                                        }

                                        v398 = v36;
                                        v401 = v37;
                                        key = v37;
                                        printf("architecture: %s\n", v58);
                                        v59 = "unknown";
                                        if (v447 <= 0xC)
                                        {
                                          v59 = (&off_10000C3F0)[v447];
                                        }

                                        printf("platform: %s (%u)\n", v59, v447);
                                        v60 = " valid";
                                        v61 = &unk_100007155;
                                        if ((v443 & 1) == 0)
                                        {
                                          v60 = &unk_100007155;
                                        }

                                        v395 = v60;
                                        v62 = " adhoc";
                                        if ((v443 & 2) == 0)
                                        {
                                          v62 = &unk_100007155;
                                        }

                                        v392 = v62;
                                        if ((v443 & 4) != 0)
                                        {
                                          v63 = " get_task_allow";
                                        }

                                        else
                                        {
                                          v63 = &unk_100007155;
                                        }

                                        if ((v443 & 8) != 0)
                                        {
                                          v64 = " installer";
                                        }

                                        else
                                        {
                                          v64 = &unk_100007155;
                                        }

                                        if ((v443 & 0x10) != 0)
                                        {
                                          v65 = " forced_lv";
                                        }

                                        else
                                        {
                                          v65 = &unk_100007155;
                                        }

                                        if ((v443 & 0x20) != 0)
                                        {
                                          v66 = " invalid_allowed";
                                        }

                                        else
                                        {
                                          v66 = &unk_100007155;
                                        }

                                        if ((v443 & 0x100) != 0)
                                        {
                                          v67 = " hard";
                                        }

                                        else
                                        {
                                          v67 = &unk_100007155;
                                        }

                                        if ((v443 & 0x200) != 0)
                                        {
                                          v68 = " kill";
                                        }

                                        else
                                        {
                                          v68 = &unk_100007155;
                                        }

                                        if ((v443 & 0x400) != 0)
                                        {
                                          v69 = " check_expiration";
                                        }

                                        else
                                        {
                                          v69 = &unk_100007155;
                                        }

                                        if ((v443 & 0x800) != 0)
                                        {
                                          v70 = " restrict";
                                        }

                                        else
                                        {
                                          v70 = &unk_100007155;
                                        }

                                        if ((v443 & 0x1000) != 0)
                                        {
                                          v71 = " enforcement";
                                        }

                                        else
                                        {
                                          v71 = &unk_100007155;
                                        }

                                        if ((v443 & 0x2000) != 0)
                                        {
                                          v72 = " require_lv";
                                        }

                                        else
                                        {
                                          v72 = &unk_100007155;
                                        }

                                        if ((v443 & 0x4000) != 0)
                                        {
                                          v73 = " entitlements_validated";
                                        }

                                        else
                                        {
                                          v73 = &unk_100007155;
                                        }

                                        if ((v443 & 0x8000) != 0)
                                        {
                                          v74 = " nvram_unrestricted";
                                        }

                                        else
                                        {
                                          v74 = &unk_100007155;
                                        }

                                        if ((v443 & 0x10000) != 0)
                                        {
                                          v75 = " runtime";
                                        }

                                        else
                                        {
                                          v75 = &unk_100007155;
                                        }

                                        if ((v443 & 0x20000) != 0)
                                        {
                                          v76 = " linker_signed";
                                        }

                                        else
                                        {
                                          v76 = &unk_100007155;
                                        }

                                        if ((v443 & 0x100000) != 0)
                                        {
                                          v77 = " exec_set_hard";
                                        }

                                        else
                                        {
                                          v77 = &unk_100007155;
                                        }

                                        if ((v443 & 0x200000) != 0)
                                        {
                                          v78 = " exec_set_kill";
                                        }

                                        else
                                        {
                                          v78 = &unk_100007155;
                                        }

                                        if ((v443 & 0x400000) != 0)
                                        {
                                          v79 = " exec_set_enforcement";
                                        }

                                        else
                                        {
                                          v79 = &unk_100007155;
                                        }

                                        if ((v443 & 0x800000) != 0)
                                        {
                                          v80 = " exec_inherit_sip";
                                        }

                                        else
                                        {
                                          v80 = &unk_100007155;
                                        }

                                        if ((v443 & 0x1000000) != 0)
                                        {
                                          v81 = " killed";
                                        }

                                        else
                                        {
                                          v81 = &unk_100007155;
                                        }

                                        if ((v443 & 0x2000000) != 0)
                                        {
                                          v82 = " dyld_platform";
                                        }

                                        else
                                        {
                                          v82 = &unk_100007155;
                                        }

                                        if ((v443 & 0x4000000) != 0)
                                        {
                                          v83 = " platform_binary";
                                        }

                                        else
                                        {
                                          v83 = &unk_100007155;
                                        }

                                        if ((v443 & 0x8000000) != 0)
                                        {
                                          v84 = " platform_path";
                                        }

                                        else
                                        {
                                          v84 = &unk_100007155;
                                        }

                                        if ((v443 & 0x10000000) != 0)
                                        {
                                          v85 = " debugged";
                                        }

                                        else
                                        {
                                          v85 = &unk_100007155;
                                        }

                                        if ((v443 & 0x20000000) != 0)
                                        {
                                          v86 = " signed";
                                        }

                                        else
                                        {
                                          v86 = &unk_100007155;
                                        }

                                        v87 = " dev_code";
                                        if ((v443 & 0x40000000) == 0)
                                        {
                                          v87 = &unk_100007155;
                                        }

                                        if (v443 < 0)
                                        {
                                          v61 = " datavault_controller";
                                        }

                                        printf("cs_flags (0x%x):%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\n", v443, v395, v392, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v61);
                                        v88 = 0;
                                        v89 = v450;
                                        v90 = 1;
                                        do
                                        {
                                          v91 = v90;
                                          v92 = *v89;
                                          v93 = sub_1000053D4();
                                          v95 = v94;
                                          v96 = *v89;
                                          if (v88)
                                          {
                                            printf("coalition (type %d JETSAM) ID: %llu", 1, v96);
                                            if (byte_100010001 == 1 && byte_100010002 == 1 && (byte_100010024 & 1) == 0)
                                            {
                                              v591 = 0u;
                                              *__endptr = 0u;
                                              if (coalition_info_debug_info() == -1)
                                              {
                                                sub_100006214();
                                              }

                                              else
                                              {
                                                v97 = "A";
                                                if ((BYTE4(__endptr[1]) & 2) == 0)
                                                {
                                                  v97 = "-";
                                                }

                                                v98 = "U";
                                                if ((WORD2(__endptr[1]) & 0x100) == 0)
                                                {
                                                  v98 = "-";
                                                }

                                                v99 = "E";
                                                if ((BYTE4(__endptr[1]) & 1) == 0)
                                                {
                                                  v99 = "-";
                                                }

                                                v100 = "C";
                                                if ((BYTE4(__endptr[1]) & 4) == 0)
                                                {
                                                  v100 = "-";
                                                }

                                                v101 = "B";
                                                if ((BYTE4(__endptr[1]) & 8) == 0)
                                                {
                                                  v101 = "-";
                                                }

                                                v102 = "X";
                                                if ((WORD2(__endptr[1]) & 0x200) == 0)
                                                {
                                                  v102 = "-";
                                                }

                                                v103 = "T";
                                                if ((WORD2(__endptr[1]) & 0x400) == 0)
                                                {
                                                  v103 = "-";
                                                }

                                                v104 = "G";
                                                if ((WORD2(__endptr[1]) & 0x800) == 0)
                                                {
                                                  v104 = "-";
                                                }

                                                v105 = "P";
                                                if ((WORD2(__endptr[1]) & 0x1000) == 0)
                                                {
                                                  v105 = "-";
                                                }

                                                printf(" group 0x%llx (%s%s%s%s%s%s%s%s%s, 0x%u)", __endptr[0], v97, v98, v99, v100, v101, v102, v103, v104, v105, LODWORD(__endptr[1]));
                                              }
                                            }

                                            sub_10000547C(v93, v95);
                                            v106 = coalition_policy_get();
                                            if (v106 == 1)
                                            {
                                              printf(" suppressed (BG)");
                                            }

                                            else if (v106 == -1 && (byte_10001000C & 1) == 0)
                                            {
                                              sub_100006240();
                                            }
                                          }

                                          else
                                          {
                                            printf("coalition (type %d RESOURCE) ID: %llu", 0, v96);
                                            sub_10000547C(v93, v95);
                                          }

                                          putchar(10);
                                          free(v93);
                                          free(v95);
                                          v90 = 0;
                                          v88 = 1;
                                          v89 = &v450[8];
                                        }

                                        while ((v91 & 1) != 0);
                                        v107 = v456;
                                        printf("suspend count: %d\n", task_info_out);
                                        v108 = *(&task_info_out + 4);
                                        if (*(&task_info_out + 4) <= 0x8000000000000uLL)
                                        {
                                          if (*(&task_info_out + 4) <= 0x20000000000uLL)
                                          {
                                            if (*(&task_info_out + 4) <= 0x80000000uLL)
                                            {
                                              if (*(&task_info_out + 4) <= 0x200000uLL)
                                              {
                                                if (*(&task_info_out + 4) > 0x800uLL)
                                                {
                                                  v108 = v108 * 0.0009765625;
                                                }

                                                v109 = &unk_100007155;
                                                if (*(&task_info_out + 4) > 0x800uLL)
                                                {
                                                  v109 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v108 = v108 * 0.000000953674316;
                                                v109 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v108 = v108 * 9.31322575e-10;
                                              v109 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v108 = v108 * 9.09494702e-13;
                                            v109 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v108 = v108 * 8.8817842e-16;
                                          v109 = "Pi";
                                        }

                                        v110 = *(&v499 + 1);
                                        if (*(&v499 + 1) <= 0x8000000000000uLL)
                                        {
                                          if (*(&v499 + 1) <= 0x20000000000uLL)
                                          {
                                            if (*(&v499 + 1) <= 0x80000000uLL)
                                            {
                                              if (*(&v499 + 1) <= 0x200000uLL)
                                              {
                                                if (*(&v499 + 1) > 0x800uLL)
                                                {
                                                  v110 = v110 * 0.0009765625;
                                                }

                                                v111 = &unk_100007155;
                                                if (*(&v499 + 1) > 0x800uLL)
                                                {
                                                  v111 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v110 = v110 * 0.000000953674316;
                                                v111 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v110 = v110 * 9.31322575e-10;
                                              v111 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v110 = v110 * 9.09494702e-13;
                                            v111 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v110 = v110 * 8.8817842e-16;
                                          v111 = "Pi";
                                        }

                                        v112 = v510[0];
                                        if (v510[0] <= 0x8000000000000uLL)
                                        {
                                          if (v510[0] <= 0x20000000000uLL)
                                          {
                                            if (v510[0] <= 0x80000000uLL)
                                            {
                                              if (v510[0] <= 0x200000uLL)
                                              {
                                                if (v510[0] > 0x800uLL)
                                                {
                                                  v112 = v112 * 0.0009765625;
                                                }

                                                v113 = &unk_100007155;
                                                if (v510[0] > 0x800uLL)
                                                {
                                                  v113 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v112 = v112 * 0.000000953674316;
                                                v113 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v112 = v112 * 9.31322575e-10;
                                              v113 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v112 = v112 * 9.09494702e-13;
                                            v113 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v112 = v112 * 8.8817842e-16;
                                          v113 = "Pi";
                                        }

                                        printf("virtual bytes: %.2f %s%s; phys_footprint bytes: %.2f %s%s; phys_footprint lifetime maximum bytes: %.2f %s%s\n", v108, v109, "B", v110, v111, "B", v112, v113, "B");
                                        if (*(&v517 + 1))
                                        {
                                          v114 = v517;
                                          if (v517 <= 0x8000000000000)
                                          {
                                            if (v517 <= 0x20000000000)
                                            {
                                              if (v517 <= 0x80000000)
                                              {
                                                if (v517 <= 0x200000)
                                                {
                                                  if (v517 > 0x800)
                                                  {
                                                    v114 = v114 * 0.0009765625;
                                                  }

                                                  v115 = &unk_100007155;
                                                  if (v517 > 0x800)
                                                  {
                                                    v115 = "Ki";
                                                  }
                                                }

                                                else
                                                {
                                                  v114 = v114 * 0.000000953674316;
                                                  v115 = "Mi";
                                                }
                                              }

                                              else
                                              {
                                                v114 = v114 * 9.31322575e-10;
                                                v115 = "Gi";
                                              }
                                            }

                                            else
                                            {
                                              v114 = v114 * 9.09494702e-13;
                                              v115 = "Ti";
                                            }
                                          }

                                          else
                                          {
                                            v114 = v114 * 8.8817842e-16;
                                            v115 = "Pi";
                                          }

                                          v116 = *(&v517 + 1);
                                          if (*(&v517 + 1) <= 0x8000000000000uLL)
                                          {
                                            if (*(&v517 + 1) <= 0x20000000000uLL)
                                            {
                                              if (*(&v517 + 1) <= 0x80000000uLL)
                                              {
                                                if (*(&v517 + 1) <= 0x200000uLL)
                                                {
                                                  if (*(&v517 + 1) > 0x800uLL)
                                                  {
                                                    v116 = v116 * 0.0009765625;
                                                  }

                                                  v117 = &unk_100007155;
                                                  if (*(&v517 + 1) > 0x800uLL)
                                                  {
                                                    v117 = "Ki";
                                                  }
                                                }

                                                else
                                                {
                                                  v116 = v116 * 0.000000953674316;
                                                  v117 = "Mi";
                                                }
                                              }

                                              else
                                              {
                                                v116 = v116 * 9.31322575e-10;
                                                v117 = "Gi";
                                              }
                                            }

                                            else
                                            {
                                              v116 = v116 * 9.09494702e-13;
                                              v117 = "Ti";
                                            }
                                          }

                                          else
                                          {
                                            v116 = v116 * 8.8817842e-16;
                                            v117 = "Pi";
                                          }

                                          printf("neural footprint: %.2f %s%s neural footprint lifetime maximum bytes: %.2f %s%s\n", v114, v115, "B", v116, v117, "B");
                                        }

                                        v118 = time(0);
                                        printf("run time: %llu s\n", v118 - *(&v532 + 1));
                                        printf("user/system time    (current threads): %lf s / %lf s\n", SHIDWORD(v468) / 1000000.0 + v468, SHIDWORD(v469) / 1000000.0 + v469);
                                        printf("user/system time (terminated threads): %lf s / %lf s\n", SDWORD2(v471) / 1000000.0 + SDWORD1(v471), v472 / 1000000.0 + SHIDWORD(v471));
                                        *__endptr = *&v510[1];
                                        v591 = v496;
                                        *&v592 = v515;
                                        v391 = v496;
                                        v393 = *&v510[1];
                                        v485 = *&v510[1];
                                        v486 = v496;
                                        v389 = v515;
                                        *&v487 = v515;
                                        sub_100005518("CPU time:", __endptr, &v485, 0, &unk_100007155);
                                        if (v390 >= 2)
                                        {
                                          v119 = v515 - *(&v515 + 1);
                                          *&v592 = *(&v515 + 1);
                                          v485 = v393;
                                          v486 = v391;
                                          *&v487 = v389;
                                          v378 = vsubq_s64(v496, v513);
                                          v379 = vsubq_s64(*&v510[1], v514);
                                          *__endptr = v514;
                                          v591 = v513;
                                          sub_100005518("P-time:  ", __endptr, &v485, 1, &unk_100007155);
                                          v591 = v378;
                                          *__endptr = v379;
                                          *&v592 = v119;
                                          v485 = v393;
                                          v486 = v391;
                                          *&v487 = v389;
                                          sub_100005518("E-time:  ", __endptr, &v485, 1, &unk_100007155);
                                          if (HIDWORD(v460))
                                          {
                                            v120 = v467 * 100.0 / SHIDWORD(v460);
                                          }

                                          else
                                          {
                                            v120 = 0.0;
                                          }

                                          printf("P/E switches: %llu (%.0f%%)\n", v467, v120);
                                        }

                                        printf("CPU time billed to me by others: %llu.%06llu s ", *(&v508 + 1) * dword_100010004 / unk_100010008 / 0x3B9ACA00, *(&v508 + 1) * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8);
                                        sub_100005A3C();
                                        putchar(10);
                                        v121 = 0.0;
                                        v122 = 0.0;
                                        if (v496.i64[1] + v496.i64[0])
                                        {
                                          v122 = v509 * 100.0 / (v496.i64[1] + v496.i64[0]);
                                        }

                                        printf("CPU time I billed to others: %llu.%06llu s (%.0f%%) ", v509 * dword_100010004 / unk_100010008 / 0x3B9ACA00, v509 * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8, v122);
                                        sub_100005A3C();
                                        if (v515)
                                        {
                                          v121 = v511 * 100.0 / v515;
                                        }

                                        printf(" (%.0f%%)\n", v121);
                                        v123 = v508 * dword_100010004 / unk_100010008;
                                        v124 = *(&v507 + 1) * dword_100010004 / unk_100010008;
                                        v125 = v507 * dword_100010004 / unk_100010008;
                                        v126 = *(&v506 + 1) * dword_100010004 / unk_100010008;
                                        printf("QoS time (s): UI: %llu.%06llu IN: %llu.%06llu DF: %llu.%06llu UT: %llu.%06llu BG: %llu.%06llu MT: %llu.%06llu UN: %llu.%06llu\n", v123 / 0x3B9ACA00, v123 % 0x3B9ACA00 / 0x3E8, v124 / 0x3B9ACA00, v124 % 0x3B9ACA00 / 0x3E8, v125 / 0x3B9ACA00, v125 % 0x3B9ACA00 / 0x3E8, v126 / 0x3B9ACA00, v126 % 0x3B9ACA00 / 0x3E8, v506 * dword_100010004 / unk_100010008 / 0x3B9ACA00, v506 * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8, *(&v505 + 1) * dword_100010004 / unk_100010008 / 0x3B9ACA00, *(&v505 + 1) * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8, v505 * dword_100010004 / unk_100010008 / 0x3B9ACA00, v505 * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8);
                                        if (v462)
                                        {
                                          v127 = *(&v462 + 1) * 100.0 / v462;
                                        }

                                        else
                                        {
                                          v127 = 0.0;
                                        }

                                        printf("interrupt wakeups: %llu (%llu / %.2f%% from platform idle)\n", v462, *(&v462 + 1), v127);
                                        if (HIDWORD(v472) >= 3)
                                        {
                                          v128 = "POLICY_FIFO";
                                          if (HIDWORD(v472) != 4)
                                          {
                                            v128 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v128 = (&off_10000C4C0)[HIDWORD(v472)];
                                        }

                                        printf("default sched policy: %s\n", v128);
                                        v129 = v504;
                                        if (v504 <= 0x8000000000000)
                                        {
                                          if (v504 <= 0x20000000000)
                                          {
                                            if (v504 <= 0x80000000)
                                            {
                                              if (v504 <= 0x200000)
                                              {
                                                if (v504 > 0x800)
                                                {
                                                  v129 = v129 * 0.0009765625;
                                                }

                                                v130 = &unk_100007155;
                                                if (v504 > 0x800)
                                                {
                                                  v130 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v129 = v129 * 0.000000953674316;
                                                v130 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v129 = v129 * 9.31322575e-10;
                                              v130 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v129 = v129 * 9.09494702e-13;
                                            v130 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v129 = v129 * 8.8817842e-16;
                                          v130 = "Pi";
                                        }

                                        v131 = *(&v504 + 1);
                                        if (*(&v504 + 1) <= 0x8000000000000uLL)
                                        {
                                          if (*(&v504 + 1) <= 0x20000000000uLL)
                                          {
                                            if (*(&v504 + 1) <= 0x80000000uLL)
                                            {
                                              if (*(&v504 + 1) <= 0x200000uLL)
                                              {
                                                if (*(&v504 + 1) > 0x800uLL)
                                                {
                                                  v131 = v131 * 0.0009765625;
                                                }

                                                v132 = &unk_100007155;
                                                if (*(&v504 + 1) > 0x800uLL)
                                                {
                                                  v132 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v131 = v131 * 0.000000953674316;
                                                v132 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v131 = v131 * 9.31322575e-10;
                                              v132 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v131 = v131 * 9.09494702e-13;
                                            v132 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v131 = v131 * 8.8817842e-16;
                                          v132 = "Pi";
                                        }

                                        v133 = *(&v509 + 1);
                                        if (*(&v509 + 1) <= 0x8000000000000uLL)
                                        {
                                          if (*(&v509 + 1) <= 0x20000000000uLL)
                                          {
                                            if (*(&v509 + 1) <= 0x80000000uLL)
                                            {
                                              if (*(&v509 + 1) <= 0x200000uLL)
                                              {
                                                if (*(&v509 + 1) > 0x800uLL)
                                                {
                                                  v133 = v133 * 0.0009765625;
                                                }

                                                v134 = &unk_100007155;
                                                if (*(&v509 + 1) > 0x800uLL)
                                                {
                                                  v134 = "Ki";
                                                }
                                              }

                                              else
                                              {
                                                v133 = v133 * 0.000000953674316;
                                                v134 = "Mi";
                                              }
                                            }

                                            else
                                            {
                                              v133 = v133 * 9.31322575e-10;
                                              v134 = "Gi";
                                            }
                                          }

                                          else
                                          {
                                            v133 = v133 * 9.09494702e-13;
                                            v134 = "Ti";
                                          }
                                        }

                                        else
                                        {
                                          v133 = v133 * 8.8817842e-16;
                                          v134 = "Pi";
                                        }

                                        printf("bytes read: %.2f %s%s written: %.2f %s%s logical writes: %.2f %s%s\n", v129, v130, "B", v131, v132, "B", v133, v134, "B");
                                        if (basic_info.iisb_table_size)
                                        {
                                          v135 = basic_info.iisb_table_inuse * 100.0 / basic_info.iisb_table_size;
                                        }

                                        else
                                        {
                                          v135 = 0.0;
                                        }

                                        printf("mach ports: %u (%.0f%% occupied)\n", basic_info.iisb_table_inuse, v135);
                                        *__endptr = v439;
                                        v591 = v440;
                                        v592 = v441;
                                        *&v593 = v442;
                                        printf("file descriptors: %u (", v439);
                                        v136 = 1;
                                        v137 = off_10000C338;
                                        for (i = 4; i != 56; i += 4)
                                        {
                                          v139 = *(__endptr + i);
                                          if (v139)
                                          {
                                            v8 = (v136 & 1) == 0;
                                            v140 = &unk_100007155;
                                            if (v8)
                                            {
                                              v140 = ", ";
                                            }

                                            printf("%s%s: %u", v140, *v137, v139);
                                            v136 = 0;
                                          }

                                          ++v137;
                                        }

                                        puts(")");
                                        printf("faults: %d, pageins: %d, cow_faults: %d, msgsent: %d, msgrecv: %d, syscalls (mach/unix): %d / %d, csw: %d\n", v459, DWORD1(v459), DWORD2(v459), HIDWORD(v459), v460, DWORD1(v460), DWORD2(v460), HIDWORD(v460));
                                        if (HIDWORD(v458))
                                        {
                                          printf("affinity sets: %d tasks: %d (min: %d max: %d)", v457, HIDWORD(v458), HIDWORD(v457), v458);
                                        }

                                        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v535), vceqzq_s64(v536))))) & 1) != 0 || v537 != 0)
                                        {
                                          printf("extmod: task for pid: %lld (%lld) thread injection: %lld (%lld) set state: %lld (%lld)\n", v535.i64[0], v535.i64[1], v536.i64[0], v536.i64[1], v537, *(&v537 + 1));
                                        }

                                        if (v409)
                                        {
                                          printf("workqueue threads: %u running: %u blocked: %u", v448, HIDWORD(v448), v449);
                                          v141 = BYTE4(v449);
                                          if ((v449 & 0x100000000) != 0)
                                          {
                                            printf(" constrained-limit");
                                            v141 = BYTE4(v449);
                                            if ((v449 & 0x200000000) != 0)
                                            {
                                              goto LABEL_454;
                                            }

LABEL_423:
                                            if ((v141 & 8) == 0)
                                            {
                                              goto LABEL_424;
                                            }

LABEL_455:
                                            printf(" cooperative-limit");
                                            if ((v449 & 0x1000000000) != 0)
                                            {
LABEL_425:
                                              printf(" active-constrained-limit");
                                            }
                                          }

                                          else
                                          {
                                            if ((v449 & 0x200000000) == 0)
                                            {
                                              goto LABEL_423;
                                            }

LABEL_454:
                                            printf(" total-limit");
                                            v141 = BYTE4(v449);
                                            if ((v449 & 0x800000000) != 0)
                                            {
                                              goto LABEL_455;
                                            }

LABEL_424:
                                            if ((v141 & 0x10) != 0)
                                            {
                                              goto LABEL_425;
                                            }
                                          }

                                          putchar(10);
                                        }

                                        LODWORD(__endptr[0]) = 0;
                                        LODWORD(v485) = 0;
                                        v492[0] = 0;
                                        v423[0] = 0;
                                        printf("CPU usage monitor: ");
                                        if (proc_get_cpumon_params())
                                        {
                                          sub_10000626C();
                                        }

                                        else if (SLODWORD(__endptr[0]) > 0 || v485 >= 1)
                                        {
                                          printf("%d%% CPU over %d seconds\n", LODWORD(__endptr[0]), v485);
                                        }

                                        else
                                        {
                                          puts("none");
                                        }

                                        printf("CPU wakes monitor: ");
                                        if (proc_get_wakemon_params())
                                        {
                                          sub_100006298();
                                        }

                                        else if (v492[0] < 1)
                                        {
                                          puts("none");
                                        }

                                        else
                                        {
                                          printf("%d wakes per second (over system-default time period)\n", v492[0]);
                                        }

                                        v142 = "tracked";
                                        if ((flags & 1) == 0)
                                        {
                                          v142 = "untracked";
                                        }

                                        v143 = &unk_100007155;
                                        if ((~flags & 3) == 0)
                                        {
                                          v143 = "idle-exit";
                                        }

                                        v144 = "dirty";
                                        if ((flags & 5) == 1)
                                        {
                                          v144 = "clean";
                                        }

                                        printf("dirty tracking: %s %s %s\n", v142, v143, v144);
                                        if (!__nel)
                                        {
                                          goto LABEL_588;
                                        }

                                        printf("boosts: %u (%u externalized)\n", DWORD2(v454), HIDWORD(v454));
                                        if (cf && DWORD2(v454))
                                        {
                                          Value = CFDictionaryGetValue(cf, key);
                                          if (Value)
                                          {
                                            v146 = Value;
                                            if (CFArrayGetCount(Value) >= 1)
                                            {
                                              v147 = 0;
                                              do
                                              {
                                                ValueAtIndex = CFArrayGetValueAtIndex(v146, v147);
                                                CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
                                                if (CStringPtr)
                                                {
                                                  v150 = CStringPtr;
                                                }

                                                else
                                                {
                                                  v150 = "NULL";
                                                }

                                                printf("\tboosted by: %s\n", v150);
                                                ++v147;
                                              }

                                              while (v147 < CFArrayGetCount(v146));
                                            }
                                          }

                                          else
                                          {
                                            puts("\tsource(s) of boost(s) unknown");
                                          }
                                        }

                                        puts("requested policy");
                                        v151 = sub_100005C84((v107 >> 17) & 7, 0);
                                        printf("\treq apptype: %s\n", v151);
                                        v152 = sub_100005D70((v107 >> 21) & 0x1F, 0);
                                        printf("\treq role: %s\n", v152);
                                        v153 = (v107 >> 33) & 7;
                                        if (v153 == 7 || ((0x7Du >> v153) & 1) == 0)
                                        {
                                          if (v153 == 1)
                                          {
                                            v154 = "THREAD_QOS_MAINTENANCE";
                                          }

                                          else
                                          {
                                            v154 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v154 = (&off_10000C580)[v153];
                                        }

                                        printf("\treq qos clamp: %s\n", v154);
                                        v155 = (v107 >> 11) & 7;
                                        v156 = v155 == 6;
                                        if (v155 >= 6)
                                        {
                                          v157 = "LATENCY_QOS_TIER_5";
                                          if (!v156)
                                          {
                                            v157 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v157 = (&off_10000C4D8)[v155];
                                        }

                                        v158 = (v107 >> 26) & 7;
                                        v159 = v158 == 6;
                                        if (v158 >= 6)
                                        {
                                          v160 = "LATENCY_QOS_TIER_5";
                                          if (!v159)
                                          {
                                            v160 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v160 = (&off_10000C4D8)[v158];
                                        }

                                        printf("\treq base/override latency qos: %s / %s\n", v157, v160);
                                        v161 = (v107 >> 14) & 7;
                                        v162 = v161 == 6;
                                        if (v161 >= 6)
                                        {
                                          v163 = "THROUGHPUT_QOS_TIER_5";
                                          if (!v162)
                                          {
                                            v163 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v163 = (&off_10000C508)[v161];
                                        }

                                        v164 = v107 >> 29;
                                        v165 = "THROUGHPUT_QOS_TIER_UNSPECIFIED";
                                        if (v107 >> 29)
                                        {
                                          if (v164 - 1 >= 5)
                                          {
                                            v165 = "THROUGHPUT_QOS_TIER_5";
                                            if (v164 != 6)
                                            {
                                              v165 = "???";
                                            }
                                          }

                                          else
                                          {
                                            v165 = (&off_10000C458)[v164 - 1];
                                          }
                                        }

                                        printf("\treq base/override thruput qos: %s / %s\n", v163, v165);
                                        if ((v107 & 3) != 0)
                                        {
                                          v166 = "YES";
                                        }

                                        else
                                        {
                                          v166 = "NO";
                                        }

                                        v167 = &unk_100007155;
                                        v168 = "(internal)";
                                        if ((v107 & 1) == 0)
                                        {
                                          v168 = &unk_100007155;
                                        }

                                        if ((v107 & 2) != 0)
                                        {
                                          v167 = "(external)";
                                        }

                                        printf("\treq darwin BG: %s %s %s\n", v166, v168, v167);
                                        v169 = (&off_10000C5B8)[(v107 >> 2) & 3];
                                        printf("\treq internal/external iotier: %s / %s\n", v169, (&off_10000C5B8)[(v107 >> 4) & 3]);
                                        printf("\treq darwin BG iotier: %s\n", (&off_10000C5B8)[(v107 >> 8) & 3]);
                                        if ((v107 & &_mh_execute_header) != 0)
                                        {
                                          v170 = "YES";
                                        }

                                        else
                                        {
                                          v170 = "NO";
                                        }

                                        printf("\treq managed: %s\n", v170);
                                        printf("\treq other: ");
                                        if ((v107 & 0x40) != 0)
                                        {
                                          printf("passive-int ");
                                        }

                                        if ((v107 & 0x80) != 0)
                                        {
                                          printf("passive-ext ");
                                          if ((v107 & 0x400) == 0)
                                          {
LABEL_495:
                                            if ((v107 & 0x100000) == 0)
                                            {
                                              goto LABEL_496;
                                            }

                                            goto LABEL_509;
                                          }
                                        }

                                        else if ((v107 & 0x400) == 0)
                                        {
                                          goto LABEL_495;
                                        }

                                        printf("terminated ");
                                        if ((v107 & 0x100000) == 0)
                                        {
LABEL_496:
                                          if ((v107 & 0x800000000000) == 0)
                                          {
                                            goto LABEL_498;
                                          }

LABEL_497:
                                          printf("runaway-mitigation ");
                                          goto LABEL_498;
                                        }

LABEL_509:
                                        printf("boosted ");
                                        if ((v107 & 0x800000000000) != 0)
                                        {
                                          goto LABEL_497;
                                        }

LABEL_498:
                                        putchar(10);
                                        printf("\treq suppression (App Nap) behaviors: ");
                                        if ((v107 & 0x1000000000) != 0)
                                        {
                                          printf("active ");
                                          if ((v107 & 0x2000000000) == 0)
                                          {
LABEL_500:
                                            if ((v107 & 0x200000000000) == 0)
                                            {
                                              goto LABEL_502;
                                            }

LABEL_501:
                                            printf("low-priority-cpu (28) ");
                                            goto LABEL_502;
                                          }
                                        }

                                        else if ((v107 & 0x2000000000) == 0)
                                        {
                                          goto LABEL_500;
                                        }

                                        printf("low-priority-cpu (4) ");
                                        if ((v107 & 0x200000000000) != 0)
                                        {
                                          goto LABEL_501;
                                        }

LABEL_502:
                                        v171 = (v107 >> 38) & 7;
                                        if (((v107 >> 38) & 7) > 2)
                                        {
                                          switch(v171)
                                          {
                                            case 3:
                                              v172 = "LATENCY_QOS_TIER_2";
                                              break;
                                            case 4:
                                              v172 = "LATENCY_QOS_TIER_3";
                                              break;
                                            case 5:
                                              v172 = "LATENCY_QOS_TIER_4";
                                              break;
                                            default:
LABEL_519:
                                              v8 = v171 == 6;
                                              v172 = "LATENCY_QOS_TIER_5";
                                              if (!v8)
                                              {
                                                v172 = "???";
                                              }

                                              break;
                                          }
                                        }

                                        else
                                        {
                                          switch(v171)
                                          {
                                            case 0:
                                              goto LABEL_525;
                                            case 1:
                                              v172 = "LATENCY_QOS_TIER_0";
                                              break;
                                            case 2:
                                              v172 = "LATENCY_QOS_TIER_1";
                                              break;
                                            default:
                                              goto LABEL_519;
                                          }
                                        }

                                        printf("timer-throttling (%s) ", v172);
LABEL_525:
                                        v173 = (v107 >> 42) & 7;
                                        if (((v107 >> 42) & 7) > 2)
                                        {
                                          switch(v173)
                                          {
                                            case 3:
                                              v174 = "THROUGHPUT_QOS_TIER_2";
                                              break;
                                            case 4:
                                              v174 = "THROUGHPUT_QOS_TIER_3";
                                              break;
                                            case 5:
                                              v174 = "THROUGHPUT_QOS_TIER_4";
                                              break;
                                            default:
LABEL_535:
                                              v8 = v173 == 6;
                                              v174 = "THROUGHPUT_QOS_TIER_5";
                                              if (!v8)
                                              {
                                                v174 = "???";
                                              }

                                              break;
                                          }
                                        }

                                        else
                                        {
                                          switch(v173)
                                          {
                                            case 0:
                                              goto LABEL_541;
                                            case 1:
                                              v174 = "THROUGHPUT_QOS_TIER_0";
                                              break;
                                            case 2:
                                              v174 = "THROUGHPUT_QOS_TIER_1";
                                              break;
                                            default:
                                              goto LABEL_535;
                                          }
                                        }

                                        printf("throughput-qos (%s) ", v174);
LABEL_541:
                                        if ((v107 & 0x20000000000) != 0)
                                        {
                                          printf("disk-throttling ");
                                        }

                                        if ((v107 & 0x400000000000) != 0)
                                        {
                                          printf("bg-sockets ");
                                        }

                                        putchar(10);
                                        puts("effective policy");
                                        v175 = sub_100005D70((DWORD2(v107) >> 20) & 0xF, 0);
                                        printf("\teff role: %s\n", v175);
                                        v176 = (DWORD2(v107) >> 11) & 7;
                                        v177 = v176 == 6;
                                        if (v176 >= 6)
                                        {
                                          v178 = "LATENCY_QOS_TIER_5";
                                          if (!v177)
                                          {
                                            v178 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v178 = (&off_10000C4D8)[v176];
                                        }

                                        printf("\teff latency qos: %s\n", v178);
                                        v179 = (DWORD2(v107) >> 14) & 7;
                                        v180 = v179 == 6;
                                        if (v179 >= 6)
                                        {
                                          v181 = "THROUGHPUT_QOS_TIER_5";
                                          if (!v180)
                                          {
                                            v181 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v181 = (&off_10000C508)[v179];
                                        }

                                        printf("\teff thruput qos: %s\n", v181);
                                        if (BYTE8(v107))
                                        {
                                          v182 = "YES";
                                        }

                                        else
                                        {
                                          v182 = "NO";
                                        }

                                        printf("\teff darwin BG: %s\n", v182);
                                        printf("\teff iotier: %s\n", (&off_10000C5B8)[(*(&v107 + 1) >> 2) & 3]);
                                        if ((DWORD2(v107) & 0x2000000) != 0)
                                        {
                                          v183 = "YES";
                                        }

                                        else
                                        {
                                          v183 = "NO";
                                        }

                                        printf("\teff managed: %s\n", v183);
                                        v184 = (*(&v107 + 1) >> 30) & 7;
                                        if (v184 == 7 || ((0x7Du >> v184) & 1) == 0)
                                        {
                                          if (v184 == 1)
                                          {
                                            v185 = "THREAD_QOS_MAINTENANCE";
                                          }

                                          else
                                          {
                                            v185 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v185 = (&off_10000C580)[v184];
                                        }

                                        printf("\teff qos ceiling: %s\n", v185);
                                        v186 = (DWORD2(v107) >> 27) & 7;
                                        if (v186 == 7 || ((0x7Du >> v186) & 1) == 0)
                                        {
                                          if (v186 == 1)
                                          {
                                            v187 = "THREAD_QOS_MAINTENANCE";
                                          }

                                          else
                                          {
                                            v187 = "???";
                                          }
                                        }

                                        else
                                        {
                                          v187 = (&off_10000C580)[v186];
                                        }

                                        printf("\teff qos clamp: %s\n", v187);
                                        printf("\teff other: ");
                                        if ((BYTE8(v107) & 0x10) != 0)
                                        {
                                          printf("passive ");
                                        }

                                        v188 = "low-priority-cpu (4) ";
                                        if ((BYTE8(v107) & 2) != 0 || (v188 = "low-priority-cpu (28) ", (DWORD2(v107) & 0x1000000) != 0))
                                        {
                                          printf(v188);
                                          if ((BYTE8(v107) & 0x20) == 0)
                                          {
LABEL_576:
                                            if ((BYTE8(v107) & 0x40) == 0)
                                            {
                                              goto LABEL_577;
                                            }

                                            goto LABEL_604;
                                          }
                                        }

                                        else if ((BYTE8(v107) & 0x20) == 0)
                                        {
                                          goto LABEL_576;
                                        }

                                        printf("bg-allsockets ");
                                        if ((BYTE8(v107) & 0x40) == 0)
                                        {
LABEL_577:
                                          if ((WORD4(v107) & 0x200) == 0)
                                          {
                                            goto LABEL_578;
                                          }

                                          goto LABEL_605;
                                        }

LABEL_604:
                                        printf("bg-newsockets ");
                                        if ((WORD4(v107) & 0x200) == 0)
                                        {
LABEL_578:
                                          if ((DWORD2(v107) & 0x20000) == 0)
                                          {
                                            goto LABEL_579;
                                          }

                                          goto LABEL_606;
                                        }

LABEL_605:
                                        printf("terminated ");
                                        if ((DWORD2(v107) & 0x20000) == 0)
                                        {
LABEL_579:
                                          if ((DWORD2(v107) & 0x40000) == 0)
                                          {
                                            goto LABEL_580;
                                          }

                                          goto LABEL_607;
                                        }

LABEL_606:
                                        printf("tal-engaged ");
                                        if ((DWORD2(v107) & 0x40000) == 0)
                                        {
LABEL_580:
                                          if ((DWORD2(v107) & 0x80000) == 0)
                                          {
                                            goto LABEL_581;
                                          }

                                          goto LABEL_608;
                                        }

LABEL_607:
                                        printf("bg-watchers ");
                                        if ((DWORD2(v107) & 0x80000) == 0)
                                        {
LABEL_581:
                                          if ((DWORD2(v107) & 0x4000000) == 0)
                                          {
                                            goto LABEL_582;
                                          }

                                          goto LABEL_609;
                                        }

LABEL_608:
                                        printf("suppression-active (App Nap) ");
                                        if ((DWORD2(v107) & 0x4000000) == 0)
                                        {
LABEL_582:
                                          if ((WORD4(v107) & 0x400) == 0)
                                          {
                                            goto LABEL_583;
                                          }

                                          goto LABEL_610;
                                        }

LABEL_609:
                                        printf("live-donor ");
                                        if ((WORD4(v107) & 0x400) == 0)
                                        {
LABEL_583:
                                          if ((*(&v107 + 1) & 0x400000000) == 0)
                                          {
                                            goto LABEL_584;
                                          }

                                          goto LABEL_611;
                                        }

LABEL_610:
                                        printf("ui-is-urgent ");
                                        if ((*(&v107 + 1) & 0x400000000) == 0)
                                        {
LABEL_584:
                                          if ((*(&v107 + 1) & 0x800000000) != 0)
                                          {
                                            goto LABEL_612;
                                          }

                                          goto LABEL_585;
                                        }

LABEL_611:
                                        printf("coalition-suppressed (BG) ");
                                        if ((*(&v107 + 1) & 0x800000000) != 0)
                                        {
LABEL_612:
                                          printf("runaway-mitigation ");
                                          if ((*(&v107 + 1) & 0x200000000) == 0)
                                          {
                                            goto LABEL_587;
                                          }

LABEL_586:
                                          printf("allow-promote-above");
                                          goto LABEL_587;
                                        }

LABEL_585:
                                        if ((*(&v107 + 1) & 0x200000000) != 0)
                                        {
                                          goto LABEL_586;
                                        }

LABEL_587:
                                        putchar(10);
LABEL_588:
                                        if ((buffer & 0x20000) != 0)
                                        {
                                          v189 = "YES";
                                        }

                                        else
                                        {
                                          v189 = "NO";
                                        }

                                        printf("ios-appledaemon: %s\n", v189);
                                        if ((buffer & 0x80000) != 0)
                                        {
                                          v190 = "YES";
                                        }

                                        else
                                        {
                                          v190 = "NO";
                                        }

                                        printf("ios-imppromotion: %s\n", v190);
                                        if ((buffer & 0x1000000) != 0)
                                        {
                                          v191 = "YES";
                                        }

                                        else
                                        {
                                          v191 = "NO";
                                        }

                                        printf("ios-application: %s\n", v191);
                                        v36 = v398;
                                        if (__nel)
                                        {
                                          v192 = getpriority(7, v401);
                                          if (v192 == 1)
                                          {
                                            puts("game mode: ON");
                                          }

                                          else if (v192 == -1 && (byte_10001000D & 1) == 0)
                                          {
                                            sub_1000062C4();
                                          }

                                          v193 = getpriority(8, v401);
                                          if (v193 == 1)
                                          {
                                            puts("carplay mode: ON");
                                          }

                                          else if (v193 == -1 && (byte_10001000E & 1) == 0)
                                          {
                                            sub_1000062F0();
                                          }

                                          v194 = getpriority(5, v401);
                                          if (v194)
                                          {
                                            if (v194 == -1)
                                            {
                                              if ((byte_10001000F & 1) == 0)
                                              {
                                                sub_10000631C();
                                              }
                                            }

                                            else
                                            {
                                              v195 = "???";
                                              if ((v194 & 0xF8) == 0)
                                              {
                                                v195 = (&off_10000C480)[v194 & 7];
                                              }

                                              printf("GPU role: %s\n", v195);
                                            }
                                          }

                                          v196 = getpriority(9, v401);
                                          if (v196)
                                          {
                                            if (v196 == -1)
                                            {
                                              if ((byte_100010010 & 1) == 0)
                                              {
                                                sub_100006348();
                                              }
                                            }

                                            else
                                            {
                                              puts("runaway daemon mitigation: ACTIVE");
                                            }
                                          }

                                          *__error() = 0;
                                          v197 = getpriority(0, v401);
                                          if (v197)
                                          {
                                            v198 = v197;
                                            if (v197 == -1 && *__error())
                                            {
                                              perror("getpriority(PRIO_PROCESS, pid)");
                                            }

                                            else
                                            {
                                              printf("nice: %d\n", v198);
                                            }
                                          }

                                          if (v455)
                                          {
                                            v199 = "YES";
                                            if ((v455 & 2) == 0)
                                            {
                                              v199 = "YES (boosted receiver)";
                                              if (!DWORD2(v454))
                                              {
                                                v199 = "NO";
                                              }
                                            }
                                          }

                                          else if ((v455 & 4) != 0)
                                          {
                                            v199 = "CURRENTLY";
                                            if ((v455 & 2) == 0)
                                            {
                                              v199 = "NOT CURRENTLY";
                                            }
                                          }

                                          else if ((v455 & 2) != 0)
                                          {
                                            v199 = "YES";
                                          }

                                          else
                                          {
                                            v199 = "NO";
                                          }

                                          printf("imp_donor: %s\n", v199);
                                          v200 = "DE-NAP";
                                          if ((v455 & 8) == 0)
                                          {
                                            v200 = "NO";
                                          }

                                          if (v455)
                                          {
                                            v201 = "YES";
                                          }

                                          else
                                          {
                                            v201 = v200;
                                          }

                                          printf("imp_receiver: %s\n", v201);
                                          v202 = memorystatus_control();
                                          if (v202 == -1)
                                          {
                                            if ((byte_100010011 & 1) == 0)
                                            {
                                              sub_100006374();
                                            }
                                          }

                                          else
                                          {
                                            if (v202)
                                            {
                                              v203 = "YES";
                                            }

                                            else
                                            {
                                              v203 = "NO";
                                            }

                                            printf("runningboard managed: %s\n", v203);
                                          }
                                        }

                                        if ((v455 & 0x10) != 0)
                                        {
                                          v204 = "YES";
                                        }

                                        else
                                        {
                                          v204 = "NO";
                                        }

                                        printf("pid suspended: %s\n", v204);
                                        if ((buffer & 0x100000) != 0)
                                        {
                                          v205 = "YES";
                                        }

                                        else
                                        {
                                          v205 = "NO";
                                        }

                                        if ((buffer & 0x200000) != 0)
                                        {
                                          v206 = "YES";
                                        }

                                        else
                                        {
                                          v206 = "NO";
                                        }

                                        printf("adaptive daemon: %s (boosted: %s)\n", v205, v206);
                                        if ((buffer & 0x4000000) != 0)
                                        {
                                          v207 = "YES";
                                        }

                                        else
                                        {
                                          v207 = "NO";
                                        }

                                        printf("checked allocations: %s\n", v207);
                                        if (HIDWORD(v480))
                                        {
                                          puts("threads:");
                                          if (x[1])
                                          {
                                            v208 = 0;
                                            v396 = __nel & v403;
                                            do
                                            {
                                              v438 = 0;
                                              v437 = 0u;
                                              thread_info_out = 0u;
                                              v434[0] = 0;
                                              v434[1] = 0;
                                              v435 = 0;
                                              v431 = 0;
                                              v432 = 0;
                                              v433 = 0;
                                              *v430 = 0;
                                              v428 = 0;
                                              v429 = 0;
                                              *v427 = 0;
                                              v425 = 0u;
                                              v426 = 0u;
                                              *v423 = 0u;
                                              v424 = 0u;
                                              v490 = 0u;
                                              v491 = 0u;
                                              v488 = 0u;
                                              v489 = 0u;
                                              v486 = 0u;
                                              v487 = 0u;
                                              v485 = 0u;
                                              task_info_outCnt = 10;
                                              v209 = thread_info(act_list[v208], 3u, &thread_info_out, &task_info_outCnt);
                                              if (v209)
                                              {
                                                mach_error("thread_info(... THREAD_BASIC_INFO ...)", v209);
                                              }

                                              task_info_outCnt = 6;
                                              v210 = thread_info(act_list[v208], 4u, v434, &task_info_outCnt);
                                              if (v210)
                                              {
                                                mach_error("thread_info(... THREAD_IDENTIFIER_INFO ...)", v210);
                                              }

                                              v211 = 1;
                                              if (v480 && v435)
                                              {
                                                __endptr[0] = 0;
                                                *&object_type = 0;
                                                outsize = 0;
                                                v493 = 0;
                                                v212 = vm_read_overwrite(task_list[v36], v435, 8uLL, __endptr, &outsize);
                                                if (v212)
                                                {
                                                  v213 = v212;
                                                  v214 = "vm_read_overwrite(... &qaddr ...)";
LABEL_682:
                                                  mach_error(v214, v213);
                                                  goto LABEL_683;
                                                }

                                                if (outsize == 8 && __endptr[0])
                                                {
                                                  v234 = vm_read_overwrite(task_list[v36], &__endptr[0][v380], 8uLL, &object_type, &outsize);
                                                  if (v234)
                                                  {
                                                    v213 = v234;
                                                    v214 = "vm_read_overwrite(... &label_addr ...)";
                                                    goto LABEL_682;
                                                  }

                                                  if (outsize == 8 && object_type)
                                                  {
                                                    v285 = vm_read_overwrite(task_list[v36], object_type, 0x40uLL, v492, &outsize);
                                                    if (v285)
                                                    {
                                                      v213 = v285;
                                                      v214 = "vm_read_overwrite(... dqlabel ...)";
                                                      goto LABEL_682;
                                                    }

                                                    v211 = 0;
                                                  }
                                                }
                                              }

LABEL_683:
                                              if (DWORD1(v437) == 2)
                                              {
                                                task_info_outCnt = 5;
                                                v218 = thread_info(act_list[v208], 0xBu, &v431, &task_info_outCnt);
                                                if (!v218)
                                                {
                                                  goto LABEL_690;
                                                }

                                                v216 = v218;
                                                v217 = "thread_info(... THREAD_SCHED_RR_INFO ...)";
                                                goto LABEL_689;
                                              }

                                              if (DWORD1(v437) == 1)
                                              {
                                                task_info_outCnt = 5;
                                                v215 = thread_info(act_list[v208], 0xAu, &v431, &task_info_outCnt);
                                                if (v215)
                                                {
                                                  v216 = v215;
                                                  v217 = "thread_info(... THREAD_SCHED_TIMESHARE_INFO ...)";
LABEL_689:
                                                  mach_error(v217, v216);
                                                }
                                              }

LABEL_690:
                                              get_default = 0;
                                              task_info_outCnt = 1;
                                              v219 = thread_policy_get(act_list[v208], 1u, &v430[1], &task_info_outCnt, &get_default);
                                              if (v219)
                                              {
                                                mach_error("thread_policy_get(... THREAD_EXTENDED_POLICY ...)", v219);
                                              }

                                              v420 = 0;
                                              task_info_outCnt = 5;
                                              v220 = thread_policy_get(act_list[v208], 0xAu, &v428, &task_info_outCnt, &v420);
                                              if (v220)
                                              {
                                                mach_error("thread_policy_get(... THREAD_TIME_CONSTRAINT_WITH_PRIORITY_POLICY ...)", v220);
                                              }

                                              v420 = 0;
                                              task_info_outCnt = 1;
                                              v221 = thread_policy_get(act_list[v208], 3u, &v427[1], &task_info_outCnt, &v420);
                                              if (v221)
                                              {
                                                mach_error("thread_policy_get(... THREAD_PRECEDENCE_POLICY ...)", v221);
                                              }

                                              v420 = 0;
                                              task_info_outCnt = 1;
                                              v222 = thread_policy_get(act_list[v208], 4u, v427, &task_info_outCnt, &v420);
                                              if (v222)
                                              {
                                                if (v222 == 46)
                                                {
                                                  v223 = 1;
                                                  goto LABEL_701;
                                                }

                                                mach_error("thread_policy_get(... THREAD_AFFINITY_POLICY ...)", v222);
                                              }

                                              v223 = 0;
LABEL_701:
                                              v420 = 0;
                                              task_info_outCnt = 16;
                                              v224 = thread_policy_get(act_list[v208], 6u, v423, &task_info_outCnt, &v420);
                                              if (v224)
                                              {
                                                mach_error("thread_policy_get(... THREAD_POLICY_STATE ...)", v224);
                                              }

                                              v225 = *(&v424 + 1);
                                              v226 = v424;
                                              v227 = proc_pidinfo(v401, 15, v434[0], &v485, 112);
                                              if (v227 <= 111)
                                              {
                                                perror("proc_pidinfo(... PROC_PIDTHREADID64INFO ...)");
                                              }

                                              printf("\tthread ID: 0x%llx / %llu\n", v434[0], v434[0]);
                                              if (v488)
                                              {
                                                printf("\tthread name: %s\n");
                                              }

                                              else if ((v211 & 1) == 0)
                                              {
                                                printf("\tdispatch queue name: %s\n");
                                              }

                                              printf("\tuser/system time: %lf s / %lf s\n", SDWORD1(thread_info_out) / 1000000.0 + thread_info_out, SHIDWORD(thread_info_out) / 1000000.0 + SDWORD2(thread_info_out));
                                              if (v227 >= 112 && (byte_100010003 & v405 & 1) != 0)
                                              {
                                                if (v390 >= 3)
                                                {
                                                  sub_1000063F4();
                                                }

                                                *__error() = 0;
                                                if (proc_pidinfo(v401, 34, v434[0], &word_100010028, 88) < 40 * v390 + 8)
                                                {
                                                  perror("proc_pidinfo(... PROC_PIDTHREADCOUNTS ...)");
                                                }

                                                if (v390 != word_100010028)
                                                {
                                                  fprintf(__stderrp, "threadcounts.ptc_len %d mismatch with level_count %u\n", word_100010028, v390);
                                                }

                                                v228 = 0;
                                                v229 = 0uLL;
                                                if (v390)
                                                {
                                                  v230 = v390;
                                                  v231 = &qword_100010050;
                                                  v232 = 0uLL;
                                                  do
                                                  {
                                                    v232 = vaddq_s64(*(v231 - 1), v232);
                                                    v229 = vaddq_s64(*(v231 - 2), v229);
                                                    v233 = *v231;
                                                    v231 += 5;
                                                    v228 += v233;
                                                    --v230;
                                                  }

                                                  while (v230);
                                                }

                                                else
                                                {
                                                  v232 = 0uLL;
                                                }

                                                *v410 = v232;
                                                *__nela = v229;
                                                *__endptr = v229;
                                                v591 = v232;
                                                *&v592 = v228;
                                                v418 = v391;
                                                object_type = v393;
                                                v419 = v389;
                                                sub_100005518("\tCPU time:", __endptr, &object_type, 1, " of task");
                                                if (v390 >= 2)
                                                {
                                                  v235 = 0;
                                                  v236 = &xmmword_100010030;
                                                  do
                                                  {
                                                    if (v235 == 24)
                                                    {
                                                      sub_1000063C8();
                                                    }

                                                    if (qword_1000100C0 != -1)
                                                    {
                                                      sub_1000063A0();
                                                    }

                                                    printf("\t%s:", *(&off_10000C3E0 + v235));
                                                    v237 = v236[1];
                                                    *__endptr = *v236;
                                                    v591 = v237;
                                                    *&v592 = *(v236 + 4);
                                                    v418 = *v410;
                                                    object_type = *__nela;
                                                    v419 = v228;
                                                    sub_100005518(&unk_100007155, __endptr, &object_type, 1, &unk_100007155);
                                                    v235 += 8;
                                                    v236 = (v236 + 40);
                                                  }

                                                  while (8 * v390 != v235);
                                                }
                                              }

                                              printf("\tCPU usage (over last tick): %d%%\n", v437 / 10);
                                              v238 = "timeshare";
                                              if (!v430[1])
                                              {
                                                v238 = "fixed-priority";
                                              }

                                              v239 = "real-time";
                                              if (!get_default)
                                              {
                                                v239 = v238;
                                              }

                                              printf("\tsched mode: %s", v239);
                                              if (DWORD1(v437) == 1 && (get_default || !v430[1]))
                                              {
                                                printf(" demoted to policy %s: base priority: %d cur priority %d", "POLICY_TIMESHARE", HIDWORD(v431), v432);
                                              }

                                              putchar(10);
                                              if (get_default)
                                              {
                                                goto LABEL_745;
                                              }

                                              if (DWORD1(v437) >= 3)
                                              {
                                                v240 = "POLICY_FIFO";
                                                if (DWORD1(v437) != 4)
                                                {
                                                  v240 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v240 = (&off_10000C4C0)[DWORD1(v437)];
                                              }

                                              printf("\tpolicy: %s\n", v240);
                                              if (get_default)
                                              {
LABEL_745:
                                                printf("\t\treal-time priority: %u\n", v430[0]);
                                                printf("\t\treal-time period: %u\n", v428);
                                                printf("\t\treal-time computation: %u\n", HIDWORD(v428));
                                                printf("\t\treal-time constraint: %u\n", v429);
                                                printf("\t\treal-time preemptible: %s\n");
                                              }

                                              else if (DWORD1(v437) == 2)
                                              {
                                                printf("\t\tround-robin max  priority: %d\n", v431);
                                                printf("\t\tround-robin base priority: %d\n", HIDWORD(v431));
                                                printf("\t\tround-robin quantum: %d\n", v432);
                                                printf("\t\tround-robin depressed: %s, prio %d\n");
                                              }

                                              else if (DWORD1(v437) == 1)
                                              {
                                                printf("\t\ttimeshare max  priority: %d\n", v431);
                                                printf("\t\ttimeshare base priority: %d\n", HIDWORD(v431));
                                                printf("\t\ttimeshare cur  priority: %d\n", v432);
                                                v283 = "YES";
                                                if (!HIDWORD(v432))
                                                {
                                                  v283 = "NO";
                                                }

                                                printf("\t\ttimeshare depressed: %s, prio %d\n", v283, v433);
                                              }

                                              puts("\trequested policy:");
                                              v241 = (v226 >> 15) & 7;
                                              if (v241 == 7 || ((0x7Du >> v241) & 1) == 0)
                                              {
                                                if (v241 == 1)
                                                {
                                                  v242 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v242 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v242 = (&off_10000C580)[v241];
                                              }

                                              printf("\t\treq thread qos: %s, relprio: %d\n", v242, -((v226 >> 18) & 0xF));
                                              puts("\t\treq workqueue/pthread overrides:");
                                              v243 = (v226 >> 22) & 7;
                                              if (v243 == 7 || ((0x7Du >> v243) & 1) == 0)
                                              {
                                                if (v243 == 1)
                                                {
                                                  v244 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v244 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v244 = (&off_10000C580)[v243];
                                              }

                                              printf("\t\t\treq legacy qos override: %s\n", v244);
                                              v245 = HIDWORD(v226) & 7;
                                              if (v245 == 7 || ((0x7Du >> (BYTE4(v226) & 7)) & 1) == 0)
                                              {
                                                if (v245 == 1)
                                                {
                                                  v246 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v246 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v246 = (&off_10000C580)[v245];
                                              }

                                              printf("\t\t\treq workqueue qos override: %s\n", v246);
                                              puts("\t\treq kernel overrides:");
                                              v247 = (v226 >> 28) & 7;
                                              if (v247 == 7 || ((0x7Du >> v247) & 1) == 0)
                                              {
                                                if (v247 == 1)
                                                {
                                                  v248 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v248 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v248 = (&off_10000C580)[v247];
                                              }

                                              printf("\t\t\treq kevent overrides: %s\n", v248);
                                              v249 = (v226 >> 35) & 7;
                                              if (v249 == 7 || ((0x7Du >> v249) & 1) == 0)
                                              {
                                                if (v249 == 1)
                                                {
                                                  v250 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v250 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v250 = (&off_10000C580)[v249];
                                              }

                                              printf("\t\t\treq workloop servicer override: %s\n", v250);
                                              v251 = (v226 >> 25) & 7;
                                              if (v251 == 7 || ((0x7Du >> v251) & 1) == 0)
                                              {
                                                if (v251 == 1)
                                                {
                                                  v252 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v252 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v252 = (&off_10000C580)[v251];
                                              }

                                              printf("\t\treq turnstiles sync promotion qos: %s, user promotion base pri: %u\n", v252, DWORD1(v425));
                                              v253 = (v226 >> 8) & 7;
                                              v254 = v253 == 6;
                                              if (v253 >= 6)
                                              {
                                                v255 = "LATENCY_QOS_TIER_5";
                                                if (!v254)
                                                {
                                                  v255 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v255 = (&off_10000C4D8)[v253];
                                              }

                                              printf("\t\treq latency qos: %s\n", v255);
                                              v256 = (v226 >> 11) & 7;
                                              v257 = v256 == 6;
                                              if (v256 >= 6)
                                              {
                                                v258 = "THROUGHPUT_QOS_TIER_5";
                                                if (!v257)
                                                {
                                                  v258 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v258 = (&off_10000C508)[v256];
                                              }

                                              printf("\t\treq thruput qos: %s\n", v258);
                                              v259 = "YES";
                                              if ((v226 & 3) == 0)
                                              {
                                                v259 = "NO";
                                              }

                                              v260 = &unk_100007155;
                                              v261 = "(internal)";
                                              if ((v226 & 1) == 0)
                                              {
                                                v261 = &unk_100007155;
                                              }

                                              if ((v226 & 2) != 0)
                                              {
                                                v260 = "(external)";
                                              }

                                              printf("\t\treq darwin BG: %s %s %s\n", v259, v261, v260);
                                              v262 = (&off_10000C5B8)[(v226 >> 2) & 3];
                                              printf("\t\treq internal/external iotier: %s / %s\n", v262, (&off_10000C5B8)[(v226 >> 4) & 3]);
                                              printf("\t\treq other: ");
                                              if ((v226 & 0x40) != 0)
                                              {
                                                printf("passive-int ");
                                                if ((v226 & 0x80) == 0)
                                                {
LABEL_798:
                                                  if ((v226 & 0x4000) == 0)
                                                  {
                                                    goto LABEL_799;
                                                  }

                                                  goto LABEL_819;
                                                }
                                              }

                                              else if ((v226 & 0x80) == 0)
                                              {
                                                goto LABEL_798;
                                              }

                                              printf("passive-ext ");
                                              if ((v226 & 0x4000) == 0)
                                              {
LABEL_799:
                                                if ((v226 & 0x10000000000) == 0)
                                                {
                                                  goto LABEL_801;
                                                }

LABEL_800:
                                                printf("workload-property-controlled ");
                                                goto LABEL_801;
                                              }

LABEL_819:
                                              printf("bg-pidbind ");
                                              if ((v226 & 0x10000000000) != 0)
                                              {
                                                goto LABEL_800;
                                              }

LABEL_801:
                                              if (v423[3])
                                              {
                                                printf("static-param ");
                                              }

                                              putchar(10);
                                              puts("\teffective policy:");
                                              v263 = (v225 >> 14) & 7;
                                              if (v263 == 7 || ((0x7Du >> v263) & 1) == 0)
                                              {
                                                if (v263 == 1)
                                                {
                                                  v264 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v264 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v264 = (&off_10000C580)[v263];
                                              }

                                              printf("\t\teff thread qos: %s\n", v264);
                                              printf("\t\teff thread qos relprio: %d\n", -((v225 >> 17) & 0xF));
                                              v265 = (v225 >> 21) & 7;
                                              if (v265 == 7 || ((0x7Du >> v265) & 1) == 0)
                                              {
                                                if (v265 == 1)
                                                {
                                                  v266 = "THREAD_QOS_MAINTENANCE";
                                                }

                                                else
                                                {
                                                  v266 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v266 = (&off_10000C580)[v265];
                                              }

                                              printf("\t\teff promotion qos: %s\n", v266);
                                              v267 = (v225 >> 8) & 7;
                                              v268 = v267 == 6;
                                              if (v267 >= 6)
                                              {
                                                v269 = "LATENCY_QOS_TIER_5";
                                                if (!v268)
                                                {
                                                  v269 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v269 = (&off_10000C4D8)[v267];
                                              }

                                              printf("\t\teff latency qos: %s\n", v269);
                                              v270 = (v225 >> 11) & 7;
                                              v271 = v270 == 6;
                                              if (v270 >= 6)
                                              {
                                                v272 = "THROUGHPUT_QOS_TIER_5";
                                                if (!v271)
                                                {
                                                  v272 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v272 = (&off_10000C508)[v270];
                                              }

                                              printf("\t\teff thruput qos: %s\n", v272);
                                              v273 = "YES";
                                              if ((v225 & 1) == 0)
                                              {
                                                v273 = "NO";
                                              }

                                              printf("\t\teff darwin BG: %s\n", v273);
                                              printf("\t\teff iotier: %s\n", (&off_10000C5B8)[(v225 >> 1) & 3]);
                                              printf("\t\teff other: ");
                                              if ((v225 & 8) != 0)
                                              {
                                                printf("passive ");
                                                if ((v225 & 0x80) == 0)
                                                {
LABEL_831:
                                                  if ((v225 & 0x10) == 0)
                                                  {
                                                    goto LABEL_832;
                                                  }

                                                  goto LABEL_841;
                                                }
                                              }

                                              else if ((v225 & 0x80) == 0)
                                              {
                                                goto LABEL_831;
                                              }

                                              printf("ui-is-urgent (47) ");
                                              if ((v225 & 0x10) == 0)
                                              {
LABEL_832:
                                                if ((v225 & 0x20) == 0)
                                                {
                                                  goto LABEL_833;
                                                }

                                                goto LABEL_842;
                                              }

LABEL_841:
                                              printf("bg-allsockets ");
                                              if ((v225 & 0x20) == 0)
                                              {
LABEL_833:
                                                if ((v225 & 0x40) == 0)
                                                {
                                                  goto LABEL_834;
                                                }

                                                goto LABEL_843;
                                              }

LABEL_842:
                                              printf("bg-newsockets ");
                                              if ((v225 & 0x40) == 0)
                                              {
LABEL_834:
                                                if ((v225 & 0x2000000) == 0)
                                                {
                                                  goto LABEL_835;
                                                }

                                                goto LABEL_844;
                                              }

LABEL_843:
                                              printf("terminated ");
                                              if ((v225 & 0x2000000) == 0)
                                              {
LABEL_835:
                                                if ((v225 & 0x1000000) == 0)
                                                {
                                                  goto LABEL_837;
                                                }

LABEL_836:
                                                printf("promote-above-task ");
                                                goto LABEL_837;
                                              }

LABEL_844:
                                              printf("workload-property-controlled ");
                                              if ((v225 & 0x1000000) != 0)
                                              {
                                                goto LABEL_836;
                                              }

LABEL_837:
                                              putchar(10);
                                              if ((DWORD2(v437) - 1) >= 4)
                                              {
                                                v274 = "TH_STATE_HALTED";
                                                if (DWORD2(v437) != 5)
                                                {
                                                  v274 = "???";
                                                }
                                              }

                                              else
                                              {
                                                v274 = (&off_10000C538)[DWORD2(v437) - 1];
                                              }

                                              printf("\trun state: %s\n", v274);
                                              if (HIDWORD(v437))
                                              {
                                                v275 = "TH_FLAGS_SWAPPED ";
                                                if ((BYTE12(v437) & 1) == 0)
                                                {
                                                  v275 = &unk_100007155;
                                                }

                                                v276 = "TH_FLAGS_IDLE ";
                                                if ((BYTE12(v437) & 2) == 0)
                                                {
                                                  v276 = &unk_100007155;
                                                }

                                                v277 = "TH_FLAGS_GLOBAL_FORCED_IDLE ";
                                                if ((BYTE12(v437) & 4) == 0)
                                                {
                                                  v277 = &unk_100007155;
                                                }

                                                printf("\tflags: %s%s%s\n", v275, v276, v277);
                                              }

                                              printf("\tsuspend count: %d\n", v438);
                                              printf("\tsleep time: %d s\n", HIDWORD(v438));
                                              printf("\timportance in task: %d\n", v427[1]);
                                              if ((v223 & 1) == 0)
                                              {
                                                printf("\taffinity tag: %d\n", v427[0]);
                                              }

                                              v36 = v398;
                                              if (!v396)
                                              {
                                                goto LABEL_887;
                                              }

                                              voucher = 0;
                                              mach_voucher = thread_get_mach_voucher(act_list[v208], 0, &voucher);
                                              if (mach_voucher)
                                              {
                                                mach_error("thread_get_mach_voucher(...)", mach_voucher);
                                              }

                                              v279 = voucher;
                                              if (!voucher)
                                              {
                                                goto LABEL_887;
                                              }

                                              LODWORD(object_type) = 0;
                                              LODWORD(outsize) = 0;
                                              v280 = mach_port_kernel_object(mach_task_self_, voucher, &object_type, &outsize);
                                              if (v280)
                                              {
                                                LODWORD(v281) = v280;
                                                v282 = "mach_port_kernel_object(...)";
                                              }

                                              else
                                              {
                                                if (object_type != 37)
                                                {
                                                  goto LABEL_886;
                                                }

                                                printf("\tvoucher: 0x%x\n", outsize);
                                                recipesCnt = 0x2000;
                                                v284 = mach_voucher_debug_info(mach_task_self_, v279, __endptr, &recipesCnt);
                                                if (v284 == 46 || !recipesCnt)
                                                {
                                                  goto LABEL_886;
                                                }

                                                v281 = v284;
                                                if (!v284)
                                                {
                                                  for (j = 0; j < recipesCnt; j += *(&__endptr[1] + j + 4) + 16)
                                                  {
                                                    v287 = *(__endptr + j);
                                                    if (v287 == 3 || v287 == 2)
                                                    {
                                                      printf("\t\t%s\n", v281);
                                                    }

                                                    else
                                                    {
                                                      printf("\t\tUnknown (%u): %s\n", v281);
                                                    }
                                                  }

                                                  goto LABEL_886;
                                                }

                                                v282 = "mach_voucher_debug_info(...)";
                                              }

                                              mach_error(v282, v281);
LABEL_886:
                                              mach_port_deallocate(mach_task_self_, voucher);
LABEL_887:
                                              mach_port_deallocate(mach_task_self_, act_list[v208]);
                                              putchar(10);
                                              ++v208;
                                            }

                                            while (v208 < x[1]);
                                          }
                                        }

                                        putchar(10);
                                        v35 = v387;
LABEL_891:
                                        ++v36;
                                        v34 = task_listCnt;
                                        v33 = size[1] == 0;
                                      }

                                      while (v36 < task_listCnt && !size[1]);
                                    }
                                  }
                                }

                                else
                                {
                                  v34 = 0;
                                  v33 = size[1] == 0;
                                }

                                if (!v382)
                                {
                                  goto LABEL_989;
                                }

                                if (v33)
                                {
                                  puts("Coalitions: ");
                                  v34 = task_listCnt;
                                }

                                v407 = task_list;
                                v288 = proc_listpids(1u, 0, 0, 0);
                                if (v288 <= 0)
                                {
                                  v296 = __stderrp;
                                  v297 = *__error();
                                  fprintf(v296, "proc_listpids(PROC_ALL_PIDS): %d\n");
                                }

                                else
                                {
                                  if ((2 * v288) <= 0x1E)
                                  {
                                    v289 = 30;
                                  }

                                  else
                                  {
                                    v289 = (2 * v288);
                                  }

                                  v290 = malloc_type_malloc(v289, 0x5A072193uLL);
                                  v291 = proc_listpids(1u, 0, v290, v289);
                                  if (v291 > 0)
                                  {
                                    v292 = v291;
                                    v293 = v291 >> 2;
                                    v294 = malloc_type_calloc(v293, 0xA0uLL, 0x1000040B8406A4EuLL);
                                    v411 = v290;
                                    if (v292 < 4)
                                    {
                                      __nelb = 0;
LABEL_910:
                                      free(v411);
                                      v295 = v294;
                                      goto LABEL_914;
                                    }

                                    __nelb = 0;
                                    while (1)
                                    {
                                      v337 = &v294[160 * __nelb];
                                      if (proc_name(*v290, v337 + 24, 0x40u) < 0)
                                      {
                                        v342 = *v290;
                                        fprintf(__stderrp, "skipping pid %d (proc_name)\n");
                                      }

                                      else
                                      {
                                        LODWORD(v485) = *v290;
                                        v338 = v485;
                                        *__error() = 0;
                                        *&v592 = 0;
                                        v591 = 0u;
                                        *__endptr = 0u;
                                        if (proc_pidinfo(v338, 20, 1uLL, __endptr, 40) == 40)
                                        {
                                          *__error() = 0;
                                          *&v495 = 0;
                                          *&buffer = 8;
                                          if ((sysctlbyname("kern.coalition_roles", &v495, &buffer, &v485, 4uLL) & 0x80000000) == 0 && buffer == 8 || (byte_100010001 & 1) == 0 && *__error() == 2)
                                          {
                                            *v337 = *__endptr;
                                            *(v337 + 2) = v495;
                                            v339 = *v290;
                                            v340.i64[0] = -1;
                                            v340.i64[1] = -1;
                                            v591 = v340;
                                            *__endptr = v340;
                                            LODWORD(v495) = 0;
                                            if (!task_name_for_pid(mach_task_self_, v339, &v495))
                                            {
                                              LODWORD(buffer) = 8;
                                              task_info(v495, 0xFu, __endptr, &buffer);
                                              mach_port_deallocate(mach_task_self_, v495);
                                            }

                                            if (v591.i32[1] == -1)
                                            {
                                              v348 = *v290;
                                              fprintf(__stderrp, "skipping pid %d (get_audit_token)\n");
                                            }

                                            else
                                            {
                                              v341 = *__endptr;
                                              *(v337 + 104) = v591;
                                              *(v337 + 88) = v341;
                                              *(v337 + 120) = 0u;
                                              *(v337 + 136) = 0u;
                                              *(v337 + 38) = *v290;
                                              ++__nelb;
                                            }

                                            goto LABEL_1011;
                                          }

                                          v345 = __stderrp;
                                          v346 = *__error();
                                          fprintf(v345, "kern.coalition_roles(%d): %d\n");
                                        }

                                        else
                                        {
                                          v343 = __stderrp;
                                          v344 = *__error();
                                          fprintf(v343, "PROC_PIDCOALITIONINFO(%d): %d\n");
                                        }

                                        v347 = *v290;
                                        fprintf(__stderrp, "skipping pid %d (fill_coalitions)\n");
                                      }

LABEL_1011:
                                      ++v290;
                                      if (!--v293)
                                      {
                                        goto LABEL_910;
                                      }
                                    }
                                  }

                                  v298 = __stderrp;
                                  v299 = *__error();
                                  fprintf(v298, "proc_listpids(PROC_ALL_PIDS, pids): %d\n");
                                }

                                __nelb = 0;
                                v295 = 0;
LABEL_914:
                                if (v382 == 3)
                                {
                                  v300 = 0;
                                  v404 = 0;
                                  v301 = sub_1000060C8;
                                }

                                else
                                {
                                  v301 = sub_100006070;
                                  v300 = 1;
                                  v404 = 1;
                                }

                                qsort(v295, __nelb, 0xA0uLL, v301);
                                printf("PID   Command                           ");
                                printf("Resource  Jetsam ");
                                printf(" Role   ");
                                printf("  Apptype  Background App Nap");
                                if (v406)
                                {
                                  printf(" (coalition names, bundle ids)");
                                }

                                putchar(10);
                                if (__nelb)
                                {
                                  v302 = 0;
                                  v303 = 0;
                                  if (!__s1)
                                  {
                                    v300 = 0;
                                  }

                                  v399 = v300;
                                  do
                                  {
                                    v304 = &v295[160 * v303];
                                    v305 = *(v304 + 5) + 1;
                                    v306 = "unknown";
                                    if (v305 <= 4)
                                    {
                                      v306 = (&off_10000C558)[v305];
                                    }

                                    v307 = *&v304[4 * v404 + 16] == 1;
                                    if (!v300)
                                    {
LABEL_940:
                                      if (*(v304 + 38) < 2u || v307)
                                      {
                                        printf("%-5d %-34s");
                                      }

                                      else
                                      {
                                        printf("  %-5d %-32s");
                                      }

                                      printf(" %7llu %7llu ", *v304, *(v304 + 1));
                                      printf(" %s ", v306);
                                      v311 = v387;
                                      v312 = v34;
                                      v313 = v407;
                                      if (!v34)
                                      {
                                        goto LABEL_951;
                                      }

                                      while (1)
                                      {
                                        v314 = *v311++;
                                        if (v314 == *(v304 + 38))
                                        {
                                          break;
                                        }

                                        ++v313;
                                        if (!--v312)
                                        {
                                          goto LABEL_951;
                                        }
                                      }

                                      v315 = *v313;
                                      if (!*v313)
                                      {
LABEL_951:
                                        fprintf(__stderrp, "could not find task for pid %d", *(v304 + 38));
                                        v315 = 0;
                                      }

                                      v593 = 0u;
                                      v592 = 0u;
                                      v591 = 0u;
                                      *__endptr = 0u;
                                      if (*(v304 + 38))
                                      {
                                        LODWORD(v495) = 16;
                                        LODWORD(buffer) = 0;
                                        v316 = task_policy_get(v315, 4u, __endptr, &v495, &buffer);
                                        if (v316)
                                        {
                                          mach_error("task_policy_get(TASK_POLICY_STATE)", v316);
                                        }

                                        v317 = DWORD2(v593);
                                        v318 = (v593 >> 17) & 7;
                                        if (v318 == 5)
                                        {
                                          v319 = sub_100005D70((DWORD2(v593) >> 20) & 0xF, 1);
LABEL_959:
                                          printf("  %s ", v319);
                                          v320 = *(v304 + 1);
                                          v321 = coalition_policy_get();
                                          if (v321 == 1)
                                          {
                                            printf(" CBG ");
                                          }

                                          else if (v321 == -1)
                                          {
                                            perror("coalition_policy_get(COALITION_POLICY_SUPPRESS) failed");
                                          }

                                          else
                                          {
                                            printf("     ");
                                          }

                                          if ((__endptr[1] & 0x10) != 0)
                                          {
                                            printf(" TBG ");
                                          }

                                          else
                                          {
                                            printf("     ");
                                          }

                                          v322 = " Nap     ";
                                          if ((*&v317 & 0x80000) == 0)
                                          {
                                            v322 = "         ";
                                          }

                                          if ((v592 & 0x10) != 0)
                                          {
                                            printf(" Suspend ");
                                          }

                                          else
                                          {
                                            printf(v322);
                                          }

                                          if (v406 && *(v304 + 38))
                                          {
                                            v323 = v295;
                                            v324 = *v304;
                                            v325 = sub_1000053D4();
                                            v327 = v326;
                                            v328 = *(v304 + 1);
                                            v329 = sub_1000053D4();
                                            v330 = v329;
                                            v332 = v331;
                                            if ((!(v329 | v325) || v325 && v329 && !strcmp(v325, v329)) && (!(v332 | v327) || v327 && v332 && !strcmp(v327, v332)))
                                            {
                                              v333 = v325;
                                              v334 = v327;
                                            }

                                            else
                                            {
                                              sub_10000547C(v325, v327);
                                              v333 = v330;
                                              v334 = v332;
                                            }

                                            sub_10000547C(v333, v334);
                                            free(v325);
                                            free(v327);
                                            free(v330);
                                            free(v332);
                                            v295 = v323;
                                            v300 = v399;
                                          }

                                          putchar(10);
                                          goto LABEL_985;
                                        }
                                      }

                                      else
                                      {
                                        v318 = 0;
                                        v317 = 0;
                                      }

                                      v319 = sub_100005C84(v318, 1);
                                      goto LABEL_959;
                                    }

                                    if (!strncmp(__s1, v304 + 24, 0x20uLL))
                                    {
                                      if (v302)
                                      {
                                        v309 = 0;
                                      }

                                      else
                                      {
                                        v309 = v307;
                                      }

                                      if (v309)
                                      {
LABEL_937:
                                        v302 = *(v304 + 1);
                                      }
                                    }

                                    else if (v386 && *(v304 + 38) == v385 && v307 && v302 == 0)
                                    {
                                      goto LABEL_937;
                                    }

                                    if (v302 && v302 == *(v304 + 1))
                                    {
                                      goto LABEL_940;
                                    }

LABEL_985:
                                    ++v303;
                                  }

                                  while (v303 != __nelb);
                                }

                                free(v295);
                                v34 = task_listCnt;
LABEL_989:
                                if (v34)
                                {
                                  v335 = 0;
                                  do
                                  {
                                    mach_port_deallocate(mach_task_self_, task_list[v335++]);
                                  }

                                  while (v335 < task_listCnt);
                                }

                                if (cf)
                                {
                                  CFRelease(cf);
                                  stackshot_config_dealloc();
                                }

                                free(v387);
                                free(v383);
                                return 0;
                              }

                              v352 = 0;
                              v353 = 0;
                              v354 = 0;
                              v355 = 0;
                              v356 = 0;
                              v357 = 1;
                              while (1)
                              {
                                v358 = *(stackshot_buffer + 4);
                                v359 = v351 + v358;
                                if (v351 + v358 > v350)
                                {
                                  goto LABEL_82;
                                }

                                v360 = *stackshot_buffer;
                                if (*stackshot_buffer == -242132755)
                                {
                                  goto LABEL_82;
                                }

                                v361 = (v360 & 0xFFFFFFF0) == 0x20 ? 17 : *stackshot_buffer;
                                if (v361 <= 19)
                                {
                                  break;
                                }

                                if (v361 != 20)
                                {
                                  if (v361 == 2309)
                                  {
                                    if ((v357 & 1) == 0)
                                    {
                                      v357 = 0;
                                      v356 = stackshot_buffer + 16;
                                      goto LABEL_1094;
                                    }

                                    v26 = __stderrp;
                                    v27 = "Encountered task snapshot outside of a container while generating boost map\n";
                                    v28 = 76;
                                  }

                                  else
                                  {
                                    if (v361 != 2352)
                                    {
                                      goto LABEL_1094;
                                    }

                                    if ((v357 & 1) == 0)
                                    {
                                      v357 = 0;
                                      v355 = stackshot_buffer + 16;
                                      goto LABEL_1094;
                                    }

                                    v26 = __stderrp;
                                    v27 = "Encountered transitioning task snapshot outside of a container while generating boost map\n";
                                    v28 = 90;
                                  }

                                  goto LABEL_79;
                                }

                                if (v357)
                                {
                                  goto LABEL_1037;
                                }

                                if (*(stackshot_buffer + 8) == v354)
                                {
                                  if (v356 | v355)
                                  {
                                    if (!v352 || v353)
                                    {
                                      if (!v352)
                                      {
LABEL_1037:
                                        v357 = 1;
                                        goto LABEL_1094;
                                      }

                                      v394 = v350;
                                      v377 = v24;
                                      v365 = 0;
                                      v366 = v356 + 88;
                                      *v402 = v355;
                                      if (!v356)
                                      {
                                        v366 = v355 + 28;
                                      }

                                      v412 = v366;
                                      v397 = v354;
                                      v400 = (v355 + 24);
                                      if (v356)
                                      {
                                        v367 = (v356 + 84);
                                      }

                                      else
                                      {
                                        v367 = (v355 + 24);
                                      }

                                      v408 = v367;
                                      while (2)
                                      {
                                        v368 = *(v353 + 4 * v365);
                                        if (v356)
                                        {
                                          v369 = (v356 + 84);
                                          goto LABEL_1065;
                                        }

                                        if (!*v402)
                                        {
                                          goto LABEL_1066;
                                        }

                                        v369 = v400;
LABEL_1065:
                                        if (v368 != *v369)
                                        {
LABEL_1066:
                                          v370 = CFDictionaryGetValue(cf, v368);
                                          if (!v370)
                                          {
                                            v370 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                            CFDictionarySetValue(cf, *(v353 + 4 * v365), v370);
                                            CFRelease(v370);
                                          }

                                          v371 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]", v412, *v408);
                                          CFArrayAppendValue(v370, v371);
                                          CFRelease(v371);
                                        }

                                        if (v352 == ++v365)
                                        {
                                          v359 = v351 + *(stackshot_buffer + 4);
                                          v357 = 1;
                                          v24 = v377;
                                          v354 = v397;
                                          v355 = *v402;
                                          v350 = v394;
                                          goto LABEL_1094;
                                        }

                                        continue;
                                      }
                                    }

                                    v26 = __stderrp;
                                    v27 = "Donating pids count was non-zero with a NULL array while generating boost map\n";
                                    v28 = 78;
                                  }

                                  else
                                  {
                                    v26 = __stderrp;
                                    v27 = "Encountered container end without a corresponding task snapshot while generating boost map\n";
                                    v28 = 91;
                                  }

                                  goto LABEL_79;
                                }

                                v357 = 0;
LABEL_1094:
                                v351 = v359 + 16;
                                stackshot_buffer = v359;
                                if (v359 + 16 > v350)
                                {
                                  goto LABEL_82;
                                }
                              }

                              if (v361 != 17)
                              {
                                if (v361 != 19)
                                {
                                  goto LABEL_1094;
                                }

                                if (v358 < 4 || v360 != 19)
                                {
                                  fprintf(__stderrp, "Encountered invalid container while generating boost map (id 0x%llx)\n", *(stackshot_buffer + 8));
                                  goto LABEL_80;
                                }

                                v362 = *(stackshot_buffer + 16);
                                if (v362 == 2307 || v362 == 2353)
                                {
                                  v356 = 0;
                                  v355 = 0;
                                  v357 = 0;
                                  v353 = 0;
                                  v352 = 0;
                                  v354 = *(stackshot_buffer + 8);
                                }

                                goto LABEL_1094;
                              }

                              if (v360 != 17 && (v360 & 0xFFFFFFF0) != 0x20)
                              {
LABEL_1097:
                                fwrite("Encountered invalid array iterator while generating boost map\n", 0x3EuLL, 1uLL, __stderrp);
                                goto LABEL_80;
                              }

                              v363 = *(stackshot_buffer + 8);
                              if (v363)
                              {
                                if (v360 == 17)
                                {
                                  if (SHIDWORD(v363) > 2313)
                                  {
                                    if (SHIDWORD(v363) <= 2315)
                                    {
                                      if (HIDWORD(v363) != 2314)
                                      {
                                        goto LABEL_1086;
                                      }
                                    }

                                    else if (HIDWORD(v363) != 2316)
                                    {
                                      if (HIDWORD(v363) != 2317)
                                      {
                                        if (HIDWORD(v363) != 2369)
                                        {
                                          goto LABEL_1097;
                                        }

                                        v364 = 48;
                                        goto LABEL_1089;
                                      }

LABEL_1086:
                                      v364 = 16;
                                      goto LABEL_1089;
                                    }

LABEL_1087:
                                    v364 = 8;
                                    goto LABEL_1089;
                                  }

                                  if (SHIDWORD(v363) > 2073)
                                  {
                                    if (HIDWORD(v363) == 2074)
                                    {
                                      goto LABEL_1087;
                                    }

                                    if (HIDWORD(v363) != 2311)
                                    {
                                      goto LABEL_1097;
                                    }

                                    v364 = 4;
                                  }

                                  else if (HIDWORD(v363) == 48)
                                  {
                                    v364 = 20;
                                  }

                                  else
                                  {
                                    if (HIDWORD(v363) != 49)
                                    {
                                      goto LABEL_1097;
                                    }

                                    v364 = 24;
                                  }

LABEL_1089:
                                  if (v358 / v364 < v363 || v358 % v363 >= 0x10)
                                  {
                                    goto LABEL_1097;
                                  }

LABEL_1091:
                                  if (HIDWORD(v363) == 2311)
                                  {
                                    if (v357)
                                    {
                                      v26 = __stderrp;
                                      v27 = "Encountered donating pids array outside of a container while generating boost map\n";
                                      v28 = 82;
                                      goto LABEL_79;
                                    }

                                    v357 = 0;
                                    v353 = stackshot_buffer + 16;
                                    v352 = v363;
                                  }

                                  goto LABEL_1094;
                                }

                                v372 = *stackshot_buffer & 0xF;
                                v373 = v358 >= v372;
                                v374 = v358 - v372;
                                if (!v373 || v374 < v363)
                                {
                                  goto LABEL_1097;
                                }

                                LODWORD(v358) = v374 % v363;
                              }

                              if (v358)
                              {
                                goto LABEL_1097;
                              }

                              goto LABEL_1091;
                            }

                            fwrite("Unable to allocate boost dictionary\n", 0x24uLL, 1uLL, __stderrp);
                            stackshot_config_dealloc();
                          }

                          else
                          {
                            fwrite("Unable to create stackshot config\n", 0x22uLL, 1uLL, __stderrp);
                          }
                        }

LABEL_81:
                        cf = 0;
                        goto LABEL_82;
                      }

                      fwrite("processor_set_tasks_with_flavor(TASK_FLAVOR_READ) returned 0 tasks", 0x42uLL, 1uLL, __stderrp);
                      LODWORD(v480) = 0;
                      v22 = task_listCnt;
                      if (task_listCnt)
                      {
LABEL_63:
                        v403 = 0;
                        goto LABEL_64;
                      }
                    }

                    v23 = processor_set_tasks_with_flavor(set, 2u, &task_list, &task_listCnt);
                    if (!v23)
                    {
                      v22 = task_listCnt;
                      if (task_listCnt)
                      {
                        goto LABEL_63;
                      }

                      fwrite("processor_set_tasks_with_flavor(TASK_FLAVOR_INSPECT) returned 0 tasks", 0x45uLL, 1uLL, __stderrp);
LABEL_1113:
                      exit(1);
                    }

                    v375 = v23;
                    v376 = "processor_set_tasks_with_flavor(TASK_FLAVOR_INSPECT)";
                  }
                }
              }

              mach_error(v376, v375);
              goto LABEL_1113;
            }

            v405 = 1;
            if (optarg)
            {
              v405 = sub_100005274() != 0;
            }
          }
        }

        if (v5 > 5)
        {
          break;
        }

        if (v5 == 4)
        {
          v7 = optarg;
          v4 = 2;
          if (strcmp(optarg, "jetsam"))
          {
            v4 = 3;
            if (strcmp(v7, "resource"))
            {
              sub_100006120(v7);
            }
          }
        }

        else
        {
          if (optarg)
          {
            v6 = sub_100005274() != 0;
          }

          else
          {
            v6 = 1;
          }

          byte_100010000 = v6;
        }
      }

      if (v5 != 6)
      {
        break;
      }

      v406 = 1;
      if (optarg)
      {
        v406 = sub_100005274() != 0;
      }
    }

    if (v5 != 8)
    {
      break;
    }

    v480 = 0x100000001;
    v406 = 1;
    size[2] = 1;
    v4 = 2;
  }

  if (v5 == 7)
  {
    sub_10000615C();
  }

LABEL_72:
  puts("usage:");
  puts("\ttaskinfo [process-name|pid] [-h|--help] [--threads] [--dq] [--boosts] [--verbose] [--all]");
  puts("\t\t [--precise(=1|0)] [--xpcinfo(=1|0)] [--coalitions-only] [--threadcounts(=1|0)]");
  puts("\t\t [--vouchers(=1|0)] [--coalitions=(all|jetsam|resource)]");
  return 0;
}

unint64_t sub_100005274()
{
  __endptr = 0;
  result = strtoull(optarg, &__endptr, 10);
  if (__endptr == optarg || *__endptr)
  {
    sub_100006440(optarg);
  }

  return result;
}

uint64_t sub_1000052D4(const char *a1)
{
  v4 = 0;
  v3 = 4;
  *__error() = 0;
  if (sysctlbyname(a1, &v4, &v3, 0, 0) != -1)
  {
    return 1;
  }

  if (*__error() != 2)
  {
    perror(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_100005358(const char *a1)
{
  v4 = 0;
  v3 = 4;
  *__error() = 0;
  if (sysctlbyname(a1, &v4, &v3, 0, 0) == -1 && *__error() != 2)
  {
    perror(a1);
  }

  return v4;
}

char *sub_1000053D4()
{
  v0 = xpc_coalition_copy_info();
  if (xpc_get_type(v0) != &_xpc_type_dictionary)
  {
    v1 = strdup("coalition unknown");
    v2 = "to launchd";
LABEL_7:
    strdup(v2);
    return v1;
  }

  string = xpc_dictionary_get_string(v0, XPC_COALITION_INFO_KEY_NAME);
  if (string)
  {
    v1 = strdup(string);
  }

  else
  {
    v1 = 0;
  }

  v2 = xpc_dictionary_get_string(v0, XPC_COALITION_INFO_KEY_BUNDLE_IDENTIFIER);
  if (v2)
  {
    goto LABEL_7;
  }

  return v1;
}

uint64_t sub_10000547C(char *__s1, char *__s2)
{
  if (__s1 && __s2)
  {
    if (strcmp(__s1, __s2))
    {
      return printf(" (%s, %s)");
    }

    return printf(" (%s)");
  }

  if (__s1 || __s2)
  {
    return printf(" (%s)");
  }

  return printf(" ()");
}

uint64_t sub_100005518(const char *a1, unint64_t *a2, void *a3, int a4, const char *a5)
{
  v9 = a2[3] + a2[2];
  v10 = a3[2];
  v11 = a3[3];
  printf("%s %llu.%06llu s ", a1, v9 * dword_100010004 / unk_100010008 / 0x3B9ACA00, v9 * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8);
  if (a4)
  {
    if (v11 + v10)
    {
      v12 = v9 * 100.0 / (v11 + v10);
    }

    else
    {
      v12 = 0.0;
    }

    printf("(%.2f%%%s) ", v12, a5);
  }

  v13 = a2[1];
  if (byte_100010000 == 1)
  {
    v27 = a2[1];
    v28 = *a2;
    printf("(%llu cycles, %llu instructions");
  }

  else
  {
    v14 = *a2;
    printf("(%.2f%s cycles, %.2f%s instructions");
  }

  v15 = a2[1];
  if (v15)
  {
    v16 = *a2 / v15;
  }

  else
  {
    v16 = 0.0;
  }

  printf(", IPC %.3f, ", v16);
  v17 = (v9 * dword_100010004 / unk_100010008) / 1000000000.0;
  if (v17 != 0.0)
  {
    v18 = a2[1] / v17;
    if ((byte_100010000 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    printf("%.0f hz ");
    goto LABEL_18;
  }

  if (byte_100010000 == 1)
  {
    goto LABEL_16;
  }

LABEL_17:
  printf("%.2f%s%s, ");
LABEL_18:
  v19 = a2[4];
  sub_100005A3C();
  if (a4)
  {
    v20 = a3[4];
    if (v20)
    {
      v21 = a2[4] * 100.0 / v20;
    }

    else
    {
      v21 = 0.0;
    }

    printf(" (%.2f%%%s)", v21, a5);
  }

  printf(") ");
  v22 = a2[2];
  v23 = a2[3];
  if (v9)
  {
    v24 = v22 * 100.0 / v9;
    v25 = v23 * 100.0 / v9;
  }

  else
  {
    v24 = 0.0;
    v25 = 0.0;
  }

  return printf("user/system: %llu.%06llu / %llu.%06llu (%.0f%% / %.0f%%)\n", v22 * dword_100010004 / unk_100010008 / 0x3B9ACA00, v22 * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8, v23 * dword_100010004 / unk_100010008 / 0x3B9ACA00, v23 * dword_100010004 / unk_100010008 % 0x3B9ACA00 / 0x3E8, v24, v25);
}

uint64_t sub_100005A3C()
{
  if (byte_100010000 == 1)
  {
    return printf("%llu nJ %.0f nW");
  }

  else
  {
    return printf("%.2f%s%s, %.2f%s%s");
  }
}

const char *sub_100005C84(int a1, int a2)
{
  if (a1 > 3)
  {
    v2 = "TASK_APPTYPE_APP_NONUI";
    if (a2)
    {
      v2 = "NonUIApp";
    }

    v7 = "TASK_APPTYPE_DRIVER";
    if (a2)
    {
      v7 = "Driver  ";
    }

    v8 = "TASK_APPTYPE_DAEMON_BACKGROUND";
    if (a1 != 6)
    {
      v2 = v7;
    }

    v5 = "TASK_APPTYPE_APP_DEFAULT";
    if (a2)
    {
      v8 = "BG Dmon ";
      v5 = "App     ";
    }

    if (a1 == 4)
    {
      v5 = v8;
    }

    v6 = a1 <= 5;
  }

  else
  {
    v2 = "TASK_APPTYPE_DAEMON_STANDARD";
    if (a2)
    {
      v2 = "Std Dmon";
    }

    v3 = "TASK_APPTYPE_DAEMON_ADAPTIVE";
    if (a2)
    {
      v3 = "Adaptive";
    }

    v4 = "TASK_APPTYPE_NONE";
    if (a1 != 2)
    {
      v2 = v3;
    }

    v5 = "TASK_APPTYPE_DAEMON_INTERACTIVE";
    if (a2)
    {
      v4 = "        ";
      v5 = "Int Dmon";
    }

    if (!a1)
    {
      v5 = v4;
    }

    v6 = a1 <= 1;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

const char *sub_100005D70(int a1, int a2)
{
  v2 = "???";
  if (a1 > 4)
  {
    v3 = "TASK_DEFAULT_APPLICATION (PRIO_DARWIN_ROLE_UI)";
    if (a2)
    {
      v3 = "UI App  ";
    }

    v9 = "TASK_DARWINBG_APPLICATION (PRIO_DARWIN_ROLE_DARWIN_BG)";
    if (a2)
    {
      v9 = "DarwinBG";
    }

    v10 = "TASK_USER_INIT_APPLICATION (PRIO_DARWIN_ROLE_USER_INIT)";
    if (a2)
    {
      v10 = "UserInit";
    }

    if (a1 != 9)
    {
      v10 = "???";
    }

    if (a1 != 8)
    {
      v9 = v10;
    }

    if (a1 != 7)
    {
      v3 = v9;
    }

    v11 = "TASK_THROTTLE_APPLICATION (PRIO_DARWIN_ROLE_TAL_LAUNCH)";
    if (a2)
    {
      v11 = "TAL App ";
    }

    v12 = "TASK_NONUI_APPLICATION (PRIO_DARWIN_ROLE_NON_UI)";
    if (a2)
    {
      v12 = "Non-UI  ";
    }

    if (a1 == 6)
    {
      v2 = v12;
    }

    if (a1 == 5)
    {
      v2 = v11;
    }

    v8 = a1 <= 6;
  }

  else
  {
    v3 = "TASK_BACKGROUND_APPLICATION (PRIO_DARWIN_ROLE_UI_NON_FOCAL)";
    if (a2)
    {
      v3 = "NonFocal";
    }

    v4 = "TASK_CONTROL_APPLICATION";
    if (a2)
    {
      v4 = "Control ";
    }

    v5 = "TASK_GRAPHICS_SERVER";
    if (a2)
    {
      v5 = "Graphics";
    }

    if (a1 != 4)
    {
      v5 = "???";
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v6 = "TASK_UNSPECIFIED (PRIO_DARWIN_ROLE_DEFAULT)";
    if (a2)
    {
      v6 = "App     ";
    }

    v7 = "TASK_FOREGROUND_APPLICATION (PRIO_DARWIN_ROLE_UI_FOCAL)";
    if (a2)
    {
      v7 = "FocalApp";
    }

    if (a1 == 1)
    {
      v2 = v7;
    }

    if (!a1)
    {
      v2 = v6;
    }

    v8 = a1 <= 1;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_100005EC4(id a1)
{
  v1 = 4;
  if (sysctlbyname("hw.nperflevels", &dword_100010020, &v1, 0, 0) == -1)
  {
    perror("sysctlbyname(hw.nperflevels)");
  }

  if (dword_100010020 >= 3)
  {
    fprintf(__stderrp, "count:%u exceeds STATIC_PERFLEVEL_COUNT:%d skipping PROC_PIDTHREADCOUNTS data\n", dword_100010020, 2);
    byte_100010003 = 0;
  }
}

void sub_100005F58(id a1)
{
  if (qword_100010018 != -1)
  {
    sub_10000647C();
  }

  v1 = dword_100010020;
  if (dword_100010020)
  {
    v2 = 0;
    v3 = &unk_100010080;
    do
    {
      v7 = 0u;
      v8 = 0u;
      *__str = 0u;
      v6 = 0u;
      snprintf(__str, 0x40uLL, "hw.perflevel%u.name", v2);
      v4 = 32;
      if (sysctlbyname(__str, v3, &v4, 0, 0) == -1)
      {
        perror(__str);
      }

      ++v2;
      v3 += 32;
    }

    while (v1 != v2);
  }
}

uint64_t sub_100006058(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100006070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  if (*(a1 + 20) == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 20) == 1)
  {
    return 1;
  }

  v5 = *(a1 + 152);
  v6 = *(a2 + 152);
  v8 = __OFSUB__(v5, v6);
  v7 = v5 - v6 < 0;
  v9 = v5 > v6;
  if (v7 != v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1000060C8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  if (*(a1 + 16) == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 16) == 1)
  {
    return 1;
  }

  v3 = *(a1 + 152);
  v4 = *(a2 + 152);
  v6 = __OFSUB__(v3, v4);
  v5 = v3 - v4 < 0;
  v7 = v3 > v4;
  if (v5 != v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void sub_100006198()
{
  v0 = getuid();
  v1 = geteuid();
  errx(77, "must be run as root, running as uid:%u euid:%u", v0, v1);
}