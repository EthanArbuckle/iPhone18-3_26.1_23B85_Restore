uint64_t sub_298C4A6E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = a5;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 56) = dispatch_queue_create("com.apple.hwtrace.monitor", v9);
  v10 = (*(a3 + 128) < 6u) & (0x32u >> *(a3 + 128));
  if (a4)
  {
    LOBYTE(v10) = 0;
  }

  *(a1 + 81) = v10;
  if (!a5)
  {
    return a1;
  }

  v11 = sub_298B9CDFC();
  v12 = v11;
  v13 = v11[4];
  if (v11[3] - v13 > 0x20uLL)
  {
    qmemcpy(v13, "Monitor: ReplaceExistingEvents = ", 33);
    v11[4] += 33;
  }

  else
  {
    sub_298B9BCEC(v11, "Monitor: ReplaceExistingEvents = ", 0x21uLL);
  }

  sub_298B8FC48(v12, *(a1 + 81), 0, 0, 0);
  v14 = v12[4];
  if (v12[3] != v14)
  {
    *v14 = 10;
    ++v12[4];
    return a1;
  }

  sub_298B9BCEC(v12, "\n", 1uLL);
  return a1;
}

uint64_t sub_298C4A840(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = *(a1 + 32);
      while (*v4 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v4 += 16;
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v4 = *(a1 + 32);
    }

    v5 = *(a1 + 32) + 16 * v2;
    if (v4 != v5)
    {
      v6 = MEMORY[0x29EDCA6B0];
LABEL_10:
      v7 = *(v4 + 8);
      if (v7 + 1 >= 2)
      {
        mach_port_deallocate(*v6, v7);
      }

      while (1)
      {
        v4 += 16;
        if (v4 == v5)
        {
          break;
        }

        if (*v4 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v4 != v5)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

LABEL_15:
  if (*(a1 + 24))
  {
    if (*(a1 + 64))
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(*(a1 + 64));
    }

    dispatch_release(*(a1 + 72));
  }

  dispatch_release(*(a1 + 56));
  MEMORY[0x29C2945E0](*(a1 + 32), 8);
  return a1;
}

uint64_t sub_298C4A92C(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = sub_298B227A0(1);
  v5 = os_signpost_id_generate(v4);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Monitor::scanAllTasks", &unk_298EC00B5, buf, 2u);
  }

  v24 = &unk_2A1F1FF10;
  *&v25 = v5;
  *(&v25 + 1) = v4;
  v26 = &v24;
  v29 = &v27;
  v30 = v5;
  v28 = v25;
  v27 = &unk_2A1F1FF10;
  v6 = *(a2 + 8);
  std::mutex::lock(v6);
  if (*(a2 + 24) != 1)
  {
    v31 = xmmword_298D1C7F0;
    v21 = 0;
    if (sysctl(&v31, 4u, 0, &v21, 0, 0) || v21 % 0x288)
    {
      v13[0] = "LiveRecording.cpp";
      v13[2] = ":";
      v14 = 771;
      std::generic_category();
      v12 = 3;
      LODWORD(v11) = 3552052;
      v15[0] = v13;
      v15[2] = &v11;
      v16 = 1026;
      v17[0] = v15;
      v17[2] = ": ";
      v18 = 770;
      v19[0] = v17;
      v19[2] = "KERN_PROC_ALL sysctl failed";
      v20 = 770;
      sub_298B996A4(v19, &__p);
      operator new();
    }

    operator new[]();
  }

  v7 = *(a2 + 8);
  *buf = *(a2 + 16);
  v8 = *sub_298C16B60(v7 + 456, buf);
  if (!v8)
  {
    operator new();
  }

  sub_298C4B1AC(a1, a2, v8);
  std::mutex::unlock(v6);
  result = v29;
  if (v29)
  {
    (*(*v29 + 6))(v29);
    result = v29;
    if (v29 == &v27)
    {
      result = (*(*v29 + 4))(v29);
    }

    else if (v29)
    {
      result = (*(*v29 + 5))();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

intptr_t sub_298C4B194(uint64_t a1)
{
  v1 = *(a1 + 32);
  atomic_store(1u, (v1 + 80));
  return dispatch_semaphore_signal(*(v1 + 72));
}

uint64_t sub_298C4B1AC(void *a1, uint64_t a2, uint64_t a3)
{
  v222 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 24);
  v7 = a2 + 32;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  if (!v9)
  {
    v38 = (4 * *(a2 + 40) + 4);
    goto LABEL_111;
  }

  v10 = v9 - 1;
  v11 = (v9 - 1) & (37 * v6);
  v12 = (v8 + 16 * v11);
  v13 = *v12;
  if (*v12 == v6)
  {
    goto LABEL_3;
  }

  v66 = 0;
  v67 = 1;
  while (v13 != -1)
  {
    if (v66)
    {
      v68 = 0;
    }

    else
    {
      v68 = v13 == -2;
    }

    if (v68)
    {
      v66 = v12;
    }

    v69 = v11 + v67++;
    v11 = v69 & v10;
    v12 = (v8 + 16 * (v69 & v10));
    v13 = *v12;
    if (*v12 == v6)
    {
      goto LABEL_3;
    }
  }

  if (v66)
  {
    v12 = v66;
  }

  v70 = *(a2 + 40);
  if (4 * v70 + 4 >= 3 * v9)
  {
LABEL_111:
    sub_298AF101C(v7, 2 * v9);
    v71 = *(a2 + 32);
    v72 = *(a2 + 48) - 1;
    v73 = v72 & (37 * v6);
    v12 = (v71 + 16 * v73);
    v74 = *v12;
    if (*v12 != v6)
    {
      v75 = 0;
      v76 = 1;
      while (v74 != -1)
      {
        if (v75)
        {
          v77 = 0;
        }

        else
        {
          v77 = v74 == -2;
        }

        if (v77)
        {
          v75 = v12;
        }

        v78 = v73 + v76++;
        v73 = v78 & v72;
        v12 = (v71 + 16 * (v78 & v72));
        v74 = *v12;
        if (*v12 == v6)
        {
          goto LABEL_260;
        }
      }

      goto LABEL_272;
    }

    goto LABEL_260;
  }

  if (v9 + ~v70 - *(a2 + 44) <= v9 >> 3)
  {
    sub_298AF101C(v7, v9);
    v141 = *(a2 + 32);
    v142 = *(a2 + 48) - 1;
    v143 = v142 & (37 * v6);
    v12 = (v141 + 16 * v143);
    v144 = *v12;
    if (*v12 != v6)
    {
      v75 = 0;
      v145 = 1;
      while (v144 != -1)
      {
        if (v75)
        {
          v146 = 0;
        }

        else
        {
          v146 = v144 == -2;
        }

        if (v146)
        {
          v75 = v12;
        }

        v147 = v143 + v145++;
        v143 = v147 & v142;
        v12 = (v141 + 16 * (v147 & v142));
        v144 = *v12;
        if (*v12 == v6)
        {
          goto LABEL_260;
        }
      }

LABEL_272:
      if (v75)
      {
        v12 = v75;
      }

      v148 = *v12;
      ++*(a2 + 40);
      if (v148 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_260:
    ++*(a2 + 40);
    if (v6 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v39 = *v12;
  ++*(a2 + 40);
  if (v39 != -1)
  {
LABEL_55:
    --*(a2 + 44);
  }

LABEL_56:
  *v12 = v6;
  *(v12 + 2) = 0;
LABEL_3:
  v14 = *(v12 + 2);
  infoCnt[0] = v14;
  if (v14 - 1 >= 0xFFFFFFFE)
  {
    v15 = *MEMORY[0x29EDCA6B0];
    if (task_read_for_pid())
    {
      std::generic_category();
      *&v204 = "LiveRecording.cpp";
      *&v205 = ":";
      LOWORD(v206) = 771;
      HIBYTE(v199) = 3;
      LODWORD(size[0]) = 3683381;
      *&v157 = &v204;
      *&v158 = size;
      LOWORD(v159) = 1026;
      *&v162 = &v157;
      *&v163 = ": ";
      LOWORD(v164) = 770;
      *&v168 = &v162;
      *&v169 = "task_for_pid failed, pid=";
      LOWORD(v170) = 770;
      if (v6)
      {
        v16 = 20;
        do
        {
          v17 = v16;
          policy_info.i8[v16--] = (v6 % 0xA) | 0x30;
          v18 = v6 > 9;
          v6 /= 0xAuLL;
        }

        while (v18);
        v19 = 21 - v17;
        if ((21 - v17) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_262;
        }
      }

      else
      {
        BYTE4(v213[0]) = 48;
        v17 = 20;
        v19 = 1;
      }

      if (v19 <= 0x16)
      {
        HIBYTE(v196) = v19;
        if (v17 != 21)
        {
          memcpy(nesting_depth, &policy_info.i8[v17], v19);
        }

        *(nesting_depth + v19) = 0;
        *&info = &v168;
        v219[0] = nesting_depth;
        LOWORD(p_policy_info) = 1026;
        sub_298B996A4(&info, address);
        operator new();
      }

      operator new();
    }

    v14 = infoCnt[0];
  }

  *a1 = 0;
  LODWORD(get_default[0]) = 0;
  policy_infoCnt[0] = 16;
  v20 = task_policy_get(v14, 4u, policy_info.i32, policy_infoCnt, get_default);
  if (v20)
  {
    v21 = v20;
    std::generic_category();
    v22 = 0;
    v182[0] = "LiveRecording.cpp";
    v183 = ":";
    v184 = 771;
    HIBYTE(v210) = 3;
    v186[0] = v182;
    v187 = v209;
    v188 = 1026;
    v189[0] = v186;
    v190 = ": ";
    v191 = 770;
    *infoCnt = v189;
    v193 = "Error llvm::applehwtrace::Monitor::scanTask(UniqueContext &, const SystemTrace::LockToken &)";
    v194 = 770;
    *nesting_depth = infoCnt;
    v196 = ": ";
    v197 = 770;
    size[0] = nesting_depth;
    v199 = "Failed to get TASK_POLICY_STATE";
    v200 = 770;
    address[0] = size;
    v202 = " (err=";
    v23 = v21;
    v203 = 770;
    v24 = v219 + 1;
    v209[0] = 3158325;
    do
    {
      *--v24 = a0123456789abcd_1[v23 & 0xF];
      ++v22;
      v25 = v23 >= 0x10;
      v23 >>= 4;
    }

    while (v25);
    if (v22 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v22 > 0x16)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v22;
      memcpy(&__dst, v24, v22);
      __dst.__r_.__value_.__s.__data_[v22] = 0;
      *&v204 = address;
      *&v205 = &__dst;
      LOWORD(v206) = 1026;
      *&v157 = &v204;
      *&v158 = ") ";
      LOWORD(v159) = 770;
      if (mach_error_string(v21))
      {
        v26 = mach_error_string(v21);
        if (*v26)
        {
LABEL_22:
          *&v162 = &v157;
          *&v163 = v26;
          LOWORD(v164) = 770;
          v27 = 2;
          goto LABEL_23;
        }
      }

      else
      {
        v26 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_22;
        }
      }

      v162 = v157;
      v163 = v158;
      v164 = v159;
      v27 = v159;
LABEL_23:
      if (BYTE1(v164) != 1)
      {
        v27 = 2;
      }

      v28 = &v162;
      if (BYTE1(v164) == 1)
      {
        v28 = v162;
      }

      *&v168 = v28;
      *(&v168 + 1) = *(&v162 + 1);
      *&v169 = "\n";
      LOBYTE(v170) = v27;
      BYTE1(v170) = 3;
      sub_298B996A4(&v168, thread_info_out);
      operator new();
    }

LABEL_262:
    sub_298ADDDA0();
  }

  if ((~v215 & 0xE0000) == 0)
  {
    std::generic_category();
    *&v204 = "LiveRecording.cpp";
    *&v205 = ":";
    LOWORD(v206) = 771;
    HIBYTE(v199) = 3;
    LODWORD(size[0]) = 3420469;
    *&v157 = &v204;
    *&v158 = size;
    LOWORD(v159) = 1026;
    *&v162 = &v157;
    *&v163 = ": ";
    LOWORD(v164) = 770;
    *&v168 = &v162;
    *&v169 = "Tracing DriverKit processes is unsupported.";
    LOWORD(v170) = 770;
    sub_298B996A4(&v168, address);
    operator new();
  }

  suspend_token = 0;
  v29 = *(a3 + 24);
  if (v29 != getpid())
  {
    task_suspend2(v14, &suspend_token);
  }

  if (*(a2 + 81) == 1)
  {
    v30 = *(a3 + 64);
    v31 = *(a3 + 72);
    while (v31 != v30)
    {
      v33 = *--v31;
      v32 = v33;
      *v31 = 0;
      if (v33)
      {
        (*(*v32 + 8))(v32);
      }
    }

    *(a3 + 72) = v30;
  }

  v174 = 0;
  _dyld_process_info_create();
  if (v174)
  {
    std::generic_category();
    address[0] = "LiveRecording.cpp";
    v202 = ":";
    v203 = 771;
    HIBYTE(v196) = 3;
    nesting_depth[0] = 3225142;
    *&v204 = address;
    *&v205 = nesting_depth;
    LOWORD(v206) = 1026;
    *&v162 = &v204;
    *&v163 = ": ";
    LOWORD(v164) = 770;
    *&info = &v162;
    v219[0] = "_dyld_process_info_create";
    LOWORD(p_policy_info) = 770;
    sub_298B996A4(&info, size);
    operator new();
  }

  _dyld_process_info_get_cache();
  if ((v211 & 1) == 0)
  {
    v34 = *(a2 + 8);
    v35 = *(v34 + 432);
    v36 = *(v34 + 440);
    if (v35 == v36)
    {
LABEL_51:
      *(&thread_info_outCnt + 1) = 0;
      v173 = 0;
      *&thread_info_outCnt = v209;
      policy_info.i64[1] = 0;
      v213[0] = 0;
      policy_info.i64[0] = v209;
      LOBYTE(v168) = 0;
      v171 = 0;
      sub_298C16C08(v34, 1, &policy_info, 2 * v210, 3);
    }

    while (1)
    {
      v37 = *v35;
      if (**v35 == 1)
      {
        break;
      }

      if (++v35 == v36)
      {
        goto LABEL_51;
      }
    }

    *(&thread_info_outCnt + 1) = 0;
    v173 = 0;
    *&thread_info_outCnt = v209;
    v40 = v37 + 1;
    v213[0] = 0;
    policy_info = (v37 + 1);
    if (!sub_298BDC880(&policy_info, &thread_info_outCnt))
    {
      v213[0] = 0;
      policy_info = v40;
      info = thread_info_outCnt;
      v219[0] = v173;
      sub_298C4D524(a1, &policy_info, &info, *(a3 + 24));
    }

    v41 = *(a2 + 8);
    policy_info = 0uLL;
    if (thread_info_outCnt)
    {
      uuid_copy(&policy_info, thread_info_outCnt);
    }

    else
    {
      uuid_parse(*(&thread_info_outCnt + 1), &policy_info);
    }

    *&info = &policy_info;
    v42 = sub_298B223E4((v41 + 392), &policy_info);
    v43 = v42[55];
    v44 = v43;
    if ((v43 & 0x80u) != 0)
    {
      v43 = *(v42 + 5);
    }

    if (v43 == 3)
    {
      v45 = (v42 + 32);
      v46 = v44 >= 0 ? v42 + 32 : *(v42 + 4);
      v47 = *v46;
      v48 = v46[2];
      if (*"???" == v47 && asc_298EAE9A9[2] == v48)
      {
        error_value = 0;
        v50 = dyld_process_create_for_task();
        v51 = error_value;
        if (error_value)
        {
          v52 = 0;
          *thread_info_out = "LiveRecording.cpp";
          v180 = ":";
          v181 = 771;
          v178 = 3;
          v182[0] = thread_info_out;
          v183 = get_default;
          v184 = 1026;
          v186[0] = v182;
          v187 = ": ";
          v189[0] = v186;
          v190 = "Expected<std::string> getSharedCacheMainFile(task_read_t)";
          *infoCnt = v189;
          v188 = 770;
          v191 = 770;
          v193 = ": ";
          v194 = 770;
          *nesting_depth = infoCnt;
          v196 = "dyld_process_create_for_task";
          v197 = 770;
          size[0] = nesting_depth;
          v199 = " (err=";
          v200 = 770;
          v53 = v213 + 1;
          LODWORD(get_default[0]) = 3420726;
          do
          {
            *--v53 = a0123456789abcd_1[v51 & 0xF];
            ++v52;
            v25 = v51 >= 0x10;
            v51 >>= 4;
          }

          while (v25);
          std::generic_category();
          if (v52 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_262;
          }

          if (v52 > 0x16)
          {
            operator new();
          }

          v176 = v52;
          memcpy(policy_infoCnt, v53, v52);
          *(policy_infoCnt + v52) = 0;
          address[0] = size;
          v202 = policy_infoCnt;
          v203 = 1026;
          *&v204 = address;
          *&v205 = ") ";
          LOWORD(v206) = 770;
          if (mach_error_string(error_value))
          {
            v61 = mach_error_string(error_value);
          }

          else
          {
            v61 = "unknown error";
          }

          if (*v61)
          {
            *&v162 = &v204;
            *&v163 = v61;
            LOWORD(v164) = 770;
            v62 = 2;
            v63 = &v162;
LABEL_91:
            *&info = v63;
            *(&info + 1) = v60;
            v219[0] = "\n";
            v64 = 3;
            goto LABEL_92;
          }

          v162 = v204;
          v163 = v205;
          v164 = v206;
          v62 = v206;
          if (v206)
          {
            if (v206 != 1)
            {
              v60 = *(&v162 + 1);
              v63 = &v162;
              if (BYTE1(v164) == 1)
              {
                v63 = v162;
              }

              else
              {
                v62 = 2;
              }

              goto LABEL_91;
            }

            *&info = "\n";
            v64 = 1;
            v62 = 3;
          }

          else
          {
            v64 = 1;
          }

LABEL_92:
          LOBYTE(p_policy_info) = v62;
          BYTE1(p_policy_info) = v64;
          sub_298B996A4(&info, &__dst);
          operator new();
        }

        v54 = v50;
        v55 = dyld_process_snapshot_create_for_process();
        v56 = error_value;
        if (!error_value)
        {
          v65 = v55;
          if (!dyld_process_snapshot_get_shared_cache())
          {
            address[0] = "LiveRecording.cpp";
            v202 = ":";
            v203 = 771;
            std::generic_category();
            HIBYTE(v196) = 3;
            nesting_depth[0] = 3355702;
            *&v204 = address;
            *&v205 = nesting_depth;
            LOWORD(v206) = 1026;
            *&v162 = &v204;
            *&v163 = ": ";
            LOWORD(v164) = 770;
            *&info = &v162;
            v219[0] = "no shared cache found within snapshot";
            LOWORD(p_policy_info) = 770;
            sub_298B996A4(&info, size);
            operator new();
          }

          policy_info.i64[0] = 0;
          policy_info.i64[1] = &policy_info;
          v213[0] = 0x4802000000;
          v213[1] = sub_298C591D4;
          v213[2] = sub_298C59210;
          LOBYTE(v214) = 0;
          v217 = 0;
          *&info = MEMORY[0x29EDCA5F8];
          *(&info + 1) = 1107296256;
          v219[0] = sub_298C59230;
          v219[1] = &unk_2A1F1FE18;
          p_policy_info = &policy_info;
          dyld_shared_cache_for_each_file();
          v208 &= ~1u;
          if (*(policy_info.i64[1] + 63) < 0)
          {
            sub_298AFE11C(&__dst, *(policy_info.i64[1] + 40), *(policy_info.i64[1] + 48));
          }

          else
          {
            __dst = *(policy_info.i64[1] + 40);
          }

          _Block_object_dispose(&policy_info, 8);
          if (v217 == 1 && v216 < 0)
          {
            operator delete(v214);
          }

          if (v65)
          {
            dyld_process_snapshot_dispose();
          }

          if (v54)
          {
            dyld_process_dispose();
          }

          if ((v208 & 1) != 0 && (v85 = __dst.__r_.__value_.__r.__words[0], __dst.__r_.__value_.__r.__words[0] = 0, v85))
          {
            *&info = v85;
            sub_298AE72FC(&info, policy_info.i64);
            if (info)
            {
              (*(*info + 8))(info);
            }
          }

          else
          {
            std::string::operator=(v45, &__dst);
          }

          if (v208)
          {
            v86 = __dst.__r_.__value_.__r.__words[0];
            __dst.__r_.__value_.__r.__words[0] = 0;
            if (v86)
            {
              (*(*v86 + 8))(v86);
            }
          }

          else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }

        v57 = 0;
        *thread_info_out = "LiveRecording.cpp";
        v180 = ":";
        v181 = 771;
        v178 = 3;
        v182[0] = thread_info_out;
        v183 = get_default;
        v184 = 1026;
        v186[0] = v182;
        v187 = ": ";
        v189[0] = v186;
        v190 = "Expected<std::string> getSharedCacheMainFile(task_read_t)";
        *infoCnt = v189;
        v188 = 770;
        v191 = 770;
        v193 = ": ";
        v194 = 770;
        *nesting_depth = infoCnt;
        v196 = "dyld_process_snapshot_create_for_process";
        v197 = 770;
        size[0] = nesting_depth;
        v199 = " (err=";
        v200 = 770;
        v58 = v213 + 1;
        LODWORD(get_default[0]) = 3420982;
        do
        {
          *--v58 = a0123456789abcd_1[v56 & 0xF];
          ++v57;
          v25 = v56 >= 0x10;
          v56 >>= 4;
        }

        while (v25);
        std::generic_category();
        if (v57 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_262;
        }

        if (v57 > 0x16)
        {
          operator new();
        }

        v176 = v57;
        memcpy(policy_infoCnt, v58, v57);
        *(policy_infoCnt + v57) = 0;
        address[0] = size;
        v202 = policy_infoCnt;
        v203 = 1026;
        *&v204 = address;
        *&v205 = ") ";
        LOWORD(v206) = 770;
        if (mach_error_string(error_value))
        {
          v81 = mach_error_string(error_value);
        }

        else
        {
          v81 = "unknown error";
        }

        if (*v81)
        {
          *&v162 = &v204;
          *&v163 = v81;
          LOWORD(v164) = 770;
          v82 = 2;
          v83 = &v162;
LABEL_127:
          *&info = v83;
          *(&info + 1) = v80;
          v219[0] = "\n";
          v84 = 3;
          goto LABEL_128;
        }

        v162 = v204;
        v163 = v205;
        v164 = v206;
        v82 = v206;
        if (v206)
        {
          if (v206 != 1)
          {
            v80 = *(&v162 + 1);
            v83 = &v162;
            if (BYTE1(v164) == 1)
            {
              v83 = v162;
            }

            else
            {
              v82 = 2;
            }

            goto LABEL_127;
          }

          *&info = "\n";
          v84 = 1;
          v82 = 3;
        }

        else
        {
          v84 = 1;
        }

LABEL_128:
        LOBYTE(p_policy_info) = v82;
        BYTE1(p_policy_info) = v84;
        sub_298B996A4(&info, &__dst);
        operator new();
      }
    }
  }

LABEL_160:
  *&v162 = 0;
  *(&v162 + 1) = &v162;
  *&v163 = 0x4002000000;
  *(&v163 + 1) = sub_298C4D98C;
  v164 = sub_298C4D9A8;
  v165 = 0;
  v166 = 0;
  v167 = 0x2000000000;
  *&v157 = MEMORY[0x29EDCA5F8];
  *(&v157 + 1) = 1107296256;
  *&v158 = sub_298C4DA2C;
  *(&v158 + 1) = &unk_2A1F1FDB8;
  v159 = &v162;
  v160 = a2;
  v161 = a3;
  _dyld_process_info_for_each_image();
  v155 = *(a2 + 8);
  v87 = *(&v162 + 1);
  address[0] = 0;
  size[0] = 0;
  nesting_depth[0] = 0;
  infoCnt[0] = 19;
  while (!vm_region_recurse_64(v14, address, size, nesting_depth, &info, infoCnt))
  {
    if (v221)
    {
      ++nesting_depth[0];
    }

    else
    {
      v100 = address[0];
      address[0] += size[0];
      if (info == 5)
      {
        *__error() = 0;
        bzero(&policy_info, 0x400uLL);
        v101 = proc_regionfilename(*(a3 + 24), v100, &policy_info, 0x400u);
        if (!*__error() && v101 >= 0x19)
        {
          v102 = &v209[1] + v101 + 3;
          v103 = *v102;
          v104 = *(v102 + 1);
          v105 = *(v102 + 2);
          v106 = v102[24];
          v107 = v103 == 0x2D636A626F62696CLL && v104 == 0x696C6F706D617274;
          v108 = v107 && v105 == 0x696C79642E73656ELL;
          if (v108 && v106 == 98)
          {
            v110 = sub_298BA724C(&policy_info, v101);
            v111 = *(v87 + 48);
            if (v111)
            {
              v112 = v111 - 1;
              v113 = (v111 - 1) & v110;
              v114 = *(v87 + 40);
              v115 = v114 + 8 * v111 + 8;
              v116 = 1;
              v117 = *(v114 + 8 * v113);
              if (v117)
              {
                while (1)
                {
                  v149 = v116;
                  v150 = v112;
                  v151 = v114;
                  v152 = v115;
                  v153 = v110;
                  v154 = v113;
                  if (v117 != -8 && *(v115 + 4 * v113) == v110 && v101 == *v117 && !memcmp(&policy_info, v117 + *(v87 + 60), v101))
                  {
                    break;
                  }

                  v110 = v153;
                  v112 = v150;
                  v113 = (v154 + v149) & v150;
                  v116 = v149 + 1;
                  v114 = v151;
                  v115 = v152;
                  v117 = *(v151 + 8 * v113);
                  if (!v117)
                  {
                    goto LABEL_184;
                  }
                }

                if (v154 != -1 && v154 != v111)
                {
                  v118 = *(v151 + 8 * v154);
                  if (v100 != *(v118 + 24))
                  {
                    v204 = (v118 + 8);
                    *&v205 = 0;
                    mach_continuous_time();
                    sub_298C177D8(v155, a3, &v204, &policy_info, v101);
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_184:
    ;
  }

  *a1 = 0;
  _Block_object_dispose(&v162, 8);
  if (HIDWORD(v166) && v166)
  {
    v88 = 0;
    v89 = 8 * v166;
    do
    {
      v90 = *(v165 + v88);
      if (v90 != -8 && v90 != 0)
      {
        MEMORY[0x29C2945E0]();
      }

      v88 += 8;
    }

    while (v89 != v88);
  }

  free(v165);
  _dyld_process_info_release();
  if (*a1)
  {
    v92 = 0;
    result = suspend_token;
    if (!suspend_token)
    {
      goto LABEL_173;
    }

    goto LABEL_172;
  }

  policy_infoCnt[0] = 0;
  get_default[0] = 0;
  v95 = task_threads(v14, get_default, policy_infoCnt);
  if (v95)
  {
    v96 = v95;
    v97 = 0;
    v186[0] = "LiveRecording.cpp";
    v187 = ":";
    v188 = 771;
    HIBYTE(v180) = 3;
    v189[0] = v186;
    v190 = thread_info_out;
    v191 = 1026;
    *infoCnt = v189;
    v193 = ": ";
    v194 = 770;
    *nesting_depth = infoCnt;
    v196 = "Error llvm::applehwtrace::Monitor::getThreadIDs(UniqueContext &, task_read_t, const SystemTrace::LockToken &)";
    v197 = 770;
    size[0] = nesting_depth;
    v199 = ": ";
    v200 = 770;
    address[0] = size;
    v202 = "task_threads failed";
    v203 = 770;
    *&v204 = address;
    *&v205 = " (err=";
    v98 = v95;
    LOWORD(v206) = 770;
    v99 = v213 + 1;
    thread_info_out[0] = 3158583;
    do
    {
      *--v99 = a0123456789abcd_1[v98 & 0xF];
      ++v97;
      v25 = v98 >= 0x10;
      v98 >>= 4;
    }

    while (v25);
    std::generic_category();
    if (v97 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_262;
    }

    if (v97 > 0x16)
    {
      operator new();
    }

    HIBYTE(v210) = v97;
    memcpy(v209, v99, v97);
    *(v209 + v97) = 0;
    *&v157 = &v204;
    *&v158 = v209;
    LOWORD(v159) = 1026;
    *&v162 = &v157;
    *&v163 = ") ";
    LOWORD(v164) = 770;
    if (mach_error_string(v96))
    {
      v124 = mach_error_string(v96);
    }

    else
    {
      v124 = "unknown error";
    }

    if (*v124)
    {
      *&v168 = &v162;
      *&v169 = v124;
      LOWORD(v170) = 770;
      v125 = 2;
      v126 = &v168;
LABEL_224:
      *&info = v126;
      *(&info + 1) = v123;
      v219[0] = "\n";
      v127 = 3;
      goto LABEL_225;
    }

    v168 = v162;
    v169 = v163;
    v170 = v164;
    v125 = v164;
    if (v164)
    {
      if (v164 != 1)
      {
        v123 = *(&v168 + 1);
        v126 = &v168;
        if (BYTE1(v170) == 1)
        {
          v126 = v168;
        }

        else
        {
          v125 = 2;
        }

        goto LABEL_224;
      }

      *&info = "\n";
      v127 = 1;
      v125 = 3;
    }

    else
    {
      v127 = 1;
    }

LABEL_225:
    LOBYTE(p_policy_info) = v125;
    BYTE1(p_policy_info) = v127;
    sub_298B996A4(&info, v182);
    operator new();
  }

  v119 = policy_infoCnt[0];
  if (policy_infoCnt[0])
  {
    v120 = 0;
    while (1)
    {
      LODWORD(thread_info_outCnt) = 6;
      v121 = thread_info(get_default[0][v120], 4u, thread_info_out, &thread_info_outCnt);
      if (v121)
      {
        break;
      }

      policy_info.i64[0] = *thread_info_out;
      sub_298AFFBE8(a3 + 88, policy_info.i64);
      ++v120;
      v119 = policy_infoCnt[0];
      if (v120 >= policy_infoCnt[0])
      {
        goto LABEL_217;
      }
    }

    v128 = v121;
    v129 = 0;
    v186[0] = "LiveRecording.cpp";
    v187 = ":";
    v188 = 771;
    HIBYTE(v210) = 3;
    v189[0] = v186;
    v190 = v209;
    v191 = 1026;
    *infoCnt = v189;
    v193 = ": ";
    v194 = 770;
    *nesting_depth = infoCnt;
    v196 = "Error llvm::applehwtrace::Monitor::getThreadIDs(UniqueContext &, task_read_t, const SystemTrace::LockToken &)";
    v197 = 770;
    size[0] = nesting_depth;
    v199 = ": ";
    v200 = 770;
    address[0] = size;
    v202 = "thread_info failed";
    v203 = 770;
    *&v204 = address;
    *&v205 = " (err=";
    v130 = v121;
    LOWORD(v206) = 770;
    v131 = v213 + 1;
    v209[0] = 3552055;
    do
    {
      *--v131 = a0123456789abcd_1[v130 & 0xF];
      ++v129;
      v25 = v130 >= 0x10;
      v130 >>= 4;
    }

    while (v25);
    std::generic_category();
    if (v129 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_262;
    }

    if (v129 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v129;
    memcpy(&__dst, v131, v129);
    __dst.__r_.__value_.__s.__data_[v129] = 0;
    *&v157 = &v204;
    *&v158 = &__dst;
    LOWORD(v159) = 1026;
    *&v162 = &v157;
    *&v163 = ") ";
    LOWORD(v164) = 770;
    if (mach_error_string(v128))
    {
      v134 = mach_error_string(v128);
    }

    else
    {
      v134 = "unknown error";
    }

    if (*v134)
    {
      *&v168 = &v162;
      *&v169 = v134;
      LOWORD(v170) = 770;
      v135 = 2;
      v136 = &v168;
LABEL_244:
      *&info = v136;
      *(&info + 1) = v133;
      v219[0] = "\n";
      v137 = 3;
      goto LABEL_245;
    }

    v168 = v162;
    v169 = v163;
    v170 = v164;
    v135 = v164;
    if (v164)
    {
      if (v164 != 1)
      {
        v133 = *(&v168 + 1);
        v136 = v168;
        if (BYTE1(v170) != 1)
        {
          v136 = &v168;
          v135 = 2;
        }

        goto LABEL_244;
      }

      *&info = "\n";
      v137 = 1;
      v135 = 3;
    }

    else
    {
      v137 = 1;
    }

LABEL_245:
    LOBYTE(p_policy_info) = v135;
    BYTE1(p_policy_info) = v137;
    sub_298B996A4(&info, v182);
    operator new();
  }

LABEL_217:
  *a1 = 0;
  if (v119)
  {
    v138 = 0;
    v139 = MEMORY[0x29EDCA6B0];
    do
    {
      mach_port_deallocate(*v139, get_default[0][v138++]);
    }

    while (v138 < policy_infoCnt[0]);
    v140 = 4 * policy_infoCnt[0];
  }

  else
  {
    v140 = 0;
  }

  MEMORY[0x29C295580](*MEMORY[0x29EDCA6B0], get_default[0], v140);
  v92 = 1;
  result = suspend_token;
  if (suspend_token)
  {
LABEL_172:
    result = task_resume2(result);
  }

LABEL_173:
  if ((v92 & 1) == 0)
  {
    *(a3 + 128) = 1;
  }

  v94 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C4D524(uint64_t a1, const unsigned __int8 **a2, const unsigned __int8 **a3, unint64_t a4)
{
  v53 = *MEMORY[0x29EDCA608];
  std::generic_category();
  v27[0] = "LiveRecording.cpp";
  v27[2] = ":";
  v28 = 771;
  v26 = 3;
  LODWORD(v25) = 3485746;
  v29[0] = v27;
  v29[2] = &v25;
  v30 = 1026;
  v31[0] = v29;
  v31[2] = ": ";
  v32 = 770;
  v33[0] = v31;
  v33[2] = "Multiple shared caches are unsupported (106054931): tracking ";
  v34 = 770;
  v7 = v24;
  sub_298B1FB90(a2, v24);
  v35[0] = v33;
  v35[2] = v24;
  v36 = 1026;
  v37[0] = v35;
  v37[2] = ", ignoring ";
  v38 = 770;
  v8 = v23;
  sub_298B1FB90(a3, v23);
  v9 = v38;
  if (v38 == 1)
  {
    v39 = v23;
    v42 = 260;
    v10 = 4;
    v7 = v40;
  }

  else
  {
    if (!v38)
    {
      v10 = 0;
      v42 = 256;
      v11 = 1;
      v44 = 0;
      v45 = 1;
      if (!a4)
      {
LABEL_4:
        v52 = 48;
        v12 = 20;
        goto LABEL_15;
      }

LABEL_12:
      v14 = 20;
      do
      {
        *(&v51[3] + v14--) = (a4 % 0xA) | 0x30;
        v15 = a4 > 9;
        a4 /= 0xAuLL;
      }

      while (v15);
      v12 = v14 + 1;
LABEL_15:
      v16 = 21 - v12;
      if ((21 - v12) < 0x7FFFFFFFFFFFFFF8)
      {
        if (v16 <= 0x16)
        {
          v22 = 21 - v12;
          if (v12 != 21)
          {
            memcpy(&__p, &v51[3] + v12, 21 - v12);
          }

          *(&__p + v16) = 0;
          if (v10)
          {
            v17 = 2;
            if (v11)
            {
              v19 = v10;
            }

            else
            {
              v19 = 2;
            }

            v20 = v43;
            if (v11)
            {
              v20 = v8;
            }

            v46[0] = v20;
            v46[1] = v7;
            v46[2] = &__p;
            LOBYTE(v47) = v19;
            HIBYTE(v47) = 4;
            v48[0] = v46;
            v48[2] = ")";
            v18 = 3;
          }

          else
          {
            v17 = 0;
            v47 = 256;
            v18 = 1;
          }

          v49 = v17;
          v50 = v18;
          sub_298B996A4(v48, v51);
          operator new();
        }

        operator new();
      }

      sub_298ADDDA0();
    }

    v10 = 2;
    if (HIBYTE(v38) != 1)
    {
      v9 = 2;
    }

    v13 = v37;
    if (HIBYTE(v38) == 1)
    {
      v13 = v37[0];
    }

    v39 = v13;
    v40 = v37[1];
    v41 = v23;
    LOBYTE(v42) = v9;
    HIBYTE(v42) = 4;
    v8 = &v39;
  }

  v11 = 0;
  v43[0] = v8;
  v43[1] = v7;
  v43[2] = " (pid ";
  v44 = v10;
  v45 = 3;
  if (!a4)
  {
    goto LABEL_4;
  }

  goto LABEL_12;
}

__n128 sub_298C4D98C(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  result = a2[3];
  a1[3] = result;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u32[2] = 0;
  return result;
}

void sub_298C4D9A8(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 40) + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x29C2945E0]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  v7 = *(a1 + 40);

  free(v7);
}

void sub_298C4DA2C(void *a1, uint64_t a2, const unsigned __int8 *a3, int8x16_t *__s)
{
  v8 = a1[5];
  v9 = *(a1[4] + 8);
  if (__s)
  {
    v10 = strlen(__s->i8);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_298BA724C(__s, v10);
  v12 = sub_298B96440((v9 + 10), __s, v10, v11);
  v13 = *(v9 + 5);
  v14 = v12;
  v15 = *(v13 + 8 * v12);
  if (v15 == -8)
  {
    --v9[14];
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  v28 = a3;
  v19 = a2;
  v20 = v8;
  v21 = operator new(v10 + 33, 8uLL);
  v22 = v21;
  v23 = (v21 + 4);
  if (v10)
  {
    memcpy(v21 + 4, __s, v10);
  }

  v23[v10] = 0;
  *v22 = v10;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = 0;
  *(v13 + 8 * v14) = v22;
  ++v9[13];
  v24 = (*(v9 + 5) + 8 * sub_298B96888(v9 + 10, v14));
  v8 = v20;
  a2 = v19;
  a3 = v28;
  v15 = *v24;
  if (*v24)
  {
    v25 = v15 == -8;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    do
    {
      v26 = v24[1];
      ++v24;
      v15 = v26;
      if (v26)
      {
        v27 = v15 == -8;
      }

      else
      {
        v27 = 1;
      }
    }

    while (v27);
  }

LABEL_6:
  uuid_copy((v15 + 8), a3);
  *(v15 + 24) = a2;
  v16 = *(v8 + 8);
  v17 = a1[6];
  v29[1] = 0;
  v29[2] = 0;
  v29[0] = a3;
  if (__s)
  {
    v18 = strlen(__s->i8);
  }

  else
  {
    v18 = 0;
  }

  mach_continuous_time();
  sub_298C177D8(v16, v17, v29, __s, v18);
}

void sub_298C4DC08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      goto LABEL_30;
    }

    v8 = a3;
    if (!a3)
    {
      std::generic_category();
      v60[0] = "LiveRecording.cpp";
      v61 = ":";
      v62 = 771;
      v59 = 3;
      __p[0] = 3289657;
      v63[0] = v60;
      v64 = __p;
      v65 = 1026;
      *&v66 = v63;
      *&v67 = ": ";
      LOWORD(v68) = 770;
      *&v69 = &v66;
      *&v70 = "Unspecified ktrace_session_t";
      LOWORD(v71) = 770;
      goto LABEL_41;
    }
  }

  else
  {
    v8 = ktrace_session_create();
    if (*(a2 + 24) == 3)
    {
      if (!a4)
      {
        std::generic_category();
        v60[0] = "LiveRecording.cpp";
        v61 = ":";
        v62 = 771;
        v59 = 3;
        __p[0] = 3683896;
        v63[0] = v60;
        v64 = __p;
        v65 = 1026;
        *&v66 = v63;
        *&v67 = ": ";
        LOWORD(v68) = 770;
        *&v69 = &v66;
        *&v70 = "Unspecified ktrace_file_t";
        LOWORD(v71) = 770;
        goto LABEL_39;
      }

      v9 = ktrace_set_ktrace_file();
      if (v9)
      {
        v10 = v9;
        std::generic_category();
        v60[0] = "LiveRecording.cpp";
        v61 = ":";
        v62 = 771;
        v59 = 3;
        v11 = 3225400;
        goto LABEL_13;
      }
    }

    else
    {
      ktrace_add_stackshot_flags();
    }

    if (*(a2 + 168) == 1)
    {
      v12 = *(a2 + 160);
      v13 = ktrace_filter_pid();
      if (v13)
      {
        v10 = v13;
        std::generic_category();
        v60[0] = "LiveRecording.cpp";
        v61 = ":";
        v62 = 771;
        v59 = 3;
        v11 = 3356728;
LABEL_13:
        __p[0] = v11;
        v63[0] = v60;
        v64 = __p;
        v65 = 1026;
        *&v66 = v63;
        *&v67 = ": ";
        LOWORD(v68) = 770;
        v14 = strerror(v10);
        if (*v14)
        {
          *&v69 = &v66;
          *&v70 = v14;
          LOWORD(v71) = 770;
        }

        else
        {
          v69 = v66;
          v70 = v67;
          v71 = v68;
        }

LABEL_39:
        sub_298B996A4(&v69, v72);
        operator new();
      }
    }

    ktrace_session_set_default_event_names_enabled();
    ktrace_session_set_event_names_enabled();
    ktrace_set_jetsam_coalitions_enabled();
    ktrace_set_thread_groups_enabled();
    ktrace_set_walltimes_enabled();
    ktrace_set_vnode_paths_enabled();
    ktrace_set_thread_cputime_enabled();
    ktrace_set_uuid_map_enabled();
    ktrace_set_remotetime_conversion_enabled();
    ktrace_set_coprocessor_tracing_enabled();
    v15 = *(a2 + 168);
    ktrace_set_execnames_enabled();
    ktrace_set_collection_qos();
    v52 = MEMORY[0x29EDCA5F8];
    v53 = 0x40000000;
    v54 = sub_298C4E5B0;
    v55 = &unk_29EEB6608;
    v56 = a2;
    v57 = v8;
    ktrace_set_completion_handler();
    *(a2 + 32) = v8;
  }

  if (v8)
  {
    v46 = MEMORY[0x29EDCA5F8];
    v47 = 0x40000000;
    v48 = sub_298C4E5FC;
    v49 = &unk_29EEB6628;
    v50 = a2;
    v51 = v8;
    ktrace_events_single();
    v41 = MEMORY[0x29EDCA5F8];
    v42 = 0x40000000;
    v43 = sub_298C4E77C;
    v44 = &unk_29EEB6648;
    v45 = a2;
    ktrace_events_single();
    v36 = MEMORY[0x29EDCA5F8];
    v37 = 0x40000000;
    v38 = sub_298C4E880;
    v39 = &unk_29EEB6668;
    v40 = a2;
    ktrace_events_single();
    *buf = 0;
    v27 = buf;
    v28 = 0x5802000000;
    v29 = sub_298C4E988;
    v31[0] = 0;
    v31[1] = 0;
    v30 = sub_298C4E9E4;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0x2000000000;
    *&v69 = MEMORY[0x29EDCA5F8];
    *(&v69 + 1) = 0x40000000;
    *&v70 = sub_298C592F8;
    *(&v70 + 1) = &unk_29EEB66E8;
    v71 = v31;
    dyld_for_each_installed_shared_cache();
    ktrace_events_range();
    ktrace_stackshot();
    ktrace_set_dropped_events_handler();
    _Block_object_dispose(buf, 8);
    if (HIDWORD(v34) && v34)
    {
      v16 = 0;
      v17 = 8 * v34;
      do
      {
        v18 = *(v33 + v16);
        if (v18 != -8 && v18 != 0)
        {
          if (*(v18 + 31) < 0)
          {
            v20 = *(v33 + v16);
            operator delete(*(v18 + 8));
          }

          MEMORY[0x29C2945E0]();
        }

        v16 += 8;
      }

      while (v17 != v16);
    }

    free(v33);
    MEMORY[0x29C2945E0](v31[0], 8);
  }

LABEL_30:
  if ((*(a2 + 24) & 0xFFFFFFFE) == 2)
  {
    v21 = *(a2 + 16);
    v22 = ktrace_start();
    if (v22)
    {
      v23 = v22;
      std::generic_category();
      v60[0] = "LiveRecording.cpp";
      v61 = ":";
      v62 = 771;
      v59 = 3;
      __p[0] = 3160121;
      v63[0] = v60;
      v64 = __p;
      v65 = 1026;
      *&v66 = v63;
      *&v67 = ": ";
      LOWORD(v68) = 770;
      v24 = strerror(v23);
      if (*v24)
      {
        *&v69 = &v66;
        *&v70 = v24;
        LOWORD(v71) = 770;
      }

      else
      {
        v69 = v66;
        v70 = v67;
        v71 = v68;
      }

LABEL_41:
      sub_298B996A4(&v69, v72);
      operator new();
    }
  }

  v25 = sub_298B227A0(1);
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KTraceSessionProcessor::configure", &unk_298EC00B5, buf, 2u);
  }

  *(a2 + 4) = 1;
  *a1 = 0;
}

void sub_298C4E5B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  ktrace_session_destroy();
  std::mutex::lock((v2 + 40));
  *(v2 + 32) = 0;
  std::condition_variable::notify_one((v2 + 104));

  std::mutex::unlock((v2 + 40));
}

uint64_t sub_298C4E5FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 8);
  if ((v3 & 0x80000000) == 0 && (*(v2 + 168) & (*(v2 + 160) != v3)) == 0)
  {
    v4 = *(v2 + 8);
    v5 = *(result + 40);
    ktrace_get_current_timestamp();
    ktrace_get_continuous_from_timestamp();
    std::mutex::lock(v4);
    operator new();
  }

  return result;
}

void sub_298C4E77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 16);
  if ((v3 & 0x80000000) == 0 && (*(v2 + 168) & (*(v2 + 160) != v3)) == 0)
  {
    v5 = *(v2 + 8);
    std::mutex::lock(v5);
    v6 = *(a2 + 8);
    v8 = v3;
    v7 = *sub_298C16B60(v5[7].__m_.__opaque, &v8);
    if (!v7)
    {
      operator new();
    }

    v8 = v6;
    sub_298AFFBE8(v7 + 88, &v8);
    std::mutex::unlock(v5);
  }
}

void sub_298C4E880(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 88);
  if ((v3 & 0x80000000) == 0 && (*(v2 + 168) & (*(v2 + 160) != v3)) == 0)
  {
    v5 = *(v2 + 8);
    std::mutex::lock(v5);
    v6 = *(a2 + 40);
    v8 = v3;
    v7 = *sub_298C16B60(v5[7].__m_.__opaque, &v8);
    if (!v7)
    {
      operator new();
    }

    v8 = v6;
    sub_298AFFBE8(v7 + 88, &v8);
    std::mutex::unlock(v5);
  }
}

__n128 sub_298C4E988(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v2 = *(a1 + 52);
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  v3 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return result;
}

void sub_298C4E9E4(uint64_t a1)
{
  if (*(a1 + 76))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 64) + v3);
        if (v5 != -8 && v5 != 0)
        {
          if (*(v5 + 31) < 0)
          {
            v7 = *(*(a1 + 64) + v3);
            operator delete(*(v5 + 8));
          }

          MEMORY[0x29C2945E0]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*(a1 + 64));
  v8 = *(a1 + 40);

  JUMPOUT(0x29C2945E0);
}

void sub_298C4EA90(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = *(v2 + 8);
  v4 = *(a1[4] + 8);
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  v53 = a1[6];
  v52 = a2;
  v7 = *(a2 + 88);
  if ((v7 & 0x80000000) == 0 && (v6 & (v5 != v7)) == 0)
  {
    v8 = a2;
    std::mutex::lock(v3);
    v50[0] = *(v8 + 88);
    v9 = *sub_298C16B60(v3[7].__m_.__opaque, v50);
    if (!v9)
    {
      operator new();
    }

    LOBYTE(v54) = 0;
    v51 = 0;
    v10 = *(v8 + 48);
    v50[0] = v4 + 5;
    v50[1] = &v52;
    v50[2] = &v51;
    v50[3] = v3;
    v50[4] = v9;
    v50[5] = &v53;
    v50[6] = &v54;
    v11 = v10 >> 2;
    if (v11 <= 5)
    {
      if (v10 >> 2)
      {
        if (v11 != 1)
        {
          if (v11 == 5)
          {
            LOBYTE(v54) = 1;
            v12 = v4[7].i32[0];
            if (v12)
            {
              v13 = v4[5];
              v14 = *(v8 + 40);
              v15 = v12 - 1;
              v16 = (37 * v14) & v15;
              v17 = (*&v13 + 48 * v16);
              v18 = *v17;
              if (v14 == *v17)
              {
                v19 = 0;
                v20 = 1;
LABEL_28:
                *(v17 + 8) = v19;
                *(v17 + 9) = v20;
LABEL_33:
                *(v17 + 10) = *(v8 + 8);
                *(v17 + 18) = *(v8 + 16);
                v17[4] = *(v8 + 24);
                v17[5] = *(v8 + 32);
                goto LABEL_34;
              }

              v42 = 0;
              v43 = 1;
              v20 = 1;
              while (v18 != -1)
              {
                if (v42)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = v18 == -2;
                }

                if (v44)
                {
                  v42 = v17;
                }

                v45 = v16 + v43++;
                v16 = v45 & v15;
                v17 = (*&v13 + 48 * v16);
                v18 = *v17;
                if (v14 == *v17)
                {
                  v19 = 0;
                  goto LABEL_28;
                }
              }

              if (v42)
              {
                v36 = v42;
              }

              else
              {
                v36 = v17;
              }
            }

            else
            {
              v36 = 0;
            }

            v17 = sub_298C59E68(&v4[5], (v8 + 40), v36);
            *v17 = *(v8 + 40);
            v17[5] = 0;
            *(v17 + 3) = 0u;
            *(v17 + 1) = 0u;
            v8 = v52;
            v19 = v51;
            v20 = v54;
            goto LABEL_28;
          }

LABEL_34:
          std::mutex::unlock(v3);
          return;
        }

LABEL_23:
        sub_298C595A4(v50);
        goto LABEL_34;
      }

      v29 = v4[7].i32[0];
      if (v29)
      {
        v30 = v4[5];
        v31 = *(v8 + 40);
        v32 = v29 - 1;
        v33 = (37 * v31) & v32;
        v17 = (*&v30 + 48 * v33);
        v34 = *v17;
        if (v31 == *v17)
        {
LABEL_20:
          v27 = 0;
          *(v17 + 8) = 0;
LABEL_32:
          *(v17 + 9) = v27;
          goto LABEL_33;
        }

        v38 = 0;
        v39 = 1;
        while (v34 != -1)
        {
          if (v38)
          {
            v40 = 0;
          }

          else
          {
            v40 = v34 == -2;
          }

          if (v40)
          {
            v38 = v17;
          }

          v41 = v33 + v39++;
          v33 = v41 & v32;
          v17 = (*&v30 + 48 * v33);
          v34 = *v17;
          if (v31 == *v17)
          {
            goto LABEL_20;
          }
        }

        if (v38)
        {
          v35 = v38;
        }

        else
        {
          v35 = v17;
        }
      }

      else
      {
        v35 = 0;
      }

      v17 = sub_298C59E68(&v4[5], (v8 + 40), v35);
      *v17 = *(v8 + 40);
      v17[5] = 0;
      *(v17 + 3) = 0u;
      *(v17 + 1) = 0u;
      v8 = v52;
      v27 = v54;
      *(v17 + 8) = v51;
      goto LABEL_32;
    }

    if (v11 == 6)
    {
      LOBYTE(v54) = 1;
      goto LABEL_23;
    }

    if (v11 == 11)
    {
      v51 = 1;
      goto LABEL_23;
    }

    if (v11 != 10)
    {
      goto LABEL_34;
    }

    v51 = 1;
    v21 = v4[7].i32[0];
    if (v21)
    {
      v22 = v4[5];
      v23 = *(v8 + 40);
      v24 = v21 - 1;
      v25 = (37 * v23) & v24;
      v17 = (*&v22 + 48 * v25);
      v26 = *v17;
      if (v23 == *v17)
      {
        v27 = 0;
        v28 = 1;
LABEL_31:
        *(v17 + 8) = v28;
        goto LABEL_32;
      }

      v46 = 0;
      v47 = 1;
      v28 = 1;
      while (v26 != -1)
      {
        if (v46)
        {
          v48 = 0;
        }

        else
        {
          v48 = v26 == -2;
        }

        if (v48)
        {
          v46 = v17;
        }

        v49 = v25 + v47++;
        v25 = v49 & v24;
        v17 = (*&v22 + 48 * v25);
        v26 = *v17;
        if (v23 == *v17)
        {
          v27 = 0;
          goto LABEL_31;
        }
      }

      if (v46)
      {
        v37 = v46;
      }

      else
      {
        v37 = v17;
      }
    }

    else
    {
      v37 = 0;
    }

    v17 = sub_298C59E68(&v4[5], (v8 + 40), v37);
    *v17 = *(v8 + 40);
    v17[5] = 0;
    *(v17 + 3) = 0u;
    *(v17 + 1) = 0u;
    v8 = v52;
    v28 = v51;
    v27 = v54;
    goto LABEL_31;
  }
}

uint64_t sub_298C4EEB8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  v9[1] = a3;
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5 = v3[20];
  v6 = v3[21];
  v10[0] = &unk_2A1F1FF58;
  v10[1] = v3;
  v11 = v10;
  sub_298C4EFA8(v4, v5, v6, 0, v9, v10);
  result = v11;
  if (v11 == v10)
  {
    result = (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    result = (*(*v11 + 40))();
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C4EFA8(std::mutex *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v18[0] = a2;
  v18[1] = a3;
  std::mutex::lock(a1);
  v17[0] = v18;
  v17[1] = a1;
  v16[0] = a1;
  v16[1] = a6;
  if (a4)
  {
    v10 = *(*a4 + 24) + *(*a4 + 16);
    v19[0] = *(*a4 + 16);
    v19[1] = v10;
    sub_298C4835C(v19, sub_298C5A278, v17, sub_298C5A360, v16, &v15);
    v11 = v15;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_298C4835C(a5, sub_298C5A278, v17, sub_298C5A360, v16, &v15);
    v11 = v15;
    if (!v15)
    {
LABEL_10:
      std::mutex::unlock(a1);
      return;
    }
  }

  v14 = v11;
  v15 = 0;
  v12 = *(a6 + 24);
  if (v12)
  {
    (*(*v12 + 48))(v12, &v14);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    goto LABEL_10;
  }

  v13 = sub_298AE761C();
  sub_298C4F100(v13);
}

void sub_298C4F114(void *a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 0x10)
    {
      goto LABEL_4;
    }

LABEL_17:
    v4 = sub_298B9BCEC(v4, "waitForCompletion", 0x11uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  *v5 = 540686858;
  v14 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v14 - v6) <= 0x10)
  {
    goto LABEL_17;
  }

LABEL_4:
  *(v6 + 16) = 110;
  *v6 = *"waitForCompletion";
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 17);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_18:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  v11 = *(a2 + 24);
  if ((v11 - 2) >= 2)
  {
    if (v11 == 1)
    {
      *a1 = 0;
      return;
    }
  }

  else
  {
    v12 = *(a2 + 32);
    ktrace_end();
    m = (a2 + 40);
    v15.__m_ = (a2 + 40);
    v15.__owns_ = 1;
    std::mutex::lock((a2 + 40));
    if (*(a2 + 32))
    {
      do
      {
        std::condition_variable::wait((a2 + 104), &v15);
      }

      while (*(a2 + 32));
      if (!v15.__owns_)
      {
        goto LABEL_15;
      }

      m = v15.__m_;
    }

    std::mutex::unlock(m);
  }

LABEL_15:
  sub_298C4F2E0(a1, a2);
}

