void breakpoint_break(uint64_t a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((gIgnoreAllBreakpoints & 1) == 0)
  {
    if (a5)
    {
      atomic_fetch_add((a5 + 4640), 0xFFFFFFFF);
    }

    GPUTools::DYLockUtils::Lock(&breakpoint_lock, a2);
    [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:0];
    v9 = objc_autoreleasePoolPush();
    v10 = +[NSThread callStackReturnAddresses];
    v11 = [DYBreakpoint alloc];
    if (a1)
    {
      v12 = [v11 _initWithPbuf:a1 type:a3 backtrace:v10 error:a4];
    }

    else
    {
      v12 = [v11 _initWithType:a3 backtrace:v10 error:a4];
    }

    v13 = v12;
    v14 = [DYTransportMessage messageWithKind:512 objectPayload:v12];

    [DYGetGLGuestAppClient() sendMessage:v14];
    objc_autoreleasePoolPop(v9);
    v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v15, 0, do_nothing);
    if (a5)
    {
      atomic_fetch_add((a5 + 4640), 1u);
    }
  }
}

uint64_t breakpoint_continue()
{
  [DYGetGLGuestAppClient() unlockGraphics];

  return GPUTools::DYLockUtils::Unlock(&breakpoint_lock, v0);
}

uint64_t has_client_memory_vertex_arrays(ContextInfo *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 4);
  if (*(a1 + 864) != 1)
  {
    v22 = 0;
    (*(v3 + 832))(v2, 34921, &v22);
    if (v22)
    {
      v4 = 0;
      v5 = a1 + 184;
      do
      {
        v21 = 0;
        (*(v3 + 4128))(v2, v4, 34975, v5);
        (*(v3 + 4128))(v2, v4, 34338, &v21);
        v6 = v21;
        v5[22] = v21 != 0;
        if (v6 && !*v5)
        {
          return 1;
        }

        ++v4;
        v5 += 32;
      }

      while (v4 < v22);
    }
  }

  if (*(a1 + 4858) != 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v20 = *(a1 + 858);
  while (1)
  {
    v9 = &gVertexArrays + 120 * v7;
    v10 = *(v9 + 9);
    if (!*v9)
    {
      break;
    }

    v11 = *(v9 + 28);
    if (v11 == -1)
    {
      v18 = is_extension_available(a1, *v9);
      *(v9 + 28) = v18;
      if (v18)
      {
        break;
      }
    }

    else if (v11)
    {
      break;
    }

LABEL_10:
    v7 = ++v8;
    if (v8 >= 7uLL)
    {
      (*(v3 + 2728))(v2, *(a1 + 519));
      return 0;
    }
  }

  v12 = v20;
  if (*(v9 + 21) != 32888)
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = a1 + v10 + 176;
  v15 = 32 * v12;
  v16 = 33984;
  while (1)
  {
    if (*(v9 + 21) == 32888)
    {
      (*(v3 + 2728))(v2, v16);
      v14 += v13;
    }

    (*(v3 + 832))(v2, *(v9 + 23), v14 + 8);
    v17 = (*(v3 + 1144))(v2, *(v9 + 21));
    v14[30] = v17 != 0;
    if (v17)
    {
      if (!*(v14 + 2))
      {
        break;
      }
    }

    v13 += 32;
    v16 = (v16 + 1);
    if (v15 == v13)
    {
      goto LABEL_10;
    }
  }

  (*(v3 + 2728))(v2, *(a1 + 519));
  return 1;
}

uint64_t copyout_vertex_arrays2(ContextInfo *a1)
{
  v1 = __chkstk_darwin(a1);
  v127 = v2;
  v122 = v3;
  v123 = v4;
  v5 = v1;
  v130 = v1 + 4096;
  bzero(v140, 0x3C00uLL);
  v136 = v5;
  if (*(v5 + 3456) != 1 && *(v5 + 3452))
  {
    v10 = 0;
    v11 = *(v5 + 16);
    v133 = v5 + 176;
    v12 = *(v5 + 32);
    v124 = 0;
    while (1)
    {
      v17 = v133 + 32 * v10;
      v139 = 0;
      (*(v12 + 4128))(v11, v10, 34975, v17 + 8);
      (*(v12 + 4128))(v11, v10, 34338, &v139);
      v18 = v139;
      *(v17 + 30) = v139 != 0;
      if (v18)
      {
        if (!*(v17 + 8))
        {
          break;
        }
      }

LABEL_6:
      if (++v10 >= *(v136 + 3452))
      {
        goto LABEL_38;
      }
    }

    (*(v12 + 4136))(v11, v10, 34373, v17);
    v137 = 0;
    v138 = 0;
    (*(v12 + 4128))(v11, v10, 34339, v17 + 16);
    if (*(v17 + 16) == 32993)
    {
      v19 = 4;
    }

    else
    {
      v19 = *(v17 + 16);
    }

    (*(v12 + 4128))(v11, v10, 34341, v17 + 12);
    (*(v12 + 4128))(v11, v10, 34340, v17 + 20);
    (*(v12 + 4128))(v11, v10, 34922, &v138);
    *(v17 + 28) = v138 != 0;
    if (*(v130 + 758) == 1)
    {
      (*(v12 + 4128))(v11, v10, 35070, v17 + 24);
    }

    if (*(v136 + 3460) >= 2)
    {
      (*(v12 + 4128))(v11, v10, 35069, &v137);
      *(v17 + 29) = v137 != 0;
    }

    v21 = GPUTools::GL::dy_type_size(*(v17 + 12), v20) * v19;
    LODWORD(v22) = *(v17 + 20);
    v23 = *(v17 + 24);
    if (v22)
    {
      v22 = v22;
    }

    else
    {
      v22 = v21;
    }

    if (v23)
    {
      if (v127 >= 1)
      {
        v24 = 0;
        v25 = (v127 - 1) / v23 * v22 + v21;
        v26 = *v17;
        if (v124)
        {
          goto LABEL_22;
        }

LABEL_30:
        v14 = 0;
        goto LABEL_33;
      }

      v25 = 0;
      v24 = 0;
      v26 = *v17;
      if (!v124)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = v22 * v122;
      v30 = (v123 - 1) * v22 + v21;
      if (v123 <= 0)
      {
        v25 = 0;
      }

      else
      {
        v25 = v30;
      }

      v26 = v24 + *v17;
      if (!v124)
      {
        goto LABEL_30;
      }
    }

LABEL_22:
    v14 = 0;
    v27 = v141;
    while (1)
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v142.location = v26;
      v142.length = v25;
      v146.location = v28;
      v146.length = *v27;
      if (NSIntersectionRange(v142, v146) != 0uLL)
      {
        break;
      }

      ++v14;
      v27 += 60;
      if (v124 == v14)
      {
        goto LABEL_4;
      }
    }

    v143.location = v26;
    v143.length = v25;
    v147.location = v28;
    v147.length = v29;
    v31 = NSUnionRange(v143, v147);
    *(v27 - 1) = v31;
    if (v31.location == v26)
    {
      v27[1] = v24;
    }

LABEL_33:
    if (v14 == v124)
    {
LABEL_4:
      v13 = &v140[480 * v124];
      *v13 = v26;
      v13[1] = v25;
      v13[2] = v24;
      v14 = v124++;
    }

    v15 = &v140[480 * v14];
    v16 = v15[473];
    *&v15[4 * v16 + 408] = v10;
    v15[473] = v16 + 1;
    goto LABEL_6;
  }

  v124 = 0;
LABEL_38:
  if (*(v130 + 762) == 1)
  {
    v32 = v136;
    v134 = *(v136 + 16);
    v33 = *(v136 + 32);
    v34 = 0;
    v131 = 0;
    v35 = 0;
    v119 = *(v136 + 3432);
    while (1)
    {
      v120 = v35;
      v36 = &gVertexArrays + 120 * v34;
      v37 = *(v36 + 9);
      if (!*v36)
      {
        break;
      }

      v38 = *(v36 + 28);
      if (v38 == -1)
      {
        v61 = is_extension_available(v32, *v36);
        *(v36 + 28) = v61;
        if (v61)
        {
          break;
        }
      }

      else if (v38)
      {
        break;
      }

LABEL_40:
      v34 = (v120 + 1);
      v35 = v120 + 1;
      v32 = v136;
      if (v34 >= 7)
      {
        (*(v33 + 2728))(v134, *(v136 + 2076));
        (*(v33 + 2736))(v134, *(v136 + 2072));
        v124 += v131;
        goto LABEL_87;
      }
    }

    if (*(v36 + 21) == 32888)
    {
      v39 = v119;
    }

    else
    {
      v39 = 1;
    }

    v128 = v39;
    if (v39)
    {
      v40 = 0;
      v41 = v37 + v136 + 176;
      while (1)
      {
        if (*(v36 + 21) == 32888)
        {
          (*(v33 + 2736))(v134, (v40 + 33984));
          if (!(*(v33 + 1144))(v134, 3553))
          {
            goto LABEL_50;
          }

          (*(v33 + 2728))(v134, (v40 + 33984));
          v41 += 32 * v40;
        }

        (*(v33 + 832))(v134, *(v36 + 23), v41 + 8);
        v42 = (*(v33 + 1144))(v134, *(v36 + 21));
        *(v41 + 30) = v42 != 0;
        if (v42 && !*(v41 + 8))
        {
          (*(v33 + 920))(v134, *(v36 + 22), v41);
          v43 = *(v36 + 24);
          if (v43 < 0)
          {
            v44 = 0;
            *(v41 + 16) = v43 & 0x7FFFFFFF;
            v45 = *(v36 + 25);
            if ((v45 & 0x80000000) == 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            (*(v33 + 832))(v134);
            if (*(v41 + 16) == 32993)
            {
              v44 = 4;
            }

            else
            {
              v44 = *(v41 + 16);
            }

            v45 = *(v36 + 25);
            if ((v45 & 0x80000000) == 0)
            {
LABEL_61:
              (*(v33 + 832))(v134);
              v46 = *(v36 + 26);
              if ((v46 & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

LABEL_65:
              *(v41 + 20) = v46 & 0x7FFFFFFF;
              goto LABEL_66;
            }
          }

          *(v41 + 12) = v45 & 0x7FFFFFFF;
          v46 = *(v36 + 26);
          if ((v46 & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

LABEL_62:
          (*(v33 + 832))(v134);
LABEL_66:
          v47 = GPUTools::GL::dy_type_size(*(v41 + 12), v46) * v44;
          LODWORD(v48) = *(v41 + 20);
          if (v48)
          {
            v48 = v48;
          }

          else
          {
            v48 = v47;
          }

          v125 = v48 * v122;
          v49 = v48 * v122 + *v41;
          v50 = v47 + (v123 - 1) * v48;
          if (v123)
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          if (v131)
          {
            v52 = 0;
            v53 = v141;
            while (1)
            {
              v54 = *(v53 - 1);
              v55 = *v53;
              v144.location = v49;
              v144.length = v51;
              v148.location = v54;
              v148.length = *v53;
              if (NSIntersectionRange(v144, v148) != 0uLL)
              {
                break;
              }

              ++v52;
              v53 += 60;
              if (v131 == v52)
              {
                goto LABEL_81;
              }
            }

            v145.location = v49;
            v145.length = v51;
            v149.location = v54;
            v149.length = v55;
            v56 = NSUnionRange(v145, v149);
            *(v53 - 1) = v56;
            if (v56.location == v49)
            {
              v53[1] = v125;
            }
          }

          else
          {
            v52 = 0;
          }

          if (v52 == v131)
          {
LABEL_81:
            v57 = &v140[480 * v131];
            *v57 = v49;
            v57[1] = v51;
            v57[2] = v125;
            v52 = v131++;
          }

          v58 = &v140[480 * v52];
          v59 = v58[472];
          v60 = &v58[24 * v58[472] + 24];
          *v60 = v36;
          *(v60 + 1) = v41;
          if (*(v36 + 21) == 32888)
          {
            *&v58[24 * v59 + 40] = v40 + 33984;
          }

          v58[472] = v59 + 1;
        }

LABEL_50:
        if (++v40 == v128)
        {
          goto LABEL_40;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_87:
  v62 = v136;
  if (*(v136 + 2032) && v124)
  {
    GPUTools::FB::Encode(v136 + 120, 12, 4, "Ceui", v6, v7, v8, v9, *v136);
    v63 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
    while (atomic_exchange(v63, 1u) == 1)
    {
        ;
      }
    }

    v64 = **(v136 + 120);
    GPUTools::FB::Stream::Write_nolock();
    v62 = v136;
    atomic_store(0, v63);
  }

  if (v124)
  {
    v129 = 0;
    v65 = 0;
    v126 = v62 + 176;
    while (1)
    {
      v121 = v65;
      v66 = &v140[480 * v65];
      if (*v66)
      {
        v135 = &v140[480 * v65];
        v67 = *(v66 + 2);
        DYGetGLGuestAppClient();
        GPUTools::Interpose::DYSavePointer();
        v107 = *(v135 + 2);
        GPUTools::FB::Encode(v136 + 120, 4294955019, 4, "CUulbuiui", v68, v69, v70, v71, *v136);
        v72 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
        while (atomic_exchange(v72, 1u) == 1)
        {
            ;
          }
        }

        v62 = v136;
        v73 = **(v136 + 120);
        GPUTools::FB::Stream::Write_nolock();
        v74 = v135;
        atomic_store(0, v72);
        if (v74[473])
        {
          v75 = 0;
          do
          {
            v76 = v126 + 32 * *&v135[4 * v75 + 408];
            v77 = *(v74 + 2) + *v76 - *v74;
            v78 = *v62;
            v80 = *(v76 + 12);
            v79 = *(v76 + 16);
            if (*(v76 + 29) == 1)
            {
              v114 = *(v76 + 20);
              GPUTools::FB::Encode(v62 + 120, 4294955020, 4, "Cuiieiului", v6, v7, v8, v9, v78);
            }

            else
            {
              v115 = *(v76 + 28);
              v117 = *(v76 + 20);
              GPUTools::FB::Encode(v62 + 120, 4294955020, 4, "Cuiieubiului", v6, v7, v8, v9, v78);
            }

            v81 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
            while (atomic_exchange(v81, 1u) == 1)
            {
                ;
              }
            }

            v62 = v136;
            v82 = **(v136 + 120);
            GPUTools::FB::Stream::Write_nolock();
            v74 = v135;
            atomic_store(0, v81);
            ++v75;
          }

          while (v75 < v74[473]);
        }

        if (v74[472])
        {
          break;
        }
      }

LABEL_96:
      v65 = v121 + 1;
      if (v121 + 1 == v124)
      {
        if (v129)
        {
          v106 = *(v62 + 2076);
          GPUTools::FB::Encode(v62 + 120, 44, 4, "Ce", v6, v7, v8, v9, *v62);
          v97 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
          while (atomic_exchange(v97, 1u) == 1)
          {
              ;
            }
          }

          v62 = v136;
          v98 = **(v136 + 120);
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v97);
        }

        if (*(v62 + 2032))
        {
          v110 = *(v62 + 2032);
          GPUTools::FB::Encode(v62 + 120, 12, 4, "Ceui", v6, v7, v8, v9, *v62);
          v99 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
          while (atomic_exchange(v99, 1u) == 1)
          {
              ;
            }
          }

          v100 = **(v136 + 120);
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v99);
        }

        return v124;
      }
    }

    v83 = 0;
    v132 = v74 + 24;
    while (1)
    {
      v84 = &v132[24 * v83];
      v86 = *v84;
      v85 = v84[1];
      v87 = *v85;
      v88 = *(v74 + 2);
      v89 = *v74;
      v91 = *(*v84 + 96);
      v90 = *(*v84 + 100);
      v92 = *(*v84 + 104);
      if (*(*v84 + 84) != 32888)
      {
        goto LABEL_121;
      }

      if (!((*(v136 + 2076) != *(v84 + 4)) | v129 & 1))
      {
        break;
      }

      GPUTools::FB::Encode(v136 + 120, 44, 4, "Ce", v6, v7, v8, v9, *v136);
      v93 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
      while (atomic_exchange(v93, 1u) == 1)
      {
          ;
        }
      }

      v94 = **(v136 + 120);
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v93);
      v129 = 1;
      if (v91 < 0)
      {
LABEL_126:
        if (v90 < 0 || v92 < 0)
        {
          if (v92 < 0)
          {
            if (v90 < 0)
            {
              dy_abort();
              __break(1u);
            }

            v113 = *(v86 + 80);
            v105 = *(v85 + 3);
            GPUTools::FB::Encode(v136 + 120, 4294955020, 4, "Ceului", v6, v7, v8, v9, *v136);
          }

          else
          {
            v112 = *(v86 + 80);
            v104 = *(v85 + 5);
            GPUTools::FB::Encode(v136 + 120, 4294955020, 4, "Ciului", v6, v7, v8, v9, *v136);
          }
        }

        else
        {
          v116 = *(v86 + 80);
          v103 = *(v85 + 3);
          v109 = *(v85 + 5);
          GPUTools::FB::Encode(v136 + 120, 4294955020, 4, "Ceiului", v6, v7, v8, v9, *v136);
        }

        goto LABEL_133;
      }

LABEL_122:
      if (v90 < 0 || v92 < 0)
      {
        goto LABEL_126;
      }

      v118 = *(v86 + 80);
      v108 = *(v85 + 3);
      v111 = *(v85 + 5);
      v102 = *(v85 + 4);
      GPUTools::FB::Encode(v136 + 120, 4294955020, 4, "Cieiului", v6, v7, v8, v9, *v136);
LABEL_133:
      v95 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
      while (atomic_exchange(v95, 1u) == 1)
      {
          ;
        }
      }

      v62 = v136;
      v96 = **(v136 + 120);
      GPUTools::FB::Stream::Write_nolock();
      v74 = v135;
      atomic_store(0, v95);
      if (++v83 >= v74[472])
      {
        goto LABEL_96;
      }
    }

    v129 = 0;
LABEL_121:
    if (v91 < 0)
    {
      goto LABEL_126;
    }

    goto LABEL_122;
  }

  return v124;
}

void GPUTools::FB::Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = &a9;
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v9, &a9);
  GPUTools::FB::Encode();
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v9);
}

{
  v10 = &a9;
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v9, &a9);
  GPUTools::FB::Encode();
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v9);
}

