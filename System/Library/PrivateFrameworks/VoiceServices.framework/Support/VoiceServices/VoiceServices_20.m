uint64_t sub_1000D85B4(const char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5)
{
  printf("Warning in %s on line %d: ", a1, a2);
  printf(a3, a4, a5);

  return putchar(10);
}

uint64_t sub_1000D8638(uint64_t a1)
{
  qword_100106458 = mach_absolute_time();
  *a1 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = @"Express";
  *(a1 + 40) = 31;
  *(a1 + 48) = sub_1000DE52C;
  *(a1 + 56) = sub_1000DE4CC;
  *(a1 + 64) = sub_1000DC704;
  *(a1 + 72) = sub_1000DC664;
  *(a1 + 80) = sub_1000DC3D0;
  *(a1 + 88) = sub_1000DB97C;
  *(a1 + 96) = sub_1000DB7B4;
  *(a1 + 104) = sub_1000DB5FC;
  *(a1 + 112) = sub_1000DB59C;
  *(a1 + 120) = sub_1000DAF48;
  *(a1 + 128) = sub_1000DAC74;
  *(a1 + 136) = sub_1000DA8D0;
  *(a1 + 144) = sub_1000DA720;
  *(a1 + 152) = sub_1000D87A8;
  *(a1 + 160) = sub_1000D8774;
  return 0;
}

void sub_1000D8774(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 96) = 0;
    }
  }
}

__CFArray *sub_1000D87A8(uint64_t **a1, const __CFSet *a2)
{
  v13 = 0;
  v14 = 0;
  cf = 0;
  v12 = 0;
  sub_1000D89A8(a1, a2, v23, &v12, &v14, &cf);
  NSPushAutoreleasePool();
  v3 = sub_1000D8BE0();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v13 < 1;
  }

  if (!v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "beginning re-recognition\n", buf, 2u);
    }

    if (*a1)
    {
      v6 = **a1;
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_10004AE3C(v6, v13);
    if (v7)
    {
      v8 = v7;
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v16 = v8;
        v17 = 2080;
        v18 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
        v19 = 1024;
        v20 = 2528;
        v21 = 2080;
        v22 = "re-recognizing";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", buf, 0x22u);
      }

      v3 = 0;
    }

    else
    {
      v3 = sub_1000D8BE0();
    }
  }

  NSPopAutoreleasePool();
  if (v12 && v12 != v23)
  {
    free(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_1000D89A8(void **a1, CFSetRef theSet, void *a3, void *a4, void *a5, CFMutableDictionaryRef *a6)
{
  Count = CFSetGetCount(theSet);
  v13 = Count;
  v14 = a3;
  if (Count >= 17)
  {
    v14 = malloc_type_malloc(4 * Count, 0x100004052888210uLL);
  }

  if (a6)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    Mutable = 0;
  }

  v21[0] = 0;
  v21[1] = v14;
  v16 = *a1;
  if (*a1)
  {
    v16 = *v16;
  }

  v21[2] = Mutable;
  v21[3] = v16;
  CFSetApplyFunction(theSet, sub_1000DA5B8, v21);
  v17 = v21[0];
  if (v21[0] == v13)
  {
    goto LABEL_11;
  }

  v18 = VSGetLogDefault();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (v17)
  {
    if (v19)
    {
      *buf = 136315394;
      v23 = "_VSElvisGetConstraintsFromModels";
      v24 = 2048;
      v25 = v13 - v21[0];
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: couldn't convert %ld models to constraints\n", buf, 0x16u);
      if (a4)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }

LABEL_11:
    if (a4)
    {
LABEL_12:
      *a4 = v14;
LABEL_25:
      if (a5)
      {
        *a5 = v21[0];
      }

      result = 0;
      if (a6)
      {
        *a6 = Mutable;
      }

      return result;
    }

LABEL_23:
    if (v14 != a3)
    {
      free(v14);
    }

    goto LABEL_25;
  }

  if (v19)
  {
    *buf = 136315138;
    v23 = "_VSElvisGetConstraintsFromModels";
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: couldn't convert any models to constraints\n", buf, 0xCu);
  }

  if (v14 != a3)
  {
    free(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 4294963295;
}

__CFArray *sub_1000D8BE0()
{
  v0 = __chkstk_darwin();
  theDict = v2;
  v154 = v1;
  v155 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v148 = v10;
  v11 = v0;
  v173 = 0;
  v172 = 0;
  *&key[1] = 0;
  key[0] = -1;
  cf1 = 0;
  v169 = 0;
  v166 = 0;
  cf = 0;
  memset(v176, 0, 512);
  v12 = *v0;
  if (*v0)
  {
    v13 = v12[12];
    v14 = *v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v171 = 0;
  v165 = 0;
  v15 = sub_10004A4F0(v14, &v172, &v171);
  if (v15)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v178 = 67109890;
      v179 = v15;
      v180 = 2080;
      v181 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v182 = 1024;
      v183 = 2211;
      v184 = 2080;
      v185 = "couldn't get choices";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", &v178, 0x22u);
    }

    v17 = v5 != 0;
LABEL_10:
    v147 = v17;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_26:
    v19 = 0;
    v20 = 0;
    goto LABEL_35;
  }

  if (v5)
  {
    *v5 = v172;
    v17 = 1;
    goto LABEL_10;
  }

  v147 = 0;
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_11:
  if (v9)
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v13);
    v19 = MutableCopy;
    if (MutableCopy)
    {
      CFStringAppend(MutableCopy, v9);
      v20 = v19;
      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = v13;
      if (!v7)
      {
        goto LABEL_35;
      }
    }

LABEL_18:
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v178) = 0;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "dumping debug information...", &v178, 2u);
    }

    if (CFStringGetFileSystemRepresentation(v20, v186, 1024))
    {
      if (*v11)
      {
        v22 = **v11;
      }

      else
      {
        v22 = 0;
      }

      v25 = sub_1000D60F0(v22, v186, 1);
      v23 = VSGetLogDefault();
      v26 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v178 = 67109120;
        v179 = v25;
        v24 = "couldn't dump recognition (error %d)\n";
        v27 = v23;
        v28 = 8;
        goto LABEL_34;
      }

      if (!v26)
      {
        goto LABEL_35;
      }

      LOWORD(v178) = 0;
      v24 = "dump complete\n";
    }

    else
    {
      v23 = VSGetLogDefault();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      LOWORD(v178) = 0;
      v24 = "couldn't convert dump path\n";
    }

    v27 = v23;
    v28 = 2;
LABEL_34:
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, v24, &v178, v28);
    goto LABEL_35;
  }

  v19 = 0;
  v20 = v13;
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_35:
  v29 = VSGetLogDefault();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v178 = 67109376;
    v179 = v172;
    v180 = 1024;
    LODWORD(v181) = v171;
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%d choices, first choice confidence %d\n", &v178, 0xEu);
  }

  v30 = v172;
  v146 = v19;
  if (v148 != 1 || v172 < 2)
  {
    goto LABEL_53;
  }

  if (*v11)
  {
    v31 = **v11;
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_10004AE3C(v31, v172);
  if (v32)
  {
    v33 = v32;
    v34 = VSGetLogDefault();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v178 = 67109890;
      v179 = v33;
      v180 = 2080;
      v181 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v182 = 1024;
      v183 = 2259;
      v184 = 2080;
      v185 = "couldn't rerecognize choice list";
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", &v178, 0x22u);
    }

    v15 = 1;
LABEL_249:
    theString2 = 0;
    v125 = 0;
    v161 = 0;
    v124 = v15 != 0;
    if (!v20)
    {
      goto LABEL_246;
    }

    goto LABEL_250;
  }

  if (*v11)
  {
    v35 = **v11;
  }

  else
  {
    v35 = 0;
  }

  v15 = sub_10004A4F0(v35, &v172, &v171);
  if (v15)
  {
    v36 = VSGetLogDefault();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v178 = 67109890;
      v179 = v15;
      v180 = 2080;
      v181 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v182 = 1024;
      v183 = 2263;
      v184 = 2080;
      v185 = "couldn't get choices";
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", &v178, 0x22u);
    }
  }

  v37 = VSGetLogDefault();
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
  v30 = v172;
  if (v38)
  {
    v178 = 67109376;
    v179 = v172;
    v180 = 1024;
    LODWORD(v181) = v171;
    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%d rerec choices, first choice confidence %d\n", &v178, 0xEu);
    v30 = v172;
    if (v15)
    {
      goto LABEL_249;
    }
  }

  else
  {
LABEL_53:
    if (v15)
    {
      goto LABEL_249;
    }
  }

  if (v30 < 1)
  {
    goto LABEL_249;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  theString2 = 0;
  cf2 = 0;
  v143 = 0;
  v150 = v5;
  do
  {
    if (v39)
    {
      v42 = key[2] <= v41 ? v41 - key[2] < 3 : key[2] - v41 < 3;
      if (!v42 && v20 == 0)
      {
        v124 = 0;
        v125 = cf2;
        goto LABEL_247;
      }
    }

    v163 = v41;
    if (*v11)
    {
      v44 = **v11;
    }

    else
    {
      v44 = 0;
    }

    v45 = sub_100049AC4(v44, v40, 1024, v177, &v166, &key[2], &key[1], v176, key);
    if (v45)
    {
      v46 = VSGetLogDefault();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v195 = 67109890;
        *&v195[4] = v45;
        *&v195[8] = 2080;
        *&v195[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
        v196 = 1024;
        v197 = 2272;
        v198 = 2080;
        v199 = "couldn't get choice phrase";
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", v195, 0x22u);
      }
    }

    v165 = 0;
    v41 = v163;
    if (!v39)
    {
      goto LABEL_76;
    }

    if (key[2] <= v163)
    {
      if (v163 - key[2] >= 3)
      {
LABEL_75:
        if (!v20)
        {
          goto LABEL_206;
        }
      }
    }

    else if (key[2] - v163 >= 3)
    {
      goto LABEL_75;
    }

LABEL_76:
    v47 = v166;
    if (v166 >= 1025)
    {
      v47 = 1024;
      LODWORD(v166) = 1024;
    }

    if (v45 || v47 < 1)
    {
      goto LABEL_206;
    }

    if (key[0] == -1)
    {
      v45 = 0;
      goto LABEL_206;
    }

    Value = CFDictionaryGetValue(theDict, key[0]);
    if (!Value)
    {
      v45 = 0;
      goto LABEL_205;
    }

    v159 = Value;
    v49 = *(Value + 2);
    v152 = v49;
    if (v49)
    {
      CFRetain(v49);
      v157 = CFStringGetLength(v49) + 1;
    }

    else
    {
      v157 = 0;
    }

    cf1 = 0;
    v169 = 0;
    if (v166 < 1)
    {
      v45 = 0;
      goto LABEL_199;
    }

    v156 = v40;
    v50 = 0;
    v51 = 0;
    v160 = v39;
    while (1)
    {
      v52 = v177[v50];
      if (v52 == -1)
      {
        goto LABEL_95;
      }

      if (*v11)
      {
        v53 = **v11;
      }

      else
      {
        v53 = 0;
      }

      v54 = v176[v50];
      v55 = sub_1000426E0(v53, v54, v52, 1024, v195);
      if (v55)
      {
        v56 = v55;
        v57 = VSGetLogDefault();
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        v187 = 67109890;
        v188 = v56;
        v189 = 2080;
        v190 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
        v191 = 1024;
        v192 = 1985;
        v193 = 2080;
        v194 = "converting phrase id to text\n";
        v91 = v57;
        v92 = "Error %d at %s:%d (%s)\n";
        v93 = 34;
LABEL_143:
        _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, v92, &v187, v93);
        goto LABEL_95;
      }

      if (!*v195)
      {
        v90 = VSGetLogDefault();
        if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        LOWORD(v187) = 0;
        v91 = v90;
        v92 = "word has zero length!\n";
        v93 = 2;
        goto LABEL_143;
      }

      v60 = 1;
      do
      {
        v61 = v60;
      }

      while (*&v195[2 * v60++]);
      v63 = CFStringCreateWithCharacters(kCFAllocatorDefault, v195, v61);
      if (v63)
      {
        Mutable = v63;
        sub_1000DA21C(v159, v54, v157, &v169, &cf1, v63);
        v65 = v50 + 1;
LABEL_136:
        CFRelease(Mutable);
        goto LABEL_138;
      }

LABEL_95:
      v58 = *v11;
      if (v51)
      {
        goto LABEL_114;
      }

      if (v58)
      {
        v59 = *v58;
      }

      else
      {
        v59 = 0;
      }

      v40 = v156;
      v66 = sub_1000496AC(v59, v156, 1024, 0, &v178, &v166 + 1, &key[2], &key[1]);
      if (v66)
      {
        v67 = v66;
        v68 = VSGetLogDefault();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *v195 = 67109890;
          *&v195[4] = v67;
          *&v195[8] = 2080;
          *&v195[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
          v196 = 1024;
          v197 = 2316;
          v198 = 2080;
          v199 = "couldn't get choice";
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", v195, 0x22u);
        }
      }

      v69 = HIDWORD(v166);
      if (SHIDWORD(v166) >= 1025)
      {
        v69 = 1024;
        HIDWORD(v166) = 1024;
      }

      v70 = *v11 ? **v11 : 0;
      v71 = sub_10004304C(v70, v155, v154, v69, &v178, key, v176, v175, v174, &v165, 0);
      if (v71)
      {
        break;
      }

      v58 = *v11;
LABEL_114:
      v65 = v50 + 1;
      v72 = &v166 + 1;
      if (v50 < v165 - 1)
      {
        v72 = &v175[v50 + 1];
      }

      if (v58)
      {
        v73 = *v58;
      }

      else
      {
        v73 = 0;
      }

      v74 = v175[v50];
      v75 = *v72 - v74;
      if (v75 >= 1)
      {
        v76 = v20;
        v77 = v11;
        Mutable = 0;
        v78 = 0;
        __s = v176[v50];
        v79 = &v178 + v74;
        while (1)
        {
          v80 = sub_10004E6AC(v73, v79[v78], 1024, v195);
          if (v80)
          {
            v84 = v80;
            v85 = VSGetLogDefault();
            if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_134;
            }

            v187 = 67109890;
            v188 = v84;
            v189 = 2080;
            v190 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
            v191 = 1024;
            v192 = 2005;
            v193 = 2080;
            v194 = "word surface form\n";
            v86 = v85;
            v87 = "Error %d at %s:%d (%s)\n";
            v88 = 34;
            goto LABEL_145;
          }

          if (!*v195)
          {
            break;
          }

          v81 = 1;
          do
          {
            v82 = v81;
          }

          while (*&v195[2 * v81++]);
          if (Mutable)
          {
            CFStringAppend(Mutable, @" ");
          }

          else
          {
            Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
          }

          CFStringAppendCharacters(Mutable, v195, v82);
          if (++v78 == v75)
          {
            goto LABEL_134;
          }
        }

        v89 = VSGetLogDefault();
        if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_134;
        }

        LOWORD(v187) = 0;
        v86 = v89;
        v87 = "word has zero length!\n";
        v88 = 2;
LABEL_145:
        _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, v87, &v187, v88);
LABEL_134:
        v20 = v76;
        if (!Mutable)
        {
          v51 = 1;
          v11 = v77;
          v39 = v160;
          goto LABEL_138;
        }

        sub_1000DA21C(v159, __s, v157, &v169, &cf1, Mutable);
        v51 = 1;
        v11 = v77;
        v39 = v160;
        goto LABEL_136;
      }

      v51 = 1;
LABEL_138:
      v50 = v65;
      if (v65 >= v166)
      {
        v45 = 0;
        v5 = v150;
        v40 = v156;
        goto LABEL_150;
      }
    }

    v45 = v71;
    v94 = VSGetLogDefault();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *v195 = 67109890;
      *&v195[4] = v45;
      *&v195[8] = 2080;
      *&v195[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v196 = 1024;
      v197 = 2323;
      v198 = 2080;
      v199 = "finding matched classes";
      _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", v195, 0x22u);
    }

    v5 = v150;
LABEL_150:
    if (!v169)
    {
      goto LABEL_199;
    }

    if (!cf1)
    {
      goto LABEL_199;
    }

    v95 = VSRecognitionResultCreate();
    cf = v95;
    if (!v95)
    {
      goto LABEL_199;
    }

    v96 = CFRetain(v95);
    v97 = v159[71];
    if (v97)
    {
      Count = CFArrayGetCount(v97);
      v99 = v159;
      if (cf)
      {
        v100 = Count;
        if (Count >= 1)
        {
          v158 = v96;
          v101 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v99[71], v101);
            v103 = ValueAtIndex;
            v104 = cf;
            *v195 = 0;
            if (cf)
            {
              PhraseCount = VSRecognitionResultGetPhraseCount();
              v106 = sub_1000EB640(v103, v104, v195, PhraseCount);
            }

            else
            {
              v106 = sub_1000EB640(ValueAtIndex, 0, v195, 0);
              PhraseCount = 0;
            }

            v107 = v101 + 1;
            if (v106)
            {
              v108 = *v195 < PhraseCount;
            }

            else
            {
              v108 = 1;
            }

            v109 = v108;
            ++v101;
            v110 = v109 == 1 && v107 < v100;
            v99 = v159;
          }

          while (v110);
          v5 = v150;
          v40 = v156;
          v96 = v158;
          if (!v109)
          {
            v117 = v159[75];
            if (v117)
            {
              v118 = v117(v159, &cf, 0, v159[82]) != 0;
            }

            else
            {
              v118 = 1;
            }

            if (!v118 || !cf)
            {
              goto LABEL_173;
            }

            if (v39)
            {
              v122 = v163;
              if (key[2] <= v163)
              {
                if (v163 - key[2] > 2)
                {
                  goto LABEL_238;
                }
              }

              else if (key[2] - v163 >= 3)
              {
                goto LABEL_238;
              }

              if (!theString2 || !v152 || !cf2 || !cf1)
              {
LABEL_238:
                v163 = v122;
                if (v20)
                {
                  sub_1000DA450(cf, v158, key[2], 1, &v173);
                }

                goto LABEL_196;
              }

              if (CFStringCompare(v152, theString2, 0) == kCFCompareEqualTo && CFEqual(cf1, cf2))
              {
                CFArrayAppendValue(v39, cf);
              }
            }

            else if (v148 && v156 | v143)
            {
              v39 = 0;
            }

            else
            {
              v39 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
              CFArrayAppendValue(v39, cf);
              v123 = v163;
              if (!v156)
              {
                v123 = key[2];
              }

              v163 = v123;
              if (v152)
              {
                CFRetain(v152);
              }

              if (cf1)
              {
                cf2 = cf1;
                CFRetain(cf1);
              }

              else
              {
                cf2 = 0;
              }

              theString2 = v152;
            }

            v122 = v163;
            goto LABEL_238;
          }
        }
      }
    }

    v111 = VSGetLogDefault();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
    {
      *v195 = 0;
      _os_log_debug_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEBUG, "result did not parse through sequences - rejecting\n", v195, 2u);
    }

LABEL_173:
    if (*v11)
    {
      v112 = **v11;
    }

    else
    {
      v112 = 0;
    }

    v113 = sub_100049F70(v112, v40);
    if (v113)
    {
      v45 = v113;
      v114 = VSGetLogDefault();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        *v195 = 67109890;
        *&v195[4] = v45;
        *&v195[8] = 2080;
        *&v195[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
        v196 = 1024;
        v197 = 2380;
        v198 = 2080;
        v199 = "discarding choice";
        v115 = v114;
        goto LABEL_187;
      }
    }

    else
    {
      if (*v11)
      {
        v116 = **v11;
      }

      else
      {
        v116 = 0;
      }

      v45 = sub_10004A4F0(v116, &v172, &v171);
      if (v45)
      {
        v119 = VSGetLogDefault();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          *v195 = 67109890;
          *&v195[4] = v45;
          *&v195[8] = 2080;
          *&v195[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
          v196 = 1024;
          v197 = 2384;
          v198 = 2080;
          v199 = "getting new choice count";
          v115 = v119;
LABEL_187:
          _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", v195, 0x22u);
        }
      }

      else
      {
        --v40;
      }
    }

    v120 = VSGetLogDefault();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
    {
      *v195 = 0;
      _os_log_debug_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEBUG, "discarding invalid result:\n ", v195, 2u);
    }

    if (cf && (v121 = VSGetLogDefault(), os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG)))
    {
      *v195 = 138412290;
      *&v195[4] = cf;
      _os_log_debug_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEBUG, "%@", v195, 0xCu);
      if (v20)
      {
LABEL_194:
        sub_1000DA450(cf, v96, key[2], 0, &v173);
      }
    }

    else if (v20)
    {
      goto LABEL_194;
    }

    v143 = 1;
LABEL_196:
    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v96);
LABEL_199:
    if (v169)
    {
      CFRelease(v169);
    }

    if (cf1)
    {
      CFRelease(cf1);
    }

    if (v152)
    {
      CFRelease(v152);
    }

LABEL_205:
    v41 = v163;
LABEL_206:
    if (v45)
    {
      break;
    }

    ++v40;
  }

  while (v40 < v172);
  v124 = v45 != 0;
  if (v45 && v39)
  {
    CFRelease(v39);
    v161 = 0;
    v124 = 1;
  }

  else
  {
    v161 = v39;
  }

  v125 = cf2;
  if (v20)
  {
LABEL_250:
    alloc = v124;
    cf2a = v125;
    v151 = v5;
    v127 = v20;
    v128 = v173;
    v129 = v11[2];
    v187 = v171;
    *v195 = v129;
    v130 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v131 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v187);
    v132 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat64Type, v195);
    v133 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@results.%@", v127, kVSLogBundlePlistExtension);
    v134 = +[AVAudioSession sharedInstance];
    v135 = [v134 currentRoute];

    v136 = [v135 inputs];
    if ([v136 count])
    {
      v137 = [v136 objectAtIndex:0];
    }

    else
    {
      v137 = 0;
    }

    v138 = [v137 portType];

    pthread_once(&stru_1001014F0, sub_1000EB5D8);
    if (qword_100106598)
    {
      CFRetain(qword_100106598);
      v139 = qword_100106598;
    }

    else
    {
      v139 = 0;
    }

    v5 = v151;
    v140 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v133, kCFURLPOSIXPathStyle, 0);
    v141 = CFWriteStreamCreateWithFile(kCFAllocatorDefault, v140);
    if (v128)
    {
      CFDictionarySetValue(v130, @"results", v128);
    }

    CFDictionarySetValue(v130, @"top-confidence", v131);
    CFDictionarySetValue(v130, @"sample-rate", v132);
    CFRelease(v131);
    CFRelease(v132);
    if (v138)
    {
      CFDictionarySetValue(v130, @"route", v138);
      CFRelease(v138);
    }

    v19 = v146;
    v126 = theString2;
    if (v139)
    {
      CFDictionarySetValue(v130, @"version", v139);
      CFRelease(v139);
    }

    if (v141)
    {
      v124 = alloc;
      if (CFWriteStreamOpen(v141))
      {
        CFPropertyListWrite(v130, v141, kCFPropertyListXMLFormat_v1_0, 0, 0);
        CFWriteStreamClose(v141);
      }

      CFRelease(v133);
      CFRelease(v140);
      CFRelease(v130);
      CFRelease(v141);
    }

    else
    {
      CFRelease(v133);
      CFRelease(v140);
      CFRelease(v130);
      v124 = alloc;
    }

    v39 = v161;
    v125 = cf2a;
    goto LABEL_268;
  }

LABEL_246:
  v39 = v161;
LABEL_247:
  v126 = theString2;
LABEL_268:
  if (v173)
  {
    CFRelease(v173);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v125)
  {
    CFRelease(v125);
  }

  if (v147 && v124)
  {
    *v5 = 0;
  }

  return v39;
}

