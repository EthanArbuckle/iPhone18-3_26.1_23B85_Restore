void sub_C90(uint64_t a1, int a2)
{
  if (*(a1 + 328) == 1)
  {
    v2 = sub_3688();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_82D0();
    }

LABEL_4:

    return;
  }

  if ((*(a1 + 330) & 1) == 0)
  {
    v2 = sub_3688();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_7514();
    }

    goto LABEL_4;
  }

  v146 = mach_absolute_time();
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = __microstackshot();
  v143 = a2;
  if ((v7 & 0x80000000) != 0)
  {
    v8 = sub_3688();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_75C0();
    }

    goto LABEL_15;
  }

  if (v7 > 0x10000)
  {
    v8 = sub_3688();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_7550();
    }

LABEL_15:

    v144 = 0;
    goto LABEL_17;
  }

  v144 = v7;
LABEL_17:
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = __microstackshot();
  v12 = v11;
  if ((v11 & 0x80000000) != 0)
  {
    v13 = sub_3688();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_76B4();
    }

    goto LABEL_23;
  }

  if (v11 > 0x10000)
  {
    v13 = sub_3688();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_7644();
    }

LABEL_23:

    v12 = 0;
  }

  v202[0] = 0;
  v202[1] = v202;
  v202[2] = 0x2020000000;
  v203 = 0;
  v200[0] = 0;
  v200[1] = v200;
  v200[2] = 0x2020000000;
  v201 = 0;
  v198[0] = 0;
  v198[1] = v198;
  v198[2] = 0x2020000000;
  v199 = 0;
  v194 = 0;
  v195 = &v194;
  v196 = 0x2020000000;
  v197 = 0;
  v190 = 0;
  v191 = &v190;
  v192 = 0x2020000000;
  v193 = 0;
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v189 = 0;
  v182 = 0;
  v183 = &v182;
  v184 = 0x2020000000;
  v185 = 0;
  v179[2] = 0;
  v180 = 0;
  v181[0] = &v180;
  v181[1] = 0x2020000000;
  v181[2] = 0;
  v178 = 0;
  v179[0] = &v178;
  v179[1] = 0x2020000000;
  v174 = 0;
  v175 = &v174;
  v176 = 0x2020000000;
  v177 = 0;
  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  v173 = 0;
  v166 = 0;
  v167 = &v166;
  v168 = 0x2020000000;
  v169 = 0;
  v162 = 0;
  v163 = &v162;
  v164 = 0x2020000000;
  v165 = 0;
  v158 = 0;
  v159 = &v158;
  v160 = 0x2020000000;
  v161 = 0;
  v154 = 0;
  v155 = &v154;
  v156 = 0x2020000000;
  v157 = 0;
  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = 0;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_29F4;
  block[8] = &unk_106B8;
  block[24] = &v158;
  block[25] = a1;
  block[9] = &v190;
  block[10] = &v194;
  block[11] = v202;
  block[12] = v200;
  block[13] = v198;
  block[14] = &v180;
  block[15] = &v178;
  block[16] = &v174;
  block[17] = &v182;
  block[18] = &v186;
  block[19] = &v150;
  block[20] = &v154;
  block[21] = &v170;
  block[22] = &v166;
  block[23] = &v162;
  systemstats_zipper_buffers_foreach_micro();
  v16 = v181[0];
  v17 = *(v181[0] + 24);
  if (v17)
  {
    v18 = *(a1 + 432);
    *(a1 + 424) += v17;
    v19 = *(v16 + 24);
    if (v18 < v19)
    {
      *(a1 + 432) = v19;
    }
  }

  v20 = v179[0];
  v21 = *(v179[0] + 24);
  v22 = v12;
  if (v21)
  {
    v23 = *(a1 + 448);
    *(a1 + 440) += v21;
    v24 = v175[3];
    if (v23 < v24)
    {
      *(a1 + 448) = v24;
    }

    if (*(v20 + 24))
    {
      goto LABEL_32;
    }
  }

  if (*(v16 + 24))
  {
LABEL_32:
    v25 = mach_continuous_time();
    v26 = *(a1 + 504);
    if (v26 && (v27 = sub_52B4(v26) + 86400.0, v27 > sub_52B4(v25)))
    {
      v28 = sub_3688();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_773C((a1 + 504), v25);
      }
    }

    else
    {
      *(a1 + 504) = v25;
      if (*(v179[0] + 24))
      {
        v29 = [NSString alloc];
        v30 = v179;
        v31 = @"Lost %llu microstackshots in this drain";
      }

      else
      {
        v29 = [NSString alloc];
        v30 = v181;
        v31 = @"Lost %llu microstackshots before this drain";
      }

      v142 = [v29 initWithFormat:v31, *(*v30 + 24)];
      v32 = v163[3];
      v33 = v171[3];
      v34 = v159[3];
      v35 = v167[3];
      if (qword_10C50)
      {
        v36 = sub_52B4(v146 - qword_10C50);
      }

      else
      {
        v36 = 0.0;
      }

      v204[0] = @"NumLostMicrostackshotsInThisDrain";
      v37 = [NSNumber numberWithUnsignedLongLong:*(v179[0] + 24)];
      v205[0] = v37;
      v204[1] = @"NumLostMicrostackshotsBeforeThisDrain";
      v38 = [NSNumber numberWithUnsignedLongLong:*(v181[0] + 24)];
      v205[1] = v38;
      v204[2] = @"TimeSinceLastDrain";
      v39 = [NSNumber numberWithDouble:v36];
      v205[2] = v39;
      v204[3] = @"TimeCoveredByDrain";
      v40 = [NSNumber numberWithDouble:(v34 - v35) / 1000000.0 + (v32 - v33)];
      v205[3] = v40;
      v41 = [NSDictionary dictionaryWithObjects:v205 forKeys:v204 count:4];

      v22 = v12;
      v28 = v142;

      v42 = sub_3688();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_77C4();
      }
    }
  }

  qword_10C50 = v146;
  v43 = sub_3688();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v55 = v155[3];
    v56 = v151[3];
    v57 = *(v195 + 6);
    v58 = *(v191 + 6);
    v59 = *(v187 + 6);
    v60 = *(v183 + 6);
    *buf = 134220032;
    v207 = v56 + v55;
    v208 = 2048;
    v209 = v55;
    v210 = 2048;
    *v211 = v56;
    *&v211[8] = 1024;
    *v212 = v144;
    *&v212[4] = 1024;
    *&v212[6] = v22;
    LOWORD(v213) = 1024;
    *(&v213 + 2) = v57;
    HIWORD(v213) = 1024;
    *v214 = v58;
    *&v214[4] = 1024;
    *&v214[6] = v59;
    v215 = 1024;
    LODWORD(v216) = v60;
    _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "Saved %zu microstackshots (%zu:%zu user:kernel, %d:%d bytes) (ignored %d:%d known duplicates and %d:%d likely duplicates)", buf, 0x44u);
  }

  if (v143)
  {
    v44 = *a1;
    systemstats_stream_flush();
  }

  if ((*(a1 + 329) & 1) == 0)
  {
    v46 = sub_3688();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_7800();
    }

    goto LABEL_64;
  }

  v45 = *(a1 + 336);
  if (!v45)
  {
    v46 = sub_3688();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_8294();
    }

    goto LABEL_64;
  }

  if (v45 == *(a1 + 344) && *(a1 + 352) == *(a1 + 353))
  {
    if (*(a1 + 352))
    {
      v46 = sub_3688();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_8258();
      }

      goto LABEL_64;
    }

    if (!*(*a1 + 120))
    {
      v46 = sub_3688();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_81EC(a1);
      }

      goto LABEL_64;
    }

    v61 = now_in_absolute_milliseconds();
    v62 = *a1;
    v63 = *(*a1 + 168);
    v64 = (v61 - v63) / 1000.0;
    v65 = *(a1 + 416);
    if (v65)
    {
      v66 = (v61 - v65) / 1000.0;
      v67 = *(v62 + 120);
      v68 = *(a1 + 336);
      v69 = *(*(v62 + 8) + 32);
      if (v64 + 1800.0 < 86400.0)
      {
        if (v65 < v63)
        {
          v70 = sub_3688();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            *buf = 134219520;
            *&v207 = v64;
            v208 = 2048;
            v209 = *&v66;
            v210 = 2048;
            *v211 = v67;
            *&v211[8] = 2048;
            *v212 = 0;
            *&v212[8] = 2048;
            v213 = 0.0;
            *v214 = 2048;
            *&v214[2] = v68;
            v215 = 2048;
            v216 = v69;
            _os_log_fault_impl(&dword_0, v70, OS_LOG_TYPE_FAULT, "PMI adjustment: last pmi adjustment < last cleanup. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x48u);
          }

          *(a1 + 400) = 0;
          *(a1 + 408) = 0;
          v66 = v64;
          *(a1 + 416) = 0;
        }

LABEL_76:
        if (v66 < 1800.0)
        {
          v46 = sub_3688();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          *buf = 134219520;
          *&v207 = v64;
          v208 = 2048;
          v209 = *&v66;
          v210 = 2048;
          *v211 = v67;
          *&v211[8] = 2048;
          *v212 = 0;
          *&v212[8] = 2048;
          v213 = 0.0;
          *v214 = 2048;
          *&v214[2] = v68;
          v215 = 2048;
          v216 = v69;
          v51 = "PMI adjustment: Adjusted PMI interval too recently, not checking daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
          v52 = v46;
          v53 = 72;
          goto LABEL_61;
        }

        *&v71 = COERCE_DOUBLE(systemstats_get_pmi_cycle_interval());
        v72 = sub_3644();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134219520;
          *&v207 = v64;
          v208 = 2048;
          v209 = *&v66;
          v210 = 2048;
          *v211 = v67;
          *&v211[8] = 2048;
          *v212 = 0;
          *&v212[8] = 2048;
          v213 = 0.0;
          *v214 = 2048;
          *&v214[2] = v68;
          v215 = 2048;
          v216 = v69;
          _os_log_debug_impl(&dword_0, v72, OS_LOG_TYPE_DEBUG, ". time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x48u);
        }

        v147 = v69;
        v148 = v67;
        v145 = v68;

        v73 = sub_3644();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          sub_783C();
        }

        v74 = *(a1 + 80);
        v75 = sub_3644();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          sub_78A8();
        }

        if (v74 == 0.0)
        {
          v79 = sub_3688();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219776;
            v207 = v71;
            v208 = 2048;
            v209 = *&v64;
            v210 = 2048;
            *v211 = v66;
            *&v211[8] = 2048;
            *v212 = v67;
            *&v212[8] = 2048;
            v213 = 0.0;
            *v214 = 2048;
            *&v214[2] = 0;
            v215 = 2048;
            v216 = v68;
            v217 = 2048;
            *&v218 = v69;
            _os_log_error_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "PMI adjustment: No microstackshots since last cleanup, resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
          }

          goto LABEL_108;
        }

        v76 = *(a1 + 400);
        *&v77 = *&v74 - v76;
        v78 = sub_3644();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          sub_7910();
        }

        if (*&v74 == v76)
        {
          v79 = sub_3688();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219776;
            v207 = v71;
            v208 = 2048;
            v209 = *&v64;
            v210 = 2048;
            *v211 = v66;
            *&v211[8] = 2048;
            *v212 = v67;
            *&v212[8] = 2048;
            v213 = 0.0;
            *v214 = 2048;
            *&v214[2] = 0;
            v215 = 2048;
            v216 = v145;
            v217 = 2048;
            *&v218 = v147;
            _os_log_error_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "PMI adjustment: No microstackshots since last adjustment, resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
          }

LABEL_108:

          v85 = 0.0;
          v86 = 0.0;
