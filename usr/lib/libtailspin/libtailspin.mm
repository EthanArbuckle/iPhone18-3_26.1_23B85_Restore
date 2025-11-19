uint64_t tailspin_dump_output_with_options(int a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = sub_22EE82668();
  v11 = sub_22EE826AC(a1, v9);

  if (v11)
  {
    v12 = getpid();
    v13 = *__error();
    v14 = sub_22EE82CE0();
    v15 = v14;
    if ((v12 - 1) <= 0xFFFFFFFD && os_signpost_enabled(v14))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_22EE81000, v15, OS_SIGNPOST_EVENT, v12, "ClientRequestedDump", &unk_22EEB0741, v18, 2u);
    }

    *__error() = v13;
    sub_22EE82D38(v10, v11, v7, v8);

    v16 = 0;
  }

  else
  {
    v16 = 22;
  }

  return v16;
}

id sub_22EE82668()
{
  if (qword_280B25FB8 != -1)
  {
    sub_22EE82D24();
  }

  v1 = qword_280B25FB0;

  return v1;
}

id sub_22EE826AC(int a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "tailspin_request_type", 2uLL);
  xpc_dictionary_set_fd(v4, "tailspin_dump_fd", a1);
  v5 = mach_continuous_time();
  xpc_dictionary_set_uint64(v4, "tailspin_dump_request_timestamp", v5);
  if (!v3)
  {
    goto LABEL_4;
  }

  v12 = 0;
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:&v12];
  v7 = v12;
  if (v6)
  {
    xpc_dictionary_set_data(v4, "tailspin_dump_options", [v6 bytes], objc_msgSend(v6, "length"));

LABEL_4:
    v8 = v4;
    goto LABEL_8;
  }

  v9 = *__error();
  v10 = sub_22EE82CE0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA98AC(v7);
  }

  *__error() = v9;
  v8 = 0;
LABEL_8:

  return v8;
}

void *tailspin_make_ondisk_config(uint64_t *a1, char a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (!v4)
  {
    sub_22EEA659C();
  }

  v5 = v4;
  if ((a2 & 1) != 0 || (*a1 & 0x80) != 0)
  {
    if (*(a1 + 8360))
    {
      v6 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = MEMORY[0x277CBEC28];
    }

    [v4 setObject:v6 forKeyedSubscript:@"Enabled"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 8361];
    [v5 setObject:v7 forKeyedSubscript:@"EnabledModifier"];
  }

  v8 = *(a1 + 2) - 1;
  if (v8 <= 2)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:off_278870D28[v8]];
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (!v9)
  {
    sub_22EEA659C();
  }

  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    if ((*a1 & 2) == 0)
    {
LABEL_15:
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1[1030]];
  [v10 setObject:v12 forKeyedSubscript:@"BufferSizeMegabytes"];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1031];
  [v10 setObject:v13 forKeyedSubscript:@"BufferSizeModifier"];

  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    goto LABEL_15;
  }

LABEL_16:
  v14 = MEMORY[0x2318F9C40](a1 + 12);
  if (!v14)
  {
    sub_22EEA659C();
  }

  v15 = v14;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  [v10 setObject:v16 forKeyedSubscript:@"FilterDescriptor"];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 8204];
  [v10 setObject:v17 forKeyedSubscript:@"FilterDescriptorModifier"];

  free(v15);
LABEL_18:
  if ([v10 count])
  {
    [v5 setObject:v10 forKeyedSubscript:@"KDebug"];
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  if (!v18)
  {
    sub_22EEA659C();
  }

  v19 = v18;
  if ((a2 & 1) != 0 || (v20 = *a1, (*a1 & 0x10) != 0))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1040]];
    [v19 setObject:v21 forKeyedSubscript:@"OnCoreSamplingPeriodNanoseconds"];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1041];
    [v19 setObject:v22 forKeyedSubscript:@"OnCoreSamplingPeriodModifier"];

    if (a2)
    {
      goto LABEL_26;
    }

    v20 = *a1;
  }

  if ((v20 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1035]];
  [v19 setObject:v23 forKeyedSubscript:@"FullSystemSamplingPeriodNanoseconds"];

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1036];
  [v19 setObject:v24 forKeyedSubscript:@"FullSystemSamplingPeriodModifier"];

  if ((a2 & 1) == 0)
  {
    v20 = *a1;
LABEL_28:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_30;
    }
  }

  v25 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 2099) & 1];
  [v19 setObject:v25 forKeyedSubscript:@"IsCswitchSamplingEnabled"];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 2099) >> 1) & 1];
  [v19 setObject:v26 forKeyedSubscript:@"IsSyscallSamplingEnabled"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 2099) >> 2) & 1];
  [v19 setObject:v27 forKeyedSubscript:@"IsVMFaultSamplingEnabled"];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 1050];
  [v19 setObject:v28 forKeyedSubscript:@"CswitchSamplingEnabledModifier"];

LABEL_30:
  if ([v19 count])
  {
    [v5 setObject:v19 forKeyedSubscript:@"Sampling"];
  }

  v29 = [MEMORY[0x277CBEB38] dictionary];
  if (!v29)
  {
    sub_22EEA659C();
  }

  v30 = v29;
  if ((a2 & 1) != 0 || (*a1 & 0x40) != 0)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 8432)];
    [v30 setObject:v31 forKeyedSubscript:@"CPUTraceEnabled"];

    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1 + 8433];
    [v30 setObject:v32 forKeyedSubscript:@"CPUTraceEnabledModifier"];
  }

  if ([v30 count])
  {
    [v5 setObject:v30 forKeyedSubscript:@"CPUTrace"];
  }

  if ([v5 count])
  {
    v33 = v5;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  return v33;
}

id sub_22EE82CE0()
{
  if (qword_280B25FA8 != -1)
  {
    sub_22EE85514();
  }

  v1 = qword_280B25FA0;

  return v1;
}

void sub_22EE82D38(_xpc_connection_s *a1, void *a2, NSObject *a3, void *a4)
{
  v7 = a4;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_22EE85484;
  handler[3] = &unk_278871340;
  v10 = v7;
  v8 = v7;
  xpc_connection_send_message_with_reply(a1, a2, a3, handler);
}

uint64_t get_responsible_pid_and_name(uint64_t a1, char *a2, uint32_t a3)
{
  if (!proc_name(a1, a2, a3))
  {
    strlcpy(a2, "<unknown>", a3);
  }

  return a1;
}

void tailspin_save_trace_with_standard_chunks(int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v139 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v86 = a5;
  v87 = a6;
  v16 = a7;
  v85 = a8;
  v92 = a9;
  v128[0] = 0;
  v128[1] = v128;
  v128[2] = 0x2020000000;
  v128[3] = 0;
  v88 = v16;
  mach_timebase_info(&info);
  [v16 startRecordingTimeForSaveStandardChunksPhase:a2 pid:a3];
  v82 = a3;
  v84 = a2;
  if (v15)
  {
    v17 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_min_timestamp"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v83 = [v17 unsignedLongLongValue];
    }

    else
    {
      v83 = 0;
    }

    v18 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_max_timestamp"];

    v19 = v18;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v89 = [v18 unsignedLongLongValue];
    }

    else
    {
      v89 = 0;
    }

    v20 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_end_timestamp"];

    v21 = v20;
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v20 unsignedLongLongValue];
      }
    }

    v22 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_reason_string"];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = v22;
      v24 = [v22 UTF8String];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_scrub_output"];

    v26 = v25;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v27 = [v25 BOOLValue];
    }

    else
    {
      v27 = 0;
    }

    v28 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_target_pid"];

    v29 = v28;
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v81 = [v28 intValue];
    }

    else
    {
      v81 = -1;
    }

    v30 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_fullfsync_after_events"];

    v31 = v30;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = [v30 BOOLValue];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_ktrace_compression_level"];

    v34 = v33;
    if (v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v33 intValue];
      }
    }

    v35 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_resample_truncated_stacks"];

    v36 = v35;
    if (v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v35 BOOLValue];
      }
    }

    v37 = [v15 objectForKeyedSubscript:@"tailspin_dump_option_should_collect_cputrace"];

    if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = [v37 BOOLValue];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
    v32 = 0;
    v27 = 0;
    v24 = 0;
    v89 = 0;
    v83 = 0;
    v81 = -1;
  }

  v39 = mach_absolute_time();
  if (v89 > v39)
  {
    v40 = (v89 - v39) * info.numer / info.denom;
    if (v40 > 0x12A05F200)
    {
      v41 = *__error();
      v42 = sub_22EE82CE0();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8B78();
      }

      *__error() = v41;
      v40 = 5000000000;
    }

    v43 = *__error();
    v44 = sub_22EE82CE0();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      buf.st_dev = 134217984;
      *&buf.st_mode = v40 / 1000000000.0;
      _os_log_impl(&dword_22EE81000, v44, OS_LOG_TYPE_INFO, "Tailspin requested with max time %.1fs in the future, sleeping until then...", &buf, 0xCu);
    }

    *__error() = v43;
    usleep(v40 / 0x3E8);
  }

  ktrace_session_create();
  ktrace_set_execnames_enabled();
  ktrace_session_set_event_names_enabled();
  ktrace_add_stackshot_flags();
  if (!ktrace_set_use_existing())
  {
    if (v24)
    {
      ktrace_set_reason();
    }

    v134 = v84;
    v135 = 0;
    ktrace_set_command_argv();
    ktrace_set_trigger_kind();
    if (v83)
    {
      v47 = 1;
    }

    else
    {
      v47 = v27;
    }

    if (v47 == 1)
    {
      v121 = MEMORY[0x277D85DD0];
      v122 = 3221225472;
      v123 = sub_22EE90088;
      v124 = &unk_278870FD0;
      v125 = v83;
      v126 = v27;
      ktrace_set_writing_filter();
    }

    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x2020000000;
    v120 = 0;
    v117[0] = 0;
    v117[1] = v117;
    v117[2] = 0x2020000000;
    v118 = 0;
    v116[0] = 0;
    v116[1] = v116;
    v116[2] = 0x2020000000;
    v116[3] = 0;
    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    v115 = 0;
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_22EE900C0;
    v102[3] = &unk_278870FF8;
    v108 = v24;
    v103 = v86;
    v104 = v119;
    v111 = v32;
    v109 = v81;
    v110 = a1;
    v105 = v117;
    v106 = v116;
    v107 = v128;
    v80 = MEMORY[0x2318F9980](v102);
    if (v38 && sub_22EE992A8() && (reinit_cputrace_live_recording_from_existing_session(), v48))
    {
      reinit_cputrace_live_recording_from_existing_session();
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = dispatch_semaphore_create(0);
    v98 = 0;
    v99 = &v98;
    v100 = 0x2020000000;
    v101 = 0;
    v52 = v88;
    v97 = v52;
    dsema = v51;
    ktrace_set_post_processing_handler();
    if (v84)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    }

    else
    {
      v53 = @"<unknown>";
    }

    v93 = v52;
    v94 = v87;
    v90 = v53;
    v95 = v15;
    v54 = v92;
    v96 = v54;
    ktrace_set_completion_handler();
    if (fstat(a1, &buf))
    {
      st_size = -1;
    }

    else
    {
      st_size = buf.st_size;
    }

    v56 = dup(a1);
    v113[3] = mach_absolute_time();
    v57 = *__error();
    v58 = sub_22EE82CE0();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *v136 = 136447234;
      *&v136[4] = v84;
      *&v136[12] = 1024;
      *&v136[14] = v82;
      *&v136[18] = 1024;
      *&v136[20] = a1;
      LOWORD(v137) = 1024;
      *(&v137 + 2) = v56;
      HIWORD(v137) = 2048;
      v138 = st_size;
      _os_log_impl(&dword_22EE81000, v58, OS_LOG_TYPE_DEFAULT, "Started write fd: %{public}s [%d], original fd: %d, duped fd: %d, size: %{bytes}lld", v136, 0x28u);
    }

    *__error() = v57;
    started = ktrace_start_writing_fd();
    if (started)
    {
      v60 = *__error();
      v61 = sub_22EE82CE0();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *v136 = 67110146;
        *&v136[4] = a1;
        *&v136[8] = 1024;
        *&v136[10] = v56;
        *&v136[14] = 2082;
        *&v136[16] = v84;
        LOWORD(v137) = 1024;
        *(&v137 + 2) = v82;
        HIWORD(v137) = 1024;
        LODWORD(v138) = started;
        _os_log_error_impl(&dword_22EE81000, v61, OS_LOG_TYPE_ERROR, "ktrace_start_writing_fd() failed for original fd %d (dup %d) for client %{public}s [%d]: with errno %{errno}d", v136, 0x24u);
      }

      *__error() = v60;
      sub_22EE85528();
      ktrace_session_destroy();
      close(a1);
      (*(v54 + 2))(v54, 15);
LABEL_103:

      _Block_object_dispose(&v98, 8);
      _Block_object_dispose(&v112, 8);
      _Block_object_dispose(v116, 8);
      _Block_object_dispose(v117, 8);
      _Block_object_dispose(v119, 8);
      goto LABEL_104;
    }

    if (!v38)
    {
LABEL_101:
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      if (v85)
      {
        v85[2](v85, v84, v99[3]);
      }

      goto LABEL_103;
    }

    if (sub_22EE992A8())
    {
      if (v50)
      {
        v129 = 0;
        v130 = &v129;
        v131 = 0x2020000000;
        v62 = off_27DA9D3B0;
        v132 = off_27DA9D3B0;
        if (!off_27DA9D3B0)
        {
          *v136 = MEMORY[0x277D85DD0];
          *&v136[8] = 3221225472;
          *&v136[16] = sub_22EE91098;
          v137 = &unk_278871098;
          v138 = &v129;
          v63 = sub_22EE905C4();
          v64 = dlsym(v63, "hwtrace_live_recording_pause");
          *(v138[1] + 24) = v64;
          off_27DA9D3B0 = *(v138[1] + 24);
          v62 = v130[3];
        }

        _Block_object_dispose(&v129, 8);
        if (v62)
        {
          if (v62(v50))
          {
            v65 = *__error();
            v66 = sub_22EE82CE0();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA8CFC();
            }

            *__error() = v65;
          }

          v129 = 0;
          v130 = &v129;
          v131 = 0x2020000000;
          v67 = off_27DA9D3B8;
          v132 = off_27DA9D3B8;
          if (!off_27DA9D3B8)
          {
            *v136 = MEMORY[0x277D85DD0];
            *&v136[8] = 3221225472;
            *&v136[16] = sub_22EE910E8;
            v137 = &unk_278871098;
            v138 = &v129;
            v68 = sub_22EE905C4();
            v69 = dlsym(v68, "hwtrace_live_recording_stop");
            *(v138[1] + 24) = v69;
            off_27DA9D3B8 = *(v138[1] + 24);
            v67 = v130[3];
          }

          _Block_object_dispose(&v129, 8);
          if (v67)
          {
            if (!v67(v50))
            {
              goto LABEL_101;
            }

            v70 = *__error();
            v71 = sub_22EE82CE0();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA8D6C();
            }

            v72 = __error();
            goto LABEL_100;
          }

          v77 = [MEMORY[0x277CCA890] currentHandler];
          v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_stop(hwtrace_live_recording_t)"];
          [v77 handleFailureInFunction:v78 file:@"AppleHWTrace_SoftLinking.h" lineNumber:50 description:{@"%s", dlerror()}];
        }

        else
        {
          v75 = [MEMORY[0x277CCA890] currentHandler];
          v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_pause(hwtrace_live_recording_t)"];
          [v75 handleFailureInFunction:v76 file:@"AppleHWTrace_SoftLinking.h" lineNumber:49 description:{@"%s", dlerror()}];
        }

        __break(1u);
      }

      v70 = *__error();
      v73 = sub_22EE82CE0();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8DDC();
      }
    }

    else
    {
      v70 = *__error();
      v73 = sub_22EE82CE0();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8C7C();
      }
    }

    v72 = __error();
LABEL_100:
    *v72 = v70;
    goto LABEL_101;
  }

  v45 = *__error();
  v46 = sub_22EE82CE0();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA8C0C();
  }

  *__error() = v45;
  sub_22EE85528();
  ktrace_session_destroy();
  close(a1);
  (*(v92 + 2))(v92, 14);
LABEL_104:
  _Block_object_dispose(v128, 8);

  v74 = *MEMORY[0x277D85DE8];
}

void sub_22EE83D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, void *a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a52, 8);

  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x290], 8);

  _Unwind_Resume(a1);
}

char *get_tailspin_ondisk_config()
{
  MEMORY[0x28223BE20]();
  v64 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/db/tailspin_config.plist"];
  if (v0)
  {
    v1 = tailspin_config_create_with_default_config();
    if (v1)
    {
      v2 = v1;
      v3 = [v0 objectForKeyedSubscript:@"EnforcedByProfile"];
      v4 = [v0 objectForKeyedSubscript:@"EnforcedByTasking"];
      v5 = [v0 objectForKeyedSubscript:@"EnforcedByManualConfiguration"];
      v6 = v5;
      if (v3)
      {
        if (v4)
        {
          sub_22EEA659C();
        }

        if (v5)
        {
          sub_22EEA659C();
        }

        if (([v3 BOOLValue] & 1) == 0)
        {
          sub_22EEA659C();
        }

        v7 = 3;
      }

      else if (v4)
      {
        if (v5)
        {
          sub_22EEA659C();
        }

        if (([v4 BOOLValue] & 1) == 0)
        {
          sub_22EEA659C();
        }

        v7 = 1;
      }

      else
      {
        if (!v5)
        {
          tailspin_config_free(v2);
          v2 = 0;
LABEL_80:

          goto LABEL_81;
        }

        if (([v5 BOOLValue] & 1) == 0)
        {
          sub_22EEA659C();
        }

        v7 = 2;
      }

      *(v2 + 2) = v7;
      v17 = [v0 objectForKeyedSubscript:@"Enabled"];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2[8360] = [v17 BOOLValue];
          *v2 |= 0x80uLL;
          v18 = [v0 objectForKeyedSubscript:@"EnabledModifier"];
          v19 = v18;
          if (v18)
          {
            [v18 UTF8String];
            __strlcpy_chk();
          }
        }
      }

      v62 = v17;
      v20 = [v0 objectForKeyedSubscript:@"KDebug"];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:@"BufferSizeMegabytes"];
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 1030) = [v22 unsignedLongLongValue];
            *v2 |= 2uLL;
            v23 = [v21 objectForKeyedSubscript:@"BufferSizeModifier"];
            v24 = v23;
            if (v23)
            {
              [v23 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v25 = [v21 objectForKeyedSubscript:@"FilterDescriptor"];
        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v25 UTF8String])
            {
              [v25 UTF8String];
              if (!trace_parse_filter())
              {
                memcpy(v2 + 12, __src, 0x2000uLL);
                *v2 |= 1uLL;
                v26 = [v21 objectForKeyedSubscript:@"FilterDescriptorModifier"];
                v27 = v26;
                if (v26)
                {
                  [v26 UTF8String];
                  __strlcpy_chk();
                }
              }
            }
          }
        }
      }

      v28 = [v0 objectForKeyedSubscript:@"Sampling"];
      v29 = v28;
      if (v28)
      {
        v60 = v6;
        v30 = [v28 objectForKeyedSubscript:@"OnCoreSamplingPeriodNanoseconds"];
        if (v30)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 1040) = [v30 unsignedLongLongValue];
            *v2 |= 0x10uLL;
            v31 = [v29 objectForKeyedSubscript:@"OnCoreSamplingPeriodModifier"];
            v32 = v31;
            if (v31)
            {
              [v31 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v61 = v4;
        v33 = [v29 objectForKeyedSubscript:@"FullSystemSamplingPeriodNanoseconds"];
        if (v33)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 1035) = [v33 unsignedLongLongValue];
            *v2 |= 8uLL;
            v34 = [v29 objectForKeyedSubscript:@"FullSystemSamplingPeriodModifier"];
            v35 = v34;
            if (v34)
            {
              [v34 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v36 = [v29 objectForKeyedSubscript:@"IsCswitchSamplingEnabled"];
        if (v36)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v2 + 2099) = *(v2 + 2099) & 0xFFFFFFFE | [v36 BOOLValue];
            *v2 |= 0x20uLL;
            v37 = [v29 objectForKeyedSubscript:@"CswitchSamplingEnabledModifier"];
            v38 = v37;
            if (v37)
            {
              [v37 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v39 = [v29 objectForKeyedSubscript:@"IsSyscallSamplingEnabled"];
        if (v39)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v39 BOOLValue])
            {
              v40 = 2;
            }

            else
            {
              v40 = 0;
            }

            *(v2 + 2099) = *(v2 + 2099) & 0xFFFFFFFD | v40;
            *v2 |= 0x20uLL;
            v41 = [v29 objectForKeyedSubscript:@"CswitchSamplingEnabledModifier"];
            v42 = v41;
            if (v41)
            {
              [v41 UTF8String];
              __strlcpy_chk();
            }
          }
        }

        v43 = [v29 objectForKeyedSubscript:@"IsVMFaultSamplingEnabled"];
        if (v43)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v59 = v3;
            if ([v43 BOOLValue])
            {
              v44 = 4;
            }

            else
            {
              v44 = 0;
            }

            *(v2 + 2099) = *(v2 + 2099) & 0xFFFFFFFB | v44;
            *v2 |= 0x20uLL;
            v45 = [v29 objectForKeyedSubscript:@"CswitchSamplingEnabledModifier"];
            v46 = v45;
            if (v45)
            {
              [v45 UTF8String];
              __strlcpy_chk();
            }

            v3 = v59;
          }
        }

        v6 = v60;
        v4 = v61;
      }

      v47 = [v0 objectForKeyedSubscript:@"CPUTrace"];
      v48 = v47;
      if (v47)
      {
        v49 = [v47 objectForKeyedSubscript:@"CPUTraceEnabled"];
        if (v49)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2[8432] = [v49 BOOLValue];
            *v2 |= 0x40uLL;
            v50 = [v48 objectForKeyedSubscript:@"CPUTraceEnabledModifier"];
            v51 = v50;
            if (v50)
            {
              v52 = v3;
              v53 = v6;
              v54 = v52;
              v55 = [v50 UTF8String];
              v56 = v54;
              v6 = v53;
              v3 = v56;
              strlcpy(v2 + 8433, v55, 0x20uLL);
            }
          }
        }
      }

      if (!*v2)
      {
        sub_22EEA659C();
      }

      goto LABEL_80;
    }

    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6564(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v2 = 0;
    *__error() = v8;
  }

  else
  {
    v2 = 0;
  }