void sub_1000DA21C(uint64_t a1, char *__s, int64_t a3, CFMutableArrayRef *a4, CFMutableArrayRef *a5, const void *ValueAtIndex)
{
  v12 = strlen(__s);
  if (v12 > a3)
  {
    v13 = v12 - 1;
    while (__s[v12 - 1] != 35)
    {
      if (--v12 <= a3)
      {
        goto LABEL_7;
      }
    }

    v13 = v12 - 2;
LABEL_7:
    v14 = CFStringCreateWithBytes(kCFAllocatorDefault, &__s[a3], v13 - a3 + 1, 0x8000100u, 0);
    if (v14)
    {
      v15 = v14;
      v16 = sub_1000E7E18(*(a1 + 560), v14);
      if (!v16)
      {
        v22 = VSGetLogDefault();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315394;
          v24 = "_AddPhraseStringToResults";
          v25 = 2080;
          v26 = __s;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: couldn't find class with identifier '%s'\n", &v23, 0x16u);
        }

        goto LABEL_26;
      }

      v17 = v16;
      v18 = *(a1 + 616);
      if (v18)
      {
        v19 = v18(a1, v16, ValueAtIndex, *(a1 + 656));
        v20 = v19;
        if (v19)
        {
          if (CFArrayGetCount(v19) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
          }

          v21 = 0;
          if (!a4)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = 1;
      if (!a4)
      {
LABEL_21:
        if (a5 && !*a5)
        {
          *a5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        }

        CFArrayAppendValue(*a4, ValueAtIndex);
        CFArrayAppendValue(*a5, v15);
        CFRelease(v17);
        if ((v21 & 1) == 0)
        {
          CFRelease(v20);
        }

LABEL_26:
        CFRelease(v15);
        return;
      }

LABEL_19:
      if (!*a4)
      {
        *a4 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      }

      goto LABEL_21;
    }
  }
}

void sub_1000DA450(uint64_t a1, uint64_t a2, int a3, int a4, __CFArray **a5)
{
  valuePtr = a3;
  DictionaryRepresentation = VSRecognitionResultCreateDictionaryRepresentation();
  if (a2 == a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = VSRecognitionResultCreateDictionaryRepresentation();
  }

  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v12 = v11;
  *keys = *&off_1000FE4F8;
  v20 = *&off_1000FE508;
  v13 = &kCFBooleanTrue;
  if (!a4)
  {
    v13 = &kCFBooleanFalse;
  }

  values[0] = *v13;
  values[1] = DictionaryRepresentation;
  values[2] = v11;
  values[3] = v10;
  if (v10)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  v15 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Mutable = *a5;
  if (!*a5)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *a5 = Mutable;
  }

  CFArrayAppendValue(Mutable, v15);
  CFRelease(v15);
  CFRelease(DictionaryRepresentation);
  CFRelease(v12);
  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_1000DA5B8(unsigned __int8 **a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = sub_1000DA634(a2[3], a1[67]);
    if (v4 != -1)
    {
      v6 = *a2;
      v5 = a2[1];
      ++*a2;
      *(v5 + 4 * v6) = v4;
      if (a2[2])
      {
        v7 = v4;
        v8 = a2[2];

        CFDictionarySetValue(v8, v7, a1);
      }
    }
  }
}

uint64_t sub_1000DA634(uint64_t a1, unsigned __int8 *a2)
{
  v6 = -1;
  v2 = sub_100040870(a1, a2, &v6);
  if (v2)
  {
    v3 = v2;
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v8 = v3;
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v11 = 1024;
      v12 = 534;
      v13 = 2080;
      v14 = "couldn't find constraint";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", buf, 0x22u);
    }
  }

  return v6;
}

uint64_t sub_1000DA720(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return 0;
  }

  v3 = sub_100043E60(v2);
  if (v3)
  {
    v4 = v3;
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109634;
      v12 = v4;
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v15 = 1024;
      v16 = 1951;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error %d at %s:%d\n", &v11, 0x18u);
    }

    if (v4 > 0xB)
    {
      v6 = 4294963295;
    }

    else
    {
      v6 = dword_1000F2D38[v4];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1000493AC(*v1, 0);
  if (v7)
  {
    v8 = v7;
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109634;
      v12 = v8;
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v15 = 1024;
      v16 = 1954;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error %d at %s:%d\n", &v11, 0x18u);
    }

    if (v8 > 0xB)
    {
      return 4294963295;
    }

    else
    {
      return dword_1000F2D38[v8];
    }
  }

  return v6;
}

uint64_t sub_1000DA8D0(uint64_t **a1, char *a2, int a3, uint64_t a4, _BYTE *a5)
{
  if ((byte_100106460 & 1) == 0)
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      mach_absolute_time();
      VSAbsoluteTimeToSecond();
      *buf = 134217984;
      *v26 = v16;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "time to first Elvis packet: %g", buf, 0xCu);
    }

    byte_100106460 = 1;
  }

  v23 = 2;
  v24 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = *a1;
  if (!*a1 || !*v10)
  {
    result = 4294963293;
    if (!a5)
    {
      return result;
    }

    goto LABEL_40;
  }

  v11 = sub_100044C38(*v10, a2, a3, &v24);
  v12 = VSGetLogDefault();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  *buf = 67109888;
  *v26 = v11;
  *&v26[4] = 2048;
  *&v26[6] = a2;
  v27 = 1024;
  v28 = a3;
  v29 = 1024;
  LODWORD(v30) = v24;
  _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "#Audio PutWaveSamples (result = %d): audioData = %p, sampleCount = %d, feStatus = %d\n", buf, 0x1Eu);
  if (v11)
  {
LABEL_11:
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      *v26 = v11;
      *&v26[4] = 2080;
      *&v26[6] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      v27 = 1024;
      v28 = 1911;
      v29 = 2080;
      v30 = "error enqueing samples";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", buf, 0x22u);
    }

    v14 = 0;
    goto LABEL_29;
  }

LABEL_17:
  while (1)
  {
    v17 = *a1 ? **a1 : 0;
    v11 = sub_100048950(v17, &v23);
    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      break;
    }

    if (v11)
    {
      goto LABEL_25;
    }

LABEL_22:
    v19 = v23;
    if (v23 != 2)
    {
      v11 = 0;
      goto LABEL_28;
    }
  }

  *buf = 67109376;
  *v26 = v11;
  *&v26[4] = 1024;
  *&v26[6] = v23;
  _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#Audio ProcessSpeech (result = %d): reStatus = %d\n", buf, 0xEu);
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_25:
  v20 = VSGetLogDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    *v26 = v11;
    *&v26[4] = 2080;
    *&v26[6] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
    v27 = 1024;
    v28 = 1917;
    v29 = 2080;
    v30 = "couldn't process samples";
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", buf, 0x22u);
  }

  v19 = v23;
LABEL_28:
  v14 = v19 == 0;
LABEL_29:
  if (v11 > 0xB)
  {
    result = 4294963295;
    if (a5)
    {
      goto LABEL_33;
    }
  }

  else
  {
    result = dword_1000F2D38[v11];
    if (!a5)
    {
      return result;
    }

LABEL_33:
    if (result)
    {
      v21 = 1;
    }

    else
    {
      v21 = v24 == 2;
    }

    v22 = v21;
    if (((v22 | v14) & 1) == 0)
    {
      return 0;
    }

LABEL_40:
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1000DAC74(uint64_t **a1, const __CFSet *a2, uint64_t a3, int a4)
{
  v21 = 0;
  v22 = 0;
  v4 = *a1;
  if (!*a1)
  {
    return 4294963293;
  }

  v6 = *v4;
  if (!*v4)
  {
    return 4294963293;
  }

  v20 = 0;
  if (a4)
  {
    v9 = sub_1000435C8(v6);
    v10 = VSGetLogDefault();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Couldn't reset front end\n", buf, 2u);
        if (!a3)
        {
          goto LABEL_19;
        }

LABEL_11:
        if (*(v4 + 104) || (!*a1 ? (v13 = 0) : (v13 = **a1), !sub_1000D5DFC(v13, 40000)))
        {
          (*a1)[12] = VSLogBundleCopyPathForFile();
          *(v4 + 104) = 1;
        }

        else
        {
          v14 = VSGetLogDefault();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "error allocating debug dump resources\n", buf, 2u);
          }
        }

        goto LABEL_19;
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Reset engine\n", buf, 2u);
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  if (a3)
  {
    goto LABEL_11;
  }

LABEL_19:
  if (sub_1000D89A8(a1, a2, buf, &v22, &v21, 0))
  {
    v15 = 1;
  }

  else
  {
    if (*a1)
    {
      v16 = **a1;
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_100043CB0(v16, &v20);
    if (v17)
    {
      v15 = v17;
      v18 = VSGetLogDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v23 = 67109634;
        v24 = v15;
        v25 = 2080;
        v26 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
        v27 = 1024;
        v28 = 1871;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error %d at %s:%d\n", v23, 0x18u);
      }
    }

    else
    {
      if (*a1)
      {
        v19 = **a1;
      }

      else
      {
        v19 = 0;
      }

      v15 = sub_100047ADC(v19, v20, 3, 0, 0, v21, v22);
    }
  }

  if (v22 && v22 != buf)
  {
    free(v22);
  }

  if (v15 > 0xB)
  {
    return 4294963295;
  }

  else
  {
    return dword_1000F2D38[v15];
  }
}

uint64_t sub_1000DAF48(uint64_t a1, BOOL *a2, double a3)
{
  v5 = *(a1 + 16);
  result = sub_1000DAF98(a1, *(*a1 + 112), a3);
  if (a2)
  {
    *a2 = v5 != *(a1 + 16);
  }

  return result;
}

uint64_t sub_1000DAF98(uint64_t **a1, const __CFURL *a2, double a3)
{
  if (*(a1 + 2) != a3 && *(a1 + 1) != a3)
  {
    a1[2] = 0xBFF0000000000000;
    sub_1000DB410(a1);
  }

  memset(&v26, 0, sizeof(v26));
  if (*a1 && **a1)
  {
    return 0;
  }

  v7 = a1[4];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(kVSFrameworkBundleIdentifier);
  if (!BundleWithIdentifier || (v9 = CFBundleCopyBundleURL(BundleWithIdentifier)) == 0)
  {
    a1[2] = 0xBFF0000000000000;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v9, @"RecognitionResources/Express", 1u);
  CFRelease(v10);
  a1[2] = 0xBFF0000000000000;
  if (v11)
  {
    if (sub_1000DB468(v7, v11, @".v", v37))
    {
      v12 = 0;
    }

    else
    {
      v17 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v11, @"language_fallbacks.plist", 0);
      if (!v17)
      {
        v16 = 0;
        goto LABEL_33;
      }

      v18 = v17;
      v19 = _VSCopyFallbackLanguageIdentifierForLanguageIdentifier();
      v12 = v19;
      if (!v19 || !sub_1000DB468(v19, v11, @".v", v37))
      {
        CFRelease(v18);
        goto LABEL_29;
      }

      CFRelease(v18);
      v7 = v12;
    }

    if ((a3 != 8000.0 || a3 == 16000.0) && sub_1000DB468(v7, v11, @".16", v38))
    {
      v13 = 0x40CF400000000000;
LABEL_23:
      a1[2] = v13;
      v16 = 1;
      goto LABEL_30;
    }

    if (sub_1000DB468(v7, v11, @".8", v38))
    {
      v13 = 0x40BF400000000000;
      goto LABEL_23;
    }

LABEL_29:
    v16 = 0;
LABEL_30:
    CFRelease(v11);
    v11 = v12;
    if (!v12)
    {
LABEL_34:
      if (v16)
      {
        v20 = *a1;
        *(v20 + 64) = 0u;
        *(v20 + 80) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0u;
        *(v20 + 8) = sub_1000DB58C;
        *(v20 + 16) = sub_1000DB584;
        *(v20 + 24) = sub_1000DB570;
        v6 = sub_10003FE70(v38, v37, (*a1 + 1), *a1);
        if (v6)
        {
          v21 = VSGetLogDefault();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            v32 = v6;
            v33 = 2080;
            v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
            v35 = 1024;
            v36 = 406;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error %d at %s:%d\n", buf, 0x18u);
          }

          if (v6 > 0xB)
          {
            v6 = 4294963295;
          }

          else
          {
            v6 = dword_1000F2D38[v6];
          }
        }

        if (a2)
        {
          v22 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, a2, @"express.psa", 0);
          if (v22)
          {
            v23 = v22;
            if (CFURLGetFileSystemRepresentation(v22, 1u, buf, 1024) && !stat(buf, &v26))
            {
              if (*a1)
              {
                v24 = **a1;
              }

              else
              {
                v24 = 0;
              }

              if (!sub_100046C80(v24, 0, buf))
              {
                v25 = VSGetLogDefault();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *v27 = 136315394;
                  v28 = "_VSElvisCreateElvisIfNecessary";
                  v29 = 2080;
                  v30 = buf;
                  _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s: Configured from PSA file at %s.\n", v27, 0x16u);
                }
              }
            }

            CFRelease(v23);
          }
        }

        *(a1 + 1) = a3;
        return v6;
      }

      goto LABEL_17;
    }

LABEL_33:
    CFRelease(v11);
    goto LABEL_34;
  }

LABEL_17:
  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No bin file found\n", buf, 2u);
  }

  return 4294963290;
}

uint64_t *sub_1000DB410(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    result = *v1;
    if (*v1)
    {
      v4 = v1 + 1;
      result = sub_10003D4BC(result, &v4);
      v3 = *v2;
      *v3 = 0;
      *(v3 + 104) = 0;
    }
  }

  return result;
}

BOOL sub_1000DB468(CFStringRef theString, const __CFURL *a2, const __CFString *a3, char *a4)
{
  if (!theString)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, theString);
  v8 = MutableCopy;
  if (a3)
  {
    CFStringAppend(MutableCopy, a3);
  }

  CFStringAppend(v8, @".bin");
  v9 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, a2, v8, 0);
  CFRelease(v8);
  if (!v9)
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  if (CFURLGetFileSystemRepresentation(v9, 1u, a4, 1024))
  {
    v10 = stat(a4, &v12) == 0;
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v9);
  return v10;
}

size_t sub_1000DB570(int a1, void *ptr)
{
  if (ptr)
  {
    return malloc_size(ptr);
  }

  else
  {
    return 0;
  }
}

void sub_1000DB59C(uint64_t *a1, CFTypeRef cf)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  if (v5)
  {
    CFRelease(v5);
    v4 = *a1;
  }

  *(v4 + 112) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t sub_1000DB5FC(uint64_t **a1, const __CFURL *a2)
{
  v10 = 0;
  v3 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, a2, @"express.psa", 0);
  if (v3)
  {
    v4 = v3;
    if (CFURLGetFileSystemRepresentation(v3, 1u, buffer, 1024))
    {
      if (*a1)
      {
        v5 = **a1;
      }

      else
      {
        v5 = 0;
      }

      if (!sub_10004105C(v5, &v10) && v10 >= 1)
      {
        v6 = VSGetLogDefault();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = "_VSElvisWriteToCache";
          v13 = 1024;
          LODWORD(v14) = v10;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: pruned %d classes\n", buf, 0x12u);
        }
      }

      if (*a1)
      {
        v7 = **a1;
      }

      else
      {
        v7 = 0;
      }

      sub_100046E80(v7, 0, buffer);
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v12 = "_VSElvisWriteToCache";
        v13 = 2080;
        v14 = buffer;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: PSA file written to %s.\n", buf, 0x16u);
      }
    }

    CFRelease(v4);
  }

  return 0;
}

CFStringRef sub_1000DB7B4(uint64_t a1, CFStringRef theString)
{
  v2 = theString;
  v11.location = 0;
  v11.length = 0;
  if (!a1 || !theString)
  {
LABEL_25:
    if (!v2)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (!*(*a1 + 105))
  {
LABEL_26:
    CFRetain(v2);
    return v2;
  }

  Length = CFStringGetLength(theString);
  v12.location = 0;
  v12.length = Length;
  v4 = CFStringTokenizerCopyBestStringLanguage(v2, v12);
  v5 = v4;
  if (v4 && !sub_1000DB924(v4))
  {
    MutableCopy = 0;
    goto LABEL_24;
  }

  v11.location = 0;
  v11.length = Length;
  if (Length >= 1)
  {
    v6.location = 0;
    MutableCopy = 0;
    v8 = Length;
    while (1)
    {
      v6.length = Length;
      if (!CFStringFindWithOptions(v2, @" ", v6, 0, &v11))
      {
        break;
      }

      if (!MutableCopy)
      {
        MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v2);
        v2 = MutableCopy;
      }

      CFStringReplace(MutableCopy, v11, &stru_1000FEEF0);
      v6.location = v11.location;
      v8 -= v11.length;
      Length = v8 - v11.location;
      v11.length = v8 - v11.location;
      if (v11.location == -1 || v8 <= v11.location)
      {
        goto LABEL_18;
      }
    }

    v11.location = -1;
    if (!v5)
    {
      goto LABEL_19;
    }

LABEL_24:
    CFRelease(v5);
    if (!MutableCopy)
    {
      goto LABEL_25;
    }

    return MutableCopy;
  }

  MutableCopy = 0;
LABEL_18:
  if (v5)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (!MutableCopy)
  {
    goto LABEL_25;
  }

  return MutableCopy;
}

const __CFString *sub_1000DB924(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringHasPrefix(result, @"zh"))
    {
      return 1;
    }

    else
    {
      return (CFStringHasPrefix(v1, @"ja") != 0);
    }
  }

  return result;
}

uint64_t sub_1000DB97C(uint64_t **a1, uint64_t a2, void *a3)
{
  v28 = 0;
  values = a3;
  v27 = 0;
  if (!*a1 || !**a1)
  {
    return 4294963293;
  }

  v5 = sub_1000DBC84(*(a2 + 16), a3);
  if (!v5)
  {
    v12 = 1;
    return dword_1000F2D38[v12];
  }

  v6 = v5;
  Length = CFStringGetLength(v5);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v9 = MaximumSizeForEncoding;
  usedBufLen = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding < 1024)
  {
    v10 = v30;
  }

  else
  {
    v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xAF779CCEuLL);
  }

  v31.location = 0;
  v31.length = Length;
  CFStringGetBytes(v6, v31, 0x8000100u, 0, 0, v10, v9, &usedBufLen);
  v10[usedBufLen] = 0;
  if (*a1)
  {
    v13 = **a1;
  }

  else
  {
    v13 = 0;
  }

  v12 = 4;
  if (sub_100040E9C(v13, v10, &v27))
  {
    goto LABEL_35;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  v12 = 1;
  v14 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = v14;
  v16 = sub_1000E87DC(a2, v14);
  if (!v16)
  {
    v12 = 0;
    goto LABEL_34;
  }

  v17 = v16;
  if (CFArrayGetCount(v16) < 1)
  {
    v12 = 0;
    goto LABEL_33;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
  v19 = ValueAtIndex[3];
  if (!v19 || (v20 = ValueAtIndex, v21 = v19(ValueAtIndex, a2, values, ValueAtIndex[2]), v21 < 1))
  {
    v12 = 1;
    goto LABEL_33;
  }

  v22 = v21;
  v25 = v15;
  v23 = 0;
  v24 = 1;
  do
  {
    if (v23)
    {
      v12 = sub_1000DBD2C(a1, a2, values, v20, v24 - 1, v10, 0, &v28);
    }

    else
    {
      v23 = NSPushAutoreleasePool();
      v12 = sub_1000DBD2C(a1, a2, values, v20, v24 - 1, v10, 0, &v28);
      if (!v23)
      {
        goto LABEL_25;
      }
    }

    if ((~(v24 - 1) & 0x5F) == 0)
    {
      NSPopAutoreleasePool();
      v23 = 0;
    }

LABEL_25:
    if (v24 >= v22)
    {
      break;
    }

    ++v24;
  }

  while (!v12);
  v15 = v25;
  if (v23)
  {
    NSPopAutoreleasePool();
  }

LABEL_33:
  CFRelease(v17);
LABEL_34:
  CFRelease(v15);
LABEL_35:
  if (v10 && v10 != v30)
  {
    free(v10);
  }

  CFRelease(v6);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v12 > 0xB)
  {
    return 4294963295;
  }

  else
  {
    return dword_1000F2D38[v12];
  }
}

CFStringRef sub_1000DBC84(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
      return 0;
    }

    CFRetain(*(a2 + 16));
    goto LABEL_6;
  }

  v3 = a1;
  CFRetain(a1);
  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  CFRetain(v4);
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@.%@", v3, v4);
  CFRelease(v3);
  v3 = v4;
LABEL_7:
  CFRelease(v3);
  return v5;
}

uint64_t sub_1000DBD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __CFStringTokenizer **a8)
{
  cf = 0;
  theString = 0;
  v12 = *(*a1 + 106);
  if (*(*a1 + 106))
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v33 = 0;
  if (v12)
  {
    *p_cf = 0;
  }

  v14 = *(a4 + 32);
  if (v14 && (v14(a4, a2, a3, a5, *(a4 + 16), &v33, &theString, p_cf), v33 >= 0xFFFFFFFFFFFFFF01))
  {
    v15 = llroundf(((1.0 - ((v33 + 255) / 255.0)) * 255.0) + 0.0);
  }

  else
  {
    v15 = 0;
  }

  if (!theString)
  {
    return 0;
  }

  v16 = VSGetLogDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v35 = theString;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#DataProvider %@", buf, 0xCu);
  }

  v17 = sub_1000DC0C4();
  if ((v17 - 15) > 1)
  {
    goto LABEL_37;
  }

  if (!a8)
  {
    goto LABEL_41;
  }

  v30 = a7;
  v18 = *a8;
  if (*a8)
  {
    v19 = theString;
    v36.length = CFStringGetLength(theString);
    v36.location = 0;
    CFStringTokenizerSetString(v18, v19, v36);
  }

  else
  {
    v20 = CFLocaleCopyCurrent();
    v21 = theString;
    v37.length = CFStringGetLength(theString);
    v37.location = 0;
    v22 = CFStringTokenizerCreate(kCFAllocatorDefault, v21, v37, 0x10000uLL, v20);
    *a8 = v22;
    if (!v20)
    {
      v23 = v22;
      if (v22)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

    CFRelease(v20);
  }

  v23 = *a8;
  if (*a8)
  {
LABEL_21:
    Mutable = 0;
    while (CFStringTokenizerAdvanceToNextToken(v23))
    {
      v25 = CFStringTokenizerCopyCurrentTokenAttribute(v23, 0x10000uLL);
      if (v25)
      {
        v26 = v25;
        if (CFStringGetLength(v25))
        {
          if (Mutable)
          {
            CFStringAppend(Mutable, @" ");
          }

          else
          {
            Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
          }

          CFStringAppend(Mutable, v26);
        }

        CFRelease(v26);
      }
    }

    a7 = v30;
    if (Mutable)
    {
      CFStringTransform(Mutable, 0, @"NFC; [^\\u0000-\\u00FF] NFD; [:Mn:] Remove; NFC; ", 0);
      v27 = VSGetLogDefault();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = Mutable;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#DataProvider   -ttt-> %@", buf, 0xCu);
      }

      v17 = sub_1000DC0C4();
      if (!v17)
      {
        v28 = *(a2 + 608);
        if (v28)
        {
          v28(a2, a3, theString, Mutable, *(a2 + 656));
        }
      }

      CFRelease(theString);
      theString = Mutable;
    }

LABEL_37:
    if (!v17 && a7 && v15)
    {
      v17 = 0;
      *a7 = 1;
    }
  }

LABEL_41:
  CFRelease(theString);
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t sub_1000DC0C4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v27 = 0;
  Length = CFStringGetLength(v5);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x100u);
  v12 = MaximumSizeForEncoding;
  usedBufLen[0] = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding < 1024)
  {
    v13 = v30;
  }

  else
  {
    v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6E6C0CC6uLL);
  }

  v31.location = 0;
  v31.length = Length;
  CFStringGetBytes(v6, v31, 0x100u, 0, 0, v13, v12, usedBufLen);
  *&v13[usedBufLen[0] & 0xFFFFFFFFFFFFFFFELL] = 0;
  if (v4 && CFStringGetLength(v4))
  {
    v14 = CFStringGetLength(v4);
    v15 = CFStringGetMaximumSizeForEncoding(v14, 0x100u);
    v16 = v15;
    *v28 = v15;
    if (v15 < 1024)
    {
      v17 = usedBufLen;
    }

    else
    {
      v17 = malloc_type_malloc(v15 + 1, 0xA392F833uLL);
    }

    v32.location = 0;
    v32.length = v14;
    CFStringGetBytes(v4, v32, 0x100u, 0, 0, v17, v16, v28);
    *&v17[*v28 & 0xFFFFFFFFFFFFFFFELL] = 0;
    if (*v9)
    {
      v18 = **v9;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_100041E90(v18, v2, v13, v17, -1, v8, 0, 0, &v27);
    v20 = v27;
    v21 = VSGetLogDefault();
    v22 = v21;
    if (!v20 || v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *v28 = 67109120;
        *&v28[4] = v19;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "error %d activating spoken phrase; falling back to regular\n", v28, 8u);
      }

      v27 = 0;
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138412290;
      *&v28[4] = v4;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#DataProvider -ppp-> %@", v28, 0xCu);
    }

    if (v17 != usedBufLen)
    {
      free(v17);
    }
  }

  if (v27)
  {
    v23 = 0;
  }

  else
  {
    if (*v9)
    {
      v24 = **v9;
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_100041C10(v24, v2, v13, -1, v8, 0, 0, &v27);
    if (v27 | v25)
    {
      v23 = v25;
    }

    else
    {
      v23 = 1;
    }
  }

  if (v13 != v30)
  {
    free(v13);
  }

  return v23;
}