LABEL_109:
          v87 = 100000000000;
          v89 = v145;
          v88 = v147;
          v90 = v148;
          if (v71 > 0x174876E7FFLL && *&v145 == 100000000000)
          {
            v46 = sub_3688();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 134220032;
              v207 = 100000000000;
              v208 = 2048;
              v209 = v71;
              v210 = 2048;
              *v211 = v64;
              *&v211[8] = 2048;
              *v212 = v66;
              *&v212[8] = 2048;
              v213 = v148;
              *v214 = 2048;
              *&v214[2] = v85;
              v215 = 2048;
              v216 = v86;
              v217 = 2048;
              v218 = 100000000000;
              v219 = 2048;
              v220 = v147;
              _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "PMI adjustment: Attempting to increase PMI microstackshots interval from %llu to %llu to fit into daily budget, but already at max interval!. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
            }

            goto LABEL_64;
          }

          if (v71 <= 0x174876E800)
          {
            v87 = v71;
          }

          else
          {
            v91 = sub_3688();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v207 = v71;
              v208 = 2048;
              v209 = 100000000000;
              _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "PMI adjustment: Decreasing desired PMI interval %llu to max %llu", buf, 0x16u);
            }

            v89 = v145;
            v88 = v147;
            v90 = v148;
          }

          pmi_cycle_interval = systemstats_get_pmi_cycle_interval();
          if (v87 >= pmi_cycle_interval)
          {
            pmi_cycle_interval = v87;
          }

          else
          {
            v93 = sub_3688();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v207 = v87;
              v208 = 2048;
              v209 = pmi_cycle_interval;
              _os_log_impl(&dword_0, v93, OS_LOG_TYPE_INFO, "PMI adjustment: Increasing desired PMI interval %llu to default %llu", buf, 0x16u);
            }

            v89 = v145;
            v88 = v147;
            v90 = v148;
          }

          if (pmi_cycle_interval <= *&v89)
          {
            if (pmi_cycle_interval >= *&v89)
            {
LABEL_132:
              *(a1 + 344) = pmi_cycle_interval;
              sub_4F54(a1, 1);
              goto LABEL_65;
            }

            v94 = sub_3688();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134220032;
              *&v207 = v89;
              v208 = 2048;
              v209 = pmi_cycle_interval;
              v210 = 2048;
              *v211 = v64;
              *&v211[8] = 2048;
              *v212 = v66;
              *&v212[8] = 2048;
              v213 = v90;
              *v214 = 2048;
              *&v214[2] = v85;
              v215 = 2048;
              v216 = v86;
              v217 = 2048;
              *&v218 = v89;
              v219 = 2048;
              v220 = v88;
              _os_log_impl(&dword_0, v94, OS_LOG_TYPE_DEFAULT, "PMI adjustment: Decreasing PMI microstackshots interval from %llu to %llu since we have space in the daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
            }

            v95 = 488;
          }

          else
          {
            v94 = sub_3688();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134220032;
              *&v207 = v89;
              v208 = 2048;
              v209 = pmi_cycle_interval;
              v210 = 2048;
              *v211 = v64;
              *&v211[8] = 2048;
              *v212 = v66;
              *&v212[8] = 2048;
              v213 = v90;
              *v214 = 2048;
              *&v214[2] = v85;
              v215 = 2048;
              v216 = v86;
              v217 = 2048;
              *&v218 = v89;
              v219 = 2048;
              v220 = v88;
              _os_log_impl(&dword_0, v94, OS_LOG_TYPE_DEFAULT, "PMI adjustment: Increasing PMI microstackshots interval from %llu to %llu to fit into daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
            }

            v95 = 496;
          }

          ++*(a1 + v95);
          goto LABEL_132;
        }

        v80 = *(a1 + 208);
        v81 = sub_3644();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          sub_7978();
        }

        if (!v80)
        {
          v79 = sub_3688();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v141 = *(a1 + 72);
            *buf = 134220032;
            *&v207 = v141;
            v208 = 2048;
            v209 = v71;
            v210 = 2048;
            *v211 = v64;
            *&v211[8] = 2048;
            *v212 = v66;
            *&v212[8] = 2048;
            v213 = v67;
            *v214 = 2048;
            *&v214[2] = 0;
            v215 = 2048;
            v216 = 0.0;
            v217 = 2048;
            *&v218 = v145;
            v219 = 2048;
            v220 = v147;
            _os_log_error_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "PMI adjustment: No PMI microstackshots since last cleanup (%llu of other types), resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
          }

          goto LABEL_108;
        }

        v82 = *(a1 + 408);
        v83 = v80 - v82;
        v84 = sub_3644();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          sub_79E0();
        }

        if (v80 == v82)
        {
          v79 = sub_3688();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 134220032;
            *&v207 = v77;
            v208 = 2048;
            v209 = v71;
            v210 = 2048;
            *v211 = v64;
            *&v211[8] = 2048;
            *v212 = v66;
            *&v212[8] = 2048;
            v213 = v148;
            *v214 = 2048;
            *&v214[2] = 0;
            v215 = 2048;
            v216 = 0.0;
            v217 = 2048;
            *&v218 = v145;
            v219 = 2048;
            v220 = v147;
            _os_log_error_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "PMI adjustment: No PMI microstackshots since last adjustment (%llu bytes of other types), resetting PMI interval to %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
          }

          goto LABEL_108;
        }

        v97 = v83 / *&v77;
        v98 = sub_3644();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          sub_7A48();
        }

        if (v148 == 0.0)
        {
          v100 = sub_3688();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134219776;
            *&v207 = v74;
            v208 = 2048;
            v209 = *&v64;
            v210 = 2048;
            *v211 = v66;
            *&v211[8] = 2048;
            *v212 = 0;
            *&v212[8] = 2048;
            v213 = 0.0;
            *v214 = 2048;
            *&v214[2] = v97 * 100.0;
            v215 = 2048;
            v216 = v145;
            v217 = 2048;
            *&v218 = v147;
            _os_log_debug_impl(&dword_0, v100, OS_LOG_TYPE_DEBUG, "PMI adjustment: No compressed bytes written since last cleanup (%llu uncompressed), assuming compression ratio of 1.0. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
          }

          v99 = 1.0;
        }

        else
        {
          v99 = *&v74 / *&v148;
        }

        v101 = sub_3644();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          sub_7AB4();
        }

        v96 = *&v77;
        *&v85 = (*&v77 / v99);
        v102 = sub_3644();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          sub_7B20();
        }

        v103 = sub_3644();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          sub_7B88();
        }

        v104 = ((86400.0 - v64) * (*&v85 / v66));
        v105 = sub_3644();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          sub_7BF4();
        }

        v106 = *&v148 + v104;
        v107 = sub_3644();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          sub_7C5C();
        }

        v108 = *&v147;
        if (*&v147 * 1.1 >= v106 && (v108 * 0.9 <= v106 || *&v145 <= v71))
        {
          v46 = sub_3688();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 134220032;
            v207 = *&v148 + v104;
            v208 = 2048;
            v209 = *&v147;
            v210 = 2048;
            *v211 = v64;
            *&v211[8] = 2048;
            *v212 = v66;
            *&v212[8] = 2048;
            v213 = v148;
            *v214 = 2048;
            *&v214[2] = (v96 / v99);
            v215 = 2048;
            v216 = v97 * 100.0;
            v217 = 2048;
            *&v218 = v145;
            v219 = 2048;
            v220 = v147;
            _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "PMI adjustment: Projected microstackshots data volume (%llu) is within the thresholds our of daily budget (%llu), not adjusting the PMI interval. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
          }

          goto LABEL_64;
        }

        v110 = sub_3688();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134220032;
          v207 = *&v148 + v104;
          v208 = 2048;
          v209 = *&v147;
          v210 = 2048;
          *v211 = v64;
          *&v211[8] = 2048;
          *v212 = v66;
          *&v212[8] = 2048;
          v213 = v148;
          *v214 = 2048;
          *&v214[2] = (v96 / v99);
          v215 = 2048;
          v216 = v97 * 100.0;
          v217 = 2048;
          *&v218 = v145;
          v219 = 2048;
          v220 = v147;
          _os_log_debug_impl(&dword_0, v110, OS_LOG_TYPE_DEBUG, "PMI adjustment: Projected microstackshots data volume (%llu) is outside the thresholds our of daily budget (%llu), checking if we can adjust the PMI interval. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x5Cu);
        }

        v111 = *&v77 - v83;
        v112 = sub_3644();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          sub_7CC4();
        }

        v113 = (v108 * 0.95);
        v114 = sub_3644();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
        {
          sub_7D2C();
        }

        if (*&v77 == v83)
        {
          v115 = sub_3644();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            sub_7E84(v115, v116, v117, v118, v119, v120, v121, v122);
          }

          v123 = 100000000000;
        }

        else
        {
          v124 = sub_3644();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
          {
            sub_7DB0();
          }

          v123 = (v83 / v111 * *&v145);
          v115 = sub_3644();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            sub_7E1C();
          }
        }

        v125 = v113 - *&v148;
        if (v113 <= *&v148)
        {
          v139 = sub_3688();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            *buf = 134220288;
            *&v207 = v148;
            v208 = 2048;
            v209 = (v108 * 0.95);
            v210 = 2048;
            *v211 = v123;
            *&v211[8] = 2048;
            *v212 = v64;
            *&v212[8] = 2048;
            v213 = v66;
            *v214 = 2048;
            *&v214[2] = v148;
            v215 = 2048;
            *&v216 = (v96 / v99);
            v217 = 2048;
            *&v218 = v97 * 100.0;
            v219 = 2048;
            v220 = v145;
            v221 = 2048;
            v222 = v147;
            v140 = "PMI adjustment: Already exceeded daily target (%llu vs target %llu), setting PMI interval to be half of all microstackshot datarate: %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
LABEL_196:
            _os_log_error_impl(&dword_0, v139, OS_LOG_TYPE_ERROR, v140, buf, 0x66u);
          }
        }

        else
        {
          v126 = sub_3644();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
          {
            sub_7F00();
          }

          v127 = sub_3644();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
          {
            sub_7F68();
          }

          v128 = v104;
          v129 = (v97 * v104);
          v130 = sub_3644();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
          {
            sub_7FDC();
          }

          v131 = 1.0 - v97;
          v132 = sub_3644();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            sub_8044();
          }

          v133 = (v131 * v128);
          v134 = sub_3644();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            sub_80B0();
          }

          if (v125 > 2 * v133)
          {
            v135 = v125 - v133;
            v136 = sub_3644();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              sub_8118();
            }

            if (v129)
            {
              v137 = v135 / v129;
              v138 = sub_3644();
              if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
              {
                sub_8180();
              }

              v123 = 100000000000;
              if (v137 != 0.0)
              {
                v123 = (*&v145 / v137);
              }

              v139 = sub_3688();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
              {
                *buf = 134219776;
                v207 = v123;
                v208 = 2048;
                v209 = *&v64;
                v210 = 2048;
                *v211 = v66;
                *&v211[8] = 2048;
                *v212 = v148;
                *&v212[8] = 2048;
                v213 = v85;
                *v214 = 2048;
                *&v214[2] = v97 * 100.0;
                v215 = 2048;
                v216 = v145;
                v217 = 2048;
                *&v218 = v147;
                _os_log_impl(&dword_0, v139, OS_LOG_TYPE_INFO, "PMI adjustment: Calculated new PMI microstackshots interval to fit into daily budget: %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x52u);
              }
            }

            else
            {
              v139 = sub_3688();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
              {
                *buf = 134219520;
                *&v207 = v64;
                v208 = 2048;
                v209 = *&v66;
                v210 = 2048;
                *v211 = v148;
                *&v211[8] = 2048;
                *v212 = v85;
                *&v212[8] = 2048;
                v213 = v97 * 100.0;
                *v214 = 2048;
                *&v214[2] = v145;
                v215 = 2048;
                v216 = v147;
                _os_log_fault_impl(&dword_0, v139, OS_LOG_TYPE_FAULT, "PMI adjustment: projected_pmi_remaining_compressed_bytes_written_in_the_day is 0, resetting to defaults. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu", buf, 0x48u);
              }

              v123 = v71;
            }

            goto LABEL_200;
          }

          v139 = sub_3688();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            *buf = 134220288;
            v207 = (v131 * v128);
            v208 = 2048;
            v209 = v125;
            v210 = 2048;
            *v211 = v123;
            *&v211[8] = 2048;
            *v212 = v64;
            *&v212[8] = 2048;
            v213 = v66;
            *v214 = 2048;
            *&v214[2] = v148;
            v215 = 2048;
            v216 = v85;
            v217 = 2048;
            *&v218 = v97 * 100.0;
            v219 = 2048;
            v220 = v145;
            v221 = 2048;
            v222 = v147;
            v140 = "PMI adjustment: Non-PMI microstackshots alone are on track exceed half of daily target (%llu vs target remaining %llu), setting PMI interval to be half of all microstackshot datarate: %llu. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
            goto LABEL_196;
          }
        }

