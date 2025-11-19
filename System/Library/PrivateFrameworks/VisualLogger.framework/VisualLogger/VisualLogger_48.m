void sub_2714E5600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714E56F4(uint64_t a1, uint64_t a2, std::mutex *a3, const std::__fs::filesystem::path *a4, __int128 ***a5, const std::__fs::filesystem::path *a6)
{
  v10 = (a5 + 2);
  sub_2714FCC00((a5 + 2));
  v11 = (a5[2][3])(v10);
  v12 = 48;
  if (!*(v11 + 64))
  {
    v12 = 0;
  }

  v13 = *(v11 + v12);
  std::__fs::filesystem::path::lexically_relative(&v30, a6, a4);
  std::mutex::lock(a3);
  v22 = v13;
  if (SHIBYTE(v32) < 0)
  {
    sub_271127178(v23, v31, *(&v31 + 1));
  }

  else
  {
    *v23 = v31;
    v23[2] = v32;
  }

  v24 = v33;
  v14 = **a5;
  if (*(v14 + 23) < 0)
  {
    sub_271127178(v25, *v14, *(v14 + 1));
  }

  else
  {
    v15 = *v14;
    v25[2] = *(v14 + 2);
    *v25 = v15;
  }

  LOBYTE(v26[0]) = 0;
  LOBYTE(v27) = 0;
  if (*(v14 + 48) == 1)
  {
    if (*(v14 + 47) < 0)
    {
      sub_271127178(v26, *(v14 + 3), *(v14 + 4));
    }

    else
    {
      v16 = *(v14 + 24);
      v26[2] = *(v14 + 5);
      *v26 = v16;
    }

    LOBYTE(v27) = 1;
  }

  if (SHIBYTE(v30.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v21, v30.__pn_.__r_.__value_.__l.__data_, v30.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v30;
  }

  v28 = v21;
  memset(&v21, 0, sizeof(v21));
  data = a6[1].__pn_.__r_.__value_.__l.__data_;
  v17 = sub_2714FC508(v10);
  if (*(v17 + 40) == 1)
  {
    if (*(v17 + 39) >= 0)
    {
      v19 = *(v17 + 39);
    }

    else
    {
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
    }
  }

  v20 = *(v17 + 160);
  v34 = 0;
  operator new();
}

void sub_2714E5FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a38 == 1 && a37 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::mutex::unlock(v49);
  if (*(v50 - 225) < 0)
  {
    operator delete(*(v50 - 248));
    if ((*(v50 - 201) & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v50 - 201) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(v50 - 224));
  _Unwind_Resume(a1);
}

void sub_2714E6204(uint64_t a1, uint64_t a2, void ****a3, int a4, uint64_t a5, void *a6, char a7)
{
  v123 = *MEMORY[0x277D85DE8];
  v14 = v89 + 4;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v90 = 4;
      v15 = 1952539694;
      goto LABEL_9;
    }

    if (a4 == 2)
    {
      v90 = 4;
      v15 = 1987273518;
LABEL_9:
      LODWORD(v89[0]) = v15;
      goto LABEL_11;
    }

    goto LABEL_190;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      v90 = 4;
      v15 = 1954051118;
      goto LABEL_9;
    }

LABEL_190:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 135, "", 0, "Unsupported format", 0x12uLL, sub_271852CA8);
    abort();
  }

  v14 = v89 + 5;
  v90 = 5;
  qmemcpy(v89, ".json", 5);
LABEL_11:
  *v14 = 0;
  sub_2714E50C0(v115, (a3 + 2));
  if (v90 >= 0)
  {
    v16 = v89;
  }

  else
  {
    v16 = v89[0];
  }

  if (v90 >= 0)
  {
    v17 = v90;
  }

  else
  {
    v17 = v89[1];
  }

  v18 = std::string::append(v115, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v88 = v18->__r_.__value_.__r.__words[2];
  *v87 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v115[23] & 0x80000000) != 0)
  {
    operator delete(*v115);
    v20 = **a3;
    v21 = *(v20 + 23);
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = **a3;
    v21 = *(v20 + 23);
    if ((v21 & 0x8000000000000000) == 0)
    {
LABEL_19:
      v22 = v20;
      goto LABEL_22;
    }
  }

  v22 = *v20;
  v21 = v20[1];