uint64_t sub_1000DC3D0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  if (!*a1 || !**a1)
  {
LABEL_32:
    v10 = 0;
    return dword_1000F2D38[v10];
  }

  v4 = sub_1000DBC84(*(a2 + 16), a3);
  if (!v4)
  {
    v10 = 1;
    return dword_1000F2D38[v10];
  }

  v5 = v4;
  Length = CFStringGetLength(v4);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = MaximumSizeForEncoding;
  usedBufLen = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding < 1024)
  {
    v9 = v24;
  }

  else
  {
    v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xE937BD95uLL);
  }

  v25.location = 0;
  v25.length = Length;
  CFStringGetBytes(v5, v25, 0x8000100u, 0, 0, v9, v8, &usedBufLen);
  v9[usedBufLen] = 0;
  if (*a1)
  {
    v11 = **a1;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1000424E4(v11, v9, &v23);
  if (v9 != v24)
  {
    free(v9);
  }

  if (v12 | v23)
  {
    v10 = v12;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (v23)
    {
      v14 = 0;
      do
      {
        v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@#%d", v5, v14);
        v16 = CFStringGetLength(v15);
        v17 = CFStringGetMaximumSizeForEncoding(v16, 0x8000100u);
        v18 = v17;
        usedBufLen = v17;
        if (v17 < 1024)
        {
          v19 = v24;
        }

        else
        {
          v19 = malloc_type_malloc(v17 + 1, 0x78F597B7uLL);
          v18 = usedBufLen;
        }

        v26.location = 0;
        v26.length = v16;
        CFStringGetBytes(v15, v26, 0x8000100u, 0, 0, v19, v18, &usedBufLen);
        v19[usedBufLen] = 0;
        if (*a1)
        {
          v20 = **a1;
        }

        else
        {
          v20 = 0;
        }

        v21 = sub_1000424E4(v20, v19, &v23);
        if (v19 != v24)
        {
          free(v19);
        }

        CFRelease(v15);
        if (v21)
        {
          break;
        }

        v14 = (v14 + 1);
      }

      while (v23);
    }

    CFRelease(v5);
    goto LABEL_32;
  }

  CFRelease(v5);
  if (v10 > 0xB)
  {
    return 4294963295;
  }

  return dword_1000F2D38[v10];
}

uint64_t sub_1000DC664(uint64_t **a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = *v3;
  if (!*v3)
  {
    return result;
  }

  if (!a3 && !*(a2 + 648))
  {
    return 0;
  }

  v6 = sub_1000DA634(result, *(a2 + 536));
  if (v6 == -1)
  {
    v9 = 0;
    return dword_1000F2D38[v9];
  }

  v7 = v6;
  if (*a1)
  {
    v8 = **a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100040194(v8, v7);
  if (v9 <= 0xB)
  {
    return dword_1000F2D38[v9];
  }

  return 4294963295;
}

uint64_t sub_1000DC704(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1 || !*v2)
  {
    return 4294963293;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v6 = *(a2 + 536);
    goto LABEL_8;
  }

  CFRetain(*(a2 + 16));
  v2 = *a1;
  v6 = *(a2 + 536);
  if (*a1)
  {
LABEL_8:
    v7 = *v2;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  if (sub_1000DA634(v7, v6) != -1)
  {
    v9 = 0;
    goto LABEL_139;
  }

  v10 = sub_1000E7DA4(a2);
  v96 = 0;
  v95 = 0;
  v94 = 0;
  if (!v10)
  {
    v9 = 4;
    goto LABEL_139;
  }

  v11 = v10;
  v12 = CFArrayGetCount(v10);
  v13 = sub_1000E87DC(a2, v11);
  if (!v13)
  {
    v28 = 0;
    goto LABEL_138;
  }

  v14 = v13;
  if (CFArrayGetCount(v13) != v12)
  {
    v28 = 0;
    goto LABEL_136;
  }

  v91 = a2;
  v79 = v14;
  v93 = a1;
  theArray = v11;
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v5);
  CFStringAppend(MutableCopy, @".");
  Length = CFStringGetLength(MutableCopy);
  v17 = malloc_type_malloc(8 * v12, 0x10040436913F5uLL);
  v18 = NSPushAutoreleasePool();
  count = v12;
  v19 = v12 < 1;
  v87 = v17;
  if (v12 < 1)
  {
    v20 = 0;
    cf = 0;
    v84 = 0;
    v28 = 0;
    v43 = v93;
LABEL_89:
    CFRelease(MutableCopy);
    theDict = 0;
    v33 = 0;
    v80 = v20;
    goto LABEL_92;
  }

  v77 = v6;
  v78 = v5;
  v20 = 0;
  cf = 0;
  v84 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
    v22 = *(ValueAtIndex + 2);
    if (!v22)
    {
      v28 = 4;
LABEL_88:
      v6 = v77;
      v5 = v78;
      v43 = v93;
      goto LABEL_89;
    }

    v23 = ValueAtIndex;
    CFRetain(*(ValueAtIndex + 2));
    CFStringAppend(MutableCopy, v22);
    v24 = CFStringGetLength(MutableCopy);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v24, 0x8000100u);
    v26 = MaximumSizeForEncoding;
    *usedBufLen = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding < 0)
    {
      v27 = 0;
    }

    else
    {
      v27 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xFC15F9FFuLL);
      v26 = *usedBufLen;
    }

    v80 = v20 + 1;
    v17[v20] = v27;
    v100.location = 0;
    v100.length = v24;
    CFStringGetBytes(MutableCopy, v100, 0x8000100u, 0, 0, v27, v26, usedBufLen);
    v17[v20][*usedBufLen] = 0;
    v101.length = CFStringGetLength(MutableCopy) - Length;
    v101.location = Length;
    CFStringReplace(MutableCopy, v101, &stru_1000FEEF0);
    v28 = sub_1000DD1F8(v93, v17[v20], v23[3]);
    if (v28)
    {
      CFRelease(v22);
      v19 = 0;
      ++v20;
      goto LABEL_88;
    }

    Mutable = cf;
    if (!cf)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    }

    cf = Mutable;
    CFDictionarySetValue(Mutable, v23, v17[v20]);
    v30 = v23[4];
    if (v30 >= 0xFFFFFFFFFFFFFF01)
    {
      v31 = llroundf(((1.0 - ((v30 + 255) / 255.0)) * 255.0) + 0.0);
      if (v31)
      {
        v32 = v84;
        if (!v84)
        {
          v32 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
        }

        v84 = v32;
        CFDictionarySetValue(v32, v17[v20], v31);
      }
    }

    CFRelease(v22);
    ++v20;
  }

  while (v80 < count);
  CFRelease(MutableCopy);
  idx = 0;
  v33 = 0;
  theDict = 0;
  v34 = count;
  v83 = 127 * count;
  v88 = count;
  while (1)
  {
    v35 = CFArrayGetValueAtIndex(theArray, idx);
    v36 = CFArrayGetValueAtIndex(v79, idx);
    v37 = v36;
    v38 = v36[3];
    if (v38)
    {
      v90 = v38(v36, v91, v35, v36[2]);
    }

    else
    {
      v90 = 0;
    }

    v39 = v17[idx];
    v40 = VSGetLogDefault();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *usedBufLen = 136315138;
      *&usedBufLen[4] = v39;
      _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "#DataProvider, --- %s: \n", usedBufLen, 0xCu);
    }

    if (v90 >= 1)
    {
      v41 = v83;
      v42 = 1;
      v43 = v93;
      v86 = v37;
      while (1)
      {
        if (!v18)
        {
          v18 = NSPushAutoreleasePool();
        }

        v44 = sub_1000DBD2C(v43, v91, v35, v37, v42 - 1, v39, &v94, &v95);
        if (v44 == 1)
        {
          break;
        }

        v50 = v44;
        if ((v44 - 15) > 1)
        {
          if (v44)
          {
            v52 = VSGetLogDefault();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *usedBufLen = 136315394;
              *&usedBufLen[4] = "_VSElvisConfigureForModel";
              v98 = 1024;
              v99 = v50;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#Pronunciation %s: error adding last entry (%d) - continuing...\n", usedBufLen, 0x12u);
            }
          }

          v28 = 0;
          v43 = v93;
          v34 = count;
          if (!v18)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v51 = VSGetLogDefault();
          v34 = count;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *usedBufLen = 136315138;
            *&usedBufLen[4] = "_VSElvisConfigureForModel";
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "#Pronunciation %s: no pronunciation for last entry - continuing...\n", usedBufLen, 0xCu);
          }

          v28 = 0;
          v43 = v93;
          if (!v18)
          {
            goto LABEL_75;
          }
        }

LABEL_73:
        if ((~v41 & 0x5F) == 0)
        {
          NSPopAutoreleasePool();
          v18 = 0;
        }

LABEL_75:
        if (v42 < v90)
        {
          ++v42;
          v41 += v34;
          if (!v28)
          {
            continue;
          }
        }

        goto LABEL_79;
      }

      if (!v33)
      {
        v33 = malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL);
      }

      ++v33[idx];
      v45 = CFStringCreateMutable(kCFAllocatorDefault, 0);
      CFStringAppendCString(v45, v87[idx], 0x8000100u);
      CFStringAppendFormat(v45, 0, @"#%ld", v33[idx]);
      v46 = CFStringGetLength(v45);
      v47 = CFStringGetMaximumSizeForEncoding(v46, 0x8000100u);
      v48 = v47;
      *usedBufLen = v47;
      v49 = v18;
      if (v47 < 0)
      {
        v39 = 0;
      }

      else
      {
        v39 = malloc_type_malloc(v47 + 1, 0x4007790EuLL);
        v48 = *usedBufLen;
      }

      v53 = v33;
      v102.location = 0;
      v102.length = v46;
      CFStringGetBytes(v45, v102, 0x8000100u, 0, 0, v39, v48, usedBufLen);
      v39[*usedBufLen] = 0;
      v54 = theDict;
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, v35);
        if (Value)
        {
LABEL_60:
          theDict = v54;
          CFArrayAppendValue(Value, v39);
          if (v84)
          {
            v56 = v35[4];
            if (v56 >= 0xFFFFFFFFFFFFFF01)
            {
              v57 = llroundf(((1.0 - ((v56 + 255) / 255.0)) * 255.0) + 0.0);
              if (v57)
              {
                CFDictionarySetValue(v84, v39, v57);
              }
            }
          }

          ++v88;
          CFRelease(v45);
          v43 = v93;
          v58 = sub_1000DD1F8(v93, v39, v35[3]);
          v33 = v53;
          if (v58)
          {
            v28 = v58;
            v34 = count;
            v18 = v49;
          }

          else
          {
            v59 = sub_1000DBD2C(v93, v91, v35, v86, v42 - 1, v39, &v94, &v95);
            v18 = v49;
            if (v59)
            {
              v60 = v59;
              v61 = VSGetLogDefault();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *usedBufLen = 136315394;
                *&usedBufLen[4] = "_VSElvisConfigureForModel";
                v98 = 1024;
                v99 = v60;
                _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "#Pronunciation %s: error adding last entry (%d) - continuing...\n", usedBufLen, 0x12u);
              }

              v28 = 0;
              v43 = v93;
            }

            else
            {
              v28 = 0;
            }

            v34 = count;
          }

          v37 = v86;
          if (!v18)
          {
            goto LABEL_75;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v54 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      Value = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      CFDictionarySetValue(v54, v35, Value);
      CFRelease(Value);
      goto LABEL_60;
    }

    v28 = 0;
    v43 = v93;
LABEL_79:
    v19 = v28 == 0;
    if (++idx >= v34)
    {
      break;
    }

    ++v83;
    v17 = v87;
    if (v28)
    {
      v62 = v88;
      goto LABEL_91;
    }
  }

  v17 = v87;
  v62 = v88;
LABEL_91:
  LODWORD(count) = v62;
  v5 = v78;
  v6 = v77;
LABEL_92:
  if (v18)
  {
    NSPopAutoreleasePool();
  }

  if (v19)
  {
    v63 = *(v91 + 568);
    v64 = v63 ? CFRetain(v63) : 0;
    v65 = *v43 ? **v43 : 0;
    v28 = sub_1000DD444(v65, v6, *(v91 + 544), v64, count, v84, v94, cf, theDict) == -1;
    if (v64)
    {
      CFRelease(v64);
    }
  }

  v11 = theArray;
  if (v80 >= 1)
  {
    for (i = 0; i != v80; ++i)
    {
      if (v28)
      {
        if (*v43)
        {
          v67 = **v43;
        }

        else
        {
          v67 = 0;
        }

        sub_1000424E4(v67, v17[i], &v96);
      }

      v68 = v17[i];
      if (v68)
      {
        free(v68);
      }

      if (v33)
      {
        if (v33[i] >= 1)
        {
          v69 = CFArrayGetValueAtIndex(theArray, i);
          v70 = CFDictionaryGetValue(theDict, v69);
          if (v70)
          {
            v71 = v70;
            v72 = CFArrayGetCount(v70);
            if (v72 >= 1)
            {
              v73 = v72;
              for (j = 0; j != v73; ++j)
              {
                v75 = CFArrayGetValueAtIndex(v71, j);
                if (v28)
                {
                  if (*v93)
                  {
                    v76 = **v93;
                  }

                  else
                  {
                    v76 = 0;
                  }

                  sub_1000424E4(v76, v75, &v96);
                }

                if (v75)
                {
                  free(v75);
                }
              }
            }
          }
        }
      }

      v43 = v93;
      v17 = v87;
    }
  }

  if (v17)
  {
    free(v17);
  }

  v14 = v79;
  if (v33)
  {
    free(v33);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v84)
  {
    CFRelease(v84);
  }

LABEL_136:
  CFRelease(v14);
  if (v95)
  {
    CFRelease(v95);
  }

LABEL_138:
  CFRelease(v11);
  v9 = v28;
LABEL_139:
  if (v5)
  {
    CFRelease(v5);
  }

  return dword_1000F2D38[v9];
}

uint64_t sub_1000DD1F8(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v16 = 0;
  if (*a1)
  {
    v6 = **a1;
  }

  else
  {
    v6 = 0;
  }

  if (sub_100040E9C(v6, a2, &v16 + 1))
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "_VSElvisCreateClass";
      v19 = 2080;
      v20 = a2;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Class %s already exists?\n", buf, 0x16u);
    }

    return 4;
  }

  else
  {
    if (HIDWORD(v16))
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v18 = "_VSElvisCreateClass";
        v19 = 2080;
        v20 = a2;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: Class %s already exists, emptying it\n", buf, 0x16u);
      }

      if (*a1)
      {
        v10 = **a1;
      }

      else
      {
        v10 = 0;
      }

      v12 = sub_1000424E4(v10, a2, &v16);
    }

    else
    {
      if (*a1)
      {
        v11 = **a1;
      }

      else
      {
        v11 = 0;
      }

      if ((a3 - 4) >= 3)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }

      v12 = sub_100040BA0(v11, a2, 0, 0, v13, 0, 0, &v16);
    }

    v14 = v12;
    if (v12 || !v16)
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "_VSElvisCreateClass";
        v19 = 2080;
        v20 = a2;
        v21 = 1024;
        v22 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Could not create the empty class %s (%d)\n", buf, 0x1Cu);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000DD444(uint64_t a1, unsigned __int8 *a2, unint64_t a3, CFArrayRef theArray, int a5, const __CFDictionary *a6, int a7, const __CFDictionary *a8, const __CFDictionary *a9)
{
  v10 = 0xFFFFFFFFLL;
  v175 = 1;
  v176 = -1;
  if (!theArray)
  {
    return v10;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v144 = a7;
  v145 = a2;
  v146 = a5;
  v14 = a9;
  v15 = kCFAllocatorDefault;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v17 = theArray;
  v18 = Mutable;
  theArraya = v17;
  Count = CFArrayGetCount(v17);
  v177 = 0;
  v20 = 0;
  if (Count < 1)
  {
    v56 = 0;
    if (v18)
    {
      goto LABEL_70;
    }

LABEL_75:
    v62 = 0;
    if (v20)
    {
      goto LABEL_218;
    }

    goto LABEL_219;
  }

  v150 = 0;
  v152 = 0;
  MutableCopy = 0;
  theSet = 0;
  v148 = 0;
  v22 = 0;
  *newValues = 0;
  v142 = Count;
  while (2)
  {
    v167 = CFArrayGetCount(v18);
    v143 = v22;
    ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v22);
    v24 = CFArrayGetCount(ValueAtIndex[2]);
    if (MutableCopy)
    {
      CFArrayRemoveAllValues(MutableCopy);
    }

    CFRetain(ValueAtIndex);
    while (1)
    {
      v153 = CFArrayCreateMutable(v15, 0, 0);
      if (v24 >= 1)
      {
        v25 = 0;
        while (1)
        {
          v26 = sub_1000E926C(ValueAtIndex, v25, &v177);
          if (v177)
          {
            v27 = theSet;
            if (!v20)
            {
              v20 = CFArrayCreateMutable(v15, 0, &kCFTypeArrayCallBacks);
              v27 = CFSetCreateMutable(v15, 0, &kCFTypeSetCallBacks);
            }

            theSet = v27;
            if (!CFSetContainsValue(v27, v26))
            {
              CFArrayAppendValue(v20, v26);
              CFSetAddValue(theSet, v26);
            }

            if (v177 == 2)
            {
              v28 = v25;
              v29 = sub_1000E90D4(v15, ValueAtIndex, v25, 0);
              if (!MutableCopy)
              {
                MutableCopy = CFArrayCreateMutable(v15, 0, &kCFTypeArrayCallBacks);
              }

              CFArrayAppendValue(MutableCopy, v29);
              CFRelease(v29);
              v25 = v28;
            }
          }

          if (!*(v26 + 41))
          {
            v170 = v25;
            v30 = v152;
            if (!v152)
            {
              v30 = CFSetCreateMutable(v15, 0, &kCFTypeSetCallBacks);
            }

            v31 = v30;
            v152 = v30;
            if (!CFSetContainsValue(v30, v26))
            {
              CFSetAddValue(v31, v26);
              v32 = v150;
              if (!v150)
              {
                v32 = CFArrayCreateMutable(v15, 0, &kCFTypeArrayCallBacks);
              }

              v150 = v32;
              CFArrayAppendValue(v32, v26);
            }

            v25 = v170;
            if (!*(v26 + 41))
            {
              v33 = *(v26 + 6);
              CFRetain(v33);
              if (v33)
              {
                v162 = v24;
                cf = ValueAtIndex;
                v157 = CFArrayGetCount(v33);
                if (v157 >= 1)
                {
                  for (i = 0; i != v157; ++i)
                  {
                    v35 = CFArrayGetValueAtIndex(v33, i);
                    CFRetain(v35[2]);
                    v36 = v35[2];
                    v37 = CFArrayGetCount(v36);
                    if (v37 >= 1)
                    {
                      v38 = v37;
                      v39 = CFArrayGetValueAtIndex(v35[2], 0);
                      v40 = sub_1000E90D4(kCFAllocatorDefault, cf, v170, v36);
                      if (i)
                      {
                        if (!MutableCopy)
                        {
                          MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, theArraya);
                        }

                        CFArrayAppendValue(MutableCopy, v40);
                        CFRelease(v40);
                      }

                      else
                      {
                        CFRelease(cf);
                        v162 = v162 + v38 - 1;
                        cf = v40;
                        v26 = v39;
                      }
                    }

                    CFRelease(v36);
                  }
                }

                CFRelease(v33);
                v15 = kCFAllocatorDefault;
                ValueAtIndex = cf;
                v24 = v162;
                v25 = v170;
              }
            }
          }

          Value = CFDictionaryGetValue(a8, v26);
          *newValues = Value;
          if (!Value)
          {
            break;
          }

          CFArrayAppendValue(v153, Value);
          if (++v25 >= v24)
          {
            goto LABEL_40;
          }
        }

        CFRelease(v153);
        CFRelease(ValueAtIndex);
        CFRelease(v18);
        v18 = 0;
        v14 = a9;
        goto LABEL_63;
      }

LABEL_40:
      v158 = MutableCopy;
      CFArrayAppendValue(v18, v153);
      CFRelease(v153);
      v42 = v148 + 1;
      v154 = v20;
      if (v24 < 1)
      {
        v51 = v148 + 1;
        v14 = a9;
      }

      else
      {
        v43 = 0;
        v14 = a9;
        v44 = v167;
        cfa = ValueAtIndex;
        v163 = v24;
        do
        {
          if (v14 && (v45 = CFArrayGetValueAtIndex(ValueAtIndex[2], v43), (v46 = CFDictionaryGetValue(v14, v45)) != 0) && (v47 = v46, v48 = CFArrayGetCount(v46), v48 >= 1))
          {
            v49 = v48;
            v50 = 0;
            v171 = v42 - v44;
            v51 = v42;
            do
            {
              *newValues = CFArrayGetValueAtIndex(v47, v50);
              if (v42 > v44)
              {
                v52 = v51;
                v53 = v44;
                do
                {
                  v54 = CFArrayGetValueAtIndex(v18, v53);
                  v55 = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v54);
                  v180.location = v43;
                  v180.length = 1;
                  CFArrayReplaceValues(v55, v180, newValues, 1);
                  CFArrayAppendValue(v18, v55);
                  CFRelease(v55);
                  ++v53;
                }

                while (v42 != v53);
                v44 = v167;
                v51 = v171 + v52;
              }

              ++v50;
            }

            while (v50 != v49);
          }

          else
          {
            v51 = v42;
          }

          ++v43;
          v42 = v51;
          v14 = a9;
          ValueAtIndex = cfa;
        }

        while (v43 != v163);
      }

      v148 = v51;
      CFRelease(ValueAtIndex);
      MutableCopy = v158;
      if (!v158)
      {
        break;
      }

      v20 = v154;
      v15 = kCFAllocatorDefault;
      if (CFArrayGetCount(v158) < 1)
      {
        goto LABEL_60;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v158, 0);
      v24 = CFArrayGetCount(ValueAtIndex[2]);
      CFRetain(ValueAtIndex);
      CFArrayRemoveValueAtIndex(v158, 0);
    }

    v20 = v154;
    v15 = kCFAllocatorDefault;
LABEL_60:
    v22 = v143 + 1;
    if (v143 + 1 != v142)
    {
      continue;
    }

    break;
  }

LABEL_63:
  if (theSet)
  {
    CFRelease(theSet);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v56 = v150;
  if (!v18)
  {
    goto LABEL_75;
  }

LABEL_70:
  v155 = v20;
  v151 = v56;
  v168 = CFArrayGetCount(v18);
  v57 = CFArrayGetCount(v18);
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = v57;
    v59 = 0;
    for (j = 0; j != v58; ++j)
    {
      v61 = CFArrayGetValueAtIndex(v18, j);
      v59 += CFArrayGetCount(v61);
    }
  }

  v20 = v155;
  if (v155)
  {
    v164 = CFArrayGetCount(v155);
    if (v164 >= 1)
    {
      v63 = 0;
      while (1)
      {
        v64 = CFArrayGetValueAtIndex(v20, v63);
        if (*(v64 + 41))
        {
          if (v14 && (v65 = CFDictionaryGetValue(v14, v64)) != 0)
          {
            v66 = v65;
            v67 = CFArrayGetCount(v65) + 1;
            v68 = v67 + v67 * CFArrayGetCount(v66);
            v20 = v155;
            v59 += v68;
          }

          else
          {
            ++v59;
          }

          goto LABEL_100;
        }

        v69 = *(v64 + 6);
        CFRetain(v69);
        if (v69)
        {
          v70 = CFArrayGetCount(v69);
          if (v70 >= 1)
          {
            v71 = v70;
            v72 = 0;
            while (1)
            {
              v73 = CFArrayGetValueAtIndex(v69, v72);
              v74 = CFArrayGetCount(v73[2]);
              v75 = CFArrayGetValueAtIndex(v73[2], v74);
              if (!v14)
              {
                break;
              }

              v76 = CFDictionaryGetValue(v14, v75);
              if (v76)
              {
                v77 = CFArrayGetCount(v76) + 1;
              }

              else
              {
                v77 = 1;
              }

              v78 = CFArrayGetValueAtIndex(v73[2], 0);
              v79 = CFDictionaryGetValue(v14, v78);
              if (!v79)
              {
                goto LABEL_96;
              }

              v80 = CFArrayGetCount(v79) + 1;
LABEL_97:
              v59 += v80 * v77;
              if (v71 == ++v72)
              {
                goto LABEL_98;
              }
            }

            CFArrayGetValueAtIndex(v73[2], 0);
            v77 = 1;
LABEL_96:
            v80 = 1;
            goto LABEL_97;
          }

LABEL_98:
          CFRelease(v69);
        }

        v20 = v155;
LABEL_100:
        if (++v63 == v164)
        {
          v81 = 1;
          v15 = kCFAllocatorDefault;
          goto LABEL_104;
        }
      }
    }

    v81 = 0;
  }

  else
  {
    v81 = 0;
    v164 = 0;
  }

