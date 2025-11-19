void sub_2972A010C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void lcdm::CrashEntry::~CrashEntry(lcdm::CrashEntry *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    v3 = *(this + 4);
    *(this + 8) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(this + 7);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(this + 8) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 8) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }

    *(this + 8) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 5);
        v2 = (*(this + 4) + 8);
        *(this + 4) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(this + 7) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(this + 4);
    v14 = *(this + 5);
    if (v14 != v15)
    {
      *(this + 5) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = *(this + 3);
  if (v16)
  {
    operator delete(v16);
  }
}

uint64_t lcdm::CrashDB::purgeCrashEntriesOlderThan(lcdm::CrashDB *this, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = lcdm::purgeCrashEntriesOlderThan(this + 3, a2, a3);
  v17 = a2;
  memset(__dst, 170, sizeof(__dst));
  v20[1] = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000l>>>(std::chrono::duration<long long,std::ratio<1l,1000l>> &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
  v20[2] = 15;
  v20[0] = &v17;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[14] = v6;
  v24[15] = v6;
  v24[13] = v6;
  v24[12] = v6;
  v24[11] = v6;
  v24[10] = v6;
  v24[9] = v6;
  v24[8] = v6;
  v24[7] = v6;
  v24[6] = v6;
  v24[5] = v6;
  v24[4] = v6;
  v24[3] = v6;
  v24[2] = v6;
  v24[1] = v6;
  v24[0] = v6;
  *buf = v24;
  *&buf[8] = xmmword_29742C6C0;
  v22 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v23 = 0;
  __p = v24;
  v19[0] = 1;
  v19[1] = v20;
  v19[2] = 15;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "{:%H hr %M min %S sec}", 22, v19);
  v7 = *&buf[16];
  if (*&buf[16] >= 0x7FFFFFFFFFFFFFF8uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = __p;
  if (*&buf[16] >= 0x17uLL)
  {
    if ((*&buf[16] | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (*&buf[16] | 7) + 1;
    }

    v9 = operator new(v14);
    __dst[1] = v7;
    __dst[2] = (v14 | 0x8000000000000000);
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(__dst[2]) = buf[16];
    v9 = __dst;
    if (!*&buf[16])
    {
      LOBYTE(__dst[0]) = 0;
      v10 = __p;
      if (__p == v24)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  memmove(v9, v8, v7);
  *(v7 + v9) = 0;
  v10 = __p;
  if (__p != v24)
  {
LABEL_5:
    operator delete(v10);
  }

LABEL_6:
  v11 = *(this + 2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v15 = __dst[0];
    }

    *buf = 134218242;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Purged %zu crash entries older than %{public}s", buf, 0x16u);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    operator delete(__dst[0]);
    v16 = *MEMORY[0x29EDCA608];
    return v5;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_2972A053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p)
{
  if (__p != v58)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::purgeCrashEntriesOlderThan(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[1];
  v7 = (v6 + 8 * (v4 / 0x38));
  if (a1[2] == v6)
  {
    v10 = 0;
    goto LABEL_60;
  }

  v9 = *(v6 + 8 * (v4 / 0x38)) + 72 * (v4 % 0x38);
  v10 = *(v6 + 8 * ((v4 + v5) / 0x38)) + 72 * ((v4 + v5) % 0x38);
  if (v9 != v10)
  {
    while (1)
    {
      v11 = *v9;
      v115[16] = *(v9 + 16);
      *v115 = v11;
      memset(v116, 0, 48);
      v12 = *(v9 + 56);
      v13 = (v12 >> 4) & 0xFFFFFFFFFFFFFF8;
      v14 = *(v9 + 32);
      if (*(v9 + 40) == v14)
      {
        break;
      }

      v15 = (*(v14 + v13) + 32 * (*(v9 + 56) & 0x7FLL));
      v16 = *(v9 + 64) + v12;
      v17 = (v16 >> 4) & 0xFFFFFFFFFFFFFF8;
      v18 = v16 & 0x7F;
      if ((*(v14 + v17) + 32 * v18) == v15)
      {
        goto LABEL_9;
      }

      v19 = v18 - (*(v9 + 56) & 0x7FLL) + 16 * (v17 - v13);
LABEL_10:
      std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v116, (v14 + v13), v15, v19);
      v20 = a3 - *&v115[8];
      lcdm::CrashEntry::~CrashEntry(v115);
      if (v20 > a2)
      {
        goto LABEL_13;
      }

      v9 += 72;
      if (v9 - *v7 == 4032)
      {
        v21 = v7[1];
        ++v7;
        v9 = v21;
      }

      if (v9 == v10)
      {
        goto LABEL_60;
      }
    }

    v15 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

LABEL_13:
  if (v9 != v10)
  {
    v22 = v9;
    v23 = v7;
    while (1)
    {
      v22 += 72;
      if (v22 - *v23 == 4032)
      {
        v24 = v23[1];
        ++v23;
        v22 = v24;
      }

      if (v22 == v10)
      {
        v10 = v9;
        goto LABEL_60;
      }

      v25 = *v22;
      v113 = *(v22 + 16);
      v112 = v25;
      memset(v114, 0, 48);
      v26 = *(v22 + 56);
      v27 = (v26 >> 4) & 0xFFFFFFFFFFFFFF8;
      v28 = *(v22 + 32);
      if (*(v22 + 40) == v28)
      {
        break;
      }

      v29 = (*(v28 + v27) + 32 * (*(v22 + 56) & 0x7FLL));
      v30 = *(v22 + 64) + v26;
      v31 = (v30 >> 4) & 0xFFFFFFFFFFFFFF8;
      v32 = v30 & 0x7F;
      if ((*(v28 + v31) + 32 * v32) == v29)
      {
        goto LABEL_22;
      }

      v33 = v32 - (*(v22 + 56) & 0x7FLL) + 16 * (v31 - v27);
LABEL_23:
      std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v114, (v28 + v27), v29, v33);
      v34 = a3 - *(&v112 + 1);
      lcdm::CrashEntry::~CrashEntry(&v112);
      if (v34 <= a2)
      {
        v35 = *v22;
        *(v9 + 16) = *(v22 + 16);
        *v9 = v35;
        v37 = *(v9 + 32);
        v36 = *(v9 + 40);
        if (v36 == v37)
        {
          *(v9 + 64) = 0;
          v45 = 0;
        }

        else
        {
          v109 = v7;
          v110 = v5;
          v38 = *(v9 + 56);
          v39 = &v37[v38 >> 7];
          v40 = *v39;
          v41 = *v39 + 32 * (v38 & 0x7F);
          v42 = *(v37 + (((*(v9 + 64) + v38) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v9 + 64) + v38) & 0x7F);
          if (v41 != v42)
          {
            do
            {
              v43 = *(v41 + 8);
              if (v43)
              {
                *(v41 + 16) = v43;
                operator delete(v43);
                v40 = *v39;
              }

              v41 += 32;
              if (v41 - v40 == 4096)
              {
                v44 = v39[1];
                ++v39;
                v40 = v44;
                v41 = v44;
              }
            }

            while (v41 != v42);
            v37 = *(v9 + 32);
            v36 = *(v9 + 40);
          }

          v7 = v109;
          v5 = v110;
          *(v9 + 64) = 0;
          v45 = (v36 - v37) >> 3;
          if (v45 >= 3)
          {
            do
            {
              operator delete(*v37);
              v36 = *(v9 + 40);
              v37 = (*(v9 + 32) + 8);
              *(v9 + 32) = v37;
              v45 = (v36 - v37) >> 3;
            }

            while (v45 > 2);
          }
        }

        if (v45 == 1)
        {
          v46 = 64;
        }

        else
        {
          if (v45 != 2)
          {
            goto LABEL_41;
          }

          v46 = 128;
        }

        *(v9 + 56) = v46;
LABEL_41:
        v47 = *(v9 + 64);
        if (!v47)
        {
          while (v36 != v37)
          {
            operator delete(*(v36 - 8));
            v37 = *(v9 + 32);
            v36 = *(v9 + 40) - 8;
            *(v9 + 40) = v36;
          }

          *(v9 + 56) = 0;
          std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
          v51 = *(v9 + 32);
          v50 = *(v9 + 40);
          if (v50 == v51)
          {
            goto LABEL_51;
          }

LABEL_50:
          *(v9 + 40) = v50 + ((v51 - v50 + 7) & 0xFFFFFFFFFFFFFFF8);
          goto LABEL_51;
        }

        v48 = *(v9 + 56);
        if (v48 >= 0x80)
        {
          operator delete(*v37);
          v36 = *(v9 + 40);
          v37 = (*(v9 + 32) + 8);
          *(v9 + 32) = v37;
          v47 = *(v9 + 64);
          v48 = *(v9 + 56) - 128;
          *(v9 + 56) = v48;
        }

        if (v36 == v37)
        {
          v49 = 0;
        }

        else
        {
          v49 = 16 * (v36 - v37) - 1;
        }

        if (v49 - (v48 + v47) >= 0x80)
        {
          operator delete(*(v36 - 8));
          *(v9 + 40) -= 8;
        }

        std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
        v51 = *(v9 + 32);
        v50 = *(v9 + 40);
        if (v50 != v51)
        {
          goto LABEL_50;
        }

LABEL_51:
        std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
        *(v9 + 24) = *(v22 + 24);
        *(v9 + 40) = *(v22 + 40);
        *(v22 + 40) = 0u;
        *(v22 + 24) = 0u;
        *(v9 + 56) = *(v22 + 56);
        *(v9 + 64) = *(v22 + 64);
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        v9 += 72;
        if (v9 - *v7 == 4032)
        {
          v52 = v7[1];
          ++v7;
          v9 = v52;
        }
      }
    }

    v29 = 0;
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v10 = v9;
LABEL_60:
  v53 = a1[4];
  v54 = a1[5];
  v55 = v53 + v54;
  v56 = (v53 + v54) / 0x38;
  v57 = a1[1];
  v58 = a1[2];
  v59 = (v57 + 8 * v56);
  if (v58 == v57)
  {
    v60 = 0;
  }

  else
  {
    v60 = *v59 + 72 * (v55 - 56 * v56);
  }

  if (v60 == v10)
  {
    v61 = 0;
    v62 = v53 / 0x38;
    v63 = (v57 + 8 * (v53 / 0x38));
    if (v58 != v57)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v61 = 56 * ((v59 - v7) >> 3) - 0x71C71C71C71C71C7 * ((v60 - *v59) >> 3) + 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3);
    v62 = v53 / 0x38;
    v63 = (v57 + 8 * (v53 / 0x38));
    if (v58 != v57)
    {
LABEL_65:
      v64 = (*v63 + 72 * (v53 - 56 * v62));
      if (v10 == v64)
      {
        goto LABEL_66;
      }

      goto LABEL_70;
    }
  }

  v64 = 0;
  if (!v10)
  {
LABEL_66:
    v65 = 0;
    v66 = v64;
    v67 = v63;
    if (v61 < 1)
    {
      return v5 - v54;
    }

    goto LABEL_75;
  }

LABEL_70:
  v65 = 56 * ((v7 - v63) >> 3) - 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3) + 0x71C71C71C71C71C7 * ((v64 - *v63) >> 3);
  if (v65)
  {
    v68 = 56 * ((v7 - v63) >> 3) - 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3);
    if (v68 < 1)
    {
      v94 = 55 - v68;
      v67 = (v63 - 8 * (v94 / 0x38));
      v66 = *v67 + 72 * (56 * (v94 / 0x38) - v94) + 3960;
      if (v61 < 1)
      {
        return v5 - v54;
      }
    }

    else
    {
      v67 = (v63 + 8 * (v68 / 0x38uLL));
      v66 = *v67 + 72 * (v68 % 0x38uLL);
      if (v61 < 1)
      {
        return v5 - v54;
      }
    }
  }

  else
  {
    v66 = v64;
    v67 = v63;
    if (v61 < 1)
    {
      return v5 - v54;
    }
  }

LABEL_75:
  v69 = *v67;
  v70 = v61 - 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
  if (v65 > (v54 - v61) >> 1)
  {
    v71 = v61 != 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
    if (v70 < 1)
    {
      v95 = 55 - v70;
      v72 = v67 - 8 * (v95 / 0x38);
      v73 = *v72;
      v74 = (*v72 + 72 * (56 * (v95 / 0x38) - v95) + 3960);
      if (v58 != v57)
      {
LABEL_78:
        v75 = (*v59 + 72 * (v55 - 56 * v56));
        if (v72 != v59)
        {
          goto LABEL_79;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v72 = v67 + 8 * (v70 / 0x38uLL);
      v73 = *v72;
      v74 = (*v72 + 72 * (v70 % 0x38uLL));
      if (v58 != v57)
      {
        goto LABEL_78;
      }
    }

    v75 = 0;
    if (v72 != v59)
    {
LABEL_79:
      memset(v115, 170, sizeof(v115));
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v74, (v73 + 4032), v67, v66);
      v76 = *&v115[8];
      v77 = *&v115[16];
      v78 = (v72 + 8);
      if (v72 + 8 != v59)
      {
        do
        {
          v79 = *v78++;
          memset(v115, 170, sizeof(v115));
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v79, v79 + 252, v76, v77);
          v76 = *&v115[8];
          v77 = *&v115[16];
        }

        while (v78 != v59);
      }

      v80 = *v59;
      memset(v115, 170, sizeof(v115));
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v80, v75, v76, v77);
      v82 = *&v115[8];
      v81 = *&v115[16];
      v84 = a1[1];
      v83 = a1[2];
      if (v83 != v84)
      {
LABEL_82:
        v85 = a1[5] + a1[4];
        v86 = *(v84 + 8 * (v85 / 0x38)) + 72 * (v85 % 0x38);
        if (v86 == v81)
        {
          goto LABEL_100;
        }

        goto LABEL_97;
      }

LABEL_94:
      v86 = 0;
      if (!v81)
      {
LABEL_100:
        if (v83 == v84)
        {
          v98 = 0;
        }

        else
        {
          v98 = 56 * ((v83 - v84) >> 3) - 1;
        }

        v99 = a1[4];
        v54 = a1[5] - v61;
        a1[5] = v54;
        if ((v98 - (v99 + v54)) >= 0x70)
        {
          do
          {
            operator delete(*(v83 - 8));
            v83 = a1[2] - 8;
            v100 = v83 == a1[1];
            v101 = 56 * ((v83 - a1[1]) >> 3) - 1;
            a1[2] = v83;
            if (v100)
            {
              v101 = 0;
            }

            v54 = a1[5];
          }

          while ((v101 - (v54 + a1[4])) >= 0x70);
        }

        return v5 - v54;
      }

      do
      {
LABEL_97:
        lcdm::CrashEntry::~CrashEntry(v81);
        v81 = (v96 + 72);
        if ((v81 - *v82) == 4032)
        {
          v97 = v82[1];
          ++v82;
          v81 = v97;
        }
      }

      while (v81 != v86);
      v84 = a1[1];
      v83 = a1[2];
      goto LABEL_100;
    }

LABEL_93:
    memset(v115, 170, sizeof(v115));
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v74, v75, v67, v66);
    v82 = *&v115[8];
    v81 = *&v115[16];
    v84 = a1[1];
    v83 = a1[2];
    if (v83 != v84)
    {
      goto LABEL_82;
    }

    goto LABEL_94;
  }

  v71 = v61 != 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
  if (v70 < 1)
  {
    v102 = (55 - v70) / 0x38uLL;
    v87 = v67 - v102;
    v88 = *v87 + 72 * (v70 - 55 + 56 * v102) + 3960;
    if (v63 != v67)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v87 = v67 + v70 / 0x38uLL;
    v88 = *v87 + 72 * (v70 % 0x38uLL);
    if (v63 != v67)
    {
LABEL_86:
      memset(v115, 170, sizeof(v115));
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v69, v66, v87, v88);
      v87 = *&v115[8];
      v88 = *&v115[16];
      for (i = v67 - 1; i != v63; v88 = *&v115[16])
      {
        v90 = *i--;
        memset(v115, 170, sizeof(v115));
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v90, v90 + 4032, v87, v88);
        v87 = *&v115[8];
      }

      v91 = *v63;
      memset(v115, 170, sizeof(v115));
      v92 = v91 + 4032;
      v93 = v64;
      goto LABEL_110;
    }
  }

  memset(v115, 170, sizeof(v115));
  v93 = v64;
  v92 = v66;
LABEL_110:
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v93, v92, v87, v88);
  v103 = *&v115[16];
  while (v64 != v103)
  {
    lcdm::CrashEntry::~CrashEntry(v64);
    v64 = (v64 + 72);
    if ((v64 - *v63) == 4032)
    {
      v104 = *(v63 + 1);
      v63 = (v63 + 8);
      v64 = v104;
    }
  }

  v54 = a1[5] - v61;
  v105 = a1[4] + v61;
  a1[4] = v105;
  a1[5] = v54;
  if (v105 >= 0x70)
  {
    v106 = a1[1];
    do
    {
      operator delete(*v106);
      v106 = (a1[1] + 8);
      a1[1] = v106;
      v107 = a1[4] - 56;
      a1[4] = v107;
    }

    while (v107 >= 0x70);
    v54 = a1[5];
  }

  return v5 - v54;
}

void sub_2972A0F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::CrashDB::purgeOldCrashEntries(lcdm::CrashDB *this)
{
  v2 = *(this + 9);
  SystemTime = TelephonyUtilGetSystemTime();

  return lcdm::CrashDB::purgeCrashEntriesOlderThan(this, v2, SystemTime);
}