void sub_21D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void determine_element_range(ContextInfo *a1, const int *a2, int a3, const void **a4, const int *a5, int a6, double a7, double a8, double a9, uint32x4_t a10)
{
  if (*(a1 + 509))
  {
    if (*(a1 + 4844) == 1)
    {
      v16 = (*(*(a1 + 4) + 5192))(*(a1 + 2), 34963, 35000);
      if (a3 == 5121)
      {
LABEL_68:
        if (a6 >= 1)
        {
          v87 = 0;
          v88 = 0;
          v89 = -1;
          while (1)
          {
            v90 = (a4[v87] + v16);
            if (!v16)
            {
              v90 = a4[v87];
            }

            if (a5)
            {
              v91 = a5[v87];
              v92 = a2[v87];
              if (v92 < 1)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v91 = 0;
              v92 = a2[v87];
              if (v92 < 1)
              {
                goto LABEL_70;
              }
            }

            if (v92 < 4)
            {
              v93 = 0;
LABEL_88:
              v117 = &v90->i8[v93];
              v118 = v92 - v93;
              do
              {
                v119 = *v117++;
                v120 = v91 + v119;
                if (v91 + v119 < v89)
                {
                  v89 = v120;
                }

                if (v120 > v88)
                {
                  v88 = v120;
                }

                --v118;
              }

              while (v118);
              goto LABEL_70;
            }

            v94 = vdupq_n_s32(v91);
            if (v92 >= 0x10)
            {
              v93 = v92 & 0x7FFFFFF0;
              v95 = vdupq_n_s32(v89);
              v96 = v93;
              v97 = v90;
              v98 = v95;
              v99 = v95;
              v100 = vdupq_n_s32(v88);
              v101 = v95;
              a10 = v100;
              v102 = v100;
              v103 = v100;
              do
              {
                v104 = *v97++;
                v105 = vmovl_high_u8(v104);
                v106 = vmovl_u8(*v104.i8);
                v107 = vaddw_u16(v94, *v106.i8);
                v108 = vaddw_high_u16(v94, v106);
                v109 = vaddw_u16(v94, *v105.i8);
                v110 = vaddw_high_u16(v94, v105);
                v101 = vminq_u32(v110, v101);
                v99 = vminq_u32(v109, v99);
                v98 = vminq_u32(v108, v98);
                v95 = vminq_u32(v107, v95);
                v103 = vmaxq_u32(v110, v103);
                v102 = vmaxq_u32(v109, v102);
                a10 = vmaxq_u32(v108, a10);
                v100 = vmaxq_u32(v107, v100);
                v96 -= 16;
              }

              while (v96);
              v89 = vminvq_u32(vminq_u32(vminq_u32(v95, v99), vminq_u32(v98, v101)));
              v88 = vmaxvq_u32(vmaxq_u32(vmaxq_u32(v100, v102), vmaxq_u32(a10, v103)));
              if (v93 == v92)
              {
                goto LABEL_70;
              }

              if ((v92 & 0xC) == 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v93 = 0;
            }

            v111 = v93;
            v93 = v92 & 0x7FFFFFFC;
            v112 = vdupq_n_s32(v89);
            v113 = vdupq_n_s32(v88);
            v114 = (v90->u32 + v111);
            v115 = v111 - v93;
            do
            {
              v116 = *v114++;
              a10.i32[0] = v116;
              a10 = vaddw_u16(v94, *&vmovl_u8(*a10.i8));
              v112 = vminq_u32(a10, v112);
              v113 = vmaxq_u32(a10, v113);
              v115 += 4;
            }

            while (v115);
            v89 = vminvq_u32(v112);
            v88 = vmaxvq_u32(v113);
            if (v93 != v92)
            {
              goto LABEL_88;
            }

LABEL_70:
            if (++v87 == a6)
            {
              goto LABEL_95;
            }
          }
        }

        goto LABEL_95;
      }
    }

    else
    {
      v153 = *(a1 + 4);
      v85 = *(a1 + 864);
      BufferSize = GPUTools::GL::GetBufferSize();
      v16 = (*(*(a1 + 4) + 6360))(*(a1 + 2), 34963, 0, BufferSize, 1);
      if (a3 == 5121)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
    v16 = 0;
    if (a3 == 5121)
    {
      goto LABEL_68;
    }
  }

  if (a3 == 5123)
  {
    if (a6 < 1)
    {
      goto LABEL_95;
    }

    v51 = 0;
    v52 = 0;
    v53 = -1;
    while (1)
    {
      v54 = (a4[v51] + v16);
      if (!v16)
      {
        v54 = a4[v51];
      }

      if (a5)
      {
        v55 = a5[v51];
        v56 = a2[v51];
        if (v56 < 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v55 = 0;
        v56 = a2[v51];
        if (v56 < 1)
        {
          goto LABEL_42;
        }
      }

      if (v56 < 4)
      {
        v57 = 0;
LABEL_60:
        v81 = v54 + 2 * v57;
        v82 = v56 - v57;
        do
        {
          v83 = *v81;
          v81 += 2;
          v84 = v55 + v83;
          if (v55 + v83 < v53)
          {
            v53 = v84;
          }

          if (v84 > v52)
          {
            v52 = v84;
          }

          --v82;
        }

        while (v82);
        goto LABEL_42;
      }

      v58 = vdupq_n_s32(v55);
      if (v56 >= 0x10)
      {
        v57 = v56 & 0x7FFFFFF0;
        v59 = vdupq_n_s32(v53);
        v60 = v54 + 2;
        v61 = v57;
        v62 = v59;
        v63 = v59;
        v64 = vdupq_n_s32(v52);
        v65 = v59;
        v66 = v64;
        v67 = v64;
        v68 = v64;
        do
        {
          v69 = *v60[-2].i8;
          v70 = vaddw_u16(v58, *v69.i8);
          v71 = vaddw_high_u16(v58, v69);
          v72 = vaddw_u16(v58, *v60);
          v73 = vaddw_high_u16(v58, *v60->i8);
          v62 = vminq_u32(v71, v62);
          v59 = vminq_u32(v70, v59);
          v65 = vminq_u32(v73, v65);
          v63 = vminq_u32(v72, v63);
          v66 = vmaxq_u32(v71, v66);
          v64 = vmaxq_u32(v70, v64);
          v68 = vmaxq_u32(v73, v68);
          v67 = vmaxq_u32(v72, v67);
          v60 += 4;
          v61 -= 16;
        }

        while (v61);
        v53 = vminvq_u32(vminq_u32(vminq_u32(v59, v63), vminq_u32(v62, v65)));
        v52 = vmaxvq_u32(vmaxq_u32(vmaxq_u32(v64, v67), vmaxq_u32(v66, v68)));
        if (v57 == v56)
        {
          goto LABEL_42;
        }

        if ((v56 & 0xC) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v57 = 0;
      }

      v74 = v57;
      v57 = v56 & 0x7FFFFFFC;
      v75 = vdupq_n_s32(v53);
      v76 = vdupq_n_s32(v52);
      v77 = (v54 + 2 * v74);
      v78 = v74 - v57;
      do
      {
        v79 = *v77++;
        v80 = vaddw_u16(v58, v79);
        v75 = vminq_u32(v80, v75);
        v76 = vmaxq_u32(v80, v76);
        v78 += 4;
      }

      while (v78);
      v53 = vminvq_u32(v75);
      v52 = vmaxvq_u32(v76);
      if (v57 != v56)
      {
        goto LABEL_60;
      }

LABEL_42:
      if (++v51 == a6)
      {
        goto LABEL_95;
      }
    }
  }

  if (a3 != 5125)
  {
    v152 = dy_abort();
    apocalypse_now(v152);
    return;
  }

  if (a6 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    if (v16)
    {
      if (!a5)
      {
        while (1)
        {
          v37 = a2[v17];
          if (v37 >= 1)
          {
            v38 = (a4[v17] + v16);
            if (v37 <= 7)
            {
              v39 = 0;
LABEL_33:
              v47 = &v38->i8[4 * v39];
              v48 = v37 - v39;
              do
              {
                v50 = *v47;
                v47 += 4;
                v49 = v50;
                if (v50 < v19)
                {
                  v19 = v49;
                }

                if (v49 > v18)
                {
                  v18 = v49;
                }

                --v48;
              }

              while (v48);
              goto LABEL_26;
            }

            v39 = v37 & 0x7FFFFFF8;
            v40 = vdupq_n_s32(v19);
            v41 = vdupq_n_s32(v18);
            v42 = v38 + 1;
            v43 = v39;
            v44 = v40;
            v45 = v41;
            do
            {
              v46 = v42[-1];
              v40 = vminq_u32(v46, v40);
              v44 = vminq_u32(*v42, v44);
              v41 = vmaxq_u32(v46, v41);
              v45 = vmaxq_u32(*v42, v45);
              v42 += 2;
              v43 -= 8;
            }

            while (v43);
            v19 = vminvq_u32(vminq_u32(v40, v44));
            v18 = vmaxvq_u32(vmaxq_u32(v41, v45));
            if (v39 != v37)
            {
              goto LABEL_33;
            }
          }

LABEL_26:
          if (++v17 == a6)
          {
            goto LABEL_95;
          }
        }
      }

      while (1)
      {
        v20 = a2[v17];
        if (v20 >= 1)
        {
          v21 = (a4[v17] + v16);
          v22 = a5[v17];
          if (v20 <= 7)
          {
            v23 = 0;
LABEL_19:
            v33 = &v21->i8[4 * v23];
            v34 = v20 - v23;
            do
            {
              v35 = *v33;
              v33 += 4;
              v36 = v35 + v22;
              if (v35 + v22 < v19)
              {
                v19 = v36;
              }

              if (v36 > v18)
              {
                v18 = v36;
              }

              --v34;
            }

            while (v34);
            goto LABEL_12;
          }

          v23 = v20 & 0x7FFFFFF8;
          v24 = vdupq_n_s32(v19);
          v25 = vdupq_n_s32(v18);
          v26 = vdupq_n_s32(v22);
          v27 = v21 + 1;
          v28 = v23;
          v29 = v24;
          v30 = v25;
          do
          {
            v31 = vaddq_s32(v27[-1], v26);
            v32 = vaddq_s32(*v27, v26);
            v24 = vminq_u32(v31, v24);
            v29 = vminq_u32(v32, v29);
            v25 = vmaxq_u32(v31, v25);
            v30 = vmaxq_u32(v32, v30);
            v27 += 2;
            v28 -= 8;
          }

          while (v28);
          v19 = vminvq_u32(vminq_u32(v24, v29));
          v18 = vmaxvq_u32(vmaxq_u32(v25, v30));
          if (v23 != v20)
          {
            goto LABEL_19;
          }
        }

LABEL_12:
        if (++v17 == a6)
        {
          goto LABEL_95;
        }
      }
    }

    if (!a5)
    {
      while (1)
      {
        v138 = a2[v17];
        if (v138 >= 1)
        {
          v139 = a4[v17];
          if (v138 <= 7)
          {
            v140 = 0;
LABEL_121:
            v148 = v139 + v140;
            v149 = v138 - v140;
            do
            {
              v151 = *v148++;
              v150 = v151;
              if (v151 < v19)
              {
                v19 = v150;
              }

              if (v150 > v18)
              {
                v18 = v150;
              }

              --v149;
            }

            while (v149);
            goto LABEL_114;
          }

          v140 = v138 & 0x7FFFFFF8;
          v141 = vdupq_n_s32(v19);
          v142 = vdupq_n_s32(v18);
          v143 = v139 + 1;
          v144 = v140;
          v145 = v141;
          v146 = v142;
          do
          {
            v147 = v143[-1];
            v141 = vminq_u32(v147, v141);
            v145 = vminq_u32(*v143, v145);
            v142 = vmaxq_u32(v147, v142);
            v146 = vmaxq_u32(*v143, v146);
            v143 += 2;
            v144 -= 8;
          }

          while (v144);
          v19 = vminvq_u32(vminq_u32(v141, v145));
          v18 = vmaxvq_u32(vmaxq_u32(v142, v146));
          if (v140 != v138)
          {
            goto LABEL_121;
          }
        }

LABEL_114:
        if (++v17 == a6)
        {
          goto LABEL_95;
        }
      }
    }

    do
    {
      v121 = a2[v17];
      if (v121 >= 1)
      {
        v122 = a4[v17];
        v123 = a5[v17];
        if (v121 <= 7)
        {
          v124 = 0;
LABEL_107:
          v134 = &v122->i32[v124];
          v135 = v121 - v124;
          do
          {
            v136 = *v134++;
            v137 = v136 + v123;
            if (v136 + v123 < v19)
            {
              v19 = v137;
            }

            if (v137 > v18)
            {
              v18 = v137;
            }

            --v135;
          }

          while (v135);
          goto LABEL_100;
        }

        v124 = v121 & 0x7FFFFFF8;
        v125 = vdupq_n_s32(v19);
        v126 = vdupq_n_s32(v18);
        v127 = vdupq_n_s32(v123);
        v128 = v122 + 1;
        v129 = v124;
        v130 = v125;
        v131 = v126;
        do
        {
          v132 = vaddq_s32(v128[-1], v127);
          v133 = vaddq_s32(*v128, v127);
          v125 = vminq_u32(v132, v125);
          v130 = vminq_u32(v133, v130);
          v126 = vmaxq_u32(v132, v126);
          v131 = vmaxq_u32(v133, v131);
          v128 += 2;
          v129 -= 8;
        }

        while (v129);
        v19 = vminvq_u32(vminq_u32(v125, v130));
        v18 = vmaxvq_u32(vmaxq_u32(v126, v131));
        if (v124 != v121)
        {
          goto LABEL_107;
        }
      }

LABEL_100:
      ++v17;
    }

    while (v17 != a6);
  }

LABEL_95:
  if (*(a1 + 509))
  {
    (*(*(a1 + 4) + 5200))(*(a1 + 2), 34963);
  }
}

const char *GetStringToEncode(int a1, const char *a2)
{
  if (a1 < 1 || !a2)
  {
    return a2;
  }

  v3 = a2;
  v4 = malloc_type_malloc((a1 + 1), 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    strlcpy(v4, v3, a1);
    v5[a1] = 0;
    return v5;
  }

  v7 = dy_abort();
  return ReleaseStringToEncode(v7, v8);
}

void ReleaseStringToEncode(void *a1, const char *a2)
{
  if (a1 != a2)
  {
    free(a1);
  }
}

char *wrapper_handle_marker_event(atomic_uint *a1, int a2, char *__s1)
{
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = strlen(__s1);
  }

  if (!strncmp(__s1, GPUTools::Interpose::kEventMarkerDebugFrame, v6))
  {
    v9 = a1 + 1160;
    atomic_fetch_add(a1 + 1160, 0xFFFFFFFF);
    v10 = objc_alloc_init(DYGLESCaptureDescriptor);
    [DYGetGLGuestAppClient() startCaptureWithDescriptor:v10];

    result = (&dword_0 + 1);
    atomic_fetch_add(v9, 1u);
  }

  else if (!strncmp(__s1, kEventMarkerAnalyzeFrame[0], v6))
  {
    breakpoint_break(0, 0xFFFFFFFFLL, 5, 0, a1);
    return (&dword_0 + 1);
  }

  else if (strnstr(__s1, kEventMarkerDrawableCreate, v6) || strnstr(__s1, kEventMarkerContextCreate[0], v6))
  {
    v7 = [DYGetGLGuestAppClient() startup0Stream];
    EncodeMarkerOnStream(a1, v7, a2, __s1);
    return (&dword_0 + 1);
  }

  else
  {
    result = strnstr(__s1, kEventMarkerFrameBoundaryEnd[0], v6);
    if (result)
    {
      if ([DYGetGLGuestAppClient() traceMode] >= 4)
      {
        v11 = [DYGetGLGuestAppClient() defaultFbufStream];
        EncodeMarkerOnStream(a1, v11, a2, __s1);
      }

      atomic_fetch_add(a1 + 1160, 0xFFFFFFFF);
      handle_frame_boundary(a1);
      result = (&dword_0 + 1);
      atomic_fetch_add(a1 + 1160, 1u);
    }
  }

  return result;
}

void EncodeMarkerOnStream(ContextInfo *a1, GPUTools::FB::Stream *a2, int a3, char *a4)
{
  v8 = a4;
  if (a3 >= 1)
  {
    v8 = a4;
    if (a4)
    {
      v9 = malloc_type_malloc((a3 + 1), 0x100004077774924uLL);
      if (!v9)
      {
        v18 = dy_abort();
        atomic_store(0, a2 + 14);
        _Unwind_Resume(v18);
      }

      v8 = v9;
      strlcpy(v9, a4, a3);
      v8[a3] = 0;
    }
  }

  v10 = 83;
  if (!v8)
  {
    v10 = 116;
  }

  snprintf(a1 + 4709, 0x40uLL, "Ci%c", v10);
  v11 = (a1 + 120);
  GPUTools::FB::Encode(a1 + 120, 895, 2, a1 + 4709, v12, v13, v14, v15, *a1);
  v16 = mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v16 = __udivti3();
  }

  *(*v11 + 2) = v16;
  *(*v11 + 3) = 0;
  while (atomic_exchange(a2 + 14, 1u) == 1)
  {
      ;
    }
  }

  v17 = **v11;
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, a2 + 14);
  if (v8 != a4)
  {

    free(v8);
  }
}

uint64_t wrapper_cache_texture_binding(uint64_t result, int a2, int a3)
{
  v3 = *(result + 2072) - 33984;
  if (v3 <= 0x1F)
  {
    if (a2 > 35863)
    {
      if (a2 <= 35881)
      {
        if (a2 == 35864)
        {
          *(result + 40 * v3 + 2100) = a3;
          return result;
        }

        if (a2 == 35866)
        {
          *(result + 40 * v3 + 2104) = a3;
          return result;
        }
      }

      else
      {
        switch(a2)
        {
          case 35882:
            *(result + 40 * v3 + 2116) = a3;
            return result;
          case 37120:
            *(result + 40 * v3 + 2108) = a3;
            return result;
          case 37122:
            *(result + 40 * v3 + 2112) = a3;
            return result;
        }
      }

      goto LABEL_26;
    }

    if (a2 > 32878)
    {
      switch(a2)
      {
        case 32879:
          *(result + 40 * v3 + 2092) = a3;
          return result;
        case 34037:
          *(result + 40 * v3 + 2088) = a3;
          return result;
        case 34067:
          *(result + 40 * v3 + 2096) = a3;
          return result;
      }

      goto LABEL_26;
    }

    if (a2 != 3552)
    {
      if (a2 == 3553)
      {
        *(result + 40 * v3 + 2084) = a3;
        return result;
      }

LABEL_26:
      v4 = dy_abort();
      return wrapper_cache_texture_binding(v4, v5, v6, v7);
    }

    *(result + 40 * v3 + 2080) = a3;
  }

  return result;
}

uint64_t wrapper_cache_texture_binding(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a3 > 35863)
  {
    if (a3 <= 35881)
    {
      if (a3 == 35864)
      {
        *(result + 40 * a2 + 2100) = a4;
        return result;
      }

      if (a3 == 35866)
      {
        *(result + 40 * a2 + 2104) = a4;
        return result;
      }
    }

    else
    {
      switch(a3)
      {
        case 35882:
          *(result + 40 * a2 + 2116) = a4;
          return result;
        case 37120:
          *(result + 40 * a2 + 2108) = a4;
          return result;
        case 37122:
          *(result + 40 * a2 + 2112) = a4;
          return result;
      }
    }
  }

  else if (a3 <= 32878)
  {
    if (a3 == 3552)
    {
      *(result + 40 * a2 + 2080) = a4;
      return result;
    }

    if (a3 == 3553)
    {
      *(result + 40 * a2 + 2084) = a4;
      return result;
    }
  }

  else
  {
    switch(a3)
    {
      case 32879:
        *(result + 40 * a2 + 2092) = a4;
        return result;
      case 34037:
        *(result + 40 * a2 + 2088) = a4;
        return result;
      case 34067:
        *(result + 40 * a2 + 2096) = a4;
        return result;
    }
  }

  v4 = dy_abort();
  return wrapper_cache_get_bound_texture(v4, v5, v6);
}

uint64_t wrapper_cache_get_bound_texture(ContextInfo *a1, unsigned int a2, int a3)
{
  if (a3 > 35863)
  {
    if (a3 <= 35881)
    {
      if (a3 == 35864)
      {
        return *(a1 + 10 * a2 + 525);
      }

      if (a3 == 35866)
      {
        return *(a1 + 10 * a2 + 526);
      }
    }

    else
    {
      switch(a3)
      {
        case 35882:
          return *(a1 + 10 * a2 + 529);
        case 37120:
          return *(a1 + 10 * a2 + 527);
        case 37122:
          return *(a1 + 10 * a2 + 528);
      }
    }
  }

  else if (a3 <= 32878)
  {
    if (a3 == 3552)
    {
      return *(a1 + 10 * a2 + 520);
    }

    if (a3 == 3553)
    {
      return *(a1 + 10 * a2 + 521);
    }
  }

  else
  {
    switch(a3)
    {
      case 32879:
        return *(a1 + 10 * a2 + 523);
      case 34037:
        return *(a1 + 10 * a2 + 522);
      case 34067:
        return *(a1 + 10 * a2 + 524);
    }
  }

  v4 = dy_abort();
  return wrapper_cache_texture_binding_delete(v4, v5, v6);
}

