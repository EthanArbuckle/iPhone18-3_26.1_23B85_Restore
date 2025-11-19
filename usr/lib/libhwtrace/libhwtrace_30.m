uint64_t sub_298C6F834@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  result = IOConnectCallMethod(*(a1 + 12), 2u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    v4 = result;
    std::generic_category();
    v5 = 0;
    v19[0] = "AppleProcessorTrace.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "virtual Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::start()";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "IOConnectCallMethod Start failed";
    v30 = 770;
    v31[0] = v29;
    v31[2] = " (err=";
    v6 = v4;
    v32 = 770;
    v7 = v45;
    LODWORD(__p) = 3159603;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v33[0] = v31;
    v33[2] = &__dst;
    v34 = 1026;
    *&v35 = v33;
    *&v36 = ") ";
    LOWORD(v37) = 770;
    if (mach_error_string(v4))
    {
      v11 = mach_error_string(v4);
      if (*v11)
      {
LABEL_13:
        *&v38 = &v35;
        *&v39 = v11;
        LOWORD(v40) = 770;
        v12 = 2;
        v13 = &v38;
LABEL_14:
        v41[0] = v13;
        v41[1] = v10;
        v41[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v12 = v37;
    if (v37)
    {
      if (v37 != 1)
      {
        v10 = *(&v38 + 1);
        v13 = &v38;
        if (BYTE1(v40) == 1)
        {
          v13 = v38;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v41[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v42 = v12;
    v43 = v14;
    sub_298B996A4(v41, &v44);
    operator new();
  }

  *a2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C6FC68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  result = IOConnectCallMethod(*(a1 + 12), 3u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    v4 = result;
    std::generic_category();
    v5 = 0;
    v19[0] = "AppleProcessorTrace.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "virtual Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::pause()";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "IOConnectCallMethod Pause failed";
    v30 = 770;
    v31[0] = v29;
    v31[2] = " (err=";
    v6 = v4;
    v32 = 770;
    v7 = v45;
    LODWORD(__p) = 3225395;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v33[0] = v31;
    v33[2] = &__dst;
    v34 = 1026;
    *&v35 = v33;
    *&v36 = ") ";
    LOWORD(v37) = 770;
    if (mach_error_string(v4))
    {
      v11 = mach_error_string(v4);
      if (*v11)
      {
LABEL_13:
        *&v38 = &v35;
        *&v39 = v11;
        LOWORD(v40) = 770;
        v12 = 2;
        v13 = &v38;
LABEL_14:
        v41[0] = v13;
        v41[1] = v10;
        v41[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v12 = v37;
    if (v37)
    {
      if (v37 != 1)
      {
        v10 = *(&v38 + 1);
        v13 = &v38;
        if (BYTE1(v40) == 1)
        {
          v13 = v38;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v41[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v42 = v12;
    v43 = v14;
    sub_298B996A4(v41, &v44);
    operator new();
  }

  *a2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C7009C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  result = IOConnectCallMethod(*(a1 + 12), 4u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    v4 = result;
    std::generic_category();
    v5 = 0;
    v19[0] = "AppleProcessorTrace.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "virtual Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::resume()";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "IOConnectCallMethod Resume failed";
    v30 = 770;
    v31[0] = v29;
    v31[2] = " (err=";
    v6 = v4;
    v32 = 770;
    v7 = v45;
    LODWORD(__p) = 3160115;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v33[0] = v31;
    v33[2] = &__dst;
    v34 = 1026;
    *&v35 = v33;
    *&v36 = ") ";
    LOWORD(v37) = 770;
    if (mach_error_string(v4))
    {
      v11 = mach_error_string(v4);
      if (*v11)
      {
LABEL_13:
        *&v38 = &v35;
        *&v39 = v11;
        LOWORD(v40) = 770;
        v12 = 2;
        v13 = &v38;
LABEL_14:
        v41[0] = v13;
        v41[1] = v10;
        v41[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v12 = v37;
    if (v37)
    {
      if (v37 != 1)
      {
        v10 = *(&v38 + 1);
        v13 = &v38;
        if (BYTE1(v40) == 1)
        {
          v13 = v38;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v41[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v42 = v12;
    v43 = v14;
    sub_298B996A4(v41, &v44);
    operator new();
  }

  *a2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C704D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v48[23] = *MEMORY[0x29EDCA608];
  v4 = IOConnectCallMethod(*(a1 + 12), 5u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v4)
  {
    v5 = v4;
    std::generic_category();
    v6 = 0;
    v22[0] = "AppleProcessorTrace.cpp";
    v22[2] = ":";
    v23 = 771;
    v21 = 3;
    v24[0] = v22;
    v24[2] = &__p;
    v25 = 1026;
    v26[0] = v24;
    v26[2] = ": ";
    v27 = 770;
    v28[0] = v26;
    v28[2] = "virtual Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::stop()";
    v29 = 770;
    v30[0] = v28;
    v30[2] = ": ";
    v31 = 770;
    v32[0] = v30;
    v32[2] = "IOConnectCallMethod Stop failed";
    v33 = 770;
    v34[0] = v32;
    v34[2] = " (err=";
    v7 = v5;
    v35 = 770;
    v8 = v48;
    LODWORD(__p) = 3749939;
    do
    {
      *--v8 = a0123456789abcd_1[v7 & 0xF];
      ++v6;
      v9 = v7 >= 0x10;
      v7 >>= 4;
    }

    while (v9);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v19 = v6;
    if (v6)
    {
      memcpy(&__dst, v8, v6);
    }

    *(&__dst + v6) = 0;
    v36[0] = v34;
    v36[2] = &__dst;
    v37 = 1026;
    *&v38 = v36;
    *&v39 = ") ";
    LOWORD(v40) = 770;
    if (mach_error_string(v5))
    {
      v13 = mach_error_string(v5);
      if (*v13)
      {
LABEL_17:
        *&v41 = &v38;
        *&v42 = v13;
        LOWORD(v43) = 770;
        v14 = 2;
        v15 = &v41;
LABEL_18:
        v44[0] = v15;
        v44[1] = v12;
        v44[2] = "\n";
        v16 = 3;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_17;
      }
    }

    v41 = v38;
    v42 = v39;
    v43 = v40;
    v14 = v40;
    if (v40)
    {
      if (v40 != 1)
      {
        v12 = *(&v41 + 1);
        v15 = &v41;
        if (BYTE1(v43) == 1)
        {
          v15 = v41;
        }

        else
        {
          v14 = 2;
        }

        goto LABEL_18;
      }

      v44[0] = "\n";
      v16 = 1;
      v14 = 3;
    }

    else
    {
      v16 = 1;
    }

LABEL_19:
    v45 = v14;
    v46 = v16;
    sub_298B996A4(v44, &v47);
    operator new();
  }

  std::mutex::lock((a1 + 40));
  *(a1 + 152) = 1;
  if (*(a1 + 144))
  {
    std::condition_variable::notify_one(*(*(*(a1 + 112) + ((*(a1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 136) & 0x1FFLL)));
  }

  if (*(a1 + 176) == 1)
  {
    v10 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_298C7099C;
    block[3] = &unk_29EEB69B0;
    block[4] = a1;
    dispatch_async(v10, block);
  }

  *a2 = 0;
  std::mutex::unlock((a1 + 40));
  v11 = *MEMORY[0x29EDCA608];
}

void sub_298C7099C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 308);
  if (!v2)
  {
    v3 = 0;
    std::mutex::lock((v1 + 184));
    v4 = *(v1 + 272);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = task_resume2(v2);
  *(v1 + 308) = 0;
  std::mutex::lock((v1 + 184));
  v4 = *(v1 + 272);
  if (v4)
  {
LABEL_3:
    v5 = v3;
    v6 = 1;
    (*(*v4 + 48))(v4, &v6, &v5);
  }

LABEL_4:
  std::mutex::unlock((v1 + 184));
}

uint64_t sub_298C70A3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  result = IOConnectCallMethod(*(a1 + 12), 6u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    v4 = result;
    std::generic_category();
    v5 = 0;
    v19[0] = "AppleProcessorTrace.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "virtual Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::unconfigure()";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "IOConnectCallMethod Unconfigure failed";
    v30 = 770;
    v31[0] = v29;
    v31[2] = " (err=";
    v6 = v4;
    v32 = 770;
    v7 = v45;
    LODWORD(__p) = 3289396;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v33[0] = v31;
    v33[2] = &__dst;
    v34 = 1026;
    *&v35 = v33;
    *&v36 = ") ";
    LOWORD(v37) = 770;
    if (mach_error_string(v4))
    {
      v11 = mach_error_string(v4);
      if (*v11)
      {
LABEL_13:
        *&v38 = &v35;
        *&v39 = v11;
        LOWORD(v40) = 770;
        v12 = 2;
        v13 = &v38;
LABEL_14:
        v41[0] = v13;
        v41[1] = v10;
        v41[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v12 = v37;
    if (v37)
    {
      if (v37 != 1)
      {
        v10 = *(&v38 + 1);
        v13 = &v38;
        if (BYTE1(v40) == 1)
        {
          v13 = v38;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v41[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v42 = v12;
    v43 = v14;
    sub_298B996A4(v41, &v44);
    operator new();
  }

  *a2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C70E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 1;
  v64[0] = 0;
  v62 = 0;
  v4 = MEMORY[0x29EDCA6B0];
  v5 = MEMORY[0x29C294030](*(a1 + 12), 0, *MEMORY[0x29EDCA6B0], v64, &v62, 4097);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v68[0] = "AppleProcessorTrace.cpp";
    v69 = ":";
    v70 = 771;
    HIBYTE(v91) = 3;
    LODWORD(v89) = 3617589;
    v71[0] = v68;
    v72 = &v89;
    v73 = 1026;
    v74[0] = v71;
    v75 = ": ";
    v76 = 770;
    v77[0] = v74;
    v78 = "Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::initCarveout()";
    v79 = 770;
    v80[0] = v77;
    v81 = ": ";
    v82 = 770;
    v83[0] = v80;
    v84 = "IOConnectMapMemory TraceBuffer failed";
    v85 = 770;
    v88 = 770;
    v8 = v5;
    v9 = &v106 + 1;
    v86[0] = v83;
    v87 = " (err=";
    do
    {
      *--v9 = a0123456789abcd_1[v8 & 0xF];
      ++v7;
      v10 = v8 >= 0x10;
      v8 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v7 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v7 > 0x16)
      {
        operator new();
      }

      v103 = v7;
      if (v7)
      {
        memcpy(&__dst, v9, v7);
      }

      *(&__dst + v7) = 0;
      *&v93 = v86;
      *&v94 = &__dst;
      LOWORD(v95) = 1026;
      *&v96 = &v93;
      *&v97 = ") ";
      LOWORD(v98) = 770;
      if (mach_error_string(v6))
      {
        v13 = mach_error_string(v6);
        if (*v13)
        {
LABEL_13:
          *&v99 = &v96;
          *&v100 = v13;
          LOWORD(v101) = 770;
          v14 = 2;
          v15 = &v99;
LABEL_14:
          v110 = v15;
          v111 = v12;
          v112 = "\n";
          v16 = 3;
          goto LABEL_15;
        }
      }

      else
      {
        v13 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_13;
        }
      }

      v99 = v96;
      v100 = v97;
      v101 = v98;
      v14 = v98;
      if (v98)
      {
        if (v98 != 1)
        {
          v12 = *(&v99 + 1);
          v15 = &v99;
          if (BYTE1(v101) == 1)
          {
            v15 = v99;
          }

          else
          {
            v14 = 2;
          }

          goto LABEL_14;
        }

        v110 = "\n";
        v16 = 1;
        v14 = 3;
      }

      else
      {
        v16 = 1;
      }

LABEL_15:
      LOBYTE(v113) = v14;
      HIBYTE(v113) = v16;
      sub_298B996A4(&v110, __p);
      operator new();
    }

LABEL_115:
    sub_298ADDDA0();
  }

  v11 = v62;
  *(a1 + 16) = v64[0];
  *(a1 + 24) = v11;
  v61 = 0;
  v64[0] = 0;
  v62 = 0;
  v17 = MEMORY[0x29C294030](*(a1 + 12), 1, *v4, v64, &v62, 1);
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v68[0] = "AppleProcessorTrace.cpp";
    v69 = ":";
    v70 = 771;
    HIBYTE(v91) = 3;
    LODWORD(v89) = 3159605;
    v71[0] = v68;
    v72 = &v89;
    v73 = 1026;
    v74[0] = v71;
    v75 = ": ";
    v76 = 770;
    v77[0] = v74;
    v78 = "Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::initChunkQueue()";
    v79 = 770;
    v80[0] = v77;
    v81 = ": ";
    v82 = 770;
    v83[0] = v80;
    v84 = "IOConnectMapMemory DirtyChunkQueue failed";
    v85 = 770;
    v88 = 770;
    v20 = v17;
    v21 = &v106 + 1;
    v86[0] = v83;
    v87 = " (err=";
    do
    {
      *--v21 = a0123456789abcd_1[v20 & 0xF];
      ++v19;
      v10 = v20 >= 0x10;
      v20 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_115;
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    v103 = v19;
    if (v19)
    {
      memcpy(&__dst, v21, v19);
    }

    *(&__dst + v19) = 0;
    *&v93 = v86;
    *&v94 = &__dst;
    LOWORD(v95) = 1026;
    *&v96 = &v93;
    *&v97 = ") ";
    LOWORD(v98) = 770;
    if (mach_error_string(v18))
    {
      v23 = mach_error_string(v18);
      if (*v23)
      {
LABEL_32:
        *&v99 = &v96;
        *&v100 = v23;
        LOWORD(v101) = 770;
        v24 = 2;
        v25 = &v99;
LABEL_33:
        v110 = v25;
        v111 = v22;
        v112 = "\n";
        v26 = 3;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_32;
      }
    }

    v99 = v96;
    v100 = v97;
    v101 = v98;
    v24 = v98;
    if (v98)
    {
      if (v98 != 1)
      {
        v22 = *(&v99 + 1);
        v25 = &v99;
        if (BYTE1(v101) == 1)
        {
          v25 = v99;
        }

        else
        {
          v24 = 2;
        }

        goto LABEL_33;
      }

      v110 = "\n";
      v26 = 1;
      v24 = 3;
    }

    else
    {
      v26 = 1;
    }

LABEL_34:
    LOBYTE(v113) = v24;
    HIBYTE(v113) = v26;
    sub_298B996A4(&v110, __p);
    operator new();
  }

  *(a1 + 32) = v64[0];
  v60 = 0;
  NotificationPort = IODataQueueAllocateNotificationPort();
  *(a1 + 156) = NotificationPort;
  v28 = MEMORY[0x29C294050](*(a1 + 12), 1, NotificationPort, 0);
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v68[0] = "AppleProcessorTrace.cpp";
    v69 = ":";
    v70 = 771;
    HIBYTE(v91) = 3;
    LODWORD(v89) = 3422261;
    v71[0] = v68;
    v72 = &v89;
    v73 = 1026;
    v74[0] = v71;
    v75 = ": ";
    v76 = 770;
    v77[0] = v74;
    v78 = "Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::initChunkNotification()";
    v79 = 770;
    v80[0] = v77;
    v81 = ": ";
    v82 = 770;
    v83[0] = v80;
    v84 = "IOConnectSetNotificationPort ChunkAvailable failed";
    v85 = 770;
    v88 = 770;
    v31 = v28;
    v32 = &v106 + 1;
    v86[0] = v83;
    v87 = " (err=";
    do
    {
      *--v32 = a0123456789abcd_1[v31 & 0xF];
      ++v30;
      v10 = v31 >= 0x10;
      v31 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_115;
    }

    if (v30 > 0x16)
    {
      operator new();
    }

    v103 = v30;
    if (v30)
    {
      memcpy(&__dst, v32, v30);
    }

    *(&__dst + v30) = 0;
    *&v93 = v86;
    *&v94 = &__dst;
    LOWORD(v95) = 1026;
    *&v96 = &v93;
    *&v97 = ") ";
    LOWORD(v98) = 770;
    if (mach_error_string(v29))
    {
      v36 = mach_error_string(v29);
      if (*v36)
      {
LABEL_52:
        *&v99 = &v96;
        *&v100 = v36;
        LOWORD(v101) = 770;
        v37 = 2;
        v38 = &v99;
LABEL_53:
        v110 = v38;
        v111 = v35;
        v112 = "\n";
        v39 = 3;
        goto LABEL_54;
      }
    }

    else
    {
      v36 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_52;
      }
    }

    v99 = v96;
    v100 = v97;
    v101 = v98;
    v37 = v98;
    if (v98)
    {
      if (v98 != 1)
      {
        v35 = *(&v99 + 1);
        v38 = &v99;
        if (BYTE1(v101) == 1)
        {
          v38 = v99;
        }

        else
        {
          v37 = 2;
        }

        goto LABEL_53;
      }

      v110 = "\n";
      v39 = 1;
      v37 = 3;
    }

    else
    {
      v39 = 1;
    }

LABEL_54:
    LOBYTE(v113) = v37;
    HIBYTE(v113) = v39;
    sub_298B996A4(&v110, __p);
    operator new();
  }

  v33 = dispatch_queue_create("com.apple.AppleProcessorTrace.ChunkDispatchQueue", 0);
  *(a1 + 160) = v33;
  v34 = dispatch_source_create(MEMORY[0x29EDCA5A0], *(a1 + 156), 0, v33);
  *(a1 + 168) = v34;
  handler = MEMORY[0x29EDCA5F8];
  v105 = 0x40000000;
  v106 = sub_298C73718;
  v107 = &unk_29EEB69D0;
  v108 = a1;
  dispatch_source_set_event_handler(v34, &handler);
  dispatch_activate(*(a1 + 168));
  v59 = 0;
  if ((*(a1 + 176) & 1) == 0)
  {
    v58 = 0;
    goto LABEL_94;
  }

  v40 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  *(a1 + 280) = v40;
  if (!v40)
  {
    std::generic_category();
    *&v93 = "AppleProcessorTrace.cpp";
    *&v94 = ":";
    LOWORD(v95) = 771;
    HIBYTE(v84) = 3;
    LODWORD(v83[0]) = 3682614;
    *&v96 = &v93;
    *&v97 = v83;
    LOWORD(v98) = 1026;
    *&v99 = &v96;
    *&v100 = ": ";
    LOWORD(v101) = 770;
    v110 = &v99;
    v112 = "Failed to create notification port";
    v113 = 770;
    sub_298B996A4(&v110, v86);
    operator new();
  }

  v89 = 0;
  v90 = &v89;
  v91 = 0x2000000000;
  MachPort = IONotificationPortGetMachPort(v40);
  if (!*(v90 + 6))
  {
    std::generic_category();
    *&v93 = "AppleProcessorTrace.cpp";
    *&v94 = ":";
    LOWORD(v95) = 771;
    HIBYTE(v84) = 3;
    LODWORD(v83[0]) = 3355190;
    *&v96 = &v93;
    *&v97 = v83;
    LOWORD(v98) = 1026;
    *&v99 = &v96;
    *&v100 = ": ";
    LOWORD(v101) = 770;
    v110 = &v99;
    v112 = "Failed to get throttle notification port";
    v113 = 770;
    sub_298B996A4(&v110, v86);
    operator new();
  }

  v41 = dispatch_queue_create("com.apple.AppleProcessorTrace.ThrottleAdvisoryQueue", 0);
  *(a1 + 288) = v41;
  v42 = dispatch_source_create(MEMORY[0x29EDCA5A0], *(v90 + 6), 0, v41);
  *(a1 + 296) = v42;
  handler = MEMORY[0x29EDCA5F8];
  v105 = 1107296256;
  v106 = sub_298C73788;
  v107 = &unk_2A1F20380;
  v108 = &v89;
  v109 = a1;
  dispatch_source_set_event_handler(v42, &handler);
  dispatch_activate(*(a1 + 296));
  v43 = MEMORY[0x29C294050](*(a1 + 12), 2, *(v90 + 6), 0);
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    __p[0] = "AppleProcessorTrace.cpp";
    __p[2] = ":";
    v67 = 771;
    v65 = 3;
    LODWORD(v64[0]) = 3159350;
    v68[0] = __p;
    v69 = v64;
    v70 = 1026;
    v71[0] = v68;
    v72 = ": ";
    v73 = 770;
    v74[0] = v71;
    v75 = "Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::initThrottleNotification()";
    v76 = 770;
    v77[0] = v74;
    v78 = ": ";
    v79 = 770;
    v80[0] = v77;
    v81 = "IOConnectSetNotificationPort failed";
    v82 = 770;
    v83[0] = v80;
    v84 = " (err=";
    v46 = v43;
    v47 = &v112 + 1;
    v85 = 770;
    do
    {
      *--v47 = a0123456789abcd_1[v46 & 0xF];
      ++v45;
      v10 = v46 >= 0x10;
      v46 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v45 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_115;
    }

    if (v45 > 0x16)
    {
      operator new();
    }

    v63 = v45;
    if (v45)
    {
      memcpy(&v62, v47, v45);
    }

    *(&v62 + v45) = 0;
    v86[0] = v83;
    v87 = &v62;
    v88 = 1026;
    *&v93 = v86;
    *&v94 = ") ";
    LOWORD(v95) = 770;
    if (mach_error_string(v44))
    {
      v49 = mach_error_string(v44);
      if (*v49)
      {
LABEL_87:
        *&v96 = &v93;
        *&v97 = v49;
        LOWORD(v98) = 770;
        v50 = 2;
        v51 = &v96;
LABEL_88:
        *&v99 = v51;
        *(&v99 + 1) = v48;
        *&v100 = "\n";
        v52 = 3;
        goto LABEL_89;
      }
    }

    else
    {
      v49 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_87;
      }
    }

    v96 = v93;
    v97 = v94;
    v98 = v95;
    v50 = v95;
    if (v95)
    {
      if (v95 != 1)
      {
        v48 = *(&v96 + 1);
        v51 = &v96;
        if (BYTE1(v98) == 1)
        {
          v51 = v96;
        }

        else
        {
          v50 = 2;
        }

        goto LABEL_88;
      }

      *&v99 = "\n";
      v52 = 1;
      v50 = 3;
    }

    else
    {
      v52 = 1;
    }

LABEL_89:
    LOBYTE(v101) = v50;
    BYTE1(v101) = v52;
    sub_298B996A4(&v99, &__dst);
    operator new();
  }

  v58 = 0;
  _Block_object_dispose(&v89, 8);
LABEL_94:
  sub_298C7230C(&v99, &v61, &v60, &v59, &v58);
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  result = v61;
  if (v61)
  {
    result = (*(*v61 + 8))(v61);
  }

  v54 = v99;
  if (v99)
  {
    (*(*a1 + 120))(&v56, a1);
    handler = v54;
    v110 = v56;
    v56 = 0;
    sub_298ADE6E8(&handler, &v110, &v57);
    if (v110)
    {
      (*(*v110 + 8))(v110);
    }

    if (handler)
    {
      (*(*handler + 8))(handler);
    }

    *(a2 + 16) |= 1u;
    result = v56;
    *a2 = v57;
    v57 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  else
  {
    *(a2 + 16) &= ~1u;
    *a2 = *(a1 + 16);
  }

  v55 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C7230C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = 0;
  v9 = *a2;
  *a2 = 0;
  v18 = v9;
  v19 = 0;
  sub_298ADE6E8(&v19, &v18, &v17);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v10 = v17;
  v11 = *a3;
  *a3 = 0;
  v18 = v11;
  v19 = v10;
  sub_298ADE6E8(&v19, &v18, &v17);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v12 = v17;
  *a1 = v17;
  v13 = *a4;
  *a4 = 0;
  v18 = v13;
  v19 = v12;
  sub_298ADE6E8(&v19, &v18, &v17);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v14 = v17;
  v15 = *a5;
  *a5 = 0;
  v18 = v15;
  v19 = v14;
  sub_298ADE6E8(&v19, &v18, &v17);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  result = v19;
  if (v19)
  {
    result = (*(*v19 + 8))(v19);
  }

  *a1 = v17;
  return result;
}

uint64_t sub_298C72534@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v74[23] = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  if (*(a1 + 296))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 296));
    dispatch_release(*(a1 + 288));
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    IONotificationPortDestroy(v4);
  }

  v32 = 0;
  if (*(a1 + 160))
  {
    v5 = *(a1 + 168);
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 168));
    dispatch_release(*(a1 + 160));
  }

  v31 = 0;
  v6 = MEMORY[0x29EDCA6B0];
  if (*(a1 + 32))
  {
    v7 = MEMORY[0x29C294060](*(a1 + 12), 1, *MEMORY[0x29EDCA6B0]);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v37[0] = "AppleProcessorTrace.cpp";
      v38 = ":";
      v39 = 771;
      v36 = 3;
      v40[0] = v37;
      v41 = __p;
      v42 = 1026;
      v43[0] = v40;
      v44 = ": ";
      v45 = 770;
      v46[0] = v43;
      v47 = "Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::deinitChunkQueue()";
      v48 = 770;
      v49[0] = v46;
      v50 = ": ";
      v51 = 770;
      v52[0] = v49;
      v53 = "IOConnectUnmapMemory DirtyChunkQueue failed";
      v54 = 770;
      v55[0] = v52;
      v56 = " (err=";
      v10 = v7;
      v57 = 770;
      v11 = v74;
      __p[0] = 3356469;
      do
      {
        *--v11 = a0123456789abcd_1[v10 & 0xF];
        ++v9;
        v12 = v10 >= 0x10;
        v10 >>= 4;
      }

      while (v12);
      std::generic_category();
      if (v9 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v9 > 0x16)
        {
          operator new();
        }

        v34 = v9;
        if (v9)
        {
          memcpy(&__dst, v11, v9);
        }

        *(&__dst + v9) = 0;
        v58[0] = v55;
        p_dst = &__dst;
        v60 = 1026;
        *&v61 = v58;
        *&v62 = ") ";
        LOWORD(v63) = 770;
        if (mach_error_string(v8))
        {
          v14 = mach_error_string(v8);
          if (*v14)
          {
LABEL_21:
            *&v64 = &v61;
            *&v65 = v14;
            LOWORD(v66) = 770;
            v15 = 2;
            v16 = &v64;
LABEL_22:
            v67 = v16;
            v68 = v13;
            v69 = "\n";
            v17 = 3;
            goto LABEL_23;
          }
        }

        else
        {
          v14 = "unknown error";
          if (aUnknownError[0])
          {
            goto LABEL_21;
          }
        }

        v64 = v61;
        v65 = v62;
        v66 = v63;
        v15 = v63;
        if (v63)
        {
          if (v63 != 1)
          {
            v13 = *(&v64 + 1);
            v16 = &v64;
            if (BYTE1(v66) == 1)
            {
              v16 = v64;
            }

            else
            {
              v15 = 2;
            }

            goto LABEL_22;
          }

          v67 = "\n";
          v17 = 1;
          v15 = 3;
        }

        else
        {
          v17 = 1;
        }

LABEL_23:
        v70 = v15;
        v71 = v17;
        sub_298B996A4(&v67, v72);
        operator new();
      }

LABEL_63:
      sub_298ADDDA0();
    }
  }

  v30 = 0;
  if (*(a1 + 24))
  {
    v18 = MEMORY[0x29C294060](*(a1 + 12), 0, *v6, *(a1 + 16));
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v37[0] = "AppleProcessorTrace.cpp";
      v38 = ":";
      v39 = 771;
      v36 = 3;
      v40[0] = v37;
      v41 = __p;
      v42 = 1026;
      v43[0] = v40;
      v44 = ": ";
      v45 = 770;
      v46[0] = v43;
      v47 = "Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::deinitCarveout()";
      v48 = 770;
      v49[0] = v46;
      v50 = ": ";
      v51 = 770;
      v52[0] = v49;
      v53 = "IOConnectUnmapMemory TraceBuffer failed";
      v54 = 770;
      v55[0] = v52;
      v56 = " (err=";
      v21 = v18;
      v57 = 770;
      v22 = v74;
      __p[0] = 3748917;
      do
      {
        *--v22 = a0123456789abcd_1[v21 & 0xF];
        ++v20;
        v12 = v21 >= 0x10;
        v21 >>= 4;
      }

      while (v12);
      std::generic_category();
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_63;
      }

      if (v20 > 0x16)
      {
        operator new();
      }

      v34 = v20;
      if (v20)
      {
        memcpy(&__dst, v22, v20);
      }

      *(&__dst + v20) = 0;
      v58[0] = v55;
      p_dst = &__dst;
      v60 = 1026;
      *&v61 = v58;
      *&v62 = ") ";
      LOWORD(v63) = 770;
      if (mach_error_string(v19))
      {
        v24 = mach_error_string(v19);
        if (*v24)
        {
LABEL_39:
          *&v64 = &v61;
          *&v65 = v24;
          LOWORD(v66) = 770;
          v25 = 2;
          v26 = &v64;
LABEL_40:
          v67 = v26;
          v68 = v23;
          v69 = "\n";
          v27 = 3;
          goto LABEL_41;
        }
      }

      else
      {
        v24 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_39;
        }
      }

      v64 = v61;
      v65 = v62;
      v66 = v63;
      v25 = v63;
      if (v63)
      {
        if (v63 != 1)
        {
          v23 = *(&v64 + 1);
          v26 = &v64;
          if (BYTE1(v66) == 1)
          {
            v26 = v64;
          }

          else
          {
            v25 = 2;
          }

          goto LABEL_40;
        }

        v67 = "\n";
        v27 = 1;
        v25 = 3;
      }

      else
      {
        v27 = 1;
      }

LABEL_41:
      v70 = v25;
      v71 = v27;
      sub_298B996A4(&v67, v72);
      operator new();
    }
  }

  v73 = 0;
  sub_298C7230C(a2, &v32, &v31, &v30, &v73);
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  result = v32;
  if (v32)
  {
    result = (*(*v32 + 8))(v32);
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C72DD0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 40);
  dataSize = 56;
  v5 = *a2;
  v6 = *(a2 + 64);
  do
  {
    __lk.__m_ = v4;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    v7 = IODataQueueDequeue(*(a1 + 32), &data, &dataSize);
    if (v7 == -536870169)
    {
      if (*(a1 + 152))
      {
        goto LABEL_24;
      }

      v9 = *(a1 + 120);
      v10 = *(a1 + 112);
      v43.__cv_.__sig = 1018212795;
      memset(v43.__cv_.__opaque, 0, sizeof(v43.__cv_.__opaque));
      if (v9 == v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = ((v9 - v10) << 6) - 1;
      }

      v12 = *(a1 + 144);
      v13 = v12 + *(a1 + 136);
      if (v11 == v13)
      {
        sub_298C6C6BC((a1 + 104));
        v10 = *(a1 + 112);
        v12 = *(a1 + 144);
        v13 = *(a1 + 136) + v12;
      }

      *(*(v10 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = &v43;
      *(a1 + 144) = v12 + 1;
      while (!IODataQueueDataAvailable(*(a1 + 32)))
      {
        if (*(a1 + 152))
        {
          break;
        }

        std::condition_variable::wait(&v43, &__lk);
      }

      v14 = *(a1 + 112);
      v15 = vaddq_s64(*(a1 + 136), xmmword_298D1ABB0);
      *(a1 + 136) = v15;
      if (v15.i64[0] >= 0x400uLL)
      {
        operator delete(*v14);
        *(a1 + 112) += 8;
        *(a1 + 136) -= 512;
      }

      std::condition_variable::~condition_variable(&v43);
      v8 = 0;
      if (__lk.__owns_)
      {
        goto LABEL_2;
      }
    }

    else if (v7)
    {
      if (*(a1 + 152))
      {
LABEL_24:
        if (*(a1 + 144))
        {
          std::condition_variable::notify_one(*(*(*(a1 + 112) + ((*(a1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 136) & 0x1FFLL)));
        }

        std::generic_category();
        v25[0] = "AppleProcessorTrace.cpp";
        v25[2] = ":";
        v26 = 771;
        v24 = 3;
        LODWORD(__p) = 3552564;
        v27[0] = v25;
        v27[2] = &__p;
        v28 = 1026;
        v29[0] = v27;
        v29[2] = ": ";
        v30 = 770;
        v31[0] = v29;
        v31[2] = "trace stopped";
        v32 = 770;
        sub_298B996A4(v31, &v42);
        operator new();
      }

      v8 = 0;
      if (__lk.__owns_)
      {
LABEL_2:
        std::mutex::unlock(__lk.__m_);
      }
    }

    else if (IODataQueueDataAvailable(*(a1 + 32)) && *(a1 + 144))
    {
      std::condition_variable::notify_one(*(*(*(a1 + 112) + ((*(a1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 136) & 0x1FFLL)));
      v8 = 3;
      if (__lk.__owns_)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v8 = 3;
      if (__lk.__owns_)
      {
        goto LABEL_2;
      }
    }
  }

  while (!v8);
  *a2 = v5;
  v16 = v40;
  v17 = sub_298B227A0(1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v43.__cv_.__sig) = 67242240;
    HIDWORD(v43.__cv_.__sig) = data;
    *v43.__cv_.__opaque = 2050;
    *&v43.__cv_.__opaque[2] = v36;
    *&v43.__cv_.__opaque[10] = 2050;
    *&v43.__cv_.__opaque[12] = *(&v36 + 1);
    *&v43.__cv_.__opaque[20] = 2050;
    *&v43.__cv_.__opaque[22] = v37;
    *&v43.__cv_.__opaque[30] = 2050;
    *&v43.__cv_.__opaque[32] = v38.i64[0];
    v44 = 2050;
    v45 = v38.i64[1];
    v46 = 1026;
    v47 = v39;
    v48 = 1026;
    v49 = v16 != 0;
    v50 = 1026;
    v51 = v41;
    _os_log_impl(&dword_298AD8000, v17, OS_LOG_TYPE_DEBUG, "chunk{ chunk_index=%{public}u, chunk_id=%{public}llu, offset=%{public}llu, size=%{public}llu, checksum=%{public}llx, fill_size=%{public}llu, fill_wrap=%{public}u, fill_loss=%{public}u, cluster_id=%{public}u }", &v43, 0x4Cu);
  }

  v18 = v41;
  v19 = data;
  v20 = v37;
  v21 = v39 != 0;
  *(a2 + 64) = v6 & 0xFE;
  *a2 = v18;
  a2[1] = v19;
  *(a2 + 1) = v36;
  a2[4] = v20;
  *(a2 + 5) = vextq_s8(v38, v38, 8uLL);
  *(a2 + 56) = v21;
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C732F0(uint64_t a1, uint64_t a2)
{
  memset(inputStruct, 0, 32);
  v4 = 0;
  LODWORD(inputStruct[0]) = *(a2 + 8);
  *(inputStruct + 8) = *(a2 + 16);
  *(&inputStruct[1] + 1) = *(a2 + 32);
  inputStruct[2] = vextq_s8(*(a2 + 40), *(a2 + 40), 8uLL);
  LOBYTE(v4) = *(a2 + 56);
  BYTE2(v4) = *a2;
  return IOConnectCallMethod(*(a1 + 12), 7u, 0, 0, inputStruct, 0x38uLL, 0, 0, 0, 0);
}

void sub_298C73374(uint64_t a1, uint64_t a2)
{
  v13[3] = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 184));
  v4 = (a1 + 248);
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
      if (v4 == v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = (*(*v5 + 16))(v5);
      if (v4 == v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v12 = 0;
    if (v4 == v11)
    {
LABEL_16:
      v8 = v12;
      if (v12 != v11)
      {
        goto LABEL_17;
      }

LABEL_20:
      (*(*v8 + 32))(v8);
      goto LABEL_21;
    }
  }

  v6 = v12;
  v7 = *(a1 + 272);
  if (v12 != v11)
  {
    if (v7 != v4)
    {
      v12 = *(a1 + 272);
      *(a1 + 272) = v6;
      v8 = v7;
      if (v7 != v11)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(*v7 + 24))(*(a1 + 272), v11);
    (*(**(a1 + 272) + 32))(*(a1 + 272));
    *(a1 + 272) = v12;
    v12 = v11;
    goto LABEL_16;
  }

  if (v7 != v4)
  {
    (*(*v12 + 24))();
    (*(*v12 + 32))(v12);
    v12 = *(a1 + 272);
    v9 = v12;
    *(a1 + 272) = v4;
    v8 = v9;
    if (v9 != v11)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  (*(*v12 + 24))();
  (*(*v12 + 32))(v12);
  v12 = 0;
  (*(**(a1 + 272) + 24))(*(a1 + 272), v11);
  (*(**(a1 + 272) + 32))(*(a1 + 272));
  *(a1 + 272) = 0;
  v12 = v11;
  (*(v13[0] + 24))(v13, a1 + 248);
  (*(v13[0] + 32))(v13);
  *(a1 + 272) = v4;
  v8 = v12;
  if (v12 == v11)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

LABEL_21:
  std::mutex::unlock((a1 + 184));
  v10 = *MEMORY[0x29EDCA608];
}

void sub_298C73718(uint64_t a1)
{
  v1 = *(a1 + 32);
  IODataQueueWaitForAvailableData(*(v1 + 32), *(v1 + 156));
  std::mutex::lock((v1 + 40));
  if (*(v1 + 144))
  {
    std::condition_variable::notify_one(*(*(*(v1 + 112) + ((*(v1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v1 + 136) & 0x1FFLL)));
  }

  std::mutex::unlock((v1 + 40));
}

void sub_298C73788(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v1 = *(a1 + 40);
  HIDWORD(v6) = *(*(*(a1 + 32) + 8) + 24);
  DWORD1(v6) = 32;
  mach_msg_receive(&v6);
  v2 = *(v1 + 308);
  v3 = DWORD1(v7) != 1;
  if (DWORD1(v7) == 1)
  {
    if (!v2)
    {
      v4 = task_suspend2(*(v1 + 304), (v1 + 308));
      std::mutex::lock((v1 + 184));
      v5 = *(v1 + 272);
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (v2)
  {
    v4 = task_resume2(v2);
    *(v1 + 308) = 0;
    std::mutex::lock((v1 + 184));
    v5 = *(v1 + 272);
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  std::mutex::lock((v1 + 184));
  v5 = *(v1 + 272);
  if (v5)
  {
LABEL_7:
    v9 = v3;
    v8 = v4;
    (*(*v5 + 48))(v5, &v9, &v8);
  }

LABEL_8:
  std::mutex::unlock((v1 + 184));
}

uint64_t sub_298C73898(uint64_t result)
{
  *result = &unk_2A1F203C0;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_298C738F4(uint64_t a1)
{
  *a1 = &unk_2A1F203C0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C73988(uint64_t a1, void *a2)
{
  v4 = a2[4];
  if (a2[3] - v4 <= 0xEuLL)
  {
    sub_298B9BCEC(a2, "hwtrace_error (", 0xFuLL);
    v5 = *(a1 + 32);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_298B8FC48(a2, v5, 0, 0, 0);
    v6 = a2[4];
    if ((a2[3] - v6) > 2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  qmemcpy(v4, "hwtrace_error (", 15);
  a2[4] += 15;
  v5 = *(a1 + 32);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_298B8FC48(a2, -v5, 0, 0, 1);
  v6 = a2[4];
  if ((a2[3] - v6) > 2)
  {
LABEL_4:
    *(v6 + 2) = 32;
    *v6 = 14889;
    a2[4] += 3;
    goto LABEL_8;
  }

LABEL_7:
  sub_298B9BCEC(a2, "): ", 3uLL);
LABEL_8:
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  return sub_298B9BCEC(a2, v11, v12);
}

void sub_298C73AE4(int a1@<W3>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>, uint64_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a5 & 0x100000000) == 0)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    operator new();
  }

  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (a3 == 1)
  {
    v10 = v12;
    __p[0] = 0;
    __p[1] = 0;
    operator new();
  }

  if (a3 != 4)
  {
    operator new();
  }

  sub_298B1FCBC("iocheckin", 9, a2, 0, &v10);
  if ((v12[16] & 1) == 0 || (v5 = v10, v10 = 0, !v5))
  {
    v6 = sub_298B227A0(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = __p;
      if (v12[7] < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_298AD8000, v6, OS_LOG_TYPE_INFO, "iocheckin tmpfile: %{public}s", buf, 0xCu);
    }

    operator new();
  }

  *(a4 + 8) |= 1u;
  *a4 = v5;
  v8 = *MEMORY[0x29EDCA608];
}

void sub_298C74050(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, char a11)
{
  v138 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 16);
  if (v12 <= a5)
  {
    std::generic_category();
    v119[0] = "Streaming.cpp";
    v120 = ":";
    v121 = 771;
    HIBYTE(v114) = 3;
    LODWORD(v113[0]) = 3551537;
    v122[0] = v119;
    p_dst = v113;
    v124 = 1026;
    *&v125 = v122;
    *&v126 = ": ";
    LOWORD(v127) = 770;
    *&v128 = &v125;
    *&v129 = "Chunk offset out of bounds";
LABEL_6:
    LOWORD(v130) = 770;
    sub_298B996A4(&v128, __p);
    operator new();
  }

  if (v12 < a7)
  {
    std::generic_category();
    v119[0] = "Streaming.cpp";
    v120 = ":";
    v121 = 771;
    HIBYTE(v114) = 3;
    LODWORD(v113[0]) = 3748145;
    v122[0] = v119;
    p_dst = v113;
    v124 = 1026;
    *&v125 = v122;
    *&v126 = ": ";
    LOWORD(v127) = 770;
    v13 = "Chunk size too large";
LABEL_4:
    *&v128 = &v125;
    *&v129 = v13;
    goto LABEL_6;
  }

  v15 = a7 - a6;
  if (a7 < a6)
  {
    std::generic_category();
    v110[0] = "Streaming.cpp";
    v111 = ":";
    v112 = 771;
    v109 = 3;
    v108[0] = 3355185;
    v113[0] = v110;
    v114 = v108;
    v115 = 1026;
    __p[0] = v113;
    v117 = ": ";
    v118 = 770;
    v119[0] = __p;
    v120 = "Chunk fill size out of bounds: ";
    v121 = 770;
    sub_298ADC8F4(&__dst, a6);
    v122[0] = v119;
    p_dst = &__dst;
    v124 = 1026;
    *&v125 = v122;
    *&v126 = " > ";
    LOWORD(v127) = 770;
    sub_298ADC8F4(&v106, a7);
    *&v128 = &v125;
    *&v129 = &v106;
    LOWORD(v130) = 1026;
    sub_298B996A4(&v128, v131);
    operator new();
  }

  if (a7 + a5 > v12)
  {
    std::generic_category();
    v119[0] = "Streaming.cpp";
    v120 = ":";
    v121 = 771;
    HIBYTE(v114) = 3;
    LODWORD(v113[0]) = 3551793;
    v122[0] = v119;
    p_dst = v113;
    v124 = 1026;
    *&v125 = v122;
    *&v126 = ": ";
    LOWORD(v127) = 770;
    v13 = "Chunk size out of bounds";
    goto LABEL_4;
  }

  if (!a6 || (*a1 & 1) == 0 || a6 == 128)
  {
    goto LABEL_17;
  }

  v103 = a6;
  v20 = *(*(a1 + 72) + 8 * a2);
  v21 = (*(**(v20 + 48) + 24))(*(v20 + 48));
  if (v21 % (*(**(v20 + 48) + 40))(*(v20 + 48)))
  {
    std::generic_category();
    v119[0] = "Streaming.cpp";
    v120 = ":";
    v121 = 771;
    HIBYTE(v114) = 3;
    LODWORD(v113[0]) = 3617585;
    v122[0] = v119;
    p_dst = v113;
    v124 = 1026;
    *&v125 = v122;
    *&v126 = ": ";
    LOWORD(v127) = 770;
    v13 = "Offset not aligned for storage";
    goto LABEL_4;
  }

  v22 = a1;
  if (*(a1 + 56) == 1)
  {
    v23 = *(v20 + 56) + a7;
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v22 = a1;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = (v23 / (v24.__d_.__rep_ - v25));
    if (v26 < v27)
    {
      rep = v24.__d_.__rep_;
      v29 = sub_298B227A0(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349824;
        *&buf[4] = a2;
        *&buf[12] = 2050;
        *&buf[14] = v25 - rep + v23 / v26;
        *&buf[22] = 2050;
        v133 = v27;
        *v134 = 2050;
        *&v134[2] = v26;
        _os_log_impl(&dword_298AD8000, v29, OS_LOG_TYPE_DEBUG, "FileArray::append: file=%{public}zu, need-delay=%{public}llu (usec), avg/target rate => %{public}llu/%{public}llu (bytes/usec)", buf, 0x2Au);
      }

LABEL_17:
      *a9 = 0;
      v18 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  v30 = a5;
  v31 = *(v22 + 8) + a5;
  if (a8 != 3735928559)
  {
    v32 = 0;
    v33 = (*(v22 + 8) + a5);
    v34 = a7;
    do
    {
      if (v34 >= 0xFFFFFFFF)
      {
        v35 = 0xFFFFFFFFLL;
      }

      else
      {
        v35 = v34;
      }

      v32 = crc32(v32, v33, v35);
      v33 += v35;
      v34 -= v35;
    }

    while (v34);
    v36 = v32;
    v22 = a1;
    v30 = a5;
    if (v32 != a8)
    {
      v113[0] = 0;
      v113[1] = 0;
      v114 = 0;
      *&buf[8] = 0;
      v134[8] = 0;
      v135 = 0;
      v136 = 1;
      v133 = 0;
      *v134 = 0;
      *&buf[16] = 0;
      *buf = &unk_2A1F1E040;
      v137 = v113;
      sub_298ADDDB0(buf);
      if (v133 - *v134 > 0x25)
      {
        qmemcpy(*v134, "Checksum verification failed: cluster=", 38);
        *v134 += 38;
      }

      else
      {
        sub_298B9BCEC(buf, "Checksum verification failed: cluster=", 0x26uLL);
      }

      sub_298B8FC48(buf, a3, 0, 0, 0);
      if (v133 - *v134 > 7)
      {
        **v134 = 0x3D6E69617264202CLL;
        *v134 += 8;
      }

      else
      {
        sub_298B9BCEC(buf, ", drain=", 8uLL);
      }

      if (HIDWORD(a4))
      {
        sub_298B8FEA0(buf, a4, 0, 0, 0);
        v76 = *v134;
        if (v133 - *v134 <= 0xA)
        {
          goto LABEL_83;
        }
      }

      else
      {
        sub_298B8FC48(buf, a4, 0, 0, 0);
        v76 = *v134;
        if (v133 - *v134 <= 0xA)
        {
LABEL_83:
          sub_298B9BCEC(buf, ", expected=", 0xBuLL);
          goto LABEL_111;
        }
      }

      *(v76 + 7) = 1029989748;
      *v76 = *", expected=";
      *v134 += 11;
LABEL_111:
      sub_298ADC8F4(&v128, a8);
      if ((SBYTE7(v129) & 0x80u) == 0)
      {
        v85 = &v128;
      }

      else
      {
        v85 = v128;
      }

      if ((SBYTE7(v129) & 0x80u) == 0)
      {
        v86 = BYTE7(v129);
      }

      else
      {
        v86 = *(&v128 + 1);
      }

      v87 = sub_298B9BCEC(buf, v85, v86);
      v88 = *v134;
      if (v133 - *v134 > 5)
      {
        *(*v134 + 4) = 15732;
        *v88 = 1869029420;
        *v134 += 6;
      }

      else
      {
        sub_298B9BCEC(v87, ", got=", 6uLL);
      }

      sub_298ADC8F4(&v125, v36);
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v89 = &v125;
      }

      else
      {
        v89 = v125;
      }

      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v90 = BYTE7(v126);
      }

      else
      {
        v90 = *(&v125 + 1);
      }

      sub_298B9BCEC(buf, v89, v90);
      if (SBYTE7(v126) < 0)
      {
        operator delete(v125);
      }

      if (SBYTE7(v129) < 0)
      {
        operator delete(v128);
      }

      sub_298B9AE14(buf);
      std::generic_category();
      v119[0] = "Streaming.cpp";
      v120 = ":";
      v121 = 771;
      HIBYTE(v111) = 3;
      LODWORD(v110[0]) = 3553073;
      v122[0] = v119;
      p_dst = v110;
      v124 = 1026;
      *&v125 = v122;
      *&v126 = ": ";
      LOWORD(v127) = 770;
      *&v128 = &v125;
      *&v129 = v113;
      LOWORD(v130) = 1026;
      sub_298B996A4(&v128, __p);
      operator new();
    }
  }

  if (*(v22 + 32) == 1 && !*(v22 + 24))
  {
    v67 = *(v22 + 16);
    v68 = *(v20 + 40);
    v69 = a7;
    v70 = v103;
    if (v68)
    {
      v71 = v67 / a7;
      v72 = a4;
      v73 = a3;
      if (v68 != v67 / a7)
      {
        std::generic_category();
        v110[0] = "Streaming.cpp";
        v111 = ":";
        v112 = 771;
        v109 = 3;
        v108[0] = 3158066;
        v113[0] = v110;
        v114 = v108;
        v115 = 1026;
        __p[0] = v113;
        v117 = ": ";
        v118 = 770;
        v119[0] = __p;
        v120 = "Expected ";
        v121 = 770;
        if (v67 >= a7)
        {
          v78 = 20;
          do
          {
            buf[v78--] = (v71 % 0xA) | 0x30;
            v79 = v71 > 9;
            v71 /= 0xAuLL;
          }

          while (v79);
          v77 = v78 + 1;
        }

        else
        {
          buf[20] = 48;
          v77 = 20;
        }

        v80 = 21 - v77;
        if ((21 - v77) <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v80 > 0x16)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = 21 - v77;
          if (v77 != 21)
          {
            memcpy(&__dst, &buf[v77], 21 - v77);
          }

          __dst.__r_.__value_.__s.__data_[v80] = 0;
          v122[0] = v119;
          p_dst = &__dst;
          v124 = 1026;
          *&v125 = v122;
          *&v126 = " chunks in wrap-no-copy mode but observe ";
          LOWORD(v127) = 770;
          v81 = *(v20 + 40);
          if (v81)
          {
            v82 = 20;
            do
            {
              buf[v82--] = (v81 % 0xA) | 0x30;
              v79 = v81 > 9;
              v81 /= 0xAuLL;
            }

            while (v79);
            v83 = v82 + 1;
          }

          else
          {
            buf[20] = 48;
            v83 = 20;
          }

          v84 = 21 - v83;
          if ((21 - v83) <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v84 <= 0x16)
            {
              *(&v106.__r_.__value_.__s + 23) = 21 - v83;
              if (v83 != 21)
              {
                memcpy(&v106, &buf[v83], 21 - v83);
              }

              v106.__r_.__value_.__s.__data_[v84] = 0;
              *&v128 = &v125;
              *&v129 = &v106;
              LOWORD(v130) = 1026;
              sub_298B996A4(&v128, v131);
              operator new();
            }

            operator new();
          }
        }

        sub_298ADDDA0();
      }
    }

    else
    {
      v72 = a4;
      v73 = a3;
      if (v67)
      {
        v91 = 0;
        v92 = 0;
        v93 = *(v20 + 8);
        v94 = *(v20 + 16);
        v95 = *(v20 + 32);
        do
        {
          if (v94 == v93)
          {
            v97 = 0;
          }

          else
          {
            v97 = 16 * (v94 - v93) - 1;
          }

          v98 = v95 + v91;
          if (v97 == v95 + v91)
          {
            sub_298C77004(v20);
            v93 = *(v20 + 8);
            v94 = *(v20 + 16);
            v95 = *(v20 + 32);
            v91 = *(v20 + 40);
            v98 = v91 + v95;
          }

          v96 = *(v93 + ((v98 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v98 & 0x7F);
          v69 = a7;
          *v96 = 0;
          *(v96 + 4) = a7;
          *(v96 + 16) = -1;
          *(v96 + 24) = v92;
          *(v20 + 40) = ++v91;
          v92 += a7;
          v70 = v103;
          v72 = a4;
          v73 = a3;
          v30 = a5;
        }

        while (v92 < *(a1 + 16));
      }
    }

    v74 = *(*(v20 + 8) + (((*(v20 + 32) + v30 / v69) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v20 + 32) + v30 / v69) & 0x7F);
    *v74 = v73;
    *(v74 + 4) = v69;
    *(v74 + 8) = v70;
    *(v74 + 16) = v72;
    *(v74 + 24) = v30;
    *a9 = 0;
    v75 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (a11)
    {
      (*(**(v20 + 48) + 40))(*(v20 + 48));
    }

    v37 = *(v20 + 48);
    if (a10)
    {
      v38 = (*(*v37 + 48))(v37, v31 + v103, v15, *(v20 + 56), 1);
      v39 = (*(**(v20 + 48) + 48))(*(v20 + 48), v31, v103, *(v20 + 56) + v38, 1) + v38;
      LODWORD(v103) = a7;
    }

    else
    {
      v39 = (*(*v37 + 48))(v37, v31, a7, *(v20 + 56), 1);
    }

    atomic_fetch_add_explicit((a1 + 96), v39, memory_order_relaxed);
    v113[0] = 0;
    v113[1] = 0;
    v114 = 0;
    v40 = sub_298B227A0(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(v20 + 56);
      v42 = __error();
      sub_298C76BD4(buf, v39, v31, a7, v41, a10, *v42);
      if (SHIBYTE(v114) < 0)
      {
        operator delete(v113[0]);
      }

      *v113 = *buf;
      v114 = *&buf[16];
      v43 = v113;
      if (buf[23] < 0)
      {
        v43 = v113[0];
      }

      *buf = 136446210;
      *&buf[4] = v43;
      _os_log_impl(&dword_298AD8000, v40, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    v44 = a7;
    if (v39 != a7)
    {
      std::generic_category();
      v119[0] = "Streaming.cpp";
      v120 = ":";
      v121 = 771;
      HIBYTE(v111) = 3;
      LODWORD(v110[0]) = 3290162;
      v122[0] = v119;
      p_dst = v110;
      v124 = 1026;
      *&v125 = v122;
      *&v126 = ": ";
      LOWORD(v127) = 770;
      v58 = *(v20 + 56);
      v59 = __error();
      sub_298C76BD4(buf, v39, v31, a7, v58, a10, *v59);
      if (SHIBYTE(v114) < 0)
      {
        operator delete(v113[0]);
      }

      *v113 = *buf;
      v114 = *&buf[16];
      v60 = v113;
      if (buf[23] < 0)
      {
        v60 = v113[0];
      }

      if (*v60)
      {
        *&v128 = &v125;
        *&v129 = v60;
        LOWORD(v130) = 770;
      }

      else
      {
        v128 = v125;
        v129 = v126;
        v130 = v127;
      }

      sub_298B996A4(&v128, __p);
      operator new();
    }

    v45 = *(v20 + 56);
    v46 = v45 + a7;
    *(v20 + 56) = v45 + a7;
    if (*(a1 + 32))
    {
      v47 = *(a1 + 24);
      v48 = a4;
      v49 = a3;
      v50 = v103;
      if (v47 % a7)
      {
        v47 = (a7 + v47 - 1) / a7 * a7;
        *(a1 + 24) = v47;
        *(a1 + 32) = 1;
        v46 = *(v20 + 56);
      }

      *(v20 + 56) = v46 % v47;
      v51 = *(v20 + 40);
      if (v51)
      {
        v52 = *(v20 + 8);
        v53 = *(v20 + 32);
        do
        {
          v54 = *(v52 + ((v53 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v53 & 0x7F);
          v55 = *(v54 + 24);
          if (v55 <= v45)
          {
            v56 = v45;
          }

          else
          {
            v56 = *(v54 + 24);
          }

          v57 = v55 + *(v54 + 4);
          if (v45 + a7 < v57)
          {
            v57 = v45 + a7;
          }

          if (v56 >= v57)
          {
            break;
          }

          --v51;
          *(v20 + 32) = ++v53;
          *(v20 + 40) = v51;
          if (v53 >= 0x100)
          {
            operator delete(*v52);
            v50 = v103;
            v49 = a3;
            v48 = a4;
            v44 = a7;
            v52 = (*(v20 + 8) + 8);
            *(v20 + 8) = v52;
            v51 = *(v20 + 40);
            v53 = *(v20 + 32) - 128;
            *(v20 + 32) = v53;
          }
        }

        while (v51);
      }
    }

    else
    {
      v51 = *(v20 + 40);
      v48 = a4;
      v49 = a3;
      v50 = v103;
    }

    v61 = *(v20 + 8);
    v62 = *(v20 + 16);
    v63 = *(v20 + 8);
    v64 = 16 * (v62 - v63) - 1;
    if (v62 == v63)
    {
      v64 = 0;
    }

    v65 = *(v20 + 32) + v51;
    if (v64 == v65)
    {
      sub_298C77004(v20);
      v50 = v103;
      v49 = a3;
      v48 = a4;
      v44 = a7;
      v63 = *(v20 + 8);
      v51 = *(v20 + 40);
      v65 = v51 + *(v20 + 32);
    }

    v66 = *(v63 + ((v65 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v65 & 0x7F);
    *v66 = v49;
    *(v66 + 4) = v44;
    *(v66 + 8) = v50;
    *(v66 + 16) = v48;
    *(v66 + 24) = v45;
    *(v20 + 40) = v51 + 1;
    *a9 = 0;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(v113[0]);
    }

    v14 = *MEMORY[0x29EDCA608];
  }
}

void sub_298C7545C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v79 = *MEMORY[0x29EDCA608];
  *(a1 + 64) = 1;
  if (*(a1 + 32) == 1 && (v4 = a1, !*(a1 + 24)))
  {
    v61 = *(a1 + 72);
    v6 = *v61;
    v7 = (*v61)[1];
    v50 = **v61;
    v8 = (*v61)[2];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v9 = v6[4];
    v10 = v6[5];
    v6[4] = 0;
    v6[5] = 0;
    v49 = v8;
    v11 = v8 - v7;
    if (v8 != v7)
    {
      v12 = &v7[v9 >> 7];
      v13 = *v12;
      v14 = *v12 + 32 * (v9 & 0x7F);
      v58 = *(v7 + (((v10 + v9) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v10 + v9) & 0x7F);
      if (v14 != v58)
      {
        v51 = v3;
        do
        {
          v15 = *(v14 + 8);
          if (v15)
          {
            v59 = v12;
            v57 = *v14;
            v16 = *v61;
            v55 = *(v14 + 16);
            v56 = *(v14 + 4);
            v19 = v4 + 8;
            v18 = *(v4 + 8);
            v17 = *(v19 + 8);
            if (v17 >= *(v14 + 24))
            {
              v20 = *(v14 + 24);
            }

            else
            {
              v20 = v17;
            }

            if (v17 - v20 >= *(v14 + 4))
            {
              v21 = *(v14 + 4);
            }

            else
            {
              v21 = v17 - v20;
            }

            v54 = v16[7];
            v60 = v2 & 0xFFFFFFFFFFFFFF00 | 1;
            v22 = (*(*v16[6] + 48))(v16[6], v18 + v20, v21);
            v74 = 0uLL;
            v75 = 0;
            v23 = sub_298B227A0(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = (*v61)[7];
              v25 = __error();
              sub_298C76BD4(buf, v22, v18 + v20, v21, v24, 0, *v25);
              if (SHIBYTE(v75) < 0)
              {
                operator delete(v74);
              }

              v74 = *buf;
              v75 = v78;
              v26 = &v74;
              if (v78 < 0)
              {
                v26 = v74;
              }

              *buf = 136446210;
              *&buf[4] = v26;
              _os_log_impl(&dword_298AD8000, v23, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
              v3 = v51;
            }

            if (v22 != v21)
            {
              std::generic_category();
              v64[0] = "Streaming.cpp";
              v64[2] = ":";
              v65 = 771;
              v63 = 3;
              LODWORD(__p) = 3289651;
              v66[0] = v64;
              v66[2] = &__p;
              v67 = 1026;
              *&v68 = v66;
              *&v69 = ": ";
              LOWORD(v70) = 770;
              v35 = (*v61)[7];
              v36 = __error();
              sub_298C76BD4(buf, v22, v18 + v20, v21, v35, 0, *v36);
              if (SHIBYTE(v75) < 0)
              {
                operator delete(v74);
              }

              v74 = *buf;
              v75 = v78;
              v37 = &v74;
              if (v78 < 0)
              {
                v37 = v74;
              }

              v38 = *v37;
              v39 = v52;
              if (*v37)
              {
                v39 = v37;
              }

              v40 = v70;
              if (v70 != 1)
              {
                if (!v70)
                {
                  LOWORD(v73) = 256;
                  goto LABEL_50;
                }

                if (*v37)
                {
                  if (BYTE1(v70) != 1)
                  {
                    v40 = 2;
                  }

                  v43 = &v68;
                  if (BYTE1(v70) == 1)
                  {
                    v43 = v68;
                  }

                  *&v71 = v43;
                  *(&v71 + 1) = *(&v68 + 1);
                  *&v72 = v37;
                  LOBYTE(v73) = v40;
                  v42 = 3;
LABEL_49:
                  BYTE1(v73) = v42;
                }

                else
                {
                  v71 = v68;
                  v72 = v69;
                  v73 = v70;
                }

LABEL_50:
                sub_298B996A4(&v71, &v76);
                operator new();
              }

              *&v71 = v39;
              if (v38)
              {
                v41 = 3;
              }

              else
              {
                v41 = 1;
              }

              LOBYTE(v73) = v41;
              v42 = 1;
              goto LABEL_49;
            }

            v4 = a1;
            atomic_fetch_add_explicit((a1 + 96), v21, memory_order_relaxed);
            v27 = *v61;
            v28 = *(*v61 + 1);
            v29 = (*v61)[2];
            v30 = (*v61)[1];
            (*v61)[7] = (*v61)[7] + v21;
            if (v29 == v30)
            {
              v31 = 0;
            }

            else
            {
              v31 = 16 * (v29 - v30) - 1;
            }

            v32 = v27[5];
            v33 = v27[4] + v32;
            if (v31 == v33)
            {
              sub_298C77004(v27);
              v30 = v27[1];
              v32 = v27[5];
              v33 = v27[4] + v32;
            }

            v34 = *&v30[(v33 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v33 & 0x7F);
            *v34 = v57;
            *(v34 + 4) = v56;
            *(v34 + 8) = v15;
            *(v34 + 16) = v55;
            *(v34 + 24) = v54;
            v27[5] = v32 + 1;
            v2 = v60;
            if (SHIBYTE(v75) < 0)
            {
              operator delete(v74);
              if (v22 != v21)
              {
                goto LABEL_59;
              }
            }

            else if (v22 != v21)
            {
              goto LABEL_59;
            }

            v12 = v59;
            v13 = *v59;
          }

          v14 += 32;
          if (v14 - v13 == 4096)
          {
            v44 = v12[1];
            ++v12;
            v13 = v44;
            v14 = v44;
          }
        }

        while (v14 != v58);
      }
    }

    *v3 = 0;
LABEL_59:
    if (v11 < 0x11)
    {
      v46 = v49;
      v45 = v50;
    }

    else
    {
      v46 = v49;
      v45 = v50;
      do
      {
        v47 = *v7++;
        operator delete(v47);
        v11 -= 8;
      }

      while (v11 > 0x10);
    }

    while (v7 != v46)
    {
      v48 = *v7++;
      operator delete(v48);
    }

    if (v45)
    {
      operator delete(v45);
    }
  }

  else
  {
    *a2 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_298C75A58(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 = *(a1 + 72);
  for (i = *(a1 + 80); v3 != i; ++v3)
  {
    v4 = *v3;
    v5 = *(*v3 + 8);
    if (*(*v3 + 16) != v5)
    {
      v6 = *(v4 + 32);
      v7 = (v5 + 8 * (v6 >> 7));
      v8 = (*v7 + 32 * (v6 & 0x7F));
      while (v8 != (*(v5 + (((*(v4 + 40) + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v4 + 40) + v6) & 0x7F)))
      {
        if (*v8 == a2)
        {
          operator new();
        }

        v8 += 8;
        if ((v8 - *v7) == 4096)
        {
          v9 = v7[1];
          ++v7;
          v8 = v9;
        }
      }
    }
  }

  sub_298C7777C(0, 0, 0, 1);
  v10 = sub_298B227A0(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a3 + 8);
    v12 = *(a3 + 16);
    *buf = 67240704;
    v17 = a2;
    v18 = 2050;
    v19 = v11;
    v20 = 2050;
    v21 = v12;
    _os_log_impl(&dword_298AD8000, v10, OS_LOG_TYPE_DEBUG, "FileArray::getClusterTrace: cluster_id=%{public}u, lost_bytes=%{public}llu, streamed_bytes=%{public}llu", buf, 0x1Cu);
  }

  operator new();
}

void sub_298C76148(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v7 = *v3;
        v8 = a2[2];
        if (v5 >= v8)
        {
          break;
        }

        v6 = *(v7 + 48);
        *(v7 + 48) = 0;
        *v5 = v6;
        v5 += 8;
        a2[1] = v5;
        if (++v3 == v4)
        {
          goto LABEL_15;
        }
      }

      v9 = v5;
      v10 = v5 >> 3;
      v11 = v10 + 1;
      if ((v10 + 1) >> 61)
      {
        *a2 = 0;
        sub_298ADDDA0();
      }

      if (v8 >> 2 > v11)
      {
        v11 = v8 >> 2;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        if (!(v12 >> 61))
        {
          operator new();
        }

        *a2 = 0;
        sub_298ADDDA0();
      }

      v13 = (8 * v10);
      v14 = *(v7 + 48);
      *(v7 + 48) = 0;
      *v13 = v14;
      v5 = (v13 + 1);
      memcpy(0, 0, v9);
      a2[1] = v5;
      a2[2] = 0;
      a2[1] = v5;
      ++v3;
    }

    while (v3 != v4);
  }

LABEL_15:
  *a2 = 0;
}

uint64_t sub_298C7629C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = 0u;
  v7 = (result + 16);
  *result = a2;
  *(result + 8) = a3;
  *(result + 32) = 0u;
  *(result + 48) = 850045863;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  if (*(a3 + 80) != *(a3 + 72))
  {
    if (*(result + 32))
    {
      operator new();
    }

    v3 = -*v7;
    v4 = (v3 >> 3) + 1;
    if (!(v4 >> 61))
    {
      v5 = -*v7;
      v6 = v5 >> 2;
      if (v5 >> 2 <= v4)
      {
        v6 = (v3 >> 3) + 1;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v6 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        if (!(v6 >> 61))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      operator new();
    }

    sub_298ADDDA0();
  }

  return result;
}

void *sub_298C76600(void *a1, uint64_t a2)
{
  v2 = a2;
  v50 = *MEMORY[0x29EDCA608];
  do
  {
    atomic_fetch_add_explicit(a1 + 5, 1uLL, memory_order_release);
    (*(**a1 + 16))(&v45);
    if ((v49 & 1) != 0 && (v4 = v45, *&v45 = 0, v4))
    {
      v33 = v4;
      sub_298AE617C(&v33);
      result = v33;
      if (v33)
      {
        result = (*(*v33 + 8))(v33);
      }

      v6 = 0;
    }

    else
    {
      atomic_fetch_add_explicit(a1 + 5, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
      v31 = v47;
      v32 = v48;
      v29 = v45;
      v30 = v46;
      sub_298C74050(a1[1], v2, v45, v46, *(&v46 + 1), *(&v47 + 1), v47, v48, buf, BYTE8(v48), 1);
      v7 = *buf;
      if (*buf)
      {
        std::mutex::lock((a1 + 6));
        v9 = a1[15];
        v8 = a1[16];
        if (v9 >= v8)
        {
          v10 = a1[14];
          v11 = (v9 - v10) >> 3;
          v12 = v11 + 1;
          if ((v11 + 1) >> 61)
          {
            sub_298ADDDA0();
          }

          v13 = v8 - v10;
          if (v13 >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            if (!(v14 >> 61))
            {
              operator new();
            }

            sub_298ADDDA0();
          }

          v15 = (v9 - v10) >> 3;
          *(8 * v11) = v7;
          v16 = 8 * v11 + 8;
          *buf = 0;
          if (v10 != v9)
          {
            v17 = v9 - v10 - 8;
            v18 = v10;
            v19 = 0;
            if (v17 < 0x38)
            {
              goto LABEL_49;
            }

            if (&v10[v17 & 0xFFFFFFFFFFFFFFF8] != -8)
            {
              v18 = v10;
              v19 = 0;
              if (v10 < v9 - v10 + (v17 & 0xFFFFFFFFFFFFFFF8) - 8 * v15 + 8)
              {
                goto LABEL_49;
              }
            }

            v20 = (v17 >> 3) + 1;
            v19 = (8 * (v20 & 0x3FFFFFFFFFFFFFFCLL));
            v18 = v19 + v10;
            v21 = (-8 * v15 + 8 * v11 + 16);
            v22 = (v10 + 16);
            v23 = v20 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v24 = *v22;
              *(v21 - 1) = *(v22 - 1);
              *v21 = v24;
              *(v22 - 1) = 0uLL;
              *v22 = 0uLL;
              v21 += 2;
              v22 += 2;
              v23 -= 4;
            }

            while (v23);
            if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_49:
              do
              {
                *v19++ = *v18;
                *v18 = 0;
                v18 += 8;
              }

              while (v18 != v9);
            }

            do
            {
              if (*v10)
              {
                (*(**v10 + 8))(*v10);
              }

              v10 += 8;
            }

            while (v10 != v9);
            v10 = a1[14];
          }

          a1[14] = 0;
          a1[15] = v16;
          a1[16] = 0;
          if (v10)
          {
            operator delete(v10);
          }

          v25 = *buf;
          a1[15] = v16;
          std::mutex::unlock((a1 + 6));
          v2 = a2;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }
        }

        else
        {
          *v9 = v7;
          a1[15] = v9 + 8;
          std::mutex::unlock((a1 + 6));
        }
      }

      v26 = sub_298B227A0(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134350336;
        *&buf[4] = v2;
        v35 = 1026;
        v36 = v29;
        v37 = 2050;
        v38 = v30;
        v39 = 2050;
        v40 = *(&v29 + 1);
        v41 = 2050;
        v42 = *(&v30 + 1);
        v43 = 1026;
        v44 = v7 == 0;
        _os_log_impl(&dword_298AD8000, v26, OS_LOG_TYPE_DEBUG, "IOPool::worker: fileid=%{public}lu, cluster=%{public}u, write=%{public}llu, chunk=%{public}llu, chunkoff=%{public}llX, success=%{public}u", buf, 0x36u);
      }

      result = (*(**a1 + 24))(*a1, &v29, v7 == 0);
      v6 = 1;
    }

    if (v49)
    {
      result = v45;
      *&v45 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  while ((v6 & 1) != 0);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C76AA8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  for (i = a1[3]; v4 != i; ++v4)
  {
    std::thread::join(v4);
  }

  v6 = a1[15];
  if (a1[14] == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *(v6 - 8);
      *(v6 - 8) = 0;
      v13 = v8;
      v14 = v7;
      sub_298ADE6E8(&v14, &v13, &v12);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v7 = v12;
      v9 = a1[15];
      v11 = *(v9 - 8);
      v6 = v9 - 8;
      v10 = v11;
      if (v11)
      {
        (*(*v10 + 8))(v10);
      }

      a1[15] = v6;
    }

    while (a1[14] != v6);
  }

  *a2 = v7;
}

uint64_t sub_298C76BD4(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v32 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 1;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v31 = &unk_2A1F1E040;
  v39 = a1;
  sub_298ADDDB0(&v31);
  v12 = v35;
  if ((v34 - v35) > 0x12)
  {
    *(v35 + 15) = 540697710;
    *v12 = *"FileArray::append: ";
    v35 += 19;
  }

  else
  {
    sub_298B9BCEC(&v31, "FileArray::append: ", 0x13uLL);
  }

  sub_298ADC8F4(&v30, a2);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v30;
  }

  else
  {
    v13 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(&v31, v13, size);
  v15 = v35;
  if ((v34 - v35) > 8)
  {
    v35[8] = 40;
    *v15 = *" = write(";
    v16 = v35 + 9;
    v35 = v16;
    if ((v34 - v16) > 9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_298B9BCEC(&v31, " = write(", 9uLL);
    v16 = v35;
    if ((v34 - v35) > 9)
    {
LABEL_12:
      *(v16 + 4) = 15717;
      *v16 = *"..., size=";
      v35 += 10;
      goto LABEL_15;
    }
  }

  sub_298B9BCEC(&v31, "..., size=", 0xAuLL);
LABEL_15:
  sub_298ADC8F4(&v29, a4);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v29;
  }

  else
  {
    v17 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v29.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(&v31, v17, v18);
  v19 = v35;
  if ((v34 - v35) > 9)
  {
    *(v35 + 4) = 15718;
    *v19 = *", fileoff=";
    v35 += 10;
  }

  else
  {
    sub_298B9BCEC(&v31, ", fileoff=", 0xAuLL);
  }

  sub_298ADC8F4(&__p, a5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(&v31, p_p, v21);
  v22 = v35;
  if ((v34 - v35) > 9)
  {
    *(v35 + 4) = 15716;
    *v22 = *", wrapped=";
    v35 += 10;
  }

  else
  {
    sub_298B9BCEC(&v31, ", wrapped=", 0xAuLL);
  }

  sub_298B8FC48(&v31, a6, 0, 0, 0);
  v23 = v35;
  if ((v34 - v35) > 8)
  {
    v35[8] = 61;
    *v23 = *", padded=";
    v35 += 9;
  }

  else
  {
    sub_298B9BCEC(&v31, ", padded=", 9uLL);
  }

  sub_298B8FC48(&v31, 0, 0, 0, 0);
  v24 = v35;
  if ((v34 - v35) > 2)
  {
    v35[2] = 32;
    *v24 = 14889;
    v35 += 3;
    if (a4 != a2)
    {
LABEL_38:
      v25 = strerror(a7);
      if (!v25)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }
  }

  else
  {
    sub_298B9BCEC(&v31, "): ", 3uLL);
    if (a4 != a2)
    {
      goto LABEL_38;
    }
  }

  v25 = "success";
LABEL_42:
  v26 = strlen(v25);
  if (v26 <= v34 - v35)
  {
    if (v26)
    {
      memcpy(v35, v25, v26);
      v35 += v26;
    }
  }

  else
  {
    sub_298B9BCEC(&v31, v25, v26);
  }

LABEL_46:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return sub_298B9AE14(&v31);
    }

LABEL_52:
    operator delete(v30.__r_.__value_.__l.__data_);
    return sub_298B9AE14(&v31);
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_52;
  }

  return sub_298B9AE14(&v31);
}

void *sub_298C77004(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_298C775E8(a1, &v10);
}

void *sub_298C775E8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t *sub_298C7777C(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 3;
  v10 = a2 - 5;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v114 = v11 + 3;
          v115 = v11[3];
          v116 = *(v115 + 16);
          v117 = v11 + 1;
          v118 = v11[1];
          v119 = *(v118 + 16);
          v120 = *(*(a2 - 1) + 16);
          if (v116 >= v119)
          {
            if (v120 >= v116)
            {
              return result;
            }

            v167 = v11[2];
            v11[2] = *(a2 - 2);
            *(a2 - 2) = v167;
            v168 = v11[3];
            v11[3] = *(a2 - 1);
            *(a2 - 1) = v168;
            if (*(v11[3] + 16) >= *(v11[1] + 16))
            {
              return result;
            }

            v169 = *v11;
            *v11 = v11[2];
            v11[2] = v169;
          }

          else
          {
            v121 = *v11;
            if (v120 >= v116)
            {
              *v11 = v11[2];
              v11[1] = v115;
              v11[2] = v121;
              v11[3] = v118;
              if (*(*(a2 - 1) + 16) >= v119)
              {
                return result;
              }

              v11[2] = *(a2 - 2);
              *(a2 - 2) = v121;
              v117 = v11 + 3;
            }

            else
            {
              *v11 = *(a2 - 2);
              *(a2 - 2) = v121;
            }

            v114 = a2 - 1;
          }

          v179 = *v117;
          *v117 = *v114;
          *v114 = v179;
          return result;
        case 4:

          return sub_298C78404(v11, v11 + 2, v11 + 4, a2 - 2);
        case 5:
          result = sub_298C78404(v11, v11 + 2, v11 + 4, v11 + 6);
          if (*(*(a2 - 1) + 16) < *(v11[7] + 16))
          {
            v101 = v11[6];
            v11[6] = *(a2 - 2);
            *(a2 - 2) = v101;
            v102 = v11[7];
            v11[7] = *(a2 - 1);
            *(a2 - 1) = v102;
            v103 = v11[7];
            v104 = *(v103 + 16);
            v105 = v11[5];
            if (v104 < *(v105 + 16))
            {
              v106 = v11[6];
              v107 = v11[3];
              v108 = v11[4];
              v11[4] = v106;
              v11[5] = v103;
              v11[6] = v108;
              v11[7] = v105;
              if (v104 < *(v107 + 16))
              {
                v109 = v11[1];
                v110 = v11[2];
                v11[2] = v106;
                v11[3] = v103;
                v11[4] = v110;
                v11[5] = v107;
                if (v104 < *(v109 + 16))
                {
                  v111 = *v11;
                  *v11 = v106;
                  v11[1] = v103;
                  v11[2] = v111;
                  v11[3] = v109;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*(*(a2 - 1) + 16) < *(v11[1] + 16))
        {
          v112 = *v11;
          *v11 = *(a2 - 2);
          *(a2 - 2) = v112;
          v113 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v113;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v135 = (v12 - 2) >> 1;
      v136 = v135;
      do
      {
        if (v135 >= v136)
        {
          v138 = (2 * (v136 & 0xFFFFFFFFFFFFFFFLL)) | 1;
          v139 = &v11[2 * v138];
          if (2 * (v136 & 0xFFFFFFFFFFFFFFFLL) + 2 < v12)
          {
            v140 = *(v139[1] + 16);
            v141 = *(v139[3] + 16);
            v139 += 2 * (v140 < v141);
            if (v140 < v141)
            {
              v138 = 2 * (v136 & 0xFFFFFFFFFFFFFFFLL) + 2;
            }
          }

          v142 = &v11[2 * v136];
          v143 = v142[1];
          v144 = *(v143 + 16);
          if (*(v139[1] + 16) >= v144)
          {
            v145 = *v142;
            do
            {
              v146 = v142;
              v142 = v139;
              *v146 = *v139;
              v146[1] = v139[1];
              if (v135 < v138)
              {
                break;
              }

              v147 = (2 * (v138 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v139 = &v11[2 * v147];
              v148 = 2 * v138 + 2;
              if (v148 < v12)
              {
                v149 = *(v139[1] + 16);
                v150 = *(v139[3] + 16);
                v139 += 2 * (v149 < v150);
                if (v149 < v150)
                {
                  v147 = v148;
                }
              }

              result = *(v139[1] + 16);
              v138 = v147;
            }

            while (result >= v144);
            *v142 = v145;
            v142[1] = v143;
          }
        }

        v137 = v136-- <= 0;
      }

      while (!v137);
      while (2)
      {
        v151 = 0;
        v152 = *v11;
        v153 = v11[1];
        v154 = v11;
        do
        {
          v158 = &v154[2 * v151];
          v157 = v158 + 2;
          v159 = (2 * v151) | 1;
          v151 = 2 * v151 + 2;
          if (v151 < v12)
          {
            v155 = *(v158[3] + 16);
            result = *(v158[5] + 16);
            v156 = v158 + 4;
            if (v155 >= result)
            {
              v151 = v159;
            }

            else
            {
              v157 = v156;
            }
          }

          else
          {
            v151 = v159;
          }

          *v154 = *v157;
          v154[1] = v157[1];
          v154 = v157;
        }

        while (v151 <= ((v12 - 2) >> 1));
        if (v157 != a2 - 2)
        {
          *v157 = *(a2 - 2);
          v157[1] = *(a2 - 1);
          *(a2 - 2) = v152;
          *(a2 - 1) = v153;
          v160 = (v157 - v11 + 16) >> 4;
          v137 = v160 < 2;
          v161 = v160 - 2;
          if (!v137)
          {
            v162 = v161 >> 1;
            v163 = &v11[2 * v162];
            v153 = v157[1];
            v164 = *(v153 + 16);
            if (*(v163[1] + 16) < v164)
            {
              v165 = *v157;
              do
              {
                v166 = v157;
                v157 = v163;
                *v166 = *v163;
                v166[1] = v163[1];
                if (!v162)
                {
                  break;
                }

                v162 = (v162 - 1) >> 1;
                v163 = &v11[2 * v162];
              }

              while (*(v163[1] + 16) < v164);
              *v157 = v165;
LABEL_157:
              v157[1] = v153;
            }
          }

          a2 -= 2;
          v137 = v12-- <= 2;
          if (v137)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v157 = v152;
      goto LABEL_157;
    }

    v13 = &v11[2 * (v12 >> 1)];
    v14 = *(*v8 + 16);
    if (v12 < 0x81)
    {
      v22 = v11 + 1;
      v23 = v11[1];
      v24 = *(v23 + 16);
      v25 = v13 + 1;
      v26 = v13[1];
      v27 = *(v26 + 16);
      if (v24 < v27)
      {
        v28 = *v13;
        if (v14 >= v24)
        {
          *v13 = *v11;
          v13[1] = v23;
          *v11 = v28;
          v11[1] = v26;
          if (*(*v8 + 16) >= v27)
          {
            goto LABEL_39;
          }

          *v11 = *(a2 - 2);
          *(a2 - 2) = v28;
          v25 = v11 + 1;
        }

        else
        {
          *v13 = *(a2 - 2);
          *(a2 - 2) = v28;
        }

        v22 = a2 - 1;
        goto LABEL_38;
      }

      if (v14 < v24)
      {
        v33 = *v11;
        *v11 = *(a2 - 2);
        *(a2 - 2) = v33;
        v34 = v11[1];
        v11[1] = *(a2 - 1);
        *(a2 - 1) = v34;
        if (*(v11[1] + 16) < *(*v25 + 16))
        {
          v35 = *v13;
          *v13 = *v11;
          *v11 = v35;
LABEL_38:
          v50 = *v25;
          *v25 = *v22;
          *v22 = v50;
        }
      }

LABEL_39:
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_40:
      v51 = *v11;
      v52 = v11[1];
      v53 = *(v52 + 16);
LABEL_67:
      v76 = 0;
      do
      {
        v77 = *(v11[v76 + 3] + 16);
        v76 += 2;
      }

      while (v77 < v53);
      v78 = &v11[v76];
      v79 = a2;
      if (v76 == 2)
      {
        v82 = a2;
        while (v78 < v82)
        {
          v80 = v82 - 2;
          v83 = *(*(v82 - 1) + 16);
          v82 -= 2;
          if (v83 < v53)
          {
            goto LABEL_75;
          }
        }

        v80 = v82;
        v11 = v78;
      }

      else
      {
        do
        {
          v80 = v79 - 2;
          v81 = *(*(v79 - 1) + 16);
          v79 -= 2;
        }

        while (v81 >= v53);
LABEL_75:
        v11 = v78;
        if (v78 < v80)
        {
          v84 = v80;
          do
          {
            v85 = *v11;
            *v11 = *v84;
            *v84 = v85;
            v86 = v11[1];
            v11[1] = v84[1];
            v84[1] = v86;
            do
            {
              v87 = v11[3];
              v11 += 2;
            }

            while (*(v87 + 16) < v53);
            do
            {
              v88 = *(v84 - 1);
              v84 -= 2;
            }

            while (*(v88 + 16) >= v53);
          }

          while (v11 < v84);
        }
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      *(v11 - 2) = v51;
      *(v11 - 1) = v52;
      if (v78 < v80)
      {
        goto LABEL_86;
      }

      v89 = sub_298C785B0(v7, v11 - 2);
      result = sub_298C785B0(v11, a2);
      if (result)
      {
        a2 = v11 - 2;
        if (v89)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v89)
      {
LABEL_86:
        result = sub_298C7777C(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v15 = v13 + 1;
      v16 = v13[1];
      v17 = *(v16 + 16);
      v18 = v11 + 1;
      v19 = v11[1];
      v20 = *(v19 + 16);
      if (v17 < v20)
      {
        v21 = *v11;
        if (v14 >= v17)
        {
          *v11 = *v13;
          v11[1] = v16;
          *v13 = v21;
          v13[1] = v19;
          if (*(*v8 + 16) >= v20)
          {
            goto LABEL_29;
          }

          *v13 = *(a2 - 2);
          *(a2 - 2) = v21;
          v18 = v13 + 1;
        }

        else
        {
          *v11 = *(a2 - 2);
          *(a2 - 2) = v21;
        }

        v32 = a2 - 1;
        goto LABEL_28;
      }

      if (v14 < v17)
      {
        v29 = *v13;
        *v13 = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = v13[1];
        v13[1] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (*(v13[1] + 16) < *(*v18 + 16))
        {
          v31 = *v11;
          *v11 = *v13;
          *v13 = v31;
          v32 = v13 + 1;
LABEL_28:
          v36 = *v18;
          *v18 = *v32;
          *v32 = v36;
        }
      }

LABEL_29:
      v37 = v13 - 1;
      v38 = *(v13 - 1);
      v39 = v13 - 2;
      v40 = *(v38 + 16);
      v41 = v11 + 3;
      v42 = v11[3];
      v43 = *(v42 + 16);
      v44 = *(*v9 + 16);
      if (v40 < v43)
      {
        v45 = v11[2];
        if (v44 >= v40)
        {
          v11[2] = *v39;
          v11[3] = v38;
          *v39 = v45;
          *(v13 - 1) = v42;
          if (*(*v9 + 16) >= v43)
          {
            goto LABEL_45;
          }

          *v39 = *(a2 - 4);
          *(a2 - 4) = v45;
          v41 = v13 - 1;
        }

        else
        {
          v11[2] = *(a2 - 4);
          *(a2 - 4) = v45;
        }

        v49 = a2 - 3;
        goto LABEL_44;
      }

      if (v44 < v40)
      {
        v46 = *v39;
        *v39 = *(a2 - 4);
        *(a2 - 4) = v46;
        v47 = *(v13 - 1);
        *(v13 - 1) = *(a2 - 3);
        *(a2 - 3) = v47;
        if (*(*(v13 - 1) + 16) < *(*v41 + 16))
        {
          v48 = v11[2];
          v11[2] = *v39;
          *v39 = v48;
          v49 = v13 - 1;
LABEL_44:
          v54 = *v41;
          *v41 = *v49;
          *v49 = v54;
        }
      }

LABEL_45:
      v55 = v13[3];
      v56 = v13 + 2;
      v57 = *(v55 + 16);
      v58 = v11 + 5;
      v59 = v11[5];
      v60 = *(v59 + 16);
      v61 = *(*v10 + 16);
      if (v57 < v60)
      {
        v62 = v11[4];
        if (v61 >= v57)
        {
          v11[4] = *v56;
          v11[5] = v55;
          *v56 = v62;
          v13[3] = v59;
          v55 = v59;
          if (*(*v10 + 16) >= v60)
          {
            goto LABEL_55;
          }

          *v56 = *(a2 - 6);
          *(a2 - 6) = v62;
          v58 = v13 + 3;
        }

        else
        {
          v11[4] = *(a2 - 6);
          *(a2 - 6) = v62;
        }

        v66 = a2 - 5;
        goto LABEL_54;
      }

      if (v61 < v57)
      {
        v63 = *v56;
        *v56 = *(a2 - 6);
        *(a2 - 6) = v63;
        v64 = v13[3];
        v13[3] = *(a2 - 5);
        *(a2 - 5) = v64;
        v55 = v13[3];
        if (*(v55 + 16) < *(*v58 + 16))
        {
          v65 = v11[4];
          v11[4] = *v56;
          *v56 = v65;
          v66 = v13 + 3;
LABEL_54:
          v67 = *v58;
          *v58 = *v66;
          *v66 = v67;
          v55 = v13[3];
        }
      }

LABEL_55:
      v68 = *v15;
      v69 = *(*v15 + 16);
      v70 = *v37;
      result = *(*v37 + 16);
      v71 = *(v55 + 16);
      if (v69 >= result)
      {
        v72 = *v13;
        if (v71 >= v69)
        {
          goto LABEL_65;
        }

        v73 = *v56;
        *v13 = *v56;
        v13[1] = v55;
        *v56 = v72;
        v13[3] = v68;
        if (v71 < result)
        {
          v74 = *v39;
          *v39 = v73;
          *v13 = v74;
LABEL_64:
          *v37 = v55;
          *v15 = v70;
          v72 = *v13;
          v68 = v13[1];
          goto LABEL_65;
        }

        v68 = v55;
        v72 = v73;
      }

      else
      {
        v72 = *v39;
        if (v71 < v69)
        {
          *v39 = *v56;
          *v56 = v72;
LABEL_63:
          v15 = v13 + 3;
          goto LABEL_64;
        }

        *v39 = *v13;
        *(v13 - 1) = v68;
        *v13 = v72;
        v13[1] = v70;
        if (v71 < result)
        {
          *v13 = *v56;
          *v56 = v72;
          v37 = v13 + 1;
          goto LABEL_63;
        }

        v68 = v70;
      }

LABEL_65:
      v75 = *v11;
      *v11 = v72;
      v11[1] = v68;
      *v13 = v75;
      --a3;
      if (a4)
      {
        goto LABEL_40;
      }

LABEL_66:
      v51 = *v11;
      v52 = v11[1];
      v53 = *(v52 + 16);
      if (*(*(v11 - 1) + 16) < v53)
      {
        goto LABEL_67;
      }

      if (v53 >= *(*v8 + 16))
      {
        v92 = v11 + 2;
        do
        {
          v11 = v92;
          if (v92 >= a2)
          {
            break;
          }

          v93 = *(v92[1] + 16);
          v92 += 2;
        }

        while (v53 >= v93);
      }

      else
      {
        v90 = v11;
        do
        {
          v11 = v90 + 2;
          v91 = *(v90[3] + 16);
          v90 += 2;
        }

        while (v53 >= v91);
      }

      v94 = a2;
      if (v11 < a2)
      {
        v95 = a2;
        do
        {
          v94 = v95 - 2;
          v96 = *(*(v95 - 1) + 16);
          v95 -= 2;
        }

        while (v53 < v96);
      }

      while (v11 < v94)
      {
        v97 = *v11;
        *v11 = *v94;
        *v94 = v97;
        v98 = v11[1];
        v11[1] = v94[1];
        v94[1] = v98;
        do
        {
          v99 = v11[3];
          v11 += 2;
        }

        while (v53 >= *(v99 + 16));
        do
        {
          v100 = *(v94 - 1);
          v94 -= 2;
        }

        while (v53 < *(v100 + 16));
      }

      if (v11 - 2 != v7)
      {
        *v7 = *(v11 - 2);
        v7[1] = *(v11 - 1);
      }

      a4 = 0;
      *(v11 - 2) = v51;
      *(v11 - 1) = v52;
    }
  }

  v122 = v11 + 2;
  v124 = v11 == a2 || v122 == a2;
  if (a4)
  {
    if (!v124)
    {
      v125 = 0;
      v126 = v11;
      do
      {
        v128 = v126[3];
        v129 = v126[1];
        v126 = v122;
        v130 = *(v128 + 16);
        if (v130 < *(v129 + 16))
        {
          v131 = *v122;
          v132 = v125;
          do
          {
            v133 = v11 + v132;
            v134 = *(v11 + v132 + 8);
            *(v133 + 2) = *(v11 + v132);
            *(v133 + 3) = v134;
            if (!v132)
            {
              v127 = v11;
              goto LABEL_133;
            }

            v132 -= 16;
          }

          while (v130 < *(*(v133 - 1) + 16));
          v127 = (v11 + v132 + 16);
LABEL_133:
          *v127 = v131;
          v127[1] = v128;
        }

        v122 = v126 + 2;
        v125 += 16;
      }

      while (v126 + 2 != a2);
    }
  }

  else if (!v124)
  {
    v170 = v11 + 3;
    do
    {
      v171 = v7[3];
      v172 = v7[1];
      v7 = v122;
      v173 = *(v171 + 16);
      if (v173 < *(v172 + 16))
      {
        v174 = *v7;
        v175 = v170;
        do
        {
          v176 = v175;
          v177 = *(v175 - 2);
          v175 -= 2;
          v178 = *(v176 - 4);
          *(v176 - 1) = *(v176 - 3);
          *v176 = v177;
        }

        while (v173 < *(v178 + 16));
        *(v175 - 1) = v174;
        *v175 = v171;
      }

      v122 = v7 + 2;
      v170 += 2;
    }

    while (v7 + 2 != a2);
  }

  return result;
}

uint64_t *sub_298C78404(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a2[1] + 16);
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = a3[1];
  v8 = *(v7 + 16);
  if (v4 >= *(result[1] + 16))
  {
    if (v8 < v4)
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (*(a2[1] + 16) < *(*v5 + 16))
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        v10 = result + 1;
        v13 = a2 + 1;
LABEL_10:
        v16 = *v10;
        *v10 = *v13;
        *v13 = v16;
        v7 = *v6;
      }
    }
  }

  else
  {
    v9 = *result;
    if (v8 < v4)
    {
      *result = *a3;
      *a3 = v9;
      v10 = result + 1;
LABEL_9:
      v13 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v9;
    v14 = result[1];
    result[1] = a2[1];
    a2[1] = v14;
    v7 = *v6;
    if (*(*v6 + 16) < *(v14 + 16))
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v10 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (*(a4[1] + 16) < *(v7 + 16))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    if (*(a3[1] + 16) < *(a2[1] + 16))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = a2[1];
      a2[1] = a3[1];
      a3[1] = v20;
      if (*(a2[1] + 16) < *(*v5 + 16))
      {
        v21 = *result;
        *result = *a2;
        *a2 = v21;
        v22 = result[1];
        result[1] = a2[1];
        a2[1] = v22;
      }
    }
  }

  return result;
}

BOOL sub_298C785B0(uint64_t *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        sub_298C78404(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v2 == 5)
      {
        sub_298C78404(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(*(a2 - 1) + 16) < *(a1[7] + 16))
        {
          v8 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v8;
          v9 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v9;
          v10 = a1[7];
          v11 = *(v10 + 16);
          v12 = a1[5];
          if (v11 < *(v12 + 16))
          {
            v13 = a1[6];
            v14 = a1[3];
            v15 = a1[4];
            a1[4] = v13;
            a1[5] = v10;
            a1[6] = v15;
            a1[7] = v12;
            if (v11 < *(v14 + 16))
            {
              v16 = a1[1];
              v17 = a1[2];
              a1[2] = v13;
              a1[3] = v10;
              a1[4] = v17;
              a1[5] = v14;
              if (v11 < *(v16 + 16))
              {
                v18 = *a1;
                *a1 = v13;
                a1[1] = v10;
                a1[2] = v18;
                a1[3] = v16;
                return 1;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    v19 = a1 + 3;
    v20 = a1[3];
    v21 = *(v20 + 16);
    v22 = a1 + 1;
    v23 = a1[1];
    v24 = *(v23 + 16);
    v25 = *(*(a2 - 1) + 16);
    if (v21 >= v24)
    {
      if (v25 >= v21)
      {
        return 1;
      }

      v36 = a1[2];
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v36;
      v37 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v37;
      if (*(a1[3] + 16) >= *(a1[1] + 16))
      {
        return 1;
      }

      v38 = *a1;
      *a1 = a1[2];
      a1[2] = v38;
    }

    else
    {
      v26 = *a1;
      if (v25 >= v21)
      {
        *a1 = a1[2];
        a1[1] = v20;
        a1[2] = v26;
        a1[3] = v23;
        if (*(*(a2 - 1) + 16) >= v24)
        {
          return 1;
        }

        a1[2] = *(a2 - 2);
        *(a2 - 2) = v26;
        v22 = a1 + 3;
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a2 - 2) = v26;
      }

      v19 = a2 - 1;
    }

    v42 = *v22;
    *v22 = *v19;
    *v19 = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(*(a2 - 1) + 16) < *(a1[1] + 16))
    {
      v3 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v3;
      v4 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_17:
  v27 = a1[3];
  v28 = *(v27 + 16);
  v30 = a1 + 1;
  v29 = a1[1];
  v31 = *(v29 + 16);
  v33 = a1 + 5;
  v32 = a1[5];
  v34 = *(v32 + 16);
  if (v28 < v31)
  {
    v35 = *a1;
    if (v34 >= v28)
    {
      *a1 = a1[2];
      a1[1] = v27;
      a1[2] = v35;
      a1[3] = v29;
      if (v34 >= v31)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v35;
      v30 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v35;
    }

    goto LABEL_33;
  }

  if (v34 < v28)
  {
    v39 = a1[2];
    v40 = a1[4];
    a1[2] = v40;
    a1[3] = v32;
    a1[4] = v39;
    a1[5] = v27;
    if (v34 < v31)
    {
      v41 = *a1;
      *a1 = v40;
      a1[2] = v41;
      v33 = a1 + 3;
LABEL_33:
      *v30 = v32;
      *v33 = v29;
    }
  }

LABEL_34:
  v43 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  v46 = a1 + 4;
  while (1)
  {
    v47 = v43[1];
    v48 = *(v47 + 16);
    if (v48 < *(v46[1] + 16))
    {
      break;
    }

LABEL_43:
    v46 = v43;
    v44 += 16;
    v43 += 2;
    if (v43 == a2)
    {
      return 1;
    }
  }

  v49 = *v43;
  v50 = v44;
  do
  {
    v51 = (a1 + v50);
    v52 = *(a1 + v50 + 40);
    v51[6] = *(a1 + v50 + 32);
    v51[7] = v52;
    if (v50 == -32)
    {
      *a1 = v49;
      a1[1] = v47;
      if (++v45 != 8)
      {
        goto LABEL_43;
      }

      return v43 + 2 == a2;
    }

    v50 -= 16;
  }

  while (v48 < *(v51[3] + 16));
  v53 = a1 + v50;
  *(v53 + 6) = v49;
  *(v53 + 7) = v47;
  if (++v45 != 8)
  {
    goto LABEL_43;
  }

  return v43 + 2 == a2;
}

uint64_t sub_298C78974(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if ((v4 & 1) == 0)
  {
    v5(v6, *(a1 + 32));
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = *(a1 + 32);
  (*(*v6 + v5))();
  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
LABEL_5:
    v10 = MEMORY[0x29C2943C0]();
    MEMORY[0x29C2945F0](v10, 0x20C4093837F09);
  }

LABEL_6:
  MEMORY[0x29C2945F0](a1, 0x10A0C402255ADFBLL);
  return 0;
}

uint64_t sub_298C78A28(uint64_t a1, unint64_t a2)
{
  *&v56[23] = *MEMORY[0x29EDCA608];
  inputStruct = 64;
  v53 = a2;
  v54 = 0;
  outputStructCnt = 20;
  v3 = IOConnectCallStructMethod(*(a1 + 4), 0, &inputStruct, 0x14uLL, outputStruct, &outputStructCnt);
  if (v3)
  {
    v4 = v3;
    sub_298ADC8F4(&v48, a2);
    std::generic_category();
    v5 = 0;
    v19[0] = "Topology.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    LODWORD(__p) = 3487281;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "uint64_t llvm::applehwtrace::AppleHWAccess::read(uint64_t) const";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "AppleHWAccess::read(";
    v30 = 770;
    v31[0] = v29;
    v31[2] = &v48;
    v32 = 1026;
    v33[0] = v31;
    v33[2] = ")";
    v34 = 770;
    v6 = v4;
    v35[0] = v33;
    v35[2] = " (err=";
    v7 = v56;
    v36 = 770;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v37[0] = v35;
    v37[2] = &__dst;
    v38 = 1026;
    *&v39 = v37;
    *&v40 = ") ";
    LOWORD(v41) = 770;
    if (mach_error_string(v4))
    {
      v9 = mach_error_string(v4);
      if (*v9)
      {
LABEL_12:
        *&v42 = &v39;
        *&v43 = v9;
        LOWORD(v44) = 770;
        v10 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      v9 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_12;
      }
    }

    v42 = v39;
    v43 = v40;
    v44 = v41;
    v10 = v41;
    if (!v41)
    {
      v12 = 1;
      goto LABEL_18;
    }

    if (v41 == 1)
    {
      v45[0] = "\n";
      v12 = 1;
      v10 = 3;
      goto LABEL_18;
    }

LABEL_13:
    if (BYTE1(v44) != 1)
    {
      v10 = 2;
    }

    v11 = &v42;
    if (BYTE1(v44) == 1)
    {
      v11 = v42;
    }

    v45[0] = v11;
    v45[1] = *(&v42 + 1);
    v45[2] = "\n";
    v12 = 3;
LABEL_18:
    v46 = v10;
    v47 = v12;
    sub_298B996A4(v45, &v55);
    operator new();
  }

  result = v51;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C78EE8()
{
  v1 = *MEMORY[0x29EDCA608];
  outputStructCnt = 20;
  operator new[]();
}

uint64_t sub_298C79530(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v69 = *MEMORY[0x29EDCA608];
  inputStruct = 64;
  v65 = a2;
  v66 = a3;
  outputStructCnt = 20;
  if (*(a1 + 1) != 1)
  {
    goto LABEL_25;
  }

  v6 = sub_298B9CDFC();
  v7 = v6;
  v8 = v6[4];
  if ((v6[3] - v8) > 5)
  {
    *(v8 + 4) = 10341;
    *v8 = 1953067639;
    v6[4] += 6;
  }

  else
  {
    sub_298B9BCEC(v6, "write(", 6uLL);
  }

  sub_298ADC8F4(&v68, a2);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v68;
  }

  else
  {
    v9 = v68.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v68.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(v7, v9, size);
  v11 = *(v7 + 32);
  if (*(v7 + 24) - v11 > 3uLL)
  {
    *v11 = 540876841;
    *(v7 + 32) += 4;
  }

  else
  {
    sub_298B9BCEC(v7, ") = ", 4uLL);
  }

  sub_298ADC8F4(&v58, a3);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v58;
  }

  else
  {
    v12 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v58.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(v7, v12, v13);
  v14 = *(v7 + 32);
  if (*(v7 + 24) != v14)
  {
    *v14 = 10;
    ++*(v7 + 32);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_49:
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      v15 = sub_298B9CDFC();
      v16 = v15[2];
      if (v15[4] == v16)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_50;
  }

  sub_298B9BCEC(v7, "\n", 1uLL);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_49;
  }

LABEL_22:
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_50:
  operator delete(v68.__r_.__value_.__l.__data_);
  v15 = sub_298B9CDFC();
  v16 = v15[2];
  if (v15[4] != v16)
  {
LABEL_24:
    v15[4] = v16;
    sub_298B9BB84(v15);
  }

LABEL_25:
  result = IOConnectCallStructMethod(*(a1 + 4), 1u, &inputStruct, 0x14uLL, outputStruct, &outputStructCnt);
  if (result)
  {
    v18 = result;
    sub_298ADC8F4(&v61, a2);
    std::generic_category();
    v19 = 0;
    v32[0] = "Topology.cpp";
    v32[2] = ":";
    v33 = 771;
    v31 = 3;
    LODWORD(__p) = 3551538;
    v34[0] = v32;
    v34[2] = &__p;
    v35 = 1026;
    v36[0] = v34;
    v36[2] = ": ";
    v37 = 770;
    v38[0] = v36;
    v38[2] = "void llvm::applehwtrace::AppleHWAccess::write(uint64_t, uint64_t) const";
    v39 = 770;
    v40[0] = v38;
    v40[2] = ": ";
    v41 = 770;
    v42[0] = v40;
    v42[2] = "AppleHWAccess::write(";
    v43 = 770;
    v44[0] = v42;
    v44[2] = &v61;
    v45 = 1026;
    v46[0] = v44;
    v46[2] = ")";
    v47 = 770;
    v20 = v18;
    v48[0] = v46;
    v48[2] = " (err=";
    v21 = &v68.__r_.__value_.__s.__data_[17];
    v49 = 770;
    do
    {
      *--v21 = a0123456789abcd_1[v20 & 0xF];
      ++v19;
      v22 = v20 >= 0x10;
      v20 >>= 4;
    }

    while (v22);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    v29 = v19;
    if (v19)
    {
      memcpy(&__dst, v21, v19);
    }

    *(&__dst + v19) = 0;
    v50[0] = v48;
    v50[2] = &__dst;
    v51 = 1026;
    *&v52 = v50;
    *&v53 = ") ";
    LOWORD(v54) = 770;
    if (mach_error_string(v18))
    {
      v23 = mach_error_string(v18);
      if (*v23)
      {
LABEL_36:
        *&v55 = &v52;
        *&v56 = v23;
        LOWORD(v57) = 770;
        v24 = 2;
        goto LABEL_37;
      }
    }

    else
    {
      v23 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_36;
      }
    }

    v55 = v52;
    v56 = v53;
    v57 = v54;
    v24 = v54;
    if (!v54)
    {
      v26 = 1;
      goto LABEL_42;
    }

    if (v54 == 1)
    {
      v58.__r_.__value_.__r.__words[0] = "\n";
      v26 = 1;
      v24 = 3;
      goto LABEL_42;
    }

LABEL_37:
    if (BYTE1(v57) != 1)
    {
      v24 = 2;
    }

    v25 = &v55;
    if (BYTE1(v57) == 1)
    {
      v25 = v55;
    }

    v58.__r_.__value_.__r.__words[0] = v25;
    v58.__r_.__value_.__l.__size_ = *(&v55 + 1);
    v58.__r_.__value_.__r.__words[2] = "\n";
    v26 = 3;
LABEL_42:
    v59 = v24;
    v60 = v26;
    sub_298B996A4(&v58, &v67);
    operator new();
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C79B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v70[23] = *MEMORY[0x29EDCA608];
  v67 = a2;
  v68 = a3;
  outputStructCnt = 20;
  v6 = IOConnectCallStructMethod(*(a1 + 4), 2u, inputStruct, 0x14uLL, outputStruct, &outputStructCnt);
  if (v6)
  {
    v7 = v6;
    std::generic_category();
    v8 = 0;
    v31[0] = "Topology.cpp";
    v32 = ":";
    v33 = 771;
    v30 = 3;
    v34[0] = v31;
    v35 = __p;
    v36 = 1026;
    v37[0] = v34;
    v38 = ": ";
    v39 = 770;
    v40[0] = v37;
    v41 = "Expected<StringRef> llvm::applehwtrace::AppleHWAccess::mmap(uint64_t, uint64_t) const";
    v42 = 770;
    v43[0] = v40;
    v44 = ": ";
    v45 = 770;
    v46[0] = v43;
    v47 = "kAppleHWAccessMethodMemoryMap failed";
    v48 = 770;
    v49[0] = v46;
    v50 = " (err=";
    v9 = v7;
    v51 = 770;
    v10 = v70;
    __p[0] = 3684402;
    do
    {
      *--v10 = a0123456789abcd_1[v9 & 0xF];
      ++v8;
      v11 = v9 >= 0x10;
      v9 >>= 4;
    }

    while (v11);
    if (v8 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v8 > 0x16)
      {
        operator new();
      }

      v28 = v8;
      if (v8)
      {
        memcpy(&__dst, v10, v8);
      }

      *(&__dst + v8) = 0;
      v52[0] = v49;
      p_dst = &__dst;
      v54 = 1026;
      *&v55 = v52;
      *&v56 = ") ";
      LOWORD(v57) = 770;
      if (mach_error_string(v7))
      {
        v18 = mach_error_string(v7);
        if (!*v18)
        {
LABEL_20:
          v58 = v55;
          v59 = v56;
          v60 = v57;
          v19 = v57;
          if (v57)
          {
            if (v57 == 1)
            {
LABEL_22:
              v61[0] = "\n";
              v20 = 1;
              v19 = 3;
              goto LABEL_31;
            }

            goto LABEL_35;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v18 = "unknown error";
        if (!aUnknownError[0])
        {
          goto LABEL_20;
        }
      }

LABEL_29:
      *&v58 = &v55;
      *&v59 = v18;
      LOWORD(v60) = 770;
      v19 = 2;
      v24 = &v58;
LABEL_30:
      v61[0] = v24;
      v61[1] = v17;
      v61[2] = "\n";
      v20 = 3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  v25 = 0;
  v26 = 0;
  result = MEMORY[0x29C294030](*(a1 + 4), 0, *MEMORY[0x29EDCA6B0], &v26, &v25, 4353);
  if (result)
  {
    v13 = result;
    std::generic_category();
    v14 = 0;
    v31[0] = "Topology.cpp";
    v32 = ":";
    v33 = 771;
    v30 = 3;
    v34[0] = v31;
    v35 = __p;
    v36 = 1026;
    v37[0] = v34;
    v38 = ": ";
    v39 = 770;
    v40[0] = v37;
    v41 = "Expected<StringRef> llvm::applehwtrace::AppleHWAccess::mmap(uint64_t, uint64_t) const";
    v42 = 770;
    v43[0] = v40;
    v44 = ": ";
    v45 = 770;
    v46[0] = v43;
    v47 = "kIOMapReadOnly failed";
    v48 = 770;
    v49[0] = v46;
    v50 = " (err=";
    v15 = v13;
    v51 = 770;
    v16 = v70;
    __p[0] = 3619122;
    do
    {
      *--v16 = a0123456789abcd_1[v15 & 0xF];
      ++v14;
      v11 = v15 >= 0x10;
      v15 >>= 4;
    }

    while (v11);
    if (v14 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v14 > 0x16)
      {
        operator new();
      }

      v28 = v14;
      if (v14)
      {
        memcpy(&__dst, v16, v14);
      }

      *(&__dst + v14) = 0;
      v52[0] = v49;
      p_dst = &__dst;
      v54 = 1026;
      *&v55 = v52;
      *&v56 = ") ";
      LOWORD(v57) = 770;
      if (mach_error_string(v13))
      {
        v18 = mach_error_string(v13);
        if (*v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_29;
        }
      }

      v58 = v55;
      v59 = v56;
      v60 = v57;
      v19 = v57;
      if (v57)
      {
        if (v57 == 1)
        {
          goto LABEL_22;
        }

LABEL_35:
        v17 = *(&v58 + 1);
        v24 = &v58;
        if (BYTE1(v60) == 1)
        {
          v24 = v58;
        }

        else
        {
          v19 = 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      v20 = 1;
LABEL_31:
      v62 = v19;
      v63 = v20;
      sub_298B996A4(v61, &v69);
      operator new();
    }

LABEL_39:
    sub_298ADDDA0();
  }

  v22 = v25;
  v21 = v26;
  *(a4 + 16) &= ~1u;
  *a4 = v21;
  *(a4 + 8) = v22;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C7A238@<X0>(unsigned int a1@<W1>, int a2@<W2>, void *a3@<X8>)
{
  v22 = a1;
  result = sysctlbyname("kern.sched_thread_bind_cpu", 0, 0, &v22, 4uLL);
  v6 = result;
  if (!a2)
  {
LABEL_6:
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v7 = sub_298B9CDFC();
  v8 = v7;
  v9 = v7[4];
  if ((v7[3] - v9) <= 0x10)
  {
    sub_298B9BCEC(v7, "Binding to core: ", 0x11uLL);
    v10 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = sub_298B8FC48(v8, v10, 0, 0, 0);
    v11 = v8[4];
    if (v8[3] == v11)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  *(v9 + 16) = 32;
  *v9 = *"Binding to core: ";
  v7[4] += 17;
  v10 = v22;
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  result = sub_298B8FC48(v8, -v10, 0, 0, 1);
  v11 = v8[4];
  if (v8[3] == v11)
  {
LABEL_5:
    result = sub_298B9BCEC(v8, "\n", 1uLL);
    goto LABEL_6;
  }

LABEL_10:
  *v11 = 10;
  ++v8[4];
  if (v6)
  {
LABEL_7:
    std::generic_category();
    v14[0] = "Topology.cpp";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3552563;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v21 = 770;
    sub_298B996A4(v20, &v23);
    operator new();
  }

LABEL_11:
  *a3 = 0;
  return result;
}

double sub_298C7A4D8@<D0>(uint64_t a1@<X8>)
{
  BYTE8(v33) = 0;
  v32 = 0uLL;
  LOBYTE(v33) = 0;
  v31 = 8;
  v2 = "kern.phys_carveout_pa";
  if (sysctlbyname("kern.phys_carveout_pa", &v32, &v31, 0, 0))
  {
    v3 = 1;
  }

  else
  {
    v3 = v32 == 0;
  }

  if (v3 && ((v2 = "kern.cputrace_carveout_pa", (v4 = sysctlbyname("kern.cputrace_carveout_pa", &v32, &v31, 0, 0)) != 0) || !v32))
  {
    if (v4)
    {
      std::generic_category();
      v19[0] = "Topology.cpp";
      v20 = ":";
      v21 = 771;
      v18 = 3;
      __p[0] = 3225651;
      v22[0] = v19;
      v23 = __p;
      v24 = 1026;
      v25[0] = v22;
      v26 = ": ";
      v27 = 770;
      goto LABEL_30;
    }
  }

  else if (*v2 == 0x7968702E6E72656BLL && *(v2 + 1) == 0x6F65767261635F73 && *(v2 + 13) == 0x61705F74756F6576)
  {
    v35[0] = 0;
    if (!sysctlbyname("kern.phys_carveout_va", v35, &v31, 0, 0))
    {
      if (v35[0])
      {
        *&v33 = v35[0];
        BYTE8(v33) = 1;
      }
    }
  }

  v31 = 8;
  if (sysctlbyname("kern.phys_carveout_size", &v32 + 8, &v31, 0, 0) || (v8 = *(&v32 + 1)) == 0)
  {
    if (sysctlbyname("kern.cputrace_carveout_size", &v32 + 8, &v31, 0, 0))
    {
      std::generic_category();
      v19[0] = "Topology.cpp";
      v20 = ":";
      v21 = 771;
      v18 = 3;
      __p[0] = 3356979;
      v22[0] = v19;
      v23 = __p;
      v24 = 1026;
      v25[0] = v22;
      v26 = ": ";
      v27 = 770;
      goto LABEL_30;
    }

    v8 = *(&v32 + 1);
  }

  v9 = getpagesize();
  v10 = __clz(v9);
  v11 = (v32 + (1 << (63 - v10)) - 1) & -(1 << (63 - v10));
  v12 = v11 - v32;
  *&v32 = v11;
  v13 = v8 >= v12;
  v14 = v8 - v12;
  if (v14 == 0 || !v13)
  {
    std::generic_category();
    v19[0] = "Topology.cpp";
    v20 = ":";
    v21 = 771;
    v18 = 3;
    __p[0] = 3289140;
    v22[0] = v19;
    v23 = __p;
    v24 = 1026;
    v25[0] = v22;
    v26 = ": ";
    v27 = 770;
    v28[0] = v25;
    v29 = "phys_carveout is unaligned and too small";
    v30 = 770;
    sub_298B996A4(v28, v34);
    operator new();
  }

  *(&v32 + 1) = v14 & -v9;
  if (*(&v32 + 1) < 0x80uLL)
  {
    std::generic_category();
    v19[0] = "Topology.cpp";
    v20 = ":";
    v21 = 771;
    v18 = 3;
    __p[0] = 3485748;
    v22[0] = v19;
    v23 = __p;
    v24 = 1026;
    v25[0] = v22;
    v26 = ": ";
    v27 = 770;
    v7 = "phys_carveout is too small";
LABEL_30:
    v28[0] = v25;
    v29 = v7;
    v30 = 770;
    sub_298B996A4(v28, v34);
    operator new();
  }

  *(a1 + 32) &= ~1u;
  result = *&v32;
  v16 = v33;
  *a1 = v32;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_298C7AA7C@<X0>(BOOL *a1@<X8>)
{
  v2 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/chosen");
  if (!v2)
  {
    std::generic_category();
    v10[0] = "Topology.cpp";
    v11 = ":";
    v12 = 771;
    v9 = 3;
    __p[0] = 3683382;
    v13[0] = v10;
    v14 = __p;
    v15 = 1026;
    v16[0] = v13;
    v17 = ": ";
    v18 = 770;
    v19[0] = v16;
    v20 = "Could not open IODeviceTree:/chosen to find dev-fuse status.";
    v21 = 770;
    sub_298B996A4(v19, v22);
    operator new();
  }

  v3 = v2;
  theDict = 0;
  if (IORegistryEntryCreateCFProperties(v2, &theDict, *MEMORY[0x29EDB8ED8], 0))
  {
    std::generic_category();
    v10[0] = "Topology.cpp";
    v11 = ":";
    v12 = 771;
    v9 = 3;
    __p[0] = 3487030;
    v13[0] = v10;
    v14 = __p;
    v15 = 1026;
    v16[0] = v13;
    v17 = ": ";
    v18 = 770;
    v19[0] = v16;
    v20 = "Could not get IODeviceTree:/chosen properties";
    v21 = 770;
    sub_298B996A4(v19, v22);
    operator new();
  }

  Value = CFDictionaryGetValue(theDict, @"development-cert");
  if (Value)
  {
    v5 = *CFDataGetBytePtr(Value) == 0;
  }

  else
  {
    v5 = 0;
  }

  a1[8] &= ~1u;
  *a1 = v5;
  CFRelease(theDict);
  return IOObjectRelease(v3);
}

uint64_t sub_298C7AE20@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v75 = *MEMORY[0x29EDCA608];
  result = sub_298C7AA7C(&v68);
  if ((v69 & 1) == 0 || (v5 = v68, v68 = 0, !v5))
  {
    if ((a1 & 0x100) != 0)
    {
      v7 = *MEMORY[0x29EDBB110];
      v8 = IOServiceNameMatching("AppleHWAccess");
      MatchingService = IOServiceGetMatchingService(v7, v8);
      if (MatchingService)
      {
        LODWORD(v56[0]) = 0;
        if (IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, v56))
        {
          std::generic_category();
          v59[0] = "Topology.cpp";
          v60 = ":";
          v61 = 771;
          HIBYTE(v52) = 3;
          LODWORD(v51[0]) = 3747889;
          v72[0] = v59;
          v73 = v51;
          v74 = 1026;
          *v62 = v72;
          v63 = ": ";
          v64 = 770;
          v66.__r_.__value_.__r.__words[0] = v62;
          v66.__r_.__value_.__r.__words[2] = "On embedded OS, your executable must be located under /usr/local/bin; on macOS, you must be root.";
          v67 = 770;
          sub_298B996A4(&v66, __p);
          operator new();
        }

        operator new();
      }

      std::generic_category();
      v59[0] = "Topology.cpp";
      v60 = ":";
      v61 = 771;
      HIBYTE(v52) = 2;
      strcpy(v51, "98");
      v72[0] = v59;
      v73 = v51;
      v74 = 1026;
      *v62 = v72;
      v63 = ": ";
      v64 = 770;
      v66.__r_.__value_.__r.__words[0] = v62;
      v66.__r_.__value_.__r.__words[2] = "Could not find AppleHWAccess";
      v67 = 770;
      sub_298B996A4(&v66, __p);
      operator new();
    }

    v47 = 0;
    v48 = 0;
    v56[0] = 8;
    if (sysctlbyname("hw.cpufamily", &v48, v56, 0, 0))
    {
      std::generic_category();
      v59[0] = "Topology.cpp";
      v60 = ":";
      v61 = 771;
      HIBYTE(v52) = 3;
      LODWORD(v51[0]) = 3553590;
      v72[0] = v59;
      v73 = v51;
      v74 = 1026;
      *v62 = v72;
      v63 = ": ";
      v64 = 770;
      v6 = "hw.cpufamily failed";
      goto LABEL_12;
    }

    v56[0] = 8;
    if (sysctlbyname("hw.cpusubfamily", &v47, v56, 0, 0))
    {
      std::generic_category();
      v59[0] = "Topology.cpp";
      v60 = ":";
      v61 = 771;
      HIBYTE(v52) = 3;
      LODWORD(v51[0]) = 3289143;
      v72[0] = v59;
      v73 = v51;
      v74 = 1026;
      *v62 = v72;
      v63 = ": ";
      v64 = 770;
      v6 = "hw.cpusubfamily failed";
      goto LABEL_12;
    }

    v10 = *MEMORY[0x29EDBB110];
    v11 = IOServiceNameMatching("arm-io");
    v12 = IOServiceGetMatchingService(v10, v11);
    if (!v12)
    {
      std::generic_category();
      v59[0] = "Topology.cpp";
      v60 = ":";
      v61 = 771;
      HIBYTE(v52) = 3;
      LODWORD(v51[0]) = 3747895;
      v72[0] = v59;
      v73 = v51;
      v74 = 1026;
      *v62 = v72;
      v63 = ": ";
      v64 = 770;
      v6 = "Could not find arm-io service";
LABEL_12:
      v66.__r_.__value_.__r.__words[0] = v62;
      v66.__r_.__value_.__r.__words[2] = v6;
      v67 = 770;
      sub_298B996A4(&v66, __p);
      operator new();
    }

    v14 = v47;
    v13 = v48;
    properties = 0;
    if (IORegistryEntryCreateCFProperties(v12, &properties, *MEMORY[0x29EDB8ED8], 0))
    {
      v59[0] = "Topology.cpp";
      v60 = ":";
      v61 = 771;
      std::generic_category();
      HIBYTE(v52) = 3;
      LODWORD(v51[0]) = 3355444;
      v72[0] = v59;
      v73 = v51;
      v74 = 1026;
      *v62 = v72;
      v63 = ": ";
      v64 = 770;
      v66.__r_.__value_.__r.__words[0] = v62;
      v66.__r_.__value_.__r.__words[2] = "Could not find SoC in device tree";
      v67 = 770;
      sub_298B996A4(&v66, __p);
      operator new();
    }

    Value = CFDictionaryGetValue(properties, @"soc-generation");
    if (!Value)
    {
      v59[0] = "Topology.cpp";
      v60 = ":";
      v61 = 771;
      std::generic_category();
      HIBYTE(v52) = 3;
      LODWORD(v51[0]) = 3159092;
      v72[0] = v59;
      v73 = v51;
      v74 = 1026;
      *v62 = v72;
      v63 = ": ";
      v64 = 770;
      v66.__r_.__value_.__r.__words[0] = v62;
      v66.__r_.__value_.__r.__words[2] = "Could not find soc-generation";
      v67 = 770;
      sub_298B996A4(&v66, __p);
      operator new();
    }

    mainPort = v10;
    v17 = Value;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v17);
    if (BytePtr)
    {
      v20 = Length;
      if (Length > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_107;
      }

      if (Length >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = Length;
      if (Length)
      {
        memmove(&__dst, BytePtr, Length);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
      LODWORD(BytePtr) = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      size = __dst.__r_.__value_.__l.__size_;
      v22 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      size = 0;
      v22 = 0;
      memset(&__dst, 0, sizeof(__dst));
    }

    v23 = BytePtr;
    if (BytePtr < 0)
    {
      v23 = size;
    }

    if (!v23)
    {
      goto LABEL_65;
    }

    v24 = BytePtr >= 0 ? &__dst : v22;
    if (v24->__r_.__value_.__s.__data_[0] != 72 || (BytePtr >= 0 ? (v25 = &__dst) : (v25 = v22), v23 - 1 >= 2 ? (v26 = 2) : (v26 = v23 - 1), (__s.__r_.__value_.__r.__words[0] = 0, v27 = sub_298B97354(&v25->__r_.__value_.__s.__data_[1], v26, 0xAu, &__s), LODWORD(BytePtr) = SHIBYTE(__dst.__r_.__value_.__r.__words[2]), size = __dst.__r_.__value_.__l.__size_, v22 = __dst.__r_.__value_.__r.__words[0], !v27) && __s.__r_.__value_.__r.__words[0] < 0xF))
    {
LABEL_65:
      if (BytePtr >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v22;
      }

      if (BytePtr >= 0)
      {
        v32 = BytePtr;
      }

      else
      {
        v32 = size;
      }

      if ((sub_298BE6DC0(p_dst, v32) & 0x100000000) == 0)
      {
        v51[0] = "Topology.cpp";
        v52 = ":";
        v53 = 771;
        std::generic_category();
        v50 = 3;
        LODWORD(v49) = 3487028;
        __p[0] = v51;
        __p[2] = &v49;
        v58 = 1026;
        v59[0] = __p;
        v60 = ": ";
        v61 = 770;
        v72[0] = v59;
        v73 = "Unsupported soc-generation ";
        v74 = 770;
        *v62 = v72;
        v63 = &__dst;
        v64 = 1026;
        v66.__r_.__value_.__r.__words[0] = v62;
        v66.__r_.__value_.__r.__words[2] = ". note: H12 devices like (e.g. iPhone 11 variants) aren't supported due to 55118318.";
        v67 = 770;
        sub_298B996A4(&v66, v56);
        operator new();
      }

      v33 = CFDictionaryGetValue(properties, @"chip-revision");
      if (v33)
      {
        if (v13 == 458787763 && v14 == 1 && *CFDataGetBytePtr(v33) <= 1u)
        {
          v59[0] = "Topology.cpp";
          v60 = ":";
          v61 = 771;
          std::generic_category();
          HIBYTE(v52) = 3;
          LODWORD(v51[0]) = 3421748;
          v72[0] = v59;
          v73 = v51;
          v74 = 1026;
          *v62 = v72;
          v63 = ": ";
          v64 = 770;
          v34 = "Chip not supported";
          goto LABEL_95;
        }

        v35 = CFDictionaryGetValue(properties, @"device_type");
        if (v35)
        {
          v36 = v35;
          v37 = CFDataGetBytePtr(v35);
          v38 = CFDataGetLength(v36);
          v71 = 0;
          *&__s.__r_.__value_.__r.__words[1] = 0uLL;
          __s.__r_.__value_.__r.__words[0] = 0x100003E00;
          if (v38)
          {
            v39 = 0;
            while (((*(__s.__r_.__value_.__r.__words + ((v37[v39] >> 3) & 0x18)) >> v37[v39]) & 1) != 0)
            {
              if (v38 == ++v39)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
LABEL_83:
            v39 = -1;
          }

          if (v39 >= v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }

          v71 = 0;
          *&__s.__r_.__value_.__r.__words[1] = 0uLL;
          __s.__r_.__value_.__r.__words[0] = 0x100003E00;
          v41 = v38 - v40;
          v42 = v38 - 1;
          do
          {
            v43 = v41;
            if (!v41)
            {
              if (v37)
              {
                *(&__s.__r_.__value_.__s + 23) = 0;
                __s.__r_.__value_.__s.__data_[0] = 0;
              }

              else
              {
                memset(&__s, 0, sizeof(__s));
              }

              goto LABEL_99;
            }

            --v41;
            v44 = v37[v42--];
          }

          while (((*(__s.__r_.__value_.__r.__words + ((v44 >> 3) & 0x18)) >> v44) & 1) != 0);
          if (v43 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v43 >= 0x17)
            {
              operator new();
            }

            *(&__s.__r_.__value_.__s + 23) = v43;
            memmove(&__s, &v37[v40], v43);
            __s.__r_.__value_.__s.__data_[v43] = 0;
LABEL_99:
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            CFRelease(properties);
            memset(&__dst, 0, sizeof(__dst));
            v45 = IOServiceNameMatching("AppleARMPE");
            if (IOServiceGetMatchingService(mainPort, v45))
            {
              iterator = 0;
              if (MEMORY[0x29C294150]())
              {
                v59[0] = "Topology.cpp";
                v60 = ":";
                v61 = 771;
                std::generic_category();
                HIBYTE(v52) = 3;
                LODWORD(v51[0]) = 3485749;
                v72[0] = v59;
                v73 = v51;
                v74 = 1026;
                *v62 = v72;
                v63 = ": ";
                v64 = 770;
                v66.__r_.__value_.__r.__words[0] = v62;
                v66.__r_.__value_.__r.__words[2] = "Failed to iterate ARMPE nub";
                v67 = 770;
                sub_298B996A4(&v66, __p);
                operator new();
              }

              operator new();
            }

            v59[0] = "Topology.cpp";
            v60 = ":";
            v61 = 771;
            std::generic_category();
            HIBYTE(v52) = 3;
            LODWORD(v51[0]) = 3684660;
            v72[0] = v59;
            v73 = v51;
            v74 = 1026;
            *v62 = v72;
            v63 = ": ";
            v64 = 770;
            v66.__r_.__value_.__r.__words[0] = v62;
            v66.__r_.__value_.__r.__words[2] = "Missing AppleARMPE registry info";
            v67 = 770;
            sub_298B996A4(&v66, __p);
            operator new();
          }

LABEL_107:
          sub_298ADDDA0();
        }

        v59[0] = "Topology.cpp";
        v60 = ":";
        v61 = 771;
        std::generic_category();
        HIBYTE(v52) = 3;
        LODWORD(v51[0]) = 3159860;
        v72[0] = v59;
        v73 = v51;
        v74 = 1026;
        *v62 = v72;
        v63 = ": ";
        v64 = 770;
        v34 = "Could not find device_type";
      }

      else
      {
        v59[0] = "Topology.cpp";
        v60 = ":";
        v61 = 771;
        std::generic_category();
        HIBYTE(v52) = 3;
        LODWORD(v51[0]) = 3225140;
        v72[0] = v59;
        v73 = v51;
        v74 = 1026;
        *v62 = v72;
        v63 = ": ";
        v64 = 770;
        v34 = "Could not find chip-revision";
      }

LABEL_95:
      v66.__r_.__value_.__r.__words[0] = v62;
      v66.__r_.__value_.__r.__words[2] = v34;
      v67 = 770;
      sub_298B996A4(&v66, __p);
      operator new();
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &__dst;
    }

    else
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = __dst.__r_.__value_.__l.__size_;
    }

    if (v29 <= 3)
    {
      if (v28)
      {
        *(&__s.__r_.__value_.__s + 23) = v29;
        if (!v29)
        {
LABEL_57:
          __s.__r_.__value_.__s.__data_[v29] = 0;
LABEL_59:
          if ((BytePtr & 0x80000000) != 0)
          {
            operator delete(v22);
          }

          __dst = __s;
          if ((v14 - 2) > 3)
          {
            v30 = "P";
          }

          else
          {
            v30 = off_29EEB69F0[(v14 - 2)];
          }

          std::string::append(&__dst, v30);
          LOBYTE(BytePtr) = *(&__dst.__r_.__value_.__s + 23);
          size = __dst.__r_.__value_.__l.__size_;
          v22 = __dst.__r_.__value_.__r.__words[0];
          goto LABEL_65;
        }

LABEL_56:
        memcpy(&__s, v28, v29);
        goto LABEL_57;
      }
    }

    else if (v28)
    {
      v29 = 3;
      *(&__s.__r_.__value_.__s + 23) = 3;
      goto LABEL_56;
    }

    memset(&__s, 0, sizeof(__s));
    goto LABEL_59;
  }

  *(a2 + 8) |= 1u;
  *a2 = v5;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C7DF6C(uint64_t result, uint64_t a2)
{
  if (a2 == 5)
  {
    if (*result == 842020468 && *(result + 4) == 48)
    {
      sub_298C81D40();
    }

    if (*result == 842020468 && *(result + 4) == 49)
    {
      sub_298C82E1C();
    }

    if (*result == 842020468 && *(result + 4) == 50)
    {
      sub_298C840C8();
    }

    if (*result == 858797684 && *(result + 4) == 48)
    {
      sub_298C86344();
    }

    if (*result == 858797684 && *(result + 4) == 49)
    {
      sub_298C87418();
    }

    if (*result == 858797684 && *(result + 4) == 50)
    {
      sub_298C88700();
    }

    if (*result == 858797684 && *(result + 4) == 52)
    {
      sub_298C8A9AC();
    }

    if (*result == 875574900 && *(result + 4) == 48)
    {
      sub_298C8BC64();
    }

    if (*result == 875574900 && *(result + 4) == 49)
    {
      sub_298C8BC64();
    }

    if (*result == 825309300 && *(result + 4) == 48)
    {
      sub_298C8CF0C();
    }

    if (*result == 825309300 && *(result + 4) == 50)
    {
      sub_298C8DCF8();
    }

    if (*result == 842086516 && *(result + 4) == 48)
    {
      sub_298C8EA40();
    }

    if (*result == 842086516 && *(result + 4) == 50)
    {
      sub_298C8F77C();
    }

    if (*result == 858863732 && *(result + 4) == 48)
    {
      sub_298C906B4();
    }

    if (*result == 858863732 && *(result + 4) == 50)
    {
      sub_298C915BC();
    }

    if (*result == 875640948 && *(result + 4) == 48)
    {
      sub_298C924EC();
    }

    if (*result == 875640948 && *(result + 4) == 50)
    {
      sub_298C935DC();
    }

    if (*result == 892418164 && *(result + 4) == 48)
    {
      sub_298C948AC();
    }

    if (*result == 825440372 && *(result + 4) == 48)
    {
      sub_298C95970();
    }
  }

  return result;
}

void sub_298C817E0(void ***a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xD37A6F4DE9BD37A7 * (v5 - *a1);
    if (v7 + 1 > 0x1642C8590B21642)
    {
      sub_298ADDDA0();
    }

    v8 = 0xD37A6F4DE9BD37A7 * (v4 - *a1);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xB21642C8590B21)
    {
      v10 = 0x1642C8590B21642;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x1642C8590B21642)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v20 = 8 * (v5 - *a1);
    if (*(a2 + 23) < 0)
    {
      sub_298AFE11C(v20, *a2, *(a2 + 1));
    }

    else
    {
      *v20 = *a2;
      *(v20 + 16) = *(a2 + 2);
    }

    *(v20 + 24) = *(a2 + 24);
    *(v20 + 40) = *(a2 + 40);
    *(v20 + 56) = *(a2 + 14);
    if (*(a2 + 87) < 0)
    {
      sub_298AFE11C((v20 + 64), *(a2 + 8), *(a2 + 9));
    }

    else
    {
      *(v20 + 64) = a2[4];
      *(v20 + 80) = *(a2 + 10);
    }

    *(v20 + 104) = *(a2 + 104);
    *(v20 + 120) = *(a2 + 120);
    *(v20 + 136) = *(a2 + 136);
    *(v20 + 88) = *(a2 + 88);
    v21 = *(a2 + 20);
    *(v20 + 152) = *(a2 + 19);
    *(v20 + 160) = 0;
    *(v20 + 168) = 0;
    *(v20 + 176) = 0;
    v22 = *(a2 + 21);
    if (v22 != v21)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v22 - v21) >> 4) <= 0x333333333333333)
      {
        operator new();
      }

LABEL_52:
      sub_298ADDDA0();
    }

    v19 = v20 + 184;
    v23 = *a1;
    v24 = a1[1];
    v25 = v20 + *a1 - v24;
    if (v24 == *a1)
    {
LABEL_49:
      *a1 = v25;
      a1[1] = v19;
      a1[2] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      goto LABEL_51;
    }

    v26 = *a1;
    v27 = v25;
    do
    {
      v28 = *v26;
      *(v27 + 16) = v26[2];
      *v27 = v28;
      v26[1] = 0;
      v26[2] = 0;
      *v26 = 0;
      v29 = *(v26 + 3);
      v30 = *(v26 + 5);
      *(v27 + 56) = *(v26 + 14);
      *(v27 + 40) = v30;
      *(v27 + 24) = v29;
      v31 = *(v26 + 4);
      *(v27 + 80) = v26[10];
      *(v27 + 64) = v31;
      v26[9] = 0;
      v26[10] = 0;
      v26[8] = 0;
      *(v27 + 88) = *(v26 + 11);
      v32 = *(v26 + 13);
      v33 = *(v26 + 15);
      v34 = v26[19];
      *(v27 + 136) = *(v26 + 17);
      *(v27 + 120) = v33;
      *(v27 + 104) = v32;
      *(v27 + 152) = v34;
      *(v27 + 160) = 0;
      *(v27 + 168) = 0;
      *(v27 + 176) = 0;
      *(v27 + 160) = *(v26 + 10);
      *(v27 + 176) = v26[22];
      v26[20] = 0;
      v26[21] = 0;
      v26[22] = 0;
      v26 += 23;
      v27 += 184;
    }

    while (v26 != v24);
    while (1)
    {
      v35 = v23[20];
      if (v35)
      {
        v36 = v23[21];
        v37 = v23[20];
        if (v36 != v35)
        {
          do
          {
            v38 = *(v36 - 3);
            if (v38)
            {
              *(v36 - 2) = v38;
              operator delete(v38);
            }

            v36 -= 80;
          }

          while (v36 != v35);
          v37 = v23[20];
        }

        v23[21] = v35;
        operator delete(v37);
      }

      if (*(v23 + 87) < 0)
      {
        operator delete(v23[8]);
        if (*(v23 + 23) < 0)
        {
LABEL_47:
          operator delete(*v23);
        }
      }

      else if (*(v23 + 23) < 0)
      {
        goto LABEL_47;
      }

      v23 += 23;
      if (v23 == v24)
      {
        v23 = *a1;
        goto LABEL_49;
      }
    }
  }

  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1[1], *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  v11 = *(a2 + 24);
  v12 = *(a2 + 40);
  *(v5 + 14) = *(a2 + 14);
  *(v5 + 5) = v12;
  *(v5 + 3) = v11;
  if (*(a2 + 87) < 0)
  {
    sub_298AFE11C(v5 + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v13 = a2[4];
    v5[10] = *(a2 + 10);
    *(v5 + 4) = v13;
  }

  *(v5 + 11) = *(a2 + 88);
  v14 = *(a2 + 104);
  v15 = *(a2 + 120);
  v16 = *(a2 + 19);
  *(v5 + 17) = *(a2 + 136);
  *(v5 + 15) = v15;
  *(v5 + 13) = v14;
  v5[19] = v16;
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  v17 = *(a2 + 20);
  v18 = *(a2 + 21);
  if (v18 != v17)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v18 - v17) >> 4) <= 0x333333333333333)
    {
      operator new();
    }

    goto LABEL_52;
  }

  v19 = (v5 + 23);
LABEL_51:
  a1[1] = v19;
}

void sub_298C840C8()
{
  MEMORY[0x2A1C7C4A8]();
  v0 = *MEMORY[0x29EDCA608];
  operator new();
}

void sub_298C88700()
{
  MEMORY[0x2A1C7C4A8]();
  v0 = *MEMORY[0x29EDCA608];
  operator new();
}

void sub_298C8CF0C()
{
  v14 = *MEMORY[0x29EDCA608];
  v0[23] = 9;
  strcpy(v0, "ANS2_ANS2");
  v1 = "ans/iop-ans-nub";
  v2 = 15;
  v3 = 1;
  v4 = 0x300000000;
  v5 = 13;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 1;
  v10 = xmmword_298D1F2D0;
  v11 = xmmword_298D1F2E0;
  v12 = xmmword_298D1F2F0;
  v13 = 0x2771500F8;
  operator new();
}

void sub_298C8DCF8()
{
  v14 = *MEMORY[0x29EDCA608];
  strcpy(v0, "DISPLAY_EXT_DISPEXTTOP");
  v0[23] = 22;
  v1 = "dcpext0/iop-dcpext0-nub";
  v2 = 23;
  v3 = 1;
  v4 = 0x300000000;
  v5 = 13;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 1;
  v10 = xmmword_298D1F730;
  v11 = xmmword_298D1F740;
  v12 = xmmword_298D1F750;
  v13 = 0x2719500F8;
  operator new();
}

void sub_298C8EA40()
{
  v14 = *MEMORY[0x29EDCA608];
  strcpy(v0, "DISPLAY_EXT_DISPEXTTOP");
  v0[23] = 22;
  v1 = "dcpext0/iop-dcpext0-nub";
  v2 = 23;
  v3 = 1;
  v4 = 0x300000000;
  v5 = 15;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 1;
  v10 = xmmword_298D1F910;
  v11 = xmmword_298D1F920;
  v12 = xmmword_298D1F930;
  v13 = 0x2729500F8;
  operator new();
}

void sub_298C95970()
{
  v14 = *MEMORY[0x29EDCA608];
  v0[23] = 21;
  strcpy(v0, "DISPLAY_PIPE0_DISPTOP");
  v1 = "dcp/iop-dcp-nub";
  v2 = 15;
  v3 = 1;
  v4 = 0x300000000;
  v5 = 15;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 1;
  v10 = xmmword_298D1F960;
  v11 = xmmword_298D1F970;
  v12 = xmmword_298D1F980;
  v13 = 0x2329500F8;
  operator new();
}

void sub_298C96428(uint64_t a1, _DWORD *a2)
{
  v2 = a2[13];
  if (v2 != 1)
  {
    if (v2 == 5)
    {
      operator new();
    }

    a2[11];
    v3 = a2[12];
    operator new();
  }

  operator new();
}

void sub_298C966B8(uint64_t a1, uint64_t a2)
{
  *(a2 + 44);
  v2 = *(a2 + 48);
  operator new();
}

uint64_t sub_298C967D8(uint64_t result)
{
  *result = &unk_2A1F20518;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void sub_298C96834(uint64_t a1)
{
  *a1 = &unk_2A1F20518;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298C968C8(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  sub_298CEF83C(a1 + 16, v3);
  sub_298CEFB28(a1 + 16, v2);
  sub_298CF59FC(*(a1 + 40));
  operator new();
}

uint64_t sub_298C969B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 60) == 3)
  {
    switch(a3)
    {
      case 12:
        if (*a2 == 0x4F4C45525F444642 && *(a2 + 8) == 909205315)
        {
          return 0x100000203;
        }

        if (*a2 == 0x4F4C45525F444642 && *(a2 + 8) == 842227523)
        {
          return 0x100000202;
        }

        if (*a2 != 0x4F4C45525F444642 || *(a2 + 8) != 875978563)
        {
          return 0;
        }

        return 0x100000201;
      case 14:
        if (*a2 == 0x3648435241415F52 && *(a2 + 6) == 0x454E4F4E5F343648)
        {
          return 0x100000100;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 6) == 0x59504F435F343648)
        {
          return 0x100000500;
        }

        if (*a2 == 0x4F4C45525F444642 && *(a2 + 6) == 0x454E4F4E5F434F4CLL)
        {
          return 0x100000100;
        }

        return 0;
      case 15:
        if (*a2 == 0x3648435241415F52 && *(a2 + 7) == 0x34365342415F3436)
        {
          return 0x100000201;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 7) == 0x32335342415F3436)
        {
          return 0x100000202;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 7) == 0x36315342415F3436)
        {
          return 0x100000203;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 7) == 0x3233544C505F3436)
        {
          return 0x10000023ALL;
        }

        return 0;
      case 16:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x34364C4552505F34)
        {
          return 0x100000204;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x32334C4552505F34)
        {
          return 0x100000205;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x36314C4552505F34)
        {
          return 0x100000206;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x3632504D554A5F34)
        {
          return 0x10000021ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x36324C4C41435F34)
        {
          return 0x10000021BLL;
        }

        return 0;
      case 17:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x3152425453545F34 && *(a2 + 16) == 52)
        {
          return 0x100000217;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 67)
        {
          return 0x100000507;
        }

        return 0;
      case 18:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5242444E4F435F34 && *(a2 + 16) == 14641)
        {
          return 0x100000218;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C4552544F475F34 && *(a2 + 16) == 13366)
        {
          return 0x100000233;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C4552544F475F34 && *(a2 + 16) == 12851)
        {
          return 0x100000234;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x445F424F4C475F34 && *(a2 + 16) == 21569)
        {
          return 0x100000501;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4954414C45525F34 && *(a2 + 16) == 17750)
        {
          return 0x100000503;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F435F3233505F34 && *(a2 + 16) == 22864)
        {
          return 0x1000001B4;
        }

        return 0;
      case 19:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x535F504D554A5F34 && *(a2 + 11) == 0x544F4C535F504D55)
        {
          return 0x100000502;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x54414C4552495F34 && *(a2 + 11) == 0x45564954414C4552)
        {
          return 0x100000508;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x42415F3233505F34 && *(a2 + 11) == 0x32335342415F3233)
        {
          return 0x100000101;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x42415F3233505F34 && *(a2 + 11) == 0x36315342415F3233)
        {
          return 0x100000102;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C505F3233505F34 && *(a2 + 11) == 0x3233544C505F3233)
        {
          return 0x10000011DLL;
        }

        return 0;
      case 20:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x524350544F475F34 && *(a2 + 16) == 842222661)
        {
          return 0x10000023BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x415F485455415F34 && *(a2 + 16) == 875975490)
        {
          return 0x100000344;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x52505F3233505F34 && *(a2 + 16) == 842222661)
        {
          return 0x100000103;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x52505F3233505F34 && *(a2 + 16) == 909200453)
        {
          return 0x100000104;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x554A5F3233505F34 && *(a2 + 16) == 909267021)
        {
          return 0x100000114;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x41435F3233505F34 && *(a2 + 16) == 909265996)
        {
          return 0x100000115;
        }

        return 0;
      case 21:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 13) == 0x52444C5F43534544)
        {
          return 0x100000337;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 13) == 0x4444415F43534544)
        {
          return 0x100000338;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x50545F534C545F34 && *(a2 + 13) == 0x34364C455250545FLL)
        {
          return 0x100000506;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x53545F3233505F34 && *(a2 + 13) == 0x343152425453545FLL)
        {
          return 0x100000112;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 13) == 0x43534544534C545FLL)
        {
          return 0x1000001BBLL;
        }

        return 0;
      case 22:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 14) == 0x30475F534241555FLL)
        {
          return 0x100000207;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 14) == 0x31475F534241555FLL)
        {
          return 0x100000209;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 14) == 0x32475F534241555FLL)
        {
          return 0x10000020BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 14) == 0x33475F534241555FLL)
        {
          return 0x10000020DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x535F57564F4D5F34 && *(a2 + 14) == 0x30475F534241535FLL)
        {
          return 0x10000020ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x535F57564F4D5F34 && *(a2 + 14) == 0x31475F534241535FLL)
        {
          return 0x10000020FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x535F57564F4D5F34 && *(a2 + 14) == 0x32475F534241535FLL)
        {
          return 0x100000210;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4552505F444C5F34 && *(a2 + 14) == 0x39314F4C5F4C4552)
        {
          return 0x100000211;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 14) == 0x30475F4C4552505FLL)
        {
          return 0x10000021FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 14) == 0x31475F4C4552505FLL)
        {
          return 0x100000221;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 14) == 0x32475F4C4552505FLL)
        {
          return 0x100000223;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 14) == 0x33475F4C4552505FLL)
        {
          return 0x100000225;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F475F5244415F34 && *(a2 + 14) == 0x454741505F544F47)
        {
          return 0x100000237;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 14) == 0x4C4C41435F435345)
        {
          return 0x100000339;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x54445F534C545F34 && *(a2 + 14) == 0x3436444F4D505444)
        {
          return 0x100000504;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x54445F534C545F34 && *(a2 + 14) == 0x34364C4552505444)
        {
          return 0x100000505;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F435F3233505F34 && *(a2 + 14) == 0x39315242444E4F43)
        {
          return 0x100000113;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C475F3233505F34 && *(a2 + 14) == 0x5441445F424F4C47)
        {
          return 0x1000001B5;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x45525F3233505F34 && *(a2 + 14) == 0x45564954414C4552)
        {
          return 0x1000001B7;
        }

        return 0;
      case 23:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x52505F5244415F34 && *(a2 + 15) == 0x31324F4C5F4C4552)
        {
          return 0x100000212;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F544F475F34 && *(a2 + 15) == 0x39314C4552505F44)
        {
          return 0x100000235;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4447534C545F34 && *(a2 + 15) == 0x31475F57564F4D5FLL)
        {
          return 0x100000303;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 15) == 0x31475F57564F4D5FLL)
        {
          return 0x100000308;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x525F485455415F34 && *(a2 + 15) == 0x45564954414C4552)
        {
          return 0x100000511;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x554A5F3233505F34 && *(a2 + 15) == 0x544F4C535F504D55)
        {
          return 0x1000001B6;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 15) == 0x4C455250545F534CLL)
        {
          return 0x1000001BALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x52495F3233505F34 && *(a2 + 15) == 0x45564954414C4552)
        {
          return 0x1000001BCLL;
        }

        return 0;
      case 24:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x30475F46464F544FLL)
        {
          return 0x10000022CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x31475F46464F544FLL)
        {
          return 0x10000022ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x32475F46464F544FLL)
        {
          return 0x100000230;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x33475F46464F544FLL)
        {
          return 0x100000232;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x31475F46464F5F43)
        {
          return 0x100000335;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x4C45525054445F53)
        {
          return 0x1000001B8;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x444F4D5054445F53)
        {
          return 0x1000001B9;
        }

        return 0;
      case 25:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 16) == 0x4E5F30475F534241 && *(a2 + 24) == 67)
        {
          return 0x100000208;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 16) == 0x4E5F31475F534241 && *(a2 + 24) == 67)
        {
          return 0x10000020ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x555F57564F4D5F34 && *(a2 + 16) == 0x4E5F32475F534241 && *(a2 + 24) == 67)
        {
          return 0x10000020CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x42415F4444415F34 && *(a2 + 16) == 0x4E5F32314F4C5F53 && *(a2 + 24) == 67)
        {
          return 0x100000215;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 16) == 0x4E5F30475F4C4552 && *(a2 + 24) == 67)
        {
          return 0x100000220;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 16) == 0x4E5F31475F4C4552 && *(a2 + 24) == 67)
        {
          return 0x100000222;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x505F57564F4D5F34 && *(a2 + 16) == 0x4E5F32475F4C4552 && *(a2 + 24) == 67)
        {
          return 0x100000224;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x314C4552505F444CLL && *(a2 + 24) == 57)
        {
          return 0x10000030ALL;
        }

        return 0;
      case 26:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x52505F5244415F34 && *(a2 + 16) == 0x49485F47505F4C45 && *(a2 + 24) == 12594)
        {
          return 0x100000213;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F3436444C5F34 && *(a2 + 16) == 0x4F4C5F46464F544FLL && *(a2 + 24) == 13617)
        {
          return 0x100000236;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F3436444C5F34 && *(a2 + 16) == 0x5F32314F4C5F544FLL && *(a2 + 24) == 17230)
        {
          return 0x100000238;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4447534C545F34 && *(a2 + 16) == 0x4C4552505F524441 && *(a2 + 24) == 12594)
        {
          return 0x100000300;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4447534C545F34 && *(a2 + 16) == 0x454741505F524441 && *(a2 + 24) == 12594)
        {
          return 0x100000301;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4447534C545F34 && *(a2 + 16) == 0x5F30475F57564F4DLL && *(a2 + 24) == 17230)
        {
          return 0x100000304;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x4C4552505F524441 && *(a2 + 24) == 12594)
        {
          return 0x100000305;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x454741505F524441 && *(a2 + 24) == 12594)
        {
          return 0x100000306;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5F30475F57564F4DLL && *(a2 + 24) == 17230)
        {
          return 0x100000309;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x4F4C5F4444415F43 && *(a2 + 24) == 12849)
        {
          return 0x100000334;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F534241555F5756 && *(a2 + 24) == 12359)
        {
          return 0x100000105;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F534241555F5756 && *(a2 + 24) == 12615)
        {
          return 0x100000107;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F534241535F5756 && *(a2 + 24) == 12359)
        {
          return 0x100000108;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x4F4C5F4C4552505FLL && *(a2 + 24) == 14641)
        {
          return 0x100000109;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F4C4552505F5756 && *(a2 + 24) == 12359)
        {
          return 0x100000116;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F4C4552505F5756 && *(a2 + 24) == 12615)
        {
          return 0x100000118;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x44415F3233505F34 && *(a2 + 16) == 0x41505F544F475F52 && *(a2 + 24) == 17735)
        {
          return 0x10000011ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x41435F4353454453 && *(a2 + 24) == 19532)
        {
          return 0x10000017FLL;
        }

        return 0;
      case 27:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F385453444C5F34 && *(a2 + 16) == 0x32314F4C5F534241 && *(a2 + 19) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000216;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x30475F46464F544FLL && *(a2 + 19) == 0x434E5F30475F4646)
        {
          return 0x10000022DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x31475F46464F544FLL && *(a2 + 19) == 0x434E5F31475F4646)
        {
          return 0x10000022FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F57564F4D5F34 && *(a2 + 16) == 0x32475F46464F544FLL && *(a2 + 19) == 0x434E5F32475F4646)
        {
          return 0x100000231;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x475F3436444C5F34 && *(a2 + 16) == 0x4C5F45474150544FLL && *(a2 + 19) == 0x35314F4C5F454741)
        {
          return 0x100000239;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4447534C545F34 && *(a2 + 16) == 0x32314F4C5F444441 && *(a2 + 19) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000302;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x32314F4C5F444441 && *(a2 + 19) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000307;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x4552505F444C5F43 && *(a2 + 19) == 0x39314C4552505F44)
        {
          return 0x100000330;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x4C5F3436444C5F43 && *(a2 + 19) == 0x32314F4C5F343644)
        {
          return 0x100000333;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x30475F46464F5F43 && *(a2 + 19) == 0x434E5F30475F4646)
        {
          return 0x100000336;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x44415F3233505F34 && *(a2 + 16) == 0x4C5F4C4552505F52 && *(a2 + 19) == 0x31324F4C5F4C4552)
        {
          return 0x10000010ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F475F3233505F34 && *(a2 + 16) == 0x4552505F444C5F54 && *(a2 + 19) == 0x39314C4552505F44)
        {
          return 0x100000119;
        }

        return 0;
      case 28:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x36315453444C5F34 && *(a2 + 16) == 0x314F4C5F5342415FLL && *(a2 + 24) == 1129209650)
        {
          return 0x10000021CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x32335453444C5F34 && *(a2 + 16) == 0x314F4C5F5342415FLL && *(a2 + 24) == 1129209650)
        {
          return 0x10000021DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x34365453444C5F34 && *(a2 + 16) == 0x314F4C5F5342415FLL && *(a2 + 24) == 1129209650)
        {
          return 0x10000021ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x52505F5244415F43 && *(a2 + 24) == 825379909)
        {
          return 0x100000331;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x534544534C545F34 && *(a2 + 16) == 0x41505F5244415F43 && *(a2 + 24) == 825378119)
        {
          return 0x100000332;
        }

        return 0;
      case 29:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x52505F5244415F34 && *(a2 + 16) == 0x49485F47505F4C45 && *(a2 + 21) == 0x434E5F313249485FLL)
        {
          return 0x100000214;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x32315453444C5F34 && *(a2 + 16) == 0x4F4C5F5342415F38 && *(a2 + 21) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000022BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5250545F57564F4DLL && *(a2 + 21) == 0x32475F4C45525054)
        {
          return 0x100000320;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5250545F57564F4DLL && *(a2 + 21) == 0x31475F4C45525054)
        {
          return 0x100000321;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5250545F57564F4DLL && *(a2 + 21) == 0x30475F4C45525054)
        {
          return 0x100000323;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F534241555F5756 && *(a2 + 21) == 0x434E5F30475F5342)
        {
          return 0x100000106;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x44415F3233505F34 && *(a2 + 16) == 0x4F4C5F5342415F44 && *(a2 + 21) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000010CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4F4D5F3233505F34 && *(a2 + 16) == 0x5F4C4552505F5756 && *(a2 + 21) == 0x434E5F30475F4C45)
        {
          return 0x100000117;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x505F444C5F444C53 && *(a2 + 21) == 0x39314C4552505F44)
        {
          return 0x100000156;
        }

        return 0;
      case 30:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5054445F57564F4DLL && *(a2 + 22) == 0x32475F4C45525054)
        {
          return 0x10000030BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5054445F57564F4DLL && *(a2 + 22) == 0x31475F4C45525054)
        {
          return 0x10000030CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5054445F57564F4DLL && *(a2 + 22) == 0x30475F4C45525054)
        {
          return 0x10000030ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x455250545F444441 && *(a2 + 22) == 0x323149485F4C4552)
        {
          return 0x100000325;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x455250545F444441 && *(a2 + 22) == 0x32314F4C5F4C4552)
        {
          return 0x100000326;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x44415F3233505F34 && *(a2 + 16) == 0x505F4C4552505F52 && *(a2 + 22) == 0x313249485F47505FLL)
        {
          return 0x10000010BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x4C5F544F475F3233 && *(a2 + 22) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000011BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F5244415F444753 && *(a2 + 22) == 0x31324C4552505F52)
        {
          return 0x100000150;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F5244415F444753 && *(a2 + 22) == 0x3132454741505F52)
        {
          return 0x100000151;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F5244415F444C53 && *(a2 + 22) == 0x31324C4552505F52)
        {
          return 0x100000153;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F5244415F444C53 && *(a2 + 22) == 0x3132454741505F52)
        {
          return 0x100000154;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x44415F4353454453 && *(a2 + 22) == 0x32314F4C5F444441)
        {
          return 0x10000017ELL;
        }

        return 0;
      case 31:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x525054445F444441 && *(a2 + 23) == 0x323149485F4C4552)
        {
          return 0x100000310;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x525054445F444441 && *(a2 + 23) == 0x32314F4C5F4C4552)
        {
          return 0x100000311;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x5F5342415F385453 && *(a2 + 23) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000010DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x4150544F475F3233 && *(a2 + 23) == 0x34314F4C5F454741)
        {
          return 0x10000011CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F444753 && *(a2 + 23) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000152;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F444C53 && *(a2 + 23) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000155;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x444C5F4353454453 && *(a2 + 23) == 0x39314C4552505F44)
        {
          return 0x10000017ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x444C5F4353454453 && *(a2 + 23) == 0x32314F4C5F323344)
        {
          return 0x10000017DLL;
        }

        return 0;
      case 32:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4549534C545F34 && *(a2 + 16) == 0x544F475F57564F4DLL && *(a2 + 24) == 0x31475F4C45525054)
        {
          return 0x10000031BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5250545F57564F4DLL && *(a2 + 24) == 0x434E5F31475F4C45)
        {
          return 0x100000322;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5250545F57564F4DLL && *(a2 + 24) == 0x434E5F30475F4C45)
        {
          return 0x100000324;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x50545F385453444CLL && *(a2 + 24) == 0x32314F4C5F4C4552)
        {
          return 0x100000328;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x5342415F36315453 && *(a2 + 24) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000010ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x5342415F32335453 && *(a2 + 24) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000010FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x5342415F34365453 && *(a2 + 24) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000110;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x44415F4353454453 && *(a2 + 24) == 0x31324C4552505F52)
        {
          return 0x10000017BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x44415F4353454453 && *(a2 + 24) == 0x3132454741505F52)
        {
          return 0x10000017CLL;
        }

        return 0;
      case 33:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5054445F57564F4DLL && *(a2 + 24) == 0x4E5F31475F4C4552 && *(a2 + 32) == 67)
        {
          return 0x10000030DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5054445F57564F4DLL && *(a2 + 24) == 0x4E5F30475F4C4552 && *(a2 + 32) == 67)
        {
          return 0x10000030FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x54445F385453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 50)
        {
          return 0x100000313;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x455250545F444441 && *(a2 + 24) == 0x4E5F32314F4C5F4CLL && *(a2 + 32) == 67)
        {
          return 0x100000327;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x545F36315453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 50)
        {
          return 0x10000032ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x545F32335453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 50)
        {
          return 0x10000032CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x545F34365453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 50)
        {
          return 0x10000032ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x444C5F3233505F34 && *(a2 + 16) == 0x42415F3832315453 && *(a2 + 24) == 0x4E5F32314F4C5F53 && *(a2 + 32) == 67)
        {
          return 0x100000111;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x57564F4D5F454C53 && *(a2 + 24) == 0x475F4C455250545FLL && *(a2 + 32) == 49)
        {
          return 0x10000016ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x57564F4D5F454C53 && *(a2 + 24) == 0x475F4C455250545FLL && *(a2 + 32) == 48)
        {
          return 0x10000016BLL;
        }

        return 0;
      case 34:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x525054445F444441 && *(a2 + 24) == 0x5F32314F4C5F4C45 && *(a2 + 32) == 17230)
        {
          return 0x100000312;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x445F36315453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 32) == 12849)
        {
          return 0x100000315;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x445F32335453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 32) == 12849)
        {
          return 0x100000317;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x445F34365453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 32) == 12849)
        {
          return 0x100000319;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4549534C545F34 && *(a2 + 16) == 0x5054544F475F444CLL && *(a2 + 24) == 0x4C4552505F4C4552 && *(a2 + 32) == 14641)
        {
          return 0x10000031FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5F3832315453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 32) == 12849)
        {
          return 0x10000033ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x57564F4D5F444C53 && *(a2 + 24) == 0x5F4C45525054445FLL && *(a2 + 32) == 12615)
        {
          return 0x100000157;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x57564F4D5F444C53 && *(a2 + 24) == 0x5F4C45525054445FLL && *(a2 + 32) == 12359)
        {
          return 0x100000158;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F454C53 && *(a2 + 24) == 0x49485F4C45525054 && *(a2 + 32) == 12849)
        {
          return 0x10000016DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F454C53 && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 32) == 12849)
        {
          return 0x10000016ELL;
        }

        return 0;
      case 35:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4549534C545F34 && *(a2 + 16) == 0x544F475F57564F4DLL && *(a2 + 24) == 0x30475F4C45525054 && *(a2 + 27) == 0x434E5F30475F4C45)
        {
          return 0x10000031CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4549534C545F34 && *(a2 + 16) == 0x54544F475F524441 && *(a2 + 24) == 0x4741505F4C455250 && *(a2 + 27) == 0x3132454741505F4CLL)
        {
          return 0x10000031DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x50545F385453444CLL && *(a2 + 24) == 0x32314F4C5F4C4552 && *(a2 + 27) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000329;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5F3832315453444CLL && *(a2 + 24) == 0x4C5F4C4552505444 && *(a2 + 27) == 0x32314F4C5F4C4552)
        {
          return 0x10000033CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F444C53 && *(a2 + 24) == 0x485F4C4552505444 && *(a2 + 27) == 0x323149485F4C4552)
        {
          return 0x10000015ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F444C53 && *(a2 + 24) == 0x4C5F4C4552505444 && *(a2 + 27) == 0x32314F4C5F4C4552)
        {
          return 0x10000015BLL;
        }

        return 0;
      case 36:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x54445F385453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 1129209650)
        {
          return 0x100000314;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x545F36315453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 1129209650)
        {
          return 0x10000032BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x545F32335453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 1129209650)
        {
          return 0x10000032DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x545F34365453444CLL && *(a2 + 24) == 0x314F4C5F4C455250 && *(a2 + 32) == 1129209650)
        {
          return 0x10000032FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x57564F4D5F454C53 && *(a2 + 24) == 0x475F4C455250545FLL && *(a2 + 32) == 1129209648)
        {
          return 0x10000016CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x5F4C455250545F38 && *(a2 + 32) == 842092364)
        {
          return 0x100000170;
        }

        return 0;
      case 37:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x445F36315453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 29) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000316;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x445F32335453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 29) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000318;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x445F34365453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 29) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000031ALL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F4549534C545F34 && *(a2 + 16) == 0x544F475F3436444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 29) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000031ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F454C534C545F34 && *(a2 + 16) == 0x5F3832315453444CLL && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 29) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000033BLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x57564F4D5F444C53 && *(a2 + 24) == 0x5F4C45525054445FLL && *(a2 + 29) == 0x434E5F30475F4C45)
        {
          return 0x100000159;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x4C45525054445F38 && *(a2 + 29) == 0x32314F4C5F4C4552)
        {
          return 0x10000015DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F454C53 && *(a2 + 24) == 0x4F4C5F4C45525054 && *(a2 + 29) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000016FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x4C455250545F3631 && *(a2 + 29) == 0x32314F4C5F4C4552)
        {
          return 0x100000172;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x4C455250545F3233 && *(a2 + 29) == 0x32314F4C5F4C4552)
        {
          return 0x100000174;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x4C455250545F3436 && *(a2 + 29) == 0x32314F4C5F4C4552)
        {
          return 0x100000176;
        }

        return 0;
      case 38:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x5F444C534C545F34 && *(a2 + 16) == 0x5F3832315453444CLL && *(a2 + 24) == 0x4C5F4C4552505444 && *(a2 + 30) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000033DLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F4444415F444C53 && *(a2 + 24) == 0x4C5F4C4552505444 && *(a2 + 30) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000015CLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x45525054445F3631 && *(a2 + 30) == 0x32314F4C5F4C4552)
        {
          return 0x10000015FLL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x45525054445F3233 && *(a2 + 30) == 0x32314F4C5F4C4552)
        {
          return 0x100000161;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x45525054445F3436 && *(a2 + 30) == 0x32314F4C5F4C4552)
        {
          return 0x100000163;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x475F444C5F454953 && *(a2 + 24) == 0x5F4C45525054544FLL && *(a2 + 30) == 0x39314C4552505F4CLL)
        {
          return 0x100000169;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x455250545F383231 && *(a2 + 30) == 0x32314F4C5F4C4552)
        {
          return 0x100000178;
        }

        return 0;
      case 39:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x525054445F383231 && *(a2 + 31) == 0x32314F4C5F4C4552)
        {
          return 0x100000165;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5F5244415F454953 && *(a2 + 24) == 0x4C45525054544F47 && *(a2 + 31) == 0x3132454741505F4CLL)
        {
          return 0x100000167;
        }

        if (*a2 != 0x3648435241415F52 || *(a2 + 8) != 0x4C545F3233505F34 || *(a2 + 16) != 0x5453444C5F454C53 || *(a2 + 24) != 0x5F4C455250545F38 || *(a2 + 31) != 0x434E5F32314F4C5FLL)
        {
          return 0;
        }

        return 0x100000171;
      case 40:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x4C45525054445F38 && *(a2 + 32) == 0x434E5F32314F4C5FLL)
        {
          return 0x10000015ELL;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x4C455250545F3631 && *(a2 + 32) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000173;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x4C455250545F3233 && *(a2 + 32) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000175;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x4C455250545F3436 && *(a2 + 32) == 0x434E5F32314F4C5FLL)
        {
          return 0x100000177;
        }

        return 0;
      case 41:
        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x45525054445F3631 && *(a2 + 32) == 0x4E5F32314F4C5F4CLL && *(a2 + 40) == 67)
        {
          return 0x100000160;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x45525054445F3233 && *(a2 + 32) == 0x4E5F32314F4C5F4CLL && *(a2 + 40) == 67)
        {
          return 0x100000162;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F444C53 && *(a2 + 24) == 0x45525054445F3436 && *(a2 + 32) == 0x4E5F32314F4C5F4CLL && *(a2 + 40) == 67)
        {
          return 0x100000164;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x3233444C5F454953 && *(a2 + 24) == 0x45525054544F475FLL && *(a2 + 32) == 0x4E5F32314F4C5F4CLL && *(a2 + 40) == 67)
        {
          return 0x100000168;
        }

        if (*a2 == 0x3648435241415F52 && *(a2 + 8) == 0x4C545F3233505F34 && *(a2 + 16) == 0x5453444C5F454C53 && *(a2 + 24) == 0x455250545F383231 && *(a2 + 32) == 0x4E5F32314F4C5F4CLL && *(a2 + 40) == 67)
        {
          return 0x100000179;
        }

        break;
      case 42:
        if (*a2 != 0x3648435241415F52 || *(a2 + 8) != 0x4C545F3233505F34 || *(a2 + 16) != 0x5453444C5F444C53 || *(a2 + 24) != 0x525054445F383231 || *(a2 + 32) != 0x5F32314F4C5F4C45 || *(a2 + 40) != 17230)
        {
          return 0;
        }

        return 0x100000166;
      default:
        return 0;
    }
  }

  return 0;
}