LABEL_200:

        v86 = v97 * 100.0;
        v71 = v123;
        goto LABEL_109;
      }
    }

    else
    {
      v67 = *(v62 + 120);
      v68 = *(a1 + 336);
      v69 = *(*(v62 + 8) + 32);
      v66 = (v61 - v63) / 1000.0;
      if (v64 + 1800.0 < 86400.0)
      {
        goto LABEL_76;
      }
    }

    v46 = sub_3688();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_64;
    }

    *buf = 134219776;
    *&v207 = 86400.0 - v64;
    v208 = 2048;
    v209 = *&v64;
    v210 = 2048;
    *v211 = v66;
    *&v211[8] = 2048;
    *v212 = v67;
    *&v212[8] = 2048;
    v213 = 0.0;
    *v214 = 2048;
    *&v214[2] = 0;
    v215 = 2048;
    v216 = v68;
    v217 = 2048;
    *&v218 = v69;
    v51 = "PMI adjustment: Cleanup expected in %.0fs, not checking daily budget. time_since_cleanup:%.0fs time_since_adjustment:%.0fs all_bytes_since_cleanup:%llu all_bytes_since_adjustment:%llu pmi_percent:%.0f%% pmi_interval:%llu quota:%llu";
    v52 = v46;
    v53 = 82;
LABEL_61:
    _os_log_debug_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, v51, buf, v53);
    goto LABEL_64;
  }

  v46 = sub_3688();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = *(a1 + 336);
    v48 = *(a1 + 344);
    v49 = *(a1 + 352);
    v50 = *(a1 + 353);
    *buf = 134218752;
    *&v207 = v47;
    v208 = 2048;
    v209 = v48;
    v210 = 1024;
    *v211 = v49;
    *&v211[4] = 1024;
    *&v211[6] = v50;
    v51 = "PMI adjustment: Have a pending change to rate %llu->%llu and/or override %d->%d, not checking daily budget";
    v52 = v46;
    v53 = 34;
    goto LABEL_61;
  }

LABEL_64:

LABEL_65:
  *(a1 + 328) = 1;
  v54 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3764;
  block[3] = &unk_105E8;
  block[4] = a1;
  dispatch_async(v54, block);
  _Block_object_dispose(&v150, 8);
  _Block_object_dispose(&v154, 8);
  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v162, 8);
  _Block_object_dispose(&v166, 8);
  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(&v178, 8);
  _Block_object_dispose(&v180, 8);
  _Block_object_dispose(&v182, 8);
  _Block_object_dispose(&v186, 8);
  _Block_object_dispose(&v190, 8);
  _Block_object_dispose(&v194, 8);
  _Block_object_dispose(v198, 8);
  _Block_object_dispose(v200, 8);
  _Block_object_dispose(v202, 8);
}

void sub_2818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_28F8(_DWORD *a1, uint64_t a2)
{
  v3 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = a1[5] + 100;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (a1[5] == 5100)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = NDR_record;
    }

    else
    {
      v5 = a1[8];
      *(a2 + 32) = telemetry_notification(a1[3]);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_29B4(uint64_t a1)
{
  if (mach_msg_server_once(sub_28F8, 0x68u, *(a1 + 32), 0))
  {
    sub_8BF0();
  }
}

uint64_t sub_29F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 24) & 0x10) == 0)
  {
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      v10 = sub_3644();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = "user";
        if (!*(a3 + 4))
        {
          v11 = "kernel";
        }

LABEL_97:
        v67 = *(a2 + 24);
        v68 = *(a2 + 8);
        v69 = *(a2 + 16);
        *buf = 136315906;
        *&buf[4] = v11;
        *&buf[12] = 1024;
        *&buf[14] = v67;
        *&buf[18] = 2048;
        *&buf[20] = v68;
        *&buf[28] = 2048;
        *&buf[30] = v69;
        _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "non-PMI %s microstackshot 0x%x @ %llu.%0llu", buf, 0x26u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (*(*(a1[6] + 8) + 24) == 1 && (*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      v28 = sub_3644();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v75 = "user";
        if (!*(a3 + 4))
        {
          v75 = "kernel";
        }

        v76 = *(a2 + 24);
        v77 = *(a2 + 8);
        v78 = *(a2 + 16);
        *buf = 136315906;
        *&buf[4] = v75;
        *&buf[12] = 1024;
        *&buf[14] = v76;
        *&buf[18] = 2048;
        *&buf[20] = v77;
        *&buf[28] = 2048;
        *&buf[30] = v78;
        _os_log_debug_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "non-PMI %s microstackshot 0x%x @ %llu.%0llu - known duplicate", buf, 0x26u);
      }

      if (*(a3 + 4))
      {
        v27 = a1[5];
      }

      else
      {
        v27 = a1[4];
      }
    }

    else
    {
      v19 = *(a2 + 8);
      if (qword_10C58 < v19 || qword_10C58 == v19 && qword_10C60 < *(a2 + 16))
      {
        v10 = sub_3644();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = "user";
          if (!*(a3 + 4))
          {
            v11 = "kernel";
          }

          goto LABEL_97;
        }

LABEL_17:

        goto LABEL_58;
      }

      v26 = sub_3644();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v71 = "user";
        if (!*(a3 + 4))
        {
          v71 = "kernel";
        }

        v72 = *(a2 + 24);
        v73 = *(a2 + 8);
        v74 = *(a2 + 16);
        *buf = 136315906;
        *&buf[4] = v71;
        *&buf[12] = 1024;
        *&buf[14] = v72;
        *&buf[18] = 2048;
        *&buf[20] = v73;
        *&buf[28] = 2048;
        *&buf[30] = v74;
        _os_log_debug_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "non-PMI %s microstackshot 0x%x @ %llu.%0llu - likely duplicate", buf, 0x26u);
      }

      if (*(a3 + 4))
      {
        v27 = a1[13];
      }

      else
      {
        v27 = a1[12];
      }
    }

    ++*(*(v27 + 8) + 24);
    return 1;
  }

  v12 = *(a3 + 193);
  v13 = HIDWORD(v12);
  v14 = *(a3 + 201);
  v15 = *(a3 + 209);
  v16 = *(a3 + 217);
  if (v15 >= *(a1[20] + 360))
  {
    v88 = *(a3 + 217);
    *(*(a1[7] + 8) + 24) = 1;
    v20 = *(a1[8] + 8);
    v87 = *(v20 + 24);
    *(v20 + 24) = 1;
    v21 = sub_3644();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v64 = "user";
      v65 = *(a2 + 8);
      v66 = *(a2 + 16);
      if (!*(a3 + 4))
      {
        v64 = "kernel";
      }

      *buf = 136316930;
      *&buf[4] = v64;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 1024;
      *&buf[20] = HIDWORD(v12);
      *&buf[24] = 2048;
      *&buf[26] = v14;
      *&buf[34] = 2048;
      *&buf[36] = v15;
      *&buf[44] = 2048;
      *&buf[46] = v88;
      *&buf[54] = 2048;
      v90 = v65;
      v91 = 2048;
      v92 = v66;
      _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "PMI %s microstackshot generation:%u source:%u period:%llu samples_recorded:%llu samples_skipped:%llu time:%llu.%0llu", buf, 0x4Au);
    }

    v22 = a1[20];
    v23 = *(v22 + 384);
    if (v23 == v12)
    {
      if (v13 == 4)
      {
        if (v14 != *(v22 + 336))
        {
          v24 = sub_3688();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            if (*(a3 + 4))
            {
              v83 = "user";
            }

            else
            {
              v83 = "kernel";
            }

            v84 = *(a1[20] + 336);
            *buf = 136315650;
            *&buf[4] = v83;
            *&buf[12] = 2048;
            *&buf[14] = v14;
            *&buf[22] = 2048;
            *&buf[24] = v84;
            _os_log_fault_impl(&dword_0, v24, OS_LOG_TYPE_FAULT, "PMI %s microstackshot wrong interval %llu, should be %llu", buf, 0x20u);
          }

          v22 = a1[20];
          *(v22 + 458) = 1;
        }
      }

      else
      {
        v29 = sub_3688();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_96A8(a3);
        }

        v22 = a1[20];
        *(v22 + 457) = 1;
      }
    }

    else if (v23 < v12)
    {
      if (v13 == 4 && v14 == *(v22 + 336))
      {
        v25 = sub_3688();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 4))
          {
            v85 = "user";
          }

          else
          {
            v85 = "kernel";
          }

          v86 = *(a1[20] + 384);
          *buf = 136315650;
          *&buf[4] = v85;
          *&buf[12] = 1024;
          *&buf[14] = v86;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "PMI %s microstackshot generation incremented unexpectedly %u -> %u, but settings are correct", buf, 0x18u);
        }

        v22 = a1[20];
        *(v22 + 384) = v12;
      }

      else
      {
        v30 = sub_3688();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v79 = "user";
          v80 = a1[20];
          v81 = *(v80 + 384);
          if (!*(a3 + 4))
          {
            v79 = "kernel";
          }

          v82 = *(v80 + 336);
          *buf = 136316418;
          *&buf[4] = v79;
          *&buf[12] = 1024;
          *&buf[14] = v81;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          *&buf[24] = 1024;
          *&buf[26] = HIDWORD(v12);
          *&buf[30] = 2048;
          *&buf[32] = v14;
          *&buf[40] = 2048;
          *&buf[42] = v82;
          _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "PMI %s microstackshot generation incremented unexpectedly %u -> %u, and settings are wrong! source:%d period:%llu, should be %llu", buf, 0x32u);
        }

        v22 = a1[20];
        *(v22 + 459) = 1;
      }
    }

    v31 = *(v22 + 360);
    v32 = v15 - v31;
    if (v15 <= v31 || v31 < 2)
    {
      goto LABEL_57;
    }

    v34 = *(v22 + 376) / 1000000.0 + *(v22 + 368);
    v35 = *(a2 + 16) / 1000000.0 + *(a2 + 8);
    if (v87 & 1) != 0 || (*(*(a1[6] + 8) + 24))
    {
      v36 = sub_3688();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v70 = *(*(a1[10] + 8) + 24) + v32;
        *buf = 134219008;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = v70;
        *&buf[22] = 2048;
        *&buf[24] = v34;
        *&buf[32] = 2048;
        *&buf[34] = v35;
        *&buf[42] = 2048;
        *&buf[44] = v35 - v34;
        _os_log_error_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Lost %llu (%llu total) PMI microstackshots in this drain between %f-%f (%.9fs)", buf, 0x34u);
      }

      *(*(a1[10] + 8) + 24) += v32;
      v37 = *(a1[11] + 8);
      v39 = *(v37 + 24);
      v38 = (v37 + 24);
      if (v39 >= v32)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v40 = sub_3688();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218752;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = v34;
        *&buf[22] = 2048;
        *&buf[24] = v35;
        *&buf[32] = 2048;
        *&buf[34] = v35 - v34;
        _os_log_error_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "Lost %llu PMI microstackshots before this drain between %f-%f (%.9fs)", buf, 0x2Au);
      }

      v38 = (*(a1[9] + 8) + 24);
    }

    *v38 = v32;
LABEL_57:
    v41 = a1[20];
    *(v41 + 360) = v15 + 1;
    *(v41 + 368) = *(a2 + 8);
    *(v41 + 376) = *(a2 + 16);
    *(v41 + 392) = v88;
    *(v41 + 388) = v12;