void sub_298C4F2E0(void *a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if (*(v4 + 24) - v6 > 0x15uLL)
    {
      goto LABEL_4;
    }

LABEL_13:
    v4 = sub_298B9BCEC(v4, "signalKtraceCompletion", 0x16uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_14;
  }

  *v5 = 540686858;
  v14 = *(v4 + 24);
  v6 = (*(v4 + 32) + 4);
  *(v4 + 32) = v6;
  if ((v14 - v6) <= 0x15)
  {
    goto LABEL_13;
  }

LABEL_4:
  qmemcpy(v6, "signalKtraceCompletion", 22);
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 22);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_14:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  if (*(a2 + 4) != 2)
  {
    v11 = sub_298B227A0(1);
    if (os_signpost_enabled(v11))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KTraceSessionProcessor::completed", &unk_298EC00B5, v15, 2u);
    }

    v13 = *(a2 + 176);
    v12 = (a2 + 176);
    *(v12 - 43) = 2;
    *a1 = v13;
    a1 = v12;
  }

  *a1 = 0;
}

uint64_t sub_298C4F48C@<X0>(void *a1@<X8>)
{
  v44 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  v2 = geteuid();
  if (v2)
  {
    v3 = v2;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v28 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v27 = &unk_2A1F1E040;
    v35 = &v36;
    sub_298ADDDB0(&v27);
    v4 = v31;
    if ((v30 - v31) > 0x18)
    {
      *v31 = *"You are not root (EUID = ";
      *(v4 + 9) = *"ot root (EUID = ";
      v31 += 25;
    }

    else
    {
      sub_298B9BCEC(&v27, "You are not root (EUID = ", 0x19uLL);
    }

    sub_298B8FC48(&v27, v3, 0, 0, 0);
    if ((v30 - v31) > 1)
    {
      *v31 = 11817;
      v31 += 2;
    }

    else
    {
      sub_298B9BCEC(&v27, ").", 2uLL);
    }

    sub_298B9AE14(&v27);
    std::generic_category();
    v16[0] = "LiveRecording.cpp";
    v17 = ":";
    v18 = 771;
    v15 = 4;
    strcpy(__p, "1050");
    v19[0] = v16;
    v20 = __p;
    v21 = 1026;
    v22[0] = v19;
    v23 = ": ";
    v24 = 770;
    v25.__r_.__value_.__r.__words[0] = v22;
    v25.__r_.__value_.__r.__words[2] = &v36;
    v26 = 1026;
    sub_298B996A4(&v25, v39);
    operator new();
  }

  sub_298BB0F64();
  if ((v43 & 1) == 0)
  {
    if (v42)
    {
      if ((v42 & 0x100) == 0)
      {
        std::generic_category();
        v16[0] = "LiveRecording.cpp";
        v17 = ":";
        v18 = 771;
        HIBYTE(v38) = 4;
        strcpy(&v36, "1061");
        v19[0] = v16;
        v20 = &v36;
        v21 = 1026;
        v22[0] = v19;
        v23 = ": ";
        v24 = 770;
        v25.__r_.__value_.__r.__words[0] = v22;
        v25.__r_.__value_.__r.__words[2] = "boot-arg enable_skstb=1 not set.";
        v26 = 770;
        sub_298B996A4(&v25, v39);
        operator new();
      }

      goto LABEL_22;
    }

LABEL_21:
    std::generic_category();
    v16[0] = "LiveRecording.cpp";
    v17 = ":";
    v18 = 771;
    HIBYTE(v38) = 4;
    strcpy(&v36, "1059");
    v19[0] = v16;
    v20 = &v36;
    v21 = 1026;
    v22[0] = v19;
    v23 = ": ";
    v24 = 770;
    v25.__r_.__value_.__r.__words[0] = v22;
    v25.__r_.__value_.__r.__words[2] = "boot-arg phys_carveout_mb=<mb> not set.";
    v26 = 770;
    sub_298B996A4(&v25, v39);
    operator new();
  }

  v5 = v42;
  v42 = 0;
  if (!v5)
  {
    goto LABEL_21;
  }

  v27 = 0;
  v25.__r_.__value_.__r.__words[0] = v5;
  sub_298ADE6E8(&v27, &v25, v22);
  if (v25.__r_.__value_.__r.__words[0])
  {
    (*(*v25.__r_.__value_.__l.__data_ + 8))(v25.__r_.__value_.__r.__words[0]);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  *a1 = v22[0];
LABEL_22:
  result = sub_298C7AA7C(&v40);
  if (v41)
  {
    v7 = v40;
    v40 = 0;
    if (v7)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v28 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v27 = &unk_2A1F1E040;
      v35 = &v36;
      sub_298ADDDB0(&v27);
      v8 = v31;
      if ((v30 - v31) > 0x20)
      {
        v31[32] = 32;
        qmemcpy(v8, "Couldn't check dev-fused status:", 32);
        v31 += 33;
      }

      else
      {
        sub_298B9BCEC(&v27, "Couldn't check dev-fused status: ", 0x21uLL);
      }

      v13 = v7;
      sub_298B851B0(&v13, &v25);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v25;
      }

      else
      {
        v9 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      sub_298B9BCEC(&v27, v9, size);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
        v11 = v13;
        if (!v13)
        {
LABEL_38:
          sub_298B9AE14(&v27);
          std::generic_category();
          v16[0] = "LiveRecording.cpp";
          v17 = ":";
          v18 = 771;
          v15 = 4;
          strcpy(__p, "1069");
          v19[0] = v16;
          v20 = __p;
          v21 = 1026;
          v22[0] = v19;
          v23 = ": ";
          v24 = 770;
          v25.__r_.__value_.__r.__words[0] = v22;
          v25.__r_.__value_.__r.__words[2] = &v36;
          v26 = 1026;
          sub_298B996A4(&v25, v39);
          operator new();
        }
      }

      else
      {
        v11 = v13;
        if (!v13)
        {
          goto LABEL_38;
        }
      }

      (*(*v11 + 8))(v11);
      goto LABEL_38;
    }
  }

  else if (v40)
  {
    std::generic_category();
    v16[0] = "LiveRecording.cpp";
    v17 = ":";
    v18 = 771;
    HIBYTE(v38) = 4;
    strcpy(&v36, "1071");
    v19[0] = v16;
    v20 = &v36;
    v21 = 1026;
    v22[0] = v19;
    v23 = ": ";
    v24 = 770;
    v25.__r_.__value_.__r.__words[0] = v22;
    v25.__r_.__value_.__r.__words[2] = "Not a dev-fused device.";
    v26 = 770;
    sub_298B996A4(&v25, v39);
    operator new();
  }

  if (v41)
  {
    result = v40;
    v40 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if (v43)
  {
    result = v42;
    v42 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C50120(uint64_t result, void *a2, unint64_t a3)
{
  v3 = a2[1];
  if (!*&v3 || ((v4 = 0x9DDFEA08EB382D69 * (((((a3 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a3)), v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4)) >> 47)), v6 = vcnt_s8(v3), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] <= 1uLL) ? (v7 = (*&v3 - 1) & v5) : v5 < *&v3 ? (v7 = v5) : (v7 = v5 % *&v3), (v8 = *(*a2 + 8 * v7)) == 0 || (v9 = *v8) == 0))
  {
LABEL_15:
    *result = 0;
    *(result + 8) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *(result + 40) = 0;
    *(result + 80) = 1065353216;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 1065353216;
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 164) = 0;
    *(result + 135) = 0;
    *(result + 128) = 0;
    *(result + 190) = 0;
    *(result + 168) = 2;
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 198) = 1;
    *(result + 200) = 0;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0;
    *(result + 240) = 0;
    *(result + 248) = 0;
    return result;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = *&v3 - 1;
    while (1)
    {
      v12 = v9[1];
      if (v5 == v12)
      {
        if (v9[2] == a3)
        {
          return sub_298AFD4AC(result, (v9 + 3));
        }
      }

      else if ((v12 & v10) != v7)
      {
        goto LABEL_15;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v5 == v11)
    {
      break;
    }

    if (v11 >= *&v3)
    {
      v11 %= *&v3;
    }

    if (v11 != v7)
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (v9[2] != a3)
  {
    goto LABEL_10;
  }

  return sub_298AFD4AC(result, (v9 + 3));
}