uint64_t lcdm::serializeCrashDB(_DWORD *a1, unint64_t a2, void *a3, os_log_t oslog)
{
  v35 = *MEMORY[0x29EDCA608];
  if (a3[5])
  {
    v8 = lcdm::calculateTotalLength(a3);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__src = v9;
    v28 = v9;
    lcdm::createReturnTLVHeader(v8, __src);
    v10 = HIDWORD(__src[0]);
    v11 = HIDWORD(__src[0]) + 8;
    if (a2 < v11)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297288000, oslog, OS_LOG_TYPE_ERROR, "Failed to serialize return TLV header", buf, 2u);
        v12 = 0;
        v13 = __src[1];
        if (!__src[1])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v12 = 0;
        v13 = __src[1];
        if (!__src[1])
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

    *a1 = __src[0];
    a1[1] = v10;
    memcpy(a1 + 2, __src[1], v10);
    v14 = a3[1];
    if (a3[2] == v14 || (v15 = a3[4], v16 = (v14 + 8 * (v15 / 0x38)), v17 = (*v16 + 72 * (v15 % 0x38)), v18 = *(v14 + 8 * ((a3[5] + v15) / 0x38)) + 72 * ((a3[5] + v15) % 0x38), v17 == v18))
    {
      v12 = 1;
      v13 = __src[1];
      if (!__src[1])
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(v13);
      goto LABEL_24;
    }

    v12 = 1;
    while (1)
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v19;
      v31 = v19;
      *buf = v19;
      lcdm::CrashEntry::convertToSubTLVs(v17, buf);
      if ((buf[0] & 1) == 0)
      {
        break;
      }

      v20 = lcdm::serializeSubTLVs(a1 + v11, a2 - v11, &buf[8]);
      v22 = v21;
      std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&buf[8]);
      v11 += v22;
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = (v17 + 72);
      if ((v17 - *v16) == 4032)
      {
        v23 = v16[1];
        ++v16;
        v17 = v23;
      }

      if (v17 == v18)
      {
        goto LABEL_22;
      }
    }

    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&buf[8]);
LABEL_20:
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
LABEL_22:
      v13 = __src[1];
      if (!__src[1])
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    lcdm::CrashEntry::toDebugString(v17, buf);
    if ((SBYTE7(v30) & 0x80u) == 0)
    {
      v26 = buf;
    }

    else
    {
      v26 = *buf;
    }

    *v33 = 136315138;
    v34 = v26;
    _os_log_error_impl(&dword_297288000, oslog, OS_LOG_TYPE_ERROR, "Failed to serialize crash entry (%s)", v33, 0xCu);
    if (SBYTE7(v30) < 0)
    {
      operator delete(*buf);
    }

    v12 = 0;
    v13 = __src[1];
    if (__src[1])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = 1;
      _os_log_impl(&dword_297288000, oslog, OS_LOG_TYPE_INFO, "No crash entries to serialize", buf, 2u);
    }
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_2972A1350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

void lcdm::CrashDB::createCrashContextData(os_log_t *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  lcdm::CrashDB::logAllEntries(this);
  lcdm::createReturnTLVHeader(0, &v17);
  v4 = *__p;
  v5 = v4 + lcdm::calculateTotalLength(this + 3) + 8;
  if (*&__p[4])
  {
    operator delete(*&__p[4]);
  }

  v6 = operator new(v5);
  bzero(v6, v5);
  if ((lcdm::serializeCrashDB(v6, v5, this + 3, this[2]) & 1) == 0)
  {
    v10 = this[2];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *a2 = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      goto LABEL_10;
    }

    LOWORD(v17) = 0;
    v11 = "Failed to serialize crash entries";
    v12 = v10;
    v13 = 2;
LABEL_12:
    _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
    goto LABEL_9;
  }

  if (v7 != v5)
  {
    v14 = v7;
    v15 = this[2];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v17 = 134218240;
    *__p = v14;
    *&__p[8] = 2048;
    *&__p[10] = v5;
    v11 = "Serialized data size %zu does not match expected size %zu";
    v12 = v15;
    v13 = 22;
    goto LABEL_12;
  }

  *a2 = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v8 = operator new(v5);
  *(a2 + 8) = v8;
  v9 = &v8[v5];
  *(a2 + 24) = &v8[v5];
  memcpy(v8, v6, v5);
  *(a2 + 16) = v9;
LABEL_10:
  operator delete(v6);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_2972A1570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void lcdm::CrashDB::logAllEntries(lcdm::CrashDB *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(this + 2);
  if (*(this + 8))
  {
    if (os_log_type_enabled(*(this + 2), OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_297288000, v1, OS_LOG_TYPE_DEBUG, "#D Crash entries:", __p, 2u);
      v3 = *(this + 4);
      if (*(this + 5) == v3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v3 = *(this + 4);
      if (*(this + 5) == v3)
      {
        goto LABEL_18;
      }
    }

    v4 = *(this + 7);
    v5 = *(v3 + 8 * (v4 / 0x38));
    v6 = (v5 + 72 * (v4 % 0x38));
    v7 = *(v3 + 8 * ((*(this + 8) + v4) / 0x38)) + 72 * ((*(this + 8) + v4) % 0x38);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = (v3 + 8 * (v4 / 0x38));
      while (1)
      {
        v10 = *(this + 2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        v6 = (v6 + 72);
        if (v6 - v5 == 4032)
        {
          goto LABEL_9;
        }

LABEL_6:
        if (v6 == v7)
        {
          goto LABEL_18;
        }
      }

      lcdm::CrashEntry::toDebugString(v6, __p);
      v12 = __p;
      if (v15 < 0)
      {
        v12 = __p[0];
      }

      *buf = 67109378;
      v17 = v8;
      v18 = 2080;
      v19 = v12;
      _os_log_debug_impl(&dword_297288000, v10, OS_LOG_TYPE_DEBUG, "#D Entry[%d] = %s", buf, 0x12u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      ++v8;
      v5 = *v9;
      v6 = (v6 + 72);
      if (v6 - *v9 != 4032)
      {
        goto LABEL_6;
      }

LABEL_9:
      v11 = v9[1];
      ++v9;
      v5 = v11;
      v6 = v11;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(*(this + 2), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_297288000, v1, OS_LOG_TYPE_DEFAULT, "#I No crash entries", __p, 2u);
  }

LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
}

void lcdm::createReturnTLVHeader(lcdm *this@<X0>, void *a2@<X8>)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v9 = 4;
  strcpy(__p, "CTXT");
  lcdm::constructSubTLVWithUInt32Value(__p, this, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    v4 = v11;
    *a2 = *(&v10 + 1);
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(&v11 + 1) - v4;
    if (*(&v11 + 1) == v4)
    {
LABEL_3:
      if (!v4)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v4 = v11;
    *a2 = *(&v10 + 1);
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(&v11 + 1) - v4;
    if (*(&v11 + 1) == v4)
    {
      goto LABEL_3;
    }
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = operator new(v5);
  a2[1] = v6;
  v7 = &v6[v5];
  a2[3] = &v6[v5];
  memcpy(v6, v4, v5);
  a2[2] = v7;
  if (v4)
  {
LABEL_4:
    *(&v11 + 1) = v4;
    operator delete(v4);
  }
}

void sub_2972A18C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::calculateTotalLength(void *a1)
{
  v1 = a1[1];
  if (a1[2] != v1)
  {
    v2 = a1[4];
    v3 = *(v1 + 8 * (v2 / 0x38)) + 72 * (v2 % 0x38);
    v4 = *(v1 + 8 * ((a1[5] + v2) / 0x38)) + 72 * ((a1[5] + v2) % 0x38);
    if (v3 != v4)
    {
      LODWORD(v5) = 0;
      v6 = (v1 + 8 * (v2 / 0x38));
      while (1)
      {
        v7 = *v3;
        v20 = *(v3 + 16);
        v19 = v7;
        memset(v21, 0, 48);
        v8 = *(v3 + 56);
        v9 = (v8 >> 4) & 0xFFFFFFFFFFFFFF8;
        v10 = *(v3 + 32);
        if (*(v3 + 40) == v10)
        {
          break;
        }

        v11 = (*(v10 + v9) + 32 * (*(v3 + 56) & 0x7FLL));
        v12 = *(v3 + 64) + v8;
        v13 = (v12 >> 4) & 0xFFFFFFFFFFFFFF8;
        v14 = v12 & 0x7F;
        if ((*(v10 + v13) + 32 * v14) == v11)
        {
          goto LABEL_9;
        }

        v15 = v14 - (*(v3 + 56) & 0x7FLL) + 16 * (v13 - v9);
LABEL_10:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v21, (v10 + v9), v11, v15);
        v16 = v19;
        lcdm::CrashEntry::~CrashEntry(&v19);
        v3 += 72;
        if (v3 - *v6 == 4032)
        {
          v17 = v6[1];
          ++v6;
          v3 = v17;
        }

        v5 = (v16 + v5);
        if (v3 == v4)
        {
          return v5;
        }
      }

      v11 = 0;
LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  return 0;
}

void sub_2972A1A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14)
{
  if (a14 == a13)
  {
    v15 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v9 - v8) - 1;
  }

  v11 = a1[5];
  v12 = v11 + a1[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    std::deque<lcdm::SubTLV>::__add_back_capacity(a1, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 7));
  if (v9 == v8)
  {
    v15 = 0;
    v16 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v18 = (v8 + 8 * (v12 >> 7));
    if (v15 != v16)
    {
      goto LABEL_15;
    }

    return;
  }

  v15 = *v14 + 32 * (v12 & 0x7F);
  v16 = v15;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = a4 + ((v16 - *v14) >> 5);
  if (v17 >= 1)
  {
    v18 = &v14[v17 >> 7];
    v16 = *v18 + 32 * (v17 & 0x7F);
    if (v15 == v16)
    {
      return;
    }

LABEL_15:
    v31 = v16;
    v32 = v7;
    v30 = v18;
    while (1)
    {
      v20 = v16;
      if (v14 != v18)
      {
        v20 = *v14 + 4096;
      }

      if (v15 == v20)
      {
        v7[5] = v11;
        if (v14 == v18)
        {
          return;
        }
      }

      else
      {
        v21 = 0;
        v22 = v15;
        do
        {
          *v22 = *a3;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          v24 = a3[1];
          v23 = a3[2];
          v25 = v23 - v24;
          if (v23 != v24)
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v26 = operator new(v23 - v24);
            v22[1] = v26;
            v22[2] = v26;
            v27 = &v26[v25];
            v22[3] = &v26[v25];
            memcpy(v26, v24, v25);
            v22[2] = v27;
          }

          a3 += 4;
          if ((a3 - *a2) == 4096)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v22 += 4;
          v21 -= 32;
        }

        while (v22 != v20);
        v16 = v31;
        v7 = v32;
        v18 = v30;
        v11 = v32[5] + ((v20 - v15) >> 5);
        v32[5] = v11;
        if (v14 == v30)
        {
          return;
        }
      }

      v29 = v14[1];
      ++v14;
      v15 = v29;
      if (v29 == v16)
      {
        return;
      }
    }
  }

  v19 = 127 - v17;
  v18 = &v14[-(v19 >> 7)];
  v16 = *v18 + 32 * (~v19 & 0x7F);
  if (v15 != v16)
  {
    goto LABEL_15;
  }
}

void sub_2972A1CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    *(v12 + 16) = v14;
    v15 = a1;
    operator delete(v14);
    a1 = v15;
  }

  *(a12 + 40) += -v13 >> 5;
  _Unwind_Resume(a1);
}

void std::deque<lcdm::SubTLV>::__add_back_capacity(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16) - *(a1 + 8);
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7F) != 0)
  {
    v5 = (v4 >> 7) + 1;
  }

  else
  {
    v5 = v4 >> 7;
  }

  v6 = *(a1 + 32);
  if (v5 >= v6 >> 7)
  {
    v7 = v6 >> 7;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 7)
  {
    for (*(a1 + 32) = v6 - (v7 << 7); v7; --v7)
    {
      v13 = *(a1 + 8);
      v86 = *v13;
      *(a1 + 8) = v13 + 1;
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v86);
    }

    return;
  }

  v8 = v5 - v7;
  v9 = *(a1 + 24) - *a1;
  v10 = v3 >> 3;
  if (v5 - v7 <= (v9 >> 3) - (v3 >> 3))
  {
    if (v8)
    {
      while (*(a1 + 24) != *(a1 + 16))
      {
        v86 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v86);
        --v5;
        if (!--v8)
        {
          v6 = *(a1 + 32);
          goto LABEL_25;
        }
      }

      do
      {
        v86 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v86);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
          v80 = 127;
        }

        else
        {
          v80 = 128;
        }

        v81 = *(a1 + 32);
        *(a1 + 32) = v80 + v81;
        --v8;
      }

      while (v8);
      v7 = v5;
      *(a1 + 32) = v80 + v81 - (v5 << 7);
      if (!v5)
      {
        return;
      }
    }

    else
    {
LABEL_25:
      *(a1 + 32) = v6 - (v7 << 7);
      if (!v7)
      {
        return;
      }
    }

    do
    {
      v82 = *(a1 + 8);
      v86 = *v82;
      *(a1 + 8) = v82 + 1;
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v86);
      --v7;
    }

    while (v7);
    return;
  }

  if (v9 >> 2 <= v8 + v10)
  {
    v11 = v8 + v10;
  }

  else
  {
    v11 = v9 >> 2;
  }

  v84 = *(a1 + 32);
  if (v11)
  {
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = operator new(8 * v11);
  }

  else
  {
    v12 = 0;
  }

  v83 = v7 << 7;
  v14 = &v12[8 * (v10 - v7)];
  __p = v12;
  v15 = &v12[8 * v11];
  v16 = v14;
  do
  {
    v17 = operator new(0x1000uLL);
    if (v14 != v15)
    {
      goto LABEL_30;
    }

    if (v16 > __p)
    {
      v18 = (((v16 - __p) >> 3) + 1 + ((((v16 - __p) >> 3) + 1) >> 63)) >> 1;
      v19 = &v16[-8 * v18];
      if (v15 != v16)
      {
        memmove(&v16[-8 * v18], v16, v15 - v16);
      }

      v14 = &v19[v15 - v16];
      v16 = v19;
      goto LABEL_30;
    }

    if (v15 == __p)
    {
      v20 = 1;
    }

    else
    {
      v20 = (v15 - __p) >> 2;
    }

    if (v20 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * v20);
    v22 = v21;
    v23 = v20 >> 2;
    v24 = &v21[8 * (v20 >> 2)];
    v14 = v24;
    v25 = v15 - v16;
    if (v15 != v16)
    {
      v14 = &v24[v25];
      v26 = v25 - 8;
      if (v26 >= 0x18 && (v27 = 8 * v23, (&v21[8 * v23] - v16) >= 0x20))
      {
        v31 = (v26 >> 3) + 1;
        v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
        v28 = &v24[v32];
        v29 = &v16[v32];
        v33 = (v16 + 16);
        v34 = &v21[v27 + 16];
        v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v28 = &v21[8 * (v20 >> 2)];
        v29 = v16;
      }

      do
      {
        v30 = *v29;
        v29 += 8;
        *v28 = v30;
        v28 += 8;
      }

      while (v28 != v14);
    }

LABEL_44:
    v15 = &v21[8 * v20];
    if (__p)
    {
      operator delete(__p);
    }

    v16 = v24;
    __p = v22;
LABEL_30:
    *v14 = v17;
    v14 += 8;
    --v8;
  }

  while (v8);
  v37 = *(a1 + 8);
  if (v84 >= 0x80)
  {
    while (1)
    {
      if (v14 == v15)
      {
        if (v16 <= __p)
        {
          if (v15 == __p)
          {
            v63 = 1;
          }

          else
          {
            v63 = (v15 - __p) >> 2;
          }

          if (v63 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v64 = operator new(8 * v63);
          v65 = v64;
          v66 = v63 >> 2;
          v38 = &v64[8 * (v63 >> 2)];
          v14 = v38;
          v67 = v15 - v16;
          if (v15 != v16)
          {
            v14 = &v38[v67];
            v68 = v67 - 8;
            if (v68 < 0x18 || (v69 = 8 * v66, (&v64[8 * v66] - v16) < 0x20))
            {
              v70 = &v64[8 * (v63 >> 2)];
              v71 = v16;
              goto LABEL_92;
            }

            v73 = (v68 >> 3) + 1;
            v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
            v70 = &v38[v74];
            v71 = &v16[v74];
            v75 = (v16 + 16);
            v76 = &v64[v69 + 16];
            v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v78 = *v75;
              *(v76 - 1) = *(v75 - 1);
              *v76 = v78;
              v75 += 2;
              v76 += 2;
              v77 -= 4;
            }

            while (v77);
            if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_92:
                v72 = *v71;
                v71 += 8;
                *v70 = v72;
                v70 += 8;
              }

              while (v70 != v14);
            }
          }

          v15 = &v64[8 * v63];
          if (__p)
          {
            operator delete(__p);
          }

          __p = v65;
          goto LABEL_78;
        }

        v62 = (((v16 - __p) >> 3) + 1 + ((((v16 - __p) >> 3) + 1) >> 63)) >> 1;
        v38 = &v16[-8 * v62];
        if (v15 != v16)
        {
          memmove(&v16[-8 * v62], v16, v15 - v16);
        }

        v14 = &v38[v15 - v16];
      }

      else
      {
        v38 = v16;
      }

LABEL_78:
      *v14 = *v37;
      v14 += 8;
      v37 = (*(a1 + 8) + 8);
      *(a1 + 8) = v37;
      v16 = v38;
      if (!--v7)
      {
        goto LABEL_53;
      }
    }
  }

  v38 = v16;