LABEL_58:
    v42 = 15;
    if (!*(a3 + 4))
    {
      v42 = 14;
    }

    ++*(*(a1[v42] + 8) + 24);
    v43 = a1[20];
    *(a2 + 25) = *(v43 + 332);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_36CC;
    *&buf[24] = &unk_106D8;
    *&buf[32] = a5;
    *&buf[40] = a3;
    *&buf[48] = a4;
    v44 = objc_retainBlock(buf);
    (*(v44 + 2))(v44, v43 + 72);
    v45 = *(a2 + 24);
    if (v45)
    {
      (*(v44 + 2))(v44, v43 + 104);
      v45 = *(a2 + 24);
      if ((v45 & 2) == 0)
      {
LABEL_62:
        if ((v45 & 8) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_75;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_62;
    }

    (*(v44 + 2))(v44, v43 + 136);
    v45 = *(a2 + 24);
    if ((v45 & 8) == 0)
    {
LABEL_63:
      if ((v45 & 0x10) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_76;
    }

LABEL_75:
    (*(v44 + 2))(v44, v43 + 168);
    v45 = *(a2 + 24);
    if ((v45 & 0x10) == 0)
    {
LABEL_64:
      if ((v45 & 0x20) == 0)
      {
LABEL_66:
        if ((v45 & 0x3B) == 0)
        {
          (*(v44 + 2))(v44, v43 + 264);
        }

        v46 = a1[20];
        v47 = *(*v46 + 168);
        v48 = *(*v46 + 120);
        systemstats_write_microstackshot();
        v49 = a1[20];
        v50 = *(*v49 + 168);
        v51 = v50 > v47;
        v52 = v50 - v47;
        if (v51)
        {
          sub_60F4(v49, v48 + a5, v52 / 1000.0);
          sub_5744(a1[20]);
          v53 = a1[20];
          *(v53 + 88) = 0u;
          *(v53 + 72) = 0u;
          *(v53 + 104) = 0u;
          *(v53 + 120) = 0u;
          *(v53 + 136) = 0u;
          *(v53 + 152) = 0u;
          *(v53 + 168) = 0u;
          *(v53 + 184) = 0u;
          *(v53 + 200) = 0u;
          *(v53 + 216) = 0u;
          *(v53 + 232) = 0u;
          *(v53 + 248) = 0u;
          *(v53 + 264) = 0u;
          *(v53 + 280) = 0u;
          *(v53 + 400) = 0;
          *(v53 + 408) = 0;
          *(v53 + 416) = 0;
          *(v53 + 488) = 0;
          *(v53 + 496) = 0;
        }

        v55 = *(a2 + 16);
        qword_10C58 = *(a2 + 8);
        v54 = qword_10C58;
        qword_10C60 = v55;
        v56 = *(a1[16] + 8);
        v57 = *(v56 + 24);
        if (v57 > qword_10C58 || v57 == qword_10C58 && *(*(a1[17] + 8) + 24) > v55)
        {
          *(v56 + 24) = qword_10C58;
          *(*(a1[17] + 8) + 24) = *(a2 + 16);
          v54 = *(a2 + 8);
        }

        v58 = *(a1[18] + 8);
        v59 = *(v58 + 24);
        if (v59 < v54 || v59 == v54 && *(*(a1[19] + 8) + 24) < *(a2 + 16))
        {
          *(v58 + 24) = v54;
          *(*(a1[19] + 8) + 24) = *(a2 + 16);
        }

        return 1;
      }

LABEL_65:
      (*(v44 + 2))(v44, v43 + 232);
      v45 = *(a2 + 24);
      goto LABEL_66;
    }

LABEL_76:
    (*(v44 + 2))(v44, v43 + 200);
    v45 = *(a2 + 24);
    if ((v45 & 0x20) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v17 = sub_3644();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v61 = "user";
    v62 = *(a2 + 8);
    v63 = *(a2 + 16);
    if (!*(a3 + 4))
    {
      v61 = "kernel";
    }

    *buf = 136316930;
    *&buf[4] = v61;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = HIDWORD(v12);
    *&buf[24] = 2048;
    *&buf[26] = v14;
    *&buf[34] = 2048;
    *&buf[36] = v15;
    *&buf[44] = 2048;
    *&buf[46] = v16;
    *&buf[54] = 2048;
    v90 = v62;
    v91 = 2048;
    v92 = v63;
    _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "PMI %s microstackshot generation:%u source:%u period:%llu samples_recorded:%llu samples_skipped:%llu time:%llu.%0llu - duplicate", buf, 0x4Au);
  }

  v18 = 5;
  if (!*(a3 + 4))
  {
    v18 = 4;
  }

  ++*(*(a1[v18] + 8) + 24);
  *(*(a1[6] + 8) + 24) = 1;
  if (v15 == *(a1[20] + 360) - 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  return 1;
}

id sub_3644()
{
  if (qword_10C40 != -1)
  {
    sub_3770();
  }

  v1 = qword_10C38;

  return v1;
}

id sub_3688()
{
  if (qword_10BF0 != -1)
  {
    sub_74C4();
  }

  v1 = qword_10BE8;

  return v1;
}

int64x2_t sub_36CC(void *a1, int64x2_t *a2)
{
  v2.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v2.i64[1] = a1[4];
  v3 = a2[1].i64[1];
  v4 = a2[1].i64[0] + *(a1[5] + 56);
  v5 = (*(a1[6] + 8) + *(a1[6] + 4));
  result = vaddq_s64(*a2, v2);
  *a2 = result;
  a2[1].i64[0] = v4;
  a2[1].i64[1] = v3 + v5;
  return result;
}

uint64_t telemetry_notification(mach_port_name_t name)
{
  context = 0;
  if (mach_port_get_context(mach_task_self_, name, &context))
  {
    _os_assumes_log();
  }

  else
  {
    sub_C90(context, 0);
  }

  return 0;
}

void sub_3784(uint64_t a1)
{
  state64 = 0;
  state = notify_get_state(*(a1 + 324), &state64);
  if (state64)
  {
    v3 = 0;
  }

  else
  {
    v3 = state == 0;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (IOPSGetTimeRemainingEstimate() != -2.0)
  {
    v4 |= 4u;
  }

  if (*(a1 + 332) != v4)
  {
    sub_C90(a1, 0);
    *(a1 + 332) = v4;
  }
}

unint64_t sub_3808(unint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 330) == 1)
  {
    v2 = systemstats_mach_continuous_time();
    if (v2 <= *(v1 + 8) || (result = absolute_time_to_absolute_milliseconds(), result >> 3 >= 0x271))
    {
      sub_C90(v1, 1);
      *(v1 + 8) = v2;

      return notify_post("com.apple.telemetry.immediate-done");
    }
  }

  return result;
}

void init_telemetry()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.telemetry.microstackshots", v1);

  out_token = -1;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_39F0;
  handler[3] = &unk_104C0;
  v3 = v2;
  v9 = v3;
  if (notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v3, handler))
  {
    _os_assumes_log();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3C00;
  v5[3] = &unk_10498;
  v6 = v3;
  v7 = out_token;
  v4 = v3;
  dispatch_async(v4, v5);
}

void sub_39F0(uint64_t a1, int a2)
{
  v4 = sub_3688();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_7488();
  }

  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3AB0;
  v6[3] = &unk_10498;
  v7 = v5;
  v8 = a2;
  dispatch_async(v7, v6);
}

void sub_3AC0(void *a1, int a2)
{
  v3 = a1;
  if (qword_10BF8)
  {
    v4 = sub_3688();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_74D8();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    v5 = sub_3688();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Device unlocked; proceeding with initialization of telemetry plugin.", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3C54;
    block[3] = &unk_10568;
    v9 = a2;
    v8 = "/private/var/db/systemstats";
    v7 = v3;
    if (qword_10C00 != -1)
    {
      dispatch_once(&qword_10C00, block);
    }

    v4 = v7;
    goto LABEL_10;
  }

LABEL_11:
}

void sub_3C10(id a1)
{
  qword_10BE8 = os_log_create("com.apple.systemstats", "telemetry_plugin");

  _objc_release_x1();
}

void sub_3C54(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v3 = *(a1 + 40);
  _systemstats_boot();
  v4 = *(a1 + 40);
  systemstats_unlink_if_present();
  v5 = *(a1 + 40);
  systemstats_unlink_if_present();
  v6 = *(a1 + 40);
  systemstats_unlink_if_present();
  qword_10BF8 = malloc_type_calloc(1uLL, 0x200uLL, 0x10B0040A8A28788uLL);
  objc_storeStrong((qword_10BF8 + 16), *(a1 + 32));
  v7 = *(a1 + 40);
  v8 = _systemstats_stream_create();
  v9 = qword_10BF8;
  *qword_10BF8 = v8;
  if (!v8)
  {
    v29 = sub_3688();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_8520();
    }

    v30 = qword_10BF8;
    goto LABEL_37;
  }

  *(v9 + 40) = 0x10000;
  v10 = malloc_type_malloc(0x10000uLL, 0xC6A3100uLL);
  v11 = qword_10BF8;
  *(qword_10BF8 + 24) = v10;
  if (!v10)
  {
    v31 = sub_3688();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_84E4();
    }

    goto LABEL_28;
  }

  v12 = malloc_type_malloc(*(v11 + 40), 0x3E63C79BuLL);
  v13 = qword_10BF8;
  *(qword_10BF8 + 32) = v12;
  if (!v12)
  {
    v32 = sub_3688();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_84A8();
    }

    v33 = qword_10BF8;
    free(*(qword_10BF8 + 24));
    *(v33 + 24) = 0;
    goto LABEL_32;
  }

  dispatch_async(*(v13 + 16), &stru_10520);
  v14 = qword_10BF8;
  name = 0;
  if (mach_port_allocate(mach_task_self_, 1u, &name))
  {
    sub_830C();
    goto LABEL_42;
  }

  if (mach_port_insert_right(mach_task_self_, name, name, 0x14u))
  {
    sub_8364();
    goto LABEL_42;
  }

  v15 = mach_host_self();
  if (host_set_special_port(v15, 20, name))
  {
    sub_83BC();
    goto LABEL_42;
  }

  if (mach_port_set_context(mach_task_self_, name, v14))
  {
    sub_8414();
LABEL_42:

    v31 = sub_3688();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_846C();
    }

LABEL_28:

LABEL_32:
    v34 = qword_10BF8;
    v35 = *(qword_10BF8 + 24);
    if (v35)
    {
      free(v35);
      v34[3] = 0;
    }

    v36 = v34[4];
    if (v36)
    {
      free(v36);
      v34[4] = 0;
    }

    v37 = *v34;
    systemstats_stream_delete();
    v30 = qword_10BF8;
    *qword_10BF8 = 0;
LABEL_37:
    v38 = *(v30 + 16);
    *(v30 + 16) = 0;

    free(qword_10BF8);
    return;
  }

  v16 = dispatch_source_create(&_dispatch_source_type_mach_recv, name, 0, *(v14 + 16));
  v17 = *(v14 + 296);
  *(v14 + 296) = v16;

  v18 = *(v14 + 296);
  block = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_29B4;
  v44 = &unk_105C8;
  LODWORD(v45) = name;
  v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &block);
  dispatch_source_set_event_handler(v18, v19);

  dispatch_resume(*(v14 + 296));
  block = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_55E4;
  v44 = &unk_105E8;
  v45 = qword_10BF8;
  if (qword_10C20 != -1)
  {
    dispatch_once(&qword_10C20, &block);
  }

  v20 = qword_10BF8;
  block = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_72F4;
  v44 = &unk_10690;
  v45 = qword_10BF8;
  v21 = objc_retainBlock(&block);
  if (notify_register_dispatch("com.apple.da.tasking_changed", (v20 + 316), *(v20 + 16), v21))
  {
    _os_assumes_log();
  }

  if (notify_register_dispatch("com.apple.microstackshots.preferences_changed", (v20 + 316), *(v20 + 16), v21))
  {
    _os_assumes_log();
  }

  v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v20 + 16));
  v23 = *(v20 + 304);
  *(v20 + 304) = v22;

  v24 = dispatch_time(0, 86400000000000);
  dispatch_source_set_timer(*(v20 + 304), v24, 0x4E94914F0000uLL, 0x8BB2C97000uLL);
  v25 = *(v20 + 304);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_7358;
  handler[3] = &unk_105E8;
  handler[4] = v20;
  dispatch_source_set_event_handler(v25, handler);
  dispatch_resume(*(v20 + 304));

  v26 = *(qword_10BF8 + 16);
  block = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_3808;
  v44 = &unk_10690;
  v45 = qword_10BF8;
  if (notify_register_dispatch("com.apple.telemetry.immediate", (qword_10BF8 + 312), v26, &block))
  {
    _os_assumes_log();
  }

  v27 = qword_10BF8;
  block = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_3800;
  v44 = &unk_10690;
  v45 = qword_10BF8;
  v28 = objc_retainBlock(&block);
  if (notify_register_dispatch("com.apple.system.powersources.source", (v27 + 320), *(v27 + 16), v28))
  {
    _os_assumes_log();
  }

  if (notify_register_dispatch("com.apple.springboard.lockstate", (v27 + 324), *(v27 + 16), v28))
  {
    _os_assumes_log();
  }

  notify_suspend(*(v27 + 320));
  notify_suspend(*(v27 + 324));

  dispatch_async(*(a1 + 32), &stru_10540);
}