void sub_298C502B0(uint64_t a1, uint64_t a2)
{
  sub_298AFD4AC(&v24, a2 + 160);
  if (!*a2)
  {
    if (v25 != 1)
    {
      if (v25 || !v24)
      {
        goto LABEL_2;
      }

      sub_298AFD4AC(v34, a2 + 160);
      v12 = *(a2 + 8);
      v11 = a2 + 8;
      v10 = v12;
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v10 = v11;
      }

      if (v13 < 0)
      {
        v13 = *(v11 + 8);
      }

      v32[0] = v10;
      v32[1] = v13;
      sub_298B1EEB8(v32, v35);
      v14 = *sub_298C26F78(a1 + 16, &v37, v35);
      if (v14)
      {
        v15 = *(v14 + 56);
        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        operator new();
      }

LABEL_35:
      abort();
    }

    sub_298AFD4AC(v32, a2 + 160);
    v16 = *v32[2];
    v19 = *(a2 + 8);
    v18 = a2 + 8;
    v17 = v19;
    v20 = *(v18 + 23);
    if (v20 >= 0)
    {
      v17 = v18;
    }

    if (v20 < 0)
    {
      v20 = *(v18 + 8);
    }

    v34[0] = v17;
    v34[1] = v20;
    sub_298B1EEB8(v34, v35);
    v21 = *sub_298C26F78(a1 + 16, &v37, v35);
    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = *(v21 + 56);
    if (v36 < 0)
    {
      operator delete(v35[0]);
      v23 = v33;
      if (v33 != 1)
      {
LABEL_32:
        operator new();
      }
    }

    else
    {
      v23 = v33;
      if (v33 != 1)
      {
        goto LABEL_32;
      }
    }

    *(v22 + 376) = v16;
    *(v22 + 384) = v23;
    *(v22 + 365) = v23;
    *(v22 + 363) = 257;
    goto LABEL_32;
  }

LABEL_2:
  v4 = __p;
  if (__p)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = v30;
  v30 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v29;
  if (v29)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v28;
  v28 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_298C50958(void *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v71[68] = *MEMORY[0x29EDCA608];
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ ((0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2))));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = a1[1];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] <= 1uLL)
    {
      v10 = (*&v8 - 1) & v7;
      v11 = *(*a1 + 8 * v10);
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= *&v8)
      {
        v10 = v7 % *&v8;
      }

      v11 = *(*a1 + 8 * v10);
      if (v11)
      {
LABEL_6:
        v12 = *v11;
        if (v12)
        {
          if (v9.u32[0] < 2uLL)
          {
            v13 = *&v8 - 1;
            while (1)
            {
              v43 = v12[1];
              if (v7 == v43)
              {
                if (v12[2] == a2)
                {
                  goto LABEL_79;
                }
              }

              else if ((v43 & v13) != v10)
              {
                goto LABEL_15;
              }

              v12 = *v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }
          }

          do
          {
            v14 = v12[1];
            if (v7 == v14)
            {
              if (v12[2] == a2)
              {
LABEL_79:
                std::generic_category();
                v58[0] = "LiveRecording.cpp";
                v59 = ":";
                v60 = 771;
                v57 = 4;
                strcpy(v56, "1382");
                v61[0] = v58;
                v62 = v56;
                v63 = 1026;
                v64[0] = v61;
                v65 = ": ";
                v66 = 770;
                v67[0] = v64;
                v68 = "System has already been configured";
                v69 = 770;
                sub_298B996A4(v67, v70);
                operator new();
              }
            }

            else
            {
              if (v14 >= *&v8)
              {
                v14 %= *&v8;
              }

              if (v14 != v10)
              {
                break;
              }
            }

            v12 = *v12;
          }

          while (v12);
        }
      }
    }
  }