uint64_t wrapper_cache_texture_binding_delete(ContextInfo *a1, volatile int *a2, const unsigned int *a3)
{
  v4 = a2;
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 368), a2);
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = a3[v8];
      v10 = *(a1 + 861);
      v11 = (a1 + 2116);
      if (v10)
      {
        break;
      }

LABEL_5:
      v12 = *(a1 + 5);
      v13 = *(v12 + 312);
      if (v13)
      {
        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v9;
          if (*&v13 <= v9)
          {
            v15 = v9 % v13.i32[0];
          }
        }

        else
        {
          v15 = (v13.i32[0] - 1) & v9;
        }

        v16 = *(*(v12 + 304) + 8 * v15);
        if (v16)
        {
          v7 = *v16;
          if (*v16)
          {
            if (v14.u32[0] < 2uLL)
            {
              v17 = *&v13 - 1;
              while (1)
              {
                v19 = *(v7 + 8);
                if (v19 == v9)
                {
                  if (*(v7 + 16) == v9)
                  {
                    goto LABEL_48;
                  }
                }

                else if ((v19 & v17) != v15)
                {
                  goto LABEL_3;
                }

                v7 = *v7;
                if (!v7)
                {
                  goto LABEL_3;
                }
              }
            }

            do
            {
              v18 = *(v7 + 8);
              if (v18 == v9)
              {
                if (*(v7 + 16) == v9)
                {
LABEL_48:
                  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v12 + 304), v7, &__p);
                  v20 = __p;
                  __p = 0;
                  if (v20)
                  {
                    operator delete(v20);
                  }

                  break;
                }
              }

              else
              {
                if (v18 >= *&v13)
                {
                  v18 %= *&v13;
                }

                if (v18 != v15)
                {
                  break;
                }
              }

              v7 = *v7;
            }

            while (v7);
          }
        }
      }

LABEL_3:
      if (++v8 == v4)
      {
        return GPUTools::DYLockUtils::Unlock((v6 + 368), v7);
      }
    }

    while (1)
    {
      if (v9 == *(v11 - 9))
      {
        *(v11 - 9) = 0;
        if (v9 != *(v11 - 8))
        {
LABEL_11:
          if (v9 != *(v11 - 5))
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }
      }

      else if (v9 != *(v11 - 8))
      {
        goto LABEL_11;
      }

      *(v11 - 8) = 0;
      if (v9 != *(v11 - 5))
      {
LABEL_12:
        if (v9 != *(v11 - 6))
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }

LABEL_22:
      *(v11 - 5) = 0;
      if (v9 != *(v11 - 6))
      {
LABEL_13:
        if (v9 != *(v11 - 7))
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }

LABEL_23:
      *(v11 - 6) = 0;
      if (v9 != *(v11 - 7))
      {
LABEL_14:
        if (v9 != *(v11 - 4))
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }

LABEL_24:
      *(v11 - 7) = 0;
      if (v9 != *(v11 - 4))
      {
LABEL_15:
        if (v9 != *(v11 - 3))
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }

LABEL_25:
      *(v11 - 4) = 0;
      if (v9 != *(v11 - 3))
      {
LABEL_16:
        if (v9 != *(v11 - 2))
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

LABEL_26:
      *(v11 - 3) = 0;
      if (v9 != *(v11 - 2))
      {
LABEL_17:
        if (v9 != *(v11 - 1))
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }

LABEL_27:
      *(v11 - 2) = 0;
      if (v9 != *(v11 - 1))
      {
LABEL_18:
        if (v9 == *v11)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }

LABEL_28:
      *(v11 - 1) = 0;
      if (v9 == *v11)
      {
LABEL_29:
        *v11 = 0;
      }

LABEL_8:
      v11 += 10;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }
  }

  return GPUTools::DYLockUtils::Unlock((v6 + 368), v7);
}

_DWORD *wrapper_cache_buffer_binding(_DWORD *result, int a2, int a3)
{
  if (a2 > 35344)
  {
    if (a2 > 36661)
    {
      if (a2 == 36662)
      {
        result[512] = a3;
        return result;
      }

      if (a2 == 36663)
      {
        result[513] = a3;
        return result;
      }
    }

    else
    {
      if (a2 == 35345)
      {
        result[516] = a3;
        return result;
      }

      if (a2 == 35982)
      {
        result[515] = a3;
        return result;
      }
    }
  }

  else if (a2 > 35050)
  {
    if (a2 == 35051)
    {
      result[510] = a3;
      return result;
    }

    if (a2 == 35052)
    {
      result[511] = a3;
      return result;
    }
  }

  else
  {
    if (a2 == 34962)
    {
      result[508] = a3;
      return result;
    }

    if (a2 == 34963)
    {
      result[509] = a3;
      return result;
    }
  }

  v3 = dy_abort();
  return wrapper_cache_get_bound_buffer(v3, v4);
}

uint64_t wrapper_cache_get_bound_buffer(ContextInfo *a1, int a2)
{
  if (a2 > 35344)
  {
    if (a2 > 36661)
    {
      if (a2 == 36662)
      {
        return *(a1 + 512);
      }

      if (a2 == 36663)
      {
        return *(a1 + 513);
      }
    }

    else
    {
      if (a2 == 35345)
      {
        return *(a1 + 516);
      }

      if (a2 == 35982)
      {
        return *(a1 + 515);
      }
    }
  }

  else if (a2 > 35050)
  {
    if (a2 == 35051)
    {
      return *(a1 + 510);
    }

    if (a2 == 35052)
    {
      return *(a1 + 511);
    }
  }

  else
  {
    if (a2 == 34962)
    {
      return *(a1 + 508);
    }

    if (a2 == 34963)
    {
      return *(a1 + 509);
    }
  }

  v3 = dy_abort();
  return wrapper_cache_buffer_binding_delete(v3, v4, v5);
}

uint64_t wrapper_cache_buffer_binding_delete(ContextInfo *a1, volatile int *a2, const unsigned int *a3)
{
  v4 = a2;
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 56), a2);
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 5);
    do
    {
      v10 = a3[v8];
      if (v10 == *(a1 + 508))
      {
        *(a1 + 508) = 0;
        if (v10 != *(a1 + 509))
        {
LABEL_6:
          if (v10 != *(a1 + 510))
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }

      else if (v10 != *(a1 + 509))
      {
        goto LABEL_6;
      }

      *(a1 + 509) = 0;
      if (v10 != *(a1 + 510))
      {
LABEL_7:
        if (v10 != *(a1 + 511))
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }

LABEL_17:
      *(a1 + 510) = 0;
      if (v10 != *(a1 + 511))
      {
LABEL_8:
        if (v10 != *(a1 + 512))
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }

LABEL_18:
      *(a1 + 511) = 0;
      if (v10 != *(a1 + 512))
      {
LABEL_9:
        if (v10 != *(a1 + 513))
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }

LABEL_19:
      *(a1 + 512) = 0;
      if (v10 != *(a1 + 513))
      {
LABEL_10:
        if (v10 != *(a1 + 514))
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }

LABEL_20:
      *(a1 + 513) = 0;
      if (v10 != *(a1 + 514))
      {
LABEL_11:
        if (v10 != *(a1 + 515))
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

LABEL_21:
      *(a1 + 514) = 0;
      if (v10 != *(a1 + 515))
      {
LABEL_12:
        if (v10 != *(a1 + 516))
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }

LABEL_22:
      *(a1 + 515) = 0;
      if (v10 != *(a1 + 516))
      {
LABEL_13:
        v11 = *(v9 + 24);
        if (!*&v11)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }

LABEL_23:
      *(a1 + 516) = 0;
      v11 = *(v9 + 24);
      if (!*&v11)
      {
        goto LABEL_3;
      }

LABEL_24:
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] > 1uLL)
      {
        v13 = v10;
        if (*&v11 <= v10)
        {
          v13 = v10 % v11.i32[0];
        }
      }

      else
      {
        v13 = (v11.i32[0] - 1) & v10;
      }

      v14 = *(*(v9 + 16) + 8 * v13);
      if (v14)
      {
        v7 = *v14;
        if (*v14)
        {
          if (v12.u32[0] < 2uLL)
          {
            v15 = *&v11 - 1;
            while (1)
            {
              v16 = *(v7 + 8);
              if (v16 == v10)
              {
                if (*(v7 + 16) == v10)
                {
                  goto LABEL_44;
                }
              }

              else if ((v16 & v15) != v13)
              {
                goto LABEL_3;
              }

              v7 = *v7;
              if (!v7)
              {
                goto LABEL_3;
              }
            }
          }

          do
          {
            v17 = *(v7 + 8);
            if (v17 == v10)
            {
              if (*(v7 + 16) == v10)
              {
LABEL_44:
                std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v9 + 16), v7, &__p);
                v18 = __p;
                __p = 0;
                if (v18)
                {
                  operator delete(v18);
                }

                break;
              }
            }

            else
            {
              if (v17 >= *&v11)
              {
                v17 %= *&v11;
              }

              if (v17 != v13)
              {
                break;
              }
            }

            v7 = *v7;
          }

          while (v7);
        }
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v4);
  }

  return GPUTools::DYLockUtils::Unlock((v6 + 56), v7);
}

uint64_t wrapper_cache_buffer_target(uint64_t result, volatile int *a2)
{
  v3 = a2;
  if (a2 > 35344)
  {
    if (a2 > 36661)
    {
      if (a2 == 36662)
      {
        v4 = *(result + 2048);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }

      if (a2 == 36663)
      {
        v4 = *(result + 2052);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (a2 == 35345)
      {
        v4 = *(result + 2064);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }

      if (a2 == 35982)
      {
        v4 = *(result + 2060);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

LABEL_51:
    v17 = dy_abort();
    GPUTools::DYLockUtils::Unlock((v2 + 56), v18);
    _Unwind_Resume(v17);
  }

  if (a2 > 35050)
  {
    if (a2 == 35051)
    {
      v4 = *(result + 2040);
      if (!v4)
      {
        return result;
      }

      goto LABEL_27;
    }

    if (a2 == 35052)
    {
      v4 = *(result + 2044);
      if (!v4)
      {
        return result;
      }

      goto LABEL_27;
    }

    goto LABEL_51;
  }

  if (a2 == 34962)
  {
    v4 = *(result + 2032);
    if (!v4)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (a2 != 34963)
  {
    goto LABEL_51;
  }

  v4 = *(result + 2036);
  if (!v4)
  {
    return result;
  }

LABEL_27:
  v5 = *(result + 40);
  v6 = result;
  GPUTools::DYLockUtils::Lock((v5 + 56), a2);
  v8 = *(v6 + 40);
  v9 = v8[3];
  if (!*&v9)
  {
    goto LABEL_47;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v4;
    if (*&v9 <= v4)
    {
      v11 = v4 % v9.i32[0];
    }
  }

  else
  {
    v11 = (v9.i32[0] - 1) & v4;
  }

  v12 = *(*&v8[2] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_47:
    v19[0] = v4;
    v19[1] = v3;
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(&v8[2], v19);
    return GPUTools::DYLockUtils::Unlock((v5 + 56), v7);
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = *&v9 - 1;
    while (1)
    {
      v15 = v13[1];
      if (v15 == v4)
      {
        if (*(v13 + 4) == v4)
        {
          goto LABEL_50;
        }
      }

      else if ((v15 & v14) != v11)
      {
        goto LABEL_47;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v4)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_47;
    }

LABEL_42:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_47;
    }
  }

  if (*(v13 + 4) != v4)
  {
    goto LABEL_42;
  }

LABEL_50:
  *(v13 + 5) = v3;
  return GPUTools::DYLockUtils::Unlock((v5 + 56), v7);
}

void wrapper_push_group_marker(ContextInfo *a1, size_t __n, const char *__src)
{
  if (__src)
  {
    if (__n < 1)
    {
      v5 = strlen(__src) + 1;
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v5 = __n;
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v18) = v5;
    if (v5)
    {
      memcpy(&__dst, __src, v5);
      *(&__dst + v5) = 0;
      v7 = *(a1 + 13);
      v6 = *(a1 + 14);
      if (v7 < v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v7 = *(a1 + 13);
      v6 = *(a1 + 14);
      if (v7 < v6)
      {
LABEL_8:
        *v7 = __dst;
        *(v7 + 16) = v18;
        v8 = v7 + 24;
LABEL_22:
        *(a1 + 13) = v8;
        return;
      }
    }

    v9 = *(a1 + 12);
    v10 = v7 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 24 * v11;
    *v15 = __dst;
    *(v15 + 16) = v18;
    v8 = 24 * v11 + 24;
    v16 = 24 * v11 - v10;
    memcpy((v15 - v10), v9, v10);
    *(a1 + 12) = v16;
    *(a1 + 13) = v8;
    *(a1 + 14) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    goto LABEL_22;
  }

  __dst = 0uLL;
  v18 = 0;
  std::vector<std::string>::emplace_back<std::string>(a1 + 96, &__dst);
  wrapper_push_group_marker(&__dst);
}

void sub_3D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wrapper_cache_shader_source(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1)[3];
    v9 = *v8;
    if (!**v8 && *(v8 + 52) == 1)
    {
      LODWORD(__size) = 0;
      (*(*(a1 + 4) + 5256))(*(a1 + 2), a2, 35720, &__size);
      if (__size)
      {
        StringBuffer::reserve(v9, __size);
        (*(*(a1 + 4) + 5032))(*(a1 + 2), a2, __size, 0, *v9);
      }

      else
      {
        StringBuffer::reserve(v9, 1uLL);
        **v9 = 0;
      }
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

uint64_t *find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3;
      if (v4 <= a3)
      {
        v6 = a3 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a3;
    }

    v7 = *(*a2 + 8 * v6);
    if (v7)
    {
      result = *v7;
      if (*v7)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = result[1];
            if (v10 == a3)
            {
              if (*(result + 4) == a3)
              {
                return result;
              }
            }

            else if ((v10 & v9) != v6)
            {
              goto LABEL_21;
            }

            result = *result;
            if (!result)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v11 = result[1];
          if (v11 == a3)
          {
            if (*(result + 4) == a3)
            {
              return result;
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

LABEL_21:
  if (a4)
  {
    if (a3)
    {
      operator new();
    }

    find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>();
  }

  return 0;
}

void sub_40E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>::~pair(va);
  std::shared_ptr<ShaderInfo>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_4104(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t wrapper_cache_shader_pre_compile(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1)[3];
    v9 = *(v8 + 24);
    if (!v9 || *(v9 + 8))
    {
      v10 = *(v8 + 16);
      LODWORD(__size) = 0;
      (*(*(a1 + 4) + 5256))(*(a1 + 2), a2, 35716, &__size);
      if (__size)
      {
        StringBuffer::reserve(v10, __size);
        (*(*(a1 + 4) + 5272))(*(a1 + 2), a2, __size, 0, *v10);
      }

      else
      {
        StringBuffer::reserve(v10, 1uLL);
        **v10 = 0;
      }

      operator new();
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void sub_42AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  GPUTools::DYLockUtils::Unlock((v2 + 144), v5);
  _Unwind_Resume(a1);
}

uint64_t wrapper_cache_shader_post_compile(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v7 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1);
    v8 = v7[3];
    v9 = *(v8 + 8);
    if (v9 && !*(v9 + 8))
    {
      StringBuffer::reserve(*v8, 0);
    }

    else if (**v8)
    {
      operator new();
    }

    *(v7[3] + 52) = 1;
    v12 = 0;
    (*(*(a1 + 4) + 5256))(*(a1 + 2), a2, 35713, &v12);
    if (gCheckGLErrors == 1 && v12 == 0)
    {
      handle_compile_shader_failure(a1, a2);
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v10);
  }

  return result;
}

uint64_t wrapper_cache_shader_label(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1)[3];
    v9 = *(v8 + 40);
    if (!v9 || *(v9 + 8))
    {
      v10 = *(v8 + 32);
      v12 = 0;
      (*(*(a1 + 4) + 6520))(*(a1 + 2), 35656, a2, 0, &v12, 0);
      v11 = v12++ + 1;
      StringBuffer::reserve(v10, v11);
      (*(*(a1 + 4) + 6520))(*(a1 + 2), 35656, a2, v12, 0, *v10);
      operator new();
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void sub_463C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  GPUTools::DYLockUtils::Unlock((v2 + 144), v5);
  _Unwind_Resume(a1);
}

id wrapper_cache_shader_post_attach(ContextInfo *a1, unsigned int a2, unsigned int a3)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v8 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v8 + 144), v7);
    find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1);
    v9 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a3, 1);
    ++*(v9[3] + 48);
    return GPUTools::DYLockUtils::Unlock((v8 + 144), v10);
  }

  return result;
}