LABEL_53:
  v39 = *(a1 + 16);
  if (v39 != v37)
  {
    v40 = __p;
    while (1)
    {
      if (v38 == v40)
      {
        if (v14 >= v15)
        {
          if (v15 == v40)
          {
            v46 = 1;
          }

          else
          {
            v46 = (v15 - v40) >> 2;
          }

          if (v46 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v47 = operator new(8 * v46);
          v48 = v47;
          v49 = (v46 + 3) >> 2;
          v41 = &v47[8 * v49];
          v50 = v14 - v40;
          v44 = v14 == v40;
          v14 = v41;
          if (!v44)
          {
            v14 = &v41[v50];
            v51 = v50 - 8;
            if (v51 < 0x18 || (v52 = 8 * v49, (&v47[8 * v49] - v38) < 0x20))
            {
              v53 = &v47[8 * v49];
              v54 = v38;
              goto LABEL_69;
            }

            v56 = (v51 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v53 = &v41[v57];
            v54 = &v38[v57];
            v58 = (v38 + 16);
            v59 = &v47[v52 + 16];
            v60 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v61 = *v58;
              *(v59 - 1) = *(v58 - 1);
              *v59 = v61;
              v58 += 2;
              v59 += 32;
              v60 -= 4;
            }

            while (v60);
            if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_69:
                v55 = *v54;
                v54 += 8;
                *v53 = v55;
                v53 += 8;
              }

              while (v53 != v14);
            }
          }

          v15 = &v47[8 * v46];
          if (v40)
          {
            operator delete(v40);
          }

          v40 = v48;
          goto LABEL_56;
        }

        v41 = &v40[8 * ((((v15 - v14) >> 3) + 1 + ((((v15 - v14) >> 3) + 1) >> 63)) >> 1)];
        v45 = v14 - v40;
        v44 = v14 == v40;
        v14 += 8 * ((((v15 - v14) >> 3) + 1 + ((((v15 - v14) >> 3) + 1) >> 63)) >> 1);
        if (!v44)
        {
          memmove(v41, v38, v45);
        }
      }

      else
      {
        v41 = v38;
      }

LABEL_56:
      v42 = *--v39;
      *(v41 - 1) = v42;
      v43 = v41 - 8;
      v38 = v43;
      if (v39 == *(a1 + 8))
      {
        goto LABEL_101;
      }
    }
  }

  v43 = v38;
  v40 = __p;
LABEL_101:
  v79 = *a1;
  *a1 = v40;
  *(a1 + 8) = v43;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) -= v83;
  if (v79)
  {

    operator delete(v79);
  }
}

void sub_2972A232C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    *(result + 16) = v1 + ((v2 - v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*result)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

uint64_t std::deque<lcdm::CrashEntry>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(*(a1 + 40) + v4) / 0x38] + 72 * ((*(a1 + 40) + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 56;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v2 = v1[4];
  v3 = v1[5];
  if (v3 == v2)
  {
    v3 = v1[4];
    v1[8] = 0;
    v10 = 0;
  }

  else
  {
    v4 = v1[7];
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(v1[8] + v4) / 0x38] + 72 * ((v1[8] + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = v1[4];
      v3 = v1[5];
    }

    v1[8] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = v1[5];
        v2 = (v1[4] + 8);
        v1[4] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v11 = 56;
  }

  v1[7] = v11;
LABEL_18:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = v1[4];
    v13 = v1[5];
    if (v13 != v14)
    {
      v1[5] = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = v1[3];
  if (v15)
  {
    operator delete(v15);
  }

  MEMORY[0x29C26DE80](v1 + 2);
  v16 = v1[1];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029742F09ELL)
  {
    if (((v2 & 0x800000029742F09ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029742F09ELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029742F09ELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void lcdm::CrashDB::~CrashDB(lcdm::CrashDB *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    *(this + 8) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(this + 7);
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(*(this + 8) + v4) / 0x38] + 72 * ((*(this + 8) + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }

    *(this + 8) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 5);
        v2 = (*(this + 4) + 8);
        *(this + 4) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 56;
LABEL_15:
    *(this + 7) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(this + 4);
    v13 = *(this + 5);
    if (v13 != v14)
    {
      *(this + 5) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(this + 3);
  if (v15)
  {
    operator delete(v15);
  }

  MEMORY[0x29C26DE80](this + 16);
  v16 = *(this + 1);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

lcdm::CrashDB **std::unique_ptr<lcdm::CrashDB>::~unique_ptr[abi:ne200100](lcdm::CrashDB **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    lcdm::CrashDB::~CrashDB(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000l>>>(std::chrono::duration<long long,std::ratio<1l,1000l>> &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke(std::locale::__imp **a1, uint64_t a2, uint64_t *a3)
{
  v111 = *MEMORY[0x29EDCA608];
  v82 = 0;
  v83 = -1;
  strcpy(v84, " ");
  memset(&v84[2], 0, 18);
  locale = *a1;
  v8 = a1[1];
  v102[0].__locale_ = locale;
  if (locale == v8 || *locale == 125)
  {
    goto LABEL_31;
  }

  *&v92 = locale;
  *(&v92 + 1) = v8;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v92) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  if (v92 >= v8)
  {
    goto LABEL_9;
  }

  v9 = *v92;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
LABEL_9:
      v11 = *locale;
      switch(v11)
      {
        case '<':
          v12 = 1;
          break;
        case '>':
          v12 = 3;
          break;
        case '^':
          v12 = 2;
          break;
        default:
LABEL_25:
          v14 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(&v82, v102, v8, a1);
          locale = v102[0].__locale_;
          if (v102[0].__locale_ == v8)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if ((v15 & 1) == 0 && *v102[0].__locale_ == 76)
          {
            LOBYTE(v82) = v82 | 0x40;
            locale = (v102[0].__locale_ + 1);
          }

          goto LABEL_31;
      }

      LOBYTE(v82) = v82 & 0xF8 | v12;
      locale = (locale + 1);
      v102[0].__locale_ = locale;
      if (locale == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
  }

  v3 = (v82 & 0xF8);
  LOBYTE(v82) = v3 | v10;
  v13 = v92 - locale;
  if (v92 - locale == 1)
  {
    if (*locale == 123)
    {
      std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
    }

    v84[0] = *locale;
  }

  else if (v92 != locale)
  {
    memmove(v84, locale, v13);
  }

  locale = (locale + v13 + 1);
  v102[0].__locale_ = locale;
  if (locale != v8)
  {
    goto LABEL_25;
  }

LABEL_31:
  v16 = a1[1];
  if (locale != v16)
  {
    v17 = *locale;
    if (v17 != 37 && v17 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier expects a '%' or a '}'");
    }

    v18 = WORD1(v82);
    v3 = locale;
    while (v17 != 37)
    {
      if (v17 == 125)
      {
        goto LABEL_59;
      }

      v19 = v3;
      if (v17 == 123)
      {
        std::__throw_format_error[abi:ne200100]("The chrono specifiers contain a '{'");
      }

LABEL_42:
      v3 = (v19 + 1);
      if ((v19 + 1) != v16)
      {
        v17 = *v3;
        if (v17 != 125)
        {
          continue;
        }
      }

LABEL_59:
      *&v84[4] = locale;
      *&v84[12] = v3 - locale;
      *a1 = v3;
      v23 = v82;
      if ((v18 & 0x4000) == 0)
      {
        goto LABEL_60;
      }

LABEL_63:
      v25 = SHIDWORD(v82);
      v26 = *(a2 + 8);
      if (v26 <= SHIDWORD(v82))
      {
        LOBYTE(v27) = 0;
      }

      else if (v26 > 0xC)
      {
        v28 = *(a2 + 16) + 32 * SHIDWORD(v82);
        v25 = *v28;
        v3 = *(v28 + 8);
        LOBYTE(v27) = *(v28 + 16);
        v102[0] = *(v28 + 17);
        *(&v102[0].__locale_ + 7) = *(v28 + 24);
      }

      else
      {
        v27 = (*(a2 + 24) >> (5 * BYTE4(v82))) & 0x1FLL;
        v25 = *(*(a2 + 16) + 16 * SHIDWORD(v82));
        v3 = *(*(a2 + 16) + 16 * SHIDWORD(v82) + 8);
      }

      *&v92 = v25;
      *(&v92 + 1) = v3;
      LOBYTE(v93) = v27;
      *(&v93 + 1) = v102[0];
      *(&v93 + 1) = *(&v102[0].__locale_ + 7);
      v24 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__dst, &v92);
      if ((v82 & 0x80000000) != 0)
      {
        goto LABEL_69;
      }

LABEL_61:
      v80 = v83;
      goto LABEL_75;
    }

    v19 = (v3 + 1);
    if ((v3 + 1) == v16)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing a conversion specifier");
    }

    v20 = 1;
    switch(*v19)
    {
      case '%':
      case 'M':
      case 'Q':
      case 'S':
      case 'n':
      case 'q':
      case 't':
        goto LABEL_42;
      case 'A':
      case 'a':
        v18 |= 2u;
        goto LABEL_166;
      case 'B':
      case 'b':
      case 'h':
        WORD1(v82) = v18 | 0x20;
        goto LABEL_159;
      case 'C':
      case 'Y':
      case 'y':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
      case 'D':
      case 'F':
      case 'x':
        goto LABEL_152;
      case 'E':
        v19 = (v3 + 2);
        if ((v3 + 2) == v16)
        {
          std::__throw_format_error[abi:ne200100]("End of input while parsing the modifier E");
        }

        v21 = *v19;
        if (v21 == 88)
        {
          goto LABEL_41;
        }

        if (*v19 > 0x77u)
        {
          if (v21 == 120)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
          }

          if (v21 == 122)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
          }

          if (v21 != 121)
          {
LABEL_175:
            std::__throw_format_error[abi:ne200100]("The date time type specifier for modifier E is invalid");
          }
        }

        else if (v21 != 67 && v21 != 89)
        {
          if (v21 == 99)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date and time");
          }

          goto LABEL_175;
        }

        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
      case 'G':
      case 'U':
      case 'V':
      case 'W':
      case 'g':
        WORD1(v82) = v18 | 0x10;
LABEL_152:
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
      case 'H':
      case 'I':
      case 'R':
      case 'T':
      case 'X':
      case 'p':
      case 'r':
        goto LABEL_41;
      case 'O':
        v19 = (v3 + 2);
        if ((v3 + 2) == v16)
        {
          std::__throw_format_error[abi:ne200100]("End of input while parsing the modifier O");
        }

        v22 = *v19;
        if (v22 <= 0x4C)
        {
          if (v22 - 72 >= 2)
          {
            goto LABEL_58;
          }

LABEL_41:
          v18 |= v20;
          WORD1(v82) = v18;
        }

        else if (*v19 <= 0x52u)
        {
          if (v22 != 77)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (*v19 > 0x54u)
          {
            if (*v19 <= 0x6Cu)
            {
              if (v22 - 85 < 3)
              {
                WORD1(v82) = v18 | 0x10;
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
              }

              if (v22 - 100 < 2)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a day");
              }

              goto LABEL_58;
            }

            if (*v19 <= 0x76u)
            {
              if (v22 == 109)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a month");
              }

              if (v22 != 117)
              {
LABEL_58:
                std::__throw_format_error[abi:ne200100]("The date time type specifier for modifier O is invalid");
              }
            }

            else if (v22 != 119)
            {
              if (v22 == 121)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
              }

              if (v22 == 122)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
              }

              goto LABEL_58;
            }

            WORD1(v82) = v18 | 4;
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a weekday");
          }

          if (v22 != 83)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_42;
      case 'Z':
      case 'z':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
      case 'c':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date and time");
      case 'd':
      case 'e':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a day");
      case 'j':
        v20 = 8;
        goto LABEL_41;
      case 'm':
LABEL_159:
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a month");
      case 'u':
      case 'w':
LABEL_166:
        WORD1(v82) = v18 | 4;
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a weekday");
      default:
        std::__throw_format_error[abi:ne200100]("The date time type specifier is invalid");
    }
  }

  v18 = WORD1(v82);
  *a1 = locale;
  v23 = v82;
  if ((v18 & 0x4000) != 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  v24 = HIDWORD(v82);
  if ((v18 & 0x8000) == 0)
  {
    goto LABEL_61;
  }

LABEL_69:
  v29 = v83;
  v30 = *(a2 + 8);
  if (v30 <= v83)
  {
    LOBYTE(v31) = 0;
  }

  else if (v30 > 0xC)
  {
    v32 = *(a2 + 16) + 32 * v83;
    v29 = *v32;
    v3 = *(v32 + 8);
    LOBYTE(v31) = *(v32 + 16);
    v102[0] = *(v32 + 17);
    *(&v102[0].__locale_ + 7) = *(v32 + 24);
  }

  else
  {
    v31 = (*(a2 + 24) >> (5 * v83)) & 0x1FLL;
    v29 = *(*(a2 + 16) + 16 * v83);
    v3 = *(*(a2 + 16) + 16 * v83 + 8);
  }

  *&v92 = v29;
  *(&v92 + 1) = v3;
  LOBYTE(v93) = v31;
  *(&v93 + 1) = v102[0];
  *(&v93 + 1) = *(&v102[0].__locale_ + 7);
  v80 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__dst, &v92);
LABEL_75:
  v33 = *v84;
  v34 = *&v84[4];
  v101 = 0xAAAAAAAAAAAAAAAALL;
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v100[7] = v35;
  v100[8] = v35;
  v100[5] = v35;
  v100[6] = v35;
  v100[3] = v35;
  v100[4] = v35;
  v100[1] = v35;
  v100[2] = v35;
  v99 = v35;
  v100[0] = v35;
  v97 = v35;
  v98 = v35;
  v95 = v35;
  __src = v35;
  v93 = v35;
  v94 = v35;
  v92 = v35;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v92);
  v81 = v24;
  v36 = v23 & 7 | (8 * ((v23 >> 6) & 1)) & 0xFFFFFFFFFFFFFC0FLL | (16 * (v18 & 0x3F));
  v37 = *(v92 - 24);
  if ((v36 & 8) == 0)
  {
    v38 = std::locale::classic();
    v39 = (&v92 + v37);
    v85.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(v39);
    std::ios_base::imbue(v39, v38);
    std::locale::~locale(v102);
    rdbuf = v39->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, v38);
      __dst.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&__dst, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, v38);
      std::locale::~locale(&__dst);
    }

    std::locale::~locale(&v85);
    if (!*(&v34 + 1))
    {
      goto LABEL_79;
    }

LABEL_125:
    if (*a3 < 0)
    {
      LOBYTE(v102[0].__locale_) = 45;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, v102, 1);
      v102[0].__locale_ = -*a3;
      std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(&v92, v102, v34, *(&v34 + 1));
    }

    else
    {
      std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(&v92, a3, v34, *(&v34 + 1));
    }

    v55 = -1;
    v56 = v36 | (v81 << 32);
    v57 = BYTE8(v99);
    if ((BYTE8(v99) & 0x10) != 0)
    {
      goto LABEL_109;
    }

LABEL_129:
    if ((v57 & 8) != 0)
    {
      v59 = *(&v94 + 1);
      v60 = *(&v95 + 1) - *(&v94 + 1);
      v61 = v33 << 32;
      v62 = *a2;
      v63 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = v33 << 32;
      v62 = *a2;
      v63 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_131:
    v72 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v59, v60, v62, v56, v63 | v61);
    goto LABEL_141;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C26EB90](v102);
    v49 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v49, v102);
    }

    else
    {
      std::locale::locale(v49, v102);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v102);
  }

  std::locale::locale(&v91, (a2 + 32));
  v85.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::ios_base::getloc((&v92 + v37));
  std::ios_base::imbue((&v92 + v37), &v91);
  std::locale::~locale(v102);
  v71 = *(&v94 + v37 + 8);
  if (v71)
  {
    (*(v71->__locale_ + 2))(v71, &v91);
    __dst.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::locale::locale(&__dst, v71 + 1);
    std::locale::operator=(v71 + 1, &v91);
    std::locale::~locale(&__dst);
  }

  std::locale::~locale(&v85);
  std::locale::~locale(&v91);
  if (*(&v34 + 1))
  {
    goto LABEL_125;
  }

LABEL_79:
  v110 = 0xAAAAAAAAAAAAAAAALL;
  *&v41 = 0xAAAAAAAAAAAAAAAALL;
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v109[7] = v41;
  v109[8] = v41;
  v109[5] = v41;
  v109[6] = v41;
  v109[3] = v41;
  v109[4] = v41;
  v109[1] = v41;
  v109[2] = v41;
  v108 = v41;
  v109[0] = v41;
  v106 = v41;
  v107 = v41;
  v104 = v41;
  v105 = v41;
  *&v102[0].__locale_ = v41;
  v103 = v41;
  std::ostringstream::basic_ostringstream[abi:ne200100](v102);
  v42 = v102[0].__locale_;
  v43 = v93;
  *(&v102[1].__locale_ + *(v102[0].__locale_ - 3)) = *(&v93 + *(v93 - 24) + 8);
  v44 = *(v42 - 3);
  std::ios_base::getloc((&v93 + *(v43 - 24)));
  v90.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::ios_base::getloc((v102 + v44));
  std::ios_base::imbue((v102 + v44), &__loc);
  std::locale::~locale(&__dst);
  v45 = *(&v104 + v44 + 8);
  if (v45)
  {
    (*(v45->__locale_ + 2))(v45, &__loc);
    v91.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::locale::locale(&v91, v45 + 1);
    std::locale::operator=(v45 + 1, &__loc);
    std::locale::~locale(&v91);
  }

  std::locale::~locale(&v90);
  std::locale::~locale(&__loc);
  *(&v102[2] + *(v102[0].__locale_ - 3)) = *(&v93 + *(v93 - 24) + 16);
  v46 = MEMORY[0x29C26EA90](v102, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "ms", 2);
  if ((BYTE8(v108) & 0x10) != 0)
  {
    v50 = v108;
    if (v108 < *(&v105 + 1))
    {
      *&v108 = *(&v105 + 1);
      v50 = *(&v105 + 1);
    }

    v51 = v105;
    v47 = v50 - v105;
    if ((v50 - v105) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_137;
    }
  }

  else
  {
    if ((BYTE8(v108) & 8) == 0)
    {
      v47 = 0;
      HIBYTE(v88) = 0;
      p_dst = &__dst;
      goto LABEL_98;
    }

    v51 = *(&v103 + 1);
    v47 = *(&v104 + 1) - *(&v103 + 1);
    if (*(&v104 + 1) - *(&v103 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_137:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v47 >= 0x17)
  {
    if ((v47 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v47 | 7) + 1;
    }

    p_dst = operator new(v52);
    v87 = v47;
    v88 = v52 | 0x8000000000000000;
    __dst.__locale_ = p_dst;
    goto LABEL_97;
  }

  HIBYTE(v88) = v47;
  p_dst = &__dst;
  if (v47)
  {
LABEL_97:
    memmove(p_dst, v51, v47);
  }

LABEL_98:
  *(p_dst + v47) = 0;
  if (v88 >= 0)
  {
    v53 = &__dst;
  }

  else
  {
    v53 = __dst.__locale_;
  }

  if (v88 >= 0)
  {
    v54 = HIBYTE(v88);
  }

  else
  {
    v54 = v87;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, v53, v54);
  v55 = v80;
  if (SHIBYTE(v88) < 0)
  {
    operator delete(__dst.__locale_);
  }

  v102[0] = *MEMORY[0x29EDC9538];
  *(v102 + *(v102[0].__locale_ - 3)) = *(MEMORY[0x29EDC9538] + 24);
  v102[1].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(*(&v106 + 1));
  }

  v102[1].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v103);
  std::ostream::~ostream();
  MEMORY[0x29C26EC90](v109);
  v56 = v36 | (v81 << 32);
  v57 = BYTE8(v99);
  if ((BYTE8(v99) & 0x10) == 0)
  {
    goto LABEL_129;
  }