LABEL_104:
  if (a3 >= 0xFFFFFFFFFFFFFF01)
  {
    v172 = llroundf(((1.0 - ((a3 + 255) / 255.0)) * 255.0) + 0.0);
  }

  else
  {
    v172 = 0;
  }

  v82 = 1;
  if (!v144 && v172 <= 0)
  {
    if (a6)
    {
      v82 = CFDictionaryGetCount(a6) > 0;
    }

    else
    {
      v82 = 0;
    }
  }

  v83 = sub_1000428F0(a1, v145, v146, v59, v82, &v176);
  if (v83)
  {
    v84 = VSGetLogDefault();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *newValues = 67109890;
      *&newValues[4] = v83;
      *&newValues[8] = 2080;
      *&newValues[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
      *&newValues[18] = 1024;
      *&newValues[20] = 840;
      LOWORD(v179[0]) = 2080;
      *(v179 + 2) = "couldn't create constraint";
      _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", newValues, 0x22u);
    }
  }

  if (v176 == -1)
  {
    v83 = 1;
    goto LABEL_217;
  }

  v159 = v81;
  v85 = VSGetLogDefault();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    *newValues = 134218240;
    *&newValues[4] = a3;
    *&newValues[12] = 1024;
    *&newValues[14] = v172;
    _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "Configuring sequences with weight %ld (%d):\n", newValues, 0x12u);
  }

  if (v168 < 1 || v83)
  {
LABEL_158:
    v104 = v159;
    if (!v175)
    {
      v104 = 0;
    }

    if (v104 != 1 || v83)
    {
      goto LABEL_217;
    }

    v105 = 0;
    while (1)
    {
      v106 = CFArrayGetValueAtIndex(v20, v105);
      v160 = v105;
      if (*(v106 + 41))
      {
        if (v14 && (v107 = CFDictionaryGetValue(v14, v106)) != 0)
        {
          v108 = CFArrayCreateMutableCopy(v15, 0, v107);
        }

        else
        {
          v108 = CFArrayCreateMutable(v15, 0, 0);
        }

        v109 = v108;
        v110 = CFDictionaryGetValue(a8, v106);
        CFArrayAppendValue(v109, v110);
        v111 = v109;
      }

      else
      {
        v111 = CFArrayCreateMutable(v15, 0, 0);
        v109 = CFArrayCreateMutable(v15, 0, 0);
        if (!*(v106 + 41))
        {
          v112 = *(v106 + 6);
          CFRetain(v112);
          if (v112)
          {
            v113 = CFArrayGetCount(v112);
            if (v113 >= 1)
            {
              v114 = v113;
              for (k = 0; k != v114; ++k)
              {
                v116 = CFArrayGetValueAtIndex(v112, k);
                v117 = CFArrayGetCount(v116[2]);
                if (v117 >= 1)
                {
                  v118 = CFArrayGetValueAtIndex(v116[2], v117 - 1);
                  v119 = CFDictionaryGetValue(a8, v118);
                  if (v119)
                  {
                    CFArrayAppendValue(v111, v119);
                  }

                  if (a9)
                  {
                    v120 = CFDictionaryGetValue(a9, v118);
                    if (v120)
                    {
                      v121 = v120;
                      v181.length = CFArrayGetCount(v120);
                      v181.location = 0;
                      CFArrayAppendArray(v111, v121, v181);
                    }
                  }

                  v122 = CFArrayGetValueAtIndex(v116[2], 0);
                  v123 = CFDictionaryGetValue(a8, v122);
                  if (v123)
                  {
                    CFArrayAppendValue(v109, v123);
                  }

                  if (a9)
                  {
                    v124 = CFDictionaryGetValue(a9, v122);
                    if (v124)
                    {
                      v125 = v124;
                      v182.length = CFArrayGetCount(v124);
                      v182.location = 0;
                      CFArrayAppendArray(v109, v125, v182);
                    }
                  }
                }
              }
            }

            CFRelease(v112);
          }
        }
      }

      v126 = CFArrayGetCount(v111);
      v127 = CFArrayGetCount(v109);
      v169 = v126;
      if (v126 < 1)
      {
        v83 = 0;
        if (!v111)
        {
          goto LABEL_205;
        }
      }

      else
      {
        v128 = v127;
        v83 = 0;
        v129 = 0;
        do
        {
          if (v128 >= 1)
          {
            for (m = 0; m != v128; ++m)
            {
              v131 = CFArrayGetValueAtIndex(v111, v129);
              v132 = CFArrayGetValueAtIndex(v109, m);
              if (a6)
              {
                v133 = CFDictionaryGetValue(a6, v132);
              }

              else
              {
                v133 = 0;
              }

              v134 = VSGetLogDefault();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
              {
                *newValues = 136315650;
                *&newValues[4] = v131;
                *&newValues[12] = 2080;
                *&newValues[14] = v132;
                *&newValues[22] = 1024;
                v179[0] = v133;
                _os_log_debug_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEBUG, "%s -> %s (%d)\n", newValues, 0x1Cu);
              }

              v135 = sub_100042B80(a1, v176, v131, v132, v133, &v175);
              if (v175 | v135)
              {
                v83 = v135;
              }

              else
              {
                v83 = 1;
              }

              if (v83)
              {
                v136 = VSGetLogDefault();
                if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                {
                  *newValues = 67109890;
                  *&newValues[4] = v83;
                  *&newValues[8] = 2080;
                  *&newValues[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
                  *&newValues[18] = 1024;
                  *&newValues[20] = 956;
                  LOWORD(v179[0]) = 2080;
                  *(v179 + 2) = "couldn't add modified class transition to constraint";
                  _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", newValues, 0x22u);
                }
              }
            }
          }

          ++v129;
        }

        while (v129 != v169);
        if (!v111)
        {
          goto LABEL_205;
        }
      }

      CFRelease(v111);
LABEL_205:
      v20 = v155;
      v15 = kCFAllocatorDefault;
      if (v111 != v109)
      {
        CFRelease(v109);
      }

      v105 = v160 + 1;
      v14 = a9;
      if (v160 + 1 >= v164 || !v175 || v83)
      {
        goto LABEL_217;
      }
    }
  }

  v86 = 0;
  while (1)
  {
    v87 = v86;
    v88 = CFArrayGetValueAtIndex(v18, v86);
    v89 = CFArrayGetCount(v88);
    if (v89 < 1 || v175 == 0)
    {
      v91 = 0;
      v83 = 0;
      v92 = 1;
    }

    else
    {
      v93 = v89;
      v94 = 0;
      v95 = 0;
      while (1)
      {
        v91 = CFArrayGetValueAtIndex(v88, v94);
        if (v94)
        {
          v96 = VSGetLogDefault();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            *newValues = 0;
            _os_log_debug_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, " -> ", newValues, 2u);
          }
        }

        else
        {
          v95 = "_CONSTRAINT_CLASS_START";
        }

        if (!v91)
        {
          break;
        }

        if (v94)
        {
          v97 = 0;
        }

        else
        {
          v97 = v172;
        }

        if (a6)
        {
          v97 += CFDictionaryGetValue(a6, v91);
        }

        v98 = VSGetLogDefault();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          *newValues = 136315394;
          *&newValues[4] = v91;
          *&newValues[12] = 1024;
          *&newValues[14] = v97;
          _os_log_debug_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEBUG, "%s (%d)", newValues, 0x12u);
        }

        v99 = sub_100042B80(a1, v176, v95, v91, v97, &v175);
        v92 = v99 == 0;
        if (!(v175 | v99))
        {
          break;
        }

        v83 = v99;
        if (++v94 < v93 && !v99)
        {
          v95 = v91;
          if (v175)
          {
            continue;
          }
        }

        goto LABEL_145;
      }

      v92 = 0;
      v83 = 1;
    }

LABEL_145:
    v100 = VSGetLogDefault();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      *newValues = 0;
      _os_log_debug_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEBUG, "\n", newValues, 2u);
    }

    if (v91)
    {
      v101 = v92;
    }

    else
    {
      v101 = 0;
    }

    v14 = a9;
    v15 = kCFAllocatorDefault;
    if (!v101)
    {
      goto LABEL_156;
    }

    v102 = sub_100042B80(a1, v176, v91, "_CONSTRAINT_CLASS_END", v172, &v175);
    v103 = v175 | v102 ? v102 : 1;
    if (v103)
    {
      break;
    }

    v83 = 0;
LABEL_156:
    v86 = v87 + 1;
    v20 = v155;
    if (v87 + 1 >= v168 || v83)
    {
      goto LABEL_158;
    }
  }

  v137 = VSGetLogDefault();
  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
  {
    *newValues = 67109890;
    *&newValues[4] = v103;
    *&newValues[8] = 2080;
    *&newValues[10] = "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSElvis.c";
    *&newValues[18] = 1024;
    *&newValues[20] = 882;
    LOWORD(v179[0]) = 2080;
    *(v179 + 2) = "couldn't add sequences to constraint";
    _os_log_error_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "Error %d at %s:%d (%s)\n", newValues, 0x22u);
  }

  v83 = 1;
  v20 = v155;
LABEL_217:
  CFRelease(v18);
  v62 = v83 != 0;
  v56 = v151;
  if (v20)
  {
LABEL_218:
    v138 = v20;
    v139 = v56;
    CFRelease(v138);
    v56 = v139;
  }

LABEL_219:
  if (v56)
  {
    CFRelease(v56);
  }

  v10 = v176;
  if (v176 != -1 && v62)
  {
    sub_100040194(a1, v176);
    return 0xFFFFFFFFLL;
  }

  return v10;
}

uint64_t sub_1000DE4CC(uint64_t *a1)
{
  sub_1000DB410(a1);
  v2 = *a1;
  if (*a1)
  {
    if (v2[12])
    {
      CFRelease(v2[12]);
      v2 = *a1;
    }

    if (v2[14])
    {
      CFRelease(v2[14]);
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t sub_1000DE52C(uint64_t a1, const void *a2, double a3)
{
  v6 = malloc_type_malloc(0x78uLL, 0x10E0040AC0D3A05uLL);
  *v6 = 0;
  *(v6 + 12) = 0;
  v6[104] = 0;
  v6[105] = sub_1000DB924(*(a1 + 32));
  v7 = *(a1 + 32);
  if (v7)
  {
    LOBYTE(v7) = CFStringHasPrefix(v7, @"ja");
  }

  v6[106] = v7;
  if (a2)
  {
    *(v6 + 14) = CFRetain(a2);
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 11) = 0;
    *a1 = v6;
    v8 = a1;
    v9 = a2;
  }

  else
  {
    *(v6 + 14) = 0;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 11) = 0;
    *a1 = v6;
    v8 = a1;
    v9 = 0;
  }

  return sub_1000DAF98(v8, v9, a3);
}

void sub_1000DE62C(OpaqueAudioQueue *a1, int a2)
{
  inData = a2;
  v2 = AudioQueueSetProperty(a1, 0x61716D65u, &inData, 4u);
  if (v2)
  {
    v3 = sub_1000E1DA0(v2);
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = "_VSAudioQueueSetLevelMeteringPropertyValue";
      *buf = 136315650;
      if (inData)
      {
        v5 = "enabling";
      }

      else
      {
        v5 = "disabling";
      }

      v9 = 2112;
      v10 = v3;
      v11 = 2080;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: error %@ %s level metering\n", buf, 0x20u);
    }

    CFRelease(v3);
  }
}

void sub_1000DE730(mach_port_name_t a1, int a2, const char *a3, const char *a4, UInt8 *bytes, CFIndex numBytes, const UInt8 *a7, unsigned int a8, double a9, __int16 a10, unsigned __int8 a11, _BYTE *a12)
{
  v19 = 0;
  v40 = 0;
  *v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  *cf = 0u;
  if (bytes && numBytes && (v19 = CFStringCreateWithBytes(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0)) == 0 || ((v20 = sub_1000E4150()) == 0 || (v21 = v20, v22 = CFDictionaryContainsKey(v20, v19), CFRelease(v21), !v22)) && CFStringCompare(v19, @"_default", 0))
  {
    v23 = 0;
    goto LABEL_14;
  }

  pthread_mutex_lock(&stru_100101210);
  if (sub_1000EA128() || qword_100106468 && !*qword_100106468)
  {
    v24 = VSGetLogDefault();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v42 = "server_VSRecognitionPrepareOrBegin";
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s: recognition requested when busy\n", buf, 0xCu);
    }
  }

  else
  {
    LODWORD(v36) = 0;
    if (!a8)
    {
      goto LABEL_33;
    }

    v25 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a7, a8, kCFAllocatorNull);
    if (v25)
    {
      v26 = v25;
      v27 = VSCFPropertyListCreateFromBinaryXMLData();
      if (v27)
      {
        v28 = v27;
        v29 = CFGetTypeID(v27);
        if (v29 == CFDictionaryGetTypeID())
        {
          cf[1] = VSRecognitionDisambiguationContextCreateFromDictionaryRepresentation();
          CFRelease(v28);
          CFRelease(v26);
LABEL_33:
          if (*a3)
          {
            v30 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
            if (v30)
            {
              v31 = v30;
              v38[0] = VSLogBundleCreateFromPath();
              CFRelease(v31);
            }
          }

          if (*a4)
          {
            v32 = CFStringCreateWithCString(kCFAllocatorDefault, a4, 0x8000100u);
            if (v32)
            {
              v33 = v32;
              v38[1] = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v32, kCFURLPOSIXPathStyle, 0);
              CFRelease(v33);
            }
          }

          v34 = VSGetLogDefault();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v42 = "server_VSRecognitionPrepareOrBegin";
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%s: allowing recognition start\n", buf, 0xCu);
          }

          DWORD2(v36) = a1;
          cf[0] = v19;
          LODWORD(v39) = a2;
          *(&v39 + 1) = a9;
          LOWORD(v40) = a10;
          BYTE2(v40) = a11;
          sub_1000EB4B4(a11);
          sub_1000DEB4C(&v36);
          v23 = 1;
          goto LABEL_12;
        }

        CFRelease(v28);
      }

      CFRelease(v26);
    }

    v35 = VSGetLogDefault();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v42 = "server_VSRecognitionPrepareOrBegin";
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: error converting disambiguation context\n", buf, 0xCu);
    }
  }

  v23 = 0;
LABEL_12:
  pthread_mutex_unlock(&stru_100101210);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

LABEL_14:
  if (v38[0])
  {
    CFRelease(v38[0]);
  }

  if (v38[1])
  {
    CFRelease(v38[1]);
  }

  if (a12)
  {
    *a12 = v23;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (a1 - 1 <= 0xFFFFFFFD && !v23)
  {
    mach_port_deallocate(mach_task_self_, a1);
  }
}

void sub_1000DEB4C(void *value)
{
  memset(&callBacks, 0, 40);
  Mutable = qword_100106578;
  if (!qword_100106578)
  {
    callBacks.info = sub_1000EA040;
    memset(&callBacks.retain, 0, 24);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &callBacks);
    qword_100106578 = Mutable;
  }

  if (*value != 1)
  {
    goto LABEL_16;
  }

  Count = CFArrayGetCount(Mutable);
  if (!value[1])
  {
    sub_1000E9EE8(1);
    goto LABEL_16;
  }

  v4 = Count;
  if (Count < 1)
  {
LABEL_16:
    CFArrayAppendValue(qword_100106578, value);
    if ((byte_100106488 & 1) == 0)
    {
      v9 = qword_100106470;
      if (!qword_100106470)
      {
        *&callBacks.cancel = unk_1000FE558;
        memset(&callBacks, 0, 64);
        v9 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &callBacks);
        qword_100106470 = v9;
      }

      byte_100106488 = 1;
      v10 = 0;
      memset(&callBacks, 0, 64);
      pthread_attr_init(&callBacks);
      pthread_attr_setdetachstate(&callBacks, 2);
      pthread_create(&v10, &callBacks, sub_1000DED78, v9);
      pthread_attr_destroy(&callBacks);
    }

    if (qword_100106470)
    {
      if (qword_100106478)
      {
        CFRunLoopSourceSignal(qword_100106470);
        CFRunLoopWakeUp(qword_100106478);
      }
    }

    return;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100106578, v5);
    v7 = ValueAtIndex[1];
    if (!v7)
    {
      break;
    }

    v8 = value[1];
    if (v8 && CFStringCompare(v7, v8, 0) == kCFCompareEqualTo)
    {
      if (!ValueAtIndex[2])
      {
        return;
      }

      if (!value[2])
      {
        CFArrayRemoveValueAtIndex(qword_100106578, v5);
        sub_1000E9F84(kCFAllocatorDefault, ValueAtIndex);
        --v4;
        --v5;
      }
    }

    if (++v5 >= v4)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000DED78(__CFRunLoopSource *a1)
{
  v167 = 0;
  memset(&v148, 0, sizeof(v148));
  context = 0u;
  v150 = 0u;
  v151 = 0u;
  *cf = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  *v160 = 0u;
  *inAQ = 0u;
  v162[1] = 0;
  *cf1 = 0u;
  *inExtAudioFile = 0u;
  *inAudioFile = 0u;
  v166 = 0xFFFFFFFF00000000;
  LODWORD(inAQ[0]) = -1;
  v162[0] = -1;
  Current = CFRunLoopGetCurrent();
  v3 = sub_1000E1934(sub_1000E13EC, &v167);
  if (v3)
  {
    CFRunLoopAddSource(Current, v3, kCFRunLoopDefaultMode);
  }

  if (a1)
  {
    CFRunLoopAddSource(Current, a1, kCFRunLoopDefaultMode);
  }

  if (v167)
  {
    goto LABEL_6;
  }

  v147 = 0;
  v146 = 0;
  v5 = &unk_100106000;
  theString = kVSServerRecognitionPreparedNotification;
  v144 = kVSServerRecognitionErrorNotification;
  v145 = kVSServerRecognitionErrorCodeKey;
  v142 = kVSServerRecognitionResultsKey;
  v143 = kVSServerRecognitionResultsNotification;
  do
  {
    pthread_mutex_lock(&stru_100101210);
    if (!qword_100106478)
    {
      qword_100106478 = Current;
    }

    if (!qword_100106578 || CFArrayGetCount(qword_100106578) <= 0)
    {
      v5[141] = 0;
      pthread_mutex_unlock(&stru_100101210);
LABEL_31:
      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.79769313e308, 1u);
      continue;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(qword_100106578, 0);
    CFArrayRemoveValueAtIndex(qword_100106578, 0);
    v5[141] = ValueAtIndex;
    pthread_mutex_unlock(&stru_100101210);
    if (!ValueAtIndex)
    {
      goto LABEL_31;
    }

    object = os_transaction_create();
    sub_1000E1A1C(v3, 1);
    v140 = a1;
    if (*ValueAtIndex == 1)
    {
      v7 = v5;
      v147 = *(ValueAtIndex + 6);
      v146 = getiopolicy_np(0, 1);
      setiopolicy_np(0, 1, 3);
      if (!setpriority(3, 0, 4096))
      {
        v8 = VSGetLogDefault();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *outPropertyData = 0;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Running with background thread priority", outPropertyData, 2u);
        }
      }

      v5 = v7;
      if (*ValueAtIndex)
      {
LABEL_38:
        v9 = 0;
        *(&context + 4) = 0;
        cf1[1] = 0;
        BYTE5(inAQ[0]) = 1;
        inExtAudioFile[1] = 0;
        inAudioFile[0] = 0;
        theString1 = @"_default";
        inExtAudioFile[0] = 0;
        goto LABEL_44;
      }
    }

    else
    {
      if (*ValueAtIndex)
      {
        goto LABEL_38;
      }

      v147 = *(ValueAtIndex + 12);
    }

    v10 = *(ValueAtIndex + 2);
    cf1[1] = *(ValueAtIndex + 4);
    *(inAQ + 5) = *(ValueAtIndex + 65);
    BYTE4(inAQ[0]) = ValueAtIndex[64];
    v11 = *(ValueAtIndex + 5);
    inExtAudioFile[1] = v11;
    inAudioFile[1] = *(ValueAtIndex + 7);
    v9 = *(ValueAtIndex + 3);
    theString1 = *(ValueAtIndex + 2);
    inExtAudioFile[0] = 0;
    inAudioFile[0] = 0;
    *(&context + 4) = v10;
    if (v11 && AudioFileOpenURL(v11, kAudioFileReadPermission, 0x57415645u, inAudioFile))
    {
      v12 = v5;
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *outPropertyData = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "couldn't open audio input file for reading\n", outPropertyData, 2u);
      }

      DWORD2(context) = -4006;
      v5 = v12;
    }

LABEL_44:
    v134 = v9;
    ioDataSize[0] = 40;
    v15 = LODWORD(inAQ[0]) != -1 && LODWORD(inAQ[0]) == v147;
    if (v150)
    {
      v16 = *&v151;
    }

    else
    {
      v16 = -1.0;
    }

    memset(outPropertyData, 0, 40);
    if (inAudioFile[0])
    {
      v17 = v5;
      if (AudioFileGetProperty(inAudioFile[0], 0x64666D74u, ioDataSize, outPropertyData))
      {
        v18 = -1.0;
      }

      else
      {
        v18 = *outPropertyData;
      }
    }

    else
    {
      v17 = v5;
      if (BYTE6(inAQ[0]))
      {
        v18 = 8000.0;
      }

      else
      {
        v18 = -1.0;
      }
    }

    v19 = !v15;
    if (!cf[0])
    {
      v19 = 1;
    }

    if ((v19 & 1) != 0 || (v20 = VSPreferencesCopySpokenLanguageIdentifier()) == 0)
    {
      if (v15)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v21 = v20;
      v22 = CFStringCompare(v20, cf[0], 0);
      CFRelease(v21);
      if (v22 == kCFCompareEqualTo)
      {
        goto LABEL_77;
      }
    }

    if (v150)
    {
      if (*(&v153 + 1))
      {
        (*(&v153 + 1))(&v150);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      *&v150 = 0;
    }

    LODWORD(inAQ[0]) = -1;
    if (cf1[0])
    {
      CFRelease(cf1[0]);
      cf1[0] = 0;
    }

    if (v160[1])
    {
      CFRelease(v160[1]);
      v160[1] = 0;
    }

LABEL_77:
    v23 = v150 != 0;
    if (v150)
    {
      if (!*(&v157 + 1))
      {
        goto LABEL_85;
      }

      v24 = (*(&v157 + 1))(&v150, 0, v18);
    }

    else
    {
      v25 = sub_1000E9358(v147, &v150);
      DWORD2(context) = v25;
      if (v25 && (syslog(3, "Error %d at %s:%d\n", v25, "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSRecognitionServer.c", 841), DWORD2(context)) || (LODWORD(inAQ[0]) = v147, !v153))
      {
LABEL_85:
        v23 = 1;
        goto LABEL_86;
      }

      v160[1] = sub_1000E1F18(*(&v151 + 1), cf[0], cf[1]);
      v24 = (v153)(&v150, v160[1], v18);
    }

    DWORD2(context) = v24;
LABEL_86:
    if (v16 != *&v151)
    {
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "_CreateEngineIfNecessary";
        v170 = 1024;
        v171 = *&v151;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s: sample rate change (now %d Hz); invalidating queue\n", buf, 0x12u);
      }

      sub_1000E0748(&context);
    }

    if (DWORD2(context))
    {
      syslog(3, "Error %d at %s:%d\n", DWORD2(context), "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSRecognitionServer.c", 864);
    }

    v139 = Current;
    if (v23)
    {
      if (*ValueAtIndex == 1)
      {
        v27 = theString1;
        if (!v160[1])
        {
          v27 = 0;
        }

        theString1 = v27;
      }

      v5 = v17;
    }

    else
    {
      BYTE5(inAQ[0]) = 0;
      v5 = v17;
      if (*ValueAtIndex == 1)
      {
        if (DWORD2(context))
        {
LABEL_200:
          if (!sub_1000E22E4(*(ValueAtIndex + 1), *(ValueAtIndex + 2), &v150, &v160[1]))
          {
            a1 = v140;
            if (cf1[0])
            {
              CFRelease(cf1[0]);
            }

            v63 = 0;
            cf1[0] = sub_1000E5B24();
            goto LABEL_306;
          }

          v63 = 0;
          LODWORD(inAQ[0]) = -1;
LABEL_203:
          a1 = v140;
          goto LABEL_306;
        }

LABEL_151:
        v132 = v3;
        v55 = CFSetCreate(kCFAllocatorDefault, 0, 0, 0);
LABEL_152:
        v56 = 0;
        if (v55)
        {
          goto LABEL_155;
        }

        goto LABEL_184;
      }
    }

    if (DWORD2(context))
    {
      goto LABEL_188;
    }

    if (!theString1)
    {
      goto LABEL_151;
    }

    v132 = v3;
    if (CFStringCompare(theString1, @"_default", 0) == kCFCompareEqualTo)
    {
      v56 = 1;
      v55 = sub_1000E5B24();
      if (v55)
      {
        goto LABEL_155;
      }

      goto LABEL_184;
    }

    v28 = v134;
    if (!v134)
    {
      v60 = sub_1000E4E50(theString1);
      if (v60)
      {
        goto LABEL_180;
      }

LABEL_184:
      v61 = VSGetLogDefault();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *outPropertyData = 136315138;
        *&outPropertyData[4] = "_InitializeEngine";
        _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%s: no valid models could be created\n", outPropertyData, 0xCu);
      }

      v59 = -4001;
      DWORD2(context) = -4001;
      v3 = v132;
      v5 = &unk_100106000;