uint64_t *find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3;
      if (v4 <= a3)
      {
        v6 = a3 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a3;
    }

    v7 = *(*a2 + 8 * v6);
    if (v7)
    {
      result = *v7;
      if (*v7)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = result[1];
            if (v10 == a3)
            {
              if (*(result + 4) == a3)
              {
                return result;
              }
            }

            else if ((v10 & v9) != v6)
            {
              goto LABEL_21;
            }

            result = *result;
            if (!result)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v11 = result[1];
          if (v11 == a3)
          {
            if (*(result + 4) == a3)
            {
              return result;
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

LABEL_21:
  if (a4)
  {
    if (a3)
    {
      operator new();
    }

    find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>();
  }

  return 0;
}

void sub_4978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>::~pair(va);
  std::shared_ptr<ShaderInfo>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_4994(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t wrapper_cache_shader_pre_detach(ContextInfo *a1, volatile int *a2, uint64_t a3)
{
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 144), a2);
  v8 = *(a1 + 5);
  v9 = v8[9];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a3;
    if (v9 <= a3)
    {
      v11 = a3 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & a3;
  }

  v12 = *(v8[8] + 8 * v11);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      if (v10.u32[0] < 2uLL)
      {
        v14 = v9 - 1;
        while (1)
        {
          v15 = *(v13 + 8);
          if (v15 == a3)
          {
            if (*(v13 + 16) == a3)
            {
              goto LABEL_22;
            }
          }

          else if ((v15 & v14) != v11)
          {
            goto LABEL_21;
          }

          v13 = *v13;
          if (!v13)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v16 = *(v13 + 8);
        if (v16 == a3)
        {
          if (*(v13 + 16) == a3)
          {
            break;
          }
        }

        else
        {
          if (v16 >= v9)
          {
            v16 %= v9;
          }

          if (v16 != v11)
          {
            goto LABEL_21;
          }
        }

        v13 = *v13;
      }

      while (v13);
    }
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

LABEL_22:
  v34 = v13;
  v17 = v8[14];
  if (!v17)
  {
    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = a2;
    if (v17 <= a2)
    {
      v19 = a2 % v17;
    }
  }

  else
  {
    v19 = (v17 - 1) & a2;
  }

  v20 = *(v8[13] + 8 * v19);
  if (!v20)
  {
    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  v21 = *v20;
  if (!v21)
  {
    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  if (v18.u32[0] < 2uLL)
  {
    v22 = v17 - 1;
    while (1)
    {
      v24 = v21[1];
      if (v24 == a2)
      {
        if (*(v21 + 4) == a2)
        {
          goto LABEL_43;
        }
      }

      else if ((v24 & v22) != v19)
      {
        return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
      }

      v21 = *v21;
      if (!v21)
      {
        return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
      }
    }
  }

  while (1)
  {
    v23 = v21[1];
    if (v23 == a2)
    {
      break;
    }

    if (v23 >= v17)
    {
      v23 %= v17;
    }

    if (v23 != v19)
    {
      return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
    }

LABEL_32:
    v21 = *v21;
    if (!v21)
    {
      return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
    }
  }

  if (*(v21 + 4) != a2)
  {
    goto LABEL_32;
  }

LABEL_43:
  if (v13)
  {
    v33 = 0;
    (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35717, &v33);
    ObjectNameArray::ObjectNameArray(v31, v33);
    (*(*(a1 + 4) + 6072))(*(a1 + 2), a2, v33, 0, v32);
    if (v33)
    {
      v25 = 4 * v33;
      v26 = v32;
      while (*v26 != a3)
      {
        ++v26;
        v25 -= 4;
        if (!v25)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v26 = v32;
    }

    if (v26 != &v32[v33])
    {
      v27 = *(v13 + 24);
      v28 = *(v27 + 48) - 1;
      *(v27 + 48) = v28;
      if (!v28)
      {
        v30 = 0;
        (*(*(a1 + 4) + 5256))(*(a1 + 2), a3, 35712, &v30);
        if (v30 == 1)
        {
          remove_shader_info_cache(a1, &v34, a3);
        }
      }
    }

LABEL_54:
    ObjectNameArray::~ObjectNameArray(v31);
  }

  return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
}

void sub_4C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ObjectNameArray::~ObjectNameArray(va);
  GPUTools::DYLockUtils::Unlock((v3 + 144), v5);
  _Unwind_Resume(a1);
}

void remove_shader_info_cache(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = (*a2)[3];
  v8 = *(v7 + 8);
  if (v8 && !*(v8 + 8) || (v9 = *v7, **v7))
  {
    v10 = *(v7 + 24);
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(__size[0]) = 0;
    (*(a1[4] + 5256))(a1[2], a3, 35720, __size);
    if (LODWORD(__size[0]))
    {
      StringBuffer::reserve(v9, SLODWORD(__size[0]));
      (*(a1[4] + 5032))(a1[2], a3, LODWORD(__size[0]), 0, *v9);
      v7 = v6[3];
      v10 = *(v7 + 24);
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      remove_shader_info_cache(v9);
      v7 = v6[3];
      v10 = *(v7 + 24);
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  if (!*(v10 + 8))
  {
    goto LABEL_10;
  }

LABEL_9:
  v11 = *(v7 + 16);
  if (*v11)
  {
LABEL_10:
    v12 = *(v7 + 40);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (!*(v12 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  LODWORD(__size[0]) = 0;
  (*(a1[4] + 5256))(a1[2], a3, 35716, __size);
  if (!LODWORD(__size[0]))
  {
    remove_shader_info_cache(v11);
    v7 = v6[3];
    v12 = *(v7 + 40);
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  StringBuffer::reserve(v11, SLODWORD(__size[0]));
  (*(a1[4] + 5272))(a1[2], a3, LODWORD(__size[0]), 0, *v11);
  v7 = v6[3];
  v12 = *(v7 + 40);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = *(v7 + 32);
  LODWORD(__size[0]) = 0;
  (*(a1[4] + 6520))(a1[2], 35656, a3, 0, __size, 0);
  v14 = SLODWORD(__size[0]) + 1;
  ++LODWORD(__size[0]);
  StringBuffer::reserve(v13, v14);
  (*(a1[4] + 6520))(a1[2], 35656, a3, LODWORD(__size[0]), 0, *v13);
LABEL_16:
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((a1[5] + 64), *a2, __size);
  v15 = __size[0];
  __size[0] = 0;
  if (v15)
  {
    if (v19 == 1)
    {
      v16 = v15[4];
      if (v16)
      {
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v17 = v15;
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          v15 = v17;
        }
      }
    }

    operator delete(v15);
  }
}

uint64_t wrapper_cache_shader_delete(ContextInfo *a1, volatile int *a2)
{
  v4 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v4 + 144), a2);
  v6 = *(a1 + 5);
  v7 = *(v6 + 72);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a2;
      if (v7 <= a2)
      {
        v9 = a2 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & a2;
    }

    v10 = *(*(v6 + 64) + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        if (v8.u32[0] < 2uLL)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = *(v11 + 8);
            if (v13 == a2)
            {
              if (*(v11 + 16) == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v13 & v12) != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }

            v11 = *v11;
            if (!v11)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }
        }

        do
        {
          v14 = *(v11 + 8);
          if (v14 == a2)
          {
            if (*(v11 + 16) == a2)
            {
LABEL_22:
              v16 = v11;
              if (!*(*(v11 + 24) + 48))
              {
                remove_shader_info_cache(a1, &v16, a2);
              }

              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          else
          {
            if (v14 >= v7)
            {
              v14 %= v7;
            }

            if (v14 != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
}

id wrapper_cache_program_use(ContextInfo *a1, unsigned int a2)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v7 = *(a1 + 517);
    if (v7 != a2)
    {
      detach_program(a1, v7);
      *(a1 + 517) = a2;
      if (a2)
      {
        v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1);
        ++*(v8[3] + 372);
      }
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void detach_program(ContextInfo *a1, uint64_t a2)
{
  if ([DYGetGLGuestAppClient() traceMode] != 6)
  {
    v4 = *(a1 + 5);
    v5 = *(v4 + 112);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = a2;
        if (v5 <= a2)
        {
          v7 = a2 % v5;
        }
      }

      else
      {
        v7 = (v5 - 1) & a2;
      }

      v8 = *(*(v4 + 104) + 8 * v7);
      if (v8)
      {
        v9 = *v8;
        if (*v8)
        {
          if (v6.u32[0] < 2uLL)
          {
            v10 = v5 - 1;
            while (1)
            {
              v12 = *(v9 + 8);
              if (v12 == a2)
              {
                if (*(v9 + 16) == a2)
                {
                  goto LABEL_23;
                }
              }

              else if ((v12 & v10) != v7)
              {
                return;
              }

              v9 = *v9;
              if (!v9)
              {
                return;
              }
            }
          }

          do
          {
            v11 = *(v9 + 8);
            if (v11 == a2)
            {
              if (*(v9 + 16) == a2)
              {
LABEL_23:
                --*(*(v9 + 24) + 372);
                if ((*(*(a1 + 4) + 5248))(*(a1 + 2), a2))
                {
                  LODWORD(v16[0]) = 0;
                  (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35714, v16);
                  if (!LODWORD(v16[0]) && !*(*(v9 + 24) + 372))
                  {
                    detach_program((v9 + 24));
                  }
                }

                else
                {
                  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v4 + 104), v9, v16);
                  v13 = v16[0];
                  v16[0] = 0;
                  if (v13)
                  {
                    if (v17 == 1)
                    {
                      v14 = v13[4];
                      if (v14)
                      {
                        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          v15 = v13;
                          (v14->__on_zero_shared)(v14);
                          std::__shared_weak_count::__release_weak(v14);
                          v13 = v15;
                        }
                      }
                    }

                    operator delete(v13);
                  }
                }

                return;
              }
            }

            else
            {
              if (v11 >= v5)
              {
                v11 %= v5;
              }

              if (v11 != v7)
              {
                return;
              }
            }

            v9 = *v9;
          }

          while (v9);
        }
      }
    }
  }
}

uint64_t wrapper_cache_program_delete(ContextInfo *a1, volatile int *a2)
{
  v2 = a2;
  v4 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v4 + 144), a2);
  v6 = *(a1 + 5);
  v7 = *(v6 + 112);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v2;
      if (v7 <= v2)
      {
        v9 = v2 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & v2;
    }

    v10 = *(*(v6 + 104) + 8 * v9);
    if (v10)
    {
      v5 = *v10;
      if (*v10)
      {
        if (v8.u32[0] < 2uLL)
        {
          v11 = v7 - 1;
          while (1)
          {
            v12 = v5[1];
            if (v12 == v2)
            {
              if (*(v5 + 4) == v2)
              {
                goto LABEL_22;
              }
            }

            else if ((v12 & v11) != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }

            v5 = *v5;
            if (!v5)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }
        }

        do
        {
          v13 = v5[1];
          if (v13 == v2)
          {
            if (*(v5 + 4) == v2)
            {
LABEL_22:
              if (!*(v5[3] + 372))
              {
                std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v6 + 104), v5, &v18);
                v14 = v18;
                v18 = 0;
                if (v14)
                {
                  if (v19 == 1)
                  {
                    v15 = v14[4];
                    if (v15)
                    {
                      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        v16 = v14;
                        (v15->__on_zero_shared)(v15);
                        std::__shared_weak_count::__release_weak(v15);
                        v14 = v16;
                      }
                    }
                  }

                  operator delete(v14);
                }
              }

              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          else
          {
            if (v13 >= v7)
            {
              v13 %= v7;
            }

            if (v13 != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          v5 = *v5;
        }

        while (v5);
      }
    }
  }

  return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
}

uint64_t wrapper_cache_program_xfb_varyings(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5248))(*(a1 + 2));
  if (result)
  {
    v9 = 0;
    result = (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35714, &v9);
    if (v9)
    {
      v6 = *(a1 + 5);
      GPUTools::DYLockUtils::Lock((v6 + 144), v5);
      v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1)[3];
      if ((*(v8 + 320) & 1) == 0)
      {
        ProgramXfb::update((v8 + 288), a1, a2);
      }

      return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
    }
  }

  return result;
}

uint64_t wrapper_cache_program_pre_link(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5248))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1)[3];
    v9 = *(v8 + 128);
    if (!v9 || *(v9 + 8))
    {
      v10 = *(v8 + 120);
      LODWORD(__size) = 0;
      (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35716, &__size);
      if (__size)
      {
        StringBuffer::reserve(v10, __size);
        (*(*(a1 + 4) + 5280))(*(a1 + 2), a2, __size, 0, *v10);
      }

      else
      {
        StringBuffer::reserve(v10, 1uLL);
        **v10 = 0;
      }

      operator new();
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void sub_5768(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  GPUTools::DYLockUtils::Unlock((v2 + 144), v5);
  _Unwind_Resume(a1);
}

id wrapper_cache_program_link(ContextInfo *a1, uint64_t a2, int a3)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v42 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v42 + 144), v7);
    v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1);
    v9 = v8[3];
    v10 = *v9;
    v11 = v9[1];
    if (v11 != *v9)
    {
      do
      {
        v11 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](v9, v11);
      }

      while (v11 != v10);
    }

    v12 = v9[3];
    v9[1] = v10;
    for (i = v9[4]; i != v12; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 3), i))
    {
      i -= 7;
    }

    v14 = v9[6];
    v9[4] = v12;
    for (j = v9[7]; j != v14; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 6), j))
    {
      j -= 7;
    }

    v16 = v9[9];
    v9[7] = v14;
    for (k = v9[10]; k != v16; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 9), k))
    {
      k -= 7;
    }

    v18 = v9[12];
    v9[10] = v16;
    for (m = v9[13]; m != v18; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 12), m))
    {
      m -= 7;
    }

    v9[13] = v18;
    *(v8[3] + 377) = 1;
    v50 = 0;
    v20 = *(a1 + 5);
    (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35717, &v50);
    v41 = a3;
    ObjectNameArray::ObjectNameArray(v48, v50);
    (*(*(a1 + 4) + 6072))(*(a1 + 2), a2, v50, 0, v49);
    if (v50)
    {
      for (n = 0; n < v50; ++n)
      {
        v22 = *(v49 + 4 * n);
        v23 = v20[9];
        if (!*&v23)
        {
          goto LABEL_35;
        }

        v24 = vcnt_s8(v23);
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          v25 = *(v49 + 4 * n);
          if (*&v23 <= v22)
          {
            v25 = v22 % v23.i32[0];
          }
        }

        else
        {
          v25 = (v23.i32[0] - 1) & v22;
        }

        v26 = *(*&v20[8] + 8 * v25);
        if (v26)
        {
          v27 = *v26;
          if (*v26)
          {
            if (v24.u32[0] < 2uLL)
            {
              v28 = *&v23 - 1;
              while (1)
              {
                v29 = v27[1];
                if (v29 == v22)
                {
                  if (*(v27 + 4) == v22)
                  {
                    goto LABEL_36;
                  }
                }

                else if ((v29 & v28) != v25)
                {
                  goto LABEL_35;
                }

                v27 = *v27;
                if (!v27)
                {
                  goto LABEL_36;
                }
              }
            }

            do
            {
              v30 = v27[1];
              if (v30 == v22)
              {
                if (*(v27 + 4) == v22)
                {
                  break;
                }
              }

              else
              {
                if (v30 >= *&v23)
                {
                  v30 %= *&v23;
                }

                if (v30 != v25)
                {
                  goto LABEL_35;
                }
              }

              v27 = *v27;
            }

            while (v27);
          }
        }

        else
        {
LABEL_35:
          v27 = 0;
        }

LABEL_36:
        v47 = 0;
        (*(*(a1 + 4) + 5256))(*(a1 + 2), v22, 35663, &v47);
        v31 = v8[3];
        if (v47 == 36313)
        {
          v31 += 6;
        }

        else if (v47 != 35633)
        {
          if (v47 != 35632)
          {
            result = dy_abort();
            __break(1u);
            return result;
          }

          v31 += 3;
        }

        ProgramShaderInfo::ProgramShaderInfo(&v43, v22, v27[3]);
        v32 = v31[1];
        if (v32 >= v31[2])
        {
          v34 = std::vector<ProgramShaderInfo>::__emplace_back_slow_path<ProgramShaderInfo>(v31, &v43);
          v35 = *(&v46 + 1);
          v31[1] = v34;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
            v33 = *(&v45 + 1);
            if (*(&v45 + 1))
            {
LABEL_47:
              if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }
            }
          }

          else
          {
            v33 = *(&v45 + 1);
            if (*(&v45 + 1))
            {
              goto LABEL_47;
            }
          }
        }

        else
        {
          *v32 = v43;
          *(v32 + 8) = v44;
          v44 = 0uLL;
          *(v32 + 24) = v45;
          v45 = 0uLL;
          *(v32 + 40) = v46;
          v46 = 0uLL;
          v31[1] = v32 + 56;
          v33 = *(&v45 + 1);
          if (*(&v45 + 1))
          {
            goto LABEL_47;
          }
        }

        v36 = *(&v44 + 1);
        if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }
      }
    }

    v43 = 0;
    if (*(a1 + 4846))
    {
      (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 33368, &v43);
      v37 = v8[3];
      v38 = *(v37 + 136) & 0xFFFFFFFFFFFFFFFELL;
      if (v43)
      {
        ++v38;
      }

      *(v37 + 136) = v38;
    }

    if (*(a1 + 864) == 4)
    {
      (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 33367, &v43);
      *(v8[3] + 136) = *(v8[3] + 136) & 0xFFFFFFFFFFFFFFFDLL | (2 * (v43 != 0));
    }

    if (v41)
    {
      ProgramPipelineInfo::operator=((v8[3] + 144), v8[3]);
      v39 = v8[3];
      *(v39 + 376) = 0;
      ProgramXfb::clear((v39 + 288));
    }

    else if (gCheckGLErrors == 1)
    {
      handle_link_program_failure(a1, a2, 0);
    }

    ObjectNameArray::~ObjectNameArray(v48);
    return GPUTools::DYLockUtils::Unlock((v42 + 144), v40);
  }

  return result;
}

void sub_5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ObjectNameArray::~ObjectNameArray(va);
  GPUTools::DYLockUtils::Unlock((a4 + 144), v13);
  _Unwind_Resume(a1);
}

void ProgramShaderInfo::~ProgramShaderInfo(ProgramShaderInfo *this)
{
  v1 = *(this + 6);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t *ProgramPipelineInfo::operator=(uint64_t *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 3, *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 6, *(a2 + 48), *(a2 + 56), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 9, *(a2 + 72), *(a2 + 80), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 12, *(a2 + 96), *(a2 + 104), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  }

  v5 = *(a2 + 120);
  v4 = *(a2 + 128);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[16];
  a1[15] = v5;
  a1[16] = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  a1[17] = *(a2 + 136);
  return a1;
}

uint64_t *wrapper_cache_active_transform_feedback(ContextInfo *a1)
{
  v4[0] = 0;
  (*(*(a1 + 4) + 832))(*(a1 + 2), 35725, v4);
  if (!LODWORD(v4[0]))
  {
    (*(*(a1 + 4) + 832))(*(a1 + 2), 33370, v4 + 4);
    v3 = 0;
    if (*(a1 + 864) != 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = 0;
  if (*(a1 + 864) == 4)
  {
LABEL_3:
    (*(*(a1 + 4) + 832))(*(a1 + 2), 36389, &v3);
  }

LABEL_4:
  v4[2] = &v3;
  result = std::__hash_table<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 445, &v3);
  *(result + 20) = v4[0];
  return result;
}

id wrapper_cache_pipeline_use_stages(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v13 = a1[5];
    GPUTools::DYLockUtils::Lock((v13 + 36), v12);
    if (a4)
    {
      v14 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, a1[5] + 13, a4, 1);
    }

    else
    {
      v14 = 0;
    }

    query_pipeline_programs(a1, a2, &v29);
    v19 = a5[1];
    if (v19 != HIDWORD(v29))
    {
      detach_program(a1, v19);
      if (a4)
      {
        if (HIDWORD(v29) == a4)
        {
          ++*(v14[3] + 372);
        }
      }
    }

    v20 = a5[2];
    if (v20 != v30)
    {
      detach_program(a1, v20);
      if (a4)
      {
        if (v30 == a4)
        {
          ++*(v14[3] + 372);
        }
      }
    }

    v21 = a5[3];
    if (v21 != v31)
    {
      detach_program(a1, v21);
      if (a4)
      {
        if (v31 == a4)
        {
          ++*(v14[3] + 372);
        }
      }
    }

    v22 = a5[4];
    if (v22 != v32)
    {
      detach_program(a1, v22);
      if (a4)
      {
        if (v32 == a4)
        {
          ++*(v14[3] + 372);
        }
      }
    }

    v23 = a5[5];
    if (v23 != v33)
    {
      detach_program(a1, v23);
      v23 = v33;
      if (a4)
      {
        if (v33 == a4)
        {
          ++*(v14[3] + 372);
          v23 = a4;
        }
      }
    }

    if (a6)
    {
      v25 = *a1;
      v24 = a1 + 15;
      GPUTools::FB::Encode(v24, 4294955024, 0, "Ciuiuiuiuiuiui", v15, v16, v17, v18, v25);
      v26 = [DYGetGLGuestAppClient() defaultFbufStream];
      v27 = v26;
      while (atomic_exchange(v26 + 14, 1u) == 1)
      {
          ;
        }
      }

      v28 = **v24;
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v27 + 14);
    }

    return GPUTools::DYLockUtils::Unlock((v13 + 36), v23);
  }

  return result;
}

void sub_62E8(_Unwind_Exception *a1, volatile int *a2)
{
  atomic_store(0, (v2 + 56));
  GPUTools::DYLockUtils::Unlock((v3 + 144), a2);
  _Unwind_Resume(a1);
}

id wrapper_cache_pipeline_active_shader_program(ContextInfo *a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6 && *a4 != a3)
  {
    v10 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v10 + 144), v8);
    detach_program(a1, *a4);
    v11 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a3, 1);
    ++*(v11[3] + 372);
    return GPUTools::DYLockUtils::Unlock((v10 + 144), v12);
  }

  return result;
}

void wrapper_cache_pipeline_delete(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  (*(a4 + 16))();
  v5 = *(a1 + 40);
  GPUTools::DYLockUtils::Lock((v5 + 144), v6);
  GPUTools::DYLockUtils::Unlock((v5 + 144), v7);
}

void sub_6964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