LABEL_109:
  v58 = v99;
  if (v99 < *(&__src + 1))
  {
    *&v99 = *(&__src + 1);
    v58 = *(&__src + 1);
  }

  v59 = __src;
  v60 = v58 - __src;
  v61 = v33 << 32;
  v62 = *a2;
  v63 = v55;
  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_112:
  LODWORD(v64) = 0;
  v65 = v59;
  if (v55 && v60)
  {
    v64 = v55 & 0x7FFFFFFF;
    if (*v59 < 0)
    {
      v69 = v62;
      v70 = v56;
      v67 = v59;
    }

    else
    {
      v66 = 0;
      v65 = &v59[v64];
      v67 = &v59[v64 - 1];
      while (1)
      {
        if (v60 - 1 == v66)
        {
          LODWORD(v64) = v60;
          v65 = &v59[v60];
          goto LABEL_140;
        }

        if (v64 - 1 == v66)
        {
          break;
        }

        v68 = v59[++v66];
        if (v68 < 0)
        {
          v69 = v62;
          v70 = v56;
          v64 = v64 - v66 + 1;
          v67 = &v59[v66 - 1];
          goto LABEL_135;
        }
      }

      if ((*v65 & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v69 = v62;
      v70 = v56;
      v64 = 1;
    }

LABEL_135:
    v73 = v67 - v59;
    v74 = v59;
    LODWORD(v64) = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v67, &v59[v60], v64, 0);
    v59 = v74;
    v65 = v75;
    LODWORD(v64) = v73 + v64;
    v56 = v70;
    v62 = v69;
  }

LABEL_140:
  v72 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v59, v65 - v59, v62, v56, v63 | v61, v64);
LABEL_141:
  v76 = v72;
  *&v92 = *MEMORY[0x29EDC9528];
  v77 = *(MEMORY[0x29EDC9528] + 72);
  *(&v92 + *(v92 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v93 = v77;
  *(&v93 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v98) < 0)
  {
    operator delete(*(&v97 + 1));
  }

  *(&v93 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v94);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C26EC90](v100);
  *a2 = v76;
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972A3CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, std::locale a23, std::locale a24, std::locale a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a26, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](&a42);
  _Unwind_Resume(a1);
}

void std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(void *a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v87 = *MEMORY[0x29EDCA608];
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v8 = *a2 / 1000 % 0x15180uLL;
  v9 = v8 / 0xE10;
  LOWORD(v8) = v8 % 0xE10;
  v50 = v8 % 0x3Cu;
  v51 = v8 / 0x3Cu;
  v52 = v9;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0x3AAAAAAAAAAAAAALL;
  v49 = 0;
  v46 = 0xAAAAAAAA00435455;
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  std::locale::use_facet(&v66, MEMORY[0x29EDC9400]);
  std::locale::~locale(&v66);
  if (a4)
  {
    v10 = &a3[a4];
    v11 = a1 + 7;
    while (*a3 != 37)
    {
      LOBYTE(v66.__locale_) = *a3;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
      v14 = a3;
LABEL_4:
      a3 = v14 + 1;
      if (v14 + 1 == v10)
      {
        goto LABEL_94;
      }
    }

    v14 = a3 + 1;
    switch(a3[1])
    {
      case '%':
        LOBYTE(v66.__locale_) = 37;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'C':
        if ((DWORD2(v53) - 8100) > 0xFFFFDCD7)
        {
          goto LABEL_3;
        }

        v62 = 0;
        v63 = 3;
        if (SDWORD2(v53) >= -1900)
        {
          v26 = 0;
        }

        else
        {
          v26 = -99;
        }

        v61 = ((DWORD2(v53) + v26 + 1900) / 100);
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v27;
        v85 = v27;
        v82 = v27;
        v83 = v27;
        v80 = v27;
        v81 = v27;
        v78 = v27;
        v79 = v27;
        v76 = v27;
        v77 = v27;
        v74 = v27;
        v75 = v27;
        v72 = v27;
        v73 = v27;
        v70 = v27;
        v71 = v27;
        v66.__locale_ = &v70;
        v67 = xmmword_29742C6C0;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 1;
        v59 = &v61;
        v60 = 3;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "{:02}", 5, &v58);
        v28 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v29 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v44 = 25;
          }

          else
          {
            v44 = (*(&v67 + 1) | 7) + 1;
          }

          p_dst = operator new(v44);
          v56 = v28;
          v57 = v44 | 0x8000000000000000;
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          p_dst = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v31 = __p;
            if (__p == &v70)
            {
LABEL_35:
              if (v57 >= 0)
              {
                v24 = &__dst;
              }

              else
              {
                v24 = __dst;
              }

              if (v57 >= 0)
              {
                v25 = HIBYTE(v57);
              }

              else
              {
                v25 = v56;
              }

              goto LABEL_53;
            }

LABEL_34:
            operator delete(v31);
            goto LABEL_35;
          }
        }

        memmove(p_dst, v29, v28);
        v11 = a1 + 7;
        *(p_dst + v28) = 0;
        v31 = __p;
        if (__p == &v70)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      case 'E':
        v17 = a3[2];
        goto LABEL_56;
      case 'F':
        std::__formatter::__format_year[abi:ne200100]<char>(a1, DWORD2(v53) + 1900);
        v61 = (DWORD1(v53) + 1);
        v62 = 0;
        v64 = 0;
        v65 = 99;
        v63 = v53;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v32;
        v85 = v32;
        v82 = v32;
        v83 = v32;
        v80 = v32;
        v81 = v32;
        v78 = v32;
        v79 = v32;
        v76 = v32;
        v77 = v32;
        v74 = v32;
        v75 = v32;
        v72 = v32;
        v73 = v32;
        v70 = v32;
        v71 = v32;
        v66.__locale_ = &v70;
        v67 = xmmword_29742C6C0;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 2;
        v59 = &v61;
        v60 = 99;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "-{:02}-{:02}", 12, &v58);
        v33 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v43 = 25;
          }

          else
          {
            v43 = (*(&v67 + 1) | 7) + 1;
          }

          v35 = operator new(v43);
          v56 = v33;
          v57 = v43 | 0x8000000000000000;
          __dst = v35;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          v35 = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v36 = __p;
            if (__p == &v70)
            {
              goto LABEL_47;
            }

LABEL_46:
            operator delete(v36);
            goto LABEL_47;
          }
        }

        memmove(v35, v34, v33);
        v11 = a1 + 7;
        *(v35 + v33) = 0;
        v36 = __p;
        if (__p != &v70)
        {
          goto LABEL_46;
        }

LABEL_47:
        if (v57 >= 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst;
        }

        if (v57 >= 0)
        {
          v25 = HIBYTE(v57);
        }

        else
        {
          v25 = v56;
        }

LABEL_53:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, v24, v25);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_4;
      case 'O':
        v14 = a3 + 2;
        v17 = a3[2];
        if (v17 == 83)
        {
          goto LABEL_7;
        }

LABEL_56:
        v14 = a3 + 2;
        if (v17 != 122)
        {
          goto LABEL_3;
        }

        std::__formatter::__format_zone_offset[abi:ne200100]<char>(a1, v49, 1);
        goto LABEL_4;
      case 'Q':
        v18 = *a2;
        v62 = 0;
        v63 = 4;
        v61 = v18;
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v19;
        v85 = v19;
        v82 = v19;
        v83 = v19;
        v80 = v19;
        v81 = v19;
        v78 = v19;
        v79 = v19;
        v76 = v19;
        v77 = v19;
        v74 = v19;
        v75 = v19;
        v72 = v19;
        v73 = v19;
        v70 = v19;
        v71 = v19;
        v66.__locale_ = &v70;
        v67 = xmmword_29742C6C0;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 1;
        v59 = &v61;
        v60 = 4;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "{}", 2, &v58);
        v20 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v42 = 25;
          }

          else
          {
            v42 = (*(&v67 + 1) | 7) + 1;
          }

          v22 = operator new(v42);
          v56 = v20;
          v57 = v42 | 0x8000000000000000;
          __dst = v22;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          v22 = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v23 = __p;
            if (__p == &v70)
            {
              goto LABEL_18;
            }

LABEL_17:
            operator delete(v23);
            goto LABEL_18;
          }
        }

        memmove(v22, v21, v20);
        v11 = a1 + 7;
        *(v22 + v20) = 0;
        v23 = __p;
        if (__p != &v70)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v57 >= 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst;
        }

        if (v57 >= 0)
        {
          v25 = HIBYTE(v57);
        }

        else
        {
          v25 = v56;
        }

        goto LABEL_53;
      case 'S':
      case 'T':
LABEL_7:
        v15 = *(v11 + *(a1[2] - 24));
        v16 = *(*a1 - 24);
        std::time_put<char,std::ostreambuf_iterator<char>>::put();
        std::__formatter::__format_sub_seconds[abi:ne200100]<char,long long,std::ratio<1l,1000l>>(a1, a2);
        goto LABEL_4;
      case 'Y':
        std::__formatter::__format_year[abi:ne200100]<char>(a1, DWORD2(v53) + 1900);
        goto LABEL_4;
      case 'Z':
        if (v48 >= 0)
        {
          v37 = &v46;
        }

        else
        {
          v37 = v46;
        }

        if (v48 >= 0)
        {
          v38 = SHIBYTE(v48);
        }

        else
        {
          v38 = v47;
        }

        if (v38)
        {
          v39 = *(v11 + *(a1[2] - 24));
          do
          {
            if (v39)
            {
              v40 = *v37;
              v41 = v39[6];
              if (v41 == v39[7])
              {
                if ((*(*v39 + 104))(v39, v40) == -1)
                {
                  v39 = 0;
                }
              }

              else
              {
                v39[6] = v41 + 1;
                *v41 = v40;
              }
            }

            ++v37;
            --v38;
          }

          while (v38);
        }

        goto LABEL_4;
      case 'j':
        MEMORY[0x29C26EA50](a1 + 2, (*a2 / 86400000));
        goto LABEL_4;
      case 'n':
        LOBYTE(v66.__locale_) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'q':
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, "ms", 2);
        goto LABEL_4;
      case 't':
        LOBYTE(v66.__locale_) = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'z':
        std::__formatter::__format_zone_offset[abi:ne200100]<char>(a1, v49, 0);
        goto LABEL_4;
      default:
LABEL_3:
        v12 = *(v11 + *(a1[2] - 24));
        v13 = *(*a1 - 24);
        std::time_put<char,std::ostreambuf_iterator<char>>::put();
        goto LABEL_4;
    }
  }

LABEL_94:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v46);
  }

  v45 = *MEMORY[0x29EDCA608];
}

void sub_2972A46E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (STACK[0x210] != v19)
  {
    operator delete(STACK[0x210]);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C26EB90](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_2972A4920(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C26EC90](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__formatter::__format_sub_seconds[abi:ne200100]<char,long long,std::ratio<1l,1000l>>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1 + 2;
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v11, MEMORY[0x29EDC93F8]);
  LOBYTE(v10[0]) = (v4->__vftable[1].~facet)(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v10, 1);
  std::locale::~locale(&v11);
  v5 = *(v3 + *(*v3 - 24) + 40);
  v6 = *a2 % 1000;
  v7 = v6 + 1000;
  if (!v6)
  {
    v7 = 0;
  }

  if (*a2 >= 0)
  {
    v8 = *a2 % 1000;
  }

  else
  {
    v8 = v7;
  }

  v11.__locale_ = v8;
  v12 = 0;
  v14 = 0;
  v15 = 196;
  v13 = 3;
  v10[0] = 2;
  v10[1] = &v11;
  v10[2] = 196;
  std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v5, "{:0{}}", 6, v10);
  v9 = *MEMORY[0x29EDCA608];
}

void std::__formatter::__format_year[abi:ne200100]<char>(uint64_t a1, unsigned int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v3 = a2;
    LOBYTE(v18) = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v18, 1);
    a2 = -v3;
  }

  v17[1] = 0;
  v17[2] = 3;
  v17[0] = a2;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[14] = v4;
  v22[15] = v4;
  v22[13] = v4;
  v22[12] = v4;
  v22[11] = v4;
  v22[10] = v4;
  v22[9] = v4;
  v22[8] = v4;
  v22[7] = v4;
  v22[6] = v4;
  v22[5] = v4;
  v22[4] = v4;
  v22[3] = v4;
  v22[2] = v4;
  v22[1] = v4;
  v22[0] = v4;
  v18 = v22;
  *__len = xmmword_29742C6C0;
  v20 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v21 = 0;
  __p = v22;
  v16[0] = 1;
  v16[1] = v17;
  v16[2] = 3;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v18, "{:04}", 5, v16);
  v5 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (__len[1] | 7) + 1;
    }

    v7 = operator new(v12);
    v14 = v5;
    v15 = v12 | 0x8000000000000000;
    v13 = v7;
  }

  else
  {
    HIBYTE(v15) = __len[1];
    v7 = &v13;
    if (!__len[1])
    {
      LOBYTE(v13) = 0;
      v8 = __p;
      if (__p == v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  memmove(v7, v6, v5);
  *(v7 + v5) = 0;
  v8 = __p;
  if (__p != v22)
  {
LABEL_7:
    operator delete(v8);
  }

LABEL_8:
  if (v15 >= 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13;
  }

  if (v15 >= 0)
  {
    v10 = HIBYTE(v15);
  }

  else
  {
    v10 = v14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), v9, v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_2972A4E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__formatter::__format_zone_offset[abi:ne200100]<char>(uint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v14 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 16);
  if ((a2 & 0x8000000000000000) != 0)
  {
    LOBYTE(v11) = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v11, 1);
    v4 = -v4;
  }

  else
  {
    LOBYTE(v11) = 43;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v11, 1);
  }

  v6 = *(v5 + *(*v5 - 24) + 40);
  v12 = 0;
  v13 = 4;
  v10 = 4;
  v11 = v4 / 0xE10;
  v8 = 1;
  v9 = &v11;
  std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, "{:02}", 5, &v8);
  if (a3)
  {
    LOBYTE(v11) = 58;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v11, 1);
  }

  v12 = 0;
  v13 = 4;
  v10 = 4;
  v11 = (v4 % 0xE10) / 60;
  v8 = 1;
  v9 = &v11;
  std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, "{:02}", 5, &v8);
  v7 = *MEMORY[0x29EDCA608];
}