LABEL_15:
  v46 = v7;
  v48 = a4;
  *(a3 + 40) = 1;
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  if (v15 == v16)
  {
    goto LABEL_40;
  }

  do
  {
    v17 = *v15;
    v18 = HIDWORD(*v15);
    v19 = 0x9DDFEA08EB382D69 * ((8 * (*v15 & 0x1FFFFFFF) + 8) ^ v18);
    v20 = (0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47);
    v21 = 0x9DDFEA08EB382D69 * v20;
    v22 = *(a3 + 56);
    if (!*&v22)
    {
LABEL_30:
      operator new();
    }

    v23 = vcnt_s8(v22);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] <= 1uLL)
    {
      v24 = v21 & (*&v22 - 1);
      v25 = *(*(a3 + 48) + 8 * v24);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = 0x9DDFEA08EB382D69 * v20;
      if (v21 >= *&v22)
      {
        v24 = v21 % *&v22;
      }

      v25 = *(*(a3 + 48) + 8 * v24);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = *v25;
    if (!v26)
    {
      goto LABEL_30;
    }

    if (v23.u32[0] < 2uLL)
    {
      while (1)
      {
        v28 = v26[1];
        if (v28 == v21)
        {
          if (v26[2] == v17)
          {
            goto LABEL_31;
          }
        }

        else if ((v28 & (*&v22 - 1)) != v24)
        {
          goto LABEL_30;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v21)
      {
        break;
      }

      if (v27 >= *&v22)
      {
        v27 %= *&v22;
      }

      if (v27 != v24)
      {
        goto LABEL_30;
      }

LABEL_25:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    if (v26[2] != v17)
    {
      goto LABEL_25;
    }

LABEL_31:
    ++v15;
  }

  while (v15 != v16);
LABEL_40:
  sub_298AFD4AC(v49, a3);
  sub_298AFDFE4(v71, a2, a1, v49, 0);
  sub_298C5F4DC(v71, a1, v48);
  sub_298AFEAD8(v71);
  v29 = __p;
  if (__p)
  {
    do
    {
      v30 = *v29;
      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v31 = v54;
  v54 = 0;
  if (v31)
  {
    operator delete(v31);
  }

  v32 = v53;
  if (v53)
  {
    do
    {
      v33 = *v32;
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v52;
  v52 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
    if (!*v48)
    {
      goto LABEL_50;
    }
  }

  else if (!*v48)
  {
LABEL_50:
    v35 = a1 + 2;
    do
    {
      v35 = *v35;
      if (!v35)
      {
        goto LABEL_55;
      }
    }

    while ((*(v35 + 38) - 2) > 3);
    if ((*(a3 + 128) - 2) <= 3)
    {
      std::generic_category();
      v58[0] = "LiveRecording.cpp";
      v59 = ":";
      v60 = 771;
      v57 = 4;
      strcpy(v56, "1393");
      v61[0] = v58;
      v62 = v56;
      v63 = 1026;
      v64[0] = v61;
      v65 = ": ";
      v66 = 770;
      v67[0] = v64;
      v68 = "Streaming to multiple systems not supported";
      v69 = 770;
      sub_298B996A4(v67, v70);
      operator new();
    }

LABEL_55:
    v36 = a1[1];
    if (v36)
    {
      v37 = vcnt_s8(v36);
      v37.i16[0] = vaddlv_u8(v37);
      if (v37.u32[0] <= 1uLL)
      {
        v38 = (*&v36 - 1) & v46;
        v39 = *(*a1 + 8 * v38);
        if (v39)
        {
LABEL_60:
          v40 = *v39;
          if (v40)
          {
            if (v37.u32[0] < 2uLL)
            {
              while (1)
              {
                v44 = v40[1];
                if (v44 == v46)
                {
                  if (v40[2] == a2)
                  {
                    goto LABEL_72;
                  }
                }

                else if ((v44 & (*&v36 - 1)) != v38)
                {
                  goto LABEL_69;
                }

                v40 = *v40;
                if (!v40)
                {
                  goto LABEL_69;
                }
              }
            }

            do
            {
              v41 = v40[1];
              if (v41 == v46)
              {
                if (v40[2] == a2)
                {
LABEL_72:
                  *v48 = 0;
                  goto LABEL_73;
                }
              }

              else
              {
                if (v41 >= *&v36)
                {
                  v41 %= *&v36;
                }

                if (v41 != v38)
                {
                  break;
                }
              }

              v40 = *v40;
            }

            while (v40);
          }
        }
      }

      else
      {
        v38 = v46;
        if (v46 >= *&v36)
        {
          v38 = v46 % *&v36;
        }

        v39 = *(*a1 + 8 * v38);
        if (v39)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_69:
    operator new();
  }

LABEL_73:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_298C51414(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v72 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    for (i = 24 * a3; i; i -= 24)
    {
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      v9 = realpath_DARWIN_EXTSN(v7, 0);
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_298ADDDA0();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v68) = v10;
      if (v10)
      {
        memmove(uu, v9, v10);
      }

      uu[v11] = 0;
      v12 = *&uu[8];
      v31 = *uu;
      v46[0] = v68;
      *(v46 + 3) = *(&v68 + 3);
      v13 = SHIBYTE(v68);
      free(v9);
      *uu = v7;
      *&uu[8] = v8;
      LOWORD(v39) = 257;
      BYTE2(v39) = 1;
      sub_298B1EEB8(uu, &__p);
      v43 = 0;
      v44 = 0;
      v45 = 0;
      sub_298AFF468(&v39, uu);
      if (!*uu)
      {
        v41 = 0;
        v42 = 0;
        __p = 0;
        v15 = v45;
        v45 = 0;
        *uu = v15;
        sub_298C39D18(uu);
      }

      LOBYTE(v64) = v64 | 1;
      v63 = *uu;
      v14 = v45;
      v45 = 0;
      if (v14)
      {
        (*(*v14 + 16))(v14);
        if ((SHIBYTE(v42) & 0x80000000) == 0)
        {
LABEL_18:
          v16 = v63;
          if (v64)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((SHIBYTE(v42) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(__p);
      v16 = v63;
      if (v64)
      {
LABEL_19:
        v59 |= 1u;
        in[0] = v16;
        if (v13 < 0)
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }

LABEL_23:
      v60[0] = 0;
      v60[1] = 0;
      sub_298BD96DC(v16, v7, v8, 0, uu);
      v17 = *uu;
      if ((v71 & 1) == 0 || (*uu = 0, !v17))
      {
        v21 = *&uu[8];
        memset(uu, 0, sizeof(uu));
        v48 = v17;
        v49 = v21;
        v50 = v68;
        v51.__r_.__value_.__s.__data_[0] = 0;
        v52 = 0;
        if (v70 == 1)
        {
          v51 = v69;
          memset(&v69, 0, sizeof(v69));
          v52 = 1;
          data = v68[14].__r_.__value_.__l.__data_;
          if (!data)
          {
            goto LABEL_35;
          }

LABEL_33:
          *v60 = *(data + 8);
        }

        else
        {
          data = v68[14].__r_.__value_.__l.__data_;
          if (data)
          {
            goto LABEL_33;
          }

LABEL_35:
          v60[0] = 0;
          v60[1] = 0;
        }

        sub_298BD9AA8(&v48);
        sub_298BE5B3C(uu);
        v48 = v60;
        v49 = 0;
        v50 = 0;
        sub_298B1FB90(&v48, uu);
        if (v13 < 0)
        {
          sub_298AFE11C(&v69, v31, v12);
        }

        else
        {
          v69.__r_.__value_.__r.__words[0] = v31;
          v69.__r_.__value_.__l.__size_ = v12;
          LODWORD(v69.__r_.__value_.__r.__words[2]) = v46[0];
          *(&v69.__r_.__value_.__r.__words[2] + 3) = *(v46 + 3);
          *(&v69.__r_.__value_.__s + 23) = v13;
        }

        v59 &= ~1u;
        *in = *uu;
        v57 = v68;
        v58 = v69;
        v18 = 1;
        v19 = v16->n128_u64[1];
        v16->n128_u64[1] = 0;
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }

      sub_298BE5B3C(uu);
      v48 = v17;
      sub_298AE72FC(&v48, uu);
      if (v48)
      {
        (*(*v48 + 8))(v48);
      }

      v18 = 0;
      v19 = v16->n128_u64[1];
      v16->n128_u64[1] = 0;
      if (!v19)
      {
LABEL_28:
        v20 = v16->n128_u64[0];
        v16->n128_u64[0] = 0;
        if (!v20)
        {
          goto LABEL_29;
        }

LABEL_43:
        (*(*v20 + 16))(v20);
        goto LABEL_29;
      }

LABEL_40:
      v23 = *(v19 + 40);
      *(v19 + 40) = 0;
      if (v23)
      {
        MEMORY[0x29C2945C0](v23, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v19, 0x1070C4001F9CED1);
      v20 = v16->n128_u64[0];
      v16->n128_u64[0] = 0;
      if (v20)
      {
        goto LABEL_43;
      }

LABEL_29:
      MEMORY[0x29C2945F0](v16, 0x1070C401CED0764);
      if ((v18 & 1) == 0)
      {
        sub_298C41068(v7, v8);
      }

      if (v13 < 0)
      {
LABEL_58:
        operator delete(v31);
        if ((v59 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_47:
      if ((v59 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_48:
      v24 = in[0];
      in[0] = 0;
      if (v24)
      {
        std::generic_category();
        v33[0] = "LiveRecording.cpp";
        v33[2] = ":";
        v34 = 771;
        v55 = 4;
        strcpy(&v54, "1372");
        v35[0] = v33;
        v35[2] = &v54;
        v36 = 1026;
        v60[0] = v35;
        v61 = ": ";
        v62 = 770;
        v63 = v60;
        v65 = "Could not determine UUID of '";
        v66 = 770;
        v37[0] = &v63;
        v37[2] = v7;
        v37[3] = v8;
        v38 = 1282;
        v39 = v37;
        v41 = "':\n  - ";
        LOWORD(v43) = 770;
        v32 = v24;
        sub_298B851B0(&v32, &v53);
        v48 = &v39;
        v50 = &v53;
        LOWORD(v51.__r_.__value_.__r.__words[1]) = 1026;
        sub_298B996A4(&v48, &v47);
        operator new();
      }

LABEL_49:
      if (SHIBYTE(v57) < 0)
      {
        v25 = in[0];
      }

      else
      {
        v25 = in;
      }

      memset(uu, 0, sizeof(uu));
      uuid_parse(v25, uu);
      v48 = uu;
      v26 = sub_298C5D4C0(a1 + 48, uu);
      std::string::operator=(v26 + 2, &v58);
      if (v59)
      {
        v27 = in[0];
        in[0] = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        goto LABEL_3;
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v57) & 0x80000000) == 0)
        {
          goto LABEL_3;
        }

LABEL_57:
        operator delete(in[0]);
        goto LABEL_3;
      }

      if (SHIBYTE(v57) < 0)
      {
        goto LABEL_57;
      }

LABEL_3:
      a2 += 24;
    }
  }

  *a4 = 0;
  v28 = *MEMORY[0x29EDCA608];
}

void sub_298C5268C(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  v110 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 30);
  v5 = a1[25];
  if (v5)
  {
    v6 = *(v5 + 16);
    sub_298C50120(v103, a1 + 23, v6);
    v8 = *(v2 + 37);
    v7 = *(v2 + 38);
    if (v8 < v7)
    {
      sub_298C5B8D4(v8, v6, (v2 + 184), v103, v2 + 160);
      *(v2 + 37) = v8 + 544;
      v9 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v15 = *(v2 + 36);
    v16 = 0xF0F0F0F0F0F0F0F1 * ((v8 - v15) >> 5);
    v17 = v16 + 1;
    if (v16 + 1 > 0x78787878787878)
    {
      sub_298ADDDA0();
    }

    v18 = 0xF0F0F0F0F0F0F0F1 * ((v7 - v15) >> 5);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x3C3C3C3C3C3C3CLL)
    {
      v19 = 0x78787878787878;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0x78787878787878)
      {
        operator new();
      }

      goto LABEL_127;
    }

    v20 = 544 * v16;
    sub_298C5B8D4(v20, v6, (v2 + 184), v103, v2 + 160);
    v22 = *(v2 + 36);
    v21 = *(v2 + 37);
    v74 = (v20 + v22 - v21);
    v75 = v20;
    if (v21 == v22)
    {
      goto LABEL_66;
    }

    v23 = *(v2 + 36);
    v24 = (v20 + v22 - v21);
    v25 = 0uLL;
    while (1)
    {
      *v24 = *v23;
      v28 = *(v23 + 8);
      *(v24 + 3) = *(v23 + 3);
      *(v24 + 8) = v28;
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 1) = 0;
      *(v24 + 4) = 0;
      *(v24 + 5) = 0;
      *(v24 + 6) = 0;
      *(v24 + 2) = *(v23 + 2);
      *(v24 + 6) = *(v23 + 6);
      *(v23 + 4) = 0;
      *(v23 + 5) = 0;
      *(v23 + 6) = 0;
      *(v24 + 7) = *(v23 + 7);
      v29 = *(v23 + 4);
      v30 = *(v23 + 20);
      *(v24 + 88) = v25;
      v31 = (v24 + 88);
      *(v24 + 20) = v30;
      *(v24 + 4) = v29;
      *(v24 + 104) = v25;
      *(v24 + 30) = *(v23 + 30);
      prime = *(v23 + 12);
      if (prime == 1)
      {
        goto LABEL_45;
      }

      if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(*(v23 + 12));
        v33 = *(v24 + 96);
        v34 = prime >= *&v33;
        if (prime > *&v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = 0;
        v34 = 1;
        if (prime)
        {
          goto LABEL_44;
        }
      }

      if (v34)
      {
        goto LABEL_49;
      }

      v35 = vcvtps_u32_f32(*(v24 + 14) / *(v24 + 30));
      if (*&v33 < 3uLL || (v36 = vcnt_s8(v33), v36.i16[0] = vaddlv_u8(v36), v36.u32[0] > 1uLL))
      {
        v38 = std::__next_prime(v35);
        if (prime <= v38)
        {
          prime = v38;
        }

        if (prime >= *&v33)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v37 = 1 << -__clz(v35 - 1);
        if (v35 >= 2)
        {
          v35 = v37;
        }

        if (prime <= v35)
        {
          prime = v35;
        }

        if (prime >= *&v33)
        {
          goto LABEL_49;
        }
      }

      if (prime)
      {
LABEL_44:
        if (!(prime >> 61))
        {
LABEL_45:
          operator new();
        }

LABEL_127:
        sub_298ADDDA0();
      }

      v39 = *v31;
      *v31 = 0;
      if (v39)
      {
        operator delete(v39);
      }

      *(v24 + 12) = 0;
LABEL_49:
      for (i = *(v23 + 13); i; i = *i)
      {
        sub_298AFE370(v24 + 11, i + 2);
      }

      v41 = *(v23 + 16);
      *(v24 + 18) = 0;
      *(v24 + 17) = v24 + 144;
      *(v24 + 16) = v41;
      *(v24 + 19) = 0;
      v42 = *(v23 + 17);
      if (v42 != (v23 + 144))
      {
        do
        {
          if (!*sub_298AFE878(v24 + 17, v24 + 144, v98, &v90, v42 + 32))
          {
            operator new();
          }

          v46 = *(v42 + 1);
          if (v46)
          {
            do
            {
              v47 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = *(v42 + 2);
              v57 = *v47 == v42;
              v42 = v47;
            }

            while (!v57);
          }

          v42 = v47;
        }

        while (v47 != (v23 + 144));
      }

      sub_298AFD4AC((v24 + 160), (v23 + 160));
      v43 = *(v23 + 26);
      v44 = *(v23 + 28);
      v45 = *(v23 + 58);
      *(v24 + 27) = *(v23 + 27);
      *(v24 + 28) = v44;
      *(v24 + 26) = v43;
      *(v24 + 122) = 0;
      *(v24 + 59) = 0;
      *(v24 + 60) = 0;
      *(v24 + 58) = v45;
      *(v24 + 59) = *(v23 + 59);
      *(v23 + 59) = 0;
      *(v24 + 120) = *(v23 + 120);
      *(v23 + 120) = 0;
      LODWORD(v45) = *(v24 + 121);
      *(v24 + 121) = *(v23 + 121);
      *(v23 + 121) = v45;
      LODWORD(v45) = *(v24 + 122);
      *(v24 + 122) = *(v23 + 122);
      *(v23 + 122) = v45;
      *(v24 + 62) = v24 + 512;
      *(v24 + 63) = 0;
      if (*(v23 + 126))
      {
        sub_298C5BA84((v24 + 496), (v23 + 496));
      }

      *(v24 + 128) = *(v23 + 128);
      v26 = *(v23 + 520);
      v25 = 0uLL;
      *(v23 + 520) = 0u;
      *(v24 + 520) = v26;
      v27 = *(v23 + 67);
      *(v23 + 67) = 0;
      *(v24 + 67) = v27;
      v23 += 544;
      v24 += 544;
      if (v23 == v21)
      {
        do
        {
          sub_298AFEAD8(v22);
          v22 += 544;
        }

        while (v22 != v21);
        v2 = a1;
        v22 = a1[36];
LABEL_66:
        *(v2 + 36) = v74;
        *(v2 + 37) = v75 + 544;
        *(v2 + 38) = 0;
        if (v22)
        {
          operator delete(v22);
        }

        *(v2 + 37) = v75 + 544;
        v9 = __p;
        if (!__p)
        {
LABEL_5:
          v11 = v108;
          v108 = 0;
          if (v11)
          {
            operator delete(v11);
          }

          v12 = v107;
          if (v107)
          {
            do
            {
              v13 = *v12;
              operator delete(v12);
              v12 = v13;
            }

            while (v13);
          }

          v14 = v106;
          v106 = 0;
          if (v14)
          {
            operator delete(v14);
          }

          if (v104)
          {
            v105 = v104;
            operator delete(v104);
          }

          operator new();
        }

        do
        {
LABEL_4:
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
        goto LABEL_5;
      }
    }
  }

  v95 = 0;
  v96 = 0;
  v94 = &v95;
  v48 = a1[29];
  if (v48 != v4)
  {
    do
    {
      sub_298AFE77C(&v94, &v95, v48 + 32);
      v53 = *(v48 + 1);
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = *(v48 + 2);
          v57 = *v54 == v48;
          v48 = v54;
        }

        while (!v57);
      }

      v48 = v54;
    }

    while (v54 != v4);
  }

  sub_298C207BC(v2, v103);
  v49 = v103[0];
  v50 = v103[1];
  if (v103[0] == v103[1])
  {
    if (v103[0])
    {
LABEL_73:
      v103[1] = v49;
      operator delete(v49);
    }
  }

  else
  {
    do
    {
      v55 = *(*v49 + 408);
      v56 = v95;
      if (v55)
      {
        v57 = v95 == 0;
      }

      else
      {
        v57 = 1;
      }

      if (!v57)
      {
        if (!v95)
        {
          goto LABEL_109;
        }

LABEL_90:
        v58 = &v95;
        do
        {
          v59 = v58;
          v60 = v56 + 4;
          v61 = uuid_compare(v56 + 32, v55 + 16);
          if (v61 >= 0)
          {
            v58 = v56;
          }

          v56 = *(v56 + ((v61 >> 28) & 8));
        }

        while (v56);
        if (v58 != &v95)
        {
          v62 = v61 >= 0 ? v60 : (v59 + 4);
          if ((uuid_compare(v55 + 16, v62) & 0x80000000) == 0)
          {
            v63 = v58[1];
            v64 = v58;
            if (v63)
            {
              do
              {
                v65 = v63;
                v63 = *v63;
              }

              while (v63);
            }

            else
            {
              do
              {
                v65 = v64[2];
                v57 = *v65 == v64;
                v64 = v65;
              }

              while (!v57);
            }

            if (v94 == v58)
            {
              v94 = v65;
            }

            --v96;
            sub_298C2ADAC(v95, v58);
            if (*(v58 + 71) < 0)
            {
              operator delete(v58[6]);
            }

            operator delete(v58);
          }
        }

LABEL_109:
        while (1)
        {
          v55 = *v55;
          if (!v55)
          {
            break;
          }

          v56 = v95;
          if (v95)
          {
            goto LABEL_90;
          }
        }
      }

      v49 += 8;
    }

    while (v49 != v50);
    v49 = v103[0];
    v3 = a2;
    if (v103[0])
    {
      goto LABEL_73;
    }
  }

  v51 = v96;
  *v3 = 0;
  if (v51)
  {
    v52 = v94;
    if (v94 != &v95)
    {
      std::generic_category();
      v66 = *a2;
      *a2 = 0;
      v80[0] = "LiveRecording.cpp";
      v80[2] = ":";
      v81 = 771;
      v79 = 4;
      strcpy(v78, "1446");
      v82[0] = v80;
      v82[2] = v78;
      v83 = 1026;
      v84[0] = v82;
      v84[2] = ": ";
      v85 = 770;
      v86[0] = v84;
      v86[2] = "Override '";
      v87 = 770;
      v88[0] = v86;
      v88[2] = v52 + 6;
      v89 = 1026;
      v101[0] = v88;
      v101[2] = "' (UUID = ";
      v102 = 770;
      v103[0] = v52 + 4;
      v103[1] = 0;
      v104 = 0;
      sub_298B1FB90(v103, v77);
      if (v102 == 1)
      {
        v69 = v77;
        v90 = v77;
        v93 = 260;
        v67 = 4;
        v70 = v91;
      }

      else
      {
        if (!v102)
        {
          v67 = 0;
          v93 = 256;
          v68 = 1;
          goto LABEL_123;
        }

        v69 = &v90;
        v71 = v101[0];
        v67 = 2;
        if (HIBYTE(v102) == 1)
        {
          v70 = v102;
        }

        else
        {
          v70 = 2;
        }

        if (HIBYTE(v102) != 1)
        {
          v71 = v101;
        }

        v90 = v71;
        v91 = v101[1];
        v92 = v77;
        LOBYTE(v93) = v70;
        HIBYTE(v93) = 4;
      }

      v98[0] = v69;
      v98[1] = v70;
      v68 = 3;
      v98[2] = ") is invalid: that image does not appear to be installed as firmware on the live system. Find the right image, remove the override, or file a bug on libhwtrace if you believe this message is wrong.";
LABEL_123:
      v99 = v67;
      v100 = v68;
      sub_298B996A4(v98, &v97);
      operator new();
    }
  }

  sub_298AFEF9C(&v94, v95);
  v72 = *MEMORY[0x29EDCA608];
}

uint64_t *sub_298C55958(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    sub_298C2FC70(v2);
    MEMORY[0x29C2945F0]();
    return v4;
  }

  return v1;
}

void *sub_298C559B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 5)
    {
      goto LABEL_4;
    }

LABEL_21:
    v4 = sub_298B9BCEC(v4, "attach", 6uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_22;
  }

  *v5 = 540686858;
  v17 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v17 - v6) <= 5)
  {
    goto LABEL_21;
  }

LABEL_4:
  *(v6 + 4) = 26723;
  *v6 = 1635021921;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 6);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_22:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  result = sub_298C55C98(a2, *(a1 + 280), 2);
  if (!*a2)
  {
    v13 = sub_298B227A0(1);
    v14 = os_signpost_id_generate(v13);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LiveRecording::attach", &unk_298EC00B5, buf, 2u);
    }

    v18 = &unk_2A1F1FFA0;
    *&v19 = v14;
    *(&v19 + 1) = v13;
    v20 = &v18;
    v23 = buf;
    v24 = v14;
    *buf = &unk_2A1F1FFA0;
    v22 = v19;
    v16 = *(a1 + 288);
    v15 = *(a1 + 296);
    if (v16 == v15)
    {
LABEL_15:
      *a2 = 0;
    }

    else
    {
      while (1)
      {
        sub_298C621A0(v16, a2);
        if (*a2)
        {
          break;
        }

        v16 += 544;
        if (v16 == v15)
        {
          goto LABEL_15;
        }
      }
    }

    result = v23;
    if (v23)
    {
      (*(*v23 + 48))(v23);
      result = v23;
      if (v23 == buf)
      {
        result = (*(*v23 + 32))(v23);
      }

      else if (v23)
      {
        result = (*(*v23 + 40))(v23);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298C55C98(void *result, int a2, int a3)
{
  if (a2 != a3)
  {
    std::generic_category();
    v13[0] = "LiveRecording.cpp";
    v13[2] = ":";
    v14 = 771;
    v12 = 4;
    strcpy(__p, "2036");
    v15[0] = v13;
    v15[2] = __p;
    v16 = 1026;
    v17[0] = v15;
    v17[2] = ": ";
    v18 = 770;
    v5 = a2 - 1;
    v19[0] = v17;
    v19[2] = "LiveRecording in state='";
    v20 = 770;
    if ((a2 - 1) > 3)
    {
      v7 = "NotStarted";
      v6 = 10;
    }

    else
    {
      v6 = qword_298D1C8E8[v5];
      v7 = off_29EEB6728[v5];
    }

    v21[0] = v19;
    v21[2] = v7;
    v21[3] = v6;
    v22 = 1282;
    v23[0] = v21;
    v23[1] = v6;
    v23[2] = "', but expected to be in state='";
    v8 = a3 - 1;
    v24 = 770;
    if ((a3 - 1) > 3)
    {
      v10 = "NotStarted";
      v9 = 10;
    }

    else
    {
      v9 = qword_298D1C8E8[v8];
      v10 = off_29EEB6728[v8];
    }

    v25[0] = v23;
    v25[1] = v6;
    v25[2] = v10;
    v25[3] = v9;
    v26 = 1282;
    v27[0] = v25;
    v27[1] = v6;
    v27[2] = "'";
    v28 = 770;
    sub_298B996A4(v27, &v29);
    operator new();
  }

  *result = 0;
  return result;
}

void *sub_298C55EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 8)
    {
      goto LABEL_4;
    }

LABEL_25:
    v4 = sub_298B9BCEC(v4, "configure", 9uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_26;
  }

  *v5 = 540686858;
  v22 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v22 - v6) <= 8)
  {
    goto LABEL_25;
  }

LABEL_4:
  *(v6 + 8) = 101;
  *v6 = *"configure";
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 9);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_26:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  result = sub_298C55C98(a2, *(a1 + 280), 0);
  if (*a2)
  {
    goto LABEL_8;
  }

  v13 = sub_298B227A0(1);
  v14 = os_signpost_id_generate(v13);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LiveRecording::configure", &unk_298EC00B5, &buf, 2u);
  }

  v63 = &unk_2A1F1FFE8;
  *&v64 = v14;
  *(&v64 + 1) = v13;
  v65 = &v63;
  v68 = &v66;
  v69 = v14;
  v67 = v64;
  v66 = &unk_2A1F1FFE8;
  __p[0] = 0;
  __p[1] = 0;
  v41 = 0;
  v55 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 1;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v54 = &unk_2A1F1E040;
  v62 = __p;
  sub_298ADDDB0(&v54);
  v53[17] = 0;
  v53[18] = &v54;
  v53[19] = 0;
  v53[16] = 0;
  *&buf = v53;
  *(&buf + 1) = 0x1000000001;
  v53[0] = 0;
  v49[0] = &buf;
  v49[1] = a1 + 184;
  sub_298B89BA0(&buf);
  sub_298C5C120(v49);
  sub_298B89C2C(&buf);
  if (buf != v53)
  {
    free(buf);
  }

  sub_298B9AE14(&v54);
  v15 = sub_298B227A0(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = __p;
    if (v41 < 0)
    {
      v16 = __p[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_298AD8000, v15, OS_LOG_TYPE_INFO, "LiveRecording::configure(%{public}s)", &buf, 0xCu);
  }

  MEMORY[0x29C295550](a1 + 264);
  sub_298C56A90(a2, a1);
  if (*a2)
  {
    goto LABEL_72;
  }

  v17 = *(a1 + 312);
  if (!v17)
  {
    goto LABEL_52;
  }

  if (*v17 == 1)
  {
    v18 = sub_298B9CDFC();
    v19 = *(v18 + 32);
    if (*(v18 + 24) - v19 > 3uLL)
    {
      *v19 = 540686858;
      v23 = *(v18 + 24);
      v20 = *(v18 + 32) + 4;
      *(v18 + 32) = v20;
      if ((v23 - v20) > 4)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = sub_298B9BCEC(v18, "\n:: ", 4uLL);
      v20 = *(v18 + 32);
      if ((*(v18 + 24) - v20) > 4)
      {
LABEL_23:
        *(v20 + 4) = 116;
        *v20 = 1918989427;
        v21 = (*(v18 + 32) + 5);
        *(v18 + 32) = v21;
        goto LABEL_30;
      }
    }

    v18 = sub_298B9BCEC(v18, "start", 5uLL);
    v21 = *(v18 + 32);
LABEL_30:
    if (*(v18 + 24) == v21)
    {
      sub_298B9BCEC(v18, "\n", 1uLL);
    }

    else
    {
      *v21 = 10;
      ++*(v18 + 32);
    }

    v24 = sub_298B9CDFC();
    v25 = v24[2];
    if (v24[4] != v25)
    {
      v24[4] = v25;
      sub_298B9BB84(v24);
    }
  }

  if (*(v17 + 24) != 1)
  {
    goto LABEL_51;
  }

  if (*v17 == 1)
  {
    v26 = sub_298B9CDFC();
    v27 = *(v26 + 32);
    if (*(v26 + 24) - v27 > 3uLL)
    {
      *v27 = 540686858;
      v28 = (*(v26 + 32) + 4);
      *(v26 + 32) = v28;
    }

    else
    {
      v26 = sub_298B9BCEC(v26, "\n:: ", 4uLL);
      v28 = *(v26 + 32);
    }

    if (*(v26 + 24) - v28 > 0x17uLL)
    {
      qmemcpy(v28, "setupHandlerOnTargetExit", 24);
      v29 = (*(v26 + 32) + 24);
      *(v26 + 32) = v29;
    }

    else
    {
      v26 = sub_298B9BCEC(v26, "setupHandlerOnTargetExit", 0x18uLL);
      v29 = *(v26 + 32);
    }

    if (*(v26 + 24) == v29)
    {
      sub_298B9BCEC(v26, "\n", 1uLL);
    }

    else
    {
      *v29 = 10;
      ++*(v26 + 32);
    }

    v30 = sub_298B9CDFC();
    v31 = v30[2];
    if (v30[4] != v31)
    {
      v30[4] = v31;
      sub_298B9BB84(v30);
    }
  }

  v32 = dispatch_source_create(MEMORY[0x29EDCA5B0], *(v17 + 16), 0x80000000uLL, *(v17 + 56));
  *(v17 + 64) = v32;
  if (!v32)
  {
    std::generic_category();
    v45[0] = "LiveRecording.cpp";
    v45[2] = ":";
    v46 = 771;
    v44 = 3;
    LODWORD(v43) = 3747892;
    v47[0] = v45;
    v47[2] = &v43;
    v48 = 1026;
    v49[0] = v47;
    v49[2] = ": ";
    v50 = 770;
    v54 = v49;
    v56 = "dispatch_source_create failed";
    LOWORD(v58) = 770;
    sub_298B996A4(&v54, &v51);
    operator new();
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = sub_298C4B194;
  handler[3] = &unk_29EEB65E8;
  handler[4] = v17;
  dispatch_source_set_event_handler(v32, handler);
  dispatch_activate(*(v17 + 64));
  *a2 = 0;
  if ((*(v17 + 24) & 1) == 0 || (sub_298C4A92C(a2, v17), !*a2))
  {
LABEL_51:
    *a2 = 0;
LABEL_52:
    v33 = *(a1 + 288);
    v34 = *(a1 + 296);
    if (v33 == v34)
    {
LABEL_55:
      v35 = a1 + 200;
      v36 = a1 + 200;
      while (1)
      {
        v36 = *v36;
        if (!v36)
        {
          break;
        }

        if (*(v36 + 216))
        {
          goto LABEL_60;
        }
      }

      if (*(a1 + 225) == 1)
      {
LABEL_60:
        if (*(a1 + 160) == 1)
        {
          v37 = sub_298B9CDFC();
          v38 = v37[4];
          if ((v37[3] - v38) > 0x13)
          {
            *(v38 + 16) = 170798638;
            *v38 = *"Taking stackshot...\n";
            v37[4] += 20;
          }

          else
          {
            sub_298B9BCEC(v37, "Taking stackshot...\n", 0x14uLL);
          }
        }

        do
        {
          v35 = *v35;
        }

        while (v35 && *(v35 + 216) != 1);
        sub_298C47E34();
      }

      if ((*(a1 + 228) | 2) != 2 || (v39 = *(a1 + 320)) == 0 || (sub_298C4DC08(a2, v39, 0, 0), !*a2))
      {
        *(a1 + 280) = 1;
        *a2 = 0;
      }
    }

    else
    {
      while (1)
      {
        sub_298C6171C(v33, a2);
        if (*a2)
        {
          break;
        }

        v33 += 68;
        if (v33 == v34)
        {
          goto LABEL_55;
        }
      }
    }
  }

LABEL_72:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    result = v68;
    if (!v68)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = v68;
    if (!v68)
    {
      goto LABEL_8;
    }
  }

  (*(*result + 48))(result);
  result = v68;
  if (v68 == &v66)
  {
    result = (*(*v68 + 4))(v68);
  }

  else if (v68)
  {
    result = (*(*v68 + 5))();
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C56A90(uint64_t *a1, uint64_t a2)
{
  v67 = *MEMORY[0x29EDCA608];
  if (*(a2 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if (*(v4 + 24) - v6 > 0xCuLL)
    {
      goto LABEL_4;
    }

LABEL_28:
    v4 = sub_298B9BCEC(v4, "allocCarveout", 0xDuLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_29;
  }

  *v5 = 540686858;
  v27 = *(v4 + 24);
  v6 = (*(v4 + 32) + 4);
  *(v4 + 32) = v6;
  if ((v27 - v6) <= 0xC)
  {
    goto LABEL_28;
  }

LABEL_4:
  qmemcpy(v6, "allocCarveout", 13);
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 13);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_29:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  v12 = *(a2 + 288);
  v11 = *(a2 + 296);
  if (v12 == v11)
  {
LABEL_25:
    *(a2 + 176) = 1;
    *a1 = 0;
    goto LABEL_26;
  }

  v13 = 0;
LABEL_9:
  v12 += 544;
  do
  {
    if (*(v12 - 188) != 1)
    {
      v13 = 1;
      if (v12 != v11)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    v66 = 0;
    v64 = 0uLL;
    LOBYTE(v65) = 0;
    sub_298C60D6C(v12 - 544, &v64, 0, 0, a1);
    if (*a1)
    {
      goto LABEL_26;
    }

    v14 = v12 == v11;
    v12 += 544;
  }

  while (!v14);
  if ((v13 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v15 = *(a2 + 168);
  sub_298C7A4D8(&v59);
  if (v63)
  {
    v16 = v59;
    v59 = 0;
    *a1 = v16;
    if (v16)
    {
      goto LABEL_57;
    }

    v17 = 0;
    v18 = v60;
    v38 = v61;
    v39 = v62;
    if (!v60)
    {
      goto LABEL_21;
    }

LABEL_32:
    sub_298C79B9C(*(*(a2 + 168) + 80), v17, v18, &v64);
    if ((v65 & 1) == 0)
    {
      *a1 = 0;
      v20 = v64;
LABEL_52:
      v19 = *(&v64 + 1);
      v21 = *(a2 + 288);
      v22 = *(a2 + 296);
      if (v21 == v22)
      {
        goto LABEL_22;
      }

      goto LABEL_53;
    }

    v28 = v64;
    *a1 = v64;
    if (!v28)
    {
      v20 = 0;
      goto LABEL_52;
    }

LABEL_57:
    if ((v63 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

  *a1 = 0;
  v17 = v59;
  v18 = v60;
  v38 = v61;
  v39 = v62;
  if (v60)
  {
    goto LABEL_32;
  }

LABEL_21:
  v19 = 0;
  v20 = "";
  v21 = *(a2 + 288);
  v22 = *(a2 + 296);
  if (v21 == v22)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

LABEL_53:
  v23 = 0;
  do
  {
    if ((v21[44].i8[4] & 1) == 0)
    {
      v23 += sub_298C60D0C(v21);
    }

    v21 += 68;
  }

  while (v21 != v22);
LABEL_23:
  v24 = getpagesize();
  v25 = v24 * v23;
  if (v18 < v25)
  {
    std::generic_category();
    v44[0] = "LiveRecording.cpp";
    v44[2] = ":";
    v45 = 771;
    v43 = 4;
    strcpy(v42, "2098");
    v46[0] = v44;
    v46[2] = v42;
    v47 = 1026;
    v48[0] = v46;
    v48[2] = ": ";
    v49 = 770;
    v50[0] = v48;
    v50[2] = "Carveout size (";
    v51 = 770;
    sub_298ADC8F4(&v41, v18);
    v52[0] = v50;
    v52[2] = &v41;
    v53 = 1026;
    v54[0] = v52;
    v54[2] = ") must be >= ";
    v55 = 770;
    sub_298ADC8F4(&__p, v25);
    v56[0] = v54;
    v56[2] = &__p;
    v57 = 1026;
    sub_298B996A4(v56, &v58);
    operator new();
  }

  v29 = *(a2 + 288);
  v30 = *(a2 + 296);
  if (v29 != v30)
  {
    v31 = 0;
    v32 = v18 / v23 / v24 * v24;
    do
    {
      if ((v29[44].i8[4] & 1) == 0)
      {
        v35 = sub_298C60D0C(v29);
        v36 = v35 * v32;
        v66 = 0;
        LOBYTE(v65) = 0;
        *&v64 = v31 + v17;
        *(&v64 + 1) = v35 * v32;
        if (v39)
        {
          v65 = v31 + v38;
          v66 = 1;
        }

        if (v19 >= v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v19;
        }

        if (v19 - v33 >= v36)
        {
          v34 = v35 * v32;
        }

        else
        {
          v34 = v19 - v33;
        }

        sub_298C60D6C(v29, &v64, &v20[v33], v34, a1);
        if (*a1)
        {
          goto LABEL_57;
        }

        v31 += v36;
      }

      v29 += 68;
    }

    while (v29 != v30);
  }

  *(a2 + 176) = 1;
  *a1 = 0;
  if (v63)
  {
LABEL_58:
    v37 = v59;
    v59 = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }
  }

LABEL_26:
  v26 = *MEMORY[0x29EDCA608];
}

void *sub_298C57068@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 4)
    {
      goto LABEL_4;
    }

LABEL_11:
    v4 = sub_298B9BCEC(v4, "start", 5uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_12;
  }

  *v5 = 540686858;
  v12 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v12 - v6) <= 4)
  {
    goto LABEL_11;
  }

LABEL_4:
  *(v6 + 4) = 116;
  *v6 = 1918989427;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 5);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:

  return sub_298C571A8(a1, 1, a2);
}

void *sub_298C571A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v6 = sub_298B9CDFC();
  v7 = *(v6 + 32);
  if (*(v6 + 24) - v7 > 3uLL)
  {
    *v7 = 540686858;
    v20 = *(v6 + 24);
    v8 = *(v6 + 32) + 4;
    *(v6 + 32) = v8;
    if ((v20 - v8) > 5)
    {
LABEL_4:
      *(v8 + 4) = 25965;
      *v8 = 1970496882;
      v9 = *(v6 + 24);
      v10 = (*(v6 + 32) + 6);
      *(v6 + 32) = v10;
      if (v9 != v10)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v6 = sub_298B9BCEC(v6, "\n:: ", 4uLL);
    v8 = *(v6 + 32);
    if ((*(v6 + 24) - v8) > 5)
    {
      goto LABEL_4;
    }
  }

  v6 = sub_298B9BCEC(v6, "resume", 6uLL);
  v10 = *(v6 + 32);
  if (*(v6 + 24) != v10)
  {
LABEL_5:
    *v10 = 10;
    ++*(v6 + 32);
    v11 = sub_298B9CDFC();
    v12 = v11[2];
    if (v11[4] == v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_29:
  sub_298B9BCEC(v6, "\n", 1uLL);
  v11 = sub_298B9CDFC();
  v12 = v11[2];
  if (v11[4] != v12)
  {
LABEL_6:
    v11[4] = v12;
    sub_298B9BB84(v11);
  }

LABEL_7:
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  result = sub_298C55C98(a3, *(a1 + 280), v13);
  if (!*a3)
  {
    v16 = sub_298B227A0(1);
    v17 = os_signpost_id_generate(v16);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "LiveRecording::resume", &unk_298EC00B5, buf, 2u);
    }

    v22 = &unk_2A1F20078;
    *&v23 = v17;
    *(&v23 + 1) = v16;
    v24 = &v22;
    v27 = buf;
    v28 = v17;
    *buf = &unk_2A1F20078;
    v26 = v23;
    v21 = mach_continuous_time();
    sub_298AFB228(a1 + 104, &v21);
    v18 = *(a1 + 288);
    v19 = *(a1 + 296);
    if (v18 == v19)
    {
LABEL_22:
      *(a1 + 256) = std::chrono::system_clock::now();
      *(a1 + 280) = 2;
      *a3 = 0;
    }

    else if (a2)
    {
      while (1)
      {
        sub_298C61E60(v18, a3);
        if (*a3)
        {
          break;
        }

        v18 += 544;
        if (v18 == v19)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      while (1)
      {
        sub_298C628DC(v18, a3);
        if (*a3)
        {
          break;
        }

        v18 += 544;
        if (v18 == v19)
        {
          goto LABEL_22;
        }
      }
    }

    result = v27;
    if (v27)
    {
      (*(*v27 + 48))(v27);
      result = v27;
      if (v27 == buf)
      {
        result = (*(*v27 + 32))(v27);
      }

      else if (v27)
      {
        result = (*(*v27 + 40))();
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C574F0(uint64_t a1)
{
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v2 = sub_298B9CDFC();
  v3 = *(v2 + 32);
  if (*(v2 + 24) - v3 > 3uLL)
  {
    *v3 = 540686858;
    v13 = *(v2 + 24);
    v4 = *(v2 + 32) + 4;
    *(v2 + 32) = v4;
    if ((v13 - v4) > 0x11)
    {
LABEL_4:
      *(v4 + 16) = 29541;
      *v4 = *"pollRawTracedBytes";
      v5 = *(v2 + 24);
      v6 = (*(v2 + 32) + 18);
      *(v2 + 32) = v6;
      if (v5 != v6)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v2 = sub_298B9BCEC(v2, "\n:: ", 4uLL);
    v4 = *(v2 + 32);
    if ((*(v2 + 24) - v4) > 0x11)
    {
      goto LABEL_4;
    }
  }

  v2 = sub_298B9BCEC(v2, "pollRawTracedBytes", 0x12uLL);
  v6 = *(v2 + 32);
  if (*(v2 + 24) != v6)
  {
LABEL_5:
    *v6 = 10;
    ++*(v2 + 32);
    v7 = sub_298B9CDFC();
    v8 = v7[2];
    if (v7[4] == v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  sub_298B9BCEC(v2, "\n", 1uLL);
  v7 = sub_298B9CDFC();
  v8 = v7[2];
  if (v7[4] != v8)
  {
LABEL_6:
    v7[4] = v8;
    sub_298B9BB84(v7);
  }

LABEL_7:
  v9 = *(a1 + 288);
  v10 = *(a1 + 296);
  if (v9 == v10)
  {
    return 0;
  }

  v11 = 0;
  do
  {
    v11 += sub_298C61C60(v9);
    v9 += 544;
  }

  while (v9 != v10);
  return v11;
}

void *sub_298C57660@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if ((*(v4 + 24) - v6) > 4)
    {
      goto LABEL_4;
    }

LABEL_18:
    v4 = sub_298B9BCEC(v4, "pause", 5uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_19;
  }

  *v5 = 540686858;
  v19 = *(v4 + 24);
  v6 = *(v4 + 32) + 4;
  *(v4 + 32) = v6;
  if ((v19 - v6) <= 4)
  {
    goto LABEL_18;
  }

LABEL_4:
  *(v6 + 4) = 101;
  *v6 = 1937072496;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 5);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_19:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  result = sub_298C55C98(a2, *(a1 + 280), 2);
  if (!*a2)
  {
    v13 = sub_298B227A0(1);
    v14 = os_signpost_id_generate(v13);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LiveRecording::pause", &unk_298EC00B5, buf, 2u);
    }

    v21 = &unk_2A1F20030;
    *&v22 = v14;
    *(&v22 + 1) = v13;
    v23 = &v21;
    v26 = buf;
    v27 = v14;
    *buf = &unk_2A1F20030;
    v25 = v22;
    v15 = *(a1 + 288);
    v16 = *(a1 + 296);
    if (v15 == v16)
    {
LABEL_15:
      v20 = mach_continuous_time();
      sub_298AFB228(a1 + 80, &v20);
      v17.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (*(a1 + 136) == 1)
      {
        v18 = *(a1 + 128);
      }

      else
      {
        v18 = 0;
      }

      *(a1 + 128) = v18 + v17.__d_.__rep_ - *(a1 + 256);
      *(a1 + 136) = 1;
      *(a1 + 280) = 3;
      *a2 = 0;
    }

    else
    {
      while (1)
      {
        sub_298C62648(v15, a2);
        if (*a2)
        {
          break;
        }

        v15 += 544;
        if (v15 == v16)
        {
          goto LABEL_15;
        }
      }
    }

    result = v26;
    if (v26)
    {
      (*(*v26 + 48))(v26);
      result = v26;
      if (v26 == buf)
      {
        result = (*(*v26 + 32))(v26);
      }

      else if (v26)
      {
        result = (*(*v26 + 40))();
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298C57998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v88 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v4 = sub_298B9CDFC();
  v5 = *(v4 + 32);
  if (*(v4 + 24) - v5 <= 3uLL)
  {
    v4 = sub_298B9BCEC(v4, "\n:: ", 4uLL);
    v6 = *(v4 + 32);
    if (*(v4 + 24) - v6 > 3uLL)
    {
      goto LABEL_4;
    }

LABEL_36:
    v4 = sub_298B9BCEC(v4, "stop", 4uLL);
    v8 = *(v4 + 32);
    if (*(v4 + 24) != v8)
    {
LABEL_5:
      *v8 = 10;
      ++*(v4 + 32);
      v9 = sub_298B9CDFC();
      v10 = v9[2];
      if (v9[4] == v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_37;
  }

  *v5 = 540686858;
  v28 = *(v4 + 24);
  v6 = (*(v4 + 32) + 4);
  *(v4 + 32) = v6;
  if ((v28 - v6) <= 3)
  {
    goto LABEL_36;
  }

LABEL_4:
  *v6 = 1886352499;
  v7 = *(v4 + 24);
  v8 = (*(v4 + 32) + 4);
  *(v4 + 32) = v8;
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_37:
  sub_298B9BCEC(v4, "\n", 1uLL);
  v9 = sub_298B9CDFC();
  v10 = v9[2];
  if (v9[4] != v10)
  {
LABEL_6:
    v9[4] = v10;
    sub_298B9BB84(v9);
  }

LABEL_7:
  result = sub_298C55C98(a2, *(v2 + 280), 3);
  if (*a2)
  {
    goto LABEL_8;
  }

  v13 = sub_298B227A0(1);
  v14 = os_signpost_id_generate(v13);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LiveRecording::stop", &unk_298EC00B5, buf, 2u);
  }

  v77 = &unk_2A1F200C0;
  *&v78 = v14;
  *(&v78 + 1) = v13;
  v79 = &v77;
  v82 = &v80;
  v83 = v14;
  v81 = v78;
  v80 = &unk_2A1F200C0;
  if ((*(v2 + 176) & 1) == 0)
  {
    sub_298C56A90(a2, v2);
    if (*a2)
    {
      goto LABEL_108;
    }
  }

  v16 = *(v2 + 288);
  for (i = *(v2 + 296); v16 != i; v16 += 544)
  {
    sub_298C62CA8(v16, a2);
    if (*a2)
    {
      goto LABEL_108;
    }
  }

  v17 = *(v2 + 312);
  if (v17)
  {
    if (*v17 != 1)
    {
      goto LABEL_24;
    }

    v18 = sub_298B9CDFC();
    v19 = *(v18 + 32);
    if (*(v18 + 24) - v19 > 3uLL)
    {
      *v19 = 540686858;
      v29 = *(v18 + 24);
      v20 = (*(v18 + 32) + 4);
      *(v18 + 32) = v20;
      if ((v29 - v20) > 3)
      {
LABEL_21:
        *v20 = 1886352499;
        v21 = *(v18 + 24);
        v22 = (*(v18 + 32) + 4);
        *(v18 + 32) = v22;
        if (v21 != v22)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v18 = sub_298B9BCEC(v18, "\n:: ", 4uLL);
      v20 = *(v18 + 32);
      if (*(v18 + 24) - v20 > 3uLL)
      {
        goto LABEL_21;
      }
    }

    v18 = sub_298B9BCEC(v18, "stop", 4uLL);
    v22 = *(v18 + 32);
    if (*(v18 + 24) != v22)
    {
LABEL_22:
      *v22 = 10;
      ++*(v18 + 32);
      v23 = sub_298B9CDFC();
      v24 = v23[2];
      if (v23[4] == v24)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_41:
    sub_298B9BCEC(v18, "\n", 1uLL);
    v23 = sub_298B9CDFC();
    v24 = v23[2];
    if (v23[4] == v24)
    {
LABEL_24:
      v25 = sub_298B227A0(1);
      v26 = os_signpost_id_generate(v25);
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_298AD8000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "LiveRecording::processMonitor::stop", &unk_298EC00B5, buf, 2u);
      }

      v73 = &unk_2A1F1FEC8;
      *&v74 = v26;
      *(&v74 + 1) = v25;
      v75 = &v73;
      v86 = buf;
      v87 = v26;
      v85 = v74;
      *buf = &unk_2A1F1FEC8;
      if (v17[24] != 1 || (v27 = atomic_load(v17 + 80), (v27 & 1) == 0))
      {
        sub_298C4A92C(&v61, v17);
        v62[0] = v61;
        sub_298AE72FC(v62, v63);
        if (v62[0])
        {
          (*(*v62[0] + 8))(v62[0]);
        }
      }

      if (v86)
      {
        (*(*v86 + 48))(v86);
        if (v86 == buf)
        {
          (*(*v86 + 32))(v86);
        }

        else if (v86)
        {
          (*(*v86 + 40))(v86);
        }
      }

      goto LABEL_44;
    }

LABEL_23:
    v23[4] = v24;
    sub_298B9BB84(v23);
    goto LABEL_24;
  }

LABEL_44:
  v30 = *(v2 + 228);
  v60 = v2;
  if (v30 != 2)
  {
    if (!v30)
    {
      v31 = *(v2 + 288);
      for (j = *(v2 + 296); v31 != j; v2 = v60)
      {
        v32 = *(v31 + 8);
        v33 = *(v31 + 31);
        if (v33 >= 0)
        {
          v32 = (v31 + 8);
        }

        v34 = *(v31 + 16);
        if (v33 >= 0)
        {
          v34 = *(v31 + 31);
        }

        v73 = v32;
        *&v74 = v34;
        sub_298B1EEB8(&v73, buf);
        v35 = *sub_298C26F78(v2 + 16, v63, buf);
        if (!v35)
        {
LABEL_113:
          abort();
        }

        v36 = *(v35 + 56);
        if (SHIBYTE(v85) < 0)
        {
          operator delete(*buf);
          if (*(v36 + 504))
          {
LABEL_56:
            v37 = *(v36 + 496) + 8;
            operator new();
          }
        }

        else if (*(v36 + 504))
        {
          goto LABEL_56;
        }

        v31 += 544;
      }
    }

LABEL_61:
    v39 = sub_298B227A0(1);
    v40 = os_signpost_id_generate(v39);
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v40, "LiveRecording::save", &unk_298EC00B5, buf, 2u);
    }

    v70 = &unk_2A1F20108;
    *&v71 = v40;
    *(&v71 + 1) = v39;
    v72 = &v70;
    v75 = &v73;
    v76 = v40;
    v74 = v71;
    v73 = &unk_2A1F20108;
    v41 = *(v2 + 288);
    v59 = *(v2 + 296);
    if (v41 == v59)
    {
      unk_2A1F20138(&v73);
      v53 = v75;
      if (v75 != &v73)
      {
LABEL_92:
        if (v53)
        {
          (*(*v53 + 5))(v53);
        }

LABEL_97:
        v54 = sub_298B227A0(1);
        v55 = os_signpost_id_generate(v54);
        if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_298AD8000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v55, "LiveRecording::unconfigure", &unk_298EC00B5, buf, 2u);
        }

        v64 = &unk_2A1F20150;
        *&v65 = v55;
        *(&v65 + 1) = v54;
        v66 = &v64;
        v86 = buf;
        v87 = v55;
        v85 = v65;
        *buf = &unk_2A1F20150;
        v57 = *(v2 + 288);
        v56 = *(v2 + 296);
        if (v57 == v56)
        {
LABEL_103:
          *(v2 + 280) = 4;
          *a2 = 0;
        }

        else
        {
          while (1)
          {
            sub_298C63214(v57, a2);
            if (*a2)
            {
              break;
            }

            v57 += 68;
            if (v57 == v56)
            {
              goto LABEL_103;
            }
          }
        }

        if (v86)
        {
          (*(*v86 + 48))(v86);
          v52 = v86;
          if (v86 == buf)
          {
LABEL_90:
            (*(*v52 + 32))(v52);
          }

          else
          {
LABEL_106:
            if (v52)
            {
              (*(*v52 + 40))(v52);
            }
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      do
      {
        v42.n128_f64[0] = sub_298C63770(v41, *(v2 + 40), &v67);
        if (v69)
        {
          v43 = v67;
          v67 = 0;
          *a2 = v43;
          if (v43)
          {
            if (!v75)
            {
              goto LABEL_108;
            }

            (*(*v75 + 6))(v75, v42);
            v52 = v75;
            if (v75 != &v73)
            {
              goto LABEL_106;
            }

            goto LABEL_90;
          }
        }

        else
        {
          *a2 = 0;
        }

        v44 = *(v41 + 8);
        v45 = *(v41 + 31);
        if (v45 >= 0)
        {
          v44 = (v41 + 8);
        }

        v46 = *(v41 + 16);
        if (v45 >= 0)
        {
          v46 = *(v41 + 31);
        }

        v63[0] = v44;
        v63[1] = v46;
        sub_298B1EEB8(v63, buf);
        v47 = *sub_298C26F78(v2 + 16, v62, buf);
        if (!v47)
        {
          goto LABEL_113;
        }

        v48 = *(v47 + 56);
        if (SHIBYTE(v85) < 0)
        {
          operator delete(*buf);
          v49 = v67;
          if (v67 != v68)
          {
LABEL_83:
            operator new();
          }
        }

        else
        {
          v49 = v67;
          if (v67 != v68)
          {
            goto LABEL_83;
          }
        }

        if (v69)
        {
          v67 = 0;
          if (v49)
          {
            (*(*v49 + 8))(v49);
          }
        }

        else if (v49)
        {
          v50 = v68;
          v51 = v49;
          if (v68 != v49)
          {
            do
            {
              v50 = sub_298C27104(v50 - 192);
            }

            while (v50 != v49);
            v51 = v67;
          }

          v68 = v49;
          operator delete(v51);
        }

        v41 += 544;
      }

      while (v41 != v59);
      if (!v75)
      {
        goto LABEL_97;
      }

      (*(*v75 + 6))(v75);
      v53 = v75;
      if (v75 != &v73)
      {
        goto LABEL_92;
      }
    }

    (*(*v53 + 4))(v53);
    goto LABEL_97;
  }

  v38 = *(v2 + 320);
  if (!v38)
  {
    goto LABEL_61;
  }

  sub_298C4F114(a2, v38);
  if (!*a2)
  {
    goto LABEL_61;
  }

LABEL_108:
  result = v82;
  if (v82)
  {
    (*(*v82 + 6))(v82);
    result = v82;
    if (v82 == &v80)
    {
      result = (*(*v82 + 4))(v82);
    }

    else if (v82)
    {
      result = (*(*v82 + 5))();
    }
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298C589AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v8 = sub_298B9CDFC();
  v9 = *(v8 + 32);
  if (*(v8 + 24) - v9 <= 3uLL)
  {
    v8 = sub_298B9BCEC(v8, "\n:: ", 4uLL);
    v10 = *(v8 + 32);
    if ((*(v8 + 24) - v10) > 0xA)
    {
      goto LABEL_4;
    }

LABEL_21:
    v8 = sub_298B9BCEC(v8, "postprocess", 0xBuLL);
    v12 = *(v8 + 32);
    if (*(v8 + 24) != v12)
    {
LABEL_5:
      *v12 = 10;
      ++*(v8 + 32);
      v13 = sub_298B9CDFC();
      v14 = v13[2];
      if (v13[4] == v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_22;
  }

  *v9 = 540686858;
  v20 = *(v8 + 24);
  v10 = *(v8 + 32) + 4;
  *(v8 + 32) = v10;
  if ((v20 - v10) <= 0xA)
  {
    goto LABEL_21;
  }

LABEL_4:
  *(v10 + 7) = 1936942435;
  *v10 = *"postprocess";
  v11 = *(v8 + 24);
  v12 = (*(v8 + 32) + 11);
  *(v8 + 32) = v12;
  if (v11 != v12)
  {
    goto LABEL_5;
  }

LABEL_22:
  sub_298B9BCEC(v8, "\n", 1uLL);
  v13 = sub_298B9CDFC();
  v14 = v13[2];
  if (v13[4] != v14)
  {
LABEL_6:
    v13[4] = v14;
    sub_298B9BB84(v13);
  }

LABEL_7:
  result = sub_298C55C98(a4, *(a1 + 280), 4);
  if (!*a4)
  {
    v17 = sub_298B227A0(1);
    v18 = os_signpost_id_generate(v17);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LiveRecording::postprocess", &unk_298EC00B5, buf, 2u);
    }

    v21 = &unk_2A1F20198;
    *&v22 = v18;
    *(&v22 + 1) = v17;
    v23 = &v21;
    v26 = buf;
    v27 = v18;
    *buf = &unk_2A1F20198;
    v25 = v22;
    v19 = *(a1 + 320);
    if (!v19 || (sub_298C4DC08(a4, v19, a2, a3), !*a4) && (sub_298C4F114(a4, *(a1 + 320)), !*a4))
    {
      *a4 = 0;
    }

    result = v26;
    if (v26)
    {
      (*(*v26 + 48))(v26);
      result = v26;
      if (v26 == buf)
      {
        result = (*(*v26 + 32))(v26);
      }

      else if (v26)
      {
        result = (*(*v26 + 40))(v26);
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C58CB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = *MEMORY[0x29EDCA608];
  if (*(a1 + 160) != 1)
  {
    goto LABEL_7;
  }

  v3 = sub_298B9CDFC();
  v4 = *(v3 + 32);
  if (*(v3 + 24) - v4 > 3uLL)
  {
    *v4 = 540686858;
    v24 = *(v3 + 24);
    v5 = (*(v3 + 32) + 4);
    *(v3 + 32) = v5;
    if ((v24 - v5) > 0x15)
    {
LABEL_4:
      qmemcpy(v5, "finalizePostprocessing", 22);
      v6 = *(v3 + 24);
      v7 = (*(v3 + 32) + 22);
      *(v3 + 32) = v7;
      if (v6 != v7)
      {
        goto LABEL_5;
      }

LABEL_38:
      sub_298B9BCEC(v3, "\n", 1uLL);
      v8 = sub_298B9CDFC();
      v9 = v8[2];
      if (v8[4] == v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v3 = sub_298B9BCEC(v3, "\n:: ", 4uLL);
    v5 = *(v3 + 32);
    if (*(v3 + 24) - v5 > 0x15uLL)
    {
      goto LABEL_4;
    }
  }

  v3 = sub_298B9BCEC(v3, "finalizePostprocessing", 0x16uLL);
  v7 = *(v3 + 32);
  if (*(v3 + 24) == v7)
  {
    goto LABEL_38;
  }

LABEL_5:
  *v7 = 10;
  ++*(v3 + 32);
  v8 = sub_298B9CDFC();
  v9 = v8[2];
  if (v8[4] != v9)
  {
LABEL_6:
    v8[4] = v9;
    sub_298B9BB84(v8);
  }

LABEL_7:
  v10 = *(a1 + 320);
  if (!v10 || (sub_298C4F2E0(a2, v10), !*a2))
  {
    v11 = *(a1 + 288);
    v27 = *(a1 + 296);
    while (v11 != v27)
    {
      v12 = *(v11 + 8);
      v13 = *(v11 + 31);
      if (v13 >= 0)
      {
        v12 = (v11 + 8);
      }

      v14 = *(v11 + 16);
      if (v13 >= 0)
      {
        v14 = *(v11 + 31);
      }

      v28[0] = v12;
      v28[1] = v14;
      sub_298B1EEB8(v28, __p);
      v15 = *sub_298C26F78(a1 + 16, &v31, __p);
      if (!v15)
      {
        abort();
      }

      v16 = *(v15 + 56);
      if (v30 < 0)
      {
        operator delete(__p[0]);
        if (*v11)
        {
          goto LABEL_30;
        }
      }

      else if (*v11)
      {
        goto LABEL_30;
      }

      v17 = *(a1 + 144);
      if (v17)
      {
        *a2 = 0;
        if (*(v11 + 168) == 1 && (v18 = *(v11 + 176), *(v11 + 184) - v18 == 8))
        {
          v20 = *v18;
          v19 = v20 & 0xFFFFFFFFFFFFFF00;
          v20 = v20;
          v21 = 1;
        }

        else
        {
          v21 = 0;
          v20 = 0;
          v19 = 0;
        }

        v32[0] = &unk_2A1F201E0;
        v32[1] = a2;
        v33 = v32;
        v25 = v21 | v25 & 0xFFFFFFFFFFFFFF00;
        sub_298C4EFA8(v16, v19 | v20, v25, v17, 0, v32);
        if (v33 == v32)
        {
          (*(*v33 + 32))(v33);
          if (*a2)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v33)
          {
            (*(*v33 + 40))();
          }

          if (*a2)
          {
            goto LABEL_35;
          }
        }
      }

LABEL_30:
      if (*(v16 + 504))
      {
        v22 = *(v16 + 496);
        operator new();
      }

      sub_298C17C34(v16);
      v11 += 544;
    }

    *a2 = 0;
  }

LABEL_35:
  v23 = *MEMORY[0x29EDCA608];
}

__n128 sub_298C591D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    result = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = result;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  return result;
}

void sub_298C59210(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

unint64_t sub_298C59230(unint64_t result, char *__s)
{
  v2 = *(*(result + 32) + 8);
  if ((v2[64] & 1) == 0)
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    v4 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    v5 = v2 + 40;
    v2[63] = result;
    if (result)
    {
      result = memmove(v5, __s, result);
    }

    *(v5 + v4) = 0;
    v2[64] = 1;
  }

  return result;
}

void sub_298C59370(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *src = 0;
  v14 = 0;
  if (!dyld_image_copy_uuid())
  {
    goto LABEL_8;
  }

  installname = dyld_image_get_installname();
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, src);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = dst;
  v3 = __p;
  sub_298B1FB90(v11, __p);
  if (v10 < 0)
  {
    v3 = __p[0];
  }

  v4 = v10 >= 0 ? v10 : __p[1];
  v5 = sub_298BA724C(v3, v4);
  v6 = sub_298C5948C((v1 + 24), v3, v4, v5);
  MEMORY[0x29C294300](*v6 + 8, installname);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_8:
    v7 = *MEMORY[0x29EDCA608];
  }
}

uint64_t *sub_298C5948C(_DWORD *a1, void *a2, size_t a3, uint64_t a4)
{
  v7 = sub_298B96440(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --a1[4];
    v10 = operator new(a3 + 33, 8uLL);
    v11 = v10 + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    v10 = operator new(a3 + 33, 8uLL);
    v11 = v10 + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *v10 = a3;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  *v8 = v10;
  ++a1[3];
  v8 = (*a1 + 8 * sub_298B96888(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

void sub_298C595A4(int32x2_t **a1)
{
  v83 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[2].u32[0];
  if (!v5)
  {
LABEL_7:
    v8 = (*&v4 + 48 * v5);
    goto LABEL_8;
  }

  v6 = *(*v3 + 40);
  v7 = (37 * v6) & (v5 - 1);
  v8 = (*&v4 + 48 * v7);
  v9 = *v8;
  if (v6 != *v8)
  {
    v10 = 1;
    while (v9 != -1)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v5 - 1);
      v8 = (*&v4 + 48 * v7);
      v9 = *v8;
      if (v6 == *v8)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  if (v8 == (*&v4 + 48 * v5) || (v12 = a1[2], LOBYTE(v8[1].val[0]) != v12->u8[0]))
  {
    v17 = sub_298B9CEA8();
    v18 = sub_298B9A4EC(v17, &unk_298EAC9FE, 0, 0);
    v19 = v18;
    v20 = v18[4];
    if (v18[3] - v20 > 0x1EuLL)
    {
      qmemcpy(v20, "Dropped DBG_DYLD event for tid=", 31);
      v18[4] += 31;
      v21 = *(*a1[1] + 40);
      if (HIDWORD(v21))
      {
LABEL_17:
        sub_298B8FEA0(v18, v21, 0, 0, 0);
        v22 = *(v19 + 32);
        if (*(v19 + 24) == v22)
        {
LABEL_18:
          sub_298B9BCEC(v19, "\n", 1uLL);
          goto LABEL_22;
        }

LABEL_21:
        *v22 = 10;
        ++*(v19 + 32);
        goto LABEL_22;
      }
    }

    else
    {
      v18 = sub_298B9BCEC(v18, "Dropped DBG_DYLD event for tid=", 0x1FuLL);
      v21 = *(*a1[1] + 40);
      if (HIDWORD(v21))
      {
        goto LABEL_17;
      }
    }

    sub_298B8FC48(v18, v21, 0, 0, 0);
    v22 = *(v19 + 32);
    if (*(v19 + 24) == v22)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v79 = 0;
  v78 = &v8[1] + 2;
  if (v12->i8[0] == 1)
  {
    v13 = a1[3];
    v14 = *(v13 + 432);
    v15 = *(v13 + 440);
    if (v14 == v15)
    {
LABEL_14:
      *v80 = v78;
      v81 = v79;
      sub_298C16C08(v13, 1, v80, 2 * *&v8[4], 4);
    }

    while (1)
    {
      v16 = *v14;
      if (**v14 == 1)
      {
        break;
      }

      if (++v14 == v15)
      {
        goto LABEL_14;
      }
    }

    v41 = v16 + 1;
    v80[1] = 0;
    v81 = 0;
    v80[0] = v16 + 1;
    if (!sub_298BDC880(v80, &v78))
    {
      v42 = a1[4];
      v42[16].i8[0] = 1;
      v80[1] = 0;
      v81 = 0;
      v80[0] = v41;
      *v75 = v78;
      v76 = v79;
      sub_298C4D524(&v77, v80, v75, *&v42[3]);
    }

    goto LABEL_22;
  }

  v30 = *(*v3 + 8);
  if (!v30)
  {
    v35 = v80;
    sub_298B1FB90(&v78, v80);
    if (v81 < 0)
    {
      v35 = v80[0];
    }

    if (v81 >= 0)
    {
      v36 = SHIBYTE(v81);
    }

    else
    {
      v36 = v80[1];
    }

    v37 = sub_298BA724C(v35, v36);
    v38 = *sub_298C5948C(&v2[3], v35, v36, v37);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
      v39 = (v38 + 8);
      v40 = *(v38 + 31);
      if ((v40 & 0x80000000) == 0)
      {
LABEL_37:
        if (!v40)
        {
          goto LABEL_72;
        }

        goto LABEL_68;
      }
    }

    else
    {
      v39 = (v38 + 8);
      v40 = *(v38 + 31);
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    if (!*(v38 + 16))
    {
LABEL_72:
      v62 = sub_298B9CEA8();
      v63 = sub_298B9A354(v62, &unk_298EAC9FE, 0, 0);
      v64 = v63;
      v65 = v63[4];
      if (v63[3] - v65 > 0x27uLL)
      {
        qmemcpy(v65, "Did not get path for shared cache image ", 40);
        v63[4] += 40;
      }

      else
      {
        sub_298B9BCEC(v63, "Did not get path for shared cache image ", 0x28uLL);
      }

      sub_298B1FB90(&v78, v80);
      if (v81 >= 0)
      {
        v66 = v80;
      }

      else
      {
        v66 = v80[0];
      }

      if (v81 >= 0)
      {
        v67 = HIBYTE(v81);
      }

      else
      {
        v67 = v80[1];
      }

      sub_298B9BCEC(v64, v66, v67);
      v68 = *(v64 + 32);
      if (*(v64 + 24) - v68 > 1uLL)
      {
        *v68 = 8250;
        *(v64 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(v64, ": ", 2uLL);
      }

      v69 = __error();
      v70 = strerror(*v69);
      v71 = *(v64 + 32);
      if (v70)
      {
        v72 = v70;
        v73 = strlen(v70);
        v74 = v73;
        if (v73 <= *(v64 + 24) - v71)
        {
          if (v73)
          {
            memcpy(v71, v72, v73);
            v71 = (*(v64 + 32) + v74);
            *(v64 + 32) = v71;
          }
        }

        else
        {
          sub_298B9BCEC(v64, v72, v73);
          v71 = *(v64 + 32);
        }
      }

      if (*(v64 + 24) == v71)
      {
        sub_298B9BCEC(v64, "\n", 1uLL);
      }

      else
      {
        *v71 = 10;
        ++*(v64 + 32);
      }

      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80[0]);
      }

      goto LABEL_22;
    }

    v39 = *v39;
LABEL_68:
    strncpy(v80, v39, 0x400uLL);
    v82 = 0;
LABEL_69:
    v54 = *a1[5];
    ktrace_get_current_timestamp();
    ktrace_get_continuous_from_timestamp();
    v55 = a1[6]->u8[0];
    v57 = a1[3];
    v56 = a1[4];
    if (v55 == 1)
    {
      v75[1] = 0;
      v76 = 0;
      v75[0] = &v8[1] + 2;
      v58 = strlen(v80);
      v59 = v8[4];
      sub_298C1797C(v57, v56, v75, v80, v58);
    }

    v75[1] = 0;
    v76 = 0;
    v75[0] = &v8[1] + 2;
    v60 = strlen(v80);
    v61 = v8[4];
    sub_298C177D8(v57, v56, v75, v80, v60);
  }

  if (fsgetpath(v80, 0x401uLL, v8 + 5, v30) != -1)
  {
    goto LABEL_69;
  }

  v31 = sub_298B9CEA8();
  v32 = sub_298B9A354(v31, &unk_298EAC9FE, 0, 0);
  v33 = v32;
  v34 = v32[4];
  if (v32[3] - v34 > 0x1AuLL)
  {
    qmemcpy(v34, "Did not get path for image ", 27);
    v32[4] += 27;
  }

  else
  {
    sub_298B9BCEC(v32, "Did not get path for image ", 0x1BuLL);
  }

  sub_298B1FB90(&v78, v75);
  if (v76 >= 0)
  {
    v43 = v75;
  }

  else
  {
    v43 = v75[0];
  }

  if (v76 >= 0)
  {
    v44 = HIBYTE(v76);
  }

  else
  {
    v44 = v75[1];
  }

  sub_298B9BCEC(v33, v43, v44);
  v45 = *(v33 + 32);
  if (*(v33 + 24) - v45 > 1uLL)
  {
    *v45 = 8250;
    *(v33 + 32) += 2;
  }

  else
  {
    sub_298B9BCEC(v33, ": ", 2uLL);
  }

  v46 = __error();
  v47 = strerror(*v46);
  v48 = *(v33 + 32);
  if (v47)
  {
    v49 = v47;
    v50 = strlen(v47);
    v51 = v50;
    if (v50 <= *(v33 + 24) - v48)
    {
      if (v50)
      {
        memcpy(v48, v49, v50);
        v48 = (*(v33 + 32) + v51);
        *(v33 + 32) = v48;
      }
    }

    else
    {
      sub_298B9BCEC(v33, v49, v50);
      v48 = *(v33 + 32);
    }
  }

  if (*(v33 + 24) == v48)
  {
    sub_298B9BCEC(v33, "\n", 1uLL);
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v48 = 10;
    ++*(v33 + 32);
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  operator delete(v75[0]);
LABEL_22:
  v23 = v2[2].i32[0];
  if (v23)
  {
    v24 = *(*v3 + 40);
    v25 = v23 - 1;
    v26 = (37 * v24) & v25;
    v27 = (*v2 + 48 * v26);
    v28 = *v27;
    if (v24 == *v27)
    {
LABEL_24:
      *v27 = -2;
      v2[1] = vadd_s32(v2[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v52 = 1;
      while (v28 != -1)
      {
        v53 = v26 + v52++;
        v26 = v53 & v25;
        v27 = (*v2 + 48 * v26);
        v28 = *v27;
        if (v24 == *v27)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v29 = *MEMORY[0x29EDCA608];
}

void *sub_298C59E68(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (4 * v3 + 4 >= 3 * v4)
  {
    v7 = a1;
    sub_298C5A008(a1, 2 * v4);
    v9 = *a2;
    v10 = *(v7 + 16) - 1;
    v11 = (37 * *a2) & v10;
    a3 = (*v7 + 48 * v11);
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -2;
      }

      if (v15)
      {
        v13 = a3;
      }

      v16 = v11 + v14++;
      v11 = v16 & v10;
      a3 = (*v7 + 48 * v11);
      v12 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v4 + ~v3 - *(a1 + 12) > v4 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a1;
    sub_298C5A008(a1, *(a1 + 16));
    v9 = *a2;
    v18 = *(v7 + 16) - 1;
    v19 = (37 * *a2) & v18;
    a3 = (*v7 + 48 * v19);
    v20 = *a3;
    if (*a2 == *a3)
    {
LABEL_17:
      a1 = v7;
      ++*(v7 + 8);
      if (v9 == -1)
      {
        return a3;
      }

      goto LABEL_4;
    }

    v13 = 0;
    v21 = 1;
    while (v20 != -1)
    {
      if (v13)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == -2;
      }

      if (v22)
      {
        v13 = a3;
      }

      v23 = v19 + v21++;
      v19 = v23 & v18;
      a3 = (*v7 + 48 * v19);
      v20 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    a3 = v13;
  }

  a1 = v7;
LABEL_3:
  v5 = *a3;
  ++*(a1 + 8);
  if (v5 != -1)
  {
LABEL_4:
    --*(a1 + 12);
  }

  return a3;
}

void *sub_298C5A008(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 48 * v10 - 48;
    if (v11 >= 0x30)
    {
      v16 = v11 / 0x30 + 1;
      v12 = &result[6 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -1;
        v17[6] = -1;
        v17 += 12;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v28 = *v20;
            if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v29 = *(a1 + 4) - 1;
              v30 = v29 & (37 * v28);
              v25 = *a1 + 48 * v30;
              v31 = *v25;
              if (v28 != *v25)
              {
                v32 = 0;
                v33 = 1;
                while (v31 != -1)
                {
                  if (v32)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v31 == -2;
                  }

                  if (v34)
                  {
                    v32 = v25;
                  }

                  v35 = v30 + v33++;
                  v30 = v35 & v29;
                  v25 = *a1 + 48 * (v35 & v29);
                  v31 = *v25;
                  if (v28 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v32)
                {
                  v25 = v32;
                }
              }

LABEL_26:
              *v25 = v28;
              v26 = *(v20 + 1);
              v27 = *(v20 + 3);
              *(v25 + 40) = v20[5];
              *(v25 + 24) = v27;
              *(v25 + 8) = v26;
              ++*(a1 + 2);
            }

            v20 += 6;
          }

          while (v20 != &v4[6 * v3]);
        }

        JUMPOUT(0x29C2945E0);
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[6 * v10];
    do
    {
      *v12 = -1;
      v12 += 6;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  a1[1] = 0;
  v13 = *(a1 + 4);
  if (v13)
  {
    v14 = 48 * v13 - 48;
    if (v14 < 0x30)
    {
      v15 = result;
LABEL_21:
      v24 = &result[6 * v13];
      do
      {
        *v15 = -1;
        v15 += 6;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x30 + 1;
    v15 = &result[6 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -1;
      v22[6] = -1;
      v22 += 12;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *sub_298C5A278(void *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x80000000) == 0 && (*(*result + 8) & (**result != a2)) == 0)
  {
    v4 = result[1];
    v6 = a2;
    v5 = *sub_298C16B60(v4 + 456, &v6);
    if (!v5)
    {
      operator new();
    }

    v6 = a3;
    return sub_298AFFBE8(v5 + 88, &v6);
  }

  return result;
}

void sub_298C5A360(uint64_t *a1, uint64_t *a2)
{
  v96 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if ((*(*a1 + 371) & 1) == 0 && (*(v2 + 370) & 1) == 0)
  {
LABEL_105:
    v62 = *MEMORY[0x29EDCA608];
    return;
  }

  v63 = a1[1];
  v85 = xmmword_29EEB6708;
  *__p = *&off_29EEB6718;
  sub_298B208F4(&v85, 2, &v82);
  v3 = *a2;
  v64 = a2[1];
  if (*a2 != v64)
  {
    v66 = v2;
    do
    {
      v4 = *(v3 + 24);
      if (*(v3 + 40))
      {
        v5 = 0;
      }

      else
      {
        v5 = v4 == 0;
      }

      v6 = v5;
      v7 = a2[3];
      v8 = *(a2 + 10);
      if (v8)
      {
        v9 = *(v3 + 48);
        v10 = (37 * v9) & (v8 - 1);
        v11 = (v7 + 40 * v10);
        v12 = *v11;
        if (v9 == *v11)
        {
          goto LABEL_19;
        }

        v13 = 1;
        while (v12 != -1)
        {
          v14 = v10 + v13++;
          v10 = v14 & (v8 - 1);
          v11 = (v7 + 40 * v10);
          v12 = *v11;
          if (v9 == *v11)
          {
            goto LABEL_19;
          }
        }
      }

      v11 = (v7 + 40 * v8);
LABEL_19:
      v16 = v11[2];
      v15 = v11[3];
      if (v15 == v16)
      {
        v71[0] = "LiveRecording.cpp";
        v72 = ":";
        v73 = 771;
        std::generic_category();
        v70 = 3;
        LODWORD(v69) = 3487799;
        v74[0] = v71;
        v74[2] = &v69;
        v75 = 1026;
        v76[0] = v74;
        v77 = ": ";
        v78 = 770;
        v79[0] = v76;
        v80 = "Exclave with asid ";
        v81 = 770;
        if (v4)
        {
          v56 = 20;
          do
          {
            uu2[v56--] = (v4 % 0xA) | 0x30;
            v57 = v4 > 9;
            v4 /= 0xAuLL;
          }

          while (v57);
          v58 = v56 + 1;
          v59 = 20 - v56;
          if ((20 - v56) >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_298ADDDA0();
          }
        }

        else
        {
          BYTE4(v95) = 48;
          v58 = 20;
          v59 = 1;
        }

        if (v59 <= 0x16)
        {
          v68 = v59;
          if (v58 != 21)
          {
            memcpy(&__dst, &uu2[v58], v59);
          }

          *(&__dst + v59) = 0;
          *uu = v79;
          p_dst = &__dst;
          v90 = 1026;
          *dst = uu;
          v92 = " has no text layout info";
          v93 = 770;
          sub_298B996A4(dst, &v84);
          operator new();
        }

        operator new();
      }

      if (!v6)
      {
        *uu2 = *(v3 + 32);
        v29 = *sub_298C16B60(v2 + 456, uu2);
        if (!v29)
        {
          operator new();
        }

        std::string::operator=(v29, v3);
        *uu2 = *(v3 + 40);
        sub_298AFFBE8(&v29[3].__r_.__value_.__r.__words[2], uu2);
        *dst = v16;
        *&dst[8] = 0;
        v92 = 0;
        memset(uu2, 0, sizeof(uu2));
        uuid_copy(uu2, v16);
        v30 = v83;
        if (v83)
        {
          v31 = *&uu2[8] ^ *uu2;
          v32 = vcnt_s8(v83);
          v32.i16[0] = vaddlv_u8(v32);
          if (v32.u32[0] <= 1uLL)
          {
            v33 = (*&v83 - 1) & v31;
          }

          else
          {
            v33 = v31 < *&v83 ? *&uu2[8] ^ *uu2 : v31 % *&v83;
          }

          v34 = *(v82 + 8 * v33);
          if (v34)
          {
            v35 = *v34;
            if (*v34)
            {
              if (v32.u32[0] < 2uLL)
              {
                while (1)
                {
                  v44 = *(v35 + 1);
                  if (v44 == v31)
                  {
                    if (!uuid_compare(v35 + 16, uu2))
                    {
                      goto LABEL_68;
                    }
                  }

                  else if ((v44 & (*&v30 - 1)) != v33)
                  {
                    goto LABEL_58;
                  }

                  v35 = *v35;
                  if (!v35)
                  {
                    goto LABEL_58;
                  }
                }
              }

              do
              {
                v36 = *(v35 + 1);
                if (v36 == v31)
                {
                  if (!uuid_compare(v35 + 16, uu2))
                  {
LABEL_68:
                    v47 = *(v35 + 4);
                    v46 = (v35 + 32);
                    v45 = v47;
                    v48 = *(v46 + 23);
                    if (v48 >= 0)
                    {
                      v37 = v46;
                    }

                    else
                    {
                      v37 = v45;
                    }

                    if (v48 >= 0)
                    {
                      v38 = *(v46 + 23);
                    }

                    else
                    {
                      v38 = v46[1];
                    }

                    v49 = *(v16 + 16);
                    v50 = *(v3 + 56);
                    v51 = *(v16 + 24);
                    if (!v37)
                    {
LABEL_75:
                      memset(uu2, 0, sizeof(uu2));
                      v95 = 0;
LABEL_60:
                      sub_298C26CD8(uu, dst);
                      v79[0] = uu;
                      v42 = sub_298B223E4((v66 + 392), uu);
                      v43 = v42;
                      if (v42[55] < 0)
                      {
                        operator delete(*(v42 + 4));
                      }

                      *(v43 + 2) = *uu2;
                      *(v43 + 6) = v95;
                      operator new();
                    }

LABEL_59:
                    sub_298BDB508(uu2, v37, v38);
                    goto LABEL_60;
                  }
                }

                else
                {
                  if (v36 >= *&v30)
                  {
                    v36 %= *&v30;
                  }

                  if (v36 != v33)
                  {
                    break;
                  }
                }

                v35 = *v35;
              }

              while (v35);
            }
          }
        }

LABEL_58:
        v37 = "???";
        v38 = 3;
        v39 = *(v16 + 16);
        v40 = *(v3 + 56);
        v41 = *(v16 + 24);
        if (!"???")
        {
          goto LABEL_75;
        }

        goto LABEL_59;
      }

      if (v15 - v16 != 41)
      {
        v76[0] = "LiveRecording.cpp";
        v77 = ":";
        v78 = 771;
        std::generic_category();
        HIBYTE(v72) = 3;
        LODWORD(v71[0]) = 3160375;
        v79[0] = v76;
        v80 = v71;
        v81 = 1026;
        *uu = v79;
        p_dst = ": ";
        v90 = 770;
        v60 = "cl4 load info larger than expected";
        goto LABEL_101;
      }

      v17 = *(v2 + 432);
      v18 = *(v2 + 440);
      if (v17 == v18)
      {
LABEL_25:
        *uu2 = v11[2];
        *&uu2[8] = 0;
        v95 = 0;
        v20 = *(v16 + 24);
        memset(dst, 0, sizeof(dst));
        uuid_copy(dst, v16);
        v21 = v83;
        if (v83)
        {
          v22 = *&dst[8] ^ *dst;
          v23 = vcnt_s8(v83);
          v23.i16[0] = vaddlv_u8(v23);
          v24 = v23.u32[0];
          if (v23.u32[0] <= 1uLL)
          {
            v25 = (*&v83 - 1) & v22;
          }

          else
          {
            v25 = v22 < *&v83 ? *&dst[8] ^ *dst : v22 % *&v83;
          }

          v26 = *(v82 + 8 * v25);
          if (v26)
          {
            for (i = *v26; i; i = *i)
            {
              v28 = *(i + 1);
              if (v28 == v22)
              {
                if (!uuid_compare(i + 16, dst))
                {
                  v53 = *(i + 4);
                  v52 = (i + 32);
                  v54 = v52[1];
                  if (*(v52 + 23) >= 0)
                  {
                    v55 = *(v52 + 23);
                  }

                  else
                  {
                    v55 = v52[1];
                  }

                  break;
                }
              }

              else if (v24 <= 1)
              {
                if ((v28 & (*&v21 - 1)) != v25)
                {
                  break;
                }
              }

              else
              {
                if (v28 >= *&v21)
                {
                  v28 %= *&v21;
                }

                if (v28 != v25)
                {
                  break;
                }
              }
            }
          }
        }

        LOBYTE(v85) = 0;
        v87 = 0;
        sub_298C16C08(v66, 10, uu2, 1, v20);
      }

      while (1)
      {
        v19 = *v17;
        if (**v17 == 10)
        {
          break;
        }

        if (++v17 == v18)
        {
          goto LABEL_25;
        }
      }

      if ((*(v16 + 16) ^ *(v19 + 5)) > 1 || (*uu2 = v19 + 1, *&uu2[8] = 0, v95 = 0, *dst = v16, *&dst[8] = 0, v92 = 0, !sub_298BDC880(uu2, dst)))
      {
        v76[0] = "LiveRecording.cpp";
        v77 = ":";
        v78 = 771;
        std::generic_category();
        HIBYTE(v72) = 3;
        LODWORD(v71[0]) = 3488055;
        v79[0] = v76;
        v80 = v71;
        v81 = 1026;
        *uu = v79;
        p_dst = ": ";
        v90 = 770;
        v60 = "Conflicting cl4 metadata";
LABEL_101:
        *dst = uu;
        v92 = v60;
        v93 = 770;
        sub_298B996A4(dst, v74);
        operator new();
      }

      v3 += 64;
      v2 = v66;
    }

    while (v3 != v64);
  }

  *uu2 = 0;
  sub_298C27450(&v82);
  v61 = *(v63 + 24);
  if (v61)
  {
    (*(*v61 + 48))(v61, uu2);
    if (*uu2)
    {
      (*(**uu2 + 8))(*uu2);
    }

    goto LABEL_105;
  }

  sub_298AE761C();
  sub_298C5AF00();
}

uint64_t sub_298C5AF88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FE58;
  a2[1] = v2;
  return result;
}

void *sub_298C5AFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = **(a1 + 8);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  result = *(a2 + 32);
  if (v5 > *(a2 + 24) - result)
  {
    result = sub_298B9BCEC(a2, v6, v5);
LABEL_3:
    *a3 = 0;
    return result;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  v9 = *(v4 + 24);
  result = memcpy(result, v6, v5);
  *(a2 + 32) += v9;
  *a3 = 0;
  return result;
}

void sub_298C5B040(uint64_t a1)
{
  sub_298C5B088(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C5B088(uint64_t a1)
{
  *a1 = &unk_2A1F1FEA0;
  v2 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v2)
  {
    sub_298C5B18C(v2);
  }

  v3 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v3)
  {
    v4 = sub_298C4A840(v3);
    MEMORY[0x29C2945F0](v4, 0x1020C40066AC55BLL);
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    v6 = *(a1 + 296);
    v7 = *(a1 + 288);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_298AFEAD8(v6 - 544);
      }

      while (v6 != v5);
      v7 = *(a1 + 288);
    }

    *(a1 + 296) = v5;
    operator delete(v7);
  }

  sub_298AFEF9C(a1 + 232, *(a1 + 240));
  v8 = *(a1 + 200);
  if (v8)
  {
    do
    {
      v9 = *v8;
      sub_298AFE6E4(v8 + 2);
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return sub_298C27214(a1);
}

uint64_t sub_298C5B18C(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    goto LABEL_5;
  }

  v4 = 0;
  sub_298AE72FC(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v2 = *(a1 + 176);
  if (v2)
  {
LABEL_5:
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  return MEMORY[0x29C2945F0](a1, 0x1020C40E06DA2EALL);
}

__n128 sub_298C5B2C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1FEC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5B2F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::processMonitor::stop", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5B3E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1FF10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5B410(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "Monitor::scanAllTasks", &unk_298EC00B5, v3, 2u);
    }
  }
}

uint64_t sub_298C5B4F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FF58;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C5B524(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = *(v3 + 176);
  *(v3 + 176) = 0;
  v7 = v2;
  v8 = v4;
  sub_298ADE6E8(&v8, &v7, &v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v8;
  if (v8)
  {
    result = (*(*v8 + 8))(v8);
  }

  *(v3 + 176) = v6;
  return result;
}

uint64_t sub_298C5B5D0(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  sub_298B89CC0(*a1, "Recording", 9uLL);
  v3 = *a1;
  __p[0] = v3;
  __p[1] = v2;
  sub_298B89BA0(v3);
  sub_298C30E68(__p);
  sub_298B89C2C(v3);
  v4 = *a1;
  --*(*a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = strlen(*(a1 + 16));
  }

  else
  {
    v6 = 0;
  }

  sub_298BBB6E0(__p, v5, v6);
  sub_298B89CC0(v4, "UUID", 4uLL);
  sub_298B891F0(v4, __p);
  --*(v4 + 8);
  if (LOWORD(__p[0]) == 8)
  {
    sub_298B8A314(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 7)
  {
    sub_298B8A370(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 6 && (v23[15] & 0x80000000) != 0)
  {
    operator delete(__p[1]);
  }

  sub_298B89CC0(*a1, "Opts", 4uLL);
  v7 = *a1;
  __p[0] = v7;
  __p[1] = (v2 + 184);
  sub_298B89BA0(v7);
  sub_298C5C120(__p);
  sub_298B89C2C(v7);
  v8 = *a1;
  --*(*a1 + 8);
  v9 = *(v2 + 280) - 1;
  if (v9 > 3)
  {
    v11 = "NotStarted";
    v10 = 10;
  }

  else
  {
    v10 = qword_298D1C8E8[v9];
    v11 = off_29EEB6728[v9];
  }

  sub_298BBB6E0(__p, v11, v10);
  sub_298B89CC0(v8, "Status", 6uLL);
  sub_298B891F0(v8, __p);
  --*(v8 + 8);
  if (LOWORD(__p[0]) == 8)
  {
    sub_298B8A314(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 7)
  {
    sub_298B8A370(&__p[1]);
  }

  else if (LOWORD(__p[0]) == 6 && (v23[15] & 0x80000000) != 0)
  {
    operator delete(__p[1]);
  }

  v12 = *a1;
  sub_298B89CC0(v12, "LiveSystems", 0xBuLL);
  sub_298B89BA0(v12);
  v13 = *(v2 + 288);
  for (i = *(v2 + 296); v13 != i; v13 += 544)
  {
    v15 = *(v13 + 31);
    if (v15 >= 0)
    {
      v16 = (v13 + 8);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    v17 = *(v13 + 16);
    if (v15 >= 0)
    {
      v18 = *(v13 + 31);
    }

    else
    {
      v18 = *(v13 + 16);
    }

    sub_298B89CC0(v12, v16, v18);
    *__p = 0u;
    memset(v23, 0, sizeof(v23));
    uuid_unparse_upper((v13 + 68), __p);
    v21[0] = v12;
    v21[1] = v13;
    v21[2] = __p;
    sub_298B89BA0(v12);
    sub_298C65C0C(v21);
    sub_298B89C2C(v12);
    --*(v12 + 8);
  }

  result = sub_298B89C2C(v12);
  --*(v12 + 8);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C5B8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5 = *(a4 + 8);
  v25[0] = *a4;
  v25[2] = v5;
  *v26 = *(a4 + 16);
  v27 = *(a4 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v28 = *(a4 + 40);
  v6 = *(a4 + 48);
  v7 = *(a4 + 56);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v29 = v6;
  v30 = v7;
  v9 = *(a4 + 64);
  v8 = *(a4 + 72);
  v31[0] = v9;
  v31[1] = v8;
  v32 = *(a4 + 80);
  if (v8)
  {
    v10 = v9[1];
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v10 >= v7)
      {
        v10 %= v7;
      }
    }

    else
    {
      v10 &= v7 - 1;
    }

    *(v6 + v10) = v31;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
  }

  v11 = *(a4 + 104);
  v12 = *(a4 + 88);
  v13 = *(a4 + 96);
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  v33 = v12;
  v34 = v13;
  v14 = *(a4 + 112);
  __p[0] = v11;
  __p[1] = v14;
  v36 = *(a4 + 120);
  if (v14)
  {
    v15 = v11[1];
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v15 >= v13)
      {
        v15 %= v13;
      }
    }

    else
    {
      v15 &= v13 - 1;
    }

    *(v12 + v15) = __p;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
  }

  v16 = *(a4 + 208);
  v41 = *(a4 + 192);
  v42 = v16;
  v43[0] = *(a4 + 224);
  *(v43 + 9) = *(a4 + 233);
  v17 = *(a4 + 144);
  v37 = *(a4 + 128);
  v38 = v17;
  v18 = *(a4 + 176);
  v39 = *(a4 + 160);
  v40 = v18;
  sub_298AFDFE4(a1, a2, a3, v25, *a5);
  v19 = __p[0];
  if (__p[0])
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = v33;
  v33 = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = v31[0];
  if (v31[0])
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    operator delete(v24);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

uint64_t sub_298C5BA84(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 16;
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[25 * v7 - 24];
        v9 = -200 * v7;
        do
        {
          v8 = sub_298C27104(v8) - 200;
          v9 += 200;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
LABEL_10:
      *v10 = 0;
      return a1;
    }

    v10 = (a2 + 8);
    v12 = *(a2 + 8);
    v13 = *(a1 + 8);
    if (v13 < v12)
    {
      if (*(a1 + 12) < v12)
      {
        if (v13)
        {
          v14 = *a1 + 200 * v13 - 192;
          v15 = -200 * v13;
          do
          {
            v14 = sub_298C27104(v14) - 200;
            v15 += 200;
          }

          while (v15);
        }

        *(a1 + 8) = 0;
        sub_298C5BE04(a1, v12);
        LODWORD(v13) = 0;
        v16 = *a2;
        LODWORD(v17) = *(a2 + 8);
        if (!v17)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v13)
      {
        v28 = &v4[25 * v13];
        v29 = *a1;
        v30 = *a2;
        v31 = *a1;
        do
        {
          v32 = *v30;
          v30 += 25;
          *v31 = v32;
          v31 += 25;
          sub_298C5BF94((v29 + 1), (v4 + 1));
          v29 = v31;
          v4 = v30;
        }

        while (v30 != v28);
        v16 = *a2;
        v17 = *(a2 + 8);
        if (v13 != v17)
        {
LABEL_32:
          v33 = &v16[25 * v17];
          v34 = 200 * v13 + 112;
          v35 = (v16 + v34);
          v36 = *a1 + v34;
          do
          {
            v39 = v35 - 7;
            *(v36 - 112) = *(v35 - 14);
            *(v36 - 104) = *(v35 - 13);
            v40 = *(v35 - 6);
            *(v36 - 80) = *(v35 - 10);
            *(v36 - 96) = v40;
            *(v39 + 3) = 0;
            *(v39 + 4) = 0;
            *(v39 + 2) = 0;
            *(v36 - 72) = *(v35 - 72);
            v41 = *(v35 - 56);
            v42 = *(v35 - 40);
            v43 = *(v35 - 24);
            *(v36 - 9) = *(v35 - 9);
            *(v36 - 24) = v43;
            *(v36 - 40) = v42;
            *(v36 - 56) = v41;
            *v36 = 0;
            *(v36 + 24) = 0;
            if (*(v35 + 24) == 1)
            {
              v44 = *v35;
              *(v36 + 16) = *(v35 + 2);
              *v36 = v44;
              *(v35 + 1) = 0;
              *(v35 + 2) = 0;
              *v35 = 0;
              *(v36 + 24) = 1;
            }

            v37 = *(v35 + 6);
            *(v36 + 32) = v35[2];
            *(v36 + 48) = v37;
            *(v36 + 56) = 0;
            *(v36 + 64) = 0;
            *(v36 + 72) = 0;
            *(v36 + 56) = *(v35 + 56);
            v38 = *(v35 + 10);
            *(v36 + 72) = *(v35 + 9);
            *(v35 + 7) = 0;
            *(v35 + 8) = 0;
            *(v35 + 9) = 0;
            *(v35 + 10) = 0;
            *(v36 + 80) = v38;
            v35 = (v35 + 200);
            v36 += 200;
          }

          while ((v39 + 200) != v33);
          v16 = *a2;
        }
      }

      else
      {
        LODWORD(v13) = 0;
        v16 = *a2;
        LODWORD(v17) = *(a2 + 8);
        if (v17)
        {
          goto LABEL_32;
        }
      }

LABEL_37:
      *(a1 + 8) = v12;
      v45 = *v10;
      if (v45)
      {
        v46 = &v16[25 * v45 - 24];
        v47 = -200 * v45;
        do
        {
          v46 = sub_298C27104(v46) - 200;
          v47 += 200;
        }

        while (v47);
      }

      goto LABEL_10;
    }

    v18 = *a1;
    if (v12)
    {
      v19 = &v4[25 * v12];
      v20 = *a2;
      v21 = *a1;
      do
      {
        v22 = *v20;
        v20 += 25;
        *v21 = v22;
        v21 += 25;
        sub_298C5BF94((v18 + 1), (v4 + 1));
        v18 = v21;
        v4 = v20;
      }

      while (v20 != v19);
      v23 = *a1 + 200 * *(a1 + 8);
      if (v23 == v21)
      {
LABEL_24:
        *(a1 + 8) = v12;
        v25 = *(a2 + 8);
        if (v25)
        {
          v26 = *a2 + 200 * v25 - 192;
          v27 = -200 * v25;
          do
          {
            v26 = sub_298C27104(v26) - 200;
            v27 += 200;
          }

          while (v27);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v21 = *a1;
      v23 = &v18[25 * v13];
      if (v23 == v18)
      {
        goto LABEL_24;
      }
    }

    do
    {
      v24 = (v23 - 200);
      sub_298C27104(v23 - 192);
      v23 = v24;
    }

    while (v24 != v21);
    goto LABEL_24;
  }

  return a1;
}

void sub_298C5BE04(uint64_t a1, unint64_t a2)
{
  v22 = 0;
  v3 = (a1 + 16);
  v4 = sub_298B90848(a1, (a1 + 16), a2, 200, &v22);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[200 * v6];
    v8 = v5 + 112;
    v9 = v4 + 112;
    do
    {
      v12 = v8 - 112;
      *(v9 - 14) = *(v8 - 14);
      *(v9 - 13) = *(v8 - 13);
      v13 = *(v8 - 6);
      *(v9 - 10) = *(v8 - 10);
      *(v9 - 6) = v13;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 2) = 0;
      *(v9 - 72) = *(v8 - 72);
      v14 = *(v8 - 56);
      v15 = *(v8 - 40);
      v16 = *(v8 - 24);
      *(v9 - 9) = *(v8 - 9);
      *(v9 - 24) = v16;
      *(v9 - 40) = v15;
      *(v9 - 56) = v14;
      *v9 = 0;
      v9[24] = 0;
      if (v8[24] == 1)
      {
        v17 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v17;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        v9[24] = 1;
      }

      v10 = *(v8 + 6);
      *(v9 + 2) = *(v8 + 2);
      *(v9 + 6) = v10;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 56) = *(v8 + 56);
      v11 = *(v8 + 10);
      *(v9 + 9) = *(v8 + 9);
      *(v8 + 7) = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      *(v9 + 10) = v11;
      v8 += 200;
      v9 += 200;
    }

    while (v12 + 200 != v7);
    v5 = *a1;
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = &v5[200 * v18 - 192];
      v20 = -200 * v18;
      do
      {
        v19 = sub_298C27104(v19) - 200;
        v20 += 200;
      }

      while (v20);
      v5 = *a1;
    }
  }

  v21 = v22;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v21;
}

uint64_t sub_298C5BF94(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 95);
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  *(a1 + 95) = v6;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 127) < 0)
      {
        operator delete(*(a1 + 104));
      }

      v9 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v9;
      *(a2 + 127) = 0;
      *(a2 + 104) = 0;
    }
  }

  else if (*(a1 + 128))
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    *(a1 + 128) = 0;
  }

  else
  {
    v10 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v10;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  v11 = *(a2 + 136);
  v12 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  if (v12)
  {
    *(a1 + 168) = v12;
    operator delete(v12);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  v13 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v14 = *(a1 + 184);
  *(a1 + 184) = v13;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  return a1;
}

uint64_t sub_298C5C120(uint64_t *a1)
{
  v82 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 40);
  LOWORD(v79) = 1;
  LOBYTE(__p) = v4;
  sub_298B89CC0(v2, "Foreground", 0xAuLL);
  sub_298B891F0(v2, &v79);
  --*(v2 + 8);
  if (v79 == 8)
  {
    sub_298B8A314(&__p);
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
      goto LABEL_6;
    }
  }

  else if (v79 == 7)
  {
    sub_298B8A370(&__p);
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
      goto LABEL_6;
    }
  }

  else if (v79 == 6 && SHIBYTE(v81) < 0)
  {
    operator delete(__p);
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *a1;
    v6 = *(v3 + 44) - 1;
    if (v6 <= 2)
    {
LABEL_6:
      v7 = qword_298D1C908[v6];
      v8 = off_29EEB6748[v6];
      goto LABEL_9;
    }
  }

  v8 = "Standalone";
  v7 = 10;
LABEL_9:
  sub_298BBB6E0(&v79, v8, v7);
  sub_298B89CC0(v5, "SessionPolicy", 0xDuLL);
  sub_298B891F0(v5, &v79);
  --*(v5 + 8);
  if (v79 == 8)
  {
    sub_298B8A314(&__p);
  }

  else if (v79 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v79 == 6 && SHIBYTE(v81) < 0)
  {
    operator delete(__p);
  }

  v9 = *a1;
  sub_298B89CC0(*a1, "FWOverrides", 0xBuLL);
  sub_298B89BA0(v9);
  v10 = *(v3 + 48);
  v72 = v3;
  v11 = (v3 + 56);
  if (v10 != (v3 + 56))
  {
    do
    {
      v79 = (v10 + 4);
      __p = 0uLL;
      sub_298B1FB90(&v79, v75);
      if (v76 >= 0)
      {
        v12 = v75;
      }

      else
      {
        v12 = v75[0];
      }

      if (v76 >= 0)
      {
        v13 = v76;
      }

      else
      {
        v13 = v75[1];
      }

      if (*(v10 + 71) < 0)
      {
        sub_298AFE11C(v73, v10[6], v10[7]);
      }

      else
      {
        *v73 = *(v10 + 3);
        v74 = v10[8];
      }

      LOWORD(v79) = 6;
      if (v74 >= 0)
      {
        v14 = v73;
      }

      else
      {
        v14 = v73[0];
      }

      if (v74 >= 0)
      {
        v15 = SHIBYTE(v74);
      }

      else
      {
        v15 = v73[1];
      }

      if (!sub_298B88E98(v14, v15, 0))
      {
        if (v74 >= 0)
        {
          v19 = v73;
        }

        else
        {
          v19 = v73[0];
        }

        if (v74 >= 0)
        {
          v20 = SHIBYTE(v74);
        }

        else
        {
          v20 = v73[1];
        }

        sub_298B88F28(v19, v20, &v77);
        if (SHIBYTE(v74) < 0)
        {
          operator delete(v73[0]);
        }

        *v73 = v77;
        v74 = v78;
      }

      __p = *v73;
      v81 = v74;
      v73[1] = 0;
      v74 = 0;
      v73[0] = 0;
      sub_298B89CC0(v9, v12, v13);
      sub_298B891F0(v9, &v79);
      --*(v9 + 8);
      if (v79 == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (v79 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v79 == 6 && SHIBYTE(v81) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73[0]);
        if ((v76 & 0x80000000) == 0)
        {
LABEL_46:
          v16 = v10[1];
          if (!v16)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }
      }

      else if ((v76 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      operator delete(v75[0]);
      v16 = v10[1];
      if (!v16)
      {
        do
        {
LABEL_51:
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
        goto LABEL_20;
      }

      do
      {
LABEL_47:
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
LABEL_20:
      v10 = v17;
    }

    while (v17 != v11);
  }

  sub_298B89C2C(v9);
  --*(v9 + 8);
  v21 = *a1;
  sub_298B89CC0(v21, "TargetOptions", 0xDuLL);
  sub_298B89BA0(v21);
  for (i = *(v72 + 16); i; i = *i)
  {
    v23 = i[2];
    v26 = *(v23 + 8);
    v24 = v23 + 8;
    v25 = v26;
    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    v29 = *(v24 + 8);
    if (v27 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = v29;
    }

    sub_298B89CC0(v21, v28, v30);
    sub_298B89BA0(v21);
    v31 = *(i + 6);
    LOWORD(v79) = 3;
    *&__p = v31;
    sub_298B89CC0(v21, "Target", 6uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v32 = *(i + 8);
    LOWORD(v79) = 3;
    *&__p = v32;
    sub_298B89CC0(v21, "Filter.Type", 0xBuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
        goto LABEL_85;
      }
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
        goto LABEL_85;
      }
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
LABEL_85:
        v35 = 0;
        while (1)
        {
          if (((v35 >> 5) + 1) >> 59)
          {
            sub_298ADDDA0();
          }

          if (v35 >> 5 != -1)
          {
            if (!(((v35 >> 5) + 1) >> 59))
            {
              operator new();
            }

            sub_298ADDDA0();
          }

          v36 = *v33;
          v37 = 32 * (v35 >> 5);
          *v37 = 4;
          *(v37 + 8) = v36;
          if (v35)
          {
            break;
          }

LABEL_114:
          v35 = v37 + 32;
          if (++v33 == v34)
          {
            goto LABEL_118;
          }
        }

        v38 = 24;
        v39 = 0;
        while (2)
        {
          v40 = *v39;
          *(v38 - 24) = v40;
          if (v40 < 5)
          {
            v41 = *(v39 + 4);
            *v38 = *(v39 + 3);
            goto LABEL_94;
          }

          if (v40 > 6)
          {
            if (v40 == 7)
            {
              *(v38 - 16) = 0;
              *(v38 - 8) = 0;
              *v38 = 0;
              *(v38 - 16) = *(v39 + 1);
              *(v39 + 1) = 0;
              *(v38 - 8) = *(v39 + 4);
              *(v39 + 4) = 0;
              v43 = *(v38 - 4);
              *(v38 - 4) = *(v39 + 5);
              *(v39 + 5) = v43;
              v44 = *v38;
              *v38 = *(v39 + 6);
              *(v39 + 6) = v44;
            }

            else
            {
              if (v40 != 8)
              {
                goto LABEL_95;
              }

              *(v38 - 16) = 0;
              *(v38 - 8) = 0;
              *v38 = 0;
              *(v38 - 16) = *(v39 + 4);
              *v38 = *(v39 + 3);
              *(v39 + 1) = 0;
              *(v39 + 2) = 0;
              *(v39 + 3) = 0;
            }

LABEL_105:
            *v39 = 0;
          }

          else
          {
            if (v40 == 6)
            {
              v42 = *(v39 + 4);
              *v38 = *(v39 + 3);
              *(v38 - 16) = v42;
              *(v39 + 2) = 0;
              *(v39 + 3) = 0;
              *(v39 + 1) = 0;
              goto LABEL_105;
            }

            v41 = *(v39 + 4);
LABEL_94:
            *(v38 - 16) = v41;
          }

LABEL_95:
          v39 += 16;
          v38 += 32;
          if (v39 == v35)
          {
            for (j = 0; j != v35; j += 4)
            {
              v46 = *j;
              if (v46 == 8)
              {
                sub_298B8A314(j + 1);
              }

              else if (v46 == 7)
              {
                sub_298B8A370(j + 1);
              }

              else if (v46 == 6 && *(j + 31) < 0)
              {
                operator delete(j[1]);
              }
            }

            goto LABEL_114;
          }

          continue;
        }
      }
    }

    else
    {
      v33 = i[5];
      v34 = i[6];
      if (v33 != v34)
      {
        goto LABEL_85;
      }
    }

    v35 = 0;
LABEL_118:
    LOWORD(v79) = 8;
    *&__p = 0;
    *(&__p + 1) = v35;
    v81 = 0;
    sub_298B89CC0(v21, "Filter.ContextIDs", 0x11uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v47 = *(i + 156);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v47;
    sub_298B89CC0(v21, "NeverStart", 0xAuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v48 = *(i + 158);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v48;
    sub_298B89CC0(v21, "StallMDR", 8uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v49 = *(i + 159);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v49;
    sub_298B89CC0(v21, "MultIndirBrRetire", 0x11uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v50 = *(i + 160);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v50;
    sub_298B89CC0(v21, "DisableSWMessages", 0x11uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v51 = *(i + 161);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v51;
    sub_298B89CC0(v21, "DisablePCTrace", 0xEuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v52 = *(i + 162);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v52;
    sub_298B89CC0(v21, "UseCarveoutVA", 0xDuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
      if (*(i + 176) != 1)
      {
        goto LABEL_174;
      }
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
      if (*(i + 176) != 1)
      {
        goto LABEL_174;
      }
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
      if (*(i + 176) != 1)
      {
        goto LABEL_174;
      }
    }

    else if (*(i + 176) != 1)
    {
      goto LABEL_174;
    }

    v53 = i[21];
    LOWORD(v79) = 4;
    *&__p = v53;
    sub_298B89CC0(v21, "VirtualTraceBufferSize", 0x16uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
      if (*(i + 188) != 1)
      {
        goto LABEL_188;
      }

      goto LABEL_175;
    }

    if (v79 == 7)
    {
      sub_298B8A370(&__p);
      if (*(i + 188) != 1)
      {
        goto LABEL_188;
      }

      goto LABEL_175;
    }

    if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
      if (*(i + 188) != 1)
      {
        goto LABEL_188;
      }

      goto LABEL_175;
    }

LABEL_174:
    if (*(i + 188) != 1)
    {
      goto LABEL_188;
    }

LABEL_175:
    v54 = *(i + 46);
    LOWORD(v79) = 3;
    *&__p = v54;
    sub_298B89CC0(v21, "DataRateLimitMBSec", 0x12uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

LABEL_188:
    v55 = i[24];
    LOWORD(v79) = 4;
    *&__p = v55;
    sub_298B89CC0(v21, "LogMode", 7uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v56 = i[25];
    LOWORD(v79) = 4;
    *&__p = v56;
    sub_298B89CC0(v21, "FilterEnable", 0xCuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v57 = i[26];
    LOWORD(v79) = 4;
    *&__p = v57;
    sub_298B89CC0(v21, "FilterCount", 0xBuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v58 = *(i + 216);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v58;
    sub_298B89CC0(v21, "AddressTrace", 0xCuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v59 = *(i + 217);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v59;
    sub_298B89CC0(v21, "DisableMMUTrace", 0xFuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v60 = *(i + 218);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v60;
    sub_298B89CC0(v21, "DisableCompression", 0x12uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v61 = *(i + 219);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v61;
    sub_298B89CC0(v21, "SinglePacketPerWord", 0x13uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v62 = *(i + 220);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v62;
    sub_298B89CC0(v21, "Driver", 6uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v63 = *(i + 221);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v63;
    sub_298B89CC0(v21, "Prod", 4uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
        goto LABEL_251;
      }
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
        goto LABEL_251;
      }
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
LABEL_251:
        v65 = 7;
        v66 = "Oneshot";
        goto LABEL_252;
      }
    }

    else
    {
      v64 = *(i + 38) - 1;
      if (v64 > 4)
      {
        goto LABEL_251;
      }
    }

    v65 = qword_298D1C920[v64];
    v66 = off_29EEB6760[v64];
LABEL_252:
    sub_298BBB6E0(&v79, v66, v65);
    sub_298B89CC0(v21, "Mode", 4uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v67 = *(i + 222);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v67;
    sub_298B89CC0(v21, "DrainWhileStreaming", 0x13uLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v68 = *(i + 58);
    LOWORD(v79) = 3;
    *&__p = v68;
    sub_298B89CC0(v21, "IOParallelism", 0xDuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    v69 = *(i + 272);
    LOWORD(v79) = 1;
    LOBYTE(__p) = v69;
    sub_298B89CC0(v21, "EnableCPMUDump", 0xEuLL);
    sub_298B891F0(v21, &v79);
    --*(v21 + 8);
    if (v79 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v79 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v79 == 6 && SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    sub_298B89C2C(v21);
    --*(v21 + 8);
  }

  result = sub_298B89C2C(v21);
  --*(v21 + 8);
  v71 = *MEMORY[0x29EDCA608];
  return result;
}