LABEL_81:

  v57 = *MEMORY[0x277D85DE8];
  return v2;
}

_DWORD *tailspin_config_create_with_default_config()
{
  v0 = malloc_type_calloc(1uLL, 0x2118uLL, 0x10000409BDBFF31uLL);
  if (!v0)
  {
    sub_22EEA659C();
  }

  v1 = v0;
  v2 = (v0 + 2048);
  *v0 = 0;
  v0[2] = 0;
  *(v0 + 8360) = tailspin_enabled_get_default();
  *(v1 + 1030) = tailspin_buffer_size_get_default();
  v3 = tailspin_kdbg_filter_get_default();
  memcpy(v1 + 3, v3, 0x2000uLL);
  *(v1 + 1035) = tailspin_full_sampling_period_get_default();
  *(v1 + 1040) = tailspin_oncore_sampling_period_get_default();
  v1[2099] = tailspin_sampling_options_get_default();
  v2[240] = tailspin_cputrace_enabled_get_default();
  return v1;
}

uint64_t tailspin_enabled_get_default()
{
  if (qword_280B25F60 != -1)
  {
    sub_22EE8504C();
  }

  return byte_280B25F58;
}

int *sub_22EE8484C(uint64_t a1, char *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = open(a2, 0);
  if (v4 == -1)
  {
    v16 = *__error();
    v17 = sub_22EE82CE0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA78D0();
    }

    goto LABEL_34;
  }

  v5 = v4;
  memset(&v40, 0, sizeof(v40));
  if (!fstat(v4, &v40))
  {
    v18 = MEMORY[0x277D85FA0];
    if (((*MEMORY[0x277D85FA0] + 0x7FFFFFFLL) & -*MEMORY[0x277D85FA0]) != 0x8000000)
    {
      sub_22EEA7898(*MEMORY[0x277D85FA0], v6, v7, v8, v9, v10, v11, v12);
    }

    v38 = a2;
    st_size = v40.st_size;
    if (v40.st_size)
    {
      v39 = 0;
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = st_size - v21;
        if (v22 >= 0x8000000)
        {
          v22 = 0x8000000;
        }

        v23 = (v22 + *v18 - 1) & -*v18;
        v24 = mmap(0, v23, 1, 1, v5, v21);
        if (v24 == -1)
        {
          v28 = *__error();
          v29 = sub_22EE82CE0();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v35 = *__error();
            *buf = 134218754;
            v42 = v21;
            v43 = 2048;
            v44 = v23;
            v45 = 2080;
            v46 = v38;
            v47 = 1024;
            v48 = v35;
            _os_log_error_impl(&dword_22EE81000, v29, OS_LOG_TYPE_ERROR, "mmap of 0x%llx,0x%llx of shared cache file %s failed: %{errno}d", buf, 0x26u);
          }

          *__error() = v28;
        }

        else
        {
          v25 = v24;
          if (mincore(v24, v23, *(a1 + 48)))
          {
            v26 = *__error();
            v27 = sub_22EE82CE0();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v34 = *__error();
              *buf = 134218754;
              v42 = v21;
              v43 = 2048;
              v44 = v23;
              v45 = 2080;
              v46 = v38;
              v47 = 1024;
              v48 = v34;
              _os_log_error_impl(&dword_22EE81000, v27, OS_LOG_TYPE_ERROR, "mincore of 0x%llx,0x%llx of shared cache file %s failed: %{errno}d", buf, 0x26u);
            }

            *__error() = v26;
            munmap(v25, v23);
          }

          else
          {
            if (munmap(v25, v23))
            {
              v30 = *__error();
              v31 = sub_22EE82CE0();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v36 = *__error();
                *buf = 134218754;
                v42 = v21;
                v43 = 2048;
                v44 = v23;
                v45 = 2080;
                v46 = v38;
                v47 = 1024;
                v48 = v36;
                _os_log_error_impl(&dword_22EE81000, v31, OS_LOG_TYPE_ERROR, "munmap of 0x%llx,0x%llx of shared cache file %s failed: %{errno}d", buf, 0x26u);
              }

              *__error() = v30;
            }

            v32 = v23 / *v18;
            if (*v18 <= v23)
            {
              v33 = 0;
              do
              {
                v20 += *(*(a1 + 48) + v33++) & 1;
              }

              while (v33 < v32);
            }

            v39 += v32;
          }
        }

        v21 += 0x8000000;
        st_size = v40.st_size;
      }

      while (v21 < v40.st_size);
    }

    else
    {
      v20 = 0;
      v39 = 0;
    }

    close(v5);
    *(*(*(a1 + 32) + 8) + 24) += v20;
    *(*(*(a1 + 40) + 8) + 24) += v39;
    v16 = *__error();
    v17 = sub_22EE82CE0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v42 = v38;
      v43 = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v39;
      _os_log_debug_impl(&dword_22EE81000, v17, OS_LOG_TYPE_DEBUG, "shared cache file %s has %llu/%llu pages resident", buf, 0x20u);
    }

LABEL_34:

    result = __error();
    *result = v16;
    goto LABEL_35;
  }

  v13 = *__error();
  v14 = sub_22EE82CE0();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA7814();
  }

  *__error() = v13;
  result = close(v5);
LABEL_35:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EE84D10()
{
  v42 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v1 = qword_27DA9CE98;
    qword_27DA9CE98 = v0;

    v2 = [MEMORY[0x277D08410] shared];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v2 domains];
    v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v27)
    {
      v26 = *v37;
      do
      {
        v3 = 0;
        do
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v3;
          v4 = *(*(&v36 + 1) + 8 * v3);
          context = objc_autoreleasePoolPush();
          v5 = [v2 featuresForDomain:v4];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v30 = v5;
          v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v33;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v33 != v8)
                {
                  objc_enumerationMutation(v30);
                }

                v10 = *(*(&v32 + 1) + 8 * i);
                v11 = [v2 stateForFeature:v10 domain:v4 level:4];
                if (v11)
                {
                  v12 = [v2 defaultStateForFeature:v10 domain:v4];
                  v13 = v12;
                  if (!v12 || (v14 = [v12 value], v14 != objc_msgSend(v11, "value")) || is_apple_internal_setting() && objc_msgSend(v11, "value") == 1 && objc_msgSend(v10, "isEqualToString:", @"Solarium") && ((objc_msgSend(v4, "isEqualToString:", @"SwiftUI") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"IconServices")))
                  {
                    v15 = [v11 value];
                    v16 = MEMORY[0x277CBEC28];
                    if (v15 == 1)
                    {
                      v16 = MEMORY[0x277CBEC38];
                    }

                    v31 = v16;
                    v17 = v7;
                    v18 = v8;
                    v19 = v2;
                    v20 = qword_27DA9CE98;
                    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", v4, v10];
                    v22 = v20;
                    v2 = v19;
                    v8 = v18;
                    v7 = v17;
                    [v22 setObject:v31 forKeyedSubscript:v21];
                  }
                }
              }

              v7 = [v30 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v7);
          }

          objc_autoreleasePoolPop(context);
          v3 = v29 + 1;
        }

        while (v29 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v27);
    }

    if (![qword_27DA9CE98 count])
    {
      v23 = qword_27DA9CE98;
      qword_27DA9CE98 = 0;
    }

    [v2 invalidateCache];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22EE85060()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 != 1 || (os_variant_is_darwinos() & 1) != 0)
  {
    goto LABEL_9;
  }

  if (qword_280B25F80 != -1)
  {
    sub_22EE852D4();
  }

  if (byte_280B25F88 == 1)
  {
    v0 = (byte_27DA9CEC0 & 1) == 0;
  }

  else
  {
LABEL_9:
    v0 = 0;
  }

  byte_280B25F58 = v0;
}

void sub_22EE85108()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_22EEA7BBC();
    }

LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Looking up kMGQProductType", v6, 2u);
    }

    v4 = MGGetStringAnswer();
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_22EEA7B34();
    }

    goto LABEL_11;
  }

  if (![v3 length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_22EEA7AEC();
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_15:
  if ([v4 containsString:@"iPhone"] & 1) != 0 || (objc_msgSend(v4, "containsString:", @"iPad") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"iPod") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"Watch") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"AppleTV"))
  {
    v5 = &byte_280B25F91;
LABEL_21:
    *v5 = 1;
    goto LABEL_22;
  }

LABEL_23:
  if ((byte_280B25F91 & 1) == 0 && MGCopyAnswer())
  {
    byte_280B25F91 = 1;
    v5 = &byte_27DA9CEC0;
    goto LABEL_21;
  }

LABEL_22:

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_22EE852E8()
{
  result = os_variant_has_internal_diagnostics();
  byte_280B25F88 = result;
  return result;
}

void sub_22EE85324()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (qword_280B25F78 != -1)
  {
    sub_22EE85310();
  }

  v0 = vcvtms_u32_f32(*&dword_280B23E00 * 25.0);
  if (*&dword_280B23E00 == 1.0)
  {
    v0 = 25;
  }

  qword_280B25F68 = v0;
}

uint64_t tailspin_buffer_size_get_default()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 != 1)
  {
    return 0;
  }

  if (qword_280B25F70 != -1)
  {
    sub_22EE853F8();
  }

  return qword_280B25F68;
}

void sub_22EE8540C()
{
  v0 = os_log_create("com.apple.tailspin", "library");
  v1 = qword_280B25FA0;
  qword_280B25FA0 = v0;

  v2 = qword_280B25FA0;
  if (!v2)
  {
    sub_22EEA659C();
  }
}

size_t set_config_field_modifier(size_t result, const char *a2)
{
  *result = 0u;
  *(result + 16) = 0u;
  if (a2)
  {
    return strlcpy(result, a2, 0x20uLL);
  }

  return result;
}

void sub_22EE85484(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x2318F9DB0]();
  v4 = *(a1 + 32);
  if (v3 == MEMORY[0x277D86468])
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = xpc_dictionary_get_BOOL(xdict, "tailspin_succeeded");
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = 0;
  }

  (*(v4 + 16))(v4, v5);
LABEL_7:
}

_DWORD *sub_22EE85528()
{
  v29 = *MEMORY[0x277D85DE8];
  __sizep = 0;
  __bufp = 0;
  v0 = *__error();
  v1 = sub_22EE82CE0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_22EE8584C();
  }

  *__error() = v0;
  if (ktrace_config_create_current())
  {
    v2 = open_memstream(&__bufp, &__sizep);
    if (!v2)
    {
      v10 = *__error();
      v11 = sub_22EE82CE0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = __error();
        sub_22EEA82BC(v12, buf);
      }

      *__error() = v10;
      goto LABEL_17;
    }

    if (ktrace_config_print_description())
    {
      v3 = *__error();
      v4 = sub_22EE82CE0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        sub_22EEA8238(v5, buf);
      }

      *__error() = v3;
      fclose(v2);
LABEL_9:
      if (__bufp)
      {
        free(__bufp);
      }

LABEL_17:
      result = ktrace_config_destroy();
      goto LABEL_18;
    }

    fclose(v2);
    v14 = __sizep;
    if (!__sizep)
    {
      v23 = *__error();
      v24 = sub_22EE82CE0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8280();
      }

      *__error() = v23;
      goto LABEL_9;
    }

    v15 = 1000;
    while (1)
    {
      if (v15 >= v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = __bufp[v15];
        __bufp[v15] = 0;
      }

      v17 = *__error();
      v18 = sub_22EE82CE0();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (v15 == 1000)
      {
        if (v19)
        {
          *buf = 136446210;
          v28 = __bufp;
          v20 = v18;
          v21 = "Current system config = \n%{public}s";
LABEL_34:
          _os_log_error_impl(&dword_22EE81000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
        }
      }

      else if (v19)
      {
        *buf = 136446210;
        v28 = &__bufp[v15 - 1000];
        v20 = v18;
        v21 = "Current system config = (continued)\n%{public}s";
        goto LABEL_34;
      }

      *__error() = v17;
      v14 = __sizep;
      if (v15 < __sizep)
      {
        __bufp[v15] = v16;
        v14 = __sizep;
      }

      v22 = v15 >= v14;
      v15 += 1000;
      if (v22)
      {
        goto LABEL_9;
      }
    }
  }

  v6 = *__error();
  v7 = sub_22EE82CE0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = __error();
    sub_22EEA8304(v8, buf);
  }

  result = __error();
  *result = v6;
LABEL_18:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EE8584C()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EE858AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_22EE858E4()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.memsize", &v3, &v2, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v3 < 1;
  }

  if (!v1 && (v3 >> 20) >= 1901)
  {
    dword_280B23E00 = 0x40000000;
  }

  return result;
}

void *tailspin_kdbg_filter_get_default()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 == 1 && qword_280B23E28[0] != -1)
  {
    sub_22EE85CD0();
  }

  return &unk_280B23E3C;
}

void sub_22EE859A8()
{
  if (trace_parse_filter())
  {
    sub_22EEA659C();
  }

  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  byte_280B243A4 &= ~0x40u;
  byte_280B24476 &= ~2u;
}

uint64_t sub_22EE85A10()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 != 1)
  {
    return 0;
  }

  if (qword_280B25F50 != -1)
  {
    sub_22EE85ADC();
  }

  if (byte_280B25F48)
  {
    return 10000000;
  }

  else
  {
    return 0;
  }
}

unint64_t tailspin_full_sampling_period_get_default()
{
  v0 = sub_22EE85A10();
  if (v0)
  {
    if (qword_280B23E20 != -1)
    {
      sub_22EE85AF0();
    }

    if (v0 < qword_280B23E18)
    {
      sub_22EEA659C();
    }
  }

  return v0;
}

uint64_t sub_22EE85B14()
{
  v3 = 8;
  result = sysctlbyname("kperf.limits.timer_min_bg_pet_period_ns", &qword_280B23E18, &v3, 0, 0);
  if (result)
  {
    v1 = *__error();
    v2 = sub_22EE82CE0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7AA8(v2);
    }

    *__error() = v1;
    result = sub_22EE85A10();
    qword_280B23E18 = result;
  }

  return result;
}

unint64_t tailspin_oncore_sampling_period_get_default()
{
  v0 = sub_22EE85C00();
  if (v0)
  {
    if (qword_27DA9CEB8 != -1)
    {
      sub_22EEA7A50();
    }

    if (v0 < qword_27DA9CEB0)
    {
      sub_22EEA659C();
    }
  }

  return v0;
}

uint64_t sub_22EE85C00()
{
  if (qword_280B25F98 != -1)
  {
    sub_22EE850F4();
  }

  if (byte_280B25F91 == 1 && qword_280B23E10 != -1)
  {
    sub_22EE85CAC();
  }

  if (byte_280B23E08)
  {
    return 50000000;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22EE85C6C()
{
  byte_280B23E08 = 1;
  result = tailspin_full_sampling_period_get_default();
  if (result)
  {
    if (byte_280B23E08 == 1)
    {
      byte_280B23E08 = 0;
    }
  }

  return result;
}

id tailspin_compress_file()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v42 = *MEMORY[0x277D85DE8];
  v3 = v0;
  v4 = [v3 stringByAppendingString:@".tgz"];
  v5 = [v4 UTF8String];
  v6 = open(v5, 2562, 432);
  if (v6 < 0)
  {
    v10 = *__error();
    v11 = sub_22EE82CE0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6424();
    }

    *__error() = v10;
LABEL_20:
    if (v6 != -1)
    {
      close(v6);
    }

LABEL_22:
    if (unlink(v5) && *__error() != 2)
    {
      v13 = *__error();
      v14 = sub_22EE82CE0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA64A8();
      }

      v12 = 0;
      *__error() = v13;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_28;
  }

  v7 = archive_write_new();
  if (archive_write_add_filter_gzip())
  {
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5DA4();
    }

LABEL_17:

    *__error() = v8;
LABEL_18:
    if (v7)
    {
      archive_write_close();
      archive_write_free();
    }

    goto LABEL_20;
  }

  if (archive_write_set_options())
  {
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5E30();
    }

    goto LABEL_17;
  }

  if (archive_write_set_format_pax())
  {
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5EBC();
    }

    goto LABEL_17;
  }

  if (archive_write_open_fd())
  {
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5F48();
    }

    goto LABEL_17;
  }

  v17 = archive_entry_new();
  memset(&v40, 0, sizeof(v40));
  if (stat([v3 UTF8String], &v40))
  {
    v18 = *__error();
    v19 = sub_22EE82CE0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA5FD4();
    }

    *__error() = v18;
LABEL_48:
    if (v17)
    {
      archive_entry_free();
    }

    goto LABEL_18;
  }

  archive_entry_copy_stat();
  v20 = [v3 lastPathComponent];
  [v20 UTF8String];
  archive_entry_set_pathname();

  archive_entry_set_filetype();
  archive_entry_set_perm();
  if (archive_write_header())
  {
    v21 = *__error();
    v22 = sub_22EE82CE0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6058();
    }

    *__error() = v21;
    goto LABEL_48;
  }

  v23 = open([v3 UTF8String], 0);
  if (v23 < 0)
  {
    v25 = *__error();
    v26 = sub_22EE82CE0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA63A0();
    }

    goto LABEL_46;
  }

  while (1)
  {
    v24 = read(v23, v41, 0x2800uLL);
    if (v24 < 1)
    {
      break;
    }

    if (archive_write_data() != v24)
    {
      v25 = *__error();
      v26 = sub_22EE82CE0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA62F0();
      }

      goto LABEL_46;
    }
  }

  if (v24 < 0 && *__error() != 4)
  {
    v25 = *__error();
    v26 = sub_22EE82CE0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA60E4();
    }

LABEL_46:

    *__error() = v25;
    if (v23 != -1)
    {
      close(v23);
    }

    goto LABEL_48;
  }

  archive_entry_free();
  close(v23);
  if (archive_write_close())
  {
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6168();
    }

    goto LABEL_17;
  }

  v27 = archive_write_free();
  if (v27)
  {
    v28 = v27;
    v29 = *__error();
    v30 = sub_22EE82CE0();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA61F4(v28, v30);
    }

    *__error() = v29;
    goto LABEL_20;
  }

  close(v6);
  v39 = 0;
  v31 = [MEMORY[0x277CCAA00] defaultManager];
  v32 = [v31 fileExistsAtPath:v4 isDirectory:&v39];
  v33 = v39;

  if (!v32 || (v33 & 1) != 0)
  {
    goto LABEL_22;
  }

  v34 = *__error();
  v35 = sub_22EE82CE0();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EE81000, v35, OS_LOG_TYPE_INFO, "Successfully compressed file", buf, 2u);
  }

  *__error() = v34;
  if (v2 && unlink([v3 UTF8String]))
  {
    v36 = *__error();
    v37 = sub_22EE82CE0();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA626C();
    }

    *__error() = v36;
  }

  v12 = v4;