void std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[14] = v4;
  v27[15] = v4;
  v27[13] = v4;
  v27[12] = v4;
  v27[11] = v4;
  v27[10] = v4;
  v27[9] = v4;
  v27[8] = v4;
  v27[7] = v4;
  v27[6] = v4;
  v27[5] = v4;
  v27[4] = v4;
  v27[3] = v4;
  v27[2] = v4;
  v27[1] = v4;
  v27[0] = v4;
  v24 = xmmword_29742C6C0;
  v25 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v26 = 0;
  __p = v27;
  v29 = a1;
  v5 = *a4;
  v19[0] = a2;
  v19[1] = &a2[a3];
  v20 = 0;
  v21 = 0;
  v22 = v5;
  v23 = v27;
  v15 = *a4;
  v16 = a4[2];
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v14 = &v23;
  LOBYTE(v17.__locale_) = 0;
  v18 = 0;
  std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v19, &v14);
  if (v18 == 1)
  {
    std::locale::~locale(&v17);
  }

  v6 = __p;
  v7 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v8 = v29;
    do
    {
      if (v8)
      {
        v9 = *v6;
        v10 = v8[6];
        if (v10 == v8[7])
        {
          if ((*(*v8 + 104))(v8, v9) == -1)
          {
            v8 = 0;
          }
        }

        else
        {
          v8[6] = v10 + 1;
          *v10 = v9;
        }
      }

      ++v6;
      --v7;
    }

    while (v7);
    v6 = __p;
  }

  if (v6 != v27)
  {
    operator delete(v6);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_2972A5184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
{
  if (a17 == 1)
  {
    std::locale::~locale(v60 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  if (__p != v61)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_74;
  }

  v61 = result;
  v7 = *a4;
  v8 = a5;
  for (i = a3; ; i = v11)
  {
    v10 = 0x8E38E38E38E38E39 * ((v8 - v7) >> 3);
    if ((0x8E38E38E38E38E39 * ((i - v6) >> 3)) < v10)
    {
      v10 = 0x8E38E38E38E38E39 * ((i - v6) >> 3);
    }

    v11 = i - 72 * v10;
    if (v10)
    {
      while (1)
      {
        v14 = *(i - 72);
        *(v8 - 56) = *(i - 56);
        *(v8 - 72) = v14;
        v16 = *(v8 - 40);
        v15 = *(v8 - 32);
        if (v15 == v16)
        {
          *(v8 - 8) = 0;
          v24 = 0;
        }

        else
        {
          v17 = *(v8 - 16);
          v18 = &v16[v17 >> 7];
          v19 = *v18;
          v20 = *v18 + 32 * (v17 & 0x7F);
          v21 = *(v16 + (((*(v8 - 8) + v17) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v8 - 8) + v17) & 0x7F);
          if (v20 != v21)
          {
            do
            {
              v22 = *(v20 + 8);
              if (v22)
              {
                *(v20 + 16) = v22;
                operator delete(v22);
                v19 = *v18;
              }

              v20 += 32;
              if (v20 - v19 == 4096)
              {
                v23 = v18[1];
                ++v18;
                v19 = v23;
                v20 = v23;
              }
            }

            while (v20 != v21);
            v16 = *(v8 - 40);
            v15 = *(v8 - 32);
          }

          *(v8 - 8) = 0;
          v24 = (v15 - v16) >> 3;
          if (v24 >= 3)
          {
            do
            {
              operator delete(*v16);
              v15 = *(v8 - 32);
              v16 = (*(v8 - 40) + 8);
              *(v8 - 40) = v16;
              v24 = (v15 - v16) >> 3;
            }

            while (v24 > 2);
          }
        }

        if (v24 == 1)
        {
          v25 = 64;
        }

        else
        {
          if (v24 != 2)
          {
            goto LABEL_28;
          }

          v25 = 128;
        }

        *(v8 - 16) = v25;
LABEL_28:
        v26 = *(v8 - 8);
        if (!v26)
        {
          while (v15 != v16)
          {
            operator delete(*(v15 - 8));
            v16 = *(v8 - 40);
            v15 = *(v8 - 32) - 8;
            *(v8 - 32) = v15;
          }

          *(v8 - 16) = 0;
          v29 = *(v8 - 48);
          v30 = v15 - v16;
          if (*(v8 - 24) - v29 <= (v15 - v16))
          {
            goto LABEL_53;
          }

LABEL_40:
          v31 = v15 - v16;
          if (v15 == v16)
          {
            v32 = 0;
            v33 = v30;
            goto LABEL_51;
          }

          if ((v30 & 0x8000000000000000) != 0)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v32 = operator new(v30);
          v33 = &v32[v30];
          if ((v31 - 8) < 0x18 || (v32 - v16) < 0x20)
          {
            v36 = v32;
            v37 = v16;
          }

          else
          {
            v34 = ((v31 - 8) >> 3) + 1;
            v35 = v34 & 0x3FFFFFFFFFFFFFFCLL;
            v36 = &v32[v35 * 8];
            v37 = &v16[v35];
            v38 = (v16 + 2);
            v39 = v32 + 16;
            v40 = v34 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v41 = *v38;
              *(v39 - 1) = *(v38 - 1);
              *v39 = v41;
              v38 += 2;
              v39 += 2;
              v40 -= 4;
            }

            while (v40);
            if (v34 == (v34 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_51:
              *(v8 - 48) = v32;
              *(v8 - 40) = v32;
              *(v8 - 32) = v33;
              *(v8 - 24) = &v32[v30];
              if (v29)
              {
                operator delete(v29);
              }

              goto LABEL_53;
            }
          }

          do
          {
            v42 = *v37++;
            *v36 = v42;
            v36 += 8;
          }

          while (v36 != v33);
          goto LABEL_51;
        }

        v27 = *(v8 - 16);
        if (v27 >= 0x80)
        {
          operator delete(*v16);
          v15 = *(v8 - 32);
          v16 = (*(v8 - 40) + 8);
          *(v8 - 40) = v16;
          v26 = *(v8 - 8);
          v27 = *(v8 - 16) - 128;
          *(v8 - 16) = v27;
        }

        v28 = 16 * (v15 - v16) - 1;
        if (v15 == v16)
        {
          v28 = 0;
        }

        if (v28 - (v27 + v26) >= 0x80)
        {
          operator delete(*(v15 - 8));
          v16 = *(v8 - 40);
          v15 = *(v8 - 32) - 8;
          *(v8 - 32) = v15;
        }

        v29 = *(v8 - 48);
        v30 = v15 - v16;
        if (*(v8 - 24) - v29 > (v15 - v16))
        {
          goto LABEL_40;
        }

LABEL_53:
        v44 = *(v8 - 40);
        v43 = *(v8 - 32);
        if (v43 == v44)
        {
          v45 = *(v8 - 40);
          v46 = *(v8 - 48);
          v47 = 0;
          if (*(v8 - 24) != v46)
          {
LABEL_57:
            if (v45 == v44)
            {
              v48 = 0;
              v49 = v47;
              goto LABEL_68;
            }

            if ((v47 & 0x8000000000000000) != 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v48 = operator new(v47);
            v49 = &v48[v47];
            if (v47 - 8 < 0x18)
            {
              v50 = v48;
            }

            else
            {
              v50 = v48;
              if ((v48 - v44) >= 0x20)
              {
                v51 = ((v47 - 8) >> 3) + 1;
                v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
                v50 = &v48[v52];
                v53 = &v44[v52];
                v54 = (v44 + 16);
                v55 = v48 + 16;
                v56 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v57 = *v54;
                  *(v55 - 1) = *(v54 - 1);
                  *v55 = v57;
                  v54 += 2;
                  v55 += 2;
                  v56 -= 4;
                }

                while (v56);
                v44 = v53;
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_68:
                  *(v8 - 48) = v48;
                  *(v8 - 40) = v48;
                  *(v8 - 32) = v49;
                  *(v8 - 24) = &v48[v47];
                  if (v46)
                  {
                    operator delete(v46);
                  }

                  goto LABEL_10;
                }
              }
            }

            do
            {
              v58 = *v44;
              v44 += 8;
              *v50 = v58;
              v50 += 8;
            }

            while (v50 != v49);
            goto LABEL_68;
          }
        }

        else
        {
          v45 = &v43[(v44 - v43 + 7) & 0xFFFFFFFFFFFFFFF8];
          *(v8 - 32) = v45;
          v46 = *(v8 - 48);
          v47 = v45 - v44;
          if (*(v8 - 24) - v46 > (v45 - v44))
          {
            goto LABEL_57;
          }
        }

LABEL_10:
        v13 = (i - 48);
        *(v8 - 48) = *(i - 48);
        *(v8 - 32) = *(i - 32);
        *v13 = 0u;
        v13[1] = 0u;
        *(v8 - 16) = *(i - 16);
        *(v8 - 8) = *(i - 8);
        *(i - 16) = 0;
        *(i - 8) = 0;
        a5 = v8 - 72;
        v8 -= 72;
        i -= 72;
        if (i == v11)
        {
          goto LABEL_7;
        }
      }
    }

    a5 = v8;
LABEL_7:
    if (v11 == v6)
    {
      break;
    }

    v12 = *--v5;
    v7 = v12;
    v8 = v12 + 4032;
  }

  if (*v5 + 4032 == a5)
  {
    v59 = v5[1];
    ++v5;
    a5 = v59;
  }

  v6 = a3;
  result = v61;
LABEL_74:
  *result = v6;
  result[1] = v5;
  result[2] = a5;
  return result;
}

void std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 - v3;
  if (*(a1 + 24) - *a1 <= (v1 - v3))
  {
    return;
  }

  v6 = v1 - v3;
  if (v1 == v3)
  {
    v7 = 0;
    v8 = (v1 - v3);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = operator new(v1 - v3);
  v8 = &v7[v4];
  if ((v6 - 8) < 0x18)
  {
    v9 = v7;
    do
    {
LABEL_12:
      v17 = *v3;
      v3 += 8;
      *v9 = v17;
      v9 += 8;
    }

    while (v9 != v8);
    goto LABEL_13;
  }

  v9 = v7;
  if ((v7 - v3) < 0x20)
  {
    goto LABEL_12;
  }

  v10 = ((v6 - 8) >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v9 = &v7[v11];
  v12 = &v3[v11];
  v13 = (v3 + 16);
  v14 = v7 + 16;
  v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v3 = v12;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  *a1 = v7;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = &v7[v4];
  if (v2)
  {

    operator delete(v2);
  }
}

__int128 **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(__int128 **result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_76;
  }

  v59 = result;
  v9 = *a4;
  while (1)
  {
    v11 = 0x8E38E38E38E38E39 * ((v9 - a5 + 4032) >> 3);
    if ((0x8E38E38E38E38E39 * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0x8E38E38E38E38E39 * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_3:
    v10 = *(v6 + 1);
    v6 = (v6 + 8);
    v9 = v10;
    a5 = v10;
  }

  v12 = (v7 + 72 * v11);
  do
  {
    v13 = *v7;
    *(a5 + 16) = *(v7 + 16);
    *a5 = v13;
    v15 = *(a5 + 32);
    v14 = *(a5 + 40);
    if (v14 == v15)
    {
      *(a5 + 64) = 0;
      v23 = 0;
    }

    else
    {
      v16 = *(a5 + 56);
      v17 = &v15[v16 >> 7];
      v18 = *v17;
      v19 = *v17 + 32 * (v16 & 0x7F);
      v20 = *(v15 + (((*(a5 + 64) + v16) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a5 + 64) + v16) & 0x7F);
      if (v19 != v20)
      {
        do
        {
          v21 = *(v19 + 8);
          if (v21)
          {
            *(v19 + 16) = v21;
            operator delete(v21);
            v18 = *v17;
          }

          v19 += 32;
          if (v19 - v18 == 4096)
          {
            v22 = v17[1];
            ++v17;
            v18 = v22;
            v19 = v22;
          }
        }

        while (v19 != v20);
        v15 = *(a5 + 32);
        v14 = *(a5 + 40);
      }

      *(a5 + 64) = 0;
      v23 = (v14 - v15) >> 3;
      if (v23 >= 3)
      {
        do
        {
          operator delete(*v15);
          v14 = *(a5 + 40);
          v15 = (*(a5 + 32) + 8);
          *(a5 + 32) = v15;
          v23 = (v14 - v15) >> 3;
        }

        while (v23 > 2);
      }
    }

    if (v23 == 1)
    {
      v24 = 64;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_27;
      }

      v24 = 128;
    }

    *(a5 + 56) = v24;
LABEL_27:
    v25 = *(a5 + 64);
    if (!v25)
    {
      while (v14 != v15)
      {
        operator delete(*(v14 - 8));
        v15 = *(a5 + 32);
        v14 = *(a5 + 40) - 8;
        *(a5 + 40) = v14;
      }

      *(a5 + 56) = 0;
      v28 = *(a5 + 24);
      v29 = v14 - v15;
      if (*(a5 + 48) - v28 <= (v14 - v15))
      {
        goto LABEL_52;
      }

LABEL_39:
      v30 = v14 - v15;
      if (v14 == v15)
      {
        v31 = 0;
        v32 = v29;
        goto LABEL_50;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v31 = operator new(v29);
      v32 = &v31[v29];
      if ((v30 - 8) < 0x18 || (v31 - v15) < 0x20)
      {
        v35 = v31;
        v36 = v15;
      }

      else
      {
        v33 = ((v30 - 8) >> 3) + 1;
        v34 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        v35 = &v31[v34 * 8];
        v36 = &v15[v34];
        v37 = (v15 + 2);
        v38 = v31 + 16;
        v39 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v40 = *v37;
          *(v38 - 1) = *(v37 - 1);
          *v38 = v40;
          v37 += 2;
          v38 += 2;
          v39 -= 4;
        }

        while (v39);
        if (v33 == (v33 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_50:
          *(a5 + 24) = v31;
          *(a5 + 32) = v31;
          *(a5 + 40) = v32;
          *(a5 + 48) = &v31[v29];
          if (v28)
          {
            operator delete(v28);
          }

          goto LABEL_52;
        }
      }

      do
      {
        v41 = *v36++;
        *v35 = v41;
        v35 += 8;
      }

      while (v35 != v32);
      goto LABEL_50;
    }

    v26 = *(a5 + 56);
    if (v26 >= 0x80)
    {
      operator delete(*v15);
      v14 = *(a5 + 40);
      v15 = (*(a5 + 32) + 8);
      *(a5 + 32) = v15;
      v25 = *(a5 + 64);
      v26 = *(a5 + 56) - 128;
      *(a5 + 56) = v26;
    }

    v27 = 16 * (v14 - v15) - 1;
    if (v14 == v15)
    {
      v27 = 0;
    }

    if (v27 - (v26 + v25) >= 0x80)
    {
      operator delete(*(v14 - 8));
      v15 = *(a5 + 32);
      v14 = *(a5 + 40) - 8;
      *(a5 + 40) = v14;
    }

    v28 = *(a5 + 24);
    v29 = v14 - v15;
    if (*(a5 + 48) - v28 > (v14 - v15))
    {
      goto LABEL_39;
    }

LABEL_52:
    v43 = *(a5 + 32);
    v42 = *(a5 + 40);
    if (v42 == v43)
    {
      v44 = *(a5 + 32);
      v45 = *(a5 + 24);
      v46 = 0;
      if (*(a5 + 48) == v45)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v44 = &v42[(v43 - v42 + 7) & 0xFFFFFFFFFFFFFFF8];
      *(a5 + 40) = v44;
      v45 = *(a5 + 24);
      v46 = v44 - v43;
      if (*(a5 + 48) - v45 <= (v44 - v43))
      {
        goto LABEL_9;
      }
    }

    if (v44 == v43)
    {
      v47 = 0;
      v48 = v46;
      goto LABEL_67;
    }

    if ((v46 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v47 = operator new(v46);
    v48 = &v47[v46];
    if (v46 - 8 < 0x18)
    {
      v49 = v47;
      do
      {
LABEL_66:
        v57 = *v43;
        v43 += 8;
        *v49 = v57;
        v49 += 8;
      }

      while (v49 != v48);
      goto LABEL_67;
    }

    v49 = v47;
    if ((v47 - v43) < 0x20)
    {
      goto LABEL_66;
    }

    v50 = ((v46 - 8) >> 3) + 1;
    v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
    v49 = &v47[v51];
    v52 = &v43[v51];
    v53 = (v43 + 16);
    v54 = v47 + 16;
    v55 = v50 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v56 = *v53;
      *(v54 - 1) = *(v53 - 1);
      *v54 = v56;
      v53 += 2;
      v54 += 2;
      v55 -= 4;
    }

    while (v55);
    v43 = v52;
    if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_66;
    }

LABEL_67:
    *(a5 + 24) = v47;
    *(a5 + 32) = v47;
    *(a5 + 40) = v48;
    *(a5 + 48) = &v47[v46];
    if (v45)
    {
      operator delete(v45);
    }

LABEL_9:
    *(a5 + 24) = *(v7 + 24);
    *(a5 + 40) = *(v7 + 40);
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *(a5 + 56) = *(v7 + 7);
    *(a5 + 64) = *(v7 + 8);
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    v7 = (v7 + 72);
    a5 += 72;
  }

  while (v7 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_3;
  }

  if (*v6 + 4032 == a5)
  {
    v58 = *(v6 + 1);
    v6 = (v6 + 8);
    a5 = v58;
  }

  result = v59;
LABEL_76:
  *result = v12;
  result[1] = v6;
  result[2] = a5;
  return result;
}

BOOL MobileAssetSupport::lockAsset(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v102 = *MEMORY[0x29EDCA608];
  v8 = MobileAssetSupport::getMAAutoAssetSet(a1, a2);
  if (v8)
  {
    *(a4 + 24) = 0;
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v9, v10];
    if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
    {
      qword_2A1399CF8 = 0;
      qword_2A1399D00 = 0;
      __cxa_guard_release(&qword_2A1399CF0);
    }

    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_43);
    }

    v12 = qword_2A1399D00;
    if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_INFO, "Trying to lock assetSetId %@, timeout:%ld", buf, 0x16u);
    }

    v13 = objc_opt_new();
    [v13 setAllowCheckDownloadWhenBatteryLow:1];
    [v13 setAllowCheckDownloadWhenCPUHigh:1];
    [v13 setAllowCheckDownloadOverExpensive:1];
    [v13 setAllowCheckDownloadOverCellular:1];
    [v13 setUserInitiated:1];
    v95 = 0;
    v96 = 0;
    v89 = [v8 lockAtomicSync:@"AppleBasebandServicesAccess" forAtomicInstance:0 withNeedPolicy:v13 withTimeout:a3 lockedAtomicEntries:&v96 error:&v95];
    v90 = v96;
    v14 = v95;

    if (v14)
    {
      if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
      {
        qword_2A1399CF8 = 0;
        qword_2A1399D00 = 0;
        __cxa_guard_release(&qword_2A1399CF0);
      }

      if (_MergedGlobals == -1)
      {
        v15 = qword_2A1399D00;
        if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          v16 = 0;
LABEL_143:

          goto LABEL_144;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals, &__block_literal_global_43);
        v15 = qword_2A1399D00;
        if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }
      }

      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "Failed to lock assetSetId %@: %@", buf, 0x16u);
      goto LABEL_17;
    }

    if (![v90 count])
    {
      if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
      {
        qword_2A1399CF8 = 0;
        qword_2A1399D00 = 0;
        __cxa_guard_release(&qword_2A1399CF0);
      }

      if (_MergedGlobals != -1)
      {
        dispatch_once(&_MergedGlobals, &__block_literal_global_43);
      }

      v26 = qword_2A1399D00;
      if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_297288000, v26, OS_LOG_TYPE_ERROR, "url is missing for assetSetId %@", buf, 0xCu);
      }

      v14 = 0;
      v16 = 0;
      goto LABEL_143;
    }

    v17 = [v90 objectAtIndex:0];
    v88 = [v17 localContentURL];

    v18 = v88;
    v16 = v88 != 0;
    if (!v88)
    {
      v14 = 0;
LABEL_142:

      goto LABEL_143;
    }

    v87 = v11;
    v19 = [v88 path];
    v20 = v19;
    v21 = [v19 UTF8String];
    v22 = 0x7FFFFFFFFFFFFFF7;
    v23 = strlen(v21);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = v23;
    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v23 | 7) + 1;
      }

      v25 = operator new(v27);
      *&buf[8] = v24;
      *&buf[16] = v27 | 0x8000000000000000;
      *buf = v25;
    }

    else
    {
      buf[23] = v23;
      v25 = buf;
      if (!v23)
      {
LABEL_37:
        v25[v24] = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = *buf;
        *(a4 + 16) = *&buf[16];

        memset(__dst, 170, sizeof(__dst));
        v28 = [v88 path];
        v29 = v28;
        v30 = [v28 UTF8String];
        v31 = strlen(v30);
        if (v31 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v32 = v31;
        if (v31 >= 0x17)
        {
          if ((v31 | 7) == 0x17)
          {
            v34 = 25;
          }

          else
          {
            v34 = (v31 | 7) + 1;
          }

          v33 = operator new(v34);
          __dst[1] = v32;
          __dst[2] = (v34 | 0x8000000000000000);
          __dst[0] = v33;
        }

        else
        {
          HIBYTE(__dst[2]) = v31;
          v33 = __dst;
          if (!v31)
          {
LABEL_48:
            *(v32 + v33) = 0;

            v86 = MEMORY[0x29EDB8E70];
            v35 = MEMORY[0x29EDBA0F8];
            if (SHIBYTE(__dst[2]) >= 0)
            {
              v36 = __dst;
            }

            else
            {
              v36 = __dst[0];
            }

            if (SHIBYTE(__dst[2]) >= 0)
            {
              v37 = SHIBYTE(__dst[2]);
            }

            else
            {
              v37 = __dst[1];
            }

            v38 = v36 + v37;
            if (v37 >= 9)
            {
              v40 = MEMORY[0x29EDBA0F8];
              v41 = v37;
              v42 = v36;
              do
              {
                v39 = memchr(v42, 65, v41 - 8);
                if (!v39)
                {
                  break;
                }

                if (*v39 == 0x7461447465737341 && v39[8] == 97)
                {
                  goto LABEL_64;
                }

                v42 = (v39 + 1);
                v41 = v38 - v42;
              }

              while (v38 - v42 > 8);
              v39 = v36 + v37;
LABEL_64:
              v35 = v40;
            }

            else
            {
              v39 = v36 + v37;
            }

            v44 = v39 - v36;
            if (v39 == v38)
            {
              v44 = -1;
            }

            if (v37 >= v44)
            {
              v45 = v44;
            }

            else
            {
              v45 = v37;
            }

            if (v45 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v45 >= 0x17)
            {
              if ((v45 | 7) == 0x17)
              {
                v47 = 25;
              }

              else
              {
                v47 = (v45 | 7) + 1;
              }

              v46 = operator new(v47);
              __p[1] = v45;
              v93 = v47 | 0x8000000000000000;
              __p[0] = v46;
            }

            else
            {
              HIBYTE(v93) = v45;
              v46 = __p;
              if (!v45)
              {
LABEL_79:
                *(v46 + v45) = 0;
                v48 = SHIBYTE(v93);
                if ((SHIBYTE(v93) & 0x8000000000000000) != 0)
                {
                  v48 = __p[1];
                  v51 = (v93 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v51 - __p[1] < 0xA)
                  {
                    v49 = __p[1] + 10;
                    if ((0x7FFFFFFFFFFFFFF7 - (v93 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v51 + 10)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v50 = __p[0];
                    if (v51 > 0x3FFFFFFFFFFFFFF2)
                    {
                      v54 = 0;
LABEL_94:
                      v55 = operator new(v22);
                      v56 = v55;
                      if (v48)
                      {
                        memmove(v55, v50, v48);
                      }

                      v57 = v56 + v48;
                      *v57 = *"Info.plist";
                      *(v57 + 4) = 29811;
                      if (!v54)
                      {
                        operator delete(v50);
                      }

                      __p[1] = v49;
                      v93 = v22 | 0x8000000000000000;
                      __p[0] = v56;
                      v58 = &v49[v56];
LABEL_105:
                      *v58 = 0;
                      *&buf[16] = v93;
                      *buf = *__p;
                      __p[1] = 0;
                      v93 = 0;
                      __p[0] = 0;
                      if (buf[23] >= 0)
                      {
                        v62 = buf;
                      }

                      else
                      {
                        v62 = *buf;
                      }

                      v63 = [v35 stringWithUTF8String:v62];
                      v64 = [v86 fileURLWithPath:v63];

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      if (SHIBYTE(v93) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v65 = objc_alloc(MEMORY[0x29EDB8DC0]);
                      v91 = 0;
                      v66 = [v65 initWithContentsOfURL:v64 error:&v91];
                      v14 = v91;
                      if (!v14 && v66)
                      {
                        v67 = [v66 objectForKey:@"ManagerProperties"];
                        v68 = [v67 objectForKey:@"IsNotificationEnabled"];

                        if (v68)
                        {
                          v69 = [MEMORY[0x29EDBA070] numberWithBool:1];
                          v70 = [v68 isEqual:v69];

                          if (v70)
                          {
                            *(a4 + 24) = 1;
                          }
                        }

                        v71 = [v66 objectForKey:@"ManagerProperties"];
                        v72 = [v71 objectForKey:@"notificationActionUrl"];

                        if (v72)
                        {
                          v73 = v72;
                          std::string::__assign_external((a4 + 32), [v72 UTF8String]);
                        }

                        v74 = [v66 objectForKey:@"CFBundleVersion"];
                        v75 = v74;
                        if (v74)
                        {
                          v76 = v74;
                          std::string::__assign_external((a4 + 56), [v75 UTF8String]);
                        }

LABEL_125:
                        if (atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire))
                        {
LABEL_126:
                          if (_MergedGlobals != -1)
                          {
                            dispatch_once(&_MergedGlobals, &__block_literal_global_43);
                          }

                          v11 = v87;
                          v78 = qword_2A1399D00;
                          if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
                          {
                            v79 = *(a4 + 24);
                            if (*(a4 + 55) >= 0)
                            {
                              v80 = a4 + 32;
                            }

                            else
                            {
                              v80 = *(a4 + 32);
                            }

                            if (*(a4 + 79) >= 0)
                            {
                              v81 = a4 + 56;
                            }

                            else
                            {
                              v81 = *(a4 + 56);
                            }

                            if (*(a4 + 23) >= 0)
                            {
                              v82 = a4;
                            }

                            else
                            {
                              v82 = *a4;
                            }

                            *buf = 138413314;
                            *&buf[4] = v87;
                            *&buf[12] = 1024;
                            *&buf[14] = v79;
                            *&buf[18] = 2080;
                            *&buf[20] = v80;
                            v98 = 2080;
                            v99 = v81;
                            v100 = 2080;
                            v101 = v82;
                            _os_log_impl(&dword_297288000, v78, OS_LOG_TYPE_INFO, "Locked assetSetId %@: enableNotification=%d, actionURL=%s, assetVersion=%s, path=%s", buf, 0x30u);
                          }

                          if (SHIBYTE(__dst[2]) < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v18 = v88;
                          goto LABEL_142;
                        }

LABEL_152:
                        if (__cxa_guard_acquire(&qword_2A1399CF0))
                        {
                          qword_2A1399CF8 = 0;
                          qword_2A1399D00 = 0;
                          __cxa_guard_release(&qword_2A1399CF0);
                        }

                        goto LABEL_126;
                      }

                      if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
                      {
                        qword_2A1399CF8 = 0;
                        qword_2A1399D00 = 0;
                        __cxa_guard_release(&qword_2A1399CF0);
                      }

                      if (_MergedGlobals == -1)
                      {
                        v77 = qword_2A1399D00;
                        if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_125;
                        }
                      }

                      else
                      {
                        dispatch_once(&_MergedGlobals, &__block_literal_global_43);
                        v77 = qword_2A1399D00;
                        if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_125;
                        }
                      }

                      v85 = ", plist dictionary is null";
                      if (v66)
                      {
                        v85 = "";
                      }

                      *buf = 138412546;
                      *&buf[4] = v14;
                      *&buf[12] = 2080;
                      *&buf[14] = v85;
                      _os_log_error_impl(&dword_297288000, v77, OS_LOG_TYPE_ERROR, "Failed to read Info file: error=%@ %s", buf, 0x16u);
                      if (atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire))
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_152;
                    }

LABEL_85:
                    v52 = 2 * v51;
                    if (v49 > 2 * v51)
                    {
                      v52 = v49;
                    }

                    if ((v52 | 7) == 0x17)
                    {
                      v53 = 25;
                    }

                    else
                    {
                      v53 = (v52 | 7) + 1;
                    }

                    if (v52 >= 0x17)
                    {
                      v22 = v53;
                    }

                    else
                    {
                      v22 = 23;
                    }

                    v54 = v51 == 22;
                    goto LABEL_94;
                  }

                  v59 = __p[0];
                }

                else
                {
                  if ((SHIBYTE(v93) - 13) < 0xA)
                  {
                    v49 = (SHIBYTE(v93) + 10);
                    v50 = __p;
                    v51 = 22;
                    goto LABEL_85;
                  }

                  v59 = __p;
                }

                v60 = v59 + v48;
                *v60 = *"Info.plist";
                *(v60 + 4) = 29811;
                v61 = v48 + 10;
                if (SHIBYTE(v93) < 0)
                {
                  __p[1] = (v48 + 10);
                }

                else
                {
                  HIBYTE(v93) = v61 & 0x7F;
                }

                v58 = v59 + v61;
                goto LABEL_105;
              }
            }

            memmove(v46, v36, v45);
            goto LABEL_79;
          }
        }

        memmove(v33, v30, v32);
        goto LABEL_48;
      }
    }

    memmove(v25, v21, v24);
    goto LABEL_37;
  }

  v16 = 0;