id wrapper_cache_pipeline_create_shader_program(ContextInfo *a1, unsigned int a2, unsigned int a3, unint64_t a4, const char **a5)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    ShaderInfo::ShaderInfo(v7, a1, 0);
    StringBuffer::reserve(v7[2], 1uLL);
    operator new[]();
  }

  return result;
}

void sub_6DD4(_Unwind_Exception *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::DYLockUtils::Unlock((v11 + 144), a2);
  ShaderInfo::~ShaderInfo(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>::~pair(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ShaderInfo>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t ProgramPipelineInfo::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v9 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1 + 24, v9);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 32) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = (a1 + 48);
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    if (v13 != v12)
    {
      do
      {
        v13 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1 + 48, v13);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 56) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = (a1 + 72);
  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 72);
    if (v17 != v16)
    {
      do
      {
        v17 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1 + 72, v17);
      }

      while (v17 != v16);
      v18 = *v15;
    }

    *(a1 + 80) = v16;
    operator delete(v18);
    *v15 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v19 = (a1 + 96);
  v20 = *(a1 + 96);
  if (v20)
  {
    v21 = *(a1 + 104);
    v22 = *(a1 + 96);
    if (v21 != v20)
    {
      do
      {
        v21 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1 + 96, v21);
      }

      while (v21 != v20);
      v22 = *v19;
    }

    *(a1 + 104) = v20;
    operator delete(v22);
    *v19 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v23 = *(a2 + 120);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v24 = *(a1 + 128);
  *(a1 + 120) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a2[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a2[2];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a2[2];
    if (!v5)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ProgramPipelineInfo::~ProgramPipelineInfo(ProgramPipelineInfo *this)
{
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 13);
    v5 = *(this + 12);
    if (v4 != v3)
    {
      do
      {
        v4 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 96, v4);
      }

      while (v4 != v3);
      v5 = *(this + 12);
    }

    *(this + 13) = v3;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = *(this + 10);
    v8 = *(this + 9);
    if (v7 != v6)
    {
      do
      {
        v7 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 72, v7);
      }

      while (v7 != v6);
      v8 = *(this + 9);
    }

    *(this + 10) = v6;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    v10 = *(this + 7);
    v11 = *(this + 6);
    if (v10 != v9)
    {
      do
      {
        v10 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 48, v10);
      }

      while (v10 != v9);
      v11 = *(this + 6);
    }

    *(this + 7) = v9;
    operator delete(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    v13 = *(this + 4);
    v14 = *(this + 3);
    if (v13 != v12)
    {
      do
      {
        v13 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 24, v13);
      }

      while (v13 != v12);
      v14 = *(this + 3);
    }

    *(this + 4) = v12;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    v16 = *(this + 1);
    v17 = *this;
    if (v16 != v15)
    {
      do
      {
        v16 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this, v16);
      }

      while (v16 != v15);
      v17 = *this;
    }

    *(this + 1) = v15;
    operator delete(v17);
  }
}

{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 96);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(uint64_t *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v10 -= 7;
          std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v10);
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x492492492492492)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x249249249249249)
      {
        v14 = 0x492492492492492;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x492492492492492)
      {
        operator new();
      }
    }

    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        ProgramShaderInfo::operator=(v8, v5);
        v5 += 56;
        v8 += 56;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 7;
      std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v15);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        ProgramShaderInfo::operator=(v8, v5);
        v5 += 56;
        v8 += 56;
        v16 -= 56;
      }

      while (v16);
      v15 = a1[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v18 = v15;
      v19 = v15;
      do
      {
        *v19 = *v17;
        v20 = *(v17 + 2);
        v19[1] = *(v17 + 1);
        v19[2] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v21 = *(v17 + 4);
        v19[3] = *(v17 + 3);
        v19[4] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(v17 + 6);
        v19[5] = *(v17 + 5);
        v19[6] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v17 += 56;
        v19 += 7;
        v18 += 7;
      }

      while (v17 != a3);
    }

    a1[1] = v18;
  }
}

uint64_t ProgramShaderInfo::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 16);
  *(result + 8) = v4;
  *(result + 16) = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    result = v6;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(result + 32);
  *(result + 24) = v8;
  *(result + 32) = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = result;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    result = v10;
  }

  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(result + 48);
  *(result + 40) = v12;
  *(result + 48) = v11;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = result;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      return v14;
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void ShaderInfo::~ShaderInfo(ShaderInfo *this)
{
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  v5 = *(this + 1);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<std::string>::emplace_back<std::string>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

void std::__shared_ptr_emplace<ShaderInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_20CC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<ShaderInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a2[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_87AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<StringBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_20CCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<ProgramInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_20CCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<ProgramInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[43];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a2[41];
  a2[41] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a2[37];
  if (v6)
  {
    v7 = a2[38];
    v8 = a2[37];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a2[37];
    }

    a2[38] = v6;
    operator delete(v8);
  }

  ProgramPipelineInfo::~ProgramPipelineInfo((a2 + 18));

  ProgramPipelineInfo::~ProgramPipelineInfo(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<ProgramInfo>>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_8CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ProgramShaderInfo>::__emplace_back_slow_path<ProgramShaderInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = 56 * v2 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      v11[1] = 0;
      v11[2] = 0;
      *(v12 + 24) = *(v11 + 3);
      v11[3] = 0;
      v11[4] = 0;
      *(v12 + 40) = *(v11 + 5);
      v11[5] = 0;
      v11[6] = 0;
      v11 += 7;
      v12 += 56;
    }

    while (v11 != v9);
    do
    {
      std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v8);
      v8 += 7;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,VertexAttribInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,VertexAttribInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,VertexAttribInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,VertexAttribInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void DYGLCommonInit()
{
  pthread_key_create(&qword_21B318, 0);
  v0 = pthread_key_create(&qword_21B320, 0);
  v1 = GPUTools::Interpose::DYFetchSandboxEntitlements(v0);
  v2 = GPUTools::Interpose::DYFetchSandboxEntitlements(v1);
  ContextInfo::initialize(v2);
}

uint64_t validate_inbound_context_id(uint64_t a1)
{
  if (gDYContextRemappingBlock)
  {
    v1 = (*(gDYContextRemappingBlock + 16))();
  }

  else
  {
    v1 = a1;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __validate_inbound_context_id_block_invoke;
  v3[3] = &unk_20CD10;
  v3[4] = v1;
  v3[5] = &v4;
  iter_contexts(v3);
  if (v5[3])
  {
    _Block_object_dispose(&v4, 8);
    return v1;
  }

  else
  {
    result = dy_abort();
    __break(1u);
  }

  return result;
}

intptr_t iter_contexts(uint64_t a1)
{
  v2 = [DYGetGLGuestAppClient() graphicsSemaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v9 = 0;
  v3 = ContextInfo::activeCtxInfoMap + 8;
  v4 = *ContextInfo::activeCtxInfoMap;
  if (*ContextInfo::activeCtxInfoMap != ContextInfo::activeCtxInfoMap + 8)
  {
    do
    {
      (*(a1 + 16))(a1, v4[5], &v9);
      if (v9)
      {
        break;
      }

      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  return dispatch_semaphore_signal(v2);
}

uint64_t __validate_inbound_context_id_block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  if (*(result + 32) == *a2)
  {
    *a3 = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t (**choose_dispatch_table())(__GLIContextRec **)
{
  v0 = [DYGetGLGuestAppClient() traceMode] - 1;
  if (v0 < 6 && ((0x3Du >> v0) & 1) != 0)
  {
    return off_20CF40[v0];
  }

  [DYGetGLGuestAppClient() traceMode];
  v2 = dy_abort();
  return update_dispatch_table(v2);
}

uint64_t update_dispatch_table(uint64_t a1)
{
  v2 = [DYGetGLGuestAppClient() traceMode] - 1;
  if (v2 < 6 && ((0x3Du >> v2) & 1) != 0)
  {
    v3 = off_20CF40[v2];

    return install_dispatch_table(a1, v3);
  }

  else
  {
    [DYGetGLGuestAppClient() traceMode];
    v5 = dy_abort();
    return disable_buffer_swaps(v5);
  }
}

uint64_t context_enable_capturing(uint64_t result)
{
  if ((*(result + 4837) & 1) == 0)
  {
    *(result + 4837) = 1;
    return install_dispatch_table(*result, &gCaptureDispatchTable);
  }

  return result;
}

void harvest_contexts(uint64_t a1, char a2)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, 0);
  GPUTools::FB::Stream::Stream();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = v8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __harvest_contexts_block_invoke_2;
  v5[3] = &unk_20CD78;
  v5[5] = v7;
  v5[6] = Mutable;
  v5[4] = a1;
  v6 = a2;
  iter_contexts(v5);
  CFRelease(Mutable);
  _Block_object_dispose(v7, 8);
  GPUTools::FB::Stream::~Stream(v8);
}

void sub_9980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  GPUTools::FB::Stream::~Stream(va1);
  _Unwind_Resume(a1);
}

void __harvest_contexts_block_invoke(id a1, Stream *a2)
{
  v3 = DYGetGLGuestAppClient();

  GPUTools::Interpose::DYFlushFbufStream(v3, a2, v4);
}

void __harvest_contexts_block_invoke_2(uint64_t a1, ContextInfo *a2)
{
  v4 = **(a2 + 5);
  v5 = CFSetContainsValue(*(a1 + 48), v4);
  if (!v5)
  {
    CFSetAddValue(*(a1 + 48), v4);
  }

  v6 = &kDYFunctionStreamNameSharegroup;
  if (v5)
  {
    v6 = &kDYFunctionStreamNameState;
  }

  v7 = *v6;
  v8 = *(a1 + 32);
  v9 = *a2;
  if (v8)
  {
    v10 = [NSString stringWithFormat:@"%@-%@-%p", v8, v7, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-%p", v7, v9, v12];
  }

  GPUTools::FB::Stream::Open(*(*(*(a1 + 40) + 8) + 24), v10);
  ContextHarvester::ContextHarvester(v13, a2, *(*(*(a1 + 40) + 8) + 24));
  ContextHarvester::HarvestAll(v13, v5 == 0, *(a1 + 56));
  v11 = *(*(*(a1 + 40) + 8) + 24);
  while (atomic_exchange((v11 + 56), 1u) == 1)
  {
      ;
    }
  }

  (*(*(v11 + 40) + 16))();
  *(v11 + 16) = *(v11 + 8) + 8;
  *(v11 + 60) = 1;
  atomic_store(0, (v11 + 56));
  GPUTools::FB::Stream::Close(*(*(*(a1 + 40) + 8) + 24));
  ContextHarvester::~ContextHarvester(v13);
}

void sub_9B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  atomic_store(0, (v5 + 56));
  ContextHarvester::~ContextHarvester(va);
  _Unwind_Resume(a1);
}

void sub_9B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ContextHarvester::~ContextHarvester(va);
  _Unwind_Resume(a1);
}

id handle_frame_boundary(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = [DYGetGLGuestAppClient() incrementGlobalFrameCounter];
  if (*(v2 + 741) == 1)
  {
    ++*(a1 + 168);
    if ([DYGetGLGuestAppClient() state] == &dword_0 + 3)
    {
      [DYGetGLGuestAppClient() incrementCapturedFramesCounter];
    }
  }

  *(a1 + 3720) = mach_absolute_time();
  *(v2 + 742) = 0;
  if ((gProfilingFlags & 3) != 0)
  {
    GPUTools::DYLockUtils::Lock(&unk_21B314, v4);
    v5 = *(a1 + 3720) - qword_21B330;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = gProfilingFlags;
      if ((gProfilingFlags & 2) == 0)
      {
LABEL_7:
        v8 = 0;
        v9 = 0;
        if ((v7 & 1) == 0 || v5 <= gProfilingSendPeriod)
        {
          goto LABEL_18;
        }

LABEL_16:
        v8 = copy_profiling_data_dictionary(a1, v3, v5);
LABEL_17:
        [DYGetGLGuestAppClient() sendMessage:{+[DYTransportMessage messageWithKind:plistPayload:](DYTransportMessage, "messageWithKind:plistPayload:", 1541, v8)}];
        v9 = 1;
LABEL_18:

        objc_autoreleasePoolPop(v6);
        if (v9)
        {
          qword_21B330 = mach_absolute_time();
        }

        GPUTools::DYLockUtils::Unlock(&unk_21B314, v12);
        goto LABEL_21;
      }
    }

    else
    {
      v5 = __udivti3();
      v6 = objc_autoreleasePoolPush();
      v7 = gProfilingFlags;
      if ((gProfilingFlags & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = copy_profiling_data_dictionary(a1, v3, v5);
    GPUTools::DYLockUtils::Lock(&_MergedGlobals, v10);
    if (qword_21B328 != v8)
    {

      qword_21B328 = v8;
    }

    GPUTools::DYLockUtils::Unlock(&_MergedGlobals, v11);
    v9 = 1;
    if ((gProfilingFlags & 1) == 0 || v5 <= gProfilingSendPeriod)
    {
      goto LABEL_18;
    }

    if (v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_21:
  v13 = DYGetGLGuestAppClient();

  return [v13 handleFrameBoundaryCommon];
}

void sub_9D94(_Unwind_Exception *a1, volatile int *a2)
{
  GPUTools::DYLockUtils::Unlock(&_MergedGlobals, a2);
  GPUTools::DYLockUtils::Unlock(&unk_21B314, v3);
  _Unwind_Resume(a1);
}

uint64_t save_texture(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, GPUTools::GL *this, unsigned int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *(a1 + 32);
  v27 = 0;
  *v28 = 0;
  v25 = 0;
  v26 = 0;
  v18 = GPUTools::GL::dy_pixel_group_size(this, a4, a3);
  if (*(a1 + 4861) != 1 || ((*(v17 + 832))(a2, 35350, &v25 + 4), (*(v17 + 832))(a2, 35352, &v25), !HIDWORD(v25)))
  {
    (*(v17 + 832))(a2, 3317, &v28[1]);
    v20 = 0;
    v21 = *(a1 + 3456);
    if (v21 <= 4 && ((1 << v21) & 0x19) != 0)
    {
      (*(v17 + 832))(a2, 3314, v28);
      v20 = v28[0];
    }

    HIDWORD(v25) = GPUTools::GL::dy_pixel_row_bytes(v18, a6, v20, v28[1], v19);
  }

  v22 = *(a1 + 3456);
  if (v22 > 4 || ((1 << v22) & 0x19) == 0)
  {
    goto LABEL_12;
  }

  (*(v17 + 832))(a2, 32878, &v27 + 4);
  if (a9)
  {
    (*(v17 + 832))(a2, 32877, &v26);
  }

  (*(v17 + 832))(a2, 3315, &v27);
  (*(v17 + 832))(a2, 3316, &v26 + 4);
  v23 = HIDWORD(v27);
  if (!HIDWORD(v27))
  {
LABEL_12:
    HIDWORD(v27) = a7;
    v23 = a7;
  }

  if (!v25)
  {
    LODWORD(v25) = HIDWORD(v25) * v23;
  }

  DYGetGLGuestAppClient();
  return GPUTools::Interpose::DYSavePointer();
}

BOOL is_extension_available(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x600u, kCFAllocatorNull);
  v4 = CFSetGetValue(*(a1 + 64), v3) != 0;
  CFRelease(v3);
  return v4;
}

uint64_t query_texture_unit_limits(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 3456);
  if ((v3 - 2) >= 3)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return result;
      }

      v4 = 34018;
      result = (*(*(result + 32) + 832))(*(result + 16), 34018, a2 + 2);
      v6 = a2[2];
      *a2 = v6;
      a2[3] = v6;
      v5 = 34018;
    }

    else
    {
      v4 = 34929;
      v7 = result;
      (*(*(result + 32) + 832))(*(result + 16), 34929, a2);
      (*(*(v7 + 32) + 832))(*(v7 + 16), 34018, a2 + 2);
      v8 = *(*(v7 + 32) + 832);
      v9 = *(v7 + 16);
      v5 = 35661;
      result = v8(v9, 35661, a2 + 3);
    }
  }

  else
  {
    v4 = 35661;
    result = (*(*(result + 32) + 832))(*(result + 16), 35661, a2 + 3);
    *a2 = 0;
    a2[2] = 0;
    v5 = 35661;
  }

  a2[1] = v4;
  a2[4] = v5;
  return result;
}

uint64_t update_context_state_cache(uint64_t a1)
{
  (*(*(a1 + 32) + 832))(*(a1 + 16), 34964, a1 + 2032);
  (*(*(a1 + 32) + 832))(*(a1 + 16), 34965, a1 + 2036);
  if (*(a1 + 3460) >= 2)
  {
    (*(*(a1 + 32) + 832))(*(a1 + 16), 35055, a1 + 2044);
    (*(*(a1 + 32) + 832))(*(a1 + 16), 35053, a1 + 2040);
    if (*(a1 + 3460) >= 3)
    {
      (*(*(a1 + 32) + 832))(*(a1 + 16), 36662, a1 + 2048);
      (*(*(a1 + 32) + 832))(*(a1 + 16), 36663, a1 + 2052);
      (*(*(a1 + 32) + 832))(*(a1 + 16), 35983, a1 + 2060);
      (*(*(a1 + 32) + 832))(*(a1 + 16), 35368, a1 + 2064);
    }
  }

  (*(*(a1 + 32) + 832))(*(a1 + 16), 34016, a1 + 2072);
  if (*(a1 + 4858) == 1)
  {
    (*(*(a1 + 32) + 832))(*(a1 + 16), 34017, a1 + 2076);
  }

  if (*(a1 + 3444))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(*(a1 + 32) + 2736))(*(a1 + 16), v2 + 33984);
      v4 = *(a1 + 3408);
      v5 = *(a1 + 3416);
      while (v4 != v5)
      {
        v6 = *v4++;
        *(v9 + 7) = 0;
        v9[0] = 0;
        GPUTools::GL::DYGetTextureTargetInfo();
        v8 = 0;
        (*(*(a1 + 32) + 832))(*(a1 + 16), HIDWORD(v9[0]), &v8);
        wrapper_cache_texture_binding(a1, v2, v6, v8);
      }

      v2 = ++v3;
    }

    while (*(a1 + 3444) > v3);
  }

  return (*(*(a1 + 32) + 2736))(*(a1 + 16), *(a1 + 2072));
}

uint64_t query_pipeline_programs(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[1] = 0;
  v6 = a3 + 1;
  (*(*(a1 + 32) + 6608))(*(a1 + 16), a2, 33369, a3);
  (*(*(a1 + 32) + 6608))(*(a1 + 16), a2, 35633, a3 + 4);
  v7 = *(*(a1 + 32) + 6608);
  v8 = *(a1 + 16);

  return v7(v8, a2, 35632, v6);
}

void *query_info_log(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t, uint64_t, unsigned int *), void (*a4)(void, uint64_t, void, void, void *), unsigned int *a5)
{
  a3(*(a1 + 16), a2, 35716, a5);
  v9 = *a5;
  if (!v9)
  {
    return 0;
  }

  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  a4(*(a1 + 16), a2, *a5, 0, v10);
  return v10;
}

void __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__()
{
  if (gTrapOnGLError == 1)
  {
    __break(1u);
  }
}

void *__GPUTOOLS_GET_OPENGL_ERROR_LOG__()
{
  result = pthread_getspecific(qword_21B320);
  if (!result)
  {
    return &unk_204462;
  }

  return result;
}

uint64_t handle_opengl_error(int a1, const void *a2)
{
  v4 = a1;
  pthread_setspecific(qword_21B318, &v4);
  pthread_setspecific(qword_21B320, a2);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  return pthread_setspecific(qword_21B320, 0);
}