LABEL_28:

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t sub_22EE863C0()
{

  return MEMORY[0x2821F6FE0](v0);
}

uint64_t tailspin_parse_stackshot_chunk(uint64_t *a1, unint64_t a2, void *a3, void *a4)
{
  result = 22;
  if (a1 && a2 >= 0x10)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = a1 + a2;
    v9 = *a1;
    v7 = a1 + 2;
    v8 = v9;
    if (v7 + v9 <= v6)
    {
      result = 0;
      *a3 = v7;
      *a4 = v8;
    }
  }

  return result;
}

void *get_tailspin_tasking_config()
{
  MEMORY[0x28223BE20]();
  v28 = *MEMORY[0x277D85DE8];
  v0 = tailspin_config_create_with_default_config();
  if (v0)
  {
    v1 = v0;
    v2 = v0 + 2048;
    v3 = OSAGetDATaskingValue();
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v2 + 168) = [v3 BOOLValue];
        *v1 |= 0x80uLL;
      }
    }

    v26 = v2;
    v4 = OSAGetDATaskingValue();
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1[1030] = [v4 unsignedLongLongValue];
        *v1 |= 2uLL;
      }
    }

    v5 = OSAGetDATaskingValue();
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 UTF8String])
        {
          [v5 UTF8String];
          if (!trace_parse_filter())
          {
            memcpy(v1 + 12, __src, 0x2000uLL);
            *v1 |= 1uLL;
          }
        }
      }
    }

    v6 = OSAGetDATaskingValue();
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1[1040] = [v6 unsignedLongLongValue];
        *v1 |= 0x10uLL;
      }
    }

    v7 = OSAGetDATaskingValue();
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1[1035] = [v7 unsignedLongLongValue];
        *v1 |= 8uLL;
      }
    }

    v8 = OSAGetDATaskingValue();
    v9 = OSAGetDATaskingValue();
    v10 = OSAGetDATaskingValue();
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v1 + 2099) = *(v1 + 2099) & 0xFFFFFFFE | [v8 BOOLValue];
        *v1 |= 0x20uLL;
      }
    }

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v9 BOOLValue])
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        *(v1 + 2099) = *(v1 + 2099) & 0xFFFFFFFD | v11;
        *v1 |= 0x20uLL;
      }
    }

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v10 BOOLValue])
        {
          v12 = 4;
        }

        else
        {
          v12 = 0;
        }

        *(v1 + 2099) = *(v1 + 2099) & 0xFFFFFFFB | v12;
        *v1 |= 0x20uLL;
      }
    }

    v13 = OSAGetDATaskingValue();
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *(v26 + 240) = [v13 BOOLValue];
      *v1 |= 0x40uLL;
      *(v1 + 2) = 1;
    }

    else
    {
      v14 = *v1;
      *(v1 + 2) = 1;
      if (!v14)
      {
        tailspin_config_free(v1);
        v1 = 0;
      }
    }
  }

  else
  {
    v15 = *__error();
    v16 = sub_22EE82CE0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA652C(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v1 = 0;
    *__error() = v15;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v1;
}

char *get_tailspin_profile_config()
{
  MEMORY[0x28223BE20]();
  v30 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.tailspin.plist"];
  v1 = v0;
  if (v0 && [v0 count])
  {
    v2 = tailspin_config_create_with_default_config();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 objectForKeyedSubscript:@"Enabled"];
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3[8360] = [v4 BOOLValue];
          *v3 |= 0x80uLL;
        }
      }

      v5 = [v1 objectForKeyedSubscript:@"KDebug"];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 objectForKeyedSubscript:@"BufferSizeMegabytes"];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 1030) = [v7 unsignedLongLongValue];
            *v3 |= 2uLL;
          }
        }

        v8 = [v6 objectForKeyedSubscript:@"FilterDescriptor"];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v8 UTF8String])
            {
              [v8 UTF8String];
              if (!trace_parse_filter())
              {
                memcpy(v3 + 12, __src, 0x2000uLL);
                *v3 |= 1uLL;
              }
            }
          }
        }
      }

      v9 = [v1 objectForKeyedSubscript:@"Sampling"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKeyedSubscript:@"OnCoreSamplingPeriodNanoseconds"];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 1040) = [v11 unsignedLongLongValue];
            *v3 |= 0x10uLL;
          }
        }

        v12 = [v10 objectForKeyedSubscript:@"FullSystemSamplingPeriodNanoseconds"];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 1035) = [v12 unsignedLongLongValue];
            *v3 |= 8uLL;
          }
        }

        v13 = [v10 objectForKeyedSubscript:@"IsCswitchSamplingEnabled"];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *(v3 + 2099) = *(v3 + 2099) & 0xFFFFFFFE | [v13 BOOLValue];
            *v3 |= 0x20uLL;
          }
        }

        v14 = [v10 objectForKeyedSubscript:@"IsSyscallSamplingEnabled"];
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 BOOLValue])
            {
              v15 = 2;
            }

            else
            {
              v15 = 0;
            }

            *(v3 + 2099) = *(v3 + 2099) & 0xFFFFFFFD | v15;
            *v3 |= 0x20uLL;
          }
        }

        v16 = [v10 objectForKeyedSubscript:@"IsVMFaultSamplingEnabled"];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v16 BOOLValue])
            {
              v17 = 4;
            }

            else
            {
              v17 = 0;
            }

            *(v3 + 2099) = *(v3 + 2099) & 0xFFFFFFFB | v17;
            *v3 |= 0x20uLL;
          }
        }
      }

      *(v3 + 2) = 3;
      if (!*v3)
      {
        tailspin_config_free(v3);
        v3 = 0;
      }
    }

    else
    {
      v20 = *__error();
      v21 = sub_22EE82CE0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA6564(v21, v22, v23, v24, v25, v26, v27, v28);
      }

      v3 = 0;
      *__error() = v20;
    }
  }

  else
  {
    v3 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_22EE86CC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_22EE86CE0()
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_22EE87028;
  v12[4] = sub_22EE87038;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_22EE87028;
  v10[4] = sub_22EE87038;
  v11 = 0;
  cf = 0;
  v0 = IOServiceMatching("AGXAccelerator");
  v1 = IOReportCopyChannelsForDrivers();
  CFRelease(v0);
  if (v1)
  {
    if (IOReportGetChannelCount())
    {
      Subscription = IOReportCreateSubscription();
      v7 = *__error();
      v8 = sub_22EE82CE0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA65B8(&cf);
      }

      *__error() = v7;
    }

    else
    {
      v5 = *__error();
      v6 = sub_22EE82CE0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_22EEA6698();
      }

      Subscription = 0;
      *__error() = v5;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (Subscription)
    {
      CFRelease(Subscription);
    }

    CFRelease(v1);
  }

  else
  {
    v3 = *__error();
    v4 = sub_22EE82CE0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA66D4(&cf);
    }

    *__error() = v3;
  }

  _Block_object_dispose(v10, 8);

  _Block_object_dispose(v12, 8);
}

void sub_22EE86FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE87028(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22EE87040(uint64_t a1)
{
  Group = IOReportChannelGetGroup();
  if (IOReportChannelGetFormat() == 1 && CFStringCompare(Group, @"Internal Statistics", 0) == kCFCompareEqualTo)
  {
    ChannelName = IOReportChannelGetChannelName();
    if (CFEqual(ChannelName, @"GPU Restart Count"))
    {
      v4 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      v5 = 32;
LABEL_7:
      v6 = *(*(a1 + v5) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v4;

      goto LABEL_8;
    }

    if (CFEqual(ChannelName, @"Last GPU Restart"))
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportSimpleGetIntegerValue()];
      v5 = 40;
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*(*(*(a1 + 32) + 8) + 40) && *(*(*(a1 + 40) + 8) + 40))
  {
    return 273;
  }

  else
  {
    return 0;
  }
}

uint64_t tailspin_write_metadata_chunk(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v218 = *MEMORY[0x277D85DE8];
  v192 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_22EEA659C();
  }

  context = v7;
  v199 = [MEMORY[0x277CBEB38] dictionary];
  if (a2)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v199 setObject:v8 forKeyedSubscript:@"TailspinDumpReason"];
  }

  if ((a4 & 0x80000000) == 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [v199 setObject:v9 forKeyedSubscript:@"TailspinTargetPID"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:sysconf(57)];
  [v199 setObject:v10 forKeyedSubscript:@"ncpus"];

  v11 = _CFCopySupplementalVersionDictionary();
  if (v11)
  {
    v12 = v11;
    [v199 setObject:CFDictionaryGetValue(v11 forKeyedSubscript:{*MEMORY[0x277CBEC70]), @"osversion"}];
    [v199 setObject:CFDictionaryGetValue(v12 forKeyedSubscript:{*MEMORY[0x277CBEC78]), @"osproductname"}];
    [v199 setObject:CFDictionaryGetValue(v12 forKeyedSubscript:{*MEMORY[0x277CBEC88]), @"osproductversion"}];
    [v199 setObject:CFDictionaryGetValue(v12 forKeyedSubscript:{*MEMORY[0x277CBEC80]), @"osproductversionextra"}];
    CFRelease(v12);
  }

  v13 = MobileGestalt_get_current_device();
  if (v13)
  {
    v14 = MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj();
    v15 = v14;
    if (v14)
    {
      if ([v14 length])
      {
        v16 = v15;

        goto LABEL_22;
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA6744();
      }
    }

    else
    {
      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA6788();
      }
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_22EEA6808();
    }
  }

  v22 = MEMORY[0x277D86220];
  v23 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Looking up kMGQHWModelStr", &buf, 2u);
  }

  v16 = MGGetStringAnswer();
LABEL_22:
  [v199 setObject:v16 forKeyedSubscript:@"hw.model"];

  v24 = MobileGestalt_get_current_device();
  if (v24)
  {
    v25 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
    v26 = v25;
    if (v25)
    {
      if ([v25 length])
      {
        v27 = v26;

        goto LABEL_36;
      }

      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA6888();
      }
    }

    else
    {
      v29 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_22EEA68CC();
      }
    }
  }

  else
  {
    v24 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_22EEA6950();
    }
  }

  v33 = MEMORY[0x277D86220];
  v34 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Looking up kMGQProductType", &buf, 2u);
  }

  v27 = MGGetStringAnswer();
LABEL_36:
  [v199 setObject:v27 forKeyedSubscript:@"SubProductType"];

  v206 = 0;
  v205 = 4;
  if (!sysctlbyname("vm.pagesize", &v206, &v205, 0, 0))
  {
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v206];
    [v199 setObject:v35 forKeyedSubscript:@"vm.pagesize"];
  }

  v204 = 0;
  v203 = 4;
  if (!sysctlbyname("hw.pagesize", &v204, &v203, 0, 0))
  {
    v36 = [MEMORY[0x277CCABB0] numberWithInt:v204];
    [v199 setObject:v36 forKeyedSubscript:@"hw.pagesize"];
  }

  v202 = 0;
  v201 = 4;
  if (!sysctlbyname("hw.memsize", &v202, &v201, 0, 0))
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInt:v202];
    [v199 setObject:v37 forKeyedSubscript:@"hw.memsize"];
  }

  v38 = IOServiceMatching("AGXAccelerator");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v38);
  v40 = MatchingService;
  if (MatchingService && (CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"AGXTraceCodeVersion", *MEMORY[0x277CBECE8], 0), IOObjectRelease(v40), CFProperty))
  {
    [v199 setObject:CFProperty forKeyedSubscript:@"AGXVersion"];
  }

  else
  {
    CFProperty = 0;
  }

  [v199 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsKPerfPETMode"];
  v197 = objc_alloc_init(MEMORY[0x277CBEB38]);
  AdvisoryDetailed = IOCopySystemLoadAdvisoryDetailed();
  if (AdvisoryDetailed)
  {
    v41 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"UserLevel"];
    v42 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"BatteryLevel"];
    v43 = [(__CFDictionary *)AdvisoryDetailed objectForKeyedSubscript:@"CombinedLevel"];
    if (v41)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [v41 copy];
        [v197 setObject:v44 forKeyedSubscript:@"User"];
      }
    }

    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v42 copy];
        [v197 setObject:v45 forKeyedSubscript:@"Battery"];
      }
    }

    if (v43)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v43 copy];
        [v197 setObject:v46 forKeyedSubscript:@"Combined"];
      }
    }
  }

  out_token[0] = 0;
  if (!notify_register_check(*MEMORY[0x277D85E48], out_token))
  {
    *&buf.f_bsize = 0;
    v47 = notify_get_state(out_token[0], &buf.f_bsize) == 0;
    v48 = *&buf.f_bsize;
    notify_cancel(out_token[0]);
    if (v47)
    {
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48];
      [v197 setObject:v49 forKeyedSubscript:@"ThermalPressure"];
    }
  }

  if ([v197 count])
  {
    [v199 setObject:v197 forKeyedSubscript:@"SystemAdvisoryLevels"];
  }

  if (v192)
  {
    [v199 setObject:v192 forKeyedSubscript:@"TailspinConfiguration"];
  }

  v50 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  if (v50 && ([MEMORY[0x277CBEBC0] fileURLWithPath:v50 isDirectory:1], v193 = objc_claimAutoreleasedReturnValue(), v50, v193))
  {
    memset(&buf, 0, 512);
    v51 = v193;
    if (!statfs([v193 fileSystemRepresentation], &buf))
    {
      f_bsize = buf.f_bsize;
      f_blocks = buf.f_blocks;
      f_bavail = buf.f_bavail;
      v55 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:f_blocks * f_bsize];
      [v55 setObject:v56 forKeyedSubscript:@"VolumeTotal"];

      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:f_bavail * f_bsize];
      [v55 setObject:v57 forKeyedSubscript:@"VolumeAvailable"];

      *&v216[8] = 0;
      *v216 = 0;
      out_token[3] = 0;
      *&v211 = 0;
      *out_token = 5;
      out_token[2] = 32;
      v58 = v193;
      if (!getattrlist([v193 fileSystemRepresentation], out_token, v216, 0xCuLL, 1u))
      {
        v214 = 0;
        v59 = v193;
        if (!fsctl([v193 fileSystemRepresentation], 0x4004681BuLL, &v214, 0))
        {
          v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v216[4] * v214];
          [v55 setObject:v60 forKeyedSubscript:@"VolumeLowSpaceThreshold"];
        }
      }

      [v199 setObject:v55 forKeyedSubscript:@"HomeVolumeSpace"];
    }
  }

  else
  {
    v193 = 0;
  }

  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hostName = *MEMORY[0x277CBF010];
  v195 = CFPreferencesCopyValue(@"KeyboardsCurrentAndNext", @"com.apple.keyboard.preferences", @"mobile", *MEMORY[0x277CBF010]);
  if (v195 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v213 = 0u;
    v211 = 0u;
    v212 = 0u;
    *out_token = 0u;
    v62 = v195;
    v63 = [v62 countByEnumeratingWithState:out_token objects:&buf count:16];
    if (v63)
    {
      v64 = *v211;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v211 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*&out_token[2] + 8 * i);
          if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v67 = [v66 stringByReplacingOccurrencesOfString:@"@sw=" withString:@" "];
            v68 = [v67 stringByReplacingOccurrencesOfString:@"@hw=" withString:@" "];

            v69 = [v68 stringByReplacingOccurrencesOfString:@"hw=" withString:&stru_2843AA6A8];;

            v70 = [v69 stringByReplacingOccurrencesOfString:@"sw=" withString:&stru_2843AA6A8];;

            v71 = [v70 stringByReplacingOccurrencesOfString:@"Automatic" withString:&stru_2843AA6A8];

            v72 = *__error();
            v73 = sub_22EE82CE0();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
            {
              *v216 = 138412546;
              *&v216[4] = v66;
              *&v216[12] = 2112;
              *&v216[14] = v71;
              _os_log_debug_impl(&dword_22EE81000, v73, OS_LOG_TYPE_DEBUG, "keyboard %@ -> %@", v216, 0x16u);
            }

            *__error() = v72;
            if (([v61 containsObject:v71] & 1) == 0)
            {
              [v61 addObject:v71];
            }
          }

          else
          {
            v74 = *__error();
            v75 = sub_22EE82CE0();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA69D4(&v207, v208, v75);
            }

            *__error() = v74;
          }
        }

        v63 = [v62 countByEnumeratingWithState:out_token objects:&buf count:16];
      }

      while (v63);
    }

    v194 = [v61 copy];
  }

  else
  {
    v76 = *__error();
    v77 = sub_22EE82CE0();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6A14();
    }

    v194 = 0;
    *__error() = v76;
  }

  if (v194)
  {
    [v199 setObject:v194 forKeyedSubscript:@"KeyboardLanguages"];
  }

  v78 = sub_22EE8A370();
  v79 = v78;
  if (!v78 || ![v78 count])
  {
    v82 = *__error();
    v83 = sub_22EE82CE0();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6AC0();
    }

    *__error() = v82;
    goto LABEL_106;
  }

  v80 = *__error();
  v81 = sub_22EE82CE0();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA6A50();
  }

  *__error() = v80;
  if ([v79 count] < 2)
  {
    v84 = MEMORY[0x277CBEA60];
    v85 = [v79 firstObject];
    v190 = [v84 arrayWithObject:v85];
  }

  else
  {
    v190 = [v79 subarrayWithRange:{0, 2}];
  }

  if (!v190)
  {
LABEL_106:
    v190 = 0;
    goto LABEL_110;
  }

  [v199 setObject:v190 forKeyedSubscript:@"PreferredLanguages"];
LABEL_110:
  v86 = sub_22EE8A370();
  v87 = MEMORY[0x277CBEAF8];
  v88 = [v86 firstObject];
  v89 = [v87 localeWithLocaleIdentifier:v88];
  v196 = [v89 objectForKey:*MEMORY[0x277CBE690]];

  v90 = *__error();
  v91 = sub_22EE82CE0();
  v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG);
  if (v196)
  {
    if (v92)
    {
      sub_22EEA6AFC();
    }

    *__error() = v90;
    v93 = v196;

    [v199 setObject:v93 forKeyedSubscript:@"CountryCode"];
  }

  else
  {
    if (v92)
    {
      sub_22EEA6B6C();
    }

    *__error() = v90;
  }

  v209 = 0;
  *out_token = 0;
  *v216 = 0;
  v214 = 0;
  *&buf.f_bsize = 8;
  if (sysctlbyname("kern.num_vnodes", out_token, &buf.f_bsize, 0, 0))
  {
    v94 = *__error();
    v95 = sub_22EE82CE0();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6BA8();
    }

LABEL_129:

    v187 = 0;
    *__error() = v94;
    goto LABEL_130;
  }

  *&buf.f_bsize = 8;
  if (sysctlbyname("kern.free_vnodes", v216, &buf.f_bsize, 0, 0))
  {
    v94 = *__error();
    v95 = sub_22EE82CE0();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6C30();
    }

    goto LABEL_129;
  }

  *&buf.f_bsize = 8;
  if (sysctlbyname("kern.maxvnodes", &v214, &buf.f_bsize, 0, 0))
  {
    v94 = *__error();
    v95 = sub_22EE82CE0();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6CB8();
    }

    goto LABEL_129;
  }

  *&buf.f_bsize = 8;
  if (sysctlbyname("vfs.vnstats.vn_dealloc_level", &v209, &buf.f_bsize, 0, 0))
  {
    v94 = *__error();
    v95 = sub_22EE82CE0();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6D40();
    }

    goto LABEL_129;
  }

  v181 = objc_alloc(MEMORY[0x277CBEAC0]);
  v182 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*out_token];
  v183 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v216];
  v184 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v214];
  v185 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v209];
  v187 = [v181 initWithObjectsAndKeys:{v182, @"NumVnodesAllocated", v183, @"NumVnodesFree", v184, @"NumVnodesMax", v185, @"VnodeDeallocLevel", 0}];

  if (v187)
  {
    [v199 setObject:v187 forKeyedSubscript:@"VnodeInfo"];
  }

  else
  {
    v187 = 0;
  }