LABEL_144:

  v83 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_2972A689C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL MobileAssetSupport::unlockAsset(uint64_t *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v2, v3];
  if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
  {
    qword_2A1399CF8 = 0;
    qword_2A1399D00 = 0;
    __cxa_guard_release(&qword_2A1399CF0);
  }

  if (_MergedGlobals == -1)
  {
    v5 = qword_2A1399D00;
    if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  dispatch_once(&_MergedGlobals, &__block_literal_global_43);
  v5 = qword_2A1399D00;
  if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_INFO, "Trying to unlock assetSetId %@", buf, 0xCu);
  }

LABEL_11:
  v6 = [MEMORY[0x29EDC5D08] endAtomicLocksSync:0 usingClientDomain:@"com.apple.AppleBasebandServices" forClientName:@"com.apple.AppleBasebandServices" forAssetSetIdentifier:v4 ofAtomicInstance:@"ALL_INSTANCES" removingLockCount:-1];
  explicit = atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire);
  if (!v6)
  {
    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
    {
      qword_2A1399CF8 = 0;
      qword_2A1399D00 = 0;
      __cxa_guard_release(&qword_2A1399CF0);
    }

    if (_MergedGlobals == -1)
    {
      v12 = qword_2A1399D00;
      if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_43);
      v12 = qword_2A1399D00;
      if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }
    }

    *buf = 138412290;
    v16 = v4;
    v9 = "Unlocked assetSetId %@";
    v10 = v12;
    v11 = 12;
    goto LABEL_20;
  }

  if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
  {
    qword_2A1399CF8 = 0;
    qword_2A1399D00 = 0;
    __cxa_guard_release(&qword_2A1399CF0);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_43);
    v8 = qword_2A1399D00;
    if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v8 = qword_2A1399D00;
  if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
  {
LABEL_15:
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    v9 = "Failed to unlock assetSetId %@: %@";
    v10 = v8;
    v11 = 22;
LABEL_20:
    _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
  }

LABEL_21:

  v13 = *MEMORY[0x29EDCA608];
  return v6 == 0;
}

uint64_t support::mobileasset::registerForUpdates(std::string::size_type a1, std::string::size_type a2, NSObject *a3, void *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
  {
    qword_2A1399CF8 = 0;
    qword_2A1399D00 = 0;
    __cxa_guard_release(&qword_2A1399CF0);
  }

  if (_MergedGlobals == -1)
  {
    v8 = qword_2A1399D00;
    if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_43);
    v8 = qword_2A1399D00;
    if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v9;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
  _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_INFO, "Registering for assetType %s, directory %s", &buf, 0x16u);
LABEL_11:
  v11 = MobileAssetSupport::registerDownloadedHandler(a1, a2, a3, v7);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3321888768;
  v14[2] = ___ZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviE_block_invoke;
  v14[3] = &__block_descriptor_80_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0_e5_v8__0l;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *a1, *(a1 + 8));
  }

  else
  {
    buf = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = buf;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  dispatch_async(a3, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      operator delete(v15.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_27:

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_2972A6FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(&a22);

  _Unwind_Resume(a1);
}

uint64_t MobileAssetSupport::registerDownloadedHandler(uint64_t *a1, uint64_t *a2, NSObject *a3, void *a4)
{
  v7 = a4;
  out_token = -1;
  v8 = MEMORY[0x29EDC5D18];
  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v9, v10];
  v12 = [v8 notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:v11];

  notify_register_dispatch([v12 UTF8String], &out_token, a3, v7);
  v13 = out_token;

  return v13;
}

void ___ZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviE_block_invoke(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(a1 + 32), *(a1 + 40));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 56);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
LABEL_6:
  MobileAssetSupport::indicateNeedForAsset(&v3, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v3.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v3.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void sub_2972A7230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      return;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
}

void sub_2972A72FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 32);

  operator delete(v2);
}

uint64_t support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
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

uint64_t MobileAssetSupport::getAssetSetIdentifier(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v2, v3];
}

void MobileAssetSupport::indicateNeedForAsset(uint64_t *a1, uint64_t *a2)
{
  v2 = MobileAssetSupport::getMAAutoAssetSet(a1, a2);
  if (v2)
  {
    v4 = v2;
    v3 = objc_opt_new();
    [v3 setAllowCheckDownloadWhenBatteryLow:1];
    [v3 setAllowCheckDownloadWhenCPUHigh:1];
    [v3 setAllowCheckDownloadOverExpensive:1];
    [v3 setAllowCheckDownloadOverCellular:1];
    [v3 setUserInitiated:1];
    [v4 needForAtomic:@"AppleBasebandServicesAccess" withNeedPolicy:v3 completion:&__block_literal_global];

    v2 = v4;
  }
}

id MobileAssetSupport::getMAAutoAssetSet(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x29EDC5D10]);
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithCString:v6 encoding:4];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [MEMORY[0x29EDBA0F8] stringWithCString:v8 encoding:4];
  v10 = [v5 initForAssetType:v7 withAssetSpecifier:v9];

  [v4 addObject:v10];
  v11 = objc_alloc(MEMORY[0x29EDC5D08]);
  if (*(a1 + 23) >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v12, v13];
  v22 = 0;
  v15 = [v11 initUsingClientDomain:@"com.apple.AppleBasebandServices" forClientName:@"com.apple.AppleBasebandServices" forAssetSetIdentifier:v14 comprisedOfEntries:v4 error:&v22];
  v16 = v22;

  if (v16 || !v15)
  {
    if ((atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
    {
      qword_2A1399CF8 = 0;
      qword_2A1399D00 = 0;
      __cxa_guard_release(&qword_2A1399CF0);
    }

    if (_MergedGlobals == -1)
    {
      v17 = qword_2A1399D00;
      if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_22:
      if (*(a1 + 23) >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      *buf = 136315650;
      v24 = v20;
      v25 = 2080;
      v26 = v21;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_297288000, v17, OS_LOG_TYPE_ERROR, "Failed to create assetSet for %s-%s: %@", buf, 0x20u);
      goto LABEL_18;
    }

    dispatch_once(&_MergedGlobals, &__block_literal_global_43);
    v17 = qword_2A1399D00;
    if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }
  }

LABEL_18:

  v18 = *MEMORY[0x29EDCA608];

  return v15;
}

id MobileAssetSupport::getMAAssetSetPolicy(MobileAssetSupport *this)
{
  v1 = objc_opt_new();
  [v1 setAllowCheckDownloadWhenBatteryLow:1];
  [v1 setAllowCheckDownloadWhenCPUHigh:1];
  [v1 setAllowCheckDownloadOverExpensive:1];
  [v1 setAllowCheckDownloadOverCellular:1];
  [v1 setUserInitiated:1];

  return v1;
}