LABEL_187:
      syslog(3, "Error %d at %s:%d\n", v59, "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSRecognitionServer.c", 997);
      goto LABEL_188;
    }

    ModelIdentifier = VSRecognitionDisambiguationContextGetModelIdentifier();
    v30 = VSGetLogDefault();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *outPropertyData = 138412290;
      *&outPropertyData[4] = v134;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@", outPropertyData, 0xCu);
    }

    v31 = sub_1000E4E50(ModelIdentifier);
    if (!v31)
    {
      goto LABEL_184;
    }

    v32 = v31;
    v33 = sub_1000E7DA4(v31);
    v173 = 0;
    memset(outPropertyData, 0, sizeof(outPropertyData));
    if (!v33)
    {
      goto LABEL_183;
    }

    v122 = v33;
    SequenceTag = VSRecognitionDisambiguationContextGetSequenceTag();
    if (!SequenceTag)
    {
      goto LABEL_182;
    }

    v35 = sub_1000E7E18(v32[73], SequenceTag);
    if (!v35)
    {
      goto LABEL_182;
    }

    v36 = v35;
    Count = CFArrayGetCount(v35);
    if (Count < 1 || (KnownClassValues = VSRecognitionDisambiguationContextGetKnownClassValues()) == 0 || (theDict = KnownClassValues, CFDictionaryGetCount(KnownClassValues) < 1))
    {
      CFRelease(v36);
LABEL_182:
      CFRelease(v122);
LABEL_183:
      CFRelease(v32);
      goto LABEL_184;
    }

    v38 = 0;
    theSet = 0;
    v120 = 0;
    v121 = 0;
    v124 = v36;
    theArray = 0;
    v123 = v32;
    do
    {
      v129 = v38;
      theString1a = CFArrayGetValueAtIndex(v36, v38);
      v39 = CFArrayGetCount(theString1a->data);
      if (v39 < 1)
      {
        goto LABEL_147;
      }

      v40 = v39;
      *v126 = v39 - 1;
      v41 = 0;
      v42 = -1;
      v43 = -1;
      do
      {
        v44 = CFArrayGetValueAtIndex(theString1a->data, v41);
        v45 = *(v44 + 2);
        if (v45)
        {
          CFRetain(*(v44 + 2));
          Value = CFDictionaryGetValue(theDict, v45);
          if (v43 == -1 && Value == 0)
          {
            v43 = v41;
          }

          if (!Value)
          {
            v42 = v41;
          }

          CFRelease(v45);
        }

        ++v41;
      }

      while (v40 != v41);
      if (v43 == -1)
      {
        v28 = v134;
        v32 = v123;
LABEL_146:
        v36 = v124;
LABEL_147:
        v48 = v129;
        goto LABEL_148;
      }

      v28 = v134;
      v36 = v124;
      v48 = v129;
      if (v42 == -1 || !v43 && v42 == *v126)
      {
        v32 = v123;
        goto LABEL_148;
      }

      CFRetain(theString1a->data);
      theString1b = theString1a->data;
      if (theString1b)
      {
        v28 = v134;
        if (!theArray)
        {
          theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          theSet = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
        }

        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v178.length = v42 - v43 + 1;
        v127 = Mutable;
        v178.location = v43;
        CFArrayAppendArray(Mutable, theString1b, v178);
        if ((v42 - v43) <= 0x7FFFFFFFFFFFFFFELL)
        {
          v50 = v42 - v43 + 2;
          do
          {
            v51 = CFArrayGetValueAtIndex(theString1b, v43);
            if (!CFSetContainsValue(theSet, v51))
            {
              CFSetAddValue(theSet, v51);
              CFArrayAppendValue(theArray, v51);
            }

            ++v43;
            --v50;
          }

          while (v50 > 1);
        }

        v52 = v127;
        v53 = sub_1000E900C(kCFAllocatorDefault, v127, 0);
        v54 = v121;
        if (!v121)
        {
          v54 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v52 = v127;
          v120 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
        }

        v121 = v54;
        v32 = v123;
        if (!CFSetContainsValue(v120, v53))
        {
          CFArrayAppendValue(v121, v53);
          CFSetAddValue(v120, v53);
        }

        CFRelease(theString1b);
        CFRelease(v53);
        CFRelease(v52);
        goto LABEL_146;
      }

      v32 = v123;
      v48 = v129;
      v28 = v134;
LABEL_148:
      v38 = v48 + 1;
    }

    while (v38 != Count);
    CFRelease(v36);
    if (v121)
    {
      *outPropertyData = sub_1000E84EC;
      *&outPropertyData[8] = sub_1000E80D8;
      *&outPropertyData[16] = sub_1000E7F84;
      *&outPropertyData[24] = sub_1000E7EB8;
      *&outPropertyData[32] = 0uLL;
      v173 = sub_1000E7E58;
      v91 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
      *v91 = v32;
      v91[1] = v28;
      v91[2] = 0;
      CFRetain(v32);
      CFRetain(v28);
      v92 = theArray;
      v93 = sub_1000E7A44(kCFAllocatorDefault, 0, 0, 0, theArray, v121, 0, 0, outPropertyData, v91);
      v60 = v93;
      if (v93)
      {
        *(v93 + 648) = 1;
      }

      else
      {
        sub_1000E7E58(v91);
      }

      v94 = theSet;
      CFRelease(v121);
      CFRelease(v120);
    }

    else
    {
      v60 = 0;
      v94 = theSet;
      v92 = theArray;
    }

    CFRelease(v122);
    if (v92)
    {
      CFRelease(v92);
    }

    if (v94)
    {
      CFRelease(v94);
    }

    CFRelease(v123);
    if (!v60)
    {
      goto LABEL_184;
    }

    *buf = 0;
    v95 = sub_1000E4150();
    *&outPropertyData[8] = 1;
    *outPropertyData = buf;
    if (!v95)
    {
      goto LABEL_180;
    }

    v96 = v95;
    CFDictionaryApplyFunction(v95, sub_1000E5B88, outPropertyData);
    CFRelease(v96);
    v97 = *buf;
    if (!*buf)
    {
      goto LABEL_180;
    }

    MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, *buf);
    if (!MutableCopy)
    {
      CFRelease(v97);
LABEL_180:
      *outPropertyData = v60;
      v55 = CFSetCreate(kCFAllocatorDefault, outPropertyData, 1, &kCFTypeSetCallBacks);
      CFRelease(v60);
      goto LABEL_152;
    }

    v55 = MutableCopy;
    CFSetAddValue(MutableCopy, v60);
    CFRelease(v97);
    v56 = 0;
LABEL_155:
    v57 = cf1[0];
    if (cf1[0])
    {
      v3 = v132;
      if (CFEqual(cf1[0], v55))
      {
        CFRelease(v55);
        v5 = &unk_100106000;
        goto LABEL_177;
      }

      v57 = cf1[0];
    }

    else
    {
      v3 = v132;
    }

    v58 = v56 ^ 1;
    if (v57)
    {
      v58 = 1;
    }

    if (v58)
    {
      v5 = &unk_100106000;
      if (v57 && CFSetGetCount(v57) >= 1)
      {
        if (*(&v154 + 1))
        {
          VSCFSetSendDifferences();
        }

        if (v154 && !DWORD2(context))
        {
          VSCFSetSendDifferences();
        }

        goto LABEL_174;
      }

LABEL_172:
      if (v154)
      {
        CFSetApplyFunction(v55, sub_1000E1350, &context);
      }

      goto LABEL_174;
    }

    v5 = &unk_100106000;
    if (v160[1])
    {
      goto LABEL_172;
    }

    DWORD2(context) = sub_1000E22E4(0, 0, &v150, &v160[1]);
LABEL_174:
    if (cf1[0])
    {
      CFRelease(cf1[0]);
    }

    cf1[0] = v55;
LABEL_177:
    v59 = DWORD2(context);
    if (DWORD2(context))
    {
      goto LABEL_187;
    }

LABEL_188:
    if (*ValueAtIndex == 1)
    {
      goto LABEL_200;
    }

    if (*ValueAtIndex)
    {
      v63 = 0;
      goto LABEL_203;
    }

    v62 = CFMachPortCreateWithPort(kCFAllocatorDefault, *(ValueAtIndex + 2), nullsub_16, &v148, 0);
    v63 = v62;
    a1 = v140;
    if (!v62)
    {
      v65 = VSGetLogDefault();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *outPropertyData = 0;
        _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "couldn't create instance for client port - cancelling\n", outPropertyData, 2u);
      }

      goto LABEL_209;
    }

    CFMachPortSetInvalidationCallBack(v62, sub_1000E112C);
    if (DWORD2(context))
    {
      goto LABEL_210;
    }

    v64 = (v158)(&v150, cf1[0], cf1[1], BYTE5(inAQ[0]));
    DWORD2(context) = v64;
    if (v64)
    {
      syslog(3, "Error %d at %s:%d (%s)\n", v64, "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSRecognitionServer.c", 1011, "couldn't start recognition");
      if (DWORD2(context))
      {
        goto LABEL_210;
      }
    }

    if (inExtAudioFile[1])
    {
      goto LABEL_250;
    }

    if (inAQ[1])
    {
      if (sub_1000EB410() != v162[0])
      {
        sub_1000E0748(&context);
      }

      if (inAQ[1])
      {
        sub_1000EB4B4(BYTE6(inAQ[0]));
        sub_1000EB450(1, 3);
        LOBYTE(v166) = 1;
        goto LABEL_240;
      }
    }

    v162[0] = sub_1000EB410();
    v66 = v151;
    outBuffer = 0;
    *ioDataSize = 0;
    v67 = +[VSAudioSession sharedInstance];
    v68 = 1;
    [v67 _safeSetCategoryForActivity:1];

    *outPropertyData = v66;
    *&outPropertyData[8] = xmmword_1000F2CD0;
    *&outPropertyData[24] = xmmword_1000F2CE0;
    v69 = CFRunLoopGetCurrent();
    if (!AudioQueueNewInput(outPropertyData, sub_1000E1014, &context, v69, kCFRunLoopCommonModes, 0, ioDataSize))
    {
      inData = 127;
      v70 = AudioQueueSetProperty(*ioDataSize, 0x73726371u, &inData, 4u);
      if (v70)
      {
        v71 = sub_1000E1DA0(v70);
        v72 = VSGetLogDefault();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v71;
          _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "error setting SRC quality: %@\n", buf, 0xCu);
        }

        CFRelease(v71);
      }

      v73 = 0;
      v74 = (*outPropertyData * (*&outPropertyData[16] * 0.05));
      do
      {
        v75 = AudioQueueAllocateBuffer(*ioDataSize, v74, &outBuffer);
        if (v75)
        {
          v76 = 1;
        }

        else
        {
          v76 = outBuffer == 0;
        }

        if (!v76)
        {
          v75 = AudioQueueEnqueueBuffer(*ioDataSize, outBuffer, 0, 0);
        }

        if (v73 > 4)
        {
          break;
        }

        ++v73;
      }

      while (!v75);
      v68 = v75 != 0;
    }

    v77 = *ioDataSize;
    if (*ioDataSize && v68)
    {
      AudioQueueDispose(*ioDataSize, 1u);
      v78 = 0;
    }

    else
    {
      pthread_mutex_lock(&stru_1001014B0);
      v79 = qword_100106590;
      if (!qword_100106590)
      {
        v79 = CFSetCreateMutable(kCFAllocatorDefault, 0, 0);
        qword_100106590 = v79;
      }

      CFSetAddValue(v79, v77);
      pthread_mutex_unlock(&stru_1001014B0);
      v78 = *ioDataSize;
    }

    a1 = v140;
    inAQ[1] = v78;
    v80 = AudioQueueAddPropertyListener(v78, 0x6171726Eu, sub_1000E0FAC, &context);
    if (v80)
    {
      v81 = sub_1000E1DA0(v80);
      v82 = VSGetLogDefault();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *outPropertyData = 138412290;
        *&outPropertyData[4] = v81;
        _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "couldn't add listener for queue running state (%@)\n", outPropertyData, 0xCu);
      }

      CFRelease(v81);
    }

    if (!inAQ[1])
    {
      v90 = VSGetLogDefault();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        *outPropertyData = 0;
        _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "couldn't create audio queue\n", outPropertyData, 2u);
      }

LABEL_209:
      DWORD2(context) = -4001;
      goto LABEL_210;
    }

    sub_1000EB4B4(BYTE6(inAQ[0]));
    sub_1000EB450(1, 3);
    LOBYTE(v166) = 1;
    AudioQueueStart(inAQ[1], 0);
    AudioQueuePause(inAQ[1]);
    AudioQueueReset(inAQ[1]);
LABEL_240:
    if (*&inAudioFile[1] > 0.0)
    {
      sub_1000DE62C(inAQ[1], 1);
    }

    sub_1000E0820(45, &v166 + 1);
    if (cf1[1])
    {
      memset(outPropertyData, 0, 40);
      v83 = VSLogBundleCopyURLForFile();
      if (v83)
      {
        v84 = v83;
        *buf = 40;
        AudioQueueGetProperty(inAQ[1], 0x61716674u, outPropertyData, buf);
        ExtAudioFileCreateWithURL(v84, 0x57415645u, outPropertyData, 0, 1u, inExtAudioFile);
        CFRelease(v84);
      }
    }

    if (v162[1])
    {
      v85 = CFArrayGetCount(v162[1]);
      if (v85 >= 1)
      {
        v86 = v85;
        for (i = 0; i != v86; ++i)
        {
          v88 = inAQ[1];
          v89 = CFArrayGetValueAtIndex(v162[1], i);
          AudioQueueEnqueueBuffer(v88, v89, 0, 0);
        }
      }

      CFArrayRemoveAllValues(v162[1]);
      a1 = v140;
    }

LABEL_250:
    if (!DWORD2(context))
    {
      sub_1000E1B6C(DWORD1(context), theString, 0);
      goto LABEL_212;
    }

LABEL_210:
    if (inAudioFile[0])
    {
      AudioFileClose(inAudioFile[0]);
    }

LABEL_212:
    qword_100106490 = &context;
    if (BYTE4(inAQ[0]))
    {
      goto LABEL_272;
    }

LABEL_271:
    sub_1000E090C(&context);
LABEL_272:
    while (!v167 && !DWORD2(context))
    {
      v99 = BYTE4(inAQ[0]);
      if ((BYTE4(inAQ[0]) != 1 || context != 0) && (BYTE4(inAQ[0]) || context != 1))
      {
        break;
      }

      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.79769313e308, 1u);
      if (v99)
      {
        v102 = BYTE4(inAQ[0]) == 0;
      }

      else
      {
        v102 = 0;
      }

      if (v102 && context == 0)
      {
        goto LABEL_271;
      }
    }

    qword_100106490 = 0;
    if (inAQ[1])
    {
      AudioQueuePause(inAQ[1]);
      AudioQueueFlush(inAQ[1]);
      AudioQueueReset(inAQ[1]);
      pthread_mutex_lock(&stru_100101210);
      qword_100106480 = 0;
      pthread_mutex_unlock(&stru_100101210);
      sub_1000DE62C(inAQ[1], 0);
      if (HIDWORD(v166) != -1)
      {
        sub_1000E0820(SHIDWORD(v166), 0);
      }
    }

    if (v166)
    {
      sub_1000EB450(0, 3);
      LOBYTE(v166) = 0;
    }

    if (inAudioFile[0])
    {
      AudioFileClose(inAudioFile[0]);
      inAudioFile[0] = 0;
    }

    if (v159)
    {
      v104 = (v159)(&v150);
      v105 = v104;
      if (v104)
      {
        syslog(3, "Error %d at %s:%d\n", v104, "/Library/Caches/com.apple.xbs/Sources/VoiceServicesDaemons/Daemon/VSRecognitionServer.c", 1299);
      }

      if (!DWORD2(context))
      {
        DWORD2(context) = v105;
      }
    }

    if (inExtAudioFile[0])
    {
      ExtAudioFileDispose(inExtAudioFile[0]);
      inExtAudioFile[0] = 0;
    }

    v5 = &unk_100106000;
LABEL_306:
    pthread_mutex_lock(&stru_100101210);
    v5[141] = 0;
    pthread_mutex_unlock(&stru_100101210);
    if (v63)
    {
      CFMachPortSetInvalidationCallBack(v63, 0);
      CFRelease(v63);
    }

    if (*ValueAtIndex == 1)
    {
      setiopolicy_np(0, 1, v146);
      setpriority(3, 0, 0);
      Current = v139;
    }

    else
    {
      Current = v139;
      if (!*ValueAtIndex)
      {
        v106 = *(ValueAtIndex + 2);
        if (!DWORD2(context) && context == 3)
        {
          v133 = v3;
          if (*(&v159 + 1))
          {
            v107 = (*(&v159 + 1))(&v150, cf1[0], cf1[1]);
            v108 = v107;
            if (v107)
            {
              v109 = CFArrayGetCount(v107);
              if (v109 >= 1)
              {
                v110 = v109;
                v111 = VSGetLogDefault();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                {
                  v112 = VSGetLogDefault();
                  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
                  {
                    *outPropertyData = 0;
                    _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, " \nRecognition results:\n--------------------\n", outPropertyData, 2u);
                  }

                  v176.location = 0;
                  v176.length = v110;
                  CFArrayApplyFunction(v108, v176, sub_1000E0F0C, 0);
                }

                v113 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                v177.location = 0;
                v177.length = v110;
                CFArrayApplyFunction(v108, v177, sub_1000E0DC8, v113);
                *outPropertyData = v142;
                *buf = v113;
                v114 = CFDictionaryCreate(kCFAllocatorDefault, outPropertyData, buf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_328:
                if (!sub_1000E1B6C(v106, v143, v114))
                {
                  v119 = VSGetLogDefault();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                  {
                    *outPropertyData = 136315138;
                    *&outPropertyData[4] = "_SendChoices";
                    _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%s: error posting client completion notification\n", outPropertyData, 0xCu);
                  }
                }

                a1 = v140;
                if (v108)
                {
                  CFRelease(v108);
                }

                if (v114)
                {
                  CFRelease(v114);
                }

                v3 = v133;
                if (v113)
                {
                  v118 = v113;
LABEL_337:
                  CFRelease(v118);
                }

                goto LABEL_338;
              }
            }
          }

          else
          {
            v108 = 0;
          }

          v113 = 0;
          v114 = 0;
          goto LABEL_328;
        }

        *buf = -4001;
        v115 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, buf);
        outBuffer = v115;
        *ioDataSize = v145;
        v116 = CFDictionaryCreate(kCFAllocatorDefault, ioDataSize, &outBuffer, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFRelease(v115);
        if (!sub_1000E1B6C(v106, v144, v116))
        {
          v117 = VSGetLogDefault();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            *outPropertyData = 136315138;
            *&outPropertyData[4] = "_SendChoices";
            _os_log_error_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%s: error posting client error notification\n", outPropertyData, 0xCu);
          }
        }

        a1 = v140;
        if (v116)
        {
          v118 = v116;
          goto LABEL_337;
        }

LABEL_338:
        v5 = &unk_100106000;
        if (v160[0])
        {
          (v160[0])(&v150);
        }
      }
    }

    sub_1000E9F84(kCFAllocatorDefault, ValueAtIndex);
    sub_1000E1A1C(v3, 0);
    os_release(object);
    LODWORD(context) = 0;
  }

  while (!v167);
LABEL_6:
  if (a1)
  {
    CFRunLoopRemoveSource(Current, a1, kCFRunLoopDefaultMode);
  }

  if (*(&v153 + 1))
  {
    (*(&v153 + 1))(&v150);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf1[0])
  {
    CFRelease(cf1[0]);
    cf1[0] = 0;
  }

  if (v160[1])
  {
    CFRelease(v160[1]);
    v160[1] = 0;
  }

  sub_1000E0748(&context);
  if (v162[1])
  {
    CFRelease(v162[1]);
    v162[1] = 0;
  }

  if (v3)
  {
    sub_1000E1AEC(v3);
    CFRunLoopSourceInvalidate(v3);
    CFRelease(v3);
  }

  return 0;
}

void sub_1000E0748(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    sub_1000DE62C(v2, 0);
    v3 = *(a1 + 200);
    pthread_mutex_lock(&stru_1001014B0);
    if (qword_100106590)
    {
      CFSetRemoveValue(qword_100106590, v3);
    }

    pthread_mutex_unlock(&stru_1001014B0);
    AudioQueueRemovePropertyListener(*(a1 + 200), 0x6171726Eu, sub_1000E0FAC, a1);
    AudioQueueStop(*(a1 + 200), 1u);
    AudioQueueFlush(*(a1 + 200));
    AudioQueueReset(*(a1 + 200));
    AudioQueueDispose(*(a1 + 200), 0);
    *(a1 + 200) = 0;
    *(a1 + 208) = -1;
    v4 = *(a1 + 216);
    if (v4)
    {

      CFArrayRemoveAllValues(v4);
    }
  }
}

void sub_1000E0820(int a1, int *a2)
{
  v4 = pthread_self();
  v7 = 0;
  v6 = 0;
  if (!pthread_getschedparam(v4, &v6, &v7))
  {
    if (a2)
    {
      *a2 = v7.sched_priority;
    }

    v7.sched_priority = a1;
    pthread_setschedparam(v4, v6, &v7);
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v9 = a1;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setting recognition thread priority to %d\n", buf, 8u);
    }
  }
}