LABEL_130:
  LODWORD(v214) = 0;
  if (!dyld_process_create_for_current_task())
  {
    v106 = *__error();
    v107 = sub_22EE82CE0();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6F28();
    }

    *__error() = v106;
    goto LABEL_146;
  }

  if (!dyld_process_snapshot_create_for_process())
  {
    v108 = *__error();
    v109 = sub_22EE82CE0();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6E94(&v214);
    }

    *__error() = v108;
    dyld_process_dispose();
    goto LABEL_146;
  }

  if (!dyld_process_snapshot_get_shared_cache())
  {
    v110 = *__error();
    v111 = sub_22EE82CE0();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA6E58();
    }

    *__error() = v110;
    dyld_process_snapshot_dispose();
    dyld_process_dispose();
    goto LABEL_146;
  }

  *out_token = 0;
  *&out_token[2] = out_token;
  v211 = 0x2020000000uLL;
  *v216 = 0;
  *&v216[8] = v216;
  *&v216[16] = 0x2020000000;
  v217 = 0;
  v96 = MEMORY[0x277D85FA0];
  v97 = malloc_type_malloc(0x8000000uLL / *MEMORY[0x277D85FA0], 0x385D3CBDuLL);
  *&buf.f_bsize = MEMORY[0x277D85DD0];
  buf.f_blocks = 3221225472;
  buf.f_bfree = sub_22EE8484C;
  buf.f_bavail = &unk_278870E88;
  buf.f_ffree = v216;
  buf.f_fsid = v97;
  buf.f_files = out_token;
  dyld_shared_cache_for_each_file();
  v98 = *__error();
  v99 = sub_22EE82CE0();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA6DC8(&out_token[2]);
  }

  *__error() = v98;
  free(v97);
  dyld_process_snapshot_dispose();
  dyld_process_dispose();
  v100 = *(*&out_token[2] + 24);
  v101 = *v96;
  v102 = *(*&v216[8] + 24);
  v103 = objc_alloc(MEMORY[0x277CBEAC0]);
  v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v101 * v100];
  v105 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v102 * v101];
  v189 = [v103 initWithObjectsAndKeys:{v104, @"SharedCacheSizeResident", v105, @"SharedCacheSizeVirtual", 0}];

  _Block_object_dispose(v216, 8);
  _Block_object_dispose(out_token, 8);
  if (!v189)
  {
LABEL_146:
    v189 = 0;
    goto LABEL_147;
  }

  [v199 setObject:v189 forKeyedSubscript:@"SharedCacheInfo"];
LABEL_147:
  v112 = CFPreferencesCopyValue(@"HardwareKeyboardLastSeen", @"com.apple.keyboard.preferences", @"mobile", hostName);
  v113 = v112;
  v115 = 0;
  if (v112)
  {
    Value = CFBooleanGetValue(v112);
    CFRelease(v113);
    if (Value)
    {
      v115 = 1;
    }
  }

  v116 = [MEMORY[0x277CCABB0] numberWithBool:v115];
  [v199 setObject:v116 forKeyedSubscript:@"HardwareKeyboard"];

  if (qword_27DA9CE90 != -1)
  {
    sub_22EEA6FB8();
  }

  v117 = qword_27DA9CE98;
  if (v117)
  {
    [v199 setObject:v117 forKeyedSubscript:@"NonDefaultFeatureFlags"];
  }

  v118 = is_apple_internal_setting();
  v119 = [MEMORY[0x277CCABB0] numberWithBool:v118];
  [v199 setObject:v119 forKeyedSubscript:@"IsAppleInternal"];

  if (v118)
  {
    v120 = [MEMORY[0x277D36B80] automatedDeviceGroup];
    if ([v120 length])
    {
      v121 = v120;
      v122 = 0;
      v123 = v120;
    }

    else
    {
      v124 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", hostName);
      v125 = [v124 lowercaseString];

      if ([v125 containsString:@"carry"])
      {
        v122 = 1;
      }

      else
      {
        v122 = [v125 containsString:@"walkabout"];
      }

      v123 = 0;
    }

    v126 = v123;
    v127 = [MEMORY[0x277CCABB0] numberWithBool:v122];
    [v199 setObject:v127 forKeyedSubscript:@"IsInternalCarryDevice"];

    if (v126)
    {
      [v199 setObject:v126 forKeyedSubscript:@"AutomatedDeviceGroup"];
    }
  }

  if (objc_opt_class())
  {
    v128 = objc_alloc_init(MEMORY[0x277D036E0]);
    *v216 = 0;
    v129 = [v128 openAndReturnError:v216];
    v130 = *v216;
    v131 = v130;
    if (v129)
    {
      v214 = v130;
      v132 = [v128 allInstalledRootsAndReturnError:&v214];
      v133 = v214;

      v134 = objc_alloc_init(MEMORY[0x277CBEB40]);
      if (v132)
      {
        v213 = 0u;
        v211 = 0u;
        v212 = 0u;
        *out_token = 0u;
        v135 = v132;
        v136 = [v135 countByEnumeratingWithState:out_token objects:&buf count:16];
        if (v136)
        {
          v137 = *v211;
          do
          {
            for (j = 0; j != v136; ++j)
            {
              if (*v211 != v137)
              {
                objc_enumerationMutation(v135);
              }

              v139 = [*(*&out_token[2] + 8 * j) name];
              [v134 addObject:v139];
            }

            v136 = [v135 countByEnumeratingWithState:out_token objects:&buf count:16];
          }

          while (v136);
        }
      }

      v140 = [v128 closeAndReturnError:0];
      v141 = [v134 array];

      v131 = v133;
    }

    else
    {
      v142 = *__error();
      v143 = sub_22EE82CE0();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA6FE0();
      }

      v141 = 0;
      *__error() = v142;
    }
  }

  else
  {
    v141 = 0;
  }

  if ([v141 count])
  {
    [v199 setObject:v141 forKeyedSubscript:@"InstalledRootNames"];
    [v199 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsRootInstalled"];
  }

  else
  {
    *out_token = 0;
    *v216 = 8;
    v144 = sysctlbyname("kern.roots_installed", out_token, v216, 0, 0) == 0;
    v145 = *__error();
    v146 = sub_22EE82CE0();
    v147 = v146;
    if (v144)
    {
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 134217984;
        *&buf.f_iosize = *out_token;
        _os_log_impl(&dword_22EE81000, v147, OS_LOG_TYPE_DEFAULT, "Installed root info kern.roots_installed: %llu", &buf, 0xCu);
      }

      *__error() = v145;
      v148 = [MEMORY[0x277CCABB0] numberWithBool:*out_token != 0];
      [v199 setObject:v148 forKeyedSubscript:@"IsRootInstalled"];
    }

    else
    {
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA7050();
      }

      *__error() = v145;
    }
  }

  v149 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v150 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerd.lowpowermode.state"];
  v151 = [v150 objectForKey:@"state"];
  v152 = v151 == 0;

  if (v152)
  {
    v153 = 0;
  }

  else
  {
    v153 = [v150 BOOLForKey:@"state"];
  }

  v154 = [MEMORY[0x277CCABB0] numberWithBool:v153];
  [v149 setObject:v154 forKeyedSubscript:@"LowPowerMode"];

  v155 = [v150 objectForKey:@"stateChangeDate"];
  if (v155)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v156 = MEMORY[0x277CCABB0];
      [v155 timeIntervalSinceReferenceDate];
      v157 = [v156 numberWithDouble:?];
      [v149 setObject:v157 forKeyedSubscript:@"PowerModeTransitionTimestamp"];
    }
  }

  if (v149)
  {
    [v199 setObject:v149 forKeyedSubscript:@"MostRecentLowPowerModeTransition"];
  }

  if (sub_22EE8A4D8())
  {
    v158 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    *out_token = 0;
    *&out_token[2] = out_token;
    *&v211 = 0x2050000000;
    v159 = qword_27DA9CEA8;
    *(&v211 + 1) = qword_27DA9CEA8;
    if (!qword_27DA9CEA8)
    {
      *&buf.f_bsize = MEMORY[0x277D85DD0];
      buf.f_blocks = 3221225472;
      buf.f_bfree = sub_22EE8A61C;
      buf.f_bavail = &unk_278870EC8;
      buf.f_files = out_token;
      sub_22EE8A61C(&buf);
      v159 = *(*&out_token[2] + 24);
    }

    v160 = v159;
    _Block_object_dispose(out_token, 8);
    if (!v159)
    {
LABEL_219:

      goto LABEL_220;
    }

    v161 = [v159 sharedInstance];
    v162 = [v161 copyCurrentMitigationInfoForClientIdentifier:@"com.apple.pmmitigation.tailspin"];

    if (!v162)
    {
LABEL_217:
      v158 = v158;

      if (!v158)
      {
        goto LABEL_220;
      }

      [v199 setObject:v158 forKeyedSubscript:@"PowerManagementMitigation"];
      goto LABEL_219;
    }

    v163 = [v162 mitigationLevel];
    if (v163 <= 49)
    {
      if (!v163)
      {
        v164 = @"None";
        goto LABEL_216;
      }

      if (v163 == 20)
      {
        v164 = @"Low";
        goto LABEL_216;
      }
    }

    else
    {
      switch(v163)
      {
        case '2':
          v164 = @"Medium";
          goto LABEL_216;
        case 'F':
          v164 = @"High";
          goto LABEL_216;
        case 'd':
          v164 = @"Extreme";
LABEL_216:
          [v158 setObject:v164 forKeyedSubscript:@"PowerManagementMitigationLevel"];
          goto LABEL_217;
      }
    }

    v164 = @"Unknown";
    goto LABEL_216;
  }

LABEL_220:
  if (qword_27DA9CE88 != -1)
  {
    sub_22EEA70D8();
  }

  if (qword_27DA9CE80)
  {
    v165 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v199 setObject:v165 forKeyedSubscript:@"OSCryptexFileExtents"];
  }

  v200[1] = 0;
  v200[2] = 0;
  sub_22EE86CE0();
  v166 = 0;
  v167 = 0;
  if (v166)
  {
    [v199 setObject:v166 forKeyedSubscript:@"GPURestartCount"];
  }

  if (v167)
  {
    [v199 setObject:v167 forKeyedSubscript:@"GPURestartLastMachAbs"];
  }

  *&buf.f_bsize = 0;
  if (kpersona_find_by_type() == -1)
  {
    v168 = *__error();
    v169 = sub_22EE82CE0();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7100();
    }

    *__error() = v168;
  }

  v170 = [MEMORY[0x277CCABB0] numberWithBool:*&buf.f_bsize != 0];
  [v199 setObject:v170 forKeyedSubscript:@"HasEnterprisePersona"];

  v200[0] = 0;
  v171 = [MEMORY[0x277CCAC58] dataWithPropertyList:v199 format:200 options:0 error:v200];
  v172 = v200[0];
  if (v171)
  {
    v173 = v171;
    [v171 bytes];
    [v171 length];
    if (ktrace_file_append_chunk())
    {
      v174 = 0;
    }

    else
    {
      v177 = *__error();
      v178 = sub_22EE82CE0();
      if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA713C();
      }

      *__error() = v177;
      v174 = *__error();
    }
  }

  else
  {
    v175 = *__error();
    v176 = sub_22EE82CE0();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA71C8();
    }

    *__error() = v175;
    v174 = 22;
  }

  objc_autoreleasePoolPop(context);
  v179 = *MEMORY[0x277D85DE8];
  return v174;
}

void sub_22EE89084()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D25710] sharedDataAccessor];
  v20 = 0;
  v1 = [v0 copyPathForPersonalizedData:11 error:&v20];
  v2 = v20;

  if (!v1)
  {
    v9 = *__error();
    v10 = sub_22EE82CE0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v24.st_dev = 138412290;
      *&v24.st_mode = v2;
      _os_log_impl(&dword_22EE81000, v10, OS_LOG_TYPE_DEFAULT, "Unable to get path for MSUDA_CRYPTEX1_OS_CRYPTEX with error: (%@)", &v24, 0xCu);
    }

    goto LABEL_30;
  }

  v3 = [v1 UTF8String];
  if (v3 && *v3)
  {
    v4 = open(v3, 0, 0);
    if (v4 < 0)
    {
      v11 = *__error();
      v12 = sub_22EE82CE0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA743C();
      }

      v13 = __error();
      v8 = 0;
      *v13 = v11;
    }

    else
    {
      v5 = v4;
      memset(&v24, 0, sizeof(v24));
      if (fstat(v4, &v24))
      {
        v6 = *__error();
        v7 = sub_22EE82CE0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA723C();
        }
      }

      else
      {
        st_size = v24.st_size;
        if (v24.st_size)
        {
          v15 = 0;
          v16 = 0;
          v21 = 0;
          while (1)
          {
            v22 = st_size;
            v23 = v16;
            if (fcntl(v5, 65, &v21))
            {
              break;
            }

            if (!v22)
            {
              v17 = *__error();
              v18 = sub_22EE82CE0();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA7358();
              }

              goto LABEL_26;
            }

            v16 += v22;
            ++v15;
            st_size -= v22;
            if (!st_size)
            {
              goto LABEL_27;
            }
          }

          v17 = *__error();
          v18 = sub_22EE82CE0();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA72C0();
          }

LABEL_26:

          *__error() = v17;
LABEL_27:
          close(v5);
          v8 = v15;
          goto LABEL_28;
        }

        v6 = *__error();
        v7 = sub_22EE82CE0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA73CC();
        }
      }

      *__error() = v6;
      close(v5);
      v8 = 0;
    }

LABEL_28:
    qword_27DA9CE80 = v8;
    v9 = *__error();
    v10 = sub_22EE82CE0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA74C0();
    }

LABEL_30:

    *__error() = v9;
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t tailspin_write_symbolless_binary_info_chunk(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    if (!v3)
    {
      sub_22EEA659C();
    }

    v4 = v3;
    add_binary_info_to_binary_dictionary(v3, v2);
    v13 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v13];
    v6 = v13;
    if (v5)
    {
      [v5 bytes];
      [v5 length];
      v7 = 0;
      if (!ktrace_file_append_chunk())
      {
        v8 = *__error();
        v9 = sub_22EE82CE0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA7540();
        }

        *__error() = v8;
        v7 = *__error();
      }
    }

    else
    {
      v10 = *__error();
      v11 = sub_22EE82CE0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA75C8();
      }

      *__error() = v10;
      v7 = 22;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t tailspin_write_os_signpost_support_chunks(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a3;
  v11 = a4;
  if (!a2)
  {
    v12 = [MEMORY[0x277D24438] localStore];
    goto LABEL_6;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (!v12)
  {
    v21 = *__error();
    v22 = sub_22EE82CE0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7678();
    }

    appended = 22;
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v12];

  if ((v14 & 1) == 0)
  {
    v21 = *__error();
    v22 = sub_22EE82CE0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA763C();
    }

    appended = 2;
LABEL_16:

    *__error() = v21;
    goto LABEL_17;
  }

  v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  v16 = [MEMORY[0x277D24438] storeWithArchiveURL:v15];

  v12 = v16;
LABEL_6:
  if (a7)
  {
    v17 = SignpostSupportAllowlistedStringSetForCurrentDevice();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22EE8977C;
    v24[3] = &unk_278870D90;
    v25 = v17;
    v18 = v17;
    v19 = MEMORY[0x2318F9980](v24);
  }

  else
  {
    v19 = 0;
  }

  appended = ktrace_file_append_log_content_from_store();

LABEL_17:
  return appended;
}