uint64_t handle_opengl_thread_conflict(const void **a1)
{
  snprintf(__str, 0x20uLL, "%p", *a1);
  v2 = -4;
  pthread_setspecific(qword_21B318, &v2);
  pthread_setspecific(qword_21B320, __str);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  return pthread_setspecific(qword_21B320, 0);
}

void handle_compile_shader_failure(uint64_t a1, uint64_t a2)
{
  size = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 5272);
  (*(v4 + 5256))(*(a1 + 16), a2, 35716, &size);
  if (size)
  {
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    v5(*(a1 + 16), a2, size, 0, v6);
  }

  else
  {
    v6 = 0;
  }

  size_4 = -1;
  pthread_setspecific(qword_21B318, &size_4);
  pthread_setspecific(qword_21B320, v6);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  pthread_setspecific(qword_21B320, 0);
  free(v6);
}

void handle_link_program_failure(uint64_t a1, uint64_t a2, int a3)
{
  size = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 5280);
  (*(v6 + 5264))(*(a1 + 16), a2, 35716, &size);
  if (size)
  {
    v8 = malloc_type_malloc(size, 0x100004077774924uLL);
    v7(*(a1 + 16), a2, size, 0, v8);
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = -3;
  }

  else
  {
    v9 = -2;
  }

  size_4 = v9;
  pthread_setspecific(qword_21B318, &size_4);
  pthread_setspecific(qword_21B320, v8);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  pthread_setspecific(qword_21B320, 0);
  free(v8);
}

BOOL check_errors(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 816))(*(a1 + 16));
  *(a1 + 3404) = v2;
  if (!v2)
  {
    return 0;
  }

  if (!*(a1 + 3400))
  {
    *(a1 + 3400) = v2;
  }

  v4 = v2;
  handle_opengl_error(v2, 0);
  return v4 != 0;
}

double clear_errors(void *a1)
{
  (*(a1[4] + 816))(a1[2]);
  result = 0.0;
  a1[425] = 0;
  return result;
}

id ReserveGLShader(void *a1, int a2, int a3)
{
  v4[0] = a3;
  v4[1] = a2;
  return [a1 setParameter:1613 to:v4];
}

uint64_t CreatePrivateGLProgram(void *a1)
{
  v2 = GLIContextFromEAGLContext();
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || v2 < *(v4 + 32))
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(*(v4 + 40) + 40);
  v12 = 35648;
  v13 = &v12;
  add_explicit = atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v8 + 232), &v12) + 5, 0xFFFFFFFF, memory_order_relaxed);
  v10 = add_explicit - 1;
  LODWORD(v13) = add_explicit - 1;
  [a1 setParameter:1614 to:&v13];
  return v10;
}

uint64_t NewInterposeGLObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2 == 35656)
  {
    v3 = 35648;
  }

  else
  {
    v3 = a2;
  }

  v5 = v3;
  v6 = &v5;
  return atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v2 + 232), &v5) + 5, 0xFFFFFFFF, memory_order_relaxed) - 1;
}

uint64_t CreatePrivateGLShader(void *a1, int a2)
{
  v4 = GLIContextFromEAGLContext();
  v5 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == ContextInfo::activeCtxInfoMap + 8 || v4 < *(v6 + 32))
  {
LABEL_9:
    v6 = ContextInfo::activeCtxInfoMap + 8;
  }

  v10 = *(*(v6 + 40) + 40);
  v14 = 35648;
  v15 = &v14;
  add_explicit = atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v10 + 232), &v14) + 5, 0xFFFFFFFF, memory_order_relaxed);
  v12 = add_explicit - 1;
  LODWORD(v15) = a2;
  HIDWORD(v15) = add_explicit - 1;
  [a1 setParameter:1613 to:&v15];
  return v12;
}

uint64_t CreatePrivateGLProgramPipeline(void *a1)
{
  v2 = GLIContextFromEAGLContext();
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || v2 < *(v4 + 32))
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(*(v4 + 40) + 40);
  v11 = 35407;
  v12 = &v11;
  v9 = atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v8 + 232), &v11) + 5, 0xFFFFFFFF, memory_order_relaxed) - 1;
  LODWORD(v12) = 1610;
  HIDWORD(v12) = v9;
  [a1 setParameter:1612 to:&v12];
  return v9;
}

id HarvestResourceNames(void *a1)
{
  v2 = [a1 attributes];
  v3 = [objc_msgSend(v2 objectForKey:{kDYResourceTypeKey), "unsignedIntValue"}];
  if (v3 - 48 <= 0xFFFFFFD0)
  {
    HarvestResourceNames_cold_1();
  }

  v4 = v3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(NSMutableSet);
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __HarvestResourceNames_block_invoke;
  v9[3] = &unk_20CDA0;
  v10 = v4;
  v9[4] = v6;
  v9[5] = v5;
  iter_contexts(v9);

  v7 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, v5}];
  [DYGetGLGuestAppClient() sendMessage:v7 inReplyTo:a1];

  return [DYGetGLGuestAppClient() unlockGraphics];
}

void __HarvestResourceNames_block_invoke(uint64_t a1, ContextInfo *a2)
{
  v4 = *(a1 + 48);
  if (v4 != 3 && v4 != 9)
  {
    v7 = [[NSNumber alloc] initWithUnsignedLongLong:**(a2 + 5)];
    v6 = [*(a1 + 32) containsObject:?];
    if (v6)
    {

      return;
    }

    [*(a1 + 32) addObject:v7];
  }

  ContextHarvester::ContextHarvester(v9, a2, 0);
  v8[0] = 0;
  v8[1] = 0;
  ContextHarvester::HarvestObjectNames(v9, *(a1 + 48), v8);
  if (v8[0])
  {
    [*(a1 + 40) setObject:GPUTools::NameTargetTupleArray::gut(v8) forKey:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *a2)}];
  }

  GPUTools::NameTargetTupleArray::reset(v8);
  ContextHarvester::~ContextHarvester(v9);
}

void sub_AE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  GPUTools::NameTargetTupleArray::reset(va);
  ContextHarvester::~ContextHarvester(va1);
  _Unwind_Resume(a1);
}

uint64_t HarvestRenderbuffer(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSNumber numberWithUnsignedLongLong:a1];
  [v4 setObject:v5 forKey:kDYResourceContextKey];
  v6 = [NSNumber numberWithUnsignedInt:4];
  [v4 setObject:v6 forKey:kDYResourceTypeKey];
  v7 = [NSNumber numberWithUnsignedInt:a2];
  [v4 setObject:v7 forKey:kDYResourceObjectKey];

  return HarvestResourceObject(v4);
}

uint64_t HarvestResourceObject(void *a1)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  [DYGetGLGuestAppClient() invalidateSavePointerMap:0];
  v2 = validate_inbound_context_id([objc_msgSend(a1 objectForKey:{kDYResourceContextKey), "unsignedLongLongValue"}]);
  v3 = objc_opt_new();
  GPUTools::FB::Stream::Stream(v25, v3);
  GPUTools::FB::Stream::Open(v25, @"resource-stream");
  v4 = [objc_msgSend(a1 objectForKey:{kDYResourceTypeKey), "unsignedIntValue"}];
  if (v4 - 48 <= 0xFFFFFFD0)
  {
    __assert_rtn("DYResourceType ValidateIncomingResource(uint32_t)", &unk_204462, 0, "unsafeResourceType > 0 && unsafeResourceType < kDYMaxResourceTypes");
  }

  v5 = [objc_msgSend(a1 objectForKey:{kDYResourceObjectKey), "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKey:{kDYResourceTargetKey), "unsignedIntValue"}];
  v28[0] = off_20CF08;
  v28[1] = &internal_context;
  v28[3] = v28;
  v29[3] = v29;
  v29[0] = off_20CF08;
  v29[1] = &internal_context;
  internal_context = 0;
  v6 = GLIContextFromEAGLContext();
  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || v6 < *(v8 + 32))
  {
LABEL_10:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  v13 = *(v12 + 32);
  v27 = 0;
  switch(v4)
  {
    case 4u:
      v15 = (v12 + 16);
      (*(v13 + 832))(*(v12 + 16), 36007, &v27);
      v16 = 5320;
      goto LABEL_17;
    case 2u:
      v15 = (v12 + 16);
      (*(v13 + 832))(*(v12 + 16), 34964, &v27);
      v16 = 5160;
LABEL_17:
      v14 = (*(v13 + v16))(*v15, v27);
      goto LABEL_18;
    case 1u:
      *(v26 + 7) = 0;
      v26[0] = 0;
      GPUTools::GL::DYGetTextureTargetInfo();
      (*(v13 + 832))(*(v12 + 16), HIDWORD(v26[0]), &v27);
      v14 = (*(v13 + 1160))(*(v12 + 16), v27);
LABEL_18:
      if (v27 != v5 && !v14)
      {
        internal_context = create_internal_context(v2);
        v17 = GLIContextFromEAGLContext();
        v18 = *(ContextInfo::activeCtxInfoMap + 8);
        if (!v18)
        {
          goto LABEL_28;
        }

        v19 = ContextInfo::activeCtxInfoMap + 8;
        do
        {
          v20 = *(v18 + 32);
          v10 = v20 >= v17;
          v21 = v20 < v17;
          if (v10)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v21);
        }

        while (v18);
        if (v19 == ContextInfo::activeCtxInfoMap + 8 || v17 < *(v19 + 32))
        {
LABEL_28:
          v19 = ContextInfo::activeCtxInfoMap + 8;
        }

        v22 = *(v19 + 40);
      }

      operator new();
  }

  result = dy_abort();
  __break(1u);
  return result;
}

void sub_B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_B534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void sub_B548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void sub_B578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void sub_B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void HarvestRenderbufferInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4)
  {
    [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
    [DYGetGLGuestAppClient() invalidateSavePointerMap:0];
    validate_inbound_context_id(a1);
    v8 = GLIContextFromEAGLContext();
    v9 = *(ContextInfo::activeCtxInfoMap + 8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = ContextInfo::activeCtxInfoMap + 8;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 == ContextInfo::activeCtxInfoMap + 8 || v8 < *(v10 + 32))
    {
LABEL_10:
      v10 = ContextInfo::activeCtxInfoMap + 8;
    }

    ContextHarvester::ContextHarvester(v14, *(v10 + 40), 0);
    ContextHarvester::HarvestRenderbufferInfo(v14, a2, a3, a4);
    [DYGetGLGuestAppClient() unlockGraphics];
    ContextHarvester::~ContextHarvester(v14);
  }
}

void HarvestState(void *a1)
{
  v2 = objc_opt_new();
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __HarvestState_block_invoke;
  v4[3] = &unk_20CDC8;
  v4[4] = v2;
  iter_contexts(v4);
  [DYGetGLGuestAppClient() unlockGraphics];
  v3 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, v2}];

  [DYGetGLGuestAppClient() sendMessage:v3 inReplyTo:a1];
}

void __HarvestState_block_invoke(uint64_t a1, ContextInfo *a2)
{
  v4 = objc_opt_new();
  GPUTools::FB::Stream::Stream(v7, v4);
  GPUTools::FB::Stream::Open(v7, [NSString stringWithFormat:@"%@-%p", kDYFunctionStreamNameState, *a2]);
  ContextHarvester::ContextHarvester(v6, a2, v7);
  ContextHarvester::HarvestAll(v6, 0, 1);
  while (atomic_exchange(&v11, 1u) == 1)
  {
      ;
    }
  }

  (*(v10 + 16))(v10, v7);
  v9 = v8 + 8;
  v12 = 1;
  atomic_store(0, &v11);
  v5 = [[NSNumber alloc] initWithUnsignedLongLong:*a2];
  [*(a1 + 32) setObject:v4 forKey:v5];

  ContextHarvester::~ContextHarvester(v6);
  GPUTools::FB::Stream::~Stream(v7);
}

void sub_B8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  atomic_store(0, (v3 + 56));
  ContextHarvester::~ContextHarvester(va);
  GPUTools::FB::Stream::~Stream((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ContextHarvester::~ContextHarvester(va);
  GPUTools::FB::Stream::~Stream((v3 - 112));
  _Unwind_Resume(a1);
}

void UpdateResourceObject(void *a1)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v2 = objc_opt_new();
  v3 = [a1 attributes];
  v4 = kDYResourceContextKey;
  v5 = [v3 objectForKey:kDYResourceContextKey];
  [(NSMutableDictionary *)v2 setObject:v5 forKey:v4];
  validate_inbound_context_id([v5 unsignedLongLongValue]);
  v6 = GLIContextFromEAGLContext();
  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || v6 < *(v8 + 32))
  {
LABEL_9:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  v13 = [a1 attributes];
  v14 = kDYResourceTypeKey;
  v15 = [v13 objectForKey:kDYResourceTypeKey];
  [(NSMutableDictionary *)v2 setObject:v15 forKey:v14];
  v16 = [a1 attributes];
  v17 = kDYResourceObjectKey;
  v18 = [v16 objectForKey:kDYResourceObjectKey];
  [(NSMutableDictionary *)v2 setObject:v18 forKey:v17];
  v19 = [v15 unsignedIntValue];
  if (v19 > 0xA)
  {
    goto LABEL_21;
  }

  if (v19 != 1)
  {
    if (v19 == 7)
    {
      updated = GPUTools::ResourceUpdater::UpdateProgram(*(v12 + 3472), [v18 unsignedIntValue], objc_msgSend(a1, "attributes"), v2);
      goto LABEL_15;
    }

    if (((1 << v19) & 0x77C) != 0)
    {
      v27 = [v15 unsignedIntValue];
      dy_abort();
    }

LABEL_21:
    [v15 unsignedIntValue];
    v26 = dy_abort();
    _Block_object_dispose(&v29, 8);
    _Unwind_Resume(v26);
  }

  updated = GPUTools::ResourceUpdater::UpdateTexture(*(v12 + 3472), [v18 unsignedIntValue], objc_msgSend(a1, "attributes"), v2);
LABEL_15:
  v21 = updated;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __UpdateResourceObject_block_invoke;
  v28[3] = &unk_20CDF0;
  v28[4] = &v29;
  iter_contexts(v28);
  if (*(v30 + 24) == 1)
  {
    v22 = DYGetGLGuestAppClient();
    v23 = [v22 overrideFlags] | 0x100;
  }

  else
  {
    v22 = DYGetGLGuestAppClient();
    v23 = [v22 overrideFlags] & 0xFFFFFEFF;
  }

  [v22 setOverrideFlags:v23];
  [DYGetGLGuestAppClient() unlockGraphics];
  v24 = [NSNumber numberWithBool:v21];
  [(NSMutableDictionary *)v2 setObject:v24 forKey:kDYResourceUpdateSucceededKey];
  v25 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, v2}];

  [DYGetGLGuestAppClient() sendMessage:v25 inReplyTo:a1];
  _Block_object_dispose(&v29, 8);
}

void sub_BC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __UpdateResourceObject_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = GPUTools::ResourceUpdater::HasDrawOverride(*(a2 + 3472));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void ClearResourceOverrides(void *a1)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v2 = DYGetGLGuestAppClient();
  [v2 setOverrideFlags:{objc_msgSend(v2, "overrideFlags") & 0xFFFFFEFF}];
  iter_contexts(&__block_literal_global_22);
  [DYGetGLGuestAppClient() unlockGraphics];
  v3 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, 0}];
  [DYGetGLGuestAppClient() sendMessage:v3 inReplyTo:a1];
}

BOOL IsInterposeGLObject(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a2;
  if (a2 > 35647)
  {
    if (a2 != 35648)
    {
      if (a2 != 35656)
      {
        return 0;
      }

      v4 = 35648;
    }
  }

  else if (a2 != 5890 && a2 != 35407)
  {
    return 0;
  }

  v5 = &v4;
  return *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 232), &v4) + 5) <= a3;
}

id reset_graphics_timing()
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  iter_contexts(&__block_literal_global_24);
  v0 = DYGetGLGuestAppClient();

  return [v0 unlockGraphics];
}

void __reset_graphics_timing_block_invoke(id a1, void *a2, BOOL *a3)
{
  *(a2 + 464) = 0;
  *(a2 + 231) = 0u;
  bzero(a2 + 3736, 0x388uLL);
}

void get_graphics_timing(uint64_t *a1, void *a2, void *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __get_graphics_timing_block_invoke;
  v7[3] = &unk_20CE78;
  v7[4] = &v16;
  v7[5] = &v12;
  v7[6] = &v8;
  iter_contexts(v7);
  [DYGetGLGuestAppClient() unlockGraphics];
  v6 = v17[3];
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v6 = __udivti3();
  }

  *a1 = v6;
  *a2 = v13[3];
  *a3 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void sub_C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void *__get_graphics_timing_block_invoke(void *result, void *a2)
{
  *(*(result[4] + 8) + 24) += a2[462];
  *(*(result[5] + 8) + 24) += a2[463];
  *(*(result[6] + 8) + 24) += a2[464];
  return result;
}

id get_profiling_data(uint64_t a1, volatile int *a2)
{
  GPUTools::DYLockUtils::Lock(&_MergedGlobals, a2);
  v2 = qword_21B328;
  GPUTools::DYLockUtils::Unlock(&_MergedGlobals, v3);
  return v2;
}

void GPUTools::ScopeFunction::~ScopeFunction(GPUTools::ScopeFunction *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(this + 3);
    if (v3 == this)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }
}

void *copy_profiling_data_dictionary(ContextInfo *a1, int a2, uint64_t a3)
{
  v3 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", (a2 - 1)), @"frame index", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a3), @"frame duration", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *a1), @"context", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a1 + 579)), @"cpu idle time", 0}];
  *host_info_outCnt = 0;
  v36 = host_info_outCnt;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  bzero(&v39, 0x380uLL);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = ___ZL30copy_profiling_data_dictionaryP11ContextInfojy_block_invoke;
  v26[3] = &unk_20CEA0;
  v26[4] = host_info_outCnt;
  v26[5] = &v31;
  v26[6] = &v27;
  v26[7] = &v39;
  v26[8] = &v40;
  v26[9] = &v41;
  v26[10] = &v42;
  iter_contexts(v26);
  v4 = v36;
  v5 = *(v36 + 3);
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    *(v36 + 3) = v5;
    v6 = gProfilingFlags;
    if ((gProfilingFlags & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(&g_DYTimebaseInfo + 1);
    v5 = __udivti3();
    *(v4 + 3) = v5;
    v6 = gProfilingFlags;
    if ((gProfilingFlags & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v5), @"total GL time"}];
LABEL_7:
  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v28[3]), @"total platform time"}];