void sub_4298(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  if (*(*a1 + 80))
  {
    v4 = *(*a1 + 80);
  }

  else
  {
    v4 = "/private/var/db/systemstats";
  }

  memset(&v88, 0, 37);
  uuid_unparse((v3 + 24), v88.sysname);
  v5 = _systemstats_writers();
  v80[0] = 0;
  v6 = *(v5 + 776);
  asprintf(v80, "%s/%s.%s.bootinfo%s", v4, v88.sysname, v6, *(*a1 + 192));
  v7 = gzopen(v80[0], "wxb");
  if (v7)
  {
    v8 = v7;
    free(v80[0]);
    v9 = [[NSMutableDictionary alloc] initWithCapacity:13];
    v10 = [[NSUUID alloc] initWithUUIDBytes:*a1 + 24];
    v11 = [v10 UUIDString];
    [v9 setObject:v11 forKeyedSubscript:@"uuid"];

    v80[0] = 0;
    *v88.sysname = 0uLL;
    mach_get_times();
    v12 = &CFDataGetBytePtr_ptr;
    v13 = [NSNumber numberWithDouble:*v88.sysname - kCFAbsoluteTimeIntervalSince1970 + *&v88.sysname[8] / 1000000000.0 - sub_52B4(v80[0])];
    [v9 setObject:v13 forKeyedSubscript:@"walltime"];

    LODWORD(v80[0]) = 0;
    *v88.sysname = 4;
    if (sysctlbyname("hw.pagesize", v80, &v88, 0, 0))
    {
      v14 = sub_3688();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_855C();
      }
    }

    else
    {
      v14 = [NSNumber numberWithUnsignedInt:LODWORD(v80[0])];
      [v9 setObject:v14 forKeyedSubscript:@"hw_page_size"];
    }

    LODWORD(v80[0]) = 0;
    *v88.sysname = 4;
    if (sysctlbyname("vm.pagesize", v80, &v88, 0, 0))
    {
      v16 = sub_3688();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_85E0();
      }
    }

    else
    {
      v16 = [NSNumber numberWithUnsignedInt:LODWORD(v80[0])];
      [v9 setObject:v16 forKeyedSubscript:@"vm_page_size"];
    }

    v71 = v2;

    mach_timebase_info(&dword_10C08);
    v17 = [NSString alloc];
    v18 = [v17 initWithFormat:@"%u/%u", dword_10C08, *algn_10C0C];
    [v9 setObject:v18 forKeyedSubscript:@"mach_timebase"];

    CSArchitectureGetCurrent();
    FamilyName = CSArchitectureGetFamilyName();
    if (FamilyName)
    {
      v20 = [[NSString alloc] initWithUTF8String:FamilyName];
      [v9 setObject:v20 forKeyedSubscript:@"machine_arch"];
    }

    off_10488();
    v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v22 = 0;
    *v88.sysname = v21;
    if (sysctlbyname("kern.bootargs", v22, &v88, 0, 0))
    {
      v23 = sub_3688();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_8664();
      }
    }

    else
    {
      v23 = [[NSString alloc] initWithUTF8String:v22];
      [v9 setObject:v23 forKeyedSubscript:@"boot_args"];
    }

    memset(&v88, 0, 512);
    v88.version[0] = 0;
    if (uname(&v88))
    {
      v24 = sub_3688();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_8704();
      }
    }

    else if (v88.version[0])
    {
      v24 = [[NSString alloc] initWithUTF8String:v88.version];
      [v9 setObject:v24 forKeyedSubscript:@"kernel_version"];
    }

    else
    {
      v24 = sub_3688();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_8788();
      }
    }

    v25 = _CFCopySupplementalVersionDictionary();
    if (v25)
    {
      v26 = v25;
      [v9 setObject:CFDictionaryGetValue(v25 forKeyedSubscript:{_kCFSystemVersionProductVersionKey), @"os_product_version"}];
      [v9 setObject:CFDictionaryGetValue(v26 forKeyedSubscript:{_kCFSystemVersionProductVersionExtraKey), @"os_product_version_extra"}];
      [v9 setObject:CFDictionaryGetValue(v26 forKeyedSubscript:{_kCFSystemVersionBuildVersionKey), @"os_build_version"}];
      [v9 setObject:CFDictionaryGetValue(v26 forKeyedSubscript:{_kCFSystemVersionProductNameKey), @"os_product_name"}];
      CFRelease(v26);
    }

    else
    {
      v27 = sub_3688();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_87C4();
      }
    }

    v86 = 0;
    v28 = [SABinaryLoadInfo binaryLoadInfoForLiveProcessWithPid:0 dataGatheringOptions:3 additionalCSSymbolicatorFlags:0 mainBinaryOut:&v86 sharedCacheOut:0];
    v29 = v86;
    v30 = [v28 count];
    v72 = v9;
    if (v30)
    {
      v68 = v29;
      *&v70 = v8;
      v31 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v28, "count")}];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v69 = v28;
      v74 = v28;
      v32 = [v74 countByEnumeratingWithState:&v82 objects:v87 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v83;
        v73 = *v83;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v83 != v34)
            {
              objc_enumerationMutation(v74);
            }

            v36 = *(*(&v82 + 1) + 8 * i);
            v37 = [v36 exclave];

            if (!v37)
            {
              v38 = v31;
              v39 = v12;
              v40 = objc_alloc_init(NSMutableDictionary);
              v41 = [v36 binary];
              v42 = [v41 uuid];
              v43 = [v42 UUIDString];
              [v40 setObject:v43 forKeyedSubscript:@"uuid"];

              v44 = [v36 binary];
              v45 = [v44 path];

              if (v45)
              {
                v46 = [v36 binary];
                v47 = [v46 path];
                [v40 setObject:v47 forKeyedSubscript:@"path"];
              }

              v48 = [v36 segment];

              v31 = v38;
              if (v48)
              {
                v49 = [v36 segment];
                v50 = [v49 name];
                [v40 setObject:v50 forKeyedSubscript:@"segment"];
              }

              v12 = v39;
              v51 = [v39[133] numberWithUnsignedLongLong:{objc_msgSend(v36, "loadAddress")}];
              [v40 setObject:v51 forKeyedSubscript:@"load_address"];

              v52 = [v39[133] numberWithUnsignedLongLong:{objc_msgSend(v36, "length")}];
              [v40 setObject:v52 forKeyedSubscript:@"length"];

              [v38 addObject:v40];
              v34 = v73;
            }
          }

          v33 = [v74 countByEnumeratingWithState:&v82 objects:v87 count:16];
        }

        while (v33);
      }

      v53 = [[NSMutableDictionary alloc] initWithCapacity:3];
      [v53 setObject:&off_10BC8 forKeyedSubscript:@"pid"];
      v29 = v68;
      v54 = [v68 uuid];
      v55 = [v54 UUIDString];
      [v53 setObject:v55 forKeyedSubscript:@"main_binary_uuid"];

      [v53 setObject:v31 forKeyedSubscript:@"load_info_entries"];
      v56 = [[NSMutableArray alloc] initWithCapacity:1];
      [v56 addObject:v53];
      v9 = v72;
      [v72 setObject:v56 forKeyedSubscript:@"load_infos"];

      v28 = v69;
      v8 = v70;
    }

    else
    {
      v31 = sub_3688();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_8800();
      }
    }

    +[SABinary clearCaches];
    v81 = 0;
    v57 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:&v81];
    v73 = v81;
    v74 = v57;
    if (v57)
    {
      v58 = [v57 bytes];
      v59 = [v57 length];
      v61 = v59;
      if (v59 <= 0xFFFFFFFE)
      {
        if (v59)
        {
          v62 = 0;
          *&v60 = 134218242;
          v70 = v60;
          v63 = v59;
          do
          {
            if (v63 >= 0x1FFDB)
            {
              v64 = 131035;
            }

            else
            {
              v64 = v63;
            }

            LODWORD(v80[0]) = -1342106384;
            HIDWORD(v80[0]) = v64 + 16;
            v80[1] = (v63 > 0x1FFDB);
            gzwrite(v8, v80, 0x10u);
            gzwrite(v8, v58, v64);
            v65 = sub_3688();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              *v88.sysname = v70;
              v66 = &unk_A7E2;
              if (v63 > 0x1FFDB)
              {
                v66 = " (needs following chunk)";
              }

              *&v88.sysname[4] = v64;
              *&v88.sysname[12] = 2080;
              *&v88.sysname[14] = v66;
              _os_log_debug_impl(&dword_0, v65, OS_LOG_TYPE_DEBUG, "wrote %lu boot info chunk %s", &v88, 0x16u);
            }

            sub_5338(v8);
            v58 += 131035;
            v63 -= 131035;
            v62 += 131035;
          }

          while (v62 < v61);
        }

        goto LABEL_69;
      }

      v67 = sub_3688();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_883C();
      }
    }

    else
    {
      v67 = sub_3688();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_88AC();
      }
    }

LABEL_69:
    v75 = _NSConcreteStackBlock;
    v76 = 3221225472;
    v77 = sub_53A8;
    v78 = &unk_10588;
    v79 = v8;
    dyld_for_each_installed_shared_cache();
    gzclose(v8);

    v2 = v71;
    goto LABEL_70;
  }

  v15 = sub_3688();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_891C(v80);
  }

  free(v80[0]);
LABEL_70:
  objc_autoreleasePoolPop(v2);
}

void sub_4EA0(id a1)
{
  sub_3784(qword_10BF8);
  sub_4EE8(qword_10BF8);
  v1 = qword_10BF8;

  sub_4F54(v1, 0);
}

uint64_t sub_4EE8(uint64_t a1)
{
  pmi_cycle_interval = systemstats_get_pmi_cycle_interval();
  *(a1 + 344) = pmi_cycle_interval;
  *(a1 + 353) = 0;
  if (pmi_cycle_interval != *(a1 + 336) || *(a1 + 352))
  {
    sub_C90(a1, 0);
  }

  result = systemstats_persistence_is_allowed();
  *(a1 + 329) = result;
  return result;
}

void sub_4F54(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_5744(a1);
    v4 = *(a1 + 344);
  }

  else
  {
    v4 = *(a1 + 336);
    if (v4 == *(a1 + 344) && *(a1 + 352) == *(a1 + 353) || (sub_5744(a1), v4 = *(a1 + 344), *(a1 + 336) == v4))
    {
      if (*(a1 + 352) == *(a1 + 353))
      {
LABEL_20:
        if (*(a1 + 352) == *(a1 + 353))
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }
  }

  if (!v4)
  {
    v5 = sub_3688();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Disabling cycle-count-based microstackshots because settings changed.", &v16, 2u);
    }
  }

  if (__telemetry())
  {
    if (*(a1 + 336))
    {
      v6 = sub_3688();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_89B4();
      }
    }

    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 336) = 0;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 336) == *(a1 + 344))
  {
    goto LABEL_20;
  }