char **sub_298C9B548(uint64_t a1, int a2)
{
  v2 = &(&off_29EEB6A10)[3 * (a2 - 128)];
  if (a2 <= 127)
  {
    v2 = &(&off_29EEB4A78)[3 * a2];
  }

  if (a2 <= 255)
  {
    return v2;
  }

  else
  {
    return &off_29EEB4A78;
  }
}

void **sub_298C9B594(void **result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, int a8)
{
  v14 = result;
  v77 = *MEMORY[0x29EDCA608];
  v15 = *(a3 + 12);
  if (v15 == 4 && *(result + 15) == 3 && (*(a4 + 24) & 0xE) == 0xA)
  {
    if (*a3)
    {
      v16 = *a3 - 8;
    }

    else
    {
      v16 = 0;
    }

    a7 = (*(v16 + 36) << 32) | (*(v16 + 38) << 60) | ((*(v16 + 32) == 11) << 63);
  }

  if (v15 <= 0xFF && a7 != 0)
  {
    v18 = *(a3 + 12);
    if (v18 <= 0x12)
    {
      if (*(a3 + 12) > 2u)
      {
        if (v18 != 3)
        {
          v19 = 0;
          v69 = 0;
          v68 = 0;
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v18 == 1)
      {
        v69 = 0;
        v68 = 0;
        v19 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      if (v18 - 128 <= 0xE)
      {
        if (((1 << (v15 + 0x80)) & 0x1FFC) != 0)
        {
          v19 = 0;
          v68 = 0;
          v69 = 1;
LABEL_24:
          result = (*(*result + 10))(result);
          v20 = *(result + 2);
          v21 = *a2;
          v22 = *(a3 + 12);
          switch(v22)
          {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
              __break(1u);
              JUMPOUT(0x298C9CC1CLL);
            case 128:
              goto LABEL_81;
            case 129:
              if (*(v14 + 15) == 1)
              {
LABEL_81:
                if ((a7 + 0x100000) >= 0x200000)
                {
                  v42 = *(a3 + 16);
                  v70[0] = "fixup value out of range";
                  v71 = 259;
                  *(v21 + 2056) = 1;
                  v72 = v42;
                  v73 = &unk_2A1F1BDB8;
                  v74 = &v72;
                  v75 = v70;
                  v76 = &v73;
                  sub_298B2FFE4(v21, v42, &v73);
                  result = v76;
                  if (v76 == &v73)
                  {
                    result = (*(*v76 + 4))(v76);
                  }

                  else if (v76)
                  {
                    result = (*(*v76 + 5))();
                  }
                }

                v27 = (8 * a7) & 0xFFFFE0 | ((a7 & 3) << 29);
              }

              else
              {
                v27 = (a7 >> 9) & 0xFFFFE0 | (((a7 >> 12) & 3) << 29);
              }

              goto LABEL_200;
            case 130:
            case 131:
              v26 = a7 & 0xFFF;
              if (a8)
              {
                v26 = a7;
              }

              if (*(v14 + 15) == 1)
              {
                v27 = v26;
              }

              else
              {
                v27 = a7;
              }

              if (v27 >= 0x1000)
              {
                goto LABEL_37;
              }

              goto LABEL_200;
            case 132:
              v33 = a7 & 0xFFF;
              if (a8)
              {
                v33 = a7;
              }

              if (*(v14 + 15) == 1)
              {
                v34 = v33;
              }

              else
              {
                v34 = a7;
              }

              if (v34 >= 0x2000)
              {
                v35 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v35;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v35, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((v34 & 1) == 0)
              {
                goto LABEL_147;
              }

              v56 = *(a3 + 16);
              v70[0] = "fixup must be 2-byte aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v56;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v56, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = v34 >> 1;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_147:
                v27 = v34 >> 1;
              }

              goto LABEL_200;
            case 133:
              v43 = a7 & 0xFFF;
              if (a8)
              {
                v43 = a7;
              }

              if (*(v14 + 15) == 1)
              {
                v44 = v43;
              }

              else
              {
                v44 = a7;
              }

              if (v44 >= 0x4000)
              {
                v45 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v45;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v45, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((v44 & 3) == 0)
              {
                goto LABEL_175;
              }

              v60 = *(a3 + 16);
              v70[0] = "fixup must be 4-byte aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v60;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v60, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = v44 >> 2;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_175:
                v27 = v44 >> 2;
              }

              goto LABEL_200;
            case 134:
              v30 = a7 & 0xFFF;
              if (a8)
              {
                v30 = a7;
              }

              if (*(v14 + 15) == 1)
              {
                v31 = v30;
              }

              else
              {
                v31 = a7;
              }

              if (v31 >= 0x8000)
              {
                v32 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v32;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v32, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((v31 & 7) == 0)
              {
                goto LABEL_140;
              }

              v55 = *(a3 + 16);
              v70[0] = "fixup must be 8-byte aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v55;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v55, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = v31 >> 3;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_140:
                v27 = v31 >> 3;
              }

              goto LABEL_200;
            case 135:
              v36 = a7 & 0xFFF;
              if (a8)
              {
                v36 = a7;
              }

              if (*(v14 + 15) == 1)
              {
                v37 = v36;
              }

              else
              {
                v37 = a7;
              }

              if (v37 >= 0x10000)
              {
                v38 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v38;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v38, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((v37 & 0xF) == 0)
              {
                goto LABEL_154;
              }

              v57 = *(a3 + 16);
              v70[0] = "fixup must be 16-byte aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v57;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v57, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = v37 >> 4;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_154:
                v27 = v37 >> 4;
              }

              goto LABEL_200;
            case 136:
            case 140:
              if ((a7 + 0x100000) >= 0x200000)
              {
                v25 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v25;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v25, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((a7 & 3) == 0)
              {
                goto LABEL_107;
              }

              v49 = *(a3 + 16);
              v70[0] = "fixup not sufficiently aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v49;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v49, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = (a7 >> 2) & 0x7FFFF;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_107:
                v27 = (a7 >> 2) & 0x7FFFF;
              }

              goto LABEL_200;
            case 137:
              v46 = *(a4 + 24);
              if ((v46 & 0xF) == 1)
              {
                if (a8)
                {
                  v48 = ((v46 & 0xF0u) - 64) >> 4;
                  if (v48 > 1)
                  {
                    if (v48 == 2)
                    {
                      v48 = 0;
                      v27 = HIDWORD(a7);
                    }

                    else
                    {
                      v48 = 0;
                      v27 = HIWORD(a7);
                    }
                  }

                  else
                  {
                    if (!v48)
                    {
                      goto LABEL_124;
                    }

                    v48 = 0;
                    v27 = a7 >> 16;
                  }

                  v52 = a7;
                  goto LABEL_192;
                }
              }

              else
              {
                if ((v46 & 0xF) != 2)
                {
                  if (!v46)
                  {
                    if ((a7 - 0x10000) <= 0xFFFFFFFFFFFE0000)
                    {
                      v61 = *(a3 + 16);
                      v70[0] = "fixup value out of range [-0xFFFF, 0xFFFF]";
                      v71 = 259;
                      *(v21 + 2056) = 1;
                      v72 = v61;
                      v73 = &unk_2A1F1BDB8;
                      v74 = &v72;
                      v75 = v70;
                      v76 = &v73;
                      sub_298B2FFE4(v21, v61, &v73);
                      result = v76;
                      if (v76 == &v73)
                      {
                        result = (*(*v76 + 4))(v76);
                        v27 = a7 ^ (a7 >> 63);
                        goto LABEL_200;
                      }

                      if (v76)
                      {
                        result = (*(*v76 + 5))();
                      }
                    }

                    v27 = a7 ^ (a7 >> 63);
                    goto LABEL_200;
                  }

                  v53 = *(a3 + 16);
                  v54 = "relocation for a thread-local variable points to an absolute symbol";
                  goto LABEL_128;
                }

                if (a8)
                {
                  v47 = ((v46 & 0xF0u) - 64) >> 4;
                  if (v47 > 1)
                  {
                    if (v47 == 2)
                    {
                      v52 = a7 >> 32;
                    }

                    else
                    {
                      v52 = a7 >> 48;
                    }
                  }

                  else
                  {
                    if (!v47)
                    {
                      v48 = 1;
LABEL_124:
                      v52 = a7;
                      v27 = a7;
                      goto LABEL_192;
                    }

                    v52 = a7 >> 16;
                  }

                  v48 = 1;
                  v27 = a7;
LABEL_192:
                  if ((v46 & 0x100) != 0)
                  {
                    v27 = v27;
                  }

                  else if (v48)
                  {
                    if ((v52 - 0x10000) > 0xFFFFFFFFFFFE0000)
                    {
LABEL_198:
                      v27 = v52 ^ (v52 >> 63);
                      goto LABEL_200;
                    }

                    v62 = *(a3 + 16);
                    v70[0] = "fixup value out of range";
                    v71 = 259;
                    *(v21 + 2056) = 1;
                    v72 = v62;
                    v73 = &unk_2A1F1BDB8;
                    v74 = &v72;
                    v75 = v70;
                    v76 = &v73;
                    sub_298B2FFE4(v21, v62, &v73);
                    result = v76;
                    if (v76 != &v73)
                    {
                      if (v76)
                      {
                        result = (*(*v76 + 5))();
                      }

                      goto LABEL_198;
                    }

                    result = (*(*v76 + 4))(v76);
                    v27 = v52 ^ (v52 >> 63);
                  }

                  else if (v27 >= 0x10000)
                  {
LABEL_37:
                    v28 = *(a3 + 16);
                    v70[0] = "fixup value out of range";
                    v71 = 259;
                    *(v21 + 2056) = 1;
                    v72 = v28;
                    v73 = &unk_2A1F1BDB8;
                    v74 = &v72;
                    v75 = v70;
                    v76 = &v73;
                    sub_298B2FFE4(v21, v28, &v73);
                    result = v76;
                    if (v76 == &v73)
                    {
                      result = (*(*v76 + 4))(v76);
                    }

                    else if (v76)
                    {
                      result = (*(*v76 + 5))();
                    }
                  }

LABEL_200:
                  v24 = *(a3 + 8);
                  v22 = *(a3 + 12);
                  v23 = v27 << v20;
                  if (*(v14 + 2) != 1)
                  {
LABEL_201:
                    if ((v22 - 128) >= 0xF)
                    {
                      if (v22 == 3)
                      {
                        v65 = 4;
                      }

                      else
                      {
                        v65 = 8;
                      }

                      if ((v22 - 1) >= 2)
                      {
                        v22 = v65;
                      }

                      LODWORD(v63) = v22 + v24;
                      *(a5 + (v63 - 1)) |= v23;
                      if (v19)
                      {
                        goto LABEL_217;
                      }

                      *(a5 + (v63 - 2)) |= BYTE1(v23);
                      if ((v69 & 0x100000000) != 0)
                      {
                        goto LABEL_217;
                      }

                      *(a5 + (v63 - 3)) |= BYTE2(v23);
                      if (v69)
                      {
                        goto LABEL_217;
                      }

                      *(a5 + (v63 - 4)) |= BYTE3(v23);
                      if (v68)
                      {
                        goto LABEL_217;
                      }

                      *(a5 + (v63 - 5)) |= BYTE4(v23);
                      *(a5 + (v63 - 6)) |= BYTE5(v23);
                      *(a5 + (v63 - 7)) |= BYTE6(v23);
                      v67 = HIBYTE(v23);
                      v64 = v63 - 8;
                      LOBYTE(v63) = v67;
                      goto LABEL_207;
                    }
                  }

LABEL_202:
                  *(a5 + v24) |= v23;
                  if (v19 & 1) != 0 || (*(a5 + (v24 + 1)) |= BYTE1(v23), (v69 & 0x100000000) != 0) || (*(a5 + (v24 + 2)) |= BYTE2(v23), (v69) || (*(a5 + (v24 + 3)) |= BYTE3(v23), (v68))
                  {
LABEL_217:
                    if ((*(a4 + 24) & 0xF) == 2 || !*(a4 + 24) && *(a3 + 12) == 137)
                    {
                      *(a5 + (v24 + 3)) = *(a5 + (v24 + 3)) & 0xBF | ((a7 >= 0) << 6);
                    }

                    goto LABEL_221;
                  }

                  *(a5 + (v24 + 4)) |= BYTE4(v23);
                  *(a5 + (v24 + 5)) |= BYTE5(v23);
                  *(a5 + (v24 + 6)) |= BYTE6(v23);
                  v63 = HIBYTE(v23);
                  v64 = v24 + 7;
LABEL_207:
                  *(a5 + v64) |= v63;
                  goto LABEL_217;
                }
              }

              v53 = *(a3 + 16);
              v54 = "unresolved movw fixup not yet implemented";
LABEL_128:
              v70[0] = v54;
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v53;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v53, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = a7;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

                v27 = a7;
              }

              goto LABEL_200;
            case 138:
              if (a7 != a7)
              {
                v39 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v39;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v39, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((a7 & 3) == 0)
              {
                goto LABEL_161;
              }

              v58 = *(a3 + 16);
              v70[0] = "fixup not sufficiently aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v58;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v58, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = a7 >> 2;
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_161:
                v27 = a7 >> 2;
              }

              goto LABEL_200;
            case 139:
              v40 = -a7;
              if ((a7 - 1) <= 0xFFFFFFFFFFFBFFFFLL)
              {
                v41 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v41;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v41, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((v40 & 3) == 0)
              {
                goto LABEL_168;
              }

              v59 = *(a3 + 16);
              v70[0] = "fixup not sufficiently aligned";
              v71 = 259;
              *(v21 + 2056) = 1;
              v72 = v59;
              v73 = &unk_2A1F1BDB8;
              v74 = &v72;
              v75 = v70;
              v76 = &v73;
              sub_298B2FFE4(v21, v59, &v73);
              result = v76;
              if (v76 == &v73)
              {
                result = (*(*v76 + 4))(v76);
                v27 = (v40 >> 2);
              }

              else
              {
                if (v76)
                {
                  result = (*(*v76 + 5))();
                }

LABEL_168:
                v27 = (v40 >> 2);
              }

              goto LABEL_200;
            case 141:
            case 142:
              if (*(v14 + 15) == 1 && (a8 & 1) == 0)
              {
                v29 = *(a3 + 16);
                v70[0] = "cannot perform a PC-relative fixup with a non-zero symbol offset";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v29;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v29, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((a7 + 0x8000000) >> 28)
              {
                v50 = *(a3 + 16);
                v70[0] = "fixup value out of range";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v50;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v50, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              if ((a7 & 3) != 0)
              {
                v51 = *(a3 + 16);
                v70[0] = "fixup not sufficiently aligned";
                v71 = 259;
                *(v21 + 2056) = 1;
                v72 = v51;
                v73 = &unk_2A1F1BDB8;
                v74 = &v72;
                v75 = v70;
                v76 = &v73;
                sub_298B2FFE4(v21, v51, &v73);
                result = v76;
                if (v76 == &v73)
                {
                  result = (*(*v76 + 4))(v76);
                }

                else if (v76)
                {
                  result = (*(*v76 + 5))();
                }
              }

              v27 = (a7 >> 2) & 0x3FFFFFF;
              goto LABEL_200;
            default:
              v23 = a7 << v20;
              v24 = *(a3 + 8);
              if (*(v14 + 2) == 1)
              {
                goto LABEL_202;
              }

              goto LABEL_201;
          }
        }

LABEL_23:
        v19 = 0;
        v69 = 0;
        v68 = 1;
        goto LABEL_24;
      }

      if (v18 != 19)
      {
        goto LABEL_23;
      }
    }

    v19 = 0;
    v68 = 0;
    v69 = 0x100000000;
    goto LABEL_24;
  }

LABEL_221:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C9CE64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_298B9BCEC(a2, "", a3 & 3);
  if (a3 >= 4)
  {
    v5 = a3 >> 2;
    do
    {
      v4 = sub_298B9BCEC(v4, "\x1F \x03\xD51-byte data relocations not supported", 4uLL);
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t sub_298C9CEC4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[4];
  v4 = a2[5] - v3;
  if (v4)
  {
    v5 = a2[2];
    if (v5)
    {
      if ((*(v5 + 8) & 1) == 0)
      {
        goto LABEL_23;
      }

      v6 = *(v5 - 8);
      if (*v6 == 21)
      {
        v13 = v6[2];
        v14 = v6[3];
        v15 = *(v6 + 29);
        if (v13 != *"___gxx_personality_v0" || v14 != *"ersonality_v0" || v15 != *"ality_v0")
        {
LABEL_23:
          v18 = *(a3 + 2048);
          if (!v18 || (*(v18 + 168) & 1) == 0)
          {
            return 50331648;
          }
        }
      }

      else
      {
        if (*v6 != 22)
        {
          goto LABEL_23;
        }

        v7 = v6[2];
        v8 = v6[3];
        v9 = *(v6 + 30);
        v10 = v7 == *"___objc_personality_v0" && v8 == *"personality_v0";
        if (!v10 || v9 != *"ality_v0")
        {
          goto LABEL_23;
        }
      }
    }

    v89 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0x2E8BA2E8BA2E8BA3 * (v4 >> 3);
    while (1)
    {
      while (1)
      {
        v24 = (v3 + 88 * v22);
        v25 = *v24;
        if (*v24 == 3)
        {
          break;
        }

        if (v25 == 6)
        {
          if (v19)
          {
            return 50331648;
          }

          v26 = v24[5];
          if (v26 >= 0)
          {
            v19 = v24[5];
          }

          else
          {
            v19 = -v26;
          }

          goto LABEL_27;
        }

        if (v25 != 7)
        {
          return 50331648;
        }

        v52 = *(a1 + 64);
        v53 = *(v52 + 152);
        if (!v53)
        {
          goto LABEL_100;
        }

        v54 = v24[4];
        v55 = *(v52 + 124);
        v56 = *(v52 + 152);
        if (v55)
        {
          v56 = *(v52 + 152);
          v57 = *(v52 + 124);
          do
          {
            v58 = v57 >> 1;
            v59 = &v56[2 * (v57 >> 1)];
            v61 = *v59;
            v60 = v59 + 2;
            v57 += ~(v57 >> 1);
            if (v61 < v54)
            {
              v56 = v60;
            }

            else
            {
              v57 = v58;
            }
          }

          while (v57);
        }

        if (v56 != &v53[2 * v55] && *v56 == v54)
        {
          v63 = v56[1];
          v62 = v63 & 0xFFFFFF00;
          v63 = v63;
        }

        else
        {
LABEL_100:
          v63 = 0;
          v62 = 0;
        }

        v65 = sub_298C9D558(v62 | v63);
        v12 = 50331648;
        if (v22 + 2 < v23 && v65 == 2)
        {
          if (v24[22] != 3)
          {
            return 50331648;
          }

          v66 = (v3 + 88 * (v22 + 2));
          if (*v66 != 3)
          {
            return 50331648;
          }

          v21 = v66[5];
          if (v21 + 8 != v24[27])
          {
            return 50331648;
          }

          if (v53)
          {
            v67 = v24[26];
            v68 = *(v52 + 124);
            v69 = v53;
            if (v68)
            {
              v69 = v53;
              v70 = *(v52 + 124);
              do
              {
                v71 = v70 >> 1;
                v72 = &v69[2 * (v70 >> 1)];
                v74 = *v72;
                v73 = v72 + 2;
                v70 += ~(v70 >> 1);
                if (v74 < v67)
                {
                  v69 = v73;
                }

                else
                {
                  v70 = v71;
                }
              }

              while (v70);
            }

            v75 = &v53[2 * v68];
            if (v69 == v75 || *v69 != v67)
            {
              v77 = 0;
              v76 = 0;
            }

            else
            {
              v77 = v69[1];
              v76 = v77 & 0xFFFFFF00;
              v77 = v77;
            }

            v78 = v66[4];
            if (v68)
            {
              do
              {
                v79 = v68 >> 1;
                v80 = &v53[2 * (v68 >> 1)];
                v82 = *v80;
                v81 = v80 + 2;
                v68 += ~(v68 >> 1);
                if (v82 < v78)
                {
                  v53 = v81;
                }

                else
                {
                  v68 = v79;
                }
              }

              while (v68);
            }

            v83 = v76 | v77;
            if (v53 == v75 || *v53 != v78)
            {
              v85 = 0;
              LODWORD(v53) = 0;
            }

            else
            {
              v84 = v53[1];
              LODWORD(v53) = v84 & 0xFFFFFF00;
              v85 = v84;
            }
          }

          else
          {
            v83 = 0;
            v85 = 0;
          }

          v86 = sub_298C9D558(v83);
          v87 = sub_298C9D558(v53 | v85);
          v12 = 50331648;
          if (v86 == 5 && v87 == 2)
          {
            v20 = v20 | 0x4000000;
            v22 += 3;
            v89 = 1;
            v12 = v20;
            if (v22 != v23)
            {
              continue;
            }
          }
        }

        return v12;
      }

      v27 = *(a1 + 64);
      v28 = *(v27 + 152);
      if (!v28)
      {
        goto LABEL_44;
      }

      v29 = v24[4];
      v30 = *(v27 + 124);
      v31 = *(v27 + 152);
      if (v30)
      {
        v31 = *(v27 + 152);
        v32 = *(v27 + 124);
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[2 * (v32 >> 1)];
          v36 = *v34;
          v35 = v34 + 2;
          v32 += ~(v32 >> 1);
          if (v36 < v29)
          {
            v31 = v35;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
      }

      if (v31 != (v28 + 8 * v30) && *v31 == v29)
      {
        v38 = v31[1];
        v37 = v38 & 0xFFFFFF00;
        v38 = v38;
      }

      else
      {
LABEL_44:
        v38 = 0;
        v37 = 0;
      }

      if (++v22 == v23 || v21 && v24[5] != v21 - 8)
      {
        return 50331648;
      }

      v39 = (v3 + 88 * v22);
      if (*v39 != 3)
      {
        return 50331648;
      }

      v21 = v39[5];
      if (v21 != v24[5] - 8)
      {
        return 50331648;
      }

      if (!v28)
      {
        break;
      }

      v40 = v39[4];
      v41 = *(v27 + 124);
      if (v41)
      {
        v42 = *(v27 + 152);
        v43 = v41;
        do
        {
          v44 = v43 >> 1;
          v45 = &v42[2 * (v43 >> 1)];
          v47 = *v45;
          v46 = v45 + 2;
          v43 += ~(v43 >> 1);
          if (v47 < v40)
          {
            v42 = v46;
          }

          else
          {
            v43 = v44;
          }
        }

        while (v43);
        if (v42 == (v28 + 8 * v41))
        {
          break;
        }
      }

      else
      {
        v42 = *(v27 + 152);
        if (v42 == (v28 + 8 * v41))
        {
          break;
        }
      }

      if (*v42 != v40)
      {
        break;
      }

      v48 = v42[1] & 0xFFFFFF00;
      v49 = v42[1];
LABEL_63:
      v50 = sub_298C9D558(v37 | v38);
      v51 = sub_298C9D558(v48 | v49);
      if (v50 == 255 && v51 == 256 && (v20 & 0xF1E) == 0)
      {
        v20 = v20 | 1;
        goto LABEL_27;
      }

      if (v50 == 257 && v51 == 258 && (v20 & 0xF1C) == 0)
      {
        v20 = v20 | 2;
        goto LABEL_27;
      }

      if (v50 == 259 && v51 == 260 && (v20 & 0xF18) == 0)
      {
        v20 = v20 | 4;
        goto LABEL_27;
      }

      if (v50 == 261 && v51 == 262 && (v20 & 0xF10) == 0)
      {
        v20 = v20 | 8;
        goto LABEL_27;
      }

      if (v50 == 263 && v51 == 264 && (v20 & 0xF00) == 0)
      {
        v20 = v20 | 0x10;
        goto LABEL_27;
      }

      v64 = v50 + 32;
      if ((v50 - 13) >= 0x20)
      {
        v64 = v50;
      }

      v12 = 50331648;
      if (v51 <= 23)
      {
        if (v51 == 22)
        {
          v51 = 54;
        }

        else if ((v51 - 13) < 9 || v51 == 23)
        {
          return v12;
        }

        goto LABEL_140;
      }

      if (v51 > 0x2C)
      {
        goto LABEL_138;
      }

      if (v51 != 26)
      {
        if (v51 == 28)
        {
          v51 = 60;
LABEL_152:
          v12 = 50331648;
          if (v64 != 59 || v51 != 60)
          {
            return v12;
          }

          v20 = v20 | 0x800;
          goto LABEL_27;
        }

        if (((1 << v51) & 0x1FFFEA000000) != 0)
        {
          return v12;
        }

LABEL_138:
        if (v51 == 24)
        {
          v51 = 56;
LABEL_144:
          if (v64 == 55 && v51 == 56 && (v20 & 0xC00) == 0)
          {
            v20 = v20 | 0x200;
            goto LABEL_27;
          }

          goto LABEL_148;
        }

LABEL_140:
        if (v64 == 53 && v51 == 54 && (v20 & 0xE00) == 0)
        {
          v20 = v20 | 0x100;
          goto LABEL_27;
        }

        goto LABEL_144;
      }

      v51 = 58;
LABEL_148:
      if (v64 != 57 || v51 != 58 || (v20 & 0x800) != 0)
      {
        goto LABEL_152;
      }

      v20 = v20 | 0x400;
LABEL_27:
      if (++v22 == v23)
      {
        if (v89)
        {
          return v20;
        }

        if (v19 <= 0xFFF0)
        {
          return v20 | (v19 << 8) & 0xFFF000 | 0x2000000;
        }

        return 50331648;
      }
    }

    v49 = 0;
    v48 = 0;
    goto LABEL_63;
  }

  return 0x2000000;
}