LABEL_22:
  if (*(v20 + 48))
  {
    v23 = (v20 + 3);
  }

  else
  {
    v23 = 0;
  }

  sub_2714E4488(v115, a2, v22, v21, v23, *(v20 + 48));
  memset(&__p, 0, sizeof(__p));
  v24 = SHIBYTE(v88);
  if (v88 >= 0)
  {
    v25 = v87;
  }

  else
  {
    v25 = v87[0];
  }

  if (v88 < 0)
  {
    v24 = v87[1];
  }

  sub_271171230(&__p, v25, v24 + v25);
  if ((v115[23] & 0x80000000) != 0)
  {
    sub_271127178(&v86, *v115, *&v115[8]);
  }

  else
  {
    v86 = *v115;
  }

  sub_2714D75A8(&v86, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v115[23] & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_43:
    operator delete(*v115);
    goto LABEL_35;
  }

  if ((v115[23] & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v26 = sub_27139B104(0);
  sub_27139A710(v102, (a3 + 2), v26);
  LOBYTE(v96) = 0;
  v98 = 0;
  v94 = 0;
  v95 = 0;
  LOBYTE(v91) = 0;
  v93 = 0;
  if ((a7 & 1) == 0)
  {
    sub_271725008(&v86, 0x11u, a5, v115);
    if (v98 == 1)
    {
      v27 = *&v115[8];
      *&v115[8] = 0uLL;
      v28 = *(&v97 + 1);
      v97 = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }
    }

    else
    {
      v96 = &unk_288115240;
      v97 = *&v115[8];
      *&v115[8] = 0uLL;
      v98 = 1;
    }

    v29 = *&v115[16];
    if (*&v115[16] && !atomic_fetch_add((*&v115[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    if ((v98 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      if (SHIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&__p, v86.__pn_.__r_.__value_.__l.__data_, v86.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v86.__pn_;
      }

      sub_2714D199C("Failed to write to file: ", &__p, v115);
      std::runtime_error::runtime_error(exception, v115);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v30 = (*(*v97 + 16))(v97);
    v31 = v30 + *(*v30 - 24);
    if ((v31[32] & 5) != 0)
    {
      v32 = -1;
    }

    else
    {
      (*(**(v31 + 5) + 32))(v115);
      v32 = v122;
    }

    v39 = v32 & ~(v32 >> 63);
    goto LABEL_130;
  }

  if (SHIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(v115, v86.__pn_.__r_.__value_.__l.__data_, v86.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *v115 = v86;
  }

  if (v115[23] >= 0)
  {
    v33 = v115;
  }

  else
  {
    v33 = *v115;
  }

  if (v115[23] >= 0)
  {
    v34 = v115[23];
  }

  else
  {
    v34 = *&v115[8];
  }

  v35 = sub_2711284DC(&__p, v33, v34);
  if ((v115[23] & 0x80000000) != 0)
  {
    operator delete(*v115);
    v36 = a6[1];
    if (!*&v36)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v36 = a6[1];
    if (!*&v36)
    {
      goto LABEL_100;
    }
  }

  v37 = vcnt_s8(v36);
  v37.i16[0] = vaddlv_u8(v37);
  if (v37.u32[0] > 1uLL)
  {
    v38 = v35;
    if (v35 >= *&v36)
    {
      v38 = v35 % *&v36;
    }
  }

  else
  {
    v38 = (*&v36 - 1) & v35;
  }

  v40 = *(*a6 + 8 * v38);
  if (!v40 || (v41 = *v40) == 0)
  {
LABEL_100:
    v100 = 0;
    LOBYTE(v99) = 0;
    sub_2714EB974(&__p, &v99, 24);
    operator new();
  }

  if (v37.u32[0] < 2uLL)
  {
    v42 = *&v36 - 1;
    while (1)
    {
      v43 = v41[1];
      if (v43 == v35)
      {
        if ((v86.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44.__data_ = &v86;
        }

        else
        {
          v44.__data_ = v86.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v86.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44.__size_ = HIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44.__size_ = v86.__pn_.__r_.__value_.__l.__size_;
        }

        if (!std::__fs::filesystem::path::__compare((v41 + 2), v44))
        {
          goto LABEL_82;
        }
      }

      else if ((v43 & v42) != v38)
      {
        goto LABEL_100;
      }

      v41 = *v41;
      if (!v41)
      {
        goto LABEL_100;
      }
    }
  }

  while (1)
  {
    v48 = v41[1];
    if (v48 == v35)
    {
      break;
    }

    if (v48 >= *&v36)
    {
      v48 %= *&v36;
    }

    if (v48 != v38)
    {
      goto LABEL_100;
    }

LABEL_88:
    v41 = *v41;
    if (!v41)
    {
      goto LABEL_100;
    }
  }

  if ((v86.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49.__data_ = &v86;
  }

  else
  {
    v49.__data_ = v86.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v86.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49.__size_ = HIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49.__size_ = v86.__pn_.__r_.__value_.__l.__size_;
  }

  if (std::__fs::filesystem::path::__compare((v41 + 2), v49))
  {
    goto LABEL_88;
  }

LABEL_82:
  v46 = v41[5];
  v45 = v41[6];
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = v95;
  v94 = v46;
  v95 = v45;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
    v50 = v94;
    v51 = *(v94 + 312);
    if (*(v94 + 328) != 1)
    {
      goto LABEL_110;
    }

LABEL_103:
    v39 = *(v50 + 320) + v51;
    *v115 = v39;
    v115[8] = 0;
    LOBYTE(v116) = 0;
    v52 = v93;
    if (!v93)
    {
      goto LABEL_104;
    }

LABEL_120:
    if (!v52)
    {
      v91 = &unk_288115240;
      v92 = *&v115[16];
      *&v115[16] = 0;
      *&v115[24] = 0;
      v93 = 1;
      v30 = (v94 + 40);
      if (v116 != 1)
      {
        goto LABEL_130;
      }

      goto LABEL_126;
    }

    v60 = *(&v92 + 1);
    if (*(&v92 + 1) && !atomic_fetch_add((*(&v92 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
    }

    v93 = 0;
LABEL_125:
    v30 = (v94 + 40);
    if (v116 != 1)
    {
      goto LABEL_130;
    }

    goto LABEL_126;
  }

  v50 = v94;
  v51 = *(v94 + 312);
  if (*(v94 + 328) == 1)
  {
    goto LABEL_103;
  }

LABEL_110:
  sub_271725008(v50, 0x11u, *(v50 + 304), &__p);
  if (!__p.__r_.__value_.__l.__size_)
  {
    v82 = __cxa_allocate_exception(0x10uLL);
    if (*(v50 + 23) < 0)
    {
      sub_271127178(&v101, *v50, *(v50 + 8));
    }

    else
    {
      v83 = *v50;
      v101.__r_.__value_.__r.__words[2] = *(v50 + 16);
      *&v101.__r_.__value_.__l.__data_ = v83;
    }

    sub_2714D199C("Failed to write to file: ", &v101, v115);
    std::runtime_error::runtime_error(v82, v115);
    __cxa_throw(v82, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v55 = (*(*__p.__r_.__value_.__l.__size_ + 16))(__p.__r_.__value_.__l.__size_);
  v56 = v55 + *(*v55 - 24);
  if ((v56[32] & 5) != 0)
  {
    v57 = -1;
  }

  else
  {
    (*(**(v56 + 5) + 32))(v115);
    v57 = v122;
  }

  v58 = v57 & ~(v57 >> 63);
  *(v50 + 320) = v58;
  *(v50 + 328) = 1;
  *v115 = v58 + v51;
  *&v115[8] = &unk_288115240;
  *&v115[16] = *&__p.__r_.__value_.__r.__words[1];
  if (__p.__r_.__value_.__r.__words[2])
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
    v59 = __p.__r_.__value_.__r.__words[2];
    LOBYTE(v116) = 1;
    if (__p.__r_.__value_.__r.__words[2] && !atomic_fetch_add((__p.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }
  }

  else
  {
    LOBYTE(v116) = 1;
  }

  v39 = *v115;
  v52 = v93;
  if (v93 != v116)
  {
    goto LABEL_120;
  }

LABEL_104:
  if (!v52)
  {
    goto LABEL_125;
  }

  v53 = *&v115[16];
  *&v115[24] = 0;
  *&v115[16] = 0;
  v54 = *(&v92 + 1);
  v92 = v53;
  if (!v54 || atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_125;
  }

  (v54->__on_zero_shared)(v54);
  std::__shared_weak_count::__release_weak(v54);
  v30 = (v94 + 40);
  if (v116 != 1)
  {
    goto LABEL_130;
  }

LABEL_126:
  v61 = *&v115[24];
  if (*&v115[24] && !atomic_fetch_add((*&v115[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

LABEL_130:
  v62 = v30 + *(*v30 - 24);
  if ((v62[32] & 5) != 0)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    memset(v115, 0, sizeof(v115));
    v122 = -1;
  }

  else
  {
    (*(**(v62 + 5) + 32))(v115);
  }

  if (a4 != 4 && a4 != 2)
  {
    if (a4 == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &unk_288116C00;
      __p.__r_.__value_.__l.__size_ = 1;
      __p.__r_.__value_.__r.__words[2] = &unk_288116D50;
      operator new();
    }

    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 467, "", 0, "Unsupported format", 0x12uLL, sub_271852CA8);
    abort();
  }

  __p.__r_.__value_.__r.__words[0] = &unk_288117210;
  __p.__r_.__value_.__l.__size_ = 0x400000001;
  __p.__r_.__value_.__r.__words[2] = &unk_288117360;
  v110 = v30;
  qmemcpy(v111, ",\n|", 3);
  v112 = 0;
  v113 = 0;
  *(&v101.__r_.__value_.__s + 23) = 1;
  LOWORD(v101.__r_.__value_.__l.__data_) = 44;
  v100 = 1;
  LOWORD(v99) = 10;
  sub_27183CA64(&v101, &v99, 124);
  __p.__r_.__value_.__r.__words[0] = &unk_288117390;
  __p.__r_.__value_.__r.__words[2] = &unk_2881174E0;
  if (v112)
  {
    v101.__r_.__value_.__s.__data_[0] = v111[0];
    sub_271120E64(v110, &v101, 1);
  }

  MEMORY[0x2743BE7F0](v110, 2);
  ++v112;
  sub_2714F0BDC(&__p, v102);
  v63 = v111[1];
  if (v112)
  {
    v101.__r_.__value_.__s.__data_[0] = v111[0];
    sub_271120E64(v110, &v101, 1);
  }

  v101.__r_.__value_.__s.__data_[0] = v63;
  sub_271120E64(v110, &v101, 1);
  v64 = v112 + 1;
  v112 = 0;
  v113 = v64;
  v101.__r_.__value_.__s.__data_[0] = HIBYTE(v111[0]);
  sub_271120E64(v110, &v101, 1);
  v65 = v94;
  if (v94)
  {
    v66 = *(v94 + 312);
    if (v66 <= 0x19000)
    {
      v68 = v30 + *(*v30 - 24);
      if ((v68[32] & 5) != 0)
      {
        v69 = -1;
      }

      else
      {
        v70 = v94;
        (*(**(v68 + 5) + 32))(&__p);
        v69 = v114;
        v65 = v70;
        v66 = *(v70 + 312);
      }

      *(v65 + 312) = v69 + v66 - v122;
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v110) = 0;
      if (v93 == 1)
      {
        __p.__r_.__value_.__r.__words[0] = &unk_288115240;
        *&__p.__r_.__value_.__r.__words[1] = v92;
        v92 = 0uLL;
        LOBYTE(v110) = 1;
      }

      sub_2714DE8E4(v94, &__p);
      if (v110 == 1)
      {
        v67 = __p.__r_.__value_.__r.__words[2];
        if (__p.__r_.__value_.__r.__words[2])
        {
          if (!atomic_fetch_add((__p.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v67->__on_zero_shared)(v67);
            std::__shared_weak_count::__release_weak(v67);
          }
        }
      }
    }
  }

  if (SHIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v84, v86.__pn_.__r_.__value_.__l.__data_, v86.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v86;
  }

  v85 = v39;
  if (v93 == 1)
  {
    v71 = *(&v92 + 1);
    if (*(&v92 + 1))
    {
      if (!atomic_fetch_add((*(&v92 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v71->__on_zero_shared)(v71);
        std::__shared_weak_count::__release_weak(v71);
      }
    }
  }

  v72 = v95;
  if (v95 && !atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
    if (v98 == 1)
    {
LABEL_163:
      v73 = *(&v97 + 1);
      if (*(&v97 + 1) && !atomic_fetch_add((*(&v97 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
      }
    }
  }

  else if (v98 == 1)
  {
    goto LABEL_163;
  }

  *a1 = *&v84.__pn_.__r_.__value_.__l.__data_;
  v74 = v85;
  *(a1 + 16) = *(&v84.__pn_.__r_.__value_.__l + 2);
  *(a1 + 24) = v74;
  *(a1 + 32) = 1;
  v75 = v107;
  if (v107)
  {
    v76 = v108;
    v77 = v107;
    if (v108 != v107)
    {
      do
      {
        v78 = *(v76 - 1);
        if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v78->__on_zero_shared)(v78);
          std::__shared_weak_count::__release_weak(v78);
        }

        v76 -= 16;
      }

      while (v76 != v75);
      v77 = v107;
    }

    v108 = v75;
    operator delete(v77);
  }

  if (v106 != -1)
  {
    (off_288132620[v106])(v115, &v105);
  }

  v106 = -1;
  if (v104 < 0)
  {
    operator delete(v103);
    if (SHIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_184;
    }

LABEL_180:
    if ((SHIBYTE(v88) & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_185:
    operator delete(v87[0]);
    if (v90 < 0)
    {
      goto LABEL_186;
    }

LABEL_182:
    v79 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((SHIBYTE(v86.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

LABEL_184:
    operator delete(v86.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(v88) < 0)
    {
      goto LABEL_185;
    }

LABEL_181:
    if ((v90 & 0x80000000) == 0)
    {
      goto LABEL_182;
    }

LABEL_186:
    operator delete(v89[0]);
    v80 = *MEMORY[0x277D85DE8];
  }
}

void sub_2714E7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36, int a37, __int16 a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  __cxa_free_exception(v61);
  sub_2717255F4(&a61);
  if (a36 == 1)
  {
    sub_2717255F4(&a33);
  }

  sub_27112F828(&a38);
  if (a43 == 1)
  {
    sub_2717255F4(&a40);
  }

  sub_27139FD58(&a50);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_2714E7DD0(std::string *a1, uint64_t a2, void ***a3, int a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = **a3;
  v10 = v9[23];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = *v9;
    v10 = *(v9 + 1);
  }

  else
  {
    v11 = **a3;
  }

  if (v9[48])
  {
    v12 = (v9 + 24);
  }

  else
  {
    v12 = 0;
  }

  sub_2714E4488(&v38, a2, v11, v10, v12, v9[48]);
  v14 = a3[2];
  v13 = (a3 + 2);
  v15 = (v14[3])(v13);
  if (*(v15 + 64))
  {
    v16 = 48;
  }

  else
  {
    v16 = 0;
  }

  sub_2714E50C0(&pn, v13);
  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &pn;
  }

  else
  {
    v17 = pn.__r_.__value_.__r.__words[0];
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(pn.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = pn.__r_.__value_.__l.__size_;
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v19 = 4;
      v44 = 4;
      v20 = 1952539694;
      goto LABEL_24;
    }

    if (a4 == 2)
    {
      v19 = 4;
      v44 = 4;
      v20 = 1987273518;
LABEL_24:
      LODWORD(__p[0]) = v20;
      goto LABEL_26;
    }

    goto LABEL_71;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      v19 = 4;
      v44 = 4;
      v20 = 1954051118;
      goto LABEL_24;
    }

LABEL_71:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 135, "", 0, "Unsupported format", 0x12uLL, sub_271852CA8);
    abort();
  }

  v19 = 5;
  v44 = 5;
  qmemcpy(__p, ".json", 5);
LABEL_26:
  *(__p | v19) = 0;
  sub_2714E4AC4(&v35, &v38, (v15 + v16), v17, size, __p, v19, a5);
  if ((v44 & 0x80000000) == 0)
  {
    if ((SHIBYTE(pn.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_42:
    operator delete(pn.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  operator delete(__p[0]);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_43:
  operator delete(v38.__r_.__value_.__l.__data_);
LABEL_29:
  sub_271725008(&v35, 0x30u, a5, &v32);
  if (!v33)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&pn, v35.__pn_.__r_.__value_.__l.__data_, v35.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v35.__pn_;
    }

    sub_2714D199C("Failed to write to file: ", &pn, &v38);
    std::runtime_error::runtime_error(exception, &v38);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = sub_27139B104(0);
  sub_27139A710(__p, v13, v21);
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      pn.__r_.__value_.__r.__words[0] = 0x300000001;
      sub_2718287A4(&v38, &pn);
    }
  }

  else if (a4 == 1)
  {
    (*(*v33 + 16))(v33);
    v38.__r_.__value_.__r.__words[0] = &unk_288116C00;
    v38.__r_.__value_.__l.__size_ = 1;
    v38.__r_.__value_.__r.__words[2] = &unk_288116D50;
    operator new();
  }

  v22 = (*(*v33 + 16))(v33);
  v38.__r_.__value_.__r.__words[0] = &unk_288117210;
  v38.__r_.__value_.__l.__size_ = 0x400000001;
  v38.__r_.__value_.__r.__words[2] = &unk_288117360;
  v39 = v22;
  qmemcpy(v40, ",\n|", 3);
  v41 = 0;
  v42 = 0;
  *(&pn.__r_.__value_.__s + 23) = 1;
  LOWORD(pn.__r_.__value_.__l.__data_) = 44;
  v37 = 1;
  LOWORD(v36) = 10;
  sub_27183CA64(&pn, &v36, 124);
  v38.__r_.__value_.__r.__words[0] = &unk_288117390;
  v38.__r_.__value_.__r.__words[2] = &unk_2881174E0;
  if (v41)
  {
    pn.__r_.__value_.__s.__data_[0] = v40[0];
    sub_271120E64(v39, &pn, 1);
  }

  MEMORY[0x2743BE7F0](v39, 2);
  ++v41;
  sub_2714F0BDC(&v38, __p);
  v23 = v40[1];
  if (v41)
  {
    pn.__r_.__value_.__s.__data_[0] = v40[0];
    sub_271120E64(v39, &pn, 1);
  }

  pn.__r_.__value_.__s.__data_[0] = v23;
  sub_271120E64(v39, &pn, 1);
  v24 = (v41 + 1);
  v41 = 0;
  v42 = v24;
  pn.__r_.__value_.__s.__data_[0] = HIBYTE(v40[0]);
  sub_271120E64(v39, &pn, 1);
  if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v38, v35.__pn_.__r_.__value_.__l.__data_, v35.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v35.__pn_;
  }

  *a1 = v38;
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__s.__data_[8] = 1;
  v25 = v48;
  if (v48)
  {
    v26 = v49;
    v27 = v48;
    if (v49 != v48)
    {
      do
      {
        v28 = *(v26 - 1);
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v26 -= 16;
      }

      while (v26 != v25);
      v27 = v48;
    }

    v49 = v25;
    operator delete(v27);
  }

  if (v47 != -1)
  {
    (off_288132620[v47])(&v38, &v46);
  }

  v47 = -1;
  if (v45 < 0)
  {
    operator delete(__p[1]);
    v29 = v34;
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v29 = v34;
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_62:
  if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_63:
    operator delete(v35.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_64:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_2714E8EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_2715CC40C(v52, 6);
  sub_27139FD58(v53 - 160);
  sub_271828858(&a27);
  sub_27139FD58(&a47);
  sub_2717255F4(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714E9080(uint64_t a1@<X0>, void ***a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = 0;
  v24 = 0;
  v25 = 0x400000004;
  v26 = 3;
  if (a3)
  {
    a7->__r_.__value_.__s.__data_[0] = 0;
    a7[1].__r_.__value_.__s.__data_[8] = 0;
    return;
  }

  if ((a3 & 0x40) == 0)
  {
    goto LABEL_18;
  }

  sub_2714FCC00((a2 + 2));
  v9 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v9 != 8)
  {
    goto LABEL_9;
  }

  v10 = __p[0];
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  if (*v10 != *"cv3d.viz")
  {
LABEL_9:
    v11 = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v11 = v17 == 7;
  if (v16 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_18:
    if ((a3 & 4) != 0)
    {
      sub_2714EC5D0(&v18);
      if (v24 == 1)
      {
        sub_2714EC5D0(&v18);
        if (v25 == 6)
        {
          sub_2714EB2A4(a7, v18, v19, a3, v20);
        }

        else
        {
          if (v25 != 5)
          {
            goto LABEL_45;
          }

          sub_2714E9614(a7, v18, v19, a3, v20);
        }

        return;
      }
    }

    if ((a3 & 0x38) != 0)
    {
      if ((a3 & 0x10) != 0)
      {
        if ((a3 & 0x100) != 0)
        {
          sub_2714E7DD0(a7, v18, v19, 2, v20);
        }

        else
        {
          sub_2714E6204(a7, v18, v19, 2, v20, v21, v22);
        }

        return;
      }

      if ((a3 & 0x20) != 0)
      {
        sub_2714E7DD0(a7, v18, v19, 3, v20);
        return;
      }

      sub_2714EC5D0(&v18);
      if (BYTE1(v23) == 1)
      {
        v12 = v18;
        v13 = v19;
        v14 = v20;
        if ((a3 & 0x100) == 0)
        {
LABEL_28:
          sub_2714E6204(a7, v12, v13, SHIDWORD(v25), v14, v21, v22);
          return;
        }

LABEL_39:
        sub_2714E7DD0(a7, v12, v13, v26, v14);
        return;
      }

      sub_2714EC5D0(&v18);
      if (BYTE2(v23) == 1)
      {
        v12 = v18;
        v13 = v19;
        v14 = v20;
        if ((a3 & 0x80) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      v12 = v18;
      v13 = v19;
      v14 = v20;
      if ((a3 & 2) == 0)
      {
        if ((a3 & 0x80) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }
    }

    else
    {
      sub_2714EC5D0(&v18);
      v12 = v18;
      v13 = v19;
      v14 = v20;
      if (BYTE1(v23) == 1)
      {
        if ((a3 & 0x100) == 0)
        {
LABEL_44:
          sub_2714E6204(a7, v12, v13, 1, v14, v21, v22);
          return;
        }

LABEL_31:
        sub_2714E7DD0(a7, v12, v13, 1, v14);
        return;
      }
    }

    if ((a3 & 0x80) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_31;
  }

LABEL_10:
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_11:
  sub_2714EC5D0(&v18);
  if (v25 != 6)
  {
    if (v25 == 5)
    {
      sub_2714E9614(a7, v18, v19, 0x40uLL, v20);
      return;
    }

LABEL_45:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 626, "", 0, "No known common format", 0x16uLL, sub_271852CA8);
    abort();
  }

  sub_2714EB2A4(a7, v18, v19, 0x40uLL, v20);
}

void sub_2714E9410(uint64_t a1@<X0>, void ***a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = 0;
  v28 = 0;
  v29 = 0x400000004;
  v30 = 3;
  if ((a3 & 2) != 0)
  {
LABEL_9:
    v10 = a7;
    v11 = a2;
    v12 = 1;
    v13 = a4;

LABEL_11:
    sub_2714E7DD0(v10, a1, v11, v12, v13);
    return;
  }

  if ((a3 & 8) != 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x10) != 0)
  {
    v10 = a7;
    v11 = a2;
    v12 = 2;
    v13 = a4;

    goto LABEL_11;
  }

  if ((a3 & 0x20) != 0)
  {
LABEL_12:
    v10 = a7;
    v11 = a2;
    v12 = 3;
    v13 = a4;

    goto LABEL_11;
  }

  if ((a3 & 0x40) == 0)
  {
    if ((a3 & 4) == 0)
    {
      if ((a3 & 1) == 0)
      {
        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 801, "", 0, "Flag not supported for ExportLargeData", 0x26uLL, sub_271852CA8);
        abort();
      }

      a7->__r_.__value_.__s.__data_[0] = 0;
      a7[1].__r_.__value_.__s.__data_[8] = 0;
      return;
    }

    goto LABEL_9;
  }

  sub_2714EC5D0(&v22);
  if (v29 == 6)
  {
    v19 = v22;
    v20 = v23;
    v21 = v24;

    sub_2714EB2A4(a7, v19, v20, a3, v21);
  }

  else
  {
    if (v29 != 5)
    {
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 626, "", 0, "No known common format", 0x16uLL, sub_271852CA8);
      abort();
    }

    v16 = v22;
    v17 = v23;
    v18 = v24;

    sub_2714E9614(a7, v16, v17, a3, v18);
  }
}

void sub_2714E9614(std::string *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = **v10;
    v13 = __dynamic_cast(v10, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_9:
  if (!v13)
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_65;
  }

  v15 = *(a3 + 24);
  v14 = *(a3 + 32);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v15;
  v37 = v14;
  if (!v15)
  {
LABEL_65:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 841, "image_data_ptr", 0xEuLL, "ExportImageData requires data to be ImageData", 0x2DuLL, sub_271852CA8);
    abort();
  }

  v16 = *(v15 + 64);
  v17 = ".png";
  v18 = 3;
  v19 = 4;
  if (v16 <= 22)
  {
    if ((v16 - 1) >= 2)
    {
      if ((v16 - 3) < 2)
      {
        v17 = ".tiff";
        v18 = 5;
        v19 = 5;
      }

      else if ((v16 - 21) >= 2)
      {
        goto LABEL_63;
      }
    }

LABEL_26:
    sub_2714E9E74(v32, a2, a3, v17, v19, a4, a5);
    sub_271725008(&v35, 0x30u, a5, &v29);
    v20 = (*(*v30 + 16))(v30);
    v49[0] = &unk_28810E7B8;
    v21 = *(v15 + 24);
    v22 = *(v15 + 32);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *(v15 + 56);
      v24 = *(v15 + 64);
      v25 = *(v15 + 68);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v23 = *(v15 + 56);
      v24 = *(v15 + 64);
      v25 = *(v15 + 68);
    }

    v49[1] = v21;
    __p = v22;
    v51 = *(v15 + 40);
    v52 = *(v15 + 48);
    v53 = v23;
    v54 = v24;
    v55 = v25;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    sub_2715E8E40(v49, v20, v18, v56);
    v26 = __p;
    if (__p && !atomic_fetch_add(__p + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v27 = v57;
      if (v57 == 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v27 = v57;
      if (v57 == 1)
      {
LABEL_35:
        v48 = v27;
        sub_2713B52B4(&v38);
        if ((v48 & 1) == 0 && v47 == 1)
        {
          if (v46 == 1)
          {
            if (SHIBYTE(v45) < 0)
            {
              operator delete(v44[0]);
            }

            if (v43 < 0)
            {
              operator delete(v42);
            }
          }

          if (v41 == 1 && v40 < 0)
          {
            operator delete(v39);
          }
        }

        if (SHIBYTE(v33) < 0)
        {
          sub_271127178(a1, v32[0], v32[1]);
        }

        else
        {
          *&a1->__r_.__value_.__l.__data_ = *v32;
          a1->__r_.__value_.__r.__words[2] = v33;
        }

        a1[1].__r_.__value_.__r.__words[0] = v34;
        a1[1].__r_.__value_.__s.__data_[8] = 1;
        v28 = v31;
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
          if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_54:
            if ((SHIBYTE(v33) & 0x80000000) == 0)
            {
LABEL_55:
              v14 = v37;
              goto LABEL_56;
            }

LABEL_62:
            operator delete(v32[0]);
            goto LABEL_55;
          }
        }

        else if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        operator delete(v35.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    v59[0] = "save";
    v59[1] = 4;
    v58 = v18;
    sub_2715E8C50("Failure during ", v59, " from stream with file format ");
  }

  if (v16 <= 29)
  {
    if ((v16 - 23) >= 2 && v16 != 29)
    {
      goto LABEL_63;
    }

    goto LABEL_23;
  }

  if ((v16 - 31) < 2)
  {
LABEL_23:
    v17 = ".tiff";
    v19 = 5;
    v18 = 5;
    goto LABEL_26;
  }

  if (v16 == 30)
  {
    goto LABEL_26;
  }

LABEL_63:
  sub_2714E9410(a2, a3, a4, a5, 0, 0, a1);
LABEL_56:
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void sub_2714E9E74(uint64_t a1, uint64_t a2, void ***a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v129 = *MEMORY[0x277D85DE8];
  if (a6 <= 0x10 && ((1 << a6) & 0x14100) != 0)
  {
    v12 = 0;
    v13 = 1987273518;
  }

  else
  {
    v12 = 1;
    v13 = 1952539694;
  }

  v73 = 4;
  LODWORD(v72[0]) = v13;
  BYTE4(v72[0]) = 0;
  v14 = **a3;
  v15 = v14[23];
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = *v14;
    v15 = *(v14 + 1);
  }

  else
  {
    v16 = **a3;
  }

  if (v14[48])
  {
    v17 = (v14 + 24);
  }

  else
  {
    v17 = 0;
  }

  sub_2714E4488(&v71, a2, v16, v15, v17, v14[48]);
  v18 = (a3 + 2);
  sub_2714E50C0(&v70, v18);
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v70.__r_.__value_.__l.__size_;
  }

  if (size + 5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (size + 5 >= 0x17)
  {
    operator new();
  }

  memset(&v90, 0, sizeof(v90));
  *(&v90.__r_.__value_.__s + 23) = size + 5;
  if (size)
  {
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v70;
    }

    else
    {
      v20 = v70.__r_.__value_.__r.__words[0];
    }

    memmove(&v90, v20, size);
  }

  strcpy(&v90 + size, "_info");
  if (v73 >= 0)
  {
    v21 = v72;
  }

  else
  {
    v21 = v72[0];
  }

  if (v73 >= 0)
  {
    v22 = v73;
  }

  else
  {
    v22 = v72[1];
  }

  v23 = std::string::append(&v90, v21, v22);
  v24 = v23->__r_.__value_.__r.__words[0];
  *&v105 = v23->__r_.__value_.__l.__size_;
  *(&v105 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(&v105 + 7);
  __dst.__r_.__value_.__r.__words[0] = v24;
  __dst.__r_.__value_.__l.__size_ = v105;
  *(&__dst.__r_.__value_.__s + 23) = v25;
  if (SHIBYTE(v71.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v69, v71.__pn_.__r_.__value_.__l.__data_, v71.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v69 = v71;
  }

  sub_2714D75A8(&v69, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v90.__r_.__value_.__l.__data_);
LABEL_33:
  v26 = (*(*v18 + 24))(v18);
  v27 = 48;
  if (!*(v26 + 64))
  {
    v27 = 0;
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v70;
  }

  else
  {
    v28 = v70.__r_.__value_.__r.__words[0];
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v70.__r_.__value_.__l.__size_;
  }

  sub_2714E4AC4(&v68, &v71, (v26 + v27), v28, v29, a4, a5, a7);
  v30 = std::__fs::filesystem::path::__filename(&v68);
  if (v30.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v30.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v30.__size_;
  if (v30.__size_)
  {
    memmove(&__dst, v30.__data_, v30.__size_);
  }

  __dst.__r_.__value_.__s.__data_[v30.__size_] = 0;
  v31 = *&__dst.__r_.__value_.__l.__data_;
  LODWORD(v105) = __dst.__r_.__value_.__r.__words[2];
  *(&v105 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
  v32 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v33 = sub_2714FC508(v18);
  if (v32 < 0)
  {
    sub_271127178(&v90, v31, *(&v31 + 1));
  }

  else
  {
    *&v90.__r_.__value_.__l.__data_ = v31;
    LODWORD(v90.__r_.__value_.__r.__words[2]) = v105;
    *(&v90.__r_.__value_.__r.__words[2] + 3) = *(&v105 + 3);
    *(&v90.__r_.__value_.__s + 23) = v32;
  }

  v91 = 0;
  sub_2713B2524(v92, v33);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  LOBYTE(v85) = 0;
  v87 = 0;
  v83 = 0;
  v84 = 0;
  v80 = 0;
  v82 = 0;
  sub_271725008(&v69, 0x11u, a7, &__dst);
  if (v87 == 1)
  {
    v34 = *&__dst.__r_.__value_.__r.__words[1];
    *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
    v35 = *(&v86 + 1);
    v86 = v34;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  else
  {
    v85 = &unk_288115240;
    v86 = *&__dst.__r_.__value_.__r.__words[1];
    *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
    v87 = 1;
  }

  v36 = __dst.__r_.__value_.__r.__words[2];
  if (__dst.__r_.__value_.__r.__words[2] && !atomic_fetch_add((__dst.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if ((v87 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v105, v69.__pn_.__r_.__value_.__l.__data_, v69.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v105 = *&v69.__pn_.__r_.__value_.__l.__data_;
      *&v106 = *(&v69.__pn_.__r_.__value_.__l + 2);
    }

    sub_2714D199C("Failed to write to file: ", &v105, &__dst);
    std::runtime_error::runtime_error(exception, &__dst);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v37 = (*(*v86 + 16))(v86);
  v38 = v37;
  v39 = v37 + *(*v37 - 24);
  if ((v39[32] & 5) != 0)
  {
    v40 = -1;
    v41 = v37 + *(*v37 - 24);
    if ((v41[32] & 5) != 0)
    {
LABEL_65:
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v113 = -1;
      goto LABEL_68;
    }
  }

  else
  {
    (*(**(v39 + 5) + 32))(&__dst);
    v40 = v121;
    v41 = v38 + *(*v38 - 24);
    if ((v41[32] & 5) != 0)
    {
      goto LABEL_65;
    }
  }

  (*(**(v41 + 5) + 32))(&v105);
LABEL_68:
  if (v12)
  {
    __dst.__r_.__value_.__l.__size_ = 1;
    __dst.__r_.__value_.__r.__words[0] = &unk_288116C00;
    __dst.__r_.__value_.__r.__words[2] = &unk_288116D50;
    operator new();
  }

  v74[0] = &unk_288117210;
  v74[1] = 0x400000001;
  v75 = &unk_288117360;
  v76 = v38;
  qmemcpy(v77, ",\n|", 3);
  v78 = 0;
  v79 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 1;
  LOWORD(__dst.__r_.__value_.__l.__data_) = 44;
  v89 = 1;
  *v88 = 10;
  sub_27183CA64(&__dst, v88, 124);
  v74[0] = &unk_288117390;
  v75 = &unk_2881174E0;
  if (v78)
  {
    __dst.__r_.__value_.__s.__data_[0] = v77[0];
    sub_271120E64(v76, &__dst, 1);
  }

  MEMORY[0x2743BE7F0](v76, 3);
  ++v78;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__dst, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v90;
  }

  v115 = v91;
  sub_2713B3058(v116, v92);
  sub_271839128(v74, &__dst);
  if (v78)
  {
    v88[0] = v77[0];
    sub_271120E64(v76, v88, 1);
  }

  MEMORY[0x2743BE850](v76, v115);
  if (!__CFADD__(v78++, 1))
  {
    v88[0] = v77[0];
    sub_271120E64(v76, v88, 1);
  }

  MEMORY[0x2743BE7F0](v76, 6);
  ++v78;
  sub_2713B8374(v74, v116, 6u);
  v43 = v77[1];
  if (v78)
  {
    v88[0] = v77[0];
    sub_271120E64(v76, v88, 1);
  }

  v88[0] = v43;
  sub_271120E64(v76, v88, 1);
  ++v78;
  if (v128 == 1)
  {
    v44 = __p;
    if (__p)
    {
      v45 = v127;
      v46 = __p;
      if (v127 != __p)
      {
        do
        {
          v47 = *(v45 - 1);
          v45 -= 3;
          if (v47 < 0)
          {
            operator delete(*v45);
          }
        }

        while (v45 != v44);
        v46 = __p;
      }

      v127 = v44;
      operator delete(v46);
    }
  }

  if (v125 == 1 && v124 < 0)
  {
    operator delete(v123);
  }

  if (v122 == 1 && SHIBYTE(v121) < 0)
  {
    operator delete(v120);
  }

  if (v119 == 1 && v118 < 0)
  {
    operator delete(v117);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v48 = v77[1];
    if (!v78)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v48 = v77[1];
  if (v78)
  {
LABEL_103:
    __dst.__r_.__value_.__s.__data_[0] = v77[0];
    sub_271120E64(v76, &__dst, 1);
  }

LABEL_104:
  __dst.__r_.__value_.__s.__data_[0] = v48;
  sub_271120E64(v76, &__dst, 1);
  v49 = v78 + 1;
  v78 = 0;
  v79 = v49;
  __dst.__r_.__value_.__s.__data_[0] = HIBYTE(v77[0]);
  sub_271120E64(v76, &__dst, 1);
  v50 = v83;
  if (v83)
  {
    v51 = *(v83 + 312);
    if (v51 <= 0x19000)
    {
      v53 = v38 + *(*v38 - 24);
      if ((v53[32] & 5) != 0)
      {
        v54 = -1;
      }

      else
      {
        v55 = v83;
        (*(**(v53 + 5) + 32))(&__dst);
        v54 = v121;
        v50 = v55;
        v51 = *(v55 + 312);
      }

      *(v50 + 312) = v54 + v51 - v113;
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v115) = 0;
      if (v82 == 1)
      {
        __dst.__r_.__value_.__r.__words[0] = &unk_288115240;
        *&__dst.__r_.__value_.__r.__words[1] = v81;
        v81 = 0uLL;
        LOBYTE(v115) = 1;
      }

      sub_2714DE8E4(v83, &__dst);
      if (v115 == 1)
      {
        v52 = __dst.__r_.__value_.__r.__words[2];
        if (__dst.__r_.__value_.__r.__words[2])
        {
          if (!atomic_fetch_add((__dst.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v52->__on_zero_shared)(v52);
            std::__shared_weak_count::__release_weak(v52);
          }
        }
      }
    }
  }

  if (SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v66, v69.__pn_.__r_.__value_.__l.__data_, v69.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v66 = v69;
  }

  v67 = v40 & ~(v40 >> 63);
  if (v82 == 1)
  {
    v56 = *(&v81 + 1);
    if (*(&v81 + 1))
    {
      if (!atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
      }
    }
  }

  v57 = v84;
  if (v84 && !atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
    if (v87 != 1)
    {
      goto LABEL_130;
    }
  }

  else if (v87 != 1)
  {
    goto LABEL_130;
  }

  v58 = *(&v86 + 1);
  if (*(&v86 + 1) && !atomic_fetch_add((*(&v86 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

LABEL_130:
  if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(a1, v66.__pn_.__r_.__value_.__l.__data_, v66.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *a1 = v66;
  }

  *(a1 + 24) = v67;
  if (SHIBYTE(v68.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178((a1 + 32), v68.__pn_.__r_.__value_.__l.__data_, v68.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 32) = v68;
  }

  if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__pn_.__r_.__value_.__l.__data_);
    if (v104 != 1)
    {
      goto LABEL_148;
    }
  }

  else if (v104 != 1)
  {
    goto LABEL_148;
  }

  v59 = v102;
  if (v102)
  {
    v60 = v103;
    v61 = v102;
    if (v103 != v102)
    {
      do
      {
        v62 = *(v60 - 1);
        v60 -= 3;
        if (v62 < 0)
        {
          operator delete(*v60);
        }
      }

      while (v60 != v59);
      v61 = v102;
    }

    v103 = v59;
    operator delete(v61);
  }

LABEL_148:
  if (v101 == 1 && v100 < 0)
  {
    operator delete(v99);
  }

  if (v98 == 1 && v97 < 0)
  {
    operator delete(v96);
  }

  if (v95 == 1 && v94 < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_159:
      if ((SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_166;
    }
  }

  else if ((SHIBYTE(v68.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

  operator delete(v68.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_167;
  }

LABEL_166:
  operator delete(v69.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_161:
    if ((SHIBYTE(v71.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_168:
    operator delete(v71.__pn_.__r_.__value_.__l.__data_);
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_169;
  }

LABEL_167:
  operator delete(v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v71.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_168;
  }

LABEL_162:
  if ((v73 & 0x80000000) == 0)
  {
LABEL_163:
    v63 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_169:
  operator delete(v72[0]);
  v64 = *MEMORY[0x277D85DE8];
}

void sub_2714EAFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, int a57, __int16 a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a56 == 1)
  {
    sub_2717255F4(&a53);
  }

  sub_27112F828(&a58);
  if (a63 == 1)
  {
    sub_2717255F4(&a60);
  }

  sub_2714D7700(&a67);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    if (a33 < 0)
    {
      operator delete(a28);
      if ((a39 & 0x80000000) == 0)
      {
LABEL_13:
        if ((a45 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

    else if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(a34);
    if ((a45 & 0x80000000) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_17:
    operator delete(a40);
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  goto LABEL_11;
}

uint64_t sub_2714EB248(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_2714EB2A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = **v10;
    v13 = __dynamic_cast(v10, &unk_28811D1B0, &unk_28811DB58, 0) != 0;
    if (!v11)
    {
LABEL_8:
      if (v13)
      {
        goto LABEL_9;
      }

LABEL_14:
      v14 = 0;
      v53 = 0;
      v54 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_9:
  v15 = *(a3 + 24);
  v14 = *(a3 + 32);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v15;
  v54 = v14;
  if (!v15)
  {
LABEL_15:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 866, "mesh_data_ptr", 0xDuLL, "ExportMeshData requires data to be MeshData", 0x2BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_22:
        qword_28087C420(*algn_28087C428, "mesh_data_ptr", 13, "ExportMeshData requires data to be MeshData", 43);
        v15 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "mesh_data_ptr", 13, "ExportMeshData requires data to be MeshData", 43);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_22;
    }

LABEL_59:
    abort();
  }

LABEL_23:
  v18 = sub_27171D0B0(*(v15 + 16), 0);
  if (a4 == 64 || ((v18 == 2) & ~*(*(v15 + 16) + 408)) != 0)
  {
    if (a4 == 64 && !v18)
    {
      __cxa_allocate_exception(0x88uLL);
      sub_27112B400(v36, ".obj");
      sub_27112B400(v40, "mesh is required to have per-vertex colors and normals");
      sub_2714C3178(v36, v40, &v24);
      v42 = v24;
      LOBYTE(v43) = 0;
      v52 = 0;
      if (v34 == 1)
      {
        v45 = 0;
        if (v27 == 1)
        {
          v43 = v25;
          v44 = v26;
          v26 = 0;
          v25 = 0uLL;
          v45 = 1;
        }

        LOBYTE(v46) = 0;
        v51 = 0;
        if (v33 == 1)
        {
          v47 = v29;
          v46 = *v28;
          v28[0] = 0;
          v28[1] = 0;
          v48 = v30;
          v49 = *v31;
          v50 = v32;
          v29 = 0;
          v31[0] = 0;
          v31[1] = 0;
          v32 = 0;
          v51 = 1;
        }

        v52 = 1;
      }

      sub_2714EC7BC();
    }

    sub_2714E9E74(v36, a2, a3, ".obj", 4, a4, a5);
    sub_271725008(&v39, 0x30u, a5, v40);
    if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&__p, v39.__pn_.__r_.__value_.__l.__data_, v39.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v39;
    }

    sub_27171D49C(&__p, *(v15 + 16), a5, &v24);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if ((v35 & 1) == 0)
    {
      v22 = sub_271389D20(&v24);
      sub_27139601C(v22);
    }

    if (SHIBYTE(v37) < 0)
    {
      sub_271127178(a1, v36[0], v36[1]);
      v20 = v35;
      *(a1 + 24) = v38;
      *(a1 + 32) = 1;
      if ((v20 & 1) == 0 && v34 == 1)
      {
        if (v33 == 1)
        {
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28[0]);
          }
        }

        if (v27 == 1 && SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }
    }

    else
    {
      *a1 = *v36;
      v19 = v38;
      *(a1 + 16) = v37;
      *(a1 + 24) = v19;
      *(a1 + 32) = 1;
    }

    v21 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_50:
        if ((SHIBYTE(v37) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_55;
      }
    }

    else if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    operator delete(v39.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
LABEL_51:
      v14 = v54;
      if (!v54)
      {
        return;
      }

      goto LABEL_56;
    }

LABEL_55:
    operator delete(v36[0]);
    v14 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_56;
  }

  sub_2714E9410(a2, a3, a4, a5, 0, 0);
  if (!v14)
  {
    return;
  }

LABEL_56:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_2714EB878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27112D71C(v51 - 224);
  sub_27112D71C(&a18);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if ((v50 & 1) == 0)
    {
LABEL_8:
      sub_27112F828(v51 - 104);
      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v49);
  sub_27112F828(v51 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_2714EB974(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 176) = 0;
  v6 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v7 = a1 + 16;
  v8 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v9 = a1 + 24;
  v10 = MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 24);
  v12 = *(MEMORY[0x277D82818] + 16);
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v11;
  *(a1 + 8) = 0;
  v13 = (a1 + *(*a1 - 24));
  std::ios_base::init(v13, (a1 + 24));
  v14 = MEMORY[0x277D82890] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v15 = v10[5];
  v16 = v10[4];
  *(a1 + 16) = v16;
  *(v7 + *(v16 - 24)) = v15;
  v17 = v10[1];
  *a1 = v17;
  *(a1 + *(v17 - 24)) = v10[6];
  *a1 = v14;
  *(a1 + 128) = v6;
  v18 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v8;
  *(a1 + 24) = v18;
  MEMORY[0x2743BED80](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  v19 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v19;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a3;
  sub_271129318(v9);
  return a1;
}

void sub_2714EBC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 111) < 0)
  {
    operator delete(*(v10 + 88));
  }

  *(v10 + 24) = v11;
  std::locale::~locale((v10 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](a10);
  _Unwind_Resume(a1);
}

void sub_2714EBCEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714EBD40(uint64_t a1)
{
  v6[0] = 0;
  v8 = 0;
  sub_2714DE8E4(a1 + 24, v6);
  if (v8 == 1)
  {
    v2 = v7;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  v3 = MEMORY[0x277D82818];
  v4 = *MEMORY[0x277D82818];
  *(a1 + 48) = *MEMORY[0x277D82818];
  v5 = *(v3 + 72);
  *(a1 + 48 + *(v4 - 24)) = *(v3 + 64);
  *(a1 + 64) = v5;
  *(a1 + 72) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 72) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 80));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](a1 + 176);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t sub_2714EBF30(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = 0;
  *(a1 + 128) = MEMORY[0x277D828C0] + 16;
  v4 = MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 24);
  v6 = *(MEMORY[0x277D82818] + 16);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  v8 = (a2 + *(*a2 - 24));
  std::ios_base::move(v7, v8);
  v7[1].__vftable = v8[1].__vftable;
  v8[1].__vftable = 0;
  v7[1].__fmtflags_ = v8[1].__fmtflags_;
  v9 = v4[5];
  v10 = v4[4];
  *(a1 + 16) = v10;
  *(a1 + 16 + *(v10 - 24)) = v9;
  v11 = v4[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v4[6];
  *a1 = MEMORY[0x277D82890] + 24;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 32);
  *(a1 + 88) = 0;
  v12 = (a1 + 88);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = *(a2 + 120);
  v13 = (a2 + 88);
  if (*(a2 + 111) >= 0)
  {
    v14 = a2 + 88;
  }

  else
  {
    v14 = *(a2 + 88);
  }

  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = v15 - v14;
    v17 = *(a2 + 48) - v14;
    v18 = *(a2 + 56) - v14;
    v19 = *(a2 + 64);
    if (v19)
    {
LABEL_6:
      v20 = v19 - v14;
      v21 = *(a2 + 72) - v14;
      v22 = *(a2 + 80) - v14;
      goto LABEL_9;
    }
  }

  else
  {
    v18 = -1;
    v17 = -1;
    v16 = -1;
    v19 = *(a2 + 64);
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v20 = -1;
  v21 = -1;
  v22 = -1;
LABEL_9:
  v23 = *(a2 + 112);
  v24 = v23 - v14;
  if (!v23)
  {
    v24 = -1;
  }

  v25 = *v13;
  *(a1 + 104) = *(a2 + 104);
  *v12 = v25;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  v26 = a1 + 88;
  if (*(a1 + 111) < 0)
  {
    v26 = *v12;
  }

  if (v16 != -1)
  {
    *(a1 + 40) = v26 + v16;
    *(a1 + 48) = v26 + v17;
    *(a1 + 56) = v26 + v18;
  }

  if (v20 != -1)
  {
    *(a1 + 80) = v26 + v22;
    *(a1 + 64) = v26 + v20;
    *(a1 + 72) = v26 + v20 + v21;
  }

  v27 = v26 + v24;
  if (v24 == -1)
  {
    v27 = 0;
  }

  *(a1 + 112) = v27;
  if (*(a2 + 111) < 0)
  {
    v13 = *(a2 + 88);
  }

  *(a2 + 40) = v13;
  *(a2 + 48) = v13;
  *(a2 + 56) = v13;
  *(a2 + 64) = v13;
  *(a2 + 72) = v13;
  *(a2 + 80) = v13;
  *(a2 + 112) = v13;
  std::locale::locale(&v29, (a2 + 32));
  (*(*(a1 + 24) + 16))(a1 + 24, &v29);
  std::locale::locale(&v30, (a1 + 32));
  std::locale::operator=((a1 + 32), &v29);
  std::locale::~locale(&v30);
  std::locale::~locale(&v29);
  *(a1 + *(*a1 - 24) + 40) = a1 + 24;
  return a1;
}

void sub_2714EC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  if (*(v9 + 111) < 0)
  {
    operator delete(*v12);
  }

  *(v9 + 24) = v11;
  std::locale::~locale((v9 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](v10);
  _Unwind_Resume(a1);
}

void *sub_2714EC420(void *result)
{
  *(result - 2) = &unk_288116C00;
  v1 = result[1];
  *result = &unk_288116D50;
  result[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      *(v1 + 88) = v2;
      operator delete(v2);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t ***sub_2714EC4E8(uint64_t ***result)
{
  if (*(result + 120) == 1)
  {
    v1 = *result;
    *result = 0;
    if (v1)
    {
      v2 = result;
      sub_2715CC40C(v1 + 1, *v1);
      MEMORY[0x2743BF050](v1, 0x1022C40B06DCE69);
      return v2;
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v3 = result;
        operator delete(result[10]);
        result = v3;
      }

      if (*(result + 71) < 0)
      {
        v4 = result;
        operator delete(result[6]);
        result = v4;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v5 = result;
      operator delete(result[2]);
      return v5;
    }
  }

  return result;
}

void sub_2714EC5D0(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
    sub_2714FCC00(*(a1 + 8) + 16);
    v2 = v8;
    v3 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v2 = __p[1];
    }

    if (v2 != 8)
    {
      goto LABEL_8;
    }

    v4 = __p[0];
    if ((v8 & 0x80u) == 0)
    {
      v4 = __p;
    }

    if (*v4 != 0x7A69762E64337663)
    {
      goto LABEL_8;
    }

    if (v9 > 6)
    {
      v5 = a1;
      if (v9 > 10)
      {
        if ((v9 - 12) >= 2)
        {
          if (v9 == 11)
          {
            *(a1 + 41) = 1;
            *(a1 + 52) = 4;
            goto LABEL_8;
          }

          if (v9 == 14)
          {
            goto LABEL_33;
          }

          goto LABEL_8;
        }

LABEL_18:
        *(v5 + 42) = 1;
        goto LABEL_8;
      }

      if (v9 == 7)
      {
        *(a1 + 44) = 1;
        v6 = 6;
        goto LABEL_29;
      }

      if (v9 != 8 && v9 != 10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v9 <= 4)
      {
        v5 = a1;
        if ((v9 - 2) >= 3)
        {
          if (v9 == 1)
          {
            *(a1 + 44) = 1;
            v6 = 5;
LABEL_29:
            *(v5 + 48) = v6;
            goto LABEL_8;
          }

          if (!v9)
          {
LABEL_33:
            sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 684, "", 0, "invalid data type", 0x11uLL, sub_271852CA8);
            abort();
          }

LABEL_8:
          if (v3 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

        goto LABEL_18;
      }

      if (v9 != 5)
      {
        *(a1 + 56) = 3;
        goto LABEL_8;
      }
    }

    *(a1 + 41) = 1;
    *(a1 + 52) = 2;
    goto LABEL_8;
  }
}

void sub_2714EC7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ECAA8(_Unwind_Exception *a1)
{
  sub_27112D66C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_2714ECAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ECAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 56);
  *(v27 - 56) = 0;
  if (v29)
  {
    sub_27184D728(v27 - 56, v29);
  }

  sub_271130878(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2714ECB9C(uint64_t a1)
{
  *a1 = &unk_288114B60;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

void sub_2714ECC04(uint64_t a1)
{
  *a1 = &unk_288114B60;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714ECC94(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 4;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECD34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 4);
  _Unwind_Resume(a1);
}

void sub_2714ECD50(uint64_t a1, char *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECDF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ECE0C(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECEAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ECEC8(uint64_t a1, int *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECF68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ECF84(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ED040(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED0E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ED0FC(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED1B8(uint64_t a1, char *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ED274(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED330(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 88) == 1 && *(a1 + 80) == 7 && ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), v5))
  {
    *(a1 + 96) = *a2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED410(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED4B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED4CC(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(a1);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED56C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED588(uint64_t a1, float *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    sub_27182ADE0(a1, a2);
  }
}

void sub_2714ED5D0(uint64_t a1, double *a2)
{
  if (*(a1 + 88) != 1 || *(a1 + 80) != 7 || ((v2 = *(a1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    sub_27182AFE4(a1, a2);
  }
}

void sub_2714ED61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182CE6C(a1, v3);
}

void sub_2714ED644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B308(a1, v3);
}

void sub_2714ED66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B5E0(a1, v3);
}

void sub_2714ED694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B8F0(a1, v3);
}

void sub_2714ED6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BC00(a1, v3);
}

void sub_2714ED6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BF10(a1, v3);
}

void sub_2714ED70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_271828DE4(a1, v3);
}

void sub_2714ED734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B474(a1, v3);
}

void sub_2714ED75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B768(a1, v3);
}

void sub_2714ED784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BA78(a1, v3);
}

void sub_2714ED7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BD88(a1, v3);
}

void sub_2714ED7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182C098(a1, v3);
}

void sub_2714ED7FC(uint64_t a1, float *a2, float *a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182C644(a1, v3);
}

void sub_2714ED824(uint64_t a1, double *a2, double *a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182CAA4(a1, v3);
}

void sub_2714ED84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182CFC4(a1, v3);
}

void sub_2714ED878(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  sub_271828DE4(a1, v3);
}

_BYTE *sub_2714ED8BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714EDCBC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2714ED9BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714EDAB0(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288132648[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2714EDC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2714EDCBC(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2714EDE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2714EE074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

void sub_2714EE0A0(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132648[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714EE264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714EE2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714EE4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714EE518(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_2714EE61C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714EE928(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2714EE71C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288132648[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2714EE8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2714EE928(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2714EEAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714EEAD8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714EEBCC(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132648[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714EED90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714EEDE8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714EF028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714EF044(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714EF138(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132648[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714EF2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714EF354(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714EF594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2714EF5B0(void *a1)
{
  *a1 = &unk_288116C00;
  v1 = a1[3];
  a1[2] = &unk_288116D50;
  a1[3] = 0;
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      *(v1 + 88) = v2;
      operator delete(v2);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    MEMORY[0x2743BF050](v1, 0x1030C408C1A3048);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714EF6B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1[11] - 8);
  sub_2718404E0(v1 + 6, v1[2] - v2 - 9);
  v3 = v1[6];
  if (v3)
  {
    memmove((v1[3] + v2), v1[7], v3);
  }

  v1[6] = 0;
  v4 = v1[10];
  v5 = v1[11] - 8;
  v1[11] = v5;
  if (v4 == v5)
  {
    v6 = *v1;
    v8 = v1[2];
    v7 = v1[3];
    std::ostream::write();
    if (*(v1 + 40) == 1)
    {
      free(v1[3]);
      *(v1 + 40) = 0;
    }
  }
}

uint64_t **sub_2714EF750(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v5 = (v2 + 16);
    return sub_2718470CC(&v5, a2);
  }

  else
  {
    if (*a2 == 1)
    {
      v6 = -61;
    }

    else
    {
      v7 = -62;
    }

    v4 = *(v2 + 8);
    return std::ostream::write();
  }
}

char *sub_2714EF7E0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v6 = (v2 + 16);
    return sub_271845378(&v6, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 > -33)
    {
      v7 = *a2;
    }

    else
    {
      v8 = -48;
      v9 = v4;
    }

    v5 = *(v2 + 8);
    return std::ostream::write();
  }
}

_BYTE *sub_2714EF870(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_27184561C(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_2718458EC((v4 + 8));
  }
}

_BYTE *sub_2714EF8C8(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271845BC4(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_271845FEC((v4 + 8));
  }
}

_BYTE *sub_2714EF920(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846460(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_2718469A8((v4 + 8), v6);
  }
}

_BYTE *sub_2714EF978(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846460(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_2718469A8((v4 + 8), v6);
  }
}

char *sub_2714EF9D0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v6 = (v2 + 16);
    return sub_2718454CC(&v6, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 < 0)
    {
      v7 = -52;
      v8 = v4;
    }

    else
    {
      v9 = *a2;
    }

    v5 = *(v2 + 8);
    return std::ostream::write();
  }
}

char *sub_2714EFA5C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v6 = (v2 + 16);
    return sub_271845378(&v6, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 > -33)
    {
      v7 = *a2;
    }

    else
    {
      v8 = -48;
      v9 = v4;
    }

    v5 = *(v2 + 8);
    return std::ostream::write();
  }
}

_BYTE *sub_2714EFAEC(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v7 = (v2 + 16);
    return sub_2718459EC(&v7, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 > 0x7F)
    {
      if (v4 > 0xFF)
      {
        v8 = -51;
        v9 = __rev16(v4);
      }

      else
      {
        v10 = -52;
        v11 = v4;
      }

      v6 = *(v2 + 8);
      return std::ostream::write();
    }

    else
    {
      v12 = *a2;
      v5 = *(v2 + 8);
      return std::ostream::write();
    }
  }
}

uint64_t *sub_2714EFBB0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v5 = (v2 + 16);
    return sub_2718460EC(&v5, *a2);
  }

  else
  {
    v4 = *a2;
    return sub_27184636C(&v6, (v2 + 8));
  }
}

_BYTE *sub_2714EFC0C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846AEC(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_271846E00((v4 + 8));
  }
}

_BYTE *sub_2714EFC64(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846AEC(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_271846E00((v4 + 8));
  }
}

uint64_t **sub_2714EFCBC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v6 = (v2 + 16);
    return sub_271846EFC(v7, &v6, a2);
  }

  else
  {
    v4 = *a2;
    v7[1] = -54;
    v8 = bswap32(v4);
    v5 = *(v2 + 8);
    return std::ostream::write();
  }
}

uint64_t sub_2714EFD30(uint64_t a1, unint64_t *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v8[0] = (v2 + 16);
    result = sub_271846FE4(&v7, v8, a2);
  }

  else
  {
    v4 = *a2;
    LOBYTE(v8[0]) = -53;
    *(v8 + 1) = bswap64(v4);
    v5 = *(v2 + 8);
    result = std::ostream::write();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_2714EFDC8(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v6[1] = v2;
    v6[2] = v3;
    v6[0] = (v4 + 16);
    return sub_271847238(v6, a2);
  }

  else
  {

    return sub_271847654((v4 + 8), a2);
  }
}

uint64_t sub_2714EFE18(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v8 = (v5 + 16);
    if (a3)
    {
      do
      {
        result = sub_2718470CC(&v8, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (*a2 != 1)
      {
        v10 = -62;
        v6 = *(v5 + 8);
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v9 = -61;
      v7 = *(v5 + 8);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714EFEE8(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v9 = (v5 + 16);
    if (a3)
    {
      do
      {
        result = sub_271845378(&v9, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (1)
      {
        v7 = *a2;
        if (v7 <= -33)
        {
          break;
        }

        v10 = *a2;
        v6 = *(v5 + 8);
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v11 = -48;
      v12 = v7;
      v8 = *(v5 + 8);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714EFFB0(uint64_t result, __int16 *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 2 * a3;
      do
      {
        v6 = *a2++;
        result = sub_27184561C(&v9, v6);
        v5 -= 2;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 2 * a3;
    do
    {
      v8 = *a2++;
      result = sub_2718458EC((v4 + 8));
      v7 -= 2;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F0034(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 4 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271845BC4(&v9, v6);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 4 * a3;
    do
    {
      v8 = *a2++;
      result = sub_271845FEC((v4 + 8));
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F00B8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846460(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_2718469A8((v4 + 8), v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F013C(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846460(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_2718469A8((v4 + 8), v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F01C0(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v9 = (v5 + 16);
    if (a3)
    {
      do
      {
        result = sub_2718454CC(&v9, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (1)
      {
        v7 = *a2;
        if ((v7 & 0x80000000) == 0)
        {
          break;
        }

        v10 = -52;
        v11 = v7;
        v6 = *(v5 + 8);
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v12 = *a2;
      v8 = *(v5 + 8);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714F0284(uint64_t result, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 24);
  if (*(v5 + 40) == 1)
  {
    v9 = (v5 + 16);
    if (a3)
    {
      do
      {
        result = sub_271845378(&v9, a2++);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    do
    {
      while (1)
      {
        v7 = *a2;
        if (v7 <= -33)
        {
          break;
        }

        v10 = *a2;
        v6 = *(v5 + 8);
        result = std::ostream::write();
        ++a2;
        if (!--v3)
        {
          return result;
        }
      }

      v11 = -48;
      v12 = v7;
      v8 = *(v5 + 8);
      result = std::ostream::write();
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2714F034C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_27183F518(a1, v4);
}

void *sub_2714F0374(void *result, unsigned int *a2, uint64_t a3)
{
  v4 = result[3];
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 4 * a3;
      do
      {
        v6 = *a2++;
        result = sub_2718460EC(&v9, v6);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 4 * a3;
    do
    {
      v8 = *a2++;
      result = sub_27184636C(&v10, (v4 + 8));
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F03FC(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846AEC(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_271846E00((v4 + 8));
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F0480(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        result = sub_271846AEC(&v9, v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      result = sub_271846E00((v4 + 8));
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2714F0504(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v9 = (v4 + 16);
    if (a3)
    {
      v5 = 4 * a3;
      do
      {
        result = sub_271846EFC(v10, &v9, a2++);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v6 = 4 * a3;
    do
    {
      v7 = *a2++;
      v10[1] = -54;
      v11 = bswap32(v7);
      v8 = *(v4 + 8);
      result = std::ostream::write();
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714F05A8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *(result + 24);
  if (*(v4 + 40) == 1)
  {
    v11[0] = (v4 + 16);
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        result = sub_271846FE4(&v10, v11, a2++);
        v5 -= 8;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v6 = 8 * a3;
    do
    {
      v7 = *a2++;
      LOBYTE(v11[0]) = -53;
      *(v11 + 1) = bswap64(v7);
      v8 = *(v4 + 8);
      result = std::ostream::write();
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2714F0678(void *result, const void **a2, uint64_t a3)
{
  v4 = result[3];
  if (*(v4 + 40) == 1)
  {
    v7 = (v4 + 16);
    if (a3)
    {
      v5 = 24 * a3;
      do
      {
        result = sub_271847238(&v7, a2);
        a2 += 3;
        v5 -= 24;
      }

      while (v5);
    }
  }

  else if (a3)
  {
    v6 = 24 * a3;
    do
    {
      result = sub_271847654((v4 + 8), a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return result;
}

uint64_t **sub_2714F070C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v2 = *(a1 + 24);
  if (*(v2 + 40) != 1)
  {
    return sub_2718452C0((v2 + 8), &v4);
  }

  v5 = (v2 + 16);
  v6 = DWORD2(v4);
  v7 = v4;
  return sub_27184500C(&v5, &v6);
}

uint64_t **sub_2714F0778(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = *(a1 + 24);
  if (*(v4 + 40) != 1)
  {
    return sub_2718452C0((v4 + 8), v6);
  }

  v7 = (v4 + 16);
  v8 = v3;
  v9 = v2;
  return sub_27184500C(&v7, &v8);
}

void sub_2714F07E8(void *a1)
{
  *(a1 - 2) = &unk_288116C00;
  v1 = a1[1];
  *a1 = &unk_288116D50;
  a1[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      *(v1 + 88) = v2;
      operator delete(v2);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    MEMORY[0x2743BF050](v1, 0x1030C408C1A3048);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714F08BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v29 = (v4 + 16);
    sub_2718460EC(&v29, 2u);
    sub_271840ADC(*(a1 + 24));
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = (v5 + 16);
    sub_271847238(&v29, (a2 + 8));
    v6 = *(a1 + 24);
    if (*(v6 + 40) != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_27184636C(&v29, (v4 + 8));
  sub_271840ADC(*(a1 + 24));
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_271847654((v5 + 8), (a2 + 8));
  v6 = *(a1 + 24);
  if (*(v6 + 40) != 1)
  {
LABEL_4:
    v7 = *(a2 + 32);
    sub_27184636C(&v29, (v6 + 8));
    goto LABEL_8;
  }

LABEL_7:
  v29 = (v6 + 16);
  sub_2718460EC(&v29, *(a2 + 32));
LABEL_8:
  v8 = *(a1 + 24);
  v9 = *(v8[11] - 8);
  sub_2718404E0(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  if (*(a2 + 56) > 1u)
  {
    sub_2711308D4();
  }

  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v16;
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = v18;
    }
  }

  v29 = &unk_28810A5F8;
  v30 = v16;
  v19 = (*(*v16 + 16))(v16);
  v20 = *(a1 + 24);
  if (*(v20 + 40) == 1)
  {
    v31 = (v20 + 16);
    sub_2718460EC(&v31, v19);
  }

  else
  {
    sub_27184636C(&v31, (v20 + 8));
  }

  sub_271840ADC(*(a1 + 24));
  (*(*v30 + 32))(v30, a1, v19);
  v21 = *(a1 + 24);
  v22 = *(v21[11] - 8);
  sub_2718404E0(v21 + 6, v21[2] - v22 - 9);
  v23 = v21[6];
  if (v23)
  {
    memmove((v21[3] + v22), v21[7], v23);
  }

  v21[6] = 0;
  v24 = v21[10];
  v25 = v21[11] - 8;
  v21[11] = v25;
  if (v24 == v25)
  {
    v26 = *v21;
    v28 = v21[2];
    v27 = v21[3];
    std::ostream::write();
    if (*(v21 + 40) == 1)
    {
      free(v21[3]);
      *(v21 + 40) = 0;
    }
  }
}

void sub_2714F0BDC(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_2713A2F3C(v25, a2);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(v22) = *(a1 + 32);
    sub_271120E64(v3, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  ++*(a1 + 40);
  sub_271839128(a1, &v26);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v22) = *(a1 + 32);
    sub_271120E64(v4, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v28);
  v5 = *(a1 + 40);
  v6 = *(a1 + 34);
  *(a1 + 40) = v5 + 1;
  if (v5 != -1)
  {
    v7 = *(a1 + 24);
    LOBYTE(v22) = *(a1 + 32);
    sub_271120E64(v7, &v22, 1);
  }

  v8 = *(a1 + 24);
  LOBYTE(v22) = v6;
  sub_271120E64(v8, &v22, 1);
  ++*(a1 + 40);
  if (v31 > 1)
  {
    sub_2711308D4();
  }

  v9 = v29;
  v10 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v9;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = v11;
    }
  }

  v22 = &unk_28810A5F8;
  v23 = v9;
  v12 = (*(*v9 + 16))(v9);
  if (*(a1 + 40))
  {
    v13 = *(a1 + 24);
    v24 = *(a1 + 32);
    sub_271120E64(v13, &v24, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v12);
  ++*(a1 + 40);
  (*(*v23 + 32))(v23, a1, v12);
  v14 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v15 = *(a1 + 24);
    v24 = *(a1 + 32);
    sub_271120E64(v15, &v24, 1);
  }

  v16 = *(a1 + 24);
  v24 = v14;
  sub_271120E64(v16, &v24, 1);
  ++*(a1 + 40);
  v17 = __p;
  if (__p)
  {
    v18 = v33;
    v19 = __p;
    if (v33 != __p)
    {
      do
      {
        v20 = *(v18 - 1);
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v18 -= 16;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v33 = v17;
    operator delete(v19);
  }

  if (v31 != -1)
  {
    (off_288132620[v31])(&v22, &v29);
  }

  v31 = -1;
  if (v27 < 0)
  {
    operator delete(v26);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2714F0F24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F0F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27139FD58(va);
  _Unwind_Resume(a1);
}

BOOL sub_2714F0F54(char *a1, char *a2)
{
  v2 = a1;
  v3 = *(a1 + 6);
  if (v3 == 1)
  {
    v18 = -1;
    if (a2[23] < 0)
    {
      sub_271127178(&v16, *a2, *(a2 + 1));
    }

    else
    {
      v16 = *a2;
      v17 = *(a2 + 2);
    }

    v15 = v17;
    *__p = v16;
    if (v17 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = v16;
    }

    if (v17 >= 0)
    {
      v11 = HIBYTE(v17);
    }

    else
    {
      v11 = *(&v16 + 1);
    }

    v12 = v2[23];
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = v2;
      v2 = *v2;
      v12 = *(v13 + 1);
    }

    sub_27184C050(v10, v11, v2, v12, 0);
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = a1[23];
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = a2[23];
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v5) == 0;
}

void sub_2714F10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F10C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F10DC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 != 1)
  {
    if (!v1)
    {
      v2 = 0;
      sub_27136892C();
    }

    sub_2711308D4();
  }

  v2 = 0;
  sub_27136892C();
}

void sub_2714F135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F13B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F13C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

BOOL sub_2714F13DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 14);
  v3 = *(a2 + 14);
  if (v2)
  {
    if (v3 == 1)
    {
      if (v2 != 1)
      {
        sub_2711308D4();
      }

      v4 = *(a1 + 23);
      if (v4 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = a1[1];
      }

      v6 = *(a2 + 23);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = a2[1];
      }

      if (v5 == v6)
      {
        if (v4 < 0)
        {
          a1 = *a1;
        }

        v8 = *a2;
        if (v7 < 0)
        {
          a2 = *a2;
        }

        return memcmp(a1, a2, v5) == 0;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  v12 = *(a2 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = a2[1];
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = a1;
  if (v10 < 0)
  {
    a1 = *a1;
  }

  v15 = *a2;
  v16 = a2;
  if (v13 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v11))
  {
    return 0;
  }

  v17 = *(v16 + 48);
  v18 = *(v14 + 48);
  result = v18 == v17;
  if (v18 == v17 && *(v14 + 48))
  {
    v19 = *(v14 + 47);
    if (v19 >= 0)
    {
      v5 = *(v14 + 47);
    }

    else
    {
      v5 = v14[4];
    }

    v20 = *(v16 + 47);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = v16[4];
    }

    if (v5 == v20)
    {
      if (v19 >= 0)
      {
        a1 = v14 + 3;
      }

      else
      {
        a1 = v14[3];
      }

      if (v21 >= 0)
      {
        a2 = v16 + 3;
      }

      else
      {
        a2 = v16[3];
      }

      return memcmp(a1, a2, v5) == 0;
    }

    return 0;
  }

  return result;
}

void *sub_2714F1544(void *a1, __int128 *a2)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    if (v3 == 1)
    {
      v10 = 0;
      sub_2714F63DC();
    }

    sub_2711308D4();
  }

  v10 = -1;
  if (*(a2 + 23) < 0)
  {
    sub_271127178(&v8, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v9 = *(a2 + 2);
  }

  v12 = v9;
  v11 = v8;
  if (v9 >= 0)
  {
    v4 = &v11;
  }

  else
  {
    v4 = v11;
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = *(&v11 + 1);
  }

  result = sub_271120E64(a1, v4, v5);
  if (SHIBYTE(v12) < 0)
  {
    v7 = result;
    operator delete(v11);
    return v7;
  }

  return result;
}

void sub_2714F1668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F16AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

BOOL sub_2714F16C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (!sub_2714F5B38(a1, a2))
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = v8 == *(a2 + 64);
  if (v8 == *(a2 + 64) && *(a1 + 64) && (v10 = *(a1 + 60), v9 = v10 == *(a2 + 60)) && *(a1 + 60))
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (!v9)
  {
    return 0;
  }

  v11 = *(a1 + 112);
  v12 = v11 == *(a2 + 112);
  if (v11 == *(a2 + 112) && *(a1 + 112) && (v13 = *(a1 + 104), v12 = v13 == *(a2 + 104)) && *(a1 + 104))
  {
    v14 = *(a1 + 95);
    if (v14 >= 0)
    {
      v15 = *(a1 + 95);
    }

    else
    {
      v15 = *(a1 + 80);
    }

    v16 = *(a2 + 95);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 80);
    }

    if (v15 != v16)
    {
      return 0;
    }

    v18 = (a2 + 72);
    v19 = v14 >= 0 ? (a1 + 72) : *(a1 + 72);
    v20 = *v18;
    v21 = (v17 >= 0 ? a2 + 72 : *v18);
    if (memcmp(v19, v21, v15) || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if (!v12)
  {
    return 0;
  }

  v22 = *(a1 + 152);
  v23 = *(a2 + 152);
  if (v22 == v23 && *(a1 + 152))
  {
    v24 = *(a1 + 144);
    v25 = *(a2 + 144);
    if (v24)
    {
      if (v25 != 1)
      {
        return 0;
      }

      if (v24 != 1)
      {
        goto LABEL_164;
      }

      v26 = *(a1 + 143);
      if ((v26 & 0x80000000) == 0)
      {
        v27 = *(a1 + 143);
      }

      else
      {
        v27 = *(a1 + 128);
      }

      v28 = *(a2 + 143);
      v29 = *(a2 + 128);
      if ((v28 & 0x80000000) == 0)
      {
        v29 = *(a2 + 143);
      }

      if (v27 != v29)
      {
        return 0;
      }

      v30 = v26 >> 63;
      v31 = v28 >> 63;
    }

    else
    {
      if (v25)
      {
        return 0;
      }

      v34 = *(a1 + 143);
      if ((v34 & 0x80000000) == 0)
      {
        v27 = *(a1 + 143);
      }

      else
      {
        v27 = *(a1 + 128);
      }

      v35 = *(a2 + 143);
      v36 = *(a2 + 128);
      if ((v35 & 0x80000000) == 0)
      {
        v36 = *(a2 + 143);
      }

      if (v27 != v36)
      {
        return 0;
      }

      v30 = v34 >> 63;
      v31 = v35 >> 63;
    }

    v37 = (a2 + 120);
    if (v30)
    {
      v38 = *(a1 + 120);
    }

    else
    {
      v38 = (a1 + 120);
    }

    v39 = *v37;
    if (v31)
    {
      v40 = *v37;
    }

    else
    {
      v40 = (a2 + 120);
    }

    if (memcmp(v38, v40, v27))
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v32 = *(a1 + 224);
  v33 = *(a2 + 224);
  if (v32 == v33 && *(a1 + 224))
  {
    if (!sub_2714F13DC((a1 + 160), (a2 + 160)))
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v41 = *(a1 + 256);
  v42 = *(a2 + 256);
  if (v41 == v42 && *(a1 + 256))
  {
    if ((sub_2714F58D8((a1 + 232), (a2 + 232)) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41 != v42)
  {
    return 0;
  }

  v43 = *(a1 + 312);
  v44 = *(a2 + 312);
  if (v43 == v44 && *(a1 + 312))
  {
    if (!sub_2714F5B38(a1 + 264, a2 + 264))
    {
      return 0;
    }
  }

  else if (v43 != v44)
  {
    return 0;
  }

  v45 = *(a1 + 416);
  v46 = *(a2 + 416);
  if (v45 != v46 || !*(a1 + 416))
  {
    goto LABEL_105;
  }

  v47 = *(a1 + 400);
  v48 = *(a2 + 400);
  if (v47)
  {
    if (v48 != 1)
    {
      return 0;
    }

    if (v47 != 1)
    {
      goto LABEL_164;
    }

    v49 = *(a1 + 359);
    if (v49 >= 0)
    {
      v50 = *(a1 + 359);
    }

    else
    {
      v50 = *(a1 + 344);
    }

    v51 = *(a2 + 359);
    v52 = v51;
    if ((v51 & 0x80u) != 0)
    {
      v51 = *(a2 + 344);
    }

    if (v50 != v51)
    {
      return 0;
    }

    v53 = v49 >= 0 ? (a1 + 336) : *(a1 + 336);
    v54 = *(a2 + 336);
    v55 = v52 >= 0 ? (a2 + 336) : *(a2 + 336);
    if (memcmp(v53, v55, v50))
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v48)
  {
    return 0;
  }

  v45 = *(a1 + 384);
  v46 = *(a2 + 384);
  if (v45 == v46 && *(a1 + 384))
  {
    if (!sub_2714FB228((a1 + 336), (a2 + 336)))
    {
      return 0;
    }
  }

  else
  {
LABEL_105:
    if (v45 != v46)
    {
      return 0;
    }
  }

LABEL_106:
  v56 = *(a1 + 576);
  v57 = v56 == *(a2 + 576);
  if (v56 != *(a2 + 576) || !*(a1 + 576))
  {
    goto LABEL_130;
  }

  v58 = *(a1 + 560);
  v59 = *(a2 + 560);
  if (v58)
  {
    if (v59 != 1)
    {
      return 0;
    }

    if (v58 == 1)
    {
      v60 = *(a1 + 471);
      if (v60 >= 0)
      {
        v61 = *(a1 + 471);
      }

      else
      {
        v61 = *(a1 + 456);
      }

      v62 = *(a2 + 471);
      v63 = v62;
      if ((v62 & 0x80u) != 0)
      {
        v62 = *(a2 + 456);
      }

      if (v61 != v62)
      {
        return 0;
      }

      v64 = v60 >= 0 ? (a1 + 448) : *(a1 + 448);
      v65 = *(a2 + 448);
      v66 = v63 >= 0 ? (a2 + 448) : *(a2 + 448);
      if (memcmp(v64, v66, v61))
      {
        return 0;
      }

      goto LABEL_131;
    }

LABEL_164:
    sub_2711308D4();
  }

  if (v59)
  {
    return 0;
  }

  v67 = *(a1 + 544);
  v57 = v67 == *(a2 + 544);
  if (v67 == *(a2 + 544) && *(a1 + 544))
  {
    if (!sub_2714FB8D4(a1 + 448, a2 + 448))
    {
      return 0;
    }
  }

  else
  {
LABEL_130:
    if (!v57)
    {
      return 0;
    }
  }

LABEL_131:
  v68 = *(a1 + 624);
  v69 = v68 == *(a2 + 624);
  if (v68 == *(a2 + 624) && *(a1 + 624) && (v70 = *(a1 + 616), v69 = v70 == *(a2 + 616)) && *(a1 + 616))
  {
    v71 = *(a1 + 600);
    v72 = *(a1 + 592);
    v73 = *(a2 + 592);
    if (v71 - v72 != *(a2 + 600) - v73)
    {
      return 0;
    }

    for (; v72 != v71; v73 += 96)
    {
      result = sub_2714FB8D4(v72, v73);
      if (!result)
      {
        return result;
      }

      v72 += 96;
    }
  }

  else if (!v69)
  {
    return 0;
  }

  v74 = *(a1 + 680);
  v75 = *(a2 + 680);
  if (v74 != v75 || v74 == 0)
  {
    if (v74 != v75)
    {
      return 0;
    }
  }

  else if (!sub_2714F5B38(a1 + 632, a2 + 632))
  {
    return 0;
  }

  v77 = *(a1 + 712);
  v78 = v77 == *(a2 + 712);
  if (v77 == *(a2 + 712))
  {
    if (*(a1 + 712))
    {
      v79 = *(a1 + 704);
      v78 = v79 == *(a2 + 704);
      if (v79 == *(a2 + 704))
      {
        if (*(a1 + 704))
        {
          if (*(a1 + 688) != *(a2 + 688) || *(a1 + 696) != *(a2 + 696))
          {
            return 0;
          }

          goto LABEL_157;
        }
      }
    }
  }

  if (!v78)
  {
    return 0;
  }

LABEL_157:
  v80 = *(a2 + 744);
  v81 = *(a1 + 744);
  result = v81 == v80;
  if (v81 == v80)
  {
    if (*(a1 + 744))
    {
      v82 = *(a2 + 736);
      v83 = *(a1 + 736);
      result = v83 == v82;
      if (v83 == v82)
      {
        if (*(a1 + 736))
        {
          if (*(a1 + 720) == *(a2 + 720))
          {
            return *(a1 + 728) == *(a2 + 728);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void *sub_2714F1C74(void *a1, uint64_t a2)
{
  sub_271120E64(a1, "{", 1);
  v37 = 1;
  v35 = &v37;
  v36 = a1;
  v34[0] = 0;
  v34[24] = 0;
  sub_2714F36B8(&v35, "package_id", a2, v34);
  if (*(a2 + 64) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v4 = sub_271120E64(a1, "data_type_id", 12);
    sub_271120E64(v4, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 112) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v5 = sub_271120E64(a1, "package_data_id", 15);
    sub_271120E64(v5, ": ", 2);
    LODWORD(v46) = 0;
    operator new();
  }

  if (*(a2 + 152) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v6 = sub_271120E64(a1, "context_name", 12);
    sub_271120E64(v6, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 224) == 1)
  {
    if (v37 == 1)
    {
      v37 = 0;
    }

    else
    {
      sub_271120E64(a1, ",", 1);
    }

    v7 = sub_271120E64(a1, "context_id", 10);
    sub_271120E64(v7, ": ", 2);
    v41 = 0;
    operator new();
  }

  if ((*(a2 + 256) & 1) == 0)
  {
    v11 = 7;
    HIBYTE(v40) = 7;
    LODWORD(v38) = 1819047278;
    v12 = 1953525612;
LABEL_29:
    *(&v38 + 3) = v12;
    HIBYTE(v38) = 0;
    goto LABEL_30;
  }

  v9 = *(a2 + 240);
  v8 = *(a2 + 248);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (v9)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  if (!v9)
  {
LABEL_28:
    v11 = 7;
    HIBYTE(v40) = 7;
    LODWORD(v38) = 1819047278;
    v12 = 1920233580;
    goto LABEL_29;
  }

LABEL_25:
  v10 = (*(*(a2 + 232) + 16))();
  (*(*v10 + 24))(&v38);
  v11 = HIBYTE(v40);
LABEL_30:
  v13 = v38;
  v14 = v39;
  v33[0] = v40;
  *(v33 + 3) = *(&v40 + 3);
  v39 = 0;
  v40 = 0;
  v38 = 0;
  if (*(a2 + 256) != 1)
  {
    goto LABEL_44;
  }

  if (*v35 == 1)
  {
    *v35 = 0;
    v15 = v36;
  }

  else
  {
    v15 = v36;
    sub_271120E64(v36, ",", 1);
  }

  v16 = sub_271120E64(v15, "value", 5);
  v17 = sub_271120E64(v16, ": ", 2);
  if ((v11 & 0x80) != 0)
  {
    sub_271127178(&v42, v13, v14);
    v19 = v45;
    v18 = v42;
    v14 = v43;
  }

  else
  {
    v42 = v13;
    v43 = v14;
    *v44 = v33[0];
    *&v44[3] = *(v33 + 3);
    v45 = v11;
    v18 = v13;
    v19 = v11;
  }

  v20 = (v19 & 0x80u) == 0 ? &v42 : v18;
  v21 = (v19 & 0x80u) == 0 ? v19 : v14;
  sub_271120E64(v17, v20, v21);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_44:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_52:
    operator delete(v13);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  operator delete(v42);
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_53:
  operator delete(v38);
LABEL_46:
  v32[0] = 0;
  v32[24] = 0;
  sub_2714F36B8(&v35, "name", a2 + 264, v32);
  if (*(a2 + 416) == 1)
  {
    if (*v35 == 1)
    {
      *v35 = 0;
      v22 = v36;
    }

    else
    {
      v22 = v36;
      sub_271120E64(v36, ",", 1);
    }

    v23 = sub_271120E64(v22, "instance_id", 11);
    sub_271120E64(v23, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 576) == 1)
  {
    if (*v35 == 1)
    {
      *v35 = 0;
      v24 = v36;
    }

    else
    {
      v24 = v36;
      sub_271120E64(v36, ",", 1);
    }

    v25 = sub_271120E64(v24, "reference_id", 12);
    sub_271120E64(v25, ": ", 2);
    v41 = 0;
    operator new();
  }

  if (*(a2 + 624) == 1)
  {
    if (*v35 == 1)
    {
      *v35 = 0;
      v26 = v36;
    }

    else
    {
      v26 = v36;
      sub_271120E64(v36, ",", 1);
    }

    v27 = sub_271120E64(v26, "references", 10);
    sub_271120E64(v27, ": ", 2);
    LODWORD(v46) = 0;
    operator new();
  }

  v31[0] = 0;
  v31[24] = 0;
  sub_2714F36B8(&v35, "space", a2 + 632, v31);
  v30[0] = 0;
  v30[24] = 0;
  sub_2714F3A7C(&v35, "custom_timestamp", a2 + 688, v30);
  v29[0] = 0;
  v29[24] = 0;
  sub_2714F3A7C(&v35, "auto_timestamp", a2 + 720, v29);
  sub_271120E64(a1, "}", 1);
  return a1;
}

void sub_2714F33D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 169) < 0)
  {
    operator delete(*(v44 - 192));
  }

  v46 = *(v44 - 200);
  *(v44 - 200) = 0;
  if (v46)
  {
    sub_27184D728(v44 - 200, v46);
    sub_271130878(&__p);
    _Unwind_Resume(a1);
  }

  sub_271130878(&__p);
  _Unwind_Resume(a1);
}

void sub_2714F3668()
{
  if (v0 < 0)
  {
    JUMPOUT(0x2714F3670);
  }

  JUMPOUT(0x2714F349CLL);
}

void sub_2714F3690(_Unwind_Exception *a1)
{
  v3 = *(v1 - 144);
  *(v1 - 144) = 0;
  if (v3)
  {
    sub_27184D728(v1 - 144, v3);
  }

  sub_271130878(v1 - 192);
  _Unwind_Resume(a1);
}

void sub_2714F36B8(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 48) == 1)
  {
    if (**a1 == 1)
    {
      **a1 = 0;
    }

    else
    {
      v6 = a1;
      sub_271120E64(*(a1 + 8), ",", 1);
      a1 = v6;
    }

    v7 = *(a1 + 8);
    v8 = strlen(__s);
    v9 = sub_271120E64(v7, __s, v8);
    v10 = sub_271120E64(v9, ": ", 2);
    if (*(a4 + 24) != 1)
    {
      v15 = 0;
      operator new();
    }

    if (*(a4 + 23) < 0)
    {
      sub_271127178(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v14 = *(a4 + 16);
    }

    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v14 >= 0)
    {
      v12 = HIBYTE(v14);
    }

    else
    {
      v12 = __p[1];
    }

    sub_271120E64(v10, v11, v12);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714F39F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25)
{
  MEMORY[0x2743BF050](v25, 0x10B2C40EED050F3);
  sub_271130878(&a15);
  _Unwind_Resume(a1);
}

void sub_2714F3A7C(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 1)
  {
    if (**a1 == 1)
    {
      **a1 = 0;
    }

    else
    {
      v6 = a1;
      sub_271120E64(*(a1 + 8), ",", 1);
      a1 = v6;
    }

    v7 = *(a1 + 8);
    v8 = strlen(__s);
    v9 = sub_271120E64(v7, __s, v8);
    v10 = sub_271120E64(v9, ": ", 2);
    if (*(a4 + 24) != 1)
    {
      v15 = 0;
      operator new();
    }

    if (*(a4 + 23) < 0)
    {
      sub_271127178(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v14 = *(a4 + 16);
    }

    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v14 >= 0)
    {
      v12 = HIBYTE(v14);
    }

    else
    {
      v12 = __p[1];
    }

    sub_271120E64(v10, v11, v12);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714F3D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  MEMORY[0x2743BF050](v16, 0x10B2C40EED050F3);
  sub_271130878(&a16);
  _Unwind_Resume(a1);
}

void *sub_2714F3DA4(void *a1)
{
  *a1 = off_2881327C0;
  sub_271347580((a1 + 2));
  return a1;
}

void sub_2714F3DE8(void *a1)
{
  *a1 = off_2881327C0;
  sub_271347580((a1 + 2));

  JUMPOUT(0x2743BF050);
}

BOOL sub_2714F3E4C(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  __src = a3;
  __len = a4;
  if (*(a1 + 80) == 1 && (*(a1 + 76) != 1 || *(a1 + 72) != *(a2 + 24)))
  {
    return 0;
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      *&__p[16] = *(a2 + 16);
    }

    LOBYTE(v34) = 1;
    v8 = sub_2714F6B10(a1 + 16, __p);
    if (v34 == 1 && (__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (!v8)
    {
      return 0;
    }
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) != 1)
    {
      return 0;
    }

    v9 = *(a1 + 111);
    if (v9 >= 0)
    {
      v10 = *(a1 + 111);
    }

    else
    {
      v10 = *(a1 + 96);
    }

    v11 = *(a2 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    if (v10 != v11)
    {
      return 0;
    }

    v13 = v9 >= 0 ? (a1 + 88) : *(a1 + 88);
    v14 = *a2;
    v15 = v12 >= 0 ? a2 : *a2;
    if (memcmp(v13, v15, v10) || *(a1 + 112) != *(a2 + 24))
    {
      return 0;
    }
  }

  if (*(a1 + 168) == 1)
  {
    LODWORD(v34) = 0;
    sub_2714C49E0(&v41, __p, &__src);
    if (v34 == -1)
    {
      sub_2711308D4();
    }

    v41 = &v40;
    (off_288132810[v34])(v38, &v41, __p);
    if (v34 != -1)
    {
      (off_2881327F8[v34])(&v41, __p);
    }

    result = sub_2714F0F54((a1 + 136), v38);
    if (v39 < 0)
    {
      v24 = result;
      operator delete(v38[0]);
      result = v24;
      if (!v24)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 240) == 1)
  {
    v16 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    v32 = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    v31[v16 - 8] = 0;
    *&__p[15] = *&v31[7];
    v17 = __dst;
    *__p = __dst;
    *&__p[8] = *v31;
    __p[23] = v32;
    LOBYTE(v34) = 0;
    v35 = 0;
    if (v32 >= 0)
    {
      v17 = __p;
    }

    v18 = *&__p[8];
    if (v32 >= 0)
    {
      v18 = v32;
    }

    if (!v18)
    {
      goto LABEL_111;
    }

    v19 = v17;
    if (v18 < 8)
    {
LABEL_116:
      v29 = &v17[v18];
      do
      {
        if (*v19 == 58)
        {
          *v19 = 95;
        }

        ++v19;
      }

      while (v19 != v29);
      goto LABEL_111;
    }

    if (v18 < 0x10)
    {
      v20 = 0;
      goto LABEL_52;
    }

    v20 = v18 & 0xFFFFFFFFFFFFFFF0;
    v25 = v17 + 7;
    v26.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
    v26.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
    v27 = v18 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v28 = vceqq_s8(*(v25 - 7), v26);
      if (v28.i8[0])
      {
        *(v25 - 7) = 95;
        if ((v28.i8[1] & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      else if ((v28.i8[1] & 1) == 0)
      {
LABEL_79:
        if (v28.i8[2])
        {
          goto LABEL_80;
        }

        goto LABEL_96;
      }

      *(v25 - 6) = 95;
      if (v28.i8[2])
      {
LABEL_80:
        *(v25 - 5) = 95;
        if ((v28.i8[3] & 1) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_97;
      }

LABEL_96:
      if ((v28.i8[3] & 1) == 0)
      {
LABEL_81:
        if (v28.i8[4])
        {
          goto LABEL_82;
        }

        goto LABEL_98;
      }

LABEL_97:
      *(v25 - 4) = 95;
      if (v28.i8[4])
      {
LABEL_82:
        *(v25 - 3) = 95;
        if ((v28.i8[5] & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_99;
      }

LABEL_98:
      if ((v28.i8[5] & 1) == 0)
      {
LABEL_83:
        if (v28.i8[6])
        {
          goto LABEL_84;
        }

        goto LABEL_100;
      }

LABEL_99:
      *(v25 - 2) = 95;
      if (v28.i8[6])
      {
LABEL_84:
        *(v25 - 1) = 95;
        if ((v28.i8[7] & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_101;
      }

LABEL_100:
      if ((v28.i8[7] & 1) == 0)
      {
LABEL_85:
        if (v28.i8[8])
        {
          goto LABEL_86;
        }

        goto LABEL_102;
      }

LABEL_101:
      *v25 = 95;
      if (v28.i8[8])
      {
LABEL_86:
        v25[1] = 95;
        if ((v28.i8[9] & 1) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_103;
      }

LABEL_102:
      if ((v28.i8[9] & 1) == 0)
      {
LABEL_87:
        if (v28.i8[10])
        {
          goto LABEL_88;
        }

        goto LABEL_104;
      }

LABEL_103:
      v25[2] = 95;
      if (v28.i8[10])
      {
LABEL_88:
        v25[3] = 95;
        if ((v28.i8[11] & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_105;
      }

LABEL_104:
      if ((v28.i8[11] & 1) == 0)
      {
LABEL_89:
        if (v28.i8[12])
        {
          goto LABEL_90;
        }

        goto LABEL_106;
      }

LABEL_105:
      v25[4] = 95;
      if (v28.i8[12])
      {
LABEL_90:
        v25[5] = 95;
        if ((v28.i8[13] & 1) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_107;
      }

LABEL_106:
      if ((v28.i8[13] & 1) == 0)
      {
LABEL_91:
        if (v28.i8[14])
        {
          goto LABEL_92;
        }

        goto LABEL_108;
      }

LABEL_107:
      v25[6] = 95;
      if (v28.i8[14])
      {
LABEL_92:
        v25[7] = 95;
        if (v28.i8[15])
        {
          goto LABEL_109;
        }

        goto LABEL_76;
      }

LABEL_108:
      if (v28.i8[15])
      {
LABEL_109:
        v25[8] = 95;
      }

LABEL_76:
      v25 += 16;
      v27 -= 16;
      if (!v27)
      {
        if (v18 == v20)
        {
          goto LABEL_111;
        }

        if ((v18 & 8) == 0)
        {
          v19 = &v17[v20];
          goto LABEL_116;
        }

LABEL_52:
        v19 = &v17[v18 & 0xFFFFFFFFFFFFFFF8];
        v21 = v20 - (v18 & 0xFFFFFFFFFFFFFFF8);
        v22 = &v17[v20 + 3];
        while (2)
        {
          v23 = vceq_s8(*(v22 - 3), 0x3A3A3A3A3A3A3A3ALL);
          if (v23.i8[0])
          {
            *(v22 - 3) = 95;
            if ((v23.i8[1] & 1) == 0)
            {
              goto LABEL_56;
            }

LABEL_64:
            *(v22 - 2) = 95;
            if ((v23.i8[2] & 1) == 0)
            {
              goto LABEL_65;
            }

LABEL_57:
            *(v22 - 1) = 95;
            if ((v23.i8[3] & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_66:
            *v22 = 95;
            if ((v23.i8[4] & 1) == 0)
            {
              goto LABEL_67;
            }

LABEL_59:
            v22[1] = 95;
            if ((v23.i8[5] & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_68:
            v22[2] = 95;
            if ((v23.i8[6] & 1) == 0)
            {
              goto LABEL_69;
            }

LABEL_61:
            v22[3] = 95;
            if (v23.i8[7])
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v23.i8[1])
            {
              goto LABEL_64;
            }

LABEL_56:
            if (v23.i8[2])
            {
              goto LABEL_57;
            }

LABEL_65:
            if (v23.i8[3])
            {
              goto LABEL_66;
            }

LABEL_58:
            if (v23.i8[4])
            {
              goto LABEL_59;
            }

LABEL_67:
            if (v23.i8[5])
            {
              goto LABEL_68;
            }

LABEL_60:
            if (v23.i8[6])
            {
              goto LABEL_61;
            }

LABEL_69:
            if (v23.i8[7])
            {
LABEL_70:
              v22[4] = 95;
            }
          }

          v22 += 8;
          v21 += 8;
          if (!v21)
          {
            if (v18 != (v18 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_116;
            }

LABEL_111:
            sub_2714F10DC(a1 + 176);
          }

          continue;
        }
      }
    }
  }

  return 1;
}

void sub_2714F4444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271181F68(va);
  _Unwind_Resume(a1);
}

void sub_2714F4458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v19 - 65) < 0)
  {
    operator delete(*(v19 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714F44BC(uint64_t a1, char ***a2)
{
  v141 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 2);
  v6 = a2[3];
  v5 = a2[4];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
    sub_2714FCC00(v4);
    *v112 = *__p;
    v113 = v128;
    v114 = v129;
    LODWORD(v6) = 1;
    v115 = 1;
    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (SHIBYTE(v113) < 0)
    {
      sub_271127178(__p, v112[0], v112[1]);
    }

    else
    {
      *__p = *v112;
      v128 = v113;
    }

    goto LABEL_11;
  }

  LOBYTE(v112[0]) = 0;
  v115 = 0;
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_15;
  }

  LODWORD(v6) = 0;
  LOBYTE(__p[0]) = 0;
LABEL_11:
  LOBYTE(v129) = v6;
  v7 = sub_2714F6B10(a1 + 16, __p);
  if (v129 == 1 && SHIBYTE(v128) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v7)
  {
    goto LABEL_331;
  }

LABEL_15:
  if (*(a1 + 80) == 1)
  {
    v8 = *(a1 + 76);
    if (v8 == v6 && *(a1 + 76))
    {
      if (*(a1 + 72) != v114)
      {
        goto LABEL_331;
      }
    }

    else if (v8 != v6)
    {
      goto LABEL_331;
    }
  }

  if (*(a1 + 128) == 1)
  {
    v9 = *(a1 + 120);
    if (v9 == v6 && *(a1 + 120))
    {
      v10 = *(a1 + 111);
      if (v10 >= 0)
      {
        v11 = *(a1 + 111);
      }

      else
      {
        v11 = *(a1 + 96);
      }

      v12 = HIBYTE(v113);
      if (SHIBYTE(v113) < 0)
      {
        v12 = v112[1];
      }

      if (v11 != v12)
      {
        goto LABEL_331;
      }

      v13 = v10 >= 0 ? (a1 + 88) : *(a1 + 88);
      v14 = SHIBYTE(v113) >= 0 ? v112 : v112[0];
      if (memcmp(v13, v14, v11) || *(a1 + 112) != v114)
      {
        goto LABEL_331;
      }
    }

    else if (v9 != v6)
    {
      goto LABEL_331;
    }
  }

  if (*(a1 + 168) == 1 && !sub_2714F0F54((a1 + 136), **a2))
  {
    goto LABEL_331;
  }

  v16 = a2[3];
  v15 = a2[4];
  if (!v15 || (atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v16)
    {
      goto LABEL_45;
    }

LABEL_48:
    v17 = 0;
    if (*(a1 + 240) != 1)
    {
      goto LABEL_50;
    }

LABEL_49:
    v18 = **a2;
    sub_2714F10DC(a1 + 176);
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!v16)
  {
    goto LABEL_48;
  }

LABEL_45:
  v17 = sub_2714FC508(v4);
  if (*(a1 + 240) == 1)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (*(a1 + 272) == 1)
  {
    v20 = a2[3];
    v19 = a2[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }
    }

    if (!v20)
    {
      goto LABEL_61;
    }

    v22 = *(a1 + 256);
    v21 = *(a1 + 264);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }
    }

    if (v22)
    {
      v23 = (*(*(a1 + 248) + 16))(a1 + 248);
      v24 = (*(*v4 + 16))(v4);
      if (((*(*v23 + 16))(v23, v24) & 1) == 0)
      {
        goto LABEL_331;
      }
    }

    else
    {
LABEL_61:
      v26 = a2[3];
      v25 = a2[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }
      }

      if (v26)
      {
        goto LABEL_331;
      }

      v28 = *(a1 + 256);
      v27 = *(a1 + 264);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }
      }

      if (v28)
      {
        goto LABEL_331;
      }
    }
  }

  if (*(a1 + 328) == 1)
  {
    if (v16)
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v129) = 0;
      if (*(v17 + 40) == 1)
      {
        if (*(v17 + 39) < 0)
        {
          sub_271127178(__p, *(v17 + 16), *(v17 + 24));
        }

        else
        {
          *__p = *(v17 + 16);
          v128 = *(v17 + 32);
        }

        LOBYTE(v129) = 1;
      }
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v129) = 0;
    }

    v29 = sub_2714F6B10(a1 + 280, __p);
    if (v129 == 1 && SHIBYTE(v128) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v29)
    {
LABEL_331:
      v108 = 0;
      goto LABEL_332;
    }
  }

  if (*(a1 + 432) != 1)
  {
    goto LABEL_114;
  }

  if (v16)
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v131) = 0;
    if (*(v17 + 160) == 1)
    {
      if (*(v17 + 135) < 0)
      {
        sub_271127178(__p, *(v17 + 112), *(v17 + 120));
      }

      else
      {
        *__p = *(v17 + 112);
        v128 = *(v17 + 128);
      }

      _X0 = 0;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      v130 = _X0;
      LOBYTE(v131) = 1;
      v38 = *(a1 + 416);
      if (v38 == 1)
      {
        sub_2714F5EBC(v120, __p);
        if (SHIBYTE(v120[2]) >= 0)
        {
          v54 = v120;
        }

        else
        {
          v54 = v120[0];
        }

        if (SHIBYTE(v120[2]) >= 0)
        {
          v55 = HIBYTE(v120[2]);
        }

        else
        {
          v55 = v120[1];
        }

        v56 = *(a1 + 375);
        if ((v56 & 0x8000000000000000) != 0)
        {
          v57 = *(a1 + 352);
          v56 = *(a1 + 360);
        }

        else
        {
          v57 = (a1 + 352);
        }

        sub_27184C050(v54, v55, v57, v56, 0);
      }

      if (v38)
      {
        sub_2711308D4();
      }

      goto LABEL_92;
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v131) = 0;
  }

  if (*(a1 + 416))
  {
    v30 = 0;
    goto LABEL_110;
  }

LABEL_92:
  sub_2714F5EBC(v120, a1 + 352);
  sub_2714F5EBC(&v136, __p);
  v39 = HIBYTE(v120[2]);
  if (SHIBYTE(v120[2]) >= 0)
  {
    v40 = HIBYTE(v120[2]);
  }

  else
  {
    v40 = v120[1];
  }

  v41 = HIBYTE(v137);
  v42 = SHIBYTE(v137);
  if (v137 < 0)
  {
    v41 = *(&v136 + 1);
  }

  if (v40 == v41)
  {
    if (SHIBYTE(v120[2]) >= 0)
    {
      v43 = v120;
    }

    else
    {
      v43 = v120[0];
    }

    if (v137 >= 0)
    {
      v44 = &v136;
    }

    else
    {
      v44 = v136;
    }

    v30 = memcmp(v43, v44, v40) == 0;
  }

  else
  {
    v30 = 0;
  }

  if (v42 < 0)
  {
    operator delete(v136);
    v39 = HIBYTE(v120[2]);
  }

  if (v39 < 0)
  {
    operator delete(v120[0]);
  }

LABEL_110:
  if (v131 == 1 && SHIBYTE(v128) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v30)
  {
    goto LABEL_331;
  }

LABEL_114:
  if (*(a1 + 592) != 1)
  {
    goto LABEL_268;
  }

  if (!v16)
  {
    goto LABEL_122;
  }

  if ((*(v17 + 40) & 1) == 0)
  {
    if (*(v17 + 160))
    {
      LOBYTE(v116[0]) = 0;
      v118 = 0;
      LOBYTE(v136) = 0;
      v140 = 0;
      if (*(v17 + 160) != 1)
      {
        LOBYTE(v120[0]) = 0;
        v121 = 0;
        LOBYTE(v122[0]) = 0;
        v126 = 0;
        goto LABEL_230;
      }

      goto LABEL_151;
    }

LABEL_122:
    v45 = 0;
    LOBYTE(__p[0]) = 0;
    v135 = 0;
    v46 = *(a1 + 576);
    if (!v46)
    {
      goto LABEL_123;
    }

    goto LABEL_237;
  }

  LOBYTE(v116[0]) = 0;
  v118 = 0;
  if (*(v17 + 39) < 0)
  {
    sub_271127178(v116, *(v17 + 16), *(v17 + 24));
  }

  else
  {
    *v116 = *(v17 + 16);
    v117 = *(v17 + 32);
  }

  v118 = 1;
  LOBYTE(v136) = 0;
  v140 = 0;
  if (*(v17 + 160))
  {
LABEL_151:
    if (*(v17 + 135) < 0)
    {
      sub_271127178(&v136, *(v17 + 112), *(v17 + 120));
    }

    else
    {
      v136 = *(v17 + 112);
      v137 = *(v17 + 128);
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v138 = _X0;
    v139 = 0;
    v58 = 1;
    v140 = 1;
    if ((v118 & 1) == 0)
    {
      LOBYTE(v120[0]) = 0;
      v121 = 0;
      LOBYTE(v122[0]) = 0;
      v126 = 0;
      goto LABEL_227;
    }

    goto LABEL_156;
  }

  v58 = 0;
LABEL_156:
  *&v119[1] = v117;
  v119[0] = *v116;
  v116[1] = 0;
  v117 = 0;
  v116[0] = 0;
  v62 = BYTE7(v119[1]);
  v63 = *(&v119[0] + 1);
  v64 = *&v119[0];
  if ((SBYTE7(v119[1]) & 0x80u) == 0)
  {
    v65 = v119;
  }

  else
  {
    v65 = *&v119[0];
  }

  if ((SBYTE7(v119[1]) & 0x80u) == 0)
  {
    v63 = SBYTE7(v119[1]);
  }

  if (!v63)
  {
    goto LABEL_226;
  }

  v66 = v65;
  if (v63 < 8)
  {
LABEL_338:
    v111 = v65 + v63;
    do
    {
      if (*v66 == 35)
      {
        *v66 = 95;
      }

      ++v66;
    }

    while (v66 != v111);
    goto LABEL_225;
  }

  if (v63 < 0x10)
  {
    v67 = 0;
    goto LABEL_165;
  }

  v67 = v63 & 0xFFFFFFFFFFFFFFF0;
  v71 = v65 + 7;
  v72.i64[0] = 0x2323232323232323;
  v72.i64[1] = 0x2323232323232323;
  v73 = v63 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v74 = vceqq_s8(*(v71 - 7), v72);
    if (v74.i8[0])
    {
      *(v71 - 7) = 95;
      if ((v74.i8[1] & 1) == 0)
      {
        goto LABEL_193;
      }
    }

    else if ((v74.i8[1] & 1) == 0)
    {
LABEL_193:
      if (v74.i8[2])
      {
        goto LABEL_194;
      }

      goto LABEL_210;
    }

    *(v71 - 6) = 95;
    if (v74.i8[2])
    {
LABEL_194:
      *(v71 - 5) = 95;
      if ((v74.i8[3] & 1) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_211;
    }

LABEL_210:
    if ((v74.i8[3] & 1) == 0)
    {
LABEL_195:
      if (v74.i8[4])
      {
        goto LABEL_196;
      }

      goto LABEL_212;
    }

LABEL_211:
    *(v71 - 4) = 95;
    if (v74.i8[4])
    {
LABEL_196:
      *(v71 - 3) = 95;
      if ((v74.i8[5] & 1) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_213;
    }

LABEL_212:
    if ((v74.i8[5] & 1) == 0)
    {
LABEL_197:
      if (v74.i8[6])
      {
        goto LABEL_198;
      }

      goto LABEL_214;
    }

LABEL_213:
    *(v71 - 2) = 95;
    if (v74.i8[6])
    {
LABEL_198:
      *(v71 - 1) = 95;
      if ((v74.i8[7] & 1) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_215;
    }

LABEL_214:
    if ((v74.i8[7] & 1) == 0)
    {
LABEL_199:
      if (v74.i8[8])
      {
        goto LABEL_200;
      }

      goto LABEL_216;
    }

LABEL_215:
    *v71 = 95;
    if (v74.i8[8])
    {
LABEL_200:
      v71[1] = 95;
      if ((v74.i8[9] & 1) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_217;
    }

LABEL_216:
    if ((v74.i8[9] & 1) == 0)
    {
LABEL_201:
      if (v74.i8[10])
      {
        goto LABEL_202;
      }

      goto LABEL_218;
    }

LABEL_217:
    v71[2] = 95;
    if (v74.i8[10])
    {
LABEL_202:
      v71[3] = 95;
      if ((v74.i8[11] & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_219;
    }

LABEL_218:
    if ((v74.i8[11] & 1) == 0)
    {
LABEL_203:
      if (v74.i8[12])
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    }

LABEL_219:
    v71[4] = 95;
    if (v74.i8[12])
    {
LABEL_204:
      v71[5] = 95;
      if ((v74.i8[13] & 1) == 0)
      {
        goto LABEL_205;
      }

      goto LABEL_221;
    }

LABEL_220:
    if ((v74.i8[13] & 1) == 0)
    {
LABEL_205:
      if ((v74.i8[14] & 1) == 0)
      {
        goto LABEL_222;
      }

      goto LABEL_206;
    }

LABEL_221:
    v71[6] = 95;
    if ((v74.i8[14] & 1) == 0)
    {
LABEL_222:
      if ((v74.i8[15] & 1) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_223;
    }

LABEL_206:
    v71[7] = 95;
    if ((v74.i8[15] & 1) == 0)
    {
      goto LABEL_190;
    }

LABEL_223:
    v71[8] = 95;
LABEL_190:
    v71 += 16;
    v73 -= 16;
  }

  while (v73);
  if (v63 == v67)
  {
    goto LABEL_225;
  }

  if ((v63 & 8) == 0)
  {
    v66 = v65 + v67;
    goto LABEL_338;
  }

LABEL_165:
  v66 = v65 + (v63 & 0xFFFFFFFFFFFFFFF8);
  v68 = v67 - (v63 & 0xFFFFFFFFFFFFFFF8);
  v69 = v65 + v67 + 3;
  while (2)
  {
    v70 = vceq_s8(*(v69 - 3), 0x2323232323232323);
    if (v70.i8[0])
    {
      *(v69 - 3) = 95;
      if ((v70.i8[1] & 1) == 0)
      {
        goto LABEL_169;
      }

LABEL_177:
      *(v69 - 2) = 95;
      if ((v70.i8[2] & 1) == 0)
      {
        goto LABEL_178;
      }

LABEL_170:
      *(v69 - 1) = 95;
      if ((v70.i8[3] & 1) == 0)
      {
        goto LABEL_171;
      }

LABEL_179:
      *v69 = 95;
      if ((v70.i8[4] & 1) == 0)
      {
        goto LABEL_180;
      }

LABEL_172:
      v69[1] = 95;
      if ((v70.i8[5] & 1) == 0)
      {
        goto LABEL_173;
      }

LABEL_181:
      v69[2] = 95;
      if ((v70.i8[6] & 1) == 0)
      {
        goto LABEL_182;
      }

LABEL_174:
      v69[3] = 95;
      if (v70.i8[7])
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (v70.i8[1])
      {
        goto LABEL_177;
      }

LABEL_169:
      if (v70.i8[2])
      {
        goto LABEL_170;
      }

LABEL_178:
      if (v70.i8[3])
      {
        goto LABEL_179;
      }

LABEL_171:
      if (v70.i8[4])
      {
        goto LABEL_172;
      }

LABEL_180:
      if (v70.i8[5])
      {
        goto LABEL_181;
      }

LABEL_173:
      if (v70.i8[6])
      {
        goto LABEL_174;
      }

LABEL_182:
      if (v70.i8[7])
      {
LABEL_183:
        v69[4] = 95;
      }
    }

    v69 += 8;
    v68 += 8;
    if (v68)
    {
      continue;
    }

    break;
  }

  if (v63 != (v63 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_338;
  }

LABEL_225:
  v64 = *&v119[0];
  v62 = BYTE7(v119[1]);
  v58 = v140;
LABEL_226:
  v120[0] = v64;
  v120[1] = *(&v119[0] + 1);
  *(&v120[1] + 7) = *(v119 + 15);
  memset(v119, 0, 24);
  HIBYTE(v120[2]) = v62;
  v121 = 1;
  LOBYTE(v122[0]) = 0;
  v126 = 0;
  if ((v58 & 1) == 0)
  {
LABEL_230:
    v78 = 0;
    goto LABEL_231;
  }

LABEL_227:
  _X0 = 0;
  _X1 = 0;
  v123 = v137;
  *v122 = v136;
  v137 = 0;
  v136 = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v124 = _X0;
  v125 = 0;
  v78 = 1;
  v126 = 1;
  if ((v140 & 1) != 0 && SHIBYTE(v137) < 0)
  {
    operator delete(v136);
  }

LABEL_231:
  if (v118 == 1 && SHIBYTE(v117) < 0)
  {
    operator delete(v116[0]);
  }

  LOBYTE(__p[0]) = 0;
  LOBYTE(v129) = 0;
  if (v121 == 1)
  {
    *__p = *v120;
    v128 = v120[2];
    memset(v120, 0, sizeof(v120));
    LOBYTE(v129) = 1;
    LOBYTE(v130) = 0;
    v134 = 0;
    v45 = 1;
    if (!v78)
    {
      goto LABEL_236;
    }

LABEL_248:
    _X0 = 0;
    _X1 = 0;
    v131 = v123;
    v130 = *v122;
    v122[1] = 0;
    v123 = 0;
    v122[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v132 = _X0;
    v133 = 0;
    v134 = 1;
    v135 = 1;
    v46 = *(a1 + 576);
    if (!v46)
    {
      goto LABEL_123;
    }

LABEL_237:
    if (v45)
    {
      if (v46 == 1)
      {
        sub_2714F61D8(&v136, __p);
        if (v137 >= 0)
        {
          v79 = &v136;
        }

        else
        {
          v79 = v136;
        }

        if (v137 >= 0)
        {
          v80 = HIBYTE(v137);
        }

        else
        {
          v80 = *(&v136 + 1);
        }

        v81 = *(a1 + 487);
        if ((v81 & 0x8000000000000000) != 0)
        {
          v82 = *(a1 + 464);
          v81 = *(a1 + 472);
        }

        else
        {
          v82 = (a1 + 464);
        }

        sub_27184C050(v79, v80, v82, v81, 0);
      }

      sub_2711308D4();
    }

    v53 = 0;
  }

  else
  {
    LOBYTE(v130) = 0;
    v134 = 0;
    v45 = 1;
    if (v78)
    {
      goto LABEL_248;
    }

LABEL_236:
    v135 = 1;
    v46 = *(a1 + 576);
    if (v46)
    {
      goto LABEL_237;
    }

LABEL_123:
    sub_2714F61D8(&v136, a1 + 464);
    sub_2714F61D8(v116, __p);
    v47 = HIBYTE(v137);
    if (v137 >= 0)
    {
      v48 = HIBYTE(v137);
    }

    else
    {
      v48 = *(&v136 + 1);
    }

    v49 = HIBYTE(v117);
    v50 = SHIBYTE(v117);
    if (v117 < 0)
    {
      v49 = v116[1];
    }

    if (v48 == v49)
    {
      if (v137 >= 0)
      {
        v51 = &v136;
      }

      else
      {
        v51 = v136;
      }

      if (v117 >= 0)
      {
        v52 = v116;
      }

      else
      {
        v52 = v116[0];
      }

      v53 = memcmp(v51, v52, v48) == 0;
    }

    else
    {
      v53 = 0;
    }

    if (v50 < 0)
    {
      operator delete(v116[0]);
      v47 = HIBYTE(v137);
    }

    if (v47 < 0)
    {
      operator delete(v136);
    }
  }

  if (v135 == 1)
  {
    if (v134 == 1 && SHIBYTE(v131) < 0)
    {
      operator delete(v130);
    }

    if (v129 == 1 && SHIBYTE(v128) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v45)
  {
    if (v126 == 1 && SHIBYTE(v123) < 0)
    {
      operator delete(v122[0]);
    }

    if (v121 == 1 && SHIBYTE(v120[2]) < 0)
    {
      operator delete(v120[0]);
    }
  }

  if (!v53)
  {
    goto LABEL_331;
  }

LABEL_268:
  if (*(a1 + 696) == 1)
  {
    if (v16)
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v129) = 0;
      if (*(v17 + 96) == 1)
      {
        if (*(v17 + 95) < 0)
        {
          sub_271127178(__p, *(v17 + 72), *(v17 + 80));
        }

        else
        {
          *__p = *(v17 + 72);
          v128 = *(v17 + 88);
        }

        LOBYTE(v129) = 1;
      }
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      LOBYTE(v129) = 0;
    }

    v86 = sub_2714F6B10(a1 + 648, __p);
    if (v129 == 1 && SHIBYTE(v128) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v86)
    {
      goto LABEL_331;
    }
  }

  if (*(a1 + 640) != 1)
  {
    goto LABEL_311;
  }

  if (v16)
  {
    sub_2714F6A94(__p, v17 + 176);
    v87 = v129;
  }

  else
  {
    v87 = 0;
    LOBYTE(__p[0]) = 0;
    LOBYTE(v129) = 0;
  }

  v88 = *(a1 + 632);
  LOBYTE(v89) = v88 == v87;
  if (v88 != v87 || !*(a1 + 632))
  {
    goto LABEL_295;
  }

  v90 = *(a1 + 616);
  v91 = *(a1 + 608);
  v92 = __p[0];
  if (v90 - v91 != __p[1] - __p[0])
  {
    LOBYTE(v89) = 0;
LABEL_295:
    if ((v87 & 1) == 0)
    {
      goto LABEL_307;
    }

    v92 = __p[0];
LABEL_297:
    if (!v92)
    {
      goto LABEL_307;
    }

    v94 = v89;
    v95 = __p[1];
    v96 = v92;
    if (__p[1] != v92)
    {
      do
      {
        v97 = v95;
        if (*(v95 - 16) == 1 && *(v95 - 41) < 0)
        {
          operator delete(*(v95 - 8));
        }

        v95 -= 12;
        if (*(v97 - 72) == 1 && *(v97 - 73) < 0)
        {
          operator delete(*v95);
        }
      }

      while (v95 != v92);
      v96 = __p[0];
    }

    __p[1] = v92;
    operator delete(v96);
    if (v94)
    {
      goto LABEL_311;
    }

    goto LABEL_331;
  }

  if (v91 == v90)
  {
    LOBYTE(v89) = 1;
    goto LABEL_295;
  }

  v93 = __p[0];
  do
  {
    v89 = sub_2714FB8D4(v91, v93);
    if (!v89)
    {
      break;
    }

    v91 += 96;
    v93 += 96;
  }

  while (v91 != v90);
  if (v87)
  {
    goto LABEL_297;
  }

LABEL_307:
  if (!v89)
  {
    goto LABEL_331;
  }

LABEL_311:
  v98 = *(a1 + 728);
  if (v98 == 1)
  {
    if (v16)
    {
      v99 = *(v17 + 48) & 0xFFFFFFFFFFFFFF00;
      LOBYTE(v98) = *(v17 + 56);
      v100 = *(v17 + 64);
      v101 = *(v17 + 48);
    }

    else
    {
      v99 = 0;
      v101 = 0;
      v100 = 0;
    }

    v102 = *(a1 + 720);
    if (v102 == v100 && *(a1 + 720))
    {
      if (*(a1 + 704) != (v101 | v99) || *(a1 + 712) != v98)
      {
        goto LABEL_331;
      }
    }

    else if (v102 != v100)
    {
      goto LABEL_331;
    }
  }

  v103 = *(a1 + 760);
  if (v103 == 1)
  {
    if (v16)
    {
      v104 = *v17 & 0xFFFFFFFFFFFFFF00;
      LOBYTE(v103) = *(v17 + 8);
      v105 = *v17;
      v106 = 1;
    }

    else
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
    }

    v107 = *(a1 + 752);
    if (v107 == v106 && *(a1 + 752))
    {
      if (*(a1 + 736) != (v105 | v104) || *(a1 + 744) != v103)
      {
        goto LABEL_331;
      }
    }

    else if (v107 != v106)
    {
      goto LABEL_331;
    }
  }

  v108 = 1;
LABEL_332:
  if (v115 == 1 && SHIBYTE(v113) < 0)
  {
    operator delete(v112[0]);
  }

  v109 = *MEMORY[0x277D85DE8];
  return v108;
}

void sub_2714F5668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 == 1 && a71 < 0)
  {
    operator delete(__p);
  }

  if (a44 == 1 && a42 < 0)
  {
    operator delete(a37);
  }

  sub_2714F6354(&a28);
  sub_2714F6354(&a19);
  sub_2714F62D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2714F5894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714F58D8(void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v11 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v11;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else if (!v4)
  {
    goto LABEL_13;
  }

  v6 = a2[1];
  v5 = a2[2];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v12 = a1;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    a1 = v12;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (v6)
  {
LABEL_7:
    v7 = (*(*a1 + 16))(a1);
    v8 = (*(*a2 + 16))(a2);
    v9 = *(*v7 + 16);

    return v9(v7, v8);
  }

LABEL_13:
  v14 = a1[1];
  v13 = a1[2];
  if (v13 && (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (v14)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = a2[1];
  v15 = a2[2];
  if (!v15)
  {
    return v16 == 0;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v16 == 0;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  return v16 == 0;
}