void sub_1000E090C(uint64_t a1)
{
  if (!a1 || *a1 || *(a1 + 8))
  {
    return;
  }

  if (!*(a1 + 256))
  {
    if (!*(a1 + 200))
    {
      goto LABEL_24;
    }

    mach_absolute_time();
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(outPropertyData.mSampleTime) = 136315394;
      *(&outPropertyData.mSampleTime + 4) = "_BeginRecognition";
      WORD2(outPropertyData.mHostTime) = 2048;
      *(&outPropertyData.mHostTime + 6) = sub_1000EB510();
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s: sleeping for %g s\n", &outPropertyData, 0x16u);
    }

    v5 = sub_1000EB510();
    usleep((v5 * 1000000.0));
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    outPropertyData.mFlags = 2;
    outPropertyData.mHostTime = mach_absolute_time();
    v6 = AudioQueueStart(*(a1 + 200), &outPropertyData);
    pthread_mutex_lock(&stru_100101210);
    qword_100106480 = *(a1 + 200);
    pthread_mutex_unlock(&stru_100101210);
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      mach_absolute_time();
      VSAbsoluteTimeToSecond();
      ioDataSize = 136315394;
      v22 = "_BeginRecognition";
      v23 = 2048;
      v24 = v16;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: finished starting queue in %g s\n", &ioDataSize, 0x16u);
      if (v6)
      {
        goto LABEL_16;
      }
    }

    else if (v6)
    {
LABEL_16:
      *(a1 + 8) = -4001;
      v8 = sub_1000E1DA0(v6);
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ioDataSize = 138412290;
        v22 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "couldn't start audio queue for recognition (%@)\n", &ioDataSize, 0xCu);
      }

      CFRelease(v8);
      goto LABEL_24;
    }

    v17 = VSGetLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      ioDataSize = 136315138;
      v22 = "_BeginRecognition";
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: starting recognition\n", &ioDataSize, 0xCu);
    }

    *a1 = 1;
    sub_1000E1B6C(*(a1 + 4), kVSServerRecognitionStartedNotification, 0);
    goto LABEL_24;
  }

  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(outPropertyData.mSampleTime) = 136315138;
    *(&outPropertyData.mSampleTime + 4) = "_BeginRecognition";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: starting recognition from file\n", &outPropertyData, 0xCu);
  }

  *a1 = 1;
  sub_1000E1B6C(*(a1 + 4), kVSServerRecognitionStartedNotification, 0);
  memset(&outPropertyData, 0, 40);
  ioDataSize = 40;
  if (AudioFileGetProperty(*(a1 + 256), 0x64666D74u, &ioDataSize, &outPropertyData))
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(ioNumBytes[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "couldn't get file format description.\n", ioNumBytes, 2u);
    }

    *a1 = 3;
    *(a1 + 8) = -4001;
    goto LABEL_23;
  }

  ioNumPackets = 400;
  ioNumBytes[0] = 400 * LODWORD(outPropertyData.mRateScalar);
  v18 = 0;
  v10 = malloc_type_malloc((400 * LODWORD(outPropertyData.mRateScalar)), 0x8E1F4C05uLL);
  if (!v10)
  {
    *a1 = 3;
    goto LABEL_23;
  }

  v11 = v10;
  if (!*(a1 + 8))
  {
    v13 = 0;
    do
    {
      if (*a1 == 3)
      {
        break;
      }

      if (AudioFileReadPacketData(*(a1 + 256), 0, ioNumBytes, 0, v13, &ioNumPackets, v11))
      {
        *(a1 + 8) = -4001;
        break;
      }

      v14 = ioNumPackets;
      if (ioNumPackets)
      {
        v15 = (*(a1 + 152))(a1 + 16, v11, ioNumPackets, LODWORD(outPropertyData.mRateScalar), &v18);
        *(a1 + 8) = v15;
        if (v18 == 1)
        {
          *a1 = 3;
        }

        if (ioNumPackets > 0x18F)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v15 = *(a1 + 8);
      }

      *a1 = 3;
LABEL_38:
      v13 += v14;
    }

    while (!v15);
  }

  *a1 = 3;
  free(v11);
LABEL_23:
  AudioFileClose(*(a1 + 256));
  *(a1 + 256) = 0;
LABEL_24:
  if (!*(a1 + 8))
  {
    v12 = *(a1 + 184);
    if (v12)
    {
      sub_1000E2224(v12, 1);
    }
  }
}

void sub_1000E0DC8(uint64_t a1, __CFArray *a2)
{
  ModelIdentifier = VSRecognitionResultGetModelIdentifier();
  if (!ModelIdentifier || (v4 = ModelIdentifier, (v5 = sub_1000E4CC4(ModelIdentifier)) == 0))
  {
LABEL_13:
    DictionaryRepresentation = VSRecognitionResultCreateDictionaryRepresentation();
    if (!DictionaryRepresentation)
    {
      return;
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = CFBundleCopyBundleURL(v5[10]);
  if (!v7)
  {
    CFRelease(v6);
    goto LABEL_13;
  }

  v8 = v7;
  pthread_mutex_lock((v6 + 16));
  v9 = sub_1000E616C(v6);
  pthread_mutex_unlock((v6 + 16));
  if (!v9)
  {
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v9, v4);
  if (!Value)
  {
    goto LABEL_10;
  }

  CFStringGetTypeID();
  if (VSCFDictionaryGetValueIfType())
  {
    Value = VSRecognitionPluginInfoCreateString();
  }

  else
  {
LABEL_9:
    Value = 0;
  }

LABEL_10:
  CFRelease(v8);
  CFRelease(v6);
  if (!Value)
  {
    goto LABEL_13;
  }

  DictionaryRepresentation = VSRecognitionResultCreateDictionaryRepresentationWithResultHandlerInfo();
  CFRelease(Value);
  if (!DictionaryRepresentation)
  {
    return;
  }

LABEL_14:
  CFArrayAppendValue(a2, DictionaryRepresentation);

  CFRelease(DictionaryRepresentation);
}

void sub_1000E0F0C(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  }
}

uint64_t sub_1000E0FAC(_DWORD *a1, AudioQueueRef inAQ)
{
  ioDataSize = 4;
  outData = 0;
  result = AudioQueueGetProperty(inAQ, 0x6171726Eu, &outData, &ioDataSize);
  if (!(result | outData) && *a1 == 1)
  {
    *a1 = 3;
  }

  return result;
}

void sub_1000E1014(uint64_t a1, AudioQueueRef inAQ, AudioQueueBufferRef inBuffer, uint64_t a4, UInt32 a5)
{
  v18 = 0;
  memset(&v17, 0, sizeof(v17));
  if (*a1 == 1)
  {
    mAudioDataByteSize = inBuffer->mAudioDataByteSize;
    if (!mAudioDataByteSize || (v10 = (*(a1 + 152))(a1 + 16, inBuffer->mAudioData, a5, mAudioDataByteSize / a5, &v18), *(a1 + 8) = v10, !inBuffer->mAudioDataByteSize) || (!v10 ? (v11 = v18 == 0) : (v11 = 0), !v11))
    {
      *a1 = 3;
      Current = CFRunLoopGetCurrent();
      CFRunLoopStop(Current);
    }

    if (a5)
    {
      v13 = *(a1 + 240);
      if (v13)
      {
        v14 = inBuffer->mAudioDataByteSize;
        mAudioData = inBuffer->mAudioData;
        v17.mNumberBuffers = 1;
        v17.mBuffers[0].mNumberChannels = 1;
        v17.mBuffers[0].mDataByteSize = v14;
        v17.mBuffers[0].mData = mAudioData;
        ExtAudioFileWriteAsync(v13, a5, &v17);
      }
    }
  }

  if (AudioQueueEnqueueBuffer(inAQ, inBuffer, 0, 0))
  {
    Mutable = *(a1 + 216);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      *(a1 + 216) = Mutable;
    }

    CFArrayAppendValue(Mutable, inBuffer);
  }
}

uint64_t sub_1000E112C(__CFMachPort *a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "_RecognitionClientInvalidationCallback";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: client died - cancelling recognition\n", &v5, 0xCu);
  }

  Port = CFMachPortGetPort(a1);
  return sub_1000E11E0(Port);
}

uint64_t sub_1000E11E0(uint64_t result)
{
  if ((result - 1) <= 0xFFFFFFFD)
  {
    v1 = result;
    pthread_mutex_lock(&stru_100101210);
    if (qword_100106468 && !*qword_100106468 && *(qword_100106468 + 8) == v1)
    {
      qword_100106468 = 0;
      if (qword_100106470)
      {
        CFRunLoopSourceSignal(qword_100106470);
      }

      if (qword_100106478)
      {
        CFRunLoopWakeUp(qword_100106478);
      }

      v2 = VSGetLogDefault();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        return pthread_mutex_unlock(&stru_100101210);
      }

      v5 = 136315138;
      v6 = "_CancelRecognitionForMachPort";
      v3 = "%s: client requested cancellation of active recognition\n";
    }

    else
    {
      v4 = sub_1000EA128();
      if (!v4)
      {
        return pthread_mutex_unlock(&stru_100101210);
      }

      if (v4[2] != v1)
      {
        return pthread_mutex_unlock(&stru_100101210);
      }

      sub_1000E9EE8(0);
      v2 = VSGetLogDefault();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        return pthread_mutex_unlock(&stru_100101210);
      }

      v5 = 136315138;
      v6 = "_CancelRecognitionForMachPort";
      v3 = "%s: client requested cancellation of queued recognition\n";
    }

    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, v3, &v5, 0xCu);
    return pthread_mutex_unlock(&stru_100101210);
  }

  return result;
}

uint64_t sub_1000E1350(uint64_t result, uint64_t a2)
{
  if (result && a2 && !*(a2 + 8))
  {
    v3 = *(a2 + 80);
    if (v3)
    {
      result = v3(a2 + 16, result);
      *(a2 + 8) = result;
    }
  }

  return result;
}

uint64_t sub_1000E139C(uint64_t result, uint64_t a2)
{
  if (result && a2 && !*(a2 + 8))
  {
    v3 = *(a2 + 88);
    if (v3)
    {
      result = v3(a2 + 16, result, 0);
      *(a2 + 8) = result;
    }
  }

  return result;
}

_BYTE *sub_1000E13EC(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock(&stru_100101210);
    byte_100106488 = 0;
    qword_100106478 = 0;
    result = pthread_mutex_unlock(&stru_100101210);
    *v1 = 1;
  }

  return result;
}

void sub_1000E1444()
{
  if (qword_100106490)
  {
    if (*qword_100106490 == 1 || (!*qword_100106490 ? (v0 = *(qword_100106490 + 196) == 0) : (v0 = 1), !v0))
    {
      pthread_mutex_lock(&stru_100101210);
      if (qword_100106468)
      {
        if (*qword_100106468)
        {
          goto LABEL_14;
        }

        if (*(qword_100106490 + 196) != 1)
        {
          goto LABEL_14;
        }

        if (*(qword_100106468 + 64))
        {
          goto LABEL_14;
        }

        *(qword_100106490 + 196) = 0;
        v1 = VSGetLogDefault();
        if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

        v4 = 0;
        v2 = "released from holding.. beginning now.\n";
        v3 = &v4;
      }

      else
      {
        *qword_100106490 = 2;
        v1 = VSGetLogDefault();
        if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
LABEL_14:
          pthread_mutex_unlock(&stru_100101210);
          return;
        }

        *buf = 0;
        v2 = "cancelling recognition\n";
        v3 = buf;
      }

      _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, v2, v3, 2u);
      goto LABEL_14;
    }
  }
}

void sub_1000E1554(unsigned int a1, const UInt8 *a2, CFIndex numBytes, UInt8 *bytes, unsigned int a5)
{
  v8 = 0;
  if (a2 && numBytes)
  {
    v8 = CFStringCreateWithBytes(kCFAllocatorDefault, a2, numBytes, 0x8000100u, 0);
  }

  v9 = 0;
  if (bytes && a5)
  {
    v9 = CFStringCreateWithBytes(kCFAllocatorDefault, bytes, a5, 0x8000100u, 0);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10[0] = 1;
  v10[1] = v8;
  v10[2] = v9;
  v10[3] = a1;
  pthread_mutex_lock(&stru_100101210);
  sub_1000DEB4C(v10);
  pthread_mutex_unlock(&stru_100101210);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  atomic_fetch_or(&tkqMjk4y, 0xC000u);
  v1 = VSGetLogDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.version) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "voiced starting up...", &buf, 2u);
  }

  +[VSSiriInstrumentation instrumentVoicedProcessStartedPowerEvent];
  if ((+[VSFeatureFlags useSiriTTSServiceV2]& 1) == 0)
  {
    v2 = objc_alloc_init(VSPostInstallService);
    [v2 registerPostInstallActivity];
    v3 = +[VSCacheDeleteService sharedService];
    v4 = [v3 registerCacheDelete];

    if ((v4 & 1) == 0)
    {
      v5 = VSGetLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.version) = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot register CacheDelete service.", &buf, 2u);
      }
    }

    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, &stru_1000FEAB0);
  }

  v17 = 1;
  buf.version = 0;
  memset(&buf.retain, 0, 56);
  buf.info = &v17;
  buf.perform = sub_1000E1924;
  qword_100106498 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &buf);
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, qword_100106498, kCFRunLoopDefaultMode);
  sub_1000E92CC(0);
  sub_1000E92CC(1u);
  v7 = +[VSAudioSession sharedInstance];
  [v7 _safeSetupAudioSession];

  v8 = objc_alloc_init(VSKeepAliveServer);
  [(VSKeepAliveServer *)v8 resume];
  v9 = objc_alloc_init(VSSpeechServer);
  [(VSSpeechServer *)v9 resume];
  Current = CFRunLoopGetCurrent();
  sp = 0;
  LODWORD(buf.version) = 0;
  v11 = mach_task_self_;
  task_get_special_port(mach_task_self_, 4, &buf);
  if (bootstrap_check_in(buf.version, "com.apple.voiced", &sp))
  {
    if (sp - 1 <= 0xFFFFFFFD)
    {
      mach_port_deallocate(v11, sp);
    }

    goto LABEL_14;
  }

  v12 = CPCreateMIGServerSource();
  if (!v12)
  {
LABEL_14:
    objc_autoreleasePoolPop(v0);
    v15 = 1;
    goto LABEL_15;
  }

  v13 = v12;
  CFRunLoopAddSource(Current, v12, kCFRunLoopDefaultMode);
  CFRelease(v13);
  objc_autoreleasePoolPop(v0);
  v14 = +[NSRunLoop currentRunLoop];
  [v14 run];

  v15 = 0;
LABEL_15:

  return v15;
}

_BYTE *sub_1000E1924(_BYTE *result)
{
  if (result)
  {
    *result = 1;
  }

  return result;
}

CFRunLoopSourceRef sub_1000E1934(void (__cdecl *a1)(void *), void *a2)
{
  v7.version = 0;
  memset(&v7.retain, 0, 56);
  v7.info = a2;
  v7.perform = a1;
  v2 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &v7);
  Current = CFRunLoopGetCurrent();
  pthread_mutex_lock(&stru_100101250);
  Mutable = qword_1001064A0;
  if (!qword_1001064A0)
  {
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    qword_1001064A0 = Mutable;
  }

  CFSetAddValue(Mutable, v2);
  v5 = qword_1001064A8;
  if (!qword_1001064A8)
  {
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qword_1001064A8 = v5;
  }

  CFDictionarySetValue(v5, v2, Current);
  pthread_mutex_unlock(&stru_100101250);
  return v2;
}

uint64_t sub_1000E1A1C(const void *a1, int a2)
{
  pthread_mutex_lock(&stru_100101250);
  Mutable = qword_1001064B0;
  if (a2)
  {
    if (!qword_1001064B0)
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
      qword_1001064B0 = Mutable;
    }

    CFSetAddValue(Mutable, a1);
  }

  else if (qword_1001064B0)
  {
    Count = CFSetGetCount(qword_1001064B0);
    CFSetRemoveValue(qword_1001064B0, a1);
    if (Count >= 1 && !CFSetGetCount(qword_1001064B0) && qword_100106498)
    {
      CFRunLoopSourceSignal(qword_100106498);
      Main = CFRunLoopGetMain();
      CFRunLoopWakeUp(Main);
    }
  }

  return pthread_mutex_unlock(&stru_100101250);
}

uint64_t sub_1000E1AEC(const void *a1)
{
  pthread_mutex_lock(&stru_100101250);
  if (qword_1001064A0)
  {
    CFSetRemoveValue(qword_1001064A0, a1);
  }

  if (qword_1001064B0)
  {
    CFSetRemoveValue(qword_1001064B0, a1);
  }

  if (qword_1001064A8)
  {
    CFDictionaryRemoveValue(qword_1001064A8, a1);
  }

  return pthread_mutex_unlock(&stru_100101250);
}

BOOL sub_1000E1B6C(unsigned int a1, CFStringRef theString, const __CFDictionary *a3)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  usedBufLen = Length;
  if (!Length)
  {
    return 0;
  }

  v7 = Length;
  if (CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) > 0x3FF)
  {
    return 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *buffer = 0u;
  v22 = 0u;
  v53.location = 0;
  v53.length = v7;
  CFStringGetBytes(theString, v53, 0x8000100u, 0, 0, buffer, 1023, &usedBufLen);
  buffer[usedBufLen] = 0;
  if (a3 && CFDictionaryGetCount(a3) && (BinaryXMLData = VSCFPropertyListCreateBinaryXMLData()) != 0)
  {
    v11 = BinaryXMLData;
    BytePtr = CFDataGetBytePtr(BinaryXMLData);
    v13 = CFDataGetLength(v11);
    v14 = sub_1000EE154(a1, buffer, BytePtr, v13);
    CFRelease(v11);
  }

  else
  {
    v14 = sub_1000EE154(a1, buffer, 0, 0);
  }

  v8 = v14 == 0;
  v15 = VSGetLogDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "VSClientPostNotification";
    v19 = 2080;
    v20 = buffer;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: posted %s to client\n", buf, 0x16u);
  }

  return v8;
}

CFStringRef sub_1000E1DA0(unsigned int a1)
{
  v2 = bswap32(a1);
  v8 = v2;
  if ((v2 & 0x80) != 0)
  {
    if (!__maskrune(v2, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v2] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v3 = v2 >> 8;
  if ((v2 & 0x8000) != 0)
  {
    if (!__maskrune(v3, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v3] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v4 = v2 << 8 >> 24;
  if ((v2 & 0x800000) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v5 = v2 >> 24;
    if (v2 < 0)
    {
      if (!__maskrune(v5, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v5] & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    v9 = 39;
    __str = 39;
    return CFStringCreateWithCString(0, &__str, 0x600u);
  }

  if ((_DefaultRuneLocale.__runetype[v4] & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a1 + 199999 > 0x61A7E)
  {
    snprintf(&__str, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(&__str, 0x10uLL, "%d");
  }

  return CFStringCreateWithCString(0, &__str, 0x600u);
}

const __CFURL *sub_1000E1F18(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v5 = sub_1000E2150(a1);
  if (v5)
  {
    valuePtr = 0;
    v6 = VSDirectoryExistsAtURL();
    v7 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }

    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v5, @"Info.plist", 0);
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v7);
    if (v8)
    {
      v9 = v8;
      if (CFReadStreamOpen(v8))
      {
        v10 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v9, 0, 0, 0, 0);
        v11 = v10;
        if (v10)
        {
          v12 = CFGetTypeID(v10);
          if (v12 != CFDictionaryGetTypeID())
          {
            CFRelease(v11);
            v11 = 0;
          }
        }

        CFReadStreamClose(v9);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v9);
      CFRelease(v7);
      if (!v11)
      {
        goto LABEL_19;
      }

      Value = CFDictionaryGetValue(v11, @"VSLocaleIdentifier");
      if (Value)
      {
        v15 = Value;
        v16 = CFGetTypeID(Value);
        if (v16 == CFStringGetTypeID() && CFStringCompare(v15, a2, 0) == kCFCompareEqualTo)
        {
          v18 = CFDictionaryGetValue(v11, @"VSVersion");
          if (v18)
          {
            v19 = v18;
            v20 = CFGetTypeID(v18);
            if (v20 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v19, kCFNumberCFIndexType, &valuePtr);
              if (valuePtr == a3)
              {
                v21 = CFDictionaryGetValue(v11, @"VSPluginVersions");
                if (v21)
                {
                  v22 = v21;
                  v23 = CFGetTypeID(v21);
                  if (v23 == CFDictionaryGetTypeID())
                  {
                    v24 = sub_1000E5DF0();
                    if (!v24)
                    {
                      v7 = v5;
                      goto LABEL_21;
                    }

                    v25 = v24;
                    v26 = CFEqual(v24, v22);
                    CFRelease(v25);
                    CFRelease(v11);
                    if (v26)
                    {
                      return v5;
                    }

                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }

      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    CFRelease(v13);
LABEL_19:
    v7 = 0;
LABEL_20:
    v11 = v5;
LABEL_21:
    CFRelease(v11);
    return v7;
  }

  return v5;
}

CFURLRef sub_1000E2150(uint64_t a1)
{
  pthread_once(&stru_100101320, sub_1000E5E40);
  if (!a1)
  {
    return 0;
  }

  v2 = qword_1001064E0;
  if (!qword_1001064E0)
  {
    return 0;
  }

  v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@", a1, @".vscache");
  v4 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v2, v3, 1u);
  CFRelease(v3);
  return v4;
}

uint64_t sub_1000E2224(const void *a1, int a2)
{
  pthread_mutex_lock(&stru_100101290);
  if (a2 != 1 || qword_1001064B8)
  {
    if (a2 || !qword_1001064B8)
    {
      goto LABEL_11;
    }

    sub_1000E95D4(qword_1001064B8);
    CFRelease(qword_1001064B8);
LABEL_10:
    qword_1001064B8 = 0;
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = CFGetAllocator(a1);
  v5 = sub_1000E9464(v4, a1);
  qword_1001064B8 = v5;
  if (v5)
  {
    v6 = sub_1000E9DA8(v5, @"x", @"xx", @"xxx");
    if (v6)
    {
      CFRelease(v6);
    }
  }

LABEL_11:

  return pthread_mutex_unlock(&stru_100101290);
}

uint64_t sub_1000E22E4(const __CFString *a1, const __CFString *a2, void *a3, CFTypeRef *a4)
{
  cf = 0;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v7 = *a4;
  v8 = VSGetLogDefault();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v127 = 0;
    v130 = 0;
    goto LABEL_16;
  }

  mach_absolute_time();
  if (a1)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v11 = MaximumSizeForEncoding;
    *context = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding < 256)
    {
      v12 = v140;
    }

    else
    {
      v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x2B21A663uLL);
    }

    v148.location = 0;
    v148.length = Length;
    CFStringGetBytes(a1, v148, 0x8000100u, 0, 0, v12, v11, context);
    v12[*context] = 0;
    v130 = v12;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v127 = 0;
    v13 = "all";
    goto LABEL_14;
  }

  v130 = 0;
  v12 = "all";
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  v14 = CFStringGetLength(a2);
  v15 = CFStringGetMaximumSizeForEncoding(v14, 0x8000100u);
  v16 = v15;
  *context = v15;
  if (v15 < 256)
  {
    v13 = v139;
  }

  else
  {
    v13 = malloc_type_malloc(v15 + 1, 0x65D2CC51uLL);
    v16 = *context;
  }

  v149.location = 0;
  v149.length = v14;
  CFStringGetBytes(a2, v149, 0x8000100u, 0, 0, v13, v16, context);
  v13[*context] = 0;
  v127 = v13;
LABEL_14:
  v17 = VSGetLogDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *context = 136315394;
    *&context[4] = v12;
    v144 = 2080;
    *v145 = v13;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "caching model <%s> class <%s> ...\n", context, 0x16u);
  }

LABEL_16:
  NSPushAutoreleasePool();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v7)
  {
    v19 = sub_1000E9464(kCFAllocatorDefault, v7);
    if (v19)
    {
      v20 = v19;
      *context = 0;
      pthread_mutex_lock((v19 + 16));
      if (*(v20 + 80) && CPRecordStoreGetDatabase() && CPSqliteDatabaseStatementForReading())
      {
        CPSqliteStatementSendResults();
        CPSqliteStatementReset();
      }

      pthread_mutex_unlock((v20 + 16));
      v21 = *context;
      if (*context)
      {
        CFDictionaryApplyFunction(*context, sub_1000E40E4, Mutable);
        CFRelease(v21);
      }

      CFRelease(v20);
    }

    if (a3)
    {
      goto LABEL_26;
    }

LABEL_37:
    v33 = 0;
    v29 = 0;
    goto LABEL_218;
  }

  v32 = VSGetLogDefault();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *context = 0;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "no valid cache found; recaching everything.\n", context, 2u);
  }

  a1 = 0;
  if (!a3)
  {
    goto LABEL_37;
  }

LABEL_26:
  if (!a1)
  {
    theString = a2;
    v23 = 0;
    v30 = 0;
    v24 = 0;
    goto LABEL_56;
  }

  v22 = sub_1000E4E50(a1);
  if (!v22)
  {
    theString = a2;
    v29 = 0;
    v36 = 1;
    v133 = -4006;
    goto LABEL_77;
  }

  v23 = v22;
  v24 = sub_1000E8AB8(v22);
  if (CFDictionaryContainsKey(Mutable, v23))
  {
    Value = CFDictionaryGetValue(Mutable, v23);
    data = v23[19].data;
    if (data)
    {
      if ((data)(v23, Value, v23[20].data))
      {
        theString = a2;
        v27 = VSGetLogDefault();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v97 = v23[16].length;
          *context = 136315138;
          *&context[4] = v97;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "cache for model <%s> is valid; skipping recache request.\n", context, 0xCu);
        }

        LODWORD(v28) = 0;
        v29 = 0;
        v30 = 0;
        v31 = 1;
        goto LABEL_71;
      }
    }
  }

  if (!a2)
  {
    v37 = a3[9];
    if (v37)
    {
      v37(a3, v23, 1);
      CFDictionaryRemoveValue(Mutable, v23);
    }

    v30 = 0;
    goto LABEL_50;
  }

  v30 = sub_1000E7E18(v23[17].data, a2);
  if (!v30)
  {
    theString = a2;
    v31 = 0;
    v29 = 0;
    LODWORD(v28) = -4006;
    goto LABEL_71;
  }

  if (!a3[9])
  {
    theString = a2;
    goto LABEL_56;
  }

  if (!CFDictionaryContainsKey(Mutable, v23))
  {
LABEL_50:
    theString = 0;
    goto LABEL_56;
  }

  v34 = a3[8];
  theString = a2;
  if (v34)
  {
    v35 = v34(a3, v23);
    if (v35)
    {
      LODWORD(v28) = v35;
      v31 = 0;
      v29 = 0;
LABEL_71:
      CFRelease(v23);
      goto LABEL_72;
    }

    CFDictionarySetValue(Mutable, v23, v24);
  }

  v38 = a3[10];
  if (v38)
  {
    v38(a3, v23, v30);
  }