id sub_22EE8977C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 subsystem];
  v5 = [v3 category];
  v6 = [v3 signpostName];
  IsDynamicDataAllowlistedForCurrentDevice = SignpostSupportIsDynamicDataAllowlistedForCurrentDevice();

  if (IsDynamicDataAllowlistedForCurrentDevice)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 decomposedMessage];
    if ([v9 placeholderCount])
    {
      v10 = 0;
      v8 = 0;
      do
      {
        v11 = [v9 argumentAtIndex:v10];
        if ([v11 category] == 3 || objc_msgSend(v11, "category") == 2 && (objc_msgSend(v11, "objectRepresentation"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = objc_msgSend(*(a1 + 32), "containsObject:", v12), v13, (v14 & 1) == 0))
        {
          if (v8)
          {
            [v8 addIndex:v10];
          }

          else
          {
            v8 = [MEMORY[0x277CCAB58] indexSetWithIndex:v10];
          }
        }

        ++v10;
      }

      while (v10 < [v9 placeholderCount]);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void tailspin_symbolicate_file_async(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v7 = a5;
  sub_22EE9B5D8();
}

uint64_t sub_22EE89ED4(uint64_t a1)
{
  sub_22EE9B6E4(*(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t sub_22EE89F1C(uint64_t a1)
{
  if (ktrace_chunk_size() == -1)
  {
    sub_22EEA659C();
  }

  v2 = ktrace_chunk_size();
  result = ktrace_chunk_map_data();
  if (result)
  {
    v4 = result;
    v7 = 0;
    v8 = 0;
    if (ktrace_chunk_tag() == 36864)
    {
      tailspin_parse_stackshot_chunk(v4, v2, &v8, &v7);
      v6 = v7;
      v5 = v8;
      if (!v8)
      {
        return ktrace_chunk_unmap_data();
      }
    }

    else
    {
      v7 = v2;
      v8 = v4;
      v6 = v2;
      v5 = v4;
    }

    if (v6)
    {
      sub_22EE9B78C(*(a1 + 32), v5, v6);
    }

    return ktrace_chunk_unmap_data();
  }

  return result;
}

uint64_t sub_22EE89FE8(uint64_t a1)
{
  if (ktrace_chunk_size() == -1)
  {
    sub_22EEA659C();
  }

  v2 = ktrace_chunk_size();
  result = ktrace_chunk_map_data();
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);
    if (ktrace_chunk_is_64_bit())
    {
      v6 = 64;
    }

    else
    {
      v6 = 32;
    }

    sub_22EE9CB68(v5, v4, v2, v6);

    return ktrace_chunk_unmap_data();
  }

  return result;
}

uint64_t sub_22EE8A0A4(uint64_t a1)
{
  if (ktrace_chunk_size() == -1)
  {
    sub_22EEA659C();
  }

  v2 = ktrace_chunk_size();
  result = ktrace_chunk_map_data();
  if (result)
  {
    sub_22EE9C60C(*(a1 + 32), result, v2);

    return ktrace_chunk_unmap_data();
  }

  return result;
}

void sub_22EE8A144(uint64_t a1)
{
  v2 = ktrace_chunk_copy_plist();
  sub_22EE9D1FC(*(a1 + 32), v2);
}

void sub_22EE8A198(uint64_t a1)
{
  v2 = ktrace_chunk_copy_plist();
  sub_22EE9D534(*(a1 + 32), v2);
}

void *sub_22EE8A1EC(void *result, uint64_t *a2)
{
  if ((*a2 & 0xC0) != 0)
  {
    return sub_22EE9CEE0(result[4], a2);
  }

  return result;
}

double sub_22EE8A204(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  pid_for_thread = ktrace_get_pid_for_thread();

  return sub_22EE9D0BC(v6, a2, a3, pid_for_thread);
}

uint64_t sub_22EE8A258(uint64_t a1)
{
  v2 = *__error();
  v3 = sub_22EE82CE0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA779C();
  }

  *__error() = v2;
  return sub_22EE9B76C(*(a1 + 32));
}

uint64_t sub_22EE8A2C0(uint64_t a1)
{
  sub_22EE9D840(*(a1 + 40), *(a1 + 64), *(a1 + 65), *(a1 + 48));
  sub_22EE9B6E4(*(a1 + 40));
  v2 = *(a1 + 56);
  ktrace_session_destroy();
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t sub_22EE8A328(uint64_t a1)
{
  sub_22EE9B6E4(*(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

id sub_22EE8A370()
{
  v0 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v0;
      if (![v1 count])
      {
LABEL_7:

        goto LABEL_12;
      }

      v2 = 0;
      v3 = 1;
      while (1)
      {
        v4 = [v1 objectAtIndexedSubscript:v2];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v6 = (v2 + 1 >= [v1 count]) | ~v3;
        v2 = 1;
        v3 = 0;
        if (v6)
        {
          goto LABEL_7;
        }
      }

      v7 = *__error();
      v8 = sub_22EE82CE0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA77D8();
      }

      *__error() = v7;
    }
  }

  v1 = [MEMORY[0x277CBEAF8] preferredLanguages];
LABEL_12:

  return v1;
}

uint64_t sub_22EE8A4D8()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!qword_27DA9CEA0)
  {
    qword_27DA9CEA0 = _sl_dlopen();
  }

  result = qword_27DA9CEA0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE8A5A8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27DA9CEA0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class sub_22EE8A61C(uint64_t a1)
{
  v3 = 0;
  if (!sub_22EE8A4D8())
  {
    sub_22EEA79D0(&v3);
  }

  result = objc_getClass("PMPowerMitigations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22EEA7954();
  }

  qword_27DA9CEA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22EE8A6C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t *sub_22EE8A70C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t is_apple_internal_setting()
{
  if (qword_280B25F80 != -1)
  {
    sub_22EE852D4();
  }

  return byte_280B25F88;
}

uint64_t tailspin_min_oncore_sampling_period_allowed()
{
  if (qword_27DA9CEB8 != -1)
  {
    sub_22EEA7A50();
  }

  return qword_27DA9CEB0;
}

uint64_t sub_22EE8A794()
{
  v3 = 8;
  result = sysctlbyname("kperf.limits.timer_min_bg_period_ns", &qword_27DA9CEB0, &v3, 0, 0);
  if (result)
  {
    v1 = *__error();
    v2 = sub_22EE82CE0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7A64(v2);
    }

    *__error() = v1;
    result = sub_22EE85C00();
    qword_27DA9CEB0 = result;
  }

  return result;
}

uint64_t tailspin_min_full_sampling_period_allowed()
{
  if (qword_280B23E20 != -1)
  {
    sub_22EE85AF0();
  }

  return qword_280B23E18;
}

uint64_t sub_22EE8A860(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = snprintf(byte_27DA9CEC8, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_27DA9CEC8[result], 1024 - result, a2, &a9);
  }

  qword_27DA9CD18 = byte_27DA9CEC8;
  return result;
}

void serialize_cputrace_session(uint64_t a1)
{
  if (sub_22EE992A8())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v2 = off_27DA9D2C8;
    v19 = off_27DA9D2C8;
    if (!off_27DA9D2C8)
    {
      v3 = sub_22EE905C4();
      v17[3] = dlsym(v3, "hwtrace_live_recording_session_serialize");
      off_27DA9D2C8 = v17[3];
      v2 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (v2)
    {
      v4 = v2(a1);
      if (v4)
      {
        v5 = v4;
        v6 = [MEMORY[0x277CCAA00] defaultManager];
        v7 = [v6 fileExistsAtPath:@"/var/db/tailspin_cputrace_session.json"];

        if (v7)
        {
          unlink("/var/db/tailspin_cputrace_session.json");
        }

        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
        v9 = [v8 dataUsingEncoding:4];
        if (([v9 writeToFile:@"/var/db/tailspin_cputrace_session.json" atomically:1] & 1) == 0)
        {
          v10 = *__error();
          v11 = sub_22EE82CE0();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA7CC4();
          }

          *__error() = v10;
        }
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const char *soft_hwtrace_live_recording_session_serialize(hwtrace_live_recording_session_t)"];
      [v14 handleFailureInFunction:v15 file:@"AppleHWTrace_SoftLinking.h" lineNumber:43 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }

  else
  {
    v12 = *__error();
    v13 = sub_22EE82CE0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7C44();
    }

    *__error() = v12;
  }
}

int *create_and_start_cputrace_live_recording()
{
  v108 = *MEMORY[0x277D85DE8];
  if ((sub_22EE992A8() & 1) == 0)
  {
    v13 = *__error();
    v16 = sub_22EE82CE0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7D44();
    }

    result = __error();
    goto LABEL_27;
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v0 = off_27DA9D2D8;
  v102 = off_27DA9D2D8;
  if (!off_27DA9D2D8)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90828;
    v106 = &unk_278871098;
    v107 = &v99;
    v1 = sub_22EE905C4();
    v2 = dlsym(v1, "hwtrace_live_topology");
    *(v107[1] + 24) = v2;
    off_27DA9D2D8 = *(v107[1] + 24);
    v0 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v0)
  {
    v67 = [MEMORY[0x277CCA890] currentHandler];
    v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_topology_t soft_hwtrace_live_topology()"];
    [v67 handleFailureInFunction:v68 file:@"AppleHWTrace_SoftLinking.h" lineNumber:64 description:{@"%s", dlerror()}];

LABEL_80:
    __break(1u);
LABEL_81:
    v13 = *__error();
    v64 = sub_22EE82CE0();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7EA4();
    }

    goto LABEL_78;
  }

  v3 = v0();
  if (!v3)
  {
    v13 = *__error();
    v17 = sub_22EE82CE0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7FE8();
    }

    result = __error();
    goto LABEL_27;
  }

  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v4 = off_27DA9D2E0;
  v102 = off_27DA9D2E0;
  if (!off_27DA9D2E0)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90878;
    v106 = &unk_278871098;
    v107 = &v99;
    v5 = sub_22EE905C4();
    v6 = dlsym(v5, "hwtrace_live_topology_systems");
    *(v107[1] + 24) = v6;
    off_27DA9D2E0 = *(v107[1] + 24);
    v4 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v4)
  {
    v69 = [MEMORY[0x277CCA890] currentHandler];
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_topology_systems(hwtrace_live_topology_t, hwtrace_live_system_t **, size_t *)"}];
    [v69 handleFailureInFunction:v70 file:@"AppleHWTrace_SoftLinking.h" lineNumber:65 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v4(v3, &v98, &v97);
  if (!v97)
  {
LABEL_18:
    v13 = *__error();
    v14 = sub_22EE82CE0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7F68();
    }

    result = __error();
    goto LABEL_27;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v98 + 8 * v7);
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v9 = off_27DA9D2E8;
    v102 = off_27DA9D2E8;
    if (!off_27DA9D2E8)
    {
      v103 = MEMORY[0x277D85DD0];
      v104 = 3221225472;
      v105 = sub_22EE908C8;
      v106 = &unk_278871098;
      v107 = &v99;
      v10 = sub_22EE905C4();
      v11 = dlsym(v10, "hwtrace_live_system_name");
      *(v107[1] + 24) = v11;
      off_27DA9D2E8 = *(v107[1] + 24);
      v9 = v100[3];
    }

    _Block_object_dispose(&v99, 8);
    if (!v9)
    {
      v65 = [MEMORY[0x277CCA890] currentHandler];
      v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const char *soft_hwtrace_live_system_name(hwtrace_live_system_t)"];
      [v65 handleFailureInFunction:v66 file:@"AppleHWTrace_SoftLinking.h" lineNumber:66 description:{@"%s", dlerror()}];

      goto LABEL_80;
    }

    v12 = v9(v8);
    if (*v12 == 88 && v12[1] == 78 && v12[2] == 85)
    {
      break;
    }

    if (v97 <= ++v7)
    {
      goto LABEL_18;
    }
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v19 = off_27DA9D2F0;
  v102 = off_27DA9D2F0;
  if (!off_27DA9D2F0)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90918;
    v106 = &unk_278871098;
    v107 = &v99;
    v20 = sub_22EE905C4();
    v21 = dlsym(v20, "hwtrace_live_recording_options_init");
    *(v107[1] + 24) = v21;
    off_27DA9D2F0 = *(v107[1] + 24);
    v19 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v19)
  {
    v71 = [MEMORY[0x277CCA890] currentHandler];
    v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_recording_options_t soft_hwtrace_live_recording_options_init()"];
    [v71 handleFailureInFunction:v72 file:@"AppleHWTrace_SoftLinking.h" lineNumber:25 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v22 = v19();
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v23 = off_27DA9D2F8;
  v102 = off_27DA9D2F8;
  if (!off_27DA9D2F8)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90968;
    v106 = &unk_278871098;
    v107 = &v99;
    v24 = sub_22EE905C4();
    v25 = dlsym(v24, "hwtrace_live_recording_options_set_session_policy");
    *(v107[1] + 24) = v25;
    off_27DA9D2F8 = *(v107[1] + 24);
    v23 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v23)
  {
    v73 = [MEMORY[0x277CCA890] currentHandler];
    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_options_set_session_policy(hwtrace_live_recording_options_t, hwtrace_live_recording_option_session_policy_t)"}];
    [v73 handleFailureInFunction:v74 file:@"AppleHWTrace_SoftLinking.h" lineNumber:27 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v23(v22, 2);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v26 = off_27DA9D300;
  v102 = off_27DA9D300;
  if (!off_27DA9D300)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE909B8;
    v106 = &unk_278871098;
    v107 = &v99;
    v27 = sub_22EE905C4();
    v28 = dlsym(v27, "hwtrace_live_recording_options_set_background");
    *(v107[1] + 24) = v28;
    off_27DA9D300 = *(v107[1] + 24);
    v26 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v26)
  {
    v75 = [MEMORY[0x277CCA890] currentHandler];
    v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_options_set_background(hwtrace_live_recording_options_t, BOOL)"}];
    [v75 handleFailureInFunction:v76 file:@"AppleHWTrace_SoftLinking.h" lineNumber:28 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v26(v22, 1);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v29 = off_27DA9D308;
  v102 = off_27DA9D308;
  if (!off_27DA9D308)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90A08;
    v106 = &unk_278871098;
    v107 = &v99;
    v30 = sub_22EE905C4();
    v31 = dlsym(v30, "hwtrace_live_recording_options_add_system");
    *(v107[1] + 24) = v31;
    off_27DA9D308 = *(v107[1] + 24);
    v29 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v29)
  {
    v77 = [MEMORY[0x277CCA890] currentHandler];
    v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_live_recording_system_options_t soft_hwtrace_live_recording_options_add_system(hwtrace_live_recording_options_t, hwtrace_live_system_t)"}];
    [v77 handleFailureInFunction:v78 file:@"AppleHWTrace_SoftLinking.h" lineNumber:29 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v32 = v29(v22, v8);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v33 = off_27DA9D310;
  v102 = off_27DA9D310;
  if (!off_27DA9D310)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90A58;
    v106 = &unk_278871098;
    v107 = &v99;
    v34 = sub_22EE905C4();
    v35 = dlsym(v34, "hwtrace_live_recording_system_options_set_trace_mode");
    *(v107[1] + 24) = v35;
    off_27DA9D310 = *(v107[1] + 24);
    v33 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v33)
  {
    v79 = [MEMORY[0x277CCA890] currentHandler];
    v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_trace_mode(hwtrace_live_recording_system_options_t, hwtrace_live_recording_system_option_trace_mode_t)"}];
    [v79 handleFailureInFunction:v80 file:@"AppleHWTrace_SoftLinking.h" lineNumber:32 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v33(v32, 1);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v36 = off_27DA9D318;
  v102 = off_27DA9D318;
  if (!off_27DA9D318)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90AA8;
    v106 = &unk_278871098;
    v107 = &v99;
    v37 = sub_22EE905C4();
    v38 = dlsym(v37, "hwtrace_live_recording_system_options_set_driver");
    *(v107[1] + 24) = v38;
    off_27DA9D318 = *(v107[1] + 24);
    v36 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v36)
  {
    v81 = [MEMORY[0x277CCA890] currentHandler];
    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_driver(hwtrace_live_recording_system_options_t, BOOL)"}];
    [v81 handleFailureInFunction:v82 file:@"AppleHWTrace_SoftLinking.h" lineNumber:33 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v36(v32, 1);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v39 = off_27DA9D320;
  v102 = off_27DA9D320;
  if (!off_27DA9D320)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90AF8;
    v106 = &unk_278871098;
    v107 = &v99;
    v40 = sub_22EE905C4();
    v41 = dlsym(v40, "hwtrace_live_recording_system_options_set_production");
    *(v107[1] + 24) = v41;
    off_27DA9D320 = *(v107[1] + 24);
    v39 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v39)
  {
    v83 = [MEMORY[0x277CCA890] currentHandler];
    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_production(hwtrace_live_recording_system_options_t, BOOL)"}];
    [v83 handleFailureInFunction:v84 file:@"AppleHWTrace_SoftLinking.h" lineNumber:34 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v39(v32, 0);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v42 = off_27DA9D328;
  v102 = off_27DA9D328;
  if (!off_27DA9D328)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90B48;
    v106 = &unk_278871098;
    v107 = &v99;
    v43 = sub_22EE905C4();
    v44 = dlsym(v43, "hwtrace_live_recording_system_options_set_context_target");
    *(v107[1] + 24) = v44;
    off_27DA9D328 = *(v107[1] + 24);
    v42 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v42)
  {
    v85 = [MEMORY[0x277CCA890] currentHandler];
    v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_context_target(hwtrace_live_recording_system_options_t, hwtrace_live_recording_system_option_context_target_t)"}];
    [v85 handleFailureInFunction:v86 file:@"AppleHWTrace_SoftLinking.h" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v42(v32, 0);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v45 = off_27DA9D330;
  v102 = off_27DA9D330;
  if (!off_27DA9D330)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90B98;
    v106 = &unk_278871098;
    v107 = &v99;
    v46 = sub_22EE905C4();
    v47 = dlsym(v46, "hwtrace_live_recording_system_options_set_exception_level_target");
    *(v107[1] + 24) = v47;
    off_27DA9D330 = *(v107[1] + 24);
    v45 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v45)
  {
    v87 = [MEMORY[0x277CCA890] currentHandler];
    v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_system_options_set_exception_level_target(hwtrace_live_recording_system_options_t, hwtrace_live_recording_system_option_exception_level_target_t)"}];
    [v87 handleFailureInFunction:v88 file:@"AppleHWTrace_SoftLinking.h" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v45(v32, 1);
  v96 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v48 = off_27DA9D338;
  v102 = off_27DA9D338;
  if (!off_27DA9D338)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90BE8;
    v106 = &unk_278871098;
    v107 = &v99;
    v49 = sub_22EE905C4();
    v50 = dlsym(v49, "hwtrace_live_recording_init_with_options");
    *(v107[1] + 24) = v50;
    off_27DA9D338 = *(v107[1] + 24);
    v48 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v48)
  {
    v89 = [MEMORY[0x277CCA890] currentHandler];
    v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_init_with_options(hwtrace_live_recording_options_t, hwtrace_live_recording_t *)"}];
    [v89 handleFailureInFunction:v90 file:@"AppleHWTrace_SoftLinking.h" lineNumber:46 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v51 = v48(v22, &v96);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v52 = off_27DA9D340;
  v102 = off_27DA9D340;
  if (!off_27DA9D340)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90C38;
    v106 = &unk_278871098;
    v107 = &v99;
    v53 = sub_22EE905C4();
    v54 = dlsym(v53, "hwtrace_live_recording_options_deinit");
    *(v107[1] + 24) = v54;
    off_27DA9D340 = *(v107[1] + 24);
    v52 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v52)
  {
    v91 = [MEMORY[0x277CCA890] currentHandler];
    v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_options_deinit(hwtrace_live_recording_options_t)"];
    [v91 handleFailureInFunction:v92 file:@"AppleHWTrace_SoftLinking.h" lineNumber:26 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v52(v22);
  if (v51)
  {
    v55 = *__error();
    v56 = sub_22EE82CE0();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7DC4();
    }

    result = __error();
LABEL_74:
    *result = v55;
    goto LABEL_28;
  }

  v95 = 0;
  v57 = v96;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v58 = off_27DA9D348;
  v102 = off_27DA9D348;
  if (!off_27DA9D348)
  {
    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22EE90C88;
    v106 = &unk_278871098;
    v107 = &v99;
    v59 = sub_22EE905C4();
    v60 = dlsym(v59, "hwtrace_live_recording_start");
    *(v107[1] + 24) = v60;
    off_27DA9D348 = *(v107[1] + 24);
    v58 = v100[3];
  }

  _Block_object_dispose(&v99, 8);
  if (!v58)
  {
    v93 = [MEMORY[0x277CCA890] currentHandler];
    v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_start(hwtrace_live_recording_t, hwtrace_live_recording_session_t *)"}];
    [v93 handleFailureInFunction:v94 file:@"AppleHWTrace_SoftLinking.h" lineNumber:48 description:{@"%s", dlerror()}];

    goto LABEL_80;
  }

  v61 = v58(v57, &v95);
  sub_22EE8BF90(v96);
  if (v61)
  {
    v55 = *__error();
    v62 = sub_22EE82CE0();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA7E34();
    }

    result = __error();
    goto LABEL_74;
  }

  serialize_cputrace_session(v95);
  if ((v63 & 1) == 0)
  {
    goto LABEL_81;
  }

  v103 = 0;
  v104 = 0;
  sub_22EE8C10C(v95, &v103);
  v13 = *__error();
  v64 = sub_22EE82CE0();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    sub_22EEA7EE0(&v103, v64);
  }

LABEL_78:

  result = __error();
LABEL_27:
  *result = v13;
LABEL_28:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EE8BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8BF90(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27DA9D350;
  v9 = off_27DA9D350;
  if (!off_27DA9D350)
  {
    v3 = sub_22EE905C4();
    v7[3] = dlsym(v3, "hwtrace_live_recording_deinit");
    off_27DA9D350 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_deinit(hwtrace_live_recording_t)"];
    [v4 handleFailureInFunction:v5 file:@"AppleHWTrace_SoftLinking.h" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8C0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8C10C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D358;
  v11 = off_27DA9D358;
  if (!off_27DA9D358)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_live_recording_session_uuid");
    off_27DA9D358 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_hwtrace_live_recording_session_uuid(hwtrace_live_recording_session_t, unsigned char *)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8C260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cputrace_session_data_from_disk()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 fileExistsAtPath:@"/var/db/tailspin_cputrace_session.json"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/db/tailspin_cputrace_session.json"];
    if (v2)
    {
      goto LABEL_8;
    }

    v3 = *__error();
    v4 = sub_22EE82CE0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8060();
    }
  }

  else
  {
    v3 = *__error();
    v4 = sub_22EE82CE0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8024();
    }
  }

  v5 = __error();
  v2 = 0;
  *v5 = v3;
LABEL_8:

  return v2;
}

void reinit_cputrace_live_recording_from_existing_session()
{
  if (sub_22EE992A8())
  {
    v25 = 0;
    v0 = cputrace_session_data_from_disk();
    if (!v0)
    {
LABEL_27:

      return;
    }

    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v0 encoding:4];
    v2 = v1;
    if (v1 && [v1 UTF8String])
    {
      v3 = [v2 UTF8String];
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v4 = off_27DA9D360;
      v34 = off_27DA9D360;
      if (!off_27DA9D360)
      {
        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = sub_22EE90D78;
        v29 = &unk_278871098;
        v30 = &v31;
        v5 = sub_22EE905C4();
        v32[3] = dlsym(v5, "hwtrace_live_recording_session_init");
        off_27DA9D360 = *(v30[1] + 24);
        v4 = v32[3];
      }

      _Block_object_dispose(&v31, 8);
      if (!v4)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_session_init(const char *, hwtrace_live_recording_session_t *)"}];
        [v22 handleFailureInFunction:v23 file:@"AppleHWTrace_SoftLinking.h" lineNumber:39 description:{@"%s", dlerror()}];
LABEL_34:

        __break(1u);
        return;
      }

      v4(v3, &v25);
      v6 = v25;
      if (v25)
      {
        v24 = 0;
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v7 = off_27DA9D368;
        v34 = off_27DA9D368;
        if (!off_27DA9D368)
        {
          v26 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = sub_22EE90DC8;
          v29 = &unk_278871098;
          v30 = &v31;
          v8 = sub_22EE905C4();
          v9 = dlsym(v8, "hwtrace_live_recording_init_from_session");
          *(v30[1] + 24) = v9;
          off_27DA9D368 = *(v30[1] + 24);
          v7 = v32[3];
        }

        _Block_object_dispose(&v31, 8);
        if (v7)
        {
          v7(v6, &v24);
          v10 = v25;
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v11 = off_27DA9D370;
          v34 = off_27DA9D370;
          if (!off_27DA9D370)
          {
            v26 = MEMORY[0x277D85DD0];
            v27 = 3221225472;
            v28 = sub_22EE90E18;
            v29 = &unk_278871098;
            v30 = &v31;
            v12 = sub_22EE905C4();
            v13 = dlsym(v12, "hwtrace_live_recording_session_deinit");
            *(v30[1] + 24) = v13;
            off_27DA9D370 = *(v30[1] + 24);
            v11 = v32[3];
          }

          _Block_object_dispose(&v31, 8);
          if (v11)
          {
            v11(v10);
            if (!v24)
            {
              v14 = *__error();
              v15 = sub_22EE82CE0();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA811C();
              }

              *__error() = v14;
            }

            goto LABEL_26;
          }

          v22 = [MEMORY[0x277CCA890] currentHandler];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_session_deinit(hwtrace_live_recording_session_t)"];
          [v22 handleFailureInFunction:v23 file:@"AppleHWTrace_SoftLinking.h" lineNumber:41 description:{@"%s", dlerror()}];
        }

        else
        {
          v22 = [MEMORY[0x277CCA890] currentHandler];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_init_from_session(hwtrace_live_recording_session_t, hwtrace_live_recording_t *)"}];
          [v22 handleFailureInFunction:v23 file:@"AppleHWTrace_SoftLinking.h" lineNumber:40 description:{@"%s", dlerror()}];
        }

        goto LABEL_34;
      }

      v18 = *__error();
      v21 = sub_22EE82CE0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA818C();
      }

      v20 = __error();
    }

    else
    {
      v18 = *__error();
      v19 = sub_22EE82CE0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA81FC();
      }

      v20 = __error();
    }

    *v20 = v18;
LABEL_26:

    goto LABEL_27;
  }

  v16 = *__error();
  v17 = sub_22EE82CE0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA809C();
  }

  *__error() = v16;
}

void sub_22EE8C8FC(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, char a9, uint64_t a10, void *a11)
{
  v149 = *MEMORY[0x277D85DE8];
  v107 = a2;
  v105 = a6;
  v106 = a7;
  v17 = a8;
  v18 = a11;
  [v17 startRecordingTimeForTailspinPostProcessing];
  if ((a5 & 0x80000000) != 0 && !a4)
  {
    goto LABEL_91;
  }

  v19 = dup(a1);
  v103 = ktrace_file_open_fd();
  if (v103)
  {
    v135 = 0;
    v136 = &v135;
    v137 = 0x3032000000;
    v138 = sub_22EE8DBA0;
    v139 = sub_22EE8DBB0;
    v140 = 0;
    v132 = 0;
    v133[0] = &v132;
    v133[1] = 0x3032000000;
    v133[2] = sub_22EE8DBA0;
    v133[3] = sub_22EE8DBB0;
    v134 = 0;
    v128 = 0;
    v129 = &v128;
    v130 = 0x2020000000;
    v131 = 0;
    v20 = ktrace_session_create();
    ktrace_set_execnames_enabled();
    if (a10 && a9)
    {
      ktrace_set_execnames_enabled();
    }

    ktrace_session_set_event_names_enabled();
    v21 = ktrace_set_ktrace_file();
    if (v21)
    {
      v22 = *__error();
      v23 = sub_22EE82CE0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        buf.st_dev = 67110146;
        *&buf.st_mode = a1;
        LOWORD(buf.st_ino) = 1024;
        *(&buf.st_ino + 2) = v19;
        HIWORD(buf.st_ino) = 2114;
        *&buf.st_uid = v107;
        LOWORD(buf.st_rdev) = 1024;
        *(&buf.st_rdev + 2) = a3;
        *(&buf.st_rdev + 3) = 1024;
        LODWORD(buf.st_atimespec.tv_sec) = v21;
        _os_log_fault_impl(&dword_22EE81000, v23, OS_LOG_TYPE_FAULT, "Unable to create read session for original fd %d (duped fd %d) from client %{public}@ [%d].: %{errno}d", &buf, 0x24u);
      }

      *__error() = v22;
      a4 = 26;
      goto LABEL_73;
    }

    v101 = dispatch_semaphore_create(0);
    ktrace_events_single();
    v119 = MEMORY[0x277D85DD0];
    v120 = 3221225472;
    v121 = sub_22EE8DBBC;
    v122 = &unk_278870F60;
    v126 = a5;
    v127 = a4;
    v123 = &v135;
    v124 = &v132;
    v125 = &v128;
    ktrace_stackshot();
    if (a9)
    {
      if (sub_22EE992A8())
      {
        if (a10)
        {
          v26 = *__error();
          v27 = sub_22EE82CE0();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.st_dev) = 0;
            _os_log_impl(&dword_22EE81000, v27, OS_LOG_TYPE_DEFAULT, "Setting up post-processing for CPUTrace collection", &buf, 2u);
          }

          *__error() = v26;
          sub_22EE8E824();
          v29 = v28;
          sub_22EE8E998(v28, v20);
          sub_22EE8EB1C(a10, v29);
          sub_22EE8ECA0(v29);
          goto LABEL_26;
        }

        v30 = *__error();
        v31 = sub_22EE82CE0();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA83CC();
        }
      }

      else
      {
        v30 = *__error();
        v31 = sub_22EE82CE0();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA834C();
        }
      }

      *__error() = v30;
    }