void ___ZN18MobileAssetSupport20indicateNeedForAssetENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v5 = a3;
  explicit = atomic_load_explicit(&qword_2A1399CF0, memory_order_acquire);
  if (!v5)
  {
    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
    {
      qword_2A1399CF8 = 0;
      qword_2A1399D00 = 0;
      __cxa_guard_release(&qword_2A1399CF0);
    }

    if (_MergedGlobals == -1)
    {
      v8 = qword_2A1399D00;
      if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_43);
      v8 = qword_2A1399D00;
      if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }
    }

    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_INFO, "Indicated need for assetSetId %@", &v10, 0xCu);
    goto LABEL_10;
  }

  if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399CF0))
  {
    qword_2A1399CF8 = 0;
    qword_2A1399D00 = 0;
    __cxa_guard_release(&qword_2A1399CF0);
  }

  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_43);
    v7 = qword_2A1399D00;
    if (!os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v7 = qword_2A1399D00;
  if (os_log_type_enabled(qword_2A1399D00, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Failed to indicate need for assetSetId %@: %@", &v10, 0x16u);
  }

LABEL_10:

  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN12_GLOBAL__N_116sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "support.mobileasset");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void metric::sendCoreAnalyticsEvent(const void **a1, void **a2, int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 20;
  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    v23 = 779710063;
    HIBYTE(v23) = v4 + 20;
    *__p = *"com.apple.Telephony.";
    v11 = &v23 + 4;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    __p[1] = (v4 + 20);
    v23 = v9 | 0x8000000000000000;
    __p[0] = v10;
    *(v10 + 4) = 779710063;
    *v10 = *"com.apple.Telephony.";
    v11 = v10 + 20;
  }

  v12 = *a1;
  if (v3 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  memmove(v11, v13, v4);
LABEL_15:
  v11[v4] = 0;
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v14 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
    v14 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  v15 = __p;
  if (v23 < 0)
  {
    v15 = __p[0];
  }

  *buf = 136315394;
  v25 = v15;
  v26 = 1024;
  v27 = a3;
  _os_log_impl(&dword_297288000, v14, OS_LOG_TYPE_DEFAULT, "Sending CoreAnalytics event: %s (repeated integer type: %d)", buf, 0x12u);
LABEL_21:
  if (a3)
  {
    v20[1] = MEMORY[0x29EDCA5F8];
    v20[2] = 1174405120;
    v20[3] = ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke;
    v20[4] = &__block_descriptor_tmp_21;
    v16 = *a2;
    object = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      object = xpc_null_create();
    }

    p_object = &object;
    analytics_send_exploding_event_lazy();
    xpc_release(object);
  }

  else
  {
    v17 = *a2;
    v20[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      v20[0] = xpc_null_create();
    }

    p_object = v20;
    analytics_send_event_lazy();
    xpc_release(v20[0]);
  }

  *p_object = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_2972A7FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

xpc_object_t __copy_helper_block_e8_32c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

xpc_object_t ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

char *ABMGetRootVersionString@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29742F120;
  strcpy(result, "AppleBasebandServices_Manager-1397");
  return result;
}

uint64_t hasBasebandEntitlement(xpc_object_t *a1, int a2)
{
  v4 = MEMORY[0x29C26F9F0](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 == MEMORY[0x29EDCAA00])
  {
    remote_connection = xpc_dictionary_get_remote_connection(*a1);
    if (remote_connection)
    {
      v8 = remote_connection;
      xpc_retain(remote_connection);
    }

    else
    {
      v8 = xpc_null_create();
    }

    if (MEMORY[0x29C26F9F0](v8) != MEMORY[0x29EDCA9F0])
    {
      v6 = 0;
LABEL_75:
      xpc_release(v8);
      return v6 & 1;
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v9;
    v40 = v9;
    xpc_connection_get_audit_token();
    xdict = 0xAAAAAAAAAAAAAAAALL;
    v10 = xpc_copy_entitlement_for_token();
    v11 = v10;
    if (v10)
    {
      xdict = v10;
    }

    else
    {
      v11 = xpc_null_create();
      xdict = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_15;
      }
    }

    if (MEMORY[0x29C26F9F0](v11) == v5)
    {
      xpc_retain(v11);
      goto LABEL_16;
    }

    v12 = xpc_null_create();
LABEL_15:
    xdict = v12;
LABEL_16:
    xpc_release(v11);
    v13 = xpc_null_create();
    if (MEMORY[0x29C26F9F0](xdict) == v5)
    {
      __p = &xdict;
      v42 = kKeyEntitlementFineGrained;
      xpc::dict::object_proxy::operator xpc::array(&__p, object);
      v14 = object[0];
      object[0] = xpc_null_create();
      xpc_release(v13);
      xpc_release(object[0]);
      v13 = v14;
    }

    v15 = MEMORY[0x29C26F9F0](v13);
    v16 = MEMORY[0x29EDCA9E0];
    if (v15 != MEMORY[0x29EDCA9E0])
    {
      v6 = 0;
LABEL_36:
      if ((v6 & 1) == 0 && (a2 & 1) == 0)
      {
        if (MEMORY[0x29C26F9F0](xdict) == v5)
        {
          value = xpc_dictionary_get_value(xdict, kKeyEntitlementBasebanddAllow);
          v33 = value;
          __p = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            v33 = xpc_null_create();
            __p = v33;
          }

          if (MEMORY[0x29C26F9F0](v33) == MEMORY[0x29EDCAA40])
          {
            v6 = 0;
          }

          else
          {
            v6 = xpc::dyn_cast_or_default(&__p, 0);
            v33 = __p;
          }

          xpc_release(v33);
        }

        else
        {
          v6 = 0;
        }
      }

      xpc_release(v13);
      xpc_release(xdict);
      goto LABEL_75;
    }

    if (v13)
    {
      xpc_retain(v13);
      v17 = v13;
    }

    else
    {
      v17 = xpc_null_create();
      if (!v17)
      {
        v17 = xpc_null_create();
        v18 = 0;
LABEL_24:
        xpc_release(v18);
        if (v13)
        {
          xpc_retain(v13);
          v19 = v13;
        }

        else
        {
          v19 = xpc_null_create();
        }

        if (MEMORY[0x29C26F9F0](v13) == v16)
        {
          count = xpc_array_get_count(v13);
          if (v19)
          {
            goto LABEL_29;
          }
        }

        else
        {
          count = 0;
          if (v19)
          {
LABEL_29:
            xpc_retain(v19);
            v35 = v19;
            goto LABEL_32;
          }
        }

        v35 = xpc_null_create();
LABEL_32:
        xpc_release(v19);
        if (!count && v17 == v35)
        {
          v6 = 0;
LABEL_35:
          xpc_release(v35);
          xpc_release(v17);
          goto LABEL_36;
        }

        v6 = 0;
        v21 = 0;
        v22 = count - 1;
        while (1)
        {
          v37 = 0xAAAAAAAAAAAAAAAALL;
          v23 = xpc_array_get_value(v17, v21);
          v37 = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            v37 = xpc_null_create();
          }

          memset(object, 170, sizeof(object));
          __p = 0;
          v42 = 0;
          v43 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p);
            v24 = HIBYTE(object[2]);
            if (a2)
            {
LABEL_46:
              v25 = kBasebandXpcRestricted;
              v26 = strlen(kBasebandXpcRestricted);
              v27 = v26;
              if ((v24 & 0x80) != 0)
              {
                if (v26 != object[1])
                {
                  goto LABEL_58;
                }

                if (v26 == -1)
                {
                  std::string::__throw_out_of_range[abi:ne200100]();
                }

                goto LABEL_57;
              }

              goto LABEL_52;
            }
          }

          else
          {
            v24 = HIBYTE(object[2]);
            if (a2)
            {
              goto LABEL_46;
            }
          }

          v25 = kBasebandXpc;
          v28 = strlen(kBasebandXpc);
          v27 = v28;
          if ((v24 & 0x80) != 0)
          {
            if (v28 != object[1])
            {
              goto LABEL_58;
            }

            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

LABEL_57:
            if (memcmp(object[0], v25, v27))
            {
              goto LABEL_58;
            }

            goto LABEL_65;
          }

LABEL_52:
          if (v27 != v24 || memcmp(object, v25, v27))
          {
LABEL_58:
            v29 = 1;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            operator delete(object[0]);
            goto LABEL_60;
          }

LABEL_65:
          v29 = 0;
          v6 = 1;
          if ((v24 & 0x80) != 0)
          {
            goto LABEL_59;
          }

LABEL_60:
          xpc_release(v37);
          if (v29)
          {
            v30 = v21 + 1;
            if (v22 != v21++)
            {
              continue;
            }

            v21 = v30;
            if (v17 != v35)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }
    }

    xpc_retain(v17);
    v18 = v17;
    goto LABEL_24;
  }

  v6 = 0;
  return v6 & 1;
}

void sub_2972A8670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  xpc_release(object);
  xpc_release(v28);
  xpc_release(a16);
  xpc_release(v27);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator xpc::array(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v4) != MEMORY[0x29EDCA9E0])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

uint64_t data::TransportService::ThrottlingConfig::asString@<X0>(data::TransportService::ThrottlingConfig *this@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[7] = v4;
  v23[8] = v4;
  v23[5] = v4;
  v23[6] = v4;
  v23[3] = v4;
  v23[4] = v4;
  v23[1] = v4;
  v23[2] = v4;
  v22 = v4;
  v23[0] = v4;
  *__p = v4;
  v21 = v4;
  v18 = v4;
  *__src = v4;
  v16 = v4;
  v17 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "enabled ", 8);
  v6 = "???";
  if (!*this)
  {
    v6 = "Disabled";
  }

  if (*this == 1)
  {
    v7 = "Enabled";
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  if (*this == 1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", timeout ", 10);
    MEMORY[0x29C26EA60](v9, *(this + 1));
  }

  if ((BYTE8(v22) & 0x10) != 0)
  {
    v11 = v22;
    if (v22 < __src[1])
    {
      *&v22 = __src[1];
      v11 = __src[1];
    }

    v12 = __src[0];
    v10 = v11 - __src[0];
    if ((v11 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((BYTE8(v22) & 8) == 0)
    {
      v10 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    v12 = *(&v17 + 1);
    v10 = *(&v18 + 1) - *(&v17 + 1);
    if (*(&v18 + 1) - *(&v17 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_26:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v14 = operator new(v13);
    *(a2 + 1) = v10;
    *(a2 + 2) = v13 | 0x8000000000000000;
    *a2 = v14;
    a2 = v14;
    goto LABEL_21;
  }

  a2[23] = v10;
  if (v10)
  {
LABEL_21:
    memmove(a2, v12, v10);
  }

LABEL_22:
  a2[v10] = 0;
  *&v16 = *MEMORY[0x29EDC9538];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v16 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v17);
  std::ostream::~ostream();
  return MEMORY[0x29C26EC90](v23);
}

void sub_2972A8AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C26EC90](v9 + 112);
  _Unwind_Resume(a1);
}

data::TransportService *data::TransportService::TransportService(data::TransportService *this)
{
  data::TransportService::State::create(this, this);
  return this;
}

{
  data::TransportService::State::create(this, this);
  return this;
}

void data::TransportService::State::create(data::TransportService::State *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (capabilities::abs::supportsDataTransportService(this))
  {
    v3 = operator new(0x68uLL);
    data::TransportService::State::State(v3);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<data::TransportService::State>::shared_ptr[abi:ne200100]<data::TransportService::State,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1},0>(&v5, v3);
    v4 = v5;
    *a2 = v5;
    data::TransportService::State::init(v4);
  }
}

void sub_2972A8BAC(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void data::TransportService::enterLowPower(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_46;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void data::TransportService::exitLowPower(uint64_t **this)
{
  v1 = *this;
  if (v1)
  {
    v2[0] = MEMORY[0x29EDCA5F8];
    v2[1] = 0x40000000;
    v2[2] = ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke;
    v2[3] = &__block_descriptor_tmp_48;
    v2[4] = v1;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v1, v2);
  }
}

void data::TransportService::setConfig(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *a2;
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___ZN4data16TransportService5State9setConfigENS0_16ThrottlingConfigE_block_invoke;
    v4[3] = &__block_descriptor_tmp_51;
    v4[4] = v2;
    v4[5] = v3;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v2, v4);
  }
}

void data::TransportService::dumpState(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK4data16TransportService5State9dumpStateEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_52;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void data::TransportService::unblockThrottling(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_53;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<sys::UIObserver>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void data::TransportService::State::init(data::TransportService::State *this)
{
  v119 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Inited", buf, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  v3 = xmmword_2A13993F8;
  if (!xmmword_2A13993F8)
  {
    memset(buf, 170, sizeof(buf));
    v4 = operator new(0x40uLL);
    sys::UIObserver::UIObserver(v4);
    std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(buf, v4);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&xmmword_2A13993F8 + 1);
    xmmword_2A13993F8 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v3 = xmmword_2A13993F8;
  }

  v90 = *(&xmmword_2A13993F8 + 1);
  if (*(&xmmword_2A13993F8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13993F8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE13connect_eventIN5boost8signals26signalIFvbENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEbEEENS7_5mutexEEES3_vJbEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke;
  aBlock[3] = &__block_descriptor_tmp;
  aBlock[4] = this;
  aBlock[5] = data::TransportService::State::handleUILockStateChange_sync;
  aBlock[6] = 0;
  v8 = _Block_copy(aBlock);
  v86 = v3;
  v9 = *(this + 1);
  if (!v9 || (v10 = *this, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = *(this + 2);
  v92 = v13;
  v85 = v8;
  if (v8)
  {
    v14 = _Block_copy(v8);
  }

  else
  {
    v14 = 0;
  }

  v93 = v14;
  dispatch_retain(v13);
  *v94 = 0u;
  v95 = 0u;
  v98 = v13;
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  v99 = v14;
  dispatch_retain(v13);
  object = v13;
  v87 = v10;
  v88 = v12;
  v84 = this;
  if (!v14)
  {
    v101 = 0;
    dispatch_retain(v13);
    goto LABEL_29;
  }

  v15 = _Block_copy(v14);
  v101 = v15;
  dispatch_retain(v13);
  if (!v15)
  {
LABEL_29:
    dispatch_retain(v13);
    v102 = 0;
    goto LABEL_30;
  }

  v16 = _Block_copy(v15);
  dispatch_retain(v13);
  v102 = 0;
  if (!v16)
  {
LABEL_30:
    dispatch_retain(v13);
    v83 = 0;
    v21 = 1;
LABEL_31:
    dispatch_retain(v13);
    v17 = 0;
    v22 = 1;
LABEL_32:
    dispatch_retain(v13);
    v18 = 0;
    v23 = 1;
LABEL_33:
    dispatch_retain(v13);
    v19 = 0;
    v103 = v13;
    v24 = 1;
    goto LABEL_34;
  }

  v17 = _Block_copy(v16);
  dispatch_retain(v13);
  v83 = v16;
  if (!v17)
  {
    v21 = 0;
    goto LABEL_31;
  }

  v18 = _Block_copy(v17);
  dispatch_retain(v13);
  if (!v18)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_32;
  }

  v19 = _Block_copy(v18);
  dispatch_retain(v13);
  if (!v19)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_33;
  }

  v20 = _Block_copy(v19);
  dispatch_retain(v13);
  v103 = v13;
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v104 = _Block_copy(v20);
    dispatch_retain(v13);
    dispatch_release(v13);
    _Block_release(v20);
    goto LABEL_35;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_34:
  v104 = 0;
  dispatch_retain(v13);
  dispatch_release(v13);
LABEL_35:
  dispatch_release(v13);
  if ((v24 & 1) == 0)
  {
    _Block_release(v19);
  }

  dispatch_release(v13);
  if ((v23 & 1) == 0)
  {
    _Block_release(v18);
  }

  v102 = boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>)::stored_vtable;
  dispatch_release(v13);
  if ((v22 & 1) == 0)
  {
    _Block_release(v17);
  }

  dispatch_release(v13);
  if ((v21 & 1) == 0)
  {
    _Block_release(v83);
  }

  *&v106 = 0xAAAAAAAAAAAAAAAALL;
  *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = 0;
  *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
  boost::function1<void,BOOL>::move_assign(buf, &v102);
  boost::function1<void,BOOL>::move_assign(&v102, &v95 + 8);
  boost::function1<void,BOOL>::move_assign(&v95 + 8, buf);
  if (*buf && (buf[0] & 1) == 0 && **buf)
  {
    (**buf)(&buf[8], &buf[8], 2);
  }

  if (v102)
  {
    if ((v102 & 1) == 0 && *v102)
    {
      (*v102)(&v103, &v103, 2u);
    }

    v102 = 0;
  }

  dispatch_release(object);
  if (v101)
  {
    _Block_release(v101);
  }

  dispatch_release(v98);
  if (v99)
  {
    _Block_release(v99);
  }

  atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = &unk_2A1E34E88;
  v25[1] = v87;
  v25[2] = v88;
  atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v26 = operator new(0x18uLL);
  *v26 = &unk_2A1E34E88;
  v26[1] = v87;
  v26[2] = v88;
  atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&buf[8] = v26;
  *buf = 2;
  v27 = v94[1];
  if (v94[1] < v95)
  {
    v28 = operator new(0x18uLL);
    *v28 = &unk_2A1E34E88;
    v28[1] = v87;
    v28[2] = v88;
    atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v27[1] = v28;
    *v27 = 2;
    v94[1] = v27 + 3;
LABEL_58:
    (*(*v26 + 8))(v26);
    goto LABEL_59;
  }

  v51 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v94, buf);
  v52 = *buf ^ (*buf >> 31);
  v94[1] = v51;
  if (v52 == 2)
  {
    v26 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v52 == 1)
  {
    v53 = v106;
    if (v106 && atomic_fetch_add((v106 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_94:
      (*(*v53 + 24))(v53);
    }
  }

  else
  {
    v53 = v106;
    if (v106 && atomic_fetch_add((v106 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_94;
    }
  }

LABEL_59:
  (*(*v25 + 8))(v25);
  std::__shared_weak_count::__release_weak(v88);
  v29 = *(v86 + 40);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v113 = v30;
  v114 = v30;
  v111 = v30;
  v112 = v30;
  v109 = v30;
  v110 = v30;
  v107 = v30;
  v108 = v30;
  *buf = v30;
  v106 = v30;
  v31 = v29[3];
  v115 = 10;
  __p = buf;
  v117 = 0;
  v118 = v31;
  pthread_mutex_lock(v31);
  v32 = v29[1];
  if (!v32 || atomic_load_explicit(v32 + 2, memory_order_acquire) != 1)
  {
    v36 = operator new(0x20uLL);
    v37 = *v29;
    v38 = **v29;
    v39 = operator new(0x40uLL);
    boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v39, v38);
    *v36 = v39;
    *(v36 + 1) = 0;
    boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v36, v39, v36 + 1);
    *(v36 + 2) = v37[2];
    v40 = v37[3];
    *(v36 + 3) = v40;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1u, memory_order_relaxed);
    }

    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v29, v36);
    v33 = **v29;
    v35 = -1;
LABEL_66:
    v34 = *(v33 + 8);
    object = v34;
    if (v33 == v34)
    {
      goto LABEL_87;
    }

    goto LABEL_67;
  }

  v33 = **v29;
  v34 = v29[2];
  v35 = 1;
  if (v34 == v33)
  {
    goto LABEL_66;
  }

  object = v29[2];
LABEL_67:
  v41 = 0;
  do
  {
    isa = v34[2].isa;
    v44 = *(isa + 4);
    if (v44)
    {
      for (i = *v44; i != v44[1]; i += 24)
      {
        if ((*i ^ (*i >> 31)) > 1)
        {
          if ((*(**(i + 8) + 24))(*(i + 8)))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v46 = *(i + 16);
          if (!v46 || !atomic_load_explicit((v46 + 8), memory_order_acquire))
          {
LABEL_83:
            if (*(isa + 24) == 1)
            {
              *(isa + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(isa, buf);
            }

            break;
          }
        }
      }
    }

    v47 = object[2].isa;
    if (*(v47 + 24))
    {
      v34 = object[1].isa;
    }

    else
    {
      v34 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(**v29, v47 + 16, &object);
    }

    object = v34;
    ++v41;
  }

  while (v34 != **v29 && v35 >= v41);
LABEL_87:
  v29[2] = v34;
  v48 = operator new(0x50uLL);
  v48[1] = 0;
  v48[2] = 0;
  *(v48 + 24) = 1;
  *(v48 + 7) = 1;
  *v48 = &unk_2A1E34CE0;
  v49 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v49, v94);
  v49[3] = 0;
  v50 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v49[3] = *(&v95 + 1);
    if (v50)
    {
      *(v49 + 2) = v96;
      v49[6] = v97;
    }

    else
    {
      (*v50)(&v96, v49 + 32, 0);
    }
  }

  v48[5] = 0;
  v48[4] = v49;
  v54 = operator new(0x18uLL);
  v54[1] = 0x100000001;
  *v54 = &unk_2A1E34D88;
  v54[2] = v49;
  v48[5] = v54;
  v48[6] = v29[3];
  v55 = v29[4];
  v48[7] = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(v55 + 2, 1u, memory_order_relaxed);
  }

  *(v48 + 16) = 0;
  *(v48 + 68) = 0;
  v102 = v48;
  v103 = 0;
  v56 = operator new(0x18uLL);
  *(v56 + 1) = 0x100000001;
  *v56 = &unk_2A1E34DE8;
  *(v56 + 2) = v48;
  v103 = v56;
  v57 = **v29;
  v58 = operator new(0x20uLL);
  v59 = (v57 + 32);
  v58[2] = v48;
  v58[3] = v56;
  atomic_fetch_add_explicit(v56 + 2, 1u, memory_order_relaxed);
  v60 = *v57;
  *(v60 + 8) = v58;
  *v58 = v60;
  *v57 = v58;
  v58[1] = v57;
  ++*(v57 + 16);
  v61 = *(v57 + 32);
  if (v61)
  {
    v62 = v57 + 32;
    v63 = *(v57 + 32);
    do
    {
      v64 = *(v63 + 32);
      v65 = v64 == 2;
      v66 = v64 < 2;
      v67 = v64 < 2;
      if (!v66)
      {
        v62 = v63;
      }

      if (v65)
      {
        v62 = v63;
      }

      v63 = *(v63 + 8 * v67);
    }

    while (v63);
    if (v62 == v59 || *(v62 + 32) != 2)
    {
      v68 = *(v61 + 8);
      while (v68 != 2)
      {
        if (v68 < 3)
        {
          v69 = v61[1];
          if (!v69)
          {
            v59 = v61 + 1;
            goto LABEL_116;
          }
        }

        else
        {
          v69 = *v61;
          v59 = v61;
          if (!*v61)
          {
            goto LABEL_116;
          }
        }

        v68 = *(v69 + 8);
        v61 = v69;
      }
    }

    *(v48 + 16) = 2;
    *(v48 + 68) = 0xAAAAAAAAAAAAAA00;
  }

  else
  {
    v61 = (v57 + 32);
LABEL_116:
    v70 = operator new(0x38uLL);
    v70[4] = 0xAAAAAA0000000002;
    *(v70 + 10) = -1431655766;
    v70[6] = v58;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = v61;
    *v59 = v70;
    v71 = **(v57 + 24);
    if (v71)
    {
      *(v57 + 24) = v71;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v57 + 32), v70);
    ++*(v57 + 40);
    v48 = v102;
    v56 = v103;
    *(v102 + 16) = 2;
    *(v48 + 68) = 0xAAAAAAAAAAAAAA00;
    if (!v56)
    {
      v89 = v48;
      v72 = v103;
      v73 = v85;
      if (!v103)
      {
        goto LABEL_126;
      }

      goto LABEL_122;
    }
  }

  atomic_fetch_add_explicit(v56 + 3, 1u, memory_order_relaxed);
  *&v89 = v48;
  *(&v89 + 1) = v56;
  atomic_fetch_add_explicit(v56 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v56 + 24))(v56);
  }

  v72 = v103;
  v73 = v85;
  if (v103)
  {
LABEL_122:
    if (atomic_fetch_add(v72 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v72 + 16))(v72);
      if (atomic_fetch_add(v72 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v72 + 24))(v72);
      }
    }
  }