LABEL_56:
  v29 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1000E3590(v29);
  if (!a1)
  {
    *context = 0;
    v44 = sub_1000E4150();
    v28 = v44;
    if (v44)
    {
      CFDictionaryApplyFunction(v44, sub_1000E5C58, context);
      CFRelease(v28);
      v28 = *context;
      if (*context)
      {
        *&v134 = a3;
        *(&v134 + 1) = Mutable;
        *&v135 = 0;
        *(&v135 + 1) = v7;
        LOBYTE(v136) = 0;
        HIDWORD(v136) = 0;
        CFSetApplyFunction(*context, sub_1000E3E7C, &v134);
        v31 = v136 == 0;
        cf = v135;
        v45 = v28;
        LODWORD(v28) = HIDWORD(v136);
        CFRelease(v45);
        goto LABEL_70;
      }
    }

    goto LABEL_68;
  }

  if (theString)
  {
    v39 = a3[11];
    if (v39)
    {
      LODWORD(v28) = v39(a3, v23, v30);
      if (!v28)
      {
        CFDictionarySetValue(Mutable, v23, v24);
        v40 = a3;
        v41 = v7;
        v42 = v23;
        v43 = v30;
LABEL_67:
        sub_1000E3624(&cf, v40, v41, v42, v43);
        goto LABEL_68;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v46 = a3[8];
    if (v46)
    {
      LODWORD(v28) = v46(a3, v23);
      if (!v28)
      {
        CFDictionarySetValue(Mutable, v23, v24);
        v40 = a3;
        v41 = v7;
        v42 = v23;
        v43 = 0;
        goto LABEL_67;
      }

LABEL_68:
      v31 = 0;
      goto LABEL_70;
    }
  }

  v31 = 0;
  LODWORD(v28) = -4009;
LABEL_70:
  sub_1000E3590(0);
  if (v23)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v133 = v28;
  v36 = v28 != 0 || v31;
LABEL_77:
  v47 = VSGetLogDefault();
  if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_87;
  }

  mach_absolute_time();
  v48 = VSGetLogDefault();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    VSAbsoluteTimeToSecond();
    v84 = "all";
    *context = 134218754;
    *&context[4] = v85;
    v86 = v130;
    if (!a1)
    {
      v86 = "all";
    }

    v144 = 1024;
    if (theString)
    {
      v84 = v127;
    }

    *v145 = v133;
    *&v145[4] = 2080;
    *&v145[6] = v86;
    v146 = 2080;
    v147 = v84;
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "... finished caching model in %g s with error %d <%s> class <%s>\n", context, 0x26u);
    if (!a1)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  if (a1)
  {
LABEL_80:
    if (v130 && v130 != v140)
    {
      free(v130);
    }
  }

LABEL_83:
  if (theString && v127 && v127 != v139)
  {
    free(v127);
  }

LABEL_87:
  NSPopAutoreleasePool();
  if (v36)
  {
    v33 = v133;
    goto LABEL_218;
  }

  v131 = cf;
  v49 = a3[4];
  pthread_once(&stru_100101320, sub_1000E5E40);
  v50 = qword_1001064E0;
  url = 0;
  pthread_once(&stru_100101320, sub_1000E5E40);
  if (qword_1001064E0)
  {
    v51 = VSCopyContentsOfDirectoryAtURL();
    if (v51)
    {
      v52 = v51;
      *v120 = v49;
      v122 = v29;
      v128 = Mutable;
      Count = CFArrayGetCount(v51);
      if (Count >= 1)
      {
        v54 = Count;
        for (i = 0; i != v54; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v52, i);
          PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
          if (PathComponent)
          {
            v58 = PathComponent;
            v59 = CFStringGetLength(PathComponent);
            if (v59 == CFStringGetLength(@"temp.vscache.XXXXX") && CFStringHasPrefix(v58, @"temp.vscache."))
            {
              VSCFURLDeleteDirectoryContents();
              VSDeleteItemAtURL();
            }

            CFRelease(v58);
          }
        }
      }

      CFRelease(v52);
      Mutable = v128;
      v29 = v122;
      v49 = *v120;
    }
  }

  if (v50 && VSCreateTemporaryDirectory())
  {
    v60 = a3[13];
    v33 = v133;
    if (v60)
    {
      v61 = v60(a3, url) == 0;
    }

    else
    {
      v61 = 1;
    }

    if (v131 && (v63 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, url, @"KeywordIndex.plist", 0)) != 0)
    {
      v64 = v63;
      v65 = VSKeywordIndexSaveToURL();
      v66 = v65 == 0;
      if (!v65)
      {
        v67 = VSGetLogDefault();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *context = 136315138;
          *&context[4] = "_SaveEngineToCache";
          _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%s: couldn't write keyword index for cache\n", context, 0xCu);
        }
      }

      CFRelease(v64);
      if (!v61)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v66 = 1;
      if (!v61)
      {
        goto LABEL_136;
      }
    }

    v132 = v66;
    v68 = *a4;
    v69 = url;
    if (!*a4)
    {
LABEL_127:
      v75 = sub_1000E9464(kCFAllocatorDefault, v69);
      if (v75)
      {
        v76 = v75;
        if (Mutable)
        {
          CFDictionaryApplyFunction(Mutable, sub_1000E3BA0, v75);
        }

        v124 = a3;
        v77 = CFGetAllocator(v76);
        MutableCopy = CFStringCreateMutableCopy(v77, 0, @"DELETE FROM ValueTranslation");
        pthread_mutex_lock((v76 + 16));
        if (a1)
        {
          v79 = CFStringGetLength(a1);
          v80 = v79 != 0;
          if (v79)
          {
            v81 = @" model_id = ?";
          }

          else
          {
            v81 = 0;
          }
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

        v129 = Mutable;
        if (theString)
        {
          v87 = CFStringGetLength(theString);
          v88 = v87 != 0;
          if (v87)
          {
            v89 = @" class_id = ?";
          }

          else
          {
            v89 = 0;
          }
        }

        else
        {
          v88 = 0;
          v89 = 0;
        }

        if (v80 || v88)
        {
          CFStringAppend(MutableCopy, @" WHERE");
        }

        if (v80)
        {
          CFStringAppend(MutableCopy, v81);
          if (v88)
          {
            CFStringAppend(MutableCopy, @" AND");
LABEL_155:
            CFStringAppend(MutableCopy, v89);
          }
        }

        else if (v88)
        {
          goto LABEL_155;
        }

        v33 = v133;
        if (*(v76 + 80))
        {
          if (CPRecordStoreGetDatabase())
          {
            v90 = CPSqliteDatabaseStatementForWriting();
            if (v90)
            {
              v91 = v90;
              v123 = v29;
              if (v80)
              {
                v92 = CFStringGetLength(a1);
                v93 = CFStringGetMaximumSizeForEncoding(v92, 0x8000100u);
                v94 = v93;
                buffer[0].__pn_.__r_.__value_.__r.__words[0] = v93;
                if (v93 < 256)
                {
                  v95 = context;
                }

                else
                {
                  v95 = malloc_type_malloc(v93 + 1, 0x234D24F4uLL);
                }

                v150.location = 0;
                v150.length = v92;
                CFStringGetBytes(a1, v150, 0x8000100u, 0, 0, v95, v94, buffer);
                v95[buffer[0].__pn_.__r_.__value_.__r.__words[0]] = 0;
                sqlite3_bind_text(*(v91 + 8), 1, v95, -1, 0);
                v96 = 2;
                v33 = v133;
              }

              else
              {
                v95 = 0;
                v96 = 1;
              }

              if (v88)
              {
                v121 = v96;
                v98 = CFStringGetLength(theString);
                v99 = CFStringGetMaximumSizeForEncoding(v98, 0x8000100u);
                v100 = v99;
                *buf = v99;
                if (v99 < 256)
                {
                  v101 = buffer;
                }

                else
                {
                  v101 = malloc_type_malloc(v99 + 1, 0xBA5ACFF0uLL);
                }

                v151.location = 0;
                v151.length = v98;
                CFStringGetBytes(theString, v151, 0x8000100u, 0, 0, v101, v100, buf);
                v101->__pn_.__r_.__value_.__s.__data_[*buf] = 0;
                sqlite3_bind_text(*(v91 + 8), v121, v101, -1, 0);
                v33 = v133;
              }

              else
              {
                v101 = 0;
              }

              CPSqliteStatementPerform();
              CPSqliteStatementReset();
              if (v80 && v95 && v95 != context)
              {
                free(v95);
              }

              v29 = v123;
              if (v88 && v101 && v101 != buffer)
              {
                free(v101);
              }
            }
          }
        }

        CPRecordStoreInvalidateCachedInstancesOfClass();
        CFRelease(MutableCopy);
        pthread_mutex_unlock((v76 + 16));
        if (v29)
        {
          CFDictionaryApplyFunction(v29, sub_1000E3A64, v76);
        }

        sub_1000E95D4(v76);
        CFRelease(v76);
        v102 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v102, @"VSLocaleIdentifier", v49);
        CFDictionarySetValue(v102, @"VSEngineIdentifier", v124[3]);
        v103 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, v124 + 5);
        CFDictionarySetValue(v102, @"VSVersion", v103);
        CFRelease(v103);
        v104 = sub_1000E5DF0();
        Mutable = v129;
        if (v104)
        {
          v105 = v104;
          CFDictionarySetValue(v102, @"VSPluginVersions", v104);
          CFRelease(v105);
        }

        buffer[0].__pn_.__r_.__value_.__r.__words[0] = 0;
        v106 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, url, @"Info.plist", 0);
        if (!v106)
        {
          goto LABEL_208;
        }

        v107 = v106;
        v108 = CFWriteStreamCreateWithFile(kCFAllocatorDefault, v106);
        if (v108)
        {
          v109 = v108;
          if (CFWriteStreamOpen(v108))
          {
            v110 = CFPropertyListWrite(v102, v109, kCFPropertyListBinaryFormat_v1_0, 0, buffer);
            if (v110 <= 0)
            {
              v111 = VSGetLogDefault();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                *context = 0;
                _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "error writing model configuration cache Info.plist:\n", context, 2u);
              }

              if (buffer[0].__pn_.__r_.__value_.__r.__words[0])
              {
                v112 = VSGetLogDefault();
                if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                {
                  *context = 138412290;
                  *&context[4] = buffer[0].__pn_.__r_.__value_.__r.__words[0];
                  _os_log_error_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "%@\n", context, 0xCu);
                }
              }
            }

            CFWriteStreamClose(v109);
            if (buffer[0].__pn_.__r_.__value_.__r.__words[0])
            {
              CFRelease(buffer[0].__pn_.__r_.__value_.__l.__data_);
            }

            CFRelease(v109);
            CFRelease(v107);
            v33 = v133;
            if (v110 >= 1)
            {
              v83 = sub_1000E2150(v124[3]);
              if (!v83 || !CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024) || !CFURLGetFileSystemRepresentation(v83, 1u, context, 1024))
              {
LABEL_202:
                CFRelease(v102);
                if (!v132)
                {
                  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                  CFNotificationCenterPostNotification(DarwinNotifyCenter, kVSKeywordIndexDidChangeNotification, 0, 0, 1u);
                }

                v116 = v124[14];
                if (v116)
                {
                  v116(v124, v83);
                }

                goto LABEL_215;
              }

              VSCFURLDeleteDirectoryContents();
              rename(buffer, context, v113);
              if (!v114)
              {
                if (*a4)
                {
                  CFRelease(*a4);
                }

                *a4 = v83;
                CFRetain(v83);
                goto LABEL_202;
              }

LABEL_211:
              CFRelease(v102);
              goto LABEL_212;
            }

LABEL_208:
            v117 = VSGetLogDefault();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *context = 136315138;
              *&context[4] = "_SaveEngineToCache";
              _os_log_error_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%s: error setting info dict on temp cache\n", context, 0xCu);
            }

            v83 = 0;
            goto LABEL_211;
          }

          CFRelease(v109);
        }

        CFRelease(v107);
        goto LABEL_208;
      }

      v82 = VSGetLogDefault();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *context = 136315138;
        *&context[4] = "_SaveEngineToCache";
        _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%s: couldn't create manifest for cache\n", context, 0xCu);
      }

LABEL_136:
      v83 = 0;
LABEL_212:
      v118 = VSGetLogDefault();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "_SaveEngineToCache";
        _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "%s: couldn't move temp cache into place... deleting\n", buf, 0xCu);
      }

      VSCFURLDeleteDirectoryContents();
      VSDeleteItemAtURL();
LABEL_215:
      CFRelease(url);
      if (v83)
      {
        CFRelease(v83);
      }

      sub_1000E2224(0, 0);
      goto LABEL_218;
    }

    v70 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, *a4, @"Manifest.sqlitedb", 0);
    v71 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v68, @"Manifest.sqlitedb", 0);
    v72 = v71;
    if (v70 && v71)
    {
      if (CFURLGetFileSystemRepresentation(v70, 1u, context, 1024))
      {
        if (CFURLGetFileSystemRepresentation(v72, 1u, buffer, 1024))
        {
          if (copyfile(context, buffer, 0, 0))
          {
            v73 = VSGetLogDefault();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = *__error();
              *buf = 67109120;
              *&buf[4] = v74;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "err %d copying manifest\n", buf, 8u);
            }
          }
        }
      }
    }

    else if (!v70)
    {
      goto LABEL_125;
    }

    CFRelease(v70);
LABEL_125:
    v33 = v133;
    if (v72)
    {
      CFRelease(v72);
    }

    goto LABEL_127;
  }

  v62 = VSGetLogDefault();
  v33 = v133;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    *context = 136315138;
    *&context[4] = "_SaveEngineToCache";
    _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%s: couldn't save cache; no base dir exists or couldn't create temp cache\n", context, 0xCu);
  }

LABEL_218:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v33;
}

void sub_1000E3590(const void *a1)
{
  pthread_once(&stru_1001012D0, sub_1000E2208);
  v2 = pthread_getspecific(qword_1001064C0);
  if (a1)
  {
    CFRetain(a1);
  }

  pthread_setspecific(qword_1001064C0, a1);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1000E3624(uint64_t *a1, uint64_t a2, CFURLRef url, uint64_t a4, const void *a5)
{
  if (a1)
  {
    v8 = a1;
    if (!*a1)
    {
      if (!url)
      {
        goto LABEL_7;
      }

      v9 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, url, @"KeywordIndex.plist", 0);
      v10 = v8;
      if (v9)
      {
        v11 = v9;
        *v10 = VSKeywordIndexCreateWithURL();
        CFRelease(v11);
      }

      v8 = v10;
      if (!*v10)
      {
LABEL_7:
        *v8 = VSKeywordIndexCreate();
      }
    }

    if (a5)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      CFArrayAppendValue(Mutable, a5);
      Count = 1;
LABEL_10:
      v14 = Count + 1;
      do
      {
        if (!*(CFArrayGetValueAtIndex(Mutable, v14 - 2) + 40))
        {
          CFArrayRemoveValueAtIndex(Mutable, v14 - 2);
          --Count;
        }

        --v14;
      }

      while (v14 > 1);
LABEL_21:
      v17 = *(a4 + 16);
      if (v17)
      {
        CFRetain(*(a4 + 16));
      }

      v18 = sub_1000E4150();
      v42 = v17;
      if (v18)
      {
        v19 = v18;
        if (CFDictionaryGetValue(v18, v17))
        {
          CFBooleanGetTypeID();
          ValueIfType = VSCFDictionaryGetValueIfType();
          if (ValueIfType)
          {
            CFBooleanGetValue(ValueIfType);
          }
        }

        CFRelease(v19);
      }

      if (Count >= 1)
      {
        theArray = sub_1000E87DC(a4, Mutable);
        if (theArray)
        {
          v21 = 0;
          v43 = Mutable;
          v44 = Count;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v21);
            v23 = CFArrayGetValueAtIndex(theArray, v21);
            v24 = ValueAtIndex[2];
            if (v24)
            {
              v46 = ValueAtIndex[2];
              CFRetain(v24);
              cf = 0;
              v25 = v23[3];
              if (v25)
              {
                v26 = v25(v23, a4, ValueAtIndex, v23[2]);
                if (v26 >= 1)
                {
                  v27 = v26;
                  v28 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                  v29 = 0;
                  while (2)
                  {
                    cf = 0;
                    v30 = v23[4];
                    if (!v30)
                    {
                      goto LABEL_48;
                    }

                    v31 = v30(v23, a4, ValueAtIndex, v29, v23[2], 0, &cf, 0);
                    v32 = cf;
                    if (!v31 || cf == 0)
                    {
                      goto LABEL_48;
                    }

                    v34 = *(a2 + 96);
                    if (v34)
                    {
                      v32 = v34(a2, cf);
                      if (!v32)
                      {
                        goto LABEL_47;
                      }
                    }

                    else
                    {
                      CFRetain(cf);
                    }

                    v35 = a4;
                    v36 = a2;
                    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v32, @" ");
                    if (ArrayBySeparatingStrings)
                    {
                      v38 = ArrayBySeparatingStrings;
                      v48.length = CFArrayGetCount(ArrayBySeparatingStrings);
                      v48.location = 0;
                      CFArrayAppendArray(v28, v38, v48);
                      CFRelease(v38);
                    }

                    CFRelease(v32);
                    a2 = v36;
                    a4 = v35;
LABEL_47:
                    CFRelease(cf);
LABEL_48:
                    if (v27 == ++v29)
                    {
                      v17 = v42;
                      goto LABEL_53;
                    }

                    continue;
                  }
                }

                v28 = 0;
LABEL_53:
                Mutable = v43;
              }

              else
              {
                v28 = 0;
              }

              VSKeywordIndexSetKeywordsForClassIdentifier();
              CFRelease(v46);
              v39 = v44;
              if (v28)
              {
                CFRelease(v28);
              }
            }

            else
            {
              v39 = v44;
            }

            if (++v21 == v39)
            {
              CFRelease(theArray);
              break;
            }
          }
        }
      }

      v40 = *(a4 + 576);
      if (v40)
      {
        v41 = CFRetain(v40);
        VSKeywordIndexSetKeywordsForModelIdentifier();
        if (v41)
        {
          CFRelease(v41);
        }

        if (!v17)
        {
          goto LABEL_63;
        }
      }

      else
      {
        VSKeywordIndexSetKeywordsForModelIdentifier();
        if (!v17)
        {
LABEL_63:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }
      }

      CFRelease(v17);
      goto LABEL_63;
    }

    v15 = sub_1000E7DA4(a4);
    if (v15)
    {
      v16 = v15;
      Mutable = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v15);
      CFRelease(v16);
      if (Mutable)
      {
        Count = CFArrayGetCount(Mutable);
        if (Count < 1)
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }
    }

    else
    {
      Mutable = 0;
    }

    Count = 0;
    goto LABEL_21;
  }
}

void sub_1000E3A64(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  context[0] = a1;
  context[1] = 0;
  context[2] = a3;
  if (a1 && theDict)
  {
    if (a3)
    {
      CFDictionaryApplyFunction(theDict, sub_1000E3AB0, context);
    }
  }
}

void sub_1000E3AB0(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  if (theDict && a1)
  {
    if (a3)
    {
      a3[1] = a1;
      CFDictionaryApplyFunction(theDict, sub_1000E3ADC, a3);
    }
  }
}

const __CFString *sub_1000E3ADC(const __CFString *result, const __CFString *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 16);
    if (v3)
    {
      v4 = *(a3 + 8);
      if (v4)
      {
        if (a2)
        {
          v6 = result;
          if (result)
          {
            v7 = *a3;
            if (*a3)
            {
              pthread_mutex_lock((v3 + 16));
              if (*(v3 + 80))
              {
                if (CPRecordStoreGetDatabase())
                {
                  v8 = CPSqliteDatabaseStatementForWriting();
                  if (v8)
                  {
                    sub_1000E9A38(v8, 0, 0, v7, v4, v6, a2);
                  }
                }
              }

              return pthread_mutex_unlock((v3 + 16));
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1000E3BA0(uint64_t a1, const void *BinaryXMLData, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        CFRetain(*(a1 + 16));
        if (BinaryXMLData)
        {
          BinaryXMLData = VSCFPropertyListCreateBinaryXMLData();
        }

        pthread_mutex_lock((a3 + 16));
        if (*(a3 + 80))
        {
          SelectPrefixFromRecordDescriptor = CPRecordStoreCreateSelectPrefixFromRecordDescriptor();
          if (SelectPrefixFromRecordDescriptor)
          {
            v7 = SelectPrefixFromRecordDescriptor;
            CFStringAppend(SelectPrefixFromRecordDescriptor, @" WHERE model_id = ?;");
            if (CPRecordStoreGetDatabase())
            {
              v8 = CPSqliteDatabaseStatementForReading();
              if (v8)
              {
                v9 = v8;
                Length = CFStringGetLength(v4);
                MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                v12 = MaximumSizeForEncoding;
                usedBufLen = MaximumSizeForEncoding;
                v13 = buffer;
                if (MaximumSizeForEncoding >= 256)
                {
                  v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xC0E63DF2uLL);
                }

                v20.location = 0;
                v20.length = Length;
                CFStringGetBytes(v4, v20, 0x8000100u, 0, 0, v13, v12, &usedBufLen);
                v13[usedBufLen] = 0;
                sqlite3_bind_text(*(v9 + 8), 1, v13, -1, 0);
                v14 = CPRecordStoreProcessStatement();
                if (v13 && v13 != buffer)
                {
                  free(v13);
                }

                if (v14)
                {
                  if (CFArrayGetCount(v14) < 1 || !CFArrayGetValueAtIndex(v14, 0))
                  {
                    v15 = CPRecordCreate();
                    CPRecordSetProperty();
                    CPRecordStoreAddRecord();
                    CFRelease(v15);
                  }

                  CPRecordSetProperty();
                  CFRelease(v14);
                }

                else
                {
                  v16 = CPRecordCreate();
                  CPRecordSetProperty();
                  CPRecordStoreAddRecord();
                  CFRelease(v16);
                  CPRecordSetProperty();
                }
              }
            }

            CFRelease(v7);
          }
        }

        pthread_mutex_unlock((a3 + 16));
        if (BinaryXMLData)
        {
          CFRelease(BinaryXMLData);
        }

        CFRelease(v4);
      }
    }
  }
}

void sub_1000E3E7C(void *a1, uint64_t *a2)
{
  mach_absolute_time();
  if (a1 && a2 && *a2 && *(*a2 + 64) && !*(a2 + 9))
  {
    v4 = sub_1000E8AB8(a1);
    v5 = a2[1];
    if (v5 && CFDictionaryContainsKey(v5, a1) && (Value = CFDictionaryGetValue(a2[1], a1), (v7 = a1[78]) != 0) && v7(a1, Value, a1[82]))
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = a1[67];
        v18 = 136315138;
        v19 = v9;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "cache for model <%s> is valid; skipping recache.\n", &v18, 0xCu);
      }
    }

    else
    {
      v10 = *a2;
      v11 = *(*a2 + 72);
      if (v11)
      {
        v11();
        v10 = *a2;
      }

      if ((*(v10 + 64))(v10, a1))
      {
        v12 = VSGetLogDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = a1[67];
          v18 = 136315138;
          v19 = v15;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "error caching model <%s>\n", &v18, 0xCu);
        }

        *(a2 + 9) = -4001;
      }

      else
      {
        v13 = a2[1];
        if (v13)
        {
          CFDictionarySetValue(v13, a1, v4);
        }

        *(a2 + 32) = 1;
        mach_absolute_time();
        v14 = VSGetLogDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = a1[67];
          VSAbsoluteTimeToSecond();
          v18 = 136315394;
          v19 = v16;
          v20 = 2048;
          v21 = v17;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "recache for model <%s> done in %g s\n", &v18, 0x16u);
        }

        if (!*(a2 + 9))
        {
          sub_1000E3624(a2 + 2, *a2, a2[3], a1, 0);
        }
      }
    }

    CFRelease(v4);
  }
}