LABEL_26:
    v114[1] = MEMORY[0x277D85DD0];
    v114[2] = 3221225472;
    v114[3] = sub_22EE8EE1C;
    v114[4] = &unk_278870F88;
    v118 = a5;
    v116 = &v135;
    v117 = v20;
    dsema = v101;
    v115 = dsema;
    ktrace_set_completion_handler();
    if (a4)
    {
      if ((a5 & 0x80000000) != 0)
      {
        v33 = *__error();
        v34 = sub_22EE82CE0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_22EEA843C();
        }
      }

      else
      {
        v33 = *__error();
        v34 = sub_22EE82CE0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_22EEA8470();
        }
      }
    }

    else
    {
      v33 = *__error();
      v34 = sub_22EE82CE0();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_22EEA8408();
      }
    }

    *__error() = v33;
    mach_absolute_time();
    if (fstat(a1, &buf))
    {
      st_size = -1;
    }

    else
    {
      st_size = buf.st_size;
    }

    v36 = *__error();
    v37 = sub_22EE82CE0();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v142 = 138544386;
      *&v142[4] = v107;
      *&v142[12] = 1024;
      *v143 = a3;
      *&v143[4] = 1024;
      *&v143[6] = a1;
      v144 = 1024;
      v145 = v19;
      v146 = 2048;
      v147 = st_size;
      _os_log_impl(&dword_22EE81000, v37, OS_LOG_TYPE_DEFAULT, "Started read session: %{public}@ [%d], original fd: %d, duped fd: %d, size: %{bytes}lld", v142, 0x28u);
    }

    *__error() = v36;
    v38 = ktrace_start();
    if (v38)
    {
      v39 = *__error();
      v40 = sub_22EE82CE0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *v142 = 67110146;
        *&v142[4] = a1;
        *&v142[8] = 1024;
        *&v142[10] = v19;
        *v143 = 2114;
        *&v143[2] = v107;
        v144 = 1024;
        v145 = a3;
        v146 = 1024;
        LODWORD(v147) = v38;
        _os_log_fault_impl(&dword_22EE81000, v40, OS_LOG_TYPE_FAULT, "Unable to start read session for original fd %d (duped fd %d) from client %{public}@ [%d].: %{errno}d", v142, 0x24u);
      }

      *__error() = v39;
      a4 = 26;
    }

    else
    {
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      v41 = *__error();
      v42 = sub_22EE82CE0();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v142 = 138544130;
        *&v142[4] = v107;
        *&v142[12] = 1024;
        *v143 = a3;
        *&v143[4] = 1024;
        *&v143[6] = a1;
        v144 = 1024;
        v145 = v19;
        _os_log_impl(&dword_22EE81000, v42, OS_LOG_TYPE_DEFAULT, "Ended read session: %{public}@ [%d], original fd: %d, duped fd: %d", v142, 0x1Eu);
      }

      *__error() = v41;
      if (a9)
      {
        if (sub_22EE992A8())
        {
          if (a10)
          {
            *v142 = 0;
            sub_22EE8F660(a10, v142);
            v44 = v43;
            sub_22EE8BF90(a10);
            if (v44)
            {
              v45 = *__error();
              v46 = sub_22EE82CE0();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA8524();
              }

              *__error() = v45;
            }

            else
            {
              v49 = *__error();
              v50 = sub_22EE82CE0();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *v141 = 0;
                _os_log_impl(&dword_22EE81000, v50, OS_LOG_TYPE_DEFAULT, "Saving out CPUTrace data to file", v141, 2u);
              }

              *__error() = v49;
              sub_22EE8F7E4(*v142, v103);
              if (v51)
              {
                v52 = *__error();
                v53 = sub_22EE82CE0();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  sub_22EEA8594();
                }

                *__error() = v52;
              }

              sub_22EE8F968(*v142);
            }
          }

          create_and_start_cputrace_live_recording();
        }

        else
        {
          v47 = *__error();
          v48 = sub_22EE82CE0();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA84A4();
          }

          *__error() = v47;
        }
      }

      if (a4)
      {
        v54 = *__error();
        v55 = sub_22EE82CE0();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          mach_absolute_time();
          SASecondsFromMachTimeUsingLiveTimebase();
          v56 = *(v129 + 6);
          *v142 = 134218240;
          *&v142[4] = v57;
          *&v142[12] = 1024;
          *v143 = v56;
          _os_log_impl(&dword_22EE81000, v55, OS_LOG_TYPE_INFO, "Done parsing in %.2fs. Resampled %d truncated stacks", v142, 0x12u);
        }

        a4 = 0;
        *__error() = v54;
      }

      else
      {
        v58 = *__error();
        v59 = sub_22EE82CE0();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          mach_absolute_time();
          SASecondsFromMachTimeUsingLiveTimebase();
          sub_22EEA8604(v142, v59, v60);
        }

        a4 = 0;
        *__error() = v58;
      }
    }

LABEL_73:
    ktrace_session_destroy();
    if ((a5 & 0x80000000) != 0)
    {
LABEL_80:
      v66 = *(v133[0] + 40);
      if (v66)
      {
        v114[0] = 0;
        v67 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v66 requiringSecureCoding:1 error:v114];
        v68 = v114[0];
        if (v67)
        {
          v69 = v67;
          [v67 bytes];
          [v67 length];
          if (!ktrace_file_append_chunk())
          {
            v70 = *__error();
            v71 = sub_22EE82CE0();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v72 = __error();
              v73 = strerror(*v72);
              sub_22EEA87B8(v73, v141);
            }

            *__error() = v70;
            a4 = 17;
          }
        }

        else
        {
          v74 = *__error();
          v75 = sub_22EE82CE0();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA87FC(v68, v133);
          }

          *__error() = v74;
          a4 = 18;
        }
      }

      ktrace_file_close();
      _Block_object_dispose(&v128, 8);
      _Block_object_dispose(&v132, 8);

      _Block_object_dispose(&v135, 8);
      goto LABEL_91;
    }

    v61 = v136[5];
    if (!v61)
    {
      v64 = *__error();
      v65 = sub_22EE82CE0();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8748();
      }

      *__error() = v64;
      goto LABEL_80;
    }

    [v61 gatherInfoWithDataGatheringOptions:5 pid:a5];
    v62 = [v136[5] path];
    v63 = v62 == 0;

    if (!v63)
    {
LABEL_76:
      tailspin_write_symbolless_binary_info_chunk(v103, v136[5]);
      goto LABEL_80;
    }

    if (qword_27DA9D3D0 != -1)
    {
      sub_22EEA8648();
    }

    os_unfair_lock_lock(&unk_27DA9D3C8);
    v81 = qword_27DA9D3C0;
    v82 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    v83 = [v81 objectForKeyedSubscript:v82];

    if (v83)
    {
      v84 = *__error();
      v85 = sub_22EE82CE0();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        buf.st_dev = 67109120;
        *&buf.st_mode = a5;
        _os_log_impl(&dword_22EE81000, v85, OS_LOG_TYPE_INFO, "Using cached load infos for [%d]", &buf, 8u);
      }

      v86 = __error();
    }

    else
    {
      v83 = [MEMORY[0x277D4B418] binaryLoadInfoForLiveProcessWithPid:a5 dataGatheringOptions:1030];
      if (v83)
      {
        v89 = *__error();
        v90 = sub_22EE82CE0();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = [v83 count];
          buf.st_dev = 134218240;
          *&buf.st_mode = v91;
          WORD2(buf.st_ino) = 1024;
          *(&buf.st_ino + 6) = a5;
          _os_log_impl(&dword_22EE81000, v90, OS_LOG_TYPE_DEFAULT, "Fetched %lu load infos for [%d] from live process", &buf, 0x12u);
        }

        *__error() = v89;
        if (a5)
        {
          v92 = qword_27DA9D3C0;
          v93 = [MEMORY[0x277CCABB0] numberWithInt:a5];
          [v92 setObject:v83 forKeyedSubscript:v93];

          v94 = dispatch_get_global_queue(9, 0);
          v95 = dispatch_source_create(MEMORY[0x277D85D20], a5, 0xA0000000uLL, v94);

          *&buf.st_dev = MEMORY[0x277D85DD0];
          buf.st_ino = 3221225472;
          *&buf.st_uid = sub_22EE93C34;
          *&buf.st_rdev = &unk_278871100;
          buf.st_atimespec.tv_sec = v95;
          LODWORD(buf.st_atimespec.tv_nsec) = a5;
          v96 = v95;
          dispatch_source_set_event_handler(v96, &buf);
          dispatch_activate(v96);
        }

        goto LABEL_106;
      }

      v84 = *__error();
      v100 = sub_22EE82CE0();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8670();
      }

      v86 = __error();
      v83 = 0;
    }

    *v86 = v84;
LABEL_106:
    os_unfair_lock_unlock(&unk_27DA9D3C8);

    if (v83)
    {
      v87 = [v136[5] path];
      v88 = v87 == 0;

      if (v88)
      {
        v97 = *__error();
        v98 = sub_22EE82CE0();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v99 = [v136[5] uuid];
          sub_22EEA86E0(v99, &buf, a5, v98);
        }

        *__error() = v97;
      }

      else
      {
        [v136[5] gatherInfoWithDataGatheringOptions:5 pid:a5];
      }
    }

    goto LABEL_76;
  }

  v24 = *__error();
  v25 = sub_22EE82CE0();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    v32 = *__error();
    buf.st_dev = 67110146;
    *&buf.st_mode = a1;
    LOWORD(buf.st_ino) = 1024;
    *(&buf.st_ino + 2) = v19;
    HIWORD(buf.st_ino) = 2114;
    *&buf.st_uid = v107;
    LOWORD(buf.st_rdev) = 1024;
    *(&buf.st_rdev + 2) = a3;
    *(&buf.st_rdev + 3) = 1024;
    LODWORD(buf.st_atimespec.tv_sec) = v32;
    _os_log_fault_impl(&dword_22EE81000, v25, OS_LOG_TYPE_FAULT, "Unable to get ktfile for original fd %d (duped fd %d) from client %{public}@ [%d].: %{errno}d", &buf, 0x24u);
  }

  *__error() = v24;
  a4 = 26;
LABEL_91:
  [MEMORY[0x277D4B410] clearSymbolCaches];
  [v17 stopRecordingTimeForTailspinPostProcessing];
  [v17 stopRecordingTimeForSaveStandardChunksPhase:a4 == 0];
  if (a4)
  {
    if (a1 != -1)
    {
      close(a1);
    }

    v18[2](v18, a4);
  }

  else
  {
    v76 = *__error();
    v77 = sub_22EE82CE0();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA8888();
    }

    *__error() = v76;
    v78 = dup(a1);
    v79 = v107;
    [v17 startRecordingTimeForAugmentPhase:objc_msgSend(v107 pid:"UTF8String") originalFd:a3 dupFd:{a1, v78}];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = sub_22EE8FAE4;
    v108[3] = &unk_278870FB0;
    v112 = a1;
    v109 = v107;
    v113 = a3;
    v110 = v17;
    v111 = v18;
    tailspin_augment_output_with_request_id(v78, v105, v106, v110, v108);
  }

  v80 = *MEMORY[0x277D85DE8];
}

void sub_22EE8D95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);

  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE8DBA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EE8DBBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a2 + 16;
  if (a2 + 16 > a3 || (v6 = a2, v4 + *(a2 + 4) > a3))
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v13 = 0;
  v8 = 0;
  v14 = 0;
  v15 = 0;
  *&pid[8] = 0;
  *pid = *(a1 + 56);
  v64 = -1;
  do
  {
    v16 = *(v6 + 4);
    if (v4 + v16 > a3)
    {
      break;
    }

    v17 = *v6;
    if (*v6 == -242132755)
    {
      break;
    }

    if ((v17 & 0xFFFFFFF0) == 0x20)
    {
      v18 = 17;
    }

    else
    {
      v18 = *v6;
    }

    if (v18 <= 19)
    {
      if (v18 != 17)
      {
        if (v18 != 19)
        {
          goto LABEL_101;
        }

        if (v16 < 4 || v17 != 19)
        {
          _os_assert_log();
          v55 = _os_crash();
          sub_22EEA88BC(v55);
        }

        if (*(v6 + 16) != 2307)
        {
          goto LABEL_101;
        }

        v14 = *(v6 + 8);
        goto LABEL_100;
      }

      if (v17 != 17 && (v17 & 0xFFFFFFF0) != 0x20)
      {
LABEL_132:
        _os_assert_log();
        v60 = _os_crash();
        sub_22EEA88BC(v60);
      }

      v29 = *(v6 + 8);
      if (v29)
      {
        if (v17 == 17)
        {
          if (SHIDWORD(v29) <= 2313)
          {
            if (SHIDWORD(v29) <= 2073)
            {
              if (HIDWORD(v29) == 48)
              {
                v30 = 20;
              }

              else
              {
                if (HIDWORD(v29) != 49)
                {
                  goto LABEL_132;
                }

                v30 = 24;
              }

              goto LABEL_83;
            }

            if (HIDWORD(v29) != 2074)
            {
              if (HIDWORD(v29) != 2311)
              {
                goto LABEL_132;
              }

              v30 = 4;
              goto LABEL_83;
            }
          }

          else if (SHIDWORD(v29) <= 2315)
          {
            if (HIDWORD(v29) != 2314)
            {
              goto LABEL_76;
            }
          }

          else if (HIDWORD(v29) != 2316)
          {
            if (HIDWORD(v29) != 2317)
            {
              if (HIDWORD(v29) != 2369)
              {
                goto LABEL_132;
              }

              v30 = 48;
              goto LABEL_83;
            }

LABEL_76:
            v30 = 16;
LABEL_83:
            if (v16 / v30 < v29 || v16 % v29 >= 0x10)
            {
              goto LABEL_132;
            }

LABEL_85:
            if (v15)
            {
              if (((v64 & 0x80000000) != 0 || v64 == *pid) && v29)
              {
                v36 = v6 + 16;
                if (HIDWORD(v29) == 48)
                {
                  v62 = v14;
                  v37 = 0;
                  v39 = v29;
                  while (*v36 && !uuid_is_null((v36 + 4)))
                  {
                    if (!v37 || *v37 > *v36)
                    {
                      v37 = v36;
                    }

                    v36 += 20;
                    if (!--v39)
                    {
                      goto LABEL_115;
                    }
                  }

                  v37 = 0;
LABEL_115:
                  v40 = v37 + 1;
                  goto LABEL_116;
                }

                if (HIDWORD(v29) == 49)
                {
                  v62 = v14;
                  v37 = 0;
                  v38 = v29;
                  while (*v36 && !uuid_is_null((v36 + 8)))
                  {
                    if (!v37 || *v37 > *v36)
                    {
                      v37 = v36;
                    }

                    v36 += 24;
                    if (!--v38)
                    {
                      goto LABEL_113;
                    }
                  }

                  v37 = 0;
LABEL_113:
                  v40 = v37 + 2;
LABEL_116:
                  v41 = *&pid[4];
                  if (v37)
                  {
                    v41 = v40;
                  }

                  *&pid[4] = v41;
                  v15 = 1;
                  v14 = v62;
                  goto LABEL_101;
                }

                goto LABEL_103;
              }

              goto LABEL_100;
            }

LABEL_99:
            v15 = 0;
            goto LABEL_101;
          }

          v30 = 8;
          goto LABEL_83;
        }

        v31 = *v6 & 0xF;
        v21 = v16 >= v31;
        v32 = v16 - v31;
        if (!v21 || v32 < v29)
        {
          goto LABEL_132;
        }

        LODWORD(v16) = v32 % v29;
      }

      if (v16)
      {
        goto LABEL_132;
      }

      goto LABEL_85;
    }

    switch(v18)
    {
      case 20:
        if ((v15 & 1) == 0)
        {
          goto LABEL_99;
        }

        if (*(v6 + 8) != v14)
        {
          goto LABEL_100;
        }

        if ((v64 & 0x80000000) != 0)
        {
          *&pid[4] = 0;
          v15 = 0;
        }

        else
        {
          v15 = 0;
          if (v64 == *pid && *&pid[4])
          {
            v33 = malloc_type_calloc(1uLL, 0x400uLL, 0x100004077774924uLL);
            proc_pidpath(*pid, v33, 0x400u);
            if (*v33 == 47)
            {
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:v33];
            }

            else
            {
              v65 = 0;
            }

            free(v33);
            v42 = MEMORY[0x277D4B410];
            v43 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:*&pid[4]];
            v44 = [v42 binaryWithUUID:v43 absolutePath:v65];

            *&pid[4] = 0;
            v15 = 0;
            v64 = -1;
            v13 = v44;
            break;
          }

          *&pid[4] = 0;
        }

        v64 = -1;
        break;
      case 2309:
        if (v15)
        {
          v27 = *(v6 + 8) & 0xF;
          v21 = v16 >= v27;
          v28 = v16 - v27;
          if (!v21)
          {
            v28 = 0;
          }

          if (v28 >= 0x78)
          {
            v64 = *(v6 + 100);
          }

LABEL_100:
          v15 = 1;
          break;
        }

        goto LABEL_99;
      case 2310:
        if (v15)
        {
          v19 = *(v6 + 8);
          if (v16 != 112 || (v19 & 0x8F) != 0)
          {
            v20 = v19 & 0xF;
            v21 = v16 >= v20;
            v22 = v16 - v20;
            if (!v21)
            {
              v22 = 0;
            }

            if (v22 >= 0x78)
            {
              if ((v64 & 0x80000000) != 0)
              {
                v34 = *__error();
                v35 = sub_22EE82CE0();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v45 = *(v6 + 16);
                  *buf = 134217984;
                  v71 = v45;
                  _os_log_error_impl(&dword_22EE81000, v35, OS_LOG_TYPE_ERROR, "No task shapshot before thread snapshot for thread %#llx", buf, 0xCu);
                }

                *__error() = v34;
                goto LABEL_103;
              }

              if ((*(v6 + 80) & 0x80) != 0)
              {
                if (!v8)
                {
                  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
                }

                v23 = [MEMORY[0x277CCABB0] numberWithInt:v64];
                v61 = [v8 objectForKeyedSubscript:v23];

                if (!v61)
                {
                  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v25 = [MEMORY[0x277CCABB0] numberWithInt:v64];
                  v61 = v24;
                  [v8 setObject:v24 forKeyedSubscript:v25];
                }

                v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v6 + 16)];
                [v61 addObject:v26];

LABEL_103:
                v15 = 1;
                break;
              }
            }
          }

          goto LABEL_100;
        }

        goto LABEL_99;
    }