LABEL_21:
  v7 = sub_3688();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 344);
    v9 = &unk_A7E2;
    if (*(a1 + 353))
    {
      v9 = " (Overridden by pref)";
    }

    v16 = 134218242;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Enabling cycle-count-based microstackshots at %llu cycles.%s", &v16, 0x16u);
  }

  v10 = *(a1 + 344);
  if (__telemetry())
  {
    *(a1 + 456) = 1;
    v11 = sub_3688();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8A38();
    }
  }

  else
  {
    *(a1 + 336) = *(a1 + 344);
    *(a1 + 352) = *(a1 + 353);
    *(a1 + 384) = *(a1 + 388) + 1;
    v12 = *(a1 + 208);
    *(a1 + 400) = *(a1 + 80);
    *(a1 + 408) = v12;
    *(a1 + 416) = now_in_absolute_milliseconds();
  }

LABEL_30:
  if (*(a1 + 329))
  {
    if (*(a1 + 330))
    {
      goto LABEL_40;
    }

    v13 = sub_3688();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Enabling state change notifications since persistence is allowed.", &v16, 2u);
    }

    notify_resume(*(a1 + 320));
    notify_resume(*(a1 + 324));
    v14 = 1;
  }

  else
  {
    if (!*(a1 + 330))
    {
      goto LABEL_40;
    }

    v15 = sub_3688();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Disabling state change notifications since persistence is disallowed.", &v16, 2u);
    }

    notify_suspend(*(a1 + 320));
    notify_suspend(*(a1 + 324));
    v14 = 0;
  }

  *(a1 + 330) = v14;
LABEL_40:
  if (*(a1 + 336))
  {
    if (!*(a1 + 360))
    {
      *(a1 + 360) = 1;
      *(a1 + 368) = 0;
      *(a1 + 376) = 0;
    }
  }
}

double sub_52B4(unint64_t a1)
{
  if (qword_10C10 != -1)
  {
    sub_8ABC();
  }

  result = 0.0;
  if (dword_10C18)
  {
    v3 = *algn_10C1C == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (dword_10C18 == *algn_10C1C)
    {
      v4 = a1;
    }

    else
    {
      v4 = __udivti3();
    }

    return v4 / 1000000000.0;
  }

  return result;
}

void sub_5338(gzFile_s *a1)
{
  v2[0] = 0x104BCF7A75;
  v2[1] = 0x31C5401100000000;
  gzwrite(a1, v2, 0x10u);
  v1 = sub_3688();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_8AD0();
  }
}

void sub_53A8()
{
  v3 = 0;
  v4 = 0;
  dyld_shared_cache_copy_uuid();
  v1 = 0;
  v2 = 0;
  dscsym_mmap_dscsym_for_uuid();
  v0 = sub_3688();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_8B80();
  }
}

void sub_55E4(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = qword_10C28;
  qword_10C28 = v2;

  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(*(a1 + 32) + 16));
  v5 = qword_10C30;
  qword_10C30 = v4;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_56B4;
  handler[3] = &unk_105E8;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(qword_10C30, handler);
  dispatch_activate(qword_10C30);
}

void sub_56B4(uint64_t a1)
{
  sub_C90(*(a1 + 32), 1);
  sub_5744(*(a1 + 32));
  v2 = now_in_absolute_milliseconds();
  sub_60F4(*(a1 + 32), *(**(a1 + 32) + 120), (v2 - *(**(a1 + 32) + 168)) / 1000.0);
  v3 = qword_10C28;
  if (qword_10C28)
  {
    qword_10C28 = 0;
  }
}

void sub_5744(uint64_t a1)
{
  v2 = mach_host_self();
  *host_info64_out = 0;
  *&host_info64_out[8] = 0;
  host_info64_outCnt = 4;
  if (host_statistics64(v2, 3, host_info64_out, &host_info64_outCnt))
  {
    v3 = sub_3688();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_8C64();
    }

    v4 = 0;
  }

  else
  {
    v4 = 10000000 * (*&host_info64_out[4] + *host_info64_out);
  }

  if (*(a1 + 336))
  {
    v5 = sub_3644();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_8CD4();
    }

    if (!*(a1 + 336))
    {
      v17 = sub_3644();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_94A4();
      }

      goto LABEL_31;
    }

    if (!*(a1 + 360))
    {
      v17 = sub_3688();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_9468();
      }

      goto LABEL_31;
    }

    v6 = *(a1 + 464);
    v7 = sub_3644();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_8D10();
    }

    v8 = *(a1 + 472);
    v9 = sub_3644();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_8D78();
    }

    v10 = *(a1 + 480);
    v11 = sub_3644();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_8DE0();
    }

    v12 = *(a1 + 360) - 1;
    v13 = sub_3644();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_8E48();
    }

    v14 = *(a1 + 392);
    v15 = sub_3644();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_8EB0();
    }

    v16 = sub_3644();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_8F18();
    }

    if (v4 && !v10)
    {
      v17 = sub_3688();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_9434();
      }

LABEL_31:

      v18 = 0;
      v64 = 0;
      v19 = 0;
      v70 = 0;
      v69 = 0;
      v68 = 0;
      v20 = 0;
      v67 = 0;
      v65 = 0;
      v66 = 0uLL;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v63 = 0;
      v24 = 0;
LABEL_32:
      v25 = sub_3688();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *host_info64_out = 134222848;
        *&host_info64_out[4] = v24;
        *&host_info64_out[12] = 2048;
        *&host_info64_out[14] = v63;
        *&host_info64_out[22] = 2048;
        v73 = &v22[v65 + *(&v66 + 1) + v23];
        *v74 = 2048;
        *&v74[2] = v22;
        *&v74[10] = 2048;
        *&v74[12] = v65 + *(&v66 + 1) + v23;
        *&v74[20] = 2048;
        *&v74[22] = v23;
        *&v74[30] = 2048;
        v75 = v65;
        *v76 = 2048;
        *&v76[2] = *(&v66 + 1);
        *&v76[10] = 2048;
        *&v76[12] = v23;
        *&v76[20] = 2048;
        *&v76[22] = v21;
        *&v76[30] = 2048;
        v77 = v66;
        v78 = 2048;
        v79 = v67;
        v80 = 1024;
        v81 = v68;
        v82 = 1024;
        v83 = v69;
        v84 = 1024;
        v85 = HIDWORD(v69);
        v86 = 1024;
        v87 = v70;
        v88 = 1024;
        v89 = v19;
        v90 = 1024;
        v91 = v64;
        v92 = 1024;
        v93 = v18;
        v94 = 1024;
        v95 = v20;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "PMI telemetry - pmi_interval:%llu time_since_last_adjustment_s:%llus\nnum_pmi_microstackshots_pmi_triggers:%llu\nnum_pmi_microstackshots_skipped:%llu\nnum_pmi_microstackshots_generated:%llu\nnum_pmi_microstackshots_captured:%llu\nnum_pmi_microstackshots_lost_between_drains:%llu\nnum_pmi_microstackshots_lost_inside_drains:%llu\nnum_pmi_microstackshots_captured:%llu\nnum_pmi_microstackshots_not_generated:%llu\nnum_pmi_microstackshots_lost_between_drains_max_at_once:%llu\nnum_pmi_microstackshots_lost_inside_drains_max_at_once:%llu\npmi_configuration_failure:%d\npmi_microstackshots_wrong_source:%d\npmi_microstackshots_wrong_interval:%d\npmi_microstackshots_unexpected_configuration_change:%d\nbad_cpu_time:%d\nbad_samples_recorded:%d\nbad_samples_skipped:%d\nhad_pref_override:%d", host_info64_out, 0xAAu);
      }

      if (v24)
      {
        *host_info64_out = _NSConcreteStackBlock;
        *&host_info64_out[8] = 3221225472;
        *&host_info64_out[16] = sub_6EC8;
        v73 = &unk_10670;
        *v74 = v24;
        *&v74[8] = v63;
        *&v74[16] = v23;
        *&v74[24] = v22;
        v75 = v21;
        *v76 = v65;
        *&v76[8] = v66;
        *&v76[24] = v67;
        LOBYTE(v77) = v20;
        BYTE1(v77) = v68;
        BYTE2(v77) = v69;
        BYTE3(v77) = BYTE4(v69);
        BYTE4(v77) = v70;
        BYTE5(v77) = v19;
        BYTE6(v77) = v64;
        HIBYTE(v77) = v18;
        analytics_send_event_lazy();
      }

      goto LABEL_36;
    }

    v24 = *(a1 + 336);
    v62 = *(a1 + 352);
    v30 = now_in_absolute_milliseconds();
    v31 = *(a1 + 416);
    if (!v31)
    {
      v31 = *(*a1 + 168);
    }

    v32 = (v30 - v31) / 1000.0;
    v65 = *(a1 + 424);
    v66 = *(a1 + 432);
    v67 = *(a1 + 448);
    v68 = *(a1 + 456);
    LODWORD(v69) = *(a1 + 457);
    HIDWORD(v69) = *(a1 + 458);
    v70 = *(a1 + 459);
    v23 = v12 - v6;
    v61 = v12 < v6;
    if (v12 >= v6)
    {
      v33 = sub_3644();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_8F80();
      }

      v64 = 0;
    }

    else
    {
      v33 = sub_3688();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_8FE8();
      }

      v23 = 0;
      v64 = 1;
    }

    v63 = v32;

    v22 = (v14 - v8);
    if (v14 >= v8)
    {
      v34 = sub_3644();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_9054();
      }

      v18 = 0;
    }

    else
    {
      v34 = sub_3688();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_90BC();
      }

      v18 = 1;
      v61 = 1;
    }

    v20 = v62;

    if (!v4 || (v35 = v4 - v10, v4 < v10))
    {
      v37 = sub_3688();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_93C8();
      }

      v21 = 0;
      v19 = 1;
      goto LABEL_32;
    }

    v36 = sub_3644();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_9128();
    }

    if (v4 == v10)
    {
      v21 = 0;
      if (v61)
      {
LABEL_84:
        v19 = 0;
LABEL_94:
        v20 = v62;
        goto LABEL_32;
      }
    }

    else
    {
      if (qword_10C48 != -1)
      {
        sub_9190();
      }

      v38 = (v35 / 1000000000.0 * qword_10BE0);
      v39 = sub_3644();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_91B8();
      }

      if (v61)
      {
        goto LABEL_93;
      }

      v21 = (v38 * 0.9);
    }

    v40 = &v22[v23];
    v41 = sub_3644();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_9220();
    }

    v42 = *(a1 + 336);
    if (v42)
    {
      v43 = v21 / v42;
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_3644();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_9288();
    }

    if (v43 < 3)
    {
      v48 = sub_3644();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        sub_92F0(v48, v49, v50, v51, v52, v53, v54, v55);
      }

      v45 = 0;
    }

    else
    {
      v45 = v43 - 2;
      v46 = sub_3644();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_9360();
      }

      v21 = v45 - v40;
      if (v45 > v40)
      {
        v47 = sub_3688();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v59 = v35 / 1000000000.0;
          v60 = *(a1 + 336);
          if (qword_10C48 != -1)
          {
            sub_9190();
          }

          *host_info64_out = 134219264;
          *&host_info64_out[4] = &v22[v23];
          *&host_info64_out[12] = 2048;
          *&host_info64_out[14] = v59;
          *&host_info64_out[22] = 2048;
          v73 = v22;
          *v74 = 2048;
          *&v74[2] = v45;
          *&v74[10] = 2048;
          *&v74[12] = v60;
          *&v74[20] = 2048;
          *&v74[22] = qword_10BE0;
          _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "PMI microstackshot count is not at least what is expected: %llu in last %.0fs of cpu time (%llu skipped). Expect at least %llu given interval %llu and minumum cpu cycles per second %llu", host_info64_out, 0x3Eu);
        }

        goto LABEL_84;
      }
    }

    v56 = sub_3688();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = v35 / 1000000000.0;
      v58 = *(a1 + 336);
      if (qword_10C48 != -1)
      {
        sub_9190();
      }

      *host_info64_out = 134219264;
      *&host_info64_out[4] = &v22[v23];
      *&host_info64_out[12] = 2048;
      *&host_info64_out[14] = v57;
      *&host_info64_out[22] = 2048;
      v73 = v22;
      *v74 = 2048;
      *&v74[2] = v45;
      *&v74[10] = 2048;
      *&v74[12] = v58;
      *&v74[20] = 2048;
      *&v74[22] = qword_10BE0;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "PMI microstackshot count is at least what is expected: %llu in last %.0fs of cpu time (%llu skipped). Expect at least %llu given interval %llu and minumum cpu cycles per second %llu", host_info64_out, 0x3Eu);
    }