void sub_1000E40E4(const void *a1, const void *a2, __CFDictionary *a3)
{
  v5 = sub_1000E4E50(a1);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a3, v5, a2);

    CFRelease(v6);
  }
}

const void *sub_1000E4150()
{
  pthread_mutex_lock(&stru_1001012E0);
  v0 = sub_1000E419C();
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  pthread_mutex_unlock(&stru_1001012E0);
  return v1;
}

uint64_t sub_1000E419C()
{
  if (!qword_1001064D0)
  {
    v1 = sub_1000E447C();
    if (v1)
    {
      v2 = v1;
      memset(&v19, 0, sizeof(v19));
      if (CFURLGetFileSystemRepresentation(v1, 1u, buffer, 1024) && !stat(buffer, &v19) && (v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/VoiceServices/PlugIns", kCFURLPOSIXPathStyle, 1u)) != 0)
      {
        v5 = v4;
        tv_sec = v19.st_mtimespec.tv_sec;
        memset(&v20, 0, sizeof(v20));
        v7 = CFURLGetFileSystemRepresentation(v4, 1u, v22, 1024) && !stat(v22, &v20) && v20.st_mtimespec.tv_sec < tv_sec;
        CFRelease(v5);
        v3 = sub_1000E44EC();
        if (v7)
        {
          v8 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v2);
          if (v8)
          {
            v9 = v8;
            if (CFReadStreamOpen(v8))
            {
              v10 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v9, 0, 0, 0, 0);
              if (v10)
              {
                v11 = v10;
                v12 = CFGetTypeID(v10);
                if (v12 == CFDictionaryGetTypeID())
                {
                  Value = CFDictionaryGetValue(v11, @"modelid-desc");
                  v14 = CFDictionaryGetValue(v11, @"pluginid-vers");
                  v15 = CFDictionaryGetValue(v11, @"pluginpath-moddate");
                  if (v15)
                  {
                    if (v3 && !CFEqual(v3, v15))
                    {
                      Value = 0;
                    }

                    v16 = Value == 0;
                    if (Value)
                    {
                      v17 = v14;
                    }

                    else
                    {
                      v17 = 0;
                    }

                    if (!v14)
                    {
                      v16 = 1;
                    }

                    if (v16)
                    {
                      v18 = 0;
                    }

                    else
                    {
                      v18 = Value;
                    }

                    qword_1001064D0 = v18;
                    if (!v16)
                    {
                      CFRetain(Value);
                    }

                    qword_1001064D8 = v17;
                    if (v17)
                    {
                      CFRetain(v17);
                    }
                  }

                  else
                  {
                    qword_1001064D0 = 0;
                    qword_1001064D8 = 0;
                  }
                }

                CFRelease(v11);
              }
            }

            CFReadStreamClose(v9);
            CFRelease(v9);
          }
        }
      }

      else
      {
        v3 = sub_1000E44EC();
      }

      if (!qword_1001064D0)
      {
        sub_1000E46BC(v2, v3);
        if (!qword_1001064D0)
        {
          qword_1001064D0 = CFDictionaryCreate(kCFAllocatorDefault, 0, 0, 0, 0, 0);
          qword_1001064D8 = CFRetain(qword_1001064D0);
        }
      }

      CFRelease(v2);
      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  return qword_1001064D0;
}

CFURLRef sub_1000E447C()
{
  pthread_once(&stru_100101320, sub_1000E5E40);
  v0 = qword_1001064E0;
  if (!qword_1001064E0)
  {
    return 0;
  }

  return CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v0, @"PluginRegistry.plist", 0);
}

__CFDictionary *sub_1000E44EC()
{
  v0 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/VoiceServices/PlugIns", kCFURLPOSIXPathStyle, 1u);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  memset(&v12, 0, sizeof(v12));
  v2 = VSCopyContentsOfDirectoryAtURL();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v5 = Count;
      Mutable = 0;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        if (CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, buffer, 1024) && !stat(buffer, &v12))
        {
          PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v12.st_mtimespec);
          if (PathComponent)
          {
            if (CFStringGetLength(PathComponent) >= 1 && v10)
            {
              if (!Mutable)
              {
                Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, v5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              }

              CFDictionaryAddValue(Mutable, PathComponent, v10);
            }

            CFRelease(PathComponent);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }

    CFRelease(v3);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v1);
  return Mutable;
}

void sub_1000E46BC(const __CFURL *a1, CFMutableDictionaryRef a2)
{
  context = 0;
  v20 = 0;
  v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/VoiceServices/PlugIns", kCFURLPOSIXPathStyle, 1u);
  error = 0;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  cf[0] = 0;
  v6 = VSCopyContentsOfDirectoryAtURL();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count < 1)
    {
      v11 = 0;
      Mutable = 0;
    }

    else
    {
      v9 = Count;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      context = Mutable;
      v20 = v11;
      v25.location = 0;
      v25.length = v9;
      CFArrayApplyFunction(v7, v25, sub_1000E4A48, &context);
    }

    CFRelease(v7);
  }

  else
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *keys = 136315394;
      *&keys[4] = "_CreateRegistryAndSaveToCache";
      *&keys[12] = 2048;
      *&keys[14] = cf[0];
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: error examining plugins directory (%ld)\n", keys, 0x16u);
    }

    v11 = 0;
    Mutable = 0;
  }

  CFRelease(v5);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    if (a2)
    {
LABEL_14:
      CFRetain(a2);
      goto LABEL_17;
    }
  }

  else
  {
LABEL_15:
    v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    CFRetain(v11);
    Mutable = v11;
    if (a2)
    {
      goto LABEL_14;
    }
  }

  a2 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
LABEL_17:
  *keys = *off_1000FE568;
  *&keys[16] = @"pluginpath-moddate";
  cf[0] = Mutable;
  cf[1] = v11;
  cf[2] = a2;
  v13 = CFDictionaryCreate(kCFAllocatorDefault, keys, cf, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = CFWriteStreamCreateWithFile(kCFAllocatorDefault, a1);
  if (v14)
  {
    v15 = v14;
    if (CFWriteStreamOpen(v14) && !CFPropertyListWrite(v13, v15, kCFPropertyListBinaryFormat_v1_0, 0, &error))
    {
      v16 = VSGetLogDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "_CreateRegistryAndSaveToCache";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: error writing plugin registry cache:\n", buf, 0xCu);
      }

      if (error)
      {
        v17 = VSGetLogDefault();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = error;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        CFRelease(error);
      }
    }

    CFWriteStreamClose(v15);
    CFRelease(v15);
  }

  CFRelease(v13);
  CFRelease(a2);
  qword_1001064D0 = Mutable;
  qword_1001064D8 = v11;
}

void sub_1000E4A48(CFURLRef url, uint64_t a2)
{
  v4 = sub_1000E6080(kCFAllocatorDefault, url);
  v5 = *a2;
  cf[0] = 0;
  cf[1] = v5;
  if (v4)
  {
    v6 = v4;
    pthread_mutex_lock((v4 + 16));
    v7 = sub_1000E616C(v6);
    pthread_mutex_unlock((v6 + 16));
    if (v7)
    {
      cf[0] = CFURLCopyLastPathComponent(url);
      if (cf[0])
      {
        CFDictionaryApplyFunction(v7, sub_1000E4B74, cf);
        CFRelease(cf[0]);
      }
    }

    InfoDictionary = CFBundleGetInfoDictionary(*(v6 + 80));
    if (InfoDictionary)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"VSRecognitionVersion");
    }

    else
    {
      Value = 0;
    }

    Identifier = CFBundleGetIdentifier(*(v6 + 80));
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (Identifier)
      {
        v12 = TypeID;
        if (CFGetTypeID(Value) == TypeID && CFGetTypeID(Identifier) == v12)
        {
          CFDictionarySetValue(*(a2 + 8), Identifier, Value);
        }
      }
    }

    CFRelease(v6);
  }
}

void sub_1000E4B74(void *key, const __CFDictionary *a2, uint64_t a3)
{
  if (!CFDictionaryContainsKey(*(a3 + 8), key))
  {
    Value = CFDictionaryGetValue(a2, @"VSRecognitionModelRequiredCapabilities");
    if (Value && (v7 = Value, Count = CFArrayGetCount(Value), Count >= 1))
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v7, v10);
        v11 = MGCopyAnswer();
        if (!v11)
        {
          break;
        }

        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 != CFBooleanGetTypeID())
        {
          v16 = v12;
          goto LABEL_11;
        }

        v14 = CFBooleanGetValue(v12);
        CFRelease(v12);
        if (!v14)
        {
          return;
        }

        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
      CFDictionaryRemoveValue(MutableCopy, @"VSRecognitionModelIdentifier");
      CFDictionarySetValue(MutableCopy, @"PluginPath", *a3);
      CFDictionarySetValue(*(a3 + 8), key, MutableCopy);
      v16 = MutableCopy;
LABEL_11:

      CFRelease(v16);
    }
  }
}

const void *sub_1000E4CC4(const void *a1)
{
  pthread_mutex_lock(&stru_1001012E0);
  v2 = sub_1000E419C();
  if (v2 && CFDictionaryGetValue(v2, a1) && (v3 = sub_1000E4DB0()) != 0)
  {
    v4 = v3;
    if (qword_1001064C8 && (Value = CFDictionaryGetValue(qword_1001064C8, v3)) != 0)
    {
      v6 = Value;
      CFRetain(Value);
    }

    else
    {
      v6 = sub_1000E6080(kCFAllocatorDefault, v4);
      if (v6)
      {
        Mutable = qword_1001064C8;
        if (!qword_1001064C8)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          qword_1001064C8 = Mutable;
        }

        CFDictionarySetValue(Mutable, v4, v6);
      }
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&stru_1001012E0);
  return v6;
}

CFURLRef sub_1000E4DB0()
{
  CFStringGetTypeID();
  ValueIfType = VSCFDictionaryGetValueIfType();
  if (!ValueIfType)
  {
    return 0;
  }

  v1 = ValueIfType;
  v2 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/VoiceServices/PlugIns", kCFURLPOSIXPathStyle, 1u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v2, v1, 1u);
  CFRelease(v3);
  return v4;
}

const __CFString *sub_1000E4E50(const void *a1)
{
  v1 = a1;
  v2 = sub_1000E4CC4(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetAllocator(v2);
  pthread_mutex_lock((v3 + 16));
  v5 = VSPreferencesCopySpokenLanguageIdentifier();
  v6 = sub_1000E616C(v3);
  if (v6)
  {
    v7 = CFDictionaryGetValue(v6, v1);
  }

  else
  {
    v7 = 0;
  }

  v9 = *(v3 + 112);
  if (v9)
  {
    v10 = CFDictionaryGetValue(v9, v1);
    v8 = v10;
    if (v10 && v5 && v7)
    {
      v11 = CFDictionaryGetValue(v7, @"lang");
      if (v11 && CFStringCompare(v11, v5, 0))
      {
        CFDictionaryRemoveValue(*(v3 + 112), v1);
        MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, v7);
        if (MutableCopy)
        {
          v13 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, @"lang");
          CFDictionaryRemoveValue(v13, @"VSRecognitionModelDefinition");
          CFDictionarySetValue(*(v3 + 96), v1, v13);
          CFRelease(v13);
          v7 = v13;
        }

        goto LABEL_17;
      }

LABEL_15:
      CFRetain(v8);
      goto LABEL_154;
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_154;
  }

LABEL_17:
  v14 = CFDictionaryGetValue(v7, @"VSRecognitionModelDefinition");
  if (v14)
  {
    v8 = v14;
    CFRetain(v14);
    goto LABEL_19;
  }

  v19 = CFDictionaryGetValue(v7, @"VSRecognitionModelFileName");
  v8 = v19;
  if (!v19)
  {
    goto LABEL_154;
  }

  if (!v5)
  {
    v8 = 0;
    goto LABEL_156;
  }

  v20 = v1;
  location = CFStringFind(v19, @".plist", 0xCuLL).location;
  if (location == -1)
  {
LABEL_176:
    v8 = 0;
    goto LABEL_155;
  }

  v22 = location;
  v23 = CFStringCreateMutableCopy(v4, 0, v8);
  CFStringInsert(v23, v22, v5);
  CFStringInsert(v23, v22, @"-");
  v24 = CFBundleCopyResourceURL(*(v3 + 80), v23, 0, 0);
  if (v24)
  {
    v8 = v24;
    CFRelease(v23);
  }

  else
  {
    v92 = v4;
    v93 = _VSCopyLanguageCodeFromLanguageIdentifier();
    if (!v93)
    {
      v97 = v23;
      goto LABEL_175;
    }

    v94 = v93;
    v124.length = CFStringGetLength(v5);
    v124.location = v22 + 1;
    CFStringReplace(v23, v124, v94);
    v8 = CFBundleCopyResourceURL(*(v3 + 80), v23, 0, 0);
    CFRelease(v94);
    CFRelease(v23);
    v4 = v92;
    if (!v8)
    {
      goto LABEL_155;
    }
  }

  v25 = CFReadStreamCreateWithFile(v4, v8);
  if (!v25)
  {
    v97 = v8;
LABEL_175:
    CFRelease(v97);
    goto LABEL_176;
  }

  v26 = v25;
  if (CFReadStreamOpen(v25))
  {
    v27 = CFPropertyListCreateWithStream(v4, v26, 0, 0, 0, 0);
    CFReadStreamClose(v26);
    v1 = v20;
    if (v27)
    {
      allocator = v4;
      v28 = v5;
      v29 = v27;
      v30 = CFGetTypeID(v27);
      if (v30 == CFDictionaryGetTypeID())
      {
        v31 = CFDictionaryCreateMutableCopy(allocator, 0, v7);
        v5 = v28;
        if (v31)
        {
          v32 = v31;
          CFDictionarySetValue(v31, @"VSRecognitionModelDefinition", v27);
          CFDictionarySetValue(v32, @"lang", v28);
          CFDictionarySetValue(*(v3 + 96), v20, v32);
          CFRelease(v32);
        }

        v1 = v20;
      }

      else
      {
        v5 = v28;
      }

      v4 = allocator;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
    v1 = v20;
  }

  CFRelease(v26);
  CFRelease(v8);
  v8 = v29;
  if (!v29)
  {
    goto LABEL_155;
  }

LABEL_19:
  v109 = v5;
  v15 = v4;
  v115 = CFGetAllocator(v3);
  CFArrayGetTypeID();
  CFStringGetTypeID();
  CFDictionaryGetTypeID();
  CFBooleanGetTypeID();
  CFNumberGetTypeID();
  v122 = 0;
  valuePtr[0] = 0;
  v121 = 0;
  v116 = 0;
  ValueIfType = VSCFDictionaryGetValueIfType();
  theArray = VSCFDictionaryGetValueIfType();
  v102 = VSCFDictionaryGetValueIfType();
  v17 = ValueIfType;
  number = VSCFDictionaryGetValueIfType();
  v18 = VSCFDictionaryGetValueIfType();
  if (ValueIfType)
  {
    Count = CFArrayGetCount(ValueIfType);
  }

  else
  {
    Count = 0;
  }

  v104 = v8;
  allocatora = v15;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  if (!theArray)
  {
    v34 = 0;
    v113 = 0;
    v114 = 0;
    cf = 0;
LABEL_135:
    v8 = 0;
    v5 = v109;
    goto LABEL_136;
  }

  v33 = CFArrayGetCount(theArray);
  v34 = 0;
  v5 = v109;
  if (!v17 || Count < 1)
  {
    v113 = 0;
    v114 = 0;
    cf = 0;
    v8 = 0;
    goto LABEL_136;
  }

  v113 = 0;
  v114 = 0;
  cf = 0;
  v8 = 0;
  if (v33 < 1)
  {
    goto LABEL_136;
  }

  BOOLean = v18;
  v99 = v3;
  v100 = v1;
  v113 = 0;
  v114 = 0;
  cf = 0;
  v35 = 0;
  v103 = VSCFDictionaryGetValueIfType() != 0;
  v36 = v115;
  while (1)
  {
    ValueAtIndexIfType = VSCFArrayGetValueAtIndexIfType();
    if (!ValueAtIndexIfType)
    {
LABEL_111:
      LOBYTE(v42) = 0;
      LODWORD(v40) = 0;
      goto LABEL_115;
    }

    v38 = ValueAtIndexIfType;
    v39 = VSCFDictionaryGetValueIfType();
    v40 = v39;
    if (!v39)
    {
      break;
    }

    Length = CFStringGetLength(v39);
    v42 = Length > 0;
    if (Length < 1)
    {
      goto LABEL_111;
    }

    value = v40;
    v43 = VSCFDictionaryGetValueIfType();
    if (v43)
    {
      v44 = v43;
      v45 = CFArrayGetCount(v43);
      if (v45 >= 1)
      {
        v46 = v45;
        v47 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v44, v47);
          v48 = MGCopyAnswer();
          if (!v48)
          {
            break;
          }

          v49 = v48;
          v50 = CFGetTypeID(v48);
          if (v50 != CFBooleanGetTypeID())
          {
            CFRelease(v49);
            break;
          }

          v51 = CFBooleanGetValue(v49);
          CFRelease(v49);
          if (!v51)
          {
            break;
          }

          if (v46 == ++v47)
          {
            goto LABEL_50;
          }
        }

        Mutable = v114;
        if (!v114)
        {
          Mutable = CFSetCreateMutable(v36, 0, &kCFTypeSetCallBacks);
        }

        v114 = Mutable;
        CFSetAddValue(Mutable, value);
        goto LABEL_107;
      }
    }

LABEL_50:
    v52 = VSCFDictionaryGetValueIfType();
    if (v52)
    {
      v53 = VSCFDictionaryGetValueIfType();
      v54 = CFArrayGetCount(v52);
      if (v53 && CFArrayGetCount(v53) != v54)
      {
        v42 = 0;
      }

      v55 = 0;
      v107 = v54 > 0;
      if (v54 >= 1 && v42)
      {
        v55 = 0;
        v56 = 1;
        while (1)
        {
          v57 = VSCFArrayGetValueAtIndexIfType();
          v42 = v57 != 0;
          if (v53)
          {
            v58 = v57;
            if (v57)
            {
              v59 = VSCFArrayGetValueAtIndexIfType();
              if (!v59)
              {
                v42 = 0;
                break;
              }

              v60 = v59;
              if (!v55)
              {
                v55 = CFDictionaryCreateMutable(v115, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              }

              CFDictionarySetValue(v55, v58, v60);
              v42 = 1;
            }
          }

          if (v56 < v54)
          {
            ++v56;
            if (v42)
            {
              continue;
            }
          }

          break;
        }
      }

      if (!v54)
      {
        v42 = v103;
      }

      v36 = v115;
      if (!v42)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v61 = VSCFDictionaryGetValueIfType();
      if (v61 && CFArrayGetCount(v61) >= 1)
      {
        v62 = v113;
        if (!v113)
        {
          v62 = CFArrayCreateMutable(v36, 0, &kCFTypeArrayCallBacks);
        }

        v113 = v62;
        CFArrayAppendValue(v62, v38);
        v42 = 1;
        goto LABEL_107;
      }

      v107 = 0;
      v55 = 0;
      v42 = v103;
      if (!v103)
      {
        goto LABEL_97;
      }
    }

    v64 = VSCFDictionaryGetValueIfType();
    if (v64)
    {
      v65 = v64;
      pthread_once(&stru_100101340, sub_1000E77C4);
      v66 = value;
      if (qword_1001064F0 && CFDictionaryContainsKey(qword_1001064F0, v65))
      {
        v67 = CFDictionaryGetValue(qword_1001064F0, v65);
      }

      else
      {
        v67 = -1;
      }
    }

    else
    {
      v67 = -1;
      v66 = value;
    }

    v68 = VSCFDictionaryGetValueIfType();
    v69 = VSCFDictionaryGetValueIfType();
    if (v69)
    {
      v70 = CFBooleanGetValue(v69) != 0;
      if (!v68)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v70 = 0;
      if (!v68)
      {
LABEL_91:
        v71 = 0;
        valuePtr[0] = 0;
        goto LABEL_92;
      }
    }

    CFNumberGetValue(v68, kCFNumberCFIndexType, valuePtr);
    v71 = valuePtr[0];
LABEL_92:
    if (v107)
    {
      v72 = v52;
    }

    else
    {
      v72 = 0;
    }

    v73 = sub_1000E8BAC(v36, v66, v67, v70, v71, v72, 1);
    if (!v73)
    {
      if (!v55)
      {
        goto LABEL_111;
      }

      v42 = 0;
      goto LABEL_106;
    }

    v74 = v66;
    v75 = v73;
    sub_1000E62D0(v36, v73, v74, &v122, &v121);
    CFRelease(v75);
LABEL_97:
    if (v42 && v55)
    {
      v76 = cf;
      if (!cf)
      {
        v76 = CFDictionaryCreateMutable(v36, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      cf = v76;
      CFDictionarySetValue(v76, value, v55);
      v42 = 1;
LABEL_106:
      CFRelease(v55);
      goto LABEL_107;
    }

    if (v55)
    {
      goto LABEL_106;
    }

LABEL_107:
    ++v35;
    LODWORD(v40) = v42;
    if (v35 >= Count || !v42)
    {
      goto LABEL_115;
    }
  }

  LOBYTE(v42) = 0;
LABEL_115:
  if (v113)
  {
    v77 = CFArrayGetCount(v113);
    v78 = !v42;
    if (v77 < 1)
    {
      v78 = 1;
    }

    v3 = v99;
    if ((v78 & 1) == 0)
    {
      v79 = v77;
      v80 = 1;
      while (1)
      {
        CFArrayGetValueAtIndex(v113, v80 - 1);
        v81 = VSCFDictionaryGetValueIfType();
        v82 = sub_1000E6380(v36, v81, v121, 1, 0, v114);
        if (!v82)
        {
          v34 = 0;
          v8 = 0;
          v5 = v109;
          v1 = v100;
          goto LABEL_136;
        }

        v83 = v82;
        v84 = CFArrayGetCount(v82);
        if (v84 < 1)
        {
          LODWORD(v40) = 0;
        }

        else
        {
          v85 = VSCFDictionaryGetValueIfType();
          v86 = sub_1000E8BAC(v115, v85, -1, 0, 0, v83, 0);
          if (v86)
          {
            v87 = v86;
            v88 = VSCFDictionaryGetValueIfType();
            sub_1000E62D0(v115, v87, v88, &v122, &v121);
            CFRelease(v87);
          }

          LODWORD(v40) = 1;
        }

        CFRelease(v83);
        if (v80 >= v79)
        {
          break;
        }

        ++v80;
        v89 = v84 <= 0;
        v36 = v115;
        if (v89)
        {
          goto LABEL_131;
        }
      }

      v36 = v115;
    }
  }

  else
  {
    v3 = v99;
  }

LABEL_131:
  v1 = v100;
  if (!v40)
  {
    v34 = 0;
    goto LABEL_135;
  }

  v34 = sub_1000E6380(v36, theArray, v121, 0, &v116, v114);
  *&v117 = sub_1000E72D4;
  *(&v117 + 1) = sub_1000E6FBC;
  *&v118 = sub_1000E6E20;
  *(&v118 + 1) = sub_1000E6D68;
  *&v119 = sub_1000E6C48;
  *(&v119 + 1) = sub_1000E67C4;
  v120 = 0;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberCFIndexType, valuePtr);
  }

  else
  {
    valuePtr[0] = 0;
  }

  if (BOOLean)
  {
    v95 = CFBooleanGetValue(BOOLean);
  }

  else
  {
    v95 = 0;
  }

  v5 = v109;
  v8 = sub_1000E7A44(v36, v100, valuePtr[0], v95, v122, v34, v116, v102, &v117, v3);
  if (v8 && cf)
  {
    v96 = *(v3 + 104);
    if (!v96)
    {
      v96 = CFDictionaryCreateMutable(v36, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(v3 + 104) = v96;
    }

    CFDictionarySetValue(v96, v100, cf);
  }

LABEL_136:
  if (v122)
  {
    CFRelease(v122);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  CFRelease(v104);
  if (v8)
  {
    v90 = *(v3 + 112);
    if (!v90)
    {
      v90 = CFDictionaryCreateMutable(allocatora, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(v3 + 112) = v90;
    }

    CFDictionarySetValue(v90, v1, v8);
  }

LABEL_154:
  if (v5)
  {
LABEL_155:
    CFRelease(v5);
  }

LABEL_156:
  pthread_mutex_unlock((v3 + 16));
  CFRelease(v3);
  return v8;
}