LABEL_101:
    v6 = v4 + *(v6 + 4);
    v4 = v6 + 16;
  }

  while (v6 + 16 <= a3);
  v53 = v8;
  v54 = v13;

  v7 = v13;
LABEL_4:
  v9 = v7;
  v10 = v8;
  if ((*(a1 + 56) & 0x80000000) == 0)
  {
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
      v11 = *__error();
      v12 = sub_22EE82CE0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v56 = [*(*(*(a1 + 32) + 8) + 40) debugDescription];
        v57 = v56;
        v58 = [v56 UTF8String];
        v59 = *(a1 + 56);
        *buf = 136315394;
        v71 = v58;
        v72 = 1024;
        v73 = v59;
        _os_log_debug_impl(&dword_22EE81000, v12, OS_LOG_TYPE_DEBUG, "Got main binary %s for pid %d from stackshot", buf, 0x12u);
      }

      *__error() = v11;
    }

    else
    {
      v46 = *__error();
      v47 = sub_22EE82CE0();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 56);
        *buf = 67109120;
        LODWORD(v71) = v48;
        _os_log_impl(&dword_22EE81000, v47, OS_LOG_TYPE_DEFAULT, "No main binary for pid %d in stackshot", buf, 8u);
      }

      *__error() = v46;
    }
  }

  if (*(a1 + 60) == 1 && v10 != 0)
  {
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_22EE8E508;
    v66[3] = &unk_278870F38;
    v68 = *(a1 + 40);
    v50 = v10;
    v51 = *(a1 + 48);
    v67 = v50;
    v69 = v51;
    [v50 enumerateKeysAndObjectsUsingBlock:v66];
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_22EE8E508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 intValue];
  if (v7 != getpid())
  {
    v11 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v12 = *(a1 + 48);
    SAResampleThreads();
  }
}

void sub_22EE8E634(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = *(*(*(a1 + 56) + 8) + 40);
  }

  v19 = [v8 objectForKeyedSubscript:*(a1 + 40)];
  if (!v19)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v13 = *(a1 + 40);
    v19 = v12;
    [*(*(*(a1 + 56) + 8) + 40) setObject:? forKeyedSubscript:?];
  }

  v14 = a4;
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
  if (a4)
  {
    v16 = 0;
    do
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 8 * v16)];
      [v15 setObject:v17 atIndexedSubscript:v16];

      ++v16;
    }

    while (v14 != v16);
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v19 setObject:v15 forKeyedSubscript:v18];

  ++*(*(*(a1 + 64) + 8) + 24);
}

void sub_22EE8E824()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_27DA9D378;
  v7 = off_27DA9D378;
  if (!off_27DA9D378)
  {
    v1 = sub_22EE905C4();
    v5[3] = dlsym(v1, "hwtrace_live_recording_postprocess_options_init");
    off_27DA9D378 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess_options_init()"];
    [v2 handleFailureInFunction:v3 file:@"AppleHWTrace_SoftLinking.h" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8E998(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D380;
  v11 = off_27DA9D380;
  if (!off_27DA9D380)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_live_recording_postprocess_options_set_ktrace_session");
    off_27DA9D380 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess_options_set_ktrace_session(hwtrace_live_recording_postprocess_options_t, ktrace_session_t)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8EB1C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D388;
  v11 = off_27DA9D388;
  if (!off_27DA9D388)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_live_recording_postprocess");
    off_27DA9D388 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess(hwtrace_live_recording_t, hwtrace_live_recording_postprocess_options_t)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8ECA0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27DA9D390;
  v9 = off_27DA9D390;
  if (!off_27DA9D390)
  {
    v3 = sub_22EE905C4();
    v7[3] = dlsym(v3, "hwtrace_live_recording_postprocess_options_deinit");
    off_27DA9D390 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_live_recording_postprocess_options_t soft_hwtrace_live_recording_postprocess_options_deinit(hwtrace_live_recording_postprocess_options_t)"];
    [v4 handleFailureInFunction:v5 file:@"AppleHWTrace_SoftLinking.h" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_22EE8EE1C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x80000000) == 0 && !*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = main_binary_for_pid_in_ktrace(*(a1 + 48), v2);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

id main_binary_for_pid_in_ktrace(uint64_t a1, int a2)
{
  v2 = 0;
  v91 = *MEMORY[0x277D85DE8];
  if (a1 && (a2 & 0x80000000) == 0)
  {
    v3 = ktrace_dumpbuffer_address_space_pid();
    v77 = v3;
    if (v3)
    {
      v79 = [v3 bytes];
      v80 = [v77 length];
      v81 = xmmword_22EEAB570;
      v82 = 0;
      v83 = 1;
      if (v80 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      if (sub_22EE91138(&v79, "SYMB", 0))
      {
        v4 = v77;
        v5 = [v77 bytes];
        v6 = *v5;
        memset(dst, 0, sizeof(dst));
        memset(uu, 0, sizeof(uu));
        v7 = *(v5 + v6 - *(v5 + v6) + 4);
        v8 = (v5 + v6 + v7);
        v9 = *v8;
        v10 = v8 + v9;
        v11 = *(v8 + v9);
        if (v11)
        {
          v78 = 0;
          v75 = 0;
          v12 = &v10[4 * v11];
          v13 = v5 + v6 + v9 + v7 + 12;
          v14 = -1;
          while (1)
          {
            v16 = *(v10 + 1);
            v10 += 4;
            v15 = v16;
            v17 = &v10[v16];
            v18 = sub_22EE903F8(v17);
            if (v18)
            {
              v19 = &v18[-*v18];
              if (*v19 >= 0xBu && (v20 = *(v19 + 5)) != 0)
              {
                uuid_parse(&v18[v20 + 4 + *&v18[v20]], uu);
              }

              else
              {
                v21 = *__error();
                v22 = sub_22EE82CE0();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *uu2 = 67109120;
                  *&uu2[4] = a2;
                  _os_log_error_impl(&dword_22EE81000, v22, OS_LOG_TYPE_ERROR, "No main uuid for target pid [%d] in ktrace flatbuffer", uu2, 8u);
                }

                *__error() = v21;
              }
            }

            v23 = (v17 - *v17);
            if (*v23 >= 9u)
            {
              v24 = v23[4];
              if (v24)
              {
                v25 = *(v17 + v24);
                v26 = (v17 + v24 + v25);
                v27 = *v26;
                if (v27)
                {
                  break;
                }
              }
            }

LABEL_59:
            v13 += 4;
            if (v10 == v12)
            {
              goto LABEL_69;
            }
          }

          v28 = &v26[v27];
          v29 = v13 + v24 + v15 + v25;
          while (1)
          {
            v31 = v26[1];
            ++v26;
            v30 = v31;
            v32 = (v26 + v31);
            v33 = sub_22EE903F8(v32);
            v34 = v33;
            if (!v33)
            {
              v40 = *__error();
              v41 = sub_22EE82CE0();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                sub_22EEA8930(buf, v32, &v88, v41);
              }

              *__error() = v40;
              goto LABEL_33;
            }

            v35 = &v33[-*v33];
            if (*v35 >= 5u)
            {
              if (*(v35 + 2))
              {
                *uu2 = 0;
                *&uu2[8] = 0;
                v36 = &v33[*&v33[-*v33 + 4]];
                uuid_parse(&v36[*v36 + 4], uu2);
                if (!uuid_is_null(uu2))
                {
                  break;
                }
              }
            }

LABEL_33:
            v29 += 4;
            if (v26 == v28)
            {
              goto LABEL_59;
            }
          }

          if (!uuid_is_null(uu))
          {
            if (!uuid_compare(uu, uu2))
            {
              v42 = (v34 - *v34);
              if (*v42 >= 7u)
              {
                v43 = v42[3];
                if (v43)
                {
                  v44 = v34 + v43 + *(v34 + v43);
                  if (v44[4] == 47)
                  {
                    v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:v44 + 4];

                    v75 = v57;
                    goto LABEL_59;
                  }
                }
              }
            }

            goto LABEL_55;
          }

          v37 = v14;
          v38 = (v32 - *v32);
          v39 = *v38;
          if (v39 < 0xD)
          {
            if (v39 < 9)
            {
              goto LABEL_54;
            }
          }

          else if (v38[6])
          {
            if (*(v32 + v38[6]))
            {
              if (v38[5])
              {
                v14 = *(v32 + v38[5]);
                if (v14 != -1)
                {
                  goto LABEL_49;
                }
              }
            }
          }

          v45 = v38[4];
          if (v38[4])
          {
            v46 = *(v32 + v45);
            v47 = *(v32 + v45 + v46);
            if (v47)
            {
              v48 = 0;
              v49 = 4 * v47;
              v50 = v29 + v30 + v46 + v45;
              v14 = -1;
              do
              {
                v51 = *(v50 + v48);
                v52 = v51 - *(v50 + v48 + v51);
                if (*(v50 + v48 + v52) >= 7u)
                {
                  if (*(v50 + v48 + v52 + 6))
                  {
                    v53 = *(v50 + v51 + *(v50 + v48 + v52 + 6) + v48);
                    if (v53 < v14)
                    {
                      v14 = v53;
                    }
                  }
                }

                v48 += 4;
              }

              while (v49 != v48);
LABEL_49:
              if (v14 < v37)
              {
                uuid_copy(dst, uu2);
                v54 = (v34 - *v34);
                if (*v54 >= 7u && (v55 = v54[3]) != 0 && *(v34 + v55 + *(v34 + v55) + 4) == 47)
                {
                  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34 + v55 + *(v34 + v55) + 4];
                }

                else
                {
                  v56 = 0;
                }

                goto LABEL_56;
              }
            }
          }

LABEL_54:
          v14 = v37;
LABEL_55:
          v56 = v78;
LABEL_56:
          v78 = v56;
          goto LABEL_33;
        }

        v75 = 0;
        v78 = 0;
        v14 = -1;
LABEL_69:
        if (uuid_is_null(uu))
        {
          if (v14 == -1)
          {
            v69 = *__error();
            v70 = sub_22EE82CE0();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA89A4();
            }

            v64 = 0;
            *__error() = v69;
          }

          else
          {
            v62 = MEMORY[0x277D4B410];
            v63 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:dst];
            v64 = [v62 binaryWithUUID:v63 absolutePath:v78];

            v65 = *__error();
            v66 = sub_22EE82CE0();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
            {
              v73 = [v64 uuid];
              v74 = [v73 UUIDString];
              *uu2 = 67109634;
              *&uu2[4] = a2;
              *&uu2[8] = 2048;
              *&uu2[10] = v14;
              v85 = 2114;
              v86 = v74;
              _os_log_debug_impl(&dword_22EE81000, v66, OS_LOG_TYPE_DEBUG, "No MainBinaryUuid in ktrace flatbuffer for target pid [%d], assuming lowest binary %#llx %{public}@", uu2, 0x1Cu);
            }

            *__error() = v65;
          }
        }

        else
        {
          v67 = MEMORY[0x277D4B410];
          v68 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
          v64 = [v67 binaryWithUUID:v68 absolutePath:v75];
        }

        v2 = v64;

        goto LABEL_79;
      }

      v58 = *__error();
      v61 = sub_22EE82CE0();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA88C0();
      }

      v60 = __error();
    }

    else
    {
      v58 = *__error();
      v59 = sub_22EE82CE0();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8A14();
      }

      v60 = __error();
    }

    v2 = 0;
    *v60 = v58;