LABEL_93:
    v19 = 0;
    v21 = 0;
    goto LABEL_94;
  }

LABEL_36:
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  v26 = *(a1 + 360);
  v27 = v26 != 0;
  v28 = v26 - 1;
  if (!v27)
  {
    v28 = 0;
  }

  v29 = *(a1 + 392);
  *(a1 + 464) = v28;
  *(a1 + 472) = v29;
  *(a1 + 480) = v4;
}

uint64_t sub_60F4(uint64_t a1, unint64_t a2, double a3)
{
  v6 = a3;
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 208) / v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(*(*a1 + 8) + 32);
  v10 = *(a1 + 488);
  v117 = *(a1 + 496);
  v115 = *(a1 + 336);
  pmi_cycle_interval = systemstats_get_pmi_cycle_interval();
  v118 = *(a1 + 352);
  v12 = v6;
  if (*(a1 + 416))
  {
    v12 = ((now_in_absolute_milliseconds() - *(a1 + 416)) / 1000.0);
  }

  v116 = v10;
  if (v6 > 0x15180)
  {
    v14 = 0.0;
    if (a3 > 0.0)
    {
      v14 = a2 * 86400.0 / a3;
    }

    v13 = v14 > v9;
  }

  else
  {
    v13 = v9 < a2;
  }

  if (!*(a1 + 336))
  {
    v37 = sub_3688();
    v15 = v37;
    if (v13)
    {
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v38 = *(a1 + 72);
      *&buf[24] = *(a1 + 80);
      *&buf[44] = v38;
      *&buf[54] = *&buf[24];
      v39 = *(a1 + 96);
      *&buf[64] = *(a1 + 88);
      v40 = *(a1 + 144);
      *&buf[74] = v39;
      v41 = *(a1 + 160);
      v126 = v40;
      v130 = v41;
      v42 = *(a1 + 176);
      v132 = *(a1 + 168);
      v44 = *(a1 + 192);
      v43 = *(a1 + 200);
      v134 = v42;
      v138 = v44;
      v45 = *(a1 + 208);
      v140 = v43;
      v47 = *(a1 + 224);
      v46 = *(a1 + 232);
      v142 = v45;
      v146 = v47;
      v48 = *(a1 + 240);
      v148 = v46;
      v150 = v48;
      v49 = *(a1 + 112);
      *&buf[84] = *(a1 + 104);
      v51 = *(a1 + 256);
      v50 = *(a1 + 264);
      *&buf[94] = v49;
      v154 = v51;
      v52 = *(a1 + 272);
      v156 = v50;
      v158 = v52;
      v162 = *(a1 + 288);
      v53 = *(a1 + 128);
      v120 = *(a1 + 120);
      v122 = v53;
      v124 = *(a1 + 136);
      v128 = *(a1 + 152);
      v136 = *(a1 + 184);
      v144 = *(a1 + 216);
      v152 = *(a1 + 248);
      v160 = *(a1 + 280);
      *&buf[12] = 2048;
      *&buf[22] = 2048;
      *&buf[32] = 2048;
      *&buf[42] = 2048;
      *&buf[52] = 2048;
      *&buf[62] = 2048;
      *&buf[72] = 2048;
      *&buf[82] = 2048;
      *&buf[92] = 2048;
      *&buf[102] = 2048;
      v121 = 2048;
      v123 = 2048;
      v125 = 2048;
      v127 = 2048;
      v129 = 2048;
      v131 = 2048;
      v133 = 2048;
      v135 = 2048;
      v137 = 2048;
      v139 = 2048;
      v141 = 2048;
      v143 = 2048;
      v145 = 2048;
      v147 = 2048;
      v149 = 2048;
      v151 = 2048;
      v153 = 2048;
      v155 = 2048;
      v157 = 2048;
      v159 = 2048;
      v161 = 2048;
      *buf = 134225920;
      *&buf[4] = a2;
      *&buf[14] = v6;
      *&buf[34] = v9;
      v36 = "Microstackshot datarate exceeded daily budget without PMI microstackshots: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
      v54 = v15;
      v55 = 322;
      goto LABEL_30;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v78 = *(a1 + 72);
    *&buf[24] = *(a1 + 80);
    *&buf[44] = v78;
    *&buf[54] = *&buf[24];
    v79 = *(a1 + 96);
    *&buf[64] = *(a1 + 88);
    v80 = *(a1 + 144);
    *&buf[74] = v79;
    v81 = *(a1 + 160);
    v126 = v80;
    v130 = v81;
    v82 = *(a1 + 176);
    v132 = *(a1 + 168);
    v84 = *(a1 + 192);
    v83 = *(a1 + 200);
    v134 = v82;
    v138 = v84;
    v85 = *(a1 + 208);
    v140 = v83;
    v87 = *(a1 + 224);
    v86 = *(a1 + 232);
    v142 = v85;
    v146 = v87;
    v88 = *(a1 + 240);
    v148 = v86;
    v150 = v88;
    v89 = *(a1 + 112);
    *&buf[84] = *(a1 + 104);
    v91 = *(a1 + 256);
    v90 = *(a1 + 264);
    *&buf[94] = v89;
    v154 = v91;
    v92 = *(a1 + 272);
    v156 = v90;
    v158 = v92;
    v162 = *(a1 + 288);
    v93 = *(a1 + 128);
    v120 = *(a1 + 120);
    v122 = v93;
    v124 = *(a1 + 136);
    v128 = *(a1 + 152);
    v136 = *(a1 + 184);
    v144 = *(a1 + 216);
    v152 = *(a1 + 248);
    v160 = *(a1 + 280);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v121 = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    *buf = 134225920;
    *&buf[4] = a2;
    *&buf[14] = v6;
    *&buf[34] = v9;
    v75 = "Microstackshot datarate did not exceed daily budget without PMI microstackshots: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
    v76 = v15;
    v77 = 322;
LABEL_23:
    _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, v75, buf, v77);
    goto LABEL_25;
  }

  if (!v13)
  {
    v15 = sub_3688();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *&buf[4] = *(a1 + 336);
    v56 = *(a1 + 80);
    *&buf[64] = *(a1 + 72);
    v57 = *(a1 + 128);
    *&buf[34] = v56;
    *&buf[74] = v56;
    v59 = *(a1 + 144);
    v58 = *(a1 + 152);
    v126 = v57;
    v130 = v59;
    v60 = *(a1 + 160);
    v132 = v58;
    v62 = *(a1 + 176);
    v61 = *(a1 + 184);
    v134 = v60;
    v138 = v62;
    v63 = *(a1 + 192);
    v140 = v61;
    v65 = *(a1 + 208);
    v64 = *(a1 + 216);
    v142 = v63;
    v146 = v65;
    v66 = *(a1 + 224);
    v148 = v64;
    v150 = v66;
    v67 = *(a1 + 96);
    *&buf[84] = *(a1 + 88);
    v69 = *(a1 + 240);
    v68 = *(a1 + 248);
    *&buf[94] = v67;
    v154 = v69;
    v70 = *(a1 + 256);
    v156 = v68;
    v72 = *(a1 + 272);
    v71 = *(a1 + 280);
    v158 = v70;
    v162 = v72;
    v73 = *(a1 + 288);
    v164 = v71;
    v166 = v73;
    v74 = *(a1 + 112);
    v120 = *(a1 + 104);
    v122 = v74;
    v124 = *(a1 + 120);
    v128 = *(a1 + 136);
    v136 = *(a1 + 168);
    v144 = *(a1 + 200);
    v152 = *(a1 + 232);
    v160 = *(a1 + 264);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v121 = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    v165 = 2048;
    *buf = 134226432;
    *&buf[14] = a2;
    *&buf[24] = v6;
    *&buf[44] = v9;
    *&buf[54] = v12;
    v75 = "Microstackshot datarate did not exceed daily budget with %llu cycle interval: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu, last adjustment %llus ago\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
    v76 = v15;
    v77 = 342;
    goto LABEL_23;
  }

  v15 = sub_3688();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v118)
  {
    if (!v16)
    {
      goto LABEL_25;
    }

    *&buf[4] = *(a1 + 336);
    v17 = *(a1 + 80);
    *&buf[64] = *(a1 + 72);
    v18 = *(a1 + 128);
    *&buf[34] = v17;
    *&buf[74] = v17;
    v20 = *(a1 + 144);
    v19 = *(a1 + 152);
    v126 = v18;
    v130 = v20;
    v21 = *(a1 + 160);
    v132 = v19;
    v23 = *(a1 + 176);
    v22 = *(a1 + 184);
    v134 = v21;
    v138 = v23;
    v24 = *(a1 + 192);
    v140 = v22;
    v26 = *(a1 + 208);
    v25 = *(a1 + 216);
    v142 = v24;
    v146 = v26;
    v27 = *(a1 + 224);
    v148 = v25;
    v150 = v27;
    v28 = *(a1 + 96);
    *&buf[84] = *(a1 + 88);
    v30 = *(a1 + 240);
    v29 = *(a1 + 248);
    *&buf[94] = v28;
    v154 = v30;
    v31 = *(a1 + 256);
    v156 = v29;
    v33 = *(a1 + 272);
    v32 = *(a1 + 280);
    v158 = v31;
    v162 = v33;
    v34 = *(a1 + 288);
    v164 = v32;
    v166 = v34;
    v35 = *(a1 + 112);
    v120 = *(a1 + 104);
    v122 = v35;
    v124 = *(a1 + 120);
    v128 = *(a1 + 136);
    v136 = *(a1 + 168);
    v144 = *(a1 + 200);
    v152 = *(a1 + 232);
    v160 = *(a1 + 264);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v121 = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    v165 = 2048;
    *buf = 134226432;
    *&buf[14] = a2;
    *&buf[24] = v6;
    *&buf[44] = v9;
    *&buf[54] = v12;
    v36 = "Microstackshot datarate exceeded daily budget with %llu cycle interval: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu, last adjustment %llus ago - Ignoring due to PMI interval pref override \ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
  }

  else
  {
    if (!v16)
    {
      goto LABEL_25;
    }

    *&buf[4] = *(a1 + 336);
    v96 = *(a1 + 80);
    *&buf[64] = *(a1 + 72);
    v97 = *(a1 + 128);
    *&buf[34] = v96;
    *&buf[74] = v96;
    v99 = *(a1 + 144);
    v98 = *(a1 + 152);
    v126 = v97;
    v130 = v99;
    v100 = *(a1 + 160);
    v132 = v98;
    v102 = *(a1 + 176);
    v101 = *(a1 + 184);
    v134 = v100;
    v138 = v102;
    v103 = *(a1 + 192);
    v140 = v101;
    v105 = *(a1 + 208);
    v104 = *(a1 + 216);
    v142 = v103;
    v146 = v105;
    v106 = *(a1 + 224);
    v148 = v104;
    v150 = v106;
    v107 = *(a1 + 96);
    *&buf[84] = *(a1 + 88);
    v109 = *(a1 + 240);
    v108 = *(a1 + 248);
    *&buf[94] = v107;
    v154 = v109;
    v110 = *(a1 + 256);
    v156 = v108;
    v112 = *(a1 + 272);
    v111 = *(a1 + 280);
    v158 = v110;
    v162 = v112;
    v113 = *(a1 + 288);
    v164 = v111;
    v166 = v113;
    v114 = *(a1 + 112);
    v120 = *(a1 + 104);
    v122 = v114;
    v124 = *(a1 + 120);
    v128 = *(a1 + 136);
    v136 = *(a1 + 168);
    v144 = *(a1 + 200);
    v152 = *(a1 + 232);
    v160 = *(a1 + 264);
    *&buf[12] = 2048;
    *&buf[22] = 2048;
    *&buf[32] = 2048;
    *&buf[42] = 2048;
    *&buf[52] = 2048;
    *&buf[62] = 2048;
    *&buf[72] = 2048;
    *&buf[82] = 2048;
    *&buf[92] = 2048;
    *&buf[102] = 2048;
    v121 = 2048;
    v123 = 2048;
    v125 = 2048;
    v127 = 2048;
    v129 = 2048;
    v131 = 2048;
    v133 = 2048;
    v135 = 2048;
    v137 = 2048;
    v139 = 2048;
    v141 = 2048;
    v143 = 2048;
    v145 = 2048;
    v147 = 2048;
    v149 = 2048;
    v151 = 2048;
    v153 = 2048;
    v155 = 2048;
    v157 = 2048;
    v159 = 2048;
    v161 = 2048;
    v163 = 2048;
    v165 = 2048;
    *buf = 134226432;
    *&buf[14] = a2;
    *&buf[24] = v6;
    *&buf[44] = v9;
    *&buf[54] = v12;
    v36 = "Microstackshot datarate exceeded daily budget with %llu cycle interval: %llu bytes written over the last %llus (%llu uncompressed), cleanup quota %llu, last adjustment %llus ago\ntotal     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ninterrupt count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\ntimer     count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nio        count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\npmi       count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nmacf      count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n\nunknown   count         %llu\n          size          %llu\n          num_loadinfos %llu\n          num_frames    %llu\n";
  }

  v54 = v15;
  v55 = 342;