LABEL_8:
  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v32[3]), @"total GL command"}];
  v22 = v3;
  v25 = objc_opt_new();
  v8 = 0;
  v9 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  do
  {
    if (*(&v39.ru_utime.tv_sec + v8))
    {
      [v25 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_utime.tv_usec + v8)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_sec + v8)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_usec + v8)), @"instances num", 0), *v9}];
    }

    ++v9;
    v8 += 32;
  }

  while (v8 != 224);
  v24 = objc_opt_new();
  v10 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  for (i = 224; i != 448; i += 32)
  {
    if (*(&v39.ru_utime.tv_sec + i))
    {
      [v24 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_utime.tv_usec + i)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_sec + i)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_usec + i)), @"instances num", 0), *v10}];
    }

    ++v10;
  }

  v23 = objc_opt_new();
  v12 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  for (j = 448; j != 672; j += 32)
  {
    if (*(&v39.ru_utime.tv_sec + j))
    {
      [v23 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_utime.tv_usec + j)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_sec + j)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_usec + j)), @"instances num", 0), *v12}];
    }

    ++v12;
  }

  v14 = objc_opt_new();
  v15 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  for (k = 672; k != 896; k += 32)
  {
    if (*(&v39.ru_utime.tv_sec + k))
    {
      [v14 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_utime.tv_usec + k)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_sec + k)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v39.ru_stime.tv_usec + k)), @"instances num", 0), *v15}];
    }

    ++v15;
  }

  [v22 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", v25, @"index", v24, @"array", v23, @"index instanced", v14, @"array instanced", 0), @"GL draw command statistics"}];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(host_info_outCnt, 8);
  v17 = gProfilingFlags;
  if ((gProfilingFlags & 0x20) != 0)
  {
    getrusage(0, &v39);
    [v22 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", 1000000000 * v39.ru_utime.tv_sec + 1000 * v39.ru_utime.tv_usec), @"user time"}];
    [v22 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", 1000000000 * v39.ru_stime.tv_sec + 1000 * v39.ru_stime.tv_usec), @"system time"}];
    v17 = gProfilingFlags;
  }

  if ((v17 & 0x10) != 0)
  {
    host_info_outCnt[0] = 40;
    if (!host_statistics(GPUTools::Interpose::gHostPort, 2, &v39, host_info_outCnt))
    {
      v18 = DYCreateDictionaryFromVMStatistics();
      if (v18)
      {
        [v22 setObject:v18 forKey:@"vm statistics"];
        CFRelease(v18);
      }
    }

    [v22 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", vm_page_size), @"vm page size"}];
  }

  collect_global_profiling_data(a1, v22);
  collect_all_context_profiling_data(v22);
  v19 = mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v19 = __udivti3();
  }

  [v22 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v19), @"timestamp"}];
  return v22;
}

void sub_C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void ___ZL30copy_profiling_data_dictionaryP11ContextInfojy_block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) += *(a2 + 3696);
  *(*(a1[5] + 8) + 24) += *(a2 + 3704);
  *(*(a1[6] + 8) + 24) += *(a2 + 3712);
  *(a2 + 4632) = 0;
  *(a2 + 3696) = 0;
  *(a2 + 3712) = 0;
  *(a2 + 3704) = 0;
  v3 = a1[9];
  v2 = a1[10];
  v4 = a1[7];
  v5 = a1[8];
  v6 = v4[1];
  *v4 = vaddq_s64(*v4, *(a2 + 3736));
  v4[1] = vaddq_s64(v6, *(a2 + 3752));
  v7 = v5[1];
  *v5 = vaddq_s64(*v5, *(a2 + 3960));
  v5[1] = vaddq_s64(v7, *(a2 + 3976));
  v8 = v3[1];
  *v3 = vaddq_s64(*v3, *(a2 + 4184));
  v3[1] = vaddq_s64(v8, *(a2 + 4200));
  v9 = v2[1];
  *v2 = vaddq_s64(*v2, *(a2 + 4408));
  v2[1] = vaddq_s64(v9, *(a2 + 4424));
  v10 = v4[3];
  v4[2] = vaddq_s64(v4[2], *(a2 + 3768));
  v4[3] = vaddq_s64(v10, *(a2 + 3784));
  v11 = v5[3];
  v5[2] = vaddq_s64(v5[2], *(a2 + 3992));
  v5[3] = vaddq_s64(v11, *(a2 + 4008));
  v12 = v3[3];
  v3[2] = vaddq_s64(v3[2], *(a2 + 4216));
  v3[3] = vaddq_s64(v12, *(a2 + 4232));
  v13 = v2[3];
  v2[2] = vaddq_s64(v2[2], *(a2 + 4440));
  v2[3] = vaddq_s64(v13, *(a2 + 4456));
  v14 = v4[5];
  v4[4] = vaddq_s64(v4[4], *(a2 + 3800));
  v4[5] = vaddq_s64(v14, *(a2 + 3816));
  v15 = v5[5];
  v5[4] = vaddq_s64(v5[4], *(a2 + 4024));
  v5[5] = vaddq_s64(v15, *(a2 + 4040));
  v16 = v3[5];
  v3[4] = vaddq_s64(v3[4], *(a2 + 4248));
  v3[5] = vaddq_s64(v16, *(a2 + 4264));
  v17 = v2[5];
  v2[4] = vaddq_s64(v2[4], *(a2 + 4472));
  v2[5] = vaddq_s64(v17, *(a2 + 4488));
  v18 = v4[7];
  v4[6] = vaddq_s64(v4[6], *(a2 + 3832));
  v4[7] = vaddq_s64(v18, *(a2 + 3848));
  v19 = v5[7];
  v5[6] = vaddq_s64(v5[6], *(a2 + 4056));
  v5[7] = vaddq_s64(v19, *(a2 + 4072));
  v20 = v3[7];
  v3[6] = vaddq_s64(v3[6], *(a2 + 4280));
  v3[7] = vaddq_s64(v20, *(a2 + 4296));
  v21 = v2[7];
  v2[6] = vaddq_s64(v2[6], *(a2 + 4504));
  v2[7] = vaddq_s64(v21, *(a2 + 4520));
  v22 = v4[9];
  v4[8] = vaddq_s64(v4[8], *(a2 + 3864));
  v4[9] = vaddq_s64(v22, *(a2 + 3880));
  v23 = v5[9];
  v5[8] = vaddq_s64(v5[8], *(a2 + 4088));
  v5[9] = vaddq_s64(v23, *(a2 + 4104));
  v24 = v3[9];
  v3[8] = vaddq_s64(v3[8], *(a2 + 4312));
  v3[9] = vaddq_s64(v24, *(a2 + 4328));
  v25 = v2[9];
  v2[8] = vaddq_s64(v2[8], *(a2 + 4536));
  v2[9] = vaddq_s64(v25, *(a2 + 4552));
  v26 = v4[11];
  v4[10] = vaddq_s64(v4[10], *(a2 + 3896));
  v4[11] = vaddq_s64(v26, *(a2 + 3912));
  v27 = v5[11];
  v5[10] = vaddq_s64(v5[10], *(a2 + 4120));
  v5[11] = vaddq_s64(v27, *(a2 + 4136));
  v28 = v3[11];
  v3[10] = vaddq_s64(v3[10], *(a2 + 4344));
  v3[11] = vaddq_s64(v28, *(a2 + 4360));
  v29 = v2[11];
  v2[10] = vaddq_s64(v2[10], *(a2 + 4568));
  v2[11] = vaddq_s64(v29, *(a2 + 4584));
  v30 = v4[13];
  v4[12] = vaddq_s64(v4[12], *(a2 + 3928));
  v4[13] = vaddq_s64(v30, *(a2 + 3944));
  v31 = v5[13];
  v5[12] = vaddq_s64(v5[12], *(a2 + 4152));
  v5[13] = vaddq_s64(v31, *(a2 + 4168));
  v32 = v3[13];
  v3[12] = vaddq_s64(v3[12], *(a2 + 4376));
  v3[13] = vaddq_s64(v32, *(a2 + 4392));
  v33 = v2[13];
  v2[12] = vaddq_s64(v2[12], *(a2 + 4600));
  v2[13] = vaddq_s64(v33, *(a2 + 4616));
  bzero((a2 + 3736), 0x380uLL);
}

uint64_t std::__function::__func<HarvestResourceObject::$_0,std::allocator<HarvestResourceObject::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_20CF08;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<HarvestResourceObject::$_0,std::allocator<HarvestResourceObject::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = **(a1 + 8);
  if (result)
  {
    return destroy_internal_context(result);
  }

  return result;
}

ContextHarvester **std::unique_ptr<ContextHarvester>::~unique_ptr[abi:ne200100](ContextHarvester **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ContextHarvester::~ContextHarvester(v2);
    operator delete();
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

int64x2_t init_vertex_arrays()
{
  result = xmmword_206690;
  v1 = xmmword_2066A0;
  v2 = &dword_210A90;
  v3 = 8;
  v4 = vdupq_n_s64(7uLL);
  v5 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v4, v1)), *result.i8).u8[0])
    {
      *(v2 - 60) = -1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v1)), *&result).i8[2])
    {
      *(v2 - 30) = -1;
    }

    if (vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&result))).i32[1])
    {
      *v2 = -1;
      v2[30] = -1;
    }

    result = vaddq_s64(result, v5);
    v1 = vaddq_s64(v1, v5);
    v2 += 120;
    v3 -= 4;
  }

  while (v3);
  return result;
}