LABEL_79:
  }

  v71 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_22EE8F660(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D398;
  v11 = off_27DA9D398;
  if (!off_27DA9D398)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_recording_init_from_live_recording");
    off_27DA9D398 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_recording_init_from_live_recording(hwtrace_live_recording_t, hwtrace_recording_t *)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8F7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8F7E4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_27DA9D3A0;
  v11 = off_27DA9D3A0;
  if (!off_27DA9D3A0)
  {
    v5 = sub_22EE905C4();
    v9[3] = dlsym(v5, "hwtrace_recording_save_to_ktrace");
    off_27DA9D3A0 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_recording_save_to_ktrace(hwtrace_recording_t, ktrace_file_t)"}];
    [v6 handleFailureInFunction:v7 file:@"AppleHWTrace_SoftLinking.h" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EE8F968(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_27DA9D3A8;
  v9 = off_27DA9D3A8;
  if (!off_27DA9D3A8)
  {
    v3 = sub_22EE905C4();
    v7[3] = dlsym(v3, "hwtrace_recording_deinit");
    off_27DA9D3A8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_recording_deinit(hwtrace_recording_t)"];
    [v4 handleFailureInFunction:v5 file:@"AppleHWTrace_SoftLinking.h" lineNumber:61 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22EE8FAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE8FAE4(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  if (v4 == -1)
  {
    st_size = 0;
  }

  else
  {
    if (fstat(v4, &v18))
    {
      v5 = *__error();
      v6 = sub_22EE82CE0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = __error();
        sub_22EEA8A84(v7, v8, v17, v6);
      }

      st_size = 0;
      *__error() = v5;
    }

    else
    {
      st_size = v18.st_size;
    }

    close(*(a1 + 56));
  }

  v10 = *__error();
  v11 = sub_22EE82CE0();
  v12 = v11;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 60);
      v18.st_dev = 134218498;
      *&v18.st_mode = st_size;
      WORD2(v18.st_ino) = 2114;
      *(&v18.st_ino + 6) = v13;
      HIWORD(v18.st_gid) = 1024;
      v18.st_rdev = v14;
      _os_log_impl(&dword_22EE81000, v12, OS_LOG_TYPE_DEFAULT, "Saved %{bytes}lld tailspin on behalf of %{public}@ [%d]", &v18, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA8AE0(a1);
  }

  *__error() = v10;
  [*(a1 + 40) stopRecordingTimeForAugmentPhase:a2 == 1 finalSizeBytes:st_size];
  result = (*(*(a1 + 48) + 16))();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EE8FCD0(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  a2;
  mach_get_times();
  _os_assert_log();
  v2 = _os_crash();
  sub_22EEA88BC(v2);
}

uint64_t sub_22EE90088(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (*(a1 + 32) <= a2)
  {
    v3 = (a3 >> 2 != 12599332) | *(a1 + 40) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22EE900C0(uint64_t a1, uint64_t a2)
{
  v3 = tailspin_write_metadata_chunk(a2, *(a1 + 72), *(a1 + 32), *(a1 + 80));
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = v3;
    *(*(*(a1 + 48) + 8) + 24) = 16;
  }

  if (*(a1 + 88) == 1)
  {
    fcntl(*(a1 + 84), 51);
    v4 = *__error();
    v5 = sub_22EE82CE0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA8E18();
    }

    *__error() = v4;
  }

  v6 = *(*(a1 + 56) + 8);
  if (ktrace_file_earliest_timestamp())
  {
    v7 = *__error();
    v8 = sub_22EE82CE0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8E4C();
    }

    *__error() = v7;
  }

  result = ktrace_file_ktrace_event_count();
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

intptr_t sub_22EE901E4(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  mach_get_times();
  [*(a1 + 32) recordTimeForSaveStandardChunksWithoutPostProcessing:0];
  [*(a1 + 32) startRecordingTimeForLibktracePostProcessing];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_22EE90244(uint64_t a1)
{
  [*(a1 + 32) stopRecordingTimeForLibktracePostProcessing];
  v2 = *(a1 + 104);
  ktrace_session_destroy();
  v3 = *(*(*(a1 + 80) + 8) + 24);
  v4 = *(*(*(a1 + 88) + 8) + 24);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(*(*(a1 + 96) + 8) + 24);
  sub_22EE8FCD0(*(*(*(a1 + 72) + 8) + 24), *(a1 + 32));
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22EE903B0;
  v17[3] = &unk_278871048;
  v22 = *(a1 + 144);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v25 = *(a1 + 156);
  v11 = *(a1 + 152);
  v23 = *(a1 + 148);
  v24 = v11;
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  v18 = v16;
  v19 = v15;
  v26 = *(a1 + 157);
  v21 = *(a1 + 136);
  v20 = *(a1 + 64);
  dispatch_async(v9, v17);
}

char *sub_22EE903F8(int *a1)
{
  v1 = (a1 - *a1);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(a1 + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return a1 + v4 + *(a1 + v4);
  }

  else
  {
    return 0;
  }
}

void sub_22EE90444(void **a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  if (!a2)
  {
    sub_22EEA659C();
  }

  v9 = 1152000;
  v4 = malloc_type_malloc(0x119400uLL, 0x1000040E0EAB150uLL);
  *a1 = v4;
  if (!v4)
  {
    sub_22EEA659C();
  }

  *v10 = 0x1800000001;
  v11 = 21;
  if (sysctl(v10, 3u, v4, &v9, 0, 0) < 0)
  {
    v6 = *__error();
    v7 = sub_22EE82CE0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA8EBC();
    }

    *__error() = v6;
    free(*a1);
    LODWORD(v5) = 0;
    *a1 = 0;
  }

  else
  {
    v5 = v9 >> 5;
  }

  *a2 = v5;
  v8 = *MEMORY[0x277D85DE8];
}

void *sub_22EE90574(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_serialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE905C4()
{
  v14 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v0 = qword_27DA9D2D0;
  v11 = qword_27DA9D2D0;
  if (!qword_27DA9D2D0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = sub_22EE90790;
    v5[4] = &unk_2788710D8;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_2788710B8;
    v13 = 0;
    v9[3] = _sl_dlopen();
    qword_27DA9D2D0 = *(v6[1] + 24);
    v0 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v0)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libhwtrace_privateLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"AppleHWTrace_SoftLinking.h" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_22EE90790(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D2D0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22EE90828(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_topology");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90878(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_topology_systems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE908C8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_system_name");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90918(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90968(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_set_session_policy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D2F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE909B8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_set_background");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90A08(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_add_system");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D308 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90A58(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_trace_mode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D310 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90AA8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_driver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90AF8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_production");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90B48(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_context_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D328 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90B98(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_exception_level_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90BE8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_init_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D338 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90C38(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_options_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D340 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90C88(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_start");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D348 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90CD8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D350 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90D28(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_uuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D358 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90D78(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D360 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90DC8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_init_from_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D368 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90E18(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_session_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D370 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90E68(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess_options_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D378 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90EB8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess_options_set_ktrace_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D380 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90F08(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D388 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90F58(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_postprocess_options_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D390 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90FA8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_recording_init_from_live_recording");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D398 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE90FF8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_recording_save_to_ktrace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE91048(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE91098(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_pause");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE910E8(uint64_t a1)
{
  v2 = sub_22EE905C4();
  result = dlsym(v2, "hwtrace_live_recording_stop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE91138(void *a1, const char *a2, unint64_t a3)
{
  if (a2 && (a1[1] < 8uLL || strncmp((*a1 + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = sub_22EE911C4(a1, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*a1 + a3 + v5);

  return sub_22EE91214(v6, a1);
}

uint64_t sub_22EE911C4(uint64_t a1, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*a1 + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

uint64_t sub_22EE91214(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = *a1;
      v6 = -v5;
      v7 = (a1 - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = sub_22EE9158C(a2, (a1 + v8 + *(a1 + v8)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*a1;
        }
      }

      v9 = (a1 + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (a1 + v10 + *(a1 + v10));
      }

      else
      {
        v11 = 0;
      }

      result = sub_22EE913DC(a2, v11);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v12 = *a1;
          v13 = -v12;
          v14 = (a1 - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
            if (v15)
            {
              result = sub_22EE9158C(a2, (a1 + v15 + *(a1 + v15)), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = -*a1;
            }
          }

          v16 = (a1 + v13);
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (a1 + v17 + *(a1 + v17));
          }

          else
          {
            v18 = 0;
          }

          result = sub_22EE91458(a2, v18);
          if (result)
          {
            --*(a2 + 16);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE913DC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE915FC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE91458(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE93B1C((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE914D4(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[5])
  {
    return 0;
  }

  v4 = a1[1];
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(a1 + 5);
  v8 = *(a1 + 4) + 1;
  *(a1 + 4) = v8;
  v9 = *(a1 + 6) + 1;
  *(a1 + 6) = v9;
  if (v8 > v7 || v9 > *(a1 + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((a1[5] & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (a1[5])
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL sub_22EE9158C(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v4 = a2 - *a1;
  if (v4 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(a1 + 8);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

uint64_t sub_22EE915FC(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 8);
      if (v7 < 2 || v7 - 1 < a1 + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = sub_22EE91380(a1, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (a1 - *a1);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_26;
    }
  }

  else if (v8[3])
  {
    v10 = (a1 + v8[3] + *(a1 + v8[3]));
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + v11);
  if (v12 == 3)
  {
    if (v10)
    {
      result = sub_22EE9230C(v10, a2);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_26;
  }

  if (v12 == 2)
  {
    if (!v10 || sub_22EE91E8C(v10, a2))
    {
      goto LABEL_26;
    }

    return 0;
  }

  v13 = v12 != 1 || v10 == 0;
  if (!v13 && !sub_22EE91950(v10, a2))
  {
    return 0;
  }

LABEL_26:
  result = sub_22EE91380(a1, a2, 8u);
  if (!result)
  {
    return result;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 9u)
  {
    v17 = v16[4];
    if (v17)
    {
      result = sub_22EE9158C(a2, (a1 + v17 + *(a1 + v17)), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v15 = -*a1;
    }
  }

  v18 = (a1 + v15);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = (a1 + v19 + *(a1 + v19));
  }

  else
  {
    v20 = 0;
  }

  result = sub_22EE91858(a2, v20);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 0xAu);
    if (result)
    {
      v21 = *a1;
      v22 = -v21;
      v23 = (a1 - v21);
      if (*v23 >= 0xBu)
      {
        v24 = v23[5];
        if (v24)
        {
          result = sub_22EE9158C(a2, (a1 + v24 + *(a1 + v24)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v22 = -*a1;
        }
      }

      v25 = (a1 + v22);
      if (*v25 >= 0xBu && (v26 = v25[5]) != 0)
      {
        v27 = (a1 + v26 + *(a1 + v26));
      }

      else
      {
        v27 = 0;
      }

      result = sub_22EE918D4(a2, v27);
      if (result)
      {
        --*(a2 + 16);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22EE91858(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE925E8((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE918D4(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE939D8((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE91950(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        v8 = (a1 - *a1);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 8), v12 >= 9) && v12 - 8 >= a1 + v11 - *a2))
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = (a1 - *a1);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = (a1 + v14 + *(a1 + v14));
            }

            else
            {
              v15 = 0;
            }

            result = sub_22EE91B8C(a2, v15);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = *a1;
                v17 = -v16;
                v18 = (a1 - v16);
                if (*v18 >= 0xDu)
                {
                  v19 = v18[6];
                  if (v19)
                  {
                    result = sub_22EE9158C(a2, (a1 + v19 + *(a1 + v19)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v17 = -*a1;
                  }
                }

                v20 = (a1 + v17);
                if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
                {
                  v22 = (a1 + v21 + *(a1 + v21));
                }

                else
                {
                  v22 = 0;
                }

                result = sub_22EE91C08(a2, v22);
                if (result)
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v23 = (a1 - *a1);
                    if (*v23 < 0xFu || (v24 = v23[7]) == 0 || (result = sub_22EE91DCC((a1 + v24 + *(a1 + v24)), a2)))
                    {
                      --*(a2 + 16);
                      return 1;
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

  return result;
}

BOOL sub_22EE91B8C(void *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = sub_22EE9158C(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = a1[1];
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL sub_22EE91C08(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE91C84((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE91C84(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 8), v8 >= 9) && v8 - 8 >= a1 + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v9 - *a2)))
    {
      result = sub_22EE91380(a1, a2, 0xAu);
      if (result)
      {
        v11 = (a1 - *a1);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0 || (result = sub_22EE9158C(a2, (a1 + v12 + *(a1 + v12)), 1uLL, 0)))
        {
          --*(a2 + 16);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_22EE91DCC(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 8), v9 >= 9) && v9 - 8 >= a1 + v8 - *a2))
    {
      --*(a2 + 16);
      return 1;
    }
  }

  return result;
}

BOOL sub_22EE91E8C(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = (a1 + v9 + *(a1 + v9));
          }

          else
          {
            v10 = 0;
          }

          result = sub_22EE91B8C(a2, v10);
          if (result)
          {
            v11 = (a1 - *a1);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 8), v13 >= 9) && v13 - 8 >= a1 + v11[4] - *a2) && (v12 < 0xB || (v14 = v11[5]) == 0 || (result = 0, v15 = *(a2 + 8), v15 >= 9) && v15 - 8 >= a1 + v14 - *a2))
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = (a1 - *a1);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = sub_22EE92214((a1 + v17 + *(a1 + v17)), a2)))
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v18 = (a1 - *a1);
                    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                    {
                      v20 = (a1 + v19 + *(a1 + v19));
                    }

                    else
                    {
                      v20 = 0;
                    }

                    result = sub_22EE91B8C(a2, v20);
                    if (result)
                    {
                      result = sub_22EE91380(a1, a2, 0x10u);
                      if (result)
                      {
                        v21 = (a1 - *a1);
                        if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
                        {
                          v23 = (a1 + v22 + *(a1 + v22));
                        }

                        else
                        {
                          v23 = 0;
                        }

                        result = sub_22EE91B8C(a2, v23);
                        if (result)
                        {
                          result = sub_22EE91380(a1, a2, 0x12u);
                          if (result)
                          {
                            v24 = (a1 - *a1);
                            if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                            {
                              v26 = (a1 + v25 + *(a1 + v25));
                            }

                            else
                            {
                              v26 = 0;
                            }

                            result = sub_22EE91B8C(a2, v26);
                            if (result)
                            {
                              result = sub_22EE91380(a1, a2, 0x14u);
                              if (result)
                              {
                                v27 = (a1 - *a1);
                                if (*v27 >= 0x15u && (v28 = v27[10]) != 0)
                                {
                                  v29 = (a1 + v28 + *(a1 + v28));
                                }

                                else
                                {
                                  v29 = 0;
                                }

                                result = sub_22EE91B8C(a2, v29);
                                if (result)
                                {
                                  result = sub_22EE91380(a1, a2, 0x16u);
                                  if (result)
                                  {
                                    v30 = (a1 - *a1);
                                    if (*v30 >= 0x17u && (v31 = v30[11]) != 0)
                                    {
                                      v32 = (a1 + v31 + *(a1 + v31));
                                    }

                                    else
                                    {
                                      v32 = 0;
                                    }

                                    result = sub_22EE91B8C(a2, v32);
                                    if (result)
                                    {
                                      result = sub_22EE91380(a1, a2, 0x18u);
                                      if (result)
                                      {
                                        v33 = (a1 - *a1);
                                        if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
                                        {
                                          v35 = (a1 + v34 + *(a1 + v34));
                                        }

                                        else
                                        {
                                          v35 = 0;
                                        }

                                        result = sub_22EE91B8C(a2, v35);
                                        if (result)
                                        {
                                          --*(a2 + 16);
                                          return 1;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_22EE92214(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 5) && v7 - 4 >= a1 + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 8), v8 >= 5) && v8 - 4 >= a1 + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 8), v10 >= 5) && v10 - 4 >= a1 + v9 - *a2)))
    {
      --*(a2 + 16);
      return 1;
    }
  }

  return result;
}

BOOL sub_22EE9230C(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = (a1 + v9 + *(a1 + v9));
          }

          else
          {
            v10 = 0;
          }

          result = sub_22EE91B8C(a2, v10);
          if (result)
          {
            v11 = (a1 - *a1);
            v12 = *v11;
            if (v12 < 9 || (!v11[4] || (result = 0, v13 = *(a2 + 8), v13 >= 9) && v13 - 8 >= a1 + v11[4] - *a2) && (v12 < 0xB || (v14 = v11[5]) == 0 || (result = 0, v15 = *(a2 + 8), v15 >= 9) && v15 - 8 >= a1 + v14 - *a2))
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = (a1 - *a1);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = sub_22EE92214((a1 + v17 + *(a1 + v17)), a2)))
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v18 = (a1 - *a1);
                    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
                    {
                      v20 = (a1 + v19 + *(a1 + v19));
                    }

                    else
                    {
                      v20 = 0;
                    }

                    result = sub_22EE91B8C(a2, v20);
                    if (result)
                    {
                      result = sub_22EE91380(a1, a2, 0x10u);
                      if (result)
                      {
                        v21 = (a1 - *a1);
                        if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
                        {
                          v23 = (a1 + v22 + *(a1 + v22));
                        }

                        else
                        {
                          v23 = 0;
                        }

                        result = sub_22EE91B8C(a2, v23);
                        if (result)
                        {
                          result = sub_22EE91380(a1, a2, 0x12u);
                          if (result)
                          {
                            v24 = (a1 - *a1);
                            if (*v24 >= 0x13u && (v25 = v24[9]) != 0)
                            {
                              v26 = (a1 + v25 + *(a1 + v25));
                            }

                            else
                            {
                              v26 = 0;
                            }

                            result = sub_22EE91B8C(a2, v26);
                            if (result)
                            {
                              v27 = (a1 - *a1);
                              if (*v27 < 0x15u || (v28 = v27[10]) == 0 || (result = 0, v29 = *(a2 + 8), v29 >= 9) && v29 - 8 >= a1 + v28 - *a2)
                              {
                                --*(a2 + 16);
                                return 1;
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
    }
  }

  return result;
}

uint64_t sub_22EE925E8(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 8);
      if (v7 < 2 || v7 - 1 < a1 + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = sub_22EE91380(a1, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (a1 - *a1);
  v9 = *v8;
  if (v9 >= 7)
  {
    if (v8[3])
    {
      v10 = (a1 + v8[3] + *(a1 + v8[3]));
LABEL_12:
      v11 = v8[2];
      if (v11)
      {
        if (v10)
        {
          if (*(a1 + v11) == 1)
          {
            result = sub_22EE91E8C(v10, a2);
            if (!result)
            {
              return result;
            }
          }
        }
      }

      goto LABEL_16;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (v9 >= 5)
  {
    goto LABEL_11;
  }

LABEL_16:
  result = sub_22EE91380(a1, a2, 8u);
  if (!result)
  {
    return result;
  }

  v12 = *a1;
  v13 = -v12;
  v14 = (a1 - v12);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      result = sub_22EE9158C(a2, (a1 + v15 + *(a1 + v15)), 4uLL, 0);
      if (!result)
      {
        return result;
      }

      v13 = -*a1;
    }
  }

  v16 = (a1 + v13);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = (a1 + v17 + *(a1 + v17));
  }

  else
  {
    v18 = 0;
  }

  result = sub_22EE92860(a2, v18);
  if (result)
  {
    v19 = (a1 - *a1);
    v20 = *v19;
    if (v20 < 0xB)
    {
      goto LABEL_42;
    }

    if (!v19[5] || (result = 0, v21 = *(a2 + 8), v21 >= 9) && v21 - 8 >= a1 + v19[5] - *a2)
    {
      if (v20 < 0xD || (!v19[6] || (result = 0, v22 = *(a2 + 8), v22 >= 2) && v22 - 1 >= a1 + v19[6] - *a2) && (v20 < 0xF || (!v19[7] || (result = 0, v23 = *(a2 + 8), v23 >= 2) && v23 - 1 >= a1 + v19[7] - *a2) && (v20 < 0x11 || (v24 = v19[8]) == 0 || (result = 0, v25 = *(a2 + 8), v25 >= 5) && v25 - 4 >= a1 + v24 - *a2)))
      {
LABEL_42:
        --*(a2 + 16);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22EE92860(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE928DC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE928DC(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        v8 = (a1 - *a1);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 8), v12 >= 9) && v12 - 8 >= a1 + v11 - *a2))
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = *a1;
            v14 = -v13;
            v15 = (a1 - v13);
            if (*v15 >= 0xBu)
            {
              v16 = v15[5];
              if (v16)
              {
                result = sub_22EE9158C(a2, (a1 + v16 + *(a1 + v16)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v14 = -*a1;
              }
            }

            v17 = (a1 + v14);
            if (*v17 >= 0xBu && (v18 = v17[5]) != 0)
            {
              v19 = (a1 + v18 + *(a1 + v18));
            }

            else
            {
              v19 = 0;
            }

            result = sub_22EE92D80(a2, v19);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v20 = *a1;
                v21 = -v20;
                v22 = (a1 - v20);
                if (*v22 >= 0xDu)
                {
                  v23 = v22[6];
                  if (v23)
                  {
                    result = sub_22EE9158C(a2, (a1 + v23 + *(a1 + v23)), 1uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v21 = -*a1;
                  }
                }

                v24 = (a1 + v21);
                v25 = *v24;
                if (v25 < 0xF)
                {
                  goto LABEL_80;
                }

                if (!v24[7] || (result = 0, v26 = *(a2 + 8), v26 >= 9) && v26 - 8 >= a1 + v24[7] - *a2)
                {
                  if (v25 < 0x11 || (!v24[8] || (result = 0, v27 = *(a2 + 8), v27 >= 2) && v27 - 1 >= a1 + v24[8] - *a2) && (v25 < 0x13 || (!v24[9] || (result = 0, v28 = *(a2 + 8), v28 >= 2) && v28 - 1 >= a1 + v24[9] - *a2) && (v25 < 0x15 || (v29 = v24[10]) == 0 || (result = 0, v30 = *(a2 + 8), v30 >= 2) && v30 - 1 >= a1 + v29 - *a2)))
                  {
LABEL_80:
                    result = sub_22EE91380(a1, a2, 0x16u);
                    if (result)
                    {
                      v31 = *a1;
                      v32 = -v31;
                      v33 = (a1 - v31);
                      if (*v33 >= 0x17u)
                      {
                        v34 = v33[11];
                        if (v34)
                        {
                          result = sub_22EE9158C(a2, (a1 + v34 + *(a1 + v34)), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v32 = -*a1;
                        }
                      }

                      v35 = (a1 + v32);
                      if (*v35 >= 0x17u && (v36 = v35[11]) != 0)
                      {
                        v37 = (a1 + v36 + *(a1 + v36));
                      }

                      else
                      {
                        v37 = 0;
                      }

                      result = sub_22EE92DFC(a2, v37);
                      if (result)
                      {
                        result = sub_22EE91380(a1, a2, 0x18u);
                        if (result)
                        {
                          v38 = *a1;
                          v39 = -v38;
                          v40 = (a1 - v38);
                          if (*v40 >= 0x19u)
                          {
                            v41 = v40[12];
                            if (v41)
                            {
                              result = sub_22EE9158C(a2, (a1 + v41 + *(a1 + v41)), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v39 = -*a1;
                            }
                          }

                          v42 = (a1 + v39);
                          if (*v42 >= 0x19u && (v43 = v42[12]) != 0)
                          {
                            v44 = (a1 + v43 + *(a1 + v43));
                          }

                          else
                          {
                            v44 = 0;
                          }

                          result = sub_22EE92E78(a2, v44);
                          if (result)
                          {
                            result = sub_22EE91380(a1, a2, 0x1Au);
                            if (result)
                            {
                              v45 = *a1;
                              v46 = -v45;
                              v47 = (a1 - v45);
                              if (*v47 >= 0x1Bu)
                              {
                                v48 = v47[13];
                                if (v48)
                                {
                                  result = sub_22EE9158C(a2, (a1 + v48 + *(a1 + v48)), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v46 = -*a1;
                                }
                              }

                              v49 = (a1 + v46);
                              if (*v49 >= 0x1Bu && (v50 = v49[13]) != 0)
                              {
                                v51 = (a1 + v50 + *(a1 + v50));
                              }

                              else
                              {
                                v51 = 0;
                              }

                              result = sub_22EE92E78(a2, v51);
                              if (result)
                              {
                                --*(a2 + 16);
                                return 1;
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
    }
  }

  return result;
}

uint64_t sub_22EE92D80(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE92EF4((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE92DFC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE93740((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE92E78(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE938A0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE92EF4(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 8), v9 >= 9) && v9 - 8 >= a1 + v8 - *a2))
    {
      result = sub_22EE91380(a1, a2, 8u);
      if (result)
      {
        v10 = (a1 - *a1);
        if (*v10 >= 9u && (v11 = v10[4]) != 0)
        {
          v12 = (a1 + v11 + *(a1 + v11));
        }

        else
        {
          v12 = 0;
        }

        result = sub_22EE91B8C(a2, v12);
        if (result)
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = (a1 - *a1);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = (a1 + v14 + *(a1 + v14));
            }

            else
            {
              v15 = 0;
            }

            result = sub_22EE91B8C(a2, v15);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = *a1;
                v17 = -v16;
                v18 = (a1 - v16);
                if (*v18 >= 0xDu)
                {
                  v19 = v18[6];
                  if (v19)
                  {
                    result = sub_22EE9158C(a2, (a1 + v19 + *(a1 + v19)), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v17 = -*a1;
                  }
                }

                v20 = (a1 + v17);
                if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
                {
                  v22 = (a1 + v21 + *(a1 + v21));
                }

                else
                {
                  v22 = 0;
                }

                result = sub_22EE93210(a2, v22);
                if (result)
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v23 = (a1 - *a1);
                    if (*v23 < 0xFu || (v24 = v23[7]) == 0 || (result = sub_22EE9158C(a2, (a1 + v24 + *(a1 + v24)), 1uLL, 0), result))
                    {
                      result = sub_22EE91380(a1, a2, 0x10u);
                      if (result)
                      {
                        v25 = *a1;
                        v26 = -v25;
                        v27 = (a1 - v25);
                        if (*v27 >= 0x11u)
                        {
                          v28 = v27[8];
                          if (v28)
                          {
                            result = sub_22EE9158C(a2, (a1 + v28 + *(a1 + v28)), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v26 = -*a1;
                          }
                        }

                        v29 = (a1 + v26);
                        if (*v29 >= 0x11u && (v30 = v29[8]) != 0)
                        {
                          v31 = (a1 + v30 + *(a1 + v30));
                        }

                        else
                        {
                          v31 = 0;
                        }

                        result = sub_22EE9328C(a2, v31);
                        if (result)
                        {
                          v32 = (a1 - *a1);
                          if (*v32 < 0x13u || (v33 = v32[9]) == 0 || (result = 0, v34 = *(a2 + 8), v34 >= 9) && v34 - 8 >= a1 + v33 - *a2)
                          {
                            --*(a2 + 16);
                            return 1;
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

  return result;
}