LABEL_126:
  pthread_mutex_unlock(v118);
  v74 = __p;
  if (__p)
  {
    if (v117 > 0)
    {
      v81 = __p + 16 * v117;
      do
      {
        v82 = *(v81 - 1);
        if (v82)
        {
          if (atomic_fetch_add(v82 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v82 + 16))(v82);
            if (atomic_fetch_add(v82 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v82 + 24))(v82);
            }
          }
        }

        v81 -= 16;
      }

      while (v81 > v74);
    }

    if (v115 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v95 + 1))
  {
    if ((BYTE8(v95) & 1) == 0 && **(&v95 + 1))
    {
      (**(&v95 + 1))(&v96, &v96, 2);
    }

    *(&v95 + 1) = 0;
  }

  v75 = v94[0];
  if (v94[0])
  {
    v76 = v94[1];
    v77 = v94[0];
    if (v94[1] != v94[0])
    {
      do
      {
        v76 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v76);
      }

      while (v76 != v75);
      v77 = v94[0];
    }

    v94[1] = v75;
    operator delete(v77);
  }

  dispatch_release(v92);
  if (v93)
  {
    _Block_release(v93);
  }

  if (atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v73)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  (v88->__on_zero_shared)(v88);
  std::__shared_weak_count::__release_weak(v88);
  if (v73)
  {
LABEL_146:
    _Block_release(v73);
  }

LABEL_147:
  v78 = operator new(0x20uLL);
  v78[1] = v89;
  v79 = *(v84 + 7);
  *v78 = v79;
  *(v78 + 1) = v84 + 56;
  *(v79 + 8) = v78;
  *(v84 + 7) = v78;
  ++*(v84 + 9);
  if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v90->__on_zero_shared)(v90);
    std::__shared_weak_count::__release_weak(v90);
  }

  v80 = *MEMORY[0x29EDCA608];
}

void sub_2972A9F34(uint64_t a1, int a2)
{
  if (a2)
  {
    boost::signals2::slot_base::~slot_base(v4);
    operator delete(v4);
    *v2 = &unk_2A1E34D48;
    boost::weak_ptr<void>::~weak_ptr(v3);
    operator delete(v2);
    JUMPOUT(0x2972AA1E4);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972A9F4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  operator delete(v45);
  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  boost::signals2::connection::~connection(va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_2972AA020(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA060(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count((v2 + 8));
    JUMPOUT(0x2972AA1E4);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA07C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA09C(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v4);
    *v2 = &unk_2A1E34D48;
    boost::weak_ptr<void>::~weak_ptr(v3);
    operator delete(v2);
    JUMPOUT(0x2972AA1E4);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA0B8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2972AA0C0);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA0CC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2972AA0D4);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA104(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&a45);
    JUMPOUT(0x2972AA1ECLL);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA118(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2972AA120);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA14C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2972AA154);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA16C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::~shared_ptr(&a41);
    JUMPOUT(0x2972AA1E4);
  }

  JUMPOUT(0x2972AA1DCLL);
}

void sub_2972AA184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::shared_ptr<data::TransportService::State>::shared_ptr[abi:ne200100]<data::TransportService::State,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E34C90;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *a2 = a2;
  a2[1] = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2972AA324(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1}::operator() const(data::TransportService::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<data::TransportService::State *,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State *)#1},std::allocator<data::TransportService::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<data::TransportService::State *,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State *)#1},std::allocator<data::TransportService::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1}::operator() const(data::TransportService::State*)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1 + 7;
  v3 = a1[8];
  if (v3 != a1 + 7)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 2));
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[9])
  {
    v4 = a1[8];
    v5 = *(a1[7] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[9] = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[3];
        if (v8 && atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
        {
          v9 = v4;
          (*(*v8 + 24))(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }

  v10 = a1[12];
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[11];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (a1[9])
    {
LABEL_16:
      v12 = a1[8];
      v13 = *(a1[7] + 8);
      v14 = *v12;
      *(v14 + 8) = v13;
      *v13 = v14;
      a1[9] = 0;
      if (v12 != v2)
      {
        do
        {
          v15 = v12[1];
          v16 = v12[3];
          if (v16 && atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
          {
            v17 = v12;
            (*(*v16 + 24))(v16);
            v12 = v17;
          }

          operator delete(v12);
          v12 = v15;
        }

        while (v15 != v2);
      }
    }
  }

  else if (a1[9])
  {
    goto LABEL_16;
  }

  MEMORY[0x29C26DE80](a1 + 4);
  v18 = a1[3];
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = a1[2];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = a1[1];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

void boost::signals2::connection::disconnect(boost::signals2::connection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = v1[2];
    while (v2)
    {
      v3 = v2;
      atomic_compare_exchange_strong_explicit(v1 + 2, &v3, v2 + 1, memory_order_relaxed, memory_order_relaxed);
      v4 = v3 == v2;
      v2 = v3;
      if (v4)
      {
        v5 = *this;
        if (v5)
        {
          boost::signals2::detail::connection_body_base::disconnect(v5);
        }

        if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 16))(v1);
          if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v1 + 24))(v1);
          }
        }

        return;
      }
    }
  }
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_2972AA8F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a1;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v4 = *(a1 + 176);
  v14 = *a2;
  *&v6[2 * v4] = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body_base>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::connection::~connection(boost::signals2::connection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

data::TransportService::State *data::TransportService::State::State(data::TransportService::State *this)
{
  v10 = 12;
  strcpy(label, "ipc.svc.data");
  v7 = 12;
  strcpy(__p, "ipc.svc.data");
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", __p);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v3 = dispatch_queue_create(label, v2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 3) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 3) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 32, v11);
  MEMORY[0x29C26DE80](v11);
  ctu::OsLogContext::~OsLogContext(v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    operator delete(*label);
    goto LABEL_6;
  }

  if (v10 < 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(this + 12) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 5) = 0x2D00000000;
  return this;
}

void data::TransportService::State::handleUILockStateChange_sync(data::TransportService::State *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(this + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "unlocked";
    if (a2)
    {
      v6 = "locked";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I UI has %s", &v8, 0xCu);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    v5 = *MEMORY[0x29EDCA608];
    return;
  }

  data::TransportService::State::unblockThrottling_sync(this);
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE13connect_eventIN5boost8signals26signalIFvbENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEbEEENS7_5mutexEEES3_vJbEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

atomic_uint *boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  result = boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(&v6, a2, &v6 + 1);
  v4 = *a1;
  v5 = a1[1];
  *a1 = v6;
  *&v6 = v4;
  *(&v6 + 1) = v5;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_2972AB55C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E35010;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_2972AB650(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = operator new(0x20uLL);
      v8 = v4[3];
      v7[2] = v4[2];
      v7[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        v6 = *a1;
        v5 = *(a1 + 16);
      }

      *v7 = v6;
      v7[1] = a1;
      v6[1] = v7;
      *a1 = v7;
      *(a1 + 16) = ++v5;
      v4 = v4[1];
      v6 = v7;
    }

    while (v4 != a2);
  }

  *(a1 + 24) = 0;
  v9 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v12 = std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v34, &v33, v10 + 8);
      if (*v12)
      {
        v13 = *(v10 + 1);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = operator new(0x38uLL);
        v15 = *(v10 + 2);
        v14[6] = *(v10 + 6);
        *(v14 + 2) = v15;
        v16 = v34;
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v16;
        *v12 = v14;
        v17 = **v9;
        if (v17)
        {
          *v9 = v17;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v14);
        ++*(a1 + 40);
        v13 = *(v10 + 1);
        if (v13)
        {
          do
          {
LABEL_15:
            v18 = v13;
            v13 = *v13;
          }

          while (v13);
          goto LABEL_8;
        }
      }

      do
      {
        v18 = *(v10 + 2);
        v19 = *v18 == v10;
        v10 = v18;
      }

      while (!v19);
LABEL_8:
      v10 = v18;
    }

    while (v18 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v20 = *(a2 + 24);
  if (v20 != v11)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    do
    {
      v21[6] = v22;
      v23 = a2;
      if (v20 != v11)
      {
        v23 = *(v20 + 6);
      }

      v24 = *(v20 + 1);
      v25 = v24;
      v26 = v20;
      if (v24)
      {
        do
        {
          v27 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v27 = *(v26 + 2);
          v19 = *v27 == v26;
          v26 = v27;
        }

        while (!v19);
      }

      v28 = a2;
      if (v27 != v11)
      {
        v28 = *(v27 + 6);
      }

      while (v23 != v28)
      {
        v23 = *(v23 + 8);
        v22 = *(v22 + 8);
      }

      if (v24)
      {
        do
        {
          v29 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v29 = *(v20 + 2);
          v19 = *v29 == v20;
          v20 = v29;
        }

        while (!v19);
      }

      v30 = v21[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v21[2];
          v19 = *v31 == v21;
          v21 = v31;
        }

        while (!v19);
      }

      v20 = v29;
      v21 = v31;
    }

    while (v29 != v11);
  }

  return a1;
}

void sub_2972ABC24(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_8;
  }

  v6 = *a5;
  v7 = *(a2 + 8);
  if (*a5 == v7)
  {
    if (v6 != 1)
    {
LABEL_6:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v8 = a5[2];
    v9 = *(a2 + 10);
    if (v8 >= v9)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_8:
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      if (v11)
      {
        v12 = *a2;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = v17[2];
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      v19 = *(v13 + 8);
      v20 = *a5;
      if (v19 == *a5)
      {
        if (v19 != 1 || *(v13 + 10) >= a5[2])
        {
          goto LABEL_24;
        }
      }

      else if (v19 >= v20)
      {
LABEL_24:
        v21 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        if (v20 != 1)
        {
          while (1)
          {
            v26 = *(v21 + 8);
            v23 = v21;
            if (v20 == v26)
            {
              break;
            }

            if (v20 < v26)
            {
              v21 = *v21;
              v5 = v23;
              if (!*v23)
              {
                break;
              }
            }

            else
            {
              if (v26 >= v20)
              {
                break;
              }

              v5 = v21 + 1;
              v21 = v21[1];
              if (!v21)
              {
                break;
              }
            }
          }

LABEL_40:
          *a3 = v23;
          return v5;
        }

        v22 = a5[2];
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 8);
          if (v24 == 1)
          {
            v25 = *(v23 + 10);
            if (v22 >= v25)
            {
              if (v25 >= v22)
              {
                goto LABEL_40;
              }

              goto LABEL_33;
            }

LABEL_27:
            v21 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_40;
            }
          }

          else
          {
            if (v24 > 1)
            {
              goto LABEL_27;
            }

LABEL_33:
            v5 = v23 + 1;
            v21 = v23[1];
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_8;
  }

  if (v7 >= v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v27 = a2;
    do
    {
      v16 = v27[2];
      v18 = *v16 == v27;
      v27 = v16;
    }

    while (!v18);
  }

  if (v16 == v5)
  {
    goto LABEL_56;
  }

  v28 = *(v16 + 8);
  if (v6 == v28)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
      if (v29 >= *(v16 + 10))
      {
        v30 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        goto LABEL_61;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v6 < v28)
  {
LABEL_56:
    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

LABEL_58:
  v30 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
LABEL_61:
      v31 = v30;
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 8);
        if (v32 == 1)
        {
          v33 = *(v30 + 10);
          if (v29 >= v33)
          {
            if (v33 >= v29)
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }

LABEL_62:
          v31 = *v30;
          v5 = v30;
          if (!*v30)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v32 > 1)
          {
            goto LABEL_62;
          }

LABEL_68:
          v5 = v30 + 1;
          v31 = v30[1];
          if (!v31)
          {
            goto LABEL_72;
          }
        }
      }
    }

    v34 = *(v30 + 8);
    while (v6 != v34)
    {
      if (v6 < v34)
      {
        v35 = *v30;
        v5 = v30;
        if (!*v30)
        {
          break;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          break;
        }

        v5 = v30 + 1;
        v35 = v30[1];
        if (!v35)
        {
          break;
        }
      }

      v34 = *(v35 + 32);
      v30 = v35;
    }
  }

  else
  {
    v30 = a1 + 1;
  }

LABEL_72:
  *a3 = v30;
  return v5;
}