LABEL_30:
  _os_log_error_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, v36, buf, v55);
LABEL_25:

  v94 = sub_3688();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111424;
    *&buf[4] = v13;
    *&buf[8] = 2048;
    *&buf[10] = v9;
    *&buf[18] = 2048;
    *&buf[20] = a2;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    *&buf[38] = 2048;
    *&buf[40] = v8;
    *&buf[48] = 2048;
    *&buf[50] = v117;
    *&buf[58] = 2048;
    *&buf[60] = v116;
    *&buf[68] = 2048;
    *&buf[70] = v115;
    *&buf[78] = 2048;
    *&buf[80] = pmi_cycle_interval;
    *&buf[88] = 2048;
    *&buf[90] = v12;
    _os_log_impl(&dword_0, v94, OS_LOG_TYPE_DEFAULT, "Quota telemetry - exceeded_quota:%d quota:%llu bytes_written:%llu time_since_last_cleanup_s:%llus ratio_pmi:%.2f num_interval_increases:%llu num_interval_decreases:%llu ending_pmi_interval:%llu default_pmi_interval:%llu time_since_last_adjustment_s:%llus", buf, 0x62u);
  }

  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_718C;
  *&buf[24] = &unk_10670;
  *&buf[32] = v13 | (v118 << 8);
  *&buf[40] = v9;
  *&buf[48] = a2;
  *&buf[56] = v6;
  *&buf[64] = v8;
  *&buf[72] = v117;
  *&buf[80] = v116;
  *&buf[88] = v115;
  *&buf[96] = pmi_cycle_interval;
  v120 = v12;
  return analytics_send_event_lazy();
}

void sub_6B90(id a1)
{
  qword_10C38 = os_log_create("com.apple.systemstats", "internal_calculations");

  _objc_release_x1();
}

void sub_6BD4(id a1)
{
  if (snprintf(__str, 0x80uLL, "%s%s", "IODeviceTree", ":/arm-io/pmgr") >= 0x81)
  {
    v1 = sub_3688();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_95C8();
    }

LABEL_26:

    return;
  }

  v2 = IORegistryEntryFromPath(kIOMainPortDefault, __str);
  if (!v2)
  {
    v1 = sub_3688();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_958C();
    }

    goto LABEL_26;
  }

  v3 = v2;
  v4 = 0;
  for (i = 0; i != 5; ++i)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v3, off_10648[i], kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      v11 = sub_3688();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
LABEL_15:

        continue;
      }

      *buf = 134217984;
      v17 = i;
      v12 = v11;
      v13 = "Unable to determine min cpu %zu frequency (3)";
LABEL_19:
      _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, v13, buf, 0xCu);
      goto LABEL_15;
    }

    v7 = CFProperty;
    v8 = *CFDataGetBytePtr(CFProperty);
    CFRelease(v7);
    if (!v8)
    {
      v11 = sub_3688();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v17 = i;
      v12 = v11;
      v13 = "Unable to determine min cpu %zu frequency (4)";
      goto LABEL_19;
    }

    v9 = 0x3E80000 / v8;
    v10 = sub_3688();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v17 = i;
      v18 = 1024;
      v19 = v9;
      _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Min cpu %zu frequency is %dMHz", buf, 0x12u);
    }

    if (v4 - 1 >= v9)
    {
      v4 = v9;
    }
  }

  IOObjectRelease(v3);
  v14 = sub_3688();
  v15 = v14;
  if (v4)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_94E0();
    }

    qword_10BE0 = 1000000 * v4;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_9550();
    }
  }
}

void *sub_6EC8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 72) + *(a1 + 48) + *(a1 + 88);
    v5 = v4 + *(a1 + 56);
    xpc_dictionary_set_uint64(v2, "num_pmi_microstackshots_pmi_triggers", v5);
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_skipped", *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_generated", v4);
    if (v5)
    {
      v6 = 10000 * *(a1 + 56) / v5;
    }

    else
    {
      v6 = 0;
    }

    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_skipped_per10000", v6);
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_captured", *(a1 + 48));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains", *(a1 + 72));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_inside_drains", *(a1 + 88));
    if (v4)
    {
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_captured_per10000", 10000 * *(a1 + 48) / v4);
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains_per10000", 10000 * *(a1 + 72) / v4);
      v8 = 10000 * *(a1 + 88) / v4;
    }

    else
    {
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_captured_per10000", 0);
      xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains_per10000", 0);
      v8 = 0;
    }

    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_inside_drains_per10000", v8);
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_not_generated", *(a1 + 64));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_between_drains_max_at_once", *(a1 + 80));
    xpc_dictionary_set_uint64(v3, "num_pmi_microstackshots_lost_inside_drains_max_at_once", *(a1 + 96));
    xpc_dictionary_set_uint64(v3, "pmi_interval", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "time_since_last_adjustment", *(a1 + 40));
    xpc_dictionary_set_BOOL(v3, "pmi_configuration_failure", *(a1 + 105));
    xpc_dictionary_set_BOOL(v3, "pmi_microstackshots_wrong_source", *(a1 + 106));
    xpc_dictionary_set_BOOL(v3, "pmi_microstackshots_wrong_interval", *(a1 + 107));
    xpc_dictionary_set_BOOL(v3, "pmi_microstackshots_unexpected_configuration_change", *(a1 + 108));
    xpc_dictionary_set_BOOL(v3, "bad_cpu_time", *(a1 + 109));
    xpc_dictionary_set_BOOL(v3, "bad_samples_recorded", *(a1 + 110));
    xpc_dictionary_set_BOOL(v3, "bad_samples_skipped", *(a1 + 111));
    xpc_dictionary_set_BOOL(v3, "had_pref_override", *(a1 + 104));
    v9 = v3;
  }

  else
  {
    v7 = sub_3688();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_9604();
    }
  }

  return v3;
}

void *sub_718C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_string(v2, "type", "pmi");
    xpc_dictionary_set_BOOL(v3, "exceeded_quota", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "bytes_written", *(a1 + 48));
    xpc_dictionary_set_uint64(v3, "cleanup_quota", *(a1 + 40));
    xpc_dictionary_set_double(v3, "time_since_last_cleanup", *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "default_interval", *(a1 + 96));
    xpc_dictionary_set_uint64(v3, "ending_interval", *(a1 + 88));
    xpc_dictionary_set_uint64(v3, "num_interval_increases", *(a1 + 72));
    xpc_dictionary_set_uint64(v3, "num_interval_decreases", *(a1 + 80));
    xpc_dictionary_set_uint64(v3, "time_since_last_adjustment", *(a1 + 104));
    xpc_dictionary_set_double(v3, "ratio_pmi", *(a1 + 64));
    xpc_dictionary_set_BOOL(v3, "had_pref_override", *(a1 + 33));
    v4 = v3;
  }

  else
  {
    v5 = sub_3688();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_9638();
    }
  }

  return v3;
}

void sub_72FC(uint64_t a1)
{
  v2 = sub_3688();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_966C();
  }

  sub_4EE8(a1);
  sub_4F54(a1, 0);
}

void sub_7370(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_73BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_73F4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_7430(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

BOOL sub_7458(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t sub_7470()
{

  return _os_assumes_log();
}

void sub_7488()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_74D8()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7514()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7550()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_75C0()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_7644()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_76B4()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_773C(void *a1, uint64_t a2)
{
  sub_52B4(a2 - *a1);
  sub_73DC();
  sub_7360();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_77C4()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7800()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_7D2C()
{
  sub_7398();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_81EC(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_744C();
  sub_7370(&dword_0, v2, v3, "PMI adjustment: Not enough microstackshots to have written to disk yet (%llu uncompressed), not checking daily budget", v4, v5, v6, v7, v8);
}

void sub_8258()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8294()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_82D0()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_830C()
{
  sub_7470();
  v2 = sub_3688();
  if (sub_7458(v2))
  {
    sub_73BC(&dword_0, v3, v4, "failed to allocate a mach port", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void sub_8364()
{
  sub_7470();
  v2 = sub_3688();
  if (sub_7458(v2))
  {
    sub_73BC(&dword_0, v3, v4, "failed to insert send right", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void sub_83BC()
{
  sub_7470();
  v2 = sub_3688();
  if (sub_7458(v2))
  {
    sub_73BC(&dword_0, v3, v4, "failed to bind host special port", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void sub_8414()
{
  sub_7470();
  v2 = sub_3688();
  if (sub_7458(v2))
  {
    sub_73BC(&dword_0, v3, v4, "failed to set context for inbound notifications on the mach port", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

void sub_846C()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_84A8()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_84E4()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8520()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_855C()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_85E0()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_8664()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_7360();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_8704()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_8788()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_87C4()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8800()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_883C()
{
  sub_7398();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_88AC()
{
  sub_7398();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_891C(uint64_t *a1)
{
  v6 = *a1;
  v7 = *__error();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_89B4()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_8A38()
{
  v0 = *__error();
  sub_73E8();
  sub_7360();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_8AD0()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8B0C(uint64_t *a1)
{
  v1 = *a1;
  sub_744C();
  sub_73B0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_8B80()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8BF0()
{
  _os_assumes_log();
  v0 = sub_3688();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "failed to set context for inbound notifications on the mach port", v1, 2u);
  }
}

void sub_8C64()
{
  sub_7424();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_8CD4()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8FE8()
{
  sub_7398();
  sub_7414();
  sub_73F4(&dword_0, v0, v1, "pmi_samples_recorded went backwards %llu -> %llu", v2, v3);
}

void sub_90BC()
{
  sub_7398();
  sub_7414();
  sub_73F4(&dword_0, v0, v1, "pmi_samples_skipped went backwards %llu -> %llu", v2, v3);
}

void sub_93C8()
{
  sub_7398();
  sub_7414();
  sub_73F4(&dword_0, v0, v1, "host_cpu_time_ns went backwards %llu -> %llu", v2, v3);
}

void sub_9468()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_94A4()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_94E0()
{
  sub_7424();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_9550()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_958C()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_95C8()
{
  sub_73A4();
  sub_73B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_966C()
{
  sub_73A4();
  sub_738C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_96A8(uint64_t a1)
{
  *(a1 + 4);
  sub_744C();
  v4 = 1024;
  v5 = v1;
  _os_log_fault_impl(&dword_0, v2, OS_LOG_TYPE_FAULT, "PMI %s microstackshot wrong source %d", v3, 0x12u);
}