void sub_DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_E068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,std::string> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__construct_node_hash<std::pair<void const* const,std::string> const&>();
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_E6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E7B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::string> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__construct_node_hash<std::pair<unsigned long long const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void apply_draw_overrides(uint64_t a1, volatile int *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if ((a2 & 0x100) != 0)
  {
    GPUTools::ResourceUpdater::ApplyDrawOverrides(*(a1 + 3472));
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_3;
  }

  (*(v4 + 832))(*(a1 + 16), 3088, a1 + 3380);
  (*(v4 + 2008))(*(a1 + 16), 0, 0, 1, 1);
  v5 = (*(v4 + 1144))(*(a1 + 16), 3089);
  v6 = v5;
  if (!v5)
  {
    (*(v4 + 576))(*(a1 + 16), 3089);
  }

  *(a1 + 3396) = v6;
  if ((v2 & 0x100000) == 0)
  {
LABEL_4:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    if ((*(v4 + 1144))(*(a1 + 16), 3042))
    {
      (*(v4 + 504))(*(a1 + 16), 3042);
    }

    *(a1 + 3376) |= 1u;
    if ((v2 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_11:
  (*(v4 + 2680))(*(a1 + 16), vcvtd_n_f64_s32(*(a1 + 3368) - (kDYOverrideDefaultViewport[0] * *(a1 + 3368)), 1uLL), vcvtd_n_f64_s32(*(a1 + 3372) - (kDYOverrideDefaultViewport[1] * *(a1 + 3372)), 1uLL));
  if ((v2 & 0x200000) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  v7 = a1 + 4096;
  v8 = *(a1 + 40);
  GPUTools::DYLockUtils::Lock((v8 + 37), a2);
  *(a1 + 3648) = *(a1 + 3640);
  v80 = v8;
  if (v8[34] != v8[35])
  {
    goto LABEL_40;
  }

  v10 = *(a1 + 3408);
  v77 = *(a1 + 3416);
  if (v10 == v77)
  {
    goto LABEL_40;
  }

  do
  {
    v78 = v10;
    v11 = *v10;
    v12 = *(a1 + 32);
    v88 = a1;
    v89 = v12;
    v13 = v80[35] - v80[34];
    std::vector<unsigned int>::resize((v80 + 34), (v13 >> 2) + 4);
    (*(v12 + 784))(*(a1 + 16), 4, v80[34] + v13);
    v84 = xmmword_2066C0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v14 = *(a1 + 3456);
    v15 = *(v7 + 765);
    GPUTools::GL::SavePixelStoreUnpackState();
    v16 = *(a1 + 3456);
    v17 = *(v7 + 765);
    memset(v82, 0, sizeof(v82));
    v83 = 0;
    HIDWORD(v82[0]) = 1;
    GPUTools::GL::ApplyPixelStoreUnpackState();
    if (*(a1 + 3460) >= 2)
    {
      (*(v89 + 5136))(*(v88 + 16), 35052, 0);
    }

    v18 = &dword_20CFB8;
    v19 = 4;
    do
    {
      if (*(a1 + 3460) >= v18[3] && (v11 != 32879 || *(v18 - 2) != 34041))
      {
        (*(v89 + 40))(*(v88 + 16), v11, *(v80[34] + v13));
        (*(v89 + 2432))(*(v88 + 16), v11, 10241, v18[1]);
        (*(v89 + 2432))(*(v88 + 16), v11, 10240, 9728);
        v20 = *v18;
        if (v20 == 34041 && *(a1 + 3460) == 3)
        {
          v20 = 35056;
        }

        if (v11 > 34066)
        {
          if (v11 == 34067)
          {
            v30 = *(v18 - 2);
            v31 = *(v18 - 1);
            v32 = *(v18 - 2);
            (*(v89 + 2408))(*(v88 + 16), 34070, 0, v20, 2, 2, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34069, 0, v20, 2, 2, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34072, 0, v20, 2, 2, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34071, 0, v20, 2, 2, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34074, 0, v20, 2, 2, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34073, 0, v20, 2, 2, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34070, 1, v20, 1, 1, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34069, 1, v20, 1, 1, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34072, 1, v20, 1, 1, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34071, 1, v20, 1, 1, 0, v30, v31, v32);
            (*(v89 + 2408))(*(v88 + 16), 34074, 1, v20, 1, 1, 0, v30, v31, v32);
            LODWORD(v71) = v31;
            (*(v89 + 2408))(*(v88 + 16), 34073, 1, v20, 1, 1, 0, v30, v71, v32, v75);
          }

          else
          {
            if (v11 != 35866)
            {
LABEL_83:
              v63 = dy_abort();
              unapply_draw_overrides(v63);
              return;
            }

            v24 = *(v18 - 2);
            v25 = *(v18 - 1);
            (*(v89 + 3504))(*(v88 + 16), 35866, 0, v20, 2, 2, 2, 0, *(v18 - 1), 0);
            v26 = *(v18 - 2);
            HIDWORD(v66) = v24;
            LODWORD(v73) = v25;
            LODWORD(v66) = 1;
            (*(v89 + 3512))(*(v88 + 16), 35866, 0, 0, 0, 0, 2, 2, v66, v73, v26);
            HIDWORD(v67) = v24;
            LODWORD(v67) = 1;
            (*(v89 + 3512))(*(v88 + 16), 35866, 0, 0, 0, 1, 2, 2, v67, v25, v26);
            (*(v89 + 3504))(*(v88 + 16), 35866, 1, v20, 1, 1, 2, 0, __PAIR64__(v25, v24), 0);
            HIDWORD(v68) = v24;
            LODWORD(v68) = 1;
            (*(v89 + 3512))(*(v88 + 16), 35866, 1, 0, 0, 0, 1, 1, v68, v25, v26);
            HIDWORD(v69) = v24;
            LODWORD(v74) = v25;
            LODWORD(v69) = 1;
            (*(v89 + 3512))(*(v88 + 16), 35866, 1, 0, 0, 1, 1, 1, v69, v74, v26);
          }
        }

        else if (v11 == 3553)
        {
          v27 = *(v18 - 2);
          v28 = *(v18 - 1);
          v29 = *(v18 - 2);
          (*(v89 + 2408))(*(v88 + 16), 3553, 0, v20, 2, 2, 0, v27, v28, v29);
          LODWORD(v70) = v28;
          (*(v89 + 2408))(*(v88 + 16), 3553, 1, v20, 1, 1, 0, v27, v70, v29, v75);
        }

        else
        {
          if (v11 != 32879)
          {
            goto LABEL_83;
          }

          v21 = *(v18 - 2);
          v22 = *(v18 - 1);
          (*(v89 + 3504))(*(v88 + 16), 32879, 0, v20, 2, 2, 2, 0, *(v18 - 1), 0);
          v23 = *(v18 - 2);
          HIDWORD(v64) = v21;
          LODWORD(v72) = v22;
          LODWORD(v64) = 1;
          (*(v89 + 3512))(*(v88 + 16), 32879, 0, 0, 0, 0, 2, 2, v64, v72, v23);
          HIDWORD(v65) = v21;
          LODWORD(v65) = 1;
          (*(v89 + 3512))(*(v88 + 16), 32879, 0, 0, 0, 1, 2, 2, v65, v22, v23);
          (*(v89 + 3504))(*(v88 + 16), 32879, 1, v20, 1, 1, 1, 0, __PAIR64__(v22, v21), v23, v76);
        }
      }

      v13 += 4;
      v18 += 8;
      --v19;
    }

    while (v19);
    if (*(a1 + 3460) > 1)
    {
      (*(v89 + 5136))(*(v88 + 16), 35052, *(a1 + 2044));
    }

    v33 = *(a1 + 3456);
    v7 = a1 + 4096;
    v34 = *(a1 + 4861);
    GPUTools::GL::ApplyPixelStoreUnpackState();
    v10 = v78 + 1;
  }

  while (v78 + 1 != v77);
LABEL_40:
  if (*(a1 + 3444))
  {
    v35 = 0;
    v36 = 0;
    v79 = (a1 + 3640);
    while (1)
    {
      (*(v4 + 2736))(*(a1 + 16), (v35 + 33984));
      v37 = *(a1 + 3408);
      if (*(a1 + 3416) != v37)
      {
        break;
      }

LABEL_79:
      v35 = ++v36;
      if (*(a1 + 3444) <= v36)
      {
        goto LABEL_80;
      }
    }

    v38 = 0;
    while (2)
    {
      v39 = *(v37 + 4 * v38);
      if (v39 == 34067)
      {
        v40 = 34069;
      }

      else
      {
        v40 = v39;
      }

      LODWORD(v84) = 0;
      (*(v4 + 1000))(*(a1 + 16), v40, 0, 4096, &v84);
      if (v84)
      {
        LODWORD(v82[0]) = 0;
        (*(v4 + 1000))(*(a1 + 16), v40, 0, 4097, v82);
        if (LODWORD(v82[0]))
        {
          LODWORD(v88) = 0;
          (*(v4 + 1000))(*(a1 + 16), v40, 0, 4099, &v88);
          if (GPUTools::GL::IsCompressedFormat(v88, v41))
          {
            goto LABEL_50;
          }

          ImageUploadFormatInfo = GPUTools::GL::GetImageUploadFormatInfo(v88, 0, v42);
          v49 = v48;
          v50 = HIDWORD(ImageUploadFormatInfo);
          v43 = 1;
          if (v50 > 35055)
          {
            if ((v50 - 36166) >= 4 && (v50 - 36012) >= 2)
            {
              v51 = 35056;
              goto LABEL_70;
            }
          }

          else if ((v50 - 33189) >= 3 && (v50 - 6401) >= 2)
          {
            v51 = 34041;
LABEL_70:
            if (v50 != v51)
            {
              if (GPUTools::GL::IsIntegerFormat(v50, v48))
              {
                if (GPUTools::GL::IsSignedType(v49, v59))
                {
                  v43 = 2;
                }

                else
                {
                  v43 = 3;
                }
              }

              else
              {
LABEL_50:
                v43 = 0;
              }
            }
          }

          (*(v4 + 40))(*(a1 + 16), v39, *(v80[34] + ((16 * v38) | (4 * v43))));
          if (v43 == 1)
          {
            v81 = 0;
            if (*(a1 + 4860) == 1)
            {
              (*(v4 + 1016))(*(a1 + 16), v39, 34893, &v81);
              (*(v4 + 2432))(*(a1 + 16), v39, 34893, v81);
              (*(v4 + 1016))(*(a1 + 16), v39, 34892, &v81);
              (*(v4 + 2432))(*(a1 + 16), v39, 34892, v81);
            }
          }

          v44 = *(a1 + 3648);
          v45 = *(a1 + 3656);
          if (v44 >= v45)
          {
            v52 = *v79;
            v53 = v44 - *v79;
            v54 = v53 >> 3;
            v55 = (v53 >> 3) + 1;
            if (v55 >> 61)
            {
              std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
            }

            v56 = v45 - v52;
            if (v56 >> 2 > v55)
            {
              v55 = v56 >> 2;
            }

            v57 = v56 >= 0x7FFFFFFFFFFFFFF8;
            v58 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v57)
            {
              v58 = v55;
            }

            if (v58)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v79, v58);
            }

            v60 = (8 * v54);
            *v60 = v35;
            v60[1] = v39;
            v46 = 8 * v54 + 8;
            v61 = &v60[-2 * (v53 >> 3)];
            memcpy(v61, v52, v53);
            v62 = *(a1 + 3640);
            *(a1 + 3640) = v61;
            *(a1 + 3648) = v46;
            *(a1 + 3656) = 0;
            if (v62)
            {
              operator delete(v62);
            }
          }

          else
          {
            *v44 = v35;
            *(v44 + 1) = v39;
            v46 = (v44 + 8);
          }

          *(a1 + 3648) = v46;
        }
      }

      ++v38;
      v37 = *(a1 + 3408);
      if (v38 >= (*(a1 + 3416) - v37) >> 2)
      {
        goto LABEL_79;
      }

      continue;
    }
  }

LABEL_80:
  GPUTools::DYLockUtils::Unlock((*(a1 + 40) + 296), v9);
}

void unapply_draw_overrides(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if ((a2 & 4) != 0 && ((*(v4 + 2008))(*(a1 + 16), *(a1 + 3380), *(a1 + 3384), *(a1 + 3388), *(a1 + 3392)), !*(a1 + 3396)))
  {
    (*(v4 + 504))(*(a1 + 16), 3089);
    if ((a2 & 0x100000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a2 & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  (*(v4 + 2680))(*(a1 + 16), *(a1 + 3360), *(a1 + 3364), *(a1 + 3368), *(a1 + 3372));
  (*(v4 + 2008))(*(a1 + 16), *(a1 + 3380), *(a1 + 3384), *(a1 + 3388), *(a1 + 3392));
  if (!*(a1 + 3396))
  {
    (*(v4 + 504))(*(a1 + 16), 3089);
  }

LABEL_7:
  if (a2 & 0x200000) != 0 && (*(a1 + 3376))
  {
    (*(v4 + 576))(*(a1 + 16), 3042);
  }

  if ((a2 & 0x20) != 0)
  {
    v5 = *(a1 + 3640);
    v6 = *(a1 + 3648);
    if (v5 != v6)
    {
      v7 = a1 + 2080;
      do
      {
        (*(v4 + 2736))(*(a1 + 16), *v5 + 33984);
        v8 = v5[1];
        if (v8 > 34066)
        {
          if (v8 == 34067)
          {
            (*(v4 + 40))(*(a1 + 16), 34067, *(v7 + 40 * *v5 + 16));
          }

          else
          {
            if (v8 != 35866)
            {
LABEL_28:
              v12 = v5[1];
              v10 = dy_abort();
              std::vector<unsigned int>::resize(v10, v11);
              return;
            }

            (*(v4 + 40))(*(a1 + 16), 35866, *(v7 + 40 * *v5 + 24));
          }
        }

        else if (v8 == 3553)
        {
          (*(v4 + 40))(*(a1 + 16), 3553, *(v7 + 40 * *v5 + 4));
        }

        else
        {
          if (v8 != 32879)
          {
            goto LABEL_28;
          }

          (*(v4 + 40))(*(a1 + 16), 32879, *(v7 + 40 * *v5 + 12));
        }

        v5 += 2;
      }

      while (v5 != v6);
    }

    (*(v4 + 2736))(*(a1 + 16), *(a1 + 2072));
  }

  if ((a2 & 0x100) != 0)
  {
    v9 = *(a1 + 3472);

    GPUTools::ResourceUpdater::RemoveDrawOverrides(v9);
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ContextHarvester::ContextHarvester(ContextHarvester *this, ContextInfo *a2, GPUTools::FB::Stream *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v4 = *(a2 + 4);
  *(this + 3) = a2;
  *(this + 4) = v4;
  *(this + 5) = a3;
  v5 = *(a2 + 5);
  *(this + 4) = 0u;
  *(this + 6) = v5 + 104;
  *(this + 7) = v5 + 64;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 13) = 0x100000001;
  v6 = (this + 104);
  *(this + 37) = 0;
  *(this + 11) = xmmword_2066C0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 104) = 0;
  *(this + 212) = xmmword_2066C0;
  *(this + 236) = 0;
  *(this + 228) = 0;
  *(this + 122) = 0;
  *(this + 31) = 35633;
  *(this + 256) = 0;
  *(this + 260) = 35632;
  *(this + 268) = 0;
  *(this + 34) = 36313;
  *(this + 280) = 0;
  *(this + 284) = 36488;
  *(this + 292) = 0;
  *(this + 37) = 36487;
  *(this + 304) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  GPUTools::VMBuffer::VMBuffer((this + 536), 0, 0);
  *(this + 591) = 1;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  clear_errors(*(this + 2));
  wrapper_cache_program_parameter(*(this + 2), v7, v8, v9);
  v15 = 1;
  [**(this + 2) setParameter:1501 to:&v15];
  *(this + 590) = GPUTools::GL::ShouldUseGLIReadTextureData();
  update_context_state_cache(*(this + 2));
  if (*(this + 68) <= 0x10uLL)
  {
    __assert_rtn("void GPUTools::VMBuffer::set_alignment(size_t)", &unk_204462, 0, "alignment < _size");
  }

  v10 = *(this + 67);
  v11 = vandq_s8(vaddq_s64(vdupq_n_s64(v10 + 15), *(this + 35)), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
  *(this + 72) = 16;
  *(this + 35) = vsubq_s64(v11, vdupq_n_s64(v10));
  v12 = *(this + 2);
  if (*(v12 + 3460) < 2)
  {
    *v6 = 0x100000001;
    if (*(v12 + 4862) != 1)
    {
LABEL_4:
      *(this + 28) = 0;
      if (*(v12 + 3460) >= 3)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36063, v6);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34852, this + 108);
    v12 = *(this + 2);
    if (*(v12 + 4862) != 1)
    {
      goto LABEL_4;
    }
  }

  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35979, this + 112);
  v12 = *(this + 2);
  if (*(v12 + 3460) >= 3)
  {
LABEL_5:
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35375, this + 116);
    v12 = *(this + 2);
    v13 = *(v12 + 3456);
    v14 = *(this + 4);
    if (!v13)
    {
      goto LABEL_6;
    }

LABEL_11:
    *(this + 16) = *(v14 + 6144);
    *(this + 15) = 0x34800000346;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        *(this + 256) = 1;
        *(this + 268) = 1;
        *(this + 280) = 1;
        *(this + 292) = 0;
        *(this + 304) = 0;
        if (!*(this + 5))
        {
          return;
        }

        goto LABEL_23;
      }

      if (v13 != 4)
      {
LABEL_14:
        if (!*(this + 5))
        {
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v13 == 1)
      {
        *(this + 256) = 0;
        *(this + 268) = 0;
        *(this + 280) = 0;
        *(this + 292) = 0;
        *(this + 304) = 0;
        if (!*(this + 5))
        {
          return;
        }

        goto LABEL_23;
      }

      if (v13 != 2)
      {
        goto LABEL_14;
      }
    }

    *(this + 256) = 1;
    *(this + 268) = 1;
    *(this + 280) = 0;
    *(this + 292) = 0;
    *(this + 304) = 0;
    if (!*(this + 5))
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_10:
  *(this + 29) = 0;
  v13 = *(v12 + 3456);
  v14 = *(this + 4);
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(this + 16) = *(v14 + 4400);
  *(this + 15) = 0xD100000015;
  *(this + 256) = 1;
  *(this + 268) = 1;
  *(this + 280) = *(v12 + 4845);
  *(this + 292) = 0;
  *(this + 304) = 0;
  if (!*(this + 5))
  {
    return;
  }

LABEL_23:
  ContextHarvester::encode(this, 4294955024, 0, "Ciui", *v12, 7, 6);
}

void sub_10228(_Unwind_Exception *a1)
{
  GPUTools::NameTargetTupleArray::reset((v1 + 520));
  GPUTools::NameTargetTupleArray::reset((v1 + 504));
  GPUTools::NameTargetTupleArray::reset((v1 + 488));
  GPUTools::NameTargetTupleArray::reset((v1 + 472));
  GPUTools::NameTargetTupleArray::reset((v1 + 456));
  GPUTools::NameTargetTupleArray::reset((v1 + 440));
  GPUTools::NameTargetTupleArray::reset((v1 + 424));
  GPUTools::NameTargetTupleArray::reset((v1 + 408));
  GPUTools::NameTargetTupleArray::reset((v1 + 392));
  GPUTools::NameTargetTupleArray::reset((v1 + 376));
  GPUTools::NameTargetTupleArray::reset((v1 + 360));
  GPUTools::NameTargetTupleArray::reset((v1 + 344));
  GPUTools::NameTargetTupleArray::reset((v1 + 328));
  GPUTools::NameTargetTupleArray::reset(v3);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void ContextHarvester::encode(ContextHarvester *this, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  va_start(va, a4);
  va_copy(v10, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v9, va);
  v5 = *(this + 2);
  GPUTools::FB::Encode();
  v6 = *(this + 5);
  v7 = *(this + 2);
  while (atomic_exchange((v6 + 56), 1u) == 1)
  {
      ;
    }
  }

  v8 = **(v7 + 120);
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v6 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v9);
}

void sub_103C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  atomic_store(0, (v2 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_103E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ContextHarvester::~ContextHarvester(ContextHarvester *this)
{
  clear_errors(*(this + 2));
  wrapper_cache_program_parameter(*(this + 2), v2, v3, v4);
  v8 = 0;
  [**(this + 2) setParameter:1501 to:&v8];
  GPUTools::VMBuffer::~VMBuffer((this + 536));
  GPUTools::NameTargetTupleArray::reset((this + 520));
  GPUTools::NameTargetTupleArray::reset((this + 504));
  GPUTools::NameTargetTupleArray::reset((this + 488));
  GPUTools::NameTargetTupleArray::reset((this + 472));
  GPUTools::NameTargetTupleArray::reset((this + 456));
  GPUTools::NameTargetTupleArray::reset((this + 440));
  GPUTools::NameTargetTupleArray::reset((this + 424));
  GPUTools::NameTargetTupleArray::reset((this + 408));
  GPUTools::NameTargetTupleArray::reset((this + 392));
  GPUTools::NameTargetTupleArray::reset((this + 376));
  GPUTools::NameTargetTupleArray::reset((this + 360));
  GPUTools::NameTargetTupleArray::reset((this + 344));
  GPUTools::NameTargetTupleArray::reset((this + 328));
  GPUTools::NameTargetTupleArray::reset((this + 312));
  v5 = *(this + 10);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

void ContextHarvester::HarvestObjectNames(uint64_t a1, int a2, void **a3)
{
  if (a2 <= 6)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        p_reserved1 = (&stru_600 + 73);
      }

      else if (a2 == 5)
      {
        p_reserved1 = (&stru_600 + 72);
      }

      else
      {
        p_reserved1 = (&stru_600 + 74);
      }

LABEL_28:
      v7 = *(a1 + 16);

      GPUTools::NameTargetTupleArray::querySpecificObjectList(v7, a3, p_reserved1);
      return;
    }

    switch(a2)
    {
      case 1:
        p_reserved1 = (&stru_600 + 64);
        goto LABEL_28;
      case 2:
        p_reserved1 = (&stru_600 + 69);
        goto LABEL_28;
      case 3:
        p_reserved1 = &stru_600.reserved1;
        goto LABEL_28;
    }

LABEL_31:
    v8 = dy_abort();
    __clang_call_terminate(v8);
  }

  if (a2 > 9)
  {
    switch(a2)
    {
      case 10:
        p_reserved1 = &stru_650;
        goto LABEL_28;
      case 11:
        p_reserved1 = (&stru_600 + 75);
        goto LABEL_28;
      case 12:
        p_reserved1 = (&stru_650 + 1);
        goto LABEL_28;
    }

    goto LABEL_31;
  }

  if ((a2 - 7) >= 2)
  {
    if (a2 == 9)
    {
      p_reserved1 = (&stru_600 + 70);
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v9[0] = 0;
  v9[1] = 0;
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(a1 + 16), v9, (&stru_600.flags + 3));
  if (a2 == 7)
  {
    v6 = 35648;
  }

  else
  {
    v6 = 35656;
  }

  GPUTools::NameTargetTupleArray::split(v9, v6, a3, 0);
  GPUTools::NameTargetTupleArray::reset(v9);
}

void sub_10694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::NameTargetTupleArray::reset(va);
  _Unwind_Resume(a1);
}

uint64_t ContextHarvester::HarvestBufferObject(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 1;
  *(a1 + 8) = a5;
  ContextHarvester::harvestBufferObject(a1, (&loc_888C + 6), a2, a3, a4, 0);
  bound_buffer = wrapper_cache_get_bound_buffer(*(a1 + 16), 34962);
  v8 = GPUTools::GL::DYGetBufferBindingEnum((&loc_888C + 6), v7);
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *(v9 + 5136);
  v13 = 0;
  result = (*(v9 + 832))(*(v10 + 16), v8, &v13);
  if (v13 != bound_buffer)
  {
    return v11(*(*(a1 + 24) + 16), 34962, bound_buffer);
  }

  return result;
}

void ContextHarvester::harvestBufferObject(uint64_t **this, GPUTools::GL *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v73 = a3;
  if (!a2)
  {
    ContextHarvester::harvestBufferObject();
  }

  v6 = a4;
  if (a4 < 0)
  {
    ContextHarvester::harvestBufferObject();
  }

  if (a5 < 0)
  {
    ContextHarvester::harvestBufferObject();
  }

  if (!a3)
  {
    ContextHarvester::harvestBufferObject();
  }

  v72 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupBuffer, 65030, a3, 65030, 0);
  v11 = GPUTools::GL::DYGetBufferBindingEnum(a2, v10);
  v13 = this[3];
  v12 = this[4];
  v14 = v12[642];
  v15 = v73;
  LODWORD(v68[0]) = 0;
  (v12[104])(v13[2], v11, v68);
  if (LODWORD(v68[0]) != v15)
  {
    v14(this[3][2], a2, v15);
  }

  ContextHarvester::encode(this, 201, 0, "Ci@1ui", *this[2], 1, &v73);
  ContextHarvester::encode(this, 12, 128, "Ceui", *this[2], a2, v73);
  ContextHarvester::harvestObjectLabel(this, 0x9151u, v73);
  if (*(this[2] + 865) < 3)
  {
    LODWORD(v68[0]) = 0;
    (this[4][651])(this[3][2], a2, 34660, v68);
    v16 = SLODWORD(v68[0]);
  }

  else
  {
    v68[0] = 0;
    (this[4][799])(this[3][2], a2, 34660, v68);
    v16 = v68[0];
  }

  v71 = 0;
  v70 = 0;
  (this[4][651])(this[3][2], a2, 34661, &v71 + 4);
  (this[4][651])(this[3][2], a2, 35003, &v71);
  (this[4][651])(this[3][2], a2, 35004, &v70);
  if (*(this[2] + 4849) == 1)
  {
    LODWORD(v68[0]) = 0;
    LODWORD(v69) = 0;
    (this[4][651])(this[3][2], a2, 35346, v68);
    (this[4][651])(this[3][2], a2, 35347, &v69);
    ContextHarvester::encodeCommand(this, 0x1Eu, 3u, v22, v23, 529413, a2, 529413, 35346, 1053700, LODWORD(v68[0]));
    ContextHarvester::encodeCommand(this, 0x1Eu, 3u, v24, v25, 529413, a2, 529413, 35347, 1053700, v69);
  }

  if (!v16)
  {
    goto LABEL_65;
  }

  if (!v70)
  {
    v28 = 0;
    if (v16 >= v6)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v26 = this[2];
  if (*(v26 + 4850))
  {
    v27 = 37152;
  }

  else
  {
    v27 = 34660;
  }

  if (*(v26 + 865) < 3)
  {
    LODWORD(v68[0]) = 0;
    (this[4][651])(this[3][2], a2, v27, v68);
    v28 = SLODWORD(v68[0]);
    if (v16 >= v6)
    {
      goto LABEL_26;
    }

LABEL_21:
    v6 = v16;
    if (!v70)
    {
LABEL_27:
      v69 = 0;
      v30 = this[2];
      if (*(v30 + 4844) == 1)
      {
        v31 = (this[4][649])(this[3][2], a2, 35000);
      }

      else
      {
        v36 = v30[4];
        v68[0] = this[2];
        v68[1] = v36;
        v37 = *(v30 + 864);
        BufferSize = GPUTools::GL::GetBufferSize();
        v31 = (this[4][795])(this[3][2], a2, 0, BufferSize, 1);
      }

      v29 = v31;
      v69 = v31;
LABEL_35:
      if (!v29)
      {
        __assert_rtn("void ContextHarvester::harvestBufferObject(GLenum, GLuint, intptr_t, intptr_t, BOOL)", &unk_204462, 0, "mapPointer");
      }

      v39 = this[1];
      v40 = this[2];
      v41 = *(this + 591);
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      v46 = this[2];
      v49 = *v46;
      v47 = (v46 + 15);
      v48 = v49;
      if (v6 < 1)
      {
        GPUTools::FB::Encode(v47, 29, 0, "CelUe", v42, v43, v44, v45, v48);
      }

      else
      {
        GPUTools::FB::Encode(v47, 31, 0, "CellU", v42, v43, v44, v45, v48);
      }

      v50 = this[5];
      v51 = this[2];
      while (atomic_exchange(v50 + 14, 1u) == 1)
      {
          ;
        }
      }

      v52 = *v51[15];
      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v50 + 14);
      if (!v70)
      {
        (this[4][650])(this[3][2], a2);
      }

      if (!v70)
      {
        goto LABEL_65;
      }

LABEL_51:
      LODWORD(v69) = 0;
      if (*(this[2] + 4850) == 1)
      {
        (this[4][651])(this[3][2], a2, 37151, &v69);
        v59 = v69 < 4;
        v60 = this[2];
        if (v28 != v16)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v59 = 1;
        v60 = this[2];
        if (v28 != v16)
        {
          goto LABEL_57;
        }
      }

      if (v59)
      {
        GPUTools::FB::Encode((v60 + 15), 363, 0, "Cee", v18, v53, v54, v55, *v60);
LABEL_61:
        v65 = this[5];
        v66 = this[2];
        while (atomic_exchange(v65 + 14, 1u) == 1)
        {
            ;
          }
        }

        v67 = *v66[15];
        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v65 + 14);
        goto LABEL_65;
      }

LABEL_57:
      if (*(v60 + 865) < 3)
      {
        LODWORD(v68[0]) = 0;
        (this[4][651])(this[3][2], a2, 37153, v68);
      }

      else
      {
        v68[0] = 0;
        (this[4][799])(this[3][2], a2, 37153, v68);
      }

      GPUTools::FB::Encode((this[2] + 15), 865, 0, "Celle", v61, v62, v63, v64, *this[2]);
      goto LABEL_61;
    }

    goto LABEL_22;
  }

  v68[0] = 0;
  (this[4][799])(this[3][2], a2, v27, v68);
  v28 = v68[0];
  if (v16 < v6)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (!v70)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v71 - 35003) <= 0xFFFFFFFD && v28 == v16)
  {
    v69 = 0;
    (this[4][652])(this[3][2], a2, 35005, &v69);
    v29 = v69;
    goto LABEL_35;
  }

  if (a6)
  {
    std::vector<unsigned int>::push_back[abi:ne200100]((this[2] + 9), &v73);
  }

  v32 = this[2];
  v35 = *v32;
  v33 = (v32 + 15);
  v34 = v35;
  if (v6 < 1)
  {
    GPUTools::FB::Encode(v33, 29, 0, "Celte", v18, v19, v20, v21, v34);
  }

  else
  {
    GPUTools::FB::Encode(v33, 31, 0, "Cellt", v18, v19, v20, v21, v34);
  }

  v56 = this[5];
  v57 = this[2];
  while (atomic_exchange(v56 + 14, 1u) == 1)
  {
      ;
    }
  }

  v58 = *v57[15];
  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v56 + 14);
  if (v70)
  {
    goto LABEL_51;
  }

LABEL_65:
  ContextHarvester::encodeCommand(v72, 0xFFFFD008, 0, v17, v18);
}

void sub_10F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  atomic_store(0, (v17 